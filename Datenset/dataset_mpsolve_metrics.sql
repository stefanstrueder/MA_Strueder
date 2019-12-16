-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: dataset
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
-- Table structure for table `mpsolve_metrics`
--

DROP TABLE IF EXISTS `mpsolve_metrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mpsolve_metrics` (
  `name` varchar(255) DEFAULT NULL,
  `release_number` varchar(255) DEFAULT NULL,
  `feature` varchar(255) DEFAULT NULL,
  `comm` varchar(255) DEFAULT NULL,
  `adev` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mpsolve_metrics`
--

LOCK TABLES `mpsolve_metrics` WRITE;
/*!40000 ALTER TABLE `mpsolve_metrics` DISABLE KEYS */;
INSERT INTO `mpsolve_metrics` VALUES ('mpsolve','3.0.1','_mps_private','1','1'),('mpsolve','3.0.1','have_config_h','1','1'),('mpsolve','3.0.1','have_graphical_debugger','1','1'),('mpsolve','3.0.1','have_gtk','8','1'),('mpsolve','3.1.2','__cplusplus','3','1'),('mpsolve','3.1.2','__mps_debug','1','1'),('mpsolve','3.1.2','__windows','1','1'),('mpsolve','3.1.2','_mps_private','2','1'),('mpsolve','3.1.2','have_config_h','3','1'),('mpsolve','3.1.2','have_sysconf','1','1'),('mpsolve','3.1.2','have_unistd_h','2','1'),('mpsolve','3.1.2','have_vsnprintf','1','1'),('mpsolve','3.1.2','nice_debug','1','1'),('mpsolve','3.1.4','__cplusplus','15','1'),('mpsolve','3.1.4','_mps_private','17','1'),('mpsolve','3.1.4','disable_debug','1','1'),('mpsolve','3.1.4','getline','1','1'),('mpsolve','3.1.4','have_config_h','5','1'),('mpsolve','3.1.4','have_hidden_visibility_attribute','1','1'),('mpsolve','3.1.4','have_vsnprintf','1','1'),('mpsolve','3.1.4','mps_catch_fpe','1','1'),('mpsolve','3.1.4','mps_parser_debug','4','1'),('mpsolve','3.1.4','mps_publish_private_methods','2','1'),('mpsolve','3.1.4','mps_use_builtin_complex','1','1'),('mpsolve','3.1.4','mps_use_qml','6','1'),('mpsolve','3.1.4','nice_debug','5','1'),('mpsolve','3.1.4','rand_val','2','1'),('mpsolve','3.1.5','__cplusplus','1','1'),('mpsolve','3.1.5','getline','1','1'),('mpsolve','3.1.5','have_config_h','1','1'),('mpsolve','3.1.5','mps_parser_debug','1','1'),('mpsolve','3.1.5','nice_debug','2','1'),('mpsolve','3.1.6','have_config_h','1','1'),('mpsolve','3.1.7','have_config_h','2','1');
/*!40000 ALTER TABLE `mpsolve_metrics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-16 14:25:17
