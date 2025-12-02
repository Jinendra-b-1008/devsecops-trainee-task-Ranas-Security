#!/bin/bash
LOG_FILE="$1"

if [ -z "$LOG_FILE" ]; then
  echo "Error: No log file provided."
  echo "Usage: ./log_checker.sh example.log"
  exit 1
fi

if [ ! -f "$LOG_FILE" ]; then
  echo "Error: File '$LOG_FILE' does not exist."
  exit 1
fi

total_lines=$(wc -l < "$LOG_FILE")
info_count=$(grep -c "INFO" "$LOG_FILE")
warn_count=$(grep -c "WARN" "$LOG_FILE")
error_count=$(grep -c "ERROR" "$LOG_FILE")

echo "Total lines: $total_lines"
echo "INFO lines : $info_count"
echo "WARN lines : $warn_count"
echo "ERROR lines: $error_count"
