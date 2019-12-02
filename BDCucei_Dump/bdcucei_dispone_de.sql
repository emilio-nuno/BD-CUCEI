CREATE DATABASE  IF NOT EXISTS `bdcucei` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bdcucei`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: bdcucei
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dispone_de`
--

DROP TABLE IF EXISTS `dispone_de`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dispone_de` (
  `idPunto` int(10) unsigned NOT NULL,
  `numSerie` decimal(5,0) unsigned NOT NULL,
  UNIQUE KEY `numSerie_UNIQUE` (`numSerie`),
  KEY `fk_dispone_de_punto_idx` (`idPunto`),
  CONSTRAINT `fk_dispone_de_equipo` FOREIGN KEY (`numSerie`) REFERENCES `equipo` (`numSerie`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_dispone_de_punto` FOREIGN KEY (`idPunto`) REFERENCES `punto` (`idPunto`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Modelado de la relación entre Punto y Equipo';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dispone_de`
--

LOCK TABLES `dispone_de` WRITE;
/*!40000 ALTER TABLE `dispone_de` DISABLE KEYS */;
INSERT INTO `dispone_de` VALUES (1,74457),(1,74829),(2,76762),(3,77837),(4,93984),(5,95843),(6,97238),(7,97472),(8,98598),(8,99839);
/*!40000 ALTER TABLE `dispone_de` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-02 15:34:59
