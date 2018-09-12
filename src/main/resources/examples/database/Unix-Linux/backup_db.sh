i#!/bin/bash

# Build file name
days=$(date +%Y_%m_%d_%H%M)
echo $days
file="archives_$days.tar"
echo $file
loc="/rmt2/db_archives"

# cpmpress all database files into one archive
echo Archiving all files in $loc...
tar cvzf $loc/$file $loc/*.*
echo Archiving is completed
echo Compressing $loc/$file...
gzip -f $loc/$file
echo File compression is completed
chmod $loc/$file.gz ugo+rwx $loc/$file.gz
cd $loc

# ftp file to another server
HOST=rmtdalmedia01
USER=admin02
PASSWD=610hoover
echo FTP $loc/$file.gz to $HOST

ftp -inv $HOST <<EOF
user $USER $PASSWD
prompt
put $file.gz
quit
EOF
exit 0
