#!/bin/bash
export SQL_CREATE_DIR="${HOME}/scripts/nvdpsarrests/sql_create_tables/"
datafilebase=$HOME/data/NV_DPS_Arrests/data/update/edited_RECORDS_REQUEST_table
loaders=( "arrest_update" "disposition_update" "offense_update" "warrantoffense_update" "warrant_update" )
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
echo cleaning up fields.
psql --host=${AWS_PG_HOST} --port=5432 --username=acohen --dbname=nvdpsarrests -f ${SQL_CREATE_DIR}cleanup_fields_update_tables.sql
