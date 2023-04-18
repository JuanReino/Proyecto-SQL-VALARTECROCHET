USE valarte_text;

###  TRIGGER  CONTADOR DE USUARIOS 

SELECT * FROM clientes;
CREATE TABLE conteo_usuarios(usuarios_totales INT);
DROP TABLE conteo_usuarios
DROP TRIGGER contar_usuarios_delete
DELIMITER $$
CREATE TRIGGER contar_usuarios_delete
AFTER DELETE ON clientes
FOR EACH ROW 
BEGIN 
	DECLARE usuarios INT;
    DELETE FROM conteo_usuarios;
    SET usuarios= (SELECT COUNT(*) FROM clientes);
    INSERT INTO conteo_usuarios VALUES (usuarios);
END $$
DELIMITER ;

SELECT * FROM  conteo_usuarios;

DELIMITER $$
CREATE TRIGGER contar_usuarios_insert
AFTER INSERT ON clientes
FOR EACH ROW 
BEGIN 
	DECLARE usuarios INT;
    DELETE FROM conteo_usuarios;
    SET usuarios= (SELECT COUNT(*) FROM clientes);
    INSERT INTO conteo_usuarios VALUES (usuarios);
END $$
DELIMITER ;

SELECT COUNT(*) FROM clientes;
SELECT * FROM  conteo_usuarios;