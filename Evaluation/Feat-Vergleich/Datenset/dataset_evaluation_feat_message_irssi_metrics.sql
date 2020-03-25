-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: dataset_evaluation_feat_message
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `irssi_metrics`
--

DROP TABLE IF EXISTS `irssi_metrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `irssi_metrics` (
  `name` varchar(255) DEFAULT NULL,
  `release_number` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `revi` varchar(255) DEFAULT NULL,
  `refa` varchar(255) DEFAULT NULL,
  `bugf` varchar(255) DEFAULT NULL,
  `auth` varchar(255) DEFAULT NULL,
  `addl` varchar(255) DEFAULT NULL,
  `addm` varchar(255) DEFAULT NULL,
  `adda` varchar(255) DEFAULT NULL,
  `reml` varchar(255) DEFAULT NULL,
  `remm` varchar(255) DEFAULT NULL,
  `rema` varchar(255) DEFAULT NULL,
  `cchl` varchar(255) DEFAULT NULL,
  `cchm` varchar(255) DEFAULT NULL,
  `ccha` varchar(255) DEFAULT NULL,
  `maxc` varchar(255) DEFAULT NULL,
  `avgc` varchar(255) DEFAULT NULL,
  `aage` varchar(255) DEFAULT NULL,
  `wage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `irssi_metrics`
--

LOCK TABLES `irssi_metrics` WRITE;
/*!40000 ALTER TABLE `irssi_metrics` DISABLE KEYS */;
INSERT INTO `irssi_metrics` VALUES ('irssi','1.0.0','network-openssl.c','2','0','0','2','24','6','6','0','0','0','24','6','6','2','2','2.68','2.68'),('irssi','1.0.0','printtext.c','1','0','0','1','2','2','2','0','0','0','2','2','2','1','1','1.43','1.43'),('irssi','1.0.2','fe-ignore.c','1','1','0','1','0','0','0','5','5','5','-5','-5','-5','11','11','12.14','12.14'),('irssi','1.0.2','fuzz.diff','1','0','0','1','257','257','257','0','0','0','257','257','257','1','1','8.29','8.29'),('irssi','1.0.2','hilight-text.c','1','1','0','1','11','11','11','40','40','40','-29','-29','-29','11','11','12.21','12.21'),('irssi','1.0.2','hilight-text.h','1','1','0','1','4','2','2','20','10','10','-16','-8','-8','11','11','12.14','12.14'),('irssi','1.0.2','ignore.c','1','1','0','1','5','5','5','35','35','35','-30','-30','-30','11','11','12.21','12.21'),('irssi','1.0.2','ignore.h','1','1','0','1','4','2','2','18','9','9','-14','-7','-7','11','11','12.14','12.14'),('irssi','1.0.2','iregex.h','1','1','0','1','52','52','52','0','0','0','52','52','52','11','11','12.21','12.21'),('irssi','1.0.2','misc.c','1','1','0','1','0','0','0','4','4','4','-4','-4','-4','11','11','10.93','10.93'),('irssi','1.0.2','textbuffer.c','1','1','0','1','16','8','8','58','29','29','-42','-21','-21','11','11','12.21','12.21'),('irssi','1.0.3','textbuffer.c','1','0','0','1','5','5','5','3','3','3','2','2','2','1','1','0.0','1.0'),('irssi','1.0.4','capsicum.h','2','0','0','1','12','11','6','10','9','5','2','10','1','6','5','3.63','3.63'),('irssi','1.0.4','core.c','2','0','1','1','6','4','3','0','0','0','6','4','3','6','4','3.91','3.91'),('irssi','1.0.4','fe-common-core.c','2','0','1','1','6','4','3','0','0','0','6','4','3','6','4','3.91','3.91'),('irssi','1.0.4','fe-core-commands.c','1','0','1','1','14','14','14','0','0','0','14','14','14','1','1','9.14','9.14'),('irssi','1.0.4','fe-log.c','3','0','0','1','17','6','6','10','10','3','7','10','2','6','4','3.71','3.71'),('irssi','1.0.4','log.c','4','0','0','1','35','7','9','22','21','6','13','13','3','6','4','3.66','3.66'),('irssi','1.0.4','network.c','2','0','0','1','33','5','16','5','5','2','28','23','14','1','1','9.59','9.59'),('irssi','1.0.4','rawlog.c','4','0','0','1','45','8','11','26','23','6','19','16','5','6','4','3.49','3.49'),('irssi','1.0.5','network-openssl.c','2','0','1','1','29','9','10','29','9','10','0','0','0','2','2','5.57','5.57'),('irssi','1.0.6','textbuffer-view.c','1','0','0','1','68','68','68','52','52','52','16','16','16','1','1','0.07','0.07');
/*!40000 ALTER TABLE `irssi_metrics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-25 16:48:46
