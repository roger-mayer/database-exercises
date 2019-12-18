-- CREATE DATABASE IF NOT EXISTS codeup_test_db;
USE codeup_test_db;
-- DROP TABLE IF EXISTS albums;
--  CREATE TABLE IF NOT EXISTS
--  albums (
--   id int(10) unsigned NOT NULL AUTO_INCREMENT,
--   artist varchar(50) NOT NULL,
--   name varchar(50) NOT NULL,
--   release_date int DEFAULT NULL,
--   sales float NOT NULL,
--   genre varchar(50) NOT NULL,
--   PRIMARY KEY (id)
-- );
INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Michael Jackson', 'Thriller', 1982, 47.3, 'Pop'),
('Eagles', 'Their Greatest Hits', 1976, 41.2, 'Soft Rock'),
('Shania Twain', 'Come On Over', 1997, 29.6, 'Country'),
('Fleetwood Mac', 'Rumours', 1977, 27.9, 'Soft Rock'),
('Whitney Houston', 'The Bodyguard', 1992, 28.4, 'R&B'),
('AC/DC', 'Back in Black', 1980, 28.4, 'Hard Rock'),
('Pink Floyd', 'The Dark Side of the Moon', 1973, 24.2, 'Progressive Rock'),
('Bee Gees', 'Saturday Night Fever', 1977, 21.6, 'Disco'),
('Meat Loaf', 'Bat Out of Hell', 1977, 21.7, 'Hard Rock'),
('Various Artists', 'Grease', 1978, 14.4, 'Rock and Roll'),
('Led Zeppelin', 'Led Zeppelin IV', 1971, 29.0, 'Hard Rock'),
('Michael Jackson', 'Bad', 1987, 22.2, 'Pop'),
('Alanis Morissette', 'Jagged Little Pill', 1995, 24.4, 'Alternative Rock'),
('Celine Dion', 'Falling into You', 1996, 20.2, 'Soft Rock'),
('Eagles', 'Hotel California', 1976, 31.5, 'Soft Rock'),
('The Beatles', 'Sgt. Pepper''s Lonely Hearts Club Band', 1967, 18.2, 'Rock'),
('Various Artists', 'Dirty Dancing', 1987, 17.9, 'Pop'),
('Michael Jackson', 'Dangerous', 1991, 17.3, 'Rock'),
('Adele', '21', 2011, 25.3, 'Pop'),
('Celine Dion', 'Let''s Talk About Love', 1997, 19.3, 'Soft Rock'),
('The Beatles', '1', 2000, 23.4, 'Rock'),
('Metallica', 'Metallica', 1991, 25.2, 'Heavy Metal');

