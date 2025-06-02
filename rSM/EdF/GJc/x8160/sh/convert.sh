#!/bin/bash

# Update this one line only
FILENAME="selfie"

# Auto-generate paths
INPUT="../md/${FILENAME}.md"
OUTPUT="../html/${FILENAME}.html"

# Run Pandoc
pandoc "$INPUT" -o "$OUTPUT"
