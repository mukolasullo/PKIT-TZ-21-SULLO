#!/bin/bash
# Task 5: Create a backup of a file with current date
read -p "Enter file name to back up: " filename
if [ -f "$filename" ]; then
    backup="${filename}_backup_$(date +%Y%m%d_%H%M%S)"
    cp "$filename" "$backup"
    echo "Backup created: $backup"
else
    echo "File '$filename' not found."
fi
