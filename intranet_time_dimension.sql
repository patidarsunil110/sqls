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
-- Table structure for table `time_dimension`
--

DROP TABLE IF EXISTS `time_dimension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `time_dimension` (
  `id` int(11) NOT NULL,
  `db_date` date NOT NULL,
  `day` int(11) NOT NULL,
  `day_name` varchar(9) NOT NULL,
  `month_name` varchar(9) NOT NULL,
  `holiday_flag` char(1) DEFAULT 'f',
  `weekend_flag` char(1) DEFAULT 'f',
  `event` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `td_ymd_idx` (`day`),
  UNIQUE KEY `td_dbdate_idx` (`db_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_dimension`
--

LOCK TABLES `time_dimension` WRITE;
/*!40000 ALTER TABLE `time_dimension` DISABLE KEYS */;
INSERT INTO `time_dimension` VALUES (1,'2019-01-01',1,'Tuesday','January','f','f',NULL),(2,'2019-01-02',2,'Wednesday','January','f','f',NULL),(3,'2019-01-03',3,'Thursday','January','f','f',NULL),(4,'2019-01-04',4,'Friday','January','f','f',NULL),(5,'2019-01-05',5,'Saturday','January','f','t',NULL),(6,'2019-01-06',6,'Sunday','January','f','t',NULL),(7,'2019-01-07',7,'Monday','January','f','f',NULL),(8,'2019-01-08',8,'Tuesday','January','f','f',NULL),(9,'2019-01-09',9,'Wednesday','January','f','f',NULL),(10,'2019-01-10',10,'Thursday','January','f','f',NULL),(11,'2019-01-11',11,'Friday','January','f','f',NULL),(12,'2019-01-12',12,'Saturday','January','f','t',NULL),(13,'2019-01-13',13,'Sunday','January','f','t',NULL),(14,'2019-01-14',14,'Monday','January','f','f',NULL),(15,'2019-01-15',15,'Tuesday','January','f','f',NULL),(16,'2019-01-16',16,'Wednesday','January','f','f',NULL),(17,'2019-01-17',17,'Thursday','January','f','f',NULL),(18,'2019-01-18',18,'Friday','January','f','f',NULL),(19,'2019-01-19',19,'Saturday','January','f','t',NULL),(20,'2019-01-20',20,'Sunday','January','f','t',NULL),(21,'2019-01-21',21,'Monday','January','f','f',NULL),(22,'2019-01-22',22,'Tuesday','January','f','f',NULL),(23,'2019-01-23',23,'Wednesday','January','f','f',NULL),(24,'2019-01-24',24,'Thursday','January','f','f',NULL),(25,'2019-01-25',25,'Friday','January','f','f',NULL),(26,'2019-01-26',26,'Saturday','January','f','t',NULL),(27,'2019-01-27',27,'Sunday','January','f','t',NULL),(28,'2019-01-28',28,'Monday','January','f','f',NULL),(29,'2019-01-29',29,'Tuesday','January','f','f',NULL),(30,'2019-01-30',30,'Wednesday','January','f','f',NULL),(31,'2019-01-31',31,'Thursday','January','f','f',NULL);
/*!40000 ALTER TABLE `time_dimension` ENABLE KEYS */;
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
