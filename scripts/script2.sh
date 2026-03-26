#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Raghav Sharma | Course: Open Source Software

PACKAGE="python3"

# Check if package is installed
if dpkg -l $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed."
    # Show version, license and summary
    dpkg -l $PACKAGE | grep -E 'python3'
    python3 --version
else
    echo "$PACKAGE is NOT installed."
fi

# Philosophy note based on package name
case $PACKAGE in
    python3)
        echo "Python: a language shaped entirely by its community, free for everyone to use and build upon." ;;
    git)
        echo "Git: the tool Linus built when proprietary version control failed him." ;;
    firefox)
        echo "Firefox: a nonprofit fighting for an open and free web." ;;
    vlc)
        echo "VLC: built by students in Paris, plays anything, owned by no one." ;;
    *)
        echo "This is an open-source package — free to use, modify and share." ;;
esac
