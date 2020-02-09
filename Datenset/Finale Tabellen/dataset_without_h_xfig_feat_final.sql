-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: dataset_without_h
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
-- Table structure for table `xfig_feat_final`
--

DROP TABLE IF EXISTS `xfig_feat_final`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xfig_feat_final` (
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
-- Dumping data for table `xfig_feat_final`
--

LOCK TABLES `xfig_feat_final` WRITE;
/*!40000 ALTER TABLE `xfig_feat_final` DISABLE KEYS */;
INSERT INTO `xfig_feat_final` VALUES ('xfig','3.2.0','color','2','1','1','21808','609','4','37','164','0','92','59','clean'),('xfig','3.2.1','color','1','1','2','36','18','2','33','166','0','6','3','clean'),('xfig','3.2.0','comp_led','1','1','1','8760','193','1','37','477','11','120','73','clean'),('xfig','3.2.1','comp_led','1','1','2','8760','193','1','33','477','11','120','73','clean'),('xfig','3.2.2','comp_led','1','1','3','2489','150','1','31','571','11','131','19','clean'),('xfig','3.2.3','comp_led','2','1','4','2489','483','2','69','635','11','192','49','clean'),('xfig','3.2.4','comp_led','2','1','5','20066','573','2','63','720','11','207','79','clean'),('xfig','3.2.5','comp_led','1','1','6','12800','240','1','96','741','12','160','80','clean'),('xfig','3.2.0','gsbit','2','1','1','525','95','2','37','280','70','28','19','clean'),('xfig','3.2.1','gsbit','1','1','2','506','45','1','33','282','70','22','23','clean'),('xfig','3.2.2','gsbit','1','1','3','2812','112','1','31','316','84','74','38','clean'),('xfig','3.2.3','gsbit','2','1','4','2812','707','2','69','320','81','186','167','clean'),('xfig','3.2.0','i18n','2','1','1','2948','4374','21','37','529','82','159','48','clean'),('xfig','3.2.1','i18n','1','1','2','17745','1985','10','33','460','62','134','64','clean'),('xfig','3.2.2','i18n','1','1','3','30843','4333','11','31','714','99','278','115','clean'),('xfig','3.2.3','i18n','6','1','4','30843','12028','34','69','854','131','247','106','clean'),('xfig','3.2.4','i18n','2','1','5','8034','10144','30','63','898','149','221','117','clean'),('xfig','3.2.5','i18n','5','2','7','1770','1436','34','96','877','171','73','76','clean'),('xfig','3.2.6','i18n','2','1','8','992','1643','4','33','1114','273','200','210','clean'),('xfig','3.2.0','installmanpage','2','1','1','2948','397','2','37','318','0','131','67','clean'),('xfig','3.2.1','installmanpage','1','1','2','17745','286','1','33','363','0','195','91','clean'),('xfig','3.2.3','installmanpage','1','1','3','2880','108','1','69','424','0','60','48','clean'),('xfig','3.2.5','installmanpage','1','1','4','535','535','1','96','0','0','0','535','clean'),('xfig','3.2.0','jpeg_quality','1','1','1','3528','154','1','37','250','39','126','28','clean'),('xfig','3.2.0','no_compkeydb','1','1','1','8760','193','1','37','477','11','120','73','clean'),('xfig','3.2.1','no_compkeydb','1','1','2','8760','193','1','33','477','11','120','73','clean'),('xfig','3.2.2','no_compkeydb','1','1','3','2489','150','1','31','571','11','131','19','clean'),('xfig','3.2.3','no_compkeydb','1','1','4','2489','150','1','69','571','11','131','19','clean'),('xfig','3.2.4','no_compkeydb','1','1','5','12800','240','1','63','741','12','160','80','clean'),('xfig','3.2.5','no_compkeydb','2','2','7','3846','68','2','96','756','12','97','57','clean'),('xfig','3.2.6','no_compkeydb','1','1','8','1156','68','1','33','772','12','34','34','clean'),('xfig','3.2.0','nostrstr','1','1','1','195','41','2','37','308','9','12','8','clean'),('xfig','3.2.4','nostrstr','1','1','2','240','32','1','63','59','0','20','12','clean'),('xfig','3.2.5','nostrstr','2','2','4','365','136','3','96','363','6','12','44','clean'),('xfig','3.2.0','not _xvertext_included_ ','1','1','1','165','26','1','37','23','0','11','15','clean'),('xfig','3.2.1','not _xvertext_included_ ','1','1','2','165','26','1','33','23','0','11','15','clean'),('xfig','3.2.5','not _xvertext_included_ ','1','1','3','4','4','1','96','23','0','2','2','clean'),('xfig','3.2.6','not _xvertext_included_ ','1','1','4','4','4','1','33','23','0','2','2','clean'),('xfig','3.2.0','not color','1','1','1','3159','120','1','37','244','0','81','39','clean'),('xfig','3.2.1','not color','1','1','2','3159','120','1','33','244','0','81','39','clean'),('xfig','3.2.0','not defsmpfac','1','1','1','120','22','1','37','402','88','10','12','clean'),('xfig','3.2.1','not defsmpfac','1','1','2','120','22','1','33','402','88','10','12','clean'),('xfig','3.2.3','not defsmpfac','1','1','3','143','24','1','69','413','90','13','11','clean'),('xfig','3.2.4','not defsmpfac','1','1','4','143','24','1','63','413','90','13','11','clean'),('xfig','3.2.0','not dontkludge','1','1','1','150','25','1','37','121','14','10','15','clean'),('xfig','3.2.1','not dontkludge','1','1','2','150','25','1','33','121','14','10','15','clean'),('xfig','3.2.0','not i18n','2','1','1','5778','354','2','37','467','56','113','63','clean'),('xfig','3.2.1','not i18n','1','1','2','8760','193','1','33','477','11','120','73','clean'),('xfig','3.2.0','not i18n_no_preedit','2','1','1','1542','1290','4','37','771','149','266','56','clean'),('xfig','3.2.1','not i18n_no_preedit','1','1','2','7084','590','2','33','813','153','195','100','clean'),('xfig','3.2.2','not i18n_no_preedit','1','1','3','726','1228','2','31','1079','183','478','135','clean'),('xfig','3.2.3','not i18n_no_preedit','1','1','4','726','1228','2','69','1079','183','478','135','clean'),('xfig','3.2.0','not m_2pi','1','1','1','384','40','1','37','56','0','16','24','clean'),('xfig','3.2.1','not m_2pi','1','1','2','384','40','1','33','56','0','16','24','clean'),('xfig','3.2.0','not m_pi','1','1','1','384','40','1','37','56','0','16','24','clean'),('xfig','3.2.1','not m_pi','1','1','2','384','40','1','33','56','0','16','24','clean'),('xfig','3.2.0','not max_topruler_wd','1','1','1','180','28','1','37','16','0','10','18','clean'),('xfig','3.2.1','not max_topruler_wd','1','1','2','180','28','1','33','16','0','10','18','clean'),('xfig','3.2.2','not max_topruler_wd','1','1','3','99','20','1','31','17','0','11','9','clean'),('xfig','3.2.3','not max_topruler_wd','1','1','4','99','20','1','69','17','0','11','9','clean'),('xfig','3.2.0','not no_compkeydb','1','1','1','8760','193','1','37','477','11','120','73','clean'),('xfig','3.2.1','not no_compkeydb','1','1','2','8760','193','1','33','477','11','120','73','clean'),('xfig','3.2.3','not no_compkeydb','1','1','3','20066','333','1','69','700','11','254','79','clean'),('xfig','3.2.4','not no_compkeydb','2','1','4','20066','573','2','63','720','11','207','79','clean'),('xfig','3.2.5','not no_compkeydb','1','1','5','12800','240','1','96','741','12','160','80','clean'),('xfig','3.2.0','not sysv','2','1','1','5778','354','2','37','467','56','113','63','clean'),('xfig','3.2.1','not sysv','1','1','2','8760','193','1','33','477','11','120','73','clean'),('xfig','3.2.3','not sysv','1','1','3','20066','333','1','69','700','11','254','79','clean'),('xfig','3.2.4','not sysv','2','1','4','20066','573','2','63','720','11','207','79','clean'),('xfig','3.2.5','not sysv','2','2','6','791','14','2','96','756','12','83','43','clean'),('xfig','3.2.0','not useinstalledjpeg','2','1','1','2948','397','2','37','318','0','131','67','clean'),('xfig','3.2.1','not useinstalledjpeg','1','1','2','17745','286','1','33','363','0','195','91','clean'),('xfig','3.2.2','not useinstalledjpeg','1','1','3','30843','356','1','31','427','0','207','149','clean'),('xfig','3.2.3','not useinstalledjpeg','2','1','4','30843','464','2','69','425','0','133','98','clean'),('xfig','3.2.4','not useinstalledjpeg','1','1','5','5859','156','1','63','478','0','63','93','clean'),('xfig','3.2.5','not useinstalledjpeg','2','2','7','1770','535','2','96','239','0','31','314','clean'),('xfig','3.2.0','setlocale','1','1','1','504','504','1','37','451','59','504','0','clean'),('xfig','3.2.3','setlocale','1','1','2','860','63','1','69','662','67','43','20','clean'),('xfig','3.2.4','setlocale','2','1','3','860','76','2','63','661','67','24','13','clean'),('xfig','3.2.5','setlocale','2','2','5','93','29','2','96','661','67','10','11','clean'),('xfig','3.2.0','use_dirent','1','1','1','5300','1087','2','37','660','88','517','26','clean'),('xfig','3.2.1','use_dirent','1','1','2','5300','1087','2','33','660','88','517','26','clean'),('xfig','3.2.2','use_dirent','1','1','3','14136','649','2','31','711','97','196','128','clean'),('xfig','3.2.3','use_dirent','1','1','4','14136','649','2','69','711','97','196','128','clean'),('xfig','3.2.0','use_gif','2','1','1','92256','2472','7','37','1060','196','222','130','clean'),('xfig','3.2.1','use_gif','1','1','2','46893','727','2','33','915','218','194','169','clean'),('xfig','3.2.2','use_gif','1','1','3','771951','2018','2','31','2054','335','714','294','clean'),('xfig','3.2.3','use_gif','1','1','4','771951','2018','2','69','2054','335','714','294','clean'),('xfig','3.2.0','use_inline','2','1','1','30','53','2','37','56','0','13','13','clean'),('xfig','3.2.1','use_inline','1','1','2','384','40','1','33','56','0','16','24','clean'),('xfig','3.2.2','use_inline','1','1','3','48','16','1','31','56','0','12','4','clean'),('xfig','3.2.3','use_inline','1','1','4','48','16','1','69','56','0','12','4','clean'),('xfig','3.2.5','use_inline','1','1','5','270','37','1','96','58','0','10','27','clean'),('xfig','3.2.0','use_jpeg','2','1','1','1440','2563','8','37','711','90','187','132','clean'),('xfig','3.2.1','use_jpeg','1','1','2','247399','1718','5','33','921','126','198','144','clean'),('xfig','3.2.2','use_jpeg','1','1','3','771951','2692','5','31','1067','151','381','157','clean'),('xfig','3.2.3','use_jpeg','4','1','4','771951','6621','16','69','1014','140','273','140','clean'),('xfig','3.2.4','use_jpeg','2','1','5','1025640','3728','7','63','942','122','336','196','clean'),('xfig','3.2.5','use_jpeg','2','2','7','3722','196','2','96','2329','349','67','69','clean'),('xfig','3.2.6','use_jpeg','2','1','8','9603','812','2','33','2309','325','199','206','clean'),('xfig','3.2.0','use_small_icons','1','1','1','449688','1487','2','37','976','0','506','237','clean'),('xfig','3.2.1','use_small_icons','1','1','2','449688','1487','2','33','976','0','506','237','clean'),('xfig','3.2.5','use_small_icons','3','1','3','4480','13230','4','96','2130','1','1668','1639','clean'),('xfig','3.2.0','use_xpm','2','1','1','1440','2101','7','37','662','89','171','128','clean'),('xfig','3.2.1','use_xpm','1','1','2','247399','1256','4','33','887','133','173','140','clean'),('xfig','3.2.2','use_xpm','1','1','3','771951','2451','7','31','686','91','248','101','clean'),('xfig','3.2.3','use_xpm','5','1','4','771951','8355','20','69','1011','113','316','101','clean'),('xfig','3.2.4','use_xpm','2','1','5','1025640','6582','12','63','1097','106','408','140','clean'),('xfig','3.2.5','use_xpm','6','2','7','377','1907','13','96','1536','52','698','792','clean'),('xfig','3.2.6','use_xpm','3','1','8','170','2913','9','33','1221','85','75','248','clean'),('xfig','3.2.0','use_xpm_icon','1','1','1','61640','498','1','37','1168','163','268','230','clean'),('xfig','3.2.1','use_xpm_icon','1','1','2','61640','498','1','33','1168','163','268','230','clean'),('xfig','3.2.2','use_xpm_icon','1','1','3','128','1697','3','31','1107','101','319','246','clean'),('xfig','3.2.3','use_xpm_icon','2','1','4','128','4517','5','69','1700','64','674','228','clean'),('xfig','3.2.4','use_xpm_icon','2','1','5','152622','3216','3','63','2204','122','893','178','clean'),('xfig','3.2.5','use_xpm_icon','5','2','7','2933','1031','7','96','846','27','799','684','clean'),('xfig','3.2.6','use_xpm_icon','1','1','8','49','20','2','33','2083','98','5','5','clean'),('xfig','3.2.0','usegif','2','1','1','2948','397','2','37','318','0','131','67','clean'),('xfig','3.2.1','usegif','1','1','2','17745','286','1','33','363','0','195','91','clean'),('xfig','3.2.2','usegif','1','1','3','30843','356','1','31','427','0','207','149','clean'),('xfig','3.2.3','usegif','1','1','4','30843','356','1','69','427','0','207','149','clean'),('xfig','3.2.0','useinstalledjpeg','2','1','1','2948','397','2','37','318','0','131','67','clean'),('xfig','3.2.1','useinstalledjpeg','1','1','2','17745','286','1','33','363','0','195','91','clean'),('xfig','3.2.2','useinstalledjpeg','1','1','3','30843','356','1','31','427','0','207','149','clean'),('xfig','3.2.3','useinstalledjpeg','2','1','4','30843','537','2','69','469','0','155','113','clean'),('xfig','3.2.4','useinstalledjpeg','2','1','5','8034','337','2','63','494','0','83','85','clean'),('xfig','3.2.5','useinstalledjpeg','4','2','7','1770','1070','6','96','321','0','19','201','clean'),('xfig','3.2.0','usejpeg','2','1','1','2948','397','2','37','318','0','131','67','clean'),('xfig','3.2.1','usejpeg','1','1','2','17745','286','1','33','363','0','195','91','clean'),('xfig','3.2.2','usejpeg','1','1','3','30843','356','1','31','427','0','207','149','clean'),('xfig','3.2.3','usejpeg','3','1','4','30843','645','3','69','454','0','123','91','clean'),('xfig','3.2.4','usejpeg','2','1','5','8034','337','2','63','494','0','83','85','clean'),('xfig','3.2.5','usejpeg','4','2','7','1770','535','4','96','361','0','26','165','clean'),('xfig','3.2.0','usesmallicons','1','1','1','17745','286','1','37','363','0','195','91','clean'),('xfig','3.2.1','usesmallicons','1','1','2','17745','286','1','33','363','0','195','91','clean'),('xfig','3.2.3','usesmallicons','1','1','3','8034','181','1','69','511','0','103','78','clean'),('xfig','3.2.4','usesmallicons','1','1','4','8034','181','1','63','511','0','103','78','clean'),('xfig','3.2.5','usesmallicons','1','1','5','535','535','1','96','0','0','0','535','clean'),('xfig','3.2.0','usexpm','2','1','1','2948','397','2','37','318','0','131','67','clean'),('xfig','3.2.1','usexpm','1','1','2','17745','286','1','33','363','0','195','91','clean'),('xfig','3.2.2','usexpm','1','1','3','30843','356','1','31','427','0','207','149','clean'),('xfig','3.2.3','usexpm','3','1','4','30843','620','3','69','473','0','123','83','clean'),('xfig','3.2.4','usexpm','2','1','5','8034','337','2','63','494','0','83','85','clean'),('xfig','3.2.5','usexpm','3','2','7','1770','535','3','96','320','0','25','213','clean'),('xfig','3.2.0','usexpm_icon','1','1','1','2948','111','1','37','274','0','67','44','clean'),('xfig','3.2.2','usexpm_icon','1','1','2','30843','356','1','31','427','0','207','149','clean'),('xfig','3.2.3','usexpm_icon','2','1','3','30843','537','2','69','469','0','155','113','clean'),('xfig','3.2.4','usexpm_icon','1','1','4','8034','181','1','63','511','0','103','78','clean'),('xfig','3.2.5','usexpm_icon','1','1','5','535','535','1','96','0','0','0','535','clean'),('xfig','3.2.0','v4_0','1','1','1','247399','2147','6','37','988','155','213','144','clean'),('xfig','3.2.1','v4_0','1','1','2','247399','2147','6','33','988','155','213','144','clean'),('xfig','3.2.2','v4_0','1','1','3','5','3619','8','31','966','150','335','116','clean'),('xfig','3.2.3','v4_0','3','1','4','5','8320','17','69','962','141','318','171','clean'),('xfig','3.2.4','v4_0','1','1','5','120','4690','8','63','1054','151','339','247','clean'),('xfig','3.2.0','when_save_yourself_is_fixed','1','1','1','84','19','1','37','92','21','7','12','clean'),('xfig','3.2.1','when_save_yourself_is_fixed','1','1','2','84','19','1','33','92','21','7','12','clean'),('xfig','3.2.2','when_save_yourself_is_fixed','1','1','3','239112','978','1','31','1156','141','486','492','clean'),('xfig','3.2.3','when_save_yourself_is_fixed','2','1','4','239112','1805','2','69','1241','160','517','385','clean'),('xfig','3.2.4','when_save_yourself_is_fixed','2','1','5','152622','863','2','63','704','99','283','148','clean'),('xfig','3.2.5','when_save_yourself_is_fixed','1','1','6','324','36','1','96','81','20','18','18','clean'),('xfig','3.2.2','center_page','1','1','1','26820','329','1','31','434','91','149','180','clean'),('xfig','3.2.3','center_page','2','1','2','26820','533','2','69','471','102','151','115','clean'),('xfig','3.2.4','center_page','1','1','3','7700','204','1','63','508','113','154','50','clean'),('xfig','3.2.2','eps_rot_fixed','1','1','1','2812','112','1','31','316','84','74','38','clean'),('xfig','3.2.3','eps_rot_fixed','1','1','2','2812','112','1','69','316','84','74','38','clean'),('xfig','3.2.2','have_no_dirent','1','1','1','48','665','3','31','493','65','135','86','clean'),('xfig','3.2.3','have_no_dirent','3','1','2','48','1166','5','69','660','86','144','89','clean'),('xfig','3.2.4','have_no_dirent','1','1','3','4704','592','2','63','945','137','151','144','clean'),('xfig','3.2.5','have_no_dirent','4','2','5','362','300','6','96','649','91','62','88','clean'),('xfig','3.2.2','i18n_use_preedit','1','1','1','726','2383','5','31','706','101','312','164','clean'),('xfig','3.2.3','i18n_use_preedit','2','1','2','726','4035','7','69','929','153','393','183','clean'),('xfig','3.2.4','i18n_use_preedit','2','1','3','116564','2760','5','63','1224','223','371','181','clean'),('xfig','3.2.5','i18n_use_preedit','2','2','5','6028','118','5','96','958','190','143','102','clean'),('xfig','3.2.2','linux','1','1','1','114245','678','1','31','1404','362','313','365','clean'),('xfig','3.2.3','linux','1','1','2','114245','678','1','69','1404','362','313','365','clean'),('xfig','3.2.2','newarrowtypes','1','1','1','771951','3419','4','31','2042','345','586','268','clean'),('xfig','3.2.3','newarrowtypes','2','1','2','771951','8390','9','69','2004','312','686','246','clean'),('xfig','3.2.4','newarrowtypes','2','1','3','1025640','6387','8','63','1624','250','572','226','clean'),('xfig','3.2.5','newarrowtypes','3','2','5','9338','50','6','96','1401','246','130','117','clean'),('xfig','3.2.2','not max_sideruler_ht','1','1','1','99','20','1','31','17','0','11','9','clean'),('xfig','3.2.3','not max_sideruler_ht','1','1','2','99','20','1','69','17','0','11','9','clean'),('xfig','3.2.2','notdef  ','1','1','1','172017','898','1','31','697','77','621','277','clean'),('xfig','3.2.3','notdef  ','2','1','2','172017','999','2','69','709','76','341','158','clean'),('xfig','3.2.4','notdef  ','1','1','3','2440','101','1','63','721','76','61','40','clean'),('xfig','3.2.2','testing_grids','1','1','1','97818','1127','2','31','1945','328','364','199','clean'),('xfig','3.2.3','testing_grids','2','1','2','97818','3704','4','69','2198','342','669','256','clean'),('xfig','3.2.4','testing_grids','1','1','3','319484','2577','2','63','2451','356','975','313','clean'),('xfig','3.2.2','xaw3d','1','1','1','30843','675','3','31','206','5','175','49','clean'),('xfig','3.2.3','xaw3d','5','1','2','30843','2794','25','69','148','11','98','13','clean'),('xfig','3.2.4','xaw3d','2','1','3','8034','1964','19','63','207','21','77','26','clean'),('xfig','3.2.5','xaw3d','5','2','5','1770','1259','19','96','219','20','22','82','clean'),('xfig','3.2.6','xaw3d','1','1','6','3969','174','3','33','219','36','29','29','clean'),('xfig','3.2.3','_posix_source','1','1','1','240','31','1','69','58','0','15','16','clean'),('xfig','3.2.4','_posix_source','1','1','2','240','31','1','63','58','0','15','16','clean'),('xfig','3.2.5','_posix_source','1','1','3','14539','284','1','96','61','0','67','217','clean'),('xfig','3.2.3','apollo','1','1','1','766','766','1','69','476','76','766','0','clean'),('xfig','3.2.4','apollo','1','1','2','766','766','1','63','476','76','766','0','clean'),('xfig','3.2.3','cache_fid','1','1','1','10712','207','1','69','956','231','104','103','clean'),('xfig','3.2.4','cache_fid','1','1','2','10712','207','1','63','956','231','104','103','clean'),('xfig','3.2.3','cache_ximages','1','1','1','10712','207','1','69','956','231','104','103','clean'),('xfig','3.2.4','cache_ximages','1','1','2','10712','207','1','63','956','231','104','103','clean'),('xfig','3.2.3','digitize','1','1','1','35768','399','1','69','1158','125','263','136','clean'),('xfig','3.2.4','digitize','2','1','2','35768','1061','2','63','1216','138','346','184','clean'),('xfig','3.2.5','digitize','2','2','4','12633','80','2','96','1275','152','235','136','clean'),('xfig','3.2.6','digitize','1','1','5','1600','80','1','33','1276','153','40','40','clean'),('xfig','3.2.3','enametoolong','1','1','1','1580','342','2','69','862','218','106','65','clean'),('xfig','3.2.4','enametoolong','1','1','2','1580','342','2','63','862','218','106','65','clean'),('xfig','3.2.3','fixed_japanese_pdf','1','1','1','35768','399','1','69','1158','125','263','136','clean'),('xfig','3.2.4','fixed_japanese_pdf','2','1','2','35768','1061','2','63','1216','138','346','184','clean'),('xfig','3.2.5','fixed_japanese_pdf','2','1','3','99760','671','2','96','1275','152','217','118','clean'),('xfig','3.2.3','have_no_strcasecmp','1','1','1','101757','638','1','69','998','18','321','317','clean'),('xfig','3.2.4','have_no_strcasecmp','1','1','2','101757','638','1','63','998','18','321','317','clean'),('xfig','3.2.5','have_no_strcasecmp','1','1','3','558','99','1','96','973','18','6','93','clean'),('xfig','3.2.3','maxerr','1','1','1','143','24','1','69','413','90','13','11','clean'),('xfig','3.2.4','maxerr','1','1','2','143','24','1','63','413','90','13','11','clean'),('xfig','3.2.3','maxpathlen','1','1','1','240','31','1','69','58','0','15','16','clean'),('xfig','3.2.4','maxpathlen','1','1','2','240','31','1','63','58','0','15','16','clean'),('xfig','3.2.5','maxpathlen','1','1','3','14539','284','1','96','61','0','67','217','clean'),('xfig','3.2.3','need_strerror','2','1','1','1634','102','3','69','348','6','18','15','clean'),('xfig','3.2.5','need_strerror','2','2','3','3','292','3','96','365','6','24','73','clean'),('xfig','3.2.3','not path_max','1','1','1','240','31','1','69','58','0','15','16','clean'),('xfig','3.2.4','not path_max','1','1','2','240','31','1','63','58','0','15','16','clean'),('xfig','3.2.5','not path_max','2','1','3','14539','342','3','96','20','0','32','82','clean'),('xfig','3.2.6','not path_max','2','1','4','29','35','3','33','130','0','2','9','clean'),('xfig','3.2.3','not s_iwgrp','1','1','1','101757','638','1','69','998','18','321','317','clean'),('xfig','3.2.4','not s_iwgrp','1','1','2','101757','638','1','63','998','18','321','317','clean'),('xfig','3.2.3','not s_iwoth','1','1','1','101757','638','1','69','998','18','321','317','clean'),('xfig','3.2.4','not s_iwoth','1','1','2','101757','638','1','63','998','18','321','317','clean'),('xfig','3.2.3','not s_iwusr','1','1','1','101757','638','1','69','998','18','321','317','clean'),('xfig','3.2.4','not s_iwusr','1','1','2','101757','638','1','63','998','18','321','317','clean'),('xfig','3.2.3','not x_not_posix','1','1','1','240','31','1','69','58','0','15','16','clean'),('xfig','3.2.4','not x_not_posix','1','1','2','240','31','1','63','58','0','15','16','clean'),('xfig','3.2.5','not x_not_posix','1','1','3','14539','284','1','96','61','0','67','217','clean'),('xfig','3.2.3','not xaw3d','1','1','1','766','766','1','69','476','76','766','0','clean'),('xfig','3.2.4','not xaw3d','1','1','2','766','766','1','63','476','76','766','0','clean'),('xfig','3.2.5','not xaw3d','1','1','3','3969','126','1','96','459','88','63','63','clean'),('xfig','3.2.6','not xaw3d','1','1','4','3969','126','1','33','459','88','63','63','clean'),('xfig','3.2.3','not xtcfontset','1','1','1','107','107','1','69','6','0','107','0','clean'),('xfig','3.2.4','not xtcfontset','1','1','2','107','107','1','63','6','0','107','0','clean'),('xfig','3.2.3','not xtnfontset','1','1','1','107','107','1','69','6','0','107','0','clean'),('xfig','3.2.4','not xtnfontset','1','1','2','107','107','1','63','6','0','107','0','clean'),('xfig','3.2.3','notdef			','1','1','1','220','31','1','69','128','0','20','11','clean'),('xfig','3.2.4','notdef			','1','1','2','220','31','1','63','128','0','20','11','clean'),('xfig','3.2.3','pcxbug','2','1','1','88506','693','2','69','327','78','173','173','clean'),('xfig','3.2.4','pcxbug','1','1','2','2401','98','1','63','329','77','49','49','clean'),('xfig','3.2.3','sel_text','1','1','1','116564','1158','2','69','1172','199','449','130','clean'),('xfig','3.2.4','sel_text','2','1','2','116564','1619','4','63','1180','201','292','112','clean'),('xfig','3.2.5','sel_text','3','2','4','6028','110','4','96','1411','305','84','66','clean'),('xfig','3.2.3','sigbus','1','1','1','152622','843','2','69','705','99','278','143','clean'),('xfig','3.2.4','sigbus','1','1','2','152622','843','2','63','705','99','278','143','clean'),('xfig','3.2.3','speed','1','1','1','143','48','2','69','413','90','13','11','clean'),('xfig','3.2.4','speed','1','1','2','143','48','2','63','413','90','13','11','clean'),('xfig','3.2.3','use_alpha','1','1','1','206','206','1','69','137','33','206','0','clean'),('xfig','3.2.3','use_png','2','1','1','11750','2651','6','69','1495','216','284','157','clean'),('xfig','3.2.4','use_png','1','1','2','1025640','2415','3','63','1594','220','523','282','clean'),('xfig','3.2.3','use_tab','1','1','1','152622','827','1','69','1327','179','549','278','clean'),('xfig','3.2.4','use_tab','2','1','2','152622','1223','2','63','1379','184','406','205','clean'),('xfig','3.2.5','use_tab','1','1','3','34848','396','1','96','1432','189','264','132','clean'),('xfig','3.2.3','use_text_bg','2','1','1','56574','1400','2','69','1481','339','546','153','clean'),('xfig','3.2.4','use_text_bg','1','1','2','116564','825','1','63','1645','387','644','181','clean'),('xfig','3.2.3','usepng','2','1','1','1416','264','2','69','496','0','81','51','clean'),('xfig','3.2.4','usepng','1','1','2','8034','181','1','63','511','0','103','78','clean'),('xfig','3.2.3','wheelmouse','1','1','1','8034','1999','4','69','1141','151','418','81','clean'),('xfig','3.2.4','wheelmouse','2','1','2','8034','3351','8','63','1128','152','288','130','clean'),('xfig','3.2.5','wheelmouse','1','1','3','5859','1352','4','96','1114','153','158','179','clean'),('xfig','3.2.3','wheelmouse  ','1','1','1','319484','2577','2','69','2451','356','975','313','clean'),('xfig','3.2.4','wheelmouse  ','2','1','2','319484','3947','4','63','2459','366','674','312','clean'),('xfig','3.2.5','wheelmouse  ','1','1','3','234649','1370','2','96','2468','376','373','312','clean'),('xfig','3.2.3','x_not_stdc_env','1','1','1','766','766','1','69','476','76','766','0','clean'),('xfig','3.2.4','x_not_stdc_env','2','1','2','766','883','2','63','467','82','414','27','clean'),('xfig','3.2.5','x_not_stdc_env','2','2','4','958','37','2','96','258','44','36','40','clean'),('xfig','3.2.4','clip_line','1','1','1','26715','476','1','63','1399','275','411','65','clean'),('xfig','3.2.5','clip_line','1','1','2','26715','476','1','96','1399','275','411','65','clean'),('xfig','3.2.4','dont_show_depths','1','1','1','31280','387','1','63','479','120','272','115','clean'),('xfig','3.2.5','dont_show_depths','1','1','2','31280','387','1','96','479','120','272','115','clean'),('xfig','3.2.4','not frandom','1','1','1','240','32','1','63','59','0','20','12','clean'),('xfig','3.2.5','not frandom','1','1','2','240','32','1','96','59','0','20','12','clean'),('xfig','3.2.4','not xaw3d1_5e','1','1','1','5859','3460','8','63','1230','168','243','189','clean'),('xfig','3.2.5','not xaw3d1_5e','6','2','3','1770','665','16','96','1159','166','126','133','clean'),('xfig','3.2.6','not xaw3d1_5e','1','1','4','1600','112','2','33','1274','159','28','28','clean'),('xfig','3.2.4','report_xy_always','1','1','1','12800','240','1','63','741','12','160','80','clean'),('xfig','3.2.5','report_xy_always','2','1','2','12800','308','2','96','756','12','109','45','clean'),('xfig','3.2.4','xaw3d1_5e','1','1','1','5859','4058','10','63','1149','159','222','183','clean'),('xfig','3.2.5','xaw3d1_5e','5','2','3','1770','660','17','96','830','108','137','144','clean'),('xfig','3.2.6','xaw3d1_5e','1','1','4','3136','112','1','33','1615','250','56','56','clean'),('xfig','3.2.5','__cplusplus','2','1','1','7736','9421','2','96','7121','112','4506','204','clean'),('xfig','3.2.6','__cplusplus','2','1','2','306858','2250','2','33','7516','109','490','634','clean'),('xfig','3.2.5','__gnuc__','1','1','1','7736','7736','1','96','6718','112','7736','0','clean'),('xfig','3.2.6','__gnuc__','1','1','2','289920','1139','1','33','7370','102','384','755','clean'),('xfig','3.2.5','__stdc__','1','1','1','7736','7736','1','96','6718','112','7736','0','clean'),('xfig','3.2.6','__stdc__','1','1','2','306858','1111','1','33','7662','117','597','514','clean'),('xfig','3.2.5','_aix','1','1','1','7736','7736','1','96','6718','112','7736','0','clean'),('xfig','3.2.6','_aix','1','1','2','289920','1139','1','33','7370','102','384','755','clean'),('xfig','3.2.5','_msc_ver','1','1','1','7736','7736','1','96','6718','112','7736','0','clean'),('xfig','3.2.6','_msc_ver','1','1','2','289920','1139','1','33','7370','102','384','755','clean'),('xfig','3.2.5','ancient ','1','1','1','14539','284','1','96','61','0','67','217','clean'),('xfig','3.2.5','arrows4to14','1','1','1','624','50','1','96','3760','582','26','24','clean'),('xfig','3.2.5','cray','1','1','1','98','382','2','96','30','0','82','108','clean'),('xfig','3.2.5','have_getcwd','1','1','1','558','99','1','96','973','18','6','93','clean'),('xfig','3.2.5','have_index','1','1','1','22','22','1','96','10','4','22','0','clean'),('xfig','3.2.5','have_no_strncasecmp','1','1','1','558','99','1','96','973','18','6','93','clean'),('xfig','3.2.5','have_rindex','1','1','1','21','21','1','96','10','4','21','0','clean'),('xfig','3.2.5','isc','2','1','1','270','321','2','96','59','0','38','122','clean'),('xfig','3.2.5','luna','1','1','1','98','382','2','96','30','0','82','108','clean'),('xfig','3.2.5','mips','1','1','1','98','382','2','96','30','0','82','108','clean'),('xfig','3.2.5','motorola','1','1','1','98','382','2','96','30','0','82','108','clean'),('xfig','3.2.5','nostdhdrs','1','1','1','98','382','2','96','30','0','82','108','clean'),('xfig','3.2.5','not','1','1','1','521016','1685','1','96','7524','112','1277','408','clean'),('xfig','3.2.5','not __bool_true_false_are_defined','2','1','1','7736','9421','2','96','7121','112','4506','204','clean'),('xfig','3.2.6','not __bool_true_false_are_defined','1','1','2','306858','1111','1','33','7662','117','597','514','clean'),('xfig','3.2.5','not __cplusplus','1','1','1','247','7983','2','96','3359','56','3991','0','clean'),('xfig','3.2.5','not __freebsd__','2','1','1','35','161','5','96','770','131','19','12','clean'),('xfig','3.2.6','not __freebsd__','1','1','2','2146','133','3','33','703','121','24','20','clean'),('xfig','3.2.5','not __gnuc__','1','1','1','7736','7736','1','96','6718','112','7736','0','clean'),('xfig','3.2.5','not _xvertext_included_','1','1','1','4','4','1','96','23','0','2','2','clean'),('xfig','3.2.6','not _xvertext_included_','1','1','2','4','4','1','33','23','0','2','2','clean'),('xfig','3.2.5','not alloca ','1','1','1','7736','7736','1','96','6718','112','7736','0','clean'),('xfig','3.2.6','not alloca ','1','1','2','289920','1139','1','33','7370','102','384','755','clean'),('xfig','3.2.5','not bool','2','1','1','7736','9421','2','96','7121','112','4506','204','clean'),('xfig','3.2.6','not bool','1','1','2','306858','1111','1','33','7662','117','597','514','clean'),('xfig','3.2.5','not cache_size_limit','1','1','1','15625','250','1','96','877','231','125','125','clean'),('xfig','3.2.6','not cache_size_limit','1','1','2','15625','250','1','33','877','231','125','125','clean'),('xfig','3.2.5','not dirstruct','1','1','1','41','41','1','96','4','0','41','0','clean'),('xfig','3.2.6','not dirstruct','1','1','2','252','32','1','33','4','0','18','14','clean'),('xfig','3.2.5','not false','2','1','1','7736','9421','2','96','7121','112','4506','204','clean'),('xfig','3.2.6','not false','1','1','2','306858','1111','1','33','7662','117','597','514','clean'),('xfig','3.2.5','not have_setlocale','1','1','1','210','29','1','96','662','67','14','15','clean'),('xfig','3.2.5','not have_strerror','2','1','1','15','320','3','96','669','12','28','78','clean'),('xfig','3.2.6','not have_strerror','1','1','2','196','28','1','33','974','18','14','14','clean'),('xfig','3.2.5','not strchr','1','1','1','270','37','1','96','58','0','10','27','clean'),('xfig','3.2.5','not strrchr','1','1','1','270','37','1','96','58','0','10','27','clean'),('xfig','3.2.5','not systype_sysv','1','1','1','98','382','2','96','30','0','82','108','clean'),('xfig','3.2.5','not true','2','1','1','7736','9421','2','96','7121','112','4506','204','clean'),('xfig','3.2.6','not true','1','1','2','306858','1111','1','33','7662','117','597','514','clean'),('xfig','3.2.5','not ultrix			','1','1','1','98','382','2','96','30','0','82','108','clean'),('xfig','3.2.5','not use_xpm','2','1','1','247','1031','4','96','135','0','212','45','clean'),('xfig','3.2.5','not xcomm','1','1','1','535','535','1','96','0','0','0','535','clean'),('xfig','3.2.5','sgi','1','1','1','63','347','2','96','36','0','65','108','clean'),('xfig','3.2.5','sony','1','1','1','98','382','2','96','30','0','82','108','clean'),('xfig','3.2.5','stdc_headers','1','1','1','7736','7736','1','96','6718','112','7736','0','clean'),('xfig','3.2.5','sysv','2','1','1','270','482','4','96','32','0','59','61','clean'),('xfig','3.2.5','sysv ','2','1','1','98','390','3','96','20','0','56','73','clean'),('xfig','3.2.6','sysv ','1','1','2','16','8','1','33','0','0','4','4','clean'),('xfig','3.2.5','sysv386','1','1','1','98','382','2','96','30','0','82','108','clean'),('xfig','3.2.5','use_xpm and rename','1','1','1','18','18','1','96','16','0','18','0','clean'),('xfig','3.2.5','use_xpm_splash','1','1','1','3136','112','1','96','1615','250','56','56','clean'),('xfig','3.2.6','use_xpm_splash','2','1','2','3136','150','2','33','1615','252','40','35','clean'),('xfig','3.2.5','usl','2','1','1','98','390','3','96','20','0','56','73','clean'),('xfig','3.2.6','usl','1','1','2','16','8','1','33','0','0','4','4','clean'),('xfig','3.2.5','utek','1','1','1','98','382','2','96','30','0','82','108','clean'),('xfig','3.2.5','vax','1','1','1','98','382','2','96','30','0','82','108','clean'),('xfig','3.2.5','x_usebfuncs','2','1','1','270','384','3','96','43','0','46','81','clean'),('xfig','3.2.5','xawclientlibs','2','2','2','590','535','2','96','242','0','15','278','clean'),('xfig','3.2.6','i18n etc confused','1','1','1','381612','1237','1','33','512','166','588','649','clean'),('xfig','3.2.6','use_splash','1','1','1','9','44','2','33','2165','129','13','8','clean');
/*!40000 ALTER TABLE `xfig_feat_final` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-07 14:27:31
