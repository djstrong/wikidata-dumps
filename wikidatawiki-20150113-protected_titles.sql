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
-- Table structure for table `protected_titles`
--

DROP TABLE IF EXISTS `protected_titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `protected_titles` (
  `pt_namespace` int(11) NOT NULL,
  `pt_title` varbinary(255) NOT NULL,
  `pt_user` int(10) unsigned NOT NULL,
  `pt_reason` tinyblob,
  `pt_timestamp` binary(14) NOT NULL,
  `pt_expiry` varbinary(14) NOT NULL DEFAULT '',
  `pt_create_perm` varbinary(60) NOT NULL,
  UNIQUE KEY `pt_namespace_title` (`pt_namespace`,`pt_title`),
  KEY `pt_timestamp` (`pt_timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `protected_titles`
--

/*!40000 ALTER TABLE `protected_titles` DISABLE KEYS */;
INSERT INTO `protected_titles` VALUES (1,'Q3234584',5480,'Excessive vandalism','20140310035130','infinity','autoconfirmed'),(1,'Q6903',197855,'Excessive spam','20141122185540','20150522185540','autoconfirmed'),(1,'Selena_Gomez',3724,'LTA target, would never be the talk page of an actual item (which would be of the form Talk:Q<#>)','20130421071625','infinity','sysop'),(2,'Atlasowa',72907,'Excessive spam: no reason IPs should be creating someone else\'s userpage anyways','20130328204302','infinity','autoconfirmed'),(2,'Circeus',50858,'Excessive spam','20141123190102','infinity','autoconfirmed'),(2,'Giuseppe_Sirugo',3724,'salting to prevent further spam','20130912055824','infinity','autoconfirmed'),(2,'Hkji4c6g78',72907,'Excessive spam','20130416033453','infinity','autoconfirmed'),(2,'Jesmion',3724,'there\'s no reason for anonymous users to be creating this','20140411081004','infinity','autoconfirmed'),(2,'Klausthorn',2496,'Third parties constantly spamming this page','20140312200117','infinity','autoconfirmed'),(2,'MODCHK',72907,'Excessive spam: IPs shouldn\'t be creating this page anyways','20130611065124','infinity','autoconfirmed'),(2,'Meganhard',5480,'Excessive spam','20140930053836','infinity','autoconfirmed'),(2,'Shreechaitanyaconsultancy&tourism',7647,'blocked','20130805184707','infinity','sysop'),(2,'Silver_hr',5480,'Excessive spam','20140923034019','infinity','autoconfirmed'),(2,'Sven_Manguard/Header',6965,'user request','20130502175819','infinity','sysop'),(2,'The_Anome',3724,'Excessive spam: [[User:The Anome]] is free to create this as he wishes but comment spambots have no business editing this page','20141025061840','infinity','autoconfirmed'),(2,'The_Anonymouse',295468,'only registered users should be allowed to create this','20141207094057','infinity','autoconfirmed'),(2,'Urplack6',3724,'Excessive spam: no reason for anyone to create this','20141025061530','infinity','autoconfirmed'),(3,'Madelinerobinson',3724,'Excessive spam: no need for other users to be creating this','20140204055939','infinity','sysop'),(3,'Richardbferguso',3724,'salting to prevent recreation by other spambots','20131230093804','infinity','sysop'),(4,'Copyrights',3724,'no reason for this to be created by non-established users','20140211085337','infinity','autoconfirmed'),(4,'Project_chat/ar',108041,'change to indef, per precedent','20131211203111','infinity','autoconfirmed'),(5,'Administrators\'_noticeboard',1467,'Excessive spam','20130716152426','infinity','autoconfirmed'),(10,'Main_Page',6965,'potential for problems','20130422052115','infinity','sysop');
/*!40000 ALTER TABLE `protected_titles` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-01-13 20:52:47
