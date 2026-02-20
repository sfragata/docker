FROM debian:bookworm-slim

ENV DEBIAN_FRONTEND=noninteractive
ENV QTWEBENGINE_DISABLE_SANDBOX=1

# -------- Base packages --------
RUN apt-get update && apt-get install -y \
    calibre \
    ocrmypdf \
    tesseract-ocr \
    tesseract-ocr-eng \
    tesseract-ocr-por \
    tesseract-ocr-fra \
    poppler-utils \
    ghostscript \
    qpdf \
    wget \
    git \
    build-essential \
    autoconf \
    automake \
    libtool \
    pkg-config \
    libleptonica-dev \
    ca-certificates \
    fonts-dejavu \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# -------- Compile jbig2enc --------
RUN git clone https://github.com/agl/jbig2enc.git /tmp/jbig2enc \
    && cd /tmp/jbig2enc \
    && ./autogen.sh \
    && ./configure \
    && make -j$(nproc) \
    && make install \
    && ldconfig \
    && rm -rf /tmp/jbig2enc

# -------- Optional: remove build deps to shrink image --------
RUN apt-get purge -y \
    git \
    build-essential \
    autoconf \
    automake \
    libtool \
    pkg-config \
    && apt-get autoremove -y \
    && apt-get clean

WORKDIR /books

COPY convert.sh /convert.sh
RUN chmod +x /convert.sh

ENTRYPOINT ["/convert.sh"]
