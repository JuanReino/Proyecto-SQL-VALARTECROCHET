USE valarte_text;

### PRUEBA SP 


#####  PRIMER SP PARA EL Ingreso de datos a la tabla de clientes 
SELECT * FROM clientes;
DROP PROCEDURE ingresar_cliente;
DELIMITER $$
CREATE PROCEDURE ingresar_cliente (IN id_cli_in INT, IN doc_cli_in INT, IN nom_cli_in VARCHAR(40), IN dir_cli_in VARCHAR(40), IN tel_cli_in VARCHAR(40))
BEGIN 
	INSERT INTO clientes (id_cli, doc_cli, nom_cli, dir_cli, tel_cli) VALUES (id_cli_in, doc_cli_in, nom_cli_in, dir_cli_in, tel_cli_in);
END $$
DELIMITER ;
CALL ingresar_cliente(12, 1026483377, 'Camila Daza', 'Cra 189 #48-22', '3065594271');
SELECT * FROM clientes;