-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: valarte_text
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `articulo`
--

DROP TABLE IF EXISTS `articulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articulo` (
  `id_art` int NOT NULL,
  `nom_art` varchar(50) NOT NULL,
  `val_art` varchar(50) NOT NULL,
  PRIMARY KEY (`id_art`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulo`
--

LOCK TABLES `articulo` WRITE;
/*!40000 ALTER TABLE `articulo` DISABLE KEYS */;
INSERT INTO `articulo` VALUES (1,'Bufanda Romance','65000'),(2,'Bufanda Invierno','55000'),(3,'Bufanda Arcoiris','70000'),(4,'Sweater Munch','150000'),(5,'Cardigan Alma','120000'),(6,'Cardigan Margaritas','200000'),(7,'Cardigan Ofelia','160000'),(8,'Sweater Candy','180000'),(9,'Cardigan Chunky','220000'),(10,'Gorro Pastel','40000'),(11,'Gorro Clásico','30000'),(12,'Gorro Unicolor','25000');
/*!40000 ALTER TABLE `articulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `articulo_1`
--

DROP TABLE IF EXISTS `articulo_1`;
/*!50001 DROP VIEW IF EXISTS `articulo_1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `articulo_1` AS SELECT 
 1 AS `id_art`,
 1 AS `nom_art`,
 1 AS `val_art`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `articulo_2`
--

DROP TABLE IF EXISTS `articulo_2`;
/*!50001 DROP VIEW IF EXISTS `articulo_2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `articulo_2` AS SELECT 
 1 AS `id_art`,
 1 AS `val_art`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cli` int NOT NULL,
  `doc_cli` varchar(50) NOT NULL,
  `nom_cli` varchar(50) NOT NULL,
  `dir_cli` varchar(100) NOT NULL,
  `tel_cli` varchar(50) NOT NULL,
  PRIMARY KEY (`id_cli`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'1018410044','Valeria Caldás','Cra 101a # 151-31','3111021436'),(2,'1019689265','Adriana Cortés','Calle 84a # 14-50','3045238070'),(3,'56884956','Edwin Parra','Calle 153 # 14a-13','3138459523'),(4,'1020256554','Jorge Piñeros','Calle 174 # 73-24','3053175638'),(5,'1018697261','Juan Pablo Lopéz','Cra 11 # 9-10','3193175638'),(6,'1017892344','Juan David Buitrago','Av boyacá # 153-11','3179173031'),(7,'1018489621','Julian Mora','Calle 20sur # 30-19','3001098635'),(8,'1015766147','Paula Toro','Cra 13 # 51-14','3040971354'),(9,'1000266119','Nicolas Esteban Tello','Cra 15 # 72-9','3140862020'),(10,'51379646','Maria Hurtado','Calle 1sur # 72-38','3011094438'),(11,'1015266743','Juan David Matta','Manzana D Casa 18-EBENEZER','3007918626'),(12,'1026483377','Camila Daza','Cra 189 #48-22','3065594271');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `contar_usuarios_insert` AFTER INSERT ON `clientes` FOR EACH ROW BEGIN 
	DECLARE usuarios INT;
    DELETE FROM conteo_usuarios;
    SET usuarios= (SELECT COUNT(*) FROM clientes);
    INSERT INTO conteo_usuarios VALUES (usuarios);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `contar_usuarios_delete` AFTER DELETE ON `clientes` FOR EACH ROW BEGIN 
	DECLARE usuarios INT;
    DELETE FROM conteo_usuarios;
    SET usuarios= (SELECT COUNT(*) FROM clientes);
    INSERT INTO conteo_usuarios VALUES (usuarios);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `clientes_informacion`
--

DROP TABLE IF EXISTS `clientes_informacion`;
/*!50001 DROP VIEW IF EXISTS `clientes_informacion`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `clientes_informacion` AS SELECT 
 1 AS `id_cli`,
 1 AS `nom_cli`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `compras`
--

DROP TABLE IF EXISTS `compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compras` (
  `id_com` int NOT NULL,
  `id_cli` int NOT NULL,
  `cant_com` int NOT NULL,
  `fech_com` date NOT NULL,
  `val_com` int NOT NULL,
  PRIMARY KEY (`id_com`),
  KEY `id_cli` (`id_cli`),
  CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`id_cli`) REFERENCES `clientes` (`id_cli`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
INSERT INTO `compras` VALUES (1,1,2,'2019-03-25',130000),(2,2,1,'2019-03-30',70000),(3,3,1,'2019-04-15',150000),(4,4,2,'2019-04-27',300000),(5,2,6,'2019-06-05',420000),(6,1,6,'2019-06-14',390000),(7,5,4,'2019-06-26',100000),(8,6,4,'2019-07-06',800000),(9,7,6,'2019-07-10',490000),(10,4,20,'2019-07-22',1190000),(11,8,6,'2019-09-04',720000),(12,1,10,'2019-09-30',900000),(13,9,6,'2019-10-02',420000),(14,10,6,'2019-11-11',420000),(15,3,10,'2019-12-14',900000),(16,8,20,'2019-12-22',2440000),(17,6,20,'2020-05-27',2440000),(18,1,20,'2020-06-15',2440000),(19,5,20,'2020-08-07',2440000),(20,3,10,'2020-09-18',900000),(21,7,12,'2020-11-02',1315000),(22,10,12,'2020-11-18',1315000),(23,2,10,'2020-12-03',900000),(24,8,20,'2020-12-10',2440000),(25,1,16,'2020-12-12',1965000),(26,1,2,'2020-12-13',140000),(27,3,16,'2020-12-15',1965000),(28,10,6,'2020-12-20',1030000),(29,9,6,'2021-01-29',1030000),(30,4,10,'2021-02-16',900000),(31,7,12,'2021-03-09',1315000),(32,3,16,'2021-05-23',1965000),(33,6,16,'2021-06-19',1965000),(34,5,16,'2021-06-21',1965000),(35,8,20,'2021-06-26',2440000),(36,1,20,'2022-06-16',2440000),(37,2,10,'2022-07-31',900000),(38,7,12,'2022-09-05',1315000),(39,10,12,'2023-03-03',1315000),(40,9,6,'2023-03-26',1030000);
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `compras_vista`
--

DROP TABLE IF EXISTS `compras_vista`;
/*!50001 DROP VIEW IF EXISTS `compras_vista`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `compras_vista` AS SELECT 
 1 AS `id_com`,
 1 AS `fech_com`,
 1 AS `val_com`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `conteo_usuarios`
--

DROP TABLE IF EXISTS `conteo_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conteo_usuarios` (
  `usuarios_totales` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conteo_usuarios`
--

LOCK TABLES `conteo_usuarios` WRITE;
/*!40000 ALTER TABLE `conteo_usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `conteo_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `id_pro` int NOT NULL,
  `doc_pro` int NOT NULL,
  `nom_pro` varchar(50) NOT NULL,
  `dir_pro` varchar(100) NOT NULL,
  `tel_pro` varchar(50) NOT NULL,
  PRIMARY KEY (`id_pro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,10824599,'LANASCO ','Cra 38 # 6-37','3012289618'),(2,10457324,'TEJERCOLOMBIA','Cra 115 # 14-11','3139768442');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'valarte_text'
--

--
-- Dumping routines for database 'valarte_text'
--
/*!50003 DROP FUNCTION IF EXISTS `NOMBRES_DOCUMENTO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `NOMBRES_DOCUMENTO`(nombre_cli VARCHAR(50), documento_cli VARCHAR(50)) RETURNS varchar(50) CHARSET utf8mb4
    DETERMINISTIC
RETURN(
	SELECT CONCAT(nombre_cli, ',', documento_cli)) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `SE_GURIDAD` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `SE_GURIDAD`(pii VARCHAR(50)) RETURNS varchar(50) CHARSET utf8mb4
    DETERMINISTIC
RETURN(
	SELECT CONCAT(LEFT(pii,3),
		REGEXP_REPLACE(
        RIGHT(pii,CHAR_LENGTH(pii)-3),
        '[^@]', '*')) as pii) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ingresar_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ingresar_cliente`(IN id_cli_in INT, IN doc_cli_in INT, IN nom_cli_in VARCHAR(40), IN dir_cli_in VARCHAR(40), IN tel_cli_in VARCHAR(40))
BEGIN 
	INSERT INTO clientes (id_cli, doc_cli, nom_cli, dir_cli, tel_cli) VALUES (id_cli_in, doc_cli_in, nom_cli_in, dir_cli_in, tel_cli_in);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ordenamiento_valor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ordenamiento_valor`(IN campo_ordenar VARCHAR(20), IN orden BOOLEAN)
BEGIN 
	IF campo_ordenar <> "" AND orden=1 THEN 
		SET @ordenar = CONCAT("ORDER BY ", campo_ordenar);
	ELSEIF campo_ordenar <> "" AND orden=0 THEN
		SET @ordenar = CONCAT("ORDER BY ", campo_ordenar, 'DESC');
	ELSE 
		SET @ordenar = " ";
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `articulo_1`
--

/*!50001 DROP VIEW IF EXISTS `articulo_1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `articulo_1` AS select `articulo`.`id_art` AS `id_art`,`articulo`.`nom_art` AS `nom_art`,`articulo`.`val_art` AS `val_art` from `articulo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `articulo_2`
--

/*!50001 DROP VIEW IF EXISTS `articulo_2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `articulo_2` AS select `articulo`.`id_art` AS `id_art`,`articulo`.`val_art` AS `val_art` from `articulo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `clientes_informacion`
--

/*!50001 DROP VIEW IF EXISTS `clientes_informacion`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `clientes_informacion` AS select `clientes`.`id_cli` AS `id_cli`,`clientes`.`nom_cli` AS `nom_cli` from `clientes` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `compras_vista`
--

/*!50001 DROP VIEW IF EXISTS `compras_vista`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `compras_vista` AS select `compras`.`id_com` AS `id_com`,`compras`.`fech_com` AS `fech_com`,`compras`.`val_com` AS `val_com` from `compras` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-27 15:02:00
