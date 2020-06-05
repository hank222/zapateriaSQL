CREATE DATABASE zapateriaDB;
USE zapateriaDB;
CREATE TABLE IF NOT EXISTS products (idP INT PRIMARY KEY, 
	namePro VARCHAR(45), 
	presentPro VARCHAR(45), 
	price DOUBLE, 
	cantidad INT);
CREATE TABLE IF NOT EXISTS client (idC INT PRIMARY KEY, 
	nameCl VARCHAR(45), 
	city VARCHAR(45));
CREATE TABLE IF NOT EXISTS transaction (idT INT PRIMARY KEY, 
	dateT DATE,
	sell BOOLEAN,
	client INT, 
	FOREIGN KEY(client) REFERENCES client(idC));
CREATE TABLE IF NOT EXISTS operation (idO INT PRIMARY KEY, 
	transaction INT, 
	product INT, 
	cantidad INT, 
	FOREIGN KEY(transaction) REFERENCES transaction(idT), 
	FOREIGN KEY(product) REFERENCES products(idP));




