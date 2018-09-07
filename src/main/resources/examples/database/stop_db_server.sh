#  change directory to where the database script lives, and execute the following command:  
#    source stop_db_server.sh

##############################################################
### Uncomment one of the following based on target platform
##############################################################
# Windows - Should be implemented via Windows Service

# MAC OS and Ubuntu Production
dbstop -c "Server=rmt2proddb01;UID=dba;PWD=sql"