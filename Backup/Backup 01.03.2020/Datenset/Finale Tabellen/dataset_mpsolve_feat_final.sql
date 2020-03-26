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
-- Table structure for table `mpsolve_feat_final`
--

DROP TABLE IF EXISTS `mpsolve_feat_final`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mpsolve_feat_final` (
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
  `reml` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mpsolve_feat_final`
--

LOCK TABLES `mpsolve_feat_final` WRITE;
/*!40000 ALTER TABLE `mpsolve_feat_final` DISABLE KEYS */;
INSERT INTO `mpsolve_feat_final` VALUES ('mpsolve','3.0.1',' __cplusplus','1','1','1','2','2','1','11','60','0','2','0','clean'),('mpsolve','3.1.2',' __cplusplus','3','1','2','100','104','3','23','16','0','34','0','clean'),('mpsolve','3.1.4',' __cplusplus','4','1','3','18','2000','11','115','45','0','91','90','clean'),('mpsolve','3.0.1','_mps_private ','1','1','1','605','66','1','11','90','0','55','11','clean'),('mpsolve','3.1.4','_mps_private ','7','1','2','3','3566','17','115','77','0','104','105','clean'),('mpsolve','3.0.1','have_config_h','1','1','1','4','217','2','11','254','12','108','0','clean'),('mpsolve','3.1.2','have_config_h','3','1','2','29','49','4','23','400','63','11','0','clean'),('mpsolve','3.1.4','have_config_h','5','1','3','190','2418','6','115','251','39','139','263','clean'),('mpsolve','3.1.5','have_config_h','1','1','4','4','4','1','9','558','121','2','2','clean'),('mpsolve','3.1.6','have_config_h','1','1','5','9','6','1','2','558','121','3','3','clean'),('mpsolve','3.1.7','have_config_h','2','1','6','9','10','2','2','558','121','2','2','clean'),('mpsolve','3.0.1','have_graphical_debugger','1','1','1','1','40','2','11','414','77','13','6','clean'),('mpsolve','3.0.1','have_gtk','8','1','1','213','412','10','11','421','87','36','5','defective'),('mpsolve','3.0.1','not __windows','1','1','1','924','80','1','11','453','98','66','14','clean'),('mpsolve','3.1.2','not __windows','6','1','2','4','3129','8','23','463','128','132','259','defective'),('mpsolve','3.1.4','not __windows','5','1','3','1','729','6','115','318','67','66','55','clean'),('mpsolve','3.0.1','not disable_debug','1','1','1','24','24','1','11','317','65','24','0','clean'),('mpsolve','3.1.4','not disable_debug','14','1','2','7','1715','19','115','376','77','42','48','defective'),('mpsolve','3.0.1','not gtk_widget_get_allocated_height','2','1','1','34','102','2','11','64','7','50','0','clean'),('mpsolve','3.0.1','not gtk_widget_get_allocated_width','3','1','1','34','106','3','11','79','9','35','0','clean'),('mpsolve','3.0.1','not mps_iteration_logger_h_','1','1','1','67','67','1','11','21','0','67','0','clean'),('mpsolve','3.1.2','__cplusplus','3','1','1','29','37','5','23','122','1','6','0','clean'),('mpsolve','3.1.4','__cplusplus','15','1','2','34','5454','46','115','60','0','62','55','defective'),('mpsolve','3.1.5','__cplusplus','1','1','3','5','6','1','9','46','3','5','1','clean'),('mpsolve','3.1.2','__mps_debug','1','1','1','42','23','1','23','13','0','2','21','clean'),('mpsolve','3.1.2','__windows','1','1','1','13','13','1','23','308','51','13','0','clean'),('mpsolve','3.1.2','_mps_private','2','1','1','2','102','2','23','205','4','51','0','clean'),('mpsolve','3.1.4','_mps_private','12','1','2','1','5780','28','115','102','1','92','114','clean'),('mpsolve','3.1.2','have_sysconf','1','1','1','5','6','1','23','304','49','5','1','clean'),('mpsolve','3.1.2','have_unistd_h','2','1','1','525','52','2','23','303','49','13','13','clean'),('mpsolve','3.1.2','have_vsnprintf','1','1','1','12','12','1','23','423','91','12','0','clean'),('mpsolve','3.1.4','have_vsnprintf','1','1','2','7410','173','1','115','616','133','95','78','clean'),('mpsolve','3.1.2','nice_debug','1','1','1','42','23','1','23','13','0','2','21','clean'),('mpsolve','3.1.4','nice_debug','5','1','2','36','448','5','115','246','44','45','44','clean'),('mpsolve','3.1.5','nice_debug','2','1','3','10','20','2','9','12','0','5','5','clean'),('mpsolve','3.1.2','not __cplusplus','1','1','1','15','15','1','23','0','0','15','0','clean'),('mpsolve','3.1.4','not __cplusplus','2','1','2','151','201','2','115','6','0','12','88','clean'),('mpsolve','3.1.2','not __mps_monomial_matrix_poly_h','1','1','1','100','100','1','23','16','0','100','0','clean'),('mpsolve','3.1.4','not __mps_monomial_matrix_poly_h','1','1','2','180','63','1','115','32','0','60','3','clean'),('mpsolve','3.1.2','not isinf','1','1','1','29','29','1','23','394','9','29','0','clean'),('mpsolve','3.1.4','not isinf','2','1','2','358776','2447','3','115','230','6','371','444','clean'),('mpsolve','3.1.2','not isnan','1','1','1','29','29','1','23','394','9','29','0','clean'),('mpsolve','3.1.4','not isnan','2','1','2','358776','2447','3','115','230','6','371','444','clean'),('mpsolve','3.1.2','not log2','1','1','1','4','15','3','23','373','60','4','1','clean'),('mpsolve','3.1.4','not log2','1','1','2','990','935','3','115','377','62','156','155','clean'),('mpsolve','3.1.2','not mps_core_h_','1','1','1','29','29','1','23','394','9','29','0','clean'),('mpsolve','3.1.2','not polfileeditordialog_h','1','1','1','22','22','1','23','13','0','22','0','clean'),('mpsolve','3.1.4','not polfileeditordialog_h','1','1','2','28','28','1','115','0','0','0','28','clean'),('mpsolve','3.1.2','not polsyntaxhighlighter_h','1','1','1','20','20','1','23','10','0','20','0','clean'),('mpsolve','3.1.2','not vsnprintf','1','1','1','12','12','1','23','423','91','12','0','clean'),('mpsolve','3.1.4','not vsnprintf','1','1','2','7410','173','1','115','616','133','95','78','clean'),('mpsolve','3.1.2','not xmpsolve_root_h','1','1','1','45','14','1','23','15','0','5','9','clean'),('mpsolve','3.1.2','not xmpsolve_rootsmodel_h','1','1','1','40','40','1','23','23','0','40','0','clean'),('mpsolve','3.1.4',' __cplusplus  ','1','1','1','43681','418','1','115','13','0','209','209','clean'),('mpsolve','3.1.4','__cplusplus ','1','1','1','7055','168','1','115','19','0','83','85','clean'),('mpsolve','3.1.4','disable_debug','1','1','1','43681','418','1','115','13','0','209','209','clean'),('mpsolve','3.1.4','getline','1','1','1','135','135','1','115','72','17','135','0','clean'),('mpsolve','3.1.5','getline','1','1','2','5','5','1','9','72','17','5','0','clean'),('mpsolve','3.1.4','have_hidden_visibility_attribute','1','1','1','228','31','1','115','400','9','19','12','clean'),('mpsolve','3.1.4','mps_catch_fpe','1','1','1','99','20','1','115','74','15','11','9','clean'),('mpsolve','3.1.4','mps_parser_debug','4','1','1','154','361','5','115','92','0','54','18','defective'),('mpsolve','3.1.5','mps_parser_debug','1','1','2','476','48','1','9','135','3','34','14','clean'),('mpsolve','3.1.4','mps_publish_private_methods','2','1','1','228','1229','2','115','411','9','311','303','clean'),('mpsolve','3.1.4','mps_use_builtin_complex','1','1','1','7047','168','1','115','1803','360','87','81','clean'),('mpsolve','3.1.4','mps_use_qml','6','1','1','11','47','6','115','18','3','5','2','clean'),('mpsolve','3.1.4','not  mps_debug_h_','1','1','1','54','15','1','115','13','0','9','6','clean'),('mpsolve','3.1.4','not __mps_cluster','1','1','1','24','14','1','115','35','0','12','2','clean'),('mpsolve','3.1.4','not __mps_monomial_poly_h','1','1','1','24','14','1','115','60','0','12','2','clean'),('mpsolve','3.1.4','not __mps_mt_types','1','1','1','24','14','1','115','12','0','12','2','clean'),('mpsolve','3.1.4','not __mps_not_define_bool','2','1','1','358776','2447','3','115','230','6','371','444','clean'),('mpsolve','3.1.4','not __mps_polynomial_h','2','1','1','34','23','2','115','58','0','9','2','clean'),('mpsolve','3.1.4','not __mt_h__','1','1','1','9','10','1','115','233','0','9','1','clean'),('mpsolve','3.1.4','not _mps_octave_support_h__','1','1','1','31','31','1','115','14','0','31','0','clean'),('mpsolve','3.1.4','not _mps_private','3','1','1','42','212','4','115','60','9','53','0','clean'),('mpsolve','3.1.4','not _mps_utils_h','3','1','1','30','45','3','115','8','0','12','2','clean'),('mpsolve','3.1.4','not _mps_yacc_parser_h','2','1','1','71','326','3','115','84','1','93','15','defective'),('mpsolve','3.1.4','not disable_debug  ','1','1','1','1984','94','1','115','97','17','62','32','clean'),('mpsolve','3.1.4','not getline','1','1','1','10','10','1','115','49','0','10','0','clean'),('mpsolve','3.1.4','not have_fmemopen','7','1','1','214','1362','9','115','410','94','78','73','defective'),('mpsolve','3.1.4','not have_getline','1','1','1','135','256','2','115','90','22','69','58','clean'),('mpsolve','3.1.5','not have_getline','1','1','2','5','5','1','9','72','17','5','0','clean'),('mpsolve','3.1.4','not have_strndup','2','1','1','41','45','2','115','12','1','22','0','clean'),('mpsolve','3.1.4','not mpf_pow_ui','1','1','1','3364','116','1','115','27','0','58','58','clean'),('mpsolve','3.1.4','not mpf_swap','1','1','1','3364','116','1','115','27','0','58','58','clean'),('mpsolve','3.1.4','not mpq_out_str','1','1','1','3364','116','1','115','27','0','58','58','clean'),('mpsolve','3.1.4','not mpq_swap','1','1','1','3364','116','1','115','27','0','58','58','clean'),('mpsolve','3.1.4','not mps_aberth_h_','2','1','1','37','45','2','115','12','0','20','2','clean'),('mpsolve','3.1.4','not mps_abstract_input_stream_h_','2','1','1','75','131','2','115','15','0','50','15','clean'),('mpsolve','3.1.4','not mps_algorithms_h_','2','1','1','33','37','2','115','4','0','17','1','clean'),('mpsolve','3.1.4','not mps_approximation_h_','2','1','1','24','36','2','115','24','0','13','5','clean'),('mpsolve','3.1.4','not mps_chebyshev_h_','3','1','1','7055','182','3','115','21','0','30','30','clean'),('mpsolve','3.1.4','not mps_cluster_h_','3','1','1','24','43','3','115','39','0','10','4','clean'),('mpsolve','3.1.4','not mps_context_h','2','1','1','24','16','2','115','121','0','6','1','clean'),('mpsolve','3.1.4','not mps_convex_h_','1','1','1','31','31','1','115','5','0','31','0','clean'),('mpsolve','3.1.4','not mps_data_h_','2','1','1','41','49','2','115','13','0','22','2','clean'),('mpsolve','3.1.4','not mps_debug_h','1','1','1','54','15','1','115','13','0','9','6','clean'),('mpsolve','3.1.4','not mps_file_input_stream_h_','2','1','1','58','108','2','115','18','0','40','13','defective'),('mpsolve','3.1.4','not mps_formal_monomial_h_','1','1','1','100','100','1','115','25','2','100','0','clean'),('mpsolve','3.1.4','not mps_formal_polynomial_h_','1','1','1','91','91','1','115','24','0','91','0','clean'),('mpsolve','3.1.4','not mps_hessenberg_determinant_h_','1','1','1','34','34','1','115','9','0','34','0','clean'),('mpsolve','3.1.4','not mps_horner_h_','2','1','1','41','55','2','115','16','0','24','3','defective'),('mpsolve','3.1.4','not mps_improve_h_','2','1','1','28','34','2','115','4','0','15','1','clean'),('mpsolve','3.1.4','not mps_input_buffer_h_','3','1','1','10','18','3','115','18','0','5','1','clean'),('mpsolve','3.1.4','not mps_input_output_h_','2','1','1','46','54','2','115','20','0','25','2','clean'),('mpsolve','3.1.4','not mps_interface_h','1','1','1','54','15','1','115','15','0','9','6','clean'),('mpsolve','3.1.4','not mps_interface_h_','2','1','1','54','17','2','115','15','0','5','3','clean'),('mpsolve','3.1.4','not mps_jacobi_aberth_h_','1','1','1','30','30','1','115','6','0','30','0','clean'),('mpsolve','3.1.4','not mps_list_h_','2','1','1','94','136','2','115','23','0','57','10','clean'),('mpsolve','3.1.4','not mps_mandelbrot_user_h_','2','1','1','31','39','2','115','8','0','17','2','clean'),('mpsolve','3.1.4','not mps_matrix_h_','2','1','1','17','19','2','115','0','0','9','0','clean'),('mpsolve','3.1.4','not mps_memory_file_stream_h_','2','1','1','60','140','2','115','20','0','49','21','defective'),('mpsolve','3.1.4','not mps_monomial_matrix_poly_h_','2','1','1','180','65','2','115','38','0','30','2','clean'),('mpsolve','3.1.4','not mps_monomial_poly_h_','2','1','1','24','16','2','115','64','0','6','1','clean'),('mpsolve','3.1.4','not mps_mpsxx_h_','2','1','1','33','44','2','115','1','0','5','16','clean'),('mpsolve','3.1.4','not mps_mt_types_','2','1','1','24','16','2','115','12','0','6','1','clean'),('mpsolve','3.1.4','not mps_newton_h_','1','1','1','30','30','1','115','8','0','30','0','clean'),('mpsolve','3.1.4','not mps_nroots_polynomial_h_','3','1','1','36','66','3','115','11','0','17','5','clean'),('mpsolve','3.1.4','not mps_options_h_','2','1','1','10','12','2','115','39','0','5','0','clean'),('mpsolve','3.1.4','not mps_parser_h_','2','1','1','32','40','2','115','7','0','18','2','clean'),('mpsolve','3.1.4','not mps_polynomial_h_','3','1','1','4','20','3','115','89','0','5','1','clean'),('mpsolve','3.1.4','not mps_polynomialxx_h_','2','1','1','105','249','2','115','8','1','52','72','defective'),('mpsolve','3.1.4','not mps_radii_h_','2','1','1','33','37','2','115','8','0','17','1','clean'),('mpsolve','3.1.4','not mps_regeneration_driver_h_','1','1','1','88','88','1','115','37','0','88','0','clean'),('mpsolve','3.1.4','not mps_root_h ','1','1','1','112','22','1','115','34','0','14','8','clean'),('mpsolve','3.1.4','not mps_root_h_','1','1','1','24','14','1','115','15','0','12','2','clean'),('mpsolve','3.1.4','not mps_rursolve_h','2','1','1','64','65','2','115','5','0','4','28','clean'),('mpsolve','3.1.4','not mps_secular_evaluation_h_','1','1','1','39','39','1','115','14','0','39','0','defective'),('mpsolve','3.1.4','not mps_secular_h_','1','1','1','54','15','1','115','82','0','9','6','clean'),('mpsolve','3.1.4','not mps_secular_regeneration_h_','1','1','1','27','27','1','115','4','0','27','0','clean'),('mpsolve','3.1.4','not mps_solve_h_','2','1','1','51','59','2','115','20','0','27','2','clean'),('mpsolve','3.1.4','not mps_sort_h_','2','1','1','29','33','2','115','5','0','15','1','clean'),('mpsolve','3.1.4','not mps_starting_configuration_h_','2','1','1','80','129','2','115','14','0','52','12','defective'),('mpsolve','3.1.4','not mps_starting_h_','2','1','1','48','58','2','115','21','0','26','2','clean'),('mpsolve','3.1.4','not mps_status_h','1','1','1','24','14','1','115','125','0','12','2','clean'),('mpsolve','3.1.4','not mps_threading_h_','1','1','1','20','12','1','115','84','0','2','10','clean'),('mpsolve','3.1.4','not mps_tools_h_','1','1','1','24','14','1','115','15','0','2','12','clean'),('mpsolve','3.1.4','not mps_touch_h_','2','1','1','41','49','2','115','15','0','22','2','clean'),('mpsolve','3.1.4','not mps_types_h_','1','1','1','463','463','1','115','228','9','463','0','clean'),('mpsolve','3.1.4','not mps_use_builtin_complex','1','1','1','3','4','1','115','233','0','3','1','clean'),('mpsolve','3.1.4','not mpz_swap','1','1','1','3364','116','1','115','27','0','58','58','clean'),('mpsolve','3.1.4','not mpz_tstbit','1','1','1','3364','116','1','115','27','0','58','58','clean'),('mpsolve','3.1.4','not polfileeditor_h','1','1','1','34','34','1','115','18','0','34','0','clean'),('mpsolve','3.1.4','not polfileeditorwindow_h','1','1','1','75','75','1','115','28','0','75','0','clean'),('mpsolve','3.1.4','not qquickrootsrenderer_h','1','1','1','32','32','1','115','18','1','32','0','clean'),('mpsolve','3.1.4','not rand_source','1','1','1','1','2','1','115','98','22','1','1','clean'),('mpsolve','3.1.4','not secular_h','1','1','1','54','15','1','115','82','0','9','6','clean'),('mpsolve','3.1.4','not size_max','2','1','1','600','305','3','115','120','30','54','47','clean'),('mpsolve','3.1.4','not ssize_max','2','1','1','600','305','3','115','120','30','54','47','clean'),('mpsolve','3.1.4','not xmpsolve_mainqmlview_h','2','1','1','61','65','2','115','22','0','31','1','clean'),('mpsolve','3.1.4','not xmpsolve_polynomial_h','1','1','1','41','41','1','115','0','0','0','41','clean'),('mpsolve','3.1.4','not xmpsolve_polynomialparser_h','1','1','1','52','52','1','115','0','0','0','52','clean'),('mpsolve','3.1.4','not xmpsolve_qrootsrenderer_h','1','1','1','36','36','1','115','17','0','36','0','clean'),('mpsolve','3.1.4','not xmpsolve_rootsrenderer_h','1','1','1','2','3','1','115','20','0','2','1','clean'),('mpsolve','3.1.4','rand_val','2','1','1','36','20','2','115','98','22','5','5','clean'),('mpsolve','3.1.5','not _isatty','2','1','1','10','20','2','9','12','0','5','5','clean'),('mpsolve','3.1.5','not isatty','2','1','1','10','20','2','9','12','0','5','5','clean');
/*!40000 ALTER TABLE `mpsolve_feat_final` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-12 21:07:03