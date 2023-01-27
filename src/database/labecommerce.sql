-- Active: 1674436690303@@127.0.0.1@3306

CREATE TABLE users (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL
);


INSERT INTO users(id, email, password)
VALUES ("a001", "kelly@gmail.com", "19374"),
 ("a002", "play@gmail.com", "31redr3"),
 ("a003", "vinny@gmail.com", "315r3ed3");

 CREATE TABLE products (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL,
    price REAL NOT NULL,
    category TEXT NOT NULL
);


INSERT INTO products(id, name, price, category)
VALUES("o001", "mouse", 50, "eletronicos"),
("o002", "teclado", 120, "eletronicos"),
("o003", "fone de ouvido", 100, "eletronicos"),
("o004", "webcam", 290, "eletronicos"),
("o005", "mousepad", 30, "eletronicos");

SELECT * FROM users;
SELECT * FROM products;

SELECT * FROM products
WHERE name = "mouse";

INSERT INTO users(id, email, password)
VALUES ("a004", "santos@gmail.com", "564uire578");
INSERT INTO products(id, name, price, category)
VALUES ("o006", "monitor", 899, "eletronicos");

SELECT * FROM products
WHERE id = "o006";

DELETE FROM products
WHERE id = "o006";

DELETE FROM products
WHERE id = "a004";

INSERT INTO users(id, email, password)
VALUES("a006", "maria@gmail.com", "56423589r");

UPDATE users 
SET id = "a999"
WHERE id = "a006";


INSERT INTO products(id, name, price, category)
VALUES("o010", "carregador", 189, "eletronicos");

UPDATE products 
SET id = "o999"
WHERE id = "o010";

SELECT * FROM users
ORDER BY email ASC;

SELECT * FROM products
ORDER BY price ASC
LIMIT 0, 20;

SELECT * FROM products
WHERE price >= "10" AND price <= "90"
ORDER BY price ASC;



SELECT * FROM pokemons
WHERE "type" = "fire" OR "type" = "grass"
ORDER BY attack ASC
LIMIT 2, 3;