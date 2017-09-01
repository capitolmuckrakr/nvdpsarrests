#!/bin/bash
cd /Users/acohen/data/NV_DPS_Arrests/data/
for file in RECORDS_REQUEST_table*
do
    newfile='edited_'$file
    sed 's/\s{3,}/\n/g' $file | tail -n +2 | sed 's/""//g' | sed 's/; ;/;;/g' | sed 's/; ;/;;/g' | egrep -v '^\s' >$newfile #remove header and blank line from data file
done
