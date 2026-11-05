/*
 * Database creation
 */
\set ON_ERROR_STOP on
create database dbcollec owner collec;
\c "dbname=dbcollec"
begin;
 create extension if not exists postgis schema public;
 create extension if not exists pgcrypto schema public;
 create extension if not exists pg_trgm schema pg_catalog;
commit;


\c "dbname=dbcollec user=collec password=xxxxx host=localhost"

/**
 * create structure
 */
begin;
\ir /var/www/collec2App/collec-science/install/pgsql/collec_create.sql
commit;
