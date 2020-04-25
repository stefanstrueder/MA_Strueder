-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: dataset_message
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
-- Table structure for table `irssi_szz`
--

DROP TABLE IF EXISTS `irssi_szz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `irssi_szz` (
  `name` varchar(255) DEFAULT NULL,
  `commit_hash` longtext,
  `filepath` longtext,
  `filename` longtext,
  `bug_introducing` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `irssi_szz`
--

LOCK TABLES `irssi_szz` WRITE;
/*!40000 ALTER TABLE `irssi_szz` DISABLE KEYS */;
INSERT INTO `irssi_szz` VALUES ('irssi','ef9da295cdd8af0036396e7fc772fcee8a1c7c51','docs\\help\\in\\server.in','server.in','{\'08852822949a69afb8eeb12117c42326bf410b8b\'}'),('irssi','17fc77565e3278ffc19c5294be57c2467f43974b','src\\fe-common\\core\\completion.c','completion.c','{\'77ad62fadbcd9d5ce33889417de0099e035d8ddc\'}'),('irssi','b15c27cc63fa967f3e8fe98fdc6d093dd8692c93','src\\irc\\core\\irc-servers.c','irc-servers.c','{\'1831a8e1a710decbbcae524c60cdf6216f19a121\'}'),('irssi','fe1ea4b80a3467c23b1ec2d30bdfe4cfaf9b94d6','configure.ac','configure.ac','{\'cf4690725667211bc8a8998e362c6bda24dd7528\'}'),('irssi','6221ce520644efe4095bfecbc29f11c9c6962e0f','m4\\glib-2.0.m4','glib-2.0.m4','{\'2f1b246b9e2b3e3e755b2058d09bee0f92fcbf3f\'}'),('irssi','7bd1b80687cc97010094de0d398b429480e0a608','src\\irc\\dcc\\dcc-autoget.c','dcc-autoget.c','{\'62fd3ac1804d5d45bc2302ceac9ee9c7ef372e1a\'}'),('irssi','70f9db3cbdc0a3c6b622e64edbd504592f921892','src\\fe-text\\irssi.c','irssi.c','{\'de11e0f4f2196d5bbb692ffe6fd0dd9afaa69e46\', \'fb439b5c2ae93e0d42a59cf8900a17cbb72214f6\'}'),('irssi','2b9be6e2ed446293008d0e850fd726aad30fbcd2','src\\fe-text\\irssi.c','irssi.c','{\'e0841d15a2958eb7f5df7ad52ff940f7435f0aa2\', \'70f9db3cbdc0a3c6b622e64edbd504592f921892\', \'0d54e4e299b78916a12411f6e4e80dd3cf420bde\'}'),('irssi','a4cc4e0ad7278835d976aa5e75ca2b42443f5bb1','src\\core\\expandos.c','expandos.c','{\'099c83a98e9b4cd728501fcfe2b52911dd8b10a4\'}'),('irssi','5045f4766a72f18a3d682d1c9eeeffb40ab32569','docs\\help\\in\\dcc.in','dcc.in','{\'71ab0fbda6878db4ac710b3df527f8dc13e517b6\'}'),('irssi','52bb06ccd9f9bd639a454045eba1235e4133b034','src\\fe-common\\irc\\dcc\\fe-dcc-get.c','fe-dcc-get.c','{\'e4f7d55ce941bf33b1d23d7c21e6beb9fb69aba0\'}'),('irssi','52bb06ccd9f9bd639a454045eba1235e4133b034','src\\fe-common\\irc\\dcc\\fe-dcc-send.c','fe-dcc-send.c','{\'e4f7d55ce941bf33b1d23d7c21e6beb9fb69aba0\'}'),('irssi','02a5d1a00b4f484b4b2422785944e022810bbbb0','src\\fe-common\\core\\chat-completion.c','chat-completion.c','{\'4032addbf93d6c5a66ed030579f6be89ead281ac\', \'98060c31852af87d488b11ad8322c7532375561a\', \'98b82723a126ca0c40982585c3754aa00bbed51f\'}'),('irssi','2907a82b446d9d0a25157aa4ab560b49853f80d2','configure.ac','configure.ac','{\'f5cbbebc2ee858e8792ab40eea6abc9fd7865a28\'}'),('irssi','d5d45c29b8e00c304a6b6656983cafee84fe6bc8','src\\core\\capsicum.c','capsicum.c','{\'56c94570b420dea28b253af5f2c91184423acee1\'}'),('irssi','939371aa1dfdbf11fe98648e1eafc4c95e80bb9e','src\\core\\capsicum.c','capsicum.c','{\'509eca76f0755e94b5981f464f9f9a882499180a\'}'),('irssi','939371aa1dfdbf11fe98648e1eafc4c95e80bb9e','src\\core\\network.c','network.c','{\'cec68557aa436b4f16505d2095af02f83d154eda\'}'),('irssi','939371aa1dfdbf11fe98648e1eafc4c95e80bb9e','src\\core\\network.h','network.h','{\'cec68557aa436b4f16505d2095af02f83d154eda\'}'),('irssi','a29eeaa9f2e85630b08fc46b3a2b8749b9719efd','src\\core\\capsicum.c','capsicum.c','{\'241dd66ac11d54b37c671cd56f1320fe5b83803d\'}'),('irssi','4bcbb41113bf23b1d121ad6fbd7b86473f7fa89d','src\\fe-common\\core\\module-formats.h','module-formats.h','{\'be6ba53fa47bc546279a2575523281845fe80da9\', \'7cab17c2c98477db4c6b7129cf08772021b2fdc0\', \'e177b3fe94d4224d2a501029012c428eef3ac4c7\', \'79ae6fceb33de787ff65527cdab636af276ccb95\', \'1117638b52458f8e80f7ade066989c45eb74f0f9\', \'f354fe54c71485516b76fdd149891191993f60b5\', \'90e0d79d2ae1f8b735d9a2c8c12b0a5dd564aa70\', \'e980500702b420f0e01ce5aab9084c06594fe214\', \'980d6ca3fdac3fb0da21f61d8de42db061b136bf\', \'8fd09aa09fb547e2c96e127ff3622a495b3a29ab\', \'622d239deb0c7abfe598d244343bb26e570d4d63\', \'d6ee17e8cd1834a20e6f0f1a631ffb400233178d\', \'9bb16705a5e6bf100797985cc596b9bcb9f0d6da\', \'1de2aade402c17e2049432acf7d93edbcc78482d\'}'),('irssi','edee0ba587069a860eac43f9219f8ecfa49fe1fa','src\\core\\network-openssl.c','network-openssl.c','{\'532e3f5d190a28b1b7e79a251f1754bed61047ca\', \'96f4fe10c6081cf441122039c39eb6422eef13e8\'}'),('irssi','00c80cb6fcca40cfc421fe3fc181115ac4907191','src\\fe-common\\core\\themes.c','themes.c','{\'1e6f81e38fffb444fe5a90f7061d396ff05a44d6\'}'),('irssi','49ace3251b79a9e97c6e4d0bc640f9143dc71b90','src\\irc\\core\\channels-query.c','channels-query.c','{\'2c68c8b7db2025317e20f419f7fd5a23ee55cfa3\', \'3c78d956140966dd44abad9def84e6a812562bd0\', \'bfae72766ea2da6db76f6f23bccaf7a5dd708c94\'}'),('irssi','4ccff71f678f79da71713a29d8528812379bb584','src\\core\\network.c','network.c','{\'f31b2026b4732e57f88af14796ac0dea4b2d0131\'}'),('irssi','1e66cbd62e231f8ae47589cf4f1c0c6c62bb7ca8','src\\core\\capsicum.c','capsicum.c','{\'40ae8f5fa67cb7ec529f9fea5816fb8804c9bba8\'}'),('irssi','9f0dc4766c7aa80e34aa2cde94323fb49971abdf','src\\irc\\dcc\\dcc-get.c','dcc-get.c','{\'528f51bfbe5c65c5b24546faa244009dd5b3c586\'}'),('irssi','73d7b9d7753d35c63f24defe6d26c7c06ffa3cce','src\\core\\chat-commands.c','chat-commands.c','{\'e6147fb8f2764392dd685fd8b28f1d69527609cd\'}'),('irssi','beb2beba3b4802c6969a5595197e25e7a5483fa3','src\\core\\chat-commands.c','chat-commands.c','{\'73d7b9d7753d35c63f24defe6d26c7c06ffa3cce\'}'),('irssi','956bc592a94d5f4cce03f5762f1976d98de637ef','README.md','README.md','{\'f33ec66a2718444c786f842cbbc8d8bc05b83513\', \'fcb67831f2759fb6e95b6dd987ea53e0efdc4fef\', \'1d45fdfa037b0cba8012a8be1a9815b2f2f9a52f\'}'),('irssi','87550541e745627cc78507ce573d68b8453959c9','autogen.sh','autogen.sh','{\'c6b3fc6fe57bab25726c782d06e7ff493726f274\', \'7d0af0013354c7cef56a76add55585812f07f5da\', \'8ab537cf22371f9115002484b320719676dab86b\', \'2bc10386610eba0fe5741228f143e89e1acd2a7d\', \'831bd1d1e5874cf7c3e0b6a7dcdd6c5a818f684a\', \'9d4ea891b91b6cf514a3c70dc68a22feafb17d8d\', \'60d14b2be4c59379df7bbb5cf15f4cfe6ce33c38\', \'63c2c081572768fe4d10fba5348454acc46bfe4a\'}'),('irssi','f4b89044f075038d29089435f7620a068507d80e','src\\fe-fuzz\\irc\\core\\event-get-params.c','event-get-params.c','{\'f9d69597ef1e204640d5ce104061717aca0d213a\'}'),('irssi','7605f67f95b6ee1ac26dd8fb7f3121f319497943','src\\fe-common\\core\\fe-channels.c','fe-channels.c','{\'92a2384ab06c542c8f6a3d0f80a54892d74dc649\'}'),('irssi','7605f67f95b6ee1ac26dd8fb7f3121f319497943','src\\fe-common\\core\\fe-server.c','fe-server.c','{\'1dd1dde1d46439dac17bb7f053f2665ed31a4a5e\'}'),('irssi','7605f67f95b6ee1ac26dd8fb7f3121f319497943','src\\fe-common\\irc\\fe-ircnet.c','fe-ircnet.c','{\'421288cf5066267b60580af2b6ae511c46570bf0\'}'),('irssi','b332d448f7e3c7e4b40ea4a08932d0bd46007bbf','src\\core\\ignore.h','ignore.h','{\'609f3ba6c2db4f04e1e11304459d4fc42babd8ff\'}'),('irssi','eb18904840cc7d4a6830bf0711f4682af50f1abc','src\\core\\servers.c','servers.c','{\'c9b3d87eb7ef2ce99f659d7e567fc83629439142\'}'),('irssi','b111f038ddb7b5079f9901dd282fd4733390b1ba','src\\fe-common\\core\\fe-exec.c','fe-exec.c','{\'d5c15a8ee394ca824fe13f0ab99f55cf2a6bba59\'}'),('irssi','6e6a96d8c1eb8a51404d34809382e54eea46a9f7','src\\core\\servers.c','servers.c','{\'ee226421f1f920e4a6787296d56654eee746b28a\', \'e395e87dedd9aa85f05e5c74330a76f1ef700371\', \'eb18904840cc7d4a6830bf0711f4682af50f1abc\'}'),('irssi','ded4e4d98df3c8df20119574c145fe1a736ee994','src\\fe-text\\textbuffer-view.c','textbuffer-view.c','{\'4e71a1f485d9a546cb92ad94e8918a2363a88b03\'}'),('irssi','f9c8365999c5319be6970dcf27f21190b0481314','src\\fe-common\\core\\fe-common-core.c','fe-common-core.c','{\'4d5982f07d7f32585c00f1d6cca3fb425183140f\'}'),('irssi','74409aa85071390a3969fffa21c08a6736efe314','src\\irc\\core\\irc-cap.c','irc-cap.c','{\'d21706e1cc78284d5e7b2d69ebe4873e459d0e9b\'}'),('irssi','4b9fcbc15ae3561c34944e30e24fd1d54346bb99','src\\irc\\core\\irc-cap.c','irc-cap.c','{\'f4d811ddf51ce03e90e0417a6c25baeb9aa48353\'}'),('irssi','fed791ed9100552edbe643d8b3d0e0bc271e88d4','src\\irc\\core\\irc-cap.c','irc-cap.c','{\'f683e81880ac4408693582df3ec11d640684c78d\'}'),('irssi','063c85da6c4e73a292525aa01b5cad70ed6bf82b','src\\fe-text\\term-terminfo.c','term-terminfo.c','{\'0d5e353ef1be253106ed66417b270d03b2b91ed3\'}');
/*!40000 ALTER TABLE `irssi_szz` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-25 11:54:41
