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
-- Table structure for table `gnumeric_metrics`
--

DROP TABLE IF EXISTS `gnumeric_metrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gnumeric_metrics` (
  `name` varchar(255) DEFAULT NULL,
  `release_number` varchar(255) DEFAULT NULL,
  `feature` varchar(255) DEFAULT NULL,
  `comm` varchar(255) DEFAULT NULL,
  `adev` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gnumeric_metrics`
--

LOCK TABLES `gnumeric_metrics` WRITE;
/*!40000 ALTER TABLE `gnumeric_metrics` DISABLE KEYS */;
INSERT INTO `gnumeric_metrics` VALUES ('gnumeric','1_10_0','__dietlibc__','2','1'),('gnumeric','1_10_0','__elf__','2','1'),('gnumeric','1_10_0','__glibc__','2','1'),('gnumeric','1_10_0','__lp64__\';','2','1'),('gnumeric','1_10_0','_largefile64_source','2','1'),('gnumeric','1_10_0','_win32','1','1'),('gnumeric','1_10_0','assocquerystring','1','1'),('gnumeric','1_10_0','debug_dnd','2','1'),('gnumeric','1_10_0','debug_evaluation','1','1'),('gnumeric','1_10_0','e2big','1','1'),('gnumeric','1_10_0','eacces','1','1'),('gnumeric','1_10_0','einval','1','1'),('gnumeric','1_10_0','eio','1','1'),('gnumeric','1_10_0','eisdir','1','1'),('gnumeric','1_10_0','elibbad','1','1'),('gnumeric','1_10_0','eloop','1','1'),('gnumeric','1_10_0','emfile','1','1'),('gnumeric','1_10_0','enable_nls','1','1'),('gnumeric','1_10_0','enametoolong','1','1'),('gnumeric','1_10_0','enfile','1','1'),('gnumeric','1_10_0','enoent','1','1'),('gnumeric','1_10_0','enoexec','1','1'),('gnumeric','1_10_0','enomem','1','1'),('gnumeric','1_10_0','enotdir','1','1'),('gnumeric','1_10_0','eperm','1','1'),('gnumeric','1_10_0','etxtbusy','1','1'),('gnumeric','1_10_0','g_os_win32','3','1'),('gnumeric','1_10_0','gnm_no_mailto','1','1'),('gnumeric','1_10_0','gnumeric_complex_body','1','1'),('gnumeric','1_10_0','have_g_date_set_time_t','1','1'),('gnumeric','1_10_0','have_g_hash_table_get_keys','2','1'),('gnumeric','1_10_0','have_g_slice_alloc','1','1'),('gnumeric','1_10_0','have_gtk_adjustment_configure','2','2'),('gnumeric','1_10_0','have_gtk_dialog_get_content_area','1','1'),('gnumeric','1_10_0','have_gtk_entry_set_icon_from_stock','5','1'),('gnumeric','1_10_0','have_pango_font_map_create_context','1','1'),('gnumeric','1_10_0','nope_largefile64_source','2','1'),('gnumeric','1_10_0','oo_debug_objs','1','1'),('gnumeric','1_10_10','__gnuc__','1','1'),('gnumeric','1_10_10','debug_axis','2','1'),('gnumeric','1_10_10','debug_style','1','1'),('gnumeric','1_10_10','debug_style_list','1','1'),('gnumeric','1_10_10','enable_nls','1','1'),('gnumeric','1_10_10','g_disable_checks','1','1'),('gnumeric','1_10_10','g_enable_debug','1','1'),('gnumeric','1_10_10','g_os_win32','8','3'),('gnumeric','1_10_10','gnm_no_mailto','2','1'),('gnumeric','1_10_10','gnm_use_hildon','4','3'),('gnumeric','1_10_10','gnm_with_gnome','1','1'),('gnumeric','1_10_10','gnm_with_long_double','1','1'),('gnumeric','1_10_10','gnome_param_goption_context','1','1'),('gnumeric','1_10_10','gnumeric_complex_body','1','1'),('gnumeric','1_10_10','gnumeric_complex_implementation','1','1'),('gnumeric','1_10_10','go_snapshot_svg','2','1'),('gnumeric','1_10_10','have_gdk_cairo_set_source_rgba','2','1'),('gnumeric','1_10_10','have_gtk_adjustment_configure','2','2'),('gnumeric','1_10_10','have_gtk_entry_get_buffer','5','3'),('gnumeric','1_10_10','have_gtk_entry_set_icon_from_stock','6','2'),('gnumeric','1_10_10','have_gtk_entry_text_area','2','2'),('gnumeric','1_10_10','have_gtk_handle_box_float_window','2','1'),('gnumeric','1_10_10','have_gtk_object_destroy','2','2'),('gnumeric','1_10_10','have_gtk_orientable_set_orientation','1','1'),('gnumeric','1_10_10','have_gtk_table_nrows','3','2'),('gnumeric','1_10_10','have_gtk_tree_view_column_button','2','2'),('gnumeric','1_10_10','have_gtk_widget_get_can_focus','2','1'),('gnumeric','1_10_10','have_oo_ns_chart_ooo','1','1'),('gnumeric','1_10_10','have_pango_font_map_create_context','1','1'),('gnumeric','1_10_10','have_sys_resource_h','2','1'),('gnumeric','1_10_10','have_working_gtk_widget_realized','3','2'),('gnumeric','1_10_10','have_wspiapi_h','1','1'),('gnumeric','1_10_10','newsos4','1','1'),('gnumeric','1_10_10','preview_via_pdf','4','2'),('gnumeric','1_10_10','run_thrash_scroll','1','1'),('gnumeric','1_10_10','use_cell_pool','1','1'),('gnumeric','1_10_10','use_internal_copy_of_gtk_notebook','1','1'),('gnumeric','1_11_0','debug_evaluation','1','1'),('gnumeric','1_11_0','debug_style_list','2','2'),('gnumeric','1_11_0','gnm_with_gtk','1','1'),('gnumeric','1_11_0','gnm_with_long_double','2','1'),('gnumeric','1_11_0','have_gsf_odf_out_get_version','1','1'),('gnumeric','1_11_0','new_ui','2','1'),('gnumeric','1_11_0','use_guru','1','1'),('gnumeric','1_12_0','assocquerystring','1','1'),('gnumeric','1_12_0','debug_axis','1','1'),('gnumeric','1_12_0','debug_colrow','1','1'),('gnumeric','1_12_0','debug_corba','1','1'),('gnumeric','1_12_0','debug_ebd0','1','1'),('gnumeric','1_12_0','debug_expr_stack','1','1'),('gnumeric','1_12_0','debug_format','1','1'),('gnumeric','1_12_0','debug_pfuncinverter','2','1'),('gnumeric','1_12_0','debug_rldb','1','1'),('gnumeric','1_12_0','debug_style','1','1'),('gnumeric','1_12_0','g_os_win32','6','1'),('gnumeric','1_12_0','gnm_enable_solver','1','1'),('gnumeric','1_12_0','gnm_no_mailto','1','1'),('gnumeric','1_12_0','gnm_reduces_trig_range','3','1'),('gnumeric','1_12_0','gnm_supplies_erfcl','1','1'),('gnumeric','1_12_0','gnm_supplies_erfl','1','1'),('gnumeric','1_12_0','gnm_supplies_lgamma','2','1'),('gnumeric','1_12_0','gnm_supplies_lgamma_r','2','1'),('gnumeric','1_12_0','gnm_with_gtk','1','1'),('gnumeric','1_12_0','gnm_with_long_double','2','1'),('gnumeric','1_12_0','have_erfcl','1','1'),('gnumeric','1_12_0','have_erfl','2','1'),('gnumeric','1_12_0','have_gtk_handle_box_float_window','1','1'),('gnumeric','1_12_0','have_ieee754_h','1','1'),('gnumeric','1_12_0','have_ieeefp_h','1','1'),('gnumeric','1_12_0','have_langinfo_h','1','1'),('gnumeric','1_12_0','have_mkdtemp','1','1'),('gnumeric','1_12_0','have_oo_ns_chart_ooo','2','1'),('gnumeric','1_12_0','have_sunmath_h','4','2'),('gnumeric','1_12_0','have_ynl','1','1'),('gnumeric','1_12_0','ieee_754','11','1'),('gnumeric','1_12_0','mathlib_standalone','4','1'),('gnumeric','1_12_0','need_fake_erfcgnum','1','1'),('gnumeric','1_12_0','need_fake_erfgnum','1','1'),('gnumeric','1_12_0','need_fake_yngnum','1','1'),('gnumeric','1_12_0','nomore_for_threads','1','1'),('gnumeric','1_12_0','px_memory_debugging','1','1'),('gnumeric','1_12_0','use_guru','1','1'),('gnumeric','1_12_10','(bonobo_ui_internal)\\s*$|\\#if','1','1'),('gnumeric','1_12_10','debug_axis','8','1'),('gnumeric','1_12_10','debug_bisection','2','1'),('gnumeric','1_12_10','debug_color','1','1'),('gnumeric','1_12_10','debug_format','2','1'),('gnumeric','1_12_10','g_os_win32','3','1'),('gnumeric','1_12_10','gnm_no_mailto','2','1'),('gnumeric','1_12_10','have_gsf_odf_out_get_version','1','1'),('gnumeric','1_12_10','have_gsf_open_pkg_foreach_rel','1','1'),('gnumeric','1_12_10','have_gtk_handle_box_float_window','1','1'),('gnumeric','1_12_10','have_oo_ns_chart_ooo','1','1'),('gnumeric','1_12_10','have_setenv','1','1'),('gnumeric','1_12_10','use_guru','1','1'),('gnumeric','1_12_10','win32','2','1'),('gnumeric','1_12_20','_libc','1','1'),('gnumeric','1_12_20','debug_axis','6','1'),('gnumeric','1_12_20','debug_color','2','1'),('gnumeric','1_12_20','debug_ebd0','2','1'),('gnumeric','1_12_20','debug_parser','1','1'),('gnumeric','1_12_20','gnm_with_long_double','3','1'),('gnumeric','1_12_20','ieee_754','1','1'),('gnumeric','1_12_20','mathlib_standalone','1','1'),('gnumeric','1_12_30','debug_axis','2','1'),('gnumeric','1_12_30','debug_ref_count','1','1'),('gnumeric','1_12_30','g_os_win32','4','1'),('gnumeric','1_12_30','gnm_reduces_trig_range','1','1'),('gnumeric','1_12_30','gnm_supplies_erfl','1','1'),('gnumeric','1_12_30','gnm_with_long_double','1','1'),('gnumeric','1_12_30','have_fpu_control_h','1','1'),('gnumeric','1_12_30','have_uname','1','1'),('gnumeric','1_12_30','soup.','1','1'),('gnumeric','1_12_30','win32','1','1');
/*!40000 ALTER TABLE `gnumeric_metrics` ENABLE KEYS */;
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
