#!/bin/bash

head -562161 /Users/acohen/data/NV_DPS_Arrests/data/RECORDS_REQUEST_table1.txt > fixed_RECORDS_REQUEST_table1a.txt
head -562163 /Users/acohen/data/NV_DPS_Arrests/data/RECORDS_REQUEST_table1.txt | tail -2 > fixed_RECORDS_REQUEST_table1b.txt
tail -1525206 /Users/acohen/data/NV_DPS_Arrests/data/RECORDS_REQUEST_table1.txt > fixed_RECORDS_REQUEST_table1c.txtfix

echo "fix the rows"

komodo fixed_RECORDS_REQUEST_table1b.txt

cat fixed_RECORDS_REQUEST_table1a.txt fixed_RECORDS_REQUEST_table1b.txt fixed_RECORDS_REQUEST_table1c.txt >RECORDS_REQUEST_table1.txt

