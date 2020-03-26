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
-- Table structure for table `mpsolve_feat_metrics`
--

DROP TABLE IF EXISTS `mpsolve_feat_metrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mpsolve_feat_metrics` (
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
-- Dumping data for table `mpsolve_feat_metrics`
--

LOCK TABLES `mpsolve_feat_metrics` WRITE;
/*!40000 ALTER TABLE `mpsolve_feat_metrics` DISABLE KEYS */;
INSERT INTO `mpsolve_feat_metrics` VALUES ('mpsolve','3.0.1',' __cplusplus','1','1','1','2','2','1','9','60','0','2','0'),('mpsolve','3.1.2',' __cplusplus','3','1','2','100','104','3','15','16','0','34','0'),('mpsolve','3.1.4',' __cplusplus','4','1','3','18','2000','11','45','45','0','91','90'),('mpsolve','3.0.1','_mps_private ','1','1','1','605','66','1','9','90','0','55','11'),('mpsolve','3.1.4','_mps_private ','7','1','2','3','3566','17','45','77','0','104','105'),('mpsolve','3.0.1','have_graphical_debugger','1','1','1','1','40','2','9','414','77','13','6'),('mpsolve','3.0.1','have_gtk','8','1','1','213','412','10','9','421','87','36','5'),('mpsolve','3.0.1','not __windows','1','1','1','924','80','1','9','453','98','66','14'),('mpsolve','3.1.2','not __windows','6','1','2','4','3129','8','15','463','128','132','259'),('mpsolve','3.1.4','not __windows','5','1','3','1','729','6','45','318','67','66','55'),('mpsolve','3.0.1','not disable_debug','1','1','1','24','24','1','9','317','65','24','0'),('mpsolve','3.1.4','not disable_debug','14','1','2','7','1715','19','45','376','77','42','48'),('mpsolve','3.0.1','not gtk_widget_get_allocated_height','2','1','1','34','102','2','9','64','7','50','0'),('mpsolve','3.0.1','not gtk_widget_get_allocated_width','3','1','1','34','106','3','9','79','9','35','0'),('mpsolve','3.1.2','__cplusplus','3','1','1','29','37','5','15','122','1','6','0'),('mpsolve','3.1.4','__cplusplus','15','1','2','34','5454','46','45','60','0','62','55'),('mpsolve','3.1.5','__cplusplus','1','1','3','5','6','1','8','46','3','5','1'),('mpsolve','3.1.2','__mps_debug','1','1','1','42','23','1','15','13','0','2','21'),('mpsolve','3.1.2','__windows','1','1','1','13','13','1','15','308','51','13','0'),('mpsolve','3.1.2','_mps_private','2','1','1','2','102','2','15','205','4','51','0'),('mpsolve','3.1.4','_mps_private','12','1','2','1','5780','28','45','102','1','92','114'),('mpsolve','3.1.2','have_sysconf','1','1','1','5','6','1','15','304','49','5','1'),('mpsolve','3.1.2','have_vsnprintf','1','1','1','12','12','1','15','423','91','12','0'),('mpsolve','3.1.4','have_vsnprintf','1','1','2','7410','173','1','45','616','133','95','78'),('mpsolve','3.1.2','nice_debug','1','1','1','42','23','1','15','13','0','2','21'),('mpsolve','3.1.4','nice_debug','5','1','2','36','448','5','45','246','44','45','44'),('mpsolve','3.1.5','nice_debug','2','1','3','10','20','2','8','12','0','5','5'),('mpsolve','3.1.2','not __cplusplus','1','1','1','15','15','1','15','0','0','15','0'),('mpsolve','3.1.4','not __cplusplus','2','1','2','151','201','2','45','6','0','12','88'),('mpsolve','3.1.2','not isinf','1','1','1','29','29','1','15','394','9','29','0'),('mpsolve','3.1.4','not isinf','2','1','2','358776','2447','3','45','230','6','371','444'),('mpsolve','3.1.2','not isnan','1','1','1','29','29','1','15','394','9','29','0'),('mpsolve','3.1.4','not isnan','2','1','2','358776','2447','3','45','230','6','371','444'),('mpsolve','3.1.2','not log2','1','1','1','4','15','3','15','373','60','4','1'),('mpsolve','3.1.4','not log2','1','1','2','990','935','3','45','377','62','156','155'),('mpsolve','3.1.2','not vsnprintf','1','1','1','12','12','1','15','423','91','12','0'),('mpsolve','3.1.4','not vsnprintf','1','1','2','7410','173','1','45','616','133','95','78'),('mpsolve','3.1.4',' __cplusplus  ','1','1','1','43681','418','1','45','13','0','209','209'),('mpsolve','3.1.4','__cplusplus ','1','1','1','7055','168','1','45','19','0','83','85'),('mpsolve','3.1.4','disable_debug','1','1','1','43681','418','1','45','13','0','209','209'),('mpsolve','3.1.4','getline','1','1','1','135','135','1','45','72','17','135','0'),('mpsolve','3.1.5','getline','1','1','2','5','5','1','8','72','17','5','0'),('mpsolve','3.1.4','have_hidden_visibility_attribute','1','1','1','228','31','1','45','400','9','19','12'),('mpsolve','3.1.4','mps_catch_fpe','1','1','1','99','20','1','45','74','15','11','9'),('mpsolve','3.1.4','mps_parser_debug','4','1','1','154','361','5','45','92','0','54','18'),('mpsolve','3.1.5','mps_parser_debug','1','1','2','476','48','1','8','135','3','34','14'),('mpsolve','3.1.4','mps_publish_private_methods','2','1','1','228','1229','2','45','411','9','311','303'),('mpsolve','3.1.4','mps_use_builtin_complex','1','1','1','7047','168','1','45','1803','360','87','81'),('mpsolve','3.1.4','mps_use_qml','6','1','1','11','47','6','45','18','3','5','2'),('mpsolve','3.1.4','not __mps_cluster','1','1','1','24','14','1','45','35','0','12','2'),('mpsolve','3.1.4','not __mps_mt_types','1','1','1','24','14','1','45','12','0','12','2'),('mpsolve','3.1.4','not __mps_not_define_bool','2','1','1','358776','2447','3','45','230','6','371','444'),('mpsolve','3.1.4','not _mps_private','3','1','1','42','212','4','45','60','9','53','0'),('mpsolve','3.1.4','not disable_debug  ','1','1','1','1984','94','1','45','97','17','62','32'),('mpsolve','3.1.4','not getline','1','1','1','10','10','1','45','49','0','10','0'),('mpsolve','3.1.4','not have_fmemopen','7','1','1','214','1362','9','45','410','94','78','73'),('mpsolve','3.1.4','not have_getline','1','1','1','135','256','2','45','90','22','69','58'),('mpsolve','3.1.5','not have_getline','1','1','2','5','5','1','8','72','17','5','0'),('mpsolve','3.1.4','not have_strndup','2','1','1','41','45','2','45','12','1','22','0'),('mpsolve','3.1.4','not mpf_pow_ui','1','1','1','3364','116','1','45','27','0','58','58'),('mpsolve','3.1.4','not mpf_swap','1','1','1','3364','116','1','45','27','0','58','58'),('mpsolve','3.1.4','not mpq_out_str','1','1','1','3364','116','1','45','27','0','58','58'),('mpsolve','3.1.4','not mpq_swap','1','1','1','3364','116','1','45','27','0','58','58'),('mpsolve','3.1.4','not mps_mt_types_','2','1','1','24','16','2','45','12','0','6','1'),('mpsolve','3.1.4','not mps_use_builtin_complex','1','1','1','3','4','1','45','233','0','3','1'),('mpsolve','3.1.4','not mpz_swap','1','1','1','3364','116','1','45','27','0','58','58'),('mpsolve','3.1.4','not mpz_tstbit','1','1','1','3364','116','1','45','27','0','58','58'),('mpsolve','3.1.4','not rand_source','1','1','1','1','2','1','45','98','22','1','1'),('mpsolve','3.1.4','not size_max','2','1','1','600','305','3','45','120','30','54','47'),('mpsolve','3.1.4','not ssize_max','2','1','1','600','305','3','45','120','30','54','47'),('mpsolve','3.1.4','rand_val','2','1','1','36','20','2','45','98','22','5','5'),('mpsolve','3.1.5','not _isatty','2','1','1','10','20','2','8','12','0','5','5'),('mpsolve','3.1.5','not isatty','2','1','1','10','20','2','8','12','0','5','5');
/*!40000 ALTER TABLE `mpsolve_feat_metrics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-26 11:43:10
