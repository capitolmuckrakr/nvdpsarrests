#!/bin/bash
CSV_PATH=$1
cat $CSV_PATH | psql --host=${AWS_PG_HOST} --port=5432 --username=acohen --dbname=nvdpsarrests -c "\copy arrests.deathlifecode FROM '$CSV_PATH' WITH DELIMITER ';' CSV NULL AS ''"
