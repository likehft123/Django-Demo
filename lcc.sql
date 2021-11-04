-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: lcc
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add product',7,'add_product'),(26,'Can change product',7,'change_product'),(27,'Can delete product',7,'delete_product'),(28,'Can view product',7,'view_product'),(29,'Can add message',8,'add_message'),(30,'Can change message',8,'change_message'),(31,'Can delete message',8,'delete_message'),(32,'Can view message',8,'view_message');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
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
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(8,'message','message'),(7,'product','product'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-10-21 11:04:28.921408'),(2,'auth','0001_initial','2021-10-21 11:04:29.654598'),(3,'admin','0001_initial','2021-10-21 11:04:29.815884'),(4,'admin','0002_logentry_remove_auto_add','2021-10-21 11:04:29.836963'),(5,'admin','0003_logentry_add_action_flag_choices','2021-10-21 11:04:29.845939'),(6,'contenttypes','0002_remove_content_type_name','2021-10-21 11:04:29.968465'),(7,'auth','0002_alter_permission_name_max_length','2021-10-21 11:04:30.117013'),(8,'auth','0003_alter_user_email_max_length','2021-10-21 11:04:30.203386'),(9,'auth','0004_alter_user_username_opts','2021-10-21 11:04:30.213185'),(10,'auth','0005_alter_user_last_login_null','2021-10-21 11:04:30.315837'),(11,'auth','0006_require_contenttypes_0002','2021-10-21 11:04:30.320870'),(12,'auth','0007_alter_validators_add_error_messages','2021-10-21 11:04:30.341243'),(13,'auth','0008_alter_user_username_max_length','2021-10-21 11:04:30.578956'),(14,'auth','0009_alter_user_last_name_max_length','2021-10-21 11:04:30.657571'),(15,'auth','0010_alter_group_name_max_length','2021-10-21 11:04:30.680908'),(16,'auth','0011_update_proxy_permissions','2021-10-21 11:04:30.690882'),(17,'auth','0012_alter_user_first_name_max_length','2021-10-21 11:04:30.769671'),(18,'product','0001_initial','2021-10-21 11:04:30.802582'),(19,'sessions','0001_initial','2021-10-21 11:04:30.848460'),(20,'message','0001_initial','2021-10-26 12:36:56.277211');
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
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop` varchar(15) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `photo_url` varchar(200) NOT NULL,
  `link` varchar(200) NOT NULL,
  `mount` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `product_type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Yahoo','Apple iPhone 13 256G 6.1吋智慧型手機',29400,'https://s.yimg.com/zp/MerchandiseImages/ca76480d7a-Gd-9685151.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-256G-6-1吋智慧型手機-9685151.html',0,'0000-00-00',1),(2,'Yahoo','Apple iPhone 13 256GB',29400,'https://s.yimg.com/zp/MerchandiseImages/2A50194885-SP-10378729.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-256GB-9687939.html',0,'0000-00-00',1),(3,'Yahoo','Apple iPhone 13 Pro Max 512G 6.7吋智慧型手機',47400,'https://s.yimg.com/zp/MerchandiseImages/B9DE377218-SP-10463088.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-Pro-Max-512G-6-7吋智慧型手機-9714950.html',0,'0000-00-00',1),(4,'Yahoo','Apple iPhone 13 256G 6.1吋智慧型手機',29400,'https://s.yimg.com/zp/MerchandiseImages/3041AF5452-SP-10374220.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-256G-6-1吋智慧型手機-9687220.html',0,'0000-00-00',1),(5,'Yahoo','Apple iPhone 12 128G 6.1吋智慧型手機',24500,'https://s.yimg.com/zp/MerchandiseImages/E69C47DC52-SP-9007246.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-12-128G-6-1吋智慧型手機-9330891.html',0,'0000-00-00',1),(6,'Yahoo','Apple iPhone 13 256G 6.1吋智慧型手機',29400,'https://s.yimg.com/zp/MerchandiseImages/65C6C3669A-Gd-9688935.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-256G-6-1吋智慧型手機-9688935.html',0,'0000-00-00',1),(7,'Yahoo','2021 iPhone 13 128G 6.1吋 A15 仿生晶片 MLPF3TA MLPG3TA MLPH3TA MLPJ3TA MLPK3TA',25900,'https://s.yimg.com/zp/MerchandiseImages/EDAEBAD8AF-SP-10436505.jpg','https://tw.buy.yahoo.com/gdsale/2021-iPhone-13-128G-6-1吋-A15-仿生晶片-MLPF3TA-MLPG3TA-9707601.html',0,'0000-00-00',1),(8,'Yahoo','Apple iPhone 13 512G 6.1吋智慧型手機',36400,'https://s.yimg.com/zp/MerchandiseImages/ca76480d7a-Gd-9685149.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-512G-6-1吋智慧型手機-9685149.html',0,'0000-00-00',1),(9,'Yahoo','Apple iPhone 13 256G MINI 5.4吋智慧型手機',26400,'https://s.yimg.com/zp/MerchandiseImages/3041AF5452-SP-10374483.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-256G-MINI-5-4吋智慧型手機-9687209.html',0,'0000-00-00',1),(10,'Yahoo','Apple iPhone 13 mini 256G 5.4吋智慧型手機',26400,'https://s.yimg.com/zp/MerchandiseImages/390D50C611-SP-10376010.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-mini-256G-5-4吋智慧型手機-9686832.html',0,'0000-00-00',1),(11,'Yahoo','Apple iPhone 13 256G 6.1吋 5G 手機',29400,'https://s.yimg.com/zp/MerchandiseImages/8457CDFC58-SP-10392241.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-256G-6-1吋-5G-手機-9692159.html',0,'0000-00-00',1),(12,'Yahoo','Apple iPhone 13 256G',29400,'https://s.yimg.com/zp/MerchandiseImages/4FE60E80A2-SP-10392018.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-256G-9692015.html',0,'0000-00-00',1),(13,'Yahoo','Apple iPhone 13 mini 256G 5G手機',26400,'https://s.yimg.com/zp/MerchandiseImages/1F7ACA1678-SP-10376147.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-mini-256G-5G手機-9687298.html',0,'0000-00-00',1),(14,'Yahoo','Apple iPhone 13 Pro Max 1TB 6.7吋智慧型手機',54400,'https://s.yimg.com/zp/MerchandiseImages/B9DE377218-SP-10463117.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-Pro-Max-1TB-6-7吋智慧型手機-9714952.html',0,'0000-00-00',1),(15,'Yahoo','Apple iPhone 13 Pro 512G 6.1吋智慧型手機',43400,'https://s.yimg.com/zp/MerchandiseImages/B9DE377218-SP-10462991.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-Pro-512G-6-1吋智慧型手機-9714903.html',0,'0000-00-00',1),(16,'Yahoo','[本月限定]SAMSUNG三星 50吋 4K UHD連網液晶電視 UA50TU8500WXZW',18900,'https://s.yimg.com/zp/MerchandiseImages/a2e8320cdc-Gd-9407420.jpg','https://tw.buy.yahoo.com/gdsale/館長推薦-SAMSUNG三星-50吋-4K-UHD連網液晶電視-UA50TU8500WXZW-9407420.html',0,'0000-00-00',1),(17,'Yahoo','SONY 50吋 FHD HDR智慧連網液晶電視 KDL-50W660G (居家工作 線上教學)',18905,'https://s.yimg.com/zp/MerchandiseImages/b2d607f74c-Gd-8565077.jpg','https://tw.buy.yahoo.com/gdsale/SONY-50吋-FHD-HDR智慧連網液晶電視-8565077.html',0,'0000-00-00',1),(18,'Yahoo','【10/1~31送超贈點3%】SONY索尼 55吋 4K HDR Android智慧連網液晶電視 KD-55X8000H',28405,'https://s.yimg.com/zp/MerchandiseImages/f35750f3a8-Gd-9007312.jpg','https://tw.buy.yahoo.com/gdsale/SONY索尼-55吋-4K-HDR-Android智慧連網液晶電視-KD-55X8000H-9007312.html',0,'0000-00-00',1),(19,'Yahoo','SONY索尼 55吋 4K HDR Android智慧連網液晶電視 KD-55X8000H (Switch +Netflix 追劇防疫)',28405,'https://s.yimg.com/zp/MerchandiseImages/b4b59bb5ca-Gd-9007311.jpg','https://tw.buy.yahoo.com/gdsale/SONY索尼-55吋-4K-HDR-Android智慧連網液晶電視-KD-55X8000H-9007311.html',0,'0000-00-00',1),(20,'Yahoo','Panasonic國際 50吋 4K UHD Android 10.0連網液晶顯示器+視訊盒 TH-50JX650W',20805,'https://s.yimg.com/zp/MerchandiseImages/491d3030a5-Gd-9459018.jpg','https://tw.buy.yahoo.com/gdsale/Panasonic國際-50吋-4K-UHD-Androud-10-0連網液晶顯示器-視訊盒-TH-9459018.html',0,'0000-00-00',1),(21,'Yahoo','Panasonic國際 55吋 4K UHD Android 10.0連網液晶顯示器+視訊盒 TH-55JX750W',28405,'https://s.yimg.com/zp/MerchandiseImages/6ca2c15140-Gd-9459019.jpg','https://tw.buy.yahoo.com/gdsale/Panasonic國際-55吋-4K-UHD-Androud-10-0連網液晶顯示器-視訊盒-TH-9459019.html',0,'0000-00-00',1),(22,'Yahoo','【10/1~31送超贈點3%】SONY索尼 BRAVIA 55吋 4K Google TV 顯示器 XRM-55X90J',47900,'https://s.yimg.com/zp/MerchandiseImages/7815ad63f3-Gd-9538710.jpg','https://tw.buy.yahoo.com/gdsale/21年新上市-SONY-BRAVIA-55型-4K-Google-TV-顯示器-XRM-55X90J-9538710.html',0,'0000-00-00',1),(23,'Yahoo','[本月限定]SAMSUNG三星 50吋 4K UHD連網液晶電視 UA50TU8500WXZW+三星藍牙聲霸HW-T400/ZW',20900,'https://s.yimg.com/zp/MerchandiseImages/272c2ca199-Gd-9491086.jpg','https://tw.buy.yahoo.com/gdsale/今日限定-SAMSUNG三星-50吋連網液晶電視UA50TU8500WXZW-9491086.html',0,'0000-00-00',1),(24,'Yahoo','【福利新品】SAMSUNG三星 55吋 4K UHD連網液晶電視 UA55TU7000WXZW',18199,'https://s.yimg.com/zp/MerchandiseImages/A50FB6E6DF-SP-10272954.jpg','https://tw.buy.yahoo.com/gdsale/福利新品-SAMSUNG三星-55吋-4K-UHD連網液晶電視-UA55TU7000WXZW-9655365.html',0,'0000-00-00',1),(25,'Yahoo','[21年新上市] SONY BRAVIA 55型 4K Google TV 顯示器 KM-55X85J',35900,'https://s.yimg.com/zp/MerchandiseImages/230724AB25-SP-9928691.jpg','https://tw.buy.yahoo.com/gdsale/21年新上市-SONY-BRAVIA-55型-4K-Google-TV-顯示器-KM-55X85J-9539896.html',0,'0000-00-00',1),(26,'Yahoo','【全省壁掛施工】SONY索尼 65吋 4K HDR Android智慧連網液晶電視 KD-65X9500H',69900,'https://s.yimg.com/zp/MerchandiseImages/29789143fc-Gd-9056657.jpg','https://tw.buy.yahoo.com/gdsale/SONY索尼-65吋-4K-HDR-Android智慧連網液晶電視-KD-65X9500H-9056657.html',0,'0000-00-00',1),(27,'Yahoo','SAMPO聲寶 HD新轟天雷 32吋液晶電視 EM-32CB200',5990,'https://s.yimg.com/zp/MerchandiseImages/0262bdca78-Gd-9566432.jpg','https://tw.buy.yahoo.com/gdsale/SAMPO聲寶-HD新轟天雷-32型LED液晶顯示器-EM-32CB200-9566432.html',0,'0000-00-00',1),(28,'Yahoo','SONY索尼 32吋 連網液晶電視 KDL-32W610G (居家工作 線上教學)',13205,'https://s.yimg.com/zp/MerchandiseImages/b6ad45d71f-Gd-8360075.jpg','https://tw.buy.yahoo.com/gdsale/SONY索尼-32吋-連網液晶電視-KDL-32W-8360075.html',0,'0000-00-00',1),(29,'Yahoo','【10/1~31送超贈點3%】SONY索尼 BRAVIA 65吋 4K Google TV 顯示器 XRM-65X90J',61900,'https://s.yimg.com/zp/MerchandiseImages/e3cf4ff17b-Gd-9538708.jpg','https://tw.buy.yahoo.com/gdsale/21年新上市-SONY-BRAVIA-65型-4K-Google-TV-顯示器-XRM-65X90J-9538708.html',0,'0000-00-00',1),(30,'Yahoo','小米 智慧顯示器65型',20990,'https://s.yimg.com/zp/MerchandiseImages/80C815F35C-SP-10388940.jpg','https://tw.buy.yahoo.com/gdsale/小米-智慧顯示器65型-9694546.html',0,'0000-00-00',1),(31,'Yahoo','ASUS G10CE-51140F121T (i5-11400F/16G/512GB SSD/GTX1660Ti/Win10 Home)',33990,'https://s.yimg.com/zp/MerchandiseImages/3334AFFE5E-SP-10360498.jpg','https://tw.buy.yahoo.com/gdsale/ASUS-G10CE-51140F121T-i5-11400F-16G-512GB-SSD-GTX1-9682533.html',0,'0000-00-00',1),(32,'Yahoo','Acer TC-1660 11代i5六核獨顯桌上型電腦(i5-11400F/GTX1650/8G/512G/Win10)',24900,'https://s.yimg.com/zp/MerchandiseImages/276BEEBF9B-SP-9803799.jpg','https://tw.buy.yahoo.com/gdsale/Acer-Aspire-TC-1660-11代i5六核獨顯上型電腦-i5-11400F-8G-512-9498900.html',0,'0000-00-00',1),(33,'Yahoo','Acer TC-875 10代i5六核獨顯桌上型電腦(i5-10400F/GTX1650/512G/8G/500W/WIN10h)',21900,'https://s.yimg.com/zp/MerchandiseImages/05EA2BC51B-SP-9811209.jpg','https://tw.buy.yahoo.com/gdsale/Acer-TC-875-10代i5六核獨顯桌上型電腦-i5-10400F-GTX1650-512G-9498957.html',0,'0000-00-00',1),(34,'Yahoo','MSI 微星 Codex S 10-238TW 10代電競桌上型電腦(i5-10400F/8G/1T+512G SSD/GTX1650-4G/Win10)',25900,'https://s.yimg.com/zp/MerchandiseImages/DE04BAC1B3-SP-10277419.jpg','https://tw.buy.yahoo.com/gdsale/MSI-微星-Codex-S-10SA-238TW-10代電競桌上型電腦-i5-10400F-8G-9654596.html',0,'0000-00-00',1),(35,'Yahoo','Acer N50-610-SE 十代i7八核獨顯電競桌上型電腦(i7-10700/GTX1650/16G/2T/512G/Win10h)',33900,'https://s.yimg.com/zp/MerchandiseImages/9084C8096A-SP-10156190.jpg','https://tw.buy.yahoo.com/gdsale/Acer-N50-610-SE-十代i7八核獨顯電競桌上型電腦-i7-10700-GTX1650-1-9626493.html',0,'0000-00-00',1),(36,'Yahoo','Acer TC-1660 11代i7六核獨顯上型電腦(i7-11700F/16G/512G/GTX1650/Win10h)',32900,'https://s.yimg.com/zp/MerchandiseImages/61B45630BC-SP-9809329.jpg','https://tw.buy.yahoo.com/gdsale/Acer-TC-1660-11代i7六核獨顯上型電腦-i7-11700F-16G-512G-GTX1-9498924.html',0,'0000-00-00',1),(37,'Yahoo','(福利品)Acer N50-610-SE 十代i7八️核獨顯電競桌上型電腦(i7-10700F/RTX3060Ti/8G*2/512G/Win10h)',45900,'https://s.yimg.com/zp/MerchandiseImages/14CF2C03EB-SP-9739691.jpg','https://tw.buy.yahoo.com/gdsale/福利品-Acer-N50-610-SE-十代i7八-核獨顯電競桌上型電腦-i7-10700F-RTX-9587259.html',0,'0000-00-00',1),(38,'Yahoo','MSI微星 Infinite S3 11SH-012TW 電競電腦(i5-11400F/8G/1T+512G SSD/GTX1660-6G/Win10)',33900,'https://s.yimg.com/zp/MerchandiseImages/48BB13CC63-SP-10366295.jpg','https://tw.buy.yahoo.com/gdsale/MSI微星-Infinite-S3-11SH-012TW-電競電腦-i5-11400F-8G-1T-9684671.html',0,'0000-00-00',1),(39,'Yahoo','Acer N50-610-SE 十代i7八️核獨顯電競桌上型電腦(i7-10700/RTX3060Ti/8G*2/512G/Win10h)',44900,'https://s.yimg.com/zp/MerchandiseImages/D96DDABC4C-SP-10264471.jpg','https://tw.buy.yahoo.com/gdsale/Acer-N50-610-SE-十代i7八-核獨顯電競桌上型電腦-i7-10700-RTX3060T-9655384.html',0,'0000-00-00',1),(40,'Yahoo','DELL Inspiron 3891 八核桌上型電腦 (i7-11700F/16G/512G/GTX1660S/Win10)',38990,'https://s.yimg.com/zp/MerchandiseImages/C230A2365C-SP-10082189.jpg','https://tw.buy.yahoo.com/gdsale/DELL-Inspiron-3891-八核桌上型電腦-i7-11700F-16G-512G-GTX1-9592974.html',0,'0000-00-00',1),(41,'Yahoo','ASUS G10CE-711700054T (i7-11700/16G/1TB HDD+256G SSD/GTX1660Ti/Win10 Home)',39990,'https://s.yimg.com/zp/MerchandiseImages/F15B8C1B41-SP-10460323.jpg','https://tw.buy.yahoo.com/gdsale/ASUS-G10CE-711700054T-i7-11700-16G-1TB-HDD-256G-SS-9714991.html',0,'0000-00-00',1),(42,'Yahoo','MSI微星 Infinite S3 11-011TW 電競電腦(i7-11700F/16G/1T SSD/GTX1660-6G/Win10)',43900,'https://s.yimg.com/zp/MerchandiseImages/AB402AA190-SP-10275925.jpg','https://tw.buy.yahoo.com/gdsale/MSI微星-Infinite-S3-11SH-011TW-電競電腦-i7-11700F-16G-1T-9654595.html',0,'0000-00-00',1),(43,'Yahoo','MSI微星 Infinite 11TC-1269TW 電競電腦(i5-11400F/16G/1T+256G SSD/RTX3060-12G/W10)',48900,'https://s.yimg.com/zp/MerchandiseImages/234aa4b1d7-Gd-9584613.jpg','https://tw.buy.yahoo.com/gdsale/MSI微星-Infinite-11TC-1269TW-電競電腦-i5-11400F-16G-1T-2-9584613.html',0,'0000-00-00',1),(44,'Yahoo','(福利品)Acer Orion PO5-615s 十代i9十核雙碟獨顯電競電腦(i9-10900K/RTX3080/16G+16G/512G/2T/Win10p/Predator)',79900,'https://s.yimg.com/zp/MerchandiseImages/A2C23BD4AD-SP-9447320.jpg','https://tw.buy.yahoo.com/gdsale/福利品-Acer-Orion-PO5-615s-十代i9十核雙碟獨顯電競電腦-i9-10900K-R-9684055.html',0,'0000-00-00',1),(45,'Yahoo','MSI微星 Infinite 11-1250TW+RTX3060 電競電腦(i7-11700F/16G/1T+512G SSD/RTX3060-12G/W10)',69900,'https://s.yimg.com/zp/MerchandiseImages/234AA4B1D7-SP-9966433.jpg','https://tw.buy.yahoo.com/gdsale/MSI微星-Infinite-11-1250TW-RTX3060-電競電腦-i7-11700F-16-9554507.html',0,'0000-00-00',1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-26 21:51:50
