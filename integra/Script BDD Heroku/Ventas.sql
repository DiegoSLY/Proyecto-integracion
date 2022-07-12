-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: us-cdbr-east-05.cleardb.net    Database: heroku_b9315b2107d8f4c
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
-- Table structure for table `detalle_ven`
--

DROP TABLE IF EXISTS `detalle_ven`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_ven` (
  `id_detven` int(11) NOT NULL AUTO_INCREMENT,
  `producto_det` varchar(1000) NOT NULL,
  `user_det` varchar(1000) DEFAULT NULL,
  `hora_det` varchar(45) DEFAULT NULL,
  `fecha_det` varchar(45) DEFAULT NULL,
  `cantidad_det` int(11) DEFAULT NULL,
  `estado_det` varchar(45) DEFAULT NULL,
  `tipopago_id_tpag` int(11) NOT NULL,
  PRIMARY KEY (`id_detven`,`tipopago_id_tpag`),
  KEY `fk_detalle_ven_tipopago1_idx` (`tipopago_id_tpag`),
  CONSTRAINT `fk_detalle_ven_tipopago1` FOREIGN KEY (`tipopago_id_tpag`) REFERENCES `tipopago` (`id_tpag`)
) ENGINE=InnoDB AUTO_INCREMENT=434 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_ven`
--

LOCK TABLES `detalle_ven` WRITE;
/*!40000 ALTER TABLE `detalle_ven` DISABLE KEYS */;
INSERT INTO `detalle_ven` VALUES (1,'guitarra','brandon','13:16','02/05/2022',1,'Pagado',1),(2,'flauta','vanessa','16:38','02/01/2022',1,'Pagado',2),(4,'Bateria','Vanesuki','11:38','02/01/2022',1,'Pagado',1),(14,'124','4','04:20:15','2022-05-26',1,'Aprobado',2),(24,'184','164','04:23:11','2022-05-26',1,'Pagado',4),(34,'204','164','04:23:12','2022-05-26',1,'Aprobado',4),(44,'54','144','13:43:01','2022-05-26',1,'Aprobado',4),(54,'64','144','13:43:02','2022-05-26',1,'Aprobado',4),(64,'124','144','13:44:20','2022-05-26',1,'Aprobado',1),(74,'44','144','13:44:22','2022-05-26',1,'Solicitud',1),(84,'104','144','13:44:23','2022-05-26',1,'Aceptado',1),(94,'64','164','13:45:01','2022-05-26',1,'Aprobado',1),(104,'174','164','13:45:02','2022-05-26',1,'Aprobado',1),(114,'214','164','13:45:03','2022-05-26',1,'Aprobado',1),(124,'224','164','13:46:27','2022-05-26',1,'Aprobado',2),(134,'194','164','13:46:28','2022-05-26',1,'Aprobado',2),(144,'164','164','13:46:30','2022-05-26',1,'Solicitud',2),(154,'134','144','13:47:38','2022-05-26',1,'Pagado',34),(164,'144','144','13:47:39','2022-05-26',1,'Aprobado',34),(174,'204','144','13:47:41','2022-05-26',1,'Solicitud',34),(184,'184','144','13:47:42','2022-05-26',1,'Aprobado',34),(194,'184','164','13:48:38','2022-05-26',1,'Solicitud',34),(204,'44','164','13:48:39','2022-05-26',1,'Solicitud',34),(214,'144','144','13:56:43','2022-05-26',1,'Aprobado',4),(224,'184','144','13:56:44','2022-05-26',1,'Solicitud',4),(234,'174','144','13:56:47','2022-05-26',1,'Aprobado',4),(244,'194','144','13:56:50','2022-05-26',1,'Aprobado',4),(254,'64','164','13:57:16','2022-05-26',1,'Solicitud',2),(264,'54','164','13:57:17','2022-05-26',1,'Solicitud',2),(274,'174','164','13:57:18','2022-05-26',1,'Solicitud',2),(284,'224','164','13:59:43','2022-05-26',1,'Solicitud',3),(294,'214','164','13:59:44','2022-05-26',1,'Aprobado',3),(304,'204','164','13:59:46','2022-05-26',1,'Solicitud',3),(314,'64','144','14:00:26','2022-05-26',1,'Aprobado',3),(324,'54','144','14:00:27','2022-05-26',1,'Aprobado',3),(334,'174','144','14:00:28','2022-05-26',1,'Aprobado',3),(344,'54','164','14:04:29','2022-05-26',1,'Pagado',34),(354,'124','164','14:04:30','2022-05-26',1,'Pagado',34),(364,'134','164','14:04:32','2022-05-26',1,'Pagado',34),(374,'44','4','17:41:16','2022-05-26',1,'Solicitud',2),(384,'44','4','17:41:16','2022-05-26',1,'Solicitud',2),(394,'64','4','17:41:19','2022-05-26',1,'Solicitud',2),(404,'64','4','17:41:19','2022-05-26',1,'Solicitud',2),(414,'54','4','13:33:31','2022-06-16',1,'Aceptado',2),(424,'54','4','13:39:08','2022-06-16',1,'Aceptado',2);
/*!40000 ALTER TABLE `detalle_ven` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipopago`
--

DROP TABLE IF EXISTS `tipopago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipopago` (
  `id_tpag` int(11) NOT NULL AUTO_INCREMENT,
  `pago_tpag` varchar(45) NOT NULL,
  PRIMARY KEY (`id_tpag`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipopago`
--

LOCK TABLES `tipopago` WRITE;
/*!40000 ALTER TABLE `tipopago` DISABLE KEYS */;
INSERT INTO `tipopago` VALUES (1,'credito'),(2,'debito'),(3,'efectivo'),(4,'transferencia'),(34,'cheque');
/*!40000 ALTER TABLE `tipopago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `id_ventas` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(45) NOT NULL,
  `user_id` varchar(45) NOT NULL,
  `detalle_ven_id_detven` int(11) NOT NULL,
  PRIMARY KEY (`id_ventas`,`detalle_ven_id_detven`),
  KEY `fk_ventas_detalle_ven_idx` (`detalle_ven_id_detven`),
  CONSTRAINT `fk_ventas_detalle_ven` FOREIGN KEY (`detalle_ven_id_detven`) REFERENCES `detalle_ven` (`id_detven`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,'2','84',1),(14,'2','84',1),(24,'2','24',1),(74,'24','24',4);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-12 15:09:18
