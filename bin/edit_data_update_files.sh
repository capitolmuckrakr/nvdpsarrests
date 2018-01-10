#!/bin/bash
cd /Users/acohen/data/NV_DPS_Arrests/data/update/
for file in RECORDS_REQUEST_table*
do
    newfile='edited_'$file
    processed='scrubbed_'$file
    python /Users/acohen/scripts/nvdpsarrests/scrub_bad_line_endings.py $file #remove cr/lf from fields
    sed 's/^~//g' $processed >$newfile
done
mv edited_RECORDS_REQUEST_table4.txt edited_RECORDS_REQUEST_table2.txt
mv edited_RECORDS_REQUEST_table5.txt edited_RECORDS_REQUEST_table3.txt
mv edited_RECORDS_REQUEST_table12.txt edited_RECORDS_REQUEST_table4.txt
mv edited_RECORDS_REQUEST_table14.txt edited_RECORDS_REQUEST_table5.txt
