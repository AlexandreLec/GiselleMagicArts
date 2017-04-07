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
-- Table structure for table `Personne`
--

DROP TABLE IF EXISTS `Personne`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Personne` (
  `IDPersonne` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` char(25) NOT NULL,
  `Prenom` char(25) NOT NULL,
  `Adresse` varchar(25) NOT NULL,
  PRIMARY KEY (`IDPersonne`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Personne`
--

LOCK TABLES `Personne` WRITE;
/*!40000 ALTER TABLE `Personne` DISABLE KEYS */;
INSERT INTO `Personne` VALUES (1,'Arnol','Maxence','17 Rue Arnol'),(2,'Boogaerts','Paul','28 Rue Boogaerts'),(3,'Caron','Alexis','13 Rue Caron'),(4,'Descamps','Anthony','6 Rue Descamps'),(5,'Fritsch','Florian','16 Rue Fritsch'),(6,'Geeraert','Pierre','8 Rue Geeraert'),(7,'Hollebecq','Maxime','1 Rue Hollebecq'),(8,'Hoyez','Alexis','26 Rue Hoyez'),(9,'Klein','Aurélien','12 Rue Klein'),(10,'Kruger','Maxence','19 Rue Kruger'),(11,'Lecomte','Alexandre','2 Rue Lecomte'),(12,'Leleux','Charles','15 Rue Leleux'),(13,'Lhomme','Jean-Francois','7 Rue Lhomme'),(14,'Libessart','Dimitri','20 Rue Libessart'),(15,'Naessens','Valentin','10 Rue Naessens'),(16,'Podevin','Jean-Clément','3 Rue Podevin'),(17,'Poly','Thibault','4 Rue Poly'),(18,'Rigaut','Arnaud','23 Rue Rigaut'),(19,'Vancamp','Rémy','5 Rue Vancamp'),(20,'Panoramix','Panoramix','12 rue du cif'),(21,'Gandalf','Gandalf','15 rue du moulin'),(22,'Merlin','Enchanteur','56 boulevard arthur'),(23,'Severus','Rogue','Cabane');
/*!40000 ALTER TABLE `Personne` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-07 10:05:33
