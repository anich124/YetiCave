INSERT INTO categories (character_code, name_category)
VALUES
("boards", "Доски и лыжи"),
("attachment", "Крепления"),
("boots", "Ботинки"),
("clothing", "Одежда"),
("tools"; "Инструменты"),
("other", "Разное");

INSERT INTO users (date_of_registration, email, user_name, password, contacts)
VALUES
	("2022-07-09", "123@bk.ru", "Кирилл", "qwert123", "+79999999999"),
	("2022-09-13", "321@bk.ru", "Иосиф", "qwer321", "+78888888888");

INSERT INTO lots
	(date_creation,	title, lot_discription, lot_image, start_price, date_finish, step, user_id, category_id)
VALUES
	("2022-06-05 22:07", "2014 Rossignol District Snowboard", "Самый быстрый сноубод", "img/lot-1.jpg", 10999, "2022-10-20", 100, 1, 1),