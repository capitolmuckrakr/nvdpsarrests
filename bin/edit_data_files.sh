#!/bin/bash
cd /Users/acohen/data/NV_DPS_Arrests/data/new_data/
for file in RECORDS_REQUEST_table*
do
    newfile='edited_'$file
    processed='scrubbed_'$file
    python /Users/acohen/scripts/nvdpsarrests/scrub_bad_line_endings.py $file #remove cr/lf from fields
#    sed 's/\s{3,}/\n/g' $file | tail -n +2 | sed 's/""//g' | sed 's/; ;/;;/g' | sed 's/; ;/;;/g' | egrep -v '^\s' >$newfile #remove header and blank line from data file
    bomstrip $processed | sed 's/  .//g' | egrep -v '^\s' | sed 's/\^ \^/\^\|\^/g' | sed 's/\r/''/g' | sed 's/\^\^//g' >$newfile #remove bom, end of line ws from data file, change delimiter to pipe, clean up line endings, remove empty quoted fields
done
