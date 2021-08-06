#!/bin/bash

# Disk usage:
echo -e "\e[39;42m***** DISK SPACE USAGE *****\e[0m" | tee -a ~/backups/diskuse/disk_usage.txt
echo ""
df --total -H | awk '{print "Total size: " $2}' | tail -1 | tee -a ~/backups/diskuse/disk_usage.txt
df --total -H | awk '{print "Total used: " $3}' | tail -1 | tee -a ~/backups/diskuse/disk_usage.txt
df --total -H | awk '{print "Total available: " $4}' | tail -1 | tee -a ~/backups/diskuse/disk_usage.txt
echo ""
# Memory usage:
echo -e "\e[39;42m ***** FREE MEMORY *****\e[0m" | tee -a ~/backups/freemem/free_mem.txt
echo ""
free -ht --giga | awk '{print $4}' | tail -1 | tee -a ~/backups/freemem/free_mem.txt
echo ""
# Open files list:
echo -e "\e[39;42m ***** OPEN FILES *****\e[0m" | tee -a ~/backups/openlist/open_list.txt
echo ""
ps ax | tee -a ~/backups/openlist/open_list.txt
echo ""
# File system disk space stats
echo -e "\e[39;42m ***** FILE SYSTEM DISK SPACE STATISTICS *****\e[0m" | tee -a ~/backups/freedisk/free_disk.txt
echo ""
df -a --si --total | tee -a ~/backups/freedisk/free_disk.txt
