# `texbox` [![Build Status](https://github.com/DMOJ/texbox/workflows/build/badge.svg)](https://github.com/DMOJ/texbox/actions/)
Docker container to generate SVG and PNG files from LaTeX.

## Usage

    docker run -i dmoj/texbox < test.tex

LaTeX, `dvisvgm` and `rsvg-convert`output will be in `stderr`.

### `stdout` format

Format is binary, all numbers are unsigned and big-endian. It is composed of:

- 32-bit integer: `w`, width of the image
- 32-bit integer: `h`, height of the image
- 32-bit integer: `s`, length of the SVG file
- `s` raw bytes of the SVG
- 32-bit integer: `p`, length of the PNG file
- `p` raw bytes of the PNG
