\c matthewtirrell
DROP USER IF EXISTS "indexed_cars_user";
CREATE USER "indexed_cars_user";
DROP DATABASE IF EXISTS "indexed_cars";
CREATE DATABASE "indexed_cars" WITH OWNER "indexed_cars_user";
\c indexed_cars
\i scripts/car_models.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
SELECT DISTINCT "make_title" FROM "car_models" WHERE "make_code" = 'LAM';--Time: 32.489 ms
SELECT DISTINCT "model_title" FROM "car_models" WHERE "make_code" = 'NISSAN' AND "model_code" = 'GT-R';--Time: 31.160 ms
SELECT "make_code", "model_code", "model_title", "year" FROM "car_models" WHERE "make_code" = 'LAM';--Time: 26.285 ms
SELECT * FROM "car_models" WHERE "year" <= 2015 AND "year" >= 2010;--Time: 102.636 ms
SELECT * FROM "car_models" WHERE "year" = 2010;--Time: 45.922 ms

CREATE INDEX "make_code_index"
ON "car_models" ("make_code");

CREATE INDEX "model_code_index"
ON "car_models" ("model_code");

CREATE INDEX "year"
ON "car_models" ("year");

SELECT DISTINCT "make_title" FROM "car_models" WHERE "make_code" = 'LAM';--Time: 1.258 ms
SELECT DISTINCT "model_title" FROM "car_models" WHERE "make_code" = 'NISSAN' AND "model_code" = 'GT-R';--Time .973 ms
SELECT "make_code", "model_code", "model_title", "year" FROM "car_models" WHERE "make_code" = 'LAM';--Time: 1.158 ms
SELECT * FROM "car_models" WHERE "year" <= 2015 AND "year" >= 2010;--Time: 81.622 ms
SELECT * FROM "car_models" WHERE "year" = 2010;--Time: 15.641 ms