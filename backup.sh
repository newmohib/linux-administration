#!/bin/bash

# what to backup
backups_files="/home/bs1109/myfolder"

# where to backup to 
dest="/home/bs1109/backup"

# create archive filename
day=$(date+%A)
hostname=$(hostname -s)
archive_file="$hostname-$day.tgz"

# print start status message
echo "Backing up $backups_files to $dest/$archive_file"
date
echo

# backup files using tar
tar czf $dest/$archive_file $backups_files

# print end status message
echo
echo "Backup finished"
date

# Monitoring Script
# Server Configuration Scripts

