CREATE schema valartecrochet_text;
USE valartecrochet_text;

SELECT * FROM clientes;
CREATE TABLE clientes (
id_cli INT NOT NULL,
doc_cli INT NOT NULL,
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
CREATE TABLE compras (
id_com INT NOT NULL,
id_cli INT NOT NULL,
id_art INT NOT NULL,
cant_com VARCHAR(50) NOT NULL,
fech_com DATE NOT NULL,
val_com VARCHAR(50) NOT NULL,
PRIMARY KEY (id_com),
FOREIGN KEY (id_cli) REFERENCES clientes(id_cli),
FOREIGN KEY (id_art) REFERENCES articulo(id_art)
);