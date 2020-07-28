i#!/bin/bash

logger -p 7 ===== Start database backup...

# Build file name
days=$(date +%Y_%m_%d_%H%M)

logger -p 7 $days

file="archives_$days.tar.gz"

logger -p 7 $file

loc="/rmt2/db_archives"

# compress all database files into one archive
logger -p 7 ===== Archiving and compressing all files in $loc...

tar cvzf $loc/$file $loc/*.*

logger -p 7 ===== Compressing $loc/$file is completed 

chmod ugo+rwx $loc/$file
cd $loc

################################################################
# Now that target machine is UNIX based, use SCP to copy file.
# NOTE:  Used SSH private/public key to prevent having to 
#        explicitly provide password for target machine when
#        invoking the SCP command in batch file.
################################################################
logger -p 7 ===== Copying DB archive...

scp $file royterrell@rmtdalmedia01:~/Dropbox/MyData/db

logger -p 7 ===== DB archive copy completed. 

######################################################################################
# Disabled FTP logic since we are no longer using a Windows machine as the target
######################################################################################
# ftp file to another server
#HOST=192.168.0.5   #rmtdalmedia01
#USER=admin02
#PASSWD=610hoover
#echo FTP $loc/$file to $HOST

#ftp -inv $HOST <<EOF
#user $USER $PASSWD
#prompt
#binary
#put $file
#quit
#EOF
#
#if [ $? -ne 0 ]
#   # Do error handleing here...
#   exit 1
#fi

logger -p 7 ===== Deleting DB archive from source...

rm /rmt2/db_archives/*.*

logger -p 7 ===== Database backup completed!

#  To untar:  tar xvzf <tar file> -C <destinatin path>

exit 0
