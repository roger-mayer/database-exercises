CREATE DATABASE IF NOT EXISTS codeup_test_db;
-- USE codeup_test_db;
-- DROP table if EXISTS albums;
--
-- CREATE TABLE IF NOT EXISTS
-- albums (
-- id int(10) unsigned NOT NULL AUTO_INCREMENT,
-- artist varchar (50) NOT NULL,
-- name varchar (50) NOT NULL,
-- release_date date default null,
-- sales float NOT NULL;
-- genre varchar(50) NOT NULL,
-- PRIMARY KEY(id)
-- );

-- CREATE DATABASE codeup_test_db;
USE codeup_test_db;
DROP TABLE IF EXISTS albums;
 CREATE TABLE IF NOT EXISTS
 albums (
  id int(10) unsigned NOT NULL AUTO_INCREMENT,
  artist varchar(50) NOT NULL,
  name varchar(50) NOT NULL,
  release_date date DEFAULT NULL,
  sales float NOT NULL,
  genre varchar(50) NOT NULL,
  PRIMARY KEY (id)
);