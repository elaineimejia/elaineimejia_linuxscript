#!/bin/bash
# Simple backup script

src="/home/user/data"
dest="/home/user/backup"

filename="backup-$(date +%Y%m%d%H%M).tar.gz"

tar -czf $dest/$filename $src

echo "Backup completed: $dest/$filename"
