#  change directory to where the database script lives, and execute the following command:  
#    source start_db_server.sh

##############################################################
### Uncomment one of the following based on target platform
##############################################################
# Windows - Should be implemented as a Windows Service via Sybase Central or...
# dbsvc -as -s auto -t network -w rmt2devdb02 "C:\Program Files\SQL Anywhere 16\Bin64\dbsrv16.exe" -x tcpip -c 512m /data/sybase/v16/accounting.db /data/sybase/v16/authentication.db /data/sybase/v16/contacts.db /data/sybase/v16/mime.db /data/sybase/v16/projecttracker.db /data/sybase/v16/rmt2.db
# or as stand alone...
# dbsrv16 -n rmt2devdb02 /data/sybase/v16/accounting.db /data/sybase/v16/authentication.db /data/sybase/v16/contacts.db /data/sybase/v16/mime.db /data/sybase/v16/projecttracker.db /data/sybase/v16/rmt2.db


# MAC OS
#/Applications/SQLAnywhere16/System/bin64s/dbsrv16 -n rmt2devdb01 -ud /Users/royterrell/data/sybase/accounting.db /Users/royterrell/data/sybase/authentication.db /Users/royterrell/data/sybase/mime.db /Users/royterrell/data/sybase/projecttracker.db /Users/royterrell/data/sybase/rmt2.db /Users/royterrell/data/sybase/addressbook.db /Users/royterrell/data/sybase/framework.db

# Ubuntu Production
# /opt/sqlanywhere16/bin64/dbspawn -f dbsrv16 -n rmt2proddb01 /rmt2/data/accounting.db /rmt2/data/authentication.db /rmt2/data/contacts.db /rmt2/data/mime.db /rmt2/data/projecttracker.db /rmt2/data/rmt2.db