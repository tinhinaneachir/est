-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: films
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `IdUser` int NOT NULL AUTO_INCREMENT,
  `Email` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `Nom` varchar(200) NOT NULL,
  `created_at` date DEFAULT NULL,
  `Photo` varchar(300) DEFAULT NULL,
  `Prenom` varchar(250) NOT NULL,
  PRIMARY KEY (`IdUser`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (67,'khebizichahinaze@gmail.com','$argon2id$v=19$m=65536,t=4,p=1$enhLdUVwZ0QucWguMExQMw$cb3ZHD+TlxS7f2vgN6C9Vj+58ZLYVlUxFEE+7mWzXeA','chahinaze','2021-05-19','6760a57f39059d32.99987545.png',''),(70,'kamiliabani@gmail.com','$argon2id$v=19$m=65536,t=4,p=1$TUUwbE9qV291eUs5LmlrZQ$Oxai+93Y4i1swKaZ+HAJ1Sds68aq5QVyT2zSoiGuOqc','kamilia ','2021-05-19','7060a57fb9b8e4b4.06188893.jpeg',''),(72,'c','a','A',NULL,NULL,'b'),(73,'a','fred@gmail.com','asasas',NULL,NULL,'asasasas'),(74,'a','fred@gmail.com','asasas',NULL,NULL,'asasasas'),(75,'fred@gmail.com','fred@gmail.com','',NULL,NULL,''),(76,'azert','chahinaze@gmail.com','khebizi',NULL,NULL,'chahinaze'),(77,'usersofiane@gmail.com','azert','chelkia',NULL,NULL,'salah'),(78,'usersofiane@gmail.com','a','khebizi',NULL,NULL,'chahinaze'),(79,'chaha@gmail.com','a','',NULL,NULL,''),(80,'c@gmail.com','a','',NULL,NULL,''),(81,'','','',NULL,NULL,'');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-16 17:04:15
