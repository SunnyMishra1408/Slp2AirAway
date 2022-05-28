-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: sunnydb
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `flights`
--

DROP TABLE IF EXISTS `flights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flights` (
  `flight_id` int NOT NULL,
  `flight_name` varchar(45) NOT NULL,
  `source` varchar(45) NOT NULL,
  `destination` varchar(45) NOT NULL,
  `day` varchar(45) NOT NULL,
  `price` int NOT NULL,
  PRIMARY KEY (`flight_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flights`
--

LOCK TABLES `flights` WRITE;
/*!40000 ALTER TABLE `flights` DISABLE KEYS */;
INSERT INTO `flights` VALUES (54006,'USA_to_IND_eco','IND','USA','Saturday',10000),(55001,'USA_to_IND_one','USA','IND','Sunday',10000),(55002,'IND_to_USA_one','IND','USA','Sunday',10000),(57001,'USA_to_UK_two','USA','UK','Friday',10000),(57002,'UK_to_USA_two','UK','USA','Friday',10000),(57003,'UK_to_IND_two','UK','IND','Sunday',90000),(57004,'IND_to_UK_two','IND','UK','Sunday',90000),(57005,'UK_to_USA_one','UK','USA','Saturday',10000),(57008,'IND_to_UK_three','IND','UK','Wednesday',110000),(57009,'UK_to_IND_three','UK','IND','Wednesday',110000),(57011,'IND_to_UK_one','IND','UK','Tuesday',90000),(57012,'UK_to_IND_one','UK','IND','Tuesday',90000),(57014,'USA_to_UK_one','USA','UK','Saturday',10000),(57018,'IND_to_UK_two','IND','UK','Monday',110000),(57019,'UK_to_IND_two','UK','IND','Monday',110000),(58001,'USA_to_IND_three','USA','IND','Thursday',10000),(58002,'IND_to_USA_three','IND','USA','Thursday',10000),(58006,'USA_to_IND_two','USA','IND','Saturday',10000),(58007,'IND_to_USA_two','IND','USA','Saturday',10000),(59006,'USA_to_IND_two','USA','IND','Saturday',10000);
/*!40000 ALTER TABLE `flights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'sunnydb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-28 10:53:35
