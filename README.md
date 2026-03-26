
# OSS Audit — Raghav Sharma
## Roll Number: 24BEC10039
## Chosen Software: Python

## About This Project
This repository contains 5 shell scripts written for the Open Source Software
Capstone Project. The chosen software for audit is Python, licensed under
the PSF License.

## Scripts

### Script 1 — System Identity Report
Displays system information including kernel version, user, uptime, distro and license.
Run: bash scripts/script1.sh

### Script 2 — FOSS Package Inspector
Checks if Python is installed and prints its version, license and philosophy.
Run: bash scripts/script2.sh

### Script 3 — Disk and Permission Auditor
Loops through key system directories and reports permissions and size.
Run: bash scripts/script3.sh

### Script 4 — Log File Analyzer
Reads a log file and counts occurrences of a keyword.
Run: bash scripts/script4.sh testlog.txt error

### Script 5 — Open Source Manifesto Generator
Asks 3 questions and generates a personal open source manifesto.
Run: bash scripts/script5.sh

## Dependencies
- bash
- python3
- dpkg
- coreutils (du, ls, df)
