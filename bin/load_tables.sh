#!/bin/bash
datafilebase=$HOME/data/NV_DPS_Arrests/data/edited_RECORDS_REQUEST_table
loaders=( "arrest" "arrestcomment" "dispositioncomment" "disposition" "offense" "deathlifecode" "dispositioncode" "offenseclasscode" "base" "basesupplemental" "warrantsupplemental" "warrantoffense" "transportationcode" "warrant" )
n=1
echo using endpoint $AWS_PG_HOST
for loader in "${loaders[@]}"
do
    datafile=$datafilebase$n'.txt'
    prog=./load_$loader.sh
    n=$((n + 1))
    > >(tee -a $loader_out.log) 2> >(tee -a $loader_err.log >&2)
    echo loading $datafile into table $loader
    "$prog" "$datafile" &
    wait
done
#> >(tee -a out.log) 2> >(tee -a err.log >&2)