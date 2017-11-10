#!/bin/bash
cd /Users/acohen/data/NV_DPS_Arrests/data/new_data/
for file in RECORDS_REQUEST_table*
do
    newfile='edited_'$file
#    sed 's/\s{3,}/\n/g' $file | tail -n +2 | sed 's/""//g' | sed 's/; ;/;;/g' | sed 's/; ;/;;/g' | egrep -v '^\s' >$newfile #remove header and blank line from data file
    bomstrip $file | sed 's/  .//g' | egrep -v '^\s' | sed 's/\^ \^/\^\|\^/g' | sed 's/\r/''/g' >$newfile #remove bom, end of line ws from data file, change delimiter to pipe, clean up line endings
done
