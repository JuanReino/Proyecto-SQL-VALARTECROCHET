
USE valarte_text;

SELECT * FROM clientes;
DROP TABLE clientes;
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
SELECT * FROM compras;
DROP TABLE compras;
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


#### ENTREGABLE VISTAS 

CREATE OR REPLACE VIEW articulo_1 AS
SELECT *
FROM articulo;

SELECT * FROM articulo_1

CREATE OR REPLACE VIEW articulo_2 AS
SELECT id_art, val_art
FROM articulo;

SELECT * FROM articulo_2

CREATE VIEW clientes_informacion AS
SELECT id_cli, nom_cli
FROM clientes;
SELECT * FROM clientes_informacion


#### ENTREGABLE FUNCIONES 

SET @variable=CURRENT_DATE;
SELECT @variable AS variable_valarte;
SET @new_variable := (
					SELECT val_art
                    FROM articulo
					WHERE id_art=1
                    );
SELECT @new_variable;
SELECT * 
FROM articulo
WHERE val_art=@new_variable;

### 1-FUNCIÓN DE OCULTAR DATOS 
CREATE FUNCTION SE_GURIDAD (pii VARCHAR(50))
RETURNS VARCHAR(50)
DETERMINISTIC
RETURN(
	SELECT CONCAT(LEFT(pii,3),
		REGEXP_REPLACE(
        RIGHT(pii,CHAR_LENGTH(pii)-3),
        '[^@]', '*')) as pii);
SELECT SE_GURIDAD(dir_cli)
FROM clientes

### FUNCIÓN 2 RECOLECTAR NOMBRE Y DOCUMENTO

CREATE FUNCTION NOMBRES_DOCUMENTO (nombre_cli VARCHAR(50), documento_cli VARCHAR(50))
RETURNS VARCHAR(50)
DETERMINISTIC
RETURN(
	SELECT CONCAT(nombre_cli, ',', documento_cli));
SELECT NOMBRES_DOCUMENTO(nom_cli, doc_cli)
FROM clientes

### PRUEBA SP 


#####  PRIMER SP PARA EL ORDENAMIENTO DE UNA TABLA 
DROP PROCEDURE ordenamiento_valor;
DELIMITER $$
CREATE PROCEDURE ordenamiento_valor (IN campo_ordenar VARCHAR(20), IN orden BOOLEAN)
-- ORDEN = 1 -> ASC 
-- ORDEN = 0 -> DESC 
BEGIN 
	IF campo_ordenar <> "" AND orden=1 THEN 
		SET @ordenar = CONCAT("ORDER BY ", campo_ordenar);
	ELSEIF campo_ordenar <> "" AND orden=0 THEN
		SET @ordenar = CONCAT("ORDER BY ", campo_ordenar, 'DESC');
	ELSE 
		SET @ordenar = " ";
	END IF;
END $$
DELIMITER ;
CALL ordenamiento_valor("val_art", 1);
SELECT * FROM articulo;


###  TRIGGER 

SELECT * FROM clientes;
CREATE TABLE conteo_usuarios(usuarios_totales INT);

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

