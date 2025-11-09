#!/bin/bash
# Task 4: Check if a process is running
read -p "Enter process name: " process
if pgrep -x "$process" > /dev/null; then
    echo "Process '$process' is running."
else
    echo "Process '$process' is not running."
fi
