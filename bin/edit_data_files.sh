#!/bin/bash
cd /Users/acohen/data/NV_DPS_Arrests/data/new_data/
for file in table*
do
    newfile='edited_'$file
    processed='scrubbed_'$file
    python /Users/acohen/scripts/nvdpsarrests/scrub_bad_line_endings.py $file #remove cr/lf from fields
    sed 's/^~//g' $processed >$newfile
done
