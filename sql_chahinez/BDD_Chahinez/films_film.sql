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
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film` (
  `IdFilm` int NOT NULL,
  `Titre` varchar(20) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `NoteFinal` float NOT NULL,
  `anneecreation` varchar(5) NOT NULL,
  `duree` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `categorie` varchar(50) NOT NULL,
  `Qualite` varchar(11) NOT NULL,
  `codeIso` varchar(250) NOT NULL,
  `Realisateur` int DEFAULT NULL,
  `LienFilm` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`IdFilm`),
  KEY `Realisateur` (`Realisateur`),
  CONSTRAINT `film_ibfk_1` FOREIGN KEY (`Realisateur`) REFERENCES `realisateur` (`IdRealisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film`
--

LOCK TABLES `film` WRITE;
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` VALUES (2,'Premier Contact','images/premiercontact_.jpg',0,'2016','111 minutes','Le film évoque l\'apparition inattendue de douze mystérieux vaisseaux extraterrestres à différents endroits du monde (États-Unis, Venezuela, Groenland, Royaume-Uni, Sierra Leone, Soudan, Russie — Sibérie et mer Noire — Pakistan, Chine, Japon, Australie), stationnés à quelques mètres au-dessus du sol ou de l\'océan. L\'armée américaine les surnomme « coques » à cause de leur forme singulière, oblongue et lisse. Les buts des extraterrestres et le choix des sites échappant à toute logique humaine, l\'experte en linguistique comparée Louise Banks est recrutée par l\'armée pour établir le contact et, surtout, connaître leurs buts. En apprenant leur langue écrite en cercle, Louise apprend « à courber le temps », et donc à obtenir la capacité d\'agir dans le présent pour avoir une action future qui devient passée, qui influe donc sur son besoin présent via le passé.','sience','','États-Unis',1,'video/premierContact.mp4'),(4,'Joker','images/Joker_.jpg',0,'2019','2h 02min','Le film, qui relate une histoire originale inédite sur grand écran, se focalise sur la figure emblématique de l’ennemi juré de Batman. Il brosse le portrait d’Arthur Fleck, un homme sans concession méprisé par la société.','Drame','','États-Unis',9,'video/joker.mp4'),(5,'The Invisible Man','images/the_invisibleman.jpg',0,'2020','124min','Invisible Man ou L\'Homme invisible au Québec (The Invisible Man) est un film de science-fiction horrifique américano-australien réalisé par Leigh Whannell, sorti en février 20201. Il s\'agit d\'une adaptation libre du roman de science-fiction L\'Homme invisible de l\'écrivain britannique H.G. Wells.','science-fiction','','USA',8,'video/TheInvisibleMan.mp4'),(6,'Tie Me Up! Tie Me Do','images/Tie_.jpg',0,'1990','101min','Tie Me Up! Tie Me Down! is a 1989 Spanish dark romantic comedy film, written and directed by Pedro Almodóvar, starring Victoria Abril and Antonio Banderas alongside Loles Léon, Francisco Rabal, Julieta Serrano, María Barranco, and Rossy de Palma. The plot follows a recently released psychiatric patient who kidnaps an actress in order to make her fall in love with him. He believes his destiny is to marry her and father her children.','Comedy','','spain',10,'video/SU.mp4'),(7,'Subway','images/subway.png',0,'1985','104min','Après avoir dérobé des documents compromettants, un homme, Fred, se réfugie dans le métro parisien. Au sein de cet univers fascinant et agité, une impitoyable chasse à l\'homme s\'organise. D\'étranges liens se tissent entre le cambrioleur et la femme de sa victime, Héléna.\r\nAu-delà de l\'histoire de vol de documents et de chantage, Subway est aussi une plongée dans le monde de la marginalité et de la culture punk. Fred parcourt les sous-sols du métro et découvre sa « faune » nocturne. Au détour des couloirs, il rencontre aussi des musiciens, chacun dans leur coin. Il décide de les réunir et de les inciter à former un groupe','Policier','','Fr',11,'video/subway.mp4'),(10,'Le Retour des anges ','images/LeRetourdesangesdelenfer.jpg',0,'1967','2h10min','Dans une banlieue de San Fransisco, un jeune pompiste est mis à la porte, et est admis au sein de la bande des Anges de l\'enfer. Plus tard, il est attaqué par deux marins. Ses nouveaux amis les retrouvent, et le chef tue l\'un d\'eux. Lorsque le sherif vient les interroger, ils fournissent tous un alibi à leur chef..','road movie','','USA',12,'video/retourdesanges.mp4');
/*!40000 ALTER TABLE `film` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-16 17:04:16
