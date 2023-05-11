-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: Pizzeria
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.22.04.1

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
-- Table structure for table `Botiga`
--

DROP TABLE IF EXISTS `Botiga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Botiga` (
  `idBotiga` int NOT NULL,
  `adreca` varchar(45) DEFAULT NULL,
  `codipostal` varchar(45) DEFAULT NULL,
  `localitat` varchar(45) DEFAULT NULL,
  `idProvincia` int DEFAULT NULL,
  PRIMARY KEY (`idBotiga`),
  KEY `fk_Botiga_1_idx` (`idProvincia`),
  CONSTRAINT `fk_Botiga_1` FOREIGN KEY (`idProvincia`) REFERENCES `Provincia` (`idprovincies`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Botiga`
--

LOCK TABLES `Botiga` WRITE;
/*!40000 ALTER TABLE `Botiga` DISABLE KEYS */;
/*!40000 ALTER TABLE `Botiga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Categoria`
--

DROP TABLE IF EXISTS `Categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Categoria` (
  `idCategoria` int NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categoria`
--

LOCK TABLES `Categoria` WRITE;
/*!40000 ALTER TABLE `Categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `Categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Client`
--

DROP TABLE IF EXISTS `Client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Client` (
  `idClient` int NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `cognoms` varchar(45) DEFAULT NULL,
  `adreca` varchar(45) DEFAULT NULL,
  `codipostal` varchar(45) DEFAULT NULL,
  `localitat` varchar(45) DEFAULT NULL,
  `idProvincia` int DEFAULT NULL,
  `numTelefon` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idClient`),
  KEY `fk_Client_1_idx` (`idProvincia`),
  CONSTRAINT `fk_Client_1` FOREIGN KEY (`idProvincia`) REFERENCES `Provincia` (`idprovincies`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Client`
--

LOCK TABLES `Client` WRITE;
/*!40000 ALTER TABLE `Client` DISABLE KEYS */;
/*!40000 ALTER TABLE `Client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Comanda`
--

DROP TABLE IF EXISTS `Comanda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Comanda` (
  `idComanda` int NOT NULL,
  `descripcio` varchar(45) DEFAULT NULL,
  `idPersona` varchar(45) DEFAULT NULL,
  `dataComanda` datetime DEFAULT NULL,
  `idBotiga` int DEFAULT NULL,
  `idtipusRepartiment` int DEFAULT NULL,
  `quantitatProductes` int DEFAULT NULL,
  `preuTotal` double DEFAULT NULL,
  PRIMARY KEY (`idComanda`),
  KEY `fk_Comanda_1_idx` (`idtipusRepartiment`),
  KEY `fk_Comanda_2_idx` (`idBotiga`),
  CONSTRAINT `fk_Comanda_1` FOREIGN KEY (`idtipusRepartiment`) REFERENCES `TipusRepartiment` (`idTipusRepartiment`),
  CONSTRAINT `fk_Comanda_2` FOREIGN KEY (`idBotiga`) REFERENCES `Botiga` (`idBotiga`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comanda`
--

LOCK TABLES `Comanda` WRITE;
/*!40000 ALTER TABLE `Comanda` DISABLE KEYS */;
/*!40000 ALTER TABLE `Comanda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Empleat`
--

DROP TABLE IF EXISTS `Empleat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Empleat` (
  `idEmpleat` int NOT NULL,
  `idBotiga` int DEFAULT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `cognoms` varchar(45) DEFAULT NULL,
  `NIF` varchar(9) DEFAULT NULL,
  `telefon` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idEmpleat`),
  KEY `fk_Empleat_1_idx` (`idBotiga`),
  CONSTRAINT `fk_Empleat_1` FOREIGN KEY (`idBotiga`) REFERENCES `Botiga` (`idBotiga`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Empleat`
--

LOCK TABLES `Empleat` WRITE;
/*!40000 ALTER TABLE `Empleat` DISABLE KEYS */;
/*!40000 ALTER TABLE `Empleat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PizzaCategoria`
--

DROP TABLE IF EXISTS `PizzaCategoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PizzaCategoria` (
  `idPizzaCategoria` int NOT NULL,
  `idPizza` int DEFAULT NULL,
  `idCategoria` int DEFAULT NULL,
  PRIMARY KEY (`idPizzaCategoria`),
  KEY `fk_PizzaCategoria_1_idx` (`idPizza`),
  KEY `fk_PizzaCategoria_1_idx1` (`idCategoria`),
  CONSTRAINT `fk_PizzaCategoria_1` FOREIGN KEY (`idCategoria`) REFERENCES `Categoria` (`idCategoria`),
  CONSTRAINT `fk_PizzaCategoria_2` FOREIGN KEY (`idPizza`) REFERENCES `Producte` (`idProducte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PizzaCategoria`
--

LOCK TABLES `PizzaCategoria` WRITE;
/*!40000 ALTER TABLE `PizzaCategoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `PizzaCategoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Producte`
--

DROP TABLE IF EXISTS `Producte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Producte` (
  `idProducte` int NOT NULL,
  `idTipusProducte` int DEFAULT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `descripcio` varchar(45) DEFAULT NULL,
  `imatge` varchar(45) DEFAULT NULL,
  `preu` double DEFAULT NULL,
  PRIMARY KEY (`idProducte`),
  KEY `fk_Producte_1_idx` (`idTipusProducte`),
  CONSTRAINT `fk_Producte_1` FOREIGN KEY (`idTipusProducte`) REFERENCES `TipusProducte` (`idTipusProducte`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Producte`
--

LOCK TABLES `Producte` WRITE;
/*!40000 ALTER TABLE `Producte` DISABLE KEYS */;
/*!40000 ALTER TABLE `Producte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Provincia`
--

DROP TABLE IF EXISTS `Provincia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Provincia` (
  `idprovincies` int NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idprovincies`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Provincia`
--

LOCK TABLES `Provincia` WRITE;
/*!40000 ALTER TABLE `Provincia` DISABLE KEYS */;
/*!40000 ALTER TABLE `Provincia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Repartidor`
--

DROP TABLE IF EXISTS `Repartidor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Repartidor` (
  `idRepartidor` int NOT NULL,
  `idEmpleat` int DEFAULT NULL,
  `dataHoraRepartiment` datetime DEFAULT NULL,
  `idTipusEmpleat` int DEFAULT NULL,
  PRIMARY KEY (`idRepartidor`),
  KEY `fk_Repartidor_1_idx` (`idEmpleat`),
  KEY `fk_Repartidor_2_idx` (`idTipusEmpleat`),
  CONSTRAINT `fk_Repartidor_1` FOREIGN KEY (`idEmpleat`) REFERENCES `Empleat` (`idEmpleat`),
  CONSTRAINT `fk_Repartidor_2` FOREIGN KEY (`idTipusEmpleat`) REFERENCES `TipusEmpleat` (`idTipusEmpleat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Repartidor`
--

LOCK TABLES `Repartidor` WRITE;
/*!40000 ALTER TABLE `Repartidor` DISABLE KEYS */;
/*!40000 ALTER TABLE `Repartidor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipusEmpleat`
--

DROP TABLE IF EXISTS `TipusEmpleat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TipusEmpleat` (
  `idTipusEmpleat` int NOT NULL,
  `descripcio` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTipusEmpleat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipusEmpleat`
--

LOCK TABLES `TipusEmpleat` WRITE;
/*!40000 ALTER TABLE `TipusEmpleat` DISABLE KEYS */;
INSERT INTO `TipusEmpleat` VALUES (1,'Cuiner'),(2,'Repartidor');
/*!40000 ALTER TABLE `TipusEmpleat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipusProducte`
--

DROP TABLE IF EXISTS `TipusProducte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TipusProducte` (
  `idTipusProducte` int NOT NULL,
  `descripcio` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTipusProducte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipusProducte`
--

LOCK TABLES `TipusProducte` WRITE;
/*!40000 ALTER TABLE `TipusProducte` DISABLE KEYS */;
INSERT INTO `TipusProducte` VALUES (1,'Pizzes'),(2,'Hamburgueses'),(3,'Begudes');
/*!40000 ALTER TABLE `TipusProducte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipusRepartiment`
--

DROP TABLE IF EXISTS `TipusRepartiment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TipusRepartiment` (
  `idTipusRepartiment` int NOT NULL,
  `descripcio` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTipusRepartiment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipusRepartiment`
--

LOCK TABLES `TipusRepartiment` WRITE;
/*!40000 ALTER TABLE `TipusRepartiment` DISABLE KEYS */;
INSERT INTO `TipusRepartiment` VALUES (1,'Botiga'),(2,'Domicili');
/*!40000 ALTER TABLE `TipusRepartiment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-11 17:34:51
