
INSERT INTO categories (character_code, name_category)
VALUES
("boards", "Доски и лыжи"),
("attachment", "Крепления"),
("boots", "Ботинки"),
("clothing", "Одежда"),
("tools", "Инструменты"),
("other", "Разное");

INSERT INTO users (date_of_registration, email, user_name, user_password, contacts)
VALUES
	("2022-07-09", "123@bk.ru", "Кирилл", "qwert123", "+79999999999"),
	("2022-09-13", "321@bk.ru", "Иосиф", "qwer321", "+78888888888");

INSERT INTO lots
	(date_creation,	title, lot_discription, lot_image, start_price, date_finish, step, user_id, category_id)
VALUES
	("2022-06-05", "2014 Rossignol District Snowboard", "Самый быстрый сноубод", "img/lot-1.jpg", 10999, "2022-10-20", 100, 1, 1),
	("2022-03-11", "DC Ply Mens 2016/2017 Snowboard", "Самый красивый сноуборд", "img/lot-2.jpg", 159999, "2022-10-21", 300, 2, 1),
	("2022-07-01", "Крепления Union Contact Pro 2015 года размер L/XL", "Отличные крепления", "img/lot-3.jpg", 8000, "2022-10-22", 150, 1, 2),
	("2022-05-07", "Ботинки для сноуборда DC Mutiny Charocal", "Ботинки путешественника", "img/lot-4.jpg", 10999, "2022-10-23", 100, 2, 3),
	("2022-02-25", "Куртка для сноуборда DC Mutiny Charocal", "Непродуваемая куртка", "img/lot-5.jpg", 7500, "2022-10-30", 500, 1, 4),
	("2022-02-25", "Маска Oakley Canopy", "Маска лыжника", "img/lot-6.jpg", 5400, "2022-10-13 16:20", 200, 2, 6)


-- получить все категории
SELECT name_category
FROM categories;

/*получить самые новые, открытые лотыю Каждый лот должен включать название, стартовую цену, ссылку на изображение, цену, название категории;*/
SELECT lots.title, lots.start_price, lots.lot_image, bets.price_bet, categories.name_category
FROM lots 
INNER JOIN categories ON lots.category_id = categories.category_id
INNER JOIN bets ON lots.lots_id = bets.lots_id;

-- показать лот по его ID. Получите также название категории, к которой принадлежит лот;
SELECT categories.name_category
FROM categories 
INNER JOIN lots ON categories.category_id = lots.category_id
WHERE lots_id = 3;

/*обновить название лота по его идентификатору;*/
UPDATE lots
SET title = "DC Ply Mens 2017/2018 Snowboard"
WHERE lots_id = 2;

/*получить список ставок для лота по его идентификатору с сортировкой по дате.*/
SELECT lots.title, bets.date_bet, bets.price_bet, users.user_name
FROM bets
INNER JOIN lots ON bets.lots_id = lots.lots_id
INNER JOIN users ON bets.user_id = users.user_id
WHERE bets.lots_id = 3
ORDER BY  bets.date_bet;
