#!/bin/bash
echo "This script automatically removes log files older than a specified number of days from a particular directory."

directory="$HOME/desktop"

days=1

echo "Files older than $days days will be removed from $directory."

# Find and remove log files older than the specified number of days
find "$directory" -type f -name "*.log" -mtime +$days -exec rm -f {} \;
echo "Cleaned up log files older than $days days in $directory."

# Make the script executable (you can run this command manually)
chmod +x cleaner.sh
