USE valarte_text;

#### ENTREGABLE FUNCIONES 
### Variable de selección de articulo con Id de articulo
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

### 1-FUNCIÓN DE OCULTAR DATOS, LOS DATOS QUE SE OCULTAN SON LAS DIRECCIONES DE LOS CLIENTES 
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

### FUNCIÓN 2 RECOLECTAR NOMBRE Y DOCUMENTO DE LA TABLA DE CLIENTES.
CREATE FUNCTION NOMBRES_DOCUMENTO (nombre_cli VARCHAR(50), documento_cli VARCHAR(50))
RETURNS VARCHAR(50)
DETERMINISTIC
RETURN(
	SELECT CONCAT(nombre_cli, ',', documento_cli));
SELECT NOMBRES_DOCUMENTO(nom_cli, doc_cli)
FROM clientes