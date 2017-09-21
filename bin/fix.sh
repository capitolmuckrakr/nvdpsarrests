#!/bin/bash

cp /Users/acohen/data/NV_DPS_Arrests/data/RECORDS_REQUEST_table1.txt /Users/acohen/data/NV_DPS_Arrests/data/old_RECORDS_REQUEST_table1.txt

head -562161 /Users/acohen/data/NV_DPS_Arrests/data/RECORDS_REQUEST_table1.txt > /Users/acohen/data/NV_DPS_Arrests/data/fixed_RECORDS_REQUEST_table1a.txt
head -562163 /Users/acohen/data/NV_DPS_Arrests/data/RECORDS_REQUEST_table1.txt | tail -2 > /Users/acohen/data/NV_DPS_Arrests/data/fixed_RECORDS_REQUEST_table1b.txt
tail -1525206 /Users/acohen/data/NV_DPS_Arrests/data/RECORDS_REQUEST_table1.txt > /Users/acohen/data/NV_DPS_Arrests/data/fixed_RECORDS_REQUEST_table1c.txt

echo "fix the rows in table1"

open -a "/Applications/Komodo" /Users/acohen/data/NV_DPS_Arrests/data/fixed_RECORDS_REQUEST_table1b.txt

read -p "Press enter to continue"

cat /Users/acohen/data/NV_DPS_Arrests/data/fixed_RECORDS_REQUEST_table1a.txt /Users/acohen/data/NV_DPS_Arrests/data/fixed_RECORDS_REQUEST_table1b.txt /Users/acohen/data/NV_DPS_Arrests/data/fixed_RECORDS_REQUEST_table1c.txt >/Users/acohen/data/NV_DPS_Arrests/data/RECORDS_REQUEST_table1.txt

cp /Users/acohen/data/NV_DPS_Arrests/data/RECORDS_REQUEST_table4.txt /Users/acohen/data/NV_DPS_Arrests/data/old_RECORDS_REQUEST_table4.txt

head -283709 /Users/acohen/data/NV_DPS_Arrests/data/RECORDS_REQUEST_table4.txt > /Users/acohen/data/NV_DPS_Arrests/data/fixed_RECORDS_REQUEST_table4a.txt
head -283711 /Users/acohen/data/NV_DPS_Arrests/data/RECORDS_REQUEST_table4.txt | tail -2 > /Users/acohen/data/NV_DPS_Arrests/data/fixed_RECORDS_REQUEST_table4b.txt
tail -1443548 /Users/acohen/data/NV_DPS_Arrests/data/RECORDS_REQUEST_table4.txt > /Users/acohen/data/NV_DPS_Arrests/data/fixed_RECORDS_REQUEST_table4c.txt

echo "fix the rows in table4"

open -a "/Applications/Komodo" /Users/acohen/data/NV_DPS_Arrests/data/fixed_RECORDS_REQUEST_table4b.txt

read -p "Press enter to continue"

cat /Users/acohen/data/NV_DPS_Arrests/data/fixed_RECORDS_REQUEST_table4a.txt /Users/acohen/data/NV_DPS_Arrests/data/fixed_RECORDS_REQUEST_table4b.txt /Users/acohen/data/NV_DPS_Arrests/data/fixed_RECORDS_REQUEST_table4c.txt >/Users/acohen/data/NV_DPS_Arrests/data/RECORDS_REQUEST_table4.txt
