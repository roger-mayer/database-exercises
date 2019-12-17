USE deimos_db;

CREATE TABLE IF NOT EXISTS
students (
id int(10) unsigned NOT NULL AUTO_INCREMENT,
first_name varchar (50) NOT NULL,
last_name varchar(50) NOT NULL,
birthday date default null,
projects text NOT NULL,
is_hired tinyint NOT NULL,
PRIMARY KEY(id)
);


