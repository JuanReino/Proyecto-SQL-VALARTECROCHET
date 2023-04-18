###### PROYECTO FINAL , MI EMPRESA SE LLAMA VALARTE CROCHET 

###### SCRIPT DE INTRODUCCIÓN DE TABLAS  

USE valarte_text;

SELECT * FROM clientes;
DROP TABLE clientes;
CREATE TABLE clientes (
id_cli INT NOT NULL,
doc_cli VARCHAR(50) NOT NULL,
nom_cli VARCHAR(50) NOT NULL,
dir_cli VARCHAR(100) NOT NULL,
tel_cli VARCHAR(50) NOT NULL,
PRIMARY KEY(id_cli)
);

SELECT * FROM proveedor;
DROP TABLE proveedor;
CREATE TABLE proveedor (
id_pro INT NOT NULL,
doc_pro INT NOT NULL,
nom_pro VARCHAR(50) NOT NULL,
dir_pro VARCHAR(100) NOT NULL, 
tel_pro VARCHAR(50) NOT NULL,
PRIMARY KEY (id_pro)
);

SELECT * FROM articulo;
DROP TABLE articulo;
CREATE TABLE articulo (
id_art INT NOT NULL,
nom_art VARCHAR(50) NOT NULL,
val_art VARCHAR(50) NOT NULL,
PRIMARY KEY (id_art)
);
SELECT * FROM compras;
DROP TABLE compras;
CREATE TABLE compras (
id_com INT NOT NULL,
id_cli INT NOT NULL,
cant_com INT NOT NULL,
fech_com DATE NOT NULL,
val_com INT NOT NULL,
PRIMARY KEY (id_com),
FOREIGN KEY (id_cli) REFERENCES clientes(id_cli)
);


