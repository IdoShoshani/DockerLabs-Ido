#!/bin/bash

# generate_readme_toc.sh
# This script generates a TOC.md file in the specified directory, summarizing the headings and TOC items from all markdown files (except README.*).
# Usage: ./generate_readme_toc.sh <directory_path>

# Print usage and exit if arguments are invalid
function print_usage() {
 echo "Usage: $0 <directory_path>"
 exit 1
}

# Initialize the TOC.md file with a header
function init_toc_file() {
 local dir="$1"
 echo "# Table of Contents" > "$dir/TOC.md"
 echo -e "\n" >> "$dir/TOC.md"
}

# Extract and format TOC items from a markdown file
function append_toc_items() {
 local file="$1"
 local filename=$(basename "$file")
 local dir="$2"
 grep -E '^(\s*)-\s*\[.*\]\(#.*\)' "$file" | while read -r line; do
   # Skip lines marked with <!-- omit in toc -->
   if [[ $line == *"<!-- omit in toc -->"* ]]; then
     continue
   fi
   # Capture indentation and clean numbering
   whitespace=$(echo "$line" | sed -E 's/^(\s*)-\s*\[.*/\1/')
   link_text=$(echo "$line" | sed 's/.*\[\([^]]*\)\].*/\1/')
   anchor=$(echo "$line" | sed -E 's/.*\((#[^)]+)\).*/\1/')
   # Write formatted entry
   echo " - [$link_text]($filename$anchor)" >> "$dir/TOC.md"
 done
}

# Process all markdown files in the directory (except README.*)
function process_markdown_files() {
 local dir="$1"
 for folder in "$dir"/*; do
   if [ -d "$folder" ]; then
     readme_file="$folder/README.md"
     if [ -f "$readme_file" ]; then
       echo "## $(basename "$folder")" >> "$dir/TOC.md"
       append_toc_items "$readme_file" "$dir"
       echo -e "\n" >> "$dir/TOC.md"
     fi
   fi
 done
}

# Main script logic
function generate_toc_file() {
 if [ $# -ne 1 ]; then
   print_usage
 fi
 local DIRECTORY="$1"
 init_toc_file "$DIRECTORY"
 process_markdown_files "$DIRECTORY"
}