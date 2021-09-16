-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `readbooks`
--

DROP TABLE IF EXISTS `readbooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `readbooks` (
  `bookId` int NOT NULL,
  `studentId` int NOT NULL,
  `returnDate` date DEFAULT NULL,
  `takenDate` date DEFAULT NULL,
  KEY `fk_readBooks_books1_idx` (`bookId`),
  KEY `fk_readBooks_students1_idx` (`studentId`),
  CONSTRAINT `fk_readBooks_books1` FOREIGN KEY (`bookId`) REFERENCES `books` (`bookId`),
  CONSTRAINT `fk_readBooks_students1` FOREIGN KEY (`studentId`) REFERENCES `students` (`studentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `readbooks`
--

LOCK TABLES `readbooks` WRITE;
/*!40000 ALTER TABLE `readbooks` DISABLE KEYS */;
INSERT INTO `readbooks` VALUES (1,3,'2020-12-27','2020-10-01'),(1,1,'2021-05-10','2021-03-05'),(2,3,'2020-12-27','2020-10-01'),(2,2,'2021-05-09','2021-02-01'),(2,1,'2021-08-25','2021-05-15'),(3,3,'2020-12-27','2020-10-01'),(3,2,'2021-05-09','2021-02-01'),(4,1,'2020-12-13','2020-10-15'),(4,4,NULL,'2021-02-03'),(5,3,'2021-08-20','2021-06-12'),(6,2,'2021-04-17','2021-01-29'),(6,4,'2021-05-28','2021-04-23'),(6,3,'2021-07-10','2021-06-10'),(7,3,'2021-03-19','2020-12-28'),(7,1,'2021-07-23','2021-04-09'),(8,3,'2021-04-01','2020-12-29'),(8,2,NULL,'2021-05-01'),(9,1,'2021-02-16','2020-11-18'),(9,3,'2021-08-26','2021-06-13'),(10,2,'2021-04-26','2020-10-19'),(10,3,'2021-10-15','2021-06-07');
/*!40000 ALTER TABLE `readbooks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-17  0:25:07
