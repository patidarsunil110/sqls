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
-- Table structure for table `vijesh`
--

DROP TABLE IF EXISTS `vijesh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vijesh` (
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(20) DEFAULT NULL,
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `imgid` int(10) DEFAULT NULL,
  `imgsid` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `address` (`address`),
  KEY `imgid` (`imgid`),
  KEY `imgsid` (`imgsid`),
  CONSTRAINT `vijesh_ibfk_1` FOREIGN KEY (`imgid`) REFERENCES `imgs` (`id`),
  CONSTRAINT `vijesh_ibfk_2` FOREIGN KEY (`imgsid`) REFERENCES `images` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vijesh`
--

LOCK TABLES `vijesh` WRITE;
/*!40000 ALTER TABLE `vijesh` DISABLE KEYS */;
INSERT INTO `vijesh` VALUES ('Vijesh','','','',NULL,1,NULL,NULL),('sunil','','','',NULL,2,NULL,NULL),('Viram','','','',NULL,3,NULL,NULL),('Bilal','','','',NULL,4,NULL,NULL),('Adish','','','',NULL,5,NULL,NULL),('Anil','','','',NULL,6,NULL,NULL),('','','9993041202','vjsh.dhakad@gmail.com',NULL,10,NULL,NULL),('','','87126','gsdhd@kddh',NULL,11,NULL,NULL),('','','7828','vvv@vv',NULL,12,NULL,NULL),('','','7772342778','vvv@vv.com',NULL,13,NULL,NULL),('','','87667','vj@vj',NULL,14,NULL,NULL),('','','987979','vjsh.dhakad@yahoo.in',NULL,15,NULL,NULL),('','','34256','vjsh.dhakad@yahoo.co.in',NULL,16,NULL,NULL);
/*!40000 ALTER TABLE `vijesh` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-17 10:18:43
