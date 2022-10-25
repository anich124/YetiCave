DROP DATABASE IF EXISTS yeticave;

CREATE DATABASE yeticave
	DEFAULT CHARACTER SET utf-8
	DEFAULT COLLATE utf8_general_ci;

USE yeticave;


CREATE TABLE categories ( 
	category_id INT PRIMARY KEY AUTO_INCREMENT,
	character_code VARCHAR(128) UNIQUE,
	name_category VARCHAT(50)
);


CREATE TABLE users (
	user_id INT PRIMARY KEY AUTO_INCREMENT,
	date_of_registration DATE,
	email VARCHAR(30),
	user_name VARCHAR(30),
	password CHAR(256),
	contacts TEXT,
	lots_id,
	bets_id
	FOREING KEY (lots_id) REFERENCES lots(lots_id),
	FOREING KEY(bets_id) REFERENCES bets(bets_id)
);

CREATE TABLE lots(
	lots_id INT PRIMARY KEY AUTO_INCREMENT,
	date_creation DATETIME,
	title VARCHAR(128),
	lot_discription TEXT,
	lot_image VARCHAR(128),
	start_price DECIMAL(8, 2),
	date_finish DATE,
	step INT,
	user_id,
	winner_id,
	category_id,
	FOREING KEY (user_id) REFERENCES users(user_id),
	FOREING KEY (winner_id) REFERENCES users(user_id),
	FOREING KEY (caregory_id) REFERENCES categories(caregory_id)
);

CREATE TABLE bets (
	bets_id INT PRIMARY KEY AUTO_INCREMENT,
	date_bet DATETIME,
	price_bet DECIMAL(8, 2),
	user_id,
	lots_id,
	FOREING KEY(user_id) REFERENCES users(user_id),
	FOREING KEY(lots_id) REFERENCES lots(lots_id)
);