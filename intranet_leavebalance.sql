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
-- Table structure for table `leavebalance`
--

DROP TABLE IF EXISTS `leavebalance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `leavebalance` (
  `leavebal_id` bigint(40) NOT NULL AUTO_INCREMENT,
  `leave_type_id` int(10) DEFAULT NULL,
  `balance_leave` int(10) DEFAULT NULL,
  `apply_leave_id` bigint(5) DEFAULT NULL,
  `emp_id` bigint(30) DEFAULT NULL,
  `loss_day` int(10) NOT NULL DEFAULT '0',
  `month_count` int(10) DEFAULT '0',
  `month_date` date DEFAULT NULL,
  PRIMARY KEY (`leavebal_id`),
  KEY `leaves_ibfk_4_idx` (`emp_id`),
  KEY `fk2` (`apply_leave_id`),
  CONSTRAINT `fk1` FOREIGN KEY (`emp_id`) REFERENCES `employees` (`emp_id`),
  CONSTRAINT `fk2` FOREIGN KEY (`apply_leave_id`) REFERENCES `leavetype` (`leave_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leavebalance`
--

LOCK TABLES `leavebalance` WRITE;
/*!40000 ALTER TABLE `leavebalance` DISABLE KEYS */;
INSERT INTO `leavebalance` VALUES (1,3,1,1,1,0,0,NULL),(2,4,1,1,1,0,0,NULL),(3,4,1,1,1,0,0,NULL),(4,NULL,NULL,NULL,NULL,0,0,NULL);
/*!40000 ALTER TABLE `leavebalance` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-17 10:18:53
