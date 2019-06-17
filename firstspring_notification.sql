-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: firstspring
-- ------------------------------------------------------
-- Server version	8.0.13

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
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `notification` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ntype` varchar(20) NOT NULL,
  `venue` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL,
  `ndate` varchar(15) NOT NULL,
  `nmessage` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,'Hill Climbing','Kullu Road,Manali','200 per person','22 April 2018','Hello Everyone,Adventure rats organizes Hill Climbing event near by Manali.So everyone hurry up!'),(2,'Moter Biking','Puarani jhil ke pas ,Shimla','100 per person','25 April 2018','Hello Everyone,Adventure rats organizes Moter Biking event near by Shimla.So everyone hurry up!'),(3,'River Rafting','Shimla road,Kullu','150 per person','29 April 2018','Hello Everyone,Adventure rats organizes River Rafting event near by Kullu.So everyone hurry up!'),(4,'H','Shimla','3000','28 Nov 2018','Helllooooo'),(5,'','','','',''),(6,'','','','',''),(7,'','','','',''),(8,'hh','hh','hh','hh','hhhhh'),(9,'','','','',''),(10,'','','','',''),(11,'','','','',''),(12,'','','','',''),(13,'','','','',''),(14,'River','Manali','200','29 Jun 2018','Hello Manali from Mumbai'),(15,'','','','',''),(16,'','','','',''),(17,'v','v','v','v','vvvvv'),(18,'bb','bbb','bbbb','bbbbb','bbbbb'),(19,'bb','bbb','bbbb','bbbbb','bbbbb'),(20,'nnn','nnn','nnn','n',''),(21,'nnn','nnn','nnn','n',''),(22,'jj','','','',''),(23,'hdhd','hd','','',''),(24,'Water Rafting','West Shimla','4000','5 Jun 2018','hello Every one!'),(25,'Water Rafting','','','',''),(26,'KK','KK','KK','KK','KKKKKKK');
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-17 10:18:41
