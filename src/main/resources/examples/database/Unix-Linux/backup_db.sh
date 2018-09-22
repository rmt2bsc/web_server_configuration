i#!/bin/bash

# Build file name
days=$(date +%Y_%m_%d_%H%M)
echo $days
file="archives_$days.tar.gz"
echo $file
loc="/rmt2/db_archives"

# cpmpress all database files into one archive
echo Archiving and compressing all files in $loc...
tar cvzf $loc/$file $loc/*.*
echo Compressed archiving is completed#echo Compressing $loc/$file...

chmod ugo+rwx $loc/$file
cd $loc

# ftp file to another server
HOST=192.168.0.102   #rmtdalmedia01
USER=admin02
PASSWD=610hoover
echo FTP $loc/$file to $HOST

ftp -inv $HOST <<EOF
user $USER $PASSWD
prompt
binary
put $file
quit
EOF

rm /rmt2/db_archives/*.*

#  To untar:  tar xvzf <tar file> -C <destinatin path>

exit 0
