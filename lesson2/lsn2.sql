CREATE TABLE categories(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name VARCHAR(255) NOT NULL
);
CREATE TABLE products(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name VARCHAR(255) NOT NULL,
	price NUMERIC(10, 2) NOT NULL,
	describtion TEXT,
	rating REAL DEFAULT 10,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	is_active BLOB DEFAULT 1
	FOREIGN KEY (category_id) REFERENCES categories(id)
);


ALTER TABLE products ADD COLUMN category_id INTEGER



DROP TABLE categories;
DROP TABLE products;


INSERT INTO categories(name) VALUES(
	'Хозтовары'
);
INSERT INTO categories(name) VALUES(
	'Электроника';
);
INSERT INTO categories(name) VALUES(
	'Хлеб-булочное'
);
SELECT * FROM categories;
SELECT * FROM products;

INSERT INTO products(name, describtion, price, rating, category_id)
VALUES ('Веник', 'Веник обыкновенный', 999.99, 10, 1);

INSERT INTO products(name, describtion, price, rating, category_id)
VALUES ('Кран', 'Кран обыкновенный', 995.99, 10, 1);

INSERT INTO products(name, describtion, price, rating, category_id)
VALUES ('Раквина', 'Раквина обыкновенный', 777.99, 10, 1);

INSERT INTO products(name, describtion, price, rating, category_id)
VALUES ('Холодилник', 'Холодилник обыкновенный', 999.99, 10, 2);

INSERT INTO products(name, describtion, price, rating, category_id)
VALUES ('Кондиционер', 'Кондиционер оргинальный', 999.99, 10, 2);

INSERT INTO products(name, describtion, price, rating, category_id)
VALUES ('Компютер', 'Компютер обыкновенный', 999.99, 10, 2);

INSERT INTO products(name, describtion, price, rating, category_id)
VALUES ('Булочка', 'Булочка свежее', 999.99, 10, 3);

INSERT INTO products(name, describtion, price, rating, category_id)
VALUES ('Лепёшка ', 'Лепёшка свежее', 999.99, 10, 3);

INSERT INTO products(name, describtion, price, rating, category_id)
VALUES ('Буханка', 'Буханка свежее', 999.99, 10, 3);

SELECT * FROM products WHERE products.category_id == 1;
SELECT
	p.name AS 'Название продукта',
	c.name AS 'Название категорий'
FROM products p
INNER JOIN categories c ON c.id == p.category_id
WHERE p.category_id == 1;
	