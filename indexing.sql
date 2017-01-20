\c matthewtirrell
DROP USER IF EXISTS "indexed_cars_user";
CREATE USER "indexed_cars_user";
DROP DATABASE IF EXISTS "indexed_cars";
CREATE DATABASE "indexed_cars" WITH OWNER "indexed_cars_user";
\c "indexed_cars";
\i scripts/car_models.sql

