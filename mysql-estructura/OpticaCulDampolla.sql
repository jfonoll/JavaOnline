-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: OpticaCulDampolla
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.22.04.2

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
-- Temporary view structure for view `Client recomanat`
--

DROP TABLE IF EXISTS `Client recomanat`;
/*!50001 DROP VIEW IF EXISTS `Client recomanat`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Client recomanat` AS SELECT 
 1 AS `idClient`,
 1 AS `nom`,
 1 AS `codiPostal`,
 1 AS `telefon`,
 1 AS `mail`,
 1 AS `dataRegistre`,
 1 AS `idClientRecomanat`,
 1 AS `Client Recomanat`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Clients`
--

DROP TABLE IF EXISTS `Clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Clients` (
  `idClient` int NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `codiPostal` varchar(45) DEFAULT NULL,
  `telefon` varchar(15) DEFAULT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `dataRegistre` varchar(45) DEFAULT NULL,
  `idClientRecomanat` int DEFAULT NULL,
  PRIMARY KEY (`idClient`),
  KEY `fk_Clients_1_idx` (`idClientRecomanat`),
  CONSTRAINT `fk_Clients_1` FOREIGN KEY (`idClientRecomanat`) REFERENCES `Clients` (`idClient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Clients`
--

LOCK TABLES `Clients` WRITE;
/*!40000 ALTER TABLE `Clients` DISABLE KEYS */;
INSERT INTO `Clients` VALUES (1,'Joan Baldrich','08333','0034 68686868','joan.baldrich@gmail.com','12/05/2023 10:33',2),(2,'Josepa Blanc','02345','003488844433','josepach@gmail.com','12/05/2023 11:00',1);
/*!40000 ALTER TABLE `Clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Empleada`
--

DROP TABLE IF EXISTS `Empleada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Empleada` (
  `idEmpleada` int NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idEmpleada`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Empleada`
--

LOCK TABLES `Empleada` WRITE;
/*!40000 ALTER TABLE `Empleada` DISABLE KEYS */;
INSERT INTO `Empleada` VALUES (1,'Maria Lluisa'),(2,'Antonia'),(3,'Ricard');
/*!40000 ALTER TABLE `Empleada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `Empleada venut ullera`
--

DROP TABLE IF EXISTS `Empleada venut ullera`;
/*!50001 DROP VIEW IF EXISTS `Empleada venut ullera`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Empleada venut ullera` AS SELECT 
 1 AS `descripcio`,
 1 AS `model`,
 1 AS `Empleada que ho ha venut`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ProveidorDeUlleres`
--

DROP TABLE IF EXISTS `ProveidorDeUlleres`;
/*!50001 DROP VIEW IF EXISTS `ProveidorDeUlleres`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ProveidorDeUlleres` AS SELECT 
 1 AS `marca`,
 1 AS `graduacio`,
 1 AS `nom`,
 1 AS `carrer`,
 1 AS `numero`,
 1 AS `pis`,
 1 AS `porta`,
 1 AS `ciutat`,
 1 AS `codipostal`,
 1 AS `pais`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `TipusUlleres`
--

DROP TABLE IF EXISTS `TipusUlleres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TipusUlleres` (
  `idTipusUlleres` int NOT NULL,
  `descripcio` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTipusUlleres`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipusUlleres`
--

LOCK TABLES `TipusUlleres` WRITE;
/*!40000 ALTER TABLE `TipusUlleres` DISABLE KEYS */;
INSERT INTO `TipusUlleres` VALUES (1,'Flotant'),(2,'Pasta'),(3,'Metàl.lica');
/*!40000 ALTER TABLE `TipusUlleres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `Ulleres`
--

DROP TABLE IF EXISTS `Ulleres`;
/*!50001 DROP VIEW IF EXISTS `Ulleres`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Ulleres` AS SELECT 
 1 AS `Proveidor`,
 1 AS `Marca ulleres`,
 1 AS `Model Ulleres`,
 1 AS `Graduacio`,
 1 AS `Tipus ulleres`,
 1 AS `Color Montura`,
 1 AS `Color Vidre`,
 1 AS `Preu`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `UlleresProveidor`
--

DROP TABLE IF EXISTS `UlleresProveidor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UlleresProveidor` (
  `idUlleres` int NOT NULL,
  `idProveidor` int NOT NULL,
  PRIMARY KEY (`idUlleres`,`idProveidor`),
  KEY `fk_UlleresProveidor_2_idx` (`idProveidor`),
  CONSTRAINT `fk_UlleresProveidor_1` FOREIGN KEY (`idUlleres`) REFERENCES `ulleres` (`idulleres`),
  CONSTRAINT `fk_UlleresProveidor_2` FOREIGN KEY (`idProveidor`) REFERENCES `proveidor` (`idproveidor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UlleresProveidor`
--

LOCK TABLES `UlleresProveidor` WRITE;
/*!40000 ALTER TABLE `UlleresProveidor` DISABLE KEYS */;
INSERT INTO `UlleresProveidor` VALUES (1,1),(2,1),(3,2),(4,2),(5,2);
/*!40000 ALTER TABLE `UlleresProveidor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Vendes`
--

DROP TABLE IF EXISTS `Vendes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Vendes` (
  `idVendes` int NOT NULL,
  `idUllera` int DEFAULT NULL,
  `idEmpleada` int DEFAULT NULL,
  PRIMARY KEY (`idVendes`),
  KEY `fk_Vendes_1_idx` (`idUllera`),
  KEY `fk_Vendes_2_idx` (`idEmpleada`),
  CONSTRAINT `fk_Vendes_1` FOREIGN KEY (`idUllera`) REFERENCES `ulleres` (`idulleres`),
  CONSTRAINT `fk_Vendes_2` FOREIGN KEY (`idEmpleada`) REFERENCES `Empleada` (`idEmpleada`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vendes`
--

LOCK TABLES `Vendes` WRITE;
/*!40000 ALTER TABLE `Vendes` DISABLE KEYS */;
INSERT INTO `Vendes` VALUES (1,1,3),(2,3,2),(3,2,1),(4,4,3),(5,5,2);
/*!40000 ALTER TABLE `Vendes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marcaUlleres`
--

DROP TABLE IF EXISTS `marcaUlleres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marcaUlleres` (
  `idMarca` int NOT NULL,
  `descripcio` varchar(45) DEFAULT NULL,
  `idProveidor` int DEFAULT NULL,
  PRIMARY KEY (`idMarca`),
  KEY `fk_marcaUlleres_1_idx` (`idProveidor`),
  CONSTRAINT `fk_marcaUlleres_1` FOREIGN KEY (`idProveidor`) REFERENCES `proveidor` (`idproveidor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcaUlleres`
--

LOCK TABLES `marcaUlleres` WRITE;
/*!40000 ALTER TABLE `marcaUlleres` DISABLE KEYS */;
INSERT INTO `marcaUlleres` VALUES (1,'Raybam',NULL),(2,'Onil',NULL),(3,'MGrafic',NULL);
/*!40000 ALTER TABLE `marcaUlleres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveidor`
--

DROP TABLE IF EXISTS `proveidor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveidor` (
  `idproveidor` int NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `carrer` varchar(45) DEFAULT NULL,
  `numero` varchar(45) DEFAULT NULL,
  `pis` varchar(45) DEFAULT NULL,
  `porta` varchar(45) DEFAULT NULL,
  `ciutat` varchar(45) DEFAULT NULL,
  `codipostal` varchar(45) DEFAULT NULL,
  `pais` varchar(45) DEFAULT NULL,
  `telefon` varchar(45) DEFAULT NULL,
  `fax` varchar(45) DEFAULT NULL,
  `nif` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idproveidor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveidor`
--

LOCK TABLES `proveidor` WRITE;
/*!40000 ALTER TABLE `proveidor` DISABLE KEYS */;
INSERT INTO `proveidor` VALUES (1,'Proveidor 1','Del pi','23','Baixos','2','Barcelona','08023','ESP','932435646','932435647','49383736F'),(2,'Proveidor 2','Del poble','6','Atic','1','Hospitalet de Llobregat','08423','ESP','9324444446','932444447','11111111H'),(3,'Proveidor 3','Ponent','55','B','1','Mataro','08723','ESP','932555556','932555557','22222222J');
/*!40000 ALTER TABLE `proveidor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ulleres`
--

DROP TABLE IF EXISTS `ulleres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ulleres` (
  `idulleres` int NOT NULL,
  `idMarca` int DEFAULT NULL,
  `model` varchar(45) DEFAULT NULL,
  `graduacio` varchar(45) DEFAULT NULL,
  `idTipus` int DEFAULT NULL,
  `colormontura` varchar(45) DEFAULT NULL,
  `colorvidre` varchar(45) DEFAULT NULL,
  `preu` double DEFAULT NULL,
  PRIMARY KEY (`idulleres`),
  KEY `fk_ulleres_1_idx` (`idMarca`),
  KEY `fk_ulleres_2_idx` (`idTipus`),
  CONSTRAINT `fk_ulleres_1` FOREIGN KEY (`idMarca`) REFERENCES `marcaUlleres` (`idMarca`),
  CONSTRAINT `fk_ulleres_2` FOREIGN KEY (`idTipus`) REFERENCES `TipusUlleres` (`idTipusUlleres`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ulleres`
--

LOCK TABLES `ulleres` WRITE;
/*!40000 ALTER TABLE `ulleres` DISABLE KEYS */;
INSERT INTO `ulleres` VALUES (1,1,'FFR','0',1,'Verd','Fosc',250),(2,1,'ZZD','2.25',2,'Groc','Clar',168),(3,2,'C12','0',3,'Negre','Clar',245),(4,2,'VV33','2.5',2,'Blanc','Clar',350),(5,3,'X123','0',3,'Blanc','Clar',155);
/*!40000 ALTER TABLE `ulleres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `Client recomanat`
--

/*!50001 DROP VIEW IF EXISTS `Client recomanat`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Client recomanat` AS select `A`.`idClient` AS `idClient`,`A`.`nom` AS `nom`,`A`.`codiPostal` AS `codiPostal`,`A`.`telefon` AS `telefon`,`A`.`mail` AS `mail`,`A`.`dataRegistre` AS `dataRegistre`,`A`.`idClientRecomanat` AS `idClientRecomanat`,`B`.`nom` AS `Client Recomanat` from (`Clients` `A` join `Clients` `B`) where (`A`.`idClientRecomanat` = `B`.`idClient`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Empleada venut ullera`
--

/*!50001 DROP VIEW IF EXISTS `Empleada venut ullera`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Empleada venut ullera` AS select `D`.`descripcio` AS `descripcio`,`C`.`model` AS `model`,`B`.`nom` AS `Empleada que ho ha venut` from (((`Vendes` `A` join `Empleada` `B`) join `ulleres` `C`) join `marcaUlleres` `D`) where ((`A`.`idEmpleada` = `B`.`idEmpleada`) and (`A`.`idUllera` = `C`.`idulleres`) and (`D`.`idMarca` = `C`.`idMarca`)) order by `B`.`nom` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ProveidorDeUlleres`
--

/*!50001 DROP VIEW IF EXISTS `ProveidorDeUlleres`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ProveidorDeUlleres` AS select `D`.`descripcio` AS `marca`,`B`.`graduacio` AS `graduacio`,`A`.`nom` AS `nom`,`A`.`carrer` AS `carrer`,`A`.`numero` AS `numero`,`A`.`pis` AS `pis`,`A`.`porta` AS `porta`,`A`.`ciutat` AS `ciutat`,`A`.`codipostal` AS `codipostal`,`A`.`pais` AS `pais` from (((`proveidor` `A` join `ulleres` `B`) join `UlleresProveidor` `C`) join `marcaUlleres` `D`) where ((`A`.`idproveidor` = `C`.`idProveidor`) and (`B`.`idulleres` = `C`.`idUlleres`) and (`B`.`idMarca` = `D`.`idMarca`)) order by `D`.`descripcio` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Ulleres`
--

/*!50001 DROP VIEW IF EXISTS `Ulleres`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Ulleres` AS select `B`.`nom` AS `Proveidor`,`F`.`descripcio` AS `Marca ulleres`,`A`.`model` AS `Model Ulleres`,`A`.`graduacio` AS `Graduacio`,`E`.`descripcio` AS `Tipus ulleres`,`A`.`colormontura` AS `Color Montura`,`A`.`colorvidre` AS `Color Vidre`,`A`.`preu` AS `Preu` from ((((`ulleres` `A` join `proveidor` `B`) join `UlleresProveidor` `C`) join `TipusUlleres` `E`) join `marcaUlleres` `F`) where ((`A`.`idulleres` = `C`.`idUlleres`) and (`B`.`idproveidor` = `C`.`idProveidor`) and (`A`.`idTipus` = `E`.`idTipusUlleres`) and (`A`.`idMarca` = `F`.`idMarca`)) */;
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

-- Dump completed on 2023-05-16  7:57:22
