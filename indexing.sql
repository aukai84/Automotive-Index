\c matthewtirrell
DROP USER "indexed_cars_user";
CREATE USER "indexed_cars_user";
CREATE DATABASE "indexed_cars" WITH OWNER "indexed_cars_user";
DROP DATABASE IF EXISTS "indexed_cars";