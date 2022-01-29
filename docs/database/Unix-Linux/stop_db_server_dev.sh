#  change directory to where the database script lives, and execute the following command:  
#    source stop_db_server.sh

##############################################################
### Uncomment one of the following based on target platform
##############################################################
# Windows - Should be implemented via Windows Service

# MAC OS and Ubuntu Production
/Applications/SQLAnywhere16/System/bin64s/dbstop -c "Server=rmt2devdb01;UID=dba;PWD=sql"