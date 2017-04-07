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
-- Table structure for table `fournit`
--

DROP TABLE IF EXISTS `fournit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fournit` (
  `IDFournisseur` int(11) NOT NULL,
  `IDproduit` int(11) NOT NULL,
  PRIMARY KEY (`IDFournisseur`,`IDproduit`),
  KEY `FK_fournit_IDproduit` (`IDproduit`),
  CONSTRAINT `FK_fournit_IDFournisseur` FOREIGN KEY (`IDFournisseur`) REFERENCES `Fournisseur` (`IDFournisseur`),
  CONSTRAINT `FK_fournit_IDproduit` FOREIGN KEY (`IDproduit`) REFERENCES `Produit` (`IDproduit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fournit`
--

LOCK TABLES `fournit` WRITE;
/*!40000 ALTER TABLE `fournit` DISABLE KEYS */;
INSERT INTO `fournit` VALUES (1,30),(2,30),(1,31),(4,32),(4,33),(4,34),(3,35),(2,36),(2,37),(3,38),(1,39),(3,39),(4,39),(4,40),(1,41),(3,42),(2,43),(4,44),(2,45),(3,46),(4,47),(1,48),(1,49),(4,50),(1,51),(2,51),(3,51),(3,52),(3,53),(2,54),(4,55),(2,56),(2,57),(2,58),(1,59),(3,60),(1,61),(2,62),(3,63),(2,64),(1,65),(1,66),(3,67),(2,68),(1,69),(3,70),(4,71),(3,72),(2,73),(4,74),(1,75),(4,76),(1,77),(1,78),(2,79),(3,80),(3,81),(4,82),(1,83),(2,84),(2,85),(3,86),(1,87),(1,88),(1,89),(3,90),(2,91),(2,92),(3,93),(2,94),(2,95),(4,96),(1,97),(2,98),(1,99);
/*!40000 ALTER TABLE `fournit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-07 10:05:28
