#!/bin/bash
mkdir -p build
pandoc --filter pandoc-citeproc main.md -o build/main.pdf
