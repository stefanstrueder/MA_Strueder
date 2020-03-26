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
-- Table structure for table `mpsolve_szz`
--

DROP TABLE IF EXISTS `mpsolve_szz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mpsolve_szz` (
  `name` varchar(255) DEFAULT NULL,
  `commit_hash` longtext,
  `filepath` longtext,
  `filename` longtext,
  `bug_introducing` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mpsolve_szz`
--

LOCK TABLES `mpsolve_szz` WRITE;
/*!40000 ALTER TABLE `mpsolve_szz` DISABLE KEYS */;
INSERT INTO `mpsolve_szz` VALUES ('mpsolve','e04a10ada8c4dea23420bb888d1d1ee3ab5f55db','src\\libmps\\jacobi-aberth.c','jacobi-aberth.c','{\'3c17e5a98c23e82938130cb76aeaf35cf38336fb\', \'7de9b4f183a2b3f2ba408819e07f1424fb4cbc97\', \'17fa81463432cf7e57e5493e7d50715ffce82aee\'}'),('mpsolve','e04a10ada8c4dea23420bb888d1d1ee3ab5f55db','src\\mpsolve\\mpsolve.c','mpsolve.c','{\'7de9b4f183a2b3f2ba408819e07f1424fb4cbc97\'}'),('mpsolve','3dc8759e710f04e57c403312c6159e822c306743','include\\mps\\mps.h','mps.h','{\'ca3a9925c88100f849433a022b75c981c1aee513\', \'a8dd052280bf2f69150b63187a2632e540c5d229\'}'),('mpsolve','3dc8759e710f04e57c403312c6159e822c306743','src\\libmps\\stio.c','stio.c','{\'6f947652cefe337c3f34be0fdbd168cd8b0ad987\'}'),('mpsolve','3dc8759e710f04e57c403312c6159e822c306743','src\\xmpsolve\\Makefile.am','Makefile.am','{\'72b32f9f0ec6d6c0e58d89146c87e218c9211c6a\'}'),('mpsolve','3dc8759e710f04e57c403312c6159e822c306743','src\\xmpsolve\\mainwindow.cpp','mainwindow.cpp','{\'018132232024b084677cbfd68eb8ec2f2c33c517\'}'),('mpsolve','3dc8759e710f04e57c403312c6159e822c306743','src\\xmpsolve\\polynomialsolver.cpp','polynomialsolver.cpp','{\'cfe97cbf3b269719a786ff83af5c484f1f024b93\'}'),('mpsolve','3dc8759e710f04e57c403312c6159e822c306743','src\\xmpsolve\\xmpsolve.pro.in','xmpsolve.pro.in','{\'72b32f9f0ec6d6c0e58d89146c87e218c9211c6a\'}'),('mpsolve','75eb1b73142efdc894ca66623836961531a523ae','src\\libmps\\data.c','data.c','{\'3c3a9eaedb4a024d433769a148039ba0fd35590a\'}'),('mpsolve','75eb1b73142efdc894ca66623836961531a523ae','src\\libmps\\main.c','main.c','{\'54c115169818386bbd7ff031c240ec5042970a1e\'}'),('mpsolve','75eb1b73142efdc894ca66623836961531a523ae','src\\libmps\\secular-regeneration.c','secular-regeneration.c','{\'3c3a9eaedb4a024d433769a148039ba0fd35590a\'}'),('mpsolve','3c7acdd32177975438024243c2d4f3fcf8d66774','src\\tests\\check_implementation.c','check_implementation.c','{\'a8cbe21043d9baef5b8aa4033097f245dcd470b3\'}'),('mpsolve','6c339700a026884055eca3eb97e0a7ff6c04aa4e','src\\libmps\\main.c','main.c','{\'bcd8245b3fcd4c3174ace84da372e128bbaa003b\'}'),('mpsolve','6c339700a026884055eca3eb97e0a7ff6c04aa4e','src\\libmps\\monomial-threading.c','monomial-threading.c','{\'a35ceb921ddabcd2e5437d9e3d60dff80a290974\', \'bcd8245b3fcd4c3174ace84da372e128bbaa003b\'}'),('mpsolve','6c339700a026884055eca3eb97e0a7ff6c04aa4e','src\\libmps\\solve.c','solve.c','{\'a35ceb921ddabcd2e5437d9e3d60dff80a290974\', \'bcd8245b3fcd4c3174ace84da372e128bbaa003b\'}'),('mpsolve','375277792587fc6f2dbb8972165651e76fb88503','src\\libmps\\main.c','main.c','{\'32e772060ff761f70bc127daf378933fd86e15b3\', \'6c339700a026884055eca3eb97e0a7ff6c04aa4e\', \'bcd8245b3fcd4c3174ace84da372e128bbaa003b\', \'e2f56e93971011b167970d109777efaf67619d36\', \'7080d6b283403aaf6c6feee2c3ade3ec4254d793\', \'848c9f811a776d34d7078b17a856aa123c246b03\', \'e3854dacb7b4bfb2e5dfce769f4c24f5cf9dddc9\', \'44b3b248a102bba54235bed40fdffd214e8ecfd0\', \'6629be094cf751b5c9f57d39711cb918c735d3aa\', \'7e6ab457041592f275cd9dc09e200eb4e12edd03\'}'),('mpsolve','375277792587fc6f2dbb8972165651e76fb88503','src\\libmps\\secular-ga.c','secular-ga.c','{\'45d4306c52d6a4e972e7e4f4634f3d93cb5cd0fa\'}'),('mpsolve','4a65b9213ebb6188e0cdf4a08d357e97203ff322','configure.ac','configure.ac','{\'8167c084d933cdd26895547ae721188a6ad99625\', \'7ad08f8944648f607c1100ff33a4ad6d7881e389\'}'),('mpsolve','caded3b162318e1c108fb8dfe2d1b176bc453095','examples\\octave\\Makefile.am','Makefile.am','{\'e94827060d685042fbeecbd81e14772f03b1f2f1\'}'),('mpsolve','caded3b162318e1c108fb8dfe2d1b176bc453095','src\\libmps\\main.c','main.c','{\'cdbf7fc030f24e630413f6d074afdedce858298d\'}'),('mpsolve','dcaa79197aa51607b02e7de4c2a7d56cc1151767','src\\libmps\\secular-ga.c','secular-ga.c','{\'cdbf7fc030f24e630413f6d074afdedce858298d\', \'3f0e6fa537e3dd931e27ca5b4a0e58551324ab32\'}'),('mpsolve','e8e777d9d698a040b19c94783aef145a7bd3baf7','configure.ac','configure.ac','{\'618efc3f6f8257b13816ab01c4ddf453ec5ab2c6\'}'),('mpsolve','e8e777d9d698a040b19c94783aef145a7bd3baf7','examples\\octave\\mps_polyeig.m','mps_polyeig.m','{\'9f4a3246cf54b53d0b87d73cab93277da0d0ce96\'}'),('mpsolve','e8e777d9d698a040b19c94783aef145a7bd3baf7','src\\libmps\\monomial-matrix-poly.c','monomial-matrix-poly.c','{\'72341c68a3785705ff30f24244eab189dd93137e\', \'515343a48fb62484c4c908340511a16f97e891c9\', \'37b1695cb6950879a0d0c1bf1d247110e291e1c1\', \'9f4a3246cf54b53d0b87d73cab93277da0d0ce96\'}'),('mpsolve','e8e777d9d698a040b19c94783aef145a7bd3baf7','src\\tests\\check_matrix.c','check_matrix.c','{\'9f4a3246cf54b53d0b87d73cab93277da0d0ce96\'}'),('mpsolve','311fae97d98b76c94ed90a44e473515b269ed844','configure.ac','configure.ac','{\'618efc3f6f8257b13816ab01c4ddf453ec5ab2c6\', \'aff551b7252b4bef5a9a578dfcb0485c4f9bd66b\'}'),('mpsolve','659e518fea1ba4cb60fe3b46dbee257b47c92a2e','configure.ac','configure.ac','{\'311fae97d98b76c94ed90a44e473515b269ed844\'}'),('mpsolve','95ebe9934323454b874b0aad28b1694e8eee8e19','src\\libmps\\aberth.c','aberth.c','{\'13e1a364d9e5feb043e38cd42b32e49870d49e8b\'}'),('mpsolve','95ebe9934323454b874b0aad28b1694e8eee8e19','src\\libmps\\inline-poly-parser.c','inline-poly-parser.c','{\'05847acefcd46f5c7cb27d11bd7c75f2c12a5f9b\'}'),('mpsolve','95ebe9934323454b874b0aad28b1694e8eee8e19','src\\libmps\\monomial-poly.c','monomial-poly.c','{\'05847acefcd46f5c7cb27d11bd7c75f2c12a5f9b\'}'),('mpsolve','95ebe9934323454b874b0aad28b1694e8eee8e19','src\\tests\\check_parser.c','check_parser.c','{\'05847acefcd46f5c7cb27d11bd7c75f2c12a5f9b\'}'),('mpsolve','4711cec822459948b404cb0b4fe52c3451beaccd','src\\libmps\\inline-poly-parser.c','inline-poly-parser.c','{\'ad051c3da2b353afa9093106c408058e8927142c\', \'95ebe9934323454b874b0aad28b1694e8eee8e19\', \'05847acefcd46f5c7cb27d11bd7c75f2c12a5f9b\'}'),('mpsolve','4711cec822459948b404cb0b4fe52c3451beaccd','src\\tests\\check_parser.c','check_parser.c','{\'05847acefcd46f5c7cb27d11bd7c75f2c12a5f9b\'}'),('mpsolve','bfcfffbf14a48972b958642fb1b63cf7414f7c8d','src\\libmps\\context.c','context.c','{\'8c3bd575d58a1337a9b8be09933220f0c2d15a0f\', \'019f7139ae699b5ffea485c45264520244295221\'}'),('mpsolve','bfcfffbf14a48972b958642fb1b63cf7414f7c8d','src\\libmps\\inline-poly-parser.c','inline-poly-parser.c','{\'95ebe9934323454b874b0aad28b1694e8eee8e19\', \'ae42f19c3ce01e6b49a2dfe1e0e3535749bb52da\', \'05847acefcd46f5c7cb27d11bd7c75f2c12a5f9b\', \'4711cec822459948b404cb0b4fe52c3451beaccd\', \'4aec2b9de4384988381f0cd948afdae6fa514725\'}'),('mpsolve','bfcfffbf14a48972b958642fb1b63cf7414f7c8d','src\\tests\\check_parser.c','check_parser.c','{\'4aec2b9de4384988381f0cd948afdae6fa514725\'}'),('mpsolve','a2edab79c1ae5f617511f335b92132a6324b6551','include\\mps\\Makefile.am','Makefile.am','{\'a5d4b2ea7359c4bd2056919d2016276455af5170\'}'),('mpsolve','a2edab79c1ae5f617511f335b92132a6324b6551','include\\mps\\monomial-poly.h','monomial-poly.h','{\'ca3a9925c88100f849433a022b75c981c1aee513\'}'),('mpsolve','a2edab79c1ae5f617511f335b92132a6324b6551','src\\libmps\\context.c','context.c','{\'dd3d0e3e2e453a9d178f8f326a751b0f67973335\'}'),('mpsolve','a2edab79c1ae5f617511f335b92132a6324b6551','src\\libmps\\recursive-starting.c','recursive-starting.c','{\'2d4184c83aec1c128f0e2909299624f123e0a687\'}'),('mpsolve','142df2e80b855137ae9aabfbe86f26f4c43d66a3','include\\mps\\monomial-poly.h','monomial-poly.h','{\'5f23fb42c8f314349ef74a4b734e046142fd501e\'}'),('mpsolve','142df2e80b855137ae9aabfbe86f26f4c43d66a3','include\\mps\\private\\convex.h','convex.h','{\'b1d202e95fb800b8a6e7a819f9e8825dda01e32b\'}'),('mpsolve','142df2e80b855137ae9aabfbe86f26f4c43d66a3','include\\mps\\private\\horner.h','horner.h','{\'a5d4b2ea7359c4bd2056919d2016276455af5170\'}'),('mpsolve','142df2e80b855137ae9aabfbe86f26f4c43d66a3','include\\mps\\private\\secular-evaluation.h','secular-evaluation.h','{\'a5d4b2ea7359c4bd2056919d2016276455af5170\'}'),('mpsolve','142df2e80b855137ae9aabfbe86f26f4c43d66a3','include\\mps\\private\\starting-configuration.h','starting-configuration.h','{\'b1d202e95fb800b8a6e7a819f9e8825dda01e32b\'}'),('mpsolve','93f8a360f7c3bf2613dafe7cf0743c32da03c1cc','configure.ac','configure.ac','{\'3060caada393aec4a4a99b396967aa5c0064cd7e\'}'),('mpsolve','93f8a360f7c3bf2613dafe7cf0743c32da03c1cc','include\\mps\\Makefile.am','Makefile.am','{\'3060caada393aec4a4a99b396967aa5c0064cd7e\'}'),('mpsolve','93f8a360f7c3bf2613dafe7cf0743c32da03c1cc','include\\mps\\c++\\Makefile.am','Makefile.am','{\'a5824a6bc6793cc36da86f6fc61d570e136c8829\', \'e989ae9ae841a91a54bbfbd899371fef3c74972b\'}'),('mpsolve','93f8a360f7c3bf2613dafe7cf0743c32da03c1cc','include\\mps\\c++\\polynomial.h','polynomial.h','{\'b08df3b9bc6dc91cf758beaaadfca91a4565821a\', \'3060caada393aec4a4a99b396967aa5c0064cd7e\'}'),('mpsolve','93f8a360f7c3bf2613dafe7cf0743c32da03c1cc','src\\libmps\\Makefile.am','Makefile.am','{\'3060caada393aec4a4a99b396967aa5c0064cd7e\'}'),('mpsolve','93f8a360f7c3bf2613dafe7cf0743c32da03c1cc','src\\libmps\\system\\memory-file-stream.cpp','memory-file-stream.cpp','{\'a5824a6bc6793cc36da86f6fc61d570e136c8829\'}'),('mpsolve','3a8ad1f7e2dd3789c57c29b68c9941912a05c92e','src\\libmps\\secsolve\\secular-ga.c','secular-ga.c','{\'9968c72595c4cad0b3f155b4edf529bd9dfc2cfd\'}'),('mpsolve','3a8ad1f7e2dd3789c57c29b68c9941912a05c92e','src\\libmps\\secsolve\\secular-regeneration.c','secular-regeneration.c','{\'b259efd849305afc3337b5610f781a169f63e42f\', \'a4bc75529ec9bbde3227b68cb14d9ade30db0c5f\', \'38b5023b55b06f10df2078afb11422b62f217619\', \'05ce1d596877ab73773ebce593116b8ae054f933\'}'),('mpsolve','fd4e0ebd0ecf4b568a5a0e3ac11e949eafa9a224','src\\libmps\\secsolve\\secular-ga.c','secular-ga.c','{\'60d58c72a43873de04b02d5dd77694fb081ea2b9\'}'),('mpsolve','916dab50a94b7744094dd41d77a0de0a99ac2a92','src\\libmps\\unisolve\\main.c','main.c','{\'caded3b162318e1c108fb8dfe2d1b176bc453095\'}'),('mpsolve','38b3de3f8d9c0863265e54e95ef84821aa937ce3','src\\libmps\\common\\context.c','context.c','{\'8750a23df4e4be31a19640169a7615a8dafd15f4\', \'3f3e3c1c95dae9de4fb51298b7d66b0c0db1575f\'}'),('mpsolve','38b3de3f8d9c0863265e54e95ef84821aa937ce3','src\\tests\\Makefile.am','Makefile.am','{\'a5824a6bc6793cc36da86f6fc61d570e136c8829\'}'),('mpsolve','6c13f42c619bb96da09ad00a422bcf62f0c56734','examples\\octave\\Makefile.am','Makefile.am','{\'ac3a49752ba4f76b3c6bf5a6631dabc57794c110\'}'),('mpsolve','6c13f42c619bb96da09ad00a422bcf62f0c56734','examples\\octave\\mps_polyeig.m','mps_polyeig.m','{\'bdd89f6774491204ad7658ef2c8769cac33f38fa\', \'515343a48fb62484c4c908340511a16f97e891c9\'}'),('mpsolve','6c13f42c619bb96da09ad00a422bcf62f0c56734','examples\\octave\\mps_polyeig_impl.cc','mps_polyeig_impl.cc','{\'bdd89f6774491204ad7658ef2c8769cac33f38fa\'}'),('mpsolve','6c13f42c619bb96da09ad00a422bcf62f0c56734','src\\libmps\\secsolve\\secular-regeneration.c','secular-regeneration.c','{\'3fa6459ef8145f80a051f718a4548d7b07f72727\', \'38b5023b55b06f10df2078afb11422b62f217619\', \'fb161933371eb339402d24ff95c25e7bd9b7479b\', \'82a186dbe06717e4fdfeaf622edb960cfd92a17a\', \'986266a43890faa81dca46c9ba6db7d60b819893\', \'c66f4c01554648d18e617efac8c178673c7a5bbf\', \'5336b18539088dfe9e3b8b25edd74a80fbf880c2\', \'7cbc067e9937107bcddc757462ce5353732153fd\', \'4b8075caadd4a01652f24572cbc55de8a0d87684\', \'f3d13fb0b14db386d64500df957c275705290a3d\', \'17fa81463432cf7e57e5493e7d50715ffce82aee\', \'5937394991a4216844196243f4b0e9084d6c03d4\', \'d00ebcfbfa3b9d2a4f466eb7f8612ae52a6eb213\', \'36591237d36f98205a800e32f49d59b3539ef827\', \'fa8c64b84241f7200a49d94f4644e584b26d9b3c\', \'41c826d0c28d3f8481e2fe1c34536a5d191d4802\', \'b637b9c027f6e3b005d5546106194952fea25bf8\', \'f8ae5ca396fbd3add94d989d80490f6ca0145c23\', \'c7aeda7d7b3aa15aa7e5bb4a191cea163d5a7ba0\'}'),('mpsolve','67c72512ac3f9b3628229bb926d1471ef47e6202','src\\libmps\\monomial\\tokenizer.l','tokenizer.l','{\'9e405e9c576e96b742f48062d27bfe642ff708a3\'}'),('mpsolve','67c72512ac3f9b3628229bb926d1471ef47e6202','src\\libmps\\monomial\\yacc-parser.y','yacc-parser.y','{\'9e405e9c576e96b742f48062d27bfe642ff708a3\'}'),('mpsolve','dfebdd024d5dcccc80a0bac5e5292f689292b8fb','include\\mps\\private\\system\\file-input-stream.h','file-input-stream.h','{\'a5824a6bc6793cc36da86f6fc61d570e136c8829\'}'),('mpsolve','dfebdd024d5dcccc80a0bac5e5292f689292b8fb','include\\mps\\private\\system\\memory-file-stream.h','memory-file-stream.h','{\'a5824a6bc6793cc36da86f6fc61d570e136c8829\'}'),('mpsolve','dfebdd024d5dcccc80a0bac5e5292f689292b8fb','src\\libmps\\Makefile.am','Makefile.am','{\'3060caada393aec4a4a99b396967aa5c0064cd7e\'}'),('mpsolve','dfebdd024d5dcccc80a0bac5e5292f689292b8fb','src\\libmps\\common\\polynomialxx.cpp','polynomialxx.cpp','{\'b08df3b9bc6dc91cf758beaaadfca91a4565821a\', \'bc60606f0ec5574d59163d0e323d88468dc44d88\'}'),('mpsolve','dfebdd024d5dcccc80a0bac5e5292f689292b8fb','src\\libmps\\monomial\\tokenizer.l','tokenizer.l','{\'9e405e9c576e96b742f48062d27bfe642ff708a3\'}'),('mpsolve','dfebdd024d5dcccc80a0bac5e5292f689292b8fb','src\\libmps\\unisolve\\main.c','main.c','{\'e2f56e93971011b167970d109777efaf67619d36\'}'),('mpsolve','dfebdd024d5dcccc80a0bac5e5292f689292b8fb','src\\xmpsolve\\Makefile.am','Makefile.am','{\'7c782b24111f252d1e42bc225e197f95fb0e3e90\', \'f1a29108d7f6744ca31d0fc10fe5e8c74885e23b\'}'),('mpsolve','dfebdd024d5dcccc80a0bac5e5292f689292b8fb','src\\xmpsolve\\mainwindow.cpp','mainwindow.cpp','{\'66392ca6b66d1d86d11d027169b2437e52d69fc0\'}'),('mpsolve','dfebdd024d5dcccc80a0bac5e5292f689292b8fb','src\\xmpsolve\\mainwindow.ui','mainwindow.ui','{\'e1442f466f8b14209332f0b3c6757352ba847066\', \'0de9ccf15a2f5225788e47c5040c3046834904f2\', \'d5f53f0e0b5894f8b68c524381ca25e89c6d66a5\', \'0573309d72155ee96e11d4fe4304bbe503db1eda\', \'215fad9446a36b171a9a950697e44575a495127e\'}'),('mpsolve','dfebdd024d5dcccc80a0bac5e5292f689292b8fb','src\\xmpsolve\\monomial.cpp','monomial.cpp','{\'54ed6de6f0c5a129e7c2a57e381f6b6ea9c8cc6d\', \'0247cca80f50718d705385d37882ad8056191128\', \'d12e5938884e2b98ef8989fd7dc5a6cf7b3c64ba\', \'1120ebaea5904e857b9f3cc4a2f690afe897c235\', \'65ad848836744a49028b4e8d4d45945f82480ed6\', \'d4751236ab0bb74dba34b678a1cd8ea173d01eeb\', \'de1d9b9047513473d5de8963b52c55a3e36d4ee5\', \'bb22037d2e874cd602b81e088e4f86c6a157b9f1\', \'8bf3186063d73a0fcfbff6b570e1066393ada18e\', \'af997ca596e3068ea4e91026f11cd1b7c56ad71f\'}'),('mpsolve','dfebdd024d5dcccc80a0bac5e5292f689292b8fb','src\\xmpsolve\\monomial.h','monomial.h','{\'0247cca80f50718d705385d37882ad8056191128\', \'d12e5938884e2b98ef8989fd7dc5a6cf7b3c64ba\', \'d4751236ab0bb74dba34b678a1cd8ea173d01eeb\', \'de1d9b9047513473d5de8963b52c55a3e36d4ee5\', \'8bf3186063d73a0fcfbff6b570e1066393ada18e\'}'),('mpsolve','dfebdd024d5dcccc80a0bac5e5292f689292b8fb','src\\xmpsolve\\polynomial.cpp','polynomial.cpp','{\'0247cca80f50718d705385d37882ad8056191128\', \'d12e5938884e2b98ef8989fd7dc5a6cf7b3c64ba\'}'),('mpsolve','dfebdd024d5dcccc80a0bac5e5292f689292b8fb','src\\xmpsolve\\polynomial.h','polynomial.h','{\'0247cca80f50718d705385d37882ad8056191128\', \'d12e5938884e2b98ef8989fd7dc5a6cf7b3c64ba\'}'),('mpsolve','dfebdd024d5dcccc80a0bac5e5292f689292b8fb','src\\xmpsolve\\polynomialparser.cpp','polynomialparser.cpp','{\'65ad848836744a49028b4e8d4d45945f82480ed6\', \'0247cca80f50718d705385d37882ad8056191128\', \'d4751236ab0bb74dba34b678a1cd8ea173d01eeb\', \'dc43e7664aba73e39dc72fce0f7167f5c16590dc\'}'),('mpsolve','dfebdd024d5dcccc80a0bac5e5292f689292b8fb','src\\xmpsolve\\polynomialparser.h','polynomialparser.h','{\'6bcbfe664d4f8d61466f9d4f6601ebcab4d75dc5\', \'0247cca80f50718d705385d37882ad8056191128\', \'d4751236ab0bb74dba34b678a1cd8ea173d01eeb\', \'dc43e7664aba73e39dc72fce0f7167f5c16590dc\'}'),('mpsolve','dfebdd024d5dcccc80a0bac5e5292f689292b8fb','src\\xmpsolve\\polynomialsolver.cpp','polynomialsolver.cpp','{\'e1442f466f8b14209332f0b3c6757352ba847066\', \'0247cca80f50718d705385d37882ad8056191128\', \'65ad848836744a49028b4e8d4d45945f82480ed6\', \'3ed688cd93fb3ab611eb77f8683caaacfa78d7e5\', \'dd24d3784027bb33543ad942275027f326cafb49\', \'dc43e7664aba73e39dc72fce0f7167f5c16590dc\', \'6682f364ec48d41306378713ba8ff20961af06cc\', \'8bf3186063d73a0fcfbff6b570e1066393ada18e\'}'),('mpsolve','dfebdd024d5dcccc80a0bac5e5292f689292b8fb','src\\xmpsolve\\polynomialsolver.h','polynomialsolver.h','{\'e1442f466f8b14209332f0b3c6757352ba847066\', \'0247cca80f50718d705385d37882ad8056191128\', \'8bf3186063d73a0fcfbff6b570e1066393ada18e\', \'dd24d3784027bb33543ad942275027f326cafb49\'}'),('mpsolve','9ec8e0d9987c8dfaf4e9ef8d18bf70636034a4d5','src\\libmps\\common\\inline-poly-parser.c','inline-poly-parser.c','{\'05847acefcd46f5c7cb27d11bd7c75f2c12a5f9b\'}'),('mpsolve','9ec8e0d9987c8dfaf4e9ef8d18bf70636034a4d5','src\\libmps\\common\\utils.c','utils.c','{\'f8dc517b7b416e03c63e87f894bf7baa7c3a2ae7\'}'),('mpsolve','9ec8e0d9987c8dfaf4e9ef8d18bf70636034a4d5','src\\libmps\\monomial\\tokenizer.l','tokenizer.l','{\'295f6fb57a78e570048b393a9550bc92073da796\', \'67c72512ac3f9b3628229bb926d1471ef47e6202\'}'),('mpsolve','9ec8e0d9987c8dfaf4e9ef8d18bf70636034a4d5','src\\libmps\\monomial\\yacc-parser.y','yacc-parser.y','{\'295f6fb57a78e570048b393a9550bc92073da796\', \'9e405e9c576e96b742f48062d27bfe642ff708a3\'}'),('mpsolve','9ec8e0d9987c8dfaf4e9ef8d18bf70636034a4d5','src\\xmpsolve\\polynomialsolver.cpp','polynomialsolver.cpp','{\'dfebdd024d5dcccc80a0bac5e5292f689292b8fb\'}'),('mpsolve','4f1b68c05c6a40033796ebccea350536645cd1dc','INSTALL','INSTALL','{\'c0f144c5fa71684931d0ed7afe7cec4d280bee57\', \'86f36ad0ee133a7356ae7f594bb1e0829529ca82\'}'),('mpsolve','4f1b68c05c6a40033796ebccea350536645cd1dc','examples\\fortran\\Makefile.am','Makefile.am','{\'f0a67a05b49559b49cedc32ca1dd1b4b6e6316f5\', \'6259d0767240959cc3d71bdb14f293fd69bae728\'}');
/*!40000 ALTER TABLE `mpsolve_szz` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-08 10:36:38