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
-- Table structure for table `libxml2_metrics`
--

DROP TABLE IF EXISTS `libxml2_metrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libxml2_metrics` (
  `name` varchar(255) DEFAULT NULL,
  `release_number` varchar(255) DEFAULT NULL,
  `feature` varchar(255) DEFAULT NULL,
  `comm` varchar(255) DEFAULT NULL,
  `adev` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libxml2_metrics`
--

LOCK TABLES `libxml2_metrics` WRITE;
/*!40000 ALTER TABLE `libxml2_metrics` DISABLE KEYS */;
INSERT INTO `libxml2_metrics` VALUES ('libxml2','2.9.0','__cplusplus','2','1'),('libxml2','2.9.0','__gnuc__','2','1'),('libxml2','2.9.0','_win32','1','1'),('libxml2','2.9.0','_winsockapi_','1','1'),('libxml2','2.9.0','bottom_buf','1','1'),('libxml2','2.9.0','bottom_dict','1','1'),('libxml2','2.9.0','bottom_globals','1','1'),('libxml2','2.9.0','bottom_tree','1','1'),('libxml2','2.9.0','bottom_xmlio','1','1'),('libxml2','2.9.0','bottom_xmlreader','1','1'),('libxml2','2.9.0','bottom_xmlsave','1','1'),('libxml2','2.9.0','bottom_xmlschemas','1','1'),('libxml2','2.9.0','bottom_xmlwriter','1','1'),('libxml2','2.9.0','debug','3','1'),('libxml2','2.9.0','debug_automata','1','1'),('libxml2','2.9.0','debug_err','1','1'),('libxml2','2.9.0','debug_grow','1','1'),('libxml2','2.9.0','debug_http','1','1'),('libxml2','2.9.0','debug_loader','1','1'),('libxml2','2.9.0','debug_push','2','1'),('libxml2','2.9.0','debug_ranges','1','1'),('libxml2','2.9.0','debug_regexp_exec','1','1'),('libxml2','2.9.0','debug_regexp_graph','1','1'),('libxml2','2.9.0','debug_streaming','1','1'),('libxml2','2.9.0','debug_threads','1','1'),('libxml2','2.9.0','dict_debug_patterns','1','1'),('libxml2','2.9.0','dv','1','1'),('libxml2','2.9.0','hash_randomization','1','1'),('libxml2','2.9.0','have_errno_h','1','1'),('libxml2','2.9.0','have_fcntl_h','1','1'),('libxml2','2.9.0','have_ftime','1','1'),('libxml2','2.9.0','have_mmap','1','1'),('libxml2','2.9.0','have_pthread_h','2','2'),('libxml2','2.9.0','have_rand_r','1','1'),('libxml2','2.9.0','have_sys_time_h','1','1'),('libxml2','2.9.0','have_sys_timeb_h','1','1'),('libxml2','2.9.0','have_zlib_h','1','1'),('libxml2','2.9.0','in_libxml','2','1'),('libxml2','2.9.0','libxml_automata_enabled','1','1'),('libxml2','2.9.0','libxml_debug_enabled','1','1'),('libxml2','2.9.0','libxml_docb_enabled','1','1'),('libxml2','2.9.0','libxml_ftp_enabled','1','1'),('libxml2','2.9.0','libxml_html_enabled','1','1'),('libxml2','2.9.0','libxml_http_enabled','1','1'),('libxml2','2.9.0','libxml_legacy_enabled','1','1'),('libxml2','2.9.0','libxml_output_enabled','1','1'),('libxml2','2.9.0','libxml_push_enabled','2','1'),('libxml2','2.9.0','libxml_reader_enabled','1','1'),('libxml2','2.9.0','libxml_regexp_enabled','1','1'),('libxml2','2.9.0','libxml_sax1_enabled','2','1'),('libxml2','2.9.0','libxml_schemas_enabled','2','1'),('libxml2','2.9.0','libxml_tree_enabled','1','1'),('libxml2','2.9.0','libxml_valid_enabled','1','1'),('libxml2','2.9.0','libxml_writer_enabled','1','1'),('libxml2','2.9.0','libxml_xpath_enabled','2','1'),('libxml2','2.9.0','libxml_xptr_enabled','1','1'),('libxml2','2.9.0','merged_modules','1','1'),('libxml2','2.9.0','pic','1','1'),('libxml2','2.9.0','pybool_check','1','1'),('libxml2','2.9.0','pylong_as_long','1','1'),('libxml2','2.9.0','pyunicode_check','1','1'),('libxml2','2.9.0','standalone','1','1'),('libxml2','2.9.0','support_ip6','1','1'),('libxml2','2.9.1','__cplusplus','2','2'),('libxml2','2.9.1','__os400__','1','1'),('libxml2','2.9.1','__vms','1','1'),('libxml2','2.9.1','debug','1','1'),('libxml2','2.9.1','debug_ftp','1','1'),('libxml2','2.9.1','debug_push','1','1'),('libxml2','2.9.1','debug_regexp_exec','1','1'),('libxml2','2.9.1','enable_named_locals','1','1'),('libxml2','2.9.1','have___va_copy','1','1'),('libxml2','2.9.1','have_errno_h','1','1'),('libxml2','2.9.1','have_lzma_h','1','1'),('libxml2','2.9.1','have_stat','1','1'),('libxml2','2.9.1','have_va_copy','1','1'),('libxml2','2.9.1','have_zlib_h','2','2'),('libxml2','2.9.1','libxml_catalog_enabled','1','1'),('libxml2','2.9.1','libxml_docb_enabled','1','1'),('libxml2','2.9.1','libxml_html_enabled','4','3'),('libxml2','2.9.1','libxml_iconv_enabled','1','1'),('libxml2','2.9.1','libxml_icu_enabled','1','1'),('libxml2','2.9.1','libxml_output_enabled','4','4'),('libxml2','2.9.1','libxml_reader_enabled','2','2'),('libxml2','2.9.1','libxml_regexp_enabled','1','1'),('libxml2','2.9.1','libxml_thread_enabled','2','2'),('libxml2','2.9.1','libxml_tree_enabled','1','1'),('libxml2','2.9.1','libxml_valid_enabled','1','1'),('libxml2','2.9.1','libxml_xpath_enabled','5','2'),('libxml2','2.9.1','libxml_xptr_enabled','1','1'),('libxml2','2.9.1','o_binary','1','1'),('libxml2','2.9.1','oldxml','1','1'),('libxml2','2.9.1','pyunicode_check','1','1'),('libxml2','2.9.1','trio_replace_stdio','1','1'),('libxml2','2.9.1','xp_optimized_non_elem_comparison','1','1'),('libxml2','2.9.2','__cplusplus','2','1'),('libxml2','2.9.2','__gnuc__','1','1'),('libxml2','2.9.2','(daniel','1','1'),('libxml2','2.9.2','bottom_sax2','1','1'),('libxml2','2.9.2','bottom_tree','1','1'),('libxml2','2.9.2','bottom_xpath','1','1'),('libxml2','2.9.2','debug_memory','1','1'),('libxml2','2.9.2','debug_push','1','1'),('libxml2','2.9.2','debug_tree','1','1'),('libxml2','2.9.2','have_config_h','1','1'),('libxml2','2.9.2','have_errno_h','1','1'),('libxml2','2.9.2','have_lzma_h','1','1'),('libxml2','2.9.2','have_pthread_h','1','1'),('libxml2','2.9.2','have_zlib_h','1','1'),('libxml2','2.9.2','libxml_catalog_enabled','1','1'),('libxml2','2.9.2','libxml_http_enabled','1','1'),('libxml2','2.9.2','libxml_legacy_enabled','1','1'),('libxml2','2.9.2','libxml_lzma_enabled','1','1'),('libxml2','2.9.2','libxml_output_enabled','1','1'),('libxml2','2.9.2','libxml_sax1_enabled','1','1'),('libxml2','2.9.2','libxml_schemas_enabled','1','1'),('libxml2','2.9.2','libxml_thread_enabled','1','1'),('libxml2','2.9.2','libxml_tree_enabled','2','2'),('libxml2','2.9.2','libxml_xpath_enabled','2','2'),('libxml2','2.9.2','linux','1','1'),('libxml2','2.9.2','mem_list','1','1'),('libxml2','2.9.3','_win32','1','1'),('libxml2','2.9.3','debug_eval_counts','1','1'),('libxml2','2.9.3','libxml_html_enabled','1','1'),('libxml2','2.9.3','libxml_sax1_enabled','1','1'),('libxml2','2.9.3','libxml_xpath_enabled','1','1'),('libxml2','2.9.4','__cplusplus','2','2'),('libxml2','2.9.4','bottom_tree','2','2'),('libxml2','2.9.4','bottom_xmlio','2','2'),('libxml2','2.9.4','debug','1','1'),('libxml2','2.9.4','debug_encoding','2','1'),('libxml2','2.9.4','debug_step','2','1'),('libxml2','2.9.4','have_mmap','1','1'),('libxml2','2.9.4','have_sys_types_h','1','1'),('libxml2','2.9.4','have_zlib_h','1','1'),('libxml2','2.9.4','in_libxml','1','1'),('libxml2','2.9.4','libxml_c14n_enabled','1','1'),('libxml2','2.9.4','libxml_catalog_enabled','3','2'),('libxml2','2.9.4','libxml_debug_enabled','1','1'),('libxml2','2.9.4','libxml_html_enabled','4','3'),('libxml2','2.9.4','libxml_iconv_enabled','1','1'),('libxml2','2.9.4','libxml_icu_enabled','1','1'),('libxml2','2.9.4','libxml_output_enabled','1','1'),('libxml2','2.9.4','libxml_pattern_enabled','1','1'),('libxml2','2.9.4','libxml_push_enabled','2','1'),('libxml2','2.9.4','libxml_reader_enabled','2','1'),('libxml2','2.9.4','libxml_sax1_enabled','5','2'),('libxml2','2.9.4','libxml_schemas_enabled','3','2'),('libxml2','2.9.4','libxml_schematron_enabled','1','1'),('libxml2','2.9.4','libxml_tree_enabled','1','1'),('libxml2','2.9.4','libxml_valid_enabled','3','1'),('libxml2','2.9.4','libxml_xinclude_enabled','1','1'),('libxml2','2.9.4','libxml_xpath_enabled','1','1'),('libxml2','2.9.4','libxml_xptr_enabled','1','1'),('libxml2','2.9.4','linux','1','1'),('libxml2','2.9.4','with_buffer_compat','1','1'),('libxml2','2.9.4','xpath_streaming','2','1'),('libxml2','2.9.5','__gnuc__','1','1'),('libxml2','2.9.5','__linux__','1','1'),('libxml2','2.9.5','in_libxml','1','1'),('libxml2','2.9.5','linux','1','1'),('libxml2','2.9.5','pic','1','1'),('libxml2','2.9.5','xp_debug_obj_usage','1','1'),('libxml2','2.9.5','xpath_streaming','1','1'),('libxml2','2.9.6','__cplusplus','1','1'),('libxml2','2.9.6','__gnuc__','2','1'),('libxml2','2.9.6','__linux__','1','1'),('libxml2','2.9.6','__mingw32__','1','1'),('libxml2','2.9.6','_s_ifmt','1','1'),('libxml2','2.9.6','_s_isdir','1','1'),('libxml2','2.9.6','_win32','1','1'),('libxml2','2.9.6','_win32_wce','1','1'),('libxml2','2.9.6','_winsockapi_','1','1'),('libxml2','2.9.6','have__stat','1','1'),('libxml2','2.9.6','have_ctype_h','1','1'),('libxml2','2.9.6','have_errno_h','1','1'),('libxml2','2.9.6','have_inttypes_h','2','1'),('libxml2','2.9.6','have_pthread_h','2','2'),('libxml2','2.9.6','have_stat','1','1'),('libxml2','2.9.6','have_stdint_h','1','1'),('libxml2','2.9.6','have_sys_time_h','1','1'),('libxml2','2.9.6','have_sys_timeb_h','2','1'),('libxml2','2.9.6','have_sys_types_h','1','1'),('libxml2','2.9.6','have_zlib_h','1','1'),('libxml2','2.9.6','in_libxml','1','1'),('libxml2','2.9.6','interlockedcompareexchangepointer','1','1'),('libxml2','2.9.6','libxml_ftp_enabled','1','1'),('libxml2','2.9.6','libxml_sax1_enabled','1','1'),('libxml2','2.9.6','linux','1','1'),('libxml2','2.9.6','need_sockets','1','1'),('libxml2','2.9.6','pic','1','1'),('libxml2','2.9.6','s_ifdir','1','1'),('libxml2','2.9.6','s_ifmt','1','1'),('libxml2','2.9.6','support_ip6','2','2'),('libxml2','2.9.7','__gnuc__','2','2'),('libxml2','2.9.7','__linux__','1','1'),('libxml2','2.9.7','_debug','1','1'),('libxml2','2.9.7','_win32_wce','1','1'),('libxml2','2.9.7','debug_content','1','1'),('libxml2','2.9.7','debug_idc_node_table','1','1'),('libxml2','2.9.7','degub_expr','1','1'),('libxml2','2.9.7','have_ansidecl_h','1','1'),('libxml2','2.9.7','have_lzma_h','1','1'),('libxml2','2.9.7','have_pthread_h','1','1'),('libxml2','2.9.7','have_stdlib_h','1','1'),('libxml2','2.9.7','have_strings_h','1','1'),('libxml2','2.9.7','have_unistd_h','1','1'),('libxml2','2.9.7','have_zlib_h','1','1'),('libxml2','2.9.7','in_libxml','1','1'),('libxml2','2.9.7','isinf','2','1'),('libxml2','2.9.7','isnan','1','1'),('libxml2','2.9.7','libxml_icu_enabled','1','1'),('libxml2','2.9.7','libxml_lzma_enabled','1','1'),('libxml2','2.9.7','libxml_output_enabled','2','1'),('libxml2','2.9.7','libxml_reader_enabled','1','1'),('libxml2','2.9.7','libxml_tree_enabled','1','1'),('libxml2','2.9.7','libxml_xpath_enabled','1','1'),('libxml2','2.9.7','libxml_zlib_enabled','1','1'),('libxml2','2.9.7','xml_pthread_weak','1','1'),('libxml2','2.9.8','debug_sax_tree','1','1'),('libxml2','2.9.8','isinf','1','1'),('libxml2','2.9.8','libxml_output_enabled','1','1'),('libxml2','2.9.8','libxml_xptr_enabled','2','1'),('libxml2','2.9.9','__clang__','1','1'),('libxml2','2.9.9','__cplusplus','2','1'),('libxml2','2.9.9','__gnuc__','1','1'),('libxml2','2.9.9','_aix','1','1'),('libxml2','2.9.9','_win32','1','1'),('libxml2','2.9.9','bottom_hash','1','1'),('libxml2','2.9.9','debug_compile','1','1'),('libxml2','2.9.9','debug_deriv','1','1'),('libxml2','2.9.9','debug_error','1','1'),('libxml2','2.9.9','debug_expr','1','1'),('libxml2','2.9.9','debug_input','1','1'),('libxml2','2.9.9','debug_step','1','1'),('libxml2','2.9.9','debug_threads','1','1'),('libxml2','2.9.9','debug_tree','1','1'),('libxml2','2.9.9','debug_xinclude','1','1'),('libxml2','2.9.9','degub_expr','1','1'),('libxml2','2.9.9','have_pthread_h','1','1'),('libxml2','2.9.9','have_stdlib_h','1','1'),('libxml2','2.9.9','libxml_automata_enabled','1','1'),('libxml2','2.9.9','libxml_output_enabled','1','1'),('libxml2','2.9.9','libxml_pattern_enabled','2','1'),('libxml2','2.9.9','libxml_push_enabled','2','1'),('libxml2','2.9.9','libxml_reader_enabled','1','1'),('libxml2','2.9.9','libxml_regexp_enabled','2','1'),('libxml2','2.9.9','libxml_sax1_enabled','2','1'),('libxml2','2.9.9','libxml_schemas_enabled','2','1'),('libxml2','2.9.9','libxml_schematron_enabled','1','1'),('libxml2','2.9.9','libxml_valid_enabled','1','1'),('libxml2','2.9.9','libxml_xpath_enabled','1','1'),('libxml2','2.9.9','libxml_xptr_enabled','2','1'),('libxml2','2.9.9','with_tim_sort','1','1'),('libxml2','2.9.9','xp_debug_obj_usage','1','1'),('libxml2','2.9.9','xp_default_cache_on','2','1'),('libxml2','2.9.9','xp_optimized_filter_first','1','1');
/*!40000 ALTER TABLE `libxml2_metrics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-16 14:25:20
