#!/usr/bin/env bash

set -e

INPUT_DIR="/books"
OUTPUT_DIR="/books/output"
TMP_DIR="/books/tmp"

mkdir -p "$OUTPUT_DIR"
mkdir -p "$TMP_DIR"

echo "==============================="
echo " Kindle Converter Starting"
echo "==============================="

process_epub() {
    local file="$1"
    local name
    name=$(basename "$file" .epub)

    echo "📘 EPUB detected: $name"

    ebook-meta "$file" --get-cover "$TMP_DIR/${name}.jpg" || true

    ebook-convert "$file" "$OUTPUT_DIR/${name}.azw3" \
        --pretty-print \
        --embed-all-fonts \
        --chapter-mark both \
        --page-breaks-before "/" \
        --level1-toc //h:h1 \
        --level2-toc //h:h2 \
        --level3-toc //h:h3

    echo "✅ Converted: $name"
}

process_pdf() {
    local file="$1"
    local name
    name=$(basename "$file" .pdf)

    echo "📄 PDF detected: $name"

    echo "🔎 Running OCR..."
    ocrmypdf --optimize 3 --skip-text "$file" "$TMP_DIR/${name}_ocr.pdf"

    ebook-convert "$TMP_DIR/${name}_ocr.pdf" "$OUTPUT_DIR/${name}.azw3" \
        --pretty-print \
        --enable-heuristics \
        --chapter-mark both \
        --page-breaks-before "/"

    echo "✅ Converted: $name"
}

for file in "$INPUT_DIR"/*; do
    [ -e "$file" ] || continue

    case "$file" in
        *.epub)
            process_epub "$file"
            ;;
        *.pdf)
            process_pdf "$file"
            ;;
        *)
            echo "⚠️ Unsupported file: $file"
            ;;
    esac
done

echo "==============================="
echo " Finished!"
echo " Output folder: books/output"
echo "==============================="