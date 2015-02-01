-- MySQL dump 10.13  Distrib 5.5.35, for debian-linux-gnu (x86_64)
--
-- Host: 10.64.16.34    Database: wikidatawiki
-- ------------------------------------------------------
-- Server version	5.5.36-MariaDB-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `user_groups`
--

DROP TABLE IF EXISTS `user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_groups` (
  `ug_user` int(10) unsigned NOT NULL DEFAULT '0',
  `ug_group` varbinary(255) NOT NULL DEFAULT '',
  UNIQUE KEY `ug_user_group` (`ug_user`,`ug_group`),
  KEY `ug_group` (`ug_group`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_groups`
--

/*!40000 ALTER TABLE `user_groups` DISABLE KEYS */;
INSERT INTO `user_groups` VALUES (1,'sysop'),(13,'rollbacker'),(24,'rollbacker'),(27,'wikidata-staff'),(39,'sysop'),(56,'ipblock-exempt'),(56,'sysop'),(56,'translationadmin'),(155,'rollbacker'),(236,'rollbacker'),(455,'sysop'),(1106,'rollbacker'),(1134,'sysop'),(1465,'bureaucrat'),(1465,'sysop'),(1467,'bureaucrat'),(1467,'sysop'),(1467,'translationadmin'),(1822,'sysop'),(2140,'rollbacker'),(2229,'rollbacker'),(2496,'sysop'),(2531,'sysop'),(2936,'sysop'),(3101,'wikidata-staff'),(3102,'wikidata-staff'),(3120,'bureaucrat'),(3120,'sysop'),(3120,'translationadmin'),(3184,'wikidata-staff'),(3207,'wikidata-staff'),(3216,'rollbacker'),(3223,'sysop'),(3280,'bot'),(3328,'rollbacker'),(3490,'rollbacker'),(3490,'translationadmin'),(3509,'confirmed'),(3582,'rollbacker'),(3724,'sysop'),(3724,'translationadmin'),(3763,'rollbacker'),(3820,'sysop'),(3820,'translationadmin'),(3961,'sysop'),(4094,'rollbacker'),(4098,'sysop'),(4170,'translationadmin'),(4231,'sysop'),(4341,'bot'),(4360,'sysop'),(4368,'sysop'),(4369,'sysop'),(4424,'sysop'),(4447,'rollbacker'),(4457,'sysop'),(4477,'rollbacker'),(4563,'propertycreator'),(4610,'sysop'),(4721,'sysop'),(4788,'rollbacker'),(5054,'ipblock-exempt'),(5068,'sysop'),(5089,'sysop'),(5138,'oversight'),(5138,'sysop'),(5141,'confirmed'),(5168,'rollbacker'),(5168,'translationadmin'),(5230,'propertycreator'),(5312,'bot'),(5337,'rollbacker'),(5480,'oversight'),(5480,'sysop'),(5556,'sysop'),(5584,'propertycreator'),(5625,'bot'),(5869,'sysop'),(6122,'rollbacker'),(6239,'sysop'),(6253,'sysop'),(6638,'confirmed'),(6675,'sysop'),(6802,'rollbacker'),(6856,'propertycreator'),(6913,'translationadmin'),(6919,'rollbacker'),(7083,'rollbacker'),(7143,'sysop'),(7161,'translationadmin'),(7356,'sysop'),(7430,'rollbacker'),(7430,'translationadmin'),(7599,'sysop'),(7647,'sysop'),(7783,'rollbacker'),(7801,'bot'),(7856,'sysop'),(7856,'translationadmin'),(8060,'sysop'),(8429,'bot'),(8518,'sysop'),(8536,'rollbacker'),(8571,'sysop'),(8898,'rollbacker'),(9184,'rollbacker'),(9939,'ipblock-exempt'),(10750,'bureaucrat'),(10750,'sysop'),(11310,'sysop'),(11992,'rollbacker'),(12355,'ipblock-exempt'),(12915,'rollbacker'),(12945,'confirmed'),(13165,'sysop'),(13386,'rollbacker'),(13802,'bot'),(14002,'rollbacker'),(14159,'rollbacker'),(14778,'bot'),(16047,'rollbacker'),(16738,'translationadmin'),(17139,'rollbacker'),(17379,'rollbacker'),(17381,'sysop'),(17815,'sysop'),(18033,'bot'),(18073,'rollbacker'),(18126,'sysop'),(18126,'translationadmin'),(18305,'oversight'),(18305,'sysop'),(18305,'translationadmin'),(18347,'bot'),(18347,'ipblock-exempt'),(18825,'bot'),(19139,'sysop'),(19324,'rollbacker'),(19470,'sysop'),(19567,'rollbacker'),(19698,'propertycreator'),(19897,'bot'),(20033,'rollbacker'),(20264,'propertycreator'),(20423,'rollbacker'),(20646,'rollbacker'),(21150,'sysop'),(21583,'rollbacker'),(21728,'bot'),(21930,'rollbacker'),(22642,'sysop'),(23445,'sysop'),(24059,'bot'),(24059,'sysop'),(25503,'rollbacker'),(26145,'rollbacker'),(26795,'rollbacker'),(27480,'rollbacker'),(27886,'rollbacker'),(28325,'sysop'),(28859,'sysop'),(29838,'rollbacker'),(30269,'rollbacker'),(34239,'rollbacker'),(35085,'bot'),(35542,'sysop'),(35542,'translationadmin'),(37527,'bot'),(39601,'bot'),(39754,'bot'),(39869,'sysop'),(41833,'bot'),(43698,'bot'),(44249,'rollbacker'),(50541,'sysop'),(50541,'translationadmin'),(50858,'sysop'),(51323,'rollbacker'),(51431,'rollbacker'),(52222,'rollbacker'),(52625,'rollbacker'),(53518,'rollbacker'),(53525,'propertycreator'),(53613,'sysop'),(53613,'translationadmin'),(53779,'sysop'),(53779,'translationadmin'),(54426,'rollbacker'),(55516,'rollbacker'),(56155,'bot'),(57489,'rollbacker'),(59531,'rollbacker'),(59911,'rollbacker'),(61065,'sysop'),(61065,'translationadmin'),(62081,'ipblock-exempt'),(62081,'rollbacker'),(66011,'sysop'),(68345,'bot'),(71094,'bot'),(71176,'rollbacker'),(71624,'bot'),(72043,'sysop'),(72235,'bot'),(72278,'sysop'),(72353,'sysop'),(72907,'propertycreator'),(72907,'rollbacker'),(73173,'translationadmin'),(73412,'rollbacker'),(80064,'rollbacker'),(81367,'bot'),(81638,'sysop'),(82322,'bot'),(84811,'rollbacker'),(87356,'confirmed'),(87430,'sysop'),(89827,'rollbacker'),(91568,'bot'),(91742,'sysop'),(92462,'confirmed'),(93901,'sysop'),(94776,'bot'),(95311,'rollbacker'),(95569,'rollbacker'),(98539,'rollbacker'),(105306,'ipblock-exempt'),(105591,'bot'),(108041,'sysop'),(108339,'bot'),(108732,'rollbacker'),(109224,'rollbacker'),(110283,'rollbacker'),(110746,'sysop'),(112620,'bot'),(114380,'propertycreator'),(116550,'rollbacker'),(116859,'bot'),(117046,'bot'),(119646,'ipblock-exempt'),(119769,'sysop'),(119824,'rollbacker'),(120321,'bot'),(121258,'propertycreator'),(121570,'propertycreator'),(122552,'bot'),(122768,'rollbacker'),(122838,'rollbacker'),(123194,'rollbacker'),(123223,'bot'),(123349,'bot'),(123956,'rollbacker'),(124251,'propertycreator'),(124251,'rollbacker'),(129322,'sysop'),(131055,'sysop'),(131324,'rollbacker'),(133739,'bot'),(135092,'bot'),(135599,'sysop'),(139155,'rollbacker'),(140243,'bot'),(141168,'bot'),(141370,'ipblock-exempt'),(141370,'rollbacker'),(142033,'ipblock-exempt'),(144679,'bot'),(145693,'sysop'),(145920,'sysop'),(147511,'bot'),(148056,'sysop'),(148056,'translationadmin'),(148151,'rollbacker'),(148693,'bot'),(149089,'rollbacker'),(150286,'sysop'),(150965,'bot'),(150965,'rollbacker'),(152498,'bot'),(156147,'bot'),(157561,'bot'),(158393,'rollbacker'),(158420,'rollbacker'),(159677,'sysop'),(161660,'bot'),(161984,'bot'),(161984,'confirmed'),(162766,'bot'),(163183,'bot'),(166361,'rollbacker'),(166505,'rollbacker'),(171544,'rollbacker'),(173011,'bot'),(175070,'propertycreator'),(175070,'rollbacker'),(175070,'translationadmin'),(182345,'bot'),(183390,'bot'),(184208,'bot'),(184477,'bot'),(188140,'bot'),(188699,'bot'),(195377,'bot'),(197169,'bot'),(197855,'sysop'),(197855,'translationadmin'),(198794,'ipblock-exempt'),(201281,'bot'),(201734,'bot'),(202706,'rollbacker'),(204115,'bot'),(204944,'propertycreator'),(207146,'bot'),(209283,'rollbacker'),(211298,'bot'),(212185,'rollbacker'),(216551,'bot'),(217866,'bot'),(221026,'rollbacker'),(221719,'bot'),(222855,'rollbacker'),(223841,'bot'),(225774,'bot'),(228688,'bot'),(228692,'bot'),(228727,'bot'),(231954,'ipblock-exempt'),(234202,'bot'),(239341,'bot'),(243285,'bot'),(253575,'rollbacker'),(254508,'confirmed'),(257914,'rollbacker'),(258757,'confirmed'),(260018,'rollbacker'),(261660,'rollbacker'),(263326,'ipblock-exempt'),(263985,'bot'),(265817,'bot'),(281565,'bot'),(282614,'bot'),(282770,'bot'),(284174,'rollbacker'),(284174,'translationadmin'),(285402,'rollbacker'),(286374,'bot'),(286456,'bot'),(286463,'bot'),(286795,'bot'),(288115,'bot'),(288332,'bot'),(288755,'bot'),(288984,'ipblock-exempt'),(289122,'bot'),(290279,'bot'),(295468,'sysop'),(300311,'bot'),(301792,'bot'),(337886,'bot'),(348193,'bot'),(354242,'bot'),(361693,'bot'),(375689,'bot'),(392517,'confirmed'),(451953,'bot'),(453177,'confirmed'),(463947,'bot'),(471106,'confirmed'),(492966,'confirmed'),(496888,'bot'),(499171,'bot'),(523012,'bot'),(530967,'rollbacker'),(546783,'sysop'),(548635,'bot'),(556332,'bot'),(571458,'bot'),(574275,'ipblock-exempt'),(586565,'bot'),(587649,'confirmed'),(587697,'bot'),(588882,'bot'),(591289,'bot'),(594687,'bot'),(596177,'confirmed'),(653215,'bot'),(660669,'bot'),(672428,'confirmed'),(687731,'bot'),(690508,'bot'),(699418,'bot'),(714354,'bot'),(756452,'confirmed'),(787124,'bot'),(818256,'confirmed'),(856273,'confirmed'),(858760,'bot'),(865361,'bot'),(909519,'bot'),(930132,'bot'),(940976,'bot'),(945560,'bot'),(950234,'bot'),(952663,'bot'),(996859,'bot'),(1014524,'bot'),(1060667,'bot'),(1067827,'bot'),(1087493,'bot'),(1099575,'rollbacker'),(1143259,'bot'),(1144015,'bot'),(1192748,'bot'),(1198190,'bot'),(1210256,'bot'),(1226907,'rollbacker'),(1230499,'bot'),(1236877,'bot'),(1239023,'confirmed'),(1271532,'bot'),(1308724,'bot'),(1331482,'confirmed'),(1336085,'bot'),(1363396,'ipblock-exempt'),(1396579,'bot'),(1432723,'bot'),(1433337,'bot'),(1441070,'bot'),(1482806,'confirmed'),(1524844,'bot'),(1527219,'bot'),(1529466,'bot'),(1561274,'bot'),(1566140,'bot');
/*!40000 ALTER TABLE `user_groups` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-01-13 20:41:09
