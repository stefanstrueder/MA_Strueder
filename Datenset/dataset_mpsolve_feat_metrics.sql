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
  `ddev` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mpsolve_feat_metrics`
--

LOCK TABLES `mpsolve_feat_metrics` WRITE;
/*!40000 ALTER TABLE `mpsolve_feat_metrics` DISABLE KEYS */;
INSERT INTO `mpsolve_feat_metrics` VALUES ('mpsolve','3.0.1',' __cplusplus','1','1','1'),('mpsolve','3.1.2',' __cplusplus','3','1','2'),('mpsolve','3.1.4',' __cplusplus','4','1','3'),('mpsolve','3.0.1','_mps_private ','1','1','1'),('mpsolve','3.1.4','_mps_private ','7','1','2'),('mpsolve','3.0.1','have_config_h','1','1','1'),('mpsolve','3.1.2','have_config_h','3','1','2'),('mpsolve','3.1.4','have_config_h','5','1','3'),('mpsolve','3.1.5','have_config_h','1','1','4'),('mpsolve','3.1.6','have_config_h','1','1','5'),('mpsolve','3.1.7','have_config_h','2','1','6'),('mpsolve','3.0.1','have_graphical_debugger','1','1','1'),('mpsolve','3.0.1','have_gtk','8','1','1'),('mpsolve','3.0.1','not __windows','1','1','1'),('mpsolve','3.1.2','not __windows','6','1','2'),('mpsolve','3.1.4','not __windows','5','1','3'),('mpsolve','3.0.1','not disable_debug','1','1','1'),('mpsolve','3.1.4','not disable_debug','14','1','2'),('mpsolve','3.0.1','not gtk_widget_get_allocated_height','2','1','1'),('mpsolve','3.0.1','not gtk_widget_get_allocated_width','3','1','1'),('mpsolve','3.0.1','not mps_iteration_logger_h_','1','1','1'),('mpsolve','3.1.2','__cplusplus','3','1','1'),('mpsolve','3.1.4','__cplusplus','15','1','2'),('mpsolve','3.1.5','__cplusplus','1','1','3'),('mpsolve','3.1.2','__mps_debug','1','1','1'),('mpsolve','3.1.2','__windows','1','1','1'),('mpsolve','3.1.2','_mps_private','2','1','1'),('mpsolve','3.1.4','_mps_private','12','1','2'),('mpsolve','3.1.2','have_sysconf','1','1','1'),('mpsolve','3.1.2','have_unistd_h','2','1','1'),('mpsolve','3.1.2','have_vsnprintf','1','1','1'),('mpsolve','3.1.4','have_vsnprintf','1','1','2'),('mpsolve','3.1.2','nice_debug','1','1','1'),('mpsolve','3.1.4','nice_debug','5','1','2'),('mpsolve','3.1.5','nice_debug','2','1','3'),('mpsolve','3.1.2','not __cplusplus','1','1','1'),('mpsolve','3.1.4','not __cplusplus','2','1','2'),('mpsolve','3.1.2','not __mps_monomial_matrix_poly_h','1','1','1'),('mpsolve','3.1.4','not __mps_monomial_matrix_poly_h','1','1','2'),('mpsolve','3.1.2','not isinf','1','1','1'),('mpsolve','3.1.4','not isinf','2','1','2'),('mpsolve','3.1.2','not isnan','1','1','1'),('mpsolve','3.1.4','not isnan','2','1','2'),('mpsolve','3.1.2','not log2','1','1','1'),('mpsolve','3.1.4','not log2','1','1','2'),('mpsolve','3.1.2','not mps_core_h_','1','1','1'),('mpsolve','3.1.2','not polfileeditordialog_h','1','1','1'),('mpsolve','3.1.4','not polfileeditordialog_h','1','1','2'),('mpsolve','3.1.2','not polsyntaxhighlighter_h','1','1','1'),('mpsolve','3.1.2','not vsnprintf','1','1','1'),('mpsolve','3.1.4','not vsnprintf','1','1','2'),('mpsolve','3.1.2','not xmpsolve_root_h','1','1','1'),('mpsolve','3.1.2','not xmpsolve_rootsmodel_h','1','1','1'),('mpsolve','3.1.4',' __cplusplus  ','1','1','1'),('mpsolve','3.1.4','__cplusplus ','1','1','1'),('mpsolve','3.1.4','disable_debug','1','1','1'),('mpsolve','3.1.4','getline','1','1','1'),('mpsolve','3.1.5','getline','1','1','2'),('mpsolve','3.1.4','have_hidden_visibility_attribute','1','1','1'),('mpsolve','3.1.4','mps_catch_fpe','1','1','1'),('mpsolve','3.1.4','mps_parser_debug','4','1','1'),('mpsolve','3.1.5','mps_parser_debug','1','1','2'),('mpsolve','3.1.4','mps_publish_private_methods','2','1','1'),('mpsolve','3.1.4','mps_use_builtin_complex','1','1','1'),('mpsolve','3.1.4','mps_use_qml','6','1','1'),('mpsolve','3.1.4','not  mps_debug_h_','1','1','1'),('mpsolve','3.1.4','not __mps_cluster','1','1','1'),('mpsolve','3.1.4','not __mps_monomial_poly_h','1','1','1'),('mpsolve','3.1.4','not __mps_mt_types','1','1','1'),('mpsolve','3.1.4','not __mps_not_define_bool','2','1','1'),('mpsolve','3.1.4','not __mps_polynomial_h','2','1','1'),('mpsolve','3.1.4','not __mt_h__','1','1','1'),('mpsolve','3.1.4','not _mps_octave_support_h__','1','1','1'),('mpsolve','3.1.4','not _mps_private','3','1','1'),('mpsolve','3.1.4','not _mps_utils_h','3','1','1'),('mpsolve','3.1.4','not _mps_yacc_parser_h','2','1','1'),('mpsolve','3.1.4','not disable_debug  ','1','1','1'),('mpsolve','3.1.4','not getline','1','1','1'),('mpsolve','3.1.4','not have_fmemopen','7','1','1'),('mpsolve','3.1.4','not have_getline','1','1','1'),('mpsolve','3.1.5','not have_getline','1','1','2'),('mpsolve','3.1.4','not have_strndup','2','1','1'),('mpsolve','3.1.4','not mpf_pow_ui','1','1','1'),('mpsolve','3.1.4','not mpf_swap','1','1','1'),('mpsolve','3.1.4','not mpq_out_str','1','1','1'),('mpsolve','3.1.4','not mpq_swap','1','1','1'),('mpsolve','3.1.4','not mps_aberth_h_','2','1','1'),('mpsolve','3.1.4','not mps_abstract_input_stream_h_','2','1','1'),('mpsolve','3.1.4','not mps_algorithms_h_','2','1','1'),('mpsolve','3.1.4','not mps_approximation_h_','2','1','1'),('mpsolve','3.1.4','not mps_chebyshev_h_','3','1','1'),('mpsolve','3.1.4','not mps_cluster_h_','3','1','1'),('mpsolve','3.1.4','not mps_context_h','2','1','1'),('mpsolve','3.1.4','not mps_convex_h_','1','1','1'),('mpsolve','3.1.4','not mps_data_h_','2','1','1'),('mpsolve','3.1.4','not mps_debug_h','1','1','1'),('mpsolve','3.1.4','not mps_file_input_stream_h_','2','1','1'),('mpsolve','3.1.4','not mps_formal_monomial_h_','1','1','1'),('mpsolve','3.1.4','not mps_formal_polynomial_h_','1','1','1'),('mpsolve','3.1.4','not mps_hessenberg_determinant_h_','1','1','1'),('mpsolve','3.1.4','not mps_horner_h_','2','1','1'),('mpsolve','3.1.4','not mps_improve_h_','2','1','1'),('mpsolve','3.1.4','not mps_input_buffer_h_','3','1','1'),('mpsolve','3.1.4','not mps_input_output_h_','2','1','1'),('mpsolve','3.1.4','not mps_interface_h','1','1','1'),('mpsolve','3.1.4','not mps_interface_h_','2','1','1'),('mpsolve','3.1.4','not mps_jacobi_aberth_h_','1','1','1'),('mpsolve','3.1.4','not mps_list_h_','2','1','1'),('mpsolve','3.1.4','not mps_mandelbrot_user_h_','2','1','1'),('mpsolve','3.1.4','not mps_matrix_h_','2','1','1'),('mpsolve','3.1.4','not mps_memory_file_stream_h_','2','1','1'),('mpsolve','3.1.4','not mps_monomial_matrix_poly_h_','2','1','1'),('mpsolve','3.1.4','not mps_monomial_poly_h_','2','1','1'),('mpsolve','3.1.4','not mps_mpsxx_h_','2','1','1'),('mpsolve','3.1.4','not mps_mt_types_','2','1','1'),('mpsolve','3.1.4','not mps_newton_h_','1','1','1'),('mpsolve','3.1.4','not mps_nroots_polynomial_h_','3','1','1'),('mpsolve','3.1.4','not mps_options_h_','2','1','1'),('mpsolve','3.1.4','not mps_parser_h_','2','1','1'),('mpsolve','3.1.4','not mps_polynomial_h_','3','1','1'),('mpsolve','3.1.4','not mps_polynomialxx_h_','2','1','1'),('mpsolve','3.1.4','not mps_radii_h_','2','1','1'),('mpsolve','3.1.4','not mps_regeneration_driver_h_','1','1','1'),('mpsolve','3.1.4','not mps_root_h ','1','1','1'),('mpsolve','3.1.4','not mps_root_h_','1','1','1'),('mpsolve','3.1.4','not mps_rursolve_h','2','1','1'),('mpsolve','3.1.4','not mps_secular_evaluation_h_','1','1','1'),('mpsolve','3.1.4','not mps_secular_h_','1','1','1'),('mpsolve','3.1.4','not mps_secular_regeneration_h_','1','1','1'),('mpsolve','3.1.4','not mps_solve_h_','2','1','1'),('mpsolve','3.1.4','not mps_sort_h_','2','1','1'),('mpsolve','3.1.4','not mps_starting_configuration_h_','2','1','1'),('mpsolve','3.1.4','not mps_starting_h_','2','1','1'),('mpsolve','3.1.4','not mps_status_h','1','1','1'),('mpsolve','3.1.4','not mps_threading_h_','1','1','1'),('mpsolve','3.1.4','not mps_tools_h_','1','1','1'),('mpsolve','3.1.4','not mps_touch_h_','2','1','1'),('mpsolve','3.1.4','not mps_types_h_','1','1','1'),('mpsolve','3.1.4','not mps_use_builtin_complex','1','1','1'),('mpsolve','3.1.4','not mpz_swap','1','1','1'),('mpsolve','3.1.4','not mpz_tstbit','1','1','1'),('mpsolve','3.1.4','not polfileeditor_h','1','1','1'),('mpsolve','3.1.4','not polfileeditorwindow_h','1','1','1'),('mpsolve','3.1.4','not qquickrootsrenderer_h','1','1','1'),('mpsolve','3.1.4','not rand_source','1','1','1'),('mpsolve','3.1.4','not secular_h','1','1','1'),('mpsolve','3.1.4','not size_max','2','1','1'),('mpsolve','3.1.4','not ssize_max','2','1','1'),('mpsolve','3.1.4','not xmpsolve_mainqmlview_h','2','1','1'),('mpsolve','3.1.4','not xmpsolve_polynomial_h','1','1','1'),('mpsolve','3.1.4','not xmpsolve_polynomialparser_h','1','1','1'),('mpsolve','3.1.4','not xmpsolve_qrootsrenderer_h','1','1','1'),('mpsolve','3.1.4','not xmpsolve_rootsrenderer_h','1','1','1'),('mpsolve','3.1.4','rand_val','2','1','1'),('mpsolve','3.1.5','not _isatty','2','1','1'),('mpsolve','3.1.5','not isatty','2','1','1');
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

-- Dump completed on 2020-01-05 18:03:34
