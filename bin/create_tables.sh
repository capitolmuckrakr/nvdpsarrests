#!/bin/bash
export SQL_CREATE_DIR="${HOME}/scripts/nvdpsarrests/sql_create_tables/"
psql --host=${AWS_PG_HOST} --port=5432 --username=acohen --dbname=nvdpsarrests -f ${SQL_CREATE_DIR}schemas.sql
# arrests schema tables
psql --host=${AWS_PG_HOST} --port=5432 --username=acohen --dbname=nvdpsarrests -f ${SQL_CREATE_DIR}arrest.sql
psql --host=${AWS_PG_HOST} --port=5432 --username=acohen --dbname=nvdpsarrests -f ${SQL_CREATE_DIR}arrestcomment.sql
psql --host=${AWS_PG_HOST} --port=5432 --username=acohen --dbname=nvdpsarrests -f ${SQL_CREATE_DIR}dispositioncomment.sql
psql --host=${AWS_PG_HOST} --port=5432 --username=acohen --dbname=nvdpsarrests -f ${SQL_CREATE_DIR}deathlifecode.sql
psql --host=${AWS_PG_HOST} --port=5432 --username=acohen --dbname=nvdpsarrests -f ${SQL_CREATE_DIR}dispositioncode.sql
psql --host=${AWS_PG_HOST} --port=5432 --username=acohen --dbname=nvdpsarrests -f ${SQL_CREATE_DIR}offenseclasscode.sql
psql --host=${AWS_PG_HOST} --port=5432 --username=acohen --dbname=nvdpsarrests -f ${SQL_CREATE_DIR}offense.sql
psql --host=${AWS_PG_HOST} --port=5432 --username=acohen --dbname=nvdpsarrests -f ${SQL_CREATE_DIR}disposition.sql
# warrants schema tables
psql --host=${AWS_PG_HOST} --port=5432 --username=acohen --dbname=nvdpsarrests -f ${SQL_CREATE_DIR}base.sql
psql --host=${AWS_PG_HOST} --port=5432 --username=acohen --dbname=nvdpsarrests -f ${SQL_CREATE_DIR}basesupplemental.sql
psql --host=${AWS_PG_HOST} --port=5432 --username=acohen --dbname=nvdpsarrests -f ${SQL_CREATE_DIR}transportationcode.sql
psql --host=${AWS_PG_HOST} --port=5432 --username=acohen --dbname=nvdpsarrests -f ${SQL_CREATE_DIR}warrant.sql
psql --host=${AWS_PG_HOST} --port=5432 --username=acohen --dbname=nvdpsarrests -f ${SQL_CREATE_DIR}warrantoffense.sql
psql --host=${AWS_PG_HOST} --port=5432 --username=acohen --dbname=nvdpsarrests -f ${SQL_CREATE_DIR}warrantsupplemental.sql
