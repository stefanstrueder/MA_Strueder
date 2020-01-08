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
  `ddev` varchar(255) DEFAULT NULL,
  `exp` varchar(255) DEFAULT NULL,
  `oexp` varchar(255) DEFAULT NULL,
  `scat` varchar(255) DEFAULT NULL,
  `tang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xfig_feat_metrics`
--

LOCK TABLES `xfig_feat_metrics` WRITE;
/*!40000 ALTER TABLE `xfig_feat_metrics` DISABLE KEYS */;
INSERT INTO `xfig_feat_metrics` VALUES ('xfig','3.2.0','color','2','1','1','21808','609','4','70'),('xfig','3.2.1','color','1','1','2','36','18','2','66'),('xfig','3.2.0','comp_led','1','1','1','8760','193','1','70'),('xfig','3.2.1','comp_led','1','1','2','8760','193','1','66'),('xfig','3.2.2','comp_led','1','1','3','2489','150','1','37'),('xfig','3.2.3','comp_led','2','1','4','2489','483','2','86'),('xfig','3.2.4','comp_led','2','1','5','20066','573','2','88'),('xfig','3.2.5','comp_led','1','1','6','12800','240','1','143'),('xfig','3.2.0','gsbit','2','1','1','525','95','2','70'),('xfig','3.2.1','gsbit','1','1','2','506','45','1','66'),('xfig','3.2.2','gsbit','1','1','3','2812','112','1','37'),('xfig','3.2.3','gsbit','2','1','4','2812','707','2','86'),('xfig','3.2.0','i18n','2','1','1','2948','4374','21','70'),('xfig','3.2.1','i18n','1','1','2','17745','1985','10','66'),('xfig','3.2.2','i18n','1','1','3','30843','4333','11','37'),('xfig','3.2.3','i18n','6','1','4','30843','12028','34','86'),('xfig','3.2.4','i18n','2','1','5','8034','10144','30','88'),('xfig','3.2.5','i18n','5','2','7','1770','1436','34','143'),('xfig','3.2.6','i18n','2','1','8','992','1643','4','40'),('xfig','3.2.0','installmanpage','2','1','1','2948','397','2','70'),('xfig','3.2.1','installmanpage','1','1','2','17745','286','1','66'),('xfig','3.2.3','installmanpage','1','1','3','2880','108','1','86'),('xfig','3.2.5','installmanpage','1','1','4','535','535','1','143'),('xfig','3.2.0','jpeg_quality','1','1','1','3528','154','1','70'),('xfig','3.2.0','no_compkeydb','1','1','1','8760','193','1','70'),('xfig','3.2.1','no_compkeydb','1','1','2','8760','193','1','66'),('xfig','3.2.2','no_compkeydb','1','1','3','2489','150','1','37'),('xfig','3.2.3','no_compkeydb','1','1','4','2489','150','1','86'),('xfig','3.2.4','no_compkeydb','1','1','5','12800','240','1','88'),('xfig','3.2.5','no_compkeydb','2','2','7','3846','68','2','143'),('xfig','3.2.6','no_compkeydb','1','1','8','1156','68','1','40'),('xfig','3.2.0','nostrstr','1','1','1','195','41','2','70'),('xfig','3.2.4','nostrstr','1','1','2','240','32','1','88'),('xfig','3.2.5','nostrstr','2','2','4','365','136','3','143'),('xfig','3.2.0','not _xvertext_included_ ','1','1','1','165','26','1','70'),('xfig','3.2.1','not _xvertext_included_ ','1','1','2','165','26','1','66'),('xfig','3.2.5','not _xvertext_included_ ','1','1','3','4','4','1','143'),('xfig','3.2.6','not _xvertext_included_ ','1','1','4','4','4','1','40'),('xfig','3.2.0','not color','1','1','1','3159','120','1','70'),('xfig','3.2.1','not color','1','1','2','3159','120','1','66'),('xfig','3.2.0','not d_spline_h','2','1','1','31','53','2','70'),('xfig','3.2.1','not d_spline_h','1','1','2','117','22','1','66'),('xfig','3.2.0','not d_subspline_h','2','1','1','29','47','2','70'),('xfig','3.2.1','not d_subspline_h','1','1','2','77','18','1','66'),('xfig','3.2.4','not d_subspline_h','1','1','3','81','18','1','88'),('xfig','3.2.5','not d_subspline_h','1','1','4','81','18','1','143'),('xfig','3.2.0','not defsmpfac','1','1','1','120','22','1','70'),('xfig','3.2.1','not defsmpfac','1','1','2','120','22','1','66'),('xfig','3.2.3','not defsmpfac','1','1','3','143','24','1','86'),('xfig','3.2.4','not defsmpfac','1','1','4','143','24','1','88'),('xfig','3.2.0','not dontkludge','1','1','1','150','25','1','70'),('xfig','3.2.1','not dontkludge','1','1','2','150','25','1','66'),('xfig','3.2.0','not e_convert_h','2','1','1','31','49','2','70'),('xfig','3.2.1','not e_convert_h','1','1','2','77','18','1','66'),('xfig','3.2.4','not e_convert_h','1','1','3','132','23','1','88'),('xfig','3.2.5','not e_convert_h','1','1','4','132','23','1','143'),('xfig','3.2.0','not e_edit_h','2','1','1','26','54','2','70'),('xfig','3.2.1','not e_edit_h','1','1','2','187','28','1','66'),('xfig','3.2.3','not e_edit_h','1','1','3','90','19','1','86'),('xfig','3.2.4','not e_edit_h','2','1','4','90','47','2','88'),('xfig','3.2.5','not e_edit_h','1','1','5','192','28','1','143'),('xfig','3.2.0','not f_neuclrtab_h','2','1','1','9','28','2','70'),('xfig','3.2.1','not f_neuclrtab_h','1','1','2','120','22','1','66'),('xfig','3.2.0','not fig_h','2','1','1','30','53','2','70'),('xfig','3.2.1','not fig_h','1','1','2','384','40','1','66'),('xfig','3.2.3','not fig_h','1','1','3','3','3','1','86'),('xfig','3.2.4','not fig_h','1','1','4','240','32','1','88'),('xfig','3.2.5','not fig_h','2','2','6','254','37','2','143'),('xfig','3.2.0','not figx_h','2','1','1','9','26','2','70'),('xfig','3.2.1','not figx_h','1','1','2','96','20','1','66'),('xfig','3.2.0','not i18n','2','1','1','5778','354','2','70'),('xfig','3.2.1','not i18n','1','1','2','8760','193','1','66'),('xfig','3.2.0','not i18n_no_preedit','2','1','1','1542','1290','4','70'),('xfig','3.2.1','not i18n_no_preedit','1','1','2','7084','590','2','66'),('xfig','3.2.2','not i18n_no_preedit','1','1','3','726','1228','2','37'),('xfig','3.2.3','not i18n_no_preedit','1','1','4','726','1228','2','86'),('xfig','3.2.0','not m_2pi','1','1','1','384','40','1','70'),('xfig','3.2.1','not m_2pi','1','1','2','384','40','1','66'),('xfig','3.2.0','not m_pi','1','1','1','384','40','1','70'),('xfig','3.2.1','not m_pi','1','1','2','384','40','1','66'),('xfig','3.2.0','not max_topruler_wd','1','1','1','180','28','1','70'),('xfig','3.2.1','not max_topruler_wd','1','1','2','180','28','1','66'),('xfig','3.2.2','not max_topruler_wd','1','1','3','99','20','1','37'),('xfig','3.2.3','not max_topruler_wd','1','1','4','99','20','1','86'),('xfig','3.2.0','not mode_h','2','1','1','204','63','2','70'),('xfig','3.2.1','not mode_h','1','1','2','273','34','1','66'),('xfig','3.2.5','not mode_h','3','1','3','4','11','3','143'),('xfig','3.2.6','not mode_h','2','1','4','6','31','2','40'),('xfig','3.2.0','not no_compkeydb','1','1','1','8760','193','1','70'),('xfig','3.2.1','not no_compkeydb','1','1','2','8760','193','1','66'),('xfig','3.2.3','not no_compkeydb','1','1','3','20066','333','1','86'),('xfig','3.2.4','not no_compkeydb','2','1','4','20066','573','2','88'),('xfig','3.2.5','not no_compkeydb','1','1','5','12800','240','1','143'),('xfig','3.2.0','not object_h','2','1','1','1504','140','2','70'),('xfig','3.2.1','not object_h','1','1','2','910','61','1','66'),('xfig','3.2.0','not paintop_h','2','1','1','9','28','2','70'),('xfig','3.2.1','not paintop_h','1','1','2','117','22','1','66'),('xfig','3.2.0','not patchlevel_h','2','1','1','16','33','2','70'),('xfig','3.2.1','not patchlevel_h','2','1','2','154','27','2','66'),('xfig','3.2.2','not patchlevel_h','2','1','3','1','6','2','37'),('xfig','3.2.3','not patchlevel_h','6','1','4','4','24','6','86'),('xfig','3.2.4','not patchlevel_h','2','1','5','36','26','2','88'),('xfig','3.2.5','not patchlevel_h','5','2','7','32','22','5','143'),('xfig','3.2.0','not resources_h','2','1','1','369','131','2','70'),('xfig','3.2.1','not resources_h','1','1','2','1368','81','1','66'),('xfig','3.2.0','not sysv','2','1','1','5778','354','2','70'),('xfig','3.2.1','not sysv','1','1','2','8760','193','1','66'),('xfig','3.2.3','not sysv','1','1','3','20066','333','1','86'),('xfig','3.2.4','not sysv','2','1','4','20066','573','2','88'),('xfig','3.2.5','not sysv','2','2','6','791','14','2','143'),('xfig','3.2.0','not u_bound_h','2','1','1','12','29','2','70'),('xfig','3.2.1','not u_bound_h','1','1','2','117','22','1','66'),('xfig','3.2.4','not u_bound_h','1','1','3','135','24','1','88'),('xfig','3.2.5','not u_bound_h','1','1','4','135','24','1','143'),('xfig','3.2.0','not u_create_h','2','1','1','20','31','2','70'),('xfig','3.2.1','not u_create_h','1','1','2','117','22','1','66'),('xfig','3.2.2','not u_create_h','1','1','3','520','46','1','37'),('xfig','3.2.3','not u_create_h','1','1','4','520','46','1','86'),('xfig','3.2.4','not u_create_h','1','1','5','1369','74','1','88'),('xfig','3.2.5','not u_create_h','1','1','6','1369','74','1','143'),('xfig','3.2.0','not u_draw_h','2','1','1','36','36','2','70'),('xfig','3.2.1','not u_draw_h','1','1','2','104','21','1','66'),('xfig','3.2.3','not u_draw_h','1','1','3','176','27','1','86'),('xfig','3.2.4','not u_draw_h','2','1','4','176','57','2','88'),('xfig','3.2.5','not u_draw_h','1','1','5','189','30','1','143'),('xfig','3.2.0','not u_elastic_h','2','1','1','9','122','2','70'),('xfig','3.2.1','not u_elastic_h','1','1','2','3364','116','1','66'),('xfig','3.2.0','not u_fonts_h','2','1','1','9','37','2','70'),('xfig','3.2.1','not u_fonts_h','1','1','2','238','31','1','66'),('xfig','3.2.4','not u_fonts_h','1','1','3','506','45','1','88'),('xfig','3.2.5','not u_fonts_h','1','1','4','506','45','1','143'),('xfig','3.2.0','not u_list_h','2','1','1','33','36','2','70'),('xfig','3.2.1','not u_list_h','1','1','2','117','22','1','66'),('xfig','3.2.4','not u_list_h','1','1','3','4928','141','1','88'),('xfig','3.2.5','not u_list_h','1','1','4','4928','141','1','143'),('xfig','3.2.0','not u_markers_h','2','1','1','26','43','2','70'),('xfig','3.2.1','not u_markers_h','1','1','2','70','17','1','66'),('xfig','3.2.4','not u_markers_h','1','1','3','273','46','1','88'),('xfig','3.2.5','not u_markers_h','1','1','4','273','46','1','143'),('xfig','3.2.0','not u_search_h','2','1','1','18','45','2','70'),('xfig','3.2.1','not u_search_h','1','1','2','323','36','1','66'),('xfig','3.2.3','not u_search_h','1','1','3','35','12','1','86'),('xfig','3.2.4','not u_search_h','2','1','4','35','54','2','88'),('xfig','3.2.5','not u_search_h','1','1','5','441','42','1','143'),('xfig','3.2.0','not u_undo_h','2','1','1','9','38','2','70'),('xfig','3.2.1','not u_undo_h','1','1','2','255','32','1','66'),('xfig','3.2.0','not useinstalledjpeg','2','1','1','2948','397','2','70'),('xfig','3.2.1','not useinstalledjpeg','1','1','2','17745','286','1','66'),('xfig','3.2.2','not useinstalledjpeg','1','1','3','30843','356','1','37'),('xfig','3.2.3','not useinstalledjpeg','2','1','4','30843','464','2','86'),('xfig','3.2.4','not useinstalledjpeg','1','1','5','5859','156','1','88'),('xfig','3.2.5','not useinstalledjpeg','2','2','7','1770','535','2','143'),('xfig','3.2.0','not version_h','2','1','1','25','31','2','70'),('xfig','3.2.1','not version_h','1','1','2','108','21','1','66'),('xfig','3.2.5','not version_h','1','1','3','22','22','1','143'),('xfig','3.2.0','not w_canvas_h','2','1','1','9','52','2','70'),('xfig','3.2.1','not w_canvas_h','1','1','2','525','46','1','66'),('xfig','3.2.0','not w_color_h','2','1','1','28','33','2','70'),('xfig','3.2.1','not w_color_h','1','1','2','121','22','1','66'),('xfig','3.2.3','not w_color_h','1','1','3','40','13','1','86'),('xfig','3.2.4','not w_color_h','1','1','4','40','13','1','88'),('xfig','3.2.0','not w_dir_h','2','1','1','9','34','2','70'),('xfig','3.2.1','not w_dir_h','1','1','2','195','28','1','66'),('xfig','3.2.5','not w_dir_h','1','1','3','4','4','1','143'),('xfig','3.2.0','not w_drawprim_h','2','1','1','9','41','2','70'),('xfig','3.2.1','not w_drawprim_h','1','1','2','300','35','1','66'),('xfig','3.2.3','not w_drawprim_h','1','1','3','319','40','1','86'),('xfig','3.2.4','not w_drawprim_h','1','1','4','319','40','1','88'),('xfig','3.2.0','not w_icons_h','2','1','1','15','54','2','70'),('xfig','3.2.1','not w_icons_h','1','1','2','504','46','1','66'),('xfig','3.2.5','not w_icons_h','1','1','3','35','12','1','143'),('xfig','3.2.0','not w_indpanel_h','2','1','1','21','84','2','70'),('xfig','3.2.1','not w_indpanel_h','1','1','2','1344','74','1','66'),('xfig','3.2.0','not w_mousefun_h','2','1','1','9','25','2','70'),('xfig','3.2.1','not w_mousefun_h','1','1','2','88','19','1','66'),('xfig','3.2.4','not w_mousefun_h','1','1','3','696','53','1','88'),('xfig','3.2.5','not w_mousefun_h','1','1','4','696','53','1','143'),('xfig','3.2.0','not w_rottext_h','2','1','1','12','33','2','70'),('xfig','3.2.1','not w_rottext_h','1','1','2','165','26','1','66'),('xfig','3.2.5','not w_rottext_h','1','1','3','4','4','1','143'),('xfig','3.2.6','not w_rottext_h','1','1','4','4','4','1','40'),('xfig','3.2.0','not w_setup_h','2','1','1','30','39','2','70'),('xfig','3.2.1','not w_setup_h','1','1','2','180','28','1','66'),('xfig','3.2.0','not w_util_h','2','1','1','21','73','2','70'),('xfig','3.2.1','not w_util_h','1','1','2','752','63','1','66'),('xfig','3.2.4','not w_util_h','1','1','3','1683','84','1','88'),('xfig','3.2.5','not w_util_h','1','1','4','1683','84','1','143'),('xfig','3.2.0','not w_zoom_h','2','1','1','9','29','2','70'),('xfig','3.2.1','not w_zoom_h','1','1','2','132','23','1','66'),('xfig','3.2.0','setlocale','1','1','1','504','504','1','70'),('xfig','3.2.3','setlocale','1','1','2','860','63','1','86'),('xfig','3.2.4','setlocale','2','1','3','860','76','2','88'),('xfig','3.2.5','setlocale','2','2','5','93','29','2','143'),('xfig','3.2.0','use_dirent','1','1','1','5300','1087','2','70'),('xfig','3.2.1','use_dirent','1','1','2','5300','1087','2','66'),('xfig','3.2.2','use_dirent','1','1','3','14136','649','2','37'),('xfig','3.2.3','use_dirent','1','1','4','14136','649','2','86'),('xfig','3.2.0','use_gif','2','1','1','92256','2472','7','70'),('xfig','3.2.1','use_gif','1','1','2','46893','727','2','66'),('xfig','3.2.2','use_gif','1','1','3','771951','2018','2','37'),('xfig','3.2.3','use_gif','1','1','4','771951','2018','2','86'),('xfig','3.2.0','use_inline','2','1','1','30','53','2','70'),('xfig','3.2.1','use_inline','1','1','2','384','40','1','66'),('xfig','3.2.2','use_inline','1','1','3','48','16','1','37'),('xfig','3.2.3','use_inline','1','1','4','48','16','1','86'),('xfig','3.2.5','use_inline','1','1','5','270','37','1','143'),('xfig','3.2.0','use_jpeg','2','1','1','1440','2563','8','70'),('xfig','3.2.1','use_jpeg','1','1','2','247399','1718','5','66'),('xfig','3.2.2','use_jpeg','1','1','3','771951','2692','5','37'),('xfig','3.2.3','use_jpeg','4','1','4','771951','6621','16','86'),('xfig','3.2.4','use_jpeg','2','1','5','1025640','3728','7','88'),('xfig','3.2.5','use_jpeg','2','2','7','3722','196','2','143'),('xfig','3.2.6','use_jpeg','2','1','8','9603','812','2','40'),('xfig','3.2.0','use_small_icons','1','1','1','449688','1487','2','70'),('xfig','3.2.1','use_small_icons','1','1','2','449688','1487','2','66'),('xfig','3.2.5','use_small_icons','3','1','3','4480','13230','4','143'),('xfig','3.2.0','use_xpm','2','1','1','1440','2101','7','70'),('xfig','3.2.1','use_xpm','1','1','2','247399','1256','4','66'),('xfig','3.2.2','use_xpm','1','1','3','771951','2451','7','37'),('xfig','3.2.3','use_xpm','5','1','4','771951','8355','20','86'),('xfig','3.2.4','use_xpm','2','1','5','1025640','6582','12','88'),('xfig','3.2.5','use_xpm','6','2','7','377','1907','13','143'),('xfig','3.2.6','use_xpm','3','1','8','170','2913','9','40'),('xfig','3.2.0','use_xpm_icon','1','1','1','61640','498','1','70'),('xfig','3.2.1','use_xpm_icon','1','1','2','61640','498','1','66'),('xfig','3.2.2','use_xpm_icon','1','1','3','128','1697','3','37'),('xfig','3.2.3','use_xpm_icon','2','1','4','128','4517','5','86'),('xfig','3.2.4','use_xpm_icon','2','1','5','152622','3216','3','88'),('xfig','3.2.5','use_xpm_icon','5','2','7','2933','1031','7','143'),('xfig','3.2.6','use_xpm_icon','1','1','8','49','20','2','40'),('xfig','3.2.0','usegif','2','1','1','2948','397','2','70'),('xfig','3.2.1','usegif','1','1','2','17745','286','1','66'),('xfig','3.2.2','usegif','1','1','3','30843','356','1','37'),('xfig','3.2.3','usegif','1','1','4','30843','356','1','86'),('xfig','3.2.0','useinstalledjpeg','2','1','1','2948','397','2','70'),('xfig','3.2.1','useinstalledjpeg','1','1','2','17745','286','1','66'),('xfig','3.2.2','useinstalledjpeg','1','1','3','30843','356','1','37'),('xfig','3.2.3','useinstalledjpeg','2','1','4','30843','537','2','86'),('xfig','3.2.4','useinstalledjpeg','2','1','5','8034','337','2','88'),('xfig','3.2.5','useinstalledjpeg','4','2','7','1770','1070','6','143'),('xfig','3.2.0','usejpeg','2','1','1','2948','397','2','70'),('xfig','3.2.1','usejpeg','1','1','2','17745','286','1','66'),('xfig','3.2.2','usejpeg','1','1','3','30843','356','1','37'),('xfig','3.2.3','usejpeg','3','1','4','30843','645','3','86'),('xfig','3.2.4','usejpeg','2','1','5','8034','337','2','88'),('xfig','3.2.5','usejpeg','4','2','7','1770','535','4','143'),('xfig','3.2.0','usesmallicons','1','1','1','17745','286','1','70'),('xfig','3.2.1','usesmallicons','1','1','2','17745','286','1','66'),('xfig','3.2.3','usesmallicons','1','1','3','8034','181','1','86'),('xfig','3.2.4','usesmallicons','1','1','4','8034','181','1','88'),('xfig','3.2.5','usesmallicons','1','1','5','535','535','1','143'),('xfig','3.2.0','usexpm','2','1','1','2948','397','2','70'),('xfig','3.2.1','usexpm','1','1','2','17745','286','1','66'),('xfig','3.2.2','usexpm','1','1','3','30843','356','1','37'),('xfig','3.2.3','usexpm','3','1','4','30843','620','3','86'),('xfig','3.2.4','usexpm','2','1','5','8034','337','2','88'),('xfig','3.2.5','usexpm','3','2','7','1770','535','3','143'),('xfig','3.2.0','usexpm_icon','1','1','1','2948','111','1','70'),('xfig','3.2.2','usexpm_icon','1','1','2','30843','356','1','37'),('xfig','3.2.3','usexpm_icon','2','1','3','30843','537','2','86'),('xfig','3.2.4','usexpm_icon','1','1','4','8034','181','1','88'),('xfig','3.2.5','usexpm_icon','1','1','5','535','535','1','143'),('xfig','3.2.0','v4_0','1','1','1','247399','2147','6','70'),('xfig','3.2.1','v4_0','1','1','2','247399','2147','6','66'),('xfig','3.2.2','v4_0','1','1','3','5','3619','8','37'),('xfig','3.2.3','v4_0','3','1','4','5','8320','17','86'),('xfig','3.2.4','v4_0','1','1','5','120','4690','8','88'),('xfig','3.2.0','when_save_yourself_is_fixed','1','1','1','84','19','1','70'),('xfig','3.2.1','when_save_yourself_is_fixed','1','1','2','84','19','1','66'),('xfig','3.2.2','when_save_yourself_is_fixed','1','1','3','239112','978','1','37'),('xfig','3.2.3','when_save_yourself_is_fixed','2','1','4','239112','1805','2','86'),('xfig','3.2.4','when_save_yourself_is_fixed','2','1','5','152622','863','2','88'),('xfig','3.2.5','when_save_yourself_is_fixed','1','1','6','324','36','1','143'),('xfig','3.2.2','center_page','1','1','1','26820','329','1','37'),('xfig','3.2.3','center_page','2','1','2','26820','533','2','86'),('xfig','3.2.4','center_page','1','1','3','7700','204','1','88'),('xfig','3.2.2','eps_rot_fixed','1','1','1','2812','112','1','37'),('xfig','3.2.3','eps_rot_fixed','1','1','2','2812','112','1','86'),('xfig','3.2.2','have_no_dirent','1','1','1','48','665','3','37'),('xfig','3.2.3','have_no_dirent','3','1','2','48','1166','5','86'),('xfig','3.2.4','have_no_dirent','1','1','3','4704','592','2','88'),('xfig','3.2.5','have_no_dirent','4','2','5','362','300','6','143'),('xfig','3.2.2','i18n_use_preedit','1','1','1','726','2383','5','37'),('xfig','3.2.3','i18n_use_preedit','2','1','2','726','4035','7','86'),('xfig','3.2.4','i18n_use_preedit','2','1','3','116564','2760','5','88'),('xfig','3.2.5','i18n_use_preedit','2','2','5','6028','118','5','143'),('xfig','3.2.2','linux','1','1','1','114245','678','1','37'),('xfig','3.2.3','linux','1','1','2','114245','678','1','86'),('xfig','3.2.2','newarrowtypes','1','1','1','771951','3419','4','37'),('xfig','3.2.3','newarrowtypes','2','1','2','771951','8390','9','86'),('xfig','3.2.4','newarrowtypes','2','1','3','1025640','6387','8','88'),('xfig','3.2.5','newarrowtypes','3','2','5','9338','50','6','143'),('xfig','3.2.2','not _figlist_h','1','1','1','16','16','1','37'),('xfig','3.2.3','not _figlist_h','3','1','2','16','39','3','86'),('xfig','3.2.4','not _figlist_h','1','1','3','34','19','1','88'),('xfig','3.2.2','not _figlistp_h','1','1','1','61','61','1','37'),('xfig','3.2.3','not _figlistp_h','1','1','2','61','61','1','86'),('xfig','3.2.2','not _figsmebsb_h','1','1','1','36','36','1','37'),('xfig','3.2.3','not _figsmebsb_h','1','1','2','36','36','1','86'),('xfig','3.2.5','not _figsmebsb_h','1','1','3','2','2','1','143'),('xfig','3.2.2','not _figsmebsbp_h','1','1','1','83','83','1','37'),('xfig','3.2.3','not _figsmebsbp_h','1','1','2','83','83','1','86'),('xfig','3.2.2','not max_sideruler_ht','1','1','1','99','20','1','37'),('xfig','3.2.3','not max_sideruler_ht','1','1','2','99','20','1','86'),('xfig','3.2.2','notdef  ','1','1','1','172017','898','1','37'),('xfig','3.2.3','notdef  ','2','1','2','172017','999','2','86'),('xfig','3.2.4','notdef  ','1','1','3','2440','101','1','88'),('xfig','3.2.2','testing_grids','1','1','1','97818','1127','2','37'),('xfig','3.2.3','testing_grids','2','1','2','97818','3704','4','86'),('xfig','3.2.4','testing_grids','1','1','3','319484','2577','2','88'),('xfig','3.2.2','xaw3d','1','1','1','30843','675','3','37'),('xfig','3.2.3','xaw3d','5','1','2','30843','2794','25','86'),('xfig','3.2.4','xaw3d','2','1','3','8034','1964','19','88'),('xfig','3.2.5','xaw3d','5','2','5','1770','1259','19','143'),('xfig','3.2.6','xaw3d','1','1','6','3969','174','3','40'),('xfig','3.2.3','_posix_source','1','1','1','240','31','1','86'),('xfig','3.2.4','_posix_source','1','1','2','240','31','1','88'),('xfig','3.2.5','_posix_source','1','1','3','14539','284','1','143'),('xfig','3.2.3','apollo','1','1','1','766','766','1','86'),('xfig','3.2.4','apollo','1','1','2','766','766','1','88'),('xfig','3.2.3','cache_fid','1','1','1','10712','207','1','86'),('xfig','3.2.4','cache_fid','1','1','2','10712','207','1','88'),('xfig','3.2.3','cache_ximages','1','1','1','10712','207','1','86'),('xfig','3.2.4','cache_ximages','1','1','2','10712','207','1','88'),('xfig','3.2.3','digitize','1','1','1','35768','399','1','86'),('xfig','3.2.4','digitize','2','1','2','35768','1061','2','88'),('xfig','3.2.5','digitize','2','2','4','12633','80','2','143'),('xfig','3.2.6','digitize','1','1','5','1600','80','1','40'),('xfig','3.2.3','enametoolong','1','1','1','1580','342','2','86'),('xfig','3.2.4','enametoolong','1','1','2','1580','342','2','88'),('xfig','3.2.3','fixed_japanese_pdf','1','1','1','35768','399','1','86'),('xfig','3.2.4','fixed_japanese_pdf','2','1','2','35768','1061','2','88'),('xfig','3.2.5','fixed_japanese_pdf','2','1','3','99760','671','2','143'),('xfig','3.2.3','have_no_strcasecmp','1','1','1','101757','638','1','86'),('xfig','3.2.4','have_no_strcasecmp','1','1','2','101757','638','1','88'),('xfig','3.2.5','have_no_strcasecmp','1','1','3','558','99','1','143'),('xfig','3.2.3','maxerr','1','1','1','143','24','1','86'),('xfig','3.2.4','maxerr','1','1','2','143','24','1','88'),('xfig','3.2.3','maxpathlen','1','1','1','240','31','1','86'),('xfig','3.2.4','maxpathlen','1','1','2','240','31','1','88'),('xfig','3.2.5','maxpathlen','1','1','3','14539','284','1','143'),('xfig','3.2.3','need_strerror','2','1','1','1634','102','3','86'),('xfig','3.2.5','need_strerror','2','2','3','3','292','3','143'),('xfig','3.2.3','not _smebsb_h','1','1','1','107','107','1','86'),('xfig','3.2.4','not _smebsb_h','1','1','2','107','107','1','88'),('xfig','3.2.3','not _smecascade_h','1','1','1','72','72','1','86'),('xfig','3.2.3','not _xawsmebsbp_h','1','1','1','126','126','1','86'),('xfig','3.2.4','not _xawsmebsbp_h','1','1','2','126','126','1','88'),('xfig','3.2.5','not _xawsmebsbp_h','1','1','3','16','8','1','143'),('xfig','3.2.6','not _xawsmebsbp_h','1','1','4','16','8','1','40'),('xfig','3.2.3','not _xawsmecascadep_h','1','1','1','93','93','1','86'),('xfig','3.2.3','not path_max','1','1','1','240','31','1','86'),('xfig','3.2.4','not path_max','1','1','2','240','31','1','88'),('xfig','3.2.5','not path_max','2','1','3','14539','342','3','143'),('xfig','3.2.6','not path_max','2','1','4','29','35','3','40'),('xfig','3.2.3','not s_iwgrp','1','1','1','101757','638','1','86'),('xfig','3.2.4','not s_iwgrp','1','1','2','101757','638','1','88'),('xfig','3.2.3','not s_iwoth','1','1','1','101757','638','1','86'),('xfig','3.2.4','not s_iwoth','1','1','2','101757','638','1','88'),('xfig','3.2.3','not s_iwusr','1','1','1','101757','638','1','86'),('xfig','3.2.4','not s_iwusr','1','1','2','101757','638','1','88'),('xfig','3.2.3','not u_smartsearch_h','1','1','1','30','30','1','86'),('xfig','3.2.4','not u_smartsearch_h','1','1','2','30','30','1','88'),('xfig','3.2.3','not x_not_posix','1','1','1','240','31','1','86'),('xfig','3.2.4','not x_not_posix','1','1','2','240','31','1','88'),('xfig','3.2.5','not x_not_posix','1','1','3','14539','284','1','143'),('xfig','3.2.3','not xaw3d','1','1','1','766','766','1','86'),('xfig','3.2.4','not xaw3d','1','1','2','766','766','1','88'),('xfig','3.2.5','not xaw3d','1','1','3','3969','126','1','143'),('xfig','3.2.6','not xaw3d','1','1','4','3969','126','1','40'),('xfig','3.2.3','not xtcfontset','1','1','1','107','107','1','86'),('xfig','3.2.4','not xtcfontset','1','1','2','107','107','1','88'),('xfig','3.2.3','not xtnfontset','1','1','1','107','107','1','86'),('xfig','3.2.4','not xtnfontset','1','1','2','107','107','1','88'),('xfig','3.2.3','notdef			','1','1','1','220','31','1','86'),('xfig','3.2.4','notdef			','1','1','2','220','31','1','88'),('xfig','3.2.3','pcxbug','2','1','1','88506','693','2','86'),('xfig','3.2.4','pcxbug','1','1','2','2401','98','1','88'),('xfig','3.2.3','sel_text','1','1','1','116564','1158','2','86'),('xfig','3.2.4','sel_text','2','1','2','116564','1619','4','88'),('xfig','3.2.5','sel_text','3','2','4','6028','110','4','143'),('xfig','3.2.3','sigbus','1','1','1','152622','843','2','86'),('xfig','3.2.4','sigbus','1','1','2','152622','843','2','88'),('xfig','3.2.3','speed','1','1','1','143','48','2','86'),('xfig','3.2.4','speed','1','1','2','143','48','2','88'),('xfig','3.2.3','use_alpha','1','1','1','206','206','1','86'),('xfig','3.2.3','use_png','2','1','1','11750','2651','6','86'),('xfig','3.2.4','use_png','1','1','2','1025640','2415','3','88'),('xfig','3.2.3','use_tab','1','1','1','152622','827','1','86'),('xfig','3.2.4','use_tab','2','1','2','152622','1223','2','88'),('xfig','3.2.5','use_tab','1','1','3','34848','396','1','143'),('xfig','3.2.3','use_text_bg','2','1','1','56574','1400','2','86'),('xfig','3.2.4','use_text_bg','1','1','2','116564','825','1','88'),('xfig','3.2.3','usepng','2','1','1','1416','264','2','86'),('xfig','3.2.4','usepng','1','1','2','8034','181','1','88'),('xfig','3.2.3','wheelmouse','1','1','1','8034','1999','4','86'),('xfig','3.2.4','wheelmouse','2','1','2','8034','3351','8','88'),('xfig','3.2.5','wheelmouse','1','1','3','5859','1352','4','143'),('xfig','3.2.3','wheelmouse  ','1','1','1','319484','2577','2','86'),('xfig','3.2.4','wheelmouse  ','2','1','2','319484','3947','4','88'),('xfig','3.2.5','wheelmouse  ','1','1','3','234649','1370','2','143'),('xfig','3.2.3','x_not_stdc_env','1','1','1','766','766','1','86'),('xfig','3.2.4','x_not_stdc_env','2','1','2','766','883','2','88'),('xfig','3.2.5','x_not_stdc_env','2','2','4','958','37','2','143'),('xfig','3.2.4','clip_line','1','1','1','26715','476','1','88'),('xfig','3.2.5','clip_line','1','1','2','26715','476','1','143'),('xfig','3.2.4','dont_show_depths','1','1','1','31280','387','1','88'),('xfig','3.2.5','dont_show_depths','1','1','2','31280','387','1','143'),('xfig','3.2.4','not c_chop_h','1','1','1','22','22','1','88'),('xfig','3.2.5','not c_chop_h','1','1','2','22','22','1','143'),('xfig','3.2.4','not frandom','1','1','1','240','32','1','88'),('xfig','3.2.5','not frandom','1','1','2','240','32','1','143'),('xfig','3.2.4','not u_quartic_h','1','1','1','24','24','1','88'),('xfig','3.2.5','not u_quartic_h','1','1','2','24','24','1','143'),('xfig','3.2.4','not w_intersect_h','1','1','1','62','62','1','88'),('xfig','3.2.5','not w_intersect_h','1','1','2','62','62','1','143'),('xfig','3.2.4','not w_keyboard_h','1','1','1','34','34','1','88'),('xfig','3.2.5','not w_keyboard_h','1','1','2','34','34','1','143'),('xfig','3.2.4','not w_snap_h','1','1','1','70','70','1','88'),('xfig','3.2.5','not w_snap_h','1','1','2','70','70','1','143'),('xfig','3.2.4','not xaw3d1_5e','1','1','1','5859','3460','8','88'),('xfig','3.2.5','not xaw3d1_5e','6','2','3','1770','665','16','143'),('xfig','3.2.6','not xaw3d1_5e','1','1','4','1600','112','2','40'),('xfig','3.2.4','report_xy_always','1','1','1','12800','240','1','88'),('xfig','3.2.5','report_xy_always','2','1','2','12800','308','2','143'),('xfig','3.2.4','xaw3d1_5e','1','1','1','5859','4058','10','88'),('xfig','3.2.5','xaw3d1_5e','5','2','3','1770','660','17','143'),('xfig','3.2.6','xaw3d1_5e','1','1','4','3136','112','1','40'),('xfig','3.2.5','__cplusplus','2','1','1','7736','9421','2','143'),('xfig','3.2.6','__cplusplus','2','1','2','306858','2250','2','40'),('xfig','3.2.5','__gnuc__','1','1','1','7736','7736','1','143'),('xfig','3.2.6','__gnuc__','1','1','2','289920','1139','1','40'),('xfig','3.2.5','__stdc__','1','1','1','7736','7736','1','143'),('xfig','3.2.6','__stdc__','1','1','2','306858','1111','1','40'),('xfig','3.2.5','_aix','1','1','1','7736','7736','1','143'),('xfig','3.2.6','_aix','1','1','2','289920','1139','1','40'),('xfig','3.2.5','_msc_ver','1','1','1','7736','7736','1','143'),('xfig','3.2.6','_msc_ver','1','1','2','289920','1139','1','40'),('xfig','3.2.5','ancient ','1','1','1','14539','284','1','143'),('xfig','3.2.5','arrows4to14','1','1','1','624','50','1','143'),('xfig','3.2.5','cray','1','1','1','98','382','2','143'),('xfig','3.2.5','have_alloca_h','1','1','1','7736','7736','1','143'),('xfig','3.2.6','have_alloca_h','1','1','2','289920','1139','1','40'),('xfig','3.2.5','have_config_h','2','1','1','22','100','6','143'),('xfig','3.2.6','have_config_h','1','1','2','62','232','2','40'),('xfig','3.2.5','have_dirent_h','1','1','1','41','41','1','143'),('xfig','3.2.5','have_features_h','1','1','1','14539','284','1','143'),('xfig','3.2.5','have_getcwd','1','1','1','558','99','1','143'),('xfig','3.2.5','have_index','1','1','1','22','22','1','143'),('xfig','3.2.5','have_inttypes_h','1','1','1','7736','7736','1','143'),('xfig','3.2.5','have_limits_h','2','1','1','29','58','2','143'),('xfig','3.2.6','have_limits_h','1','1','2','29','29','1','40'),('xfig','3.2.5','have_ndir_h','1','1','1','41','41','1','143'),('xfig','3.2.5','have_no_strncasecmp','1','1','1','558','99','1','143'),('xfig','3.2.5','have_rindex','1','1','1','21','21','1','143'),('xfig','3.2.5','have_stdint_h','1','1','1','7736','7736','1','143'),('xfig','3.2.5','have_stdlib_h','1','1','1','7736','7736','1','143'),('xfig','3.2.5','have_string_h','2','1','1','7736','8120','4','143'),('xfig','3.2.5','have_strings_h','2','1','1','7736','8120','4','143'),('xfig','3.2.5','have_sys_dir_h','1','1','1','41','41','1','143'),('xfig','3.2.5','have_sys_file_h','1','1','1','14539','284','1','143'),('xfig','3.2.5','have_sys_ndir_h','1','1','1','41','41','1','143'),('xfig','3.2.5','have_sys_stat_h','1','1','1','7736','7736','1','143'),('xfig','3.2.5','have_sys_time_h','1','1','1','49','14','1','143'),('xfig','3.2.6','have_sys_time_h','1','1','2','3485','126','1','40'),('xfig','3.2.5','have_sys_types_h','1','1','1','7736','7736','1','143'),('xfig','3.2.5','have_unistd_h','1','1','1','7736','7736','1','143'),('xfig','3.2.5','have_vfork_h','1','1','1','7736','7736','1','143'),('xfig','3.2.5','isc','2','1','1','270','321','2','143'),('xfig','3.2.5','luna','1','1','1','98','382','2','143'),('xfig','3.2.5','mips','1','1','1','98','382','2','143'),('xfig','3.2.5','motorola','1','1','1','98','382','2','143'),('xfig','3.2.5','nostdhdrs','1','1','1','98','382','2','143'),('xfig','3.2.5','not','1','1','1','521016','1685','1','143'),('xfig','3.2.5','not __bool_true_false_are_defined','2','1','1','7736','9421','2','143'),('xfig','3.2.6','not __bool_true_false_are_defined','1','1','2','306858','1111','1','40'),('xfig','3.2.5','not __cplusplus','1','1','1','247','7983','2','143'),('xfig','3.2.5','not __freebsd__','2','1','1','35','161','5','143'),('xfig','3.2.6','not __freebsd__','1','1','2','2146','133','3','40'),('xfig','3.2.5','not __gnuc__','1','1','1','7736','7736','1','143'),('xfig','3.2.5','not _xfuncs_h_','2','1','1','270','384','3','143'),('xfig','3.2.5','not _xosdefs_h_','1','1','1','98','382','2','143'),('xfig','3.2.5','not _xvertext_included_','1','1','1','4','4','1','143'),('xfig','3.2.6','not _xvertext_included_','1','1','2','4','4','1','40'),('xfig','3.2.5','not alloca ','1','1','1','7736','7736','1','143'),('xfig','3.2.6','not alloca ','1','1','2','289920','1139','1','40'),('xfig','3.2.5','not bool','2','1','1','7736','9421','2','143'),('xfig','3.2.6','not bool','1','1','2','306858','1111','1','40'),('xfig','3.2.5','not cache_size_limit','1','1','1','15625','250','1','143'),('xfig','3.2.6','not cache_size_limit','1','1','2','15625','250','1','40'),('xfig','3.2.5','not dirstruct','1','1','1','41','41','1','143'),('xfig','3.2.6','not dirstruct','1','1','2','252','32','1','40'),('xfig','3.2.5','not false','2','1','1','7736','9421','2','143'),('xfig','3.2.6','not false','1','1','2','306858','1111','1','40'),('xfig','3.2.5','not have_setlocale','1','1','1','210','29','1','143'),('xfig','3.2.5','not have_strerror','2','1','1','15','320','3','143'),('xfig','3.2.6','not have_strerror','1','1','2','196','28','1','40'),('xfig','3.2.5','not strchr','1','1','1','270','37','1','143'),('xfig','3.2.5','not strrchr','1','1','1','270','37','1','143'),('xfig','3.2.5','not systype_sysv','1','1','1','98','382','2','143'),('xfig','3.2.5','not true','2','1','1','7736','9421','2','143'),('xfig','3.2.6','not true','1','1','2','306858','1111','1','40'),('xfig','3.2.5','not ultrix			','1','1','1','98','382','2','143'),('xfig','3.2.5','not use_xpm','2','1','1','247','1031','4','143'),('xfig','3.2.5','not xcomm','1','1','1','535','535','1','143'),('xfig','3.2.5','sgi','1','1','1','63','347','2','143'),('xfig','3.2.5','sony','1','1','1','98','382','2','143'),('xfig','3.2.5','stdc_headers','1','1','1','7736','7736','1','143'),('xfig','3.2.5','sysv','2','1','1','270','482','4','143'),('xfig','3.2.5','sysv ','2','1','1','98','390','3','143'),('xfig','3.2.6','sysv ','1','1','2','16','8','1','40'),('xfig','3.2.5','sysv386','1','1','1','98','382','2','143'),('xfig','3.2.5','use_xpm and rename','1','1','1','18','18','1','143'),('xfig','3.2.5','use_xpm_splash','1','1','1','3136','112','1','143'),('xfig','3.2.6','use_xpm_splash','2','1','2','3136','150','2','40'),('xfig','3.2.5','usl','2','1','1','98','390','3','143'),('xfig','3.2.6','usl','1','1','2','16','8','1','40'),('xfig','3.2.5','utek','1','1','1','98','382','2','143'),('xfig','3.2.5','vax','1','1','1','98','382','2','143'),('xfig','3.2.5','x_usebfuncs','2','1','1','270','384','3','143'),('xfig','3.2.5','xawclientlibs','2','2','2','590','535','2','143'),('xfig','3.2.6','i18n etc confused','1','1','1','381612','1237','1','40'),('xfig','3.2.6','use_splash','1','1','1','9','44','2','40');
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

-- Dump completed on 2020-01-08 10:36:15
