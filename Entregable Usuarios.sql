##### ENTREGABLE CREAR USUARIO 
USE valarte_text;
USE mysql;
SHOW TABLES;
SELECT * FROM db;
SELECT * FROM valarte_text.clientes;
SELECT * FROM USER

#### PRIMER USUARIO CREADO PERMISOS SOLO PARA LEER TABLAS 

CREATE USER 'usuario1'@'localhost';

SELECT * FROM mysql.user WHERE user LIKE 'usuario1';

SHOW GRANTS FOR 'usuario1'@'localhost';
GRANT SELECT, SELECT ON valarte_text.articulo TO 'usuario1'@'localhost';
GRANT SELECT, SELECT ON valarte_text.clientes TO 'usuario1'@'localhost';
GRANT SELECT, SELECT ON valarte_text.proveedor TO 'usuario1'@'localhost';
GRANT SELECT, SELECT ON valarte_text.compras TO 'usuario1'@'localhost';
SELECT * FROM USER

#### SEGUNDO USUARIO CREADO PERMISOS SOLO PARA LEER, INSERCIÓN Y MODIFICACIÓN DE TABLAS

CREATE USER 'usuario2'@'localhost';

SELECT * FROM mysql.user WHERE user LIKE 'usuario2';
GRANT SELECT, SELECT ON valarte_text.articulo TO 'usuario2'@'localhost';
GRANT SELECT, SELECT ON valarte_text.clientes TO 'usuario2'@'localhost';
GRANT SELECT, SELECT ON valarte_text.proveedor TO 'usuario2'@'localhost';
GRANT SELECT, SELECT ON valarte_text.compras TO 'usuario2'@'localhost';

GRANT SELECT, INSERT ON valarte_text.articulo TO 'usuario2'@'localhost';
GRANT SELECT, INSERT ON valarte_text.clientes TO 'usuario2'@'localhost';
GRANT SELECT, INSERT ON valarte_text.proveedor TO 'usuario2'@'localhost';
GRANT SELECT, INSERT ON valarte_text.compras TO 'usuario2'@'localhost';

GRANT SELECT, UPDATE ON valarte_text.articulo TO 'usuario2'@'localhost';
GRANT SELECT, UPDATE ON valarte_text.clientes TO 'usuario2'@'localhost';
GRANT SELECT, UPDATE ON valarte_text.proveedor TO 'usuario2'@'localhost';
GRANT SELECT, UPDATE ON valarte_text.compras TO 'usuario2'@'localhost';