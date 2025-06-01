#!/bin/bash

# Navigate to script's directory and back out to project root
cd "$(dirname "$0")/.."

# Create output directory if it doesn't exist
mkdir -p md

# Loop through each HTML file in html/
for file in html/*.html; do
  base=$(basename "$file" .html)
  # Capitalize first letter using awk (portable to Bash 3.2)
  title=$(echo "$base" | awk '{print toupper(substr($0,1,1)) substr($0,2)}')

  # Write Markdown content
  {
    echo "# $title"
    echo
    echo "[View original HTML](../html/${base}.html)"
  } > "md/${base}.md"

  echo "✅ Created md/${base}.md"
done
