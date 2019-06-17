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
-- Table structure for table `todayattendance`
--

DROP TABLE IF EXISTS `todayattendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `todayattendance` (
  `attendance_id` bigint(50) NOT NULL AUTO_INCREMENT,
  `day_name` varchar(10) DEFAULT NULL,
  `day_date` date DEFAULT NULL,
  `check_in` time DEFAULT NULL,
  `check_out` time DEFAULT NULL,
  `status` varchar(45) DEFAULT 'NA',
  `emp_id` bigint(30) NOT NULL,
  `leave_type_id` bigint(5) NOT NULL,
  `manager_id` int(10) DEFAULT NULL,
  `total_hours` time DEFAULT NULL,
  `apply_leave_id` bigint(5) DEFAULT NULL,
  `leavebal_id` bigint(40) DEFAULT NULL,
  `loss_day` int(10) DEFAULT '0',
  PRIMARY KEY (`attendance_id`),
  KEY `emp_id` (`emp_id`),
  KEY `manager_id` (`manager_id`),
  KEY `attendance_ibfk_2_idx` (`leave_type_id`),
  KEY `todayattendance_fk4_idx` (`leavebal_id`),
  KEY `todayattendance_fk5_idx` (`apply_leave_id`),
  CONSTRAINT `todayattendance_fk4` FOREIGN KEY (`leavebal_id`) REFERENCES `leavebalance` (`leavebal_id`),
  CONSTRAINT `todayattendance_fk5` FOREIGN KEY (`apply_leave_id`) REFERENCES `leavetype` (`leave_type_id`),
  CONSTRAINT `todayattendance_ibfk_1` FOREIGN KEY (`leave_type_id`) REFERENCES `employees` (`emp_id`),
  CONSTRAINT `todayattendance_ibfk_2` FOREIGN KEY (`leave_type_id`) REFERENCES `leavetype` (`leave_type_id`),
  CONSTRAINT `todayattendance_ibfk_3` FOREIGN KEY (`emp_id`) REFERENCES `employees` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todayattendance`
--

LOCK TABLES `todayattendance` WRITE;
/*!40000 ALTER TABLE `todayattendance` DISABLE KEYS */;
INSERT INTO `todayattendance` VALUES (1,'Monday','2019-04-01','10:00:00','00:00:00','On-Time',1,1,0,'00:00:00',NULL,NULL,0),(2,'Tuesday','2019-04-02','10:20:00','20:00:00','Late-in',1,1,0,'09:40:00',NULL,NULL,0),(3,'Wedsenday','2019-04-03','20:00:00','09:00:00','Late-in',1,1,0,'11:00:00',NULL,NULL,0),(4,'Thusday','2019-04-04','10:02:00','19:00:00','On-Time',1,1,0,'08:58:00',NULL,NULL,0),(5,'Friday','2019-04-05','10:00:00','18:00:00','On-Time',1,1,0,'08:00:00',NULL,NULL,0),(6,'Saturday','2019-04-06',NULL,NULL,'Holiday',1,5,0,NULL,NULL,NULL,0),(7,'Sunday','2019-04-07',NULL,NULL,'Holiday',1,5,0,NULL,NULL,NULL,0),(8,'Monday','2019-04-08',NULL,NULL,'Holiday',1,5,0,NULL,NULL,NULL,0),(9,'Tuesday','2019-04-09',NULL,NULL,'Absent',1,2,0,'00:00:00',NULL,NULL,1),(10,'wes','2019-05-25','10:00:00','18:00:00','On time',1,1,1,'00:00:00',NULL,NULL,0),(11,'thu','2019-05-26','10:00:00','22:00:00','On time',1,1,1,'12:00:00',NULL,NULL,0),(12,'friday','2019-05-27','10:00:00','23:00:00','On time',1,1,1,'13:00:00',NULL,NULL,0),(13,'saturday','2019-05-28','10:00:00','18:59:00','Not complete 9 hours',1,1,1,'08:59:00',NULL,NULL,0),(14,'sunday','2019-05-29','10:00:00','18:59:00','Not complete 9 hours',1,1,1,'08:59:00',NULL,NULL,0),(15,'monday','2019-05-30','00:00:00','00:00:00','Absent',1,2,1,'00:00:00',NULL,NULL,1),(16,'tuesday','2019-05-31','00:00:00','00:00:00','Absent',1,1,1,'00:00:00',NULL,NULL,1),(164,'2019-06-01',NULL,NULL,NULL,'NA',1,1,1,NULL,NULL,NULL,0),(165,NULL,'2019-06-01',NULL,NULL,'NA',1,1,1,NULL,NULL,NULL,0),(166,NULL,'2019-06-01',NULL,NULL,'NA',1,1,1,NULL,NULL,NULL,0),(167,NULL,'2019-06-02',NULL,NULL,'NA',1,1,1,NULL,NULL,NULL,0),(168,NULL,'2019-06-03',NULL,NULL,'NA',1,1,1,NULL,NULL,NULL,0),(169,NULL,'2019-06-04',NULL,NULL,'NA',1,1,1,NULL,NULL,NULL,0),(170,NULL,'2019-06-05',NULL,NULL,'NA',1,1,1,NULL,NULL,NULL,0),(171,NULL,'2019-06-06',NULL,NULL,'NA',1,1,1,NULL,NULL,NULL,0),(172,NULL,'2019-06-07',NULL,NULL,'NA',1,1,1,NULL,NULL,NULL,0),(173,NULL,'2019-06-08',NULL,NULL,'NA',1,1,1,NULL,NULL,NULL,0),(174,NULL,'2019-06-09',NULL,NULL,'NA',1,1,1,NULL,NULL,NULL,0),(175,NULL,'2019-06-10',NULL,NULL,'NA',1,1,1,NULL,NULL,NULL,0),(176,NULL,'2019-06-11',NULL,NULL,'NA',1,1,1,NULL,NULL,NULL,0),(177,NULL,'2019-06-12',NULL,NULL,'NA',1,1,1,NULL,NULL,NULL,0),(178,NULL,'2019-06-13',NULL,NULL,'NA',1,1,1,NULL,NULL,NULL,0),(179,NULL,'2019-06-14',NULL,NULL,'NA',1,1,1,NULL,NULL,NULL,0),(180,NULL,'2019-06-15',NULL,NULL,'NA',1,1,1,NULL,NULL,NULL,0),(181,NULL,'2019-06-16',NULL,NULL,'NA',1,1,1,NULL,NULL,NULL,0),(182,NULL,'2019-06-17',NULL,NULL,'NA',1,1,1,NULL,NULL,NULL,0),(183,NULL,'2019-06-18',NULL,NULL,'NA',1,1,1,NULL,NULL,NULL,0),(184,NULL,'2019-06-19',NULL,NULL,'NA',1,1,1,NULL,NULL,NULL,0),(185,NULL,'2019-06-20',NULL,NULL,'NA',1,1,1,NULL,NULL,NULL,0),(186,NULL,'2019-06-21',NULL,NULL,'NA',1,1,1,NULL,NULL,NULL,0),(187,NULL,'2019-06-22',NULL,NULL,'NA',1,1,1,NULL,NULL,NULL,0),(188,NULL,'2019-06-23',NULL,NULL,'NA',1,1,1,NULL,NULL,NULL,0),(189,NULL,'2019-06-24',NULL,NULL,'NA',1,1,1,NULL,NULL,NULL,0),(190,NULL,'2019-06-25',NULL,NULL,'NA',1,1,1,NULL,NULL,NULL,0),(191,NULL,'2019-06-26',NULL,NULL,'NA',1,1,1,NULL,NULL,NULL,0),(192,NULL,'2019-06-27',NULL,NULL,'NA',1,1,1,NULL,NULL,NULL,0),(193,NULL,'2019-06-28',NULL,NULL,'NA',1,1,1,NULL,NULL,NULL,0),(194,NULL,'2019-06-29',NULL,NULL,'NA',1,1,1,NULL,NULL,NULL,0),(195,NULL,'2019-06-30',NULL,NULL,'NA',1,1,1,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `todayattendance` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-17 10:18:47
