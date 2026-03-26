#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Raghav Sharma | Course: Open Source Software
# This script asks 3 questions and generates a personal open source manifesto

echo "=============================="
echo " Open Source Manifesto Generator"
echo "=============================="
echo ""
echo "Answer three questions to generate your manifesto."
echo ""

# Get user input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Get current date and username
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Compose the manifesto paragraph and save to file
echo "" > $OUTPUT
echo "Open Source Manifesto — Raghav Sharma" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "-------------------------------" >> $OUTPUT
echo "" >> $OUTPUT
echo "Every day, I rely on $TOOL — a tool built freely by people who believed" >> $OUTPUT
echo "that knowledge should be shared, not locked away. To me, freedom means $FREEDOM." >> $OUTPUT
echo "That is the spirit of open source: the $FREEDOM to use, study, modify and share." >> $OUTPUT
echo "If I could build anything and share it with the world, I would build $BUILD —" >> $OUTPUT
echo "and I would release it openly, so others could learn from it, improve it," >> $OUTPUT
echo "and pass it forward. Open source is not just a license. It is a promise." >> $OUTPUT
echo "" >> $OUTPUT
echo "— Raghav Sharma, Open Source Software Course, $DATE" >> $OUTPUT

echo ""
echo "=============================="
echo " Your Manifesto:"
echo "=============================="
cat $OUTPUT
echo ""
echo "Manifesto saved to $OUTPUT"
