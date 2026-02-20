# Kindle Converter

A Docker-based tool to convert e-books (EPUB, PDF) to Kindle format (AZW3) with OCR support for PDFs.

## Features

- **EPUB to AZW3**: Converts EPUB files to Kindle format with embedded fonts, metadata, and cover extraction
- **PDF to AZW3**: Converts PDFs to Kindle format with OCR (Optical Character Recognition) for scanned documents
- **Automatic Processing**: Batch processes all supported files in the input directory
- **Output Organization**: Saves converted files to an output directory

## Usage

### Basic Usage

Mount your books directory and run the converter:

```bash
docker run -it --rm -v /path/to/books:/books sfragata/kindle-converter
```

### Directory Structure

The converter expects the following structure:

```
/path/to/books/
├── book1.epub
├── book2.pdf
└── output/        (created automatically)
    ├── book1.azw3
    └── book2.azw3
```

### Custom Script Execution

To run a custom command instead of the default conversion:

```bash
docker run -it --rm -v /path/to/books:/books sfragata/kindle-converter bash
```

## Tools Included

- **Calibre**: E-book conversion and management (`ebook-convert`, `ebook-meta`)
- **ocrmypdf**: PDF OCR processing
- **Tesseract OCR**: Optical character recognition (English, Portuguese, French)
- **Poppler**: PDF utilities
- **Ghostscript**: PostScript and PDF processor
- **QPDF**: PDF manipulation
- **jbig2enc**: JBIG2 compression for improved PDF processing

## Supported Formats

- **Input**: EPUB, PDF
- **Output**: AZW3 (Kindle Format 8)

## Examples

### Convert a single EPUB file

```bash
docker run -it --rm -v ~/Books:/books sfragata/kindle-converter ebook-convert /books/mybook.epub /books/output/mybook.azw3
```

### Get book metadata

```bash
docker run -it --rm -v ~/Books:/books sfragata/kindle-converter ebook-meta /books/mybook.epub
```

## Notes

- The conversion process may take some time depending on file size and OCR processing
- PDF OCR optimization is set to level 3 for good quality/performance balance
- All fonts are embedded in the output AZW3 files for consistent display across devices
