#!/bin/bash
export SQL_CREATE_DIR="${HOME}/scripts/nvdpsarrests/sql_create_tables/"
# arrests schema tables
psql --host=${AWS_PG_HOST} --port=5432 --username=acohen --dbname=nvdpsarrests -f ${SQL_CREATE_DIR}arrest_update.sql
psql --host=${AWS_PG_HOST} --port=5432 --username=acohen --dbname=nvdpsarrests -f ${SQL_CREATE_DIR}offense_update.sql
psql --host=${AWS_PG_HOST} --port=5432 --username=acohen --dbname=nvdpsarrests -f ${SQL_CREATE_DIR}disposition_update.sql
# warrants schema tables
psql --host=${AWS_PG_HOST} --port=5432 --username=acohen --dbname=nvdpsarrests -f ${SQL_CREATE_DIR}warrant_update.sql
psql --host=${AWS_PG_HOST} --port=5432 --username=acohen --dbname=nvdpsarrests -f ${SQL_CREATE_DIR}warrantoffense_update.sql
