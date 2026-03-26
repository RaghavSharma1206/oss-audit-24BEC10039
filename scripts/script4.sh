#!/bin/bash
# Script 4: Log File Analyzer
# Author: Raghav Shaarma | Course: Open Source Software
# Usage: ./script4.sh /path/to/logfile keyword

LOGFILE=$1
KEYWORD=${2:-"error"}  # Default keyword is 'error'
COUNT=0

# Check if a log file was provided
if [ -z "$LOGFILE" ]; then
    echo "Usage: bash script4.sh <logfile> <keyword>"
    exit 1
fi

# Check if the file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# Check if file is empty and retry once
if [ ! -s "$LOGFILE" ]; then
    echo "Warning: File is empty. Please check the file."
    exit 1
fi

# Read file line by line and count keyword matches
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# Print summary
echo "=============================="
echo " Log File Analyzer"
echo "=============================="
echo "File    : $LOGFILE"
echo "Keyword : $KEYWORD"
echo "Matches : $COUNT"
echo "=============================="

# Print last 5 matching lines
echo ""
echo "Last 5 lines containing '$KEYWORD':"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
