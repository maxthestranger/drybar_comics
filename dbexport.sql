-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: drybar_comics
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'test test','test@gmail.com','test','this is a test message','2021-12-15 20:37:06','2021-12-15 20:37:06'),(2,'Max The Stranger','maxthestranger@gmail.com','festtickets','I wanted to enquire about ticket sales, am sure if they are still available','2021-12-15 20:49:21','2021-12-15 20:49:21');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `imgUrl` varchar(255) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `description` text,
  `live` tinyint(1) DEFAULT NULL,
  `year` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'imperfect messanger','1.jpg','May 5, 2000','The Comic Talks British Racism, White Allies and \'Good Cops\'',0,'2000','2021-12-15 13:19:53','2021-12-15 13:19:53'),(2,'netflix is a joke','2.jpg','Dec 25, 2021','Netflix Is A Joke Fest is the first ever Virtual Netflix Comedy Festival, We\'re pulling out all the stops and taking over LA with all your ...',1,'2021','2021-12-15 13:24:11','2021-12-15 13:24:11'),(3,'more laugh fest','5.jpg','Dec 20, 2019',NULL,0,'2019','2021-12-15 23:32:32','2021-12-15 23:32:32'),(4,'laugh festivals','6.jpg','August 16, 2019',NULL,0,'2019','2021-12-15 23:32:55','2021-12-15 23:32:55'),(5,'hot seat','7.jpg','June 10, 2019',NULL,0,'2019','2021-12-15 23:33:36','2021-12-15 23:33:36');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lineups`
--

DROP TABLE IF EXISTS `lineups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lineups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `imgUrl` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `event_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_id` (`event_id`),
  CONSTRAINT `lineups_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lineups`
--

LOCK TABLES `lineups` WRITE;
/*!40000 ALTER TABLE `lineups` DISABLE KEYS */;
INSERT INTO `lineups` VALUES (1,'trevoh noah','1.jpg','South Africa','2021-12-15 14:03:04','2021-12-15 14:03:04',2),(2,'Ali Wong','2.jpg','USA','2021-12-15 22:12:57','2021-12-15 22:12:57',2),(3,'Fluffy David','3.jpg','Mexico','2021-12-15 22:13:20','2021-12-15 22:13:20',2),(4,'Jimmy O Yeng','4.jpg','HongKong','2021-12-15 22:13:49','2021-12-15 22:13:49',2),(5,'trevoh noah','1.jpg','South Africa','2021-12-15 23:35:04','2021-12-15 23:35:04',5),(6,'churchil will','2.jpg','Norway','2021-12-15 23:35:34','2021-12-15 23:35:34',5),(7,'stomzy okoye','3.jpg','England','2021-12-15 23:35:53','2021-12-15 23:35:53',5),(8,'mofa','3.jpg','England','2021-12-15 23:36:45','2021-12-15 23:36:45',3),(9,'rudra','4.jpg','Wales','2021-12-15 23:37:03','2021-12-15 23:37:03',3),(10,'killmall','4.jpg','Wales','2021-12-15 23:37:16','2021-12-15 23:37:16',4),(11,'rafiki','4.jpg','London','2021-12-15 23:37:29','2021-12-15 23:37:29',4);
/*!40000 ALTER TABLE `lineups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stages`
--

DROP TABLE IF EXISTS `stages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `imgUrl` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `event_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_id` (`event_id`),
  CONSTRAINT `stages_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stages`
--

LOCK TABLES `stages` WRITE;
/*!40000 ALTER TABLE `stages` DISABLE KEYS */;
INSERT INTO `stages` VALUES (1,'comedy central','1.jpg','Comedy Central is the leading brand for all things funny, delivering the best stand-up specials, sketch shows, adult animation, late-night programming','2021-12-15 14:05:43','2021-12-15 14:05:43',2),(2,'popcorn cafe','2.jpg','popcorn effect, a stage to showcase any talent beside comedy, so as to wow the audience while you are having fun','2021-12-15 22:07:53','2021-12-15 22:07:53',2);
/*!40000 ALTER TABLE `stages` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-16  2:41:22
