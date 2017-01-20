
SELECT DISTINCT "make_title" FROM "car_models" WHERE "make_code" = 'LAM';--Time: 1.258 ms
SELECT DISTINCT "model_title" FROM "car_models" WHERE "make_code" = 'NISSAN' AND "model_code" = 'GT-R';--Time .973 ms
SELECT "make_code", "model_code", "model_title", "year" FROM "car_models" WHERE "make_code" = 'LAM';--Time: 1.158 ms
SELECT * FROM "car_models" WHERE "year" <= 2015 AND "year" >= 2010;--Time: 81.622 ms
SELECT * FROM "car_models" WHERE "year" = 2010;--Time: 15.641 ms


