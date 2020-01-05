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
-- Table structure for table `xfig_feat_metrics`
--

DROP TABLE IF EXISTS `xfig_feat_metrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xfig_feat_metrics` (
  `name` varchar(255) DEFAULT NULL,
  `release_number` varchar(255) DEFAULT NULL,
  `feature` varchar(255) DEFAULT NULL,
  `comm` varchar(255) DEFAULT NULL,
  `adev` varchar(255) DEFAULT NULL,
  `ddev` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xfig_feat_metrics`
--

LOCK TABLES `xfig_feat_metrics` WRITE;
/*!40000 ALTER TABLE `xfig_feat_metrics` DISABLE KEYS */;
INSERT INTO `xfig_feat_metrics` VALUES ('xfig','3.2.0','color','2','1','1'),('xfig','3.2.1','color','1','1','2'),('xfig','3.2.0','comp_led','1','1','1'),('xfig','3.2.1','comp_led','1','1','2'),('xfig','3.2.2','comp_led','1','1','3'),('xfig','3.2.3','comp_led','2','1','4'),('xfig','3.2.4','comp_led','2','1','5'),('xfig','3.2.5','comp_led','1','1','6'),('xfig','3.2.0','gsbit','2','1','1'),('xfig','3.2.1','gsbit','1','1','2'),('xfig','3.2.2','gsbit','1','1','3'),('xfig','3.2.3','gsbit','2','1','4'),('xfig','3.2.0','i18n','2','1','1'),('xfig','3.2.1','i18n','1','1','2'),('xfig','3.2.2','i18n','1','1','3'),('xfig','3.2.3','i18n','6','1','4'),('xfig','3.2.4','i18n','2','1','5'),('xfig','3.2.5','i18n','5','2','7'),('xfig','3.2.6','i18n','2','1','8'),('xfig','3.2.0','installmanpage','2','1','1'),('xfig','3.2.1','installmanpage','1','1','2'),('xfig','3.2.3','installmanpage','1','1','3'),('xfig','3.2.5','installmanpage','1','1','4'),('xfig','3.2.0','jpeg_quality','1','1','1'),('xfig','3.2.0','no_compkeydb','1','1','1'),('xfig','3.2.1','no_compkeydb','1','1','2'),('xfig','3.2.2','no_compkeydb','1','1','3'),('xfig','3.2.3','no_compkeydb','1','1','4'),('xfig','3.2.4','no_compkeydb','1','1','5'),('xfig','3.2.5','no_compkeydb','2','2','7'),('xfig','3.2.6','no_compkeydb','1','1','8'),('xfig','3.2.0','nostrstr','1','1','1'),('xfig','3.2.4','nostrstr','1','1','2'),('xfig','3.2.5','nostrstr','2','2','4'),('xfig','3.2.0','not _xvertext_included_ ','1','1','1'),('xfig','3.2.1','not _xvertext_included_ ','1','1','2'),('xfig','3.2.5','not _xvertext_included_ ','1','1','3'),('xfig','3.2.6','not _xvertext_included_ ','1','1','4'),('xfig','3.2.0','not color','1','1','1'),('xfig','3.2.1','not color','1','1','2'),('xfig','3.2.0','not d_spline_h','2','1','1'),('xfig','3.2.1','not d_spline_h','1','1','2'),('xfig','3.2.0','not d_subspline_h','2','1','1'),('xfig','3.2.1','not d_subspline_h','1','1','2'),('xfig','3.2.4','not d_subspline_h','1','1','3'),('xfig','3.2.5','not d_subspline_h','1','1','4'),('xfig','3.2.0','not defsmpfac','1','1','1'),('xfig','3.2.1','not defsmpfac','1','1','2'),('xfig','3.2.3','not defsmpfac','1','1','3'),('xfig','3.2.4','not defsmpfac','1','1','4'),('xfig','3.2.0','not dontkludge','1','1','1'),('xfig','3.2.1','not dontkludge','1','1','2'),('xfig','3.2.0','not e_convert_h','2','1','1'),('xfig','3.2.1','not e_convert_h','1','1','2'),('xfig','3.2.4','not e_convert_h','1','1','3'),('xfig','3.2.5','not e_convert_h','1','1','4'),('xfig','3.2.0','not e_edit_h','2','1','1'),('xfig','3.2.1','not e_edit_h','1','1','2'),('xfig','3.2.3','not e_edit_h','1','1','3'),('xfig','3.2.4','not e_edit_h','2','1','4'),('xfig','3.2.5','not e_edit_h','1','1','5'),('xfig','3.2.0','not f_neuclrtab_h','2','1','1'),('xfig','3.2.1','not f_neuclrtab_h','1','1','2'),('xfig','3.2.0','not fig_h','2','1','1'),('xfig','3.2.1','not fig_h','1','1','2'),('xfig','3.2.3','not fig_h','1','1','3'),('xfig','3.2.4','not fig_h','1','1','4'),('xfig','3.2.5','not fig_h','2','2','6'),('xfig','3.2.0','not figx_h','2','1','1'),('xfig','3.2.1','not figx_h','1','1','2'),('xfig','3.2.0','not i18n','2','1','1'),('xfig','3.2.1','not i18n','1','1','2'),('xfig','3.2.0','not i18n_no_preedit','2','1','1'),('xfig','3.2.1','not i18n_no_preedit','1','1','2'),('xfig','3.2.2','not i18n_no_preedit','1','1','3'),('xfig','3.2.3','not i18n_no_preedit','1','1','4'),('xfig','3.2.0','not m_2pi','1','1','1'),('xfig','3.2.1','not m_2pi','1','1','2'),('xfig','3.2.0','not m_pi','1','1','1'),('xfig','3.2.1','not m_pi','1','1','2'),('xfig','3.2.0','not max_topruler_wd','1','1','1'),('xfig','3.2.1','not max_topruler_wd','1','1','2'),('xfig','3.2.2','not max_topruler_wd','1','1','3'),('xfig','3.2.3','not max_topruler_wd','1','1','4'),('xfig','3.2.0','not mode_h','2','1','1'),('xfig','3.2.1','not mode_h','1','1','2'),('xfig','3.2.5','not mode_h','3','1','3'),('xfig','3.2.6','not mode_h','2','1','4'),('xfig','3.2.0','not no_compkeydb','1','1','1'),('xfig','3.2.1','not no_compkeydb','1','1','2'),('xfig','3.2.3','not no_compkeydb','1','1','3'),('xfig','3.2.4','not no_compkeydb','2','1','4'),('xfig','3.2.5','not no_compkeydb','1','1','5'),('xfig','3.2.0','not object_h','2','1','1'),('xfig','3.2.1','not object_h','1','1','2'),('xfig','3.2.0','not paintop_h','2','1','1'),('xfig','3.2.1','not paintop_h','1','1','2'),('xfig','3.2.0','not patchlevel_h','2','1','1'),('xfig','3.2.1','not patchlevel_h','2','1','2'),('xfig','3.2.2','not patchlevel_h','2','1','3'),('xfig','3.2.3','not patchlevel_h','6','1','4'),('xfig','3.2.4','not patchlevel_h','2','1','5'),('xfig','3.2.5','not patchlevel_h','5','2','7'),('xfig','3.2.0','not resources_h','2','1','1'),('xfig','3.2.1','not resources_h','1','1','2'),('xfig','3.2.0','not sysv','2','1','1'),('xfig','3.2.1','not sysv','1','1','2'),('xfig','3.2.3','not sysv','1','1','3'),('xfig','3.2.4','not sysv','2','1','4'),('xfig','3.2.5','not sysv','2','2','6'),('xfig','3.2.0','not u_bound_h','2','1','1'),('xfig','3.2.1','not u_bound_h','1','1','2'),('xfig','3.2.4','not u_bound_h','1','1','3'),('xfig','3.2.5','not u_bound_h','1','1','4'),('xfig','3.2.0','not u_create_h','2','1','1'),('xfig','3.2.1','not u_create_h','1','1','2'),('xfig','3.2.2','not u_create_h','1','1','3'),('xfig','3.2.3','not u_create_h','1','1','4'),('xfig','3.2.4','not u_create_h','1','1','5'),('xfig','3.2.5','not u_create_h','1','1','6'),('xfig','3.2.0','not u_draw_h','2','1','1'),('xfig','3.2.1','not u_draw_h','1','1','2'),('xfig','3.2.3','not u_draw_h','1','1','3'),('xfig','3.2.4','not u_draw_h','2','1','4'),('xfig','3.2.5','not u_draw_h','1','1','5'),('xfig','3.2.0','not u_elastic_h','2','1','1'),('xfig','3.2.1','not u_elastic_h','1','1','2'),('xfig','3.2.0','not u_fonts_h','2','1','1'),('xfig','3.2.1','not u_fonts_h','1','1','2'),('xfig','3.2.4','not u_fonts_h','1','1','3'),('xfig','3.2.5','not u_fonts_h','1','1','4'),('xfig','3.2.0','not u_list_h','2','1','1'),('xfig','3.2.1','not u_list_h','1','1','2'),('xfig','3.2.4','not u_list_h','1','1','3'),('xfig','3.2.5','not u_list_h','1','1','4'),('xfig','3.2.0','not u_markers_h','2','1','1'),('xfig','3.2.1','not u_markers_h','1','1','2'),('xfig','3.2.4','not u_markers_h','1','1','3'),('xfig','3.2.5','not u_markers_h','1','1','4'),('xfig','3.2.0','not u_search_h','2','1','1'),('xfig','3.2.1','not u_search_h','1','1','2'),('xfig','3.2.3','not u_search_h','1','1','3'),('xfig','3.2.4','not u_search_h','2','1','4'),('xfig','3.2.5','not u_search_h','1','1','5'),('xfig','3.2.0','not u_undo_h','2','1','1'),('xfig','3.2.1','not u_undo_h','1','1','2'),('xfig','3.2.0','not useinstalledjpeg','2','1','1'),('xfig','3.2.1','not useinstalledjpeg','1','1','2'),('xfig','3.2.2','not useinstalledjpeg','1','1','3'),('xfig','3.2.3','not useinstalledjpeg','2','1','4'),('xfig','3.2.4','not useinstalledjpeg','1','1','5'),('xfig','3.2.5','not useinstalledjpeg','2','2','7'),('xfig','3.2.0','not version_h','2','1','1'),('xfig','3.2.1','not version_h','1','1','2'),('xfig','3.2.5','not version_h','1','1','3'),('xfig','3.2.0','not w_canvas_h','2','1','1'),('xfig','3.2.1','not w_canvas_h','1','1','2'),('xfig','3.2.0','not w_color_h','2','1','1'),('xfig','3.2.1','not w_color_h','1','1','2'),('xfig','3.2.3','not w_color_h','1','1','3'),('xfig','3.2.4','not w_color_h','1','1','4'),('xfig','3.2.0','not w_dir_h','2','1','1'),('xfig','3.2.1','not w_dir_h','1','1','2'),('xfig','3.2.5','not w_dir_h','1','1','3'),('xfig','3.2.0','not w_drawprim_h','2','1','1'),('xfig','3.2.1','not w_drawprim_h','1','1','2'),('xfig','3.2.3','not w_drawprim_h','1','1','3'),('xfig','3.2.4','not w_drawprim_h','1','1','4'),('xfig','3.2.0','not w_icons_h','2','1','1'),('xfig','3.2.1','not w_icons_h','1','1','2'),('xfig','3.2.5','not w_icons_h','1','1','3'),('xfig','3.2.0','not w_indpanel_h','2','1','1'),('xfig','3.2.1','not w_indpanel_h','1','1','2'),('xfig','3.2.0','not w_mousefun_h','2','1','1'),('xfig','3.2.1','not w_mousefun_h','1','1','2'),('xfig','3.2.4','not w_mousefun_h','1','1','3'),('xfig','3.2.5','not w_mousefun_h','1','1','4'),('xfig','3.2.0','not w_rottext_h','2','1','1'),('xfig','3.2.1','not w_rottext_h','1','1','2'),('xfig','3.2.5','not w_rottext_h','1','1','3'),('xfig','3.2.6','not w_rottext_h','1','1','4'),('xfig','3.2.0','not w_setup_h','2','1','1'),('xfig','3.2.1','not w_setup_h','1','1','2'),('xfig','3.2.0','not w_util_h','2','1','1'),('xfig','3.2.1','not w_util_h','1','1','2'),('xfig','3.2.4','not w_util_h','1','1','3'),('xfig','3.2.5','not w_util_h','1','1','4'),('xfig','3.2.0','not w_zoom_h','2','1','1'),('xfig','3.2.1','not w_zoom_h','1','1','2'),('xfig','3.2.0','setlocale','1','1','1'),('xfig','3.2.3','setlocale','1','1','2'),('xfig','3.2.4','setlocale','2','1','3'),('xfig','3.2.5','setlocale','2','2','5'),('xfig','3.2.0','use_dirent','1','1','1'),('xfig','3.2.1','use_dirent','1','1','2'),('xfig','3.2.2','use_dirent','1','1','3'),('xfig','3.2.3','use_dirent','1','1','4'),('xfig','3.2.0','use_gif','2','1','1'),('xfig','3.2.1','use_gif','1','1','2'),('xfig','3.2.2','use_gif','1','1','3'),('xfig','3.2.3','use_gif','1','1','4'),('xfig','3.2.0','use_inline','2','1','1'),('xfig','3.2.1','use_inline','1','1','2'),('xfig','3.2.2','use_inline','1','1','3'),('xfig','3.2.3','use_inline','1','1','4'),('xfig','3.2.5','use_inline','1','1','5'),('xfig','3.2.0','use_jpeg','2','1','1'),('xfig','3.2.1','use_jpeg','1','1','2'),('xfig','3.2.2','use_jpeg','1','1','3'),('xfig','3.2.3','use_jpeg','4','1','4'),('xfig','3.2.4','use_jpeg','2','1','5'),('xfig','3.2.5','use_jpeg','2','2','7'),('xfig','3.2.6','use_jpeg','2','1','8'),('xfig','3.2.0','use_small_icons','1','1','1'),('xfig','3.2.1','use_small_icons','1','1','2'),('xfig','3.2.5','use_small_icons','3','1','3'),('xfig','3.2.0','use_xpm','2','1','1'),('xfig','3.2.1','use_xpm','1','1','2'),('xfig','3.2.2','use_xpm','1','1','3'),('xfig','3.2.3','use_xpm','5','1','4'),('xfig','3.2.4','use_xpm','2','1','5'),('xfig','3.2.5','use_xpm','6','2','7'),('xfig','3.2.6','use_xpm','3','1','8'),('xfig','3.2.0','use_xpm_icon','1','1','1'),('xfig','3.2.1','use_xpm_icon','1','1','2'),('xfig','3.2.2','use_xpm_icon','1','1','3'),('xfig','3.2.3','use_xpm_icon','2','1','4'),('xfig','3.2.4','use_xpm_icon','2','1','5'),('xfig','3.2.5','use_xpm_icon','5','2','7'),('xfig','3.2.6','use_xpm_icon','1','1','8'),('xfig','3.2.0','usegif','2','1','1'),('xfig','3.2.1','usegif','1','1','2'),('xfig','3.2.2','usegif','1','1','3'),('xfig','3.2.3','usegif','1','1','4'),('xfig','3.2.0','useinstalledjpeg','2','1','1'),('xfig','3.2.1','useinstalledjpeg','1','1','2'),('xfig','3.2.2','useinstalledjpeg','1','1','3'),('xfig','3.2.3','useinstalledjpeg','2','1','4'),('xfig','3.2.4','useinstalledjpeg','2','1','5'),('xfig','3.2.5','useinstalledjpeg','4','2','7'),('xfig','3.2.0','usejpeg','2','1','1'),('xfig','3.2.1','usejpeg','1','1','2'),('xfig','3.2.2','usejpeg','1','1','3'),('xfig','3.2.3','usejpeg','3','1','4'),('xfig','3.2.4','usejpeg','2','1','5'),('xfig','3.2.5','usejpeg','4','2','7'),('xfig','3.2.0','usesmallicons','1','1','1'),('xfig','3.2.1','usesmallicons','1','1','2'),('xfig','3.2.3','usesmallicons','1','1','3'),('xfig','3.2.4','usesmallicons','1','1','4'),('xfig','3.2.5','usesmallicons','1','1','5'),('xfig','3.2.0','usexpm','2','1','1'),('xfig','3.2.1','usexpm','1','1','2'),('xfig','3.2.2','usexpm','1','1','3'),('xfig','3.2.3','usexpm','3','1','4'),('xfig','3.2.4','usexpm','2','1','5'),('xfig','3.2.5','usexpm','3','2','7'),('xfig','3.2.0','usexpm_icon','1','1','1'),('xfig','3.2.2','usexpm_icon','1','1','2'),('xfig','3.2.3','usexpm_icon','2','1','3'),('xfig','3.2.4','usexpm_icon','1','1','4'),('xfig','3.2.5','usexpm_icon','1','1','5'),('xfig','3.2.0','v4_0','1','1','1'),('xfig','3.2.1','v4_0','1','1','2'),('xfig','3.2.2','v4_0','1','1','3'),('xfig','3.2.3','v4_0','3','1','4'),('xfig','3.2.4','v4_0','1','1','5'),('xfig','3.2.0','when_save_yourself_is_fixed','1','1','1'),('xfig','3.2.1','when_save_yourself_is_fixed','1','1','2'),('xfig','3.2.2','when_save_yourself_is_fixed','1','1','3'),('xfig','3.2.3','when_save_yourself_is_fixed','2','1','4'),('xfig','3.2.4','when_save_yourself_is_fixed','2','1','5'),('xfig','3.2.5','when_save_yourself_is_fixed','1','1','6'),('xfig','3.2.2','center_page','1','1','1'),('xfig','3.2.3','center_page','2','1','2'),('xfig','3.2.4','center_page','1','1','3'),('xfig','3.2.2','eps_rot_fixed','1','1','1'),('xfig','3.2.3','eps_rot_fixed','1','1','2'),('xfig','3.2.2','have_no_dirent','1','1','1'),('xfig','3.2.3','have_no_dirent','3','1','2'),('xfig','3.2.4','have_no_dirent','1','1','3'),('xfig','3.2.5','have_no_dirent','4','2','5'),('xfig','3.2.2','i18n_use_preedit','1','1','1'),('xfig','3.2.3','i18n_use_preedit','2','1','2'),('xfig','3.2.4','i18n_use_preedit','2','1','3'),('xfig','3.2.5','i18n_use_preedit','2','2','5'),('xfig','3.2.2','linux','1','1','1'),('xfig','3.2.3','linux','1','1','2'),('xfig','3.2.2','newarrowtypes','1','1','1'),('xfig','3.2.3','newarrowtypes','2','1','2'),('xfig','3.2.4','newarrowtypes','2','1','3'),('xfig','3.2.5','newarrowtypes','3','2','5'),('xfig','3.2.2','not _figlist_h','1','1','1'),('xfig','3.2.3','not _figlist_h','3','1','2'),('xfig','3.2.4','not _figlist_h','1','1','3'),('xfig','3.2.2','not _figlistp_h','1','1','1'),('xfig','3.2.3','not _figlistp_h','1','1','2'),('xfig','3.2.2','not _figsmebsb_h','1','1','1'),('xfig','3.2.3','not _figsmebsb_h','1','1','2'),('xfig','3.2.5','not _figsmebsb_h','1','1','3'),('xfig','3.2.2','not _figsmebsbp_h','1','1','1'),('xfig','3.2.3','not _figsmebsbp_h','1','1','2'),('xfig','3.2.2','not max_sideruler_ht','1','1','1'),('xfig','3.2.3','not max_sideruler_ht','1','1','2'),('xfig','3.2.2','notdef  ','1','1','1'),('xfig','3.2.3','notdef  ','2','1','2'),('xfig','3.2.4','notdef  ','1','1','3'),('xfig','3.2.2','testing_grids','1','1','1'),('xfig','3.2.3','testing_grids','2','1','2'),('xfig','3.2.4','testing_grids','1','1','3'),('xfig','3.2.2','xaw3d','1','1','1'),('xfig','3.2.3','xaw3d','5','1','2'),('xfig','3.2.4','xaw3d','2','1','3'),('xfig','3.2.5','xaw3d','5','2','5'),('xfig','3.2.6','xaw3d','1','1','6'),('xfig','3.2.3','_posix_source','1','1','1'),('xfig','3.2.4','_posix_source','1','1','2'),('xfig','3.2.5','_posix_source','1','1','3'),('xfig','3.2.3','apollo','1','1','1'),('xfig','3.2.4','apollo','1','1','2'),('xfig','3.2.3','cache_fid','1','1','1'),('xfig','3.2.4','cache_fid','1','1','2'),('xfig','3.2.3','cache_ximages','1','1','1'),('xfig','3.2.4','cache_ximages','1','1','2'),('xfig','3.2.3','digitize','1','1','1'),('xfig','3.2.4','digitize','2','1','2'),('xfig','3.2.5','digitize','2','2','4'),('xfig','3.2.6','digitize','1','1','5'),('xfig','3.2.3','enametoolong','1','1','1'),('xfig','3.2.4','enametoolong','1','1','2'),('xfig','3.2.3','fixed_japanese_pdf','1','1','1'),('xfig','3.2.4','fixed_japanese_pdf','2','1','2'),('xfig','3.2.5','fixed_japanese_pdf','2','1','3'),('xfig','3.2.3','have_no_strcasecmp','1','1','1'),('xfig','3.2.4','have_no_strcasecmp','1','1','2'),('xfig','3.2.5','have_no_strcasecmp','1','1','3'),('xfig','3.2.3','maxerr','1','1','1'),('xfig','3.2.4','maxerr','1','1','2'),('xfig','3.2.3','maxpathlen','1','1','1'),('xfig','3.2.4','maxpathlen','1','1','2'),('xfig','3.2.5','maxpathlen','1','1','3'),('xfig','3.2.3','need_strerror','2','1','1'),('xfig','3.2.5','need_strerror','2','2','3'),('xfig','3.2.3','not _smebsb_h','1','1','1'),('xfig','3.2.4','not _smebsb_h','1','1','2'),('xfig','3.2.3','not _smecascade_h','1','1','1'),('xfig','3.2.3','not _xawsmebsbp_h','1','1','1'),('xfig','3.2.4','not _xawsmebsbp_h','1','1','2'),('xfig','3.2.5','not _xawsmebsbp_h','1','1','3'),('xfig','3.2.6','not _xawsmebsbp_h','1','1','4'),('xfig','3.2.3','not _xawsmecascadep_h','1','1','1'),('xfig','3.2.3','not path_max','1','1','1'),('xfig','3.2.4','not path_max','1','1','2'),('xfig','3.2.5','not path_max','2','1','3'),('xfig','3.2.6','not path_max','2','1','4'),('xfig','3.2.3','not s_iwgrp','1','1','1'),('xfig','3.2.4','not s_iwgrp','1','1','2'),('xfig','3.2.3','not s_iwoth','1','1','1'),('xfig','3.2.4','not s_iwoth','1','1','2'),('xfig','3.2.3','not s_iwusr','1','1','1'),('xfig','3.2.4','not s_iwusr','1','1','2'),('xfig','3.2.3','not u_smartsearch_h','1','1','1'),('xfig','3.2.4','not u_smartsearch_h','1','1','2'),('xfig','3.2.3','not x_not_posix','1','1','1'),('xfig','3.2.4','not x_not_posix','1','1','2'),('xfig','3.2.5','not x_not_posix','1','1','3'),('xfig','3.2.3','not xaw3d','1','1','1'),('xfig','3.2.4','not xaw3d','1','1','2'),('xfig','3.2.5','not xaw3d','1','1','3'),('xfig','3.2.6','not xaw3d','1','1','4'),('xfig','3.2.3','not xtcfontset','1','1','1'),('xfig','3.2.4','not xtcfontset','1','1','2'),('xfig','3.2.3','not xtnfontset','1','1','1'),('xfig','3.2.4','not xtnfontset','1','1','2'),('xfig','3.2.3','notdef			','1','1','1'),('xfig','3.2.4','notdef			','1','1','2'),('xfig','3.2.3','pcxbug','2','1','1'),('xfig','3.2.4','pcxbug','1','1','2'),('xfig','3.2.3','sel_text','1','1','1'),('xfig','3.2.4','sel_text','2','1','2'),('xfig','3.2.5','sel_text','3','2','4'),('xfig','3.2.3','sigbus','1','1','1'),('xfig','3.2.4','sigbus','1','1','2'),('xfig','3.2.3','speed','1','1','1'),('xfig','3.2.4','speed','1','1','2'),('xfig','3.2.3','use_alpha','1','1','1'),('xfig','3.2.3','use_png','2','1','1'),('xfig','3.2.4','use_png','1','1','2'),('xfig','3.2.3','use_tab','1','1','1'),('xfig','3.2.4','use_tab','2','1','2'),('xfig','3.2.5','use_tab','1','1','3'),('xfig','3.2.3','use_text_bg','2','1','1'),('xfig','3.2.4','use_text_bg','1','1','2'),('xfig','3.2.3','usepng','2','1','1'),('xfig','3.2.4','usepng','1','1','2'),('xfig','3.2.3','wheelmouse','1','1','1'),('xfig','3.2.4','wheelmouse','2','1','2'),('xfig','3.2.5','wheelmouse','1','1','3'),('xfig','3.2.3','wheelmouse  ','1','1','1'),('xfig','3.2.4','wheelmouse  ','2','1','2'),('xfig','3.2.5','wheelmouse  ','1','1','3'),('xfig','3.2.3','x_not_stdc_env','1','1','1'),('xfig','3.2.4','x_not_stdc_env','2','1','2'),('xfig','3.2.5','x_not_stdc_env','2','2','4'),('xfig','3.2.4','clip_line','1','1','1'),('xfig','3.2.5','clip_line','1','1','2'),('xfig','3.2.4','dont_show_depths','1','1','1'),('xfig','3.2.5','dont_show_depths','1','1','2'),('xfig','3.2.4','not c_chop_h','1','1','1'),('xfig','3.2.5','not c_chop_h','1','1','2'),('xfig','3.2.4','not frandom','1','1','1'),('xfig','3.2.5','not frandom','1','1','2'),('xfig','3.2.4','not u_quartic_h','1','1','1'),('xfig','3.2.5','not u_quartic_h','1','1','2'),('xfig','3.2.4','not w_intersect_h','1','1','1'),('xfig','3.2.5','not w_intersect_h','1','1','2'),('xfig','3.2.4','not w_keyboard_h','1','1','1'),('xfig','3.2.5','not w_keyboard_h','1','1','2'),('xfig','3.2.4','not w_snap_h','1','1','1'),('xfig','3.2.5','not w_snap_h','1','1','2'),('xfig','3.2.4','not xaw3d1_5e','1','1','1'),('xfig','3.2.5','not xaw3d1_5e','6','2','3'),('xfig','3.2.6','not xaw3d1_5e','1','1','4'),('xfig','3.2.4','report_xy_always','1','1','1'),('xfig','3.2.5','report_xy_always','2','1','2'),('xfig','3.2.4','xaw3d1_5e','1','1','1'),('xfig','3.2.5','xaw3d1_5e','5','2','3'),('xfig','3.2.6','xaw3d1_5e','1','1','4'),('xfig','3.2.5','__cplusplus','2','1','1'),('xfig','3.2.6','__cplusplus','2','1','2'),('xfig','3.2.5','__gnuc__','1','1','1'),('xfig','3.2.6','__gnuc__','1','1','2'),('xfig','3.2.5','__stdc__','1','1','1'),('xfig','3.2.6','__stdc__','1','1','2'),('xfig','3.2.5','_aix','1','1','1'),('xfig','3.2.6','_aix','1','1','2'),('xfig','3.2.5','_msc_ver','1','1','1'),('xfig','3.2.6','_msc_ver','1','1','2'),('xfig','3.2.5','ancient ','1','1','1'),('xfig','3.2.5','arrows4to14','1','1','1'),('xfig','3.2.5','cray','1','1','1'),('xfig','3.2.5','have_alloca_h','1','1','1'),('xfig','3.2.6','have_alloca_h','1','1','2'),('xfig','3.2.5','have_config_h','2','1','1'),('xfig','3.2.6','have_config_h','1','1','2'),('xfig','3.2.5','have_dirent_h','1','1','1'),('xfig','3.2.5','have_features_h','1','1','1'),('xfig','3.2.5','have_getcwd','1','1','1'),('xfig','3.2.5','have_index','1','1','1'),('xfig','3.2.5','have_inttypes_h','1','1','1'),('xfig','3.2.5','have_limits_h','2','1','1'),('xfig','3.2.6','have_limits_h','1','1','2'),('xfig','3.2.5','have_ndir_h','1','1','1'),('xfig','3.2.5','have_no_strncasecmp','1','1','1'),('xfig','3.2.5','have_rindex','1','1','1'),('xfig','3.2.5','have_stdint_h','1','1','1'),('xfig','3.2.5','have_stdlib_h','1','1','1'),('xfig','3.2.5','have_string_h','2','1','1'),('xfig','3.2.5','have_strings_h','2','1','1'),('xfig','3.2.5','have_sys_dir_h','1','1','1'),('xfig','3.2.5','have_sys_file_h','1','1','1'),('xfig','3.2.5','have_sys_ndir_h','1','1','1'),('xfig','3.2.5','have_sys_stat_h','1','1','1'),('xfig','3.2.5','have_sys_time_h','1','1','1'),('xfig','3.2.6','have_sys_time_h','1','1','2'),('xfig','3.2.5','have_sys_types_h','1','1','1'),('xfig','3.2.5','have_unistd_h','1','1','1'),('xfig','3.2.5','have_vfork_h','1','1','1'),('xfig','3.2.5','isc','2','1','1'),('xfig','3.2.5','luna','1','1','1'),('xfig','3.2.5','mips','1','1','1'),('xfig','3.2.5','motorola','1','1','1'),('xfig','3.2.5','nostdhdrs','1','1','1'),('xfig','3.2.5','not','1','1','1'),('xfig','3.2.5','not __bool_true_false_are_defined','2','1','1'),('xfig','3.2.6','not __bool_true_false_are_defined','1','1','2'),('xfig','3.2.5','not __cplusplus','1','1','1'),('xfig','3.2.5','not __freebsd__','2','1','1'),('xfig','3.2.6','not __freebsd__','1','1','2'),('xfig','3.2.5','not __gnuc__','1','1','1'),('xfig','3.2.5','not _xfuncs_h_','2','1','1'),('xfig','3.2.5','not _xosdefs_h_','1','1','1'),('xfig','3.2.5','not _xvertext_included_','1','1','1'),('xfig','3.2.6','not _xvertext_included_','1','1','2'),('xfig','3.2.5','not alloca ','1','1','1'),('xfig','3.2.6','not alloca ','1','1','2'),('xfig','3.2.5','not bool','2','1','1'),('xfig','3.2.6','not bool','1','1','2'),('xfig','3.2.5','not cache_size_limit','1','1','1'),('xfig','3.2.6','not cache_size_limit','1','1','2'),('xfig','3.2.5','not dirstruct','1','1','1'),('xfig','3.2.6','not dirstruct','1','1','2'),('xfig','3.2.5','not false','2','1','1'),('xfig','3.2.6','not false','1','1','2'),('xfig','3.2.5','not have_setlocale','1','1','1'),('xfig','3.2.5','not have_strerror','2','1','1'),('xfig','3.2.6','not have_strerror','1','1','2'),('xfig','3.2.5','not strchr','1','1','1'),('xfig','3.2.5','not strrchr','1','1','1'),('xfig','3.2.5','not systype_sysv','1','1','1'),('xfig','3.2.5','not true','2','1','1'),('xfig','3.2.6','not true','1','1','2'),('xfig','3.2.5','not ultrix			','1','1','1'),('xfig','3.2.5','not use_xpm','2','1','1'),('xfig','3.2.5','not xcomm','1','1','1'),('xfig','3.2.5','sgi','1','1','1'),('xfig','3.2.5','sony','1','1','1'),('xfig','3.2.5','stdc_headers','1','1','1'),('xfig','3.2.5','sysv','2','1','1'),('xfig','3.2.5','sysv ','2','1','1'),('xfig','3.2.6','sysv ','1','1','2'),('xfig','3.2.5','sysv386','1','1','1'),('xfig','3.2.5','use_xpm and rename','1','1','1'),('xfig','3.2.5','use_xpm_splash','1','1','1'),('xfig','3.2.6','use_xpm_splash','2','1','2'),('xfig','3.2.5','usl','2','1','1'),('xfig','3.2.6','usl','1','1','2'),('xfig','3.2.5','utek','1','1','1'),('xfig','3.2.5','vax','1','1','1'),('xfig','3.2.5','x_usebfuncs','2','1','1'),('xfig','3.2.5','xawclientlibs','2','2','2'),('xfig','3.2.6','i18n etc confused','1','1','1'),('xfig','3.2.6','use_splash','1','1','1');
/*!40000 ALTER TABLE `xfig_feat_metrics` ENABLE KEYS */;
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
