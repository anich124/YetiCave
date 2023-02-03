DROP DATABASE IF EXISTS yeticave;

CREATE DATABASE yeticave
	DEFAULT CHARACTER SET utf8
	DEFAULT COLLATE utf8_general_ci;

USE yeticave;


CREATE TABLE categories ( 
	category_id INT PRIMARY KEY AUTO_INCREMENT,
	character_code VARCHAR(128) UNIQUE,
	name_category VARCHAR(50)
);



CREATE TABLE users (
	user_id INT PRIMARY KEY AUTO_INCREMENT,
	date_of_registration DATETIME DEFAULT CURRENT_TIMESTAMP,
	email VARCHAR(128) NOT NULL UNIQUE,
	user_name VARCHAR(30),
	user_password CHAR(255),
	contacts TEXT
	
);

CREATE TABLE lots(
	lots_id INT PRIMARY KEY AUTO_INCREMENT,
	date_creation DATETIME DEFAULT CURRENT_TIMESTAMP,
	title VARCHAR(128),
	lot_discription TEXT,
	lot_image VARCHAR(128),
	start_price DECIMAL(8, 2),
	date_finish DATE,
	step INT,
	user_id INT,
	winner_id INT,
	category_id INT,
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (winner_id) REFERENCES users(user_id),
	FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

CREATE TABLE bets (
	bets_id INT PRIMARY KEY AUTO_INCREMENT,
	date_bet DATETIME DEFAULT CURRENT_TIMESTAMP,
	price_bet DECIMAL(8, 2),
	user_id INT,
	lots_id INT,
	FOREIGN KEY(user_id) REFERENCES users(user_id),
	FOREIGN KEY(lots_id) REFERENCES lots(lots_id)
);