CREATE DATABASE zapateriaDB;
USE zapateriaDB;
/*La tabla de productos tiene una llave idP, y sus campos corresponden de la manera siguiente nombre del producto, 
presentacion(paquete,pieza),precio, cantidad en el stock*/
CREATE TABLE IF NOT EXISTS products (idP INT PRIMARY KEY, 
	namePro VARCHAR(45), 
	presentPro VARCHAR(45), 
	price DOUBLE, 
	cantidad INT);
/*La tabla de clientes tiene una llave idC, y sus campos corresponden de la manera siguiente nombre del cliente, 
ciudad*/
CREATE TABLE IF NOT EXISTS client (idC INT PRIMARY KEY, 
	nameCl VARCHAR(45), 
	city VARCHAR(45));
/*La tabla de transacciones tiene una llave idT, y sus campos corresponden de la manera siguiente fecha en que se hizo la transaccion o compra, 
sell que nos indica si fue venta o compra,el cliente que hizo dicha transaccion*/
CREATE TABLE IF NOT EXISTS transaction (idT INT PRIMARY KEY, 
	dateT DATE,
	sell BOOLEAN,
	client INT, 
	FOREIGN KEY(client) REFERENCES client(idC));
/*La tabla de operaciones tiene una llave idO, y sus campos corresponden de la manera siguiente transaction 
en que transaccion se compro o vendio un producto, producto que se vendio o compro, cantidad del product */
CREATE TABLE IF NOT EXISTS operation (idO INT PRIMARY KEY, 
	transaction INT, 
	product INT, 
	cantidad INT, 
	FOREIGN KEY(transaction) REFERENCES transaction(idT), 
	FOREIGN KEY(product) REFERENCES products(idP));




