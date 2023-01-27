DROP DATABASE IF EXISTS yeticave;

CREATE DATABASE yeticave
<<<<<<< HEAD
	DEFAULT CHARACTER SET utf8
=======
	DEFAULT CHARACTER SET utf-8
>>>>>>> master
	DEFAULT COLLATE utf8_general_ci;

USE yeticave;


CREATE TABLE categories ( 
	category_id INT PRIMARY KEY AUTO_INCREMENT,
	character_code VARCHAR(128) UNIQUE,
<<<<<<< HEAD
	name_category VARCHAR(50)
);


CREATE TABLE users (
	user_id INT PRIMARY KEY AUTO_INCREMENT,
	date_of_registration DATE,
	email VARCHAR(30),
	user_name VARCHAR(30),
	user_password CHAR(255),
	contacts TEXT
=======
	name_category VARCHAT(50)
);

INSERT INTO categories (название)
VALUE
("Доски и лыжи (boards)"),
("Крепления (attachment)"),
("Ботинки (boots)"),
("Одежда (clothing)"),
("Инструменты (tools)"),
("Разное (other)"
);

CREATE TABLE users (
	user_id INT PRIMARY KEY AUTO_INCREMENT,
	date_of_registration DATETIME,
	email VARCHAR(30),
	user_name VARCHAR(30),
	password CHAR(256),
	contacts TEXT,
	lots_id,
	bets_id
	FOREING KEY (lots_id) REFERENCES lots(lots_id),
	FOREING KEY(bets_id) REFERENCES bets(bets_id)
>>>>>>> master
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
<<<<<<< HEAD
	user_id INT,
	winner_id INT,
	category_id INT,
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (winner_id) REFERENCES users(user_id),
	FOREIGN KEY (category_id) REFERENCES categories(category_id)
=======
	user_id,
	winner_id,
	category_id,
	FOREING KEY (user_id) REFERENCES users(user_id),
	FOREING KEY (winner_id) REFERENCES users(user_id),
	FOREING KEY (caregory_id) REFERENCES categories(caregory_id)
>>>>>>> master
);

CREATE TABLE bets (
	bets_id INT PRIMARY KEY AUTO_INCREMENT,
	date_bet DATETIME,
	price_bet DECIMAL(8, 2),
<<<<<<< HEAD
	user_id INT,
	lots_id INT,
	FOREIGN KEY(user_id) REFERENCES users(user_id),
	FOREIGN KEY(lots_id) REFERENCES lots(lots_id)
=======
	user_id,
	lots_id,
	FOREING KEY(user_id) REFERENCES users(user_id),
	FOREING KEY(lots_id) REFERENCES lots(lots_id)
>>>>>>> master
);