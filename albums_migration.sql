DROP DATABASE IF EXISTS codeup_test_db;
CREATE DATABASE codeup_test_db;
USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
  id INT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
  artist VARCHAR (50),
  name VARCHAR(100),
  release_date INT,
  sales FLOAT,
  genre VARCHAR(50)
);