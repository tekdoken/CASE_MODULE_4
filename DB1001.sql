CREATE DATABASE  IF NOT EXISTS `case4` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `case4`;
-- MySQL dump 10.13  Distrib 8.0.27, for macos11 (x86_64)
--
-- Host: localhost    Database: case4
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `grade` int DEFAULT NULL,
  `active` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (1,'1A',1,_binary ''),(2,'2A',2,_binary ''),(3,'3A',3,_binary ''),(4,'5A',5,_binary ''),(5,'fff',4,_binary ''),(6,'5B',5,_binary ''),(7,'Lamar Goodwin',6,_binary ''),(8,'7B',7,_binary ''),(9,'hvi xinh',7,_binary ''),(10,'6G',6,_binary ''),(11,'hvi',4,_binary ''),(12,'Nike Burrow hvi xinh',5,_binary ''),(13,'hvi xinh',4,_binary ''),(14,'hvi xinh',6,_binary ''),(15,'hvi xinh qua',9,_binary ''),(16,'Nike Burrow hvi xinh',6,_binary ''),(17,'VI8',8,_binary ''),(18,'VI8',8,_binary ''),(19,'VI8',8,_binary ''),(20,'VI8',8,_binary ''),(21,'vi9',9,_binary ''),(22,'vi',10,_binary ''),(23,'oi troi oi',8,_binary ''),(24,'6G',6,_binary ''),(25,'6G',6,_binary ''),(26,'1B',1,_binary '');
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classes_teachers`
--

DROP TABLE IF EXISTS `classes_teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classes_teachers` (
  `clazz_id` bigint NOT NULL,
  `teachers_id` bigint NOT NULL,
  PRIMARY KEY (`clazz_id`,`teachers_id`),
  KEY `FKr6toxgbgl53nrgtuao82v832f` (`teachers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes_teachers`
--

LOCK TABLES `classes_teachers` WRITE;
/*!40000 ALTER TABLE `classes_teachers` DISABLE KEYS */;
INSERT INTO `classes_teachers` VALUES (1,1),(1,2),(2,2),(3,3),(4,1),(4,2),(5,1),(6,2),(9,1),(12,1),(12,2),(13,1),(14,1),(15,1),(15,2),(16,1),(16,2),(16,3),(17,4),(18,4),(20,3),(20,4),(21,2),(21,4),(22,1),(22,3),(22,4),(23,2),(23,3),(23,4),(24,4),(26,1),(26,2),(26,3);
/*!40000 ALTER TABLE `classes_teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parents`
--

DROP TABLE IF EXISTS `parents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parents` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKchh8tf8w072tapgqoijrahojk` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parents`
--

LOCK TABLES `parents` WRITE;
/*!40000 ALTER TABLE `parents` DISABLE KEYS */;
INSERT INTO `parents` VALUES (1,5),(2,6),(3,7),(4,NULL),(5,NULL),(6,NULL),(7,NULL),(8,NULL),(9,NULL),(10,NULL),(11,NULL),(12,NULL),(13,NULL),(14,NULL),(15,NULL),(16,NULL),(17,NULL),(18,NULL),(19,NULL),(20,NULL),(21,NULL),(22,NULL),(23,NULL),(24,NULL),(25,NULL),(26,NULL),(27,NULL),(28,NULL),(29,NULL),(30,NULL),(31,NULL),(32,NULL),(33,NULL),(34,NULL),(35,NULL),(36,NULL),(37,NULL),(38,NULL),(39,NULL),(40,NULL),(41,NULL),(42,NULL),(43,NULL),(44,NULL),(45,NULL),(46,NULL),(47,NULL),(48,NULL),(49,NULL),(50,NULL),(51,91),(52,NULL),(53,NULL),(54,NULL),(55,NULL),(56,NULL),(57,NULL),(58,NULL),(59,NULL),(60,NULL),(61,NULL),(62,NULL),(63,NULL),(64,NULL),(65,NULL),(66,NULL),(67,NULL),(68,NULL),(69,NULL),(70,NULL),(71,123),(72,125),(73,127),(74,129),(75,132),(76,134),(77,136),(78,138),(79,140);
/*!40000 ALTER TABLE `parents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ROLE_GUEST'),(2,'ROLE_STUDENT'),(3,'ROLE_PARENT'),(4,'ROLE_ADMIN'),(5,'ROLE_TEACHER');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scores`
--

DROP TABLE IF EXISTS `scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scores` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `score` double DEFAULT NULL,
  `student_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpmp9k9d20q6euqo2g35a00wyl` (`student_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scores`
--

LOCK TABLES `scores` WRITE;
/*!40000 ALTER TABLE `scores` DISABLE KEYS */;
INSERT INTO `scores` VALUES (1,'50p',6,1),(2,'50p',5,2),(3,'50p',6,3),(4,'15p',7,4),(5,'15p',8,1);
/*!40000 ALTER TABLE `scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `birthday` datetime DEFAULT NULL,
  `clazz_id` bigint DEFAULT NULL,
  `parent_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `active` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqe7kdrchal6w7vouc52qxnnvm` (`clazz_id`),
  KEY `FK7bbpphkk8f0aoav3iiih3mh4e` (`parent_id`),
  KEY `FKdt1cjx5ve5bdabmuuf3ibrwaq` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'2022-01-04 06:17:55',1,1,1,_binary ''),(3,'2022-05-04 06:18:33',2,3,3,_binary '\0'),(4,'2019-06-04 06:18:46',3,3,4,_binary '\0'),(42,'2021-01-04 06:18:20',1,2,2,_binary '\0'),(59,'2022-05-04 06:18:33',2,51,21,_binary '\0'),(64,'1998-09-09 00:00:00',1,71,124,_binary '\0'),(65,'1987-02-19 00:00:00',3,72,126,_binary '\0'),(66,'2022-04-19 00:00:00',2,73,128,_binary '\0'),(67,'1985-09-15 00:00:00',2,74,130,_binary ''),(68,'1985-09-15 00:00:00',2,74,131,_binary ''),(69,'1987-08-16 00:00:00',3,75,133,_binary ''),(70,'1971-05-08 00:00:00',1,76,135,_binary ''),(71,'1985-11-23 00:00:00',2,77,137,_binary ''),(72,'2000-04-12 00:00:00',4,78,139,_binary ''),(73,'1998-04-15 00:00:00',4,79,141,_binary '');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `active` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKb8dct7w2j1vl1r2bpstw5isc0` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (1,10,_binary ''),(2,11,_binary ''),(3,142,_binary ''),(4,143,_binary '');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers_classes`
--

DROP TABLE IF EXISTS `teachers_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers_classes` (
  `teacher_id` bigint NOT NULL,
  `classes_id` bigint NOT NULL,
  PRIMARY KEY (`teacher_id`,`classes_id`),
  KEY `FKscvu06cf9txbm21h361e06656` (`classes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers_classes`
--

LOCK TABLES `teachers_classes` WRITE;
/*!40000 ALTER TABLE `teachers_classes` DISABLE KEYS */;
INSERT INTO `teachers_classes` VALUES (1,1),(2,2),(3,1);
/*!40000 ALTER TABLE `teachers_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tuition_fee`
--

DROP TABLE IF EXISTS `tuition_fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tuition_fee` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fee` double DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `paid` bit(1) NOT NULL,
  `student_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8r2kba0ww40o1ks4ybdd04rrb` (`student_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tuition_fee`
--

LOCK TABLES `tuition_fee` WRITE;
/*!40000 ALTER TABLE `tuition_fee` DISABLE KEYS */;
INSERT INTO `tuition_fee` VALUES (1,2000,'012021',_binary '',1),(2,3000,'012021',_binary '',2),(3,4000,'012021',_binary '',3),(4,5000,'012021',_binary '',4),(5,5000,'090003',_binary '\0',1),(6,8000,'900000',_binary '\0',1),(7,909090,'122021',_binary '',26),(8,909090,'122021',_binary '\0',42),(9,909090,'122021',_binary '\0',64),(10,909090,'122021',_binary '\0',1),(11,909090,'122021',_binary '',2),(12,909090,'122021',_binary '',25),(13,909090,'122021',_binary '\0',70),(14,89999,'122020',_binary '\0',59),(15,89999,'122020',_binary '\0',66),(16,89999,'122020',_binary '',3),(17,89999,'122020',_binary '\0',67),(18,89999,'122020',_binary '\0',68),(19,89999,'122020',_binary '\0',71),(20,56000,'hphi thang 12',_binary '\0',59),(21,56000,'hphi thang 12',_binary '\0',66),(22,56000,'hphi thang 12',_binary '',3),(23,56000,'hphi thang 12',_binary '\0',67),(24,56000,'hphi thang 12',_binary '\0',68),(25,56000,'hphi thang 12',_binary '',71);
/*!40000 ALTER TABLE `tuition_fee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) DEFAULT 'https://www.google.com/url?sa=i&url=http%3A%2F%2Felda.vn%2Fcart&psig=AOvVaw3RgzqE9Xu04bUHQY1T6U5h&ust=1641525211485000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCMD9hZmUnPUCFQAAAAAdAAAAABAV',
  `enabled` bit(1) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','hvi 1','123','LOCAL','hvi1'),(2,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','hvi 2','123','LOCAL','hvi2'),(3,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','hvi3','123','LOCAL','hvi3'),(4,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','hvi4','123','LOCAL','hvi4'),(5,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','hallo','123','LOCAL','pr1'),(6,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','pr2','1','LOCAL','pr2'),(7,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','pr3','1','LOCAL','pr3'),(8,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','hvi 7','123','LOCAL','hvi7'),(9,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','hvi 7','123','LOCAL','hvi7'),(10,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','tc1','123','LOCAL','tc1'),(11,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','tc2','123','LOCAL','tc2'),(12,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','hvi 10','123','LOCAL','hvi10'),(13,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','TRINH LAN HUONG','$2a$10$n9On9AGZEDCsCWPjIfPBQ.P6tXLN28xn.3TRrBXczMklvsUYkpwzS','LOCAL','admin'),(14,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','hvi 12','$2a$10$BjjRy7JlCmB3wwNqaSaGQO5p6okqnWlU5mbHaMx9SM2IwcRHmRdYq','LOCAL','hvi12'),(15,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Lawrence Merrill','$2a$10$T3oaGHQc4/sesqtI9qRuVegkfHgOHRy0oQcmCopx5pbxBu9Z4U8Zu','LOCAL','LawrenceMerrill'),(16,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Britanney Lopez','$2a$10$IooTaqwQLVDuzxPmQG/4Se1bJNYIr87b7YQEwfBU3//s7QiYSKrCC','LOCAL','432324'),(17,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Lydia Orr','$2a$10$BpRU2sAoqKSethfPVQyVOuyMs47H5rmrUsHHpDyFbfnJduj4x584.','LOCAL','LydiaOrr'),(18,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Charissa Schmidt','$2a$10$BdIDhPY7Zw8hfooz2..zpu2FFi2YTCVCoJONF2IDilfCi/XgH4i9y','LOCAL','4433'),(19,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Marshall Petty','$2a$10$QyVNWTxNdeTjhM4BV4pXv.57qiljw1xvx3VQ9ZiP8NB2G1ynpDgUe','LOCAL','MarshallPetty'),(20,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Christian Carver','$2a$10$TVOtij1thXjBIkiK6Li5aOl.QSAfy9HkYPu2uuPaCWUuNE/FVf85O','LOCAL','3434354'),(21,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','hvi 13','$2a$10$cssWK3Uqsh7FuXFVafBr6u37v5iM9me9xJ.rdnf1LjyzOVjQXl4UG','LOCAL','hvi13'),(22,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','hvi 17','$2a$10$A7JNVBfPKMm2Wo/JZCOVEOfWEdrcc4CEFGQZ02rzbHw62jf4/1FIy','LOCAL','hvi17'),(23,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','hvi 18','$2a$10$83xNllUeC5NTdwvsgXwBv.rtsXOKlR0fWsd8l/iG2RMv6yTBCnfzW','LOCAL','hvi18'),(24,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Blaine Woodward','$2a$10$MuSy6qUSuTYdUaDE1hxHvu7tR8EQErZyfqEKbx0sPExRVgw9i43xe','LOCAL','BlaineWoodward'),(25,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Ivor Glenn','$2a$10$EWayLqqO8kSfSNPdTwy5H.uECAgL3IMmlEysIoZFV54dT46MWjgbW','LOCAL','23423'),(26,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Nolan Barnett','$2a$10$w3hm5nOzQE/wFuZdHR5WQOEUIDZhqH3wNn.Z/rKWGW.yTB9Z0xq0a','LOCAL','4355'),(27,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Wesley Jacobs','$2a$10$S0hrfQgRqHMLC6lIbJrdI.oB.4GF3zDnB.ms/mCy2o.511y84yyF6','LOCAL','WesleyJacobs'),(28,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Zorita Lloyd','$2a$10$CtCLt/RW7vynu1Fvh74oUOc5WPnkd.zE6.A4sqQfjW8Rvwp5rjIwW','LOCAL','ZoritaLloyd'),(29,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Beck Mitchell','$2a$10$5lHh2s63b7xy0fQ3CTYI1uHBVUjjj0KVHXrFSygkckW7mplHFtp6i','LOCAL','43434'),(30,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Darryl Wagner','$2a$10$BEPwNDfz4PK7LcrcQ0Ai6.KlfJJfm8Pnvjwul6fliy70prqWA1c32','LOCAL','45533'),(31,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Ursa Sargent','$2a$10$G/MzlvZO5TAP6sFxT3rnp.USwg5r2zZ57zCHYbhe1etA98pZhtf3.','LOCAL','UrsaSargent'),(32,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Wendy Levine','$2a$10$rrevnq6MbjwEEcvPL8d9bOqL246ncVpfMzE.XW71yEoJM25lLvVo.','LOCAL','WendyLevine'),(33,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Olympia Bruce','$2a$10$17lk2cM8Dez2nOi1E9hY2ebcjajeoqtVAvoVXrUS1BbV8vSima0oa','LOCAL','34243241'),(34,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Lacy Dunn','$2a$10$4AlLjspjXfm5pjuE5U6pSOw.ocwPmXW6dl/uWQNqbmk0MfSen.kuq','LOCAL','LacyDunn'),(35,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Angela Roman','$2a$10$.4ktWy6CJSo4az7vQNhVkefuxQ0D/gEbOL4/863S62UYrUgjsKqlS','LOCAL','345435'),(36,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Honorato Ward','$2a$10$WMs62Yx6Tmotc.WjYY8QfuLjVXEdeNIYQuUs9Ea6cZnqGqtXisUiO','LOCAL','HonoratoWard'),(37,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Adara Potter','$2a$10$fzW5YNFyLmkJzilFMSyZkukXKBJY.VI5q80/U6Q0L6ZibXDP4Owvu','LOCAL','43324'),(38,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Porter Payne','$2a$10$/g3mtmvXP4P0Y1yn8nfzBOia41Yw.NEuKJK.hmj9od/LHorE9Zc0i','LOCAL','PorterPayne'),(39,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Blair Klein','$2a$10$91.8LYTjRYC9v5Zgn7SMLe3iktb792epR1ZNesO8oaZ//uON7n1/C','LOCAL','433124'),(40,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','September Dickerson','$2a$10$40UIual1vmf3RsUl.7QSne2IWqfDed6wTN12rxDgP7cG8HzTgz3.i','LOCAL','SeptemberDickerson'),(41,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Sarah Sutton','$2a$10$4YGtT0ij1loaSAZbJRbq8.6wc2VNIhuGhEl1oEUe2Owoo8fDoOsqu','LOCAL','4321'),(42,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Ivory Lara','$2a$10$E20sjDbSVvec5.kh.awNked26qWodrRq0SjdIbVldbqMyoAF1tMNe','LOCAL','5656'),(43,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Branden Weeks','$2a$10$pEZ7GlLMxULb.A9VHdUoy.jj0s4GULWReToNH/mvXXGeDR/IlA5yG','LOCAL','BrandenWeeks'),(44,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Leila Calderon','$2a$10$sOJeT.6/NI5LXBjG58d0GOUbPP5hQvwClF9V/EjEGFnuF3wOBlcb2','LOCAL','6679'),(45,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Ryder Molina','$2a$10$4lr6RluHRrOy7nghMOv0ie/pU15qc9wP8K2433BxmfTsGL5taTWvO','LOCAL','RyderMolina'),(46,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Jeanette Porter','$2a$10$SMKNdUYz2.JHtJHkQiC9W.BVmKPDtbF9jYN4/99OFP.9mZJLtBYoy','LOCAL','JeanettePorter'),(47,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Lisandra Barrera','$2a$10$Vt6c4VWaV.ZdVvAlNTH9MuhXm09fMqyylGGuZE.UvoCj3nkxmGS2K','LOCAL','23234'),(48,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Kasimir Talley','$2a$10$WOSGVkf0uuk/9OAnd0/nYeiOefyG4sIf6ySp5cwgP7htjNFWPBl/K','LOCAL','KasimirTalley'),(49,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Mara Ashley','$2a$10$N12/UDTiP2nMBHa9jbBNkuSyurzEmv0NiYVgBqmIWOTuUivd/k0S.','LOCAL','7665'),(50,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Kevyn Ramos','$2a$10$DkkxodoUzIIqsN.QowtYo.dLurLY7p1U6pUvNFO5.PoVkfd2/GSLy','LOCAL','KevynRamos'),(51,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Lacey Shelton','$2a$10$LfngZ.zVMs/IHt64TeHfzew0wvvhEKgYofLZ0OUHOu4OqxboUd3.m','LOCAL','3322'),(52,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Barbara Strickland','$2a$10$h0P2n7Q.RFUIz7y4HVD56uhvrHuuAtBSNahVj25D4KKPvAcD0LVqO','LOCAL','0000'),(53,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Joshua Silva','$2a$10$R3psJb9bGRSQWiKKWrfovuIjSTMFL7HBU5sMHcQxdFTiNfI4go6i2','LOCAL','JoshuaSilva'),(54,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Gareth Cantrell','$2a$10$V3tAqRQzjQTJzXHJnQ3M7ukZvZWLtaR7/zZr7UiZ2vT9NX.qM4oo2','LOCAL','7777'),(55,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Tamara Ward','$2a$10$t9My3wzsTNQD82NWp0wILeY6XgmOUjYL7jxv2qLN2qrzrFEIPec/G','LOCAL','TamaraWard'),(56,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Wyatt Cohen','$2a$10$9ZJX3uedbn2mzh9a/jJkQ.5R3X2HwSW.7e/EK3U/vqUVxSpglLwOa','LOCAL','WyattCohen'),(57,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Sybil Floyd','$2a$10$kxAPwUZyNDIlAX6zjzRt5ewuTxD.7JTfchRMQcjgTAkf9WGWSrr4m','LOCAL','9999'),(58,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Jocelyn Chapman','$2a$10$.M.tehvy.cJi2fTJqFSsE.QX9UZRnFAccRrKZIdGZWujGWDb7P14O','LOCAL','cba'),(59,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Taylor Gentry','$2a$10$4TIftIs4MWS.VUYMWPPNRuKw86zsL5rFeC6386GK/7iMDbzG2SdEe','LOCAL','TaylorGentry'),(60,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Myles Daniels','$2a$10$7KFCy6AAv.9IXgo9WDvo4eJXzFLSoQAudPHZhgRe7aQ9iYCsCejr2','LOCAL','MylesDaniels'),(61,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Keane Pena','$2a$10$5rDk0/nxPILVuQgcTVjSFuihgBxZ1PIT9zspuFRZHnevw3puPkQs2','LOCAL','0001'),(62,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Hu Morse','$2a$10$DaVAPk1b3mckaWwID.Edg.K5KGSBavvMirJLv8hVetSj9swilIx9K','LOCAL','4333'),(63,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Caryn Cochran','$2a$10$vsvWWsG6BwGBPv.b9Zs57OUj6pCHmCWj4m1cyQI6LfPsDnw2e10LO','LOCAL','333'),(64,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Salvador Castaneda','$2a$10$o07OonOQFeRJuXVLXak1H..6okd1Q5plLfF1GO549yOueWSGfm4Uy','LOCAL','salvadorcastaneda'),(65,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Whilemina Logan','$2a$10$Pme4195t4azl1es2YW6PDetFjjDqVvHu9qIbN0w.UgmMPAFhKZXdO','LOCAL','whileminalogan'),(66,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Grady Moran','$2a$10$HytpFdi9J.QHZPurZrRL/u.ODTblPiUKJISh2vP4Tkc0xOJ66.C4.','LOCAL','2222'),(67,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Anthony Frederick','$2a$10$GpOvD.2tKXhENU1QSryGKukXzM//g5kXUhqHQeSAjRxQ/x.jl63A2','LOCAL','+1 (714) 228-1231'),(68,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Keith Sykes','$2a$10$O24kgZNYTXh.j6C8dYo85.m0LBOsse03ypWdjoyKHxfJChmTLCgmu','LOCAL','keithsykes'),(69,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Brent Valentine','$2a$10$9xiCI.cYR5/20LGgCRnleuV9/mbSQfYya0JGD9GjNglkTrOMXGvFm','LOCAL','02000'),(70,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Octavia Pitts','$2a$10$5MwpPuoBTYWtenD3buowDeZg7uKXjkb6U8sh4U/rsH6W2QgYg6rFG','LOCAL','octaviapitts'),(71,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Wilma Franks','$2a$10$tYCU6h6ZxpQjHPBviQBlUOtZH2fjTFDx3UeVM2kiM3HIwgEJ/kZM.','LOCAL','89898'),(72,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Amelia Fuentes','$2a$10$5spmH6SiSxwBd9/NvYpjPu8CwhURaoJA8tHJQZESJ1qOCmRCtWSWK','LOCAL','ameliafuentes'),(73,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Minerva Daniel','$2a$10$dfLiAGrEEB3t6LnYAjnI8eC910xqS4qpdnh/TY1gQd.C4pnoN4k.a','LOCAL','77373'),(74,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Simone Arnold','$2a$10$G3F27/MYTHe1s4gS9WPGDOHaNyyIstqBTjhnUG8Iqf.dLO5Vmc8ne','LOCAL','simonearnold'),(75,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Cade Ramirez','123','LOCAL','caderamirez'),(76,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Demetria Hamilton','$2a$10$zuGx0gLd3v0Z2b6cyJhRLOF29iEjl0.OY.m1b5pDh3lA/qAIamo.C','LOCAL','99777'),(77,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Cade Ramirez','$2a$10$Ad48b2HMEO5ZflJ91cGbD.uQ0d67P.Id4X7wJjH8CHQu6Kp0r7XCK','LOCAL','caderamirez'),(78,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Hillary Baxter','123','LOCAL','hillarybaxter'),(79,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Hillary Baxter','$2a$10$ZUxNpK9qrmD12ygk84L6Ieb.ghPAZy8OJoNKTfzRFT236gn3/dCIu','LOCAL','hillarybaxter'),(80,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Paula Robertson','$2a$10$qfwlCvX24zCwnWZrnWxXSubaSV2npvIDdabU27pjQv5lO2lAWbkNm','LOCAL','11111'),(81,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Holly Fletcher','123','LOCAL','hollyfletcher'),(82,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Trevor Ayers','$2a$10$7eSHqbWUBIHfeCvhUIrBLem0CbX/P3vir6/qAQb5tckEDHaF0Tp2e','LOCAL','+1 (532) 149-3641'),(83,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Holly Fletcher','$2a$10$hXyznnt2DIu281SKWSRNzOZcD96.H6dnpvRTH/jCf.Acd83LTjetS','LOCAL','hollyfletcher'),(84,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Abbot Golden','123','LOCAL','abbotgolden'),(85,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Ifeoma Fry','$2a$10$vOk2bySJWCWuKzEwMzdTg.3GTYv9i0i9oUQ1YbuX0lYSmFAPo.VIG','LOCAL','0909'),(86,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Abbot Golden','$2a$10$oIzlQ6vKQ03MyFUJvNGifONlkCZ/uRyF3KZWhnU/kwJ6JqUuCdKUK','LOCAL','abbotgolden'),(87,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Heidi Avery','123','LOCAL','heidiavery'),(88,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Heidi Avery','$2a$10$GIG7N1ENbHSyzRGRMyRbGe3Paxm4Gbq982jqNAMQEn4r1gK.sa/0W','LOCAL','heidiavery'),(89,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Steel Rose','123','LOCAL','steelrose'),(90,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Yoshio Price','$2a$10$24hH/AyfdtSVhJYWZM6xh.7yvFmyJl8H49HRa2j.mIfvIyGKdLLGq','LOCAL','09000'),(91,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Steel Rose','$2a$10$Y7m6bObUwmffSPCwa64tqON1qCh6FbR2t/YOZc2yUpcsN862Yn1.6','LOCAL','steelrose'),(92,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Tara Estes','123','LOCAL','taraestes'),(93,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Eleanor Klein','$2a$10$5onlXiJf.0WEGa9B7oMJ6.okHLcI5MnhwYssPdFPnnngI.9.OkA36','LOCAL','00000000'),(94,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Tara Estes','$2a$10$EWWNbjVmlmdGmX8SH7HCR.umI088gMB6xgWifWU2OxDVn74i6fX4S','LOCAL','taraestes'),(95,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Russell Mayer','$2a$10$6p.ak5tjG/PEofeKMhFuA.NoKamE4Ns7r.BSYIPkjxRLMvBnytCq6','LOCAL','russellmayer'),(96,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Priscilla Carey','$2a$10$Qt1TtY5D5a16Tc3i5GHPgu4pVZmBSEcUe9.ROyzUS.yLmHjU.ad.2','LOCAL','90900'),(97,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Fletcher Meyers','$2a$10$/yJHe/bqbbx2LEWc.e3Iru1F06yFzT8gpfUMePYK8b4dN0AOHCCTa','LOCAL','fletchermeyers'),(98,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Katelyn Small','$2a$10$8NUYiaKm6CSdokFFDCsij.emDWJEhjVZhoFfeoa7tjoheRW8NBl9O','LOCAL','0909998'),(99,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Wynter Schneider','$2a$10$.bNNZJxtaJ5W8/78OgkPf.O6OBc4E5QlmJQ0B9JL1qXtjmoA0YzRy','LOCAL','wynterschneider'),(100,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Callum Sampson','$2a$10$72.euo4/cNI6EKbFzkVMquKW37XKSIkf/rIVnL.tnw7uZyHkY9lXK','LOCAL','999889'),(101,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Althea Carney','$2a$10$L2.gept/C8KUutkUZa71te48OIog/7T/LwFs807rLjaXUdbzM7v9a','LOCAL','altheacarney'),(102,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Thomas Sheppard','$2a$10$8AKb7KI3HigtCI5lQEYcTumtACfuRzfhAR43txOnwitllH76dK.me','LOCAL','8888888'),(103,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','John Moreno','$2a$10$PV.H9CS1TDTarpwW/a0fOOfjyM4IOOzALUQdpk6StGKoSPwnFqihm','LOCAL','900007'),(104,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Quail Mays','$2a$10$MfmyKnbCF8CYYii.X5WpGuCPtHzE3VdG9KVHsp5pX2paTOwcgMGNC','LOCAL','quailmays'),(105,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Elmo Blevins','$2a$10$9drqyySb6da3VLGmk3n8dO.7y4IqmFKS1PGJpNICXMy.yq4NnVX7W','LOCAL','elmoblevins'),(106,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Hyacinth Moses','$2a$10$eMt3IKggTcc6ZE5fGUVeoOp093D.ehox12KwNk31CiJ7WaAEWb8ba','LOCAL','9326'),(107,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Velma Kane','$2a$10$K6QiUPyOHvbpMhoF8rq8We1jX20bKQ3fpZvLZSDvaEzeKnyVWoMS.','LOCAL','velmakane'),(108,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Reed Larsen','$2a$10$g7TWDQUrmsyCxHudh8wFE.YCcnYR6pcJyGT65dW3F7hGsh8E6UfnC','LOCAL','89999'),(109,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Prescott Palmer','$2a$10$JvQJFAW.4CxsAvVHL2LZN.IAxzeJrbULwAP3V2KJfD74ACl58rCiS','LOCAL','99993003'),(110,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Yen Adams','$2a$10$2OTHRzwvOmgpv9X/HZzrIuoEqGQTCFj3Wz.R0IlnrYdbTzZkG3via','LOCAL','8604'),(111,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Nathan Spence','$2a$10$RhsWd7iw9SJB2MZwI7uX2OTq9urRVzj112PpB8Ay7ysWQA/JQV/ca','LOCAL','5863'),(112,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Sebastian Reilly','$2a$10$ux1JR80O908YyUYT1c8oc.7djZ41N.T4/WKBcTVwOQlW2ZeJ.Nify','LOCAL','sebastianreilly'),(113,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Amery Alvarez','$2a$10$hcWqFbtmIEJArhrMXRQcPuCt1SQ8M1mOkkfuGvsu7u8ufnHc9sh3m','LOCAL','ameryalvarez'),(114,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Cain Howe','$2a$10$8dU16GKAlq/RIhs2gBPaMeAAAtSAMVNdUb.GsGtjxcVkndGZLzhou','LOCAL','3976'),(115,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Breanna Holt','$2a$10$S0LvLIYDoquU9vPb9//yAeLQpgd7cp.0opG3bU2FbJFr7J61DDYxG','LOCAL','4881'),(116,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Kalia Baird','$2a$10$u8gCyXQt71A5Mn1KqwEkm.JzKpoVIyephTWZklWhmOkIoyj6MkQuC','LOCAL','kaliabaird'),(117,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Haviva Barry','$2a$10$1SsaGaM5s6kuzg8GS6GnIehFs50YiXwiJnhjj8Lw5Ru.cKYg9PJmu','LOCAL','havivabarry'),(118,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Kai Montgomery','$2a$10$O1K6eoRXRsZHzST0hwCBouvyIZn8ESBNRJ.LjxwNLtQ3Z0mO8q.GC','LOCAL','5218'),(119,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Zeus Shelton','$2a$10$28zZI/Hxmr.TFODtti/jueP98QoH9K8mxQ.pasHbfJm8MNSC/L1HG','LOCAL','zeusshelton'),(120,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Odessa Witt','$2a$10$oBBmiv5gjCmhz6rxbBXskO7d5j29bMCCDL8EhSSpmHjUOMSbJdt2C','LOCAL','68688'),(121,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Samantha Owen','$2a$10$.5qId6u92wk3bV9FrTH5Ce0UbmtLR2V2a/2wJUxQ8TPINBksrZSaC','LOCAL','samanthaowen'),(122,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Shad Hull','$2a$10$bnxA0xKlljSlMFj1I2BiRO/l0C8avlSFj7ULLL5Md.EImqxfjokCC','LOCAL','3657'),(123,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','hoangvi xinh','$2a$10$ttBe1423vo0mzahBzBW3EeMy2wygabwTpxjPjb5xRxtbqUe.PPyee','LOCAL','09090909'),(124,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','hvi1','$2a$10$pFEgs/hI3nXOBTj5KYrryuUK1yHbHur88w1c1eTrtQ58hTiD/V.Oy','LOCAL','hvi1619'),(125,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Renee Baker','$2a$10$K1u10OKTaAK5rpjigJvSbepjq0GnumxA0bqxWS5C1sGOHsD2K1LKW','LOCAL','1678'),(126,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Holly Mccoy','$2a$10$FZ5dYjVoLdYmLs5NQLjuEOBwKJeeUgM8qE0ICzCvuHc8khMwX2J42','LOCAL','holly mccoy'),(127,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Taylor Jarvis','$2a$10$lnFq1uEKDpg/Zw5ShV9vCusWzPNqljDGjL2hmjBvKpM8PML.u8i3m','LOCAL','2976'),(128,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Gail Frederick','$2a$10$0acaXARNd8mMcoEejTVyueJW4J28BChh2Uxh7aJyx.GyBGGn54pm.','LOCAL','gail frederick'),(129,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Ahmed Kidd','$2a$10$.YFpcYpuSP.ObArNsWvFiu6p1UHDDDzvkNDKEF2wWW/wWjexM1EFu','LOCAL','8353'),(130,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Calvin Shepard','$2a$10$RMdL8Tjtvln9XDm/4/effuPGjfhUjA2gazrtqoXGtSDw26m1uXxfy','LOCAL','calvin shepard'),(131,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Calvin Shepard','$2a$10$e9Bk8Tzlu1oh5xz73P9zGuOqfFl/lzvGmPvSPJSk/R0GcPEFEJ7uW','LOCAL','calvin shepard167'),(132,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Tana Zimmerman','$2a$10$vfkb9pp6bDhutV/1zxz1fO7XB/lC.jrh9vGcrOEjNdJOMtvf8QEfW','LOCAL','6377'),(133,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Fritz Foreman','$2a$10$VdRJyg.L2j2jbXN1fsYjF.yRpp9MEsOM2ydlKi.S0u92dDyEGWEbK','LOCAL','fritz foreman'),(134,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Avram Gutierrez','$2a$10$mFk1y1EfN.XzQr386q3tx.JrWTSg0SNwV.Aj3FFHlXczIonZBkMfu','LOCAL','9531'),(135,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Urielle Brady','$2a$10$jDa8rWLNxAcMApXg077MmeYnINr4OvcRNUeaZb0bW0SpIEd6xMTIW','LOCAL','urielle brady'),(136,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Fiona Foster','$2a$10$/KVENLd5VR82tjzIIhidme46BiMhFXcQktKDKi0eggJGJZm9G0Lpe','LOCAL','5208'),(137,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Yoko Wilcox','$2a$10$5nv2QRiOrxs5dqSHrV1ejuNvUZovKsXNNW1krJgTP8igYtcW4o0Sa','LOCAL','yokowilcox'),(138,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Marny Mccoy','$2a$10$Wvr5FmtDkATDN6Pdhf.Qcumt2gOM9k83fhuF3IedvCkv3GzgfCG8m','LOCAL','6199'),(143,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','hoang thi vi','$2a$10$s3egh6kdqt6uizIbP0v1Z.sCvQlEo7ZrQWxMyB6FNqldSSORFC1eq','LOCAL','17100000'),(140,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Ferdinand Mitchell','$2a$10$q7qfSWA5ATqSCzLOGplts.m9j3tYONJx1tJ3DC0qNshzqAhGn2Vom','LOCAL','3444'),(139,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','Zia Arnold','$2a$10$Xtsm2Dd5/kvuv2/PcM10V.03oQWKqjwpFdyJSUtPWjroA2pe/02s.','LOCAL','ziaarnold'),(141,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','TaShya Jordan','$2a$10$dEFcn6HKuiy6b.lIN2oW4ODdfG.58ca/KaElatPpeRsElcK2Fhd5a','LOCAL','tashyajordan'),(144,'https://lh3.googleusercontent.com/a-/AOh14GgbQkftuPGjuCDxkkIqCRPIauYlNUZrUJ9IxyqttA=s96-c',_binary '','Hương Trịnh','hoangvixinh','GOOGLE','huonglt129@gmail.com'),(142,'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',_binary '','hvi xinhhh','$2a$10$jBZwd0Vv7BqzOCjJZiuNjeHeKKZvHvbbF06.oM9gqPfd5TRAb4rG2','LOCAL','09088888');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_roles` (
  `user_id` bigint NOT NULL,
  `roles_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`,`roles_id`),
  KEY `FKa62j07k5mhgifpp955h37ponj` (`roles_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(9,1),(10,1),(11,1),(12,1),(13,4),(23,1),(24,2),(25,3),(26,3),(27,2),(28,2),(29,3),(30,3),(31,2),(32,2),(33,3),(34,2),(35,3),(36,2),(37,3),(38,2),(39,3),(40,2),(41,3),(42,3),(43,2),(44,3),(45,2),(46,2),(47,3),(48,2),(49,3),(50,2),(51,3),(52,3),(53,2),(54,3),(55,2),(56,2),(57,3),(58,3),(59,2),(60,2),(61,3),(62,3),(63,3),(64,2),(65,2),(66,3),(67,3),(68,2),(69,3),(70,2),(71,3),(72,2),(73,3),(74,2),(76,3),(77,2),(79,2),(80,3),(82,3),(83,2),(85,3),(86,2),(88,2),(90,3),(91,2),(93,3),(94,2),(95,2),(96,3),(97,2),(98,3),(99,2),(100,3),(101,2),(102,3),(103,3),(104,2),(105,2),(106,3),(107,2),(108,3),(109,3),(110,3),(111,3),(112,2),(113,2),(114,3),(115,3),(116,2),(117,2),(118,3),(119,2),(120,3),(121,2),(122,3),(123,3),(124,2),(125,3),(126,2),(127,3),(128,2),(129,3),(130,2),(131,2),(132,3),(133,2),(134,3),(135,2),(136,3),(137,2),(138,3),(139,2),(140,3),(141,2),(144,1);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-10 11:46:19
