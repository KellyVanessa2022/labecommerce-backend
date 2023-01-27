-- Active: 1674436690303@@127.0.0.1@3306

CREATE TABLE users (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL
);

SELECT * FROM users;

INSERT INTO users(id, email, password)
VALUES ("a001", "kelly@gmail.com", "24658d"),
 ("a002", "play@gmail.com", "sdea89qe"),
 ("a003", "vinny@gmail.com", "ed5a6r9");

 CREATE TABLE products (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL,
    price REAL NOT NULL,
    category TEXT NOT NULL
);

SELECT * FROM products;