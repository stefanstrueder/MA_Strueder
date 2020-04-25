-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: dataset_evaluation_message
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
-- Table structure for table `irssi_final`
--

DROP TABLE IF EXISTS `irssi_final`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `irssi_final` (
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
  `wage` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `irssi_final`
--

LOCK TABLES `irssi_final` WRITE;
/*!40000 ALTER TABLE `irssi_final` DISABLE KEYS */;
INSERT INTO `irssi_final` VALUES ('irssi','1.0.0','.gitignore','1','0','0','1','4','4','4','0','0','0','4','4','4','8','8','0.29','0.29','clean'),('irssi','1.0.0','completion.c','2','0','1','2','2','1','1','2','1','1','0','0','0','1','1','2.35','2.35','clean'),('irssi','1.0.0','configure.ac','4','0','1','2','42','40','10','3','1','1','39','40','10','8','4','0.32','0.32','clean'),('irssi','1.0.0','glib-2.0.m4','1','0','1','1','1','1','1','1','1','1','0','0','0','1','1','1.43','1.43','clean'),('irssi','1.0.0','gui-windows.c','1','0','0','1','7','7','7','3','3','3','4','4','4','3','3','2.0','2.0','clean'),('irssi','1.0.0','irc-servers.c','2','0','2','2','6','6','3','6','6','3','0','6','0','1','1','0.28','0.28','clean'),('irssi','1.0.0','irssi.c','3','0','1','1','59','58','20','2','1','1','57','58','19','8','5','0.57','0.57','clean'),('irssi','1.0.0','mail.pl','2','0','0','1','26','13','13','28','14','14','-2','-1','-1','1','1','3.07','3.07','clean'),('irssi','1.0.0','Makefile.am','2','0','0','1','32','5','11','3','2','1','29','25','10','8','6','0.36','0.36','clean'),('irssi','1.0.0','Makefile.PL.in','2','0','0','2','8','1','1','8','1','1','0','0','0','4','4','2.07','2.07','clean'),('irssi','1.0.0','modes.c','2','0','0','2','4','2','2','2','1','1','2','1','1','1','1','2.21','2.21','clean'),('irssi','1.0.0','module-formats.c','2','0','0','1','82','82','41','82','82','41','0','82','0','8','6','0.36','0.36','clean'),('irssi','1.0.0','module-formats.h','2','0','0','1','58','58','29','58','58','29','0','58','0','8','6','0.36','0.36','clean'),('irssi','1.0.0','network-openssl.c','4','0','0','3','71','6','12','8','7','1','63','22','10','2','2','2.68','2.68','clean'),('irssi','1.0.0','NEWS','3','0','0','2','61','55','20','25','4','8','36','34','12','2','2','0.0','1.0','clean'),('irssi','1.0.0','perl-core.c','2','0','0','2','4','2','2','4','2','2','0','0','0','1','1','2.78','2.78','clean'),('irssi','1.0.0','printtext.c','1','0','0','1','2','2','2','0','0','0','2','2','2','1','1','1.43','1.43','clean'),('irssi','1.0.0','sasl.c','2','0','0','2','20','10','10','8','4','4','12','6','6','1','1','3.42','3.42','clean'),('irssi','1.0.0','server.in','2','0','1','2','2','1','1','2','1','1','0','0','0','1','1','2.14','2.14','clean'),('irssi','1.0.0','textbuffer-view.c','1','0','0','1','11','11','11','1','1','1','10','10','10','3','3','2.0','2.0','clean'),('irssi','1.0.0','textbuffer-view.h','1','0','0','1','3','3','3','0','0','0','3','3','3','3','3','2.0','2.0','clean'),('irssi','1.0.0','tokens.txt','1','0','0','1','143','143','143','0','0','0','143','143','143','8','8','0.29','0.29','clean'),('irssi','1.0.1','chat-commands.c','2','0','0','2','40','6','20','22','9','11','18','25','9','2','2','2.21','2.21','clean'),('irssi','1.0.1','chat-completion.c','2','0','0','2','2','1','1','2','1','1','0','0','0','4','4','3.29','3.29','clean'),('irssi','1.0.1','colorless.theme','1','0','0','1','2','2','2','2','2','2','0','0','0','2','2','0.0','1.0','clean'),('irssi','1.0.1','commands.c','1','0','0','1','3','3','3','2','2','2','1','1','1','1','1','3.86','3.86','clean'),('irssi','1.0.1','common.h','1','0','0','1','1','1','1','1','1','1','0','0','0','3','3','0.0','1.0','clean'),('irssi','1.0.1','configure.ac','1','0','0','1','1','1','1','1','1','1','0','0','0','2','2','0.0','1.0','clean'),('irssi','1.0.1','dcc-autoget.c','4','0','1','2','16','6','4','13','7','3','3','4','1','4','2','3.29','3.29','clean'),('irssi','1.0.1','default.theme','1','0','0','1','2','2','2','2','2','2','0','0','0','2','2','0.0','1.0','clean'),('irssi','1.0.1','fe-channels.c','1','0','0','1','1','1','1','1','1','1','0','0','0','3','3','1.29','1.29','clean'),('irssi','1.0.1','fe-netjoin.c','1','0','0','1','16','16','16','0','0','0','16','16','16','1','1','3.14','3.14','clean'),('irssi','1.0.1','fe-netsplit.c','1','0','0','1','2','2','2','0','0','0','2','2','2','3','3','1.29','1.29','clean'),('irssi','1.0.1','keyboard.c','1','0','0','1','45','45','45','1','1','1','44','44','44','1','1','1.86','1.86','clean'),('irssi','1.0.1','mainwindows-layout.c','1','0','0','1','2','2','2','0','0','0','2','2','2','3','3','1.29','1.29','clean'),('irssi','1.0.1','misc.c','3','0','0','3','22','9','7','20','9','7','2','2','1','4','3','3.67','3.67','clean'),('irssi','1.0.1','misc.h','2','0','0','2','4','2','2','4','2','2','0','0','0','4','4','3.29','3.29','clean'),('irssi','1.0.1','network-openssl.c','1','0','0','1','16','16','16','0','0','0','16','16','16','3','3','0.0','1.0','clean'),('irssi','1.0.1','network.h','1','0','0','1','3','3','3','0','0','0','3','3','3','3','3','0.0','1.0','clean'),('irssi','1.0.1','NEWS','2','0','1','1','11','9','6','0','0','0','11','9','6','2','2','2.35','2.35','clean'),('irssi','1.0.1','notify-ison.c','1','0','0','1','4','4','4','0','0','0','4','4','4','1','1','0.71','0.71','clean'),('irssi','1.0.1','perl-core.c','1','0','0','1','2','2','2','2','2','2','0','0','0','1','1','3.29','3.29','clean'),('irssi','1.0.1','server.in','1','0','0','1','0','0','0','2','2','2','-2','-2','-2','2','2','1.29','1.29','clean'),('irssi','1.0.1','window-commands.c','1','0','0','1','13','13','13','5','5','5','8','8','8','2','2','3.14','3.14','clean'),('irssi','1.0.2','command-history.c','3','0','1','1','6','4','2','11','10','4','-5','2','-2','2','1','3.76','3.76','clean'),('irssi','1.0.2','command-history.h','1','0','0','1','1','1','1','1','1','1','0','0','0','2','2','3.86','3.86','clean'),('irssi','1.0.2','common.h','3','0','0','2','3','1','1','2','1','1','1','1','0','2','1','8.29','8.29','clean'),('irssi','1.0.2','completion.c','1','0','0','1','1','1','1','0','0','0','1','1','1','1','1','3.86','3.86','clean'),('irssi','1.0.2','configure.ac','3','1','0','2','17','15','6','7','6','2','10','9','3','18','7','7.05','7.05','clean'),('irssi','1.0.2','dcc-get.c','2','0','2','1','6','4','3','0','0','0','6','4','3','2','2','11.29','11.29','defective'),('irssi','1.0.2','dcc-resume.c','1','0','1','1','2','2','2','0','0','0','2','2','2','2','2','11.29','11.29','clean'),('irssi','1.0.2','dcc.in','1','0','1','1','1','1','1','1','1','1','0','0','0','1','1','9.57','9.57','clean'),('irssi','1.0.2','expandos.c','1','0','1','1','1','1','1','1','1','1','0','0','0','1','1','2.86','2.86','clean'),('irssi','1.0.2','fe-ignore.c','1','1','0','1','0','0','0','5','5','5','-5','-5','-5','18','18','12.14','12.14','clean'),('irssi','1.0.2','fe-server.c','9','0','0','2','40','9','4','21','5','2','19','6','2','2','1','9.66','9.66','clean'),('irssi','1.0.2','formats.c','1','0','0','1','20','20','20','8','8','8','12','12','12','4','4','9.71','9.71','clean'),('irssi','1.0.2','fuzz.diff','1','0','0','1','257','257','257','0','0','0','257','257','257','1','1','8.29','8.29','clean'),('irssi','1.0.2','hilight-text.c','2','1','0','1','13','2','6','45','5','22','-32','-3','-16','18','12','12.21','12.21','clean'),('irssi','1.0.2','hilight-text.h','1','1','0','1','6','2','2','30','10','10','-24','-8','-8','18','18','12.14','12.14','clean'),('irssi','1.0.2','ignore.c','2','1','0','1','6','5','3','36','35','18','-30','0','-15','18','12','12.21','12.21','clean'),('irssi','1.0.2','ignore.h','1','1','0','1','6','2','2','27','9','9','-21','-7','-7','18','18','12.14','12.14','clean'),('irssi','1.0.2','INSTALL','1','0','0','1','0','0','0','4','4','4','-4','-4','-4','1','1','1.29','1.29','clean'),('irssi','1.0.2','iregex-gregex.c','4','1','0','1','184','6','46','19','2','5','165','137','41','18','6','12.25','12.25','clean'),('irssi','1.0.2','iregex-regexh.c','2','1','0','1','103','2','52','4','4','2','99','101','50','18','12','12.21','12.21','clean'),('irssi','1.0.2','iregex.h','2','1','0','1','109','52','36','10','10','3','99','52','33','18','12','12.21','12.21','clean'),('irssi','1.0.2','irssi.c','2','0','2','1','8','4','4','8','4','4','0','0','0','1','1','1.43','1.43','clean'),('irssi','1.0.2','list.in','1','0','0','1','7','7','7','3','3','3','4','4','4','1','1','11.29','11.29','clean'),('irssi','1.0.2','Makefile.am','2','1','0','2','10','8','5','2','2','1','8','8','4','18','10','12.0','12.0','clean'),('irssi','1.0.2','misc.c','2','1','0','2','103','103','52','20','4','10','83','87','42','18','11','10.93','10.93','clean'),('irssi','1.0.2','misc.h','1','0','0','1','1','1','1','0','0','0','1','1','1','4','4','9.71','9.71','clean'),('irssi','1.0.2','NEWS','1','0','0','1','10','10','10','0','0','0','10','10','10','1','1','0.0','1.0','clean'),('irssi','1.0.2','nicklist.c','2','0','0','1','50','31','25','48','26','24','2','9','1','1','1','8.86','8.86','clean'),('irssi','1.0.2','special-vars.c','1','0','0','1','6','6','6','3','3','3','3','3','3','4','4','9.71','9.71','clean'),('irssi','1.0.2','textbuffer-view.c','1','0','0','1','0','0','0','2','2','2','-2','-2','-2','1','1','11.0','11.0','clean'),('irssi','1.0.2','textbuffer.c','2','1','0','1','17','8','6','62','4','21','-45','-3','-15','18','12','12.21','12.21','clean'),('irssi','1.0.3','.travis.yml','1','0','0','1','9','9','9','2','2','2','7','7','7','1','1','2.43','2.43','clean'),('irssi','1.0.3','chat-completion.c','2','0','1','1','12','2','6','6','4','3','6','6','3','1','1','2.08','2.08','clean'),('irssi','1.0.3','clear.in','2','0','0','1','4','2','2','4','2','2','0','0','0','1','1','4.21','4.21','clean'),('irssi','1.0.3','completion.c','1','0','0','1','20','20','20','5','5','5','15','15','15','1','1','2.14','2.14','clean'),('irssi','1.0.3','fe-dcc-get.c','1','0','1','1','1','1','1','1','1','1','0','0','0','2','2','0.0','1.0','clean'),('irssi','1.0.3','fe-dcc-send.c','1','0','1','1','1','1','1','1','1','1','0','0','0','2','2','0.0','1.0','clean'),('irssi','1.0.3','misc.c','2','0','0','2','28','3','14','13','13','6','15','12','8','1','1','2.43','2.43','clean'),('irssi','1.0.3','NEWS','1','0','0','1','18','18','18','0','0','0','18','18','18','1','1','0.14','0.14','clean'),('irssi','1.0.3','nicklist.c','1','0','0','1','10','10','10','7','7','7','3','3','3','1','1','4.14','4.14','clean'),('irssi','1.0.3','term-terminfo.c','1','0','0','1','12','12','12','1','1','1','11','11','11','1','1','1.57','1.57','clean'),('irssi','1.0.3','textbuffer.c','2','0','0','1','7','5','4','4','3','2','3','2','2','1','1','0.0','1.0','clean'),('irssi','1.0.4','autogen.sh','1','0','1','1','1','1','1','0','0','0','1','1','1','1','1','2.14','2.14','defective'),('irssi','1.0.4','capsicum.c','23','0','4','1','575','8','25','67','6','3','508','126','22','7','3','5.99','5.99','clean'),('irssi','1.0.4','capsicum.h','7','0','0','1','25','7','4','10','9','1','15','10','2','6','5','3.63','3.63','clean'),('irssi','1.0.4','capsicum.txt','2','0','0','1','31','30','16','0','0','0','31','30','16','2','2','10.79','10.79','clean'),('irssi','1.0.4','channel-events.c','1','0','0','1','1','1','1','1','1','1','0','0','0','1','1','15.0','15.0','clean'),('irssi','1.0.4','channels-query.c','2','0','2','2','4','3','2','3','3','2','1','1','0','1','1','13.5','13.5','clean'),('irssi','1.0.4','chat-commands.c','3','0','2','2','12','7','4','12','7','4','0','3','0','1','1','11.52','11.52','clean'),('irssi','1.0.4','chatnet-rec.h','2','0','0','1','1','1','0','1','1','0','0','1','0','4','4','14.14','14.14','clean'),('irssi','1.0.4','command-history.c','3','1','0','1','209','55','70','24','24','8','185','113','62','4','3','13.14','13.14','clean'),('irssi','1.0.4','command-history.h','3','1','0','1','18','2','6','1','1','0','17','14','6','4','3','13.14','13.14','clean'),('irssi','1.0.4','common.h','3','0','0','1','3','1','1','3','1','1','0','0','0','12','5','12.38','12.38','clean'),('irssi','1.0.4','completion.c','1','0','0','1','12','12','12','1','1','1','11','11','11','1','1','7.71','7.71','clean'),('irssi','1.0.4','configure.ac','4','0','1','1','31','6','8','3','1','1','28','22','7','5','3','3.4','3.4','clean'),('irssi','1.0.4','core.c','3','0','1','1','9','4','3','0','0','0','9','4','3','6','4','3.91','3.91','clean'),('irssi','1.0.4','dcc-chat.c','1','0','1','1','21','21','21','0','0','0','21','21','21','3','3','15.14','15.14','clean'),('irssi','1.0.4','dcc-get.c','1','0','1','1','15','15','15','2','2','2','13','13','13','3','3','15.14','15.14','clean'),('irssi','1.0.4','dcc-send.c','1','0','1','1','10','10','10','0','0','0','10','10','10','3','3','15.14','15.14','clean'),('irssi','1.0.4','fe-capsicum.c','3','0','1','1','67','60','22','4','4','1','63','60','21','7','4','3.52','3.52','clean'),('irssi','1.0.4','fe-capsicum.h','1','0','1','1','7','7','7','0','0','0','7','7','7','7','7','3.43','3.43','clean'),('irssi','1.0.4','fe-common-core.c','3','0','2','1','9','4','3','0','0','0','9','4','3','7','5','3.91','3.91','clean'),('irssi','1.0.4','fe-core-commands.c','1','0','1','1','14','14','14','0','0','0','14','14','14','1','1','9.14','9.14','clean'),('irssi','1.0.4','fe-ircnet.c','2','0','0','2','11','8','6','6','3','3','5','5','2','4','4','8.43','8.43','clean'),('irssi','1.0.4','fe-log.c','4','0','0','1','17','6','4','19','9','5','-2','10','0','6','5','3.71','3.71','clean'),('irssi','1.0.4','gui-entry.c','1','0','0','1','20','20','20','0','0','0','20','20','20','3','3','10.14','10.14','clean'),('irssi','1.0.4','gui-entry.h','1','0','0','1','1','1','1','0','0','0','1','1','1','3','3','10.14','10.14','clean'),('irssi','1.0.4','gui-readline.c','3','1','0','1','43','28','14','4','4','1','39','28','13','4','3','12.14','12.14','clean'),('irssi','1.0.4','gui-windows.c','1','0','0','1','4','4','4','0','0','0','4','4','4','12','12','11.0','11.0','clean'),('irssi','1.0.4','irc-chatnets.c','1','0','0','1','7','7','7','0','0','0','7','7','7','4','4','14.29','14.29','clean'),('irssi','1.0.4','irc-chatnets.h','1','0','0','1','1','1','1','0','0','0','1','1','1','4','4','14.29','14.29','clean'),('irssi','1.0.4','irc-servers-setup.c','3','0','0','2','11','8','4','8','4','3','3','7','1','4','4','10.38','10.38','clean'),('irssi','1.0.4','irc-servers.c','1','0','0','1','4','4','4','1','1','1','3','3','3','2','2','15.14','15.14','clean'),('irssi','1.0.4','levels.c','1','0','0','1','11','11','11','10','10','10','1','1','1','12','12','11.0','11.0','clean'),('irssi','1.0.4','levels.h','1','0','0','1','3','3','3','1','1','1','2','2','2','12','12','11.0','11.0','clean'),('irssi','1.0.4','log.c','5','0','0','1','37','7','7','25','3','5','12','13','2','6','5','3.66','3.66','clean'),('irssi','1.0.4','log.h','3','0','0','1','4','2','1','2','2','1','2','2','1','6','4','3.33','3.33','clean'),('irssi','1.0.4','mainwindows-layout.c','1','0','0','1','10','10','10','0','0','0','10','10','10','12','12','11.0','11.0','clean'),('irssi','1.0.4','Makefile.am','5','0','2','1','14','5','2','0','0','0','14','5','2','7','3','4.31','4.31','clean'),('irssi','1.0.4','module-formats.c','2','0','1','2','4','3','2','0','0','0','4','3','2','12','10','7.21','7.21','clean'),('irssi','1.0.4','module-formats.h','3','0','2','2','29','3','10','25','25','8','4','3','1','12','7','6.43','6.43','clean'),('irssi','1.0.4','network-openssl.c','4','0','1','2','40','4','10','6','3','2','34','17','8','3','2','6.96','6.96','clean'),('irssi','1.0.4','network-openssl.h','1','0','0','1','6','6','6','0','0','0','6','6','6','3','3','3.71','3.71','clean'),('irssi','1.0.4','network.c','10','0','2','2','57','5','6','66','9','7','-9','23','-1','6','3','9.59','9.59','clean'),('irssi','1.0.4','network.h','6','0','1','2','9','3','2','8','3','1','1','3','0','5','2','10.38','10.38','clean'),('irssi','1.0.4','network.in','2','0','0','2','2','1','1','0','0','0','2','1','1','4','4','8.43','8.43','clean'),('irssi','1.0.4','NEWS','1','0','0','1','13','13','13','0','0','0','13','13','13','1','1','0.0','1.0','clean'),('irssi','1.0.4','rawlog.c','9','0','0','1','55','8','6','38','8','4','17','16','2','6','3','3.49','3.49','clean'),('irssi','1.0.4','recode.c','1','0','0','1','6','6','6','1','1','1','5','5','5','2','2','15.14','15.14','clean'),('irssi','1.0.4','startup-HOWTO.html','2','0','0','1','10','5','5','10','5','5','0','0','0','1','1','13.0','13.0','clean'),('irssi','1.0.4','statusbar.in','3','0','0','1','33','21','11','22','8','7','11','9','4','1','1','13.14','13.14','clean'),('irssi','1.0.4','term-terminfo.c','1','0','0','1','7','7','7','0','0','0','7','7','7','1','1','4.57','4.57','clean'),('irssi','1.0.4','textbuffer-commands.c','1','0','0','1','21','21','21','0','0','0','21','21','21','12','12','11.0','11.0','clean'),('irssi','1.0.4','textbuffer-view.c','1','0','0','1','61','61','61','6','6','6','55','55','55','12','12','11.0','11.0','clean'),('irssi','1.0.4','textbuffer-view.h','1','0','0','1','24','24','24','12','12','12','12','12','12','12','12','11.0','11.0','clean'),('irssi','1.0.4','textbuffer.c','1','0','0','1','1','1','1','0','0','0','1','1','1','12','12','11.0','11.0','clean'),('irssi','1.0.4','textbuffer.h','1','0','0','1','1','1','1','1','1','1','0','0','0','12','12','11.0','11.0','clean'),('irssi','1.0.4','themes.c','1','0','1','1','6','6','6','1','1','1','5','5','5','1','1','13.29','13.29','clean'),('irssi','1.0.4','Window.xs','2','1','0','1','142','3','71','2','2','1','140','139','70','4','4','13.14','13.14','clean'),('irssi','1.0.5','.clang-format','3','0','0','2','44','6','15','6','5','2','38','37','13','1','1','2.67','2.67','clean'),('irssi','1.0.5','.gitignore','3','0','0','3','4','3','1','1','1','0','3','3','1','8','7','2.43','2.43','clean'),('irssi','1.0.5','.travis.yml','5','0','0','2','24','3','5','11','7','2','13','9','3','8','2','6.37','6.37','clean'),('irssi','1.0.5','autogen.sh','2','0','1','1','17','16','8','26','15','13','-9','5','-4','12','6','0.43','0.43','clean'),('irssi','1.0.5','autorejoin.pl','1','0','0','1','32','32','32','17','17','17','15','15','15','3','3','0.43','0.43','clean'),('irssi','1.0.5','channel-events.c','1','0','0','1','7','7','7','1','1','1','6','6','6','1','1','10.43','10.43','clean'),('irssi','1.0.5','colorless.theme','1','0','0','1','0','0','0','0','0','0','0','0','0','12','12','0.43','0.43','clean'),('irssi','1.0.5','common.h','1','0','0','1','1','1','1','1','1','1','0','0','0','1','1','1.43','1.43','clean'),('irssi','1.0.5','completion.c','1','0','0','1','12','12','12','6','6','6','6','6','6','1','1','10.43','10.43','clean'),('irssi','1.0.5','configure.ac','6','0','0','3','12','3','2','0','0','0','12','3','2','12','7','5.17','5.17','clean'),('irssi','1.0.5','default.theme','1','0','0','1','0','0','0','0','0','0','0','0','0','12','12','0.43','0.43','clean'),('irssi','1.0.5','event-get-params.c','6','0','1','1','91','86','15','9','4','2','82','86','14','6','2','4.26','4.26','clean'),('irssi','1.0.5','Expando.xs','1','0','0','1','2','2','2','1','1','1','1','1','1','4','4','5.57','5.57','clean'),('irssi','1.0.5','faq.html','1','0','0','1','3','3','3','1','1','1','2','2','2','7','7','0.43','0.43','clean'),('irssi','1.0.5','faq.txt','1','0','0','1','124','124','124','0','0','0','124','124','124','7','7','0.43','0.43','clean'),('irssi','1.0.5','fe-channels.c','1','0','1','1','1','1','1','1','1','1','0','0','0','3','3','2.86','2.86','clean'),('irssi','1.0.5','fe-common-core.c','2','0','0','2','34','31','17','17','3','8','17','17','8','5','3','6.14','6.14','clean'),('irssi','1.0.5','fe-events.c','2','0','0','1','2','1','1','2','1','1','0','0','0','3','2','2.71','2.71','clean'),('irssi','1.0.5','fe-ircnet.c','1','0','1','1','1','1','1','1','1','1','0','0','0','3','3','2.86','2.86','clean'),('irssi','1.0.5','fe-server.c','1','0','1','1','1','1','1','1','1','1','0','0','0','3','3','2.86','2.86','clean'),('irssi','1.0.5','fe-settings.c','1','0','0','1','6','6','6','1','1','1','5','5','5','8','8','1.43','1.43','clean'),('irssi','1.0.5','fe-settings.h','1','0','0','1','6','6','6','0','0','0','6','6','6','8','8','1.43','1.43','clean'),('irssi','1.0.5','fe-windows.c','1','0','0','1','3','3','3','1','1','1','2','2','2','4','4','5.57','5.57','clean'),('irssi','1.0.5','file2header.sh','1','0','0','1','0','0','0','0','0','0','0','0','0','12','12','0.43','0.43','clean'),('irssi','1.0.5','flood.c','1','0','0','1','2','2','2','2','2','2','0','0','0','5','5','10.71','10.71','clean'),('irssi','1.0.5','formats.c','2','0','0','1','14','3','7','18','6','9','-4','-1','-2','1','1','3.79','3.79','clean'),('irssi','1.0.5','glib-tap.mk','1','0','0','1','134','134','134','0','0','0','134','134','134','8','8','6.57','6.57','clean'),('irssi','1.0.5','glibtests.m4','1','0','0','1','28','28','28','0','0','0','28','28','28','8','8','6.57','6.57','clean'),('irssi','1.0.5','hilight-text.c','1','0','0','1','5','5','5','2','2','2','3','3','3','1','1','1.71','1.71','clean'),('irssi','1.0.5','ignore.h','1','0','1','1','3','3','3','3','3','3','0','0','0','6','6','5.57','5.57','clean'),('irssi','1.0.5','irc-servers-setup.c','2','0','0','1','16','6','8','7','6','4','9','9','4','8','6','2.15','2.15','clean'),('irssi','1.0.5','irc-servers.c','1','0','0','1','3','3','3','3','3','3','0','0','0','5','5','10.71','10.71','clean'),('irssi','1.0.5','irc.c','2','0','0','1','35','5','18','5','3','2','30','28','15','3','2','3.08','3.08','clean'),('irssi','1.0.5','irssi-version.sh','1','0','0','1','0','0','0','0','0','0','0','0','0','12','12','0.43','0.43','clean'),('irssi','1.0.5','irssi.c','3','0','1','1','33','7','11','33','8','11','0','1','0','8','6','3.29','3.29','clean'),('irssi','1.0.5','mail.pl','1','0','0','1','1','1','1','0','0','0','1','1','1','3','3','0.43','0.43','clean'),('irssi','1.0.5','Makefile.am','11','0','1','3','191','8','9','34','2','2','157','46','7','12','6','4.6','4.6','clean'),('irssi','1.0.5','misc.c','1','0','0','1','5','5','5','2','2','2','3','3','3','1','1','10.43','10.43','clean'),('irssi','1.0.5','modes.c','2','0','0','1','4','2','2','4','2','2','0','0','0','3','2','2.71','2.71','clean'),('irssi','1.0.5','module-formats.c','1','0','0','1','21','21','21','0','0','0','21','21','21','8','8','1.43','1.43','clean'),('irssi','1.0.5','module-formats.h','1','0','0','1','6','6','6','0','0','0','6','6','6','8','8','1.43','1.43','clean'),('irssi','1.0.5','network-openssl.c','2','0','1','1','29','9','10','29','9','10','0','0','0','6','5','5.57','5.57','clean'),('irssi','1.0.5','NEWS','1','0','0','1','18','18','18','0','0','0','18','18','18','1','1','0.0','1.0','clean'),('irssi','1.0.5','notifylist.c','1','0','0','1','2','2','2','2','2','2','0','0','0','5','5','10.71','10.71','clean'),('irssi','1.0.5','README.md','2','0','1','2','66','62','33','102','98','51','-36','0','-18','1','1','0.57','0.57','clean'),('irssi','1.0.5','sasl.c','1','0','1','1','3','3','3','3','3','3','0','0','0','6','6','5.57','5.57','clean'),('irssi','1.0.5','servers.c','1','0','0','1','1','1','1','0','0','0','1','1','1','5','5','10.71','10.71','defective'),('irssi','1.0.5','settings.c','2','0','0','1','13','3','6','3','3','2','10','10','5','8','6','2.15','2.15','clean'),('irssi','1.0.5','settings.h','1','0','0','1','7','7','7','0','0','0','7','7','7','4','4','2.86','2.86','clean'),('irssi','1.0.5','special-vars.c','1','0','0','1','4','4','4','0','0','0','4','4','4','1','1','10.43','10.43','clean'),('irssi','1.0.5','startup-HOWTO.html','1','0','0','1','267','267','267','243','243','243','24','24','24','7','7','0.43','0.43','clean'),('irssi','1.0.5','startup-HOWTO.txt','1','0','0','1','797','797','797','0','0','0','797','797','797','7','7','0.43','0.43','clean'),('irssi','1.0.5','statusbar-items.c','1','0','1','1','2','2','2','2','2','2','0','0','0','6','6','5.57','5.57','clean'),('irssi','1.0.5','Statusbar.xs','1','0','0','1','2','2','2','2','2','2','0','0','0','4','4','5.57','5.57','clean'),('irssi','1.0.5','syncdocs.sh','2','0','0','1','103','2','52','1','1','0','102','101','51','12','10','0.43','0.43','clean'),('irssi','1.0.5','syncscripts.sh','2','0','0','1','39','38','20','0','0','0','39','38','20','12','6','0.43','0.43','clean'),('irssi','1.0.5','syntax.pl','1','0','0','1','0','0','0','0','0','0','0','0','0','12','12','0.43','0.43','clean'),('irssi','1.0.5','tap-driver.sh','1','0','0','1','652','652','652','0','0','0','652','652','652','8','8','6.57','6.57','clean'),('irssi','1.0.5','tap-test','1','0','0','1','5','5','5','0','0','0','5','5','5','8','8','6.57','6.57','clean'),('irssi','1.0.5','test-796.c','5','0','1','1','186','29','37','12','10','2','174','122','35','4','2','10.6','10.6','clean'),('irssi','1.0.5','test-formats.c','1','0','0','1','50','50','50','0','0','0','50','50','50','5','5','6.57','6.57','clean'),('irssi','1.0.5','test-irc.c','4','0','0','2','422','230','106','191','190','48','231','230','58','8','5','6.57','6.57','clean'),('irssi','1.0.5','usercount.pl','1','0','0','1','1','1','1','0','0','0','1','1','1','3','3','0.43','0.43','clean'),('irssi','1.0.6','default.theme','1','0','0','1','1','1','1','0','0','0','1','1','1','18','18','0.0','1.0','clean'),('irssi','1.0.6','fe-common-core.c','3','0','1','2','16','9','5','10','6','3','6','3','2','1','1','0.19','0.19','clean'),('irssi','1.0.6','fe-exec.c','1','0','1','1','1','1','1','1','1','1','0','0','0','1','1','0.0','1.0','clean'),('irssi','1.0.6','fe-windows.h','1','0','0','1','8','8','8','0','0','0','8','8','8','18','18','0.0','1.0','clean'),('irssi','1.0.6','formats.c','1','0','0','1','15','15','15','12','12','12','3','3','3','1','1','0.0','1.0','clean'),('irssi','1.0.6','gui-printtext.c','1','0','0','1','41','41','41','2','2','2','39','39','39','18','18','0.0','1.0','clean'),('irssi','1.0.6','gui-printtext.h','1','0','0','1','1','1','1','0','0','0','1','1','1','18','18','0.0','1.0','clean'),('irssi','1.0.6','gui-windows.c','1','0','0','1','8','8','8','6','6','6','2','2','2','18','18','0.0','1.0','clean'),('irssi','1.0.6','irc-cap.c','15','0','4','1','212','9','14','101','7','7','111','35','7','4','1','0.29','0.29','clean'),('irssi','1.0.6','irc-nicklist.c','1','0','0','1','6','6','6','3','3','3','3','3','3','1','1','0.0','1.0','clean'),('irssi','1.0.6','irc-servers.c','2','0','0','1','5','4','2','3','2','2','2','2','1','4','2','0.29','0.29','clean'),('irssi','1.0.6','irc-servers.h','2','0','1','1','2','1','1','1','1','0','1','1','0','4','3','0.29','0.29','clean'),('irssi','1.0.6','Irc.xs','1','0','0','1','11','11','11','4','4','4','7','7','7','4','4','0.29','0.29','clean'),('irssi','1.0.6','irssi.c','1','0','0','1','2','2','2','0','0','0','2','2','2','3','3','0.14','0.14','clean'),('irssi','1.0.6','mainwindows-layout.c','1','0','0','1','122','122','122','37','37','37','85','85','85','18','18','0.0','1.0','clean'),('irssi','1.0.6','mainwindows.c','2','0','1','1','961','959','480','187','187','94','774','772','387','18','10','0.07','0.07','clean'),('irssi','1.0.6','mainwindows.h','1','0','0','1','18','18','18','4','4','4','14','14','14','18','18','0.0','1.0','clean'),('irssi','1.0.6','misc.c','1','0','0','1','13','13','13','0','0','0','13','13','13','3','3','0.29','0.29','clean'),('irssi','1.0.6','misc.h','1','0','0','1','1','1','1','0','0','0','1','1','1','3','3','0.29','0.29','clean'),('irssi','1.0.6','module-formats.c','1','0','0','1','2','2','2','2','2','2','0','0','0','18','18','0.0','1.0','clean'),('irssi','1.0.6','NEWS','1','0','0','1','13','13','13','1','1','1','12','12','12','1','1','0.0','1.0','clean'),('irssi','1.0.6','servers.c','2','0','2','1','29','6','14','19','18','10','10','5','5','1','1','0.0','1.0','clean'),('irssi','1.0.6','statusbar-items.c','1','0','0','1','14','14','14','5','5','5','9','9','9','18','18','0.0','1.0','clean'),('irssi','1.0.6','statusbar.c','1','0','0','1','53','53','53','19','19','19','34','34','34','18','18','0.0','1.0','clean'),('irssi','1.0.6','statusbar.h','1','0','0','1','6','6','6','0','0','0','6','6','6','18','18','0.0','1.0','clean'),('irssi','1.0.6','term-terminfo.c','5','0','2','2','90','6','18','30','3','6','60','28','12','18','5','0.14','0.14','clean'),('irssi','1.0.6','term.h','2','0','0','2','4','2','2','0','0','0','4','2','2','18','10','0.07','0.07','clean'),('irssi','1.0.6','textbuffer-view.c','2','0','1','1','70','68','35','53','52','26','17','16','8','18','10','0.07','0.07','clean'),('irssi','1.0.6','window-commands.c','1','0','0','1','4','4','4','3','3','3','1','1','1','18','18','0.0','1.0','clean'),('irssi','1.0.6','window-items.c','1','0','0','1','1','1','1','1','1','1','0','0','0','18','18','0.0','1.0','clean'),('irssi','1.0.6','window.in','1','0','0','1','13','13','13','2','2','2','11','11','11','18','18','0.0','1.0','clean');
/*!40000 ALTER TABLE `irssi_final` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-25 13:49:05
