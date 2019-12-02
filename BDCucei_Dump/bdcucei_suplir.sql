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
-- Table structure for table `suplir`
--

DROP TABLE IF EXISTS `suplir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `suplir` (
  `idReporte` int(10) unsigned NOT NULL,
  `idPunto` int(10) unsigned NOT NULL,
  `idMovimiento` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idReporte`),
  UNIQUE KEY `idMovimiento_UNIQUE` (`idMovimiento`),
  KEY `fk_suplir_punto_idx` (`idPunto`),
  CONSTRAINT `fk_suplir_movimiento` FOREIGN KEY (`idMovimiento`) REFERENCES `movimiento_almacen` (`idMovimiento`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk_suplir_punto` FOREIGN KEY (`idPunto`) REFERENCES `punto` (`idPunto`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_suplir_reporte` FOREIGN KEY (`idReporte`) REFERENCES `reporte` (`idReporte`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Modela la relación ternaria entre Punto, Movimiento_Almacen y Reporte';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suplir`
--

LOCK TABLES `suplir` WRITE;
/*!40000 ALTER TABLE `suplir` DISABLE KEYS */;
INSERT INTO `suplir` VALUES (1,1,1),(2,2,2),(3,3,3),(4,6,4);
/*!40000 ALTER TABLE `suplir` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-02 15:35:00
