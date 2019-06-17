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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(40) NOT NULL,
  `role` varchar(10) DEFAULT 'user',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'VIJESH','DHAKAD','5609','5609','9993041202','vjsh.dhakad@gmail.com','Admin'),(54,'Pintu','Sahu','pintu','pintu','975463511','pintu.sahu@yahoo.com','user'),(55,'Parveen','Patidar','praveen','praveen','8989898989','praveen.patidar@gmail.com','user'),(58,'Mahesh','Patidar','mahesh','mahesh','7878778788','mahesh@gmail.com','user'),(61,'Vishnu','Patidar','vishnu','vishnu','8776632622','vishnu@gmail','user'),(64,'Avinash','Shinde','avinash','avinash','8898778877','avinash@gmail.com','user'),(75,'Sunil','Patidar','sunil@94','sunil@94','9407004073','patidarsunil110@gmail.com','user'),(76,'Rishabh','Soni','rishu','rishu','7777788888','rishu.soni@gmail.com','user'),(77,'Mr.','Admin','login@admin','login@admin','9981180227','admin@adventure.com','Admin'),(78,'Sunil','Patidar','12345','12345','5656565465','sunil.patidar@yahoo.com','user'),(80,'Harsh','Singh','harsh','harsh','9879794469','harsh@gmail.com','user'),(81,'Aashish','Sinha','aashish','aashish','3425664474','aashish@gmail.com','user'),(84,'Sanjay','Malviya','sanjay','sanjay','9171817815','sanjay@gmail.com','user'),(93,'SUNIL','PATIDAR','sunil','sunil','898899881','sunil@gmail.com','user'),(96,'1','1','1','1','6541','1@1,bjbs','user'),(97,'1111','1111','11','11','1111','1111@1111,1111@1111','user'),(98,'22','22','22','22','652892098','22@22,903290','user'),(99,'565451','453','qq','qq','765687790','qq@qq,jhcwhh','user'),(100,'1234','1234','1234','1234','1234','1@1.com','user'),(101,'98','98','98','98','98','98@98,98','user'),(102,'Suresh','PATIDAR','s','s','75578','suresh@gmail.com,sm,skj','user'),(103,'Suresh','Patidar1','s','s','8755757','suresh.patidar1@gmail.com,skjsugi','user'),(104,'SUNIL','123456','123456','123456','12345678','2@gmail.com,','user'),(105,'12345678','PATIDAR','1','1','6754646','patidar1@gmail.com,','user'),(106,'Suresh','PATIDAR','1','1','11','s.p@gmail.com,','user'),(107,'Vijesh','Dhakad','','','','','user'),(108,'Yogesh','kasaniya','yogesh','yogesh','7974881932','ygs@gmail.com','user');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
