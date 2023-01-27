-- Active: 1674579802581@@127.0.0.1@3306
CREATE TABLE users (
	id TEXT PRIMARY KEY UNIQUE NOT NULL,
	email TEXT UNIQUE NOT NULL,
	password TEXT NOT NULL
);

--Populando tabela de users
INSERT INTO users(id, email, password)
VALUES("a001", "kelly@gmail.com", "221l8o7");

INSERT INTO users(id, email, password)
VALUES("a002", "maria@gmail.com", "031khe8");

INSERT INTO users(id, email, password)
VALUES("a003", "vinnysantos@gmail.com", "seqw78e9qd");



--excluir tabela
DROP TABLE users;



CREATE TABLE products (
id TEXT PRIMARY KEY UNIQUE NOT NULL,
	name TEXT  NOT NULL,
	price REAL NOT NULL,
    category TEXT NOT NULL
 );

INSERT INTO products(id, name, price, category)
VALUES("f001",  "mouse", 50, "eletronicos");

INSERT INTO products(id, name, price, category)
VALUES("f002","teclado", 120, "eletronicos");

INSERT INTO products(id, name, price, category)
VALUES("f003","fone de ouvido", 100, "eletronicos");

INSERT INTO products(id, name, price, category)
VALUES("f004","webcam", 290, "eletronicos");

INSERT INTO products(id, name, price, category)
VALUES("f005","mousepad", 30, "eletronicos");

SELECT *  from products;

UPDATE products 
SET name = "suporte de notebook", price =200
WHERE id = "f002";

UPDATE products
SET price = 200
WHERE id = "f002";


SELECT *  from products;
SELECT *  from users;

SELECT * FROM products
WHERE name ="mouse";

INSERT INTO users(id, email, password)
VALUES("a006", "aline@labenu.com", "4685iyr8u9");


INSERT INTO products(id, name, price, category)
VALUES("f006", "notebook", 3220, "eletronicos");

SELECT *  from products;

SELECT * FROM products
WHERE id= "f006";

DELETE  FROM users
WHERE id="a006";


DELETE FROM products
WHERE id = "a006";

UPDATE users SET email="jorge@gmail.com", password="1325j5h8" WHERE id="a001";


UPDATE products SET price=200 WHERE id="f002";

SELECT * FROM users
ORDER BY email asc;


SELECT * FROM products
ORDER BY price asc LIMIT 20;

SELECT * FROM products
WHERE price >= "2" AND price <="150"
ORDER BY price ASC;


CREATE TABLE purchases(
	id TEXT PRIMARY KEY UNIQUE NOT NULL,
	total_price REAL UNIQUE NOT NULL, 
	paid INTEGER NOT NULL,
	delivered_at TEXT,
	buyer_id TEXT NOT NULL, 
	 FOREIGN KEY (buyer_id) REFERENCES users (id)
 
);

INSERT INTO purchases(id, total_price, paid, delivered_at, buyer_id)
VALUES("p001",10, 0,"","f001"),
("p002",20, 0,"","f002"),
("p003",30, 0,"","f001"),
("p004",40, 0,"","f003");

SELECT * FROM purchases;
DROP TABLE purchases;

UPDATE purchases
SET delivered_at=DATETIME("now", "localtime")
WHERE id ="p001";

SELECT * FROM purchases
INNER JOIN users
ON purchases.buyer_id =users.id
WHERE users.id="a001";

CREATE TABLE purchases_products (
	purchase_id TEXT NOT NULL, 
	product_id TEXT NOT NULL, 
	quantity INTEGER NOT NULL,
	FOREIGN KEY (purchase_id) REFERENCES purchases(id)
	FOREIGN KEY (product_id) REFERENCES products(id)


);
INSERT INTO purchases_products(purchase_id, product_id, quantity)
VALUES
("p001", "f003", 1),
("p002", "f003", 2),
("p003", "f003", 3);
DROP TABLE purchases_products;

SELECT * FROM purchases
INNER JOIN  purchases_products  
ON  purchases_products.purchase_id =purchases.id
;
SELECT 
purchases.id AS purchaseId,
purchases.total_price, 
purchases.paid,
purchases.delivered_at, 
purchases.buyer_id AS buyerId,
products.id, 
products.name,
products.price
FROM purchases
LEFT JOIN purchases_products
ON purchases_products.purchase_id = purchases.id
INNER JOIN products
ON  purchases_products.product_id = products.id;