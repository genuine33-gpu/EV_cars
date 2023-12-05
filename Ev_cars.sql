SELECT * FROM ev_cars ;

-- Select the top 5 cars with the highest range
SELECT "Car_name", "Range" FROM ev_cars ORDER BY "Range" DESC LIMIT 5;

-- Select the top 5 cars with the fastest charging capability
SELECT "Car_name", "Fast_charge" FROM ev_cars ORDER BY "Fast_charge" DESC LIMIT 5;
--this code returns with nulls.


--Handling NULL Values in SQL Query:
SELECT "Car_name", "Fast_charge" FROM ev_cars WHERE "Fast_charge" IS NOT NULL ORDER BY "Fast_charge" DESC LIMIT 5;


-- Select the top 5 most efficient cars based on price
SELECT "Car_name", "Efficiency", "Price_DE_" FROM ev_cars WHERE "Price_DE_" IS NOT NULL ORDER BY ("Price_DE_" / "Efficiency") ASC LIMIT 5;

--The "Price_DE_" is strange we will handle it
ALTER TABLE ev_cars
RENAME COLUMN "Price_DE_" TO price_de;


-- List all cars with a top speed greater than 200 km/h
SELECT "Car_name", "Top_speed" FROM ev_cars WHERE "Top_speed" > 200;


---------------------------------------------------
-- Select the top 5 cars with the fastest acceleration from 0 to 100 km/h
SELECT "Car_name", "acceleration_0_100" FROM ev_cars ORDER BY "acceleration_0_100" ASC LIMIT 5;
--the code doesnt work. Again "_" charachter

--We handle name issue
ALTER TABLE ev_cars
RENAME COLUMN "acceleration__0_100_" TO acceleration;

SELECT "Car_name", "acceleration" FROM ev_cars ORDER BY "acceleration" ASC LIMIT 5;


-- List all cars with a price between 40,000 and 50,000 Euros
SELECT "Car_name", "price_de" FROM ev_cars WHERE "price_de" BETWEEN 40000 AND 50000;

-- List all cars with a range greater than 400 km and a top speed greater than 200 km/h
SELECT "Car_name", "Range", "Top_speed" FROM ev_cars WHERE "Range" > 400 AND "Top_speed" > 200;

-- List all cars with 'Tesla' in their name
SELECT "Car_name", "Range", "price_de" FROM ev_cars WHERE "Car_name" LIKE 'Tesla%';


