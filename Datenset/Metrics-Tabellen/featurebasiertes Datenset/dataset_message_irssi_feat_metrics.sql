-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: dataset_message
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
-- Table structure for table `irssi_feat_metrics`
--

DROP TABLE IF EXISTS `irssi_feat_metrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `irssi_feat_metrics` (
  `name` varchar(255) DEFAULT NULL,
  `release_number` varchar(255) DEFAULT NULL,
  `feature` varchar(255) DEFAULT NULL,
  `comm` varchar(255) DEFAULT NULL,
  `adev` varchar(255) DEFAULT NULL,
  `ddev` varchar(255) DEFAULT NULL,
  `exp` varchar(255) DEFAULT NULL,
  `oexp` varchar(255) DEFAULT NULL,
  `modd` varchar(255) DEFAULT NULL,
  `mods` varchar(255) DEFAULT NULL,
  `nloc` varchar(255) DEFAULT NULL,
  `cyco` varchar(255) DEFAULT NULL,
  `addl` varchar(255) DEFAULT NULL,
  `reml` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `irssi_feat_metrics`
--

LOCK TABLES `irssi_feat_metrics` WRITE;
/*!40000 ALTER TABLE `irssi_feat_metrics` DISABLE KEYS */;
INSERT INTO `irssi_feat_metrics` VALUES ('irssi','1.0.0','not openssl_no_ec','2','2','2','6','6','2','4','629','135','6','0'),('irssi','1.0.5','not openssl_no_ec','1','1','3','100','20','1','3','679','147','10','10'),('irssi','1.0.0','not suppress_printf_fallback','1','1','1','2','2','1','4','400','72','2','0'),('irssi','1.0.0','ssl_get_server_tmp_key','2','2','2','6','6','2','4','629','135','6','0'),('irssi','1.0.5','ssl_get_server_tmp_key','2','1','3','100','38','2','3','679','147','9','9'),('irssi','1.0.2','__afl_have_manual_control','1','1','1','257','257','1','4','226','0','257','0'),('irssi','1.0.2','not use_gregex','1','1','1','18','64','4','4','326','99','3','13'),('irssi','1.0.2','use_gregex','1','1','1','175','208','7','4','238','69','11','18'),('irssi','1.0.3','use_gregex','1','1','2','15','8','1','2','480','147','5','3'),('irssi','1.0.4','have_capsicum','8','1','1','140','241','20','2','325','71','8','3'),('irssi','1.0.6','term_truecolor','1','1','1','3536','120','1','2','1051','256','68','52');
/*!40000 ALTER TABLE `irssi_feat_metrics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-25 11:54:49
