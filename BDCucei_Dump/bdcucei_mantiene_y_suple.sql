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
-- Table structure for table `mantiene_y_suple`
--

DROP TABLE IF EXISTS `mantiene_y_suple`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mantiene_y_suple` (
  `idUsuario` int(10) unsigned NOT NULL,
  `numSerie` decimal(5,0) unsigned NOT NULL,
  PRIMARY KEY (`idUsuario`,`numSerie`),
  KEY `fk_mantiene_y_suple_equipo_idx` (`numSerie`),
  CONSTRAINT `fk_mantiene_y_suple_equipo` FOREIGN KEY (`numSerie`) REFERENCES `equipo` (`numSerie`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_mantiene_y_suple_usuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario_especializado` (`idUsuario`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Modelado de relación de mantenimiento entre Equipo y Usuario Administrativo';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantiene_y_suple`
--

LOCK TABLES `mantiene_y_suple` WRITE;
/*!40000 ALTER TABLE `mantiene_y_suple` DISABLE KEYS */;
INSERT INTO `mantiene_y_suple` VALUES (8,74457),(9,74457),(10,74457),(8,74829),(9,74829),(10,74829),(8,76762),(9,76762),(10,76762),(8,77837),(9,77837),(10,77837),(8,93984),(9,93984),(10,93984),(8,95843),(9,95843),(10,95843),(8,97238),(9,97238),(10,97238),(8,97472),(9,97472),(10,97472),(8,98598),(9,98598),(10,98598),(8,99839),(9,99839),(10,99839);
/*!40000 ALTER TABLE `mantiene_y_suple` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-02  9:18:15
