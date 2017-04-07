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
-- Table structure for table `contient`
--

DROP TABLE IF EXISTS `contient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contient` (
  `QuantiteCommande` int(11) DEFAULT NULL,
  `FraicheurVoulu` int(11) DEFAULT NULL,
  `IDCommande` int(11) NOT NULL,
  `IDproduit` int(11) NOT NULL,
  `IDrecipient` int(11) NOT NULL,
  PRIMARY KEY (`IDCommande`,`IDproduit`,`IDrecipient`),
  KEY `FK_contient_IDproduit` (`IDproduit`),
  KEY `FK_contient_IDrecipient` (`IDrecipient`),
  CONSTRAINT `FK_contient_IDCommande` FOREIGN KEY (`IDCommande`) REFERENCES `Commande` (`IDCommande`),
  CONSTRAINT `FK_contient_IDproduit` FOREIGN KEY (`IDproduit`) REFERENCES `Produit` (`IDproduit`),
  CONSTRAINT `FK_contient_IDrecipient` FOREIGN KEY (`IDrecipient`) REFERENCES `Recipient` (`IDrecipient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contient`
--

LOCK TABLES `contient` WRITE;
/*!40000 ALTER TABLE `contient` DISABLE KEYS */;
INSERT INTO `contient` VALUES (3,0,1,16,2),(2,5,1,48,1),(5,0,1,50,1),(1,0,2,12,2),(10,6,2,35,1),(2,0,3,3,1),(5,0,4,39,3),(5,0,5,8,1),(2,0,5,17,3),(20,0,6,31,1);
/*!40000 ALTER TABLE `contient` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-07 10:05:31
