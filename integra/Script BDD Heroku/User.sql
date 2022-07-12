-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: us-cdbr-east-05.cleardb.net    Database: heroku_f27200e709948b3
-- ------------------------------------------------------
-- Server version	5.6.50-log

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
-- Table structure for table `bodega`
--

DROP TABLE IF EXISTS `bodega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bodega` (
  `id_bode` int(11) NOT NULL AUTO_INCREMENT,
  `productos_id_produc` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_bode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodega`
--

LOCK TABLES `bodega` WRITE;
/*!40000 ALTER TABLE `bodega` DISABLE KEYS */;
/*!40000 ALTER TABLE `bodega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id_produc` int(11) NOT NULL AUTO_INCREMENT,
  `des_produc` varchar(255) DEFAULT NULL,
  `nom_produc` varchar(255) DEFAULT NULL,
  `pre_produc` int(11) DEFAULT NULL,
  `tipo_id_tipo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_produc`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo`
--

DROP TABLE IF EXISTS `tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo` (
  `id_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `nom_tip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo`
--

LOCK TABLES `tipo` WRITE;
/*!40000 ALTER TABLE `tipo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nom_user` varchar(45) NOT NULL,
  `rut_user` varchar(45) NOT NULL,
  `edad` int(11) NOT NULL,
  `tipo_user` varchar(45) NOT NULL,
  `email_user` varchar(100) NOT NULL,
  `pass_user` varchar(45) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Brandon','20569884-4',23,'Bodeguero','brandon@musicpro.cl','brandon123'),(6,'Denisse Alcantara','20665894-2',21,'Cliente','Dennisse1234@gmail.com','asdasdasd32'),(7,'Diego Concha','20640653-4',21,'Vendedor','Die.conchar@musicpro.com','asdasdas12'),(8,'Nicolas Piña','20780258-4',21,'Cliente','Nicolas.Piña@gmail.com','kasdjasdj45'),(44,'caro','20564569-8',23,'Cliente','caro@musicpro.cl','caro123'),(54,'matias','20653498-7',20,'Cliente','matias@musicpro.cl','matias123'),(64,'Mateo','20653458-8',30,'Cliente','mateo@musicpro.cl','mateo123'),(74,'Bodeguero','20640659-8',30,'Bodeguero','bodeguero@musicpro.cl','bode123'),(84,'admin','20653956-7',35,'Administrador','admin@musicpro.cl','admin123'),(94,'andres','20987568-7',20,'Cliente','andres@gmail.com','andres123'),(104,'karina','20640659-2',21,'Bodeguero','karilu@gmail.com','123456'),(114,'diego','20653456-8',20,'Cliente','diego@gmail.com','diego123'),(124,'Oscar','20871268-7',21,'Administrador','Oscar@musicpro.cl','Oscar123'),(134,'Oscar','20871268-7',21,'Administrador','Oscar@musicpro.cl','Oscar123'),(144,'jensen','20653487-8',19,'Cliente','jensen@gmail.com','jensen123'),(154,'vendedor','205364041',28,'Vendedor','vendedor@musicpro.cl','vende123');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'heroku_f27200e709948b3'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-12 15:06:17
