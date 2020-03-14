-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: dataset_evaluation_feat
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
-- Table structure for table `xfig_metrics`
--

DROP TABLE IF EXISTS `xfig_metrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xfig_metrics` (
  `name` varchar(255) DEFAULT NULL,
  `release_number` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `revi` varchar(255) DEFAULT NULL,
  `refa` varchar(255) DEFAULT NULL,
  `bugf` varchar(255) DEFAULT NULL,
  `auth` varchar(255) DEFAULT NULL,
  `addl` varchar(255) DEFAULT NULL,
  `addm` varchar(255) DEFAULT NULL,
  `adda` varchar(255) DEFAULT NULL,
  `reml` varchar(255) DEFAULT NULL,
  `remm` varchar(255) DEFAULT NULL,
  `rema` varchar(255) DEFAULT NULL,
  `cchl` varchar(255) DEFAULT NULL,
  `cchm` varchar(255) DEFAULT NULL,
  `ccha` varchar(255) DEFAULT NULL,
  `maxc` varchar(255) DEFAULT NULL,
  `avgc` varchar(255) DEFAULT NULL,
  `aage` varchar(255) DEFAULT NULL,
  `wage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xfig_metrics`
--

LOCK TABLES `xfig_metrics` WRITE;
/*!40000 ALTER TABLE `xfig_metrics` DISABLE KEYS */;
INSERT INTO `xfig_metrics` VALUES ('xfig','3.2.0','d_text.c','2','0','0','1','1182','77','296','190','92','48','992','511','248','58','50','0.0','1.0'),('xfig','3.2.0','d_text.h','1','0','0','1','30','30','30','0','0','0','30','30','30','58','58','0.0','1.0'),('xfig','3.2.0','e_edit.c','2','0','0','1','2149','551','537','1533','449','383','616','310','154','58','50','0.0','1.0'),('xfig','3.2.0','f_neuclrtab.c','1','0','0','1','10','10','10','12','12','12','-2','-2','-2','58','58','0.0','1.0'),('xfig','3.2.0','f_picobj.c','1','0','0','1','294','98','98','246','82','82','48','16','16','58','58','0.0','1.0'),('xfig','3.2.0','f_read.c','2','0','0','1','399','231','200','253','50','126','146','118','73','58','50','0.0','1.0'),('xfig','3.2.0','f_readeps.c','2','0','0','1','57','35','28','38','23','19','19','20','10','58','50','0.0','1.0'),('xfig','3.2.0','f_save.c','1','0','0','1','72','72','72','54','54','54','18','18','18','58','58','0.0','1.0'),('xfig','3.2.0','f_util.c','2','0','0','1','226','211','113','91','78','46','135','133','68','58','50','0.0','1.0'),('xfig','3.2.0','f_wrjpg.c','1','0','0','1','126','126','126','28','28','28','98','98','98','41','41','0.0','1.0'),('xfig','3.2.0','Fig-color.ad','2','0','0','1','106','94','53','235','3','118','-129','9','-64','58','50','0.0','1.0'),('xfig','3.2.0','Fig-color.classic.ad','2','0','0','1','265','265','132','3','3','2','262','265','131','58','50','0.0','1.0'),('xfig','3.2.0','Fig.ad','1','0','0','1','81','81','81','39','39','39','42','42','42','58','58','0.0','1.0'),('xfig','3.2.0','fig.h','2','0','0','1','68','16','14','78','3','16','-10','7','-2','58','50','0.0','1.0'),('xfig','3.2.0','Imakefile','2','0','0','1','2096','67','131','1080','91','68','1016','104','64','58','50','0.0','1.0'),('xfig','3.2.0','main.c','2','0','0','1','1008','472','336','643','230','214','365','289','122','58','50','0.0','1.0'),('xfig','3.2.0','mode.c','2','0','0','1','156','36','31','156','40','31','0','6','0','58','50','0.0','1.0'),('xfig','3.2.0','mode.h','2','0','0','1','57','21','14','64','17','16','-7','8','-2','58','50','0.0','1.0'),('xfig','3.2.0','object.h','1','0','0','1','70','35','35','52','26','26','18','9','9','58','58','0.0','1.0'),('xfig','3.2.0','resources.h','2','0','0','1','98','57','49','33','9','16','65','33','32','58','50','0.0','1.0'),('xfig','3.2.0','u_draw.c','1','0','0','1','314','314','314','177','177','177','137','137','137','58','58','0.0','1.0'),('xfig','3.2.0','u_error.c','1','0','0','1','7','7','7','12','12','12','-5','-5','-5','58','58','0.0','1.0'),('xfig','3.2.0','u_fonts.c','1','0','0','1','10','10','10','15','15','15','-5','-5','-5','58','58','0.0','1.0'),('xfig','3.2.0','u_print.c','2','0','0','1','142','86','71','49','32','24','93','69','46','58','50','0.0','1.0'),('xfig','3.2.0','w_canvas.c','2','0','0','1','1041','120','116','600','73','67','441','53','49','58','50','0.0','1.0'),('xfig','3.2.0','w_capture.c','1','0','0','1','158','158','158','135','135','135','23','23','23','58','58','0.0','1.0'),('xfig','3.2.0','w_cmdpanel.c','2','0','0','1','946','313','236','262','23','66','684','205','171','58','50','0.0','1.0'),('xfig','3.2.0','w_dir.c','1','0','0','1','100','100','100','53','53','53','47','47','47','58','58','0.0','1.0'),('xfig','3.2.0','w_drawprim.c','1','0','0','1','25','25','25','17','17','17','8','8','8','41','41','0.0','1.0'),('xfig','3.2.0','w_export.c','2','0','0','1','1660','458','415','995','282','249','665','176','166','58','50','0.0','1.0'),('xfig','3.2.0','w_fontpanel.c','1','0','0','1','10','10','10','3','3','3','7','7','7','41','41','0.0','1.0'),('xfig','3.2.0','w_help.c','1','0','0','1','178','178','178','0','0','0','178','178','178','58','58','0.0','1.0'),('xfig','3.2.0','w_i18n.c','2','0','0','1','1025','504','342','9','9','3','1016','504','339','58','50','0.0','1.0'),('xfig','3.2.0','w_icons.c','1','0','0','1','984','984','984','457','457','457','527','527','527','58','58','0.0','1.0'),('xfig','3.2.0','w_icons.h','1','0','0','1','28','28','28','18','18','18','10','10','10','58','58','0.0','1.0'),('xfig','3.2.0','w_library.c','1','0','0','1','934','934','934','0','0','0','934','934','934','58','58','0.0','1.0'),('xfig','3.2.0','w_rottext.c','1','0','0','1','62','62','62','3','3','3','59','59','59','41','41','0.0','1.0'),('xfig','3.2.0','w_rottext.h','1','0','0','1','11','11','11','15','15','15','-4','-4','-4','58','58','0.0','1.0'),('xfig','3.2.0','w_setup.h','1','0','0','1','10','10','10','18','18','18','-8','-8','-8','58','58','0.0','1.0'),('xfig','3.2.1','d_text.c','1','0','0','1','154','77','77','184','92','92','-30','-15','-15','58','58','0.0','1.0'),('xfig','3.2.1','d_text.h','1','0','0','1','30','30','30','0','0','0','30','30','30','58','58','0.0','1.0'),('xfig','3.2.1','e_edit.c','1','0','0','1','1653','551','551','1347','449','449','306','102','102','58','58','0.0','1.0'),('xfig','3.2.1','f_neuclrtab.c','1','0','0','1','10','10','10','12','12','12','-2','-2','-2','58','58','0.0','1.0'),('xfig','3.2.1','f_picobj.c','1','0','0','1','294','98','98','246','82','82','48','16','16','58','58','0.0','1.0'),('xfig','3.2.1','f_read.c','1','0','0','1','231','231','231','203','203','203','28','28','28','58','58','0.0','1.0'),('xfig','3.2.1','f_readeps.c','1','0','0','1','22','22','22','23','23','23','-1','-1','-1','58','58','0.0','1.0'),('xfig','3.2.1','f_save.c','1','0','0','1','72','72','72','54','54','54','18','18','18','58','58','0.0','1.0'),('xfig','3.2.1','f_util.c','1','0','0','1','211','211','211','78','78','78','133','133','133','58','58','0.0','1.0'),('xfig','3.2.1','Fig-color.ad','1','0','0','1','12','12','12','3','3','3','9','9','9','58','58','0.0','1.0'),('xfig','3.2.1','Fig-color.classic.ad','1','0','0','1','0','0','0','3','3','3','-3','-3','-3','58','58','0.0','1.0'),('xfig','3.2.1','Fig.ad','1','0','0','1','81','81','81','39','39','39','42','42','42','58','58','0.0','1.0'),('xfig','3.2.1','fig.h','1','0','0','1','48','16','16','72','24','24','-24','-8','-8','58','58','0.0','1.0'),('xfig','3.2.1','Imakefile','1','0','0','1','1560','195','195','728','91','91','832','104','104','58','58','0.0','1.0'),('xfig','3.2.1','main.c','1','0','0','1','536','268','268','460','230','230','76','38','38','58','58','0.0','1.0'),('xfig','3.2.1','mode.c','1','0','0','1','48','24','24','36','18','18','12','6','6','58','58','0.0','1.0'),('xfig','3.2.1','mode.h','1','0','0','1','21','21','21','13','13','13','8','8','8','58','58','0.0','1.0'),('xfig','3.2.1','object.h','1','0','0','1','70','35','35','52','26','26','18','9','9','58','58','0.0','1.0'),('xfig','3.2.1','resources.h','1','0','0','1','57','57','57','24','24','24','33','33','33','58','58','0.0','1.0'),('xfig','3.2.1','u_draw.c','1','0','0','1','314','314','314','177','177','177','137','137','137','58','58','0.0','1.0'),('xfig','3.2.1','u_error.c','1','0','0','1','7','7','7','12','12','12','-5','-5','-5','58','58','0.0','1.0'),('xfig','3.2.1','u_fonts.c','1','0','0','1','10','10','10','15','15','15','-5','-5','-5','58','58','0.0','1.0'),('xfig','3.2.1','u_print.c','1','0','0','1','86','86','86','17','17','17','69','69','69','58','58','0.0','1.0'),('xfig','3.2.1','w_canvas.c','1','0','0','1','720','120','120','438','73','73','282','47','47','58','58','0.0','1.0'),('xfig','3.2.1','w_capture.c','1','0','0','1','158','158','158','135','135','135','23','23','23','58','58','0.0','1.0'),('xfig','3.2.1','w_cmdpanel.c','1','0','0','1','626','313','313','216','108','108','410','205','205','58','58','0.0','1.0'),('xfig','3.2.1','w_dir.c','1','0','0','1','100','100','100','53','53','53','47','47','47','58','58','0.0','1.0'),('xfig','3.2.1','w_export.c','1','0','0','1','286','286','286','149','149','149','137','137','137','58','58','0.0','1.0'),('xfig','3.2.1','w_help.c','1','0','0','1','178','178','178','0','0','0','178','178','178','58','58','0.0','1.0'),('xfig','3.2.1','w_i18n.c','1','0','0','1','17','17','17','9','9','9','8','8','8','58','58','0.0','1.0'),('xfig','3.2.1','w_icons.c','1','0','0','1','984','984','984','457','457','457','527','527','527','58','58','0.0','1.0'),('xfig','3.2.1','w_icons.h','1','0','0','1','28','28','28','18','18','18','10','10','10','58','58','0.0','1.0'),('xfig','3.2.1','w_library.c','1','0','0','1','934','934','934','0','0','0','934','934','934','58','58','0.0','1.0'),('xfig','3.2.1','w_rottext.h','1','0','0','1','11','11','11','15','15','15','-4','-4','-4','58','58','0.0','1.0'),('xfig','3.2.1','w_setup.h','1','0','0','1','10','10','10','18','18','18','-8','-8','-8','58','58','0.0','1.0'),('xfig','3.2.2','d_picobj.c','1','0','0','1','5','5','5','1','1','1','4','4','4','74','74','0.0','1.0'),('xfig','3.2.2','d_text.c','1','0','0','1','99','33','33','66','22','22','33','11','11','74','74','0.0','1.0'),('xfig','3.2.2','d_text.h','1','0','0','1','4','4','4','1','1','1','3','3','3','74','74','0.0','1.0'),('xfig','3.2.2','e_edit.c','1','0','0','1','7005','1401','1401','2755','551','551','4250','850','850','74','74','0.0','1.0'),('xfig','3.2.2','f_picobj.c','1','0','0','1','201','67','67','90','30','30','111','37','37','74','74','0.0','1.0'),('xfig','3.2.2','f_read.c','1','0','0','1','313','313','313','365','365','365','-52','-52','-52','74','74','0.0','1.0'),('xfig','3.2.2','f_readeps.c','1','0','0','1','148','74','74','76','38','38','72','36','36','74','74','0.0','1.0'),('xfig','3.2.2','f_save.c','1','0','0','1','72','72','72','21','21','21','51','51','51','74','74','0.0','1.0'),('xfig','3.2.2','f_util.c','1','0','0','1','430','430','430','22','22','22','408','408','408','74','74','0.0','1.0'),('xfig','3.2.2','fig.h','1','0','0','1','24','12','12','8','4','4','16','8','8','74','74','0.0','1.0'),('xfig','3.2.2','fig.icon.X','1','0','0','1','0','0','0','128','128','128','-128','-128','-128','74','74','0.0','1.0'),('xfig','3.2.2','Imakefile','1','0','0','1','1656','207','207','1192','149','149','464','58','58','74','74','0.0','1.0'),('xfig','3.2.2','main.c','1','0','0','1','1944','486','486','1968','492','492','-24','-6','-6','74','74','0.0','1.0'),('xfig','3.2.2','mode.c','1','0','0','1','106','53','53','78','39','39','28','14','14','74','74','0.0','1.0'),('xfig','3.2.2','mode.h','1','0','0','1','52','26','26','22','11','11','30','15','15','74','74','0.0','1.0'),('xfig','3.2.2','object.h','1','0','0','1','54','27','27','2','1','1','52','26','26','74','74','0.0','1.0'),('xfig','3.2.2','resources.c','1','0','0','1','53','53','53','20','20','20','33','33','33','74','74','0.0','1.0'),('xfig','3.2.2','resources.h','1','0','0','1','339','113','113','177','59','59','162','54','54','74','74','0.0','1.0'),('xfig','3.2.2','u_create.c','1','0','0','1','168','168','168','26','26','26','142','142','142','74','74','0.0','1.0'),('xfig','3.2.2','u_draw.c','1','0','0','1','1034','517','517','560','280','280','474','237','237','74','74','0.0','1.0'),('xfig','3.2.2','u_print.c','1','0','0','1','214','214','214','73','73','73','141','141','141','74','74','0.0','1.0'),('xfig','3.2.2','u_redraw.c','1','0','0','1','149','149','149','180','180','180','-31','-31','-31','74','74','0.0','1.0'),('xfig','3.2.2','w_canvas.c','1','0','0','1','393','131','131','57','19','19','336','112','112','74','74','0.0','1.0'),('xfig','3.2.2','w_capture.c','1','0','0','1','28','28','28','38','38','38','-10','-10','-10','74','74','0.0','1.0'),('xfig','3.2.2','w_cmdpanel.c','1','0','0','1','2772','924','924','747','249','249','2025','675','675','74','74','0.0','1.0'),('xfig','3.2.2','w_dir.c','1','0','0','1','248','124','124','228','114','114','20','10','10','74','74','0.0','1.0'),('xfig','3.2.2','w_export.c','1','0','0','1','358','358','358','156','156','156','202','202','202','74','74','0.0','1.0'),('xfig','3.2.2','w_fontpanel.c','1','0','0','1','26','26','26','10','10','10','16','16','16','74','74','0.0','1.0'),('xfig','3.2.2','w_i18n.c','1','0','0','1','231','231','231','33','33','33','198','198','198','74','74','0.0','1.0'),('xfig','3.2.2','w_icons.c','1','0','0','1','471','471','471','120','120','120','351','351','351','74','74','0.0','1.0'),('xfig','3.2.2','w_indpanel.c','1','0','0','1','822','411','411','476','238','238','346','173','173','74','74','0.0','1.0'),('xfig','3.2.2','w_indpanel.h','1','0','0','1','17','17','17','4','4','4','13','13','13','74','74','0.0','1.0'),('xfig','3.2.2','w_library.c','1','0','0','1','538','269','269','284','142','142','254','127','127','74','74','0.0','1.0'),('xfig','3.2.2','w_menuentry.c','1','0','0','1','236','236','236','0','0','0','236','236','236','74','74','0.0','1.0'),('xfig','3.2.2','w_menuentryP.h','1','0','0','1','83','83','83','0','0','0','83','83','83','74','74','0.0','1.0'),('xfig','3.2.2','w_rottext.c','1','0','0','1','2','2','2','3','3','3','-1','-1','-1','74','74','0.0','1.0'),('xfig','3.2.2','w_rulers.c','1','0','0','1','317','317','317','161','161','161','156','156','156','74','74','0.0','1.0'),('xfig','3.2.2','w_setup.h','1','0','0','1','22','11','11','18','9','9','4','2','2','74','74','0.0','1.0'),('xfig','3.2.2','w_srchrepl.c','1','0','0','1','621','621','621','277','277','277','344','344','344','74','74','0.0','1.0'),('xfig','3.2.2','w_util.c','1','0','0','1','692','692','692','165','165','165','527','527','527','74','74','0.0','1.0'),('xfig','3.2.3','d_picobj.c','2','0','0','1','13','8','6','16','15','8','-3','4','-2','110','92','0.0','1.0'),('xfig','3.2.3','d_text.c','4','0','0','1','3622','644','362','1052','22','105','2570','463','257','110','50','0.0','1.0'),('xfig','3.2.3','d_text.h','2','0','0','1','12','8','6','6','5','3','6','3','3','110','92','0.0','1.0'),('xfig','3.2.3','e_edit.c','3','0','0','1','15696','1401','1121','7477','94','534','8219','850','587','110','70','0.0','1.0'),('xfig','3.2.3','f_load.c','1','0','0','1','79','79','79','20','20','20','59','59','59','110','110','0.0','1.0'),('xfig','3.2.3','f_neuclrtab.c','1','0','0','1','52','13','13','44','11','11','8','2','2','110','110','0.0','1.0'),('xfig','3.2.3','f_picobj.c','5','0','0','1','688','67','53','308','46','24','380','64','29','110','46','0.0','1.0'),('xfig','3.2.3','f_read.c','2','0','0','1','579','313','193','585','365','195','-6','23','-2','110','92','0.0','1.0'),('xfig','3.2.3','f_readeps.c','3','0','0','1','793','74','159','719','49','144','74','36','15','110','70','0.0','1.0'),('xfig','3.2.3','f_readpng.c','1','0','0','1','206','206','206','0','0','0','206','206','206','27','27','0.0','1.0'),('xfig','3.2.3','f_save.c','2','0','0','1','146','72','49','67','23','22','79','51','26','110','92','0.0','1.0'),('xfig','3.2.3','f_util.c','3','0','0','1','2078','430','297','1645','38','235','433','408','62','110','67','0.0','1.0'),('xfig','3.2.3','fig.h','4','0','0','1','97','3','12','80','8','10','17','8','2','110','57','0.0','1.0'),('xfig','3.2.3','fig.icon.X','1','0','0','1','0','0','0','128','128','128','-128','-128','-128','74','74','0.0','1.0'),('xfig','3.2.3','figx.h','2','0','0','1','36','22','18','12','12','6','24','22','12','110','68','0.0','1.0'),('xfig','3.2.3','Imakefile','4','0','0','1','3060','60','122','2206','78','88','854','58','34','110','57','0.0','1.0'),('xfig','3.2.3','main.c','3','0','0','1','5276','549','480','3655','492','332','1621','271','147','110','67','0.0','1.0'),('xfig','3.2.3','mode.c','3','0','0','1','320','8','64','186','53','37','134','50','27','110','70','0.0','1.0'),('xfig','3.2.3','mode.h','2','0','0','1','113','61','38','48','26','16','65','35','22','110','92','0.0','1.0'),('xfig','3.2.3','object.h','3','0','0','1','374','73','37','258','60','26','116','26','12','110','70','0.0','1.0'),('xfig','3.2.3','resources.c','2','0','0','1','78','53','39','32','20','16','46','33','23','110','92','0.0','1.0'),('xfig','3.2.3','resources.h','3','0','0','1','393','52','79','198','59','40','195','54','39','110','67','0.0','1.0'),('xfig','3.2.3','SmeBSB.c','1','0','0','1','3064','766','766','0','0','0','3064','766','766','110','110','0.0','1.0'),('xfig','3.2.3','SmeBSB.h','1','0','0','1','321','107','107','0','0','0','321','107','107','110','110','0.0','1.0'),('xfig','3.2.3','SmeBSBP.h','1','0','0','1','126','126','126','0','0','0','126','126','126','110','110','0.0','1.0'),('xfig','3.2.3','SmeCascade.c','2','0','0','1','433','419','216','21','21','10','412','419','206','110','68','0.0','1.0'),('xfig','3.2.3','SmeCascade.h','1','0','0','1','72','72','72','0','0','0','72','72','72','27','27','0.0','1.0'),('xfig','3.2.3','SmeCascadeP.h','1','0','0','1','93','93','93','0','0','0','93','93','93','27','27','0.0','1.0'),('xfig','3.2.3','u_create.c','2','0','0','1','568','400','284','126','26','63','442','300','221','110','92','0.0','1.0'),('xfig','3.2.3','u_draw.c','2','0','0','1','1411','517','470','1237','677','412','174','237','58','110','92','0.0','1.0'),('xfig','3.2.3','u_error.c','1','0','0','1','8','8','8','8','8','8','0','0','0','110','110','0.0','1.0'),('xfig','3.2.3','u_print.c','4','0','0','1','472','48','118','254','90','64','218','141','54','110','51','0.0','1.0'),('xfig','3.2.3','u_redraw.c','2','0','0','1','303','154','152','230','50','115','73','104','36','110','92','0.0','1.0'),('xfig','3.2.3','w_canvas.c','2','0','0','1','1663','254','208','452','79','56','1211','175','151','110','92','0.0','1.0'),('xfig','3.2.3','w_capture.c','1','0','0','1','28','28','28','38','38','38','-10','-10','-10','74','74','0.0','1.0'),('xfig','3.2.3','w_cmdpanel.c','2','0','0','1','3561','924','594','1155','249','192','2406','675','401','110','92','0.0','1.0'),('xfig','3.2.3','w_dir.c','2','0','0','1','249','124','83','228','114','76','21','10','7','74','39','0.0','1.0'),('xfig','3.2.3','w_export.c','2','0','0','1','940','582','470','568','412','284','372','202','186','110','92','0.0','1.0'),('xfig','3.2.3','w_fontpanel.c','1','0','0','1','26','26','26','10','10','10','16','16','16','74','74','0.0','1.0'),('xfig','3.2.3','w_help.c','1','0','0','1','7','7','7','11','11','11','-4','-4','-4','27','27','0.0','1.0'),('xfig','3.2.3','w_i18n.c','2','0','0','1','317','43','106','73','33','24','244','198','81','110','92','0.0','1.0'),('xfig','3.2.3','w_icons.c','2','0','0','1','4207','471','1402','370','125','123','3837','1743','1279','110','92','0.0','1.0'),('xfig','3.2.3','w_icons.h','1','0','0','1','40','20','20','22','11','11','18','9','9','110','110','0.0','1.0'),('xfig','3.2.3','w_indpanel.c','2','0','0','1','6850','411','1142','1324','238','221','5526','1295','921','110','92','0.0','1.0'),('xfig','3.2.3','w_indpanel.h','2','0','0','1','91','37','30','62','4','21','29','13','10','110','92','0.0','1.0'),('xfig','3.2.3','w_library.c','2','0','0','1','852','314','284','470','186','157','382','128','127','74','50','0.0','1.0'),('xfig','3.2.3','w_listwidget.c','2','0','0','1','28','4','14','11','11','6','17','13','8','110','68','0.0','1.0'),('xfig','3.2.3','w_listwidget.h','2','0','0','1','21','4','10','2','2','1','19','15','10','110','68','0.0','1.0'),('xfig','3.2.3','w_listwidgetP.h','2','0','0','1','21','4','10','2','2','1','19','15','10','110','68','0.0','1.0'),('xfig','3.2.3','w_menuentry.c','4','0','0','1','292','25','73','14','14','4','278','236','70','110','51','0.0','1.0'),('xfig','3.2.3','w_menuentry.h','1','0','0','1','5','5','5','0','0','0','5','5','5','17','17','0.0','1.0'),('xfig','3.2.3','w_menuentryP.h','2','0','0','1','85','83','42','2','2','1','83','83','42','74','46','0.0','1.0'),('xfig','3.2.3','w_rottext.c','2','0','0','1','314','2','78','312','3','78','2','1','0','110','92','0.0','1.0'),('xfig','3.2.3','w_rulers.c','2','0','0','1','1205','444','402','989','414','330','216','156','72','110','92','0.0','1.0'),('xfig','3.2.3','w_setup.h','1','0','0','1','22','11','11','18','9','9','4','2','2','74','74','0.0','1.0'),('xfig','3.2.3','w_srchrepl.c','2','0','0','1','682','621','341','317','40','158','365','344','182','110','92','0.0','1.0'),('xfig','3.2.3','w_util.c','2','0','0','1','3248','852','812','621','165','155','2627','700','657','110','92','0.0','1.0'),('xfig','3.2.3','w_util.h','1','0','0','1','46','46','46','10','10','10','36','36','36','110','110','0.0','1.0'),('xfig','3.2.3','w_zoom.c','1','0','0','1','25','25','25','8','8','8','17','17','17','110','110','0.0','1.0'),('xfig','3.2.4','d_picobj.c','1','0','0','1','8','8','8','15','15','15','-7','-7','-7','110','110','0.0','1.0'),('xfig','3.2.4','d_text.c','2','0','0','1','2906','644','415','1057','181','151','1849','463','264','110','97','0.0','1.0'),('xfig','3.2.4','d_text.h','2','0','0','1','22','8','11','17','5','8','5','3','2','110','97','0.0','1.0'),('xfig','3.2.4','e_copy.c','1','0','0','1','32','32','32','28','28','28','4','4','4','84','84','0.0','1.0'),('xfig','3.2.4','e_delete.c','1','0','0','1','39','39','39','29','29','29','10','10','10','84','84','0.0','1.0'),('xfig','3.2.4','e_edit.c','1','0','0','1','8316','1386','1386','4440','740','740','3876','646','646','110','110','0.0','1.0'),('xfig','3.2.4','f_load.c','1','0','0','1','79','79','79','20','20','20','59','59','59','110','110','0.0','1.0'),('xfig','3.2.4','f_neuclrtab.c','1','0','0','1','52','13','13','44','11','11','8','2','2','110','110','0.0','1.0'),('xfig','3.2.4','f_picobj.c','2','0','0','1','514','37','86','262','46','44','252','64','42','110','97','0.0','1.0'),('xfig','3.2.4','f_read.c','2','0','0','1','372','133','124','331','111','110','41','23','14','110','97','0.0','1.0'),('xfig','3.2.4','f_readeps.c','1','0','0','1','49','49','49','49','49','49','0','0','0','110','110','0.0','1.0'),('xfig','3.2.4','f_save.c','2','0','0','1','618','37','154','276','23','69','342','157','86','110','97','0.0','1.0'),('xfig','3.2.4','f_util.c','1','0','0','1','1605','321','321','1585','317','317','20','4','4','110','110','0.0','1.0'),('xfig','3.2.4','fig.h','2','0','0','1','120','20','17','100','16','14','20','8','3','110','97','0.0','1.0'),('xfig','3.2.4','figx.h','2','0','0','1','25','14','12','22','12','11','3','2','2','110','97','0.0','1.0'),('xfig','3.2.4','Imakefile','2','0','0','1','1557','63','82','1632','93','86','-75','25','-4','110','97','0.0','1.0'),('xfig','3.2.4','main.c','2','0','0','1','4086','549','454','2064','278','229','2022','271','225','110','97','0.0','1.0'),('xfig','3.2.4','mode.c','1','0','0','1','206','103','103','106','53','53','100','50','50','110','110','0.0','1.0'),('xfig','3.2.4','mode.h','1','0','0','1','61','61','61','26','26','26','35','35','35','110','110','0.0','1.0'),('xfig','3.2.4','object.h','1','0','0','1','292','73','73','240','60','60','52','13','13','110','110','0.0','1.0'),('xfig','3.2.4','resources.c','1','0','0','1','25','25','25','12','12','12','13','13','13','110','110','0.0','1.0'),('xfig','3.2.4','resources.h','2','0','0','1','418','52','104','330','21','82','88','31','22','110','97','0.0','1.0'),('xfig','3.2.4','SimpleMenu.c','1','0','0','1','48','48','48','92','92','92','-44','-44','-44','84','84','0.0','1.0'),('xfig','3.2.4','SmeBSB.c','2','0','0','1','3190','766','532','108','54','18','3082','766','514','110','97','0.0','1.0'),('xfig','3.2.4','SmeBSB.h','1','0','0','1','321','107','107','0','0','0','321','107','107','110','110','0.0','1.0'),('xfig','3.2.4','SmeBSBP.h','2','0','0','1','128','2','64','2','2','1','126','126','63','110','97','0.0','1.0'),('xfig','3.2.4','SmeCascade.c','1','0','0','1','14','14','14','21','21','21','-7','-7','-7','110','110','0.0','1.0'),('xfig','3.2.4','SmeCascade.h','1','0','0','1','3','3','3','4','4','4','-1','-1','-1','84','84','0.0','1.0'),('xfig','3.2.4','SmeCascadeP.h','1','0','0','1','2','2','2','3','3','3','-1','-1','-1','84','84','0.0','1.0'),('xfig','3.2.4','u_create.c','1','0','0','1','400','400','400','100','100','100','300','300','300','110','110','0.0','1.0'),('xfig','3.2.4','u_draw.c','2','0','0','1','807','430','404','1002','677','501','-195','105','-98','110','97','0.0','1.0'),('xfig','3.2.4','u_error.c','2','0','0','1','26','8','13','26','8','13','0','0','0','110','97','0.0','1.0'),('xfig','3.2.4','u_free.c','1','0','0','1','34','34','34','34','34','34','0','0','0','84','84','0.0','1.0'),('xfig','3.2.4','u_print.c','2','0','0','1','399','207','200','144','90','72','255','153','128','110','97','0.0','1.0'),('xfig','3.2.4','u_redraw.c','1','0','0','1','154','154','154','50','50','50','104','104','104','110','110','0.0','1.0'),('xfig','3.2.4','w_canvas.c','2','0','0','1','2230','254','203','875','80','80','1355','175','123','110','97','0.0','1.0'),('xfig','3.2.4','w_cmdpanel.c','2','0','0','1','3369','430','374','1800','232','200','1569','198','174','110','97','0.0','1.0'),('xfig','3.2.4','w_dir.c','1','0','0','1','49','49','49','96','96','96','-47','-47','-47','84','84','0.0','1.0'),('xfig','3.2.4','w_drawprim.c','1','0','0','1','411','411','411','65','65','65','346','346','346','84','84','0.0','1.0'),('xfig','3.2.4','w_export.c','1','0','0','1','582','582','582','412','412','412','170','170','170','110','110','0.0','1.0'),('xfig','3.2.4','w_fontpanel.c','1','0','0','1','19','19','19','26','26','26','-7','-7','-7','84','84','0.0','1.0'),('xfig','3.2.4','w_i18n.c','2','0','0','1','98','6','24','54','7','14','44','23','11','110','97','0.0','1.0'),('xfig','3.2.4','w_icons.c','1','0','0','1','3736','1868','1868','250','125','125','3486','1743','1743','110','110','0.0','1.0'),('xfig','3.2.4','w_icons.h','1','0','0','1','40','20','20','22','11','11','18','9','9','110','110','0.0','1.0'),('xfig','3.2.4','w_indpanel.c','2','0','0','1','8064','509','1008','2692','461','336','5372','1295','672','110','97','0.0','1.0'),('xfig','3.2.4','w_indpanel.h','2','0','0','1','119','45','40','85','29','28','34','18','11','110','97','0.0','1.0'),('xfig','3.2.4','w_layers.c','1','0','0','1','374','187','187','250','125','125','124','62','62','84','84','0.0','1.0'),('xfig','3.2.4','w_library.c','1','0','0','1','762','254','254','579','193','193','183','61','61','84','84','0.0','1.0'),('xfig','3.2.4','w_listwidget.c','1','0','0','1','24','24','24','11','11','11','13','13','13','110','110','0.0','1.0'),('xfig','3.2.4','w_listwidget.h','1','0','0','1','17','17','17','2','2','2','15','15','15','110','110','0.0','1.0'),('xfig','3.2.4','w_listwidgetP.h','1','0','0','1','17','17','17','2','2','2','15','15','15','110','110','0.0','1.0'),('xfig','3.2.4','w_menuentry.c','1','0','0','1','19','19','19','14','14','14','5','5','5','110','110','0.0','1.0'),('xfig','3.2.4','w_menuentry.h','1','0','0','1','8','8','8','8','8','8','0','0','0','84','84','0.0','1.0'),('xfig','3.2.4','w_menuentryP.h','1','0','0','1','8','8','8','8','8','8','0','0','0','84','84','0.0','1.0'),('xfig','3.2.4','w_modepanel.c','1','0','0','1','412','206','206','372','186','186','40','20','20','84','84','0.0','1.0'),('xfig','3.2.4','w_mousefun.c','1','0','0','1','118','59','59','124','62','62','-6','-3','-3','84','84','0.0','1.0'),('xfig','3.2.4','w_rottext.c','2','0','0','1','352','40','88','431','122','108','-79','1','-20','110','97','0.0','1.0'),('xfig','3.2.4','w_rulers.c','2','0','0','1','1599','444','320','1317','414','263','282','74','56','110','97','0.0','1.0'),('xfig','3.2.4','w_srchrepl.c','1','0','0','1','61','61','61','40','40','40','21','21','21','110','110','0.0','1.0'),('xfig','3.2.4','w_util.c','2','0','0','1','3628','852','518','1692','309','242','1936','700','277','110','97','0.0','1.0'),('xfig','3.2.4','w_util.h','2','0','0','1','97','51','48','43','33','22','54','36','27','110','97','0.0','1.0'),('xfig','3.2.4','w_zoom.c','2','0','0','1','42','25','21','145','8','72','-103','17','-52','110','97','0.0','1.0'),('xfig','3.2.5','config.h.in','2','0','0','1','819','39','164','92','46','18','727','247','145','75','66','0.0','1.0'),('xfig','3.2.5','configure','2','0','0','1','108230','7736','5696','2448','408','129','105782','7736','5567','75','66','0.0','1.0'),('xfig','3.2.5','configure.ac','2','0','0','1','1128','283','282','270','135','68','858','281','214','75','66','0.0','1.0'),('xfig','3.2.5','d_text.c','4','0','0','2','527','48','66','562','62','70','-35','9','-4','84','50','0.0','1.0'),('xfig','3.2.5','d_text.h','2','0','0','2','24','5','8','18','3','6','6','2','2','84','80','0.0','1.0'),('xfig','3.2.5','dirstruct.h','1','0','0','1','41','41','41','0','0','0','41','41','41','75','75','0.0','1.0'),('xfig','3.2.5','e_chop.c','2','0','0','1','13','7','6','5','5','2','8','6','4','19','12','0.0','1.0'),('xfig','3.2.5','e_copy.c','1','0','0','1','32','32','32','28','28','28','4','4','4','84','84','0.0','1.0'),('xfig','3.2.5','e_delete.c','1','0','0','1','39','39','39','29','29','29','10','10','10','84','84','0.0','1.0'),('xfig','3.2.5','e_edit.c','2','0','0','1','102','97','51','100','99','50','2','4','1','75','50','0.0','1.0'),('xfig','3.2.5','f_picobj.c','1','0','0','1','74','37','37','78','39','39','-4','-2','-2','84','84','0.0','1.0'),('xfig','3.2.5','f_read.c','1','0','0','1','106','106','106','111','111','111','-5','-5','-5','84','84','0.0','1.0'),('xfig','3.2.5','f_save.c','1','0','0','1','544','272','272','230','115','115','314','157','157','84','84','0.0','1.0'),('xfig','3.2.5','f_util.c','3','0','0','1','48','6','7','392','93','56','-344','2','-49','75','52','0.0','1.0'),('xfig','3.2.5','fig.h','5','0','0','2','1885','67','48','5905','27','151','-4020','8','-103','84','51','0.0','1.0'),('xfig','3.2.5','figx.h','1','0','0','1','11','11','11','10','10','10','1','1','1','84','84','0.0','1.0'),('xfig','3.2.5','Imakefile','4','0','0','2','888','63','24','9147','93','247','-8259','10','-223','84','44','0.0','1.0'),('xfig','3.2.5','main.c','2','0','0','1','820','28','205','409','132','102','411','132','103','84','50','0.0','1.0'),('xfig','3.2.5','mode.c','2','0','0','1','45','34','22','14','9','7','31','29','16','58','41','0.0','1.0'),('xfig','3.2.5','NOTES','1','0','0','1','18','18','18','0','0','0','18','18','18','75','75','0.0','1.0'),('xfig','3.2.5','pathmax.h','2','0','0','1','29','29','14','29','29','14','0','29','0','75','50','0.0','1.0'),('xfig','3.2.5','resources.h','2','0','0','1','369','3','92','311','2','78','58','19','14','84','50','0.0','1.0'),('xfig','3.2.5','SimpleMenu.c','1','0','0','1','48','48','48','92','92','92','-44','-44','-44','84','84','0.0','1.0'),('xfig','3.2.5','SmeBSB.c','2','0','0','2','252','63','63','234','63','58','18','9','4','84','54','0.0','1.0'),('xfig','3.2.5','SmeBSBP.h','1','0','0','1','2','2','2','2','2','2','0','0','0','84','84','0.0','1.0'),('xfig','3.2.5','SmeCascade.h','2','0','0','2','8','5','4','4','4','2','4','5','2','84','71','0.0','1.0'),('xfig','3.2.5','SmeCascadeP.h','3','0','0','2','13','7','4','10','7','3','3','4','1','84','55','0.0','1.0'),('xfig','3.2.5','strchr.c','1','0','0','1','22','22','22','0','0','0','22','22','22','58','58','0.0','1.0'),('xfig','3.2.5','strrchr.c','1','0','0','1','21','21','21','0','0','0','21','21','21','58','58','0.0','1.0'),('xfig','3.2.5','u_draw.c','2','0','0','1','437','7','218','334','9','167','103','105','52','84','52','0.0','1.0'),('xfig','3.2.5','u_error.c','1','0','0','1','18','18','18','18','18','18','0','0','0','84','84','0.0','1.0'),('xfig','3.2.5','u_free.c','2','0','0','2','40','6','20','40','6','20','0','0','0','84','54','0.0','1.0'),('xfig','3.2.5','u_print.c','4','0','0','2','267','8','67','105','7','26','162','153','40','84','58','0.0','1.0'),('xfig','3.2.5','w_canvas.c','4','0','0','2','1059','7','118','531','80','59','528','80','59','84','50','0.0','1.0'),('xfig','3.2.5','w_cmdpanel.c','4','0','0','2','2673','8','267','1486','40','149','1187','198','119','84','36','0.0','1.0'),('xfig','3.2.5','w_dir.c','2','0','0','2','53','49','26','103','96','52','-50','-3','-25','84','71','0.0','1.0'),('xfig','3.2.5','w_drawprim.c','4','0','0','2','495','7','124','101','65','25','394','346','98','84','58','0.0','1.0'),('xfig','3.2.5','w_fontpanel.c','1','0','0','1','19','19','19','26','26','26','-7','-7','-7','84','84','0.0','1.0'),('xfig','3.2.5','w_i18n.c','2','0','0','2','54','6','11','59','7','12','-5','-1','-1','84','80','0.0','1.0'),('xfig','3.2.5','w_icons.3.2.5.c','2','0','0','1','13440','4480','2240','13440','4480','2240','0','4480','0','19','12','0.0','1.0'),('xfig','3.2.5','w_icons.c','3','0','0','2','6220','74','1555','7327','2070','1832','-1107','233','-277','24','20','0.0','1.0'),('xfig','3.2.5','w_icons.h','1','0','0','1','5','5','5','7','7','7','-2','-2','-2','17','17','0.0','1.0'),('xfig','3.2.5','w_indpanel.c','2','0','0','2','2088','509','348','1892','461','315','196','48','33','84','71','0.0','1.0'),('xfig','3.2.5','w_indpanel.h','1','0','0','1','45','45','45','27','27','27','18','18','18','84','84','0.0','1.0'),('xfig','3.2.5','w_keyboard.c','1','0','0','1','15','15','15','11','11','11','4','4','4','19','19','0.0','1.0'),('xfig','3.2.5','w_layers.c','2','0','0','1','383','9','128','260','125','87','123','62','41','84','50','0.0','1.0'),('xfig','3.2.5','w_library.c','5','0','0','2','783','3','112','607','5','87','176','61','25','84','52','0.0','1.0'),('xfig','3.2.5','w_listwidget.c','1','0','0','1','5','5','5','1','1','1','4','4','4','75','75','0.0','1.0'),('xfig','3.2.5','w_menuentry.c','2','0','0','1','22','5','11','19','2','10','3','3','2','75','50','0.0','1.0'),('xfig','3.2.5','w_menuentry.h','3','0','0','2','12','8','4','10','8','3','2','4','1','84','72','0.0','1.0'),('xfig','3.2.5','w_menuentryP.h','1','0','0','1','8','8','8','8','8','8','0','0','0','84','84','0.0','1.0'),('xfig','3.2.5','w_modepanel.c','1','0','0','1','412','206','206','372','186','186','40','20','20','84','84','0.0','1.0'),('xfig','3.2.5','w_mousefun.c','1','0','0','1','118','59','59','124','62','62','-6','-3','-3','84','84','0.0','1.0'),('xfig','3.2.5','w_rottext.c','3','0','0','2','294','40','74','376','4','94','-82','0','-20','84','61','0.0','1.0'),('xfig','3.2.5','w_rottext.h','1','0','0','1','4','2','2','4','2','2','0','0','0','24','24','0.0','1.0'),('xfig','3.2.5','w_rulers.c','1','0','0','1','711','237','237','489','163','163','222','74','74','84','84','0.0','1.0'),('xfig','3.2.5','w_snap.c','2','0','0','1','69','66','34','48','48','24','21','18','10','19','12','0.0','1.0'),('xfig','3.2.5','w_util.c','3','0','0','2','1248','8','156','1410','6','176','-162','2','-20','84','55','0.0','1.0'),('xfig','3.2.5','w_util.h','2','0','0','1','53','51','26','39','6','20','14','18','7','84','52','0.0','1.0'),('xfig','3.2.5','w_zoom.c','1','0','0','1','17','17','17','137','137','137','-120','-120','-120','84','84','0.0','1.0'),('xfig','3.2.5','Xfuncs.h','1','0','0','1','189','63','63','0','0','0','189','63','63','75','75','0.0','1.0'),('xfig','3.2.5','Xosdefs.h','2','0','0','1','1380','98','86','8','4','0','1372','98','86','75','50','0.0','1.0'),('xfig','3.2.6','configure','2','0','0','1','5502','597','500','6859','755','624','-1357','83','-123','16','16','0.0','1.0'),('xfig','3.2.6','d_text.c','1','0','0','1','32','32','32','31','31','31','1','1','1','24','24','0.0','1.0'),('xfig','3.2.6','dirstruct.h','1','0','0','1','18','18','18','14','14','14','4','4','4','15','15','0.0','1.0'),('xfig','3.2.6','e_chop.c','1','0','0','1','58','58','58','37','37','37','21','21','21','15','15','0.0','1.0'),('xfig','3.2.6','e_edit.c','1','0','0','1','97','97','97','99','99','99','-2','-2','-2','24','24','0.0','1.0'),('xfig','3.2.6','f_util.c','1','0','0','1','14','14','14','14','14','14','0','0','0','24','24','0.0','1.0'),('xfig','3.2.6','main.c','1','0','0','1','14','7','7','14','7','7','0','0','0','16','16','0.0','1.0'),('xfig','3.2.6','mode.c','2','0','0','1','208','34','104','183','5','92','25','29','12','24','20','0.0','1.0'),('xfig','3.2.6','mode.h','1','0','0','1','3','3','3','0','0','0','3','3','3','16','16','0.0','1.0'),('xfig','3.2.6','object.h','1','0','0','1','604','302','302','628','314','314','-24','-12','-12','15','15','0.0','1.0'),('xfig','3.2.6','pathmax.h','1','0','0','1','0','0','0','29','29','29','-29','-29','-29','24','24','0.0','1.0'),('xfig','3.2.6','resources.h','1','0','0','1','3','3','3','0','0','0','3','3','3','16','16','0.0','1.0'),('xfig','3.2.6','SmeBSB.c','1','0','0','1','126','63','63','126','63','63','0','0','0','24','24','0.0','1.0'),('xfig','3.2.6','SmeCascadeP.h','1','0','0','1','7','7','7','7','7','7','0','0','0','24','24','0.0','1.0'),('xfig','3.2.6','u_free.c','1','0','0','1','6','6','6','6','6','6','0','0','0','24','24','0.0','1.0'),('xfig','3.2.6','u_print.c','1','0','0','1','1176','588','588','1298','649','649','-122','-61','-61','15','15','0.0','1.0'),('xfig','3.2.6','w_canvas.c','1','0','0','1','34','34','34','34','34','34','0','0','0','24','24','0.0','1.0'),('xfig','3.2.6','w_cmdpanel.c','1','0','0','1','80','40','40','80','40','40','0','0','0','24','24','0.0','1.0'),('xfig','3.2.6','w_drawprim.c','1','0','0','1','57','57','57','36','36','36','21','21','21','15','15','0.0','1.0'),('xfig','3.2.6','w_icons.c','2','0','0','1','83','74','21','1659','3','415','-1576','0','-394','24','20','0.0','1.0'),('xfig','3.2.6','w_keyboard.c','1','0','0','1','0','0','0','3','3','3','-3','-3','-3','15','15','0.0','1.0'),('xfig','3.2.6','w_library.c','1','0','0','1','16','16','16','16','16','16','0','0','0','24','24','0.0','1.0'),('xfig','3.2.6','w_menuentry.c','1','0','0','1','17','17','17','17','17','17','0','0','0','24','24','0.0','1.0'),('xfig','3.2.6','w_rottext.c','1','0','0','1','250','125','125','250','125','125','0','0','0','24','24','0.0','1.0'),('xfig','3.2.6','w_rottext.h','1','0','0','1','4','2','2','4','2','2','0','0','0','24','24','0.0','1.0'),('xfig','3.2.6','w_snap.c','1','0','0','1','14','14','14','21','21','21','-7','-7','-7','15','15','0.0','1.0'),('xfig','3.2.6','w_util.c','2','0','0','1','240','56','40','210','56','35','30','10','5','24','20','0.0','1.0'),('xfig','3.2.6','Xosdefs.h','1','0','0','1','8','4','4','8','4','4','0','0','0','24','24','0.0','1.0');
/*!40000 ALTER TABLE `xfig_metrics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-14 13:38:24