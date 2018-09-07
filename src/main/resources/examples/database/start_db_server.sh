#  change directory to where the database script lives, and execute the following command:  
#    source start_db_server.sh

##############################################################
### Uncomment one of the following based on target platform
##############################################################
# Windows - Should be implemented via Windows Service

# MAC OS
#/Applications/SQLAnywhere16/System/bin64s/dbsrv16 -n RMT2DALSYBSRV01 -ud /Users/royterrell/data/sybase/accounting.db /Users/royterrell/data/sybase/authentication.db /Users/royterrell/data/sybase/mime.db /Users/royterrell/data/sybase/projecttracker.db /Users/royterrell/data/sybase/rmt2.db /Users/royterrell/data/sybase/addressbook.db /Users/royterrell/data/sybase/framework.db

# Ubuntu Production
# /opt/sqlanywhere16/bin64/dbspawn -f dbsrv16 -n rmt2proddb01 /rmt2/data/accounting.db /rmt2/data/authentication.db /rmt2/data/contacts.db /rmt2/data/mime.db /rmt2/data/projecttracker.db /rmt2/data/rmt2.db