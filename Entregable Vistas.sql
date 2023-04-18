USE valarte_text;

#### ENTREGABLE VISTAS 
### Primer vista a la tabla articulo, una vista basica 
CREATE OR REPLACE VIEW articulo_1 AS
SELECT *
FROM articulo;
SELECT * FROM articulo_1

### Segunda vista a la tabla articulo, una vista mas detallada de id del articulo y valor 
CREATE OR REPLACE VIEW articulo_2 AS
SELECT id_art, val_art
FROM articulo;
SELECT * FROM articulo_2

### Tercera vista a la tabla de clientes, una vista detallada de id y su respectivo nombre
CREATE VIEW clientes_informacion AS
SELECT id_cli, nom_cli
FROM clientes;
SELECT * FROM clientes_informacion

### Cuarta vista a la tabla de compras, una vista detallada de id, fecha y valor de cada compra
CREATE VIEW compras_vista AS
SELECT id_com, fech_com, val_com
FROM compras;
SELECT * FROM compras_vista