-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: transbank
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `id_acc` int NOT NULL AUTO_INCREMENT,
  `name_acc` varchar(45) DEFAULT NULL,
  `id_bank` int NOT NULL,
  PRIMARY KEY (`id_acc`,`id_bank`),
  KEY `fk_ACCOUNT_BANK_idx` (`id_bank`),
  CONSTRAINT `fk_ACCOUNT_BANK` FOREIGN KEY (`id_bank`) REFERENCES `bank` (`id_bank`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'DEBITO',1),(2,'CREDITO',1),(3,'AHORRO',1),(4,'DEBITO',2),(5,'CREDITO',2),(6,'AHORRO',2),(7,'DEBITO',3),(8,'CREDITO',3),(9,'AHORRO',3),(10,'DEBITO',4),(11,'CREDITO',4),(12,'AHORRO',4),(13,'DEBITO',5),(14,'CREDITO',5),(15,'AHORRO',5);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `balance`
--

DROP TABLE IF EXISTS `balance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `balance` (
  `id_bal` int NOT NULL AUTO_INCREMENT,
  `balance_bal` int DEFAULT NULL,
  `id_cli` int NOT NULL,
  `id_acc` int NOT NULL,
  PRIMARY KEY (`id_bal`,`id_cli`,`id_acc`),
  KEY `fk_BALANCE_CLIENT1_idx` (`id_cli`),
  KEY `fk_BALANCE_ACCOUNT1_idx` (`id_acc`),
  CONSTRAINT `fk_BALANCE_ACCOUNT1` FOREIGN KEY (`id_acc`) REFERENCES `account` (`id_acc`),
  CONSTRAINT `fk_BALANCE_CLIENT1` FOREIGN KEY (`id_cli`) REFERENCES `client` (`id_cli`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balance`
--

LOCK TABLES `balance` WRITE;
/*!40000 ALTER TABLE `balance` DISABLE KEYS */;
INSERT INTO `balance` VALUES (1,1000000,1,1),(2,1000000,1,2),(3,1000000,1,3),(4,1000000,2,4),(5,1000000,2,5),(6,1000000,2,6),(7,1000000,3,7),(8,1000000,3,8),(9,1000000,3,9),(10,1000000,4,10),(11,1000000,4,11),(12,1000000,4,12),(13,1000000,5,13),(14,1000000,5,14),(15,1000000,5,15),(16,1000000,6,1),(17,1000000,6,2),(18,1000000,6,3),(19,1000000,7,4),(20,1000000,7,5),(21,1000000,7,6),(22,1000000,8,7),(23,1000000,8,8),(24,1000000,8,9),(25,1000000,9,10),(26,1000000,9,11),(27,1000000,9,12),(28,1000000,10,13),(29,1000000,10,14),(30,1000000,10,15),(31,1000000,11,1),(32,1000000,11,2),(33,1000000,11,3),(34,1000000,12,4),(35,1000000,12,5),(36,1000000,12,6),(37,1000000,13,7),(38,1000000,13,8),(39,1000000,13,9),(40,1000000,14,10),(41,1000000,14,11),(42,1000000,14,12),(43,1000000,15,13),(44,1000000,15,15),(45,1000000,16,1),(46,1000000,16,2),(47,1000000,16,3),(48,1000000,17,4),(49,1000000,17,5),(50,1000000,17,6),(51,1000000,18,7),(52,1000000,18,8),(53,1000000,18,9),(54,1000000,19,10),(55,1000000,19,11),(56,1000000,19,12),(57,1000000,20,13),(58,1000000,20,14),(59,1000000,20,15),(60,1000000,21,1),(61,1000000,21,2),(62,1000000,21,3),(63,1000000,22,4),(64,1000000,22,5),(65,1000000,22,6),(66,1000000,23,7),(67,1000000,23,8),(68,1000000,23,9),(69,1000000,24,10),(70,1000000,24,11),(71,1000000,24,12),(72,1000000,25,13),(73,1000000,25,14),(74,1000000,25,15),(75,1000000,26,1),(76,1000000,26,2),(77,1000000,26,3),(78,1000000,27,4),(79,1000000,27,5),(80,1000000,27,6),(81,1000000,28,7),(82,1000000,28,8),(83,1000000,28,9),(84,1000000,29,10),(85,1000000,29,11),(86,1000000,29,12),(87,1000000,30,13),(88,1000000,30,14),(89,1000000,30,15),(90,1000000,31,1),(91,1000000,31,2),(92,1000000,31,3),(93,1000000,32,4),(94,1000000,32,5),(95,1000000,32,6),(96,1000000,33,7),(97,1000000,33,8),(98,1000000,33,9),(99,1000000,34,10),(100,1000000,34,11),(101,1000000,34,12),(102,1000000,35,13),(103,1000000,35,14),(104,1000000,35,15),(105,1000000,36,1),(106,1000000,36,2),(107,1000000,36,3),(108,1000000,37,4),(109,1000000,37,5),(110,1000000,37,6),(111,1000000,38,7),(112,1000000,38,8),(113,1000000,38,9),(114,1000000,39,10),(115,1000000,39,11),(116,1000000,39,12),(117,1000000,40,13),(118,1000000,40,14),(119,1000000,40,15);
/*!40000 ALTER TABLE `balance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank` (
  `id_bank` int NOT NULL AUTO_INCREMENT,
  `name_bank` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_bank`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank`
--

LOCK TABLES `bank` WRITE;
/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
INSERT INTO `bank` VALUES (1,'BANCO ESTADO'),(2,'BANCO DE CHILE'),(3,'BANCO SANTANDER'),(4,'BANCO FALABELLA'),(5,'BCI');
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `id_cli` int NOT NULL AUTO_INCREMENT,
  `name_cli` varchar(45) DEFAULT NULL,
  `rut_cli` int DEFAULT NULL,
  `pass_cli` varchar(45) DEFAULT NULL,
  `email_cli` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_cli`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Adan',8,'Devi','dcorish0@java.com'),(2,'Bucky',25427,'Doe','dkerwin1@g.co'),(3,'Sascha',9,'Ralf','raharoni2@zdnet.com'),(4,'Joby',79293,'Annabal','aodrought3@soundcloud.com'),(5,'Vida',85229,'Noella','nsibery4@berkeley.edu'),(6,'Sabrina',1753,'Chelsae','cdennert5@ehow.com'),(7,'Casandra',3,'Salvador','sverma6@xing.com'),(8,'Hugues',51244,'Ephrem','ealbrook7@vimeo.com'),(9,'Jobie',1290,'Amaleta','amunday8@mayoclinic.com'),(10,'Wilfred',8614,'Terra','tacock9@mapy.cz'),(11,'Demott',955,'Alexina','adumbara@statcounter.com'),(12,'Katy',6,'Tracie','texrollb@weibo.com'),(13,'Hazlett',29,'Venus','vmilvarniec@webeden.co.uk'),(14,'Elenore',584,'Willette','wskechleyd@mlb.com'),(15,'Mallory',164,'Emmalyn','esneade@google.com.hk'),(16,'Delmer',397,'Janeen','jdedonf@lulu.com'),(17,'Miquela',8,'Adena','awaythingg@cornell.edu'),(18,'Redford',5,'Edna','efowleyh@army.mil'),(19,'Bev',76094,'Lyman','lbishopi@rambler.ru'),(20,'Aldon',4115,'Walden','wadamkiewiczj@twitter.com'),(21,'Murray',3,'Robers','rferronek@google.de'),(22,'Barbara',8000,'Leelah','lpactatl@tuttocitta.it'),(23,'Corabelle',3,'Kurtis','kscotchforthm@dyndns.org'),(24,'Patricio',8,'Paulita','ppressmann@mlb.com'),(25,'Johnna',14,'Rockwell','rlithgowo@elegantthemes.com'),(26,'Steve',60452,'Olag','obarrasp@so-net.ne.jp'),(27,'Bartholemy',10773,'Orbadiah','ogarratq@stumbleupon.com'),(28,'Seward',0,'Gregor','glennardr@sun.com'),(29,'Lannie',112,'Scotty','sridgeways@tinyurl.com'),(30,'Dulciana',42143,'Trevar','tpurbrickt@deliciousdays.com'),(31,'Gregoire',668,'Mort','mwhiskerdu@ovh.net'),(32,'Toma',23,'Hatty','hbartosekv@google.es'),(33,'Simone',378,'Wynne','wandrickw@ask.com'),(34,'Bondon',16555,'Guthry','gjarmainx@state.gov'),(35,'Viva',5972,'Sidney','sthomersony@ning.com'),(36,'Albertine',5,'Pearle','poxborrowz@china.com.cn'),(37,'Polly',0,'Willamina','wlilywhite10@msn.com'),(38,'Baldwin',3553,'Reagen','rrobez11@facebook.com'),(39,'Anna-maria',38459,'Orson','ostefi12@usatoday.com'),(40,'Willy',83,'Vite','vradnedge13@reddit.com'),(41,'Cyrillus',795,'Ashley','aflanaghan14@cpanel.net'),(42,'Jennette',4406,'Welch','wmacleod15@msn.com'),(43,'Ruthie',15,'Babs','bmcgebenay16@amazon.co.jp'),(44,'Daffi',590,'Ericka','ecund17@canalblog.com'),(45,'Estel',26348,'Meghan','mshambroke18@state.gov'),(46,'Pris',25553,'Eugenius','egatesman19@hostgator.com'),(47,'Hayward',227,'Marnie','msorsbie1a@dailymail.co.uk'),(48,'Davita',7820,'Sonja','sdurban1b@studiopress.com'),(49,'Rebekkah',60926,'Marin','mpencot1c@eventbrite.com'),(50,'Abe',5120,'Francyne','fgoosnell1d@1und1.de'),(51,'Violante',86577,'Hillary','hboreland1e@phpbb.com'),(52,'Troy',38662,'Abdul','amcian1f@arizona.edu'),(53,'Dee',691,'Anallese','aaspey1g@trellian.com'),(54,'Ewart',8,'Fay','ftorrijos1h@cloudflare.com'),(55,'Chrystel',91030,'Prent','ppyatt1i@artisteer.com'),(56,'Ki',851,'Deborah','dbalogun1j@craigslist.org'),(57,'Merv',84844,'Tiffy','tdixey1k@comcast.net'),(58,'Alexine',8187,'Clarinda','cbabin1l@alexa.com'),(59,'Rick',5487,'Gale','giacapucci1m@reuters.com'),(60,'Taite',58050,'Dante','djeggo1n@imgur.com'),(61,'Diandra',7547,'Catriona','cskryne1o@google.fr'),(62,'Aindrea',240,'Abbi','adalliston1p@edublogs.org'),(63,'Ebenezer',3170,'Krystalle','kfree1q@youku.com'),(64,'Humberto',4182,'Lacy','lmatthai1r@bbb.org'),(65,'Betta',292,'Karalynn','kcammidge1s@symantec.com'),(66,'Dara',3,'Jeffrey','jleyburn1t@wikia.com'),(67,'Burl',95450,'Eleanora','ecalwell1u@shutterfly.com'),(68,'Hermie',3548,'Efren','ebaribal1v@miibeian.gov.cn'),(69,'Millicent',988,'Alexis','abarnard1w@examiner.com'),(70,'Hope',36,'Siana','sbloxham1x@microsoft.com'),(71,'Laurena',62657,'Wye','wsharpe1y@fc2.com'),(72,'Barbe',875,'Rhianna','rdonnellan1z@fotki.com'),(73,'Malinde',11777,'Carmine','cgiorgiutti20@msn.com'),(74,'Madelene',5901,'Normie','nsuttill21@soup.io'),(75,'Lonny',48,'Loraine','ltallow22@altervista.org'),(76,'Wash',8,'Camellia','cgrisbrook23@spotify.com'),(77,'Aguistin',0,'Verena','vtrengrouse24@tumblr.com'),(78,'Vivi',999,'Kellie','kpankettman25@pcworld.com'),(79,'Chip',298,'Mylo','mduckham26@123-reg.co.uk'),(80,'Jeramie',2,'Kelbee','koreilly27@mlb.com'),(81,'Krystalle',598,'Gannie','gdowdam28@senate.gov'),(82,'Dania',47916,'Vincenty','vtimson29@goodreads.com'),(83,'Devonna',40651,'Gottfried','grives2a@weibo.com'),(84,'Ettore',26105,'Electra','erosberg2b@mapy.cz'),(85,'Ediva',444,'Heath','hgillivrie2c@washingtonpost.com'),(86,'Gwynne',46497,'Astra','adevaney2d@reddit.com'),(87,'Oberon',3825,'Alick','adunderdale2e@altervista.org'),(88,'Earl',1443,'Courtnay','cmacalroy2f@jimdo.com'),(89,'Nowell',4,'Donetta','dlemin2g@chron.com'),(90,'Darius',40,'Laurice','lneilan2h@xrea.com'),(91,'Fionnula',81,'Maryanne','marent2i@google.nl'),(92,'Wilow',145,'Gertrud','gweinmann2j@usda.gov'),(93,'Lelia',96,'Olga','ocornwall2k@quantcast.com'),(94,'Astrix',48,'Oona','obullus2l@apple.com'),(95,'Tomasina',7,'Lurline','lstrete2m@posterous.com'),(96,'Krishnah',1835,'Janeczka','jsimonou2n@about.com'),(97,'Kristopher',52,'Gustie','gragot2o@slideshare.net'),(98,'Dyanne',1,'Marysa','mbuffey2p@cbsnews.com'),(99,'Ivie',4748,'Albert','agrigor2q@youtu.be'),(100,'Demetris',58,'Aridatha','aciciotti2r@vkontakte.ru');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-21 16:45:06
