-- MySQL dump 10.11
--
-- Host: localhost    Database: lava_demo
-- ------------------------------------------------------
-- Server version	5.0.56sp1-enterprise-gpl-log

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
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `appointment` (
  `appointment_id` int(10) unsigned NOT NULL auto_increment,
  `calendar_id` int(10) unsigned NOT NULL,
  `organizer_id` int(11) NOT NULL,
  `type` varchar(25) NOT NULL,
  `description` varchar(100) default NULL,
  `location` varchar(100) default NULL,
  `start_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_date` date NOT NULL,
  `end_time` time NOT NULL,
  `status` varchar(25) default NULL,
  `notes` text,
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`appointment_id`),
  KEY `appointment__calendar` (`calendar_id`),
  CONSTRAINT `appointment__calendar` FOREIGN KEY (`calendar_id`) REFERENCES `calendar` (`calendar_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_change`
--

DROP TABLE IF EXISTS `appointment_change`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `appointment_change` (
  `appointment_change_id` int(10) unsigned NOT NULL auto_increment,
  `appointment_id` int(10) unsigned NOT NULL,
  `type` varchar(25) NOT NULL,
  `description` varchar(255) default NULL,
  `change_by` int(10) NOT NULL,
  `change_timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`appointment_change_id`),
  KEY `appointment_change__appointment` (`appointment_id`),
  KEY `appointment_change__change_by` (`change_by`),
  CONSTRAINT `appointment_change__appointment` FOREIGN KEY (`appointment_id`) REFERENCES `appointment` (`appointment_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `appointment_change__change_by` FOREIGN KEY (`change_by`) REFERENCES `authuser` (`UID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `appointment_change`
--

LOCK TABLES `appointment_change` WRITE;
/*!40000 ALTER TABLE `appointment_change` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointment_change` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendee`
--

DROP TABLE IF EXISTS `attendee`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `attendee` (
  `attendee_id` int(10) unsigned NOT NULL auto_increment,
  `appointment_id` int(10) unsigned NOT NULL,
  `user_id` int(10) NOT NULL,
  `role` varchar(25) NOT NULL,
  `status` varchar(25) NOT NULL,
  `notes` varchar(100) default NULL,
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`attendee_id`),
  KEY `attendee__appointment` (`appointment_id`),
  KEY `attendee__user_id` (`user_id`),
  CONSTRAINT `attendee__appointment` FOREIGN KEY (`appointment_id`) REFERENCES `appointment` (`appointment_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `attendee__user_id` FOREIGN KEY (`user_id`) REFERENCES `authuser` (`UID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `attendee`
--

LOCK TABLES `attendee` WRITE;
/*!40000 ALTER TABLE `attendee` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `audit_entity`
--

DROP TABLE IF EXISTS `audit_entity`;
/*!50001 DROP VIEW IF EXISTS `audit_entity`*/;
/*!50001 CREATE TABLE `audit_entity` (
  `audit_entity_id` int(11),
  `audit_event_id` int(11),
  `entity_id` int(11),
  `entity` varchar(100),
  `entity_type` varchar(100),
  `audit_type` varchar(10),
  `modified` timestamp
) */;

--
-- Table structure for table `audit_entity_history`
--

DROP TABLE IF EXISTS `audit_entity_history`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `audit_entity_history` (
  `audit_entity_id` int(10) NOT NULL auto_increment,
  `audit_event_id` int(10) NOT NULL,
  `entity_id` int(10) NOT NULL,
  `entity` varchar(100) NOT NULL,
  `entity_type` varchar(100) NOT NULL,
  `audit_type` varchar(10) NOT NULL,
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`audit_entity_id`),
  KEY `audit_entity_history__audit_event_id` (`audit_event_id`),
  CONSTRAINT `audit_entity_history__audit_event_id` FOREIGN KEY (`audit_event_id`) REFERENCES `audit_event_history` (`audit_event_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `audit_entity_history`
--

LOCK TABLES `audit_entity_history` WRITE;
/*!40000 ALTER TABLE `audit_entity_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_entity_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_entity_work`
--

DROP TABLE IF EXISTS `audit_entity_work`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `audit_entity_work` (
  `audit_entity_id` int(10) NOT NULL auto_increment,
  `audit_event_id` int(10) NOT NULL,
  `entity_id` int(10) NOT NULL,
  `entity` varchar(100) NOT NULL,
  `entity_type` varchar(100) default NULL,
  `audit_type` varchar(10) NOT NULL,
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`audit_entity_id`),
  KEY `audit_entity_work__audit_event_id` (`audit_event_id`),
  CONSTRAINT `audit_entity_work__audit_event_id` FOREIGN KEY (`audit_event_id`) REFERENCES `audit_event_work` (`audit_event_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=640 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `audit_entity_work`
--

LOCK TABLES `audit_entity_work` WRITE;
/*!40000 ALTER TABLE `audit_entity_work` DISABLE KEYS */;
INSERT INTO `audit_entity_work` VALUES (626,9018,1179,'EnrollmentStatus','EnrollmentStatus','INSERT','2010-07-09 04:10:00'),(627,9018,8001,'Patient','Patient','INSERT','2010-07-09 04:10:00'),(628,9024,1179,'Visit','Visit','INSERT','2010-07-09 04:10:27'),(629,9045,1179,'Criteria Validation','Instrument','INSERT','2010-07-09 04:23:21'),(630,9056,1179,'Criteria Validation','Instrument','UPDATE','2010-07-09 04:28:31'),(631,9058,1179,'Criteria Validation','Instrument','UPDATE','2010-07-09 04:28:35'),(632,9066,1179,'Criteria Validation','Instrument','DELETE','2010-07-09 04:30:27'),(633,9070,1179,'Visit','Visit','DELETE','2010-07-09 04:30:31'),(634,9080,1179,'EnrollmentStatus','EnrollmentStatus','DELETE','2010-07-09 04:30:50'),(635,9080,8001,'Patient','Patient','DELETE','2010-07-09 04:30:50'),(636,5,10,'CrmsAuthUser','CrmsAuthUser','UPDATE','2011-10-17 20:40:07'),(637,14,10,'CrmsAuthUser','CrmsAuthUser','UPDATE','2011-10-17 20:40:37'),(638,38,69,'AuthPermission','AuthPermission','UPDATE','2011-10-17 20:42:36'),(639,41,70,'AuthPermission','AuthPermission','UPDATE','2011-10-17 20:42:42');
/*!40000 ALTER TABLE `audit_entity_work` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `audit_event`
--

DROP TABLE IF EXISTS `audit_event`;
/*!50001 DROP VIEW IF EXISTS `audit_event`*/;
/*!50001 CREATE TABLE `audit_event` (
  `audit_event_id` int(11),
  `audit_user` varchar(50),
  `audit_host` varchar(25),
  `audit_timestamp` timestamp,
  `action` varchar(255),
  `action_event` varchar(50),
  `action_id_param` varchar(50),
  `event_note` varchar(255),
  `exception` varchar(255),
  `exception_message` varchar(255),
  `modified` timestamp
) */;

--
-- Table structure for table `audit_event_history`
--

DROP TABLE IF EXISTS `audit_event_history`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `audit_event_history` (
  `audit_event_id` int(10) NOT NULL auto_increment,
  `audit_user` varchar(50) NOT NULL,
  `audit_host` varchar(25) NOT NULL,
  `audit_timestamp` timestamp NULL default NULL,
  `action` varchar(255) NOT NULL,
  `action_event` varchar(50) NOT NULL,
  `action_id_param` varchar(50) default NULL,
  `event_note` varchar(255) default NULL,
  `exception` varchar(255) default NULL,
  `exception_message` varchar(255) default NULL,
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`audit_event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `audit_event_history`
--

LOCK TABLES `audit_event_history` WRITE;
/*!40000 ALTER TABLE `audit_event_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_event_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_event_work`
--

DROP TABLE IF EXISTS `audit_event_work`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `audit_event_work` (
  `audit_event_id` int(10) NOT NULL auto_increment,
  `audit_user` varchar(50) NOT NULL,
  `audit_host` varchar(25) NOT NULL,
  `audit_timestamp` timestamp NULL default NULL,
  `action` varchar(255) NOT NULL,
  `action_event` varchar(50) NOT NULL,
  `action_id_param` varchar(50) default NULL,
  `event_note` varchar(255) default NULL,
  `exception` varchar(255) default NULL,
  `exception_message` varchar(255) default NULL,
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`audit_event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `audit_event_work`
--

LOCK TABLES `audit_event_work` WRITE;
/*!40000 ALTER TABLE `audit_event_work` DISABLE KEYS */;
INSERT INTO `audit_event_work` VALUES (1,'admin','127.0.0.1','2011-10-17 20:38:50','demo.crms.home.home.home.view','homeView',NULL,NULL,NULL,NULL,'2011-10-17 20:38:50'),(2,'admin','127.0.0.1','2011-10-17 20:38:52','lava.core.admin.auth.authUsers.view','view',NULL,NULL,NULL,NULL,'2011-10-17 20:38:52'),(3,'admin','127.0.0.1','2011-10-17 20:38:57','lava.core.admin.auth.authUsers.view','view',NULL,NULL,NULL,NULL,'2011-10-17 20:38:57'),(4,'admin','127.0.0.1','2011-10-17 20:39:55','lava.crms.admin.auth.crmsAuthUser.edit','edit','10',NULL,NULL,NULL,'2011-10-17 20:39:55'),(5,'admin','127.0.0.1','2011-10-17 20:40:07','lava.crms.admin.auth.crmsAuthUser.edit','authUser__save','10',NULL,NULL,NULL,'2011-10-17 20:40:07'),(6,'admin','127.0.0.1','2011-10-17 20:40:07','lava.core.admin.auth.authUsers.view','view',NULL,NULL,NULL,NULL,'2011-10-17 20:40:07'),(7,'admin','127.0.0.1','2011-10-17 20:40:12','lava.crms.admin.auth.crmsAuthUser.view','view','10',NULL,NULL,NULL,'2011-10-17 20:40:12'),(8,'admin','127.0.0.1','2011-10-17 20:40:14','lava.core.admin.auth.resetPassword.reset','reset','10',NULL,NULL,NULL,'2011-10-17 20:40:14'),(9,'admin','127.0.0.1','2011-10-17 20:40:18','lava.core.admin.auth.resetPassword.reset','resetPassword__reset','10',NULL,NULL,NULL,'2011-10-17 20:40:18'),(10,'admin','127.0.0.1','2011-10-17 20:40:18','lava.core.admin.auth.resetPassword.reset','reset','10',NULL,NULL,NULL,'2011-10-17 20:40:18'),(11,'admin','127.0.0.1','2011-10-17 20:40:23','lava.core.admin.auth.resetPassword.reset','resetPassword__cancel','10',NULL,NULL,NULL,'2011-10-17 20:40:23'),(12,'admin','127.0.0.1','2011-10-17 20:40:23','lava.crms.admin.auth.crmsAuthUser.view','view','10',NULL,NULL,NULL,'2011-10-17 20:40:23'),(13,'admin','127.0.0.1','2011-10-17 20:40:32','lava.crms.admin.auth.crmsAuthUser.edit','edit','10',NULL,NULL,NULL,'2011-10-17 20:40:32'),(14,'admin','127.0.0.1','2011-10-17 20:40:37','lava.crms.admin.auth.crmsAuthUser.edit','authUser__save','10',NULL,NULL,NULL,'2011-10-17 20:40:37'),(15,'admin','127.0.0.1','2011-10-17 20:40:37','lava.crms.admin.auth.crmsAuthUser.view','view','10',NULL,NULL,NULL,'2011-10-17 20:40:37'),(16,'admin','127.0.0.1','2011-10-17 20:40:41','lava.crms.admin.auth.crmsAuthUser.view','authUser__close','10',NULL,NULL,NULL,'2011-10-17 20:40:41'),(17,'admin','127.0.0.1','2011-10-17 20:40:41','lava.core.admin.auth.authUsers.view','view',NULL,NULL,NULL,NULL,'2011-10-17 20:40:41'),(18,'admin','127.0.0.1','2011-10-17 20:40:46','lava.crms.admin.auth.crmsAuthUser.view','view','10',NULL,NULL,NULL,'2011-10-17 20:40:46'),(19,'admin','127.0.0.1','2011-10-17 20:40:51','lava.crms.admin.auth.crmsAuthUser.view','authUser__close','10',NULL,NULL,NULL,'2011-10-17 20:40:51'),(20,'admin','127.0.0.1','2011-10-17 20:40:51','lava.core.admin.auth.authUsers.view','view',NULL,NULL,NULL,NULL,'2011-10-17 20:40:51'),(21,'demo','127.0.0.1','2011-10-17 20:40:55','demo.crms.home.home.home.view','homeView',NULL,NULL,NULL,NULL,'2011-10-17 20:40:55'),(22,'demo','127.0.0.1','2011-10-17 20:40:57','lava.crms.people.findPatient.findPatient.view','view',NULL,NULL,NULL,NULL,'2011-10-17 20:40:57'),(23,'demo','127.0.0.1','2011-10-17 20:40:59','demo.crms.home.home.home.view','homeView',NULL,NULL,NULL,NULL,'2011-10-17 20:40:59'),(24,'demo','127.0.0.1','2011-10-17 20:41:00','lava.crms.people.findPatient.findPatient.view','view',NULL,NULL,NULL,NULL,'2011-10-17 20:41:00'),(25,'demo','127.0.0.1','2011-10-17 20:41:02','demo.crms.home.home.home.view','homeView',NULL,NULL,NULL,NULL,'2011-10-17 20:41:02'),(26,'demo','127.0.0.1','2011-10-17 20:41:03','lava.core.home.prefs.userPreferences.view','view',NULL,NULL,NULL,NULL,'2011-10-17 20:41:03'),(27,'demo','127.0.0.1','2011-10-17 20:41:08','demo.crms.home.home.home.view','homeView',NULL,NULL,NULL,NULL,'2011-10-17 20:41:08'),(28,'admin','127.0.0.1','2011-10-17 20:41:34','demo.crms.home.home.home.view','homeView',NULL,NULL,NULL,NULL,'2011-10-17 20:41:34'),(29,'admin','127.0.0.1','2011-10-17 20:41:36','lava.core.admin.auth.authUsers.view','view',NULL,NULL,NULL,NULL,'2011-10-17 20:41:36'),(30,'admin','127.0.0.1','2011-10-17 20:41:39','lava.core.admin.auth.authPermissions.view','view',NULL,NULL,NULL,NULL,'2011-10-17 20:41:39'),(31,'admin','127.0.0.1','2011-10-17 20:41:48','lava.core.admin.auth.authPermission.edit','edit','69',NULL,NULL,NULL,'2011-10-17 20:41:48'),(32,'admin','127.0.0.1','2011-10-17 20:42:02','lava.core.admin.auth.authPermission.edit','authPermission__cancel','69',NULL,NULL,NULL,'2011-10-17 20:42:02'),(33,'admin','127.0.0.1','2011-10-17 20:42:02','lava.core.admin.auth.authPermissions.view','view',NULL,NULL,NULL,NULL,'2011-10-17 20:42:02'),(34,'admin','127.0.0.1','2011-10-17 20:42:14','lava.core.admin.auth.authPermission.add','add',NULL,NULL,NULL,NULL,'2011-10-17 20:42:14'),(35,'admin','127.0.0.1','2011-10-17 20:42:23','lava.core.admin.auth.authPermission.add','authPermission__cancelAdd',NULL,NULL,NULL,NULL,'2011-10-17 20:42:23'),(36,'admin','127.0.0.1','2011-10-17 20:42:23','lava.core.admin.auth.authPermissions.view','view',NULL,NULL,NULL,NULL,'2011-10-17 20:42:23'),(37,'admin','127.0.0.1','2011-10-17 20:42:31','lava.core.admin.auth.authPermission.edit','edit','69',NULL,NULL,NULL,'2011-10-17 20:42:31'),(38,'admin','127.0.0.1','2011-10-17 20:42:36','lava.core.admin.auth.authPermission.edit','authPermission__save','69',NULL,NULL,NULL,'2011-10-17 20:42:36'),(39,'admin','127.0.0.1','2011-10-17 20:42:36','lava.core.admin.auth.authPermissions.view','view',NULL,NULL,NULL,NULL,'2011-10-17 20:42:36'),(40,'admin','127.0.0.1','2011-10-17 20:42:39','lava.core.admin.auth.authPermission.edit','edit','70',NULL,NULL,NULL,'2011-10-17 20:42:39'),(41,'admin','127.0.0.1','2011-10-17 20:42:42','lava.core.admin.auth.authPermission.edit','authPermission__save','70',NULL,NULL,NULL,'2011-10-17 20:42:42'),(42,'admin','127.0.0.1','2011-10-17 20:42:42','lava.core.admin.auth.authPermissions.view','view',NULL,NULL,NULL,NULL,'2011-10-17 20:42:42'),(43,'demo','127.0.0.1','2011-10-17 20:43:00','demo.crms.home.home.home.view','homeView',NULL,NULL,NULL,NULL,'2011-10-17 20:43:00'),(44,'demo','127.0.0.1','2011-10-17 20:43:03','lava.core.home.user.userInfo.view','view',NULL,NULL,NULL,NULL,'2011-10-17 20:43:03'),(45,'demo','127.0.0.1','2011-10-17 20:43:06','lava.core.home.user.changePassword.change','change',NULL,NULL,NULL,NULL,'2011-10-17 20:43:06'),(46,'demo','127.0.0.1','2011-10-17 20:43:09','lava.core.home.user.changePassword.change','changePassword__cancel',NULL,NULL,NULL,NULL,'2011-10-17 20:43:09'),(47,'demo','127.0.0.1','2011-10-17 20:43:09','lava.core.home.user.userInfo.view','view',NULL,NULL,NULL,NULL,'2011-10-17 20:43:09'),(48,'demo','127.0.0.1','2011-10-17 20:43:11','lava.core.home.user.userInfo.edit','edit',NULL,NULL,NULL,NULL,'2011-10-17 20:43:11'),(49,'demo','127.0.0.1','2011-10-17 20:43:13','lava.core.home.user.userInfo.edit','userInfo__cancel',NULL,NULL,NULL,NULL,'2011-10-17 20:43:13'),(50,'demo','127.0.0.1','2011-10-17 20:43:13','lava.core.home.user.userInfo.view','view',NULL,NULL,NULL,NULL,'2011-10-17 20:43:13'),(51,'demo','127.0.0.1','2011-10-17 20:43:14','lava.crms.people.findPatient.findPatient.view','view',NULL,NULL,NULL,NULL,'2011-10-17 20:43:14'),(52,'demo','127.0.0.1','2011-10-17 20:43:17','lava.crms.people.findPatient.findPatient.view','findPatient__applyFilter',NULL,NULL,NULL,NULL,'2011-10-17 20:43:17'),(53,'demo','127.0.0.1','2011-10-17 20:43:17','lava.crms.people.findPatient.findPatient.view','view',NULL,NULL,NULL,NULL,'2011-10-17 20:43:17'),(54,'demo','127.0.0.1','2011-10-17 21:08:38','demo.crms.home.home.home.view','homeView',NULL,NULL,NULL,NULL,'2011-10-17 21:08:38'),(55,'demo','127.0.0.1','2011-10-17 21:08:41','lava.crms.people.findPatient.findPatient.view','view',NULL,NULL,NULL,NULL,'2011-10-17 21:08:41'),(56,'demo','127.0.0.1','2011-10-17 21:08:58','demo.crms.home.home.home.view','homeView',NULL,NULL,NULL,NULL,'2011-10-17 21:08:58'),(57,'demo','127.0.0.1','2011-10-17 21:09:00','lava.core.home.user.userInfo.view','view',NULL,NULL,NULL,NULL,'2011-10-17 21:09:00'),(58,'demo','127.0.0.1','2011-10-17 21:09:04','lava.crms.people.findPatient.findPatient.view','view',NULL,NULL,NULL,NULL,'2011-10-17 21:09:04'),(59,'demo','127.0.0.1','2011-10-17 21:11:12','demo.crms.home.home.home.view','homeView',NULL,NULL,NULL,NULL,'2011-10-17 21:11:12'),(60,'demo','127.0.0.1','2011-10-17 21:11:15','lava.crms.people.findPatient.findPatient.view','view',NULL,NULL,NULL,NULL,'2011-10-17 21:11:15'),(61,'demo','127.0.0.1','2011-10-17 21:11:19','lava.crms.people.patient.projectPatients.view','view',NULL,NULL,NULL,NULL,'2011-10-17 21:11:19'),(62,'demo','127.0.0.1','2011-10-17 21:11:23','lava.crms.people.findPatient.findPatient.view','view',NULL,NULL,NULL,NULL,'2011-10-17 21:11:23'),(63,'demo','127.0.0.1','2011-10-17 21:11:27','lava.crms.people.findPatient.findPatient.view','findPatient__applyFilter',NULL,NULL,NULL,NULL,'2011-10-17 21:11:27'),(64,'demo','127.0.0.1','2011-10-17 21:11:27','lava.crms.people.findPatient.findPatient.view','view',NULL,NULL,NULL,NULL,'2011-10-17 21:11:27'),(65,'demo','127.0.0.1','2011-10-17 21:11:33','lava.crms.people.findPatient.findPatient.view','findPatient__clearFilter',NULL,NULL,NULL,NULL,'2011-10-17 21:11:33'),(66,'demo','127.0.0.1','2011-10-17 21:11:33','lava.crms.people.findPatient.findPatient.view','view',NULL,NULL,NULL,NULL,'2011-10-17 21:11:33'),(67,'demo','127.0.0.1','2011-10-17 21:11:38','demo.crms.home.home.home.view','homeView',NULL,NULL,NULL,NULL,'2011-10-17 21:11:38'),(68,'demo','127.0.0.1','2011-10-17 21:11:39','lava.crms.people.findPatient.findPatient.view','view',NULL,NULL,NULL,NULL,'2011-10-17 21:11:39'),(69,'demo','127.0.0.1','2011-10-17 21:11:43','lava.crms.people.patient.projectPatients.view','view',NULL,NULL,NULL,NULL,'2011-10-17 21:11:43'),(70,'demo','127.0.0.1','2011-10-17 21:11:45','lava.crms.people.findPatient.findPatient.view','view',NULL,NULL,NULL,NULL,'2011-10-17 21:11:45'),(71,'demo','127.0.0.1','2011-10-17 21:11:50','lava.crms.people.findPatient.findPatient.view','findPatient__clearFilter',NULL,NULL,NULL,NULL,'2011-10-17 21:11:50'),(72,'demo','127.0.0.1','2011-10-17 21:11:50','lava.crms.people.findPatient.findPatient.view','view',NULL,NULL,NULL,NULL,'2011-10-17 21:11:50');
/*!40000 ALTER TABLE `audit_event_work` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `audit_property`
--

DROP TABLE IF EXISTS `audit_property`;
/*!50001 DROP VIEW IF EXISTS `audit_property`*/;
/*!50001 CREATE TABLE `audit_property` (
  `audit_property_id` int(11),
  `audit_entity_id` int(11),
  `property` varchar(100),
  `index_key` varchar(100),
  `subproperty` varchar(255),
  `old_value` varchar(255),
  `new_value` varchar(255),
  `audit_timestamp` timestamp,
  `modified` timestamp
) */;

--
-- Table structure for table `audit_property_history`
--

DROP TABLE IF EXISTS `audit_property_history`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `audit_property_history` (
  `audit_property_id` int(10) NOT NULL auto_increment,
  `audit_entity_id` int(10) NOT NULL,
  `property` varchar(100) NOT NULL,
  `index_key` varchar(100) default NULL,
  `subproperty` varchar(255) default NULL,
  `old_value` varchar(255) NOT NULL,
  `new_value` varchar(255) NOT NULL,
  `audit_timestamp` timestamp NULL default NULL,
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`audit_property_id`),
  KEY `audit_property_history__audit_entity_id` (`audit_entity_id`),
  CONSTRAINT `audit_property_history__audit_entity_id` FOREIGN KEY (`audit_entity_id`) REFERENCES `audit_entity_history` (`audit_entity_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `audit_property_history`
--

LOCK TABLES `audit_property_history` WRITE;
/*!40000 ALTER TABLE `audit_property_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_property_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_property_work`
--

DROP TABLE IF EXISTS `audit_property_work`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `audit_property_work` (
  `audit_property_id` int(10) NOT NULL auto_increment,
  `audit_entity_id` int(10) NOT NULL,
  `property` varchar(100) NOT NULL,
  `index_key` varchar(100) default NULL,
  `subproperty` varchar(255) default NULL,
  `old_value` varchar(255) NOT NULL,
  `new_value` varchar(255) NOT NULL,
  `audit_timestamp` timestamp NULL default NULL,
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`audit_property_id`),
  KEY `audit_property_work__audit_entity_id` (`audit_entity_id`),
  CONSTRAINT `audit_property_work__audit_entity_id` FOREIGN KEY (`audit_entity_id`) REFERENCES `audit_entity_work` (`audit_entity_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `audit_property_work`
--

LOCK TABLES `audit_property_work` WRITE;
/*!40000 ALTER TABLE `audit_property_work` DISABLE KEYS */;
INSERT INTO `audit_property_work` VALUES (1,636,'userName',NULL,NULL,'Test','Demo','2011-10-17 20:40:07','2011-10-17 20:40:07'),(2,636,'login',NULL,NULL,'test','demo','2011-10-17 20:40:07','2011-10-17 20:40:07'),(3,636,'shortUserNameRev',NULL,NULL,'Test','Demo','2011-10-17 20:40:07','2011-10-17 20:40:07'),(4,636,'shortUserName',NULL,NULL,'Test','Demo','2011-10-17 20:40:07','2011-10-17 20:40:07'),(5,637,'password',NULL,NULL,'11f5f0473b87bc5ee0468e4b9f8d55439d0454a8cc491608963e69f3fb4e411c','{NULL}','2011-10-17 20:40:37','2011-10-17 20:40:37'),(6,637,'authenticationType',NULL,NULL,'LOCAL','XML CONFIG','2011-10-17 20:40:37','2011-10-17 20:40:37'),(7,638,'section',NULL,NULL,'prefs','*','2011-10-17 20:42:36','2011-10-17 20:42:36'),(8,639,'section',NULL,NULL,'prefs','*','2011-10-17 20:42:42','2011-10-17 20:42:42');
/*!40000 ALTER TABLE `audit_property_work` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `audit_text`
--

DROP TABLE IF EXISTS `audit_text`;
/*!50001 DROP VIEW IF EXISTS `audit_text`*/;
/*!50001 CREATE TABLE `audit_text` (
  `audit_property_id` int(11),
  `old_text` text,
  `new_text` text
) */;

--
-- Table structure for table `audit_text_history`
--

DROP TABLE IF EXISTS `audit_text_history`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `audit_text_history` (
  `audit_property_id` int(10) NOT NULL,
  `old_text` text,
  `new_text` text,
  PRIMARY KEY  (`audit_property_id`),
  KEY `audit_text_history__audit_property_id` (`audit_property_id`),
  CONSTRAINT `audit_text_history__audit_property_id` FOREIGN KEY (`audit_property_id`) REFERENCES `audit_property_history` (`audit_property_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `audit_text_history`
--

LOCK TABLES `audit_text_history` WRITE;
/*!40000 ALTER TABLE `audit_text_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_text_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_text_work`
--

DROP TABLE IF EXISTS `audit_text_work`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `audit_text_work` (
  `audit_property_id` int(10) NOT NULL,
  `old_text` text,
  `new_text` text,
  PRIMARY KEY  (`audit_property_id`),
  KEY `audit_text_work__audit_property_id` (`audit_property_id`),
  CONSTRAINT `audit_text_work__audit_property_id` FOREIGN KEY (`audit_property_id`) REFERENCES `audit_property_work` (`audit_property_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `audit_text_work`
--

LOCK TABLES `audit_text_work` WRITE;
/*!40000 ALTER TABLE `audit_text_work` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_text_work` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authgroup`
--

DROP TABLE IF EXISTS `authgroup`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `authgroup` (
  `GID` int(10) NOT NULL auto_increment,
  `GroupName` varchar(50) NOT NULL,
  `EffectiveDate` date NOT NULL,
  `ExpirationDate` date default NULL,
  `Notes` varchar(255) default NULL,
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`GID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `authgroup`
--

LOCK TABLES `authgroup` WRITE;
/*!40000 ALTER TABLE `authgroup` DISABLE KEYS */;
INSERT INTO `authgroup` VALUES (1,'Admins','2009-01-01',NULL,'Admins (can perform all actions)','2009-01-01 08:00:00'),(2,'Coordinators','2009-01-01',NULL,'Coordinators (can perform all non-admin actions in any project)','2009-11-25 01:14:28');
/*!40000 ALTER TABLE `authgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authpermission`
--

DROP TABLE IF EXISTS `authpermission`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `authpermission` (
  `PermID` int(10) NOT NULL auto_increment,
  `RoleID` int(10) NOT NULL,
  `PermitDeny` varchar(10) NOT NULL,
  `Scope` varchar(50) NOT NULL,
  `Module` varchar(50) NOT NULL,
  `Section` varchar(50) NOT NULL,
  `Target` varchar(50) NOT NULL,
  `Mode` varchar(25) NOT NULL,
  `Notes` varchar(100) default NULL,
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`PermID`),
  KEY `authpermission_RoleID` (`RoleID`),
  CONSTRAINT `authpermission_RoleID` FOREIGN KEY (`RoleID`) REFERENCES `authrole` (`RoleID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `authpermission`
--

LOCK TABLES `authpermission` WRITE;
/*!40000 ALTER TABLE `authpermission` DISABLE KEYS */;
INSERT INTO `authpermission` VALUES (3,2,'PERMIT','crms','*','*','*','*',NULL,'2009-01-25 05:22:17'),(6,3,'PERMIT','crms','*','*','*','*',NULL,'2009-01-25 05:22:17'),(9,4,'PERMIT','crms','*','*','*','*',NULL,'2009-01-25 05:22:17'),(17,8,'PERMIT','crms','*','*','*','view',NULL,'2009-02-04 06:14:53'),(33,13,'PERMIT','crms','*','*','*','view','read only access to all data','2009-01-25 05:22:17'),(39,-1,'DENY','core','admin','*','*','*','Restricts access to admin module to all users by default','2009-01-25 05:22:17'),(50,3,'PERMIT','core','admin','*','*','*',NULL,'2009-02-06 19:09:33'),(57,17,'PERMIT','crms','*','*','*','view',NULL,'2009-01-25 05:22:17'),(58,13,'PERMIT','crms','specimens','*','*','*','full permission to specimens section','2009-01-25 05:22:17'),(59,16,'PERMIT','crms','*','*','*','view',NULL,'2009-01-25 05:22:17'),(60,18,'PERMIT','crms','assessment','*','*','*',NULL,'2009-01-25 05:22:17'),(67,20,'PERMIT','crms','*','*','*','*',NULL,'2009-01-25 05:22:17'),(68,4,'PERMIT','core','reporting','*','*','*',NULL,'2009-01-31 16:41:50'),(69,4,'PERMIT','core','home','*','*','*',NULL,'2011-10-17 20:42:36'),(70,3,'PERMIT','core','home','*','*','*',NULL,'2011-10-17 20:42:42');
/*!40000 ALTER TABLE `authpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authrole`
--

DROP TABLE IF EXISTS `authrole`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `authrole` (
  `RoleID` int(10) NOT NULL auto_increment,
  `RoleName` varchar(25) NOT NULL,
  `Notes` varchar(255) default NULL,
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`RoleID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `authrole`
--

LOCK TABLES `authrole` WRITE;
/*!40000 ALTER TABLE `authrole` DISABLE KEYS */;
INSERT INTO `authrole` VALUES (-1,'DEFAULT_PERMISSIONS','This role groups together default permissions that apply to all roles','2009-01-25 05:22:52'),(2,'DATA MANAGER','Data Managers: staff who need full access to data and functionality for the purposes of data entry, cleanup, and auditing','2009-01-25 05:22:52'),(3,'SYSTEM ADMIN','System Admin: staff who need full access to administrative functionality and read only access to data.','2009-01-25 05:22:52'),(4,'COORDINATOR','Project Coordinators: staff with responsibility for recruitment, enrollment, scheduling, assessment, and project administration','2009-03-10 18:42:16'),(8,'ASSOCIATE','Allows read only access to patients and patient data.','2009-01-25 05:22:52'),(13,'GENETIC STAFF','Staff with access to genetic information','2009-01-25 05:22:52'),(16,'REFERRER','Allows read only access to patients and data without access to protected health information.','2009-01-25 05:22:52'),(17,'AFFILIATE','Allows read only access to data associated with the patients the user already can access.','2009-01-25 05:22:52'),(18,'DATA ENTRY','This role allows full permissions to assessment module for patients that the user has access to through another role.  PHI access is not granted via this role.','2009-01-25 05:22:52'),(20,'TESTER','A role to use for testing permissions','2009-01-25 05:22:52');
/*!40000 ALTER TABLE `authrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authuser`
--

DROP TABLE IF EXISTS `authuser`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `authuser` (
  `UID` int(10) NOT NULL auto_increment,
  `UserName` varchar(50) NOT NULL,
  `Login` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `phone` varchar(25) default NULL,
  `AccessAgreementDate` date default NULL,
  `ShortUserName` varchar(50) default NULL,
  `ShortUserNameRev` varchar(50) default NULL,
  `EffectiveDate` date NOT NULL,
  `ExpirationDate` date default NULL,
  `Notes` varchar(255) default NULL,
  `authenticationType` varchar(10) default 'LOCAL',
  `password` varchar(100) default NULL,
  `passwordExpiration` timestamp NULL default NULL,
  `passwordResetToken` varchar(100) default NULL,
  `passwordResetExpiration` timestamp NULL default NULL,
  `failedLoginCount` smallint(6) default NULL,
  `lastFailedLogin` timestamp NULL default NULL,
  `accountLocked` timestamp NULL default NULL,
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`UID`),
  UNIQUE KEY `Unique_UserName` (`UserName`),
  UNIQUE KEY `Unique_Login` (`Login`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `authuser`
--

LOCK TABLES `authuser` WRITE;
/*!40000 ALTER TABLE `authuser` DISABLE KEYS */;
INSERT INTO `authuser` VALUES (2,'Joe Hesse','jhesse',NULL,NULL,'2009-01-01','J.  Hesse',' Hesse, J','2009-01-01',NULL,NULL,'UCSF AD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2009-08-21 21:26:20'),(5,'Charlie Toohey','ctoohey',NULL,NULL,'2009-01-01','C.  Toohey',' Toohey, C','2009-01-01',NULL,NULL,'UCSF AD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2009-08-21 21:26:26'),(10,'Demo','demo',NULL,NULL,'2009-07-23','Demo','Demo','2009-07-23',NULL,NULL,'XML CONFIG',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-10-17 20:40:37'),(12,'Albert Lee','alee7',NULL,NULL,'2009-08-21','A.  Lee',' Lee, A','2009-08-21',NULL,NULL,'UCSF AD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2009-08-21 21:24:41'),(29,'Admin','admin',NULL,NULL,'2009-11-24','Admin','Admin','2009-11-24',NULL,NULL,'LOCAL','d7c2b0ff8ba702e9b739962c8e8b10a5e22f0223a8e59421791ab288f054083f',NULL,NULL,NULL,NULL,NULL,NULL,'2009-11-25 02:05:23');
/*!40000 ALTER TABLE `authuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authusergroup`
--

DROP TABLE IF EXISTS `authusergroup`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `authusergroup` (
  `UGID` int(10) NOT NULL auto_increment,
  `UID` int(10) NOT NULL,
  `GID` int(10) NOT NULL,
  `Notes` varchar(255) default NULL,
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`UGID`),
  KEY `authusergroup_UID` (`UID`),
  KEY `authusergroup_GID` (`GID`),
  CONSTRAINT `authusergroup_GID` FOREIGN KEY (`GID`) REFERENCES `authgroup` (`GID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `authusergroup_UID` FOREIGN KEY (`UID`) REFERENCES `authuser` (`UID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `authusergroup`
--

LOCK TABLES `authusergroup` WRITE;
/*!40000 ALTER TABLE `authusergroup` DISABLE KEYS */;
INSERT INTO `authusergroup` VALUES (5,5,1,NULL,'2009-02-06 19:10:46'),(11,12,1,NULL,'2009-08-21 21:24:51'),(39,2,1,NULL,'2009-10-20 00:18:42'),(46,2,2,NULL,'2009-11-25 01:15:29'),(47,12,2,NULL,'2009-11-25 01:15:39'),(48,5,2,NULL,'2009-11-25 01:15:49'),(49,10,2,NULL,'2009-11-25 01:16:00'),(50,29,1,NULL,'2009-11-25 02:06:08'),(51,29,2,NULL,'2009-11-25 02:06:16');
/*!40000 ALTER TABLE `authusergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authuserrole`
--

DROP TABLE IF EXISTS `authuserrole`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `authuserrole` (
  `URID` int(10) NOT NULL auto_increment,
  `RoleID` int(10) NOT NULL,
  `UID` int(10) default NULL,
  `GID` int(10) default NULL,
  `Notes` varchar(255) default NULL,
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`URID`),
  KEY `authuserrole_GID` (`GID`),
  KEY `authuserrole_RoleID` (`RoleID`),
  KEY `authuserrole_UID` (`UID`),
  CONSTRAINT `authuserrole_GID` FOREIGN KEY (`GID`) REFERENCES `authgroup` (`GID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `authuserrole_RoleID` FOREIGN KEY (`RoleID`) REFERENCES `authrole` (`RoleID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `authuserrole_UID` FOREIGN KEY (`UID`) REFERENCES `authuser` (`UID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `authuserrole`
--

LOCK TABLES `authuserrole` WRITE;
/*!40000 ALTER TABLE `authuserrole` DISABLE KEYS */;
INSERT INTO `authuserrole` VALUES (1,3,NULL,1,'','2009-01-01 08:00:00'),(3,4,NULL,2,'','2009-01-01 08:00:00');
/*!40000 ALTER TABLE `authuserrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendar`
--

DROP TABLE IF EXISTS `calendar`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `calendar` (
  `calendar_id` int(10) unsigned NOT NULL auto_increment,
  `type` varchar(25) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) default NULL,
  `notes` text,
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`calendar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `calendar`
--

LOCK TABLES `calendar` WRITE;
/*!40000 ALTER TABLE `calendar` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caregiver`
--

DROP TABLE IF EXISTS `caregiver`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `caregiver` (
  `CareID` int(10) NOT NULL auto_increment,
  `PIDN` int(10) NOT NULL,
  `Lname` varchar(25) NOT NULL,
  `FName` varchar(25) NOT NULL,
  `Gender` tinyint(3) default NULL,
  `PTRelation` varchar(25) default NULL,
  `LivesWithPT` smallint(5) default NULL,
  `PrimaryLanguage` varchar(25) default NULL,
  `TransNeeded` smallint(5) default NULL,
  `TransLanguage` varchar(25) default NULL,
  `IsPrimContact` smallint(5) default NULL,
  `IsContact` smallint(5) default NULL,
  `IsContactNotes` varchar(100) default NULL,
  `IsCaregiver` smallint(5) default NULL,
  `IsInformant` smallint(5) default NULL,
  `IsNextOfKin` smallint(5) default NULL,
  `IsResearchSurrogate` smallint(5) default NULL,
  `IsPowerOfAttorney` smallint(5) default NULL,
  `IsOtherRole` smallint(5) default NULL,
  `OtherRoleDesc` varchar(50) default NULL,
  `Note` varchar(255) default NULL,
  `ActiveFlag` smallint(5) default '1',
  `DOB` datetime default NULL,
  `Educ` tinyint(3) default NULL,
  `Race` varchar(25) default NULL,
  `MaritalStatus` varchar(25) default NULL,
  `Occupation` varchar(25) default NULL,
  `Age` int(10) default NULL,
  `FullName` varchar(100) default NULL,
  `FullNameRev` varchar(100) default NULL,
  `ContactDesc` varchar(255) default NULL,
  `RolesDesc` varchar(255) default NULL,
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`CareID`),
  KEY `caregiver__PIDN` (`PIDN`),
  CONSTRAINT `caregiver__PIDN` FOREIGN KEY (`PIDN`) REFERENCES `patient` (`PIDN`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `caregiver`
--

LOCK TABLES `caregiver` WRITE;
/*!40000 ALTER TABLE `caregiver` DISABLE KEYS */;
/*!40000 ALTER TABLE `caregiver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactinfo`
--

DROP TABLE IF EXISTS `contactinfo`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `contactinfo` (
  `CInfoID` int(10) NOT NULL auto_increment,
  `PIDN` int(10) NOT NULL,
  `CareID` int(10) default NULL,
  `ContactPT` smallint(5) default NULL,
  `IsPTResidence` smallint(5) default NULL,
  `OptOutMAC` smallint(5) default '0',
  `OptOutAffiliates` smallint(5) default '0',
  `ActiveFlag` smallint(5) default '1',
  `Address` varchar(100) default NULL,
  `Address2` varchar(100) default NULL,
  `City` varchar(50) default NULL,
  `State` char(10) default NULL,
  `Zip` varchar(10) default NULL,
  `Country` varchar(50) default NULL,
  `Phone1` varchar(25) default NULL,
  `PhoneType1` varchar(10) default NULL,
  `Phone2` varchar(25) default NULL,
  `PhoneType2` varchar(10) default NULL,
  `Phone3` varchar(25) default NULL,
  `PhoneType3` varchar(10) default NULL,
  `Email` varchar(100) default NULL,
  `Notes` varchar(250) default NULL,
  `ContactNameRev` varchar(100) default NULL,
  `ContactDesc` varchar(100) default NULL,
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`CInfoID`),
  KEY `contactinfo__PIDN` (`PIDN`),
  KEY `contactinfo__CareID` (`CareID`),
  CONSTRAINT `contactinfo__CareID` FOREIGN KEY (`CareID`) REFERENCES `caregiver` (`CareID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `contactinfo__PIDN` FOREIGN KEY (`PIDN`) REFERENCES `patient` (`PIDN`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `contactinfo`
--

LOCK TABLES `contactinfo` WRITE;
/*!40000 ALTER TABLE `contactinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `contactinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactlog`
--

DROP TABLE IF EXISTS `contactlog`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `contactlog` (
  `LogID` int(10) NOT NULL auto_increment,
  `PIDN` int(10) NOT NULL,
  `ProjName` varchar(75) default NULL,
  `LogDate` date default NULL,
  `LogTime` time default NULL,
  `Method` varchar(25) NOT NULL default 'Phone',
  `StaffInit` smallint(5) NOT NULL default '1',
  `Staff` varchar(50) default NULL,
  `Contact` varchar(50) default NULL,
  `Note` text,
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`LogID`),
  KEY `contactlog__PIDN` (`PIDN`),
  KEY `contactlog__ProjName` (`ProjName`),
  CONSTRAINT `contactlog__PIDN` FOREIGN KEY (`PIDN`) REFERENCES `patient` (`PIDN`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `contactlog__ProjName` FOREIGN KEY (`ProjName`) REFERENCES `projectunit` (`ProjUnitDesc`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `contactlog`
--

LOCK TABLES `contactlog` WRITE;
/*!40000 ALTER TABLE `contactlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `contactlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crmsauthrole`
--

DROP TABLE IF EXISTS `crmsauthrole`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `crmsauthrole` (
  `RoleID` int(10) NOT NULL,
  `PatientAccess` smallint(5) NOT NULL default '1',
  `PhiAccess` smallint(5) NOT NULL default '1',
  `GhiAccess` smallint(5) NOT NULL default '0',
  PRIMARY KEY  (`RoleID`),
  KEY `crmsauthrole__RoleID` (`RoleID`),
  CONSTRAINT `crmsauthrole__RoleID` FOREIGN KEY (`RoleID`) REFERENCES `authrole` (`RoleID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `crmsauthrole`
--

LOCK TABLES `crmsauthrole` WRITE;
/*!40000 ALTER TABLE `crmsauthrole` DISABLE KEYS */;
INSERT INTO `crmsauthrole` VALUES (-1,0,0,0),(2,1,1,0),(3,1,1,0),(4,1,1,0),(8,1,1,0),(13,1,1,1),(16,1,0,0),(17,0,1,0),(18,0,0,0),(20,1,1,0);
/*!40000 ALTER TABLE `crmsauthrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crmsauthuser`
--

DROP TABLE IF EXISTS `crmsauthuser`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `crmsauthuser` (
  `UID` int(10) NOT NULL,
  PRIMARY KEY  (`UID`),
  KEY `crmsauthuser__UID` (`UID`),
  CONSTRAINT `crmsauthuser__UID` FOREIGN KEY (`UID`) REFERENCES `authuser` (`UID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `crmsauthuser`
--

LOCK TABLES `crmsauthuser` WRITE;
/*!40000 ALTER TABLE `crmsauthuser` DISABLE KEYS */;
INSERT INTO `crmsauthuser` VALUES (2),(5),(10),(12),(29);
/*!40000 ALTER TABLE `crmsauthuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crmsauthuserrole`
--

DROP TABLE IF EXISTS `crmsauthuserrole`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `crmsauthuserrole` (
  `URID` int(10) NOT NULL,
  `Project` varchar(25) default NULL,
  `Unit` varchar(25) default NULL,
  PRIMARY KEY  (`URID`),
  KEY `crmsauthuserrole__URID` (`URID`),
  CONSTRAINT `crmsauthuserrole__URID` FOREIGN KEY (`URID`) REFERENCES `authuserrole` (`URID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `crmsauthuserrole`
--

LOCK TABLES `crmsauthuserrole` WRITE;
/*!40000 ALTER TABLE `crmsauthuserrole` DISABLE KEYS */;
INSERT INTO `crmsauthuserrole` VALUES (1,'*','*'),(3,'*','*');
/*!40000 ALTER TABLE `crmsauthuserrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `doctor` (
  `DocID` int(10) NOT NULL auto_increment,
  `LName` varchar(25) NOT NULL,
  `MInitial` char(1) default NULL,
  `FName` varchar(25) NOT NULL,
  `Address` varchar(100) default NULL,
  `City` varchar(50) default NULL,
  `State` char(2) default NULL,
  `Zip` varchar(10) default NULL,
  `Phone1` varchar(25) default NULL,
  `PhoneType1` varchar(10) default NULL,
  `Phone2` varchar(25) default NULL,
  `PhoneType2` varchar(10) default NULL,
  `Phone3` varchar(25) default NULL,
  `PhoneType3` varchar(10) default NULL,
  `Email` varchar(100) default NULL,
  `DocType` varchar(50) default NULL,
  `FullNameRev` varchar(100) default NULL,
  `FullName` varchar(100) default NULL,
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`DocID`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollmentstatus`
--

DROP TABLE IF EXISTS `enrollmentstatus`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `enrollmentstatus` (
  `EnrollStatID` int(10) NOT NULL auto_increment,
  `PIDN` int(10) NOT NULL,
  `ProjName` varchar(75) default NULL,
  `SubjectStudyID` varchar(10) default NULL,
  `ReferralSource` varchar(75) default NULL,
  `LatestDesc` varchar(25) default NULL,
  `LatestDate` datetime default NULL,
  `LatestNote` varchar(100) default NULL,
  `ReferredDesc` varchar(25) default NULL,
  `ReferredDate` datetime default NULL,
  `ReferredNote` varchar(100) default NULL,
  `DeferredDesc` varchar(25) default NULL,
  `DeferredDate` datetime default NULL,
  `DeferredNote` varchar(100) default NULL,
  `EligibleDesc` varchar(25) default NULL,
  `EligibleDate` datetime default NULL,
  `EligibleNote` varchar(100) default NULL,
  `IneligibleDesc` varchar(25) default NULL,
  `IneligibleDate` datetime default NULL,
  `IneligibleNote` varchar(100) default NULL,
  `DeclinedDesc` varchar(25) default NULL,
  `DeclinedDate` datetime default NULL,
  `DeclinedNote` varchar(100) default NULL,
  `EnrolledDesc` varchar(25) default NULL,
  `EnrolledDate` datetime default NULL,
  `EnrolledNote` varchar(100) default NULL,
  `ExcludedDesc` varchar(25) default NULL,
  `ExcludedDate` datetime default NULL,
  `ExcludedNote` varchar(100) default NULL,
  `WithdrewDesc` varchar(25) default NULL,
  `WithdrewDate` datetime default NULL,
  `WithdrewNote` varchar(100) default NULL,
  `InactiveDesc` varchar(25) default NULL,
  `InactiveDate` datetime default NULL,
  `InactiveNote` varchar(100) default NULL,
  `DeceasedDesc` varchar(25) default NULL,
  `DeceasedDate` datetime default NULL,
  `DeceasedNote` varchar(100) default NULL,
  `AutopsyDesc` varchar(25) default NULL,
  `AutopsyDate` datetime default NULL,
  `AutopsyNote` varchar(100) default NULL,
  `ClosedDesc` varchar(25) default NULL,
  `ClosedDate` datetime default NULL,
  `ClosedNote` varchar(100) default NULL,
  `EnrollmentNotes` varchar(500) default NULL,
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`EnrollStatID`),
  KEY `enrollmentstatus__PIDN` (`PIDN`),
  KEY `enrollmentstatus__ProjName` (`ProjName`),
  CONSTRAINT `enrollmentstatus__PIDN` FOREIGN KEY (`PIDN`) REFERENCES `patient` (`PIDN`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `enrollmentstatus__ProjName` FOREIGN KEY (`ProjName`) REFERENCES `projectunit` (`ProjUnitDesc`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `enrollmentstatus`
--

LOCK TABLES `enrollmentstatus` WRITE;
/*!40000 ALTER TABLE `enrollmentstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `enrollmentstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernateproperty`
--

DROP TABLE IF EXISTS `hibernateproperty`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `hibernateproperty` (
  `id` int(10) NOT NULL auto_increment,
  `instance` varchar(25) NOT NULL default 'lava',
  `scope` varchar(25) NOT NULL,
  `entity` varchar(100) NOT NULL,
  `property` varchar(100) NOT NULL,
  `dbTable` varchar(50) NOT NULL,
  `dbColumn` varchar(50) NOT NULL,
  `dbType` varchar(50) default NULL,
  `dbLength` smallint(5) default NULL,
  `dbPrecision` smallint(5) default NULL,
  `dbScale` smallint(5) default NULL,
  `dbOrder` smallint(5) default NULL,
  `hibernateProperty` varchar(50) default NULL,
  `hibernateType` varchar(50) default NULL,
  `hibernateClass` varchar(250) default NULL,
  `hibernateNotNull` varchar(50) default NULL,
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3456 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `hibernateproperty`
--

LOCK TABLES `hibernateproperty` WRITE;
/*!40000 ALTER TABLE `hibernateproperty` DISABLE KEYS */;
INSERT INTO `hibernateproperty` VALUES (2540,'lava','core','appointment','id','appointment','reservation_id','int',NULL,10,0,1,'id','long',NULL,'Yes','2009-03-31 20:35:27'),(2541,'lava','core','appointment','calendar','appointment','calendar_id','int',NULL,10,0,2,'calendar','many-to-one','edu.ucsf.lava.core.resource.model.ResourceCalendar','Yes','2009-03-31 20:35:27'),(2542,'lava','core','appointment','organizer','appointment','organizer_id','int',NULL,10,0,3,'owner','many-to-one','edu.ucsf.lava.core.auth.model.AuthUser','Yes','2009-03-31 20:35:27'),(2543,'lava','core','appointment','type','appointment','type','varchar',25,NULL,NULL,4,'type','string',NULL,'Yes','2009-03-31 20:35:27'),(2544,'lava','core','appointment','description','appointment','description','varchar',100,NULL,NULL,5,'description','string',NULL,'No','2009-03-31 20:35:27'),(2545,'lava','core','appointment','location','appointment','location','varchar',100,NULL,NULL,6,'location','string',NULL,'No','2009-03-31 20:35:27'),(2546,'lava','core','appointment','startDate','appointment','start_date','date',NULL,NULL,NULL,7,'startDate','date',NULL,'Yes','2009-03-31 20:35:27'),(2547,'lava','core','appointment','startTime','appointment','start_time','time',NULL,NULL,NULL,8,'startTime','time',NULL,'Yes','2009-03-31 20:35:27'),(2548,'lava','core','appointment','endDate','appointment','end_date','date',NULL,NULL,NULL,9,'endDate','date',NULL,'Yes','2009-06-02 22:27:56'),(2549,'lava','core','appointment','endTime','appointment','end_time','time',NULL,NULL,NULL,10,'endTime','time',NULL,NULL,'2009-06-02 22:28:28'),(2550,'lava','core','appointment','notes','appointment','notes','text',NULL,NULL,NULL,11,'notes','string',NULL,'No','2009-03-31 20:35:27'),(2551,'lava','core','appointment','status','appointment','status','varchar',25,NULL,NULL,11,'status','string',NULL,'No','2009-05-11 19:45:09'),(2552,'lava','core','appointment_change','id','appointment_change','appointment_change_id','int',NULL,10,0,1,'id','long',NULL,'Yes','2009-05-11 20:29:54'),(2553,'lava','core','appointment_change','appointment','appointment_change','appointment_id','int',NULL,10,0,2,'appointment','many-to-one','edu.ucsf.lava.core.calendar.model.Appointment','Yes','2009-05-11 20:29:54'),(2554,'lava','core','appointment_change','type','appointment_change','type','varchar',25,NULL,NULL,3,'type','string',NULL,'Yes','2009-05-11 20:29:54'),(2555,'lava','core','appointment_change','changeBy','appointment_change','change_by','int',NULL,10,0,4,'changeBy','many-to-one','edu.ucsf.lava.core.auth.model.AuthUser','Yes','2009-05-11 20:29:54'),(2556,'lava','core','appointment_change','changeTimestamp','appointment_change','change_timestamp','timestamp',NULL,NULL,NULL,5,'changeTimestamp','timestamp',NULL,'Yes','2009-05-11 20:29:54'),(2557,'lava','core','attendee','id','attendee','attendee_id','int',NULL,10,0,1,'id','long',NULL,'Yes','2009-06-03 20:40:16'),(2558,'lava','core','attendee','appointment','attendee','appointment_id','int',NULL,10,0,2,'appointment','many-to-one','edu.ucsf.lava.core.calendar.model.Appointment','Yes','2009-06-03 20:40:16'),(2559,'lava','core','attendee','user','attendee','user_id','int',NULL,10,0,3,'user','many-to-one','edu.ucsf.lava.core.auth.model.AuthUser','Yes','2009-06-03 20:40:16'),(2560,'lava','core','attendee','role','attendee','role','varchar',25,NULL,NULL,4,'role','string',NULL,'Yes','2009-06-03 20:40:16'),(2561,'lava','core','attendee','status','attendee','status','varchar',25,NULL,NULL,5,'status','string',NULL,'Yes','2009-06-03 20:40:16'),(2562,'lava','core','attendee','notes','attendee','notes','varchar',100,NULL,NULL,6,'notes','string',NULL,'No','2009-06-03 20:40:16'),(2563,'lava','core','auditEntity','id','Audit_Entity_Work','audit_entity_id','int',NULL,10,0,1,'id','long',NULL,'Yes','2009-01-25 05:25:56'),(2564,'lava','core','auditEntity','auditEvent','Audit_Entity_Work','audit_event_id','int',NULL,10,0,2,'auditEvent','many-to-one','edu.ucsf.memory.lava.model.AuditEvent','Yes','2009-01-25 05:25:56'),(2565,'lava','core','auditEntity','entityId','Audit_Entity_Work','entity_id','int',NULL,10,0,3,'entityId','long',NULL,'Yes','2009-01-25 05:25:56'),(2566,'lava','core','auditEntity','entity','Audit_Entity_Work','entity','varchar',100,NULL,NULL,4,'entity','string',NULL,'Yes','2009-01-25 05:25:56'),(2567,'lava','core','auditEntity','entityType','Audit_Entity_Work','entity_type','varchar',100,NULL,NULL,5,'entityType','string',NULL,'Yes','2009-01-25 05:25:56'),(2568,'lava','core','auditEntity','auditType','Audit_Entity_Work','audit_type','varchar',10,NULL,NULL,6,'auditType','string',NULL,'Yes','2009-01-25 05:25:56'),(2569,'lava','core','auditEntity','hversion','Audit_Entity_Work','hversion','int',NULL,10,0,7,'hversion','long',NULL,'Yes','2009-01-25 05:25:56'),(2570,'lava','core','auditEntityHistory','id','Audit_Entity','audit_entity_id','int',NULL,10,0,1,'id','long',NULL,'Yes','2009-01-25 05:25:56'),(2571,'lava','core','auditEntityHistory','auditEvent','Audit_Entity','audit_event_id','int',NULL,10,0,2,'auditEvent','many-to-one','edu.ucsf.memory.lava.model.AuditEvent','Yes','2009-01-25 05:25:56'),(2572,'lava','core','auditEntityHistory','entityId','Audit_Entity','entity_id','int',NULL,10,0,3,'entityId','long',NULL,'Yes','2009-01-25 05:25:56'),(2573,'lava','core','auditEntityHistory','entity','Audit_Entity','entity','varchar',100,NULL,NULL,4,'entity','string',NULL,'Yes','2009-01-25 05:25:56'),(2574,'lava','core','auditEntityHistory','entityType','Audit_Entity','entity_type','varchar',100,NULL,NULL,5,'entityType','string',NULL,'Yes','2009-01-25 05:25:56'),(2575,'lava','core','auditEntityHistory','auditType','Audit_Entity','audit_type','varchar',10,NULL,NULL,6,'auditType','string',NULL,'Yes','2009-01-25 05:25:56'),(2576,'lava','core','auditEntityHistory','hversion','Audit_Entity','hversion','int',NULL,10,0,7,'hversion','long',NULL,'Yes','2009-01-25 05:25:56'),(2577,'lava','core','auditEvent','id','Audit_Event_Work','audit_event_id','int',NULL,10,0,1,'id','long',NULL,'Yes','2009-01-25 05:25:56'),(2578,'lava','core','auditEvent','auditUser','Audit_Event_Work','audit_user','varchar',50,NULL,NULL,2,'auditUser','string',NULL,'Yes','2009-01-25 05:25:56'),(2579,'lava','core','auditEvent','auditHost','Audit_Event_Work','audit_host','varchar',25,NULL,NULL,3,'auditHost','string',NULL,'Yes','2009-01-25 05:25:56'),(2580,'lava','core','auditEvent','auditTimestamp','Audit_Event_Work','audit_timestamp','timestamp',NULL,23,3,4,'auditTimestamp','timestamp',NULL,'Yes','2009-01-25 05:25:56'),(2581,'lava','core','auditEvent','action','Audit_Event_Work','action','varchar',255,NULL,NULL,5,'action','string',NULL,'Yes','2009-01-25 05:25:56'),(2582,'lava','core','auditEvent','actionEvent','Audit_Event_Work','action_event','varchar',50,NULL,NULL,6,'actionEvent','string',NULL,'Yes','2009-01-25 05:25:56'),(2583,'lava','core','auditEvent','actionIdParam','Audit_Event_Work','action_id_param','varchar',50,NULL,NULL,7,'actionIdParam','string',NULL,'No','2009-01-25 05:25:56'),(2584,'lava','core','auditEvent','eventNote','Audit_Event_Work','event_note','varchar',255,NULL,NULL,8,'eventNote','string',NULL,'No','2009-01-25 05:25:56'),(2585,'lava','core','auditEvent','exception','Audit_Event_Work','exception','varchar',255,NULL,NULL,9,'exception','string',NULL,'No','2009-01-25 05:25:56'),(2586,'lava','core','auditEvent','exceptionMessage','Audit_Event_Work','exception_message','varchar',255,NULL,NULL,10,'exceptionMessage','string',NULL,'No','2009-01-25 05:25:56'),(2587,'lava','core','auditEvent','hversion','Audit_Event_Work','hversion','int',NULL,10,0,11,'hversion','long',NULL,'Yes','2009-01-25 05:25:56'),(2588,'lava','core','auditEventHistory','id','Audit_Event','audit_event_id','int',NULL,10,0,1,'id','long',NULL,'Yes','2009-01-25 05:25:56'),(2589,'lava','core','auditEventHistory','auditUser','Audit_Event','audit_user','varchar',50,NULL,NULL,2,'auditUser','string',NULL,'Yes','2009-01-25 05:25:56'),(2590,'lava','core','auditEventHistory','auditHost','Audit_Event','audit_host','varchar',25,NULL,NULL,3,'auditHost','string',NULL,'Yes','2009-01-25 05:25:56'),(2591,'lava','core','auditEventHistory','auditTimestamp','Audit_Event','audit_timestamp','timestamp',NULL,23,3,4,'auditTimestamp','timestamp',NULL,'Yes','2009-01-25 05:25:56'),(2592,'lava','core','auditEventHistory','action','Audit_Event','action','varchar',255,NULL,NULL,5,'action','string',NULL,'Yes','2009-01-25 05:25:56'),(2593,'lava','core','auditEventHistory','actionEvent','Audit_Event','action_event','varchar',50,NULL,NULL,6,'actionEvent','string',NULL,'Yes','2009-01-25 05:25:56'),(2594,'lava','core','auditEventHistory','actionIdParam','Audit_Event','action_id_param','varchar',50,NULL,NULL,7,'actionIdParam','string',NULL,'No','2009-01-25 05:25:56'),(2595,'lava','core','auditEventHistory','eventNote','Audit_Event','event_note','varchar',255,NULL,NULL,8,'eventNote','string',NULL,'No','2009-01-25 05:25:56'),(2596,'lava','core','auditEventHistory','exception','Audit_Event','exception','varchar',255,NULL,NULL,9,'exception','string',NULL,'No','2009-01-25 05:25:56'),(2597,'lava','core','auditEventHistory','exceptionMessage','Audit_Event','exception_message','varchar',255,NULL,NULL,10,'exceptionMessage','string',NULL,'No','2009-01-25 05:25:56'),(2598,'lava','core','auditEventHistory','hversion','Audit_Event','hversion','int',NULL,10,0,11,'hversion','long',NULL,'Yes','2009-01-25 05:25:56'),(2599,'lava','core','auditProperty','id','Audit_Property_Work','audit_property_id','int',NULL,10,0,1,'id','long',NULL,'Yes','2009-01-25 05:25:56'),(2600,'lava','core','auditProperty','auditEntity','Audit_Property_Work','audit_entity_id','int',NULL,10,0,2,'auditEntity','many-to-one','edu.ucsf.memory.lava.model.AuditEntity','Yes','2009-01-25 05:25:56'),(2601,'lava','core','auditProperty','property','Audit_Property_Work','property','varchar',100,NULL,NULL,3,'property','string',NULL,'Yes','2009-01-25 05:25:56'),(2602,'lava','core','auditProperty','indexKey','Audit_Property_Work','index_key','varchar',100,NULL,NULL,4,'indexKey','string',NULL,'No','2009-01-25 05:25:56'),(2603,'lava','core','auditProperty','subproperty','Audit_Property_Work','subproperty','varchar',255,NULL,NULL,5,'subproperty','string',NULL,'No','2009-01-25 05:25:56'),(2604,'lava','core','auditProperty','oldValue','Audit_Property_Work','old_value','varchar',255,NULL,NULL,6,'oldValue','string',NULL,'Yes','2009-01-25 05:25:56'),(2605,'lava','core','auditProperty','newValue','Audit_Property_Work','new_value','varchar',255,NULL,NULL,7,'newValue','string',NULL,'Yes','2009-01-25 05:25:56'),(2606,'lava','core','auditProperty','auditTimestamp','Audit_Property_Work','audit_timestamp','timestamp',NULL,23,3,8,'auditTimestamp','timestamp',NULL,'Yes','2009-01-25 05:25:56'),(2607,'lava','core','auditProperty','oldText','Audit_Text_Work','old_text','text',16,NULL,NULL,9,'oldText','text',NULL,'No','2009-01-25 05:25:56'),(2608,'lava','core','auditProperty','newText','Audit_Text_Work','new_text','text',16,NULL,NULL,10,'newText','text',NULL,'No','2009-01-25 05:25:56'),(2609,'lava','core','auditProperty','hversion','Audit_Property_Work','hversion','int',NULL,10,0,11,'hversion','long',NULL,'No','2009-01-25 05:25:56'),(2610,'lava','core','auditPropertyHistory','id','Audit_Property','audit_property_id','int',NULL,10,0,1,'id','long',NULL,'Yes','2009-01-25 05:25:56'),(2611,'lava','core','auditPropertyHistory','auditEntity','Audit_Property','audit_entity_id','int',NULL,10,0,2,'auditEntity','many-to-one','edu.ucsf.memory.lava.model.AuditEntity','Yes','2009-01-25 05:25:56'),(2612,'lava','core','auditPropertyHistory','property','Audit_Property','property','varchar',100,NULL,NULL,3,'property','string',NULL,'Yes','2009-01-25 05:25:56'),(2613,'lava','core','auditPropertyHistory','indexKey','Audit_Property','index_key','varchar',100,NULL,NULL,4,'indexKey','string',NULL,'No','2009-01-25 05:25:56'),(2614,'lava','core','auditPropertyHistory','subproperty','Audit_Property','subproperty','varchar',255,NULL,NULL,5,'subproperty','string',NULL,'No','2009-01-25 05:25:56'),(2615,'lava','core','auditPropertyHistory','oldValue','Audit_Property','old_value','varchar',255,NULL,NULL,6,'oldValue','string',NULL,'Yes','2009-01-25 05:25:56'),(2616,'lava','core','auditPropertyHistory','newValue','Audit_Property','new_value','varchar',255,NULL,NULL,7,'newValue','string',NULL,'Yes','2009-01-25 05:25:56'),(2617,'lava','core','auditPropertyHistory','auditTimestamp','Audit_Property','audit_timestamp','timestamp',NULL,23,3,8,'auditTimestamp','timestamp',NULL,'Yes','2009-01-25 05:25:56'),(2618,'lava','core','auditPropertyHistory','oldText','Audit_Text','old_text','text',16,NULL,NULL,9,'oldText','text',NULL,'No','2009-01-25 05:25:56'),(2619,'lava','core','auditPropertyHistory','newText','Audit_Text','new_text','text',16,NULL,NULL,10,'newText','text',NULL,'No','2009-01-25 05:25:56'),(2620,'lava','core','auditPropertyHistory','hversion','Audit_Property','hversion','int',NULL,10,0,11,'hversion','long',NULL,'No','2009-01-25 05:25:56'),(2621,'lava','core','authGroup','id','AuthGroup','GID','int',NULL,10,0,1,'id','long',NULL,'Yes','2009-01-25 05:25:56'),(2622,'lava','core','authGroup','groupName','AuthGroup','GroupName','varchar',50,NULL,NULL,2,'groupName','string',NULL,'Yes','2009-01-25 05:25:56'),(2623,'lava','core','authGroup','effectiveDate','AuthGroup','EffectiveDate','date',NULL,16,0,3,'effectiveDate','timestamp',NULL,'Yes','2009-01-25 05:25:56'),(2624,'lava','core','authGroup','expirationDate','AuthGroup','ExpirationDate','date',NULL,16,0,4,'expirationDate','timestamp',NULL,'No','2009-01-25 05:25:56'),(2625,'lava','core','authGroup','notes','AuthGroup','Notes','varchar',255,NULL,NULL,5,'notes','string',NULL,'No','2009-01-25 05:25:56'),(2626,'lava','core','authPermission','id','AuthPermission','PermID','int',NULL,10,0,1,'id','long',NULL,'Yes','2009-01-25 05:25:56'),(2627,'lava','core','authPermission','role','AuthPermission','RoleID','varchar',25,NULL,NULL,2,'role','many-to-one','edu.ucsf.memory.lava.model.AuthRole','Yes','2009-01-25 05:25:56'),(2628,'lava','core','authPermission','module','AuthPermission','Module','varchar',25,NULL,NULL,4,'module','string',NULL,'Yes','2009-01-25 05:25:56'),(2629,'lava','core','authPermission','permitDeny','AuthPermission','PermitDeny','varchar',10,NULL,NULL,4,'permitDeny','string',NULL,'Yes','2009-01-25 05:25:56'),(2630,'lava','core','authPermission','section','AuthPermission','Section','varchar',25,NULL,NULL,5,'section','string',NULL,'Yes','2009-01-25 05:25:56'),(2631,'lava','core','authPermission','target','AuthPermission','Target','varchar',25,NULL,NULL,6,'target','string',NULL,'Yes','2009-01-25 05:25:56'),(2632,'lava','core','authPermission','mode','AuthPermission','Mode','varchar',25,NULL,NULL,7,'mode','string',NULL,'Yes','2009-01-25 05:25:56'),(2633,'lava','core','authPermission','notes','AuthPermission','Notes','varchar',100,NULL,NULL,10,'notes','string',NULL,'No','2009-01-25 05:25:56'),(2634,'lava','core','authRole','id','AuthRole','RoleID','int',NULL,10,0,1,'id','long',NULL,'Yes','2009-01-25 05:25:56'),(2635,'lava','core','authRole','roleName','AuthRole','RoleName','varchar',25,NULL,NULL,2,'roleName','string',NULL,'Yes','2009-01-25 05:25:56'),(2636,'lava','core','authRole','patientAccess','AuthRole','PatientAccess','smallint',NULL,5,0,3,'patientAccess','short',NULL,'Yes','2009-01-25 05:25:56'),(2637,'lava','core','authRole','phiAccess','AuthRole','PhiAccess','smallint',NULL,5,0,4,'phiAccess','short',NULL,'Yes','2009-01-25 05:25:56'),(2638,'lava','core','authRole','patientAccess','AuthRole','GhiAccess','smallint',NULL,5,0,5,'ghiAccess','short',NULL,'Yes','2009-01-25 05:25:56'),(2639,'lava','core','authRole','notes','AuthRole','Notes','varchar',255,NULL,NULL,8,'notes','string',NULL,'No','2009-01-25 05:25:56'),(2640,'lava','core','authUser','id','AuthUser','UID','int',NULL,10,0,1,'id','long',NULL,'Yes','2009-01-25 05:25:56'),(2641,'lava','core','authUser','userName','AuthUser','UserName','varchar',50,NULL,NULL,2,'userName','string',NULL,'Yes','2009-01-25 05:25:56'),(2642,'lava','core','authUser','login','AuthUser','Login','varchar',100,NULL,NULL,3,'login','string',NULL,'No','2009-01-25 05:25:56'),(2643,'lava','core','authUser','email','authuser','email','varchar',100,NULL,NULL,4,'email','string',NULL,'No','2009-05-12 18:53:20'),(2644,'lava','core','authUser','phone','authuser','phone','varchar',25,NULL,NULL,5,'phone','string',NULL,'No','2009-05-12 18:53:20'),(2645,'lava','core','authUser','accessAgreementDate','AuthUser','AccessAgreementDate','date',NULL,16,0,7,'accessAgreementDate','timestamp',NULL,'No','2009-01-25 05:25:56'),(2646,'lava','core','authUser','shortUserName','AuthUser','ShortUserName','varchar',53,NULL,NULL,8,'shortUserName','string',NULL,'No','2009-01-25 05:25:56'),(2647,'lava','core','authUser','shortUserNameRev','AuthUser','ShortUserNameRev','varchar',54,NULL,NULL,9,'shortUserNameRev','string',NULL,'No','2009-01-25 05:25:56'),(2648,'lava','core','authUser','effectiveDate','AuthUser','EffectiveDate','date',NULL,16,0,10,'effectiveDate','timestamp',NULL,'Yes','2009-01-25 05:25:56'),(2649,'lava','core','authUser','expirationDate','AuthUser','ExpirationDate','date',NULL,16,0,11,'expirationDate','timestamp',NULL,'No','2009-01-25 05:25:56'),(2650,'lava','core','authUser','notes','AuthUser','Notes','varchar',255,NULL,NULL,12,'notes','string',NULL,'No','2009-01-25 05:25:56'),(2651,'lava','core','authUser','authenticationType','authuser','authenticationType','varchar',10,NULL,NULL,12,'authenticationType','string',NULL,'No','2009-05-12 18:53:20'),(2652,'lava','core','authUser','password','authuser','password','varchar',100,NULL,NULL,13,'password','string',NULL,'No','2009-05-12 18:53:20'),(2653,'lava','core','authUser','passwordExpiration','authuser','passwordExpiration','timestamp',NULL,NULL,NULL,14,'passwordExpiration','timestamp',NULL,'No','2009-05-12 18:53:20'),(2654,'lava','core','authUser','passwordResetToken','authuser','passwordResetToken','varchar',100,NULL,NULL,15,'passwordResetToken','string',NULL,'No','2009-05-12 18:53:20'),(2655,'lava','core','authUser','passwordResetExpiration','authuser','passwordResetExpiration','timestamp',NULL,NULL,NULL,16,'passwordResetExpiration','timestamp',NULL,'No','2009-05-12 18:53:20'),(2656,'lava','core','authUser','failedLoginCount','authuser','failedLoginCount','smallint',NULL,5,0,17,'failedLoginCount','short',NULL,'No','2009-05-12 18:53:20'),(2657,'lava','core','authUser','lastFailedLogin','authuser','lastFailedLogin','timestamp',NULL,NULL,NULL,18,'lastFailedLogin','timestamp',NULL,'No','2009-05-12 18:53:20'),(2658,'lava','core','authUser','accountLocked','authuser','accountLocked','timestamp',NULL,NULL,NULL,19,'accountLocked','timestamp',NULL,'No','2009-05-12 18:53:20'),(2659,'lava','core','authUserGroup','id','AuthUserGroup','UGID','int',NULL,10,0,1,'id','long',NULL,'Yes','2009-01-25 05:25:56'),(2660,'lava','core','authUserGroup','user','AuthUserGroup','UID','int',NULL,10,0,2,'user','many-to-one','edu.ucsf.memory.lava.model.AuthUser','Yes','2009-01-25 05:25:56'),(2661,'lava','core','authUserGroup','group','AuthUserGroup','GID','int',NULL,10,0,3,'group','many-to-one','edu.ucsf.memory.lava.model.AuthGroup','Yes','2009-01-25 05:25:56'),(2662,'lava','core','authUserGroup','notes','AuthUserGroup','Notes','varchar',255,NULL,NULL,6,'notes','string',NULL,'No','2009-01-25 05:25:56'),(2663,'lava','core','authUserRole','id','AuthUserRole','URID','int',NULL,10,0,1,'id','long',NULL,'Yes','2009-01-25 05:25:56'),(2664,'lava','core','authUserRole','role','AuthUserRole','RoleID','varchar',25,NULL,NULL,3,'role','many-to-one','edu.ucsf.memory.lava.model.AuthRole','Yes','2009-01-25 05:25:56'),(2665,'lava','core','authUserRole','project','AuthUserRole','Project','varchar',25,NULL,NULL,4,'project','string',NULL,'No','2009-01-25 05:25:56'),(2666,'lava','core','authUserRole','unit','AuthUserRole','Unit','varchar',25,NULL,NULL,5,'unit','string',NULL,'No','2009-01-25 05:25:56'),(2667,'lava','core','authUserRole','user','AuthUserRole','UID','int',NULL,10,0,7,'user','many-to-one','edu.ucsf.memory.lava.model.AuthUser','No','2009-01-25 05:25:56'),(2668,'lava','core','authUserRole','group','AuthUserRole','GID','int',NULL,10,0,8,'group','many-to-one','edu.ucsf.memory.lava.model.AuthGroup','No','2009-01-25 05:25:56'),(2669,'lava','core','authUserRole','notes','AuthUserRole','Notes','varchar',255,NULL,NULL,12,'notes','string',NULL,'No','2009-01-25 05:25:56'),(2670,'lava','core','calendar','calendar_id','calendar','calendar_id','int',NULL,10,0,1,'id','long',NULL,'Yes','2009-03-31 19:09:35'),(2671,'lava','core','calendar','type','calendar','type','varchar',25,NULL,NULL,2,'type','string',NULL,'Yes','2009-06-02 22:27:08'),(2672,'lava','core','calendar','name','calendar','name','varchar',100,NULL,NULL,3,'name','string',NULL,'Yes','2009-03-31 19:09:35'),(2673,'lava','core','calendar','description','calendar','description','varchar',255,NULL,NULL,4,'description','string',NULL,'No','2009-03-31 19:09:35'),(2674,'lava','core','calendar','notes','calendar','notes','text',NULL,NULL,NULL,5,'notes','string',NULL,'No','2009-03-31 19:09:35'),(2675,'lava','core','HibernateProperty','id','HibernateProperty','id','int',NULL,10,0,1,'id','long',NULL,'Yes','2009-01-25 05:25:56'),(2676,'lava','core','HibernateProperty','scope','HibernateProperty','scope','varchar',100,NULL,NULL,2,'scope','string',NULL,'Yes','2009-01-25 05:25:56'),(2677,'lava','core','HibernateProperty','entity','HibernateProperty','entity','varchar',100,NULL,NULL,3,'entity','string',NULL,'Yes','2009-01-25 05:25:56'),(2678,'lava','core','HibernateProperty','property','HibernateProperty','property','varchar',100,NULL,NULL,4,'property','string',NULL,'Yes','2009-01-25 05:25:56'),(2679,'lava','core','HibernateProperty','dbTable','HibernateProperty','dbTable','varchar',50,NULL,NULL,5,'dbTable','string',NULL,'Yes','2009-01-25 05:25:56'),(2680,'lava','core','HibernateProperty','dbColumn','HibernateProperty','dbColumn','varchar',50,NULL,NULL,6,'dbColumn','string',NULL,'Yes','2009-01-25 05:25:56'),(2681,'lava','core','HibernateProperty','dbType','HibernateProperty','dbType','varchar',50,NULL,NULL,7,'dbType','string',NULL,'No','2009-01-25 05:25:56'),(2682,'lava','core','HibernateProperty','dbLength','HibernateProperty','dbLength','smallint',NULL,5,0,8,'dbLength','short',NULL,'No','2009-01-25 05:25:56'),(2683,'lava','core','HibernateProperty','dbPrecision','HibernateProperty','dbPrecision','smallint',NULL,5,0,9,'dbPrecision','short',NULL,'No','2009-01-25 05:25:56'),(2684,'lava','core','HibernateProperty','dbScale','HibernateProperty','dbScale','smallint',NULL,5,0,10,'dbScale','short',NULL,'No','2009-01-25 05:25:56'),(2685,'lava','core','HibernateProperty','dbOrder','HibernateProperty','dbOrder','smallint',NULL,5,0,11,'dbOrder','short',NULL,'No','2009-01-25 05:25:56'),(2686,'lava','core','HibernateProperty','hibernateProperty','HibernateProperty','hibernateProperty','varchar',50,NULL,NULL,12,'hibernateProperty','string',NULL,'No','2009-01-25 05:25:56'),(2687,'lava','core','HibernateProperty','hibernateType','HibernateProperty','hibernateType','varchar',50,NULL,NULL,13,'hibernateType','string',NULL,'No','2009-01-25 05:25:56'),(2688,'lava','core','HibernateProperty','hibernateClass','HibernateProperty','hibernateClass','varchar',250,NULL,NULL,14,'hibernateClass','string',NULL,'No','2009-01-25 05:25:56'),(2689,'lava','core','HibernateProperty','hibernateNotNull','HibernateProperty','hibernateNotNull','varchar',50,NULL,NULL,15,'hibernateNotNull','string',NULL,'No','2009-01-25 05:25:56'),(2690,'lava','core','lavaSession','id','lava_session','lava_session_id','int',NULL,10,0,1,'id','long',NULL,'Yes','2009-01-25 05:25:56'),(2691,'lava','core','lavaSession','serverInstanceId','LavaSession','ServerInstanceID','int',NULL,10,0,2,'serverInstanceId','long',NULL,'Yes','2009-01-25 05:25:56'),(2692,'lava','core','lavaSession','createTimestamp','lava_session','create_timestamp','timestamp',NULL,23,3,3,'createTimestamp','timestamp',NULL,'Yes','2009-01-25 05:25:56'),(2693,'lava','core','lavaSession','accessTimestamp','lava_session','access_timestamp','timestamp',NULL,23,3,4,'accessTimestamp','timestamp',NULL,'Yes','2009-01-25 05:25:56'),(2694,'lava','core','lavaSession','expireTimestamp','lava_session','expire_timestamp','timestamp',0,23,3,5,'expireTimestamp','timestamp',NULL,'Yes','2009-01-25 05:25:56'),(2695,'lava','core','lavaSession','currentStatus','lava_session','current_status','varchar',25,NULL,NULL,6,'currentStatus','string',NULL,'Yes','2009-01-25 05:25:56'),(2696,'lava','core','lavaSession','userId','lava_session','user_id','int',NULL,10,0,7,'userId','long',NULL,'No','2009-01-25 05:25:56'),(2697,'lava','core','lavaSession','username','lava_session','user_name','varchar',50,NULL,NULL,8,'username','string',NULL,'No','2009-01-25 05:25:56'),(2698,'lava','core','lavaSession','hostname','lava_session','host_name','varchar',50,NULL,NULL,9,'hostname','string',NULL,'No','2009-01-25 05:25:56'),(2699,'lava','core','lavaSession','httpSessionId','lava_session','http_session_id','int',64,NULL,NULL,10,'httpSessionId','string',NULL,'No','2009-01-25 05:25:56'),(2700,'lava','core','lavaSession','disconnectTime','lava_session','disconnect_time','time',NULL,23,3,11,'disconnectTime','time',NULL,'No','2009-01-25 05:25:56'),(2701,'lava','core','lavaSession','disconnectMessage','lava_session','disconnect_message','varchar',255,NULL,NULL,12,'disconnectMessage','string',NULL,'No','2009-01-25 05:25:56'),(2702,'lava','core','lavaSession','notes','lava_session','Notes','varchar',255,NULL,NULL,13,'notes','string',NULL,'No','2009-01-25 05:25:56'),(2703,'lava','core','lavaSession','disconnectDate','lava_session','disconnect_date','date',0,NULL,NULL,14,'disconnectDate','date',NULL,'No','2009-04-22 18:00:00'),(2704,'lava','core','resourceCalendar','id','resource_calendar','calendar_id','int',NULL,10,0,1,'id','long',NULL,'Yes','2009-06-03 17:28:00'),(2705,'lava','core','resourceCalendar','resourceType','resource_calendar','resource_type','varchar',25,NULL,NULL,2,'resourceType','string',NULL,'Yes','2009-06-03 17:28:00'),(2706,'lava','core','resourceCalendar','location','resource_calendar','location','varchar',100,NULL,NULL,3,'location','string',NULL,'No','2009-06-03 17:28:00'),(2707,'lava','core','resourceCalendar','contact','resource_calendar','contact_id','int',NULL,10,0,4,'contact','many-to-one','edu.ucsf.lava.core.auth.model.AuthUser','Yes','2009-06-03 17:28:00'),(2708,'lava','core','ViewProperty','id','ViewProperty','id','int',NULL,10,0,1,'id','long',NULL,'Yes','2009-01-25 05:25:56'),(2709,'lava','core','ViewProperty','messageCode','ViewProperty','messageCode','varchar',250,NULL,NULL,2,'messageCode','string',NULL,'No','2009-01-25 05:25:56'),(2710,'lava','core','ViewProperty','locale','ViewProperty','locale','varchar',10,NULL,NULL,3,'locale','string',NULL,'Yes','2009-01-25 05:25:56'),(2711,'lava','core','ViewProperty','scope','ViewProperty','scope','varchar',100,NULL,NULL,4,'scope','string',NULL,'Yes','2009-01-25 05:25:56'),(2712,'lava','core','ViewProperty','prefix','ViewProperty','prefix','varchar',50,NULL,NULL,5,'prefix','string',NULL,'No','2009-01-25 05:25:56'),(2713,'lava','core','ViewProperty','entity','ViewProperty','entity','varchar',100,NULL,NULL,6,'entity','string',NULL,'Yes','2009-01-25 05:25:56'),(2714,'lava','core','ViewProperty','property','ViewProperty','property','varchar',100,NULL,NULL,7,'property','string',NULL,'Yes','2009-01-25 05:25:56'),(2715,'lava','core','ViewProperty','section','ViewProperty','section','varchar',100,NULL,NULL,8,'section','string',NULL,'No','2009-01-25 05:25:56'),(2716,'lava','core','ViewProperty','context','ViewProperty','context','varchar',10,NULL,NULL,9,'context','string',NULL,'No','2009-01-25 05:25:56'),(2717,'lava','core','ViewProperty','style','ViewProperty','style','varchar',25,NULL,NULL,10,'style','string',NULL,'No','2009-01-25 05:25:56'),(2718,'lava','core','ViewProperty','list','ViewProperty','list','varchar',50,NULL,NULL,11,'list','string',NULL,'No','2009-01-25 05:25:56'),(2719,'lava','core','ViewProperty','attributes','ViewProperty','attributes','varchar',100,NULL,NULL,12,'attributes','string',NULL,'No','2009-01-25 05:25:56'),(2720,'lava','core','ViewProperty','required','ViewProperty','required','varchar',10,NULL,NULL,13,'required','string',NULL,'No','2009-01-25 05:25:56'),(2721,'lava','core','ViewProperty','label','ViewProperty','label','varchar',500,NULL,NULL,14,'label','string',NULL,'No','2009-01-25 05:25:56'),(2722,'lava','core','ViewProperty','quickHelp','ViewProperty','quickHelp','varchar',500,NULL,NULL,15,'quickHelp','string',NULL,'No','2009-01-25 05:25:56'),(2723,'lava','core','ViewProperty','propOrder','ViewProperty','propOrder','int',NULL,10,0,16,'propOrder','long',NULL,'No','2009-01-25 05:25:56'),(3212,'lava','crms','caregiver','id','Caregiver','CareID','int',NULL,10,0,1,'id','long',NULL,'Yes','2009-01-25 05:25:56'),(3213,'lava','crms','caregiver','patient','Caregiver','PIDN','int',NULL,10,0,2,'patient','many-to-one','edu.ucsf.memory.lava.model.Patient','Yes','2009-01-25 05:25:56'),(3214,'lava','crms','caregiver','lastName','Caregiver','Lname','varchar',25,NULL,NULL,3,'lastName','string',NULL,'Yes','2009-01-25 05:25:56'),(3215,'lava','crms','caregiver','firstName','Caregiver','FName','varchar',25,NULL,NULL,4,'firstName','string',NULL,'Yes','2009-01-25 05:25:56'),(3216,'lava','crms','caregiver','gender','Caregiver','Gender','tinyint',NULL,3,0,5,'gender','byte',NULL,'No','2009-01-25 05:25:56'),(3217,'lava','crms','caregiver','relation','Caregiver','PTRelation','varchar',25,NULL,NULL,6,'relation','string',NULL,'No','2009-01-25 05:25:56'),(3218,'lava','crms','caregiver','livesWithPatient','Caregiver','LivesWithPT','smallint',NULL,5,0,7,'livesWithPatient','short',NULL,'No','2009-01-25 05:25:56'),(3219,'lava','crms','caregiver','primaryLanguage','Caregiver','PrimaryLanguage','varchar',25,NULL,NULL,8,'primaryLanguage','string',NULL,'No','2009-01-25 05:25:56'),(3220,'lava','crms','caregiver','transNeeded','Caregiver','TransNeeded','smallint',NULL,5,0,9,'transNeeded','short',NULL,'No','2009-01-25 05:25:56'),(3221,'lava','crms','caregiver','transLanguage','Caregiver','TransLanguage','varchar',25,NULL,NULL,10,'transLanguage','string',NULL,'No','2009-01-25 05:25:56'),(3222,'lava','crms','caregiver','isPrimaryContact','Caregiver','IsPrimContact','smallint',NULL,5,0,11,'isPrimaryContact','short',NULL,'No','2009-01-25 05:25:56'),(3223,'lava','crms','caregiver','isContact','Caregiver','IsContact','smallint',NULL,5,0,12,'isContact','short',NULL,'No','2009-01-25 05:25:56'),(3224,'lava','crms','caregiver','isContactNotes','Caregiver','IsContactNotes','varchar',100,NULL,NULL,13,'isContactNotes','string',NULL,'No','2009-01-25 05:25:56'),(3225,'lava','crms','caregiver','isCaregiver','Caregiver','IsCaregiver','smallint',NULL,5,0,14,'isCaregiver','short',NULL,'No','2009-01-25 05:25:56'),(3226,'lava','crms','caregiver','isInformant','Caregiver','IsInformant','smallint',NULL,5,0,15,'isInformant','short',NULL,'No','2009-01-25 05:25:56'),(3227,'lava','crms','caregiver','isNextOfKin','Caregiver','IsNextOfKin','smallint',NULL,5,0,16,'isNextOfKin','short',NULL,'No','2009-01-25 05:25:56'),(3228,'lava','crms','caregiver','isResearchSurrogate','Caregiver','IsResearchSurrogate','smallint',NULL,5,0,16,'isResearchSurrogate','short',NULL,'No','2009-01-25 05:25:56'),(3229,'lava','crms','caregiver','isPowerOfAttorney','Caregiver','IsPowerOfAttorney','smallint',NULL,5,0,17,'isPowerOfAttorney','short',NULL,'No','2009-01-25 05:25:56'),(3230,'lava','crms','caregiver','isOtherRole','Caregiver','IsOtherRole','smallint',NULL,5,0,18,'isOtherRole','short',NULL,'No','2009-01-25 05:25:56'),(3231,'lava','crms','caregiver','otherRoleDesc','Caregiver','OtherRoleDesc','varchar',50,NULL,NULL,19,'otherRoleDesc','string',NULL,'No','2009-01-25 05:25:56'),(3232,'lava','crms','caregiver','note','Caregiver','Note','varchar',255,NULL,NULL,20,'note','string',NULL,'No','2009-01-25 05:25:56'),(3233,'lava','crms','caregiver','active','Caregiver','ActiveFlag','smallint',NULL,5,0,21,'active','short',NULL,'No','2009-01-25 05:25:56'),(3234,'lava','crms','caregiver','birthDate','Caregiver','DOB','smalldatetime',NULL,16,0,22,'birthDate','timestamp',NULL,'No','2009-01-25 05:25:56'),(3235,'lava','crms','caregiver','education','Caregiver','Educ','tinyint',NULL,3,0,23,'education','byte',NULL,'No','2009-01-25 05:25:56'),(3236,'lava','crms','caregiver','race','Caregiver','Race','varchar',25,NULL,NULL,24,'race','string',NULL,'No','2009-01-25 05:25:56'),(3237,'lava','crms','caregiver','maritalStatus','Caregiver','MaritalStatus','varchar',25,NULL,NULL,25,'maritalStatus','string',NULL,'No','2009-01-25 05:25:56'),(3238,'lava','crms','caregiver','occupation','Caregiver','Occupation','varchar',25,NULL,NULL,26,'occupation','string',NULL,'No','2009-01-25 05:25:56'),(3239,'lava','crms','caregiver','age','Caregiver','Age','int',NULL,10,0,27,'age','long',NULL,'No','2009-01-25 05:25:56'),(3240,'lava','crms','caregiver','fullName','Caregiver','FullName','varchar',51,NULL,NULL,28,'fullName','string',NULL,'Yes','2009-01-25 05:25:56'),(3241,'lava','crms','caregiver','fullNameRev','Caregiver','FullNameRev','varchar',52,NULL,NULL,29,'fullNameRev','string',NULL,'Yes','2009-01-25 05:25:56'),(3242,'lava','crms','caregiver','contactDesc','Caregiver','ContactDesc','varchar',117,NULL,NULL,30,'contactDesc','string',NULL,'No','2009-01-25 05:25:56'),(3243,'lava','crms','caregiver','rolesDesc','Caregiver','RolesDesc','varchar',117,NULL,NULL,31,'rolesDesc','string',NULL,'No','2009-01-25 05:25:56'),(3244,'lava','crms','consent','consentId','PatientConsent','ConsentID','int',NULL,10,0,1,'consentId','long',NULL,'Yes','2009-01-25 05:25:56'),(3245,'lava','crms','consent','patient','PatientConsent','PIDN','int',NULL,10,0,2,'patient','many-to-one','edu.ucsf.memory.lava.model.Patient','Yes','2009-01-25 05:25:56'),(3246,'lava','crms','consent','caregiver','PatientConsent','CareID','int',NULL,10,0,3,'caregiver','many-to-one','edu.ucsf.memory.lava.model.Caregiver','No','2009-01-25 05:25:56'),(3247,'lava','crms','consent','projName','PatientConsent','ProjName','varchar',25,NULL,NULL,4,'projName','string',NULL,'Yes','2009-01-25 05:25:56'),(3248,'lava','crms','consent','consentType','PatientConsent','ConsentType','varchar',50,NULL,NULL,5,'consentType','string',NULL,'Yes','2009-01-25 05:25:56'),(3249,'lava','crms','consent','consentDate','PatientConsent','ConsentDate','smalldatetime',NULL,16,0,6,'consentDate','timestamp',NULL,'Yes','2009-01-25 05:25:56'),(3250,'lava','crms','consent','expirationDate','PatientConsent','ExpirationDate','smalldatetime',NULL,16,0,7,'expirationDate','timestamp',NULL,'No','2009-01-25 05:25:56'),(3251,'lava','crms','consent','withdrawlDate','PatientConsent','WithdrawlDate','smalldatetime',NULL,16,0,8,'withdrawlDate','timestamp',NULL,'No','2009-01-25 05:25:56'),(3252,'lava','crms','consent','note','PatientConsent','Note','varchar',100,NULL,NULL,9,'note','string',NULL,'No','2009-01-25 05:25:56'),(3253,'lava','crms','consent','capacityReviewBy','PatientConsent','CapacityReviewBy','varchar',25,NULL,NULL,10,'capacityReviewBy','string',NULL,'No','2009-01-25 05:25:56'),(3254,'lava','crms','consent','consentRevision','PatientConsent','ConsentRevision','varchar',10,NULL,NULL,11,'consentRevision','string',NULL,'No','2009-01-25 05:25:56'),(3255,'lava','crms','consent','consentDeclined','PatientConsent','ConsentDeclined','varchar',10,NULL,NULL,12,'consentDeclined','string',NULL,'No','2009-01-25 05:25:56'),(3256,'lava','crms','consent','research','PatientConsent','CTreasearch','varchar',10,NULL,NULL,13,'research','string',NULL,'No','2009-01-25 05:25:56'),(3257,'lava','crms','consent','neuro','PatientConsent','CTneuro','varchar',10,NULL,NULL,14,'neuro','string',NULL,'No','2009-01-25 05:25:56'),(3258,'lava','crms','consent','dna','PatientConsent','CTDNA','varchar',10,NULL,NULL,15,'dna','string',NULL,'No','2009-01-25 05:25:56'),(3259,'lava','crms','consent','genetic','PatientConsent','CTGenetic','varchar',10,NULL,NULL,16,'genetic','string',NULL,'No','2009-01-25 05:25:56'),(3260,'lava','crms','consent','geneticShare','PatientConsent','CTGeneticShare','varchar',10,NULL,NULL,17,'geneticShare','string',NULL,'No','2009-01-25 05:25:56'),(3261,'lava','crms','consent','lumbar','PatientConsent','CTlumbar','varchar',10,NULL,NULL,18,'lumbar','string',NULL,'No','2009-01-25 05:25:56'),(3262,'lava','crms','consent','video','PatientConsent','CTvideo','varchar',10,NULL,NULL,19,'video','string',NULL,'No','2009-01-25 05:25:56'),(3263,'lava','crms','consent','audio','PatientConsent','CTaudio','varchar',10,NULL,NULL,20,'audio','string',NULL,'No','2009-01-25 05:25:56'),(3264,'lava','crms','consent','mediaEdu','PatientConsent','CTmediaedu','varchar',10,NULL,NULL,21,'mediaEdu','string',NULL,'No','2009-01-25 05:25:56'),(3265,'lava','crms','consent','t1_5mri','PatientConsent','CT1point5T','varchar',10,NULL,NULL,22,'t1_5mri','string',NULL,'No','2009-01-25 05:25:56'),(3266,'lava','crms','consent','t4mri','PatientConsent','CT4t','varchar',10,NULL,NULL,23,'t4mri','string',NULL,'No','2009-01-25 05:25:56'),(3267,'lava','crms','consent','otherStudy','PatientConsent','CTotherstudy','varchar',10,NULL,NULL,24,'otherStudy','string',NULL,'No','2009-01-25 05:25:56'),(3268,'lava','crms','consent','followup','PatientConsent','CTfollowup','varchar',10,NULL,NULL,25,'followup','string',NULL,'No','2009-01-25 05:25:56'),(3269,'lava','crms','consent','music','PatientConsent','CTmusic','varchar',10,NULL,NULL,26,'music','string',NULL,'No','2009-01-25 05:25:56'),(3270,'lava','crms','consent','part','PatientConsent','CTpart','varchar',10,NULL,NULL,27,'part','string',NULL,'No','2009-01-25 05:25:56'),(3271,'lava','crms','consent','carepart','PatientConsent','CTcarepart','varchar',10,NULL,NULL,28,'carepart','string',NULL,'No','2009-01-25 05:25:56'),(3272,'lava','crms','contactInfo','id','ContactInfo','CInfoID','int',NULL,10,0,1,'id','long',NULL,'Yes','2009-01-25 05:25:56'),(3273,'lava','crms','contactInfo','patient','ContactInfo','PIDN','int',NULL,10,0,2,'patient','many-to-one','edu.ucsf.memory.lava.model.Patient','Yes','2009-01-25 05:25:56'),(3274,'lava','crms','contactInfo','caregiverId','ContactInfo','CareID','int',NULL,10,0,3,'caregiverId','long',NULL,'No','2009-01-25 05:25:56'),(3275,'lava','crms','contactInfo','contactPatient','ContactInfo','ContactPT','smallint',NULL,5,0,4,'contactPatient','short',NULL,'No','2009-01-25 05:25:56'),(3276,'lava','crms','contactInfo','isPatientResidence','ContactInfo','IsPTResidence','smallint',NULL,5,0,5,'isPatientResidence','short',NULL,'No','2009-01-25 05:25:56'),(3277,'lava','crms','contactInfo','optOutMac','ContactInfo','OptOutMAC','smallint',NULL,5,0,6,'optOutMac','short',NULL,'No','2009-01-25 05:25:56'),(3278,'lava','crms','contactInfo','optOutAffiliates','ContactInfo','OptOutAffiliates','smallint',NULL,5,0,7,'optOutAffiliates','short',NULL,'No','2009-01-25 05:25:56'),(3279,'lava','crms','contactInfo','active','ContactInfo','ActiveFlag','smallint',NULL,5,0,8,'active','short',NULL,'No','2009-01-25 05:25:56'),(3280,'lava','crms','contactInfo','address','ContactInfo','Address','varchar',100,NULL,NULL,9,'address','string',NULL,'No','2009-01-25 05:25:56'),(3281,'lava','crms','contactInfo','address2','ContactInfo','Address2','varchar',100,NULL,NULL,10,'address2','string',NULL,'No','2009-01-25 05:25:56'),(3282,'lava','crms','contactInfo','city','ContactInfo','City','varchar',50,NULL,NULL,11,'city','string',NULL,'No','2009-01-25 05:25:56'),(3283,'lava','crms','contactInfo','state','ContactInfo','State','char',10,NULL,NULL,12,'state','character',NULL,'No','2009-01-25 05:25:56'),(3284,'lava','crms','contactInfo','zip','ContactInfo','Zip','varchar',10,NULL,NULL,13,'zip','string',NULL,'No','2009-01-25 05:25:56'),(3285,'lava','crms','contactInfo','country','ContactInfo','Country','varchar',50,NULL,NULL,14,'country','string',NULL,'No','2009-01-25 05:25:56'),(3286,'lava','crms','contactInfo','phone1','ContactInfo','Phone1','varchar',25,NULL,NULL,15,'phone1','string',NULL,'No','2009-01-25 05:25:56'),(3287,'lava','crms','contactInfo','phoneType1','ContactInfo','PhoneType1','varchar',10,NULL,NULL,16,'phoneType1','string',NULL,'No','2009-01-25 05:25:56'),(3288,'lava','crms','contactInfo','phone2','ContactInfo','Phone2','varchar',25,NULL,NULL,17,'phone2','string',NULL,'No','2009-01-25 05:25:56'),(3289,'lava','crms','contactInfo','phoneType2','ContactInfo','PhoneType2','varchar',10,NULL,NULL,18,'phoneType2','string',NULL,'No','2009-01-25 05:25:56'),(3290,'lava','crms','contactInfo','phone3','ContactInfo','Phone3','varchar',25,NULL,NULL,19,'phone3','string',NULL,'No','2009-01-25 05:25:56'),(3291,'lava','crms','contactInfo','phoneType3','ContactInfo','PhoneType3','varchar',10,NULL,NULL,20,'phoneType3','string',NULL,'No','2009-01-25 05:25:56'),(3292,'lava','crms','contactInfo','email','ContactInfo','Email','varchar',100,NULL,NULL,21,'email','string',NULL,'No','2009-01-25 05:25:56'),(3293,'lava','crms','contactInfo','notes','ContactInfo','Notes','varchar',250,NULL,NULL,22,'notes','string',NULL,'No','2009-01-25 05:25:56'),(3294,'lava','crms','contactInfo','contactNameRev','ContactInfo','ContactNameRev','varchar',100,NULL,NULL,23,'contactNameRev','string',NULL,'No','2009-01-25 05:25:56'),(3295,'lava','crms','contactInfo','contactDesc','ContactInfo','ContactDesc','varchar',100,NULL,NULL,24,'contactDesc','string',NULL,'No','2009-01-25 05:25:56'),(3296,'lava','crms','ContactLog','id','ContactLog','LogID','int',NULL,10,0,1,'id','long',NULL,'Yes','2009-01-25 05:25:56'),(3297,'lava','crms','ContactLog','patient','ContactLog','PIDN','int',NULL,10,0,2,'patient','many-to-one','edu.ucsf.memory.lava.model.Patient','Yes','2009-01-25 05:25:56'),(3298,'lava','crms','ContactLog','projName','ContactLog','ProjName','varchar',25,NULL,NULL,3,'projName','string',NULL,'No','2009-01-25 05:25:56'),(3299,'lava','crms','ContactLog','logDate','ContactLog','LogDate','smalldatetime',NULL,16,0,4,'logDate','timestamp',NULL,'No','2009-01-25 05:25:56'),(3300,'lava','crms','ContactLog','method','ContactLog','Method','varchar',25,NULL,NULL,5,'method','string',NULL,'Yes','2009-01-25 05:25:56'),(3301,'lava','crms','ContactLog','staffInit','ContactLog','StaffInit','smallint',NULL,5,0,6,'staffInit','short',NULL,'Yes','2009-01-25 05:25:56'),(3302,'lava','crms','ContactLog','staff','ContactLog','Staff','varchar',50,NULL,NULL,7,'staff','string',NULL,'No','2009-01-25 05:25:56'),(3303,'lava','crms','ContactLog','contact','ContactLog','Contact','varchar',50,NULL,NULL,8,'contact','string',NULL,'No','2009-01-25 05:25:56'),(3304,'lava','crms','ContactLog','note','ContactLog','Note','text',16,NULL,NULL,9,'note','string',NULL,'No','2009-01-25 05:25:56'),(3305,'lava','crms','Doctor','id','Doctor','DocID','int',NULL,10,0,1,'id','long',NULL,'Yes','2009-01-25 05:25:56'),(3306,'lava','crms','Doctor','lastName','Doctor','LName','varchar',25,NULL,NULL,2,'lastName','string',NULL,'Yes','2009-01-25 05:25:56'),(3307,'lava','crms','Doctor','middleInitial','Doctor','MInitial','char',1,NULL,NULL,3,'middleInitial','character',NULL,'No','2009-01-25 05:25:56'),(3308,'lava','crms','Doctor','firstName','Doctor','FName','varchar',25,NULL,NULL,4,'firstName','string',NULL,'Yes','2009-01-25 05:25:56'),(3309,'lava','crms','Doctor','address','Doctor','Address','varchar',100,NULL,NULL,5,'address','string',NULL,'No','2009-01-25 05:25:56'),(3310,'lava','crms','Doctor','city','Doctor','City','varchar',50,NULL,NULL,6,'city','string',NULL,'No','2009-01-25 05:25:56'),(3311,'lava','crms','Doctor','state','Doctor','State','char',2,NULL,NULL,7,'state','character',NULL,'No','2009-01-25 05:25:56'),(3312,'lava','crms','Doctor','zip','Doctor','Zip','varchar',10,NULL,NULL,8,'zip','string',NULL,'No','2009-01-25 05:25:56'),(3313,'lava','crms','Doctor','phone1','Doctor','Phone1','varchar',25,NULL,NULL,9,'phone1','string',NULL,'No','2009-01-25 05:25:56'),(3314,'lava','crms','Doctor','phoneType1','Doctor','PhoneType1','varchar',10,NULL,NULL,10,'phoneType1','string',NULL,'No','2009-01-25 05:25:56'),(3315,'lava','crms','Doctor','phone2','Doctor','Phone2','varchar',25,NULL,NULL,11,'phone2','string',NULL,'No','2009-01-25 05:25:56'),(3316,'lava','crms','Doctor','phoneType2','Doctor','PhoneType2','varchar',10,NULL,NULL,12,'phoneType2','string',NULL,'No','2009-01-25 05:25:56'),(3317,'lava','crms','Doctor','phone3','Doctor','Phone3','varchar',25,NULL,NULL,13,'phone3','string',NULL,'No','2009-01-25 05:25:56'),(3318,'lava','crms','Doctor','phoneType3','Doctor','PhoneType3','varchar',10,NULL,NULL,14,'phoneType3','string',NULL,'No','2009-01-25 05:25:56'),(3319,'lava','crms','Doctor','email','Doctor','Email','varchar',100,NULL,NULL,15,'email','string',NULL,'No','2009-01-25 05:25:56'),(3320,'lava','crms','Doctor','docType','Doctor','DocType','varchar',50,NULL,NULL,16,'docType','string',NULL,'No','2009-01-25 05:25:56'),(3321,'lava','crms','Doctor','fullNameRev','Doctor','FullNameRev','varchar',55,NULL,NULL,17,'fullNameRev','string',NULL,'No','2009-01-25 05:25:56'),(3322,'lava','crms','Doctor','fullName','Doctor','FullName','varchar',54,NULL,NULL,18,'fullName','string',NULL,'No','2009-01-25 05:25:56'),(3323,'lava','crms','EnrollmentStatus','id','EnrollmentStatus','EnrollStatID','int',NULL,10,0,1,'id','long',NULL,'Yes','2009-01-25 05:25:56'),(3324,'lava','crms','EnrollmentStatus','patient','EnrollmentStatus','PIDN','int',NULL,10,0,2,'patient','many-to-one','edu.ucsf.memory.lava.model.Patient','Yes','2009-01-25 05:25:56'),(3325,'lava','crms','EnrollmentStatus','projName','EnrollmentStatus','projName','varchar',75,NULL,NULL,3,'projName','string',NULL,'Yes','2009-01-25 05:25:56'),(3326,'lava','crms','EnrollmentStatus','referralSource','EnrollmentStatus','ReferralSource','varchar',75,NULL,NULL,4,'referralSource','string',NULL,'No','2009-01-25 05:25:56'),(3327,'lava','crms','EnrollmentStatus','subjectStudyId','EnrollmentStatus','SubjectStudyID','varchar',10,NULL,NULL,4,'studySubjectId','string',NULL,'No','2009-01-25 05:25:56'),(3328,'lava','crms','EnrollmentStatus','latestDesc','EnrollmentStatus','LatestDesc','varchar',25,NULL,NULL,5,'latestDesc','string',NULL,'No','2009-01-25 05:25:56'),(3329,'lava','crms','EnrollmentStatus','latestDate','EnrollmentStatus','LatestDate','smalldatetime',NULL,16,0,6,'latestDate','timestamp',NULL,'No','2009-01-25 05:25:56'),(3330,'lava','crms','EnrollmentStatus','latestNote','EnrollmentStatus','LatestNote','varchar',100,NULL,NULL,7,'latestNote','string',NULL,'No','2009-01-25 05:25:56'),(3331,'lava','crms','EnrollmentStatus','referredDesc','EnrollmentStatus','ReferredDesc','varchar',25,NULL,NULL,9,'referredDesc','string',NULL,'No','2009-01-25 05:25:56'),(3332,'lava','crms','EnrollmentStatus','referredDate','EnrollmentStatus','ReferredDate','smalldatetime',NULL,16,0,10,'referredDate','timestamp',NULL,'No','2009-01-25 05:25:56'),(3333,'lava','crms','EnrollmentStatus','referredNote','EnrollmentStatus','ReferredNote','varchar',100,NULL,NULL,11,'referredNote','string',NULL,'No','2009-01-25 05:25:56'),(3334,'lava','crms','EnrollmentStatus','deferredDesc','EnrollmentStatus','DeferredDesc','varchar',25,NULL,NULL,13,'deferredDesc','string',NULL,'No','2009-01-25 05:25:56'),(3335,'lava','crms','EnrollmentStatus','deferredDate','EnrollmentStatus','DeferredDate','smalldatetime',NULL,16,0,14,'deferredDate','timestamp',NULL,'No','2009-01-25 05:25:56'),(3336,'lava','crms','EnrollmentStatus','deferredNote','EnrollmentStatus','DeferredNote','varchar',100,NULL,NULL,15,'deferredNote','string',NULL,'No','2009-01-25 05:25:56'),(3337,'lava','crms','EnrollmentStatus','eligibleDesc','EnrollmentStatus','EligibleDesc','varchar',25,NULL,NULL,17,'eligibleDesc','string',NULL,'No','2009-01-25 05:25:56'),(3338,'lava','crms','EnrollmentStatus','eligibleDate','EnrollmentStatus','EligibleDate','smalldatetime',NULL,16,0,18,'eligibleDate','timestamp',NULL,'No','2009-01-25 05:25:56'),(3339,'lava','crms','EnrollmentStatus','eligibleNote','EnrollmentStatus','EligibleNote','varchar',100,NULL,NULL,19,'eligibleNote','string',NULL,'No','2009-01-25 05:25:56'),(3340,'lava','crms','EnrollmentStatus','ineligibleDesc','EnrollmentStatus','IneligibleDesc','varchar',25,NULL,NULL,21,'ineligibleDesc','string',NULL,'No','2009-01-25 05:25:56'),(3341,'lava','crms','EnrollmentStatus','ineligibleDate','EnrollmentStatus','IneligibleDate','smalldatetime',NULL,16,0,22,'ineligibleDate','timestamp',NULL,'No','2009-01-25 05:25:56'),(3342,'lava','crms','EnrollmentStatus','ineligibleNote','EnrollmentStatus','IneligibleNote','varchar',100,NULL,NULL,23,'ineligibleNote','string',NULL,'No','2009-01-25 05:25:56'),(3343,'lava','crms','EnrollmentStatus','declinedDesc','EnrollmentStatus','DeclinedDesc','varchar',25,NULL,NULL,25,'declinedDesc','string',NULL,'No','2009-01-25 05:25:56'),(3344,'lava','crms','EnrollmentStatus','declinedDate','EnrollmentStatus','DeclinedDate','smalldatetime',NULL,16,0,26,'declinedDate','timestamp',NULL,'No','2009-01-25 05:25:56'),(3345,'lava','crms','EnrollmentStatus','declinedNote','EnrollmentStatus','DeclinedNote','varchar',100,NULL,NULL,27,'declinedNote','string',NULL,'No','2009-01-25 05:25:56'),(3346,'lava','crms','EnrollmentStatus','enrolledDesc','EnrollmentStatus','EnrolledDesc','varchar',25,NULL,NULL,29,'enrolledDesc','string',NULL,'No','2009-01-25 05:25:56'),(3347,'lava','crms','EnrollmentStatus','enrolledDate','EnrollmentStatus','EnrolledDate','smalldatetime',NULL,16,0,30,'enrolledDate','timestamp',NULL,'No','2009-01-25 05:25:56'),(3348,'lava','crms','EnrollmentStatus','enrolledNote','EnrollmentStatus','EnrolledNote','varchar',100,NULL,NULL,31,'enrolledNote','string',NULL,'No','2009-01-25 05:25:56'),(3349,'lava','crms','EnrollmentStatus','excludedDesc','EnrollmentStatus','ExcludedDesc','varchar',25,NULL,NULL,33,'excludedDesc','string',NULL,'No','2009-01-25 05:25:56'),(3350,'lava','crms','EnrollmentStatus','excludedDate','EnrollmentStatus','ExcludedDate','smalldatetime',NULL,16,0,34,'excludedDate','timestamp',NULL,'No','2009-01-25 05:25:56'),(3351,'lava','crms','EnrollmentStatus','excludedNote','EnrollmentStatus','ExcludedNote','varchar',100,NULL,NULL,35,'excludedNote','string',NULL,'No','2009-01-25 05:25:56'),(3352,'lava','crms','EnrollmentStatus','withdrewDesc','EnrollmentStatus','WithdrewDesc','varchar',25,NULL,NULL,37,'withdrewDesc','string',NULL,'No','2009-01-25 05:25:56'),(3353,'lava','crms','EnrollmentStatus','withdrewDate','EnrollmentStatus','WithdrewDate','smalldatetime',NULL,16,0,38,'withdrewDate','timestamp',NULL,'No','2009-01-25 05:25:56'),(3354,'lava','crms','EnrollmentStatus','withdrewNote','EnrollmentStatus','WithdrewNote','varchar',100,NULL,NULL,39,'withdrewNote','string',NULL,'No','2009-01-25 05:25:56'),(3355,'lava','crms','EnrollmentStatus','inactiveDesc','EnrollmentStatus','InactiveDesc','varchar',25,NULL,NULL,41,'inactiveDesc','string',NULL,'No','2009-01-25 05:25:56'),(3356,'lava','crms','EnrollmentStatus','inactiveDate','EnrollmentStatus','InactiveDate','smalldatetime',NULL,16,0,42,'inactiveDate','timestamp',NULL,'No','2009-01-25 05:25:56'),(3357,'lava','crms','EnrollmentStatus','inactiveNote','EnrollmentStatus','InactiveNote','varchar',100,NULL,NULL,43,'inactiveNote','string',NULL,'No','2009-01-25 05:25:56'),(3358,'lava','crms','EnrollmentStatus','deceasedDesc','EnrollmentStatus','DeceasedDesc','varchar',25,NULL,NULL,49,'deceasedDesc','string',NULL,'No','2009-01-25 05:25:56'),(3359,'lava','crms','EnrollmentStatus','deceasedDate','EnrollmentStatus','DeceasedDate','smalldatetime',NULL,16,0,50,'deceasedDate','timestamp',NULL,'No','2009-01-25 05:25:56'),(3360,'lava','crms','EnrollmentStatus','deceasedNote','EnrollmentStatus','DeceasedNote','varchar',100,NULL,NULL,51,'deceasedNote','string',NULL,'No','2009-01-25 05:25:56'),(3361,'lava','crms','EnrollmentStatus','autopsyDesc','EnrollmentStatus','AutopsyDesc','varchar',25,NULL,NULL,53,'autopsyDesc','string',NULL,'No','2009-01-25 05:25:56'),(3362,'lava','crms','EnrollmentStatus','autopsyDate','EnrollmentStatus','AutopsyDate','smalldatetime',NULL,16,0,54,'autopsyDate','timestamp',NULL,'No','2009-01-25 05:25:56'),(3363,'lava','crms','EnrollmentStatus','autopsyNote','EnrollmentStatus','AutopsyNote','varchar',100,NULL,NULL,55,'autopsyNote','string',NULL,'No','2009-01-25 05:25:56'),(3364,'lava','crms','EnrollmentStatus','closedDesc','EnrollmentStatus','ClosedDesc','varchar',25,NULL,NULL,56,'closedDesc','string',NULL,'No','2009-01-25 05:25:56'),(3365,'lava','crms','EnrollmentStatus','closedDate','EnrollmentStatus','ClosedDate','smalldatetime',NULL,16,0,57,'closedDate','timestamp',NULL,'No','2009-01-25 05:25:56'),(3366,'lava','crms','EnrollmentStatus','closedNote','EnrollmentStatus','ClosedNote','varchar',100,NULL,NULL,58,'closedNote','string',NULL,'No','2009-01-25 05:25:56'),(3367,'lava','crms','EnrollmentStatus','enrollmentNotes','EnrollmentStatus','EnrollmentNotes','varchar',500,NULL,NULL,59,'enrollmentNotes','string',NULL,'No','2009-01-25 05:25:56'),(3368,'lava','crms','Instrument','id','InstrumentTracking','InstrID','int',NULL,10,0,1,'id','long',NULL,'Yes','2009-01-25 05:25:56'),(3369,'lava','crms','Instrument','visit','InstrumentTracking','VID','int',NULL,10,0,2,'visit','many-to-one','edu.ucsf.memory.lava.model.Visit','Yes','2009-01-25 05:25:56'),(3370,'lava','crms','Instrument','projName','InstrumentTracking','ProjName','varchar',25,NULL,NULL,3,'projName','string',NULL,'Yes','2009-01-25 05:25:56'),(3371,'lava','crms','Instrument','patient','InstrumentTracking','PIDN','int',NULL,10,0,4,'patient','many-to-one','edu.ucsf.memory.lava.model.Patient','Yes','2009-01-25 05:25:56'),(3372,'lava','crms','Instrument','instrType','InstrumentTracking','InstrType','varchar',25,NULL,NULL,5,'instrType','string',NULL,'Yes','2009-01-25 05:25:56'),(3373,'lava','crms','Instrument','instrVer','InstrumentTracking','InstrVer','varchar',25,NULL,NULL,6,'instrVer','string',NULL,'No','2009-01-25 05:25:56'),(3374,'lava','crms','Instrument','dcDate','InstrumentTracking','DCDate','smalldatetime',NULL,16,0,7,'dcDate','timestamp',NULL,'Yes','2009-01-25 05:25:56'),(3375,'lava','crms','Instrument','dcBy','InstrumentTracking','DCBy','varchar',25,NULL,NULL,8,'dcBy','string',NULL,'No','2009-01-25 05:25:56'),(3376,'lava','crms','Instrument','dcStatus','InstrumentTracking','DCStatus','varchar',25,NULL,NULL,9,'dcStatus','string',NULL,'Yes','2009-01-25 05:25:56'),(3377,'lava','crms','Instrument','dcNotes','InstrumentTracking','DCNotes','varchar',255,NULL,NULL,10,'dcNotes','string',NULL,'No','2009-01-25 05:25:56'),(3378,'lava','crms','Instrument','researchStatus','InstrumentTracking','ResearchStatus','varchar',50,NULL,NULL,11,'researchStatus','string',NULL,'No','2009-01-25 05:25:56'),(3379,'lava','crms','Instrument','qualityIssue','InstrumentTracking','QualityIssue','varchar',50,NULL,NULL,12,'qualityIssue','string',NULL,'No','2009-01-25 05:25:56'),(3380,'lava','crms','Instrument','qualityIssue2','InstrumentTracking','QualityIssue2','varchar',50,NULL,NULL,13,'qualityIssue2','string',NULL,'No','2009-01-25 05:25:56'),(3381,'lava','crms','Instrument','qualityIssue3','InstrumentTracking','QualityIssue3','varchar',50,NULL,NULL,14,'qualityIssue3','string',NULL,'No','2009-01-25 05:25:56'),(3382,'lava','crms','Instrument','qualityNotes','InstrumentTracking','QualityNotes','varchar',100,NULL,NULL,15,'qualityNotes','string',NULL,'No','2009-01-25 05:25:56'),(3383,'lava','crms','Instrument','deDate','InstrumentTracking','DEDate','smalldatetime',NULL,16,0,16,'deDate','timestamp',NULL,'No','2009-01-25 05:25:56'),(3384,'lava','crms','Instrument','deBy','InstrumentTracking','DEBy','varchar',25,NULL,NULL,17,'deBy','string',NULL,'No','2009-01-25 05:25:56'),(3385,'lava','crms','Instrument','deStatus','InstrumentTracking','DEStatus','varchar',25,NULL,NULL,18,'deStatus','string',NULL,'No','2009-01-25 05:25:56'),(3386,'lava','crms','Instrument','deNotes','InstrumentTracking','DENotes','varchar',255,NULL,NULL,19,'deNotes','string',NULL,'No','2009-01-25 05:25:56'),(3387,'lava','crms','Instrument','dvDate','InstrumentTracking','DVDate','smalldatetime',NULL,16,0,20,'dvDate','timestamp',NULL,'No','2009-01-25 05:25:56'),(3388,'lava','crms','Instrument','dvBy','InstrumentTracking','DVBy','varchar',25,NULL,NULL,21,'dvBy','string',NULL,'No','2009-01-25 05:25:56'),(3389,'lava','crms','Instrument','dvStatus','InstrumentTracking','DVStatus','varchar',25,NULL,NULL,22,'dvStatus','string',NULL,'No','2009-01-25 05:25:56'),(3390,'lava','crms','Instrument','dvNotes','InstrumentTracking','DVNotes','varchar',255,NULL,NULL,23,'dvNotes','string',NULL,'No','2009-01-25 05:25:56'),(3391,'lava','crms','Instrument','fieldStatus','InstrumentTracking','FieldStatus','smallint',NULL,5,0,25,'fieldStatus','short',NULL,'No','2009-01-25 05:25:56'),(3392,'lava','crms','Instrument','ageAtDC','InstrumentTracking','AgeAtDC','smallint',NULL,5,0,27,'ageAtDC','short',NULL,'No','2009-01-25 05:25:56'),(3393,'lava','crms','Instrument','instrumentAuditCreated','InstrumentTracking','Audit_Created','datetime',NULL,23,3,28,'instrumentAuditCreated','timestamp',NULL,'Yes','2009-01-25 05:25:56'),(3394,'lava','crms','Instrument','instrumentAuditEffDate','InstrumentTracking','Audit_EffDate','datetime',NULL,23,3,29,'instrumentAuditEffDate','timestamp',NULL,'Yes','2009-01-25 05:25:56'),(3395,'lava','crms','Instrument','instrumentAuditExpDate','InstrumentTracking','Audit_ExpDate','datetime',NULL,23,3,30,'instrumentAuditExpDate','timestamp',NULL,'Yes','2009-01-25 05:25:56'),(3396,'lava','crms','Instrument','instrumentAuditHostName','InstrumentTracking','Audit_HostName','varchar',50,NULL,NULL,31,'instrumentAuditHostName','string',NULL,'No','2009-01-25 05:25:56'),(3397,'lava','crms','Instrument','instrumentAuditUsername','InstrumentTracking','Audit_Username','varchar',50,NULL,NULL,32,'instrumentAuditUsername','string',NULL,'No','2009-01-25 05:25:56'),(3398,'lava','crms','Patient','id','Patient','PIDN','int',NULL,10,0,1,'id','long',NULL,'Yes','2009-01-25 05:25:56'),(3399,'lava','crms','Patient','lastName','Patient','LName','varchar',25,NULL,NULL,2,'lastName','string',NULL,'Yes','2009-01-25 05:25:56'),(3400,'lava','crms','Patient','middleInitial','Patient','MInitial','char',1,NULL,NULL,3,'middleInitial','character',NULL,'No','2009-01-25 05:25:56'),(3401,'lava','crms','Patient','firstName','Patient','FName','varchar',25,NULL,NULL,4,'firstName','string',NULL,'Yes','2009-01-25 05:25:56'),(3402,'lava','crms','Patient','suffix','Patient','Suffix','varchar',15,NULL,NULL,5,'suffix','string',NULL,'No','2009-01-25 05:25:56'),(3403,'lava','crms','Patient','degree','Patient','Degree','varchar',15,NULL,NULL,6,'degree','string',NULL,'No','2009-01-25 05:25:56'),(3404,'lava','crms','Patient','ucid','Patient','UCID','varchar',20,NULL,NULL,7,'ucid','string',NULL,'No','2009-01-25 05:25:56'),(3405,'lava','crms','Patient','ssn','Patient','SSN','nvarchar',30,NULL,NULL,8,'ssn','string',NULL,'No','2009-01-25 05:25:56'),(3406,'lava','crms','Patient','birthDate','Patient','DOB','smalldatetime',NULL,16,0,9,'birthDate','timestamp',NULL,'No','2009-01-25 05:25:56'),(3407,'lava','crms','Patient','age','Patient','AGE','int',NULL,10,0,10,'age','long',NULL,'No','2009-01-25 05:25:56'),(3408,'lava','crms','Patient','gender','Patient','Gender','tinyint',NULL,3,0,11,'gender','byte',NULL,'No','2009-01-25 05:25:56'),(3409,'lava','crms','Patient','hand','Patient','Hand','varchar',25,NULL,NULL,12,'hand','string',NULL,'No','2009-01-25 05:25:56'),(3410,'lava','crms','Patient','deceased','Patient','Deceased','bit',NULL,1,0,13,'deceased','boolean',NULL,'Yes','2009-01-25 05:25:56'),(3411,'lava','crms','Patient','deathDate','Patient','DOD','smalldatetime',NULL,16,0,14,'deathDate','timestamp',NULL,'No','2009-01-25 05:25:56'),(3412,'lava','crms','Patient','transNeeded','Patient','TransNeeded','bit',NULL,1,0,15,'transNeeded','boolean',NULL,'No','2009-01-25 05:25:56'),(3413,'lava','crms','Patient','primaryLanguage','Patient','PrimaryLanguage','varchar',25,NULL,NULL,16,'primaryLanguage','string',NULL,'No','2009-01-25 05:25:56'),(3414,'lava','crms','Patient','transLanguage','Patient','TransLanguage','varchar',25,NULL,NULL,16,'transLanguage','string',NULL,'No','2009-01-25 05:25:56'),(3415,'lava','crms','Patient','testingLanguage','Patient','testingLanguage','varchar',25,NULL,NULL,16,'testingLanguage','string',NULL,'No','2009-01-25 05:25:56'),(3416,'lava','crms','Patient','enterBy','Patient','EnterBy','varchar',25,NULL,NULL,17,'enterBy','string',NULL,'No','2009-01-25 05:25:56'),(3417,'lava','crms','Patient','dupNameFlag','Patient','DupNameFlag','bit',NULL,1,0,18,'dupNameFlag','boolean',NULL,'Yes','2009-01-25 05:25:56'),(3418,'lava','crms','Patient','fullNameRev','Patient','FullNameRev','varchar',100,NULL,NULL,19,'fullNameRev','string',NULL,'No','2009-01-25 05:25:56'),(3419,'lava','crms','Patient','fullName','Patient','FullName','varchar',65,NULL,NULL,20,'fullName','string',NULL,'No','2009-01-25 05:25:56'),(3420,'lava','crms','Patient','fullNameRevNoSuffix','Patient','FullNameRevNoSuffix','varchar',66,NULL,NULL,21,'fullNameRevNoSuffix','string',NULL,'No','2009-01-25 05:25:56'),(3421,'lava','crms','Patient','fullNameNoSuffix','Patient','FullNameNoSuffix','varchar',65,NULL,NULL,22,'fullNameNoSuffix','string',NULL,'No','2009-01-25 05:25:56'),(3422,'lava','crms','PatientDoctor','id','PatientDoctor','PIDNDocID','int',NULL,10,0,1,'id','integer',NULL,'Yes','2009-01-25 05:25:56'),(3423,'lava','crms','PatientDoctor','doctor','PatientDoctor','DocID','int',NULL,10,0,2,'doctor','many-to-one','edu.ucsf.memory.lava.model.Doctor','Yes','2009-01-25 05:25:56'),(3424,'lava','crms','PatientDoctor','patient','PatientDoctor','PIDN','int',NULL,10,0,3,'patient','many-to-one','edu.ucsf.memory.lava.model.Patient','Yes','2009-01-25 05:25:56'),(3425,'lava','crms','PatientDoctor','docStat','PatientDoctor','DocStat','varchar',25,NULL,NULL,4,'docStat','string',NULL,'No','2009-01-25 05:25:56'),(3426,'lava','crms','PatientDoctor','docNote','PatientDoctor','DocNote','varchar',100,NULL,NULL,5,'docNote','string',NULL,'No','2009-01-25 05:25:56'),(3427,'lava','crms','task','id','Tasks','TaskID','int',NULL,10,0,1,'id','long',NULL,'Yes','2009-01-25 05:25:56'),(3428,'lava','crms','task','patient','Tasks','PIDN','int',NULL,10,0,2,'patient','many-to-one','edu.ucsf.memory.lava.model.Patient','Yes','2009-01-25 05:25:56'),(3429,'lava','crms','task','projName','Tasks','ProjName','varchar',75,NULL,NULL,3,'projName','string',NULL,'No','2009-01-25 05:25:56'),(3430,'lava','crms','task','openedDate','Tasks','OpenedDate','smalldatetime',NULL,16,0,4,'openedDate','timestamp',NULL,'No','2009-01-25 05:25:56'),(3431,'lava','crms','task','openedBy','Tasks','OpenedBy','varchar',25,NULL,NULL,5,'openedBy','string',NULL,'No','2009-01-25 05:25:56'),(3432,'lava','crms','task','taskType','Tasks','TaskType','varchar',25,NULL,NULL,6,'taskType','string',NULL,'No','2009-01-25 05:25:56'),(3433,'lava','crms','task','taskDesc','Tasks','TaskDesc','varchar',255,NULL,NULL,7,'taskDesc','string',NULL,'No','2009-01-25 05:25:56'),(3434,'lava','crms','task','dueDate','Tasks','DueDate','smalldatetime',NULL,16,0,8,'dueDate','timestamp',NULL,'No','2009-01-25 05:25:56'),(3435,'lava','crms','task','taskStatus','Tasks','TaskStatus','varchar',50,NULL,NULL,9,'taskStatus','string',NULL,'No','2009-01-25 05:25:56'),(3436,'lava','crms','task','assignedTo','Tasks','AssignedTo','varchar',25,NULL,NULL,10,'assignedTo','string',NULL,'No','2009-01-25 05:25:56'),(3437,'lava','crms','task','workingNotes','Tasks','WorkingNotes','varchar',255,NULL,NULL,11,'workingNotes','string',NULL,'No','2009-01-25 05:25:56'),(3438,'lava','crms','task','closedDate','Tasks','ClosedDate','smalldatetime',NULL,16,0,12,'closedDate','timestamp',NULL,'No','2009-01-25 05:25:56'),(3439,'lava','crms','Visit','id','Visit','VID','int',NULL,10,0,1,'id','long',NULL,'Yes','2009-01-25 05:25:56'),(3440,'lava','crms','Visit','patient','Visit','PIDN','int',NULL,10,0,2,'patient','many-to-one','edu.ucsf.memory.lava.model.Patient','Yes','2009-01-25 05:25:56'),(3441,'lava','crms','Visit','projName','Visit','ProjName','varchar',25,NULL,NULL,3,'projName','string',NULL,'Yes','2009-01-25 05:25:56'),(3442,'lava','crms','Visit','visitLocation','Visit','VLocation','varchar',25,NULL,NULL,4,'visitLocation','string',NULL,'Yes','2009-01-25 05:25:56'),(3443,'lava','crms','Visit','visitType','Visit','VType','varchar',25,NULL,NULL,5,'visitType','string',NULL,'Yes','2009-01-25 05:25:56'),(3444,'lava','crms','Visit','visitWith','Visit','VWith','varchar',25,NULL,NULL,6,'visitWith','string',NULL,'No','2009-01-25 05:25:56'),(3445,'lava','crms','Visit','visitDate','Visit','VDate','smalldatetime',NULL,16,0,7,'visitDate','timestamp',NULL,'Yes','2009-01-25 05:25:56'),(3446,'lava','crms','Visit','visitStatus','Visit','VStatus','varchar',25,NULL,NULL,8,'visitStatus','string',NULL,'Yes','2009-01-25 05:25:56'),(3447,'lava','crms','Visit','visitNote','Visit','VNotes','varchar',255,NULL,NULL,9,'visitNote','string',NULL,'No','2009-01-25 05:25:56'),(3448,'lava','crms','Visit','followUpMonth','Visit','FUMonth','char',3,NULL,NULL,10,'followUpMonth','character',NULL,'No','2009-01-25 05:25:56'),(3449,'lava','crms','Visit','followUpYear','Visit','FUYear','char',4,NULL,NULL,11,'followUpYear','character',NULL,'No','2009-01-25 05:25:56'),(3450,'lava','crms','Visit','followUpNote','Visit','FUNote','varchar',100,NULL,NULL,12,'followUpNote','string',NULL,'No','2009-01-25 05:25:56'),(3451,'lava','crms','Visit','waitList','Visit','WList','varchar',25,NULL,NULL,13,'waitList','string',NULL,'No','2009-01-25 05:25:56'),(3452,'lava','crms','Visit','waitListNote','Visit','WListNote','varchar',100,NULL,NULL,14,'waitListNote','string',NULL,'No','2009-01-25 05:25:56'),(3453,'lava','crms','Visit','waitListDate','Visit','WListDate','smalldatetime',NULL,16,0,15,'waitListDate','timestamp',NULL,'No','2009-01-25 05:25:56'),(3454,'lava','crms','Visit','visitDescrip','Visit','VShortDesc','varchar',64,NULL,NULL,16,'visitDescrip','string',NULL,'No','2009-01-25 05:25:56'),(3455,'lava','crms','Visit','ageAtVisit','Visit','AgeAtVisit','smallint',NULL,5,0,17,'ageAtVisit','short',NULL,'No','2009-01-25 05:25:56');
/*!40000 ALTER TABLE `hibernateproperty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instrument`
--

DROP TABLE IF EXISTS `instrument`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `instrument` (
  `InstrID` int(10) NOT NULL auto_increment,
  `InstrName` varchar(25) NOT NULL,
  `TableName` varchar(25) NOT NULL,
  `FormName` varchar(50) default NULL,
  `Category` varchar(25) default NULL,
  `HasVersion` tinyint(1) NOT NULL default '0',
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`InstrID`),
  UNIQUE KEY `InstrName` (`InstrName`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `instrument`
--

LOCK TABLES `instrument` WRITE;
/*!40000 ALTER TABLE `instrument` DISABLE KEYS */;
/*!40000 ALTER TABLE `instrument` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instrumentnotes`
--

DROP TABLE IF EXISTS `instrumentnotes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `instrumentnotes` (
  `InstrID` int(10) NOT NULL,
  `Section` varchar(50) NOT NULL,
  `Note` varchar(2000) default NULL,
  KEY `instrumentnotes__instrID` (`InstrID`),
  CONSTRAINT `instrumentnotes__instrID` FOREIGN KEY (`InstrID`) REFERENCES `instrumenttracking` (`InstrID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `instrumentnotes`
--

LOCK TABLES `instrumentnotes` WRITE;
/*!40000 ALTER TABLE `instrumentnotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `instrumentnotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instrumentsummary`
--

DROP TABLE IF EXISTS `instrumentsummary`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `instrumentsummary` (
  `InstrID` int(10) NOT NULL,
  `Summary` varchar(500) default NULL,
  PRIMARY KEY  (`InstrID`),
  KEY `instrumentsummary__InstrID` (`InstrID`),
  CONSTRAINT `instrumentsummary__InstrID` FOREIGN KEY (`InstrID`) REFERENCES `instrumenttracking` (`InstrID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `instrumentsummary`
--

LOCK TABLES `instrumentsummary` WRITE;
/*!40000 ALTER TABLE `instrumentsummary` DISABLE KEYS */;
/*!40000 ALTER TABLE `instrumentsummary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instrumenttracking`
--

DROP TABLE IF EXISTS `instrumenttracking`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `instrumenttracking` (
  `InstrID` int(10) NOT NULL auto_increment,
  `VID` int(10) NOT NULL,
  `ProjName` varchar(75) NOT NULL,
  `PIDN` int(10) NOT NULL,
  `InstrType` varchar(25) NOT NULL,
  `InstrVer` varchar(25) default NULL,
  `DCDate` datetime NOT NULL,
  `DCBy` varchar(25) default NULL,
  `DCStatus` varchar(25) NOT NULL,
  `DCNotes` varchar(255) default NULL,
  `ResearchStatus` varchar(50) default NULL,
  `QualityIssue` varchar(50) default NULL,
  `QualityIssue2` varchar(50) default NULL,
  `QualityIssue3` varchar(50) default NULL,
  `QualityNotes` varchar(100) default NULL,
  `DEDate` datetime default NULL,
  `DEBy` varchar(25) default NULL,
  `DEStatus` varchar(25) default NULL,
  `DENotes` varchar(255) default NULL,
  `DVDate` datetime default NULL,
  `DVBy` varchar(25) default NULL,
  `DVStatus` varchar(25) default NULL,
  `DVNotes` varchar(3000) default NULL,
  `latestflag` tinyint(1) NOT NULL default '0',
  `FieldStatus` smallint(5) default NULL,
  `AgeAtDC` smallint(5) default NULL,
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`InstrID`),
  KEY `AgeLookup` (`InstrID`,`AgeAtDC`),
  KEY `PIDN_InstrType_DCDate_DCStatus` (`PIDN`,`InstrType`,`DCDate`,`DCStatus`),
  KEY `instrumenttracking__InstrType` (`InstrType`),
  KEY `instrumenttracking__VID` (`VID`),
  KEY `instrumenttracking__ProjName` (`ProjName`),
  KEY `insttumenttracking__PIDN` (`PIDN`),
  CONSTRAINT `instrumenttracking__InstrType` FOREIGN KEY (`InstrType`) REFERENCES `instrument` (`InstrName`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `instrumenttracking__ProjName` FOREIGN KEY (`ProjName`) REFERENCES `projectunit` (`ProjUnitDesc`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `instrumenttracking__VID` FOREIGN KEY (`VID`) REFERENCES `visit` (`VID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `insttumenttracking__PIDN` FOREIGN KEY (`PIDN`) REFERENCES `patient` (`PIDN`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `instrumenttracking`
--

LOCK TABLES `instrumenttracking` WRITE;
/*!40000 ALTER TABLE `instrumenttracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `instrumenttracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lava_session`
--

DROP TABLE IF EXISTS `lava_session`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `lava_session` (
  `lava_session_id` int(10) NOT NULL auto_increment,
  `server_instance_id` int(10) NOT NULL,
  `http_session_id` varchar(64) default NULL,
  `current_status` varchar(25) NOT NULL default 'NEW',
  `user_id` int(10) default NULL,
  `user_name` varchar(50) default NULL,
  `host_name` varchar(50) default NULL,
  `create_timestamp` timestamp NULL default NULL,
  `access_timestamp` timestamp NULL default NULL,
  `expire_timestamp` datetime default NULL,
  `disconnect_date` date default NULL,
  `disconnect_time` time default NULL,
  `disconnect_message` varchar(500) default NULL,
  `notes` varchar(255) default NULL,
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`lava_session_id`),
  KEY `lavasession__server_instance_id` (`server_instance_id`),
  KEY `lavasession__user_id` (`user_id`),
  CONSTRAINT `lavasession__server_instance_id` FOREIGN KEY (`server_instance_id`) REFERENCES `lavaserverinstance` (`ServerInstanceID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `lavasession__user_id` FOREIGN KEY (`user_id`) REFERENCES `authuser` (`UID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `lava_session`
--

LOCK TABLES `lava_session` WRITE;
/*!40000 ALTER TABLE `lava_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `lava_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lavaserverinstance`
--

DROP TABLE IF EXISTS `lavaserverinstance`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `lavaserverinstance` (
  `ServerInstanceID` int(10) NOT NULL auto_increment,
  `ServerDescription` varchar(255) default NULL,
  `CreateTime` timestamp NULL default NULL,
  `DisconnectTime` datetime default NULL,
  `DisconnectWarningMinutes` int(10) default NULL,
  `DisconnectMessage` varchar(500) default NULL,
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ServerInstanceID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `lavaserverinstance`
--

LOCK TABLES `lavaserverinstance` WRITE;
/*!40000 ALTER TABLE `lavaserverinstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `lavaserverinstance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list`
--

DROP TABLE IF EXISTS `list`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `list` (
  `ListID` int(10) NOT NULL auto_increment,
  `ListName` varchar(50) NOT NULL,
  `scope` varchar(25) NOT NULL,
  `NumericKey` tinyint(1) NOT NULL default '0',
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ListID`),
  UNIQUE KEY `ListName` (`ListName`)
) ENGINE=InnoDB AUTO_INCREMENT=650 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `list`
--

LOCK TABLES `list` WRITE;
/*!40000 ALTER TABLE `list` DISABLE KEYS */;
INSERT INTO `list` VALUES (519,'LavaSessionStatus','core',0,'2009-01-25 04:57:59'),(520,'NavigationListPageSize','core',1,'2009-01-25 04:57:59'),(521,'TextYesNo','core',0,'2009-01-25 04:57:59'),(522,'TextYesNoDK','core',0,'2009-01-25 04:57:59'),(523,'TextYesNoNA','core',0,'2009-01-25 04:57:59'),(524,'YESNO','core',1,'2009-01-25 04:57:59'),(525,'YESNODK','core',1,'2009-01-25 04:57:59'),(526,'YesNoDK_Zero','core',0,'2009-01-25 04:57:59'),(527,'YesNoUnknown','core',1,'2009-01-25 04:57:59'),(528,'YesNoZeroNA','core',1,'2009-05-12 00:16:47'),(529,'YesNo_Zero','core',0,'2009-01-25 04:57:59'),(610,'AbsentPresent','crms',1,'2009-05-12 21:10:23'),(611,'CaregiverMaritalStatus','crms',0,'2009-01-25 04:57:59'),(612,'ConsentType','crms',0,'2009-01-25 04:57:59'),(613,'ContactMethods','crms',0,'2009-01-25 04:57:59'),(614,'ContactRelations','crms',0,'2009-01-25 04:57:59'),(615,'DataCollectionStatus','crms',0,'2009-01-25 04:57:59'),(616,'DataEntryStatus','crms',0,'2009-01-25 04:57:59'),(617,'DataValidationStatus','crms',0,'2009-01-25 04:57:59'),(618,'DoctorStatus','crms',0,'2009-01-25 04:57:59'),(619,'Education','crms',1,'2009-01-25 04:57:59'),(620,'Gender','crms',1,'2009-01-25 04:57:59'),(621,'Handedness','crms',0,'2009-01-25 04:57:59'),(622,'InstrumentQualityIssue','crms',0,'2009-01-25 04:57:59'),(623,'InstrumentResearchStatus','crms',0,'2009-01-25 04:57:59'),(624,'InstrumentVersions','crms',0,'2009-01-25 04:57:59'),(625,'MaritalStatus','crms',1,'2009-01-25 04:57:59'),(626,'NormalAbnormal','crms',1,'2009-05-12 00:22:28'),(627,'Occupation','crms',1,'2009-01-25 04:57:59'),(628,'PatientLanguage','crms',0,'2009-01-25 04:57:59'),(629,'PhoneType','crms',0,'2009-01-25 04:57:59'),(630,'PrimaryCaregiver','crms',1,'2009-01-25 04:57:59'),(631,'ProbablePossibleNo','crms',1,'2009-01-25 04:57:59'),(632,'ProjectStatus','crms',0,'2009-01-25 04:57:59'),(633,'ProjectStatusType','crms',0,'2009-01-25 04:57:59'),(634,'RACE','crms',1,'2009-01-25 04:57:59'),(635,'ReferralSources','crms',0,'2009-01-25 04:57:59'),(636,'SkipErrorCodes','crms',0,'2009-01-25 04:57:59'),(637,'SpanishOrigin','crms',1,'2009-01-25 04:57:59'),(638,'StaffList','crms',0,'2009-01-25 04:57:59'),(639,'StandardErrorCodes','crms',1,'2009-01-25 04:57:59'),(640,'States','crms',0,'2009-01-25 04:57:59'),(641,'TaskStatus','crms',0,'2009-01-25 04:57:59'),(642,'TaskType','crms',0,'2009-01-25 04:57:59'),(643,'UsualSomeRare','crms',0,'2009-01-25 04:57:59'),(644,'UsualSomeRareDK','crms',0,'2009-01-25 04:57:59'),(645,'VisitLocations','crms',0,'2009-01-25 04:57:59'),(646,'VisitStatus','crms',0,'2009-01-25 04:57:59'),(647,'VisitType','crms',0,'2009-01-25 04:57:59'),(648,'YesNoScale_NoCorrect','crms',1,'2009-01-25 04:57:59'),(649,'YesNoScale_YesCorrect','crms',1,'2009-01-25 04:57:59');
/*!40000 ALTER TABLE `list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listvalues`
--

DROP TABLE IF EXISTS `listvalues`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `listvalues` (
  `ID` int(10) NOT NULL auto_increment,
  `ListID` int(10) NOT NULL,
  `ValueKey` varchar(100) NOT NULL,
  `ValueDesc` varchar(100) default NULL,
  `OrderID` int(10) NOT NULL default '0',
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ID`),
  KEY `ListID` (`ListID`),
  KEY `ValueKey` (`ValueKey`),
  KEY `listvalues__listID` (`ListID`),
  CONSTRAINT `listvalues__listID` FOREIGN KEY (`ListID`) REFERENCES `list` (`ListID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=25657 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `listvalues`
--

LOCK TABLES `listvalues` WRITE;
/*!40000 ALTER TABLE `listvalues` DISABLE KEYS */;
INSERT INTO `listvalues` VALUES (24727,519,'NEW',NULL,1,'2009-01-25 04:57:59'),(24728,519,'ACTIVE',NULL,2,'2009-01-25 04:57:59'),(24729,519,'LOGOFF',NULL,3,'2009-01-25 04:57:59'),(24730,519,'EXPIRED',NULL,4,'2009-01-25 04:57:59'),(24731,519,'DISCONNECTED',NULL,5,'2009-01-25 04:57:59'),(24732,520,'10','10/page',0,'2009-01-25 04:57:59'),(24733,520,'100','100/page',0,'2009-01-25 04:57:59'),(24734,520,'15','15/page',0,'2009-01-25 04:57:59'),(24735,520,'25','25/page',0,'2009-01-25 04:57:59'),(24736,520,'250','250/page',0,'2009-01-25 04:57:59'),(24737,520,'5','5/page',0,'2009-01-25 04:57:59'),(24738,520,'50','50/page',0,'2009-01-25 04:57:59'),(24739,521,'Yes',NULL,1,'2009-01-25 04:57:59'),(24740,521,'No',NULL,2,'2009-01-25 04:57:59'),(24741,522,'Yes',NULL,1,'2009-01-25 04:57:59'),(24742,522,'No',NULL,2,'2009-01-25 04:57:59'),(24743,522,'Don\'t Know',NULL,3,'2009-01-25 04:57:59'),(24744,523,'Yes',NULL,1,'2009-01-25 04:57:59'),(24745,523,'No',NULL,2,'2009-01-25 04:57:59'),(24746,523,'N/A',NULL,3,'2009-01-25 04:57:59'),(24747,524,'1','Yes',0,'2009-01-25 04:57:59'),(24748,524,'2','No',0,'2009-01-25 04:57:59'),(24749,525,'1','Yes',0,'2009-01-25 04:57:59'),(24750,525,'2','No',0,'2009-01-25 04:57:59'),(24751,525,'9','Don\'t Know',0,'2009-01-25 04:57:59'),(24752,526,'0','No',0,'2009-01-25 04:57:59'),(24753,526,'1','Yes',0,'2009-01-25 04:57:59'),(24754,526,'9','Don\'t Know',0,'2009-01-25 04:57:59'),(24755,527,'0','No',0,'2009-01-25 04:57:59'),(24756,527,'1','Yes',0,'2009-01-25 04:57:59'),(24757,527,'9','Unknown',0,'2009-01-25 04:57:59'),(24758,528,'1','Yes',1,'2009-05-12 00:17:48'),(24759,528,'0','No',2,'2009-05-12 00:17:48'),(24760,528,'9','N/A',3,'2009-05-12 00:17:48'),(24761,529,'0','No',0,'2009-01-25 04:57:59'),(24762,529,'1','Yes',0,'2009-01-25 04:57:59'),(25359,610,'0','Absent',1,'2009-05-12 21:10:57'),(25360,610,'1','Present',2,'2009-05-12 21:10:57'),(25361,611,'DIVORCED',NULL,0,'2009-01-25 04:57:59'),(25362,611,'MARRIED',NULL,0,'2009-01-25 04:57:59'),(25363,611,'SINGLE',NULL,0,'2009-01-25 04:57:59'),(25364,612,'GENERAL','Generic Consent',0,'2009-09-11 21:15:00'),(25365,613,'Email',NULL,0,'2009-01-25 04:57:59'),(25366,613,'Fax',NULL,0,'2009-01-25 04:57:59'),(25367,613,'Letter',NULL,0,'2009-01-25 04:57:59'),(25368,613,'Phone',NULL,0,'2009-01-25 04:57:59'),(25369,614,'BROTHER',NULL,0,'2009-01-25 04:57:59'),(25370,614,'BROTHER-IN-LAW',NULL,0,'2009-01-25 04:57:59'),(25371,614,'CONSERVATOR',NULL,0,'2009-01-25 04:57:59'),(25372,614,'DAUGHTER',NULL,0,'2009-01-25 04:57:59'),(25373,614,'FATHER',NULL,0,'2009-01-25 04:57:59'),(25374,614,'FRIEND',NULL,0,'2009-01-25 04:57:59'),(25375,614,'HUSBAND',NULL,0,'2009-01-25 04:57:59'),(25376,614,'MOTHER',NULL,0,'2009-01-25 04:57:59'),(25377,614,'NEPHEW',NULL,0,'2009-01-25 04:57:59'),(25378,614,'NIECE',NULL,0,'2009-01-25 04:57:59'),(25379,614,'NURSE',NULL,0,'2009-01-25 04:57:59'),(25380,614,'OTHER',NULL,0,'2009-01-25 04:57:59'),(25381,614,'PAID CAREGIVER',NULL,0,'2009-01-25 04:57:59'),(25382,614,'PARTNER',NULL,0,'2009-01-25 04:57:59'),(25383,614,'SISTER',NULL,0,'2009-01-25 04:57:59'),(25384,614,'SISTER-IN-LAW',NULL,0,'2009-01-25 04:57:59'),(25385,614,'SOCIAL WORKER',NULL,0,'2009-01-25 04:57:59'),(25386,614,'SON',NULL,0,'2009-01-25 04:57:59'),(25387,614,'WIFE',NULL,0,'2009-01-25 04:57:59'),(25388,615,'Scheduled',NULL,1,'2009-01-25 04:57:59'),(25389,615,'Canceled',NULL,2,'2009-01-25 04:57:59'),(25390,615,'Complete',NULL,2,'2009-01-25 04:57:59'),(25391,615,'Canceled-Patient Factor',NULL,3,'2009-01-25 04:57:59'),(25392,615,'Canceled-Situational',NULL,4,'2009-01-25 04:57:59'),(25393,615,'Canceled-Alt Test Given',NULL,5,'2009-01-25 04:57:59'),(25394,615,'Incomplete',NULL,6,'2009-01-25 04:57:59'),(25395,615,'Incomplete-Scoring',NULL,7,'2009-01-25 04:57:59'),(25396,615,'Incomplete-Not Returned',NULL,8,'2009-01-25 04:57:59'),(25397,615,'Unknown',NULL,9,'2009-01-25 04:57:59'),(25398,616,'Complete',NULL,1,'2009-01-25 04:57:59'),(25399,616,'Incomplete',NULL,2,'2009-01-25 04:57:59'),(25400,616,'Entry Problem',NULL,3,'2009-01-25 04:57:59'),(25401,616,'Returned To Examiner',NULL,4,'2009-01-25 04:57:59'),(25402,617,'Validation Needed',NULL,1,'2009-01-25 04:57:59'),(25403,617,'In Progress',NULL,2,'2009-01-25 04:57:59'),(25404,617,'Complete-OK',NULL,3,'2009-01-25 04:57:59'),(25405,617,'Complete-Problems',NULL,4,'2009-01-25 04:57:59'),(25406,617,'Complete-Invalid Data',NULL,5,'2009-01-25 04:57:59'),(25407,618,'OTHER',NULL,0,'2009-01-25 04:57:59'),(25408,618,'PRIMARY',NULL,0,'2009-01-25 04:57:59'),(25409,618,'REFERRING',NULL,0,'2009-01-25 04:57:59'),(25410,618,'REFERRING/PRIMARY',NULL,0,'2009-01-25 04:57:59'),(25411,619,'0',NULL,0,'2009-01-25 04:57:59'),(25412,619,'1',NULL,0,'2009-01-25 04:57:59'),(25413,619,'10',NULL,0,'2009-01-25 04:57:59'),(25414,619,'11',NULL,0,'2009-01-25 04:57:59'),(25415,619,'12','Completed High School',0,'2009-01-25 04:57:59'),(25416,619,'13',NULL,0,'2009-01-25 04:57:59'),(25417,619,'14','2 Year College Degree',0,'2009-01-25 04:57:59'),(25418,619,'15',NULL,0,'2009-01-25 04:57:59'),(25419,619,'16','4 Year College Degree',0,'2009-01-25 04:57:59'),(25420,619,'17',NULL,0,'2009-01-25 04:57:59'),(25421,619,'18','Master\'s Degree',0,'2009-01-25 04:57:59'),(25422,619,'19',NULL,0,'2009-01-25 04:57:59'),(25423,619,'2',NULL,0,'2009-01-25 04:57:59'),(25424,619,'20','Ph.D, M.D. or other Professional Degree',0,'2009-01-25 04:57:59'),(25425,619,'21',NULL,0,'2009-01-25 04:57:59'),(25426,619,'22',NULL,0,'2009-01-25 04:57:59'),(25427,619,'23',NULL,0,'2009-01-25 04:57:59'),(25428,619,'24',NULL,0,'2009-01-25 04:57:59'),(25429,619,'25',NULL,0,'2009-01-25 04:57:59'),(25430,619,'26',NULL,0,'2009-01-25 04:57:59'),(25431,619,'27',NULL,0,'2009-01-25 04:57:59'),(25432,619,'28',NULL,0,'2009-01-25 04:57:59'),(25433,619,'29',NULL,0,'2009-01-25 04:57:59'),(25434,619,'3',NULL,0,'2009-01-25 04:57:59'),(25435,619,'30',NULL,0,'2009-01-25 04:57:59'),(25436,619,'31',NULL,0,'2009-01-25 04:57:59'),(25437,619,'32',NULL,0,'2009-01-25 04:57:59'),(25438,619,'33',NULL,0,'2009-01-25 04:57:59'),(25439,619,'34',NULL,0,'2009-01-25 04:57:59'),(25440,619,'35',NULL,0,'2009-01-25 04:57:59'),(25441,619,'4',NULL,0,'2009-01-25 04:57:59'),(25442,619,'5',NULL,0,'2009-01-25 04:57:59'),(25443,619,'6',NULL,0,'2009-01-25 04:57:59'),(25444,619,'7',NULL,0,'2009-01-25 04:57:59'),(25445,619,'8',NULL,0,'2009-01-25 04:57:59'),(25446,619,'9',NULL,0,'2009-01-25 04:57:59'),(25447,619,'99','Not Determined',0,'2009-01-25 04:57:59'),(25448,620,'1','MALE',0,'2009-01-25 04:57:59'),(25449,620,'2','FEMALE',0,'2009-01-25 04:57:59'),(25450,621,'AMBIDEXTROUS',NULL,0,'2009-01-25 04:57:59'),(25451,621,'LEFT',NULL,0,'2009-01-25 04:57:59'),(25452,621,'RIGHT',NULL,0,'2009-01-25 04:57:59'),(25453,622,'BEHAVIORAL DISTURBANCES',NULL,0,'2009-01-25 04:57:59'),(25454,622,'INCOMPLETE DATA ENTRY',NULL,0,'2009-01-25 04:57:59'),(25455,622,'MOTOR DIFFICULTIES',NULL,2,'2009-01-25 04:57:59'),(25456,622,'SPEECH DIFFICULTIES',NULL,3,'2009-01-25 04:57:59'),(25457,622,'HEARING IMPAIRMENT',NULL,4,'2009-01-25 04:57:59'),(25458,622,'VISUAL IMPAIRMENT',NULL,5,'2009-01-25 04:57:59'),(25459,622,'ESL',NULL,6,'2009-01-25 04:57:59'),(25460,622,'MINIMAL EDUCATION',NULL,7,'2009-01-25 04:57:59'),(25461,622,'LACK OF EFFORT',NULL,8,'2009-01-25 04:57:59'),(25462,622,'UNRELIABLE INFORMANT',NULL,9,'2009-01-25 04:57:59'),(25463,622,'OTHER (Describe in Notes)',NULL,10,'2009-01-25 04:57:59'),(25464,622,'INCOMPLETE',NULL,11,'2009-01-25 04:57:59'),(25465,622,'UNAVAILABLE INFORMANT',NULL,12,'2009-01-25 04:57:59'),(25466,622,'LANGUAGE COMPREHENSION',NULL,13,'2009-01-25 04:57:59'),(25467,622,'COMPREHENSION OF TEST RULES',NULL,14,'2009-01-25 04:57:59'),(25468,622,'SPEED OF RESPONSE',NULL,15,'2009-01-25 04:57:59'),(25469,622,'INFORMANT HAS < DAILY CONTACT',NULL,16,'2009-01-25 04:57:59'),(25470,623,'GOOD FOR RESEARCH',NULL,0,'2009-01-25 04:57:59'),(25471,623,'NOT FOR RESEARCH',NULL,0,'2009-01-25 04:57:59'),(25472,623,'INCOMPLETE DATA ENTRY',NULL,3,'2009-01-25 04:57:59'),(25473,625,'1','NEVER MARRIED',0,'2009-01-25 04:57:59'),(25474,625,'2','MARRIED',0,'2009-01-25 04:57:59'),(25475,625,'3','WIDOWED',0,'2009-01-25 04:57:59'),(25476,625,'4','DIVORCED',0,'2009-01-25 04:57:59'),(25477,625,'5','SEPARATED',0,'2009-01-25 04:57:59'),(25478,625,'9','NOT DETERMINED',0,'2009-01-25 04:57:59'),(25479,626,'0','Normal',1,'2009-05-12 00:23:13'),(25480,626,'1','Abnormal',2,'2009-05-12 00:23:14'),(25481,627,'1','Labor / Craftsman / Mechanic',1,'2009-01-25 04:57:59'),(25482,627,'2','Professional (teacher, lawyer,...)',2,'2009-01-25 04:57:59'),(25483,627,'3','Health Care (physician, nurse,. . .)',3,'2009-01-25 04:57:59'),(25484,627,'4','Business Owner / Executive',4,'2009-01-25 04:57:59'),(25485,627,'5','Homemaker',5,'2009-01-25 04:57:59'),(25486,627,'6','Office / Clerical',6,'2009-01-25 04:57:59'),(25487,627,'7','Retail / Sales',7,'2009-01-25 04:57:59'),(25488,627,'8','Computer / Technical',8,'2009-01-25 04:57:59'),(25489,627,'9','Artistic / Creative',9,'2009-01-25 04:57:59'),(25490,627,'10','Other',10,'2009-01-25 04:57:59'),(25491,627,'0','None / Did Not Work',11,'2009-01-25 04:57:59'),(25492,628,'Cantonese','',0,'2009-01-25 04:57:59'),(25493,628,'English','',0,'2009-01-25 04:57:59'),(25494,628,'Japanese','',0,'2009-01-25 04:57:59'),(25495,628,'Mandarin','',0,'2009-01-25 04:57:59'),(25496,628,'Russian','',0,'2009-01-25 04:57:59'),(25497,628,'Spanish','',0,'2009-01-25 04:57:59'),(25498,628,'Unknown','',0,'2009-01-25 04:57:59'),(25499,629,'HOME 1',NULL,1,'2009-01-25 04:57:59'),(25500,629,'HOME 2',NULL,2,'2009-01-25 04:57:59'),(25501,629,'WORK',NULL,3,'2009-01-25 04:57:59'),(25502,629,'OFFICE',NULL,4,'2009-01-25 04:57:59'),(25503,629,'CELL',NULL,5,'2009-01-25 04:57:59'),(25504,629,'FAX',NULL,6,'2009-01-25 04:57:59'),(25505,629,'PAGER',NULL,7,'2009-01-25 04:57:59'),(25506,629,'OTHER',NULL,8,'2009-01-25 04:57:59'),(25507,630,'1','SPOUSE',0,'2009-01-25 04:57:59'),(25508,630,'10','OTHER',0,'2009-01-25 04:57:59'),(25509,630,'11','NO ONE HELPS THE PATIENT',0,'2009-01-25 04:57:59'),(25510,630,'2','SON',0,'2009-01-25 04:57:59'),(25511,630,'3','SON-IN-LAW',0,'2009-01-25 04:57:59'),(25512,630,'4','DAUGHTER',0,'2009-01-25 04:57:59'),(25513,630,'5','DAUGHTER-IN-LAW',0,'2009-01-25 04:57:59'),(25514,630,'6','OTHER RELATIVE',0,'2009-01-25 04:57:59'),(25515,630,'7','FRIEND',0,'2009-01-25 04:57:59'),(25516,630,'8','NEIGHBOR',0,'2009-01-25 04:57:59'),(25517,630,'9','PAID CAREGIVER',0,'2009-01-25 04:57:59'),(25518,631,'0','No',0,'2009-01-25 04:57:59'),(25519,631,'1','Possible',1,'2009-01-25 04:57:59'),(25520,631,'2','Probable',2,'2009-01-25 04:57:59'),(25521,632,'GENERAL','REFERRED',1,'2009-01-25 04:57:59'),(25522,632,'GENERAL','DEFERRED',5,'2009-01-25 04:57:59'),(25523,632,'GENERAL','ELIGIBLE',10,'2009-01-25 04:57:59'),(25524,632,'GENERAL','INELIGIBLE',15,'2009-01-25 04:57:59'),(25525,632,'GENERAL','DECLINED',20,'2009-01-25 04:57:59'),(25526,632,'GENERAL','ENROLLED',25,'2009-01-25 04:57:59'),(25527,632,'GENERAL','EXCLUDED',30,'2009-01-25 04:57:59'),(25528,632,'GENERAL','WITHDREW',35,'2009-01-25 04:57:59'),(25529,632,'GENERAL','INACTIVE',40,'2009-01-25 04:57:59'),(25530,632,'GENERAL','DECEASED',45,'2009-01-25 04:57:59'),(25531,632,'GENERAL','AUTOPSY',50,'2009-01-25 04:57:59'),(25532,632,'GENERAL','CLOSED',55,'2009-01-25 04:57:59'),(25533,633,'GENERAL','Enrollment',0,'2009-01-25 04:57:59'),(25534,634,'1','WHITE',0,'2009-01-25 04:57:59'),(25535,634,'10','LAOTIAN',0,'2009-01-25 04:57:59'),(25536,634,'11','VIETNAMESE',0,'2009-01-25 04:57:59'),(25537,634,'12','OTHER ASIAN',0,'2009-01-25 04:57:59'),(25538,634,'13','NATIVE HAWAIIAN',0,'2009-01-25 04:57:59'),(25539,634,'14','GUAMANIAN',0,'2009-01-25 04:57:59'),(25540,634,'15','SAMOAN',0,'2009-01-25 04:57:59'),(25541,634,'16','OTHER PACIFIC ISLANDER',0,'2009-01-25 04:57:59'),(25542,634,'17','NATIVE AMERICAN',0,'2009-01-25 04:57:59'),(25543,634,'18','OTHER RACE',0,'2009-01-25 04:57:59'),(25544,634,'2','BLACK/AFRICAN AMERICAN',0,'2009-01-25 04:57:59'),(25545,634,'3','ASIAN INDIAN',0,'2009-01-25 04:57:59'),(25546,634,'4','CAMBODIAN',0,'2009-01-25 04:57:59'),(25547,634,'5','CHINESE',0,'2009-01-25 04:57:59'),(25548,634,'6','FILIPINO',0,'2009-01-25 04:57:59'),(25549,634,'7','JAPANESE',0,'2009-01-25 04:57:59'),(25550,634,'8','HMONG',0,'2009-01-25 04:57:59'),(25551,634,'9','KOREAN',0,'2009-01-25 04:57:59'),(25552,634,'99','REFUSED TO STATE/UNKNOWN',0,'2009-01-25 04:57:59'),(25553,636,'-1','Patient Factor',0,'2009-01-25 04:57:59'),(25554,636,'-2','Situational Factor',0,'2009-01-25 04:57:59'),(25555,636,'-3','Alternate Test Given',0,'2009-01-25 04:57:59'),(25556,636,'-4','Refused',0,'2009-01-25 04:57:59'),(25557,637,'1','NORTH AMERICAN',0,'2009-01-25 04:57:59'),(25558,637,'2','SOUTH AMERICAN',0,'2009-01-25 04:57:59'),(25559,637,'3','CENTRAL AMERICAN',0,'2009-01-25 04:57:59'),(25560,637,'4','PUERTO RICAN',0,'2009-01-25 04:57:59'),(25561,637,'5','CUBAN',0,'2009-01-25 04:57:59'),(25562,637,'6','HAITIAN',0,'2009-01-25 04:57:59'),(25563,637,'7','OTHER',0,'2009-01-25 04:57:59'),(25564,639,'-6','Logical Skip',0,'2009-01-25 04:57:59'),(25565,639,'-7','Incomplete',0,'2009-01-25 04:57:59'),(25566,639,'-8','Unused Variable',0,'2009-01-25 04:57:59'),(25567,639,'-9','Missing Data',0,'2009-01-25 04:57:59'),(25568,640,'AB','Alberta',0,'2009-01-25 04:57:59'),(25569,640,'AK','ALASKA',0,'2009-01-25 04:57:59'),(25570,640,'AL','ALABAMA',0,'2009-01-25 04:57:59'),(25571,640,'AR','ARKANSAS',0,'2009-01-25 04:57:59'),(25572,640,'AZ','ARIZONA',0,'2009-01-25 04:57:59'),(25573,640,'BC','British Columbia',0,'2009-01-25 04:57:59'),(25574,640,'CA','CALIFORNIA',0,'2009-01-25 04:57:59'),(25575,640,'CO','COLORADO',0,'2009-01-25 04:57:59'),(25576,640,'CT','CONNECTICUT',0,'2009-01-25 04:57:59'),(25577,640,'DC','DISTRICT OF COLUMBIA',0,'2009-01-25 04:57:59'),(25578,640,'DE','DELAWARE',0,'2009-01-25 04:57:59'),(25579,640,'FL','FLORIDA',0,'2009-01-25 04:57:59'),(25580,640,'GA','GEORGIA',0,'2009-01-25 04:57:59'),(25581,640,'HI','HAWAII',0,'2009-01-25 04:57:59'),(25582,640,'IA','IOWA',0,'2009-01-25 04:57:59'),(25583,640,'ID','IDAHO',0,'2009-01-25 04:57:59'),(25584,640,'IL','ILLINOIS',0,'2009-01-25 04:57:59'),(25585,640,'IN','INDIANA',0,'2009-01-25 04:57:59'),(25586,640,'KS','KANSAS',0,'2009-01-25 04:57:59'),(25587,640,'KY','KENTUCKY',0,'2009-01-25 04:57:59'),(25588,640,'LA','LOUISIANA',0,'2009-01-25 04:57:59'),(25589,640,'MA','MASSACHUSETTS',0,'2009-01-25 04:57:59'),(25590,640,'MB','Manitoba',0,'2009-01-25 04:57:59'),(25591,640,'MD','MARYLAND',0,'2009-01-25 04:57:59'),(25592,640,'ME','MAINE',0,'2009-01-25 04:57:59'),(25593,640,'MI','MICHIGAN',0,'2009-01-25 04:57:59'),(25594,640,'MN','MINNESOTA',0,'2009-01-25 04:57:59'),(25595,640,'MO','MISSOURI',0,'2009-01-25 04:57:59'),(25596,640,'MS','MISSISSIPPI',0,'2009-01-25 04:57:59'),(25597,640,'MT','MONTANA',0,'2009-01-25 04:57:59'),(25598,640,'NB','New Brunswick',0,'2009-01-25 04:57:59'),(25599,640,'NC','NORTH CAROLINA',0,'2009-01-25 04:57:59'),(25600,640,'ND','NORTH DAKOTA',0,'2009-01-25 04:57:59'),(25601,640,'NE','NEBRASKA',0,'2009-01-25 04:57:59'),(25602,640,'NF','Newfoundland',0,'2009-01-25 04:57:59'),(25603,640,'NH','NEW HAMPSHIRE',0,'2009-01-25 04:57:59'),(25604,640,'NJ','NEW JERSEY',0,'2009-01-25 04:57:59'),(25605,640,'NM','NEW MEXICO',0,'2009-01-25 04:57:59'),(25606,640,'NS','Nova Scotia',0,'2009-01-25 04:57:59'),(25607,640,'NT','Northwest Territories',0,'2009-01-25 04:57:59'),(25608,640,'NV','NEVADA',0,'2009-01-25 04:57:59'),(25609,640,'NY','NEW YORK',0,'2009-01-25 04:57:59'),(25610,640,'OH','OHIO',0,'2009-01-25 04:57:59'),(25611,640,'OK','OKLAHOMA',0,'2009-01-25 04:57:59'),(25612,640,'ON','Ontario',0,'2009-01-25 04:57:59'),(25613,640,'OR','OREGON',0,'2009-01-25 04:57:59'),(25614,640,'PA','PENNSYLVANIA',0,'2009-01-25 04:57:59'),(25615,640,'PQ','Quebec',0,'2009-01-25 04:57:59'),(25616,640,'RI','RHODE ISLAND',0,'2009-01-25 04:57:59'),(25617,640,'SC','SOUTH CAROLINA',0,'2009-01-25 04:57:59'),(25618,640,'SD','SOUTH DAKOTA',0,'2009-01-25 04:57:59'),(25619,640,'SK','Saskatchewan',0,'2009-01-25 04:57:59'),(25620,640,'TN','TENNESSEE',0,'2009-01-25 04:57:59'),(25621,640,'TX','TEXAS',0,'2009-01-25 04:57:59'),(25622,640,'UT','UTAH',0,'2009-01-25 04:57:59'),(25623,640,'VA','VIRGINIA',0,'2009-01-25 04:57:59'),(25624,640,'VT','VERMONT',0,'2009-01-25 04:57:59'),(25625,640,'WA','WASHINGTON',0,'2009-01-25 04:57:59'),(25626,640,'WI','WISCONSIN',0,'2009-01-25 04:57:59'),(25627,640,'WV','WEST VIRGINIA',0,'2009-01-25 04:57:59'),(25628,640,'WY','WYOMING',0,'2009-01-25 04:57:59'),(25629,641,'CLOSED',NULL,0,'2009-01-25 04:57:59'),(25630,641,'OPEN',NULL,0,'2009-01-25 04:57:59'),(25631,642,'CALL DOCTOR',NULL,0,'2009-01-25 04:57:59'),(25632,642,'CALL PATIENT/CAREGIVER',NULL,0,'2009-01-25 04:57:59'),(25633,642,'EMAIL',NULL,0,'2009-01-25 04:57:59'),(25634,642,'GENERIC TASK',NULL,0,'2009-01-25 04:57:59'),(25635,642,'LOCATE',NULL,0,'2009-01-25 04:57:59'),(25636,642,'MAKE DECISION',NULL,0,'2009-01-25 04:57:59'),(25637,642,'SCHEDULE VISIT',NULL,0,'2009-01-25 04:57:59'),(25638,642,'SEND BY FAX',NULL,0,'2009-01-25 04:57:59'),(25639,642,'SEND BY MAIL',NULL,0,'2009-01-25 04:57:59'),(25640,643,'Usually',NULL,1,'2009-01-25 04:57:59'),(25641,643,'Sometimes',NULL,2,'2009-01-25 04:57:59'),(25642,643,'Rarely',NULL,3,'2009-01-25 04:57:59'),(25643,644,'Usually',NULL,1,'2009-01-25 04:57:59'),(25644,644,'Sometimes',NULL,2,'2009-01-25 04:57:59'),(25645,644,'Rarely',NULL,3,'2009-01-25 04:57:59'),(25646,644,'Don\'t Know',NULL,4,'2009-01-25 04:57:59'),(25647,646,'CAME IN',NULL,0,'2009-01-25 04:57:59'),(25648,646,'COMPLETE',NULL,0,'2009-01-25 04:57:59'),(25649,646,'NO SHOW',NULL,0,'2009-01-25 04:57:59'),(25650,646,'PATIENT CANCELED',NULL,0,'2009-01-25 04:57:59'),(25651,646,'SCHEDULED',NULL,0,'2009-01-25 04:57:59'),(25652,646,'CLINIC CANCELLED',NULL,0,'2009-01-25 04:57:59'),(25653,648,'0','Yes',1,'2009-01-25 04:57:59'),(25654,648,'1','No',2,'2009-01-25 04:57:59'),(25655,649,'1','Yes',1,'2009-01-25 04:57:59'),(25656,649,'0','No',2,'2009-01-25 04:57:59');
/*!40000 ALTER TABLE `listvalues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `patient` (
  `PIDN` int(10) NOT NULL auto_increment,
  `LName` varchar(25) NOT NULL,
  `MInitial` char(1) default NULL,
  `FName` varchar(25) NOT NULL,
  `Suffix` varchar(15) default NULL,
  `Degree` varchar(15) default NULL,
  `DOB` datetime default NULL,
  `AGE` int(10) default NULL,
  `Gender` tinyint(3) default NULL,
  `Hand` varchar(25) default NULL,
  `Deceased` tinyint(1) NOT NULL default '0',
  `DOD` datetime default NULL,
  `PrimaryLanguage` varchar(25) default NULL,
  `TestingLanguage` varchar(25) default NULL,
  `TransNeeded` tinyint(1) default '0',
  `TransLanguage` varchar(25) default NULL,
  `EnterBy` varchar(25) default NULL,
  `DupNameFlag` tinyint(1) NOT NULL default '0',
  `FullNameRev` varchar(100) default NULL,
  `FullName` varchar(100) default NULL,
  `FullNameRevNoSuffix` varchar(100) default NULL,
  `FullNameNoSuffix` varchar(100) default NULL,
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`PIDN`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientconsent`
--

DROP TABLE IF EXISTS `patientconsent`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `patientconsent` (
  `ConsentID` int(10) NOT NULL auto_increment,
  `PIDN` int(10) NOT NULL,
  `CareID` int(10) default NULL,
  `ProjName` varchar(75) NOT NULL,
  `ConsentType` varchar(50) NOT NULL,
  `ConsentDate` timestamp NULL default NULL,
  `ExpirationDate` datetime default NULL,
  `WithdrawlDate` datetime default NULL,
  `Note` varchar(100) default NULL,
  `CapacityReviewBy` varchar(25) default NULL,
  `ConsentRevision` varchar(10) default NULL,
  `ConsentDeclined` varchar(10) default NULL,
  `CTreasearch` varchar(10) default NULL,
  `CTneuro` varchar(10) default NULL,
  `CTDNA` varchar(10) default NULL,
  `CTGenetic` varchar(10) default NULL,
  `CTGeneticShare` varchar(10) default NULL,
  `CTlumbar` varchar(10) default NULL,
  `CTvideo` varchar(10) default NULL,
  `CTaudio` varchar(10) default NULL,
  `CTmediaedu` varchar(10) default NULL,
  `CT1point5T` varchar(10) default NULL,
  `CT4t` varchar(10) default NULL,
  `CTotherstudy` varchar(10) default NULL,
  `CTfollowup` varchar(10) default NULL,
  `CTmusic` varchar(10) default NULL,
  `CTpart` varchar(10) default NULL,
  `CTcarepart` varchar(10) default NULL,
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ConsentID`),
  KEY `patientconsent__PIDN` (`PIDN`),
  KEY `patientconsent__ProjName` (`ProjName`),
  CONSTRAINT `patientconsent__PIDN` FOREIGN KEY (`PIDN`) REFERENCES `patient` (`PIDN`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `patientconsent__ProjName` FOREIGN KEY (`ProjName`) REFERENCES `projectunit` (`ProjUnitDesc`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `patientconsent`
--

LOCK TABLES `patientconsent` WRITE;
/*!40000 ALTER TABLE `patientconsent` DISABLE KEYS */;
/*!40000 ALTER TABLE `patientconsent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientdoctors`
--

DROP TABLE IF EXISTS `patientdoctors`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `patientdoctors` (
  `PIDNDocID` int(10) NOT NULL auto_increment,
  `DocID` int(10) NOT NULL,
  `PIDN` int(10) NOT NULL,
  `DocStat` varchar(25) default NULL,
  `DocNote` varchar(100) default NULL,
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`PIDNDocID`),
  KEY `patientdoctors__PIDN` (`PIDN`),
  KEY `patientdoctors__DocID` (`DocID`),
  CONSTRAINT `patientdoctors__DocID` FOREIGN KEY (`DocID`) REFERENCES `doctor` (`DocID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `patientdoctors__PIDN` FOREIGN KEY (`PIDN`) REFERENCES `patient` (`PIDN`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `patientdoctors`
--

LOCK TABLES `patientdoctors` WRITE;
/*!40000 ALTER TABLE `patientdoctors` DISABLE KEYS */;
/*!40000 ALTER TABLE `patientdoctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preference`
--

DROP TABLE IF EXISTS `preference`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `preference` (
  `preference_id` int(11) NOT NULL auto_increment,
  `user_id` int(10) default NULL,
  `context` varchar(255) default NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(1000) default NULL,
  `value` varchar(255) default NULL,
  `visible` int(11) NOT NULL default '1',
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`preference_id`),
  KEY `preference__user_id` (`user_id`),
  CONSTRAINT `preference__user_id` FOREIGN KEY (`user_id`) REFERENCES `authuser` (`UID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `preference`
--

LOCK TABLES `preference` WRITE;
/*!40000 ALTER TABLE `preference` DISABLE KEYS */;
INSERT INTO `preference` VALUES (1,NULL,'calendar','displayRange','Default View (e.g. Month, Week)','Month',0,'2010-01-26 14:10:06'),(2,NULL,'calendar','showDayLength','Sets day length in week or day views to display either full day or work day','Work Day',0,'2010-01-26 17:13:23'),(3,NULL,'CFR_confocal_calendar','receive_cancellation_alert','Set to YES if you wish to receive an email alert when a scheduled reservation for the confocal microscope has been cancelled','1',1,'2010-02-08 13:20:46'),(4,10,'calendar','showDayLength','Sets day length in week or day views to display either full day or work day','Work Day',0,'2010-01-26 17:13:23'),(5,10,'calendar','displayRange','Default View (e.g. Month, Week)','Month',0,'2010-01-26 14:10:06');
/*!40000 ALTER TABLE `preference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectunit`
--

DROP TABLE IF EXISTS `projectunit`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `projectunit` (
  `ProjUnitID` int(10) NOT NULL auto_increment,
  `Project` varchar(25) NOT NULL,
  `Unit` varchar(25) default NULL,
  `Status` varchar(25) NOT NULL default 'ACTIVE',
  `EffDate` timestamp NULL default NULL,
  `ExpDate` datetime default NULL,
  `ProjUnitDesc` varchar(75) default NULL,
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ProjUnitID`),
  KEY `projectunit_ProjUnitDesc` (`ProjUnitDesc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `projectunit`
--

LOCK TABLES `projectunit` WRITE;
/*!40000 ALTER TABLE `projectunit` DISABLE KEYS */;
/*!40000 ALTER TABLE `projectunit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource_calendar`
--

DROP TABLE IF EXISTS `resource_calendar`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `resource_calendar` (
  `calendar_id` int(10) unsigned NOT NULL,
  `resource_type` varchar(25) NOT NULL,
  `location` varchar(100) default NULL,
  `contact_id` int(10) NOT NULL,
  PRIMARY KEY  (`calendar_id`),
  KEY `resource_calendar__calendar` (`calendar_id`),
  KEY `resource_calendar__user_id` (`contact_id`),
  CONSTRAINT `resource_calendar__calendar` FOREIGN KEY (`calendar_id`) REFERENCES `calendar` (`calendar_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `resource_calendar__user_id` FOREIGN KEY (`contact_id`) REFERENCES `authuser` (`UID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `resource_calendar`
--

LOCK TABLES `resource_calendar` WRITE;
/*!40000 ALTER TABLE `resource_calendar` DISABLE KEYS */;
/*!40000 ALTER TABLE `resource_calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tasks` (
  `TaskID` int(10) NOT NULL auto_increment,
  `PIDN` int(10) NOT NULL,
  `ProjName` varchar(75) default NULL,
  `OpenedDate` datetime default NULL,
  `OpenedBy` varchar(25) default NULL,
  `TaskType` varchar(25) default NULL,
  `TaskDesc` varchar(255) default NULL,
  `DueDate` datetime default NULL,
  `TaskStatus` varchar(50) default NULL,
  `AssignedTo` varchar(25) default NULL,
  `WorkingNotes` varchar(255) default NULL,
  `ClosedDate` datetime default NULL,
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`TaskID`),
  KEY `tasks__PIDN` (`PIDN`),
  KEY `tasks__ProjName` (`ProjName`),
  CONSTRAINT `tasks__PIDN` FOREIGN KEY (`PIDN`) REFERENCES `patient` (`PIDN`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `tasks__ProjName` FOREIGN KEY (`ProjName`) REFERENCES `projectunit` (`ProjUnitDesc`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uploadedfiles`
--

DROP TABLE IF EXISTS `uploadedfiles`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `uploadedfiles` (
  `InstrID` int(10) NOT NULL,
  `FileName` varchar(500) default NULL,
  `FileContents` varchar(16) default NULL,
  PRIMARY KEY  (`InstrID`),
  KEY `uploadedfiles__InstrID` (`InstrID`),
  CONSTRAINT `uploadedfiles__InstrID` FOREIGN KEY (`InstrID`) REFERENCES `instrumenttracking` (`InstrID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `uploadedfiles`
--

LOCK TABLES `uploadedfiles` WRITE;
/*!40000 ALTER TABLE `uploadedfiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `uploadedfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versionhistory`
--

DROP TABLE IF EXISTS `versionhistory`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `versionhistory` (
  `Module` varchar(25) NOT NULL,
  `Version` varchar(10) NOT NULL,
  `VersionDate` datetime NOT NULL,
  `Major` int(10) NOT NULL,
  `Minor` int(10) NOT NULL,
  `Fix` int(10) NOT NULL,
  `UpdateRequired` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`Module`,`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `versionhistory`
--

LOCK TABLES `versionhistory` WRITE;
/*!40000 ALTER TABLE `versionhistory` DISABLE KEYS */;
INSERT INTO `versionhistory` VALUES ('lava-core-model','3.0.3','2009-07-02 15:51:49',3,0,3,1),('lava-crms-model','3.0.3','2009-07-02 16:01:25',3,0,3,1);
/*!40000 ALTER TABLE `versionhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viewproperty`
--

DROP TABLE IF EXISTS `viewproperty`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `viewproperty` (
  `id` int(10) NOT NULL auto_increment,
  `messageCode` varchar(255) default NULL,
  `locale` varchar(10) NOT NULL default 'en',
  `instance` varchar(25) NOT NULL default 'lava',
  `scope` varchar(25) NOT NULL,
  `prefix` varchar(50) default NULL,
  `entity` varchar(100) NOT NULL,
  `property` varchar(100) NOT NULL,
  `section` varchar(50) default NULL,
  `context` varchar(10) default NULL,
  `style` varchar(25) default NULL,
  `required` varchar(3) default NULL,
  `label` varchar(500) default NULL,
  `maxLength` smallint(5) default NULL,
  `size` smallint(5) default NULL,
  `indentLevel` smallint(5) default '0',
  `attributes` varchar(100) default NULL,
  `list` varchar(50) default NULL,
  `listAttributes` varchar(100) default NULL,
  `propOrder` int(10) default NULL,
  `quickHelp` varchar(500) default NULL,
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5341 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `viewproperty`
--

LOCK TABLES `viewproperty` WRITE;
/*!40000 ALTER TABLE `viewproperty` DISABLE KEYS */;
INSERT INTO `viewproperty` VALUES (3924,'*.appointment.id','en','lava','core',NULL,'appointment','id','details','c','numeric','Yes','ID',NULL,NULL,0,NULL,NULL,NULL,1,NULL,'2009-03-31 20:35:39'),(3925,'*.appointment.calendar.name','en','lava','core',NULL,'appointment','calendar.name','details','c','string','No','Calendar',NULL,NULL,0,NULL,NULL,NULL,2,NULL,'2009-03-31 20:35:39'),(3926,'*.appointment.organizerId','en','lava','core','','appointment','organizerId','details','c','range','No','Organizer',NULL,NULL,NULL,'','appointment.organizer','',3,'','2009-03-31 20:35:39'),(3927,'*.appointment.type','en','lava','core',NULL,'appointment','type','details','i','range','No','Type',NULL,NULL,0,NULL,'appointment.type',NULL,4,NULL,'2009-03-31 20:35:39'),(3928,'*.appointment.description','en','lava','core',NULL,'appointment','description','details','i','text','No','Description',100,NULL,0,NULL,NULL,NULL,5,NULL,'2009-03-31 20:35:39'),(3929,'*.appointment.location','en','lava','core',NULL,'appointment','location','details','i','string','No','Location',100,NULL,0,NULL,NULL,NULL,6,NULL,'2009-03-31 20:35:39'),(3930,'*.appointment.startDate','en','lava','core','','appointment','startDate','details','i','date','Yes','Start Date',NULL,10,0,NULL,NULL,NULL,7,NULL,'2009-04-16 15:31:52'),(3931,'*.appointment.startTime','en','lava','core','','appointment','startTime','details','i','time','Yes','Time',NULL,NULL,0,'',NULL,'',8,'','2009-04-02 04:49:05'),(3932,'*.appointment.endDate','en','lava','core','','appointment','endDate','details','i','date','Yes','End Date',NULL,10,0,NULL,NULL,NULL,9,NULL,'2009-04-27 20:47:43'),(3933,'*.appointment.endTime','en','lava','core','','appointment','endTime','details','i','time','Yes','Time',NULL,NULL,0,NULL,NULL,NULL,10,NULL,'2009-04-16 15:30:06'),(3934,'*.appointment.status','en','lava','core',NULL,'appointment','status','details','i','range','No','Status',NULL,NULL,0,NULL,'resourceReservation.status',NULL,10,NULL,'2009-05-11 19:43:15'),(3935,'*.appointment.notes','en','lava','core',NULL,'appointment','notes','notes','i','unlimitedtext','No','Notes',NULL,NULL,0,'rows=\"10\" cols=\"45\"',NULL,NULL,11,NULL,'2009-03-31 20:35:39'),(3936,'*.appointment.organizer.userName','en','lava','core',NULL,'appointment','organizer.userName','details','c','string','No','Organizer',NULL,NULL,0,NULL,NULL,NULL,14,'Organizer Name','2009-06-11 17:00:00'),(3937,'*.appointment_change.type','en','lava','core',NULL,'appointment_change','type','details','c','range','Yes','Change Type',25,NULL,0,NULL,'resourceReservationChange.type',NULL,3,NULL,'2009-05-11 20:29:52'),(3938,'*.appointment_change.description','en','lava','core',NULL,'appointment_change','description','details','c','string','No','Description',NULL,NULL,0,NULL,NULL,NULL,4,NULL,'2009-05-11 20:29:52'),(3939,'*.appointment_change.changeBy.userName','en','lava','core',NULL,'appointment_change','changeBy.userName','details','c','string','Yes','Change By',NULL,NULL,0,NULL,NULL,NULL,5,NULL,'2009-05-11 20:29:52'),(3940,'*.appointment_change.changeTimestamp','en','lava','core',NULL,'appointment_change','changeTimestamp','details','c','timestamp','Yes','Change Timestamp',NULL,NULL,0,NULL,NULL,NULL,6,NULL,'2009-05-11 20:29:52'),(3941,'*.attendee.userId','en','lava','core',NULL,'attendee','userId','details','i','range','Yes','Attendee',NULL,NULL,0,NULL,'attendee.attendee',NULL,3,'Attendee','2009-06-03 20:40:16'),(3942,'*.attendee.role','en','lava','core',NULL,'attendee','role','details','i','range','Yes','Role',25,NULL,0,NULL,'attendee.role',NULL,4,'Attendee Role','2009-06-03 20:40:16'),(3943,'*.attendee.status','en','lava','core',NULL,'attendee','status','details','i','range','Yes','Status',25,NULL,0,NULL,'attendee.status',NULL,5,'Attendee Status','2009-06-03 20:40:16'),(3944,'*.attendee.notes','en','lava','core',NULL,'attendee','notes','details','i','test','No','Notes',100,NULL,0,'rows=\"2\" cols=\"25\"',NULL,NULL,6,'Notes','2009-06-03 20:40:16'),(3945,'*.auditEntityHistory.id','en','lava','core',NULL,'auditEntityHistory','id',NULL,'c','numeric','Yes','ID',NULL,NULL,0,NULL,NULL,NULL,1,'Unique Record ID','2009-01-25 05:28:51'),(3946,'*.auditEntityHistory.entityId','en','lava','core',NULL,'auditEntityHistory','entityId',NULL,'c','numeric','Yes','Entity ID',NULL,NULL,0,NULL,NULL,NULL,3,'ID of the Entity','2009-01-25 05:28:51'),(3947,'*.auditEntityHistory.entity','en','lava','core',NULL,'auditEntityHistory','entity',NULL,'c','string','Yes','Entity',100,NULL,0,NULL,NULL,NULL,4,'Base entity name, e.g. Patient, Instrument (this is the entity name where the autoincrementing id field is defined)','2009-01-25 05:28:51'),(3948,'*.auditEntityHistory.entityType','en','lava','core',NULL,'auditEntityHistory','entityType',NULL,'c','string','No','Entity Type',100,NULL,0,NULL,NULL,NULL,5,'Optional subtype of the entity (e.g. MacPatient, BedsideScreen','2009-01-25 05:28:51'),(3949,'*.auditEntityHistory.auditType','en','lava','core',NULL,'auditEntityHistory','auditType',NULL,'c','string','Yes','Audit Type',10,NULL,0,NULL,NULL,NULL,6,'The type of auditing for the entity (e.g. CREATE, READ, UPDATE, DELETE)','2009-01-25 05:28:51'),(3950,'*.auditEventHistory.id','en','lava','core',NULL,'auditEventHistory','id',NULL,'c','numeric','Yes','ID',NULL,NULL,0,NULL,NULL,NULL,1,'Unique Record ID','2009-01-25 05:28:51'),(3951,'*.auditEventHistory.auditUser','en','lava','core',NULL,'auditEventHistory','auditUser',NULL,'c','string','Yes','Audit User',50,NULL,0,NULL,NULL,NULL,2,'The user who initiated the event','2009-01-25 05:28:51'),(3952,'*.auditEventHistory.auditHost','en','lava','core',NULL,'auditEventHistory','auditHost',NULL,'c','string','Yes','Audit Host',25,NULL,0,NULL,NULL,NULL,3,'The host (machine) that the event was initiated from','2009-01-25 05:28:51'),(3953,'*.auditEventHistory.auditTime','en','lava','core',NULL,'auditEventHistory','auditTime',NULL,'c','datetime','Yes','Audit Time',NULL,NULL,0,NULL,NULL,NULL,4,'The time that the event was initiated','2009-01-25 05:28:51'),(3954,'*.auditEventHistory.action','en','lava','core',NULL,'auditEventHistory','action',NULL,'c','string','Yes','Action',255,NULL,0,NULL,NULL,NULL,5,'The action id od the event','2009-01-25 05:28:51'),(3955,'*.auditEventHistory.actionEvent','en','lava','core',NULL,'auditEventHistory','actionEvent',NULL,'c','string','Yes','Action Event',50,NULL,0,NULL,NULL,NULL,6,'The event type of the event (e.g. add, view, delete, edit, list)','2009-01-25 05:28:51'),(3956,'*.auditEventHistory.actionIdParam','en','lava','core',NULL,'auditEventHistory','actionIdParam',NULL,'c','string','No','ID Param',50,NULL,0,NULL,NULL,NULL,7,'If an ID parameter was supplied for the event','2009-01-25 05:28:51'),(3957,'*.auditEventHistory.eventNote','en','lava','core',NULL,'auditEventHistory','eventNote',NULL,'c','text','No','Note',255,NULL,0,NULL,NULL,NULL,8,'An optional note field for the event','2009-01-25 05:28:51'),(3958,'*.auditEventHistory.exception','en','lava','core',NULL,'auditEventHistory','exception',NULL,'c','text','No','Exception',255,NULL,0,NULL,NULL,NULL,9,'If the event resulted in a handled exception','2009-01-25 05:28:51'),(3959,'*.auditEventHistory.exceptionMessage','en','lava','core',NULL,'auditEventHistory','exceptionMessage',NULL,'c','text','No','Exception Message',255,NULL,0,NULL,NULL,NULL,10,'The message associated with the handled exception.','2009-01-25 05:28:51'),(3960,'*.auditPropertyHistory.id','en','lava','core',NULL,'auditPropertyHistory','id',NULL,'c','numeric','Yes','ID',NULL,NULL,0,NULL,NULL,NULL,1,'Unique Record ID','2009-01-25 05:28:51'),(3961,'*.auditPropertyHistory.property','en','lava','core',NULL,'auditPropertyHistory','property',NULL,'c','string','Yes','Property Name',100,NULL,0,NULL,NULL,NULL,3,'The name of the entity property','2009-01-25 05:28:51'),(3962,'*.auditPropertyHistory.indexKey','en','lava','core',NULL,'auditPropertyHistory','indexKey',NULL,'c','string','No','Index Key Value',100,NULL,0,NULL,NULL,NULL,4,'If the property is a collection, the index into the collection for this particular subproperty value','2009-01-25 05:28:51'),(3963,'*.auditPropertyHistory.subproperty','en','lava','core',NULL,'auditPropertyHistory','subproperty',NULL,'c','string','No','Subproperty Name',255,NULL,0,NULL,NULL,NULL,5,'The name of the subproperty when theproperty is a collection','2009-01-25 05:28:51'),(3964,'*.auditPropertyHistory.oldValue','en','lava','core',NULL,'auditPropertyHistory','oldValue',NULL,'c','string','Yes','Old Value',255,NULL,0,NULL,NULL,NULL,6,'The old value or {CREATED} when the record is for a new value','2009-01-25 05:28:51'),(3965,'*.auditPropertyHistory.newValue','en','lava','core',NULL,'auditPropertyHistory','newValue',NULL,'c','string','Yes','New Value',255,NULL,0,NULL,NULL,NULL,7,'The new value or {DELETED} when the record is for a property deletion','2009-01-25 05:28:51'),(3966,'*.auditPropertyHistory.auditTimestamp','en','lava','core',NULL,'auditPropertyHistory','auditTimestamp',NULL,'c','timestamp','Yes','Audit Time',NULL,NULL,0,NULL,NULL,NULL,8,'The time of the event (copied from the Audit_Event table for convenience','2009-01-25 05:28:51'),(3967,'*.auditPropertyHistory.oldText','en','lava','core',NULL,'auditPropertyHistory','oldText',NULL,'c','unlimitedtext','Yes','Old Text Value',16,NULL,0,'rows=\"10\" cols=\"80\"',NULL,NULL,9,'The old text value or {CREATED} if the record if for a property creation','2009-01-25 05:28:51'),(3968,'*.auditPropertyHistory.newText','en','lava','core',NULL,'auditPropertyHistory','newText',NULL,'c','unlimitedtext','Yes','New Text Value',16,NULL,0,'rows=\"10\" cols=\"80\"',NULL,NULL,10,'The new text value of {DELETED} if the record is for a property deletion','2009-01-25 05:28:51'),(3969,'*.authGroup.id','en','lava','core',NULL,'authGroup','id','details','c','numeric','Yes','ID',NULL,NULL,0,NULL,NULL,NULL,1,'Unique ID for the authorization group','2009-01-25 05:28:51'),(3970,'*.authGroup.disabled','en','lava','core',NULL,'authGroup','disabled','status','i','range','Yes','Disabled',NULL,NULL,0,NULL,'generic.yesNoZero',NULL,2,'Disabled','2009-01-25 05:28:51'),(3971,'*.authGroup.groupName','en','lava','core',NULL,'authGroup','groupName','details','i','string','Yes','Group Name',50,50,0,NULL,NULL,NULL,2,'Name of the authorization group','2009-01-25 05:28:51'),(3972,'*.authGroup.groupNameWithStatus','en','lava','core',NULL,'authGroup','groupNameWithStatus',NULL,'c','string','Yes','Group Name',50,50,0,NULL,NULL,NULL,2,'Name of the authorization group','2009-01-25 05:28:51'),(3973,'*.authGroup.effectiveDate','en','lava','core',NULL,'authGroup','effectiveDate','status','i','date','Yes','Effective Date',NULL,NULL,0,NULL,NULL,NULL,3,'Effective Date of the authorization group','2009-01-25 05:28:51'),(3974,'*.authGroup.expirationDate','en','lava','core',NULL,'authGroup','expirationDate','status','i','date','Yes','Expiration Date',NULL,NULL,0,NULL,NULL,NULL,4,'Expiration Date of the authorization group','2009-01-25 05:28:51'),(3975,'*.authGroup.notes','en','lava','core',NULL,'authGroup','notes','note','i','text','Yes','Notes',255,NULL,0,'rows=\"3\" cols=\"40\"',NULL,NULL,5,'Notes about the authorization group','2009-01-25 05:28:51'),(3976,'*.authPermission.id','en','lava','core',NULL,'authPermission','id','details','c','numeric','Yes','Permission ID',NULL,NULL,0,NULL,NULL,NULL,1,'Unique ID for the permission','2009-01-25 05:28:51'),(3977,'*.authPermission.role.id','en','lava','core',NULL,'authPermission','role.id',NULL,'c','numeric','Yes','Role ID',NULL,NULL,0,NULL,NULL,NULL,1,'Unique id for the role','2009-01-25 05:28:51'),(3978,'*.authPermission.role.roleName','en','lava','core',NULL,'authPermission','role.roleName',NULL,'i','string','Yes','Role Name',25,NULL,0,NULL,NULL,NULL,2,'Name of the role','2009-01-25 05:28:51'),(3979,'*.authPermission.roleId','en','lava','core',NULL,'authPermission','roleId','details','i','range','Yes','Role',25,NULL,0,NULL,'auth.roles',NULL,2,'The role that the permission applies to','2009-01-25 05:28:51'),(3980,'*.authPermission.permitDeny','en','lava','core',NULL,'authPermission','permitDeny','details','i','range','Yes','Permit / Deny',10,NULL,0,NULL,'authPermission.permitDeny',NULL,3,'Whether to PERMIT or DENY the permission to the role','2009-01-25 05:28:51'),(3981,'*.authPermission.scope','en','lava','core','','authPermission','scope','details','i','string','Yes','Scope',25,0,0,'','','',4,'Scope','2009-01-01 08:00:00'),(3982,'*.authPermission.module','en','lava','core',NULL,'authPermission','module','details','i','suggest','Yes','Module',25,NULL,0,NULL,NULL,NULL,5,'the moule that the permission covers','2009-01-25 05:28:51'),(3983,'*.authPermission.section','en','lava','core',NULL,'authPermission','section','details','i','suggest','Yes','Section',25,NULL,0,NULL,NULL,NULL,6,'the section that the permission covers','2009-01-25 05:28:51'),(3984,'*.authPermission.target','en','lava','core',NULL,'authPermission','target','details','i','suggest','Yes','Target',25,NULL,0,NULL,NULL,NULL,7,'the target that the permission covers','2009-01-25 05:28:51'),(3985,'*.authPermission.mode','en','lava','core',NULL,'authPermission','mode','details','i','suggest','Yes','Mode',25,NULL,0,NULL,NULL,NULL,8,'the mode that the permission covers','2009-01-25 05:28:51'),(3986,'*.authPermission.notes','en','lava','core',NULL,'authPermission','notes','note','i','text','No','Notes',100,NULL,0,'rows=\"2\" cols=\"40\"',NULL,NULL,9,'Notes','2009-01-25 05:28:51'),(3987,'*.authRole.id','en','lava','core',NULL,'authRole','id',NULL,'c','numeric','Yes','Role ID',NULL,NULL,0,NULL,NULL,NULL,1,'Unique id for the role','2009-01-25 05:28:51'),(3988,'*.authRole.roleName','en','lava','core',NULL,'authRole','roleName',NULL,'i','string','Yes','Role Name',25,NULL,0,NULL,NULL,NULL,2,'Name of the role','2009-01-25 05:28:51'),(3989,'*.authRole.patientAccess','en','lava','core',NULL,'authRole','patientAccess',NULL,'i','range','Yes','Patient Access',NULL,NULL,0,NULL,'generic.yesNoZero',NULL,3,'This role confers patient access to the user','2009-01-25 05:28:51'),(3990,'*.authRole.phiAccess','en','lava','core',NULL,'authRole','phiAccess',NULL,'i','range','Yes','PHI Access',NULL,NULL,0,NULL,'generic.yesNoZero',NULL,4,'This role confers access to Protected Health Identifiers/Informantion','2009-01-25 05:28:51'),(3991,'*.authRole.ghiAccess','en','lava','core',NULL,'authRole','ghiAccess',NULL,'i','range','Yes','Genetic Access',NULL,NULL,0,NULL,'generic.yesNoZero',NULL,5,'This role confers access to genetic health information to the user','2009-01-25 05:28:51'),(3992,'*.authRole.notes','en','lava','core',NULL,'authRole','notes',NULL,'i','text','No','Notes',255,NULL,0,'rows=\"3\" cols=\"40\"',NULL,NULL,8,'Notes','2009-01-25 05:28:51'),(3993,'*.authRole.notes','en','lava','core',NULL,'authRole','notes',NULL,'i','text','No','Notes',255,NULL,0,'rows=\"3\" cols=\"40\"',NULL,NULL,8,'Notes','2009-01-25 05:28:51'),(3994,'*.authRole.summaryInfo','en','lava','core',NULL,'authRole','summaryInfo','details','c','string','No','Summary',255,NULL,0,NULL,NULL,NULL,13,'Summary information for the role','2009-01-01 08:00:00'),(3995,'*.authUser.id','en','lava','core',NULL,'authUser','id',NULL,'c','numeric','Yes','User ID',NULL,NULL,0,NULL,NULL,NULL,1,'Unique id for the user','2009-01-25 05:28:51'),(3996,'*.authUser.role.id','en','lava','core',NULL,'authUser','role.id','details','c','numeric','Yes','Role ID',NULL,NULL,0,NULL,NULL,NULL,1,'Unique ID of the role','2009-01-25 05:28:51'),(3997,'*.authUser.userName','en','lava','core',NULL,'authUser','userName','details','i','string','Yes','User Name',50,NULL,0,NULL,NULL,NULL,2,'Name of the User [First Name Last Name]','2009-01-25 05:28:51'),(3998,'*.authUser.userNameWithStatus','en','lava','core',NULL,'authUser','userNameWithStatus',NULL,'c','string','Yes','User Name',50,NULL,0,NULL,NULL,NULL,2,'Name of the User [First Name Last Name] with status','2009-01-25 05:28:51'),(3999,'filter.authUser.userName','en','lava','core','filter','authUser','userName',NULL,'i','string','No','User Name',50,NULL,0,NULL,NULL,NULL,2,'Name of the User [First Name Last Name]','2009-01-25 05:28:51'),(4000,'*.authUser.login','en','lava','core',NULL,'authUser','login','details','i','string','No','Network Login',100,NULL,0,NULL,NULL,NULL,3,'Network Login for the user','2009-01-25 05:28:51'),(4001,'filter.authUser.login','en','lava','core','filter','authUser','login',NULL,'i','string','No','Network Login',100,NULL,0,NULL,NULL,NULL,3,'Network Login for the user','2009-01-25 05:28:51'),(4002,'*.authUser.email','en','lava','core',NULL,'authUser','email','details','i','text','No','Email',100,NULL,0,'rows=\"2\" cols=\"25\"',NULL,NULL,4,'Email','2009-05-12 21:45:03'),(4003,'*.authUser.phone','en','lava','core',NULL,'authUser','phone','details','i','string','No','Phone',25,NULL,0,NULL,NULL,NULL,5,'Phone','2009-05-12 21:45:03'),(4004,'*.authUser.accessAgreementDate','en','lava','core',NULL,'authUser','accessAgreementDate','status','i','date','No','Access Agreement Date',NULL,NULL,0,NULL,NULL,NULL,7,'Date the user signed an Access Agreement for using the system','2009-01-25 05:28:51'),(4005,'filter.authUser.accessAgreementDateEnd','en','lava','core','filter','authUser','accessAgreementDateEnd',NULL,'i','date','No','and',NULL,NULL,0,NULL,NULL,NULL,7,'Date the user signed an Access Agreement for using the system','2009-01-25 05:28:51'),(4006,'filter.authUser.accessAgreementDateStart','en','lava','core','filter','authUser','accessAgreementDateStart',NULL,'i','date','No','Agreement Date Between',NULL,NULL,0,NULL,NULL,NULL,7,'Date the user signed an Access Agreement for using the system','2009-01-25 05:28:51'),(4007,'*.authUser.effectiveDate','en','lava','core',NULL,'authUser','effectiveDate','status','i','date','Yes','Effective Date',NULL,NULL,0,NULL,NULL,NULL,8,'Effective Date','2009-01-25 05:28:51'),(4008,'filter.authUser.effectiveDateEnd','en','lava','core','filter','authUser','effectiveDateEnd',NULL,'i','date','No','and',NULL,NULL,0,NULL,NULL,NULL,8,'Effective Date','2009-01-25 05:28:51'),(4009,'filter.authUser.effectiveDateStart','en','lava','core','filter','authUser','effectiveDateStart',NULL,'i','date','No','Effective Date Between',NULL,NULL,0,NULL,NULL,NULL,8,'Effective Date','2009-01-25 05:28:51'),(4010,'*.authUser.expirationDate','en','lava','core',NULL,'authUser','expirationDate','status','i','date','No','Expiration Date',NULL,NULL,0,NULL,NULL,NULL,9,'Expiration Date','2009-01-25 05:28:51'),(4011,'filter.authUser.expirationDateEnd','en','lava','core','filter','authUser','expirationDateEnd',NULL,'i','date','No','and',NULL,NULL,0,NULL,NULL,NULL,9,'Expiration Date','2009-01-25 05:28:51'),(4012,'filter.authUser.expirationDateStart','en','lava','core','filter','authUser','expirationDateStart',NULL,'i','date','No','Expiration Date Between',NULL,NULL,0,NULL,NULL,NULL,9,'Expiration Date','2009-01-25 05:28:51'),(4013,'*.authUser.shortUserName','en','lava','core',NULL,'authUser','shortUserName','details','c','string','No','Short User Name',53,NULL,0,NULL,NULL,NULL,10,'Shortened User name','2009-01-25 05:28:51'),(4014,'*.authUser.shortUserNameRev','en','lava','core',NULL,'authUser','shortUserNameRev','details','c','string','No','Short User Name Reversed',54,NULL,0,NULL,NULL,NULL,11,'Shortened User Name Reversed','2009-01-25 05:28:51'),(4015,'*.authUser.notes','en','lava','core',NULL,'authUser','notes','note','i','text','No','Notes',255,NULL,0,'rows=\"3\" cols=\"40\"',NULL,NULL,12,'Notes','2009-01-25 05:28:51'),(4016,'*.authUser.authenticationType','en','lava','core',NULL,'authUser','authenticationType','details','i','range','Yes','Auth Type',10,NULL,0,NULL,'authUser.authenticationType',NULL,12,'Authentication Type','2009-05-12 21:45:03'),(4017,'*.authUser.disabled','en','lava','core',NULL,'authUser','disabled','status','i','range','Yes','Disabled',NULL,NULL,0,NULL,'generic.yesNoZero',NULL,13,'Disabled','2009-01-25 05:28:51'),(4018,'*.authUser.password','en','lava','core',NULL,'authUser','password','local','c','text','No','Password (hashed)',100,NULL,0,'rows=\"2\" cols=\"25\"',NULL,NULL,13,'Password Hash','2009-05-12 21:45:03'),(4019,'*.authUser.passwordExpiration','en','lava','core',NULL,'authUser','passwordExpiration','local','c','timestamp','No','Password Exp.',NULL,NULL,0,NULL,NULL,NULL,14,'Password Expiration','2009-05-12 21:45:03'),(4020,'*.authUser.passwordResetToken','en','lava','core',NULL,'authUser','passwordResetToken','local','c','text','No','Reset Token',100,NULL,0,'rows=\"2\" cols=\"25\"',NULL,NULL,15,'Password Reset Token','2009-05-12 21:45:03'),(4021,'*.authUser.passwordResetExpiration','en','lava','core',NULL,'authUser','passwordResetExpiration','local','c','timestamp','No','Reset Exp.',NULL,NULL,0,NULL,NULL,NULL,16,'Password Reset Token Expires','2009-05-12 21:45:03'),(4022,'*.authUser.failedLoginCount','en','lava','core',NULL,'authUser','failedLoginCount','local','c','numeric','No','Failed Logins',NULL,NULL,0,NULL,NULL,NULL,17,'Failed Login Attempts','2009-05-12 21:45:03'),(4023,'*.authUser.lastFailedLogin','en','lava','core',NULL,'authUser','lastFailedLogin','local','c','timestamp','No','Last Failed Login',NULL,NULL,0,NULL,NULL,NULL,18,'Last Failed Logon Attempt','2009-05-12 21:45:03'),(4024,'*.authUser.accountLocked','en','lava','core',NULL,'authUser','accountLocked','local','c','timestamp','No','Account Locked',NULL,NULL,0,NULL,NULL,NULL,19,'Account Locked Timestamp','2009-05-12 21:45:03'),(4025,'*.authUserGroup.group.id','en','lava','core',NULL,'authUserGroup','group.id',NULL,'c','numeric','Yes','ID',NULL,NULL,0,NULL,NULL,NULL,1,'Unique ID for the authorization group','2009-01-25 05:28:51'),(4026,'*.authUserGroup.id','en','lava','core',NULL,'authUserGroup','id',NULL,'c','numeric','Yes','ID',NULL,NULL,0,NULL,NULL,NULL,1,'Unique ID for the User Role Assocaition','2009-01-25 05:28:51'),(4027,'*.authUserGroup.user.id','en','lava','core',NULL,'authUserGroup','user.id','details','c','numeric','Yes','ID',NULL,NULL,0,NULL,NULL,NULL,1,'Unique Record ID','2009-01-25 05:28:51'),(4028,'*.authUserGroup.user.id','en','lava','core',NULL,'authUserGroup','user.id','details','c','numeric','Yes','User ID',NULL,NULL,0,NULL,NULL,NULL,1,'Unique ID of the User','2009-01-25 05:28:51'),(4029,'*.authUserGroup.group.groupNameWithStatus','en','lava','core',NULL,'authUserGroup','group.groupNameWithStatus',NULL,'i','string','Yes','Group Name',50,50,0,NULL,NULL,NULL,2,'Name of the authorization group','2009-01-25 05:28:51'),(4030,'*.authUserGroup.user.login','en','lava','core',NULL,'authUserGroup','user.login','details','i','string','Yes','User Name',50,NULL,0,NULL,NULL,NULL,2,'Name of the User [First Name Last Name]','2009-01-25 05:28:51'),(4031,'*.authUserGroup.user.userNameWithStatus','en','lava','core',NULL,'authUserGroup','user.userNameWithStatus','details','i','string','Yes','User Name',50,NULL,0,NULL,NULL,NULL,2,'Name of the User [First Name Last Name]','2009-01-25 05:28:51'),(4032,'*.authUserGroup.userId','en','lava','core',NULL,'authUserGroup','userId','details','i','range','Yes','User',NULL,NULL,0,NULL,'auth.users',NULL,2,'Unique ID of the User','2009-01-25 05:28:51'),(4033,'*.authUserGroup.groupId','en','lava','core',NULL,'authUserGroup','groupId','details','i','range','Yes','Group',NULL,NULL,0,NULL,'auth.groups',NULL,3,'Unique ID of the Group','2009-01-25 05:28:51'),(4034,'*.authUserGroup.notes','en','lava','core',NULL,'authUserGroup','notes','note','i','text','No','Notes',255,NULL,0,'rows=\"3\" cols=\"40\"',NULL,NULL,6,'Notes','2009-01-25 05:28:51'),(4035,'*.authUserPasswordDto.oldPassword','en','lava','core',NULL,'authUserPasswordDto','oldPassword',NULL,'i','password','Yes','Current Password',NULL,NULL,0,NULL,NULL,NULL,1,'Current Password','2009-05-12 21:45:03'),(4036,'*.authUserPasswordDto.newPassword','en','lava','core',NULL,'authUserPasswordDto','newPassword',NULL,'i','password','Yes','New Password',NULL,NULL,0,NULL,NULL,NULL,2,'New Password','2009-05-12 21:45:03'),(4037,'*.authUserPasswordDto.newPasswordConfirm','en','lava','core',NULL,'authUserPasswordDto','newPasswordConfirm',NULL,'i','password','Yes','New Password Confirm',NULL,NULL,0,NULL,NULL,NULL,3,'New Password Confirm','2009-05-12 21:45:03'),(4038,'*.authUserRole.group.id','en','lava','core',NULL,'authUserRole','group.id',NULL,'c','numeric','Yes','ID',NULL,NULL,0,NULL,NULL,NULL,1,'Unique ID for the authorization group','2009-01-25 05:28:51'),(4039,'*.authUserRole.id','en','lava','core',NULL,'authUserRole','id','details','c','numeric','Yes','ID',NULL,NULL,0,NULL,NULL,NULL,1,'Unique ID for the User/Group Role Association','2009-01-25 05:28:51'),(4040,'*.authUserRole.role.id','en','lava','core',NULL,'authUserRole','role.id',NULL,'c','numeric','Yes','Role ID',NULL,NULL,0,NULL,NULL,NULL,1,'Unique id for the role','2009-01-25 05:28:51'),(4041,'*.authUserRole.user.id','en','lava','core',NULL,'authUserRole','user.id',NULL,'c','numeric','Yes','User ID',NULL,NULL,0,NULL,NULL,NULL,1,'Unique ID of the User','2009-01-25 05:28:51'),(4042,'*.authUserRole.group.groupNameWithStatus','en','lava','core',NULL,'authUserRole','group.groupNameWithStatus',NULL,'i','string','Yes','Group Name',50,50,0,NULL,NULL,NULL,2,'Name of the authorization group','2009-01-25 05:28:51'),(4043,'*.authUserRole.role.roleName','en','lava','core',NULL,'authUserRole','role.roleName',NULL,'i','string','Yes','Role Name',25,NULL,0,NULL,NULL,NULL,2,'Name of the role','2009-01-25 05:28:51'),(4044,'*.authUserRole.user.userNameWithStatus','en','lava','core',NULL,'authUserRole','user.userNameWithStatus',NULL,'i','string','Yes','User Name',50,NULL,0,NULL,NULL,NULL,2,'Name of the User [First Name Last Name]','2009-01-25 05:28:51'),(4045,'*.authUserRole.role.summaryInfo','en','lava','core',NULL,'authUserRole','role.summaryInfo',NULL,'i','range','Yes','Summary',255,NULL,0,NULL,NULL,NULL,3,'Summary info about the role','2009-01-25 05:28:51'),(4046,'*.authUserRole.roleId','en','lava','core',NULL,'authUserRole','roleId','details','i','range','Yes','Role',25,NULL,0,NULL,'auth.roles',NULL,3,'The role name','2009-01-25 05:28:51'),(4047,'*.crmsAuthUserRole.unit','en','lava','core',NULL,'authUserRole','unit','details','i','suggest','No','Unit/Site',25,NULL,0,NULL,'projectUnit.units',NULL,5,'The program that the role applies to (* for any)','2009-01-25 05:28:51'),(4048,'*.authUserRole.userId','en','lava','core',NULL,'authUserRole','userId','details','i','range','No','User',NULL,NULL,0,NULL,'auth.users',NULL,7,'The user to assign the role to','2009-01-25 05:28:51'),(4049,'*.authUserRole.groupId','en','lava','core',NULL,'authUserRole','groupId','details','i','range','No','Group',NULL,NULL,0,NULL,'auth.groups',NULL,8,'the group to assign the role to','2009-01-25 05:28:51'),(4050,'*.authUserRole.notes','en','lava','core',NULL,'authUserRole','notes','note','i','text','No','Notes',255,NULL,0,'rows=\"3\" cols=\"40\"',NULL,NULL,12,'Notes','2009-01-25 05:28:51'),(4051,'*.authUserRole.summaryInfo','en','lava','core','','authUserRole','summaryInfo','details','c','string','No','Summary',255,NULL,0,NULL,NULL,'',13,'Summary information for the role assignment','2009-01-01 08:00:00'),(4052,'*.calendar.id','en','lava','core',NULL,'calendar','id','details','c','numeric','Yes','ID',NULL,NULL,0,NULL,NULL,NULL,1,NULL,'2009-03-31 17:56:31'),(4053,'*.calendar.type','en','lava','core','','calendar','type','details','c','range','Yes','Type',25,NULL,0,NULL,'calendar.type','',2,'Type','2009-06-10 07:00:00'),(4054,'*.calendar.name','en','lava','core',NULL,'calendar','name','details','i','string','Yes','Name',100,NULL,0,NULL,NULL,NULL,3,NULL,'2009-03-31 17:56:31'),(4055,'*.calendar.description','en','lava','core',NULL,'calendar','description','details','i','text','No','Description',255,NULL,0,'rows=\"4\" cols=\"45\"',NULL,NULL,4,NULL,'2009-03-31 17:56:31'),(4056,'*.calendar.notes','en','lava','core',NULL,'calendar','notes','notes','i','unlimitedtext','No','Notes',NULL,NULL,0,'rows=\"10\" cols=\"45\"',NULL,NULL,5,NULL,'2009-03-31 17:56:31'),(4057,'*.hibernateProperty.id','en','lava','core',NULL,'HibernateProperty','id','','','','Yes','',NULL,NULL,0,'','',NULL,1,'','2009-01-25 05:28:51'),(4058,'*.hibernateProperty.scope','en','lava','core',NULL,'HibernateProperty','scope','','','','Yes','',NULL,NULL,0,'','',NULL,2,'','2009-01-25 05:28:51'),(4059,'*.hibernateProperty.entity','en','lava','core',NULL,'HibernateProperty','entity','','','','Yes','',NULL,NULL,0,'','',NULL,3,'','2009-01-25 05:28:51'),(4060,'*.hibernateProperty.property','en','lava','core',NULL,'HibernateProperty','property','','','','Yes','',NULL,NULL,0,'','',NULL,4,'','2009-01-25 05:28:51'),(4061,'*.hibernateProperty.dbTable','en','lava','core',NULL,'HibernateProperty','dbTable','','','','Yes','',NULL,NULL,0,'','',NULL,5,'','2009-01-25 05:28:51'),(4062,'*.hibernateProperty.dbColumn','en','lava','core',NULL,'HibernateProperty','dbColumn','','','','Yes','',NULL,NULL,0,'','',NULL,6,'','2009-01-25 05:28:51'),(4063,'*.hibernateProperty.dbType','en','lava','core',NULL,'HibernateProperty','dbType','','','','No','',NULL,NULL,0,'','',NULL,7,'','2009-01-25 05:28:51'),(4064,'*.hibernateProperty.dbLength','en','lava','core',NULL,'HibernateProperty','dbLength','','','','No','',NULL,NULL,0,'','',NULL,8,'','2009-01-25 05:28:51'),(4065,'*.hibernateProperty.dbPrecision','en','lava','core',NULL,'HibernateProperty','dbPrecision','','','','No','',NULL,NULL,0,'','',NULL,9,'','2009-01-25 05:28:51'),(4066,'*.hibernateProperty.dbScale','en','lava','core',NULL,'HibernateProperty','dbScale','','','','No','',NULL,NULL,0,'','',NULL,10,'','2009-01-25 05:28:51'),(4067,'*.hibernateProperty.dbOrder','en','lava','core',NULL,'HibernateProperty','dbOrder','','','','No','',NULL,NULL,0,'','',NULL,11,'','2009-01-25 05:28:51'),(4068,'*.hibernateProperty.hibernateProperty','en','lava','core',NULL,'HibernateProperty','hibernateProperty','','','','No','',NULL,NULL,0,'','',NULL,12,'','2009-01-25 05:28:51'),(4069,'*.hibernateProperty.hibernateType','en','lava','core',NULL,'HibernateProperty','hibernateType','','','','No','',NULL,NULL,0,'','',NULL,13,'','2009-01-25 05:28:51'),(4070,'*.hibernateProperty.hibernateClass','en','lava','core',NULL,'HibernateProperty','hibernateClass','','','','No','',NULL,NULL,0,'','',NULL,14,'','2009-01-25 05:28:51'),(4071,'*.hibernateProperty.hibernateNotNull','en','lava','core',NULL,'HibernateProperty','hibernateNotNull','','','','No','',NULL,NULL,0,'','',NULL,15,'','2009-01-25 05:28:51'),(4072,'*.lavaSession.id','en','lava','core',NULL,'LavaSession','id',NULL,'c','numeric','Yes','Session ID',NULL,NULL,0,NULL,NULL,NULL,1,NULL,'2009-01-25 05:28:51'),(4073,'*.lavaSession.serverInstanceId','en','lava','core',NULL,'LavaSession','serverInstanceId',NULL,'c','numeric','Yes','Server Instance ID',NULL,NULL,0,NULL,NULL,NULL,2,NULL,'2009-01-25 05:28:51'),(4074,'*.lavaSession.createTimestamp','en','lava','core',NULL,'LavaSession','createTimestamp',NULL,'c','datetime','Yes','Created Time',NULL,NULL,0,NULL,NULL,NULL,3,NULL,'2009-01-25 05:28:51'),(4075,'*.lavaSession.accessTimestamp','en','lava','core',NULL,'LavaSession','accessTimestamp',NULL,'c','datetime','Yes','Accessed Time',NULL,NULL,0,NULL,NULL,NULL,4,NULL,'2009-01-25 05:28:51'),(4076,'*.lavaSession.expireTimestamp','en','lava','core',NULL,'LavaSession','expireTimestamp',NULL,'c','datetime','Yes','Expiration Time',NULL,NULL,0,NULL,NULL,NULL,5,NULL,'2009-01-25 05:28:51'),(4077,'*.lavaSession.currentStatus','en','lava','core',NULL,'LavaSession','currentStatus',NULL,'c','range','Yes','Current Status',NULL,NULL,0,NULL,'lavaSession.status',NULL,6,NULL,'2009-01-25 05:28:51'),(4078,'*.lavaSession.userId','en','lava','core',NULL,'LavaSession','userId',NULL,'c','numeric','No','User ID',NULL,NULL,0,NULL,NULL,NULL,7,NULL,'2009-01-25 05:28:51'),(4079,'*.lavaSession.username','en','lava','core',NULL,'LavaSession','username',NULL,'c','string','No','Username',NULL,NULL,0,NULL,NULL,NULL,8,NULL,'2009-01-25 05:28:51'),(4080,'*.lavaSession.hostname','en','lava','core',NULL,'LavaSession','hostname',NULL,'c','string','No','Hostname',NULL,NULL,0,NULL,NULL,NULL,9,NULL,'2009-01-25 05:28:51'),(4081,'*.lavaSession.httpSessionId','en','lava','core',NULL,'LavaSession','httpSessionId',NULL,'c','string','No','HTTP Session',NULL,40,0,NULL,NULL,NULL,10,NULL,'2009-01-25 05:28:51'),(4082,'*.lavaSession.disconnectTime','en','lava','core',NULL,'LavaSession','disconnectTime',NULL,'i','time','No','Time',NULL,NULL,0,NULL,NULL,NULL,11,NULL,'2009-01-25 05:28:51'),(4083,'*.lavaSession.disconnectMessage','en','lava','core',NULL,'LavaSession','disconnectMessage',NULL,'i','text','No','Disconnect Message',NULL,NULL,0,'rows=\"4\", cols=\"45\"',NULL,NULL,12,NULL,'2009-01-25 05:28:51'),(4084,'*.lavaSession.notes','en','lava','core',NULL,'LavaSession','notes',NULL,'i','text','No','Notes',NULL,NULL,0,'rows=\"4\" cols=\"45\"',NULL,NULL,13,NULL,'2009-01-25 05:28:51'),(4085,'*.lavaSession.disconnectDate','en','lava','core',NULL,'lavaSession','disconnectDate',NULL,'i','date','No','Disconnect Date',10,NULL,0,NULL,NULL,NULL,16,NULL,'2009-04-27 22:11:44'),(4086,'*.reservation.organizer.userName','en','lava','core',NULL,'reservation','organizer.userName','details','c','string','No','Reserved By',NULL,NULL,0,NULL,NULL,NULL,14,'Reserved By','2009-06-11 16:40:26'),(4087,'*.reservation.organizerId','en','lava','core',NULL,'reservation','organizerId','details','i','range','Yes','Reserved By',NULL,NULL,0,NULL,'appointment.organizer',NULL,15,'Reserved By','2009-06-11 16:37:29'),(4088,'*.resourceCalendar.resourceType','en','lava','core',NULL,'resourceCalendar','resource_type','resource','i','range','Yes','Resource Type',25,NULL,0,NULL,'resourceCalendar.resourceType',NULL,2,'Resource Type','2009-06-03 17:27:39'),(4089,'*.resourceCalendar.location','en','lava','core',NULL,'resourceCalendar','location','resource','i','text','No','Location',100,NULL,0,'rows=\"2\" cols=\"25\"',NULL,NULL,3,'Location','2009-06-03 17:27:39'),(4090,'*.resourceCalendar.contactId','en','lava','core',NULL,'resourceCalendar','contactId','resource','i','range','Yes','Contact',NULL,NULL,0,NULL,'resourceCalendar.contact',NULL,4,'Contact','2009-06-03 17:27:39'),(4091,'*.resourceCalendar.contact.email','en','lava','core',NULL,'resourceCalendar','contact.email','resource','c','string','No','Contact Email',100,NULL,0,NULL,NULL,NULL,6,'Contact Email','2009-06-03 17:27:39'),(4092,'*.resourceCalendar.contact.phone','en','lava','core',NULL,'resourceCalendar','contact.phone','resource','c','string','No','Contact Phone',25,NULL,0,NULL,NULL,NULL,7,'Contact Phone','2009-06-03 17:27:39'),(4093,'*.userInfo.email','en','lava','core',NULL,'userInfo','email','details','i','text','No','Email',100,NULL,0,'rows=\"2\" cols=\"25\"',NULL,NULL,1,'Email','2009-05-26 23:48:36'),(4094,'*.userInfo.phone','en','lava','core',NULL,'userInfo','phone','details','i','string','No','Phone',25,NULL,0,NULL,NULL,NULL,2,'Phone','2009-05-26 23:49:22'),(4095,'*.viewProperty.id','en','lava','core',NULL,'ViewProperty','id','','','','Yes','',NULL,NULL,0,'','',NULL,1,'','2009-01-25 05:28:51'),(4096,'*.viewProperty.messageCode','en','lava','core',NULL,'ViewProperty','messageCode','','','','No','',NULL,NULL,0,'','',NULL,2,'','2009-01-25 05:28:51'),(4097,'*.viewProperty.locale','en','lava','core',NULL,'ViewProperty','locale','','','','Yes','',NULL,NULL,0,'','',NULL,3,'','2009-01-25 05:28:51'),(4098,'*.viewProperty.scope','en','lava','core',NULL,'ViewProperty','scope','','','','Yes','',NULL,NULL,0,'','',NULL,4,'','2009-01-25 05:28:51'),(4099,'*.viewProperty.prefix','en','lava','core',NULL,'ViewProperty','prefix','','','','No','',NULL,NULL,0,'','',NULL,5,'','2009-01-25 05:28:51'),(4100,'*.viewProperty.entity','en','lava','core',NULL,'ViewProperty','entity','','','','Yes','',NULL,NULL,0,'','',NULL,6,'','2009-01-25 05:28:51'),(4101,'*.viewProperty.property','en','lava','core',NULL,'ViewProperty','property','','','','Yes','',NULL,NULL,0,'','',NULL,7,'','2009-01-25 05:28:51'),(4102,'*.viewProperty.section','en','lava','core',NULL,'ViewProperty','section','','','','No','',NULL,NULL,0,'','',NULL,8,'','2009-01-25 05:28:51'),(4103,'*.viewProperty.context','en','lava','core',NULL,'ViewProperty','context','','','','No','',NULL,NULL,0,'','',NULL,9,'','2009-01-25 05:28:51'),(4104,'*.viewProperty.style','en','lava','core',NULL,'ViewProperty','style','','','','No','',NULL,NULL,0,'','',NULL,10,'','2009-01-25 05:28:51'),(4105,'*.viewProperty.list','en','lava','core',NULL,'ViewProperty','list','','','','No','',NULL,NULL,0,'','',NULL,11,'','2009-01-25 05:28:51'),(4106,'*.viewProperty.attributes','en','lava','core',NULL,'ViewProperty','attributes','','','','No','',NULL,NULL,0,'','',NULL,12,'','2009-01-25 05:28:51'),(4107,'*.viewProperty.required','en','lava','core',NULL,'ViewProperty','required','','','','No','',NULL,NULL,0,'','',NULL,13,'','2009-01-25 05:28:51'),(4108,'*.viewProperty.label','en','lava','core',NULL,'ViewProperty','label','','','','No','',NULL,NULL,0,'','',NULL,14,'','2009-01-25 05:28:51'),(4109,'*.viewProperty.quickHelp','en','lava','core',NULL,'ViewProperty','quickHelp','','','','No','',NULL,NULL,0,'','',NULL,15,'','2009-01-25 05:28:51'),(4110,'*.viewProperty.propOrder','en','lava','core',NULL,'ViewProperty','propOrder','','','','No','',NULL,NULL,0,'','',NULL,16,'','2009-01-25 05:28:51'),(4931,'*.addEnrollmentStatus.patient_fullName','en','lava','crms',NULL,'addEnrollmentStatus','patient_fullName','','c','string','No','Patient',NULL,NULL,0,'','',NULL,1,'','2009-01-25 05:28:51'),(4932,'*.addEnrollmentStatus.enrollmentStatus_projName','en','lava','crms',NULL,'addEnrollmentStatus','enrollmentStatus_projName',NULL,'i','range','Yes','Project',NULL,NULL,0,NULL,'enrollmentStatus.patientUnassignedProjects',NULL,10,NULL,'2009-01-25 05:28:51'),(4933,'*.addEnrollmentStatus.projName','en','lava','crms',NULL,'addEnrollmentStatus','projName','','i','range','Yes','Project',NULL,NULL,0,'','enrollmentStatus.patientUnassignedProjects',NULL,10,'','2009-01-25 05:28:51'),(4934,'*.addEnrollmentStatus.status','en','lava','crms',NULL,'addEnrollmentStatus','status','','i','range','Yes','Status',NULL,NULL,0,'','enrollmentStatus.projectStatus',NULL,11,'','2009-01-25 05:28:51'),(4935,'*.addEnrollmentStatus.statusDate','en','lava','crms',NULL,'addEnrollmentStatus','statusDate','','i','date','Yes','Status Date',NULL,NULL,0,'','',NULL,12,'','2009-01-25 05:28:51'),(4936,'*.addPatient.patient_gender','en','lava','crms',NULL,'addPatient','patient_gender',NULL,'i','range','Yes','Gender',NULL,NULL,0,NULL,'generic.gender',NULL,NULL,NULL,'2010-09-02 19:19:55'),(4937,'*.addPatient.patient_hand','en','lava','crms',NULL,'addPatient','patient_hand',NULL,'i','range','No','Handedness',NULL,NULL,0,NULL,'patient.handedness',NULL,NULL,NULL,'2010-09-02 19:53:05'),(4938,'*.addPatient.ignoreMatches','en','lava','crms',NULL,'addPatient','ignoreMatches','','i','toggle','No','This is a new patient/subject. Ignore possible matches.',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(4939,'*.addPatient.patient_firstName','en','lava','crms',NULL,'addPatient','patient_firstName','','i','string','Yes','First Name',NULL,NULL,0,'','',NULL,2,'','2009-01-25 05:28:51'),(4940,'*.addPatient.patient_middleInitial','en','lava','crms',NULL,'addPatient','patient_middleInitial','','i','string','No','Middle Initial',NULL,NULL,0,'','',NULL,3,'','2009-01-25 05:28:51'),(4941,'*.addPatient.patient_lastName','en','lava','crms',NULL,'addPatient','patient_lastName','','i','string','Yes','Last Name',NULL,NULL,0,'','',NULL,4,'','2009-01-25 05:28:51'),(4942,'*.addPatient.patient_suffix','en','lava','crms',NULL,'addPatient','patient_suffix','','i','string','No','Suffix',NULL,NULL,0,'','',NULL,5,'','2009-01-25 05:28:51'),(4943,'*.addPatient.patient_degree','en','lava','crms',NULL,'addPatient','patient_degree','','i','string','No','Degree',NULL,NULL,0,'','',NULL,6,'','2009-01-25 05:28:51'),(4944,'*.addPatient.patient_birthDate','en','lava','crms',NULL,'addPatient','patient_birthDate','','i','date','Yes','Date of Birth',NULL,NULL,0,'','',NULL,9,'','2009-01-25 05:28:51'),(4945,'*.addPatient.enrollmentStatus_projName','en','lava','crms',NULL,'addPatient','enrollmentStatus_projName','','i','range','Yes','Initial Project',NULL,NULL,0,'','addPatient.projectList',NULL,10,'','2009-01-25 05:28:51'),(4946,'*.addPatient.projName','en','lava','crms',NULL,'addPatient','projName',NULL,'i','range','Yes','Initial Project',NULL,NULL,0,NULL,'addPatient.projectList',NULL,10,NULL,'2009-01-25 05:28:51'),(4947,'*.addPatient.status','en','lava','crms',NULL,'addPatient','status','','i','range','Yes','Initial Status',NULL,NULL,0,'','enrollmentStatus.projectStatus',NULL,11,'','2009-01-25 05:28:51'),(4948,'*.addPatient.statusDate','en','lava','crms',NULL,'addPatient','statusDate','','i','date','Yes','Status Date',NULL,NULL,0,'','',NULL,12,'','2009-01-25 05:28:51'),(4949,'*.addPatient.deidentified','en','lava','crms',NULL,'addPatient','deidentified','','i','toggle','No','Use Deidentified ID',NULL,NULL,0,'','',NULL,20,'','2009-01-25 05:28:51'),(4950,'*.addPatient.subjectId','en','lava','crms',NULL,'addPatient','subjectId','','i','string','Yes','Subject ID',NULL,NULL,0,'','',NULL,21,'','2009-01-25 05:28:51'),(4951,'filter.caregiver.lastName','en','lava','crms','filter','caregiver','lastName','','i','string','No','Caregiver Last Name',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(4952,'filter.caregiver.firstName','en','lava','crms','filter','caregiver','firstName','','i','string','No','Caregiver First Name',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(4953,'*.caregiver.id','en','lava','crms',NULL,'Caregiver','id','','c','numeric','Yes','',NULL,NULL,0,'','',NULL,1,'','2009-01-25 05:28:51'),(4954,'*.caregiver.lastName','en','lava','crms',NULL,'Caregiver','lastName','','i','string','Yes','Last Name',NULL,NULL,0,'','',NULL,3,'','2009-01-25 05:28:51'),(4955,'*.caregiver.firstName','en','lava','crms',NULL,'Caregiver','firstName','','i','string','Yes','First Name',NULL,NULL,0,'','',NULL,4,'','2009-01-25 05:28:51'),(4956,'*.caregiver.gender','en','lava','crms',NULL,'Caregiver','gender','','i','range','No','Gender',NULL,NULL,0,'','generic.gender',NULL,5,'','2009-01-25 05:28:51'),(4957,'*.caregiver.relation','en','lava','crms',NULL,'Caregiver','relation','','i','range','Yes','Relation to patient',NULL,NULL,0,'','caregiver.contactRelations',NULL,6,'','2009-01-25 05:28:51'),(4958,'*.caregiver.livesWithPatient','en','lava','crms',NULL,'Caregiver','livesWithPatient','','i','range','Yes','Lives with patient',NULL,NULL,0,'','generic.yesNoZero',NULL,7,'','2009-01-25 05:28:51'),(4959,'*.caregiver.active','en','lava','crms',NULL,'Caregiver','active','','i','range','Yes','Is current/active',NULL,NULL,0,'','generic.yesNoZero',NULL,8,'','2009-01-25 05:28:51'),(4960,'*.caregiver.primaryLanguage','en','lava','crms',NULL,'caregiver','primaryLanguage','Language Details','i','suggest','No','Primary Language',25,NULL,0,'','patient.patientLanguage',NULL,8,'','2009-01-25 05:28:51'),(4961,'*.caregiver.transNeeded','en','lava','crms',NULL,'caregiver','transNeeded','Language Details','i','range','No','Interpreter Needed',NULL,NULL,0,'','generic.yesNoZero',NULL,9,'','2009-01-25 05:28:51'),(4962,'*.caregiver.transLanguage','en','lava','crms',NULL,'caregiver','transLanguage','Language Details','i','suggest','No','Interpreter Type',25,NULL,0,'','patient.patientLanguage',NULL,10,'','2009-01-25 05:28:51'),(4963,'*.caregiver.isPrimaryContact','en','lava','crms',NULL,'Caregiver','isPrimaryContact','','i','range','No','Is the primary contact',NULL,NULL,0,'','generic.yesNoZero',NULL,11,'','2009-01-25 05:28:51'),(4964,'*.caregiver.isContact','en','lava','crms',NULL,'Caregiver','isContact','','i','range','No','Is other contact',NULL,NULL,0,'','generic.yesNoZero',NULL,12,'','2009-01-25 05:28:51'),(4965,'*.caregiver.isContactNotes','en','lava','crms',NULL,'Caregiver','isContactNotes','','i','string','No','Other contact description',100,NULL,0,'','',NULL,13,'','2009-01-25 05:28:51'),(4966,'*.caregiver.isCaregiver','en','lava','crms',NULL,'Caregiver','isCaregiver','','i','range','No','Is a caregiver',NULL,NULL,0,'','generic.yesNoZero',NULL,14,'','2009-01-25 05:28:51'),(4967,'*.caregiver.isInformant','en','lava','crms',NULL,'Caregiver','isInformant','','i','range','No','Is an informant',NULL,NULL,0,'','generic.yesNoZero',NULL,15,'','2009-01-25 05:28:51'),(4968,'*.caregiver.isNextOfKin','en','lava','crms',NULL,'Caregiver','isNextOfKin','','i','range','No','Is the next of kin',NULL,NULL,0,'','generic.yesNoZero',NULL,16,'','2009-01-25 05:28:51'),(4969,'*.caregiver.isResearchSurrogate','en','lava','crms',NULL,'Caregiver','isResearchSurrogate','','i','range','No','Is the research surrogate',NULL,NULL,0,'','generic.yesNoZero',NULL,16,'','2009-01-25 05:28:51'),(4970,'*.caregiver.isPowerOfAttorney','en','lava','crms',NULL,'Caregiver','isPowerOfAttorney','','i','range','No','Has healthcare power of attorney',NULL,NULL,0,'','generic.yesNoZero',NULL,17,'','2009-01-25 05:28:51'),(4971,'*.caregiver.isOtherRole','en','lava','crms',NULL,'Caregiver','isOtherRole','','i','range','No','Has other role',NULL,NULL,0,'','generic.yesNoZero',NULL,18,'','2009-01-25 05:28:51'),(4972,'*.caregiver.otherRoleDesc','en','lava','crms',NULL,'Caregiver','otherRoleDesc','','i','string','No','Other role description',50,NULL,0,'','',NULL,19,'','2009-01-25 05:28:51'),(4973,'*.caregiver.note','en','lava','crms',NULL,'Caregiver','note','','i','text','No','',255,NULL,0,'rows=\"4\" cols=\"45\"','',NULL,20,'','2009-01-25 05:28:51'),(4974,'*.caregiver.birthDate','en','lava','crms',NULL,'Caregiver','birthDate','','i','date','No','DOB',NULL,NULL,0,'','',NULL,21,'','2009-01-25 05:28:51'),(4975,'*.caregiver.patient_fullName','en','lava','crms',NULL,'Caregiver','patient_fullName','','c','string','No','Patient',NULL,NULL,0,'','',NULL,21,'','2009-01-25 05:28:51'),(4976,'*.caregiver.patient_fullNameNoSuffix','en','lava','crms',NULL,'Caregiver','patient_fullNameNoSuffix','','c','string','No','Patient',NULL,NULL,0,'','',NULL,21,'','2009-01-25 05:28:51'),(4977,'*.caregiver.education','en','lava','crms',NULL,'Caregiver','education','','i','range','No','Education',NULL,NULL,0,'','generic.education',NULL,22,'','2009-01-25 05:28:51'),(4978,'*.caregiver.race','en','lava','crms',NULL,'Caregiver','race','','i','range','No','Race',NULL,NULL,0,'','generic.race',NULL,23,'','2009-01-25 05:28:51'),(4979,'*.caregiver.maritalStatus','en','lava','crms',NULL,'Caregiver','maritalStatus','','i','range','No','Marital Status',NULL,NULL,0,'','patient.maritalStatus',NULL,24,'','2009-01-25 05:28:51'),(4980,'*.caregiver.occupation','en','lava','crms',NULL,'Caregiver','occupation','','i','string','No','Occupation',NULL,NULL,0,'','',NULL,25,'','2009-01-25 05:28:51'),(4981,'*.caregiver.age','en','lava','crms',NULL,'Caregiver','age','','c','numeric','No','Age',NULL,NULL,0,'','',NULL,26,'','2009-01-25 05:28:51'),(4982,'*.caregiver.fullName','en','lava','crms',NULL,'Caregiver','fullName','','c','string','No','Caregiver',NULL,NULL,0,'','',NULL,27,'','2009-01-25 05:28:51'),(4983,'*.caregiver.fullNameRev','en','lava','crms',NULL,'Caregiver','fullNameRev','','c','string','No','Caregiver',NULL,NULL,0,'','',NULL,28,'','2009-01-25 05:28:51'),(4984,'*.caregiver.contactDesc','en','lava','crms',NULL,'Caregiver','contactDesc','','i','string','','Contact Status',NULL,NULL,0,'','',NULL,29,'','2009-01-25 05:28:51'),(4985,'*.caregiver.rolesDesc','en','lava','crms',NULL,'Caregiver','rolesDesc','','i','string','','Roles Description',NULL,NULL,0,'','',NULL,30,'','2009-01-25 05:28:51'),(4986,'filter.caregiver.patient.firstName','en','lava','crms','filter','caregiver.patient','firstName','','i','string','no','Patient First Name',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(4987,'filter.caregiver.patient.lastName','en','lava','crms','filter','caregiver.patient','lastName','','i','string','no','Patient Last Name',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(4988,'filter.consent.consentDateEnd','en','lava','crms','filter','consent','consentDateEnd','','i','date','no','and',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(4989,'filter.consent.consentDateStart','en','lava','crms','filter','consent','consentDateStart','','i','date','no','Consent Date between',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(4990,'filter.consent.consentDeclined','en','lava','crms','filter','consent','consentDeclined','','i','range','no','Declined',NULL,NULL,0,'','generic.textYesNo',NULL,NULL,'','2009-01-25 05:28:51'),(4991,'filter.consent.consentType','en','lava','crms','filter','consent','consentType','','i','range','no','Consent Type',NULL,NULL,0,'','consent.consentTypes',NULL,NULL,'','2009-01-25 05:28:51'),(4992,'filter.consent.patient.firstName','en','lava','crms','filter','consent','patient.firstName','','i','string','no','First Name',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(4993,'filter.consent.patient.lastName','en','lava','crms','filter','consent','patient.lastName','','i','string','no','Last Name',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(4994,'filter.consent.projName','en','lava','crms','filter','Consent','projName','','i','string','No','Project',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(4995,'*.consent.id','en','lava','crms',NULL,'consent','id','','c','string','Yes','Consent ID',NULL,NULL,0,'','',NULL,1,'','2009-01-25 05:28:51'),(4996,'*.consent.caregiverId','en','lava','crms',NULL,'consent','caregiverId','','i','range','No','Surrogate Consent',NULL,NULL,0,'','patient.caregivers',NULL,3,'','2009-01-25 05:28:51'),(4997,'*.consent.projName','en','lava','crms',NULL,'consent','projName','','i','range','Yes','Project',NULL,NULL,0,'','enrollmentStatus.patientProjects',NULL,4,'','2009-01-25 05:28:51'),(4998,'*.consent.consentType','en','lava','crms',NULL,'consent','consentType','','i','range','Yes','Consent Type',NULL,40,0,'','consent.consentTypes',NULL,5,'','2009-01-25 05:28:51'),(4999,'*.consent.consentDate','en','lava','crms',NULL,'consent','consentDate','','i','date','Yes','Consent Date',NULL,NULL,0,'','',NULL,6,'','2009-01-25 05:28:51'),(5000,'*.consent.expirationDate','en','lava','crms',NULL,'consent','expirationDate','','i','date','No','Expiration Date',NULL,NULL,0,'','',NULL,7,'','2009-01-25 05:28:51'),(5001,'*.consent.withdrawlDate','en','lava','crms',NULL,'consent','withdrawlDate','','i','date','No','Withdrawal Date',NULL,NULL,0,'','',NULL,8,'','2009-01-25 05:28:51'),(5002,'*.consent.note','en','lava','crms',NULL,'consent','note','','i','text','No','Notes',NULL,NULL,0,'','',NULL,9,'','2009-01-25 05:28:51'),(5003,'*.consent.capacityReviewBy','en','lava','crms',NULL,'consent','capacityReviewBy','','i','suggest','No0','Capacity Review By',NULL,NULL,0,'','project.staffList',NULL,10,'','2009-01-25 05:28:51'),(5004,'*.consent.consentRevision','en','lava','crms',NULL,'consent','consentRevision','','i','string','No','Revision #',NULL,NULL,0,'','',NULL,11,'','2009-01-25 05:28:51'),(5005,'*.consent.consentDeclined','en','lava','crms',NULL,'consent','consentDeclined','','i','range','No','Consent Declined',NULL,NULL,0,'','generic.textYesNo',NULL,12,'','2009-01-25 05:28:51'),(5006,'*.consent.research','en','lava','crms',NULL,'consent','research','','i','range','No','Research',NULL,NULL,0,'','generic.textYesNo',NULL,13,'','2009-01-25 05:28:51'),(5007,'*.consent.neuro','en','lava','crms',NULL,'consent','neuro','','i','range','No','NeuroExam, Npsych, Lab',NULL,NULL,0,'','generic.textYesNo',NULL,14,'','2009-01-25 05:28:51'),(5008,'*.consent.dna','en','lava','crms',NULL,'consent','dna','','i','range','No','BloodDraw, DNA, Cell Line',NULL,NULL,0,'','generic.textYesNo',NULL,15,'','2009-01-25 05:28:51'),(5009,'*.consent.genetic','en','lava','crms',NULL,'consent','genetic','','i','range','No','Future Genetic Testing',NULL,NULL,0,'','generic.textYesNo',NULL,16,'','2009-01-25 05:28:51'),(5010,'*.consent.geneticShare','en','lava','crms',NULL,'consent','geneticShare','','i','range','No','Genetics tests shared',NULL,NULL,0,'','generic.textYesNo',NULL,17,'','2009-01-25 05:28:51'),(5011,'*.consent.lumbar','en','lava','crms',NULL,'consent','lumbar','','i','range','No','Lumbar Puncture',NULL,NULL,0,'','generic.textYesNo',NULL,18,'','2009-01-25 05:28:51'),(5012,'*.consent.video','en','lava','crms',NULL,'consent','video','','i','range','No','Videotaping',NULL,NULL,0,'','generic.textYesNo',NULL,19,'','2009-01-25 05:28:51'),(5013,'*.consent.audio','en','lava','crms',NULL,'consent','audio','','i','range','No','Audiotaping',NULL,NULL,0,'','generic.textYesNo',NULL,20,'','2009-01-25 05:28:51'),(5014,'*.consent.mediaEdu','en','lava','crms',NULL,'consent','mediaEdu','','i','range','No','Media used for education',NULL,NULL,0,'','generic.textYesNo',NULL,21,'','2009-01-25 05:28:51'),(5015,'*.consent.t1_5mri','en','lava','crms',NULL,'consent','t1_5mri','','i','range','No','1.5T Scanner (MRI)',NULL,NULL,0,'','generic.textYesNo',NULL,22,'','2009-01-25 05:28:51'),(5016,'*.consent.t4mri','en','lava','crms',NULL,'consent','t4mri','','i','range','No','4T Scanner (MRI)',NULL,NULL,0,'','generic.textYesNo',NULL,23,'','2009-01-25 05:28:51'),(5017,'*.consent.otherStudy','en','lava','crms',NULL,'consent','otherStudy','','i','range','No','Participate in other studies',NULL,NULL,0,'','generic.textYesNo',NULL,24,'','2009-01-25 05:28:51'),(5018,'*.consent.followup','en','lava','crms',NULL,'consent','followup','','i','range','No','Follow-up in 5 years',NULL,NULL,0,'','generic.textYesNo',NULL,25,'','2009-01-25 05:28:51'),(5019,'*.consent.music','en','lava','crms',NULL,'consent','music','','i','range','No','Music Perception',NULL,NULL,0,'','generic.textYesNo',NULL,26,'','2009-01-25 05:28:51'),(5020,'*.consent.part','en','lava','crms',NULL,'consent','part','','i','range','No','Participation for 5 years',NULL,NULL,0,'','generic.textYesNo',NULL,27,'','2009-01-25 05:28:51'),(5021,'*.consent.carepart','en','lava','crms',NULL,'consent','carepart','','i','range','No','Caregiver future participation',NULL,NULL,0,'','generic.textYesNo',NULL,28,'','2009-01-25 05:28:51'),(5022,'*.contactInfo.addressBlock','en','lava','crms',NULL,'contactInfo','addressBlock','','c','text','No','Address',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5023,'*.contactInfo.contactDesc','en','lava','crms',NULL,'contactInfo','contactDesc','','c','string','No','Contact Status',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5024,'*.contactInfo.phoneEmailBlock','en','lava','crms',NULL,'contactInfo','phoneEmailBlock','','c','text','No','Phone/Email',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5025,'filter.contactInfo.city','en','lava','crms','filter','contactInfo','city','','i','string','no','City',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5026,'filter.contactInfo.contactNameRev','en','lava','crms','filter','contactInfo','contactNameRev','','i','string','no','Contact Name',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5027,'filter.contactInfo.patient.firstName','en','lava','crms','filter','contactInfo','patient.firstName','','i','string','no','Patient First Name',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5028,'filter.contactInfo.patient.lastName','en','lava','crms','filter','contactInfo','patient.lastName','','i','string','no','Patient Last Name',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5029,'filter.contactInfo.state','en','lava','crms','filter','contactInfo','state','','i','string','no','State',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5030,'*.contactInfo.id','en','lava','crms',NULL,'contactInfo','id','','c','string','Yes','Contact Info ID',NULL,NULL,0,'','',NULL,1,'','2009-01-25 05:28:51'),(5031,'*.contactInfo.caregiverId','en','lava','crms',NULL,'contactInfo','caregiverId','Type of Contact Info','i','range','No','Caregiver',NULL,NULL,0,'','patient.caregivers',NULL,3,'','2009-01-25 05:28:51'),(5032,'*.contactInfo.contactNameRev','en','lava','crms',NULL,'contactInfo','contactNameRev','','i','string','No','Contact Name',NULL,NULL,0,'','',NULL,3,'','2009-01-25 05:28:51'),(5033,'*.contactInfo.contactPatient','en','lava','crms',NULL,'contactInfo','contactPatient','Type of Contact Info','i','range','no','Contact Patient Directly',NULL,NULL,0,'','generic.yesNoZero',NULL,4,'','2009-01-25 05:28:51'),(5034,'*.contactInfo.isPatientResidence','en','lava','crms',NULL,'contactInfo','isPatientResidence','Type of Contact Info','i','range','no','Is this the patient\'s residence',NULL,NULL,0,'','generic.yesNoZero',NULL,5,'','2009-01-25 05:28:51'),(5035,'*.contactInfo.optOutMac','en','lava','crms',NULL,'contactInfo','optOutMac','OptOutOfMailings','i','range','no','Don\'t send center mailings',NULL,NULL,0,'','generic.yesNoZero',NULL,6,'','2009-01-25 05:28:51'),(5036,'*.contactInfo.optOutMac','en','lava','crms',NULL,'contactInfo','optOutMac','OptOutOfMailings','i','range','no','Don\'t send center mailings',NULL,NULL,0,'','generic.yesNoZero',NULL,6,'','2009-01-25 05:28:51'),(5037,'*.contactInfo.optOutAffiliates','en','lava','crms',NULL,'contactInfo','optOutAffiliates','OptOutOfMailings','i','range','no','Don\'t send affiliated org. mailings',NULL,NULL,0,'','generic.yesNoZero',NULL,7,'','2009-01-25 05:28:51'),(5038,'*.contactInfo.active','en','lava','crms',NULL,'contactInfo','active','Type of Contact Info','i','range','no','Active',NULL,NULL,0,'','generic.yesNoZero',NULL,8,'','2009-01-25 05:28:51'),(5039,'*.contactInfo.isCaregiver','en','lava','crms',NULL,'contactInfo','isCaregiver','','i','toggle','no','Contact info is for a caregiver/contact',NULL,NULL,0,'','',NULL,8,'','2009-01-25 05:28:51'),(5040,'*.contactInfo.address','en','lava','crms',NULL,'contactInfo','address','Address','i','string','No','Address',NULL,NULL,0,'','',NULL,9,'','2009-01-25 05:28:51'),(5041,'*.contactInfo.address2','en','lava','crms',NULL,'contactInfo','address2','Address','i','string','No','Address Line 2',NULL,NULL,0,'','',NULL,10,'','2009-01-25 05:28:51'),(5042,'*.contactInfo.city','en','lava','crms',NULL,'contactInfo','city','Address','i','suggest','No','City',NULL,NULL,0,'','contactInfo.city',NULL,11,'','2009-01-25 05:28:51'),(5043,'*.contactInfo.state','en','lava','crms',NULL,'contactInfo','state','Address','i','range','No','State',NULL,NULL,0,'','generic.state',NULL,12,'','2009-01-25 05:28:51'),(5044,'*.contactInfo.zip','en','lava','crms',NULL,'contactInfo','zip','Address','i','string','No','Zip',NULL,NULL,0,'','',NULL,13,'','2009-01-25 05:28:51'),(5045,'*.contactInfo.country','en','lava','crms',NULL,'contactInfo','country','Address','i','string','No','Country',NULL,NULL,0,'','',NULL,14,'','2009-01-25 05:28:51'),(5046,'*.contactInfo.phone1','en','lava','crms',NULL,'contactInfo','phone1','Phone/Email','i','string','No','First Phone',NULL,NULL,0,'','',NULL,15,'','2009-01-25 05:28:51'),(5047,'*.contactInfo.phoneType1','en','lava','crms',NULL,'contactInfo','phoneType1','Phone/Email','i','suggest','No','First Phone Type',NULL,NULL,0,'','generic.phoneType',NULL,16,'','2009-01-25 05:28:51'),(5048,'*.contactInfo.phone2','en','lava','crms',NULL,'contactInfo','phone2','Phone/Email','i','string','No','Second Phone',NULL,NULL,0,'','',NULL,17,'','2009-01-25 05:28:51'),(5049,'*.contactInfo.phoneType2','en','lava','crms',NULL,'contactInfo','phoneType2','Phone/Email','i','suggest','No','Second Phone Type',NULL,NULL,0,'','generic.phoneType',NULL,18,'','2009-01-25 05:28:51'),(5050,'*.contactInfo.phone3','en','lava','crms',NULL,'contactInfo','phone3','Phone/Email','i','string','No','Third Phone',NULL,NULL,0,'','',NULL,19,'','2009-01-25 05:28:51'),(5051,'*.contactInfo.phoneType3','en','lava','crms',NULL,'contactInfo','phoneType3','Phone/Email','i','suggest','No','Third Phone Type',NULL,NULL,0,'','generic.phoneType',NULL,20,'','2009-01-25 05:28:51'),(5052,'*.contactInfo.email','en','lava','crms',NULL,'contactInfo','email','Phone/Email','i','string','No','Email',NULL,NULL,0,'','',NULL,21,'','2009-01-25 05:28:51'),(5053,'*.contactInfo.notes','en','lava','crms',NULL,'contactInfo','notes','','i','text','No','',255,NULL,0,'rows=\"4\" cols=\"45\"','',NULL,22,'','2009-01-25 05:28:51'),(5054,'filter.contactLog.contact','en','lava','crms','filter','contactLog','contact','','i','string','no','Contact Name',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5055,'filter.contactLog.logDateEnd','en','lava','crms','filter','contactLog','logDateEnd','','i','date','no','     and',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5056,'filter.contactLog.logDateStart','en','lava','crms','filter','contactLog','logDateStart','','i','date','no','Log Date between',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5057,'filter.contactLog.projName','en','lava','crms','filter','ContactLog','projName','','i','string','No','Project',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5058,'filter.contactLog.staff','en','lava','crms','filter','contactLog','staff','','i','suggest','no','Staff Member',NULL,NULL,0,'','project.staffList',NULL,NULL,'','2009-01-25 05:28:51'),(5059,'*.contactLog.id','en','lava','crms',NULL,'ContactLog','id','','c','numeric','Yes','Log ID',NULL,NULL,0,'','',NULL,1,'','2009-01-25 05:28:51'),(5060,'*.contactLog.projName','en','lava','crms',NULL,'ContactLog','projName','','i','range','No','Project',NULL,NULL,0,'','context.projectList',NULL,3,'','2009-01-25 05:28:51'),(5061,'*.contactLog.logTime','en','lava','crms','','contactLog','logTime',NULL,'i','time','No','Time',NULL,NULL,0,NULL,NULL,NULL,4,'Time of the contact','2009-04-23 20:00:00'),(5062,'*.contactLog.logDate','en','lava','crms',NULL,'ContactLog','logDate','','i','date','No','Log Date',NULL,10,0,'','',NULL,4,'','2009-01-25 05:28:51'),(5063,'*.contactLog.method','en','lava','crms',NULL,'ContactLog','method','','i','suggest','Yes','Contact method',NULL,NULL,0,'','contactLog.contactMethod',NULL,5,'','2009-01-25 05:28:51'),(5064,'*.contactLog.staffInit','en','lava','crms',NULL,'ContactLog','staffInit','','i','scale','Yes','Staff Initiated',NULL,NULL,0,'','generic.yesNoZero',NULL,6,'','2009-01-25 05:28:51'),(5065,'*.contactLog.staff','en','lava','crms',NULL,'ContactLog','staff','','i','suggest','No','Staff Name',NULL,NULL,0,'','project.staffList',NULL,7,'','2009-01-25 05:28:51'),(5066,'*.contactLog.contact','en','lava','crms',NULL,'ContactLog','contact','','i','string','No','Contact',NULL,NULL,0,'','',NULL,8,'','2009-01-25 05:28:51'),(5067,'*.contactLog.note','en','lava','crms',NULL,'ContactLog','note','','i','unlimitedtext','No','Note',NULL,NULL,0,'rows=\"20\" cols=\"100\"','',NULL,9,'','2009-01-25 05:28:51'),(5068,'filter.contactLog.patient.firstName','en','lava','crms','filter','contactLog.patient','firstName','','i','string','No','Pat. First Name',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5069,'filter.contactLog.patient.lastName','en','lava','crms','filter','contactLog.patient','lastName','','i','string','No','Pat. Last Name',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5070,'*.crmsAuthRole.patientAccess','en','lava','crms',NULL,'crmsAuthRole','patientAccess','details','i','scale','yes','Patient Access',NULL,NULL,0,NULL,'generic.yesNoZero',NULL,4,'Does the role grant access to patients','2009-01-01 08:00:00'),(5071,'*.crmsAuthRole.phiAccess','en','lava','crms',NULL,'crmsAuthRole','phiAccess','details','i','scale','yes','PHI Access',NULL,NULL,0,NULL,'generic.yesNoZero',NULL,5,'Does the role grant access to protected health information fields (PHI)','2009-01-01 08:00:00'),(5072,'*.crmsAuthRole.ghiAccess','en','lava','crms',NULL,'crmsAuthRole','ghiAccess','details','i','scale','yes','Genetics Access ',NULL,NULL,0,NULL,'generic.yesNoZero',NULL,6,'Does the role grant access to genetic health information','2009-01-01 08:00:00'),(5073,'*.doctor.addressBlock','en','lava','crms',NULL,'Doctor','addressBlock','','c','text','No','Address',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5074,'*.doctor.phoneEmailBlock','en','lava','crms',NULL,'Doctor','phoneEmailBlock','','c','text','No','Phone/Email',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5075,'*.doctor.id','en','lava','crms',NULL,'Doctor','id','','c','string','Yes','id',NULL,80,0,'','',NULL,1,'','2009-01-25 05:28:51'),(5076,'*.doctor.lastName','en','lava','crms',NULL,'Doctor','lastName','','i','string','Yes','Last Name',NULL,NULL,0,'','',NULL,2,'','2009-01-25 05:28:51'),(5077,'*.doctor.middleInitial','en','lava','crms',NULL,'Doctor','middleInitial','','i','string','No','Middle Initial',NULL,NULL,0,'','',NULL,3,'','2009-01-25 05:28:51'),(5078,'*.doctor.firstName','en','lava','crms',NULL,'Doctor','firstName','','i','string','Yes','First Name',NULL,NULL,0,'','',NULL,4,'','2009-01-25 05:28:51'),(5079,'*.doctor.address','en','lava','crms',NULL,'Doctor','address','','','text','No','Address',NULL,NULL,0,'','',NULL,5,'','2009-01-25 05:28:51'),(5080,'*.doctor.city','en','lava','crms',NULL,'Doctor','city','','i','suggest','No','City',NULL,NULL,0,'','doctor.city',NULL,6,'','2009-01-25 05:28:51'),(5081,'*.doctor.state','en','lava','crms',NULL,'Doctor','state','','i','range','No','State',NULL,NULL,0,'','generic.state',NULL,7,'','2009-01-25 05:28:51'),(5082,'*.doctor.zip','en','lava','crms',NULL,'Doctor','zip','','i','string','No','Zip',NULL,NULL,0,'','',NULL,8,'','2009-01-25 05:28:51'),(5083,'*.doctor.phone1','en','lava','crms',NULL,'Doctor','phone1','','i','string','No','First Phone',NULL,NULL,0,'','',NULL,9,'','2009-01-25 05:28:51'),(5084,'*.doctor.phoneType1','en','lava','crms',NULL,'Doctor','phoneType1','','i','suggest','No','First Phone Type',NULL,NULL,0,'','generic.phoneType',NULL,10,'','2009-01-25 05:28:51'),(5085,'*.doctor.phone2','en','lava','crms',NULL,'Doctor','phone2','','i','string','No','Second Phone',NULL,NULL,0,'','',NULL,11,'','2009-01-25 05:28:51'),(5086,'*.doctor.phoneType2','en','lava','crms',NULL,'Doctor','phoneType2','','i','suggest','No','Second Phone Type',NULL,NULL,0,'','generic.phoneType',NULL,12,'','2009-01-25 05:28:51'),(5087,'*.doctor.phone3','en','lava','crms',NULL,'Doctor','phone3','','i','string','No','Third Phone',NULL,NULL,0,'','',NULL,13,'','2009-01-25 05:28:51'),(5088,'*.doctor.phoneType3','en','lava','crms',NULL,'Doctor','phoneType3','','i','suggest','No','Third Phone Type',NULL,NULL,0,'','generic.phoneType',NULL,14,'','2009-01-25 05:28:51'),(5089,'*.doctor.email','en','lava','crms',NULL,'Doctor','email','','i','string','No','Email',NULL,NULL,0,'','',NULL,15,'','2009-01-25 05:28:51'),(5090,'*.doctor.docType','en','lava','crms',NULL,'Doctor','docType','','i','string','No','Doctor Type',NULL,NULL,0,'','',NULL,16,'','2009-01-25 05:28:51'),(5091,'*.doctor.fullNameRev','en','lava','crms',NULL,'Doctor','fullNameRev','','c','string','No','Doctor',NULL,NULL,0,'','',NULL,17,'','2009-01-25 05:28:51'),(5092,'*.doctor.fullName','en','lava','crms',NULL,'Doctor','fullName','','c','string','No','Doctor',NULL,NULL,0,'','',NULL,18,'','2009-01-25 05:28:51'),(5093,'filter.enrollmentStatus.enrolledDateEnd','en','lava','crms','filter','enrollmentStatus','enrolledDateEnd','','i','date','no','and',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5094,'filter.enrollmentStatus.enrolledDateStart','en','lava','crms','filter','enrollmentStatus','enrolledDateStart','','i','date','no','Enrolled between',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5095,'filter.enrollmentStatus.latestDesc','en','lava','crms','filter','enrollmentStatus','latestDesc','','i','range','no','Latest Status',NULL,NULL,0,'','enrollmentStatus.projectStatus',NULL,NULL,'','2009-01-25 05:28:51'),(5096,'filter.enrollmentStatus.patient.firstName','en','lava','crms','filter','enrollmentStatus','patient.firstName','','i','string','no','First Name',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5097,'filter.enrollmentStatus.patient.lastName','en','lava','crms','filter','enrollmentStatus','patient.lastName','','i','string','no','Last Name',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5098,'filter.enrollmentStatus.projName','en','lava','crms','filter','EnrollmentStatus','projName','','i','string','No','Project',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5099,'*.enrollmentStatus.id','en','lava','crms',NULL,'EnrollmentStatus','id','','c','numeric','Yes','Status ID',NULL,NULL,0,'','',NULL,1,'','2009-01-25 05:28:51'),(5100,'*.enrollmentStatus.projName','en','lava','crms',NULL,'EnrollmentStatus','projName','','c','range','Yes','Project',75,NULL,0,'','enrollmentStatus.Project',NULL,3,'','2009-01-25 05:28:51'),(5101,'*.enrollmentStatus.subjectStudyId','en','lava','crms',NULL,'EnrollmentStatus','subjectStudyId','','i','string','No','Subject Study ID',10,NULL,0,'','',NULL,4,'','2009-01-25 05:28:51'),(5102,'*.enrollmentStatus.latestDesc','en','lava','crms',NULL,'EnrollmentStatus','latestDesc','','c','string','No','Latest Status',25,NULL,0,'','',NULL,5,'','2009-01-25 05:28:51'),(5103,'*.enrollmentStatus.referralSource','en','lava','crms',NULL,'EnrollmentStatus','referralSource','','i','suggest','No','Referral Source',75,NULL,0,'','enrollmentStatus.referralSource',NULL,5,'','2009-01-25 05:28:51'),(5104,'*.enrollmentStatus.latestDate','en','lava','crms',NULL,'EnrollmentStatus','latestDate','','c','date','No','Latest Status Date',NULL,NULL,0,'','',NULL,6,'','2009-01-25 05:28:51'),(5105,'*.enrollmentStatus.latestNote','en','lava','crms',NULL,'EnrollmentStatus','latestNote','','c','text','No','Latest Status Note',100,NULL,0,'rows=\"1\" cols=\"50\"','',NULL,7,'','2009-01-25 05:28:51'),(5106,'*.enrollmentStatus.referredDesc','en','lava','crms',NULL,'EnrollmentStatus','referredDesc','','c','string','No','',25,NULL,0,'','',NULL,9,'','2009-01-25 05:28:51'),(5107,'*.enrollmentStatus.referredDate','en','lava','crms',NULL,'EnrollmentStatus','referredDate','','i','date','No','',NULL,NULL,0,'','',NULL,10,'','2009-01-25 05:28:51'),(5108,'*.enrollmentStatus.referredNote','en','lava','crms',NULL,'EnrollmentStatus','referredNote','','i','text','No','',100,NULL,0,'rows=\"1\" cols=\"50\"','',NULL,11,'','2009-01-25 05:28:51'),(5109,'*.enrollmentStatus.deferredDesc','en','lava','crms',NULL,'EnrollmentStatus','deferredDesc','','c','string','No','',25,NULL,0,'','',NULL,13,'','2009-01-25 05:28:51'),(5110,'*.enrollmentStatus.deferredDate','en','lava','crms',NULL,'EnrollmentStatus','deferredDate','','i','date','No','',NULL,NULL,0,'','',NULL,14,'','2009-01-25 05:28:51'),(5111,'*.enrollmentStatus.deferredNote','en','lava','crms',NULL,'EnrollmentStatus','deferredNote','','i','text','No','',100,NULL,0,'rows=\"1\" cols=\"50\"','',NULL,15,'','2009-01-25 05:28:51'),(5112,'*.enrollmentStatus.eligibleDesc','en','lava','crms',NULL,'EnrollmentStatus','eligibleDesc','','c','string','No','',25,NULL,0,'','',NULL,17,'','2009-01-25 05:28:51'),(5113,'*.enrollmentStatus.eligibleDate','en','lava','crms',NULL,'EnrollmentStatus','eligibleDate','','i','date','No','',NULL,NULL,0,'','',NULL,18,'','2009-01-25 05:28:51'),(5114,'*.enrollmentStatus.eligibleNote','en','lava','crms',NULL,'EnrollmentStatus','eligibleNote','','i','text','No','',100,NULL,0,'rows=\"1\" cols=\"50\"','',NULL,19,'','2009-01-25 05:28:51'),(5115,'*.enrollmentStatus.ineligibleDesc','en','lava','crms',NULL,'EnrollmentStatus','ineligibleDesc','','c','string','No','',25,NULL,0,'','',NULL,21,'','2009-01-25 05:28:51'),(5116,'*.enrollmentStatus.ineligibleDate','en','lava','crms',NULL,'EnrollmentStatus','ineligibleDate','','i','date','No','',NULL,NULL,0,'','',NULL,22,'','2009-01-25 05:28:51'),(5117,'*.enrollmentStatus.ineligibleNote','en','lava','crms',NULL,'EnrollmentStatus','ineligibleNote','','i','text','No','',100,NULL,0,'rows=\"1\" cols=\"50\"','',NULL,23,'','2009-01-25 05:28:51'),(5118,'*.enrollmentStatus.declinedDesc','en','lava','crms',NULL,'EnrollmentStatus','declinedDesc','','c','string','No','',25,NULL,0,'','',NULL,25,'','2009-01-25 05:28:51'),(5119,'*.enrollmentStatus.declinedDate','en','lava','crms',NULL,'EnrollmentStatus','declinedDate','','i','date','No','',NULL,NULL,0,'','',NULL,26,'','2009-01-25 05:28:51'),(5120,'*.enrollmentStatus.declinedNote','en','lava','crms',NULL,'EnrollmentStatus','declinedNote','','i','text','No','',100,NULL,0,'rows=\"1\" cols=\"50\"','',NULL,27,'','2009-01-25 05:28:51'),(5121,'*.enrollmentStatus.enrolledDesc','en','lava','crms',NULL,'EnrollmentStatus','enrolledDesc','','c','string','No','',25,NULL,0,'','',NULL,29,'','2009-01-25 05:28:51'),(5122,'*.enrollmentStatus.enrolledDate','en','lava','crms',NULL,'EnrollmentStatus','enrolledDate','','i','date','No','',NULL,NULL,0,'','',NULL,30,'','2009-01-25 05:28:51'),(5123,'*.enrollmentStatus.enrolledNote','en','lava','crms',NULL,'EnrollmentStatus','enrolledNote','','i','text','No','',100,NULL,0,'rows=\"1\" cols=\"50\"','',NULL,31,'','2009-01-25 05:28:51'),(5124,'*.enrollmentStatus.excludedDesc','en','lava','crms',NULL,'EnrollmentStatus','excludedDesc','','c','string','No','',25,NULL,0,'','',NULL,33,'','2009-01-25 05:28:51'),(5125,'*.enrollmentStatus.excludedDate','en','lava','crms',NULL,'EnrollmentStatus','excludedDate','','i','date','No','',NULL,NULL,0,'','',NULL,34,'','2009-01-25 05:28:51'),(5126,'*.enrollmentStatus.excludedNote','en','lava','crms',NULL,'EnrollmentStatus','excludedNote','','i','text','No','',100,NULL,0,'rows=\"1\" cols=\"50\"','',NULL,35,'','2009-01-25 05:28:51'),(5127,'*.enrollmentStatus.withdrewDesc','en','lava','crms',NULL,'EnrollmentStatus','withdrewDesc','','c','string','No','',25,NULL,0,'','',NULL,37,'','2009-01-25 05:28:51'),(5128,'*.enrollmentStatus.withdrewDate','en','lava','crms',NULL,'EnrollmentStatus','withdrewDate','','i','date','No','',NULL,NULL,0,'','',NULL,38,'','2009-01-25 05:28:51'),(5129,'*.enrollmentStatus.withdrewNote','en','lava','crms',NULL,'EnrollmentStatus','withdrewNote','','i','text','No','',100,NULL,0,'rows=\"1\" cols=\"50\"','',NULL,39,'','2009-01-25 05:28:51'),(5130,'*.enrollmentStatus.inactiveDesc','en','lava','crms',NULL,'EnrollmentStatus','inactiveDesc','','c','string','No','',25,NULL,0,'','',NULL,41,'','2009-01-25 05:28:51'),(5131,'*.enrollmentStatus.inactiveDate','en','lava','crms',NULL,'EnrollmentStatus','inactiveDate','','i','date','No','',NULL,NULL,0,'','',NULL,42,'','2009-01-25 05:28:51'),(5132,'*.enrollmentStatus.inactiveNote','en','lava','crms',NULL,'EnrollmentStatus','inactiveNote','','i','text','No','',100,NULL,0,'rows=\"1\" cols=\"50\"','',NULL,43,'','2009-01-25 05:28:51'),(5133,'*.enrollmentStatus.deceasedDesc','en','lava','crms',NULL,'EnrollmentStatus','deceasedDesc','','c','string','No','',25,NULL,0,'','',NULL,48,'','2009-01-25 05:28:51'),(5134,'*.enrollmentStatus.deceasedDate','en','lava','crms',NULL,'EnrollmentStatus','deceasedDate','','i','date','No','',NULL,NULL,0,'','',NULL,49,'','2009-01-25 05:28:51'),(5135,'*.enrollmentStatus.deceasedNote','en','lava','crms',NULL,'EnrollmentStatus','deceasedNote','','i','text','No','',100,NULL,0,'rows=\"1\" cols=\"50\"','',NULL,50,'','2009-01-25 05:28:51'),(5136,'*.enrollmentStatus.autopsyDesc','en','lava','crms',NULL,'EnrollmentStatus','autopsyDesc','','c','string','No','',25,NULL,0,'','',NULL,52,'','2009-01-25 05:28:51'),(5137,'*.enrollmentStatus.autopsyDate','en','lava','crms',NULL,'EnrollmentStatus','autopsyDate','','i','date','No','',NULL,NULL,0,'','',NULL,53,'','2009-01-25 05:28:51'),(5138,'*.enrollmentStatus.autopsyNote','en','lava','crms',NULL,'EnrollmentStatus','autopsyNote','','i','text','No','',100,NULL,0,'rows=\"1\" cols=\"50\"','',NULL,54,'','2009-01-25 05:28:51'),(5139,'*.enrollmentStatus.closedDesc','en','lava','crms',NULL,'EnrollmentStatus','closedDesc','','c','string','No','',25,NULL,0,'','',NULL,56,'','2009-01-25 05:28:51'),(5140,'*.enrollmentStatus.closedDate','en','lava','crms',NULL,'EnrollmentStatus','closedDate','','i','date','No','',NULL,NULL,0,'','',NULL,57,'','2009-01-25 05:28:51'),(5141,'*.enrollmentStatus.closedNote','en','lava','crms',NULL,'EnrollmentStatus','closedNote','','i','text','No','',100,NULL,0,'rows=\"1\" cols=\"50\"','',NULL,58,'','2009-01-25 05:28:51'),(5142,'*.enrollmentStatus.enrollmentNotes','en','lava','crms',NULL,'EnrollmentStatus','enrollmentNotes','','i','text','No','',500,NULL,0,'rows=\"14\" cols=\"40\"','',NULL,59,'','2009-01-25 05:28:51'),(5143,'*.instrument.collectionStatusBlock','en','lava','crms',NULL,'instrument','collectionStatusBlock','','c','string','no','Collection Status',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5144,'*.instrument.entryStatusBlock','en','lava','crms',NULL,'instrument','entryStatusBlock','','c','string','no','Data Entry Status',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5145,'*.instrument.patient_fullName','en','lava','crms',NULL,'instrument','patient_fullName','','c','string','No','Patient',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5146,'*.instrument.sectionNote','en','lava','crms',NULL,'Instrument','sectionNote','','i','text','No','Notes',2000,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5147,'*.instrument.summary','en','lava','crms',NULL,'instrument','summary','','c','string','no','Summary',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5148,'*.instrument.verifyStatusBlock','en','lava','crms',NULL,'instrument','verifyStatusBlock','','c','string','no','Verification Status',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5149,'*.instrument.visit_id','en','lava','crms',NULL,'instrument','visit_id','','c','range','Yes','Visit Description',NULL,40,0,'','visit.patientVisits',NULL,NULL,'','2009-01-25 05:28:51'),(5150,'*.instrument.visit_visitDescrip','en','lava','crms',NULL,'instrument','visit_visitDescrip','','c','string','No','Visit Description',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5151,'filter.instrument.customDateEnd','en','lava','crms','filter','instrument','customDateEnd','','i','date','No','      and',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5152,'filter.instrument.customDateStart','en','lava','crms','filter','instrument','customDateStart','','i','date','No','Collection Between',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5153,'filter.instrument.dcDateEnd','en','lava','crms','filter','instrument','dcDateEnd','','i','date','no','     and',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5154,'filter.instrument.dcDateStart','en','lava','crms','filter','instrument','dcDateStart','','i','date','no','Collected between',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5155,'filter.instrument.deDateEnd','en','lava','crms','filter','instrument','deDateEnd','','i','date','no','     and',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5156,'filter.instrument.deDateStart','en','lava','crms','filter','instrument','deDateStart','','i','date','no','Entered between',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5157,'filter.instrument.instrType','en','lava','crms','filter','instrument','instrType','','i','string','No','Instrument Type',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5158,'*.instrument.selected','en','lava','crms',NULL,'instrument','selected',NULL,'i','toggle',NULL,NULL,NULL,NULL,0,'onclick=\"selectItemClicked(this)\"',NULL,NULL,NULL,NULL,'2009-03-05 22:15:43'),(5159,'*.instrument.id','en','lava','crms',NULL,'Instrument','id','','c','numeric','Yes','Instrument ID',NULL,NULL,0,'','',NULL,1,'','2009-01-25 05:28:51'),(5160,'*.instrument.projName','en','lava','crms',NULL,'Instrument','projName','','c','string','Yes','Project',NULL,NULL,0,'','',NULL,3,'','2009-01-25 05:28:51'),(5161,'*.instrument.instrType','en','lava','crms',NULL,'Instrument','instrType','','c','range','Yes','Instrument Type',NULL,NULL,0,'','instrumentMetadata.instrTypes',NULL,5,'','2009-01-25 05:28:51'),(5162,'*.instrument.instrVer','en','lava','crms',NULL,'Instrument','instrVer','','i','range','Yes','Instrument Version',NULL,NULL,0,'','instrument.versions',NULL,6,'','2009-01-25 05:28:51'),(5163,'*.instrument.dcDate','en','lava','crms',NULL,'Instrument','dcDate','Data Collection','i','date','Yes','Collection Date',NULL,NULL,0,'','',NULL,7,'','2009-01-25 05:28:51'),(5164,'*.instrument.dcBy','en','lava','crms',NULL,'Instrument','dcBy','Data Collection','i','suggest','Yes','Collection By',NULL,NULL,0,'','project.staffList',NULL,8,'','2009-01-25 05:28:51'),(5165,'filter.instrument.dcBy','en','lava','crms','filter','Instrument','dcBy','Data Collection','i','suggest','No','Collection By',NULL,NULL,0,'','project.staffList',NULL,8,'','2009-01-25 05:28:51'),(5166,'filter.instrument.deBy','en','lava','crms','filter','Instrument','deBy','Data Collection','i','suggest','No','Entry By',NULL,NULL,0,'','project.staffList',NULL,8,'','2009-01-25 05:28:51'),(5167,'*.instrument.dcStatus','en','lava','crms',NULL,'Instrument','dcStatus','Data Collection','i','range','Yes','Collection Status',NULL,NULL,0,'','instrument.dcStatus',NULL,9,'','2009-01-25 05:28:51'),(5168,'filter.instrument.dcStatus','en','lava','crms','filter','Instrument','dcStatus','Data Collection','i','suggest','No','Collection Status',NULL,NULL,0,'','instrument.dcStatus',NULL,9,'','2009-01-25 05:28:51'),(5169,'filter.instrument.deStatus','en','lava','crms','filter','Instrument','deStatus','Data Collection','i','suggest','No','Entry Status',NULL,NULL,0,'','instrument.deStatus',NULL,9,'','2009-01-25 05:28:51'),(5170,'*.instrument.dcNotes','en','lava','crms',NULL,'Instrument','dcNotes','Data Collection','i','text','No','Collection Notes',NULL,NULL,0,'rows=\"3\" cols=\"35\"','',NULL,10,'','2009-01-25 05:28:51'),(5171,'*.instrument.researchStatus','en','lava','crms',NULL,'Instrument','researchStatus','Research Status/Quality','i','range','No','Research Status',NULL,NULL,0,'','instrument.researchStatus',NULL,11,'','2009-01-25 05:28:51'),(5172,'*.instrument.qualityIssue','en','lava','crms',NULL,'Instrument','qualityIssue','','i','range','No','Quality Issues',NULL,NULL,0,'','instrument.qualityIssue',NULL,12,'','2009-01-25 05:28:51'),(5173,'*.instrument.qualityIssue2','en','lava','crms',NULL,'Instrument','qualityIssue2','','i','range','No','',NULL,NULL,0,'','instrument.qualityIssue2',NULL,13,'','2009-01-25 05:28:51'),(5174,'*.instrument.qualityIssue3','en','lava','crms',NULL,'Instrument','qualityIssue3','Research Status/Quality','i','range','No','',NULL,NULL,0,'','instrument.qualityIssue3',NULL,14,'','2009-01-25 05:28:51'),(5175,'*.instrument.qualityNotes','en','lava','crms',NULL,'Instrument','qualityNotes','Research Status/Quality','i','text','','Quality Notes',NULL,NULL,0,'rows=\"3\" cols=\"35\"','',NULL,15,'','2009-01-25 05:28:51'),(5176,'*.instrument.deDate','en','lava','crms',NULL,'Instrument','deDate','Data Entry','i','date','Yes','Entry Date',NULL,NULL,0,'','',NULL,16,'','2009-01-25 05:28:51'),(5177,'*.instrument.deBy','en','lava','crms',NULL,'Instrument','deBy','Data Entry','i','suggest','Yes','Entry By',NULL,NULL,0,'','project.staffList',NULL,17,'','2009-01-25 05:28:51'),(5178,'*.instrument.deStatus','en','lava','crms',NULL,'Instrument','deStatus','Data Entry','i','range','Yes','Entry Status',NULL,NULL,0,'','instrument.deStatus',NULL,18,'','2009-01-25 05:28:51'),(5179,'*.instrument.deNotes','en','lava','crms',NULL,'Instrument','deNotes','Data Entry','i','text','No','Entry Notes',NULL,NULL,0,'rows=\"3\" cols=\"35\"','',NULL,19,'','2009-01-25 05:28:51'),(5180,'*.instrument.dvDate','en','lava','crms',NULL,'Instrument','dvDate','Verification','i','date','No','Verify Date',NULL,NULL,0,'','',NULL,20,'','2009-01-25 05:28:51'),(5181,'*.instrument.dvBy','en','lava','crms',NULL,'Instrument','dvBy','Verification','i','suggest','No','Verify By',NULL,NULL,0,'','project.staffList',NULL,21,'','2009-01-25 05:28:51'),(5182,'*.instrument.dvStatus','en','lava','crms',NULL,'Instrument','dvStatus','Verification','i','range','No','Verify Status',NULL,NULL,0,'','instrument.dvStatus',NULL,22,'','2009-01-25 05:28:51'),(5183,'*.instrument.patient_fullNameNoSuffix','en','lava','crms',NULL,'instrument','patient_fullNameNoSuffix','','c','string','No','Patient',NULL,NULL,0,'','',NULL,22,'','2009-01-25 05:28:51'),(5184,'*.instrument.dvNotes','en','lava','crms',NULL,'Instrument','dvNotes','Verification','i','text','No','Verify Notes',NULL,NULL,0,'rows=\"3\" cols=\"35\"','',NULL,23,'','2009-01-25 05:28:51'),(5185,'*.instrument.ageAtDC','en','lava','crms',NULL,'Instrument','ageAtDC','','c','numeric','No','Age At Collection',NULL,NULL,0,'','',NULL,27,'','2009-01-25 05:28:51'),(5186,'filter.instrument.patient.firstName','en','lava','crms','filter','instrument.patient','firstName','','i','string','No','First Name',NULL,NULL,0,'','',NULL,8,'','2009-01-25 05:28:51'),(5187,'filter.instrument.patient.lastName','en','lava','crms','filter','instrument.patient','lastName','','i','string','no','Last name',NULL,NULL,0,'','',NULL,9,'','2009-01-25 05:28:51'),(5188,'filter.instrument.visit.projName','en','lava','crms','filter','instrument.visit','projName','','i','string','No','Project',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5189,'filter.instrument.visit.visitType','en','lava','crms','filter','instrument.visit','visitType','','i','string','No','Visit Type',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5190,'*.medications.drugId','en','lava','crms',NULL,'medications','drugId',NULL,'r','string','No','Drug ID',NULL,NULL,0,'readonly',NULL,NULL,3,'The Multum generic drug id for the medication','2009-03-05 22:15:50'),(5191,'*.medications.generic','en','lava','crms',NULL,'medications','generic',NULL,'r','string','No','Generic',50,NULL,0,'readonly',NULL,NULL,5,'Generic Name of the medication','2009-03-05 22:15:50'),(5192,'*.medications.brand','en','lava','crms',NULL,'medications','brand',NULL,'r','string','No','Brand Name',50,NULL,0,'readonly',NULL,NULL,6,'Brand Name of the medication (optional)','2009-03-05 22:15:50'),(5193,'*.medications.notListed','en','lava','crms',NULL,'medications','notListed',NULL,'r','string','No','Not Listed',50,NULL,0,NULL,NULL,NULL,7,'Description of the medication if not listed','2009-03-05 22:15:50'),(5194,'*.medications.drugLookup','en','lava','crms',NULL,'medications','drugLookup',NULL,'r','range','No','Lookup (00000=clear,99999=Not Listed)',100,NULL,0,NULL,'medications.drugLookup',NULL,40,'Lookup medication by brand or generic name','2009-03-05 22:15:50'),(5195,'*.medications.drugLookupClone','en','lava','crms',NULL,'medications','drugLookupClone',NULL,'r','range','No','Lookup (00000=clear,99999=Not Listed)',100,NULL,0,NULL,NULL,NULL,40,'Lookup medication by brand or generic name','2009-03-05 22:15:50'),(5196,'filter.patient.id','en','lava','crms','filter','patient','id','','i','numeric','No','PIDN',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5197,'*.patient.id','en','lava','crms',NULL,'Patient','id','','c','numeric','Yes','PIDN',NULL,NULL,0,'','',NULL,1,'','2009-01-25 05:28:51'),(5198,'*.patient.educ','en','lava','crms',NULL,'Patient','educ','Personal History/Current Arrangements','i','range','No','Education',NULL,NULL,0,'','generic.education',NULL,2,'','2009-01-25 05:28:51'),(5199,'*.patient.lastName','en','lava','crms',NULL,'Patient','lastName','ID and Core Demographics','i','string','Yes','Last Name',NULL,NULL,0,'','',NULL,2,'','2009-01-25 05:28:51'),(5200,'*.patient.middleInitial','en','lava','crms',NULL,'Patient','middleInitial','ID and Core Demographics','i','string','No','Middle Initial',1,3,0,'','',NULL,3,'','2009-01-25 05:28:51'),(5201,'*.patient.vet','en','lava','crms',NULL,'Patient','vet','Personal History/Current Arrangements','i','range','No','Millitary Veteran',NULL,NULL,0,'','generic.yesNoDK',NULL,3,'','2009-01-25 05:28:51'),(5202,'*.patient.firstName','en','lava','crms',NULL,'Patient','firstName','ID and Core Demographics','i','string','Yes','First Name',NULL,NULL,0,'','',NULL,4,'','2009-01-25 05:28:51'),(5203,'*.patient.spanOr','en','lava','crms',NULL,'Patient','spanOr','Racial Demographics','i','range','No','Spanish Origin',NULL,NULL,0,'','generic.yesNoDK',NULL,4,'','2009-01-25 05:28:51'),(5204,'*.patient.ifSpanOr','en','lava','crms',NULL,'Patient','ifSpanOr','Racial Demographics','i','range','No','If of Spanish Origin',NULL,NULL,0,'','muds.spanishOrigin',NULL,5,'','2009-01-25 05:28:51'),(5205,'*.patient.suffix','en','lava','crms',NULL,'Patient','suffix','ID and Core Demographics','i','string','No','Suffix',NULL,NULL,0,'','',NULL,5,'','2009-01-25 05:28:51'),(5206,'*.patient.degree','en','lava','crms',NULL,'Patient','degree','ID and Core Demographics','i','string','No','Degree',NULL,NULL,0,'','',NULL,6,'','2009-01-25 05:28:51'),(5207,'*.patient.race','en','lava','crms',NULL,'Patient','race','Racial Demographics','i','range','No','Race',NULL,NULL,0,'','generic.race',NULL,6,'','2009-01-25 05:28:51'),(5208,'*.patient.multRac','en','lava','crms',NULL,'Patient','multRac','Racial Demographics','i','range','No','Mutiple Race',NULL,NULL,0,'','generic.yesNo',NULL,7,'','2009-01-25 05:28:51'),(5209,'*.patient.ucid','en','lava','crms',NULL,'Patient','ucid','ID and Core Demographics','i','string','No','UCID/MRN',NULL,NULL,0,'','',NULL,7,'','2009-01-25 05:28:51'),(5210,'*.patient.multRace1','en','lava','crms',NULL,'Patient','multRace1','Racial Demographics','i','range','No','Multiple Race 1',NULL,NULL,0,'','generic.race',NULL,8,'','2009-01-25 05:28:51'),(5211,'*.patient.ssn','en','lava','crms',NULL,'Patient','ssn','ID and Core Demographics','i','string','No','SSN',NULL,NULL,0,'','',NULL,8,'','2009-01-25 05:28:51'),(5212,'*.patient.birthDate','en','lava','crms',NULL,'Patient','birthDate','ID and Core Demographics','i','date','Yes','Date of Birth',NULL,NULL,0,'','',NULL,9,'','2009-01-25 05:28:51'),(5213,'*.patient.multRace2','en','lava','crms',NULL,'Patient','multRace2','Racial Demographics','i','range','No','Multiple Race 2',NULL,NULL,0,'','generic.race',NULL,9,'','2009-01-25 05:28:51'),(5214,'*.patient.age','en','lava','crms',NULL,'Patient','age','ID and Core Demographics','c','numeric','No','Age',NULL,NULL,0,'','',NULL,10,'','2009-01-25 05:28:51'),(5215,'*.patient.multRace3','en','lava','crms',NULL,'Patient','multRace3','Racial Demographics','i','range','No','Multiple Race 3',NULL,NULL,0,'','generic.race',NULL,10,'','2009-01-25 05:28:51'),(5216,'*.patient.desRace','en','lava','crms',NULL,'Patient','desRace','Racial Demographics','i','range','No','Race that Best Describes',NULL,NULL,0,'','generic.race',NULL,11,'','2009-01-25 05:28:51'),(5217,'*.patient.gender','en','lava','crms',NULL,'Patient','gender','ID and Core Demographics','i','range','Yes','Gender',NULL,NULL,0,'','generic.gender',NULL,11,'','2009-01-25 05:28:51'),(5218,'*.patient.hand','en','lava','crms',NULL,'Patient','hand','ID and Core Demographics','i','range','No','Handedness',NULL,NULL,0,'','patient.handedness',NULL,12,'','2009-01-25 05:28:51'),(5219,'*.patient.mrgStat','en','lava','crms',NULL,'Patient','mrgStat','Personal History/Current Arrangements','i','range','No','Marital Status',NULL,NULL,0,'','patient.maritalStatus',NULL,12,'','2009-01-25 05:28:51'),(5220,'*.patient.sexualOrient','en','lava','crms',NULL,'Patient','sexualOrient','Personal History/Current Arrangements','i','range','No','Sexual Orientation/Identity',NULL,NULL,0,'','patient.sexualOrientation',NULL,12,'','2009-01-25 05:28:51'),(5221,'*.patient.deceased','en','lava','crms',NULL,'Patient','deceased','ID and Core Demographics','i','scale','Yes','Is Deceased',NULL,NULL,0,'','generic.yesNoZero',NULL,13,'','2009-01-25 05:28:51'),(5222,'*.patient.meda','en','lava','crms',NULL,'Patient','meda','Insurance Details','i','range','No','MEDA',NULL,NULL,0,'','generic.yesNoDK',NULL,13,'','2009-01-25 05:28:51'),(5223,'*.patient.deathDate','en','lava','crms',NULL,'Patient','deathDate','ID and Core Demographics','i','date','No','Date of Death',NULL,NULL,0,'','',NULL,14,'','2009-01-25 05:28:51'),(5224,'*.patient.medb','en','lava','crms',NULL,'Patient','medb','Insurance Details','i','range','No','MEDB',NULL,NULL,0,'','generic.yesNoDK',NULL,14,'','2009-01-25 05:28:51'),(5225,'*.patient.medCal','en','lava','crms',NULL,'Patient','medCal','Insurance Details','i','range','No','MEDCal',NULL,NULL,0,'','generic.yesNoDK',NULL,15,'','2009-01-25 05:28:51'),(5226,'*.patient.transNeeded','en','lava','crms',NULL,'Patient','transNeeded','Language Details','i','scale','No','Interpreter Needed',NULL,NULL,0,'','generic.yesNoZero',NULL,15,'','2009-01-25 05:28:51'),(5227,'*.patient.primaryLanguage','en','lava','crms',NULL,'Patient','primaryLanguage','Language Details','i','suggest','No','Primary Language',25,NULL,0,'','patient.patientLanguage',NULL,16,'','2009-01-25 05:28:51'),(5228,'*.patient.testingLanguage','en','lava','crms',NULL,'Patient','testingLanguage','Language Details','i','suggest','No','Testing Language',25,NULL,0,'','patient.patientLanguage',NULL,16,'','2009-01-25 05:28:51'),(5229,'*.patient.transLanguage','en','lava','crms',NULL,'Patient','transLanguage','Language Details','i','suggest','No','Interpreter Type',25,NULL,0,'','patient.patientLanguage',NULL,16,'','2009-01-25 05:28:51'),(5230,'*.patient.vaInsur','en','lava','crms',NULL,'Patient','vaInsur','Insurance Details','i','range','No','VAinsur',NULL,NULL,0,'','generic.yesNoDK',NULL,16,'','2009-01-25 05:28:51'),(5231,'*.patient.enterBy','en','lava','crms',NULL,'Patient','enterBy','Record Management','i','suggest','No','Entered By',NULL,NULL,0,'','patient.staffList',NULL,17,'','2009-01-25 05:28:51'),(5232,'*.patient.insurLongTerm','en','lava','crms',NULL,'Patient','insurLongTerm','Insurance Details','i','range','No','InsurLongTerm',NULL,NULL,0,'','generic.yesNoDK',NULL,17,'','2009-01-25 05:28:51'),(5233,'*.patient.dupNameFlag','en','lava','crms',NULL,'Patient','dupNameFlag','Record Management','i','scale','Yes','Dup Name Warning',NULL,NULL,0,'','generic.yesNoZero',NULL,18,'','2009-01-25 05:28:51'),(5234,'*.patient.other','en','lava','crms',NULL,'Patient','other','Insurance Details','i','range','No','Other',NULL,NULL,0,'','generic.yesNoDK',NULL,18,'','2009-01-25 05:28:51'),(5235,'*.patient.fullNameRev','en','lava','crms',NULL,'Patient','fullNameRev','','c','string','No','Patient',NULL,NULL,0,'','',NULL,19,'','2009-01-25 05:28:51'),(5236,'*.patient.none','en','lava','crms',NULL,'Patient','none','Insurance Details','i','range','No','None',NULL,NULL,0,'','generic.yesNoDK',NULL,19,'','2009-01-25 05:28:51'),(5237,'*.patient.deidentified','en','lava','crms',NULL,'patient','deidentified','','i','toggle','No','Use Deidentified ID',NULL,NULL,0,'','',NULL,20,'','2009-01-25 05:28:51'),(5238,'*.patient.fullName','en','lava','crms',NULL,'Patient','fullName','','c','string','No','Patient',NULL,NULL,0,'','',NULL,20,'','2009-01-25 05:28:51'),(5239,'*.patient.reimburse','en','lava','crms',NULL,'Patient','reimburse','Insurance Details','i','range','No','Reimburse',NULL,NULL,0,'','muds.reimbursement',NULL,20,'','2009-01-25 05:28:51'),(5240,'*.patient.fullNameNoSuffix','en','lava','crms',NULL,'Patient','fullNameNoSuffix','','c','string','No','Patient',NULL,NULL,0,'','',NULL,21,'','2009-01-25 05:28:51'),(5241,'*.patient.fullNameRevNoSuffix','en','lava','crms',NULL,'Patient','fullNameRevNoSuffix','','c','string','No','Patient',NULL,NULL,0,'','',NULL,21,'','2009-01-25 05:28:51'),(5242,'*.patient.payment','en','lava','crms',NULL,'Patient','payment','Insurance Details','i','range','No','Payment',NULL,NULL,0,'','muds.payment',NULL,21,'','2009-01-25 05:28:51'),(5243,'*.patient.subjectId','en','lava','crms',NULL,'patient','subjectId','','i','string','Yes','Subject ID',NULL,NULL,0,'','',NULL,21,'','2009-01-25 05:28:51'),(5244,'*.patient.primCare','en','lava','crms',NULL,'Patient','primCare','Personal History/Current Arrangements','i','range','No','Primary Caregiver',NULL,NULL,0,'','muds.primaryCaregiver',NULL,22,'','2009-01-25 05:28:51'),(5245,'*.patient.reside','en','lava','crms',NULL,'Patient','reside','Personal History/Current Arrangements','i','range','No','Principle Residence',NULL,NULL,0,'','muds.principalResidence',NULL,23,'','2009-01-25 05:28:51'),(5246,'*.patient.legStat','en','lava','crms',NULL,'Patient','legStat','Personal History/Current Arrangements','i','range','No','Legal Status',NULL,NULL,0,'','patient.legalStatus',NULL,24,'','2009-01-25 05:28:51'),(5247,'*.patient.advDir','en','lava','crms',NULL,'Patient','advDir','Personal History/Current Arrangements','i','range','No','Advanced Directive',NULL,NULL,0,'','generic.yesNo',NULL,25,'','2009-01-25 05:28:51'),(5248,'*.patient.raceText','en','lava','crms',NULL,'Patient','raceText','','c','string','No','RaceText',NULL,NULL,0,'','',NULL,26,'','2009-01-25 05:28:51'),(5249,'*.patient.multRace1Text','en','lava','crms',NULL,'Patient','multRace1Text','','c','string','No','MultRace1Text',NULL,NULL,0,'','',NULL,27,'','2009-01-25 05:28:51'),(5250,'*.patient.multRace2Text','en','lava','crms',NULL,'Patient','multRace2Text','','c','string','No','MultRace2Text',NULL,NULL,0,'','',NULL,28,'','2009-01-25 05:28:51'),(5251,'*.patient.multRace3Text','en','lava','crms',NULL,'Patient','multRace3Text','','c','string','No','MultRace3Text',NULL,NULL,0,'','',NULL,29,'','2009-01-25 05:28:51'),(5252,'*.patient.desRaceText','en','lava','crms',NULL,'Patient','desRaceText','','c','string','No','DesRaceText',NULL,NULL,0,'','',NULL,30,'','2009-01-25 05:28:51'),(5253,'*.patient.ifSpanOrText','en','lava','crms',NULL,'Patient','ifSpanOrText','','c','string','No','ifSpanOrText',NULL,NULL,0,'','',NULL,31,'','2009-01-25 05:28:51'),(5254,'*.patient.nihEthnicCategory','en','lava','crms',NULL,'Patient','nihEthnicCategory','','c','string','No','NIHEthnicCategory',NULL,NULL,0,'','',NULL,32,'','2009-01-25 05:28:51'),(5255,'*.patient.nihRacialCategory','en','lava','crms',NULL,'Patient','nihRacialCategory','','c','string','No','NIHRacialCategory',NULL,NULL,0,'','',NULL,33,'','2009-01-25 05:28:51'),(5256,'*.patient.nihHispanicRacialCategory','en','lava','crms',NULL,'Patient','nihHispanicRacialCategory','','c','string','No','NIHHispanicRacialCategory',NULL,NULL,0,'','',NULL,34,'','2009-01-25 05:28:51'),(5257,'*.patient.altArccId','en','lava','crms',NULL,'Patient','altArccId','Alternate ARCC ID','i','range','No','Alternate ARCC ID',NULL,NULL,0,'','patient.alternateARCCID',NULL,35,'','2009-01-25 05:28:51'),(5258,'*.patient.altPatId','en','lava','crms',NULL,'Patient','altPatId','Alternate ARCC ID','i','string','No','Alternate PAT ID',NULL,NULL,0,'','',NULL,36,'','2009-01-25 05:28:51'),(5259,'*.patientContext.patientSearch','en','lava','crms',NULL,'PatientContext','patientSearch','','i','suggest','No','',NULL,NULL,0,'','context.patientResults',NULL,NULL,'','2009-01-25 05:28:51'),(5260,'*.patientContext.searchBy','en','lava','crms',NULL,'PatientContext','searchBy','','i','range','No','',NULL,NULL,0,'','context.searchBy',NULL,NULL,'','2009-01-25 05:28:51'),(5261,'*.patientDoctor.doctor_id','en','lava','crms',NULL,'patientDoctor','doctor_id','','i','range','','Doctor',NULL,NULL,0,'','doctor.allDoctors',NULL,NULL,'','2009-01-25 05:28:51'),(5262,'*.patientDoctor.id','en','lava','crms',NULL,'PatientDoctor','id','','c','string','Yes','id',NULL,NULL,0,'','',NULL,1,'','2009-01-25 05:28:51'),(5263,'*.patientDoctor.docStat','en','lava','crms',NULL,'PatientDoctor','docStat','','i','suggest','No','Doctor Status',NULL,NULL,0,'','doctor.doctorStatus',NULL,4,'','2009-01-25 05:28:51'),(5264,'*.patientDoctor.docNote','en','lava','crms',NULL,'PatientDoctor','docNote','','i','text','No','Doctor Note',NULL,NULL,0,'rows=\"3\" cols=\"50\"','',NULL,5,'','2009-01-25 05:28:51'),(5265,'*.project.projUnitDesc','en','lava','crms',NULL,'project','projUnitDesc','','c','string','No','Project',NULL,NULL,0,'','',NULL,NULL,'Project Name','2009-01-25 05:28:51'),(5266,'*.projectContext.projectName','en','lava','crms',NULL,'projectContext','projectName','','i','range','No','',NULL,NULL,0,'','context.projectList',NULL,NULL,'','2009-01-25 05:28:51'),(5267,'*.reportSetup.format','en','lava','crms',NULL,'reportSetup','format','','i','range','No','Format',NULL,10,0,'','reportSetup.format',NULL,NULL,'','2009-01-30 09:41:46'),(5268,'filter.reportSetup.customDateStart','en','lava','crms','filter','reportSetup','customDateStart','','i','date','No','Date is between',NULL,NULL,0,'','',NULL,NULL,'','2009-01-30 09:41:46'),(5269,'filter.reportSetup.customDateEnd','en','lava','crms','filter','reportSetup','customDateEnd','','i','date','No','      and',NULL,NULL,0,'','',NULL,NULL,'','2009-01-30 09:41:46'),(5270,'filter.reportSetup.projectList','en','lava','crms','filter','reportSetup','projectList','','i','multiple','No','Project(s)',NULL,20,0,'','context.projectList',NULL,NULL,'','2009-01-30 09:41:46'),(5271,'udsExtract.reportSetup.customDateStart','en','lava','crms','udsExtract','reportSetup','customDateStart',NULL,'i','datetime','No','Start Date/Time',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2009-01-30 09:41:46'),(5272,'udsExtract.reportSetup.format','en','lava','crms','udsExtract','reportSetup','format',NULL,'i','range','No','Format',NULL,10,0,NULL,'reportSetup.formatCsv',NULL,NULL,NULL,'2009-01-30 09:41:46'),(5273,'filter.reportSetup.patientId','en','lava','crms','filter','reportSetup','patientId',NULL,'i','numeric','No','Patient ID',NULL,5,0,NULL,NULL,NULL,NULL,NULL,'2009-01-30 09:41:46'),(5274,'*.reportSetup.format','en','lava','crms',NULL,'reportSetup','format','','i','range','No','Format',NULL,10,0,'','reportSetup.format',NULL,NULL,'','2009-01-30 09:41:46'),(5275,'filter.reportSetup.customDateStart','en','lava','crms','filter','reportSetup','customDateStart','','i','date','No','Date is between',NULL,NULL,0,'','',NULL,NULL,'','2009-01-30 09:41:46'),(5276,'filter.reportSetup.customDateEnd','en','lava','crms','filter','reportSetup','customDateEnd','','i','date','No','      and',NULL,NULL,0,'','',NULL,NULL,'','2009-01-30 09:41:46'),(5277,'filter.reportSetup.projectList','en','lava','crms','filter','reportSetup','projectList','','i','multiple','No','Project(s)',NULL,20,0,'','context.projectList',NULL,NULL,'','2009-01-30 09:41:46'),(5278,'udsExtract.reportSetup.customDateStart','en','lava','crms','udsExtract','reportSetup','customDateStart',NULL,'i','date','No','Start Date',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2009-01-30 09:41:46'),(5279,'udsExtract.reportSetup.format','en','lava','crms','udsExtract','reportSetup','format',NULL,'i','range','No','Format',NULL,10,0,NULL,'reportSetup.formatCsv',NULL,NULL,NULL,'2009-01-30 09:41:46'),(5280,'filter.reportSetup.patientId','en','lava','crms','filter','reportSetup','patientId',NULL,'i','numeric','No','Patient ID',NULL,5,0,NULL,NULL,NULL,NULL,NULL,'2009-01-30 09:41:46'),(5281,'*.task.id','en','lava','crms',NULL,'task','id','details','c','numeric','No','TaskID',NULL,NULL,0,NULL,NULL,NULL,1,'The unique ID of the task record','2009-01-25 05:28:51'),(5282,'*.task.patient_fullNameRev','en','lava','crms',NULL,'task','patient_fullNameRev','details','c','string','No','Patient',NULL,NULL,0,NULL,NULL,NULL,2,'the ID of the patient','2009-01-25 05:28:51'),(5283,'*.task.projName','en','lava','crms',NULL,'task','projName','details','i','suggest','No','Project',75,NULL,0,NULL,'enrollmentStatus.patientProjects',NULL,3,'The related project of the task (optional)','2009-01-25 05:28:51'),(5284,'filter.task.projName','en','lava','crms','filter','task','projName',NULL,'i','string','No','Project',75,NULL,0,NULL,NULL,NULL,3,'The related project of the task (optional)','2009-01-25 05:28:51'),(5285,'*.task.openedDate','en','lava','crms',NULL,'task','openedDate','details','i','date','No','Opened Date',NULL,NULL,0,NULL,NULL,NULL,4,'Date the task was opened','2009-01-25 05:28:51'),(5286,'filter.task.openedDateEnd','en','lava','crms','filter','task','openedDateEnd',NULL,'i','date','No','and',NULL,NULL,0,NULL,NULL,NULL,4,'Date the task was opened','2009-01-25 05:28:51'),(5287,'filter.task.openedDateStart','en','lava','crms','filter','task','openedDateStart',NULL,'i','date','No','Opened Date Between',NULL,NULL,0,NULL,NULL,NULL,4,'Date the task was opened','2009-01-25 05:28:51'),(5288,'*.task.openedBy','en','lava','crms',NULL,'task','openedBy','details','i','suggest','No','Opened By',25,NULL,0,NULL,'project.staffList',NULL,5,'Who opened the task','2009-01-25 05:28:51'),(5289,'filter.task.openedBy','en','lava','crms','filter','task','openedBy',NULL,'i','string','No','Opened By',25,NULL,0,NULL,NULL,NULL,5,'Who opened the task','2009-01-25 05:28:51'),(5290,'*.task.taskType','en','lava','crms',NULL,'task','taskType','details','i','suggest','No','Task Type',25,NULL,0,NULL,'task.taskType',NULL,6,'The type of task','2009-01-25 05:28:51'),(5291,'filter.task.taskType','en','lava','crms','filter','task','taskType',NULL,'i','suggest','No','Task Type',25,NULL,0,NULL,'task.taskType',NULL,6,'The type of task','2009-01-25 05:28:51'),(5292,'*.task.taskDesc','en','lava','crms',NULL,'task','taskDesc','details','i','text','No','Task Description',255,NULL,0,'rows=\"4\" cols=\"40\"',NULL,NULL,7,'Description of the task','2009-01-25 05:28:51'),(5293,'filter.task.taskDesc','en','lava','crms','filter','task','taskDesc',NULL,'i','string','No','Task Description',255,NULL,0,NULL,NULL,NULL,7,'Description of the task','2009-01-25 05:28:51'),(5294,'*.task.dueDate','en','lava','crms',NULL,'task','dueDate','details','i','date','No','Due Date',NULL,NULL,0,NULL,NULL,NULL,8,'When the task is due','2009-01-25 05:28:51'),(5295,'filter.task.dueDateEnd','en','lava','crms','filter','task','dueDateEnd',NULL,'i','date','No','and',NULL,NULL,0,NULL,NULL,NULL,8,'When the task is due','2009-01-25 05:28:51'),(5296,'filter.task.dueDateStart','en','lava','crms','filter','task','dueDateStart',NULL,'i','date','No','Due Date Between',NULL,NULL,0,NULL,NULL,NULL,8,'When the task is due','2009-01-25 05:28:51'),(5297,'*.task.taskStatus','en','lava','crms',NULL,'task','taskStatus','details','i','suggest','No','Task Status',50,NULL,0,NULL,'task.taskStatus',NULL,9,'The task status','2009-01-25 05:28:51'),(5298,'filter.task.taskStatus','en','lava','crms','filter','task','taskStatus',NULL,'i','suggest','No','Task Status',50,NULL,0,NULL,'task.taskStatus',NULL,9,'The task status','2009-01-25 05:28:51'),(5299,'*.task.assignedTo','en','lava','crms',NULL,'task','assignedTo','details','i','suggest','No','Assigned To',25,NULL,0,NULL,'project.staffList',NULL,10,'Who the task is assigned to','2009-01-25 05:28:51'),(5300,'filter.task.assignedTo','en','lava','crms','filter','task','assignedTo',NULL,'i','string','No','Assigned To',25,NULL,0,NULL,NULL,NULL,10,'Who the task is assigned to','2009-01-25 05:28:51'),(5301,'*.task.workingNotes','en','lava','crms',NULL,'task','workingNotes','details','i','text','No','Working Notes',255,NULL,0,'rows=\"4\" cols=\"40\"',NULL,NULL,11,'Notes about the task','2009-01-25 05:28:51'),(5302,'filter.task.workingNotes','en','lava','crms','filter','task','workingNotes',NULL,'i','string','No','Working Notes',255,NULL,0,NULL,NULL,NULL,11,'Notes about the task','2009-01-25 05:28:51'),(5303,'*.task.closedDate','en','lava','crms',NULL,'task','closedDate','details','i','date','No','Closed Date',NULL,NULL,0,NULL,NULL,NULL,12,'When the task was completed or closed','2009-01-25 05:28:51'),(5304,'filter.task.closedDateEnd','en','lava','crms','filter','task','closedDateEnd',NULL,'i','date','No','and',NULL,NULL,0,NULL,NULL,NULL,12,'When the task was completed or closed','2009-01-25 05:28:51'),(5305,'filter.task.closedDateStart','en','lava','crms','filter','task','closedDateStart',NULL,'i','date','No','Closed Date Between',NULL,NULL,0,NULL,NULL,NULL,12,'When the task was completed or closed','2009-01-25 05:28:51'),(5306,'filter.task.patient.firstName','en','lava','crms','filter','task.patient','firstName',NULL,'i','string','No','Patient',NULL,NULL,0,NULL,NULL,NULL,2,'the ID of the patient','2009-01-25 05:28:51'),(5307,'filter.task.patient.lastName','en','lava','crms','filter','task.patient','lastName',NULL,'i','string','No','Patient',NULL,NULL,0,NULL,NULL,NULL,2,'the ID of the patient','2009-01-25 05:28:51'),(5308,'filter.visit.customDateEnd','en','lava','crms','filter','Visit','customDateEnd','','i','date','No','      and',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5309,'filter.visit.customDateStart','en','lava','crms','filter','Visit','customDateStart','','i','date','No','Date is between',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5310,'filter.visit.patient.firstName','en','lava','crms','filter','Visit','patient.firstName','','i','string','No','First Name',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5311,'filter.visit.patient.lastName','en','lava','crms','filter','Visit','patient.lastName','','i','string','No','Last Name',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5312,'filter.visit.projName','en','lava','crms','filter','Visit','projName','','i','string','No','Project',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5313,'filter.visit.visitLocation','en','lava','crms','filter','Visit','visitLocation','','i','suggest','No','Location',NULL,NULL,0,'','visit.locations',NULL,NULL,'','2009-01-25 05:28:51'),(5314,'filter.visit.visitType','en','lava','crms','filter','Visit','visitType','','i','string','No','Type',NULL,NULL,0,'','',NULL,NULL,'','2009-01-25 05:28:51'),(5315,'*.visit.id','en','lava','crms',NULL,'Visit','id','','c','range','Yes','Visit ID',NULL,40,0,'','visit.patientVisits',NULL,1,'','2009-01-25 05:28:51'),(5316,'*.visit.projName','en','lava','crms',NULL,'Visit','projName','','i','range','Yes','Project',NULL,NULL,0,'','enrollmentStatus.patientProjects',NULL,3,'','2009-01-25 05:28:51'),(5317,'*.visit.visitLocation','en','lava','crms',NULL,'Visit','visitLocation','','i','suggest','Yes','Location',NULL,NULL,0,'','visit.visitLocations',NULL,4,'','2009-01-25 05:28:51'),(5318,'*.visit.visitType','en','lava','crms',NULL,'Visit','visitType','','i','range','Yes','Visit Type',NULL,NULL,0,'','visit.visitTypes',NULL,5,'','2009-01-25 05:28:51'),(5319,'*.visit.visitWith','en','lava','crms',NULL,'Visit','visitWith','','i','suggest','Yes','Appt With',NULL,NULL,0,'','project.staffList',NULL,6,'','2009-01-25 05:28:51'),(5320,'filter.visit.visitWith','en','lava','crms','filter','Visit','visitWith','','i','suggest','No','Appt With',NULL,NULL,0,'','project.staffList',NULL,6,'','2009-01-25 05:28:51'),(5321,'*.visit.visitDate','en','lava','crms',NULL,'Visit','visitDate','','i','date','Yes','Visit Date',NULL,10,0,'','',NULL,7,'','2009-01-25 05:28:51'),(5322,'*.visit.visitStatus','en','lava','crms',NULL,'Visit','visitStatus','','i','range','Yes','Status',NULL,NULL,0,'','visit.status',NULL,8,'','2009-01-25 05:28:51'),(5323,'filter.visit.visitStatus','en','lava','crms','filter','Visit','visitStatus','','i','range','Yes','Status',NULL,NULL,0,'','visit.status',NULL,8,'','2009-01-25 05:28:51'),(5324,'*.visit.visitTime','en','lava','crms','','visit','visitTime','','i','time','No','Time',NULL,NULL,0,NULL,NULL,NULL,8,'Time of the visit','2009-04-29 21:00:00'),(5325,'*.visit.visitNote','en','lava','crms',NULL,'Visit','visitNote','','i','text','No','Visit Notes',NULL,NULL,0,'rows=\"5\" cols=\"35\"','',NULL,9,'','2009-01-25 05:28:51'),(5326,'*.visit.visitDescrip','en','lava','crms',NULL,'Visit','visitDescrip','','c','string','No','Description',NULL,NULL,0,'','',NULL,16,'','2009-01-25 05:28:51'),(5327,'*.visit.ageAtVisit','en','lava','crms',NULL,'Visit','ageAtVisit','','c','numeric','No','Age At Visit',NULL,NULL,0,'','',NULL,17,'','2009-01-25 05:28:51'),(5328,'*.findPatient.birthDateEnd','en','lava','crms',NULL,'findPatient','birthDateEnd','','i','date','No','',NULL,NULL,0,'','',NULL,1,'','2011-10-05 21:40:00'),(5329,'*.findPatient.birthDateStart','en','lava','crms',NULL,'findPatient','birthDateStart','','i','date','No','',NULL,NULL,0,'','',NULL,2,'','2011-10-05 21:40:00'),(5330,'*.findPatient.caregiverFirstName','en','lava','crms',NULL,'findPatient','caregiverFirstName','','i','string','No','',NULL,NULL,0,'','',NULL,3,'','2011-10-05 21:40:00'),(5331,'*.findPatient.caregiverFullNameRev','en','lava','crms',NULL,'findPatient','caregiverFullNameRev','','i','string','No','',NULL,NULL,0,'','',NULL,4,'','2011-10-05 21:40:00'),(5332,'*.findPatient.caregiverFullNameRev','en','lava','crms',NULL,'findPatient','caregiverFullNameRev','','i','string','No','',NULL,NULL,0,'','',NULL,5,'','2011-10-05 21:40:00'),(5333,'*.findPatient.caregiverLastName','en','lava','crms',NULL,'findPatient','caregiverLastName','','i','string','No','',NULL,NULL,0,'','',NULL,6,'','2011-10-05 21:40:00'),(5334,'*.findPatient.contactInfoEmail','en','lava','crms',NULL,'findPatient','contactInfoEmail','','i','string','No','',NULL,NULL,0,'','',NULL,7,'','2011-10-05 21:40:00'),(5335,'*.findPatient.contactInfoPhone','en','lava','crms',NULL,'findPatient','contactInfoPhone','','i','string','No','',NULL,NULL,0,'','',NULL,8,'','2011-10-05 21:40:00'),(5336,'*.findPatient.deathDateEnd','en','lava','crms',NULL,'findPatient','deathDateEnd','','i','date','No','',NULL,NULL,0,'','',NULL,9,'','2011-10-05 21:40:00'),(5337,'*.findPatient.deathDateStart','en','lava','crms',NULL,'findPatient','deathDateStart','','i','date','No','',NULL,NULL,0,'','',NULL,10,'','2011-10-05 21:40:00'),(5338,'*.findPatient.firstName','en','lava','crms',NULL,'findPatient','firstName','','i','string','No','',NULL,NULL,0,'','',NULL,11,'','2011-10-05 21:40:00'),(5339,'*.findPatient.lastName','en','lava','crms',NULL,'findPatient','lastName','','i','string','No','',NULL,NULL,0,'','',NULL,12,'','2011-10-05 21:40:00'),(5340,'*.findPatient.phone','en','lava','crms',NULL,'findPatient','phone','','i','string','No','',NULL,NULL,0,'','',NULL,13,'','2011-10-05 21:40:00');
/*!40000 ALTER TABLE `viewproperty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit`
--

DROP TABLE IF EXISTS `visit`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `visit` (
  `VID` int(10) NOT NULL auto_increment,
  `PIDN` int(10) NOT NULL,
  `ProjName` varchar(75) NOT NULL,
  `VLocation` varchar(25) NOT NULL,
  `VType` varchar(25) NOT NULL,
  `VWith` varchar(25) default NULL,
  `VDate` date NOT NULL,
  `VTime` time default NULL,
  `VStatus` varchar(25) NOT NULL,
  `VNotes` varchar(255) default NULL,
  `FUMonth` char(3) default NULL,
  `FUYear` char(4) default NULL,
  `FUNote` varchar(100) default NULL,
  `WList` varchar(25) default NULL,
  `WListNote` varchar(100) default NULL,
  `WListDate` datetime default NULL,
  `VShortDesc` varchar(255) default NULL,
  `AgeAtVisit` smallint(5) default NULL,
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`VID`),
  KEY `visit__PIDN` (`PIDN`),
  KEY `visit__ProjName` (`ProjName`),
  CONSTRAINT `visit__PIDN` FOREIGN KEY (`PIDN`) REFERENCES `patient` (`PIDN`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `visit__ProjName` FOREIGN KEY (`ProjName`) REFERENCES `projectunit` (`ProjUnitDesc`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `visit`
--

LOCK TABLES `visit` WRITE;
/*!40000 ALTER TABLE `visit` DISABLE KEYS */;
/*!40000 ALTER TABLE `visit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vwrptprojectpatientstatus`
--

DROP TABLE IF EXISTS `vwrptprojectpatientstatus`;
/*!50001 DROP VIEW IF EXISTS `vwrptprojectpatientstatus`*/;
/*!50001 CREATE TABLE `vwrptprojectpatientstatus` (
  `PIDN` int(11),
  `FullNameRev` varchar(100),
  `AGE` int(11),
  `Gender` tinyint(4),
  `ProjName` varchar(75),
  `StatusDate` datetime,
  `Status` varchar(25),
  `StatusNote` varchar(100),
  `StatusOrder` bigint(20),
  `ProjUnitDesc` varchar(75),
  `Project` varchar(25),
  `Unit` varchar(25),
  `UnitOrder` bigint(20)
) */;

--
-- Temporary table structure for view `vwrptprojectvisitlist`
--

DROP TABLE IF EXISTS `vwrptprojectvisitlist`;
/*!50001 DROP VIEW IF EXISTS `vwrptprojectvisitlist`*/;
/*!50001 CREATE TABLE `vwrptprojectvisitlist` (
  `PIDN` int(10),
  `FullNameRev` varchar(100),
  `TransLanguage` varchar(25),
  `Gender` tinyint(3),
  `AGE` int(10),
  `VLocation` varchar(25),
  `VType` varchar(25),
  `VWith` varchar(25),
  `VDate` date,
  `VStatus` varchar(25),
  `ProjName` varchar(75),
  `VNotes` varchar(255),
  `VDateNoTime` date
) */;

--
-- Dumping routines for database 'lava_demo'
--
DELIMITER ;;
/*!50003 DROP PROCEDURE IF EXISTS `util_AddTableToHibernateProperty` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `util_AddTableToHibernateProperty`(TableNameIn varchar (50),EntityIn varchar (50),ScopeIn varchar(25))
BEGIN

INSERT INTO `hibernateproperty` (`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,
`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`)
  SELECT ScopeIn, EntityIn, CONCAT(LOWER(LEFT(`COLUMN_NAME`,1)),RIGHT(`COLUMN_NAME`,LENGTH(`COLUMN_NAME`)-1)),
   TableNameIn, `COLUMN_NAME`, `DATA_TYPE`,
   CASE WHEN `CHARACTER_MAXIMUM_LENGTH` < 10000 THEN `CHARACTER_MAXIMUM_LENGTH` ELSE NULL END, `NUMERIC_PRECISION`, `NUMERIC_SCALE`,
    `ORDINAL_POSITION`, CONCAT(LOWER(LEFT(`COLUMN_NAME`,1)),RIGHT(`COLUMN_NAME`,LENGTH(`COLUMN_NAME`)-1)),
		CASE `DATA_TYPE` WHEN 'datetime' THEN 'timestamp'
			WHEN 'float' THEN 'float'
			WHEN 'image' THEN 'binary'
			WHEN 'int' THEN 'long'
			WHEN 'timestamp' THEN 'timestamp'
			WHEN 'text' THEN 'text'
			WHEN 'decimal' THEN 'float'
			WHEN 'numeric' THEN 'float'
			WHEN 'char' THEN 'character'
			WHEN 'nvarchar' THEN 'string'
			WHEN 'binary' THEN 'binary'
			WHEN 'tinyint' THEN 'byte'
			WHEN 'date' THEN 'date'
			WHEN 'time' THEN 'time'
			WHEN 'smalldatetime' THEN 'timestamp'
			WHEN 'varchar' THEN 'string'
			WHEN 'bit' THEN 'boolean'
			WHEN 'smallint' THEN 'short'
			ELSE 'UNMAPPED TYPE' END,
		NULL, CASE WHEN `IS_NULLABLE`='No' THEN 'Yes' ELSE 'No' END
	FROM `INFORMATION_SCHEMA`.`COLUMNS` WHERE `TABLE_NAME`=TableNameIn order by `ORDINAL_POSITION`;

END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `util_AddTableToMetaData` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `util_AddTableToMetaData`(TableNameIn varchar (50),EntityIn varchar (50),ScopeIn varchar(25))
BEGIN

INSERT INTO `viewproperty` (`messageCode`,`locale`,`instance`,`scope`,`entity`,`property`,`required`,`maxLength`,`propOrder`)
   SELECT CONCAT('*.',EntityIn, '.',LOWER(LEFT(`COLUMN_NAME`,1)),RIGHT(`COLUMN_NAME`,LENGTH(`COLUMN_NAME`)-1)),
   'en','lava',ScopeIn, EntityIn, CONCAT(LOWER(LEFT(`COLUMN_NAME`,1)),RIGHT(`COLUMN_NAME`,LENGTH(`COLUMN_NAME`)-1)),
        CASE WHEN `IS_NULLABLE`='No' THEN 'Yes' ELSE 'No' END,
        CASE WHEN `CHARACTER_MAXIMUM_LENGTH` < 10000 THEN `CHARACTER_MAXIMUM_LENGTH` ELSE NULL END, `ORDINAL_POSITION`
	FROM `INFORMATION_SCHEMA`.`COLUMNS` WHERE `TABLE_NAME`=TableNameIn order by `ORDINAL_POSITION`;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `util_CreateMetadataInsertStatements` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `util_CreateMetadataInsertStatements`(InstanceMask varchar(50), ScopeMask varchar(50), EntityMask varchar (50))
BEGIN

IF InstanceMask IS NULL THEN
  SET InstanceMask = 'lava';
END IF;

IF ScopeMask IS NULL THEN
  SET ScopeMask = '%';
END IF;


IF EntityMask IS NULL THEN
  SET EntityMask = '%';
END IF;





SELECT CONCAT('INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,',
            '`context`,`style`,`required`,`label`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,',
            '`propOrder`,`quickHelp`,`modified`) VALUES(',
        	  CASE WHEN `messageCode` IS NULL THEN 'NULL,' ELSE CONCAT('''',`messageCode`,''',') END,
	          CASE WHEN `locale` IS NULL THEN 'NULL,' ELSE CONCAT('''',`locale`,''',') END,
	          CASE WHEN `instance` IS NULL THEN 'NULL,' ELSE CONCAT('''',`instance`,''',') END,
        	  CASE WHEN `scope` IS NULL THEN 'NULL,' ELSE CONCAT('''',`scope`,''',') END,
        	  CASE WHEN `prefix` IS NULL THEN 'NULL,' ELSE CONCAT('''',`prefix`,''',') END,
        	  CASE WHEN `entity` IS NULL THEN 'NULL,' ELSE CONCAT('''',`entity`,''',') END,
        	  CASE WHEN `property` IS NULL THEN 'NULL,' ELSE CONCAT('''',`property`,''',') END,
            CASE WHEN `section` IS NULL THEN 'NULL,' ELSE CONCAT('''',`section`,''',') END,
            CASE WHEN `context` IS NULL THEN 'NULL,' ELSE CONCAT('''',`context`,''',') END,
            CASE WHEN `style` IS NULL THEN 'NULL,' ELSE CONCAT('''',`style`,''',') END,
            CASE WHEN `required` IS NULL THEN 'NULL,' ELSE CONCAT('''',`required`,''',') END,
            CASE WHEN `label` IS NULL THEN 'NULL,' ELSE CONCAT('''',REPLACE(`label`,'''','\\'''),''',') END,
            CASE WHEN `maxLength` IS NULL THEN 'NULL,' ELSE CONCAT(CAST(`maxLength` as char),',') END,
            CASE WHEN `size` IS NULL THEN 'NULL,' ELSE CONCAT(CAST(`size` as char),',') END,
            CASE WHEN `indentLevel` IS NULL THEN 'NULL,' ELSE CONCAT(CAST(`indentLevel` as char),',') END,
            CASE WHEN `attributes` IS NULL THEN 'NULL,' ELSE CONCAT('''',`attributes`,''',') END,
            CASE WHEN `list` IS NULL THEN 'NULL,' ELSE CONCAT('''',`list`,''',') END,
            CASE WHEN `listAttributes` IS NULL THEN 'NULL,' ELSE CONCAT('''',`listAttributes`,''',') END,
            CASE WHEN `propOrder` IS NULL THEN 'NULL,' ELSE CONCAT(CAST(`propOrder` as char),',') END,
            CASE WHEN `quickHelp` IS NULL THEN 'NULL,' ELSE CONCAT('''',REPLACE(`quickHelp`,'''','\\'''),''',') END,
           CASE WHEN `modified` IS NULL THEN 'NULL' ELSE CONCAT('''',CAST(`modified` as char),'''') END,
            ');')
            FROM `viewproperty` WHERE `entity` Like EntityMask and
                                    `instance` like InstanceMask and
                                    `scope` like ScopeMask
            ORDER BY `entity`, `propOrder`;




SELECT CONCAT('INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,',
              '`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,',
              '`hibernateNotNull`,`modified`) VALUES(',
        	  CASE WHEN `instance` IS NULL THEN 'NULL,' ELSE CONCAT('''',`instance`,''',') END,
        	  CASE WHEN `scope` IS NULL THEN 'NULL,' ELSE CONCAT('''',`scope`,''',') END,
        	  CASE WHEN `entity` IS NULL THEN 'NULL,' ELSE CONCAT('''',`entity`,''',') END,
        	  CASE WHEN `property` IS NULL THEN 'NULL,' ELSE CONCAT('''',`property`,''',') END,
            CASE WHEN `dbTable` IS NULL THEN 'NULL,' ELSE CONCAT('''',`dbTable`,''',') END,
            CASE WHEN `dbColumn` IS NULL THEN 'NULL,' ELSE CONCAT('''',`dbColumn`,''',') END,
            CASE WHEN `dbType` IS NULL THEN 'NULL,' ELSE CONCAT('''',`dbType`,''',') END,
            CASE WHEN `dbLength` IS NULL THEN 'NULL,' ELSE CONCAT(CAST(`dbLength` as char),',') END,
            CASE WHEN `dbPrecision` IS NULL THEN 'NULL,' ELSE CONCAT(CAST(`dbPrecision` as char),',') END,
            CASE WHEN `dbScale` IS NULL THEN 'NULL,' ELSE CONCAT(CAST(`dbScale` as char),',') END,
            CASE WHEN `dbOrder` IS NULL THEN 'NULL,' ELSE CONCAT(CAST(`dbOrder` as char),',') END,
            CASE WHEN `hibernateProperty` IS NULL THEN 'NULL,' ELSE CONCAT('''',`hibernateProperty`,''',') END,
            CASE WHEN `hibernateType` IS NULL THEN 'NULL,' ELSE CONCAT('''',`hibernateType`,''',') END,
            CASE WHEN `hibernateClass` IS NULL THEN 'NULL,' ELSE CONCAT('''',`hibernateClass`,''',') END,
            CASE WHEN `hibernateNotNull` IS NULL THEN 'NULL,' ELSE CONCAT('''',`hibernateNotNull`,''',') END,
            CASE WHEN `modified` IS NULL THEN 'NULL' ELSE CONCAT('''',CAST(`modified` as char),'''') END,
            ');')
            FROM `hibernateproperty` WHERE `entity` Like EntityMask and
                                    `instance` like InstanceMask and
                                    `scope` like ScopeMask
            ORDER BY `entity`, `dbOrder`;




SELECT CONCAT('INSERT INTO `list` (`ListName`,`scope`,`NumericKey`,`modified`) VALUES(',
        	  CASE WHEN `ListName` IS NULL THEN 'NULL,' ELSE CONCAT('''',`ListName`,''',') END,
        	  CASE WHEN `scope` IS NULL THEN 'NULL,' ELSE CONCAT('''',`scope`,''',') END,
        	  CASE WHEN `NumericKey` IS NULL THEN 'NULL,' ELSE CONCAT(CAST(`NumericKey` as char),',') END,
              CASE WHEN `modified` IS NULL THEN 'NULL' ELSE CONCAT('''',CAST(`modified` as char),'''') END,
            ');')
            FROM `list` WHERE `scope` like ScopeMask
            ORDER BY `ListName`; 





SELECT CONCAT('INSERT INTO `listvalues` (`ListID`,`ValueKey`,`ValueDesc`,`OrderID`,`modified`)',
			' SELECT `ListID`,',CASE WHEN lv.`ValueKey` IS NULL THEN 'NULL,' ELSE CONCAT('''',REPLACE(lv.`ValueKey`,'''','\\'''),''',') END,
        	  CASE WHEN lv.`ValueDesc` IS NULL THEN 'NULL,' ELSE CONCAT('''',REPLACE(lv.`ValueDesc`,'''','\\'''),''',') END,
				CASE WHEN lv.`OrderID` IS NULL THEN 'NULL,' ELSE CONCAT(CAST(lv.`OrderID` as char),',') END,
              CASE WHEN lv.`modified` IS NULL THEN 'NULL' ELSE CONCAT('''',CAST(lv.`modified` as char),'''') END,
            ' FROM `list` where `ListName`=''',l.`ListName`,''';')
            FROM `listvalues` lv INNER JOIN `list` l on l.`ListId`=lv.`ListID` WHERE l.`scope` like ScopeMask
            ORDER BY l.`ListName`, lv.ORDERID, lv.ValueKey;


END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `util_FixMetadataPropertyNames` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `util_FixMetadataPropertyNames`(EntityIn varchar(50))
BEGIN






UPDATE hibernateproperty SET
property =
CONCAT(SUBSTRING_INDEX(property,'_',1),
UPPER(SUBSTRING(property,LOCATE('_',property)+1,1)),
SUBSTRING(property,LOCATE('_',property)+2)),
hibernateProperty =
CONCAT(SUBSTRING_INDEX(hibernateProperty,'_',1),
UPPER(SUBSTRING(hibernateProperty,LOCATE('_',hibernateProperty)+1,1)),
SUBSTRING(hibernateProperty,LOCATE('_',hibernateProperty)+2))
WHERE entity = EntityIn AND hibernateProperty like '%\_%';


UPDATE viewproperty SET
messageCode = CONCAT(SUBSTRING_INDEX(messageCode,'_',1),
UPPER(SUBSTRING(messageCode,LOCATE('_',messageCode)+1,1)),
SUBSTRING(messageCode,LOCATE('_',messageCode)+2)),
property = CONCAT(SUBSTRING_INDEX(property,'_',1),
UPPER(SUBSTRING(property,LOCATE('_',property)+1,1)),
SUBSTRING(property,LOCATE('_',property)+2))
WHERE entity = EntityIn and property like '%\_%';

END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `util_GenerateCode` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `util_GenerateCode`(EntityIn varchar(50), ScopeIn VARCHAR(25))
BEGIN

CALL util_HibernateMapping(EntityIn,ScopeIn);
CALL util_GetJavaModelProperties(EntityIn,ScopeIn);
CALL util_GetResultFields(EntityIn,ScopeIn);
CALL util_GetCreateFieldTags(EntityIn,ScopeIn);

END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `util_GetCreateFieldTags` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `util_GetCreateFieldTags`(EntityIn varchar(50), ScopeIn VARCHAR(25))
BEGIN


SELECT CONCAT('<tags:createField property="',`property`,'" component="${component}"/>')
FROM `viewproperty` WHERE `Entity` = EntityIn and `Scope`=ScopeIn Order By `propOrder`;


SELECT CONCAT('<tags:createField property="',`property`,'" component="${component}" entity="',
  LOWER(LEFT(`Entity`,1)),RIGHT(`Entity`,LENGTH(`Entity`)-1),'"/>')
FROM `viewproperty` WHERE `Entity` = EntityIn and `Scope`=ScopeIn Order By `propOrder`;


SELECT CONCAT('<tags:createField property="',`property`,'" component="${component}" entity="${instrTypeEncoded}"/>')
FROM `viewproperty` WHERE `Entity` = EntityIn and `Scope`=ScopeIn Order By `propOrder`;


SELECT CONCAT('<tags:createField property="',`property`,'" component="',
  LOWER(LEFT(`Entity`,1)),RIGHT(`Entity`,LENGTH(`Entity`)-1),'"/>')
FROM `viewproperty` WHERE `Entity` = EntityIn and `Scope`=ScopeIn Order By `propOrder`;


SELECT CONCAT('<tags:listField property="',`property`,'" component="${component}" listIndex="${iterator.index}" entityType="',
  LOWER(LEFT(`Entity`,1)),RIGHT(`Entity`,LENGTH(`Entity`)-1),'"/>')
FROM `viewproperty` WHERE `Entity` = EntityIn and `Scope`=ScopeIn Order By `propOrder`;


END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `util_GetJavaModelProperties` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `util_GetJavaModelProperties`(EntityIn varchar(50), ScopeIn VARCHAR(25))
BEGIN

SELECT CONCAT('protected ',CASE WHEN `HibernateType` IN('many-to-one','one-to-many','one-to-one') THEN `HibernateClass`
     WHEN `HibernateType` = 'Timestamp' THEN 'Date'
     ELSE CONCAT(UPPER(LEFT(`HibernateType`,1)),RIGHT(`HibernateType`,LENGTH(`HibernateType`)-1)) END,
	  ' ',`HibernateProperty`,';')
FROM `hibernateproperty` WHERE `entity`=EntityIn and `Scope`=ScopeIn ORDER BY `DBTable`,`DBOrder`;

END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `util_GetResultFields` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `util_GetResultFields`(EntityIn varchar(50), ScopeIn VARCHAR(25))
BEGIN

SELECT CONCAT('"',`property`,'",')
FROM `viewproperty`
WHERE `entity`=EntityIn AND context='r' AND `scope`=ScopeIn
ORDER BY `propOrder`;

END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `util_HibernateMapping` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `util_HibernateMapping`(EntityIn varchar(50), ScopeIn Varchar(25))
BEGIN

SELECT CONCAT('<?xml version="1.0"?>

<!DOCTYPE hibernate-mapping PUBLIC
    "-//Hibernate/Hibernate Mapping DTD 3.0//EN"
    "http://hibernate.sourceforge.net/hibernate-mapping-3.0.dtd">

<hibernate-mapping>

<class name="edu.ucsf.memory.[scope].[module].model.', EntityIn,'" table="', EntityIn,'" select-before-update="true">

		<id name="id" type="long">
			<column name="[KEY COLUMN]" not-null="true"/>
			<generator class="identity"/>
		</id>

')
FROM `hibernateproperty` WHERE `Entity` = EntityIn and `Scope` = ScopeIn GROUP BY `Entity`,`Scope`;

SELECT CONCAT('\t\t<',

    CASE WHEN `HibernateType` IN('many-to-one','one-to-many','one-to-one') THEN `HibernateType` ELSE 'property' END,

    ' name="',`HibernateProperty`,
    '" column="',`DBColumn`,'"',

    CASE WHEN `HibernateType` IN('many-to-one','one-to-many','one-to-one')
		   THEN CONCAT(' class="', COALESCE(`HibernateClass`,''),'"') ELSE CONCAT(' type="',`HibernateType`,'"') END,


   CASE WHEN `DBType` IN ('numeric','float','decimal')
		  THEN CONCAT(' precision="',CAST(`DBprecision` as CHAR),
                  '" scale="',CAST(DBScale as CHAR),'"') ELSE ''END,


    CASE WHEN `DBType` IN ('char','varchar','nchar','nvarchar','binary','varbinary')
		  THEN CONCAT(' length="',CAST(`DBLength` as CHAR),'"') ELSE '' END,


    CASE WHEN `HibernateNotNull` = 'Yes' THEN ' not-null="true"' ELSE '' END,'/>')
FROM `hibernateproperty` WHERE `Entity` = EntityIn and `Scope`=ScopeIn ORDER BY `DBTable`,`DBOrder`;

SELECT '

	<!-- associations -->



	<!-- filters -->
               <!--define or remove these standard filters-->
               <filter name="projectContext" condition=":projectContext)=[define]"/>
               <filter name="patient" condition=":patientId=[define]"/>


</class>


         <!-- queries  -->



</hibernate-mapping>'
FROM `hibernateproperty` WHERE `Entity` = EntityIn and `Scope`=ScopeIn GROUP BY `Entity`,`Scope`;

END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
DELIMITER ;

--
-- Final view structure for view `audit_entity`
--

/*!50001 DROP TABLE `audit_entity`*/;
/*!50001 DROP VIEW IF EXISTS `audit_entity`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `audit_entity` AS select `audit_entity_work`.`audit_entity_id` AS `audit_entity_id`,`audit_entity_work`.`audit_event_id` AS `audit_event_id`,`audit_entity_work`.`entity_id` AS `entity_id`,`audit_entity_work`.`entity` AS `entity`,`audit_entity_work`.`entity_type` AS `entity_type`,`audit_entity_work`.`audit_type` AS `audit_type`,`audit_entity_work`.`modified` AS `modified` from `audit_entity_work` union all select `audit_entity_history`.`audit_entity_id` AS `audit_entity_id`,`audit_entity_history`.`audit_event_id` AS `audit_event_id`,`audit_entity_history`.`entity_id` AS `entity_id`,`audit_entity_history`.`entity` AS `entity`,`audit_entity_history`.`entity_type` AS `entity_type`,`audit_entity_history`.`audit_type` AS `audit_type`,`audit_entity_history`.`modified` AS `modified` from `audit_entity_history` */;

--
-- Final view structure for view `audit_event`
--

/*!50001 DROP TABLE `audit_event`*/;
/*!50001 DROP VIEW IF EXISTS `audit_event`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `audit_event` AS select `audit_event_work`.`audit_event_id` AS `audit_event_id`,`audit_event_work`.`audit_user` AS `audit_user`,`audit_event_work`.`audit_host` AS `audit_host`,`audit_event_work`.`audit_timestamp` AS `audit_timestamp`,`audit_event_work`.`action` AS `action`,`audit_event_work`.`action_event` AS `action_event`,`audit_event_work`.`action_id_param` AS `action_id_param`,`audit_event_work`.`event_note` AS `event_note`,`audit_event_work`.`exception` AS `exception`,`audit_event_work`.`exception_message` AS `exception_message`,`audit_event_work`.`modified` AS `modified` from `audit_event_work` union all select `audit_event_history`.`audit_event_id` AS `audit_event_id`,`audit_event_history`.`audit_user` AS `audit_user`,`audit_event_history`.`audit_host` AS `audit_host`,`audit_event_history`.`audit_timestamp` AS `audit_timestamp`,`audit_event_history`.`action` AS `action`,`audit_event_history`.`action_event` AS `action_event`,`audit_event_history`.`action_id_param` AS `action_id_param`,`audit_event_history`.`event_note` AS `event_note`,`audit_event_history`.`exception` AS `exception`,`audit_event_history`.`exception_message` AS `exception_message`,`audit_event_history`.`modified` AS `modified` from `audit_event_history` */;

--
-- Final view structure for view `audit_property`
--

/*!50001 DROP TABLE `audit_property`*/;
/*!50001 DROP VIEW IF EXISTS `audit_property`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `audit_property` AS select `audit_property_work`.`audit_property_id` AS `audit_property_id`,`audit_property_work`.`audit_entity_id` AS `audit_entity_id`,`audit_property_work`.`property` AS `property`,`audit_property_work`.`index_key` AS `index_key`,`audit_property_work`.`subproperty` AS `subproperty`,`audit_property_work`.`old_value` AS `old_value`,`audit_property_work`.`new_value` AS `new_value`,`audit_property_work`.`audit_timestamp` AS `audit_timestamp`,`audit_property_work`.`modified` AS `modified` from `audit_property_work` union all select `audit_property_history`.`audit_property_id` AS `audit_property_id`,`audit_property_history`.`audit_entity_id` AS `audit_entity_id`,`audit_property_history`.`property` AS `property`,`audit_property_history`.`index_key` AS `index_key`,`audit_property_history`.`subproperty` AS `subproperty`,`audit_property_history`.`old_value` AS `old_value`,`audit_property_history`.`new_value` AS `new_value`,`audit_property_history`.`audit_timestamp` AS `audit_timestamp`,`audit_property_history`.`modified` AS `modified` from `audit_property_history` */;

--
-- Final view structure for view `audit_text`
--

/*!50001 DROP TABLE `audit_text`*/;
/*!50001 DROP VIEW IF EXISTS `audit_text`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `audit_text` AS select `audit_text_history`.`audit_property_id` AS `audit_property_id`,`audit_text_history`.`old_text` AS `old_text`,`audit_text_history`.`new_text` AS `new_text` from `audit_text_history` union all select `audit_text_work`.`audit_property_id` AS `audit_property_id`,`audit_text_work`.`old_text` AS `old_text`,`audit_text_work`.`new_text` AS `new_text` from `audit_text_work` */;

--
-- Final view structure for view `vwrptprojectpatientstatus`
--

/*!50001 DROP TABLE `vwrptprojectpatientstatus`*/;
/*!50001 DROP VIEW IF EXISTS `vwrptprojectpatientstatus`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwrptprojectpatientstatus` AS select `p`.`PIDN` AS `PIDN`,`p`.`FullNameRev` AS `FullNameRev`,`p`.`AGE` AS `AGE`,`p`.`Gender` AS `Gender`,`lps`.`ProjName` AS `ProjName`,`lps`.`LatestDate` AS `StatusDate`,`lps`.`LatestDesc` AS `Status`,`lps`.`LatestNote` AS `StatusNote`,(case `lps`.`LatestDesc` when _utf8'ACTIVE' then 0 when _utf8'FOLLOW-UP' then 1 when _utf8'CANCELED' then 5 when _utf8'CLOSED' then 6 when _utf8'INACTIVE' then 4 when _utf8'PRE-APPOINTMENT' then 2 when _utf8'PENDING' then 3 when _utf8'ENROLLED' then 7 when _utf8'DECEASED' then 8 when _utf8'DECEASED-PERFORMED' then 9 when _utf8'DECEASED-NOT PERFORMED' then 10 when _utf8'REFERRED' then 11 when _utf8'ELIGIBLE' then 12 when _utf8'INELIGIBLE' then 13 when _utf8'WITHDREW' then 14 when _utf8'EXCLUDED' then 15 when _utf8'DECLINED' then 16 else 17 end) AS `StatusOrder`,`pu`.`Project` AS `ProjUnitDesc`,`pu`.`Project` AS `Project`,_utf8'OVERALL' AS `Unit`,1 AS `UnitOrder` from ((`patient` `p` join `enrollmentstatus` `lps` on((`p`.`PIDN` = `lps`.`PIDN`))) join `projectunit` `pu` on((`lps`.`ProjName` = `pu`.`ProjUnitDesc`))) union select `p`.`PIDN` AS `PIDN`,`p`.`FullNameRev` AS `FullNameRev`,`p`.`AGE` AS `AGE`,`p`.`Gender` AS `Gender`,`lps`.`ProjName` AS `ProjName`,`lps`.`LatestDate` AS `LatestDate`,`lps`.`LatestDesc` AS `LatestDesc`,`lps`.`LatestNote` AS `StatusNote`,(case `lps`.`LatestDesc` when _utf8'ACTIVE' then 0 when _utf8'FOLLOW-UP' then 1 when _utf8'CANCELED' then 5 when _utf8'CLOSED' then 6 when _utf8'INACTIVE' then 4 when _utf8'PRE-APPOINTMENT' then 2 when _utf8'PENDING' then 3 when _utf8'ENROLLED' then 7 when _utf8'DECEASED' then 8 when _utf8'DECEASED-PERFORMED' then 9 when _utf8'DECEASED-NOT PERFORMED' then 10 when _utf8'REFERRED' then 11 when _utf8'ELIGIBLE' then 12 when _utf8'INELIGIBLE' then 13 when _utf8'WITHDREW' then 14 when _utf8'EXCLUDED' then 15 when _utf8'DECLINED' then 16 else 17 end) AS `StatusOrder`,`pu`.`ProjUnitDesc` AS `ProjUnitDesc`,`pu`.`Project` AS `Project`,`pu`.`Unit` AS `Unit`,2 AS `UnitOrder` from ((`patient` `p` join `enrollmentstatus` `lps` on((`p`.`PIDN` = `lps`.`PIDN`))) join `projectunit` `pu` on((`lps`.`ProjName` = `pu`.`ProjUnitDesc`))) where (`pu`.`Unit` is not null) */;

--
-- Final view structure for view `vwrptprojectvisitlist`
--

/*!50001 DROP TABLE `vwrptprojectvisitlist`*/;
/*!50001 DROP VIEW IF EXISTS `vwrptprojectvisitlist`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwrptprojectvisitlist` AS select `p`.`PIDN` AS `PIDN`,`p`.`FullNameRev` AS `FullNameRev`,`p`.`TransLanguage` AS `TransLanguage`,`p`.`Gender` AS `Gender`,`p`.`AGE` AS `AGE`,`v`.`VLocation` AS `VLocation`,`v`.`VType` AS `VType`,`v`.`VWith` AS `VWith`,`v`.`VDate` AS `VDate`,`v`.`VStatus` AS `VStatus`,`v`.`ProjName` AS `ProjName`,`v`.`VNotes` AS `VNotes`,cast(`v`.`VDate` as date) AS `VDateNoTime` from (`patient` `p` join `visit` `v` on((`p`.`PIDN` = `v`.`PIDN`))) where (not((`v`.`VStatus` like _latin1'%CANC%'))) */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-10-17 21:12:59
