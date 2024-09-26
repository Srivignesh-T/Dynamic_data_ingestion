-- Creating a database
CREATE DATABASE IF NOT EXISTS population_db;
SHOW DATABASES;

-- Switch to the created database
USE population_db;

-- Dropping the table if it exists
DROP TABLE IF EXISTS pop2023;

-- Creating the table structure for population estimates
CREATE TABLE pop2023(
    SEX INT,
    AGE INT,
    ESTIMATESBASE2020 BIGINT,
    POPESTIMATE2020 BIGINT,
    POPESTIMATE2021 BIGINT,
    POPESTIMATE2022 BIGINT,
    POPESTIMATE2023 BIGINT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
TBLPROPERTIES ("skip.header.line.count"="1");

-- Loading data into the table
LOAD DATA LOCAL INPATH 'nc-est2023.csv' INTO TABLE pop2023;

-- Set Hive CLI to print headers when querying tables
set hive.cli.print.header=true;

SELECT * FROM pop2023 LIMIT 10;

-- Verify row count in the table
SELECT COUNT(*) AS total_rows FROM prop2023;