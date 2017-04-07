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
-- Table structure for table `Produit`
--

DROP TABLE IF EXISTS `Produit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Produit` (
  `IDproduit` int(11) NOT NULL AUTO_INCREMENT,
  `NomProduit` varchar(255) DEFAULT NULL,
  `Prix` float DEFAULT NULL,
  PRIMARY KEY (`IDproduit`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Produit`
--

LOCK TABLES `Produit` WRITE;
/*!40000 ALTER TABLE `Produit` DISABLE KEYS */;
INSERT INTO `Produit` VALUES (1,'Onguent de cicatrisation',170),(2,'Onguent de lévitation',220),(3,'Onguent de soins',240),(4,'Onguent d\'endurance',150),(5,'Onguent de perception',220),(6,'Onguent d\'invisibilité',240),(7,'Onguent d\'agilité',260),(8,'Onguent de saut',220),(9,'Onguent bridgestone',180),(10,'Onguent laqueuille',130),(11,'Huile de bénédiction d\'arme',290),(12,'Huile de gourdin magique',380),(14,'Potion d\'aide',260),(15,'Potion de flou',140),(16,'Potion de grâce féline',210),(17,'Potion de lévitation',190),(18,'Potion de protection contre les projectiles',330),(19,'Potion de ruse du renard',240),(20,'Potion de soins légers',280),(21,'Potion d\'endurance de l\'ours',160),(30,'Aigue-marine',29),(31,'Alexandrite',15),(32,'Azurite',18),(33,'Chrysobéryl',10),(34,'Grenat rouge',36),(35,'Grenat violet',28),(36,'Irtios',14),(37,'Ivoire',6),(38,'Lapis-Lazuli',5),(39,'Néphrite',9),(40,'Orprase',6),(41,'Péridot',24),(42,'Perle dorée',34),(43,'Perle noire',35),(44,'Pierre de lune',37),(45,'Quartz bleu',40),(46,'Sardonyx',27),(47,'Spinelle vert sombre',24),(48,'Spodumène',9),(49,'Topaze jaune d\'or',31),(50,'Tourmaline blanche',16),(51,'Zircon',31),(52,'Amulette d\'armure naturelle',3),(53,'Anneau du bélier',31),(54,'Baguette de sagesse du hibou',9),(55,'Bottes de sept lieues',18),(56,'Écu en acier',3),(57,'Élixir de nage',12),(58,'Épée bâtarde',26),(59,'Épée courte',21),(60,'Huile de ténèbres',10),(61,'Masse d\'armes lourde',26),(62,'Onguent d\'intemporalité',30),(63,'Parchemin divin',5),(64,'Parchemin profane',11),(65,'meche',16),(66,'herbe',14),(67,'baton',11),(68,'trousse',17),(69,'crayon',34),(70,'papier',34),(71,'Urgrosh nain',34),(72,'Antidote',24),(73,'Arbalète légère de maître',21),(74,'Arc court de maître',8),(75,'Armure à plaques',9),(76,'Armure de cuir cloutée de maître',33),(77,'Bâtonnet(s) fumigène(s)',20),(78,'Cadenas simple',17),(79,'Carreaux',35),(80,'Chemise de maille',37),(81,'Cimeterre de maître',8),(82,'Eau bénite',22),(83,'Ecu en acier de maître',6),(84,'Ecu en ébénite',12),(85,'Epée longue de maître',26),(86,'Gourdin de maître',32),(87,'Grande hache de maître',20),(88,'Hache de guerre naine de maître',2),(89,'Hallebarde de maître',16),(90,'Harnois',34),(91,'Menottes de qualité suppérieure',31),(92,'Pic de guerre léger de maître',18),(93,'Pierre(s) à tonnerre',5),(94,'Rapière de maître',25),(95,'Rondache en ébénite',8),(96,'Serpe de maître',8),(97,'Elixir secret',8),(98,'Poudre secrète',27),(99,'Minéral secret',18),(102,'Pikachu',100);
/*!40000 ALTER TABLE `Produit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-07 10:05:21
