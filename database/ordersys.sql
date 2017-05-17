-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: ordersys
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.04.1

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
-- Table structure for table `attributes`
--

DROP TABLE IF EXISTS `attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attributes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributes`
--

LOCK TABLES `attributes` WRITE;
/*!40000 ALTER TABLE `attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorys`
--

DROP TABLE IF EXISTS `categorys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorys`
--

LOCK TABLES `categorys` WRITE;
/*!40000 ALTER TABLE `categorys` DISABLE KEYS */;
/*!40000 ALTER TABLE `categorys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imgs`
--

DROP TABLE IF EXISTS `imgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imgs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imgaddress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imginfo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imgs`
--

LOCK TABLES `imgs` WRITE;
/*!40000 ALTER TABLE `imgs` DISABLE KEYS */;
/*!40000 ALTER TABLE `imgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logistics`
--

DROP TABLE IF EXISTS `logistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logistics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `lognumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loginfo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logistics`
--

LOCK TABLES `logistics` WRITE;
/*!40000 ALTER TABLE `logistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `logistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2017_02_09_075343_create_products_table',1),(4,'2017_02_09_075414_create_orders_table',1),(5,'2017_02_09_075438_create_imgs_table',1),(6,'2017_02_09_075505_create_categorys_table',1),(7,'2017_02_09_075531_create_attributes_table',1),(8,'2017_02_09_075552_create_customers_table',1),(9,'2017_02_09_075607_create_stocks_table',1),(10,'2017_02_09_075633_create_logistics_table',1),(11,'2017_03_10_132900_create_userdatas_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordnumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tradenumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attributesinfo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `num` int(11) NOT NULL DEFAULT '1',
  `amount` decimal(5,2) NOT NULL,
  `paymethon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ifpayed` tinyint(1) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orders_ordnumber_unique` (`ordnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stocks`
--

DROP TABLE IF EXISTS `stocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stocks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `sum` int(11) NOT NULL,
  `saled` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stocks`
--

LOCK TABLES `stocks` WRITE;
/*!40000 ALTER TABLE `stocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `stocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdatas`
--

DROP TABLE IF EXISTS `userdatas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userdatas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qq` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weixin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userdatas_phone_unique` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdatas`
--

LOCK TABLES `userdatas` WRITE;
/*!40000 ALTER TABLE `userdatas` DISABLE KEYS */;
INSERT INTO `userdatas` VALUES (2,'陈沙','15223358668',NULL,NULL,NULL,'360','2017-04-24 08:15:02','2017-04-26 01:51:20'),(8,'周先生','13635456575',NULL,NULL,NULL,'http://top4.95105899.com/zh/mobile1','2017-04-26 04:04:59','2017-04-29 04:43:45'),(9,'井先生','15882020398',NULL,NULL,NULL,'360','2017-04-26 07:38:36','2017-04-26 07:38:36'),(10,'张先生','15997265145',NULL,NULL,NULL,'360','2017-04-27 08:16:14','2017-04-27 08:16:14'),(11,'mtchy','13005731953',NULL,NULL,NULL,'360','2017-04-27 13:35:32','2017-04-27 13:36:36'),(12,'打算','13223332332',NULL,NULL,NULL,'360','2017-04-28 01:28:31','2017-04-28 01:28:31'),(13,'宋先生','18854179105',NULL,NULL,NULL,'360','2017-04-28 04:36:29','2017-04-28 04:36:29'),(14,'dfadf','13622333323',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang2','2017-04-28 06:37:22','2017-04-28 06:37:22'),(15,'谢先生','15987468000',NULL,NULL,NULL,'http://top4.95105899.com/zh','2017-04-28 06:45:37','2017-04-28 06:45:37'),(16,'陈先生','15334527608',NULL,NULL,NULL,'http://top4.95105899.com/zh/mobile1','2017-04-30 01:28:01','2017-04-30 01:28:01'),(17,'夏琼','15102733722',NULL,NULL,NULL,'http://top4.95105899.com/zh/mobile1','2017-05-01 07:47:11','2017-05-01 07:47:11'),(18,'程南星','15079240286',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuigaung?name=%E7%A8%8B%E5%8D%97%E6%98%9F&phone=15079240286&yzm=','2017-05-01 08:44:23','2017-05-01 08:46:39'),(19,'高红','15213162842',NULL,NULL,NULL,'http://top4.95105899.com/zh','2017-05-01 13:12:31','2017-05-01 13:19:55'),(20,'王祥瑞','15954333032',NULL,NULL,NULL,'http://top4.95105899.com/zh/mobile1','2017-05-02 03:12:02','2017-05-02 03:12:02'),(21,'严','15221053489',NULL,NULL,NULL,'http://top4.95105899.com/zh','2017-05-02 03:26:03','2017-05-02 03:26:03'),(22,'邵','18938621672',NULL,NULL,NULL,'http://top4.95105899.com/zh/mobile1','2017-05-02 07:00:13','2017-05-02 07:00:13'),(23,'姚先生','13487082163',NULL,NULL,NULL,'http://top4.95105899.com/zh','2017-05-02 10:05:36','2017-05-02 10:05:37'),(24,'梁松','13577438810',NULL,NULL,NULL,'http://top4.95105899.com/zh','2017-05-02 10:35:43','2017-05-02 10:35:43'),(25,'刘先生','15865651838',NULL,NULL,NULL,'http://top4.95105899.com/zh','2017-05-02 10:50:53','2017-05-02 10:50:53'),(26,'liu','13842640575',NULL,NULL,NULL,'http://top4.95105899.com/zh','2017-05-02 10:56:00','2017-05-02 10:56:00'),(27,'严存龙','18001814280',NULL,NULL,NULL,'http://top4.95105899.com/zh/mobile1','2017-05-02 11:47:57','2017-05-02 11:47:57'),(28,'张良芳','15687921768',NULL,NULL,NULL,'http://top4.95105899.com/zh','2017-05-02 14:40:42','2017-05-02 14:40:42'),(29,'李生','13432981098',NULL,NULL,NULL,'http://top4.95105899.com/zh','2017-05-02 15:30:30','2017-05-02 15:30:30'),(30,'王先生','13579663927',NULL,NULL,NULL,'http://top4.95105899.com/zh','2017-05-02 22:26:13','2017-05-02 22:26:13'),(31,'l刘先','13363881338',NULL,NULL,NULL,'http://top4.95105899.com/zh','2017-05-03 03:12:02','2017-05-03 03:12:02'),(32,'王女士','13845234414',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-03 04:27:17','2017-05-03 04:27:17'),(33,'李素艳','13702197119',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-03 06:20:38','2017-05-03 06:20:38'),(34,'焦常州','15517204758',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-03 06:59:32','2017-05-03 06:59:32'),(35,'李先生','13533397687',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-03 07:03:07','2017-05-03 07:03:07'),(36,'张志明','13681394091',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-03 07:08:57','2017-05-03 07:08:57'),(37,'倪明','13888888888',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-03 07:36:48','2017-05-03 07:36:48'),(38,'路志舜','13791200270',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-03 08:08:01','2017-05-03 08:08:01'),(39,'王平','13611931439',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-03 08:09:32','2017-05-03 08:09:32'),(40,'张先生','13721678367',NULL,NULL,NULL,'http://top4.95105899.com/zh','2017-05-03 08:30:22','2017-05-03 08:30:22'),(41,'王占斌','15321658699',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-03 08:37:21','2017-05-03 08:37:21'),(42,'王','18871255502',NULL,NULL,NULL,'http://top4.95105899.com/zh','2017-05-03 08:38:58','2017-05-03 08:38:58'),(43,'黄女士','15826602436',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-03 08:48:23','2017-05-03 08:48:23'),(44,'林生','18719249578',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-03 09:15:12','2017-05-03 09:15:12'),(45,'杨小姐','13160720131',NULL,NULL,NULL,'http://top4.95105899.com/zh','2017-05-03 09:26:26','2017-05-03 09:26:26'),(46,'陆先生','13552030518',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-03 09:44:35','2017-05-03 09:44:35'),(47,'袁小姐','13713345096',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-03 11:15:30','2017-05-03 11:15:30'),(48,NULL,'13520108978',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-03 12:11:55','2017-05-03 12:11:55'),(49,'王德启','18632617907',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-03 13:46:51','2017-05-03 13:46:51'),(50,'何亚飞','18126154998',NULL,NULL,NULL,'http://top4.95105899.com/zh/mobile1','2017-05-03 13:55:08','2017-05-03 13:55:08'),(51,'郭燕军','13835125914',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-03 14:03:00','2017-05-03 14:03:00'),(52,'bcc','18975933357',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-03 14:13:47','2017-05-03 14:13:47'),(53,NULL,'13416611535',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-03 15:04:43','2017-05-03 15:04:43'),(54,'成长','15258158009',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-03 23:16:57','2017-05-03 23:16:57'),(55,'王建江','15849887218',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-03 23:24:58','2017-05-03 23:29:14'),(56,'刘先生','13507930153',NULL,NULL,NULL,'http://top4.95105899.com/zh','2017-05-03 23:44:31','2017-05-13 01:06:11'),(57,'曹','13627935625',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-04 01:54:09','2017-05-04 01:54:09'),(58,'张凤莲','13720528820',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-04 01:59:26','2017-05-04 01:59:26'),(59,'t    g','13660029121',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-04 02:16:44','2017-05-04 02:16:44'),(60,'程陈','13821647380',NULL,NULL,NULL,'http://top4.95105899.com/zh','2017-05-04 03:12:33','2017-05-04 03:12:33'),(61,'李建军','15203231262',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-04 04:55:18','2017-05-04 04:55:18'),(62,'于丹','13641311104',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-04 06:53:45','2017-05-04 07:00:44'),(63,'姚先生','15523531249',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-04 09:11:54','2017-05-04 09:11:54'),(64,'安褀','13208959178',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-04 09:15:56','2017-05-04 09:15:56'),(65,'周海','18030809528',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-04 09:49:14','2017-05-04 09:49:14'),(66,'周铁生','13359295264',NULL,NULL,NULL,'http://top4.95105899.com/zh/mobile1','2017-05-04 10:50:43','2017-05-04 10:50:43'),(67,'杨先生','13750672938',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-04 11:59:33','2017-05-04 11:59:33'),(68,'yuxians','15888003317',NULL,NULL,NULL,'http://top4.95105899.com/zh','2017-05-04 12:47:11','2017-05-04 12:47:47'),(69,'王子寅','13611708034',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-04 13:05:30','2017-05-04 13:05:30'),(70,'胡凯','17752280968',NULL,NULL,NULL,'http://top4.95105899.com/zh','2017-05-04 13:06:09','2017-05-04 13:07:22'),(71,'37738108','15910961798',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-04 13:40:10','2017-05-04 13:40:10'),(72,'张先生','13937913708',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-04 13:49:10','2017-05-04 13:49:10'),(73,'朱先生','13714806880',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-04 14:40:19','2017-05-04 14:40:19'),(74,'陆先生','13671849545',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-04 20:10:01','2017-05-04 20:10:01'),(75,'王先生','13625253653',NULL,NULL,NULL,'http://top4.95105899.com/zh/?360sousuo','2017-05-05 01:20:35','2017-05-05 01:20:35'),(76,'刘华英','13641435975',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-05 01:33:00','2017-05-05 01:33:00'),(77,'周先生','13635456578',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang2?xscg','2017-05-05 03:47:17','2017-05-05 03:47:17'),(78,'甘国顺','15280268880',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3?xz','2017-05-05 05:44:10','2017-05-05 05:44:10'),(79,'邱东平','18657582802',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3?xz','2017-05-05 05:59:27','2017-05-05 05:59:27'),(80,'周圣炜','15870900086',NULL,NULL,NULL,'http://top4.95105899.com/zh/mobile1','2017-05-05 06:18:35','2017-05-05 06:18:35'),(81,'刘先生','13636472275',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3?zgq','2017-05-05 07:21:53','2017-05-05 07:21:53'),(82,'刘丹','18407836139',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3?gpyw','2017-05-05 07:35:54','2017-05-05 07:35:54'),(83,'周昌茂','18715536666',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3?xz','2017-05-05 08:42:00','2017-05-05 08:42:00'),(84,NULL,'15837653567',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang?zshy','2017-05-05 11:16:02','2017-05-05 11:16:02'),(85,NULL,'15827653567',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang?zshy','2017-05-05 11:17:50','2017-05-05 11:17:50'),(86,'liu','15366585513',NULL,NULL,NULL,'http://top4.95105899.com/zh?gprj','2017-05-05 11:30:59','2017-05-05 11:30:59'),(87,'严存龙','18701772857',NULL,NULL,NULL,'http://top4.95105899.com/zh/mobile1','2017-05-05 11:38:26','2017-05-05 11:38:26'),(88,'石','18722230331',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3?gpfx','2017-05-05 12:02:40','2017-05-05 12:02:40'),(89,'黄生','13757948507',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-05 12:26:29','2017-05-05 12:26:29'),(90,'lixiansheng','15542532880',NULL,NULL,NULL,'http://top4.95105899.com/zh?dxcg','2017-05-05 13:22:18','2017-05-05 13:22:18'),(91,'赵四 因','13453634772',NULL,NULL,NULL,'http://top4.95105899.com/zh/mobile1','2017-05-05 13:44:50','2017-05-05 13:44:50'),(92,'陈','13942027298',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-05 13:46:51','2017-05-05 13:46:51'),(93,NULL,'13786121980',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-05 23:43:09','2017-05-05 23:43:09'),(94,'刘兴','15173367148',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3?xz','2017-05-06 00:33:05','2017-05-06 00:33:52'),(95,'王先生','13619860059',NULL,NULL,NULL,'http://top4.95105899.com/zh?xscg','2017-05-06 01:35:52','2017-05-06 01:35:52'),(96,'古月先生','13907205028',NULL,NULL,NULL,'http://top4.95105899.com/zh/yaoqianshu','2017-05-06 01:36:48','2017-05-06 01:36:48'),(97,'刘先生','15241839888',NULL,NULL,NULL,'http://top4.95105899.com/zh?cgrj','2017-05-06 02:18:40','2017-05-06 02:18:40'),(98,'陈先生','13706979327',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuigaung','2017-05-06 02:29:03','2017-05-06 02:29:03'),(99,'李小明','13884192783',NULL,NULL,NULL,'http://top4.95105899.com/zh?zgrj','2017-05-06 02:34:10','2017-05-06 02:34:10'),(100,'刘先生','13102066800',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang?zshy','2017-05-06 02:34:42','2017-05-06 02:34:42'),(101,'成先生','15062763822',NULL,NULL,NULL,'http://top4.95105899.com/zh?cgfa','2017-05-06 03:17:35','2017-05-06 03:17:35'),(102,'苟先生','13502253987',NULL,NULL,NULL,'http://top4.95105899.com/zh?cgfa','2017-05-06 03:38:32','2017-05-06 03:38:32'),(103,'黄龙顺','13906091381',NULL,NULL,NULL,'http://top4.95105899.com/zh/mobile1','2017-05-06 03:43:35','2017-05-06 03:43:35'),(104,'徐先生','15378776656',NULL,NULL,NULL,'http://top4.95105899.com/zh?cgrj','2017-05-06 03:46:34','2017-05-06 03:46:34'),(105,'麦永义','18607845508',NULL,NULL,NULL,'http://top4.95105899.com/zh/mobile1','2017-05-06 04:25:54','2017-05-06 04:25:54'),(106,'唐贤顺','13071858980',NULL,NULL,NULL,'http://top4.95105899.com/zh?dxcg','2017-05-06 05:03:00','2017-05-06 05:03:00'),(107,NULL,'13834594684',NULL,NULL,NULL,NULL,'2017-05-06 05:10:14','2017-05-06 05:10:14'),(108,'段丰师','13792892712',NULL,NULL,NULL,'http://top4.95105899.com/zh?gpyw','2017-05-06 05:13:49','2017-05-06 05:13:50'),(109,'邹女士','18804998300',NULL,NULL,NULL,'http://top4.95105899.com/zh?xz','2017-05-06 06:10:51','2017-05-06 06:10:51'),(110,'先生','13790432724',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-06 07:03:01','2017-05-06 07:03:01'),(111,'闫晓波','15225539017',NULL,NULL,NULL,'http://top4.95105899.com/zh?cgrj','2017-05-06 07:51:47','2017-05-06 07:51:47'),(112,'王力','13535549475',NULL,NULL,NULL,'http://top4.95105899.com/zh/mobile1','2017-05-06 08:03:23','2017-05-06 08:03:23'),(113,'毛先生','13033936063',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3?2017zs','2017-05-06 08:06:35','2017-05-06 08:06:35'),(114,NULL,'13472627593',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3?xz','2017-05-06 08:12:09','2017-05-06 08:20:03'),(115,'王强','18709493786',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3?2017zs','2017-05-06 11:54:18','2017-05-06 11:54:19'),(116,NULL,'13825189448',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3?xz','2017-05-06 11:54:29','2017-05-06 11:54:29'),(117,'孟先生','15699505332',NULL,NULL,NULL,'http://top4.95105899.com/zh/yaoqianshu','2017-05-06 12:04:54','2017-05-06 12:04:54'),(118,'高先行','18952184949',NULL,NULL,NULL,'http://top4.95105899.com/zh?gpyw','2017-05-06 13:29:50','2017-05-06 23:48:21'),(119,'康山海','18995527771',NULL,NULL,NULL,'http://top4.95105899.com/zh?zq','2017-05-06 13:35:13','2017-05-06 13:35:13'),(120,'刘先生','13552972838',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3?pczs','2017-05-06 15:30:24','2017-05-06 15:30:24'),(121,NULL,'13910831499',NULL,NULL,NULL,'http://top4.95105899.com/zh?cgrj','2017-05-06 22:29:14','2017-05-06 22:29:14'),(122,'姜海','18905152282',NULL,NULL,NULL,'http://top4.95105899.com/zh?cgrj','2017-05-06 22:41:52','2017-05-06 22:41:52'),(123,'范喜增','15947561635',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3?dxcg','2017-05-07 01:37:47','2017-05-07 01:37:47'),(124,'杜玉伟','17698383787',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang?zshy','2017-05-07 02:07:14','2017-05-07 02:07:14'),(125,'卢剑岳','18358249569',NULL,NULL,NULL,'http://top4.95105899.com/zh?gpyw','2017-05-07 03:12:32','2017-05-07 03:12:32'),(126,'刘小容','13728338597',NULL,NULL,NULL,'http://top4.95105899.com/zh?gprj','2017-05-07 03:12:59','2017-05-07 03:12:59'),(127,'杨杰','13616161963',NULL,NULL,NULL,'http://top4.95105899.com/zh/mobile1','2017-05-07 04:12:12','2017-05-07 04:12:12'),(128,'金承男','13704330063',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuigaung','2017-05-07 04:51:04','2017-05-07 04:51:04'),(129,'杨女士','13201413256',NULL,NULL,NULL,'http://top4.95105899.com/zh?gprj','2017-05-07 04:59:09','2017-05-07 04:59:09'),(130,'wangdiansheng','15713529783',NULL,NULL,NULL,'http://top4.95105899.com/zh?cgfa','2017-05-07 05:08:43','2017-05-07 05:08:43'),(131,'彭少华','18960669389',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-07 05:11:16','2017-05-07 05:11:17'),(132,'赵先生','18040035488',NULL,NULL,NULL,'http://top4.95105899.com/zh?gprj','2017-05-07 05:45:31','2017-05-07 05:45:31'),(133,'王先生','13427426744',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuigaung','2017-05-07 06:39:42','2017-05-07 06:39:42'),(134,'王元斌','18523674168',NULL,NULL,NULL,'http://top4.95105899.com/zh?gprj','2017-05-07 08:06:01','2017-05-07 08:06:01'),(135,'郭先生','13716752889',NULL,NULL,NULL,'http://top4.95105899.com/zh?zq','2017-05-07 08:15:36','2017-05-07 08:15:36'),(136,'刘建强','14729035143',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3?zq','2017-05-07 09:27:53','2017-05-07 09:27:53'),(137,'董艳雅','15325036923',NULL,NULL,NULL,'http://top4.95105899.com/zh?zgrj','2017-05-07 09:28:35','2017-05-07 09:28:35'),(138,'郑生','13528662409',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3?cgrj','2017-05-07 10:09:51','2017-05-07 10:09:52'),(139,'周先生','13585230514',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3?gpyw','2017-05-07 10:18:17','2017-05-07 10:18:17'),(140,'董','13145665021',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3?pczs','2017-05-07 11:31:17','2017-05-07 11:31:17'),(141,'SHENAN','13860389031',NULL,NULL,NULL,'http://top4.95105899.com/zh?zgrj','2017-05-07 11:43:55','2017-05-07 11:43:55'),(142,NULL,'13865921022',NULL,NULL,NULL,'http://top4.95105899.com/zh?gprj','2017-05-07 11:59:19','2017-05-07 11:59:19'),(143,'林女士','18765973508',NULL,NULL,NULL,'http://top4.95105899.com/zh/mobile1','2017-05-07 13:30:27','2017-05-07 13:30:27'),(144,'李先生','18795304109',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang?zshy','2017-05-07 17:41:03','2017-05-07 17:41:03'),(146,'苏先生','13261525345',NULL,NULL,NULL,'http://top4.95105899.com/zh?cgrj','2017-05-07 23:02:50','2017-05-07 23:02:50'),(147,'汤先生','18054243178',NULL,NULL,NULL,'http://top4.95105899.com/zh','2017-05-07 23:47:22','2017-05-07 23:47:22'),(148,'付先生','13350004937',NULL,NULL,NULL,'http://top4.95105899.com/zh?cgrj','2017-05-08 00:25:33','2017-05-08 00:25:33'),(149,'ysf','13007858597',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang?zshy','2017-05-08 04:14:04','2017-05-08 04:14:04'),(150,'王','18838062341',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3?gpfx','2017-05-08 05:40:39','2017-05-08 05:40:39'),(151,'yang','15215281690',NULL,NULL,NULL,'http://top4.95105899.com/zh?cgfa','2017-05-08 06:06:28','2017-05-08 06:06:37'),(152,'王先生','13657040889',NULL,NULL,NULL,'http://top4.95105899.com/zh?cgfa','2017-05-08 07:08:43','2017-05-08 07:08:43'),(153,'薛先生','13021256968',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3?xz','2017-05-08 07:52:00','2017-05-08 07:52:00'),(154,'刘先生','18038129959',NULL,NULL,NULL,'http://top4.95105899.com/zh?gpyw','2017-05-08 08:24:22','2017-05-08 08:24:22'),(155,'陈浩','13907293959',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3?2017zs','2017-05-08 08:57:41','2017-05-08 08:58:23'),(156,'吕生','18039227136',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-08 09:59:33','2017-05-08 09:59:33'),(157,'俞应中','18956726346',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang?zshy','2017-05-08 14:55:20','2017-05-08 14:55:20'),(158,'蔡先生','13248285693',NULL,NULL,NULL,'http://top4.95105899.com/zh?cgfa','2017-05-08 23:27:17','2017-05-08 23:27:17'),(159,'郑先生','13050591205',NULL,NULL,NULL,'http://top4.95105899.com/zh?gprj','2017-05-08 23:53:20','2017-05-08 23:53:20'),(160,'于先生','18653155288',NULL,NULL,NULL,'http://top4.95105899.com/zh/yaoqianshu','2017-05-09 00:12:55','2017-05-09 00:15:53'),(161,'马先生','15516790872',NULL,NULL,NULL,'http://top4.95105899.com/zh?gpyw','2017-05-09 00:35:11','2017-05-09 00:35:11'),(162,'李先生','15223359558',NULL,NULL,NULL,'http://top4.95105899.com/zh?cgrj_04','2017-05-09 04:53:40','2017-05-09 04:53:40'),(163,'黄诚','13739379686',NULL,NULL,NULL,'http://top4.95105899.com/zh?cgrj_10','2017-05-09 07:24:09','2017-05-09 07:24:09'),(164,'陈生','13802823259',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-09 08:47:27','2017-05-09 08:47:27'),(165,'翟立庄','13832226625',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-09 09:58:46','2017-05-09 09:58:46'),(166,'张','13132210292',NULL,NULL,NULL,'http://top4.95105899.com/zh?gpyw','2017-05-09 11:42:20','2017-05-09 11:42:20'),(167,'扬旭','18981169951',NULL,NULL,NULL,'http://top4.95105899.com/zh?cgfa_33','2017-05-09 12:26:54','2017-05-09 12:26:54'),(168,'单栋杰','13567871872',NULL,NULL,NULL,'http://top4.95105899.com/zh/mobile1','2017-05-09 14:05:36','2017-05-09 14:05:36'),(169,'发','13565301750',NULL,NULL,NULL,'http://top4.95105899.com/zh?cgfa_73','2017-05-09 14:05:44','2017-05-09 14:05:52'),(170,'张女士','18301031388',NULL,NULL,NULL,'http://top4.95105899.com/zh?zgq_10','2017-05-09 15:28:51','2017-05-09 15:28:51'),(171,'czo','13719195700',NULL,NULL,NULL,'http://top4.95105899.com/zh/mobile1','2017-05-09 15:38:38','2017-05-09 15:38:38'),(172,'刘先生','18098800307',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3?xz','2017-05-09 16:56:42','2017-05-09 16:56:42'),(173,NULL,'18894902967',NULL,NULL,NULL,'http://top4.95105899.com/zh?cgfa_52','2017-05-09 22:53:54','2017-05-09 22:53:54'),(174,'小杨','15962106659',NULL,NULL,NULL,'http://top4.95105899.com/zh?cgfa_33','2017-05-10 00:33:15','2017-05-10 00:33:15'),(175,'abra86813961313377','13961313377',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang?zshy','2017-05-10 01:31:12','2017-05-10 01:31:12'),(176,'韩燕丰','15957596326',NULL,NULL,NULL,'http://top4.95105899.com/zh/mobile1','2017-05-10 02:17:25','2017-05-10 02:17:25'),(177,'王业宝','15318860846',NULL,NULL,NULL,'http://top4.95105899.com/zh?cgfa_63','2017-05-10 07:22:54','2017-05-10 07:22:54'),(178,'李','13884884397',NULL,NULL,NULL,'http://top4.95105899.com/zh?cgrj_08','2017-05-10 07:31:43','2017-05-10 07:31:43'),(179,'孙晓','15690856669',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang1?xz','2017-05-10 08:54:23','2017-05-10 08:54:23'),(180,'刘建伟','15938542455',NULL,NULL,NULL,'http://top4.95105899.com/zh?zgq_10','2017-05-10 08:56:58','2017-05-10 08:56:58'),(181,NULL,'18852825526',NULL,NULL,NULL,'http://top4.95105899.com/zh?cgrj_02','2017-05-10 11:25:47','2017-05-10 11:25:47'),(182,'蔡木懷','１５８１３８０７６６８',NULL,NULL,NULL,'http://top4.95105899.com/zh?gprj_07','2017-05-10 11:49:22','2017-05-10 11:49:22'),(183,'罗先生','17770520546',NULL,NULL,NULL,'http://top4.95105899.com/zh?zgq_10','2017-05-10 12:47:08','2017-05-10 12:47:08'),(184,'张先生','13588633820',NULL,NULL,NULL,'http://top4.95105899.com/zh?gprj_11','2017-05-10 14:44:25','2017-05-10 14:44:25'),(185,'刘先生','18912924478',NULL,NULL,NULL,'http://top4.95105899.com/zh?gpfx_03','2017-05-11 00:29:02','2017-05-11 00:29:02'),(186,'李建国','15797754547',NULL,NULL,NULL,'http://top4.95105899.com/zh?cgfa_32','2017-05-11 01:08:26','2017-05-11 01:08:26'),(187,'林先生','18344358088',NULL,NULL,NULL,'http://top4.95105899.com/zh?cgfa_98','2017-05-11 01:29:29','2017-05-11 01:29:29'),(188,'杨女士','18019717521',NULL,NULL,NULL,'http://top4.95105899.com/zh/yaoqianshu','2017-05-11 01:50:32','2017-05-11 01:50:32'),(189,'戎先生','18638735439',NULL,NULL,NULL,'http://top4.95105899.com/zh/yaoqianshu','2017-05-11 02:44:25','2017-05-11 02:44:25'),(190,'黎','13002303756',NULL,NULL,NULL,'http://top4.95105899.com/zh?cgfa_69','2017-05-11 03:15:15','2017-05-11 03:15:15'),(191,'燊先生','15842494122',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3?xz','2017-05-11 04:23:37','2017-05-11 04:23:37'),(192,'王先生','13940844498',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3?xz','2017-05-11 04:25:29','2017-05-11 04:26:09'),(193,NULL,'18019961323',NULL,NULL,NULL,'http://top4.95105899.com/zh?zgq_10','2017-05-11 08:29:42','2017-05-11 08:29:42'),(194,'关文举','18743321700',NULL,NULL,NULL,'http://top4.95105899.com/zh?zgq','2017-05-11 09:44:11','2017-05-11 09:44:11'),(195,'丁先生','15853351844',NULL,NULL,NULL,'http://top4.95105899.com/zh?zgq','2017-05-11 09:55:40','2017-05-11 09:55:40'),(196,'留缘','18902268818',NULL,NULL,NULL,'http://top4.95105899.com/zh?zq_07','2017-05-11 14:07:33','2017-05-11 14:07:33'),(197,'李飞','13159061559',NULL,NULL,NULL,'http://top4.95105899.com/zh/mobile1','2017-05-11 14:22:12','2017-05-11 14:22:12'),(198,'郑先生','13516976792',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3?pczs','2017-05-11 22:18:16','2017-05-11 22:18:16'),(199,'廖先生','13910899111',NULL,NULL,NULL,'http://top4.95105899.com/zh?zgq','2017-05-11 22:24:43','2017-05-11 22:24:43'),(200,'杨先生','18605636232',NULL,NULL,NULL,'http://top4.95105899.com/zh?dzx_140','2017-05-11 23:02:54','2017-05-11 23:02:54'),(201,'张稳辉','13503037968',NULL,NULL,NULL,'http://top4.95105899.com/zh/mobile1','2017-05-12 00:35:01','2017-05-12 00:35:02'),(202,'赵先生','13135836140',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang?zshy','2017-05-12 01:05:07','2017-05-12 01:05:07'),(203,'YX029','13661360498',NULL,NULL,NULL,'http://top4.95105899.com/zh?zgq','2017-05-12 01:08:35','2017-05-12 01:08:35'),(204,'黄美玲','13522103629',NULL,NULL,NULL,'http://top4.95105899.com/zh?zgq','2017-05-12 02:42:55','2017-05-12 02:42:55'),(205,'李会平','18604975512',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3?zgq','2017-05-12 03:59:42','2017-05-12 03:59:42'),(206,'陈','13545700554',NULL,NULL,NULL,'http://top4.95105899.com/zh?dzx_142','2017-05-12 04:59:55','2017-05-12 04:59:55'),(207,'水在平','18373210398',NULL,NULL,NULL,'http://top4.95105899.com/zh/mobile1','2017-05-12 06:02:40','2017-05-12 06:18:11'),(208,'云在青天','13927876443',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-12 06:11:44','2017-05-12 06:12:50'),(209,'狗仔','13212227717',NULL,NULL,NULL,'http://top4.95105899.com/zh?gzh_08','2017-05-12 06:36:51','2017-05-12 06:36:51'),(210,'狗仔','13114830930',NULL,NULL,NULL,'http://top4.95105899.com/zh?gzh_08','2017-05-12 06:37:03','2017-05-12 06:37:03'),(211,'狗仔','13011385441',NULL,NULL,NULL,'http://top4.95105899.com/zh?gzh_08','2017-05-12 06:37:12','2017-05-12 06:37:12'),(212,'江先生','18945047921',NULL,NULL,NULL,'http://top4.95105899.com/zh?zgq_10','2017-05-12 07:16:18','2017-05-12 07:16:18'),(213,'陈','13164649175',NULL,NULL,NULL,'http://top4.95105899.com/zh?gpfx_04','2017-05-12 07:57:47','2017-05-12 07:57:47'),(214,'杨先生','15128749043',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-12 08:23:00','2017-05-12 08:23:00'),(215,'张并生','13068026550',NULL,NULL,NULL,'http://top4.95105899.com/zh?cgfa_69','2017-05-12 08:27:32','2017-05-12 08:30:00'),(216,'张先生','15369584359',NULL,NULL,NULL,'http://top4.95105899.com/zh?zgq','2017-05-12 09:32:19','2017-05-12 09:32:19'),(217,'邵贞民','13011787589',NULL,NULL,NULL,'http://top4.95105899.com/zh?zgq','2017-05-12 09:57:42','2017-05-12 09:57:42'),(218,'znz','13424107063',NULL,NULL,NULL,'http://top4.95105899.com/zh?zgq','2017-05-12 10:19:30','2017-05-12 10:19:30'),(219,'HAN','13125485729',NULL,NULL,NULL,'http://top4.95105899.com/zh?zq_07','2017-05-13 02:14:31','2017-05-13 23:56:01'),(220,'王先生','13646864345',NULL,NULL,NULL,'http://top4.95105899.com/zh?gpyw_01','2017-05-13 02:31:16','2017-05-13 02:31:16'),(221,'于树升','13206331570',NULL,NULL,NULL,'http://top4.95105899.com/zh?xz_16','2017-05-13 04:17:39','2017-05-13 04:17:39'),(222,NULL,'13801380138',NULL,NULL,NULL,'http://top4.95105899.com/zh?cgfa_33','2017-05-13 05:40:15','2017-05-13 05:40:15'),(223,'李志刚','15539244218',NULL,NULL,NULL,'http://top4.95105899.com/zh?cgfa_98','2017-05-13 06:08:30','2017-05-13 06:08:30'),(224,'冯女士','13303223650',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3?zgq','2017-05-13 06:54:11','2017-05-13 06:54:11'),(225,'高先生','13607154478',NULL,NULL,NULL,'http://top4.95105899.com/zh?cgfa_69','2017-05-13 08:15:06','2017-05-13 08:15:06'),(226,'田先生','13363852685',NULL,NULL,NULL,'http://top4.95105899.com/zh?cgfa_69','2017-05-13 08:59:37','2017-05-13 08:59:37'),(227,'邢','13931196638',NULL,NULL,NULL,'http://top4.95105899.com/zh?cgfa_69','2017-05-13 10:43:28','2017-05-13 10:43:28'),(228,'胡','13102920181',NULL,NULL,NULL,'http://top4.95105899.com/zh?cgfa_69','2017-05-13 12:03:32','2017-05-13 12:03:32'),(229,'曾贵明','13407882533',NULL,NULL,NULL,'http://top4.95105899.com/zh?rj_cgrj_06','2017-05-13 14:23:13','2017-05-13 14:24:54'),(230,'执着','13325166337',NULL,NULL,NULL,'http://top4.95105899.com/zh?zgq_10','2017-05-14 00:25:50','2017-05-14 00:35:36'),(231,'向','15565557128',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3?pczs','2017-05-14 02:11:34','2017-05-14 02:11:34'),(232,'林先生','18024004609',NULL,NULL,NULL,'http://top4.95105899.com/zh?cgrj_08','2017-05-14 02:20:43','2017-05-14 02:20:43'),(233,NULL,'15456585236',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang?zshy','2017-05-14 05:52:10','2017-05-14 05:52:10'),(234,'刘先生','15127628423',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3','2017-05-14 06:05:40','2017-05-14 06:05:40'),(235,'齐先生','13302176227',NULL,NULL,NULL,'http://top4.95105899.com/zh?zgq','2017-05-14 07:08:33','2017-05-14 07:08:33'),(236,'张松华','13431811238',NULL,NULL,NULL,'http://top4.95105899.com/zh?zgq','2017-05-14 07:40:59','2017-05-14 07:40:59'),(237,'唐友明','17791081103',NULL,NULL,NULL,'http://top4.95105899.com/zh?cgfa_05','2017-05-14 08:12:48','2017-05-14 08:12:48'),(238,'lu','15267812477',NULL,NULL,NULL,'http://top4.95105899.com/zh?cgrj_08','2017-05-14 08:19:22','2017-05-14 08:19:22'),(239,'杨先生','18631776305',NULL,NULL,NULL,'http://top4.95105899.com/zh?cgfa_78','2017-05-14 09:35:51','2017-05-14 09:35:51'),(240,NULL,'18840839685',NULL,NULL,NULL,'http://top4.95105899.com/zh?gpfx_02','2017-05-14 12:09:12','2017-05-14 12:09:12'),(241,'简先生','15036958013',NULL,NULL,NULL,'http://top4.95105899.com/zh?gprj_01','2017-05-14 12:17:22','2017-05-14 12:17:22'),(242,'吴若祎，','36199851232',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3?zgq','2017-05-14 13:28:05','2017-05-14 13:28:05'),(243,'吴若讳','13619985123',NULL,NULL,NULL,'http://top4.95105899.com/zh/mobile1','2017-05-14 13:29:05','2017-05-14 13:34:37'),(244,'谢先生','13183215585',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang?zshy','2017-05-14 13:56:48','2017-05-14 13:56:48'),(245,'王国','13385285863',NULL,NULL,NULL,'http://top4.95105899.com/zh?zgq_05','2017-05-14 14:06:46','2017-05-14 14:11:19'),(246,'朱先生','15002268061',NULL,NULL,NULL,'http://top4.95105899.com/zh/tuiguang3?pczs','2017-05-14 15:01:07','2017-05-14 15:01:07'),(247,'王学启','18799923890',NULL,NULL,NULL,'http://top4.95105899.com/zh?xz_09','2017-05-14 15:45:51','2017-05-14 15:45:51'),(248,'屠小荣','13586322084',NULL,NULL,NULL,'http://top4.95105899.com/zh?zgq','2017-05-14 23:33:28','2017-05-14 23:33:28'),(249,'王先生','13831111760',NULL,NULL,NULL,'http://top4.95105899.com/zh?gprj_01','2017-05-15 00:15:08','2017-05-15 00:15:08'),(250,'尹先生','13589800019',NULL,NULL,NULL,'http://top4.95105899.com/zh?gpyw_19','2017-05-15 02:14:10','2017-05-15 02:14:10'),(251,'张','15547213111',NULL,NULL,NULL,'http://top4.95105899.com/zh?zgq','2017-05-15 03:07:17','2017-05-15 03:07:17'),(252,'刘杨','13586057890',NULL,NULL,NULL,'http://top4.95105899.com/zh?cgrj_15','2017-05-15 03:31:07','2017-05-15 03:31:07'),(253,'吴','13452350358',NULL,NULL,NULL,'http://top4.95105899.com/zh?zgq','2017-05-15 03:53:37','2017-05-15 03:53:37'),(254,'李先生','13249136985',NULL,NULL,NULL,'http://top4.95105899.com/zh?gpfx_02','2017-05-15 08:08:14','2017-05-15 08:08:14'),(255,'袁先生','13918159454',NULL,NULL,NULL,'http://top4.95105899.com/zh?xzrj_xz_08','2017-05-15 08:56:54','2017-05-15 08:56:54'),(256,'于同升','13305351163',NULL,NULL,NULL,'http://top4.95105899.com/zh?zgq','2017-05-15 10:11:35','2017-05-15 10:11:35'),(257,'陈先生','13545465465',NULL,NULL,NULL,'http://top4.95105899.com/zh','2017-05-15 11:22:09','2017-05-15 11:22:10');
/*!40000 ALTER TABLE `userdatas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-15 19:34:52
