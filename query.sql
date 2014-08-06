/**
* This is the SQL query need to be created before running the app.
* 1. Login into local database.
* Then doing the following queries.
*/

CREATE database FannieMae;

use FannieMae;

CREATE table users (
	user_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	username VARCHAR(40) NOT NULL,
	password CHAR(40) NOT NULL,
	firstName VARCHAR(20) NOT NULL,
	lastName VARCHAR(20) NOT NULL,
	sex CHAR(1),
	age INT DEFAULT NULL,
	PRIMARY KEY(user_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

INSERT INTO users (username, password, firstName, lastName, sex, age) VALUES ('admin', '1234', 'Yao', 'Huang', 'M', '25');