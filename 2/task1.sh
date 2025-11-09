#!/bin/bash
# Task 1: Create a directory if it doesn't exist
read -p "Enter directory name: " dirname
if [ ! -d "$dirname" ]; then
    mkdir -p "$dirname"
    echo "Directory '$dirname' created."
else
    echo "Directory '$dirname' already exists."
fi
