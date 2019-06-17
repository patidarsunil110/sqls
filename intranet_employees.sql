-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: intranet
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
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employees` (
  `emp_id` bigint(30) NOT NULL AUTO_INCREMENT,
  `emp_firstname` varchar(50) NOT NULL,
  `emp_lastname` varchar(45) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `department_id` int(10) NOT NULL,
  `manager_id` int(10) NOT NULL,
  `dateofjoining` date DEFAULT NULL,
  `role_id` int(10) DEFAULT NULL,
  `team_id` bigint(10) DEFAULT NULL,
  `desgn_id` int(5) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `team_id` (`team_id`),
  KEY `emprole_id` (`desgn_id`),
  KEY `manager_id` (`manager_id`),
  KEY `department_id` (`department_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`manager_id`) REFERENCES `manager` (`manager_id`),
  CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`),
  CONSTRAINT `employees_ibfk_3` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  CONSTRAINT `employees_ibfk_4` FOREIGN KEY (`team_id`) REFERENCES `team` (`team_id`),
  CONSTRAINT `employees_ibfk_5` FOREIGN KEY (`desgn_id`) REFERENCES `designation` (`desgn_id`),
  CONSTRAINT `employees_ibfk_6` FOREIGN KEY (`manager_id`) REFERENCES `manager` (`manager_id`),
  CONSTRAINT `employees_ibfk_7` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`),
  CONSTRAINT `employees_ibfk_8` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Sunil','test',8989944001,'sunil@t','123',1,1,'2019-06-05',1,1,1,NULL),(2,'Deepak','test',211111,'test1@t','123',1,1,'2019-01-15',1,1,2,NULL),(3,'Ameya','test',2121545488,'test2@t','123',1,1,'2018-09-21',1,1,3,NULL),(4,'Tushar','test',54545454,'trest3@t','123',1,1,'2007-07-07',1,1,4,NULL),(5,'Mithila','test',54215421,'test4@t','123',1,1,'2019-08-16',1,1,5,NULL),(6,'Manish','test',784578554,'manish@t','123',1,2,'2010-12-10',2,1,6,NULL),(9,'Aashish','test',15115444,'ashish@t','123',1,3,'2009-02-01',2,1,9,NULL),(10,'G Srikanth','test',5464166,'srikanth@t','123',1,3,'2018-08-25',2,1,7,NULL),(11,'M ramasamy','test',121211221,'rama@t','123',1,4,'2010-07-22',2,1,9,NULL),(12,'Moni Abram','test',154455,'admin@t','123',1,6,'2009-05-15',3,1,8,NULL),(13,'Praveen','test',1111,'praveen@t','123',1,6,'2008-04-12',2,1,10,NULL),(14,'Murli Mohan','test',1254565,'md@t','123',1,6,'2012-12-12',2,1,11,NULL);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-17 10:18:51
