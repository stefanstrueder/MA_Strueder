-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: dataset_evaluation_feat_message
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
-- Dumping data for table `gnumeric_metrics`
--

LOCK TABLES `gnumeric_metrics` WRITE;
/*!40000 ALTER TABLE `gnumeric_metrics` DISABLE KEYS */;
INSERT INTO `gnumeric_metrics` VALUES ('gnumeric','1_10_0','cell-draw.c','1','0','1','1','12','12','12','1','1','1','11','11','11','1','1','20.1','20.1'),('gnumeric','1_10_0','complex.h','1','0','1','1','19','19','19','0','0','0','19','19','19','1','1','11.0','11.0'),('gnumeric','1_10_0','dao.c','1','0','0','1','0','0','0','7','7','7','-7','-7','-7','9','9','21.5','21.5'),('gnumeric','1_10_0','dead-kittens.h','4','0','0','2','147','5','16','0','0','0','147','26','16','10','4','18.43','18.43'),('gnumeric','1_10_0','dependent.c','2','0','1','2','2','2','1','24','12','8','-22','2','-7','9','5','16.43','16.43'),('gnumeric','1_10_0','dialog-about.c','1','0','0','1','1','1','1','4','4','4','-3','-3','-3','2','2','23.67','23.67'),('gnumeric','1_10_0','dialog-define-names.c','3','0','0','2','117','6','39','9','6','3','108','107','36','10','4','16.42','16.42'),('gnumeric','1_10_0','dialog-function-select.c','3','0','0','1','431','406','144','185','2','62','246','225','82','1','1','19.44','19.44'),('gnumeric','1_10_0','dialog-hyperlink.c','1','0','0','1','15','15','15','15','15','15','0','0','0','1','1','21.79','21.79'),('gnumeric','1_10_0','ExcelTestModule.c','1','0','0','1','0','0','0','5','5','5','-5','-5','-5','9','9','22.14','22.14'),('gnumeric','1_10_0','fontconfig-CC.patch','1','0','0','1','0','0','0','19','19','19','-19','-19','-19','1','1','7.29','7.29'),('gnumeric','1_10_0','glib-appinfo.patch','1','0','1','1','552','276','276','0','0','0','552','276','276','2','2','21.07','21.07'),('gnumeric','1_10_0','glib-gspawn-win32.patch','1','0','1','1','3104','194','194','0','0','0','3104','194','194','16','16','14.29','14.29'),('gnumeric','1_10_0','gnm-pane.c','1','0','0','1','10','10','10','11','11','11','-1','-1','-1','10','10','17.57','17.57'),('gnumeric','1_10_0','gnm-random.c','1','0','1','1','60','60','60','6','6','6','54','54','54','1','1','24.32','24.32'),('gnumeric','1_10_0','gnm-solver.c','1','0','0','1','6','6','6','0','0','0','6','6','6','1','1','15.79','15.79'),('gnumeric','1_10_0','gnumeric-cell-renderer-text.c','2','0','0','1','8','7','4','10','6','5','-2','1','-1','10','6','18.24','18.24'),('gnumeric','1_10_0','gnumeric-expr-entry.c','2','0','0','1','6','5','3','5','4','2','1','4','0','10','6','19.81','19.81'),('gnumeric','1_10_0','gnumeric.c','1','0','1','1','2','2','2','1','1','1','1','1','1','1','1','17.07','17.07'),('gnumeric','1_10_0','gtk-gtkprintoperation-win32.patch','2','0','0','1','26','5','13','14','14','7','12','21','6','1','1','13.38','13.38'),('gnumeric','1_10_0','item-cursor.c','1','0','0','1','1','1','1','4','4','4','-3','-3','-3','10','10','9.71','9.71'),('gnumeric','1_10_0','openoffice-read.c','1','0','0','1','45','45','45','27','27','27','18','18','18','1','1','25.27','25.27'),('gnumeric','1_10_0','refresh-config-sub-guess-1.10.1-1','1','0','0','1','2796','699','699','0','0','0','2796','699','699','4','4','8.86','8.86'),('gnumeric','1_10_0','refresh-config-sub-guess-1.10.7-1','1','0','0','1','0','0','0','2796','699','699','-2796','-699','-699','4','4','21.71','21.71'),('gnumeric','1_10_0','rendered-value.c','1','0','0','1','0','0','0','18','9','9','-18','-9','-9','9','9','18.19','18.19'),('gnumeric','1_10_0','sheet-control-gui.c','1','0','1','1','32','32','32','34','34','34','-2','-2','-2','1','1','17.36','17.36'),('gnumeric','1_10_0','style.c','1','0','0','1','21','21','21','14','14','14','7','7','7','1','1','17.29','17.29'),('gnumeric','1_10_0','symbol.c','2','0','0','1','41','24','20','10','10','5','31','17','16','9','5','22.29','22.29'),('gnumeric','1_10_0','value.c','1','0','0','1','0','0','0','18','9','9','-18','-9','-9','9','9','16.71','16.71'),('gnumeric','1_10_0','wbc-gtk-actions.c','4','0','1','3','53','37','11','35','4','7','18','22','4','2','2','16.77','16.77'),('gnumeric','1_10_0','wbc-gtk.c','3','0','1','3','96','88','32','3','3','1','93','88','31','2','1','17.18','17.18'),('gnumeric','1_10_0','zlib.patch','2','0','0','1','138','37','34','162','45','40','-24','-4','-6','2','2','9.46','9.46'),('gnumeric','1_10_10','cell-draw.c','2','0','1','1','24','4','12','20','20','10','4','4','2','1','1','51.38','51.38'),('gnumeric','1_10_10','commands.c','1','0','0','1','1','1','1','13','13','13','-12','-12','-12','19','19','31.46','31.46'),('gnumeric','1_10_10','compilation.h','1','0','0','1','48','24','24','0','0','0','48','24','24','2','2','40.93','40.93'),('gnumeric','1_10_10','complex.h','1','0','0','1','192','48','48','808','202','202','-616','-154','-154','4','4','37.14','37.14'),('gnumeric','1_10_10','dead-kittens.h','16','0','1','2','662092','52','642','672651','9','652','-10559','1474','-10','448','65','24.19','24.19'),('gnumeric','1_10_10','dialog-cell-format.c','2','0','0','1','6','3','3','14','8','7','-8','-3','-4','21','20','30.67','30.67'),('gnumeric','1_10_10','dialog-define-names.c','5','0','0','1','140','5','28','145','6','29','-5','0','-1','6','4','30.98','30.98'),('gnumeric','1_10_10','dialog-function-select.c','2','0','0','1','67','66','34','71','66','36','-4','0','-2','6','6','33.18','33.18'),('gnumeric','1_10_10','dialog-hyperlink.c','2','0','0','1','54','27','27','54','27','27','0','0','0','3','3','26.65','26.65'),('gnumeric','1_10_10','dialog-preferences.c','1','0','0','1','12','12','12','6','6','6','6','6','6','1','1','34.14','34.14'),('gnumeric','1_10_10','dialog-stf-export.c','4','0','0','2','44','21','11','53','9','13','-9','0','-2','7','5','27.57','27.57'),('gnumeric','1_10_10','glib-goption-disable-localization.patch','1','0','0','1','59','59','59','75','75','75','-16','-16','-16','1','1','4.57','4.57'),('gnumeric','1_10_10','gnm-notebook.c','1','0','0','1','12','3','3','33132','8283','8283','-33120','-8280','-8280','7','7','42.64','42.64'),('gnumeric','1_10_10','gnm-pane.c','1','0','0','1','0','0','0','6','6','6','-6','-6','-6','12','12','33.84','33.84'),('gnumeric','1_10_10','gnumeric-conf.c','1','0','0','1','636','636','636','258','258','258','378','378','378','1','1','61.09','61.09'),('gnumeric','1_10_10','gnumeric-expr-entry.c','2','0','0','2','0','0','0','9','5','4','-9','-4','-4','12','9','33.44','33.44'),('gnumeric','1_10_10','gnumeric.c','3','0','1','2','55','51','18','28','3','9','27','28','9','2','1','46.81','46.81'),('gnumeric','1_10_10','gui-file.c','4','0','0','4','157','2','31','113','33','23','44','105','9','12','4','34.67','34.67'),('gnumeric','1_10_10','gui-util.c','3','0','0','2','8','8','3','21','7','7','-13','6','-4','49','19','28.67','28.67'),('gnumeric','1_10_10','lotus.c','1','0','0','1','440','440','440','6','6','6','434','434','434','1','1','40.61','40.61'),('gnumeric','1_10_10','main-application.c','3','0','0','3','10','6','2','245','56','41','-235','1','-39','12','6','49.96','49.96'),('gnumeric','1_10_10','ms-excel-read.c','1','0','0','1','551','551','551','561','561','561','-10','-10','-10','1','1','31.57','31.57'),('gnumeric','1_10_10','openoffice-read.c','1','0','0','1','2','2','2','1','1','1','1','1','1','1','1','31.23','31.23'),('gnumeric','1_10_10','print.c','8','0','2','2','446','40','50','262','7','29','184','48','20','2','1','48.22','48.22'),('gnumeric','1_10_10','refresh-config-sub-guess-1.10.15-1','1','0','0','1','1164','1164','1164','0','0','0','1164','1164','1164','1','1','37.14','37.14'),('gnumeric','1_10_10','session.c','1','0','0','1','0','0','0','232','232','232','-232','-232','-232','5','5','41.81','41.81'),('gnumeric','1_10_10','sheet-object-widget.c','1','0','0','1','125','125','125','49','49','49','76','76','76','1','1','16.52','16.52'),('gnumeric','1_10_10','sheet-style.c','1','0','1','1','47','47','47','26','26','26','21','21','21','1','1','32.71','32.71'),('gnumeric','1_10_10','sheet.c','1','0','0','1','9','9','9','3','3','3','6','6','6','1','1','34.94','34.94'),('gnumeric','1_10_10','style.c','1','0','0','1','0','0','0','4','4','4','-4','-4','-4','49','49','47.22','47.22'),('gnumeric','1_10_10','test-harness.c','1','0','0','1','0','0','0','107','107','107','-107','-107','-107','1','1','27.29','27.29'),('gnumeric','1_10_10','test.c','1','0','0','1','0','0','0','142','142','142','-142','-142','-142','1','1','12.43','12.43'),('gnumeric','1_10_10','wbc-gtk-actions.c','6','0','1','4','132','61','22','68','6','11','64','27','11','12','4','41.0','41.0'),('gnumeric','1_10_10','wbc-gtk-impl.h','1','0','0','1','0','0','0','16','8','8','-16','-8','-8','12','12','46.57','46.57'),('gnumeric','1_10_10','wbc-gtk.c','6','0','1','3','252','8','25','738','61','74','-486','19','-49','12','5','36.72','36.72'),('gnumeric','1_10_10','xlsx-read-drawing.c','1','0','0','1','1824','1824','1824','0','0','0','1824','1824','1824','2','2','38.35','38.35'),('gnumeric','1_10_10','xlsx-read.c','2','0','0','1','31','19','16','1570','1560','785','-1539','9','-770','2','2','31.92','31.92'),('gnumeric','1_11_0','complex.h','2','0','1','1','4','2','2','4','2','2','0','0','0','1','1','35.28','35.28'),('gnumeric','1_11_0','dead-kittens.h','1','0','0','1','5','5','5','0','0','0','5','5','5','1','1','0.71','0.71'),('gnumeric','1_11_0','dependent.c','2','0','0','1','162','88','81','227','79','114','-65','9','-32','1','1','30.72','30.72'),('gnumeric','1_11_0','dialog-search.c','1','0','0','1','4','4','4','0','0','0','4','4','4','1','1','24.1','24.1'),('gnumeric','1_11_0','gnm-data-cache-source.h','1','0','1','1','2','2','2','0','0','0','2','2','2','14','14','27.43','27.43'),('gnumeric','1_11_0','gnm-sheet-slicer-combo.h','1','0','1','1','2','2','2','0','0','0','2','2','2','14','14','37.29','37.29'),('gnumeric','1_11_0','gnm-sheet-slicer.h','1','0','1','1','2','2','2','0','0','0','2','2','2','14','14','27.43','27.43'),('gnumeric','1_11_0','gnm-so-path.c','1','0','0','1','521','521','521','0','0','0','521','521','521','1','1','40.54','40.54'),('gnumeric','1_11_0','go-data-cache-field-impl.h','1','0','1','1','2','2','2','0','0','0','2','2','2','14','14','27.43','27.43'),('gnumeric','1_11_0','go-data-cache-field.h','1','0','1','1','2','2','2','0','0','0','2','2','2','14','14','27.43','27.43'),('gnumeric','1_11_0','go-data-cache-impl.h','1','0','1','1','2','2','2','0','0','0','2','2','2','14','14','27.43','27.43'),('gnumeric','1_11_0','go-data-cache-source.h','1','0','1','1','2','2','2','0','0','0','2','2','2','14','14','27.43','27.43'),('gnumeric','1_11_0','go-data-cache.h','1','0','1','1','2','2','2','0','0','0','2','2','2','14','14','27.43','27.43'),('gnumeric','1_11_0','go-data-slicer-field-impl.h','1','0','1','1','2','2','2','0','0','0','2','2','2','14','14','27.43','27.43'),('gnumeric','1_11_0','go-data-slicer-field.h','1','0','1','1','2','2','2','0','0','0','2','2','2','14','14','27.43','27.43'),('gnumeric','1_11_0','go-data-slicer-impl.h','1','0','1','1','2','2','2','0','0','0','2','2','2','14','14','27.43','27.43'),('gnumeric','1_11_0','go-data-slicer.h','1','0','1','1','2','2','2','0','0','0','2','2','2','14','14','27.43','27.43'),('gnumeric','1_11_0','go-val.h','1','0','1','1','2','2','2','0','0','0','2','2','2','14','14','27.43','27.43'),('gnumeric','1_11_0','goffice-data.h','1','0','1','1','2','2','2','0','0','0','2','2','2','14','14','37.29','37.29'),('gnumeric','1_11_0','gui-util.c','1','0','0','1','2','2','2','238','238','238','-236','-236','-236','1','1','19.1','19.1'),('gnumeric','1_11_0','ms-excel-read.c','1','0','0','1','9','9','9','9','9','9','0','0','0','2','2','21.74','21.74'),('gnumeric','1_11_0','ms-formula-read.c','1','0','0','1','37','37','37','37','37','37','0','0','0','2','2','14.86','14.86'),('gnumeric','1_11_0','openoffice-write.c','1','0','0','1','21','21','21','9','9','9','12','12','12','1','1','27.92','27.92'),('gnumeric','1_11_0','sheet-style.c','3','0','0','2','492','88','164','313','33','104','179','113','60','1','1','33.05','33.05'),('gnumeric','1_11_0','wbc-gtk.c','2','0','0','1','248','3','62','460','216','115','-212','107','-53','2','2','14.75','14.75'),('gnumeric','1_12_0','corba-application.c','1','0','0','1','0','0','0','154','154','154','-154','-154','-154','2','2','1.29','1.29'),('gnumeric','1_12_0','dependent.c','1','0','0','1','4','2','2','4','2','2','0','0','0','2','2','19.01','19.01'),('gnumeric','1_12_0','dialog-hyperlink.c','1','0','0','1','8','8','8','7','7','7','1','1','1','1','1','13.04','13.04'),('gnumeric','1_12_0','dialog-search.c','1','0','0','1','6','6','6','18','18','18','-12','-12','-12','1','1','10.29','10.29'),('gnumeric','1_12_0','glib-appinfo.patch','1','0','0','1','42','21','21','104','52','52','-62','-31','-31','2','2','31.14','31.14'),('gnumeric','1_12_0','glib-rand.patch','1','0','0','1','46','46','46','0','0','0','46','46','46','1','1','53.14','53.14'),('gnumeric','1_12_0','gnm-random.c','2','0','0','1','2','1','1','0','0','0','2','1','1','5','4','25.03','25.03'),('gnumeric','1_12_0','gnm-so-path.c','1','0','1','1','5','5','5','5','5','5','0','0','0','1','1','20.48','20.48'),('gnumeric','1_12_0','GNOME_Gnumeric.idl','1','0','0','1','0','0','0','40','40','40','-40','-40','-40','2','2','1.29','1.29'),('gnumeric','1_12_0','librsvg-portability.patch','1','0','0','1','126','126','126','0','0','0','126','126','126','1','1','41.0','41.0'),('gnumeric','1_12_0','lotus.c','1','0','0','1','108','27','27','112','28','28','-4','-1','-1','4','4','13.29','13.29'),('gnumeric','1_12_0','main-application.c','1','0','1','1','1','1','1','0','0','0','1','1','1','1','1','39.47','39.47'),('gnumeric','1_12_0','mathfunc.c','19','0','1','1','4762','59','136','12576','83','359','-7814','1103','-223','17','3','33.26','33.26'),('gnumeric','1_12_0','mstyle.c','1','0','0','1','98','98','98','0','0','0','98','98','98','1','1','13.39','13.39'),('gnumeric','1_12_0','numbers.h','5','0','1','1','185','40','12','238','9','15','-53','18','-3','17','6','42.98','42.98'),('gnumeric','1_12_0','openoffice-read.c','2','0','0','1','454','438','227','73','8','36','381','373','190','1','1','25.01','25.01'),('gnumeric','1_12_0','paradox.c','1','0','0','1','1','1','1','1','1','1','0','0','0','1','1','22.71','22.71'),('gnumeric','1_12_0','parser.y','1','0','0','1','0','0','0','11','11','11','-11','-11','-11','1','1','18.81','18.81'),('gnumeric','1_12_0','qpro-read.c','1','0','0','1','10','10','10','8','8','8','2','2','2','1','1','5.64','5.64'),('gnumeric','1_12_0','sf-bessel.c','2','0','0','1','9118','26','1824','0','0','0','9118','2273','1824','8','4','49.57','49.57'),('gnumeric','1_12_0','sf-dpq.c','1','0','0','1','291','291','291','0','0','0','291','291','291','2','2','54.26','54.26'),('gnumeric','1_12_0','sf-gamma.c','3','0','0','1','2216','86','443','20','20','4','2196','1020','439','5','3','51.01','51.01'),('gnumeric','1_12_0','sf-trig.c','2','0','0','1','439','439','220','82','82','41','357','439','178','3','3','49.24','49.24'),('gnumeric','1_12_0','sf-trig.h','2','0','0','1','18','18','9','3','3','2','15','18','8','3','3','49.92','49.92'),('gnumeric','1_12_0','sheet-object-widget.c','1','0','0','1','4','4','4','0','0','0','4','4','4','1','1','28.07','28.07'),('gnumeric','1_12_0','wbc-gtk-actions.c','3','0','0','1','14','7','3','121','7','24','-107','0','-21','3','2','23.99','23.99'),('gnumeric','1_12_0','wbc-gtk.c','2','0','0','1','24','24','12','2','2','1','22','24','11','2','2','18.99','18.99'),('gnumeric','1_12_0','xls-read-pivot.c','1','0','0','1','0','0','0','1','1','1','-1','-1','-1','1','1','29.93','29.93'),('gnumeric','1_12_0','xlsx-read-drawing.c','1','0','0','1','2','2','2','2','2','2','0','0','0','1','1','19.96','19.96'),('gnumeric','1_12_10','dead-kittens.h','1','0','0','1','0','0','0','5','5','5','-5','-5','-5','1','1','46.14','46.14'),('gnumeric','1_12_10','dialog-hyperlink.c','2','0','1','1','13','3','6','12','8','6','1','2','0','1','1','36.96','36.96'),('gnumeric','1_12_10','dialog-preferences.c','1','0','0','1','1','1','1','1','1','1','0','0','0','2','2','45.93','45.93'),('gnumeric','1_12_10','dialog-search.c','1','0','0','1','14','14','14','1','1','1','13','13','13','1','1','10.43','10.43'),('gnumeric','1_12_10','functions.c','2','0','2','1','86','44','43','33','21','16','53','32','26','1','1','14.99','14.99'),('gnumeric','1_12_10','glib-goption-disable-localization.patch','2','0','0','1','220','85','110','241','137','120','-21','31','-10','2','2','38.91','38.91'),('gnumeric','1_12_10','glib-rand.patch','1','0','0','1','16','16','16','13','13','13','3','3','3','2','2','44.43','44.43'),('gnumeric','1_12_10','gnm-graph-window.c','1','0','0','1','10','5','5','34','17','17','-24','-12','-12','2','2','45.14','45.14'),('gnumeric','1_12_10','import-bonobo','1','0','0','1','0','0','0','137','137','137','-137','-137','-137','1','1','46.29','46.29'),('gnumeric','1_12_10','libgnumeric.c','3','0','0','1','79','65','20','5','2','1','74','65','18','2','2','34.59','34.59'),('gnumeric','1_12_10','lotus.c','2','0','0','1','86','64','43','14','4','7','72','60','36','1','1','44.46','44.46'),('gnumeric','1_12_10','main-application.c','1','0','0','1','8','8','8','8','8','8','0','0','0','1','1','6.19','6.19'),('gnumeric','1_12_10','openoffice-read.c','1','0','0','1','0','0','0','4','4','4','-4','-4','-4','3','3','14.19','14.19'),('gnumeric','1_12_10','openoffice-write.c','1','0','0','1','0','0','0','4','4','4','-4','-4','-4','3','3','19.84','19.84'),('gnumeric','1_12_10','wbc-gtk.c','1','0','0','1','17','17','17','52','52','52','-35','-35','-35','1','1','29.01','29.01'),('gnumeric','1_12_10','xlsx-read-drawing.c','7','0','3','1','337','70','48','198','82','28','139','44','20','1','1','41.85','41.85'),('gnumeric','1_12_10','xlsx-read.c','1','0','0','1','0','0','0','4','4','4','-4','-4','-4','3','3','17.28','17.28'),('gnumeric','1_12_10','xlsx-write-drawing.c','2','0','1','1','18','7','9','2','1','1','16','10','8','1','1','48.01','48.01'),('gnumeric','1_12_20','complex.h','3','0','1','1','53','47','18','53','47','18','0','2','0','1','1','53.26','53.26'),('gnumeric','1_12_20','mathfunc.c','2','0','1','1','28','16','14','17','7','8','11','6','6','1','1','36.5','36.5'),('gnumeric','1_12_20','md5.c','1','0','0','1','3','3','3','202','202','202','-199','-199','-199','4','4','14.07','14.07'),('gnumeric','1_12_20','md5.h','1','0','0','1','18','6','6','210','70','70','-192','-64','-64','4','4','14.14','14.14'),('gnumeric','1_12_20','ms-obj.c','1','0','0','1','4','4','4','4','4','4','0','0','0','1','1','35.0','35.0'),('gnumeric','1_12_20','sf-bessel.c','1','0','1','1','3639','1213','1213','3384','1128','1128','255','85','85','3','3','53.51','53.51'),('gnumeric','1_12_20','sheet-object-widget.c','1','0','0','1','0','0','0','5','5','5','-5','-5','-5','1','1','6.31','6.31'),('gnumeric','1_12_20','xlsx-read-color.c','1','0','0','1','327','327','327','0','0','0','327','327','327','2','2','10.05','10.05'),('gnumeric','1_12_20','xlsx-read-drawing.c','7','0','1','1','631','221','90','698','92','100','-67','71','-10','2','1','6.78','6.78'),('gnumeric','1_12_20','xlsx-read.c','1','0','1','1','7','7','7','8','8','8','-1','-1','-1','1','1','10.89','10.89'),('gnumeric','1_12_20','xlsx-write-drawing.c','2','0','0','1','26','15','13','14','13','7','12','10','6','2','2','4.36','4.36'),('gnumeric','1_12_30','ChangeLog','1','0','0','1','6','6','6','0','0','0','6','6','6','3','3','57.0','57.0'),('gnumeric','1_12_30','excelplugins.c','1','0','0','1','6','6','6','7','7','7','-1','-1','-1','1','1','76.85','76.85'),('gnumeric','1_12_30','expr-deriv.c','1','0','0','1','580','580','580','0','0','0','580','580','580','1','1','15.54','15.54'),('gnumeric','1_12_30','functions.c','1','0','0','1','22','11','11','24','12','12','-2','-1','-1','3','3','47.25','47.25'),('gnumeric','1_12_30','gui-clipboard.c','2','0','0','1','394','58','197','315','29','158','79','50','40','1','1','95.74','95.74'),('gnumeric','1_12_30','gutils.c','1','0','0','1','11','11','11','0','0','0','11','11','11','1','1','71.22','71.22'),('gnumeric','1_12_30','mathfunc.c','1','0','0','1','642','214','214','0','0','0','642','214','214','3','3','24.71','24.71'),('gnumeric','1_12_30','sf-trig.c','1','0','0','1','59','59','59','57','57','57','2','2','2','2','2','41.57','41.57'),('gnumeric','1_12_30','sf-trig.h','1','0','0','1','2','2','2','0','0','0','2','2','2','2','2','41.57','41.57'),('gnumeric','1_12_30','style.c','1','0','1','1','4','4','4','2','2','2','2','2','2','1','1','95.1','95.1'),('gnumeric','1_12_30','wbc-gtk-actions.c','1','0','0','1','1','1','1','1','1','1','0','0','0','1','1','83.59','83.59'),('gnumeric','1_12_30','xlsx-write-drawing.c','2','0','0','1','32','7','16','12','9','6','20','16','10','1','1','57.86','57.86');
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

-- Dump completed on 2020-03-25 16:48:38
