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
-- Table structure for table `movimiento_almacen`
--

DROP TABLE IF EXISTS `movimiento_almacen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `movimiento_almacen` (
  `idMovimiento` int(10) unsigned NOT NULL,
  `idAlmacen` int(10) unsigned NOT NULL,
  `numGarrafones` int(10) unsigned NOT NULL,
  `tipoMovimiento` enum('INGRESO','EGRESO') NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`idMovimiento`),
  KEY `fk_movimiento_almacen_idx` (`idAlmacen`),
  CONSTRAINT `fk_movimiento_almacen` FOREIGN KEY (`idAlmacen`) REFERENCES `almacen` (`idAlmacen`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Modela un movimiento para suplir un Almacén';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimiento_almacen`
--

LOCK TABLES `movimiento_almacen` WRITE;
/*!40000 ALTER TABLE `movimiento_almacen` DISABLE KEYS */;
INSERT INTO `movimiento_almacen` VALUES (1,1,30,'EGRESO','2019-09-28'),(2,1,10,'INGRESO','2019-12-28'),(3,3,5,'EGRESO','2019-11-10'),(4,4,5,'INGRESO','2018-11-10'),(5,6,5,'EGRESO','2019-05-10'),(6,7,54,'INGRESO','2019-03-10'),(7,3,23,'EGRESO','2019-02-24'),(8,4,53,'INGRESO','2019-06-24'),(9,7,43,'INGRESO','2019-09-17'),(10,3,65,'EGRESO','2019-06-16');
/*!40000 ALTER TABLE `movimiento_almacen` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-02 15:34:58
