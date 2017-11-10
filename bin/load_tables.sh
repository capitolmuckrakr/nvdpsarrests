#!/bin/bash
export SQL_CREATE_DIR="${HOME}/scripts/nvdpsarrests/sql_create_tables/"
datafilebase=$HOME/data/NV_DPS_Arrests/data/new_data/edited_RECORDS_REQUEST_table
loaders=( "arrest" "arrestcomment" "dispositioncomment" "disposition" "offense" "deathlifecode" "dispositioncode" "offenseclasscode" "base" "basesupplemental" "warrantsupplemental" "warrantoffense" "transportationcode" "warrant" )
n=1
echo using endpoint $AWS_PG_HOST
for loader in "${loaders[@]}"
do
    datafile=$datafilebase$n'.txt'
    prog=$HOME/scripts/nvdpsarrests/bin/load_$loader.sh
    err=$HOME/scripts/nvdpsarrests/logs/$loader'_err.log'
    n=$((n + 1))
    echo loading $datafile into table $loader
    "$prog" "$datafile" 2>$err &
    wait
done
echo cleaning up fields and indexing.
psql --host=${AWS_PG_HOST} --port=5432 --username=acohen --dbname=nvdpsarrests -f ${SQL_CREATE_DIR}cleanup_fields.sql
psql --host=${AWS_PG_HOST} --port=5432 --username=acohen --dbname=nvdpsarrests -f ${SQL_CREATE_DIR}indexes.sql
#> >(tee -a out.log) 2> >(tee -a err.log >&2)
