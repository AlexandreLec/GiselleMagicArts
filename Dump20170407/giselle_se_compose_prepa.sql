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
-- Table structure for table `se_compose_prepa`
--

DROP TABLE IF EXISTS `se_compose_prepa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `se_compose_prepa` (
  `QteIngredient` int(11) DEFAULT NULL,
  `FraicheurMin` int(11) DEFAULT NULL,
  `FraicheurMax` int(11) DEFAULT NULL,
  `Temps` int(11) DEFAULT NULL,
  `IDproduit` int(11) NOT NULL,
  `IDproduitFinal` int(11) NOT NULL,
  PRIMARY KEY (`IDproduit`,`IDproduitFinal`),
  KEY `FK_se_compose_prepa_IDproduitFinal` (`IDproduitFinal`),
  CONSTRAINT `FK_se_compose_prepa_IDproduit` FOREIGN KEY (`IDproduit`) REFERENCES `Produit` (`IDproduit`),
  CONSTRAINT `FK_se_compose_prepa_IDproduitFinal` FOREIGN KEY (`IDproduitFinal`) REFERENCES `Produit` (`IDproduit`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `se_compose_prepa`
--

LOCK TABLES `se_compose_prepa` WRITE;
/*!40000 ALTER TABLE `se_compose_prepa` DISABLE KEYS */;
INSERT INTO `se_compose_prepa` VALUES (1,36,44,10,32,4),(1,5,18,10,32,21),(1,32,38,20,33,16),(3,27,42,6,37,14),(2,16,20,5,39,5),(2,15,19,10,39,20),(1,1,1,2,40,10),(1,40,50,6,40,15),(3,11,15,2,43,6),(1,5,10,15,43,11),(3,5,10,5,43,12),(2,19,27,15,43,17),(3,3,7,10,45,18),(1,9,13,5,46,9),(1,5,9,10,47,1),(2,5,9,3,47,2),(1,19,27,5,47,18),(2,5,9,12,47,19),(1,6,10,15,49,7),(3,6,10,15,49,8),(2,15,19,10,53,9),(1,13,26,5,53,14),(3,15,19,2,53,16),(1,24,32,5,54,2),(1,24,32,15,54,19),(3,21,25,15,55,8),(3,15,19,10,56,5),(2,34,40,3,57,10),(2,1,1,5,58,4),(2,1,22,15,58,21),(3,2,8,15,59,12),(2,5,20,20,60,11),(4,2,3,10,62,3),(3,36,44,2,63,7),(1,24,38,20,64,17),(2,10,30,15,64,18),(3,31,37,3,72,6),(3,3,5,20,73,8),(3,3,5,3,73,16),(1,5,17,10,76,17),(2,29,33,15,78,9),(1,7,11,5,79,10),(1,15,30,10,79,15),(2,14,18,12,80,5),(3,2,7,20,80,12),(2,6,10,15,80,20),(1,10,14,10,81,2),(2,4,5,50,81,3),(3,2,30,10,81,11),(3,2,10,2,81,14),(1,10,14,20,81,19),(2,10,20,5,84,15),(1,35,43,10,85,4),(1,5,40,2,85,21),(2,3,7,5,86,1),(3,24,32,12,87,20),(2,34,38,3,91,7),(2,11,25,20,91,18);
/*!40000 ALTER TABLE `se_compose_prepa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-07 10:05:22
