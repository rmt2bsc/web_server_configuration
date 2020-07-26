i#!/bin/bash

echo ===== Fetching accounting receipts documents...
################################################################
# Copy accounting receipt files to rmtdaldb01 mime/in directory
# So listener can pick up files for processing. 
################################################################
scp ~/Documents/scanner/*.* admin02@rmtdaldb01:/rmt2/mime/in
echo ===== Fetching accounting receipts documents completed!
exit 0
