#!/bin/bash
# Task 3: Count number of lines in a text file
read -p "Enter file name: " filename
if [ -f "$filename" ]; then
    lines=$(wc -l < "$filename")
    echo "File '$filename' contains $lines lines."
else
    echo "File '$filename' not found."
fi
