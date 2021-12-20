-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: djangodb
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `djangodb`
--
SET NAMES utf8;
drop database if exists djangodb;
CREATE DATABASE /*!32312 IF NOT EXISTS*/ `djangodb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `djangodb`;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add disque',7,'add_album'),(26,'Can change disque',7,'change_album'),(27,'Can delete disque',7,'delete_album'),(28,'Can view disque',7,'view_album'),(29,'Can add artiste',8,'add_artist'),(30,'Can change artiste',8,'change_artist'),(31,'Can delete artiste',8,'delete_artist'),(32,'Can view artiste',8,'view_artist'),(33,'Can add prospect',9,'add_contact'),(34,'Can change prospect',9,'change_contact'),(35,'Can delete prospect',9,'delete_contact'),(36,'Can view prospect',9,'view_contact'),(37,'Can add réservation',10,'add_booking'),(38,'Can change réservation',10,'change_booking'),(39,'Can delete réservation',10,'delete_booking'),(40,'Can view réservation',10,'view_booking');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$216000$CxsUchOqazju$HTJQHI7UtIpmMgv4SpADexLG3ClcP44XyDkusKI+7G0=','2021-12-15 14:46:29.060644',1,'piercuta','','','pierre.courteille@gmail.com',1,1,'2021-08-04 14:24:30.673300');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-08-04 14:25:19.416067','1','Georges Brassens',1,'[{\"added\": {}}]',8,1),(2,'2021-08-04 14:25:45.447460','2','Jacques Brel',1,'[{\"added\": {}}]',8,1),(3,'2021-08-04 14:26:56.633949','1','Fernande',1,'[{\"added\": {}}]',7,1),(4,'2021-08-04 14:27:27.413414','2','Les Marquises',1,'[{\"added\": {}}]',7,1),(5,'2021-12-15 14:46:45.057036','1','Fernande',2,'[{\"changed\": {\"fields\": [\"Available\", \"Picture\"]}}]',7,1),(6,'2021-12-15 14:51:22.145556','1','pierre',3,'',10,1),(7,'2021-12-15 14:51:52.480312','1','Fernande',3,'',7,1),(8,'2021-12-15 14:52:24.895486','3','Jul',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Relation album-artist\", \"object\": \"Album_artists object (3)\"}}]',8,1),(9,'2021-12-15 14:52:47.388442','2','Emotions',2,'[{\"changed\": {\"fields\": [\"Title\", \"Picture\"]}}]',7,1),(10,'2021-12-20 15:24:07.663808','4','Mister',1,'[{\"added\": {}}]',8,1),(11,'2021-12-20 15:24:12.224497','3','MDR 2',1,'[{\"added\": {}}]',7,1),(12,'2021-12-20 15:32:59.183796','5','Seth Gueko',1,'[{\"added\": {}}]',8,1),(13,'2021-12-20 15:33:07.658884','4','Mister You',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',8,1),(14,'2021-12-20 15:35:32.358213','4','Destroy',1,'[{\"added\": {}}]',7,1),(15,'2021-12-20 15:36:05.114260','5','Barlou',1,'[{\"added\": {}}]',7,1),(16,'2021-12-20 15:36:41.329068','5','Barlou',2,'[{\"changed\": {\"fields\": [\"Picture\"]}}]',7,1),(17,'2021-12-20 15:37:16.954379','5','Barlou',2,'[{\"changed\": {\"fields\": [\"Picture\"]}}]',7,1),(18,'2021-12-20 15:37:31.519400','4','Destroy',2,'[{\"changed\": {\"fields\": [\"Picture\"]}}]',7,1),(19,'2021-12-20 15:37:40.330636','4','Destroy',2,'[{\"changed\": {\"fields\": [\"Picture\"]}}]',7,1),(20,'2021-12-20 15:38:38.315992','6','Hasta La Muerte',1,'[{\"added\": {}}]',7,1),(21,'2021-12-20 15:39:04.397213','7','Loin du monde',1,'[{\"added\": {}}]',7,1),(22,'2021-12-20 16:47:01.840229','2','Emotions',2,'[{\"changed\": {\"fields\": [\"Picture\"]}}]',7,1),(23,'2021-12-20 16:47:18.266280','2','Emotions',2,'[{\"changed\": {\"fields\": [\"Picture\"]}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'store','album'),(8,'store','artist'),(10,'store','booking'),(9,'store','contact');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-08-04 14:21:00.183160'),(2,'auth','0001_initial','2021-08-04 14:21:00.631739'),(3,'admin','0001_initial','2021-08-04 14:21:02.052201'),(4,'admin','0002_logentry_remove_auto_add','2021-08-04 14:21:02.575086'),(5,'admin','0003_logentry_add_action_flag_choices','2021-08-04 14:21:02.615545'),(6,'contenttypes','0002_remove_content_type_name','2021-08-04 14:21:03.074590'),(7,'auth','0002_alter_permission_name_max_length','2021-08-04 14:21:03.206517'),(8,'auth','0003_alter_user_email_max_length','2021-08-04 14:21:03.268212'),(9,'auth','0004_alter_user_username_opts','2021-08-04 14:21:03.278184'),(10,'auth','0005_alter_user_last_login_null','2021-08-04 14:21:03.565216'),(11,'auth','0006_require_contenttypes_0002','2021-08-04 14:21:03.570945'),(12,'auth','0007_alter_validators_add_error_messages','2021-08-04 14:21:03.579985'),(13,'auth','0008_alter_user_username_max_length','2021-08-04 14:21:03.749794'),(14,'auth','0009_alter_user_last_name_max_length','2021-08-04 14:21:03.893990'),(15,'auth','0010_alter_group_name_max_length','2021-08-04 14:21:03.938203'),(16,'auth','0011_update_proxy_permissions','2021-08-04 14:21:03.963554'),(17,'auth','0012_alter_user_first_name_max_length','2021-08-04 14:21:04.138511'),(18,'sessions','0001_initial','2021-08-04 14:21:04.213671'),(19,'store','0001_initial','2021-08-04 14:21:04.843073'),(20,'store','0002_auto_20210122_1026','2021-08-04 14:21:05.949685'),(21,'store','0003_auto_20210122_1536','2021-08-04 14:21:06.099123'),(22,'store','0004_auto_20210122_1537','2021-08-04 14:21:06.215496'),(23,'store','0005_remove_album_picture','2021-08-04 14:21:06.349227'),(24,'store','0006_album_picture','2021-08-04 14:21:06.616141'),(25,'store','0007_album_img','2021-08-04 14:21:06.802532'),(26,'store','0008_auto_20210125_2152','2021-08-04 14:21:06.818707'),(27,'store','0009_auto_20210201_1845','2021-08-04 14:21:06.965744'),(28,'store','0010_auto_20210205_1848','2021-08-04 14:21:07.101829'),(29,'store','0011_auto_20210205_1908','2021-08-04 14:21:07.109236'),(30,'store','0012_auto_20211220_1530','2021-12-20 14:31:05.181798');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('7o1eztvwqw74o3wh2hkw86ztx94dsxef','.eJxVjDsOwjAQRO_iGlneGP8o6TmDtd51cADZUpxUiLuTSCmgG817M28RcV1KXHue48TiIkCcfruE9Mx1B_zAem-SWl3mKcldkQft8tY4v66H-3dQsJdtPRAm5UANWyA3BgpkAbwjDaCUZ7Y5a5PQBSJzNl5pBJ99SBZGR4zi8wXfezf0:1mBHpL:SRrGQ8HT_xrLYSXLjIo-z6VTMBCwKbVOJ9novDGR0HQ','2021-08-18 14:24:59.868478'),('9jy8cyv7jmlownvppnk8smxd9qw3430v','.eJxVjDsOwjAQRO_iGlneGP8o6TmDtd51cADZUpxUiLuTSCmgG817M28RcV1KXHue48TiIkCcfruE9Mx1B_zAem-SWl3mKcldkQft8tY4v66H-3dQsJdtPRAm5UANWyA3BgpkAbwjDaCUZ7Y5a5PQBSJzNl5pBJ99SBZGR4zi8wXfezf0:1mxVY5:UFlBlw463gjrPOqnwFNrfSyEIDUNWmaCagjShgI9uLQ','2021-12-29 14:46:29.152596');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_album`
--

DROP TABLE IF EXISTS `store_album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_album` (
  `id` int NOT NULL AUTO_INCREMENT,
  `reference` int DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `title` varchar(200) NOT NULL,
  `picture` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_album`
--

LOCK TABLES `store_album` WRITE;
/*!40000 ALTER TABLE `store_album` DISABLE KEYS */;
INSERT INTO `store_album` VALUES (2,1,'2021-08-04 14:27:27.342416',1,'Emotions','images/rap.jpg'),(3,2,'2021-12-20 15:24:12.152497',1,'MDR 2','images/mister_you.jpg'),(4,3,'2021-12-20 15:35:32.286073',1,'Destroy','images/destroy.jpg'),(5,4,'2021-12-20 15:36:05.038865',1,'Barlou','images/sethgek.jpg'),(6,9,'2021-12-20 15:38:38.242025',1,'Hasta La Muerte','images/Hasta-La-Muerte.jpg'),(7,77,'2021-12-20 15:39:04.327214',1,'Loin du monde','images/Loin-du-monde.jpg');
/*!40000 ALTER TABLE `store_album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_album_artists`
--

DROP TABLE IF EXISTS `store_album_artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_album_artists` (
  `id` int NOT NULL AUTO_INCREMENT,
  `album_id` int NOT NULL,
  `artist_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `store_album_artists_album_id_artist_id_9c8fa2e6_uniq` (`album_id`,`artist_id`),
  KEY `store_album_artists_artist_id_9d9c2c0a_fk_store_artist_id` (`artist_id`),
  CONSTRAINT `store_album_artists_album_id_2d0c1a8e_fk_store_album_id` FOREIGN KEY (`album_id`) REFERENCES `store_album` (`id`),
  CONSTRAINT `store_album_artists_artist_id_9d9c2c0a_fk_store_artist_id` FOREIGN KEY (`artist_id`) REFERENCES `store_artist` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_album_artists`
--

LOCK TABLES `store_album_artists` WRITE;
/*!40000 ALTER TABLE `store_album_artists` DISABLE KEYS */;
INSERT INTO `store_album_artists` VALUES (3,2,3),(4,3,4),(5,4,5),(6,5,5),(7,6,4),(8,7,3);
/*!40000 ALTER TABLE `store_album_artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_artist`
--

DROP TABLE IF EXISTS `store_artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_artist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_artist`
--

LOCK TABLES `store_artist` WRITE;
/*!40000 ALTER TABLE `store_artist` DISABLE KEYS */;
INSERT INTO `store_artist` VALUES (3,'Jul'),(4,'Mister You'),(5,'Seth Gueko');
/*!40000 ALTER TABLE `store_artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_booking`
--

DROP TABLE IF EXISTS `store_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_booking` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `contacted` tinyint(1) NOT NULL,
  `album_id` int NOT NULL,
  `contact_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `album_id` (`album_id`),
  KEY `store_booking_contact_id_d46d585e_fk_store_contact_id` (`contact_id`),
  CONSTRAINT `store_booking_album_id_e214fb79_fk_store_album_id` FOREIGN KEY (`album_id`) REFERENCES `store_album` (`id`),
  CONSTRAINT `store_booking_contact_id_d46d585e_fk_store_contact_id` FOREIGN KEY (`contact_id`) REFERENCES `store_contact` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_booking`
--

LOCK TABLES `store_booking` WRITE;
/*!40000 ALTER TABLE `store_booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_contact`
--

DROP TABLE IF EXISTS `store_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_contact`
--

LOCK TABLES `store_contact` WRITE;
/*!40000 ALTER TABLE `store_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_contact` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-20 17:53:56
