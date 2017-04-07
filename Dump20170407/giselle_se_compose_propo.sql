-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 109.30.147.219    Database: giselle
-- ------------------------------------------------------
-- Server version	5.5.54-0+deb8u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `se_compose_propo`
--

DROP TABLE IF EXISTS `se_compose_propo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `se_compose_propo` (
  `QteIngredient` int(11) DEFAULT NULL,
  `FraicheurMin` int(11) DEFAULT NULL,
  `FraicheurMax` int(11) DEFAULT NULL,
  `Temps` int(11) DEFAULT NULL,
  `IDProposition` int(11) NOT NULL,
  `IDproduit` int(11) NOT NULL,
  PRIMARY KEY (`IDProposition`,`IDproduit`),
  KEY `FK_se_compose_propo_IDproduit` (`IDproduit`),
  CONSTRAINT `FK_se_compose_propo_IDproduit` FOREIGN KEY (`IDproduit`) REFERENCES `Produit` (`IDproduit`) ON DELETE CASCADE,
  CONSTRAINT `FK_se_compose_propo_IDProposition` FOREIGN KEY (`IDProposition`) REFERENCES `Proposition` (`IDProposition`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `se_compose_propo`
--

LOCK TABLES `se_compose_propo` WRITE;
/*!40000 ALTER TABLE `se_compose_propo` DISABLE KEYS */;
INSERT INTO `se_compose_propo` VALUES (3,5,10,2,1,38),(1,5,10,20,1,42),(2,5,10,15,1,70),(2,2,5,3,2,32),(5,1,2,6,2,33),(3,10,20,15,2,35),(1,2,8,5,3,35),(1,3,7,10,3,49),(1,4,6,20,3,50),(10,5,1,5,6,32),(5,10,5,10,6,46),(1,5,10,2,6,51);
/*!40000 ALTER TABLE `se_compose_propo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-07 10:05:32
