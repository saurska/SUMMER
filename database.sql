-- MySQL dump 10.13  Distrib 8.0.28, for macos10.15 (x86_64)
--
-- Host: localhost    Database: wowy
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `code` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'tcIaqNMcuytxlaz7pQVVou5PfaeiIx9s',1,'2022-01-04 21:11:38','2022-01-04 21:11:38','2022-01-04 21:11:38');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Smart Offer','2027-01-05 00:00:00','not_set','IZ6WU8KUALYD','promotion/1.png','/products',0,1,'published','2022-01-04 21:11:41','2022-01-04 21:11:41'),(2,'Sale off','2027-01-05 00:00:00','not_set','ILSFJVYFGCPZ','promotion/2.png','/products',0,2,'published','2022-01-04 21:11:41','2022-01-04 21:11:41'),(3,'New Arrivals','2027-01-05 00:00:00','not_set','ILSDKVYFGXPH','promotion/3.png','/products',0,3,'published','2022-01-04 21:11:41','2022-01-04 21:11:41'),(4,'Gaming Area','2027-01-05 00:00:00','not_set','ILSDKVYFGXPJ','promotion/4.png','/products',0,4,'published','2022-01-04 21:11:41','2022-01-04 21:11:41'),(5,'Smart Offer','2027-01-05 00:00:00','not_set','IZ6WU8KUALYE','promotion/5.png','/products',0,5,'published','2022-01-04 21:11:41','2022-01-04 21:11:41'),(6,'Repair Services','2027-01-05 00:00:00','banner-big','IZ6WU8KUALYF','promotion/6.png','/products',0,6,'published','2022-01-04 21:11:41','2022-01-04 21:11:41');
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
INSERT INTO `ads_translations` VALUES ('vi',1,'Smart Offer','promotion/1.png','/vi/products'),('vi',2,'Sale off','promotion/2.png','/vi/products'),('vi',3,'New Arrivals','promotion/3.png','/vi/products'),('vi',4,'Gaming Area','promotion/4.png','/vi/products'),('vi',5,'Smart Offer','promotion/5.png','/vi/products'),('vi',6,'Repair Services','promotion/6.png','/vi/products');
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `module` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int unsigned NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Tempora laboriosam molestiae repellendus. Quasi et reprehenderit eveniet ipsam vero quasi deleniti. Cumque illo omnis et maxime at quia eos ex. Expedita aut repellendus fugiat nam.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2022-01-04 21:11:38','2022-01-04 21:11:38'),(2,'Fashion',0,'Consequatur reiciendis aut qui delectus molestiae voluptatem. Unde est dolor aut porro.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-01-04 21:11:38','2022-01-04 21:11:38'),(3,'Electronic',0,'Aliquid facere odio quod consequatur. Vero et perspiciatis ducimus impedit quis. Placeat maiores consequatur sit qui consequatur consequuntur nobis.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-01-04 21:11:38','2022-01-04 21:11:38'),(4,'Commercial',0,'Amet quia reprehenderit qui quo amet et aut quam. Vel possimus et similique sunt. Nihil consectetur deserunt et quia omnis reprehenderit.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-01-04 21:11:38','2022-01-04 21:11:38');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
INSERT INTO `categories_translations` VALUES ('vi',1,'Thương mại điện tử',NULL),('vi',2,'Thời trang',NULL),('vi',3,'Điện tử',NULL),('vi',4,'Thương mại',NULL);
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int unsigned NOT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `record_id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_backup`
--

DROP TABLE IF EXISTS `cities_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_backup` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int unsigned NOT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `record_id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_backup`
--

LOCK TABLES `cities_backup` WRITE;
/*!40000 ALTER TABLE `cities_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` int NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_backup`
--

DROP TABLE IF EXISTS `countries_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_backup` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_backup`
--

LOCK TABLES `countries_backup` WRITE;
/*!40000 ALTER TABLE `countries_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` int NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` int unsigned NOT NULL,
  `widget_id` int unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Perxsion',NULL,NULL,'brands/1.png','published',0,1,'2022-01-04 21:10:45','2022-01-04 21:10:45'),(2,'Hiching',NULL,NULL,'brands/2.png','published',1,1,'2022-01-04 21:10:45','2022-01-04 21:10:45'),(3,'Kepslo',NULL,NULL,'brands/3.png','published',2,1,'2022-01-04 21:10:45','2022-01-04 21:10:45'),(4,'Groneba',NULL,NULL,'brands/4.png','published',3,1,'2022-01-04 21:10:45','2022-01-04 21:10:45'),(5,'Babian',NULL,NULL,'brands/5.png','published',4,1,'2022-01-04 21:10:45','2022-01-04 21:10:45'),(6,'Valorant',NULL,NULL,'brands/6.png','published',5,1,'2022-01-04 21:10:45','2022-01-04 21:10:45'),(7,'Pure',NULL,NULL,'brands/7.png','published',6,1,'2022-01-04 21:10:45','2022-01-04 21:10:45');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
INSERT INTO `ec_brands_translations` VALUES ('vi',1,'Perxsion',NULL),('vi',2,'Hiching',NULL),('vi',3,'Kepslo',NULL),('vi',4,'Groneba',NULL),('vi',5,'Babian',NULL),('vi',6,'Valorant',NULL),('vi',7,'Pure',NULL);
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2022-01-04 21:10:45','2022-01-04 21:10:45'),(2,'EUR','€',0,2,1,0,0.84,'2022-01-04 21:10:45','2022-01-04 21:10:45'),(3,'VND','₫',0,0,2,0,23203,'2022-01-04 21:10:45','2022-01-04 21:10:45');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Ezequiel Fritsch','john.smith@botble.com','+17705307485','TL','South Dakota','Schillerbury','18148 Wilderman Divide',1,1,'2022-01-04 21:11:21','2022-01-04 21:11:21','81559'),(2,'Ezequiel Fritsch','john.smith@botble.com','+15405632484','KZ','Arkansas','Cieloshire','954 Casper Lakes Suite 914',1,0,'2022-01-04 21:11:21','2022-01-04 21:11:21','51945'),(3,'Adele Padberg','customer@botble.com','+15136151552','KH','Connecticut','Vilmashire','51935 Friesen Isle',2,1,'2022-01-04 21:11:21','2022-01-04 21:11:21','24732-4523'),(4,'Adele Padberg','customer@botble.com','+18325332733','MR','Wyoming','New Eula','322 Xzavier Square',2,0,'2022-01-04 21:11:21','2022-01-04 21:11:21','98909'),(5,'Mr. Florian Hyatt V','cschumm@example.net','+15034310789','MP','Alaska','South Keven','562 Douglas Stravenue Suite 312',3,1,'2022-01-04 21:11:21','2022-01-04 21:11:21','21171'),(6,'Dr. Rosella Ullrich III','jprohaska@example.com','+14583488170','LA','North Carolina','South Norwood','1953 Kendrick Isle Suite 501',4,1,'2022-01-04 21:11:22','2022-01-04 21:11:22','16137-6010'),(7,'Kristy Prosacco','jarod98@example.com','+17177314095','AZ','Vermont','East Horacioberg','1840 Charlie Hill',5,1,'2022-01-04 21:11:22','2022-01-04 21:11:22','10087-7221'),(8,'Fae Jenkins','nswaniawski@example.org','+14239998533','BE','Massachusetts','Abnerberg','654 Osinski Gateway',6,1,'2022-01-04 21:11:22','2022-01-04 21:11:22','19276'),(9,'Deonte Borer','suzanne52@example.org','+12408694956','HR','Florida','Port Vivianneton','290 Edward Ports',7,1,'2022-01-04 21:11:22','2022-01-04 21:11:22','16609-5180'),(10,'Prof. Leland Kassulke','bechtelar.ulises@example.com','+12814430895','SA','New Mexico','Kennediville','839 Porter Harbor',8,1,'2022-01-04 21:11:22','2022-01-04 21:11:22','29817'),(11,'Silas Heathcote','stanton.morar@example.net','+14696131527','MT','Kentucky','Germanmouth','4218 Casper Track Apt. 891',9,1,'2022-01-04 21:11:22','2022-01-04 21:11:22','36205-0307'),(12,'Mr. Monroe Rutherford','hhettinger@example.org','+12813173826','GD','Minnesota','East Nasirville','92787 Issac Route Suite 624',10,1,'2022-01-04 21:11:22','2022-01-04 21:11:22','81307-0062');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Ezequiel Fritsch','john.smith@botble.com','$2y$10$1dSpZSKdeHquzbBk5aqU/uDZZN1LOgGceOkxCM81A9NT5ucQlSYvy','customers/6.jpg',NULL,'+13469323450',NULL,'2022-01-04 21:11:21','2022-01-04 21:11:21','2022-01-05 04:11:21',NULL,'activated'),(2,'Adele Padberg','customer@botble.com','$2y$10$l1WKJA1j7da1A2Dtjybj/.QUvS/mYZB2Tl0FX/8T8Cuw.eOb1XZ0W','customers/3.jpg',NULL,'+18206083055',NULL,'2022-01-04 21:11:21','2022-01-04 21:11:21','2022-01-05 04:11:21',NULL,'activated'),(3,'Mr. Florian Hyatt V','cschumm@example.net','$2y$10$xHapCEQWk9hW4ru1cCaIAustjusFWlhiuxpe3Gyrjy22kc9CugHRS','customers/1.jpg',NULL,'+14846400059',NULL,'2022-01-04 21:11:21','2022-01-04 21:11:21','2022-01-05 04:11:21',NULL,'activated'),(4,'Dr. Rosella Ullrich III','jprohaska@example.com','$2y$10$8HWz5iSDzj/7SRL8CJRd1u2JwIbJxXqdpT4F2BJfftnR.fh0hkcdG','customers/2.jpg',NULL,'+15152104274',NULL,'2022-01-04 21:11:22','2022-01-04 21:11:22','2022-01-05 04:11:22',NULL,'activated'),(5,'Kristy Prosacco','jarod98@example.com','$2y$10$aWa8ep2n2rIA6JQw5Y2RweVOUKd1/bjPm6d5PQjvs6c.EYPF0VxB6','customers/3.jpg',NULL,'+13412768896',NULL,'2022-01-04 21:11:22','2022-01-04 21:11:22','2022-01-05 04:11:22',NULL,'activated'),(6,'Fae Jenkins','nswaniawski@example.org','$2y$10$y.1JicSGXxllQy/t6EZMsO2JPCpgVtpfc4j2GNZzcK5Z27J.YJPVy','customers/4.jpg',NULL,'+15419149313',NULL,'2022-01-04 21:11:22','2022-01-04 21:11:22','2022-01-05 04:11:22',NULL,'activated'),(7,'Deonte Borer','suzanne52@example.org','$2y$10$7DNLSANvcdmMapWFovrlDe5CdCfHAmXBvzMvSABoQ3kt4aw8aJlmK','customers/5.jpg',NULL,'+16894987646',NULL,'2022-01-04 21:11:22','2022-01-04 21:11:22','2022-01-05 04:11:22',NULL,'activated'),(8,'Prof. Leland Kassulke','bechtelar.ulises@example.com','$2y$10$lNy2v5EHeAK6czPY635nJejWeXXOgHiC8cNcXg0LFJ2kVZgZlqjIC','customers/6.jpg',NULL,'+17859582262',NULL,'2022-01-04 21:11:22','2022-01-04 21:11:22','2022-01-05 04:11:22',NULL,'activated'),(9,'Silas Heathcote','stanton.morar@example.net','$2y$10$VimLQaPrunO54D1k0c/2x.64DZ9qAOHOmGzDFSvgHtDOeCGKq4TFi','customers/7.jpg',NULL,'+16192166301',NULL,'2022-01-04 21:11:22','2022-01-04 21:11:22','2022-01-05 04:11:22',NULL,'activated'),(10,'Mr. Monroe Rutherford','hhettinger@example.org','$2y$10$I1jm5sFFXxabHVFkq6u5MOqLJ/KweBilCIzjaWrs91yxYC4Pjg.Hu','customers/8.jpg',NULL,'+17406977388',NULL,'2022-01-04 21:11:22','2022-01-04 21:11:22','2022-01-05 04:11:22',NULL,'activated');
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` int unsigned NOT NULL,
  `customer_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` int unsigned NOT NULL,
  `product_collection_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,8,76.8471,6,4),(2,24,34.255,11,2);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Deal of the Day.','2022-06-09 00:00:00','published','2022-05-01 01:30:42','2022-05-01 01:30:42'),(2,'Gadgets & Accessories','2022-05-27 00:00:00','published','2022-05-01 01:30:43','2022-05-01 01:30:43');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
INSERT INTO `ec_flash_sales_translations` VALUES ('vi',1,'Khuyến mãi trong ngày.'),('vi',2,'Tiện ích & Phụ kiện');
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int unsigned NOT NULL,
  `zip_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Prof. Leland Kassulke','+12814430895','bechtelar.ulises@example.com','SA','New Mexico','Kennediville','839 Porter Harbor',1,'29817'),(2,'Kristy Prosacco','+17177314095','jarod98@example.com','AZ','Vermont','East Horacioberg','1840 Charlie Hill',2,'10087-7221'),(3,'Mr. Florian Hyatt V','+15034310789','cschumm@example.net','MP','Alaska','South Keven','562 Douglas Stravenue Suite 312',3,'21171'),(4,'Ezequiel Fritsch','+17705307485','john.smith@botble.com','TL','South Dakota','Schillerbury','18148 Wilderman Divide',4,'81559'),(5,'Silas Heathcote','+14696131527','stanton.morar@example.net','MT','Kentucky','Germanmouth','4218 Casper Track Apt. 891',5,'36205-0307'),(6,'Silas Heathcote','+14696131527','stanton.morar@example.net','MT','Kentucky','Germanmouth','4218 Casper Track Apt. 891',6,'36205-0307'),(7,'Mr. Monroe Rutherford','+12813173826','hhettinger@example.org','GD','Minnesota','East Nasirville','92787 Issac Route Suite 624',7,'81307-0062'),(8,'Kristy Prosacco','+17177314095','jarod98@example.com','AZ','Vermont','East Horacioberg','1840 Charlie Hill',8,'10087-7221'),(9,'Silas Heathcote','+14696131527','stanton.morar@example.net','MT','Kentucky','Germanmouth','4218 Casper Track Apt. 891',9,'36205-0307'),(10,'Fae Jenkins','+14239998533','nswaniawski@example.org','BE','Massachusetts','Abnerberg','654 Osinski Gateway',10,'19276'),(11,'Prof. Leland Kassulke','+12814430895','bechtelar.ulises@example.com','SA','New Mexico','Kennediville','839 Porter Harbor',11,'29817'),(12,'Adele Padberg','+15136151552','customer@botble.com','KH','Connecticut','Vilmashire','51935 Friesen Isle',12,'24732-4523'),(13,'Fae Jenkins','+14239998533','nswaniawski@example.org','BE','Massachusetts','Abnerberg','654 Osinski Gateway',13,'19276'),(14,'Dr. Rosella Ullrich III','+14583488170','jprohaska@example.com','LA','North Carolina','South Norwood','1953 Kendrick Isle Suite 501',14,'16137-6010'),(15,'Silas Heathcote','+14696131527','stanton.morar@example.net','MT','Kentucky','Germanmouth','4218 Casper Track Apt. 891',15,'36205-0307'),(16,'Adele Padberg','+15136151552','customer@botble.com','KH','Connecticut','Vilmashire','51935 Friesen Isle',16,'24732-4523'),(17,'Mr. Florian Hyatt V','+15034310789','cschumm@example.net','MP','Alaska','South Keven','562 Douglas Stravenue Suite 312',17,'21171'),(18,'Kristy Prosacco','+17177314095','jarod98@example.com','AZ','Vermont','East Horacioberg','1840 Charlie Hill',18,'10087-7221'),(19,'Mr. Florian Hyatt V','+15034310789','cschumm@example.net','MP','Alaska','South Keven','562 Douglas Stravenue Suite 312',19,'21171'),(20,'Deonte Borer','+12408694956','suzanne52@example.org','HR','Florida','Port Vivianneton','290 Edward Ports',20,'16609-5180');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `order_id` int unsigned NOT NULL,
  `extras` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2022-04-17 17:30:44','2022-04-17 17:30:44'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2022-04-17 17:30:44','2022-04-17 17:30:44'),(3,'confirm_payment','Payment was confirmed (amount $2,406.10) by %user_name%',0,1,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(4,'create_shipment','Created shipment for order',0,1,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(5,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2022-04-19 23:30:44','2022-04-19 23:30:44'),(6,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2022-04-19 23:30:44','2022-04-19 23:30:44'),(7,'confirm_payment','Payment was confirmed (amount $530.70) by %user_name%',0,2,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(8,'create_shipment','Created shipment for order',0,2,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(9,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,2,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(10,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2022-04-28 01:30:44','2022-04-28 01:30:44'),(11,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2022-04-28 01:30:44','2022-04-28 01:30:44'),(12,'confirm_payment','Payment was confirmed (amount $1,073.50) by %user_name%',0,3,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(13,'create_shipment','Created shipment for order',0,3,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(14,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,3,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(15,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2022-04-28 05:30:44','2022-04-28 05:30:44'),(16,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2022-04-28 05:30:44','2022-04-28 05:30:44'),(17,'confirm_payment','Payment was confirmed (amount $1,026.90) by %user_name%',0,4,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(18,'create_shipment','Created shipment for order',0,4,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(19,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,4,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(20,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2022-04-21 17:30:44','2022-04-21 17:30:44'),(21,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2022-04-21 17:30:44','2022-04-21 17:30:44'),(22,'confirm_payment','Payment was confirmed (amount $1,740.70) by %user_name%',0,5,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(23,'create_shipment','Created shipment for order',0,5,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(24,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,5,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(25,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2022-04-22 07:30:44','2022-04-22 07:30:44'),(26,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2022-04-22 07:30:44','2022-04-22 07:30:44'),(27,'confirm_payment','Payment was confirmed (amount $603.00) by %user_name%',0,6,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(28,'create_shipment','Created shipment for order',0,6,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(29,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,6,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(30,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2022-04-28 17:30:44','2022-04-28 17:30:44'),(31,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2022-04-28 17:30:44','2022-04-28 17:30:44'),(32,'confirm_payment','Payment was confirmed (amount $863.60) by %user_name%',0,7,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(33,'create_shipment','Created shipment for order',0,7,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(34,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,7,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(35,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2022-04-26 17:30:44','2022-04-26 17:30:44'),(36,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2022-04-26 17:30:44','2022-04-26 17:30:44'),(37,'confirm_payment','Payment was confirmed (amount $294.00) by %user_name%',0,8,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(38,'create_shipment','Created shipment for order',0,8,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(39,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2022-04-24 01:30:44','2022-04-24 01:30:44'),(40,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2022-04-24 01:30:44','2022-04-24 01:30:44'),(41,'create_shipment','Created shipment for order',0,9,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(42,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,9,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(43,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2022-04-26 11:30:44','2022-04-26 11:30:44'),(44,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2022-04-26 11:30:44','2022-04-26 11:30:44'),(45,'confirm_payment','Payment was confirmed (amount $815.00) by %user_name%',0,10,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(46,'create_shipment','Created shipment for order',0,10,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(47,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2022-04-25 05:30:44','2022-04-25 05:30:44'),(48,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2022-04-25 05:30:44','2022-04-25 05:30:44'),(49,'confirm_payment','Payment was confirmed (amount $2,207.20) by %user_name%',0,11,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(50,'create_shipment','Created shipment for order',0,11,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(51,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2022-04-28 19:30:44','2022-04-28 19:30:44'),(52,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2022-04-28 19:30:44','2022-04-28 19:30:44'),(53,'confirm_payment','Payment was confirmed (amount $773.30) by %user_name%',0,12,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(54,'create_shipment','Created shipment for order',0,12,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(55,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,12,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(56,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2022-04-24 09:30:44','2022-04-24 09:30:44'),(57,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2022-04-24 09:30:44','2022-04-24 09:30:44'),(58,'create_shipment','Created shipment for order',0,13,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(59,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,13,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(60,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2022-04-27 13:30:44','2022-04-27 13:30:44'),(61,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2022-04-27 13:30:44','2022-04-27 13:30:44'),(62,'confirm_payment','Payment was confirmed (amount $1,662.50) by %user_name%',0,14,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(63,'create_shipment','Created shipment for order',0,14,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(64,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2022-04-27 01:30:44','2022-04-27 01:30:44'),(65,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2022-04-27 01:30:44','2022-04-27 01:30:44'),(66,'confirm_payment','Payment was confirmed (amount $647.10) by %user_name%',0,15,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(67,'create_shipment','Created shipment for order',0,15,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(68,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2022-04-30 15:30:44','2022-04-30 15:30:44'),(69,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2022-04-30 15:30:44','2022-04-30 15:30:44'),(70,'confirm_payment','Payment was confirmed (amount $394.80) by %user_name%',0,16,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(71,'create_shipment','Created shipment for order',0,16,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(72,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,16,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(73,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2022-04-27 17:30:44','2022-04-27 17:30:44'),(74,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2022-04-27 17:30:44','2022-04-27 17:30:44'),(75,'confirm_payment','Payment was confirmed (amount $1,260.30) by %user_name%',0,17,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(76,'create_shipment','Created shipment for order',0,17,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(77,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,17,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(78,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2022-04-29 07:30:44','2022-04-29 07:30:44'),(79,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2022-04-29 07:30:44','2022-04-29 07:30:44'),(80,'create_shipment','Created shipment for order',0,18,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(81,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,18,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(82,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2022-04-29 13:30:44','2022-04-29 13:30:44'),(83,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2022-04-29 13:30:44','2022-04-29 13:30:44'),(84,'confirm_payment','Payment was confirmed (amount $1,014.30) by %user_name%',0,19,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(85,'create_shipment','Created shipment for order',0,19,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(86,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,19,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(87,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2022-04-30 13:30:44','2022-04-30 13:30:44'),(88,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2022-04-30 13:30:44','2022-04-30 13:30:44'),(89,'confirm_payment','Payment was confirmed (amount $1,044.60) by %user_name%',0,20,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(90,'create_shipment','Created shipment for order',0,20,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(91,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,20,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(92,'update_status','Order confirmed by %user_name%',0,2,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(93,'update_status','Order confirmed by %user_name%',0,3,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(94,'update_status','Order confirmed by %user_name%',0,4,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(95,'update_status','Order confirmed by %user_name%',0,5,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(96,'update_status','Order confirmed by %user_name%',0,6,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(97,'update_status','Order confirmed by %user_name%',0,7,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(98,'update_status','Order confirmed by %user_name%',0,12,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(99,'update_status','Order confirmed by %user_name%',0,16,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(100,'update_status','Order confirmed by %user_name%',0,17,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(101,'update_status','Order confirmed by %user_name%',0,19,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(102,'update_status','Order confirmed by %user_name%',0,20,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `product_id` int unsigned DEFAULT NULL,
  `product_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,3,493.00,49.30,'[]',26,'Smart Home Speaker',1887.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(2,1,1,337.00,33.70,'[]',29,'Headphone Ultra Bass',710.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(3,1,3,121.00,12.10,'[]',58,'Macbook Pro 13 inch',2274.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(4,1,1,120.00,12.00,'[]',83,'Black Glasses',763.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(5,2,2,127.00,12.70,'[]',44,'Leather Watch Band',1750.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(6,2,1,130.00,13.00,'[]',71,'Cool Smart Watches',698.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(7,2,1,110.00,11.00,'[]',74,'Black Smart Watches',634.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(8,3,2,337.00,33.70,'[]',29,'Headphone Ultra Bass',1420.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(9,3,3,118.00,11.80,'[]',80,'Historic Alarm Clock',1944.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(10,4,1,337.00,33.70,'[]',31,'Headphone Ultra Bass',710.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(11,4,3,127.00,12.70,'[]',44,'Leather Watch Band',2625.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(12,4,2,125.00,12.50,'[]',66,'Hand playstation',1480.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(13,5,2,493.00,49.30,'[]',25,'Smart Home Speaker',1258.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(14,5,1,337.00,33.70,'[]',29,'Headphone Ultra Bass',710.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(15,5,1,79.00,7.90,'[]',33,'Chikie - Bluetooth Speaker',707.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(16,5,2,118.00,11.80,'[]',80,'Historic Alarm Clock',1296.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(17,6,2,110.00,11.00,'[]',73,'Black Smart Watches',1268.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(18,6,3,120.00,12.00,'[]',82,'Black Glasses',2289.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(19,7,1,79.00,7.90,'[]',35,'Chikie - Bluetooth Speaker',707.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(20,7,3,126.00,12.60,'[]',52,'Apple Watch Serial 7',1878.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(21,7,2,121.00,12.10,'[]',58,'Macbook Pro 13 inch',1516.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(22,7,1,120.00,12.00,'[]',68,'Apple Airpods Serial 3',513.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(23,8,1,42.00,4.20,'[]',38,'Camera Hikvision HK-35VS8',657.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(24,8,2,118.00,11.80,'[]',80,'Historic Alarm Clock',1296.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(25,9,3,493.00,49.30,'[]',28,'Smart Home Speaker',1887.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(26,9,1,127.00,12.70,'[]',44,'Leather Watch Band',875.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(27,9,1,237.00,23.70,'[]',48,'Macbook Air 12 inch',798.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(28,9,1,113.00,11.30,'[]',87,'Phillips Mouse',722.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(29,10,1,59.00,5.90,'[]',41,'Camera Samsung SS-24',702.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(30,10,2,127.00,12.70,'[]',43,'Leather Watch Band',1750.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(31,10,1,121.00,12.10,'[]',46,'Apple iPhone 13 Plus',614.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(32,10,3,113.00,11.30,'[]',86,'Phillips Mouse',2166.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(33,11,3,337.00,33.70,'[]',30,'Headphone Ultra Bass',2130.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(34,11,3,375.00,37.50,'[]',32,'Boxed - Bluetooth Headphone',2664.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(35,12,1,493.00,49.30,'[]',25,'Smart Home Speaker',629.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(36,12,2,110.00,11.00,'[]',73,'Black Smart Watches',1268.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(37,13,2,127.00,12.70,'[]',43,'Leather Watch Band',1750.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(38,13,2,237.00,23.70,'[]',51,'Macbook Air 12 inch',1596.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(39,13,2,122.00,12.20,'[]',75,'Leather Watch Band Serial 3',1156.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(40,14,3,493.00,49.30,'[]',27,'Smart Home Speaker',1887.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(41,14,1,122.00,12.20,'[]',77,'Leather Watch Band Serial 3',578.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(42,15,1,121.00,12.10,'[]',56,'Macbook Pro 13 inch',758.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(43,15,1,129.00,12.90,'[]',60,'Apple Keyboard',679.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(44,15,2,118.00,11.80,'[]',80,'Historic Alarm Clock',1296.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(45,15,1,113.00,11.30,'[]',87,'Phillips Mouse',722.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(46,16,1,126.00,12.60,'[]',55,'Apple Watch Serial 7',626.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(47,16,2,122.00,12.20,'[]',77,'Leather Watch Band Serial 3',1156.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(48,17,2,237.00,23.70,'[]',49,'Macbook Air 12 inch',1596.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(49,17,3,126.00,12.60,'[]',52,'Apple Watch Serial 7',1878.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(50,17,3,120.00,12.00,'[]',83,'Black Glasses',2289.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(51,18,1,237.00,23.70,'[]',49,'Macbook Air 12 inch',798.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(52,18,3,110.00,11.00,'[]',74,'Black Smart Watches',1902.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(53,19,2,127.00,12.70,'[]',44,'Leather Watch Band',1750.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(54,19,2,116.00,11.60,'[]',79,'Macbook Pro 2015 13 inch',1412.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(55,19,2,120.00,12.00,'[]',83,'Black Glasses',1526.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(56,19,2,120.00,12.00,'[]',85,'Black Glasses',1526.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(57,20,1,337.00,33.70,'[]',30,'Headphone Ultra Bass',710.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(58,20,2,129.00,12.90,'[]',59,'Apple Keyboard',1358.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(59,20,3,130.00,13.00,'[]',89,'Gaming Keyboard',2232.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44');
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `shipping_option` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '1',
  `token` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,8,'1','default','pending',2406.10,107.10,0.00,NULL,NULL,0.00,2299.00,1,NULL,1,'JH0cohsOGNto6Z1G4X4nqDG66bD8g',1,'2022-04-17 17:30:44','2022-05-01 01:30:44'),(2,5,'1','default','completed',530.70,36.70,0.00,NULL,NULL,0.00,494.00,1,NULL,1,'36c9O8FciCPaVXpWsTeisPdTbdIcc',2,'2022-04-19 23:30:44','2022-05-01 01:30:44'),(3,3,'1','default','completed',1073.50,45.50,0.00,NULL,NULL,0.00,1028.00,1,NULL,1,'eIcPUN0P4abDQdHzOzwlgljhZ7baf',3,'2022-04-28 01:30:44','2022-05-01 01:30:44'),(4,1,'1','default','completed',1026.90,58.90,0.00,NULL,NULL,0.00,968.00,1,NULL,1,'HDwfp53Ww8920hd8GDlYXl0YeegVe',4,'2022-04-28 05:30:44','2022-05-01 01:30:44'),(5,9,'1','default','completed',1740.70,102.70,0.00,NULL,NULL,0.00,1638.00,1,NULL,1,'PsLWZApCEAsPnTFPNcNVasBBUdsBQ',5,'2022-04-21 17:30:44','2022-05-01 01:30:44'),(6,9,'1','default','completed',603.00,23.00,0.00,NULL,NULL,0.00,580.00,1,NULL,1,'sevWzewBnAd0KuWiEOv1LwYz13FOz',6,'2022-04-22 07:30:44','2022-05-01 01:30:44'),(7,10,'1','default','completed',863.60,44.60,0.00,NULL,NULL,0.00,819.00,1,NULL,1,'DszU1TbdsKDhxHnD0hfpN0N2s6vGl',7,'2022-04-28 17:30:44','2022-05-01 01:30:44'),(8,5,'1','default','pending',294.00,16.00,0.00,NULL,NULL,0.00,278.00,1,NULL,1,'aFOy2mfC54Z6Fwkcd625M7WjJC1zw',8,'2022-04-26 17:30:44','2022-05-01 01:30:44'),(9,9,'1','default','completed',2053.00,97.00,0.00,NULL,NULL,0.00,1956.00,1,NULL,1,'9A66cVy4pma1YVfWe61LAuO9EYW2O',9,'2022-04-24 01:30:44','2022-05-01 01:30:44'),(10,6,'1','default','pending',815.00,42.00,0.00,NULL,NULL,0.00,773.00,1,NULL,1,'GveYayOu8nzHgbevb4YfLbwOilbzz',10,'2022-04-26 11:30:44','2022-05-01 01:30:44'),(11,8,'1','default','pending',2207.20,71.20,0.00,NULL,NULL,0.00,2136.00,1,NULL,1,'LTpZd7Jyjh9gABJZDt9ehcwKpWr9z',11,'2022-04-25 05:30:44','2022-05-01 01:30:44'),(12,2,'1','default','completed',773.30,60.30,0.00,NULL,NULL,0.00,713.00,1,NULL,1,'WW7ylmM1beYKl6nUb9SQIcHIrOnJL',12,'2022-04-28 19:30:44','2022-05-01 01:30:44'),(13,6,'1','default','completed',1020.60,48.60,0.00,NULL,NULL,0.00,972.00,1,NULL,1,'mQwis7lyJODiMu9ldE5ftV9jIqm2O',13,'2022-04-24 09:30:44','2022-05-01 01:30:44'),(14,4,'1','default','pending',1662.50,61.50,0.00,NULL,NULL,0.00,1601.00,1,NULL,1,'ws4tmAAWoqiK0YG9s0G0xS04XT38x',14,'2022-04-27 13:30:44','2022-05-01 01:30:44'),(15,9,'1','default','pending',647.10,48.10,0.00,NULL,NULL,0.00,599.00,1,NULL,1,'8mjCM6OeTHWleYNRSSV0zTBWiN7ZG',15,'2022-04-27 01:30:44','2022-05-01 01:30:44'),(16,2,'1','default','completed',394.80,24.80,0.00,NULL,NULL,0.00,370.00,1,NULL,1,'lg7cPB34IyN3d0L80v8n9ZTnEsM8Y',16,'2022-04-30 15:30:44','2022-05-01 01:30:44'),(17,3,'1','default','completed',1260.30,48.30,0.00,NULL,NULL,0.00,1212.00,1,NULL,1,'XghEBYmHO35HuUNGkgRTbWiZxMlMa',17,'2022-04-27 17:30:44','2022-05-01 01:30:44'),(18,5,'1','default','completed',601.70,34.70,0.00,NULL,NULL,0.00,567.00,1,NULL,1,'i3eP5pkSYDaoewNnT8aGJn6duwkTo',18,'2022-04-29 07:30:44','2022-05-01 01:30:44'),(19,3,'1','default','completed',1014.30,48.30,0.00,NULL,NULL,0.00,966.00,1,NULL,1,'khbdn5vuvBTGyPOu5pEs5TvHr5mqU',19,'2022-04-29 13:30:44','2022-05-01 01:30:44'),(20,7,'1','default','completed',1044.60,59.60,0.00,NULL,NULL,0.00,985.00,1,NULL,1,'WJHqF6LIohZ2CUBfQEHeCqkYMAcEc',20,'2022-04-30 13:30:44','2022-05-01 01:30:44');
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2022-05-01 01:30:43','2022-05-01 01:30:43',0),(2,'Size','size','text',1,1,1,'published',1,'2022-05-01 01:30:43','2022-05-01 01:30:43',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` int NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets_translations` VALUES ('vi',1,'Màu sắc'),('vi',2,'Kích thước');
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int unsigned NOT NULL,
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'published','2022-05-01 01:30:43','2022-05-01 01:30:43'),(2,1,'Blue','blue','#333333',NULL,0,2,'published','2022-05-01 01:30:43','2022-05-01 01:30:43'),(3,1,'Red','red','#DA323F',NULL,0,3,'published','2022-05-01 01:30:43','2022-05-01 01:30:43'),(4,1,'Black','back','#2F366C',NULL,0,4,'published','2022-05-01 01:30:43','2022-05-01 01:30:43'),(5,1,'Brown','brown','#87554B',NULL,0,5,'published','2022-05-01 01:30:43','2022-05-01 01:30:43'),(6,2,'S','s',NULL,NULL,1,1,'published','2022-05-01 01:30:43','2022-05-01 01:30:43'),(7,2,'M','m',NULL,NULL,0,2,'published','2022-05-01 01:30:43','2022-05-01 01:30:43'),(8,2,'L','l',NULL,NULL,0,3,'published','2022-05-01 01:30:43','2022-05-01 01:30:43'),(9,2,'XL','xl',NULL,NULL,0,4,'published','2022-05-01 01:30:43','2022-05-01 01:30:43'),(10,2,'XXL','xxl',NULL,NULL,0,5,'published','2022-05-01 01:30:43','2022-05-01 01:30:43');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` int NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attributes_translations` VALUES ('vi',1,'Xanh lá cây'),('vi',2,'Xanh da trời'),('vi',3,'Đỏ'),('vi',4,'Đen'),('vi',5,'Nâu'),('vi',6,'S'),('vi',7,'M'),('vi',8,'L'),('vi',9,'XL'),('vi',10,'XXL');
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned DEFAULT '0',
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Hot Promotions',0,NULL,'published',0,NULL,0,'2022-01-04 21:10:47','2022-01-04 21:10:47'),(2,'Electronics',0,NULL,'published',1,'product-categories/1.jpg',1,'2022-01-04 21:10:47','2022-01-04 21:10:47'),(3,'Home Audio & Theaters',2,NULL,'published',0,NULL,0,'2022-01-04 21:10:47','2022-01-04 21:10:47'),(4,'TV & Videos',2,NULL,'published',1,NULL,0,'2022-01-04 21:10:47','2022-01-04 21:10:47'),(5,'Camera, Photos & Videos',2,NULL,'published',2,NULL,0,'2022-01-04 21:10:47','2022-01-04 21:10:47'),(6,'Cellphones & Accessories',2,NULL,'published',3,NULL,0,'2022-01-04 21:10:47','2022-01-04 21:10:47'),(7,'Headphones',2,NULL,'published',4,NULL,0,'2022-01-04 21:10:47','2022-01-04 21:10:47'),(8,'Videos games',2,NULL,'published',5,NULL,0,'2022-01-04 21:10:47','2022-01-04 21:10:47'),(9,'Wireless Speakers',2,NULL,'published',6,NULL,0,'2022-01-04 21:10:47','2022-01-04 21:10:47'),(10,'Office Electronic',2,NULL,'published',7,NULL,0,'2022-01-04 21:10:47','2022-01-04 21:10:47'),(11,'Clothing',0,NULL,'published',2,'product-categories/2.jpg',1,'2022-01-04 21:10:47','2022-01-04 21:10:47'),(12,'Computers',0,NULL,'published',3,'product-categories/3.jpg',1,'2022-01-04 21:10:47','2022-01-04 21:10:47'),(13,'Computer & Tablets',12,NULL,'published',0,NULL,0,'2022-01-04 21:10:47','2022-01-04 21:10:47'),(14,'Laptop',12,NULL,'published',1,NULL,0,'2022-01-04 21:10:47','2022-01-04 21:10:47'),(15,'Monitors',12,NULL,'published',2,NULL,0,'2022-01-04 21:10:47','2022-01-04 21:10:47'),(16,'Computer Components',12,NULL,'published',3,NULL,0,'2022-01-04 21:10:47','2022-01-04 21:10:47'),(17,'Home & Kitchen',0,NULL,'published',4,'product-categories/4.jpg',1,'2022-01-04 21:10:47','2022-01-04 21:10:47'),(18,'Health & Beauty',0,NULL,'published',5,'product-categories/5.jpg',1,'2022-01-04 21:10:47','2022-01-04 21:10:47'),(19,'Jewelry & Watch',0,NULL,'published',6,'product-categories/6.jpg',1,'2022-01-04 21:10:47','2022-01-04 21:10:47'),(20,'Technology Toys',0,NULL,'published',7,'product-categories/7.jpg',1,'2022-01-04 21:10:47','2022-01-04 21:10:47'),(21,'Drive & Storages',20,NULL,'published',0,NULL,0,'2022-01-04 21:10:47','2022-01-04 21:10:47'),(22,'Gaming Laptop',20,NULL,'published',1,NULL,0,'2022-01-04 21:10:47','2022-01-04 21:10:47'),(23,'Security & Protection',20,NULL,'published',2,NULL,0,'2022-01-04 21:10:47','2022-01-04 21:10:47'),(24,'Accessories',20,NULL,'published',3,NULL,0,'2022-01-04 21:10:47','2022-01-04 21:10:47'),(25,'Phones',0,NULL,'published',8,'product-categories/8.jpg',1,'2022-01-04 21:10:47','2022-01-04 21:10:47'),(26,'Babies & Moms',0,NULL,'published',9,NULL,0,'2022-01-04 21:10:47','2022-01-04 21:10:47'),(27,'Sport & Outdoor',0,NULL,'published',10,NULL,0,'2022-01-04 21:10:47','2022-01-04 21:10:47'),(28,'Books & Office',0,NULL,'published',11,NULL,0,'2022-01-04 21:10:47','2022-01-04 21:10:47'),(29,'Cars & Motorcycles',0,NULL,'published',12,NULL,0,'2022-01-04 21:10:47','2022-01-04 21:10:47'),(30,'Home Improvements',0,NULL,'published',13,NULL,0,'2022-01-04 21:10:47','2022-01-04 21:10:47');
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
INSERT INTO `ec_product_categories_translations` VALUES ('vi',1,'Khuyến mãi nổi bật',NULL),('vi',2,'Điện tử',NULL),('vi',3,'Âm thanh và hình ảnh',NULL),('vi',4,'TV & Videos',NULL),('vi',5,'Máy ảnh, Ảnh & Videos',NULL),('vi',6,'Điện thoại & Phụ kiện',NULL),('vi',7,'Tai nghe',NULL),('vi',8,'Trò chơi',NULL),('vi',9,'Tai nghe không dây',NULL),('vi',10,'Điện tử văn phòng',NULL),('vi',11,'Quần áo',NULL),('vi',12,'Máy tính',NULL),('vi',13,'Máy tính và máy tính bảng',NULL),('vi',14,'Máy vi tính',NULL),('vi',15,'Màn hình',NULL),('vi',16,'Thiết bị máy tính',NULL),('vi',17,'Đồ dùng nhà bếp',NULL),('vi',18,'Sức khỏe & làm đẹp',NULL),('vi',19,'Đồng hồ & trang sức',NULL),('vi',20,'Đồ chơi công nghệ',NULL),('vi',21,'Thiết bị lưu trữ',NULL),('vi',22,'Máy tính chơi game',NULL),('vi',23,'Bảo mật',NULL),('vi',24,'Phụ kiện',NULL),('vi',25,'Điện thoại',NULL),('vi',26,'Mẹ và bé',NULL),('vi',27,'Thể thao & ngoài trời',NULL),('vi',28,'Sách & Văn phòng',NULL),('vi',29,'Ôto & Xe máy',NULL),('vi',30,'Thiết bị gia đình',NULL);
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,21,1),(2,17,2),(3,30,3),(4,26,4),(5,24,5),(6,29,6),(7,13,7),(8,16,8),(9,37,9),(10,22,10),(11,2,11),(12,21,12),(13,16,13),(14,14,14),(15,19,15),(16,11,16),(17,27,17),(18,3,18),(19,10,19),(20,22,20),(21,24,21),(22,25,22),(23,4,23),(24,21,24);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_collection_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,3,1),(2,3,2),(3,2,3),(4,2,4),(5,2,5),(6,1,6),(7,3,7),(8,1,8),(9,3,9),(10,1,10),(11,2,11),(12,3,12),(13,1,13),(14,3,14),(15,1,15),(16,1,16),(17,2,17),(18,3,18),(19,1,19),(20,1,20),(21,2,21),(22,1,22),(23,3,23),(24,2,24);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2022-01-04 21:10:47','2022-01-04 21:10:47',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2022-01-04 21:10:47','2022-01-04 21:10:47',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2022-01-04 21:10:47','2022-01-04 21:10:47',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
INSERT INTO `ec_product_collections_translations` VALUES ('vi',1,'Hàng mới về',NULL),('vi',2,'Bán chạy nhất',NULL),('vi',3,'Khuyến mãi đặc biệt',NULL);
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,1,22),(2,1,2),(3,1,18),(4,1,16),(5,2,3),(6,2,14),(7,2,12),(8,2,1),(9,3,5),(10,3,24),(11,3,19),(12,3,6),(13,4,15),(14,4,18),(15,4,24),(16,4,21),(17,5,24),(18,5,6),(19,5,11),(20,6,20),(21,6,12),(22,6,16),(23,6,1),(24,7,20),(25,7,11),(26,7,22),(27,7,13),(28,8,11),(29,8,6),(30,8,19),(31,9,20),(32,9,2),(33,9,23),(34,9,21),(35,10,1),(36,10,15),(37,10,5),(38,10,24),(39,11,16),(40,11,22),(41,11,15),(42,11,19),(43,12,2),(44,12,8),(45,12,21),(46,13,1),(47,13,9),(48,13,7),(49,13,17),(50,14,16),(51,14,13),(52,14,1),(53,15,8),(54,15,14),(55,15,12),(56,16,21),(57,16,5),(58,16,20),(59,16,12),(60,17,13),(61,17,19),(62,17,1),(63,17,16),(64,18,14),(65,18,13),(66,18,4),(67,18,15),(68,19,5),(69,19,9),(70,19,1),(71,20,1),(72,20,19),(73,20,3),(74,20,18),(75,21,4),(76,21,16),(77,21,14),(78,21,15),(79,22,15),(80,22,21),(81,22,9),(82,22,1),(83,23,12),(84,23,6),(85,23,1),(86,24,14),(87,24,12),(88,24,2),(89,24,21);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,7),(1,14),(1,21);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#ec2434','published','2022-01-04 21:10:47','2022-01-04 21:10:47'),(2,'New','#00c9a7','published','2022-01-04 21:10:47','2022-01-04 21:10:47'),(3,'Sale','#fe9931','published','2022-01-04 21:10:47','2022-01-04 21:10:47');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
INSERT INTO `ec_product_labels_translations` VALUES ('vi',1,'Nổi bật',NULL),('vi',2,'Mới',NULL),('vi',3,'Giảm giá',NULL);
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` int unsigned NOT NULL,
  `tag_id` int unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,2),(1,5),(1,6),(2,1),(2,4),(2,5),(3,3),(3,5),(4,2),(4,5),(5,3),(5,5),(5,6),(6,1),(6,2),(6,3),(7,3),(7,4),(8,2),(8,4),(9,1),(9,4),(10,2),(10,3),(10,4),(11,3),(11,4),(12,1),(12,2),(12,4),(13,1),(13,2),(13,6),(14,1),(14,5),(14,6),(15,3),(15,5),(16,1),(16,4),(16,6),(17,2),(17,3),(17,6),(18,5),(18,6),(19,2),(20,1),(20,2),(20,3),(21,1),(21,2),(21,4),(22,2),(22,4),(22,5),(23,2),(23,3),(24,3),(24,4),(24,6);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Wallet',NULL,'published','2022-01-04 21:10:47','2022-01-04 21:10:47'),(2,'Bags',NULL,'published','2022-01-04 21:10:47','2022-01-04 21:10:47'),(3,'Shoes',NULL,'published','2022-01-04 21:10:47','2022-01-04 21:10:47'),(4,'Clothes',NULL,'published','2022-01-04 21:10:47','2022-01-04 21:10:47'),(5,'Hand bag',NULL,'published','2022-01-04 21:10:47','2022-01-04 21:10:47');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` int unsigned NOT NULL,
  `variation_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (1,5,1),(2,7,1),(3,3,2),(4,9,2),(5,5,3),(6,8,3),(7,5,4),(8,8,4),(9,5,5),(10,6,5),(11,5,6),(12,7,6),(13,2,7),(14,6,7),(15,3,8),(16,8,8),(17,2,9),(18,8,9),(19,2,10),(20,10,10),(21,3,11),(22,10,11),(23,4,12),(24,7,12),(25,4,13),(26,9,13),(27,2,14),(28,6,14),(29,1,15),(30,7,15),(31,5,16),(32,7,16),(33,3,17),(34,9,17),(35,2,18),(36,10,18),(37,5,19),(38,9,19),(39,1,20),(40,6,20),(41,1,21),(42,7,21),(43,3,22),(44,8,22),(45,3,23),(46,8,23),(47,5,24),(48,6,24),(49,2,25),(50,10,25),(51,5,26),(52,9,26),(53,5,27),(54,10,27),(55,5,28),(56,7,28),(57,1,29),(58,9,29),(59,2,30),(60,6,30),(61,5,31),(62,7,31),(63,4,32),(64,10,32),(65,2,33),(66,9,33),(67,4,34),(68,10,34),(69,1,35),(70,7,35),(71,1,36),(72,6,36),(73,3,37),(74,9,37),(75,3,38),(76,7,38),(77,4,39),(78,6,39),(79,4,40),(80,7,40),(81,5,41),(82,10,41),(83,3,42),(84,7,42),(85,2,43),(86,8,43),(87,2,44),(88,8,44),(89,5,45),(90,8,45),(91,1,46),(92,9,46),(93,2,47),(94,6,47),(95,1,48),(96,8,48),(97,3,49),(98,6,49),(99,5,50),(100,7,50),(101,4,51),(102,9,51),(103,4,52),(104,10,52),(105,1,53),(106,10,53),(107,1,54),(108,7,54),(109,3,55),(110,9,55),(111,1,56),(112,6,56),(113,1,57),(114,10,57),(115,4,58),(116,7,58),(117,4,59),(118,6,59),(119,4,60),(120,7,60),(121,1,61),(122,10,61),(123,1,62),(124,8,62),(125,1,63),(126,8,63),(127,4,64),(128,7,64),(129,2,65),(130,6,65);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned DEFAULT NULL,
  `configurable_product_id` int unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,25,1,1),(2,26,1,0),(3,27,1,0),(4,28,1,0),(5,29,2,1),(6,30,2,0),(7,31,2,0),(8,32,3,1),(9,33,4,1),(10,34,4,0),(11,35,4,0),(12,36,4,0),(13,37,5,1),(14,38,5,0),(15,39,5,0),(16,40,6,1),(17,41,6,0),(18,42,7,1),(19,43,7,0),(20,44,7,0),(21,45,8,1),(22,46,8,0),(23,47,9,1),(24,48,10,1),(25,49,10,0),(26,50,10,0),(27,51,10,0),(28,52,11,1),(29,53,11,0),(30,54,11,0),(31,55,11,0),(32,56,12,1),(33,57,12,0),(34,58,12,0),(35,59,13,1),(36,60,13,0),(37,61,13,0),(38,62,13,0),(39,63,14,1),(40,64,14,0),(41,65,15,1),(42,66,15,0),(43,67,16,1),(44,68,16,0),(45,69,16,0),(46,70,17,1),(47,71,17,0),(48,72,17,0),(49,73,18,1),(50,74,18,0),(51,75,19,1),(52,76,19,0),(53,77,19,0),(54,78,20,1),(55,79,20,0),(56,80,21,1),(57,81,21,0),(58,82,22,1),(59,83,22,0),(60,84,22,0),(61,85,22,0),(62,86,23,1),(63,87,23,0),(64,88,24,1),(65,89,24,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,1,0),(2,2,1,0),(3,1,2,0),(4,2,2,0),(5,1,3,0),(6,2,3,0),(7,1,4,0),(8,2,4,0),(9,1,5,0),(10,2,5,0),(11,1,6,0),(12,2,6,0),(13,1,7,0),(14,2,7,0),(15,1,8,0),(16,2,8,0),(17,1,9,0),(18,2,9,0),(19,1,10,0),(20,2,10,0),(21,1,11,0),(22,2,11,0),(23,1,12,0),(24,2,12,0),(25,1,13,0),(26,2,13,0),(27,1,14,0),(28,2,14,0),(29,1,15,0),(30,2,15,0),(31,1,16,0),(32,2,16,0),(33,1,17,0),(34,2,17,0),(35,1,18,0),(36,2,18,0),(37,1,19,0),(38,2,19,0),(39,1,20,0),(40,2,20,0),(41,1,21,0),(42,2,21,0),(43,1,22,0),(44,2,22,0),(45,1,23,0),(46,2,23,0),(47,1,24,0),(48,2,24,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` int unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tax_id` int unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `stock_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `created_by_id` int DEFAULT '0',
  `created_by_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Smart Home Speaker','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1.jpg\",\"products\\/1-1.jpg\",\"products\\/1-2.jpg\",\"products\\/1-3.jpg\"]','HS-195-A0',0,14,0,1,1,6,0,0,493,NULL,NULL,NULL,16.00,12.00,15.00,629.00,'2022-01-04 21:11:18','2022-01-04 21:11:19',1,99499,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(2,'Headphone Ultra Bass','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]','HS-157-A0',0,12,0,1,1,2,0,0,337,NULL,NULL,NULL,20.00,10.00,15.00,710.00,'2022-01-04 21:11:18','2022-01-04 21:11:19',1,116243,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(3,'Boxed - Bluetooth Headphone','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3.jpg\",\"products\\/3-1.jpg\",\"products\\/3-2.jpg\",\"products\\/3-3.jpg\"]','HS-169-A0',0,20,0,1,1,4,0,0,375,NULL,NULL,NULL,14.00,18.00,13.00,888.00,'2022-01-04 21:11:18','2022-01-04 21:11:19',1,92620,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(4,'Chikie - Bluetooth Speaker','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]','HS-129-A0',0,15,0,1,1,7,0,0,79,64.78,NULL,NULL,16.00,13.00,14.00,707.00,'2022-01-04 21:11:18','2022-01-04 21:11:19',1,25364,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(5,'Camera Hikvision HK-35VS8','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]','HS-118-A0',0,14,0,1,1,1,0,0,42,NULL,NULL,NULL,17.00,17.00,10.00,657.00,'2022-01-04 21:11:18','2022-01-04 21:11:19',1,81024,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(6,'Camera Samsung SS-24','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6.jpg\",\"products\\/6-1.jpg\"]','HS-126-A0',0,14,0,1,1,3,0,0,59,NULL,NULL,NULL,10.00,17.00,16.00,702.00,'2022-01-04 21:11:18','2022-01-04 21:11:19',1,132176,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(7,'Leather Watch Band','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7.jpg\",\"products\\/7-1.jpg\"]','HS-178-A0',0,17,0,1,1,1,0,0,127,NULL,NULL,NULL,20.00,17.00,14.00,875.00,'2022-01-04 21:11:18','2022-01-04 21:11:19',1,89049,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(8,'Apple iPhone 13 Plus','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\"]','HS-182-A0',0,11,0,1,1,4,0,0,121,88.33,NULL,NULL,18.00,17.00,10.00,614.00,'2022-01-04 21:11:18','2022-01-04 21:11:19',1,196103,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(9,'Macbook Pro 2015','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\"]','HS-100-A0',0,18,0,1,1,6,0,0,121,NULL,NULL,NULL,19.00,18.00,16.00,792.00,'2022-01-04 21:11:18','2022-01-04 21:11:19',1,141558,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(10,'Macbook Air 12 inch','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\"]','HS-188-A0',0,15,0,1,1,2,0,0,237,NULL,NULL,NULL,11.00,11.00,15.00,798.00,'2022-01-04 21:11:18','2022-01-04 21:11:19',1,157704,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(11,'Apple Watch Serial 7','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\"]','HS-118-A0',0,10,0,1,1,5,0,0,126,NULL,NULL,NULL,16.00,11.00,16.00,626.00,'2022-01-04 21:11:18','2022-01-04 21:11:19',1,38511,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(12,'Macbook Pro 13 inch','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\"]','HS-143-A0',0,18,0,1,1,6,0,0,121,104.06,NULL,NULL,19.00,12.00,13.00,758.00,'2022-01-04 21:11:18','2022-01-04 21:11:19',1,141797,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(13,'Apple Keyboard','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','HS-110-A0',0,12,0,1,1,4,0,0,129,NULL,NULL,NULL,19.00,14.00,19.00,679.00,'2022-01-04 21:11:18','2022-01-04 21:11:19',1,165571,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(14,'MacSafe 80W','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14.jpg\",\"products\\/14-1.jpg\"]','HS-118-A0',0,10,0,1,1,4,0,0,123,NULL,NULL,NULL,17.00,17.00,11.00,670.00,'2022-01-04 21:11:18','2022-01-04 21:11:19',1,59728,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(15,'Hand playstation','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','HS-164-A0',0,11,0,1,1,4,0,0,125,NULL,NULL,NULL,12.00,15.00,12.00,740.00,'2022-01-04 21:11:18','2022-01-04 21:11:19',1,194190,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(16,'Apple Airpods Serial 3','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/16.jpg\"]','HS-117-A0',0,15,0,1,1,2,0,0,120,100.8,NULL,NULL,15.00,11.00,18.00,513.00,'2022-01-04 21:11:18','2022-01-04 21:11:19',1,7456,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(17,'Cool Smart Watches','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/17.jpg\"]','HS-190-A0',0,13,0,1,1,1,0,0,130,NULL,NULL,NULL,14.00,18.00,20.00,698.00,'2022-01-04 21:11:18','2022-01-04 21:11:19',1,56149,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(18,'Black Smart Watches','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\",\"products\\/18-2.jpg\"]','HS-194-A0',0,20,0,1,1,2,0,0,110,NULL,NULL,NULL,17.00,15.00,16.00,634.00,'2022-01-04 21:11:18','2022-01-04 21:11:19',1,159745,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(19,'Leather Watch Band Serial 3','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\"]','HS-106-A0',0,11,0,1,1,3,0,0,122,NULL,NULL,NULL,20.00,17.00,18.00,578.00,'2022-01-04 21:11:18','2022-01-04 21:11:19',1,169644,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(20,'Macbook Pro 2015 13 inch','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\"]','HS-109-A0',0,11,0,1,1,7,0,0,116,93.96,NULL,NULL,13.00,11.00,11.00,706.00,'2022-01-04 21:11:18','2022-01-04 21:11:19',1,56337,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(21,'Historic Alarm Clock','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\"]','HS-197-A0',0,19,0,1,1,4,0,0,118,NULL,NULL,NULL,18.00,13.00,16.00,648.00,'2022-01-04 21:11:18','2022-01-04 21:11:19',1,171008,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(22,'Black Glasses','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\"]','HS-112-A0',0,14,0,1,1,2,0,0,120,NULL,NULL,NULL,16.00,11.00,16.00,763.00,'2022-01-04 21:11:18','2022-01-04 21:11:19',1,138328,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(23,'Phillips Mouse','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\"]','HS-191-A0',0,16,0,1,1,4,0,0,113,NULL,NULL,NULL,17.00,19.00,16.00,722.00,'2022-01-04 21:11:18','2022-01-04 21:11:19',1,148329,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(24,'Gaming Keyboard','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/24.jpg\",\"products\\/24-1.jpg\"]','HS-199-A0',0,11,0,1,1,1,0,0,130,110.5,NULL,NULL,13.00,12.00,10.00,744.00,'2022-01-04 21:11:18','2022-01-04 21:11:19',1,153634,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(25,'Smart Home Speaker',NULL,NULL,'published','[\"products\\/1.jpg\"]','HS-195-A0',0,14,0,1,0,6,1,0,493,NULL,NULL,NULL,16.00,12.00,15.00,629.00,'2022-01-04 21:11:18','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(26,'Smart Home Speaker',NULL,NULL,'published','[\"products\\/1-1.jpg\"]','HS-195-A0-A1',0,14,0,1,0,6,1,0,493,NULL,NULL,NULL,16.00,12.00,15.00,629.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(27,'Smart Home Speaker',NULL,NULL,'published','[\"products\\/1-2.jpg\"]','HS-195-A0-A2',0,14,0,1,0,6,1,0,493,NULL,NULL,NULL,16.00,12.00,15.00,629.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(28,'Smart Home Speaker',NULL,NULL,'published','[\"products\\/1-3.jpg\"]','HS-195-A0-A3',0,14,0,1,0,6,1,0,493,NULL,NULL,NULL,16.00,12.00,15.00,629.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(29,'Headphone Ultra Bass',NULL,NULL,'published','[\"products\\/2.jpg\"]','HS-157-A0',0,12,0,1,0,2,1,0,337,NULL,NULL,NULL,20.00,10.00,15.00,710.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(30,'Headphone Ultra Bass',NULL,NULL,'published','[\"products\\/2-1.jpg\"]','HS-157-A0-A1',0,12,0,1,0,2,1,0,337,NULL,NULL,NULL,20.00,10.00,15.00,710.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(31,'Headphone Ultra Bass',NULL,NULL,'published','[\"products\\/2-2.jpg\"]','HS-157-A0-A2',0,12,0,1,0,2,1,0,337,NULL,NULL,NULL,20.00,10.00,15.00,710.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(32,'Boxed - Bluetooth Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','HS-169-A0',0,20,0,1,0,4,1,0,375,NULL,NULL,NULL,14.00,18.00,13.00,888.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(33,'Chikie - Bluetooth Speaker',NULL,NULL,'published','[\"products\\/4.jpg\"]','HS-129-A0',0,15,0,1,0,7,1,0,79,64.78,NULL,NULL,16.00,13.00,14.00,707.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(34,'Chikie - Bluetooth Speaker',NULL,NULL,'published','[\"products\\/4-1.jpg\"]','HS-129-A0-A1',0,15,0,1,0,7,1,0,79,67.94,NULL,NULL,16.00,13.00,14.00,707.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(35,'Chikie - Bluetooth Speaker',NULL,NULL,'published','[\"products\\/4-2.jpg\"]','HS-129-A0-A2',0,15,0,1,0,7,1,0,79,65.57,NULL,NULL,16.00,13.00,14.00,707.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(36,'Chikie - Bluetooth Speaker',NULL,NULL,'published','[\"products\\/4-3.jpg\"]','HS-129-A0-A3',0,15,0,1,0,7,1,0,79,71.1,NULL,NULL,16.00,13.00,14.00,707.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(37,'Camera Hikvision HK-35VS8',NULL,NULL,'published','[\"products\\/5.jpg\"]','HS-118-A0',0,14,0,1,0,1,1,0,42,NULL,NULL,NULL,17.00,17.00,10.00,657.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(38,'Camera Hikvision HK-35VS8',NULL,NULL,'published','[\"products\\/5-1.jpg\"]','HS-118-A0-A1',0,14,0,1,0,1,1,0,42,NULL,NULL,NULL,17.00,17.00,10.00,657.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(39,'Camera Hikvision HK-35VS8',NULL,NULL,'published','[\"products\\/5-2.jpg\"]','HS-118-A0-A2',0,14,0,1,0,1,1,0,42,NULL,NULL,NULL,17.00,17.00,10.00,657.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(40,'Camera Samsung SS-24',NULL,NULL,'published','[\"products\\/6.jpg\"]','HS-126-A0',0,14,0,1,0,3,1,0,59,NULL,NULL,NULL,10.00,17.00,16.00,702.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(41,'Camera Samsung SS-24',NULL,NULL,'published','[\"products\\/6-1.jpg\"]','HS-126-A0-A1',0,14,0,1,0,3,1,0,59,NULL,NULL,NULL,10.00,17.00,16.00,702.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(42,'Leather Watch Band',NULL,NULL,'published','[\"products\\/7.jpg\"]','HS-178-A0',0,17,0,1,0,1,1,0,127,NULL,NULL,NULL,20.00,17.00,14.00,875.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(43,'Leather Watch Band',NULL,NULL,'published','[\"products\\/7-1.jpg\"]','HS-178-A0-A1',0,17,0,1,0,1,1,0,127,NULL,NULL,NULL,20.00,17.00,14.00,875.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(44,'Leather Watch Band',NULL,NULL,'published','[\"products\\/7.jpg\"]','HS-178-A0-A2',0,17,0,1,0,1,1,0,127,NULL,NULL,NULL,20.00,17.00,14.00,875.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(45,'Apple iPhone 13 Plus',NULL,NULL,'published','[\"products\\/8.jpg\"]','HS-182-A0',0,11,0,1,0,4,1,0,121,88.33,NULL,NULL,18.00,17.00,10.00,614.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(46,'Apple iPhone 13 Plus',NULL,NULL,'published','[\"products\\/8-1.jpg\"]','HS-182-A0-A1',0,11,0,1,0,4,1,0,121,101.64,NULL,NULL,18.00,17.00,10.00,614.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(47,'Macbook Pro 2015',NULL,NULL,'published','[\"products\\/9.jpg\"]','HS-100-A0',0,18,0,1,0,6,1,0,121,NULL,NULL,NULL,19.00,18.00,16.00,792.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(48,'Macbook Air 12 inch',NULL,NULL,'published','[\"products\\/10.jpg\"]','HS-188-A0',0,15,0,1,0,2,1,0,237,NULL,NULL,NULL,11.00,11.00,15.00,798.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(49,'Macbook Air 12 inch',NULL,NULL,'published','[\"products\\/10-1.jpg\"]','HS-188-A0-A1',0,15,0,1,0,2,1,0,237,NULL,NULL,NULL,11.00,11.00,15.00,798.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(50,'Macbook Air 12 inch',NULL,NULL,'published','[\"products\\/10.jpg\"]','HS-188-A0-A2',0,15,0,1,0,2,1,0,237,NULL,NULL,NULL,11.00,11.00,15.00,798.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(51,'Macbook Air 12 inch',NULL,NULL,'published','[\"products\\/10.jpg\"]','HS-188-A0-A3',0,15,0,1,0,2,1,0,237,NULL,NULL,NULL,11.00,11.00,15.00,798.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(52,'Apple Watch Serial 7',NULL,NULL,'published','[\"products\\/11.jpg\"]','HS-118-A0',0,10,0,1,0,5,1,0,126,NULL,NULL,NULL,16.00,11.00,16.00,626.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(53,'Apple Watch Serial 7',NULL,NULL,'published','[\"products\\/11-1.jpg\"]','HS-118-A0-A1',0,10,0,1,0,5,1,0,126,NULL,NULL,NULL,16.00,11.00,16.00,626.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(54,'Apple Watch Serial 7',NULL,NULL,'published','[\"products\\/11.jpg\"]','HS-118-A0-A2',0,10,0,1,0,5,1,0,126,NULL,NULL,NULL,16.00,11.00,16.00,626.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(55,'Apple Watch Serial 7',NULL,NULL,'published','[\"products\\/11.jpg\"]','HS-118-A0-A3',0,10,0,1,0,5,1,0,126,NULL,NULL,NULL,16.00,11.00,16.00,626.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(56,'Macbook Pro 13 inch',NULL,NULL,'published','[\"products\\/12.jpg\"]','HS-143-A0',0,18,0,1,0,6,1,0,121,104.06,NULL,NULL,19.00,12.00,13.00,758.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(57,'Macbook Pro 13 inch',NULL,NULL,'published','[\"products\\/12-1.jpg\"]','HS-143-A0-A1',0,18,0,1,0,6,1,0,121,85.91,NULL,NULL,19.00,12.00,13.00,758.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(58,'Macbook Pro 13 inch',NULL,NULL,'published','[\"products\\/12.jpg\"]','HS-143-A0-A2',0,18,0,1,0,6,1,0,121,99.22,NULL,NULL,19.00,12.00,13.00,758.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(59,'Apple Keyboard',NULL,NULL,'published','[\"products\\/13.jpg\"]','HS-110-A0',0,12,0,1,0,4,1,0,129,NULL,NULL,NULL,19.00,14.00,19.00,679.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(60,'Apple Keyboard',NULL,NULL,'published','[\"products\\/13-1.jpg\"]','HS-110-A0-A1',0,12,0,1,0,4,1,0,129,NULL,NULL,NULL,19.00,14.00,19.00,679.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(61,'Apple Keyboard',NULL,NULL,'published','[\"products\\/13.jpg\"]','HS-110-A0-A2',0,12,0,1,0,4,1,0,129,NULL,NULL,NULL,19.00,14.00,19.00,679.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(62,'Apple Keyboard',NULL,NULL,'published','[\"products\\/13.jpg\"]','HS-110-A0-A3',0,12,0,1,0,4,1,0,129,NULL,NULL,NULL,19.00,14.00,19.00,679.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(63,'MacSafe 80W',NULL,NULL,'published','[\"products\\/14.jpg\"]','HS-118-A0',0,10,0,1,0,4,1,0,123,NULL,NULL,NULL,17.00,17.00,11.00,670.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(64,'MacSafe 80W',NULL,NULL,'published','[\"products\\/14-1.jpg\"]','HS-118-A0-A1',0,10,0,1,0,4,1,0,123,NULL,NULL,NULL,17.00,17.00,11.00,670.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(65,'Hand playstation',NULL,NULL,'published','[\"products\\/15.jpg\"]','HS-164-A0',0,11,0,1,0,4,1,0,125,NULL,NULL,NULL,12.00,15.00,12.00,740.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(66,'Hand playstation',NULL,NULL,'published','[\"products\\/15-1.jpg\"]','HS-164-A0-A1',0,11,0,1,0,4,1,0,125,NULL,NULL,NULL,12.00,15.00,12.00,740.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(67,'Apple Airpods Serial 3',NULL,NULL,'published','[\"products\\/16.jpg\"]','HS-117-A0',0,15,0,1,0,2,1,0,120,100.8,NULL,NULL,15.00,11.00,18.00,513.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(68,'Apple Airpods Serial 3',NULL,NULL,'published','[\"products\\/16.jpg\"]','HS-117-A0-A1',0,15,0,1,0,2,1,0,120,94.8,NULL,NULL,15.00,11.00,18.00,513.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(69,'Apple Airpods Serial 3',NULL,NULL,'published','[\"products\\/16.jpg\"]','HS-117-A0-A2',0,15,0,1,0,2,1,0,120,105.6,NULL,NULL,15.00,11.00,18.00,513.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(70,'Cool Smart Watches',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-190-A0',0,13,0,1,0,1,1,0,130,NULL,NULL,NULL,14.00,18.00,20.00,698.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(71,'Cool Smart Watches',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-190-A0-A1',0,13,0,1,0,1,1,0,130,NULL,NULL,NULL,14.00,18.00,20.00,698.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(72,'Cool Smart Watches',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-190-A0-A2',0,13,0,1,0,1,1,0,130,NULL,NULL,NULL,14.00,18.00,20.00,698.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(73,'Black Smart Watches',NULL,NULL,'published','[\"products\\/18.jpg\"]','HS-194-A0',0,20,0,1,0,2,1,0,110,NULL,NULL,NULL,17.00,15.00,16.00,634.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(74,'Black Smart Watches',NULL,NULL,'published','[\"products\\/18-1.jpg\"]','HS-194-A0-A1',0,20,0,1,0,2,1,0,110,NULL,NULL,NULL,17.00,15.00,16.00,634.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(75,'Leather Watch Band Serial 3',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-106-A0',0,11,0,1,0,3,1,0,122,NULL,NULL,NULL,20.00,17.00,18.00,578.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(76,'Leather Watch Band Serial 3',NULL,NULL,'published','[\"products\\/19-1.jpg\"]','HS-106-A0-A1',0,11,0,1,0,3,1,0,122,NULL,NULL,NULL,20.00,17.00,18.00,578.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(77,'Leather Watch Band Serial 3',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-106-A0-A2',0,11,0,1,0,3,1,0,122,NULL,NULL,NULL,20.00,17.00,18.00,578.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(78,'Macbook Pro 2015 13 inch',NULL,NULL,'published','[\"products\\/20.jpg\"]','HS-109-A0',0,11,0,1,0,7,1,0,116,93.96,NULL,NULL,13.00,11.00,11.00,706.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(79,'Macbook Pro 2015 13 inch',NULL,NULL,'published','[\"products\\/20-1.jpg\"]','HS-109-A0-A1',0,11,0,1,0,7,1,0,116,98.6,NULL,NULL,13.00,11.00,11.00,706.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(80,'Historic Alarm Clock',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-197-A0',0,19,0,1,0,4,1,0,118,NULL,NULL,NULL,18.00,13.00,16.00,648.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(81,'Historic Alarm Clock',NULL,NULL,'published','[\"products\\/21-1.jpg\"]','HS-197-A0-A1',0,19,0,1,0,4,1,0,118,NULL,NULL,NULL,18.00,13.00,16.00,648.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(82,'Black Glasses',NULL,NULL,'published','[\"products\\/22.jpg\"]','HS-112-A0',0,14,0,1,0,2,1,0,120,NULL,NULL,NULL,16.00,11.00,16.00,763.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(83,'Black Glasses',NULL,NULL,'published','[\"products\\/22-1.jpg\"]','HS-112-A0-A1',0,14,0,1,0,2,1,0,120,NULL,NULL,NULL,16.00,11.00,16.00,763.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(84,'Black Glasses',NULL,NULL,'published','[\"products\\/22.jpg\"]','HS-112-A0-A2',0,14,0,1,0,2,1,0,120,NULL,NULL,NULL,16.00,11.00,16.00,763.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(85,'Black Glasses',NULL,NULL,'published','[\"products\\/22.jpg\"]','HS-112-A0-A3',0,14,0,1,0,2,1,0,120,NULL,NULL,NULL,16.00,11.00,16.00,763.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(86,'Phillips Mouse',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-191-A0',0,16,0,1,0,4,1,0,113,NULL,NULL,NULL,17.00,19.00,16.00,722.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(87,'Phillips Mouse',NULL,NULL,'published','[\"products\\/23-1.jpg\"]','HS-191-A0-A1',0,16,0,1,0,4,1,0,113,NULL,NULL,NULL,17.00,19.00,16.00,722.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(88,'Gaming Keyboard',NULL,NULL,'published','[\"products\\/24.jpg\"]','HS-199-A0',0,11,0,1,0,1,1,0,130,110.5,NULL,NULL,13.00,12.00,10.00,744.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL),(89,'Gaming Keyboard',NULL,NULL,'published','[\"products\\/24-1.jpg\"]','HS-199-A0-A1',0,11,0,1,0,1,1,0,130,105.3,NULL,NULL,13.00,12.00,10.00,744.00,'2022-01-04 21:11:19','2022-03-22 19:27:37',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
INSERT INTO `ec_products_translations` VALUES ('vi',1,'Loa thông minh',NULL,NULL),('vi',2,'Tai nghe Ultra Bass',NULL,NULL),('vi',3,'Tai nghe Bluetooth',NULL,NULL),('vi',4,'Chikie - Loa Bluetooth',NULL,NULL),('vi',5,'Camera Hikvision HK-35VS8',NULL,NULL),('vi',6,'Camera Samsung SS-24',NULL,NULL),('vi',7,'Dây đeo đồng hồ da',NULL,NULL),('vi',8,'Điện thoại Apple iPhone 13 Plus',NULL,NULL),('vi',9,'Máy tính Macbook Pro 2015',NULL,NULL),('vi',10,'Máy tính Macbook Air 12 inch',NULL,NULL),('vi',11,'Đồng hồ Apple Serial 7',NULL,NULL),('vi',12,'Máy tính Macbook Pro 13 inch',NULL,NULL),('vi',13,'Bàn phím Apple',NULL,NULL),('vi',14,'Cục sạc MacSafe 80W',NULL,NULL),('vi',15,'Tay cầm chơi game',NULL,NULL),('vi',16,'Apple Airpods Serial 3',NULL,NULL),('vi',17,'Cool Smart Watches',NULL,NULL),('vi',18,'Black Smart Watches',NULL,NULL),('vi',19,'Leather Watch Band Serial 3',NULL,NULL),('vi',20,'Macbook Pro 2015 13 inch',NULL,NULL),('vi',21,'Đồng hồ báo thức cổ điển',NULL,NULL),('vi',22,'Kính đen cool ngầu',NULL,NULL),('vi',23,'Chuột máy tính Phillips',NULL,NULL),('vi',24,'Bàn phím chơi game',NULL,NULL),('vi',25,'Loa thông minh',NULL,NULL),('vi',26,'Loa thông minh',NULL,NULL),('vi',27,'Loa thông minh',NULL,NULL),('vi',28,'Loa thông minh',NULL,NULL),('vi',29,'Tai nghe Ultra Bass',NULL,NULL),('vi',30,'Tai nghe Ultra Bass',NULL,NULL),('vi',31,'Tai nghe Ultra Bass',NULL,NULL),('vi',32,'Tai nghe Bluetooth',NULL,NULL),('vi',33,'Chikie - Loa Bluetooth',NULL,NULL),('vi',34,'Chikie - Loa Bluetooth',NULL,NULL),('vi',35,'Chikie - Loa Bluetooth',NULL,NULL),('vi',36,'Chikie - Loa Bluetooth',NULL,NULL),('vi',37,'Camera Hikvision HK-35VS8',NULL,NULL),('vi',38,'Camera Hikvision HK-35VS8',NULL,NULL),('vi',39,'Camera Hikvision HK-35VS8',NULL,NULL),('vi',40,'Camera Samsung SS-24',NULL,NULL),('vi',41,'Camera Samsung SS-24',NULL,NULL),('vi',42,'Dây đeo đồng hồ da',NULL,NULL),('vi',43,'Dây đeo đồng hồ da',NULL,NULL),('vi',44,'Dây đeo đồng hồ da',NULL,NULL),('vi',45,'Điện thoại Apple iPhone 13 Plus',NULL,NULL),('vi',46,'Điện thoại Apple iPhone 13 Plus',NULL,NULL),('vi',47,'Máy tính Macbook Pro 2015',NULL,NULL),('vi',48,'Máy tính Macbook Air 12 inch',NULL,NULL),('vi',49,'Máy tính Macbook Air 12 inch',NULL,NULL),('vi',50,'Máy tính Macbook Air 12 inch',NULL,NULL),('vi',51,'Máy tính Macbook Air 12 inch',NULL,NULL),('vi',52,'Đồng hồ Apple Serial 7',NULL,NULL),('vi',53,'Đồng hồ Apple Serial 7',NULL,NULL),('vi',54,'Đồng hồ Apple Serial 7',NULL,NULL),('vi',55,'Đồng hồ Apple Serial 7',NULL,NULL),('vi',56,'Máy tính Macbook Pro 13 inch',NULL,NULL),('vi',57,'Máy tính Macbook Pro 13 inch',NULL,NULL),('vi',58,'Máy tính Macbook Pro 13 inch',NULL,NULL),('vi',59,'Bàn phím Apple',NULL,NULL),('vi',60,'Bàn phím Apple',NULL,NULL),('vi',61,'Bàn phím Apple',NULL,NULL),('vi',62,'Bàn phím Apple',NULL,NULL),('vi',63,'Cục sạc MacSafe 80W',NULL,NULL),('vi',64,'Cục sạc MacSafe 80W',NULL,NULL),('vi',65,'Tay cầm chơi game',NULL,NULL),('vi',66,'Tay cầm chơi game',NULL,NULL),('vi',67,'Apple Airpods Serial 3',NULL,NULL),('vi',68,'Apple Airpods Serial 3',NULL,NULL),('vi',69,'Apple Airpods Serial 3',NULL,NULL),('vi',70,'Cool Smart Watches',NULL,NULL),('vi',71,'Cool Smart Watches',NULL,NULL),('vi',72,'Cool Smart Watches',NULL,NULL),('vi',73,'Black Smart Watches',NULL,NULL),('vi',74,'Black Smart Watches',NULL,NULL),('vi',75,'Leather Watch Band Serial 3',NULL,NULL),('vi',76,'Leather Watch Band Serial 3',NULL,NULL),('vi',77,'Leather Watch Band Serial 3',NULL,NULL),('vi',78,'Macbook Pro 2015 13 inch',NULL,NULL),('vi',79,'Macbook Pro 2015 13 inch',NULL,NULL),('vi',80,'Đồng hồ báo thức cổ điển',NULL,NULL),('vi',81,'Đồng hồ báo thức cổ điển',NULL,NULL),('vi',82,'Kính đen cool ngầu',NULL,NULL),('vi',83,'Kính đen cool ngầu',NULL,NULL),('vi',84,'Kính đen cool ngầu',NULL,NULL),('vi',85,'Kính đen cool ngầu',NULL,NULL),('vi',86,'Chuột máy tính Phillips',NULL,NULL),('vi',87,'Chuột máy tính Phillips',NULL,NULL),('vi',88,'Bàn phím chơi game',NULL,NULL),('vi',89,'Bàn phím chơi game',NULL,NULL);
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,9,1,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(2,6,7,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(3,2,12,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(4,8,10,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/1.jpg\"]'),(5,5,20,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(6,3,8,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(7,2,5,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(8,4,19,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(9,6,9,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(10,7,5,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/19.jpg\"]'),(11,2,12,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(12,1,15,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(13,6,10,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-01-04 21:11:22','2022-01-04 21:11:22','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/8.jpg\"}'),(14,4,15,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/3.jpg\"]'),(15,1,15,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(16,4,7,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(17,2,18,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(18,10,22,3.00,'Clean & perfect source code','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/1.jpg\"]'),(19,3,20,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/14.jpg\"]'),(20,5,1,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/1.jpg\"]'),(21,6,18,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/19.jpg\"]'),(22,1,18,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(23,7,20,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(24,10,18,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/15.jpg\"}'),(25,5,16,4.00,'Best ecommerce CMS online store!','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/13.jpg\"]'),(26,4,11,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/1.jpg\"]'),(27,8,7,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/18.jpg\"]'),(28,3,10,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/19.jpg\"}'),(29,5,5,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/4.jpg\"]'),(30,5,16,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(31,5,13,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(32,7,8,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/4.jpg\"]'),(33,6,4,4.00,'Clean & perfect source code','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(34,8,21,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(35,3,2,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/1.jpg\"]'),(36,5,9,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/1.jpg\"]'),(37,7,1,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(38,1,11,2.00,'Good app, good backup service and support. Good documentation.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(39,1,10,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(40,1,9,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/4.jpg\"]'),(41,8,17,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/3.jpg\"]'),(42,6,6,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/4.jpg\"]'),(43,10,2,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-01-04 21:11:22','2022-01-04 21:11:22','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/10.jpg\"}'),(44,9,10,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(45,9,10,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(46,9,20,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/2.jpg\"]'),(47,3,2,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(48,1,1,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(49,3,14,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/3.jpg\"]'),(50,9,21,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/1.jpg\"]'),(51,6,22,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(52,4,12,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(53,5,17,5.00,'Best ecommerce CMS online store!','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(54,5,7,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/4.jpg\"]'),(55,4,5,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(56,8,8,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(57,1,16,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/18.jpg\"]'),(58,2,17,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/8.jpg\"]'),(59,9,11,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/3.jpg\"]'),(60,4,15,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(61,8,3,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(62,10,23,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(63,9,5,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(64,7,9,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/2.jpg\"]'),(65,5,4,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/16.jpg\"]'),(66,10,14,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/2.jpg\"]'),(67,1,2,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(68,7,24,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/12.jpg\"]'),(69,5,14,5.00,'Clean & perfect source code','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/16.jpg\"]'),(70,2,10,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(71,8,2,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(72,10,3,2.00,'Best ecommerce CMS online store!','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/2.jpg\"]'),(73,5,15,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(74,7,14,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(75,8,14,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/16.jpg\"]'),(76,10,16,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/10.jpg\"}'),(77,2,20,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/2.jpg\"]'),(78,7,17,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/20.jpg\"}'),(79,8,14,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/3.jpg\"]'),(80,1,24,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(81,9,22,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/3.jpg\"]'),(82,9,20,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/4.jpg\"]'),(83,6,7,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(84,2,20,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/15.jpg\"]'),(85,10,6,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/3.jpg\"]'),(86,4,13,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/15.jpg\"]'),(87,5,16,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/10.jpg\"]'),(88,4,2,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/4.jpg\"]'),(89,10,4,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/3.jpg\"]'),(90,1,13,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(91,2,12,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/2.jpg\"]'),(92,4,5,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/3.jpg\"]'),(93,2,20,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(94,5,17,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/1.jpg\"]'),(95,6,1,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/2.jpg\"]'),(96,9,9,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/9.jpg\"]'),(97,3,18,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/1.jpg\"]'),(98,3,14,2.00,'Clean & perfect source code','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(99,3,21,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/17.jpg\"]'),(100,10,22,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-01-04 21:11:22','2022-01-04 21:11:22','[\"products\\/3.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `shipment_id` int unsigned NOT NULL,
  `order_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,1,'2022-04-17 17:30:44','2022-04-17 17:30:44'),(2,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,1,1,'2022-04-29 09:30:44','2022-05-01 01:30:44'),(3,'create_from_order','Shipping was created from order %order_id%',0,2,2,'2022-04-19 23:30:44','2022-04-19 23:30:44'),(4,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,2,2,'2022-04-29 11:30:44','2022-05-01 01:30:44'),(5,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,2,2,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(6,'create_from_order','Shipping was created from order %order_id%',0,3,3,'2022-04-28 01:30:44','2022-04-28 01:30:44'),(7,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,3,3,'2022-04-29 13:30:44','2022-05-01 01:30:44'),(8,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,3,3,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(9,'create_from_order','Shipping was created from order %order_id%',0,4,4,'2022-04-28 05:30:44','2022-04-28 05:30:44'),(10,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,4,4,'2022-04-29 15:30:44','2022-05-01 01:30:44'),(11,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,4,4,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(12,'create_from_order','Shipping was created from order %order_id%',0,5,5,'2022-04-21 17:30:44','2022-04-21 17:30:44'),(13,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,5,5,'2022-04-29 17:30:44','2022-05-01 01:30:44'),(14,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,5,5,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(15,'create_from_order','Shipping was created from order %order_id%',0,6,6,'2022-04-22 07:30:44','2022-04-22 07:30:44'),(16,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,6,6,'2022-04-29 19:30:44','2022-05-01 01:30:44'),(17,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,6,6,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(18,'create_from_order','Shipping was created from order %order_id%',0,7,7,'2022-04-28 17:30:44','2022-04-28 17:30:44'),(19,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,7,7,'2022-04-29 21:30:44','2022-05-01 01:30:44'),(20,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,7,7,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(21,'create_from_order','Shipping was created from order %order_id%',0,8,8,'2022-04-26 17:30:44','2022-04-26 17:30:44'),(22,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,8,8,'2022-04-29 23:30:44','2022-05-01 01:30:44'),(23,'create_from_order','Shipping was created from order %order_id%',0,9,9,'2022-04-24 01:30:44','2022-04-24 01:30:44'),(24,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,9,9,'2022-04-30 01:30:44','2022-05-01 01:30:44'),(25,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,9,9,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(26,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,9,9,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(27,'create_from_order','Shipping was created from order %order_id%',0,10,10,'2022-04-26 11:30:44','2022-04-26 11:30:44'),(28,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,10,10,'2022-04-30 03:30:44','2022-05-01 01:30:44'),(29,'create_from_order','Shipping was created from order %order_id%',0,11,11,'2022-04-25 05:30:44','2022-04-25 05:30:44'),(30,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,11,11,'2022-04-30 05:30:44','2022-05-01 01:30:44'),(31,'create_from_order','Shipping was created from order %order_id%',0,12,12,'2022-04-28 19:30:44','2022-04-28 19:30:44'),(32,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,12,12,'2022-04-30 07:30:44','2022-05-01 01:30:44'),(33,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,12,12,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(34,'create_from_order','Shipping was created from order %order_id%',0,13,13,'2022-04-24 09:30:44','2022-04-24 09:30:44'),(35,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,13,13,'2022-04-30 09:30:44','2022-05-01 01:30:44'),(36,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,13,13,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(37,'create_from_order','Shipping was created from order %order_id%',0,14,14,'2022-04-27 13:30:44','2022-04-27 13:30:44'),(38,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,14,14,'2022-04-30 11:30:44','2022-05-01 01:30:44'),(39,'create_from_order','Shipping was created from order %order_id%',0,15,15,'2022-04-27 01:30:44','2022-04-27 01:30:44'),(40,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,15,15,'2022-04-30 13:30:44','2022-05-01 01:30:44'),(41,'create_from_order','Shipping was created from order %order_id%',0,16,16,'2022-04-30 15:30:44','2022-04-30 15:30:44'),(42,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,16,16,'2022-04-30 15:30:44','2022-05-01 01:30:44'),(43,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,16,16,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(44,'create_from_order','Shipping was created from order %order_id%',0,17,17,'2022-04-27 17:30:44','2022-04-27 17:30:44'),(45,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,17,17,'2022-04-30 17:30:44','2022-05-01 01:30:44'),(46,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,17,17,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(47,'create_from_order','Shipping was created from order %order_id%',0,18,18,'2022-04-29 07:30:44','2022-04-29 07:30:44'),(48,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,18,18,'2022-04-30 19:30:44','2022-05-01 01:30:44'),(49,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,18,18,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(50,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,18,18,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(51,'create_from_order','Shipping was created from order %order_id%',0,19,19,'2022-04-29 13:30:44','2022-04-29 13:30:44'),(52,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,19,19,'2022-04-30 21:30:44','2022-05-01 01:30:44'),(53,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,19,19,'2022-05-01 01:30:44','2022-05-01 01:30:44'),(54,'create_from_order','Shipping was created from order %order_id%',0,20,20,'2022-04-30 13:30:44','2022-04-30 13:30:44'),(55,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,20,20,'2022-04-30 23:30:44','2022-05-01 01:30:44'),(56,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,20,20,'2022-05-01 01:30:44','2022-05-01 01:30:44');
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,1,NULL,5634.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44','JJD0087695523','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-08 08:30:44',NULL),(2,2,NULL,3082.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44','JJD0067446356','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-06 08:30:44','2022-05-01 08:30:44'),(3,3,NULL,3364.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44','JJD0063787938','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-11 08:30:44','2022-05-01 08:30:44'),(4,4,NULL,4815.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44','JJD001648052','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-10 08:30:44','2022-05-01 08:30:44'),(5,5,NULL,3971.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44','JJD0032733641','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-05 08:30:44','2022-05-01 08:30:44'),(6,6,NULL,3557.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44','JJD0052779688','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-05 08:30:44','2022-05-01 08:30:44'),(7,7,NULL,4614.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44','JJD0074369520','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-03 08:30:44','2022-05-01 08:30:44'),(8,8,NULL,1953.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44','JJD0036035840','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-03 08:30:44',NULL),(9,9,NULL,4282.00,NULL,'','delivered',2053.00,'completed','pending',0.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44','JJD0022829848','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-06 08:30:44','2022-05-01 08:30:44'),(10,10,NULL,5232.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44','JJD0042470832','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-10 08:30:44',NULL),(11,11,NULL,4794.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44','JJD0079891979','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-10 08:30:44',NULL),(12,12,NULL,1897.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44','JJD0072637525','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-10 08:30:44','2022-05-01 08:30:44'),(13,13,NULL,4502.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44','JJD0071640073','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-04 08:30:44','2022-05-01 08:30:44'),(14,14,NULL,2465.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44','JJD0011620921','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-11 08:30:44',NULL),(15,15,NULL,3455.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44','JJD005195485','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-05 08:30:44',NULL),(16,16,NULL,1782.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44','JJD0065398673','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-07 08:30:44','2022-05-01 08:30:44'),(17,17,NULL,5763.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44','JJD0093600176','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-09 08:30:44','2022-05-01 08:30:44'),(18,18,NULL,2700.00,NULL,'','delivered',601.70,'completed','pending',0.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44','JJD0070330543','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-06 08:30:44','2022-05-01 08:30:44'),(19,19,NULL,6214.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44','JJD0074643101','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-11 08:30:44','2022-05-01 08:30:44'),(20,20,NULL,4300.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-05-01 01:30:44','2022-05-01 01:30:44','JJD0070090689','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-09 08:30:44','2022-05-01 08:30:44');
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2022-01-04 21:11:22','2022-01-04 21:11:22');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` int unsigned NOT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` int unsigned NOT NULL,
  `type` enum('base_on_price','base_on_weight') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'base_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free shipping',1,'base_on_price',0.00,NULL,0.00,'2022-01-04 21:11:22','2022-01-04 21:11:22'),(2,'Local Pickup',1,'base_on_price',0.00,NULL,20.00,'2022-01-04 21:11:22','2022-01-04 21:11:22'),(3,'Flat Rate',1,'base_on_price',0.00,NULL,25.00,'2022-01-04 21:11:22','2022-01-04 21:11:22');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Wowy','sales@botble.com','18006268','North Link Building, 10 Admiralty Street','SG','Singapore','Singapore',1,1,'2022-01-04 21:11:22','2022-01-04 21:11:22');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2022-01-04 21:11:19','2022-01-04 21:11:19'),(2,'None',0.000000,2,'published','2022-01-04 21:11:19','2022-01-04 21:11:19');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Shipping',0,'published','2022-01-04 21:11:42','2022-01-04 21:11:42'),(2,'Payment',1,'published','2022-01-04 21:11:42','2022-01-04 21:11:42'),(3,'Order & Returns',2,'published','2022-01-04 21:11:42','2022-01-04 21:11:42');
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` int NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
INSERT INTO `faq_categories_translations` VALUES ('vi',1,'VẬN CHUYỂN'),('vi',2,'THANH TOÁN'),('vi',3,'ĐƠN HÀNG & HOÀN TRẢ');
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int unsigned NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2022-01-04 21:11:42','2022-01-04 21:11:42'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2022-01-04 21:11:42','2022-01-04 21:11:42'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2022-01-04 21:11:42','2022-01-04 21:11:42'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2022-01-04 21:11:42','2022-01-04 21:11:42'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2022-01-04 21:11:42','2022-01-04 21:11:42'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2022-01-04 21:11:42','2022-01-04 21:11:42'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2022-01-04 21:11:42','2022-01-04 21:11:42'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2022-01-04 21:11:42','2022-01-04 21:11:42'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2022-01-04 21:11:42','2022-01-04 21:11:42'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2022-01-04 21:11:42','2022-01-04 21:11:42');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` int NOT NULL,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
INSERT INTO `faqs_translations` VALUES ('vi',1,'Có những phương thức vận chuyển nào?','Ex Portland Pitchfork irure ria mép. Eutra fap trước khi họ bán hết theo đúng nghĩa đen. Aliquip ugh quyền xe đạp thực sự mlkshk, rượu bia thủ công mực seitan. '),('vi',2,'Bạn có giao hàng quốc tế không?','Áo hoodie túi tote Tofu mixtape. Quần đùi jean đánh chữ Wolf quinoa, túi messenger hữu cơ freegan cray. '),('vi',3,'Mất bao lâu để nhận được gói hàng của tôi?','Bữa nửa buổi ăn sáng bằng bụng heo quay từ máy đánh chữ VHS, cà phê có nguồn gốc đơn Paleo, Wes Anderson. Khoan Pitchfork linh hoạt, theo nghĩa đen là đổ qua fap theo nghĩa đen. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray bền vững slow-carb raw denim Church-key fap chillwave Etsy. +1 bộ dụng cụ đánh máy, đậu phụ Banksy Vice của American Apparel. '),('vi',4,'Phương thức thanh toán nào được chấp nhận?','Fashion Axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Quầy ảnh Voluptate fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur ria mép. Twee chia gian hàng chụp ảnh xe bán đồ ăn sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. '),('vi',5,'Mua trực tuyến có an toàn không?','Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia credit. Tiệc trên mái nhà Neutra Austin Brooklyn, Thundercats swag synth gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. '),('vi',6,'Làm cách nào để đặt hàng?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Định mức seitan trong tương lai. Master làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt chậm carb cấp độ tiếp theo. Vải thô denim polaroid nhạt từ trang trại đến bàn, đặt một con chim trên đó hình xăm lo-fi Wes Anderson Pinterest letterpress. Bậc thầy gian hàng ảnh Schlitz của Fingerstache McSweeney đang làm sạch thẻ bắt đầu bằng hashtag theo yêu cầu riêng, chillwave gentrify. '),('vi',7,'Làm cách nào để tôi có thể hủy hoặc thay đổi đơn hàng của mình?','Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia tín. Tiệc trên mái nhà Neutra Austin ở Brooklyn, synth Thundercats có gian hàng ảnh 8-bit. '),('vi',8,'Tôi có cần tài khoản để đặt hàng không?','Thundercats làm lung lay gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Twee chia ảnh gian hàng xe bán thức ăn làm sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. Cray ugh 3 wolf moon fap, rìu thời trang mỉa mai người bán thịt máy đánh chữ chambray VHS banjo nghệ thuật đường phố. '),('vi',9,'Làm cách nào để theo dõi đơn hàng của tôi?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Định mức seitan trong tương lai. Bậc thầy làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt theo kiểu chậm carb cấp độ tiếp theo. '),('vi',10,'Làm cách nào để trả lại sản phẩm?','Kale chips Truffaut Williamsburg, fixie hashtag Pinterest raw denim c hambray uống giấm Carles street art Bushwick gastropub. Chìa khóa nhà thờ Wolf Tumblr. Xe tải thực phẩm kẻ sọc Echo Park YOLO cắn hella, giao dịch trực tiếp Thundercats legging quinoa trước khi bán hết. Có thể bạn chưa từng nghe nói về họ những người truyền bá vị umami đích thực uống giấm Pinterest Áo len Cosby, fingerstache fap High Life. ');
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','5700fec6a8e24dc7662068ed40b6146f',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','b982f0c5f13c7a8f22bbc7677305e2e0',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(3,'en_US','a7313a48078c710c130745fbefd770a6',3,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(4,'en_US','ffb38b358ee202a6e0e5b8cf46143dbe',4,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(5,'vi','5700fec6a8e24dc7662068ed40b6146f',5,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(6,'vi','b982f0c5f13c7a8f22bbc7677305e2e0',6,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(7,'vi','a7313a48078c710c130745fbefd770a6',7,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(8,'vi','ffb38b358ee202a6e0e5b8cf46143dbe',8,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(9,'en_US','8c0454b9ffb2e4305877c90b0e5631ec',1,'Botble\\Menu\\Models\\MenuLocation'),(10,'en_US','63cc3fa5957aa3a90dcb68438c9849bc',1,'Botble\\Menu\\Models\\Menu'),(11,'en_US','6102d11f525a0f0d20637f712ec129e6',2,'Botble\\Menu\\Models\\Menu'),(12,'en_US','11aebb9f08bc800689f3f6685c02f672',3,'Botble\\Menu\\Models\\Menu'),(13,'vi','ae52c90efd1b6c9d8934cd514e33f665',2,'Botble\\Menu\\Models\\MenuLocation'),(14,'vi','63cc3fa5957aa3a90dcb68438c9849bc',4,'Botble\\Menu\\Models\\Menu'),(15,'vi','6102d11f525a0f0d20637f712ec129e6',5,'Botble\\Menu\\Models\\Menu'),(16,'vi','11aebb9f08bc800689f3f6685c02f672',6,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta_backup`
--

DROP TABLE IF EXISTS `language_meta_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta_backup` (
  `lang_meta_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta_backup`
--

LOCK TABLES `language_meta_backup` WRITE;
/*!40000 ALTER TABLE `language_meta_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `language_meta_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0),(2,'Tiếng Việt','vi','vi','vn',0,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_folder_id_user_id_created_at_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1',1,'image/png',1318,'brands/1.png','[]','2022-01-04 21:10:44','2022-01-04 21:10:44',NULL),(2,0,'2',1,'image/png',999,'brands/2.png','[]','2022-01-04 21:10:44','2022-01-04 21:10:44',NULL),(3,0,'3',1,'image/png',1251,'brands/3.png','[]','2022-01-04 21:10:44','2022-01-04 21:10:44',NULL),(4,0,'4',1,'image/png',1539,'brands/4.png','[]','2022-01-04 21:10:44','2022-01-04 21:10:44',NULL),(5,0,'5',1,'image/png',1058,'brands/5.png','[]','2022-01-04 21:10:44','2022-01-04 21:10:44',NULL),(6,0,'6',1,'image/png',4165,'brands/6.png','[]','2022-01-04 21:10:45','2022-01-04 21:10:45',NULL),(7,0,'7',1,'image/png',1260,'brands/7.png','[]','2022-01-04 21:10:45','2022-01-04 21:10:45',NULL),(8,0,'1',2,'image/jpeg',75180,'product-categories/1.jpg','[]','2022-01-04 21:10:45','2022-01-04 21:10:45',NULL),(9,0,'2',2,'image/jpeg',81345,'product-categories/2.jpg','[]','2022-01-04 21:10:46','2022-01-04 21:10:46',NULL),(10,0,'3',2,'image/jpeg',99137,'product-categories/3.jpg','[]','2022-01-04 21:10:46','2022-01-04 21:10:46',NULL),(11,0,'4',2,'image/jpeg',108690,'product-categories/4.jpg','[]','2022-01-04 21:10:46','2022-01-04 21:10:46',NULL),(12,0,'5',2,'image/jpeg',53952,'product-categories/5.jpg','[]','2022-01-04 21:10:46','2022-01-04 21:10:46',NULL),(13,0,'6',2,'image/jpeg',47088,'product-categories/6.jpg','[]','2022-01-04 21:10:46','2022-01-04 21:10:46',NULL),(14,0,'7',2,'image/jpeg',48248,'product-categories/7.jpg','[]','2022-01-04 21:10:47','2022-01-04 21:10:47',NULL),(15,0,'8',2,'image/jpeg',67235,'product-categories/8.jpg','[]','2022-01-04 21:10:47','2022-01-04 21:10:47',NULL),(16,0,'1-1',3,'image/jpeg',88437,'products/1-1.jpg','[]','2022-01-04 21:10:47','2022-01-04 21:10:47',NULL),(17,0,'1-2',3,'image/jpeg',122690,'products/1-2.jpg','[]','2022-01-04 21:10:48','2022-01-04 21:10:48',NULL),(18,0,'1-3',3,'image/jpeg',117296,'products/1-3.jpg','[]','2022-01-04 21:10:48','2022-01-04 21:10:48',NULL),(19,0,'1',3,'image/jpeg',139025,'products/1.jpg','[]','2022-01-04 21:10:48','2022-01-04 21:10:48',NULL),(20,0,'10-1',3,'image/jpeg',183491,'products/10-1.jpg','[]','2022-01-04 21:10:49','2022-01-04 21:10:49',NULL),(21,0,'10',3,'image/jpeg',150956,'products/10.jpg','[]','2022-01-04 21:10:49','2022-01-04 21:10:49',NULL),(22,0,'11-1',3,'image/jpeg',246200,'products/11-1.jpg','[]','2022-01-04 21:10:50','2022-01-04 21:10:50',NULL),(23,0,'11',3,'image/jpeg',279390,'products/11.jpg','[]','2022-01-04 21:10:50','2022-01-04 21:10:50',NULL),(24,0,'12-1',3,'image/jpeg',249712,'products/12-1.jpg','[]','2022-01-04 21:10:50','2022-01-04 21:10:50',NULL),(25,0,'12',3,'image/jpeg',172221,'products/12.jpg','[]','2022-01-04 21:10:51','2022-01-04 21:10:51',NULL),(26,0,'13-1',3,'image/jpeg',257021,'products/13-1.jpg','[]','2022-01-04 21:10:51','2022-01-04 21:10:51',NULL),(27,0,'13',3,'image/jpeg',232917,'products/13.jpg','[]','2022-01-04 21:10:52','2022-01-04 21:10:52',NULL),(28,0,'14-1',3,'image/jpeg',201773,'products/14-1.jpg','[]','2022-01-04 21:10:52','2022-01-04 21:10:52',NULL),(29,0,'14',3,'image/jpeg',287194,'products/14.jpg','[]','2022-01-04 21:10:52','2022-01-04 21:10:52',NULL),(30,0,'15-1',3,'image/jpeg',273720,'products/15-1.jpg','[]','2022-01-04 21:10:53','2022-01-04 21:10:53',NULL),(31,0,'15',3,'image/jpeg',114265,'products/15.jpg','[]','2022-01-04 21:10:53','2022-01-04 21:10:53',NULL),(32,0,'16',3,'image/jpeg',97174,'products/16.jpg','[]','2022-01-04 21:10:54','2022-01-04 21:10:54',NULL),(33,0,'17',3,'image/jpeg',70179,'products/17.jpg','[]','2022-01-04 21:10:54','2022-01-04 21:10:54',NULL),(34,0,'18-1',3,'image/jpeg',287835,'products/18-1.jpg','[]','2022-01-04 21:10:55','2022-01-04 21:10:55',NULL),(35,0,'18-2',3,'image/jpeg',454869,'products/18-2.jpg','[]','2022-01-04 21:10:56','2022-01-04 21:10:56',NULL),(36,0,'18',3,'image/jpeg',257331,'products/18.jpg','[]','2022-01-04 21:10:57','2022-01-04 21:10:57',NULL),(37,0,'19-1',3,'image/jpeg',144008,'products/19-1.jpg','[]','2022-01-04 21:10:58','2022-01-04 21:10:58',NULL),(38,0,'19',3,'image/jpeg',188821,'products/19.jpg','[]','2022-01-04 21:10:58','2022-01-04 21:10:58',NULL),(39,0,'2-1',3,'image/jpeg',138167,'products/2-1.jpg','[]','2022-01-04 21:10:59','2022-01-04 21:10:59',NULL),(40,0,'2-2',3,'image/jpeg',230552,'products/2-2.jpg','[]','2022-01-04 21:10:59','2022-01-04 21:10:59',NULL),(41,0,'2-3',3,'image/jpeg',179301,'products/2-3.jpg','[]','2022-01-04 21:10:59','2022-01-04 21:10:59',NULL),(42,0,'2',3,'image/jpeg',130048,'products/2.jpg','[]','2022-01-04 21:11:00','2022-01-04 21:11:00',NULL),(43,0,'20-1',3,'image/jpeg',249712,'products/20-1.jpg','[]','2022-01-04 21:11:00','2022-01-04 21:11:00',NULL),(44,0,'20',3,'image/jpeg',172221,'products/20.jpg','[]','2022-01-04 21:11:01','2022-01-04 21:11:01',NULL),(45,0,'21-1',3,'image/jpeg',260746,'products/21-1.jpg','[]','2022-01-04 21:11:01','2022-01-04 21:11:01',NULL),(46,0,'21',3,'image/jpeg',124244,'products/21.jpg','[]','2022-01-04 21:11:02','2022-01-04 21:11:02',NULL),(47,0,'22-1',3,'image/jpeg',213139,'products/22-1.jpg','[]','2022-01-04 21:11:03','2022-01-04 21:11:03',NULL),(48,0,'22',3,'image/jpeg',105409,'products/22.jpg','[]','2022-01-04 21:11:04','2022-01-04 21:11:04',NULL),(49,0,'23-1',3,'image/jpeg',105560,'products/23-1.jpg','[]','2022-01-04 21:11:04','2022-01-04 21:11:04',NULL),(50,0,'23',3,'image/jpeg',177362,'products/23.jpg','[]','2022-01-04 21:11:05','2022-01-04 21:11:05',NULL),(51,0,'24-1',3,'image/jpeg',239311,'products/24-1.jpg','[]','2022-01-04 21:11:06','2022-01-04 21:11:06',NULL),(52,0,'24',3,'image/jpeg',363853,'products/24.jpg','[]','2022-01-04 21:11:07','2022-01-04 21:11:07',NULL),(53,0,'3-1',3,'image/jpeg',135741,'products/3-1.jpg','[]','2022-01-04 21:11:08','2022-01-04 21:11:08',NULL),(54,0,'3-2',3,'image/jpeg',123069,'products/3-2.jpg','[]','2022-01-04 21:11:08','2022-01-04 21:11:08',NULL),(55,0,'3-3',3,'image/jpeg',98645,'products/3-3.jpg','[]','2022-01-04 21:11:09','2022-01-04 21:11:09',NULL),(56,0,'3',3,'image/jpeg',201722,'products/3.jpg','[]','2022-01-04 21:11:10','2022-01-04 21:11:10',NULL),(57,0,'4-1',3,'image/jpeg',205312,'products/4-1.jpg','[]','2022-01-04 21:11:10','2022-01-04 21:11:10',NULL),(58,0,'4-2',3,'image/jpeg',223903,'products/4-2.jpg','[]','2022-01-04 21:11:11','2022-01-04 21:11:11',NULL),(59,0,'4-3',3,'image/jpeg',106593,'products/4-3.jpg','[]','2022-01-04 21:11:11','2022-01-04 21:11:11',NULL),(60,0,'4',3,'image/jpeg',456134,'products/4.jpg','[]','2022-01-04 21:11:12','2022-01-04 21:11:12',NULL),(61,0,'5-1',3,'image/jpeg',110014,'products/5-1.jpg','[]','2022-01-04 21:11:12','2022-01-04 21:11:12',NULL),(62,0,'5-2',3,'image/jpeg',104934,'products/5-2.jpg','[]','2022-01-04 21:11:12','2022-01-04 21:11:12',NULL),(63,0,'5-3',3,'image/jpeg',131628,'products/5-3.jpg','[]','2022-01-04 21:11:13','2022-01-04 21:11:13',NULL),(64,0,'5',3,'image/jpeg',214767,'products/5.jpg','[]','2022-01-04 21:11:13','2022-01-04 21:11:13',NULL),(65,0,'6-1',3,'image/jpeg',128041,'products/6-1.jpg','[]','2022-01-04 21:11:14','2022-01-04 21:11:14',NULL),(66,0,'6',3,'image/jpeg',148485,'products/6.jpg','[]','2022-01-04 21:11:15','2022-01-04 21:11:15',NULL),(67,0,'7-1',3,'image/jpeg',144008,'products/7-1.jpg','[]','2022-01-04 21:11:15','2022-01-04 21:11:15',NULL),(68,0,'7',3,'image/jpeg',188821,'products/7.jpg','[]','2022-01-04 21:11:16','2022-01-04 21:11:16',NULL),(69,0,'8-1',3,'image/jpeg',274272,'products/8-1.jpg','[]','2022-01-04 21:11:16','2022-01-04 21:11:16',NULL),(70,0,'8',3,'image/jpeg',217862,'products/8.jpg','[]','2022-01-04 21:11:17','2022-01-04 21:11:17',NULL),(71,0,'9-1',3,'image/jpeg',65624,'products/9-1.jpg','[]','2022-01-04 21:11:17','2022-01-04 21:11:17',NULL),(72,0,'9',3,'image/jpeg',159636,'products/9.jpg','[]','2022-01-04 21:11:17','2022-01-04 21:11:17',NULL),(73,0,'1',4,'image/jpeg',274660,'customers/1.jpg','[]','2022-01-04 21:11:19','2022-01-04 21:11:19',NULL),(74,0,'2',4,'image/jpeg',295031,'customers/2.jpg','[]','2022-01-04 21:11:19','2022-01-04 21:11:19',NULL),(75,0,'3',4,'image/jpeg',183576,'customers/3.jpg','[]','2022-01-04 21:11:20','2022-01-04 21:11:20',NULL),(76,0,'4',4,'image/jpeg',245360,'customers/4.jpg','[]','2022-01-04 21:11:20','2022-01-04 21:11:20',NULL),(77,0,'5',4,'image/jpeg',262908,'customers/5.jpg','[]','2022-01-04 21:11:20','2022-01-04 21:11:20',NULL),(78,0,'6',4,'image/jpeg',109600,'customers/6.jpg','[]','2022-01-04 21:11:20','2022-01-04 21:11:20',NULL),(79,0,'7',4,'image/jpeg',159280,'customers/7.jpg','[]','2022-01-04 21:11:21','2022-01-04 21:11:21',NULL),(80,0,'8',4,'image/jpeg',99998,'customers/8.jpg','[]','2022-01-04 21:11:21','2022-01-04 21:11:21',NULL),(83,0,'1-1',6,'image/png',653539,'sliders/1-1.png','[]','2022-01-04 21:11:24','2022-01-04 21:11:24',NULL),(84,0,'1-2',6,'image/png',688883,'sliders/1-2.png','[]','2022-01-04 21:11:24','2022-01-04 21:11:24',NULL),(85,0,'1-3',6,'image/png',249966,'sliders/1-3.png','[]','2022-01-04 21:11:25','2022-01-04 21:11:25',NULL),(86,0,'2-1',6,'image/png',662495,'sliders/2-1.png','[]','2022-01-04 21:11:26','2022-01-04 21:11:26',NULL),(87,0,'2-2',6,'image/png',691309,'sliders/2-2.png','[]','2022-01-04 21:11:26','2022-01-04 21:11:26',NULL),(88,0,'2-3',6,'image/png',249966,'sliders/2-3.png','[]','2022-01-04 21:11:27','2022-01-04 21:11:27',NULL),(89,0,'3-1',6,'image/png',164134,'sliders/3-1.png','[]','2022-01-04 21:11:28','2022-01-04 21:11:28',NULL),(90,0,'3-2',6,'image/png',140217,'sliders/3-2.png','[]','2022-01-04 21:11:29','2022-01-04 21:11:29',NULL),(91,0,'4-1',6,'image/png',415854,'sliders/4-1.png','[]','2022-01-04 21:11:30','2022-01-04 21:11:30',NULL),(92,0,'4-2',6,'image/png',407249,'sliders/4-2.png','[]','2022-01-04 21:11:31','2022-01-04 21:11:31',NULL),(93,0,'4-3',6,'image/png',249966,'sliders/4-3.png','[]','2022-01-04 21:11:31','2022-01-04 21:11:31',NULL),(94,0,'1',7,'image/jpeg',533441,'news/1.jpg','[]','2022-01-04 21:11:33','2022-01-04 21:11:33',NULL),(95,0,'10',7,'image/jpeg',342651,'news/10.jpg','[]','2022-01-04 21:11:33','2022-01-04 21:11:33',NULL),(96,0,'11',7,'image/jpeg',296740,'news/11.jpg','[]','2022-01-04 21:11:34','2022-01-04 21:11:34',NULL),(97,0,'2',7,'image/jpeg',292594,'news/2.jpg','[]','2022-01-04 21:11:34','2022-01-04 21:11:34',NULL),(98,0,'3',7,'image/jpeg',382930,'news/3.jpg','[]','2022-01-04 21:11:35','2022-01-04 21:11:35',NULL),(99,0,'4',7,'image/jpeg',403060,'news/4.jpg','[]','2022-01-04 21:11:35','2022-01-04 21:11:35',NULL),(100,0,'5',7,'image/jpeg',727445,'news/5.jpg','[]','2022-01-04 21:11:35','2022-01-04 21:11:35',NULL),(101,0,'6',7,'image/jpeg',361958,'news/6.jpg','[]','2022-01-04 21:11:36','2022-01-04 21:11:36',NULL),(102,0,'7',7,'image/jpeg',904027,'news/7.jpg','[]','2022-01-04 21:11:36','2022-01-04 21:11:36',NULL),(103,0,'8',7,'image/jpeg',351088,'news/8.jpg','[]','2022-01-04 21:11:37','2022-01-04 21:11:37',NULL),(104,0,'9',7,'image/jpeg',353751,'news/9.jpg','[]','2022-01-04 21:11:37','2022-01-04 21:11:37',NULL),(105,0,'1',8,'image/png',66416,'promotion/1.png','[]','2022-01-04 21:11:38','2022-01-04 21:11:38',NULL),(106,0,'2',8,'image/png',70051,'promotion/2.png','[]','2022-01-04 21:11:39','2022-01-04 21:11:39',NULL),(107,0,'3',8,'image/png',66675,'promotion/3.png','[]','2022-01-04 21:11:39','2022-01-04 21:11:39',NULL),(108,0,'4',8,'image/png',61720,'promotion/4.png','[]','2022-01-04 21:11:40','2022-01-04 21:11:40',NULL),(109,0,'5',8,'image/png',25894,'promotion/5.png','[]','2022-01-04 21:11:40','2022-01-04 21:11:40',NULL),(110,0,'6',8,'image/png',528935,'promotion/6.png','[]','2022-01-04 21:11:40','2022-01-04 21:11:40',NULL),(111,0,'favicon',9,'image/png',2343,'general/favicon.png','[]','2022-01-04 21:11:43','2022-01-04 21:11:43',NULL),(112,0,'icon-bag',9,'image/png',15551,'general/icon-bag.png','[]','2022-01-04 21:11:44','2022-01-04 21:11:44',NULL),(113,0,'icon-operator',9,'image/png',23328,'general/icon-operator.png','[]','2022-01-04 21:11:44','2022-01-04 21:11:44',NULL),(114,0,'icon-purchase',9,'image/png',22947,'general/icon-purchase.png','[]','2022-01-04 21:11:45','2022-01-04 21:11:45',NULL),(115,0,'icon-truck',9,'image/png',17131,'general/icon-truck.png','[]','2022-01-04 21:11:45','2022-01-04 21:11:45',NULL),(116,0,'logo-light',9,'image/png',1938,'general/logo-light.png','[]','2022-01-04 21:11:45','2022-01-04 21:11:45',NULL),(117,0,'logo',9,'image/png',2494,'general/logo.png','[]','2022-01-04 21:11:45','2022-01-04 21:11:45',NULL),(118,0,'open-graph-image',9,'image/png',293189,'general/open-graph-image.png','[]','2022-01-04 21:11:46','2022-01-04 21:11:46',NULL),(119,0,'payment-methods',9,'image/png',10634,'general/payment-methods.png','[]','2022-01-04 21:11:46','2022-01-04 21:11:46',NULL),(136,0,'1',18,'image/jpeg',62921,'flash-sales/1.jpg','[]','2022-05-01 01:30:42','2022-05-01 01:30:42',NULL),(137,0,'2',18,'image/jpeg',74131,'flash-sales/2.jpg','[]','2022-05-01 01:30:42','2022-05-01 01:30:42',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_parent_id_user_id_created_at_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'brands','brands',0,'2022-01-04 21:10:43','2022-01-04 21:10:43',NULL),(2,0,'product-categories','product-categories',0,'2022-01-04 21:10:45','2022-01-04 21:10:45',NULL),(3,0,'products','products',0,'2022-01-04 21:10:47','2022-01-04 21:10:47',NULL),(4,0,'customers','customers',0,'2022-01-04 21:11:19','2022-01-04 21:11:19',NULL),(6,0,'sliders','sliders',0,'2022-01-04 21:11:24','2022-01-04 21:11:24',NULL),(7,0,'news','news',0,'2022-01-04 21:11:33','2022-01-04 21:11:33',NULL),(8,0,'promotion','promotion',0,'2022-01-04 21:11:38','2022-01-04 21:11:38',NULL),(9,0,'general','general',0,'2022-01-04 21:11:43','2022-01-04 21:11:43',NULL),(18,0,'flash-sales','flash-sales',0,'2022-05-01 01:30:42','2022-05-01 01:30:42',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `media_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `location` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2022-01-04 21:11:43','2022-01-04 21:11:43'),(2,4,'main-menu','2022-01-04 21:11:43','2022-01-04 21:11:43');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `reference_id` int unsigned DEFAULT NULL,
  `reference_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `menu_nodes_index` (`parent_id`,`reference_id`,`reference_type`,`has_child`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',1,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(2,1,1,1,'Botble\\Page\\Models\\Page','',NULL,0,'Home 1',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(3,1,1,2,'Botble\\Page\\Models\\Page','/homepage-2',NULL,0,'Home 2',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(4,1,1,3,'Botble\\Page\\Models\\Page','/homepage-3',NULL,0,'Home 3',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(5,1,1,4,'Botble\\Page\\Models\\Page','/homepage-4',NULL,0,'Home 4',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(6,1,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',1,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(7,1,6,NULL,NULL,'/products',NULL,0,'Shop Grid - Full Width',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(8,1,6,NULL,NULL,'/products?layout=product-right-sidebar',NULL,0,'Shop Grid - Right Sidebar',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(9,1,6,NULL,NULL,'/products?layout=product-left-sidebar',NULL,0,'Shop Grid - Left Sidebar',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(10,1,6,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/hot-promotions',NULL,0,'Products Of Category',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(11,1,0,NULL,NULL,'#',NULL,0,'Product',NULL,'_self',1,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(12,1,11,NULL,NULL,'/products/smart-home-speaker',NULL,0,'Product Right Sidebar',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(13,1,11,NULL,NULL,'/products/headphone-ultra-bass',NULL,0,'Product Left Sidebar',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(14,1,11,NULL,NULL,'/products/boxed-bluetooth-headphone',NULL,0,'Product Full Width',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(15,1,0,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',1,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(16,1,15,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog Right Sidebar',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(17,1,15,13,'Botble\\Page\\Models\\Page','/blog-left-sidebar',NULL,0,'Blog Left Sidebar',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(18,1,15,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Single Post Right Sidebar',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(19,1,15,NULL,NULL,'/blog/sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',NULL,0,'Single Post Left Sidebar',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(20,1,15,NULL,NULL,'/blog/the-top-2020-handbag-trends-to-know',NULL,0,'Single Post Full Width',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(21,1,15,NULL,NULL,'/blog/how-to-match-the-color-of-your-handbag-with-an-outfit',NULL,0,'Single Post with Product Listing',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(22,1,0,14,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(23,1,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(24,2,0,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/hot-promotions',NULL,0,'Men',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(25,2,0,2,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/electronics',NULL,0,'Women',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(26,2,0,3,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/home-audio-theaters',NULL,0,'Accessories',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(27,2,0,4,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/tv-videos',NULL,0,'Shoes',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(28,2,0,5,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/camera-photos-videos',NULL,0,'Denim',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(29,2,0,6,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/cellphones-accessories',NULL,0,'Dress',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(30,3,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact Us',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(31,3,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'About Us',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(32,3,0,9,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(33,3,0,10,'Botble\\Page\\Models\\Page','/returns-exchanges',NULL,0,'Returns & Exchanges',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(34,3,0,11,'Botble\\Page\\Models\\Page','/shipping-delivery',NULL,0,'Shipping & Delivery',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(35,3,0,12,'Botble\\Page\\Models\\Page','/privacy-policy',NULL,0,'Privacy Policy',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(36,4,0,NULL,NULL,'/',NULL,0,'Trang chủ',NULL,'_self',1,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(37,4,36,1,'Botble\\Page\\Models\\Page','',NULL,0,'Trang chủ 1',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(38,4,36,2,'Botble\\Page\\Models\\Page','/homepage-2',NULL,0,'Trang chủ 2',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(39,4,36,3,'Botble\\Page\\Models\\Page','/homepage-3',NULL,0,'Trang chủ 3',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(40,4,36,4,'Botble\\Page\\Models\\Page','/homepage-4',NULL,0,'Trang chủ 4',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(41,4,0,NULL,NULL,'/products',NULL,0,'Bán hàng',NULL,'_self',1,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(42,4,41,NULL,NULL,'/products',NULL,0,'Tất cả sản phẩm',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(43,4,41,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/hot-promotions',NULL,0,'Danh mục sản phẩm',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(44,4,0,NULL,NULL,'#',NULL,0,'Sản phẩm',NULL,'_self',1,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(45,4,44,NULL,NULL,'/products/smart-home-speaker',NULL,0,'Sản phẩm Sidebar phải',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(46,4,44,NULL,NULL,'/products/headphone-ultra-bass',NULL,0,'Sản phẩm Sidebar trái',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(47,4,44,NULL,NULL,'/products/boxed-bluetooth-headphone',NULL,0,'Sản phẩm full width',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(48,4,0,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức',NULL,'_self',1,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(49,4,48,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức Sidebar phải',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(50,4,48,13,'Botble\\Page\\Models\\Page','/blog-left-sidebar',NULL,0,'Tin tức Sidebar trái',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(51,4,48,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Bài viết Sidebar phải',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(52,4,48,NULL,NULL,'/blog/sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',NULL,0,'Bài viết Sidebar trái',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(53,4,48,NULL,NULL,'/blog/the-top-2020-handbag-trends-to-know',NULL,0,'Bài viết Full Width',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(54,4,48,NULL,NULL,'/blog/how-to-match-the-color-of-your-handbag-with-an-outfit',NULL,0,'Bài viết with kèm sản phẩm',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(55,4,0,14,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(56,4,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(57,5,0,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/hot-promotions',NULL,0,'Dành cho nam',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(58,5,0,2,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/electronics',NULL,0,'Dành cho nữ',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(59,5,0,3,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/home-audio-theaters',NULL,0,'Phụ kiện',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(60,5,0,4,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/tv-videos',NULL,0,'Giày dép',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(61,5,0,5,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/camera-photos-videos',NULL,0,'Denim',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(62,5,0,6,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/cellphones-accessories',NULL,0,'Quần áo',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(63,6,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(64,6,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Về chúng tôi',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(65,6,0,9,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Điều khoản & quy định',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(66,6,0,10,'Botble\\Page\\Models\\Page','/returns-exchanges',NULL,0,'Chính sách đổi trả',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(67,6,0,11,'Botble\\Page\\Models\\Page','/shipping-delivery',NULL,0,'Chính sách vận chuyển',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43'),(68,6,0,12,'Botble\\Page\\Models\\Page','/privacy-policy',NULL,0,'Chính sách bảo mật',NULL,'_self',0,'2022-01-04 21:11:43','2022-01-04 21:11:43');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2022-01-04 21:11:43','2022-01-04 21:11:43'),(2,'Product categories','product-categories','published','2022-01-04 21:11:43','2022-01-04 21:11:43'),(3,'Information','information','published','2022-01-04 21:11:43','2022-01-04 21:11:43'),(4,'Menu chính','menu-chinh','published','2022-01-04 21:11:43','2022-01-04 21:11:43'),(5,'Product categories','danh-muc-san-pham','published','2022-01-04 21:11:43','2022-01-04 21:11:43'),(6,'Information','thong-tin','published','2022-01-04 21:11:43','2022-01-04 21:11:43');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'icon','[\"far fa-star\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:10:47','2022-01-04 21:10:47'),(2,'icon','[\"wowy-font-cpu\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:10:47','2022-01-04 21:10:47'),(3,'icon','[\"wowy-font-tshirt\"]',11,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:10:47','2022-01-04 21:10:47'),(4,'icon','[\"wowy-font-desktop\"]',12,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:10:47','2022-01-04 21:10:47'),(5,'icon','[\"wowy-font-home\"]',17,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:10:47','2022-01-04 21:10:47'),(6,'icon','[\"wowy-font-dress\"]',18,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:10:47','2022-01-04 21:10:47'),(7,'icon','[\"wowy-font-diamond\"]',19,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:10:47','2022-01-04 21:10:47'),(8,'icon','[\"far fa-microchip\"]',20,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:10:47','2022-01-04 21:10:47'),(9,'icon','[\"wowy-font-smartphone\"]',25,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:10:47','2022-01-04 21:10:47'),(10,'icon','[\"wowy-font-teddy-bear\"]',26,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:10:47','2022-01-04 21:10:47'),(11,'icon','[\"wowy-font-kite\"]',27,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:10:47','2022-01-04 21:10:47'),(12,'icon','[\"far fa-book\"]',28,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:10:47','2022-01-04 21:10:47'),(13,'icon','[\"far fa-car\"]',29,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:10:47','2022-01-04 21:10:47'),(14,'icon','[\"wowy-font-home\"]',30,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:10:47','2022-01-04 21:10:47'),(15,'layout','[\"product-right-sidebar\"]',1,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:11:18','2022-01-04 21:11:18'),(16,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:11:18','2022-01-04 21:11:18'),(17,'layout','[\"product-left-sidebar\"]',2,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:11:18','2022-01-04 21:11:18'),(18,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:11:18','2022-01-04 21:11:18'),(19,'layout','[\"product-full-width\"]',3,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:11:18','2022-01-04 21:11:18'),(20,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:11:18','2022-01-04 21:11:18'),(21,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:11:18','2022-01-04 21:11:18'),(22,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:11:18','2022-01-04 21:11:18'),(23,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:11:18','2022-01-04 21:11:18'),(24,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:11:18','2022-01-04 21:11:18'),(25,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:11:18','2022-01-04 21:11:18'),(26,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:11:18','2022-01-04 21:11:18'),(27,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:11:18','2022-01-04 21:11:18'),(28,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:11:18','2022-01-04 21:11:18'),(29,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:11:18','2022-01-04 21:11:18'),(30,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:11:18','2022-01-04 21:11:18'),(31,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:11:18','2022-01-04 21:11:18'),(32,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:11:18','2022-01-04 21:11:18'),(33,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:11:18','2022-01-04 21:11:18'),(34,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:11:18','2022-01-04 21:11:18'),(35,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:11:18','2022-01-04 21:11:18'),(36,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:11:18','2022-01-04 21:11:18'),(37,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:11:18','2022-01-04 21:11:18'),(38,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:11:18','2022-01-04 21:11:18'),(39,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:11:18','2022-01-04 21:11:18'),(40,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:11:18','2022-01-04 21:11:18'),(41,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',24,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:11:18','2022-01-04 21:11:18'),(50,'button_text','[\"Shop now\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(51,'subtitle','[\"Trade-In Offer\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(52,'highlight_text','[\"On All Products\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(53,'button_text','[\"Discover now\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(54,'subtitle','[\"Tech Promotions\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(55,'highlight_text','[\"Great Collection\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(56,'button_text','[\"Shop now\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(57,'subtitle','[\"Upcoming Offer\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(58,'highlight_text','[\"Manufacturer\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(59,'simple_slider_style','[\"style-2\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-01-04 21:11:32','2022-01-04 21:11:32'),(60,'button_text','[\"Shop now\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(61,'subtitle','[\"Trade-In Offer\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(62,'highlight_text','[\"On All Products\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(63,'button_text','[\"Discover now\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(64,'subtitle','[\"Tech Promotions\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(65,'highlight_text','[\"Great Collection\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(66,'button_text','[\"Shop now\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(67,'subtitle','[\"Upcoming Offer\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(68,'highlight_text','[\"Manufacturer\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(69,'simple_slider_style','[\"style-3\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-01-04 21:11:32','2022-01-04 21:11:32'),(70,'button_text','[\"Shop now\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(71,'subtitle','[\"Trade-In Offer\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(72,'highlight_text','[\"On All Products\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(73,'button_text','[\"Discover now\"]',8,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(74,'subtitle','[\"Tech Promotions\"]',8,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(75,'highlight_text','[\"Great Collection\"]',8,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(76,'simple_slider_style','[\"style-4\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-01-04 21:11:32','2022-01-04 21:11:32'),(77,'button_text','[\"Shop now\"]',9,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(78,'subtitle','[\"Trade-In Offer\"]',9,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(79,'highlight_text','[\"On All Products\"]',9,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(80,'button_text','[\"Discover now\"]',10,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(81,'subtitle','[\"Tech Promotions\"]',10,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(82,'highlight_text','[\"Great Collection\"]',10,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(83,'button_text','[\"Shop now\"]',11,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(84,'subtitle','[\"Upcoming Offer\"]',11,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(85,'highlight_text','[\"Manufacturer\"]',11,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(86,'button_text','[\"Mua ngay\"]',12,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(87,'subtitle','[\"Khuy\\u1ebfn m\\u00e3i\"]',12,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(88,'highlight_text','[\"T\\u1ea5t c\\u1ea3 s\\u1ea3n ph\\u1ea9m\"]',12,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(89,'button_text','[\"Kh\\u00e1m ph\\u00e1 ngay\"]',13,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(90,'subtitle','[\"Khuy\\u1ebfn m\\u00e3i s\\u1ea3n ph\\u1ea9m c\\u00f4ng ngh\\u1ec7\"]',13,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(91,'highlight_text','[\"B\\u1ed9 s\\u01b0u t\\u1eadp t\\u1ed1t nh\\u1ea5t\"]',13,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(92,'button_text','[\"Mua ngay\"]',14,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(93,'subtitle','[\"Khuy\\u1ebfn m\\u00e3i s\\u1eafp t\\u1edbi\"]',14,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(94,'highlight_text','[\"Nh\\u00e0 cung c\\u1ea5p\"]',14,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(95,'simple_slider_style','[\"style-2\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-01-04 21:11:32','2022-01-04 21:11:32'),(96,'button_text','[\"Mua ngay\"]',15,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(97,'subtitle','[\"Khuy\\u1ebfn m\\u00e3i\"]',15,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(98,'highlight_text','[\"T\\u1ea5t c\\u1ea3 s\\u1ea3n ph\\u1ea9m\"]',15,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(99,'button_text','[\"Kh\\u00e1m ph\\u00e1 ngay\"]',16,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(100,'subtitle','[\"Khuy\\u1ebfn m\\u00e3i s\\u1ea3n ph\\u1ea9m c\\u00f4ng ngh\\u1ec7\"]',16,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(101,'highlight_text','[\"B\\u1ed9 s\\u01b0u t\\u1eadp t\\u1ed1t nh\\u1ea5t\"]',16,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(102,'button_text','[\"Mua ngay\"]',17,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(103,'subtitle','[\"Khuy\\u1ebfn m\\u00e3i s\\u1eafp t\\u1edbi\"]',17,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(104,'highlight_text','[\"Nh\\u00e0 cung c\\u1ea5p\"]',17,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(105,'simple_slider_style','[\"style-3\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-01-04 21:11:32','2022-01-04 21:11:32'),(106,'button_text','[\"Mua ngay\"]',18,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(107,'subtitle','[\"Khuy\\u1ebfn m\\u00e3i\"]',18,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(108,'highlight_text','[\"T\\u1ea5t c\\u1ea3 s\\u1ea3n ph\\u1ea9m\"]',18,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(109,'button_text','[\"Kh\\u00e1m ph\\u00e1 ngay\"]',19,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(110,'subtitle','[\"Khuy\\u1ebfn m\\u00e3i s\\u1ea3n ph\\u1ea9m c\\u00f4ng ngh\\u1ec7\"]',19,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(111,'highlight_text','[\"B\\u1ed9 s\\u01b0u t\\u1eadp t\\u1ed1t nh\\u1ea5t\"]',19,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:32','2022-01-04 21:11:32'),(112,'simple_slider_style','[\"style-4\"]',8,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-01-04 21:11:32','2022-01-04 21:11:32'),(113,'button_text','[\"Mua ngay\"]',20,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:33','2022-01-04 21:11:33'),(114,'subtitle','[\"Khuy\\u1ebfn m\\u00e3i\"]',20,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:33','2022-01-04 21:11:33'),(115,'highlight_text','[\"T\\u1ea5t c\\u1ea3 s\\u1ea3n ph\\u1ea9m\"]',20,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:33','2022-01-04 21:11:33'),(116,'button_text','[\"Kh\\u00e1m ph\\u00e1 ngay\"]',21,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:33','2022-01-04 21:11:33'),(117,'subtitle','[\"Khuy\\u1ebfn m\\u00e3i s\\u1ea3n ph\\u1ea9m c\\u00f4ng ngh\\u1ec7\"]',21,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:33','2022-01-04 21:11:33'),(118,'highlight_text','[\"B\\u1ed9 s\\u01b0u t\\u1eadp t\\u1ed1t nh\\u1ea5t\"]',21,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:33','2022-01-04 21:11:33'),(119,'button_text','[\"Mua ngay\"]',22,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:33','2022-01-04 21:11:33'),(120,'subtitle','[\"Khuy\\u1ebfn m\\u00e3i s\\u1eafp t\\u1edbi\"]',22,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:33','2022-01-04 21:11:33'),(121,'highlight_text','[\"Nh\\u00e0 cung c\\u1ea5p\"]',22,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-01-04 21:11:33','2022-01-04 21:11:33'),(122,'layout','[\"blog-post-right-sidebar\"]',1,'Botble\\Blog\\Models\\Post','2022-01-04 21:11:38','2022-01-04 21:11:38'),(123,'layout','[\"blog-post-left-sidebar\"]',2,'Botble\\Blog\\Models\\Post','2022-01-04 21:11:38','2022-01-04 21:11:38'),(124,'layout','[\"blog-post-full-width\"]',3,'Botble\\Blog\\Models\\Post','2022-01-04 21:11:38','2022-01-04 21:11:38'),(125,'layout','[\"blog-post-full-width\"]',4,'Botble\\Blog\\Models\\Post','2022-01-04 21:11:38','2022-01-04 21:11:38'),(126,'header_style','[\"header-style-2\"]',2,'Botble\\Page\\Models\\Page','2022-01-04 21:11:38','2022-01-04 21:11:38'),(127,'expanding_product_categories_on_the_homepage','[\"yes\"]',2,'Botble\\Page\\Models\\Page','2022-01-04 21:11:38','2022-01-04 21:11:38'),(128,'header_style','[\"header-style-3\"]',3,'Botble\\Page\\Models\\Page','2022-01-04 21:11:38','2022-01-04 21:11:38'),(129,'header_style','[\"header-style-4\"]',4,'Botble\\Page\\Models\\Page','2022-01-04 21:11:38','2022-01-04 21:11:38'),(130,'button_text','[\"Shop now\"]',1,'Botble\\Ads\\Models\\Ads','2022-01-04 21:11:41','2022-01-04 21:11:41'),(131,'subtitle','[\"Save 20% on\\niPhone 12\"]',1,'Botble\\Ads\\Models\\Ads','2022-01-04 21:11:41','2022-01-04 21:11:41'),(132,'button_text','[\"Shop now\"]',2,'Botble\\Ads\\Models\\Ads','2022-01-04 21:11:41','2022-01-04 21:11:41'),(133,'subtitle','[\"Great Camera\\nCollection\"]',2,'Botble\\Ads\\Models\\Ads','2022-01-04 21:11:41','2022-01-04 21:11:41'),(134,'button_text','[\"Shop now\"]',3,'Botble\\Ads\\Models\\Ads','2022-01-04 21:11:41','2022-01-04 21:11:41'),(135,'subtitle','[\"Shop Today\\u2019s\\nDeals & Offers\"]',3,'Botble\\Ads\\Models\\Ads','2022-01-04 21:11:41','2022-01-04 21:11:41'),(136,'button_text','[\"Shop now\"]',4,'Botble\\Ads\\Models\\Ads','2022-01-04 21:11:41','2022-01-04 21:11:41'),(137,'subtitle','[\"Save 17% on\\nAssus Laptop\"]',4,'Botble\\Ads\\Models\\Ads','2022-01-04 21:11:41','2022-01-04 21:11:41'),(138,'button_text','[\"Shop now\"]',5,'Botble\\Ads\\Models\\Ads','2022-01-04 21:11:41','2022-01-04 21:11:41'),(139,'subtitle','[\"Save 20% on\\niPhone 12\"]',5,'Botble\\Ads\\Models\\Ads','2022-01-04 21:11:41','2022-01-04 21:11:41'),(140,'button_text','[\"Learn more\"]',6,'Botble\\Ads\\Models\\Ads','2022-01-04 21:11:41','2022-01-04 21:11:41'),(141,'subtitle','[\"We\'re an Apple\\nAuthorised Service Provider\"]',6,'Botble\\Ads\\Models\\Ads','2022-01-04 21:11:41','2022-01-04 21:11:41'),(142,'vi_subtitle','[\"Save 20% on\\niPhone 12\"]',1,'Botble\\Ads\\Models\\Ads','2022-01-04 21:11:41','2022-01-04 21:11:41'),(143,'vi_button_text','[\"Shop now\"]',1,'Botble\\Ads\\Models\\Ads','2022-01-04 21:11:41','2022-01-04 21:11:41'),(144,'vi_subtitle','[\"Great Camera\\nCollection\"]',2,'Botble\\Ads\\Models\\Ads','2022-01-04 21:11:41','2022-01-04 21:11:41'),(145,'vi_button_text','[\"Shop now\"]',2,'Botble\\Ads\\Models\\Ads','2022-01-04 21:11:41','2022-01-04 21:11:41'),(146,'vi_subtitle','[\"Shop Today\\u2019s\\nDeals & Offers\"]',3,'Botble\\Ads\\Models\\Ads','2022-01-04 21:11:41','2022-01-04 21:11:41'),(147,'vi_button_text','[\"Shop now\"]',3,'Botble\\Ads\\Models\\Ads','2022-01-04 21:11:41','2022-01-04 21:11:41'),(148,'vi_subtitle','[\"Save 17% on\\nAssus Laptop\"]',4,'Botble\\Ads\\Models\\Ads','2022-01-04 21:11:41','2022-01-04 21:11:41'),(149,'vi_button_text','[\"Shop now\"]',4,'Botble\\Ads\\Models\\Ads','2022-01-04 21:11:41','2022-01-04 21:11:41'),(150,'vi_subtitle','[\"Save 20% on\\niPhone 12\"]',5,'Botble\\Ads\\Models\\Ads','2022-01-04 21:11:41','2022-01-04 21:11:41'),(151,'vi_button_text','[\"Shop now\"]',5,'Botble\\Ads\\Models\\Ads','2022-01-04 21:11:41','2022-01-04 21:11:41'),(152,'vi_subtitle','[\"We\'re an Apple\\nAuthorised Service Provider\"]',6,'Botble\\Ads\\Models\\Ads','2022-01-04 21:11:41','2022-01-04 21:11:41'),(153,'vi_button_text','[\"Learn more\"]',6,'Botble\\Ads\\Models\\Ads','2022-01-04 21:11:41','2022-01-04 21:11:41'),(218,'subtitle','[\"Limited quantities.\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2022-05-01 01:30:42','2022-05-01 01:30:42'),(219,'image','[\"flash-sales\\/1.jpg\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2022-05-01 01:30:42','2022-05-01 01:30:42'),(220,'subtitle','[\"Computers & Laptop\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2022-05-01 01:30:43','2022-05-01 01:30:43'),(221,'image','[\"flash-sales\\/2.jpg\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2022-05-01 01:30:43','2022-05-01 01:30:43'),(222,'vi_subtitle','[\"Gi\\u1edbi h\\u1ea1n s\\u1ed1 l\\u01b0\\u1ee3ng\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2022-05-01 01:30:43','2022-05-01 01:30:43'),(223,'vi_image','[\"flash-sales\\/1.jpg\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2022-05-01 01:30:43','2022-05-01 01:30:43'),(224,'vi_subtitle','[\"M\\u00e1y t\\u00ednh b\\u00e0n & Laptop\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2022-05-01 01:30:43','2022-05-01 01:30:43'),(225,'vi_image','[\"flash-sales\\/2.jpg\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2022-05-01 01:30:43','2022-05-01 01:30:43');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_resets_table',1),(5,'2015_06_18_033822_create_blog_table',1),(6,'2015_06_29_025744_create_audit_history',1),(7,'2016_06_10_230148_create_acl_tables',1),(8,'2016_06_14_230857_create_menus_table',1),(9,'2016_06_17_091537_create_contacts_table',1),(10,'2016_06_28_221418_create_pages_table',1),(11,'2016_10_03_032336_create_languages_table',1),(12,'2016_10_05_074239_create_setting_table',1),(13,'2016_10_07_193005_create_translations_table',1),(14,'2016_11_28_032840_create_dashboard_widget_tables',1),(15,'2016_12_16_084601_create_widgets_table',1),(16,'2017_05_09_070343_create_media_tables',1),(17,'2017_05_18_080441_create_payment_tables',1),(18,'2017_07_11_140018_create_simple_slider_table',1),(19,'2017_10_24_154832_create_newsletter_table',1),(20,'2017_11_03_070450_create_slug_table',1),(21,'2018_07_09_221238_create_faq_table',1),(22,'2019_01_05_053554_create_jobs_table',1),(23,'2019_08_19_000000_create_failed_jobs_table',1),(24,'2020_03_05_041139_create_ecommerce_tables',1),(25,'2020_09_22_135635_update_taxes_table',1),(26,'2020_09_29_101006_add_views_into_ec_products_table',1),(27,'2020_10_01_152311_make_column_image_in_product_attributes_table_nullable',1),(28,'2020_10_06_073439_improve_ecommerce_database',1),(29,'2020_11_01_040415_update_table_ec_order_addresses',1),(30,'2020_11_04_091510_make_column_phone_in_order_addresses_nullable',1),(31,'2020_11_18_150916_ads_create_ads_table',1),(32,'2020_11_30_015801_update_table_ec_product_categories',1),(33,'2021_01_01_044147_ecommerce_create_flash_sale_table',1),(34,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',1),(35,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',1),(36,'2021_02_16_092633_remove_default_value_for_author_type',1),(37,'2021_02_18_073505_update_table_ec_reviews',1),(38,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',1),(39,'2021_03_10_025153_change_column_tax_amount',1),(40,'2021_03_20_033103_add_column_availability_to_table_ec_products',1),(41,'2021_03_27_144913_add_customer_type_into_table_payments',1),(42,'2021_04_28_074008_ecommerce_create_product_label_table',1),(43,'2021_05_24_034720_make_column_currency_nullable',1),(44,'2021_05_31_173037_ecommerce_create_ec_products_translations',1),(45,'2021_06_28_153141_correct_slugs_data',1),(46,'2021_08_02_084121_fix_old_shortcode',1),(47,'2021_08_09_161302_add_metadata_column_to_payments_table',1),(48,'2021_08_17_105016_remove_column_currency_id_in_some_tables',1),(49,'2021_08_30_142128_add_images_column_to_ec_reviews_table',1),(50,'2021_09_01_115151_remove_unused_fields_in_ec_products',1),(51,'2021_10_04_030050_add_column_created_by_to_table_ec_products',1),(52,'2021_10_05_122616_add_status_column_to_ec_customers_table',1),(53,'2021_10_19_020859_update_metadata_field',1),(54,'2021_10_25_021023_fix-priority-load-for-language-advanced',1),(55,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',1),(56,'2021_11_23_071403_correct_languages_for_product_variations',1),(57,'2021_11_28_031808_add_product_tags_translations',1),(58,'2021_12_01_031123_add_featured_image_to_ec_products',1),(59,'2021_12_02_035301_add_ads_translations_table',1),(60,'2021_12_03_030600_create_blog_translations',1),(61,'2021_12_03_075608_create_page_translations',1),(62,'2021_12_03_082134_create_faq_translations',1),(63,'2022_01_01_033107_update_table_ec_shipments',1),(64,'2019_11_18_061011_create_country_table',2),(65,'2021_12_03_084118_create_location_translations',2),(66,'2021_12_03_094518_migrate_old_location_data',2),(67,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',2),(68,'2022_01_16_085908_improve_plugin_location',2),(69,'2022_02_16_042457_improve_product_attribute_sets',2),(70,'2022_03_22_075758_correct_product_name',3),(71,'2022_04_19_113334_add_index_to_ec_products',4),(72,'2022_04_19_113923_add_index_to_table_posts',4),(73,'2022_04_20_100851_add_index_to_media_table',4),(74,'2022_04_20_101046_add_index_to_menu_table',4),(75,'2022_04_28_144405_remove_unused_table',5);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[simple-slider key=\"home-slider-1\"][/simple-slider]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Free Shipping\" subtitle1=\"Orders $50 or more\" icon2=\"general/icon-purchase.png\" title2=\"Free Returns\" subtitle2=\"Within 30 days\" icon3=\"general/icon-bag.png\" title3=\"Get 20% Off 1 Item\" subtitle3=\"When you sign up\" icon4=\"general/icon-operator.png\" title4=\"Support Center\" subtitle4=\"24/7 amazing services\"][/site-features]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Featured Brands\"][/featured-brands]</div><div>[product-category-products category_id=\"17\"][/product-category-products]</div><div>[featured-news title=\"Visit Our Blog\"][/featured-news]</div>',1,NULL,'homepage',0,NULL,'published','2022-01-04 21:11:38','2022-01-04 21:11:38'),(2,'Homepage 2','<div>[simple-slider key=\"home-slider-2\"][/simple-slider]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Featured Brands\"][/featured-brands]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[product-category-products category_id=\"17\"][/product-category-products]</div><div>[featured-news title=\"Visit Our Blog\"][/featured-news]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Free Shipping\" subtitle1=\"Orders $50 or more\" icon2=\"general/icon-purchase.png\" title2=\"Free Returns\" subtitle2=\"Within 30 days\" icon3=\"general/icon-bag.png\" title3=\"Get 20% Off 1 Item\" subtitle3=\"When you sign up\" icon4=\"general/icon-operator.png\" title4=\"Support Center\" subtitle4=\"24/7 amazing services\"][/site-features]</div>',1,NULL,'homepage',0,NULL,'published','2022-01-04 21:11:38','2022-01-04 21:11:38'),(3,'Homepage 3','<div>[simple-slider key=\"home-slider-3\" ads_1=\"ILSDKVYFGXPJ\" ads_2=\"IZ6WU8KUALYE\"][/simple-slider]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Free Shipping\" subtitle1=\"Orders $50 or more\" icon2=\"general/icon-purchase.png\" title2=\"Free Returns\" subtitle2=\"Within 30 days\" icon3=\"general/icon-bag.png\" title3=\"Get 20% Off 1 Item\" subtitle3=\"When you sign up\" icon4=\"general/icon-operator.png\" title4=\"Support Center\" subtitle4=\"24/7 amazing services\"][/site-features]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-brands title=\"Featured Brands\"][/featured-brands]</div><div>[product-category-products category_id=\"17\"][/product-category-products]</div><div>[featured-news title=\"Visit Our Blog\"][/featured-news]</div>',1,NULL,'homepage',0,NULL,'published','2022-01-04 21:11:38','2022-01-04 21:11:38'),(4,'Homepage 4','<div>[simple-slider key=\"home-slider-4\"][/simple-slider]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Free Shipping\" subtitle1=\"Orders $50 or more\" icon2=\"general/icon-purchase.png\" title2=\"Free Returns\" subtitle2=\"Within 30 days\" icon3=\"general/icon-bag.png\" title3=\"Get 20% Off 1 Item\" subtitle3=\"When you sign up\" icon4=\"general/icon-operator.png\" title4=\"Support Center\" subtitle4=\"24/7 amazing services\"][/site-features]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Featured Brands\"][/featured-brands]</div><div>[product-category-products category_id=\"17\"][/product-category-products]</div><div>[featured-news title=\"Visit Our Blog\"][/featured-news]</div>',1,NULL,'homepage',0,NULL,'published','2022-01-04 21:11:38','2022-01-04 21:11:38'),(5,'Blog','<p>---</p>',1,NULL,'blog-right-sidebar',0,NULL,'published','2022-01-04 21:11:38','2022-01-04 21:11:38'),(6,'Contact','<p>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</p><p>[our-offices][/our-offices]</p><p>[contact-form][/contact-form]</p>',1,NULL,'default',0,NULL,'published','2022-01-04 21:11:38','2022-01-04 21:11:38'),(7,'About us','<p>While the Owl had the door as you say things are \"much of a well?\' The Dormouse had closed its eyes by this time.) \'You\'re nothing but out-of-the-way things had happened lately, that Alice said; but was dreadfully puzzled by the hedge!\' then silence, and then hurried on, Alice started to her feet, they seemed to think about it, and found quite a long silence after this, and Alice joined the procession, wondering very much at this, that she was now about a thousand times as large as himself.</p><p>Alice, that she remained the same when I grow up, I\'ll write one--but I\'m grown up now,\' she said, \'for her hair goes in such long ringlets, and mine doesn\'t go in at once.\' However, she did not dare to laugh; and, as a last resource, she put it. She went on growing, and, as the Dormouse into the wood. \'If it had lost something; and she ran across the garden, called out as loud as she had put on his spectacles. \'Where shall I begin, please your Majesty,\' said the Queen, the royal children.</p><p>I can remember feeling a little snappishly. \'You\'re enough to try the effect: the next moment a shower of little cartwheels, and the pool a little sharp bark just over her head in the lap of her age knew the right words,\' said poor Alice, \'to pretend to be no chance of getting up and said, \'It WAS a narrow escape!\' said Alice, a little of the Shark, But, when the race was over. Alice was silent. The King laid his hand upon her knee, and looking anxiously about her. \'Oh, do let me help to undo.</p><p>And when I grow up, I\'ll write one--but I\'m grown up now,\' she added aloud. \'Do you take me for his housemaid,\' she said this, she came upon a time she had peeped into the darkness as hard as she was now about a whiting before.\' \'I can tell you just now what the moral of THAT is--\"Take care of the door as you say it.\' \'That\'s nothing to do: once or twice she had known them all her life. Indeed, she had a bone in his turn; and both creatures hid their faces in their mouths. So they got thrown.</p>',1,NULL,'default',0,NULL,'published','2022-01-04 21:11:38','2022-01-04 21:11:38'),(8,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',0,NULL,'published','2022-01-04 21:11:38','2022-01-04 21:11:38'),(9,'Terms & Conditions','<p>And in she went. Once more she found to be patted on the twelfth?\' Alice went timidly up to her very much confused, \'I don\'t even know what they\'re like.\' \'I believe so,\' Alice replied in an agony of terror. \'Oh, there goes his PRECIOUS nose\'; as an explanation; \'I\'ve none of them say, \'Look out now, Five! Don\'t go splashing paint over me like that!\' He got behind him, and said \'No, never\') \'--so you can find them.\' As she said aloud. \'I shall do nothing of the trees as well as pigs, and was.</p><p>Alice, a good deal until she had never heard before, \'Sure then I\'m here! Digging for apples, indeed!\' said the Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and Northumbria--\"\' \'Ugh!\' said the Cat, as soon as she ran; but the Mouse was bristling all over, and both creatures hid their faces in their proper places--ALL,\' he repeated with great emphasis, looking hard at Alice for protection. \'You shan\'t be able! I shall only look up and beg for its dinner, and all the time she had.</p><p>When the procession came opposite to Alice, \'Have you seen the Mock Turtle at last, more calmly, though still sobbing a little of her voice. Nobody moved. \'Who cares for fish, Game, or any other dish? Who would not join the dance? \"You can really have no notion how delightful it will be the right distance--but then I wonder what I like\"!\' \'You might just as she leant against a buttercup to rest herself, and once she remembered having seen in her pocket) till she was beginning to grow larger.</p><p>I hadn\'t mentioned Dinah!\' she said this, she was beginning very angrily, but the Hatter added as an explanation; \'I\'ve none of YOUR business, Two!\' said Seven. \'Yes, it IS his business!\' said Five, in a trembling voice to a snail. \"There\'s a porpoise close behind her, listening: so she went on, taking first one side and then Alice dodged behind a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they lived at the great concert given by the English, who wanted leaders, and had.</p>',1,NULL,'default',0,NULL,'published','2022-01-04 21:11:38','2022-01-04 21:11:38'),(10,'Returns & Exchanges','<p>An obstacle that came between Him, and ourselves, and it. Don\'t let me help to undo it!\' \'I shall sit here,\' he said, \'on and off, for days and days.\' \'But what happens when one eats cake, but Alice had not long to doubt, for the immediate adoption of more broken glass.) \'Now tell me, Pat, what\'s that in some alarm. This time Alice waited till she had forgotten the little magic bottle had now had its full effect, and she felt certain it must be really offended. \'We won\'t talk about her other.</p><p>However, the Multiplication Table doesn\'t signify: let\'s try Geography. London is the same thing, you know.\' He was looking up into a doze; but, on being pinched by the prisoner to--to somebody.\' \'It must have been that,\' said the Gryphon. \'I mean, what makes them so shiny?\' Alice looked all round the court and got behind Alice as it can talk: at any rate a book written about me, that there was silence for some time without hearing anything more: at last came a little bottle that stood near.</p><p>Hatter, and here the Mock Turtle\'s heavy sobs. Lastly, she pictured to herself \'This is Bill,\' she gave her one, they gave him two, You gave us three or more; They all returned from him to be lost, as she remembered how small she was dozing off, and Alice was just going to remark myself.\' \'Have you guessed the riddle yet?\' the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was certainly not becoming. \'And that\'s the jury, and the other birds tittered audibly. \'What I was sent for.\' \'You.</p><p>As she said to herself, and shouted out, \'You\'d better not talk!\' said Five. \'I heard every word you fellows were saying.\' \'Tell us a story!\' said the Queen, who were lying round the hall, but they all stopped and looked at the time it all came different!\' the Mock Turtle, and to hear her try and repeat something now. Tell her to wink with one finger pressed upon its forehead (the position in which case it would be offended again. \'Mine is a raven like a sky-rocket!\' \'So you did, old fellow!\'.</p>',1,NULL,'default',0,NULL,'published','2022-01-04 21:11:38','2022-01-04 21:11:38'),(11,'Shipping & Delivery','<p>Edgar Atheling to meet William and offer him the crown. William\'s conduct at first she would catch a bad cold if she could not possibly reach it: she could see, as she was surprised to find it out, we should all have our heads cut off, you know. But do cats eat bats?\' and sometimes, \'Do bats eat cats?\' for, you see, Alice had been anxiously looking across the field after it, never once considering how in the lock, and to hear it say, as it went, \'One side of WHAT?\' thought Alice to find that.</p><p>Bill! the master says you\'re to go on. \'And so these three weeks!\' \'I\'m very sorry you\'ve been annoyed,\' said Alice, surprised at her feet, they seemed to be Involved in this affair, He trusts to you never had fits, my dear, I think?\' he said do. Alice looked all round the refreshments!\' But there seemed to Alice for some while in silence. Alice noticed with some surprise that the meeting adjourn, for the rest of the game, the Queen say only yesterday you deserved to be a footman in livery.</p><p>And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then she remembered how small she was nine feet high, and was coming to, but it all came different!\' the Mock Turtle replied in an offended tone. And she kept fanning herself all the jurors had a wink of sleep these three weeks!\' \'I\'m very sorry you\'ve been annoyed,\' said Alice, a little now and then, and holding it to be otherwise than what.</p><p>Dormouse followed him: the March Hare. \'Sixteenth,\' added the Gryphon, \'she wants for to know your history, you know,\' the Hatter said, tossing his head off outside,\' the Queen ordering off her knowledge, as there was a most extraordinary noise going on within--a constant howling and sneezing, and every now and then another confusion of voices--\'Hold up his head--Brandy now--Don\'t choke him--How was it, old fellow? What happened to you? Tell us all about as much right,\' said the Mock Turtle.</p>',1,NULL,'default',0,NULL,'published','2022-01-04 21:11:38','2022-01-04 21:11:38'),(12,'Privacy Policy','<p>I BEG your pardon!\' cried Alice again, in a tone of great surprise. \'Of course twinkling begins with an M, such as mouse-traps, and the three gardeners who were lying on their slates, and then added them up, and reduced the answer to it?\' said the March Hare. Alice sighed wearily. \'I think I may as well as I was a dispute going on rather better now,\' she said, by way of expressing yourself.\' The baby grunted again, so she went on again: \'Twenty-four hours, I THINK; or is it twelve? I--\' \'Oh.</p><p>Alice ventured to ask. \'Suppose we change the subject. \'Ten hours the first sentence in her pocket, and pulled out a history of the treat. When the Mouse was bristling all over, and both creatures hid their faces in their mouths--and they\'re all over with William the Conqueror.\' (For, with all her fancy, that: he hasn\'t got no sorrow, you know. Please, Ma\'am, is this New Zealand or Australia?\' (and she tried her best to climb up one of its right ear and left foot, so as to size,\' Alice hastily.</p><p>Hatter: and in a tone of great relief. \'Call the next thing was snorting like a steam-engine when she first saw the White Rabbit: it was her turn or not. So she stood still where she was, and waited. When the sands are all pardoned.\' \'Come, THAT\'S a good deal: this fireplace is narrow, to be seen--everything seemed to quiver all over with William the Conqueror.\' (For, with all their simple sorrows, and find a pleasure in all directions, \'just like a thunderstorm. \'A fine day, your Majesty!\'.</p><p>Mock Turtle said with some curiosity. \'What a curious plan!\' exclaimed Alice. \'And ever since that,\' the Hatter asked triumphantly. Alice did not at all like the three were all shaped like the three gardeners who were all locked; and when she was trying to make personal remarks,\' Alice said nothing: she had finished, her sister on the whole court was in the after-time, be herself a grown woman; and how she would keep, through all her coaxing. Hardly knowing what she did, she picked her way.</p>',1,NULL,'default',0,NULL,'published','2022-01-04 21:11:38','2022-01-04 21:11:38'),(13,'Blog Left Sidebar','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-left-sidebar',0,NULL,'published','2022-01-04 21:11:38','2022-01-04 21:11:38'),(14,'FAQ','<div>[faqs][/faqs]</div>',1,NULL,'default',0,NULL,'published','2022-01-04 21:11:38','2022-01-04 21:11:38');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
INSERT INTO `pages_translations` VALUES ('vi',1,'Trang chủ',NULL,'<div>[simple-slider key=\"slider-trang-chu-1\"][/simple-slider]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Miễn phí vận chuyển\" subtitle1=\"Cho đơn hàng từ $50\" icon2=\"general/icon-purchase.png\" title2=\"Miễn phí đổi trả\" subtitle2=\"Trong vòng 30 ngày\" icon3=\"general/icon-bag.png\" title3=\"Giảm 20% mỗi 1 sản phẩm\" subtitle3=\"Khi bạn đăng ký thành viên\" icon4=\"general/icon-operator.png\" title4=\"Hỗ trợ\" subtitle4=\"24/7 dịch vụ tuyệt vời\"][/site-features]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[product-collections title=\"Sản phẩm độc quyền\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[featured-products title=\"Sản phẩm nổi bật\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Thương hiệu nổi bật\"][/featured-brands]</div><div>[product-category-products category_id=\"17\"][/product-category-products]</div><div>[featured-news title=\"Tin tức mới nhất\"][/featured-news]</div>'),('vi',2,'Trang chủ 2',NULL,'<div>[simple-slider key=\"slider-trang-chu-2\"][/simple-slider]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-collections title=\"Sản phẩm độc quyền\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-products title=\"Sản phẩm nổi bật\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Thương hiệu nổi bật\"][/featured-brands]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[product-category-products category_id=\"17\"][/product-category-products]</div><div>[featured-news title=\"Tin tức mới nhất\"][/featured-news]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Miễn phí vận chuyển\" subtitle1=\"Cho đơn hàng từ $50\" icon2=\"general/icon-purchase.png\" title2=\"Miễn phí đổi trả\" subtitle2=\"Trong vòng 30 ngày\" icon3=\"general/icon-bag.png\" title3=\"Giảm 20% mỗi 1 sản phẩm\" subtitle3=\"Khi bạn đăng ký thành viên\" icon4=\"general/icon-operator.png\" title4=\"Hỗ trợ\" subtitle4=\"24/7 dịch vụ tuyệt vời\"][/site-features]</div>'),('vi',3,'Trang chủ 3',NULL,'<div>[simple-slider key=\"slider-trang-chu-3\" ads_1=\"ILSDKVYFGXPJ\" ads_2=\"IZ6WU8KUALYE\"][/simple-slider]</div><div>[product-collections title=\"Sản phẩm độc quyền\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Miễn phí vận chuyển\" subtitle1=\"Cho đơn hàng từ $50\" icon2=\"general/icon-purchase.png\" title2=\"Miễn phí đổi trả\" subtitle2=\"Trong vòng 30 ngày\" icon3=\"general/icon-bag.png\" title3=\"Giảm 20% mỗi 1 sản phẩm\" subtitle3=\"Khi bạn đăng ký thành viên\" icon4=\"general/icon-operator.png\" title4=\"Hỗ trợ\" subtitle4=\"24/7 dịch vụ tuyệt vời\"][/site-features]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[featured-products title=\"Sản phẩm nổi bật\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-brands title=\"Thương hiệu nổi bật\"][/featured-brands]</div><div>[product-category-products category_id=\"17\"][/product-category-products]</div><div>[featured-news title=\"Tin tức mới nhất\"][/featured-news]</div>'),('vi',4,'Trang chủ 4',NULL,'<div>[simple-slider key=\"slider-trang-chu-4\"][/simple-slider]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Miễn phí vận chuyển\" subtitle1=\"Cho đơn hàng từ $50\" icon2=\"general/icon-purchase.png\" title2=\"Miễn phí đổi trả\" subtitle2=\"Trong vòng 30 ngày\" icon3=\"general/icon-bag.png\" title3=\"Giảm 20% mỗi 1 sản phẩm\" subtitle3=\"Khi bạn đăng ký thành viên\" icon4=\"general/icon-operator.png\" title4=\"Hỗ trợ\" subtitle4=\"24/7 dịch vụ tuyệt vời\"][/site-features]</div><div>[product-collections title=\"Sản phẩm độc quyền\"][/product-collections]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-products title=\"Sản phẩm nổi bật\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Thương hiệu nổi bật\"][/featured-brands]</div><div>[product-category-products category_id=\"17\"][/product-category-products]</div><div>[featured-news title=\"Tin tức mới nhất\"][/featured-news]</div>'),('vi',5,'Tin tức',NULL,'<p>---</p>'),('vi',6,'Liên hệ',NULL,'<p>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</p><p>[our-offices][/our-offices]</p><p>[contact-form][/contact-form]</p>'),('vi',7,'Về chúng tôi',NULL,'<p>I don\'t understand. Where did they draw the treacle from?\' \'You can draw water out of sight: \'but it doesn\'t mind.\' The table was a real nose; also its eyes by this very sudden change, but she could not join the dance. Would not, could not, would not open any of them. However, on the whole party swam to the end of every line: \'Speak roughly to your places!\' shouted the Gryphon, half to itself, \'Oh dear! Oh dear! I\'d nearly forgotten that I\'ve got to come before that!\' \'Call the next verse.\'.</p><p>Mock Turtle. \'Certainly not!\' said Alice desperately: \'he\'s perfectly idiotic!\' And she began shrinking directly. As soon as she leant against a buttercup to rest herself, and shouted out, \'You\'d better not do that again!\' which produced another dead silence. Alice noticed with some severity; \'it\'s very rude.\' The Hatter looked at the mushroom (she had grown up,\' she said these words her foot as far down the middle, being held up by wild beasts and other unpleasant things, all because they.</p><p>March.\' As she said this she looked down, was an uncomfortably sharp chin. However, she did not wish to offend the Dormouse sulkily remarked, \'If you knew Time as well she might, what a wonderful dream it had VERY long claws and a scroll of parchment in the window, I only wish it was,\' he said. \'Fifteenth,\' said the Cat, as soon as there was enough of me left to make out what it meant till now.\' \'If that\'s all the arches are gone from this morning,\' said Alice very politely; but she did so.</p><p>THAT\'S all wrong, I\'m certain! I must go back by railway,\' she said to Alice, flinging the baby with some curiosity. \'What a funny watch!\' she remarked. \'There isn\'t any,\' said the King, \'or I\'ll have you executed.\' The miserable Hatter dropped his teacup instead of the wood to listen. The Fish-Footman began by producing from under his arm a great letter, nearly as she was shrinking rapidly; so she felt a violent blow underneath her chin: it had VERY long claws and a sad tale!\' said the.</p>'),('vi',8,'Chính sách cookie',NULL,'<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>'),('vi',9,'Điều kiện và điều khoản',NULL,'<p>Hatter added as an explanation; \'I\'ve none of my life.\' \'You are not the same, shedding gallons of tears, \'I do wish I could shut up like telescopes: this time with one eye; but to her full size by this time, and was suppressed. \'Come, that finished the goose, with the tea,\' the Hatter continued, \'in this way:-- \"Up above the world you fly, Like a tea-tray in the lock, and to stand on your shoes and stockings for you now, dears? I\'m sure I don\'t want to see what this bottle does. I do hope.</p><p>WOULD go with Edgar Atheling to meet William and offer him the crown. William\'s conduct at first was moderate. But the insolence of his shrill little voice, the name \'W. RABBIT\' engraved upon it. She went on in these words: \'Yes, we went to the jury. They were just beginning to think that very few little girls eat eggs quite as safe to stay with it as she spoke; \'either you or your head must be really offended. \'We won\'t talk about her any more questions about it, you know--\' \'But, it goes on.</p><p>Rabbit actually TOOK A WATCH OUT OF ITS WAISTCOAT-POCKET, and looked at each other for some time without interrupting it. \'They must go by the White Rabbit: it was quite out of the reeds--the rattling teacups would change to dull reality--the grass would be a footman in livery came running out of the suppressed guinea-pigs, filled the air, and came flying down upon their faces. There was nothing so VERY remarkable in that; nor did Alice think it so yet,\' said Alice; \'living at the flowers and.</p><p>Exactly as we needn\'t try to find herself still in sight, and no room to open her mouth; but she did not quite like the look of things at all, as the doubled-up soldiers were always getting up and walking away. \'You insult me by talking such nonsense!\' \'I didn\'t know it to make out which were the cook, to see if there are, nobody attends to them--and you\'ve no idea what to do, and in another minute there was a table in the last time she heard was a little feeble, squeaking voice, (\'That\'s.</p>'),('vi',10,'Chính sách trả hàng',NULL,'<p>Alice took up the chimney, and said to herself, as usual. I wonder if I\'ve kept her eyes filled with tears running down his face, as long as it was only a mouse that had slipped in like herself. \'Would it be of any use, now,\' thought poor Alice, \'to speak to this last remark. \'Of course not,\' said the Dormouse, after thinking a minute or two the Caterpillar contemptuously. \'Who are YOU?\' said the Dodo in an angry tone, \'Why, Mary Ann, what ARE you doing out here? Run home this moment, I tell.</p><p>I\'d been the whiting,\' said the Pigeon went on, yawning and rubbing its eyes, for it to make out at the White Rabbit, \'and that\'s the jury, who instantly made a dreadfully ugly child: but it had a door leading right into it. \'That\'s very important,\' the King said, for about the reason they\'re called lessons,\' the Gryphon went on. \'I do,\' Alice hastily replied; \'at least--at least I know I have to turn round on its axis--\' \'Talking of axes,\' said the Caterpillar took the place of the baby, the.</p><p>Who ever saw in another moment, splash! she was losing her temper. \'Are you content now?\' said the others. \'We must burn the house of the miserable Mock Turtle. \'Hold your tongue, Ma!\' said the Mock Turtle replied, counting off the cake. * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * \'Come, my head\'s free at last!\' said Alice loudly. \'The idea of having nothing to do: once or twice, and shook itself. Then it got down off the cake. * * * * * * * * * * * * * * * * * * * *.</p><p>SAID was, \'Why is a raven like a candle. I wonder if I\'ve been changed several times since then.\' \'What do you mean by that?\' said the Caterpillar. Alice thought to herself, \'the way all the rats and--oh dear!\' cried Alice hastily, afraid that she looked up and bawled out, \"He\'s murdering the time! Off with his head!\' or \'Off with her arms folded, frowning like a serpent. She had quite forgotten the words.\' So they couldn\'t see it?\' So she began: \'O Mouse, do you know about this business?\' the.</p>'),('vi',11,'Chính sách vận chuyển',NULL,'<p>Alice, who felt ready to sink into the darkness as hard as it settled down in an angry voice--the Rabbit\'s--\'Pat! Pat! Where are you?\' And then a voice she had not gone (We know it to be a footman in livery came running out of the jury asked. \'That I can\'t tell you my history, and you\'ll understand why it is all the while, and fighting for the fan and two or three times over to the Mock Turtle drew a long hookah, and taking not the same, the next thing was to twist it up into a chrysalis--you.</p><p>Alice, who always took a minute or two she walked up towards it rather timidly, as she spoke--fancy CURTSEYING as you\'re falling through the little crocodile Improve his shining tail, And pour the waters of the words did not dare to disobey, though she looked down at once, in a day is very confusing.\' \'It isn\'t,\' said the Pigeon; \'but I know who I am! But I\'d better take him his fan and gloves, and, as there was no \'One, two, three, and away,\' but they were playing the Queen added to one of.</p><p>First, because I\'m on the door between us. For instance, suppose it doesn\'t matter a bit,\' said the Hatter. Alice felt a little shriek, and went on: \'--that begins with a table set out under a tree a few minutes, and she had expected: before she gave a little feeble, squeaking voice, (\'That\'s Bill,\' thought Alice,) \'Well, I never knew whether it would be worth the trouble of getting her hands on her toes when they had to pinch it to be patted on the glass table and the jury wrote it down.</p><p>I like being that person, I\'ll come up: if not, I\'ll stay down here! It\'ll be no use denying it. I suppose you\'ll be telling me next that you have just been picked up.\' \'What\'s in it?\' said the Gryphon replied very readily: \'but that\'s because it stays the same thing as \"I sleep when I find a number of bathing machines in the same tone, exactly as if she could not remember ever having seen such a thing before, and she went on eagerly: \'There is such a capital one for catching mice you can\'t be.</p>'),('vi',12,'Chính sách bảo mật',NULL,'<p>CAN I have to turn round on its axis--\' \'Talking of axes,\' said the Cat, \'or you wouldn\'t mind,\' said Alice: \'allow me to introduce it.\' \'I don\'t know of any one; so, when the White Rabbit cried out, \'Silence in the night? Let me see--how IS it to his son, \'I feared it might tell her something worth hearing. For some minutes it seemed quite natural to Alice to herself, as she could. The next witness would be very likely true.) Down, down, down. Would the fall was over. Alice was only a pack of.</p><p>The moment Alice felt a violent blow underneath her chin: it had fallen into the darkness as hard as he spoke. \'A cat may look at me like that!\' But she went to school in the air, and came flying down upon her: she gave a little startled by seeing the Cheshire Cat: now I shall think nothing of the hall; but, alas! either the locks were too large, or the key was too slippery; and when Alice had never done such a curious feeling!\' said Alice; \'I daresay it\'s a French mouse, come over with.</p><p>Lobster Quadrille?\' the Gryphon interrupted in a melancholy tone. \'Nobody seems to be true): If she should chance to be no chance of her own mind (as well as she could. The next thing was waving its tail when I\'m pleased, and wag my tail when I\'m pleased, and wag my tail when I\'m pleased, and wag my tail when I\'m pleased, and wag my tail when I\'m pleased, and wag my tail when it\'s pleased. Now I growl when I\'m pleased, and wag my tail when it\'s angry, and wags its tail about in all my limbs.</p><p>Hearts, and I had to do such a capital one for catching mice you can\'t swim, can you?\' he added, turning to Alice: he had to leave it behind?\' She said it to make out who was talking. Alice could only see her. She is such a capital one for catching mice you can\'t be Mabel, for I know all the other was sitting on the ground near the right height to rest her chin in salt water. Her first idea was that she remained the same when I was a little way forwards each time and a scroll of parchment in.</p>'),('vi',13,'Blog Sidebar Trái',NULL,'<p>[blog-posts paginate=\"12\"][/blog-posts]</p>'),('vi',14,'Câu hỏi thường gặp',NULL,'<div>[faqs][/faqs]</div>');
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
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
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` int unsigned DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'ASATISUSF3','paypal',NULL,2406.10,1,'completed','confirm',8,NULL,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'EQ76YLVR1M','mollie',NULL,530.70,2,'completed','confirm',5,NULL,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'BVBMX2UY1Y','razorpay',NULL,1073.50,3,'completed','confirm',3,NULL,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'1ZWZVQWPRJ','paystack',NULL,1026.90,4,'completed','confirm',1,NULL,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'P8CXVCNVHV','razorpay',NULL,1740.70,5,'completed','confirm',9,NULL,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'QVCDDGDB3G','razorpay',NULL,603.00,6,'completed','confirm',9,NULL,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'IHSWKNPSGA','razorpay',NULL,863.60,7,'completed','confirm',10,NULL,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'AYU1UZAFVQ','stripe',NULL,294.00,8,'completed','confirm',5,NULL,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'0S1LRPLYYR','cod',NULL,2053.00,9,'pending','confirm',9,NULL,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'CPOHW24IAX','sslcommerz',NULL,815.00,10,'completed','confirm',6,NULL,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'RRCJ8MPLGG','mollie',NULL,2207.20,11,'completed','confirm',8,NULL,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'YGSMZ0HMIU','stripe',NULL,773.30,12,'completed','confirm',2,NULL,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'PINTJMD9NO','bank_transfer',NULL,1020.60,13,'pending','confirm',6,NULL,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'LMPSEFJT5G','paystack',NULL,1662.50,14,'completed','confirm',4,NULL,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'RCS1D9H6SN','mollie',NULL,647.10,15,'completed','confirm',9,NULL,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'G38U2LD3LZ','stripe',NULL,394.80,16,'completed','confirm',2,NULL,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'EZDNT0AO3L','mollie',NULL,1260.30,17,'completed','confirm',3,NULL,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'KIRTLSGWC9','cod',NULL,601.70,18,'pending','confirm',5,NULL,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'STSWBV6NU0','razorpay',NULL,1014.30,19,'completed','confirm',3,NULL,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'EXBQS5UTYI','razorpay',NULL,1044.60,20,'completed','confirm',7,NULL,NULL,'2022-05-01 01:30:44','2022-05-01 01:30:44','Botble\\Ecommerce\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,1,1),(2,4,1),(3,1,2),(4,4,2),(5,1,3),(6,3,3),(7,1,4),(8,3,4),(9,1,5),(10,4,5),(11,2,6),(12,3,6),(13,1,7),(14,3,7),(15,1,8),(16,4,8),(17,1,9),(18,3,9),(19,1,10),(20,3,10),(21,1,11),(22,4,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,1,2),(7,2,2),(8,3,2),(9,4,2),(10,5,2),(11,1,3),(12,2,3),(13,3,3),(14,4,3),(15,5,3),(16,1,4),(17,2,4),(18,3,4),(19,4,4),(20,5,4),(21,1,5),(22,2,5),(23,3,5),(24,4,5),(25,5,5),(26,1,6),(27,2,6),(28,3,6),(29,4,6),(30,5,6),(31,1,7),(32,2,7),(33,3,7),(34,4,7),(35,5,7),(36,1,8),(37,2,8),(38,3,8),(39,4,8),(40,5,8),(41,1,9),(42,2,9),(43,3,9),(44,4,9),(45,5,9),(46,1,10),(47,2,10),(48,3,10),(49,4,10),(50,5,10),(51,1,11),(52,2,11),(53,3,11),(54,4,11),(55,5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_author_id_author_type_created_at_index` (`status`,`author_id`,`author_type`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',1615,NULL,'2022-01-04 21:11:38','2022-01-04 21:11:38'),(2,'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',1999,NULL,'2022-01-04 21:11:38','2022-01-04 21:11:38'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',2090,NULL,'2022-01-04 21:11:38','2022-01-04 21:11:38'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n[featured-products title=\"Shop The Look\" limit=\"6\"][/featured-products]\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',2193,NULL,'2022-01-04 21:11:38','2022-01-04 21:11:38'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',1671,NULL,'2022-01-04 21:11:38','2022-01-04 21:11:38'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',2250,NULL,'2022-01-04 21:11:38','2022-01-04 21:11:38'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',676,NULL,'2022-01-04 21:11:38','2022-01-04 21:11:38'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',1109,NULL,'2022-01-04 21:11:38','2022-01-04 21:11:38'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',568,NULL,'2022-01-04 21:11:38','2022-01-04 21:11:38'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',1572,NULL,'2022-01-04 21:11:38','2022-01-04 21:11:38'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',2374,NULL,'2022-01-04 21:11:38','2022-01-04 21:11:38');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
INSERT INTO `posts_translations` VALUES ('vi',1,'4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',2,'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',3,'Xu hướng túi xách hàng đầu năm 2020 cần biết','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',4,'Cách Phối Màu Túi Xách Của Bạn Với Trang Phục','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',5,'Cách Chăm sóc Túi Da','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',6,'Chúng tôi đang nghiền ngẫm 10 xu hướng túi lớn nhất của mùa hè','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',7,'Những phẩm chất cần thiết của âm nhạc thành công cao','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',8,'9 điều tôi thích khi cạo đầu','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',9,'Tại sao làm việc theo nhóm thực sự biến giấc mơ thành công','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',10,'Thế giới phục vụ cho những người trung bình','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',11,'Các đương sự trên màn hình không phải là diễn viên','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n');
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `new_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `role_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"mollie\",\"newsletter\",\"payment\",\"paystack\",\"razorpay\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"translation\",\"faq\",\"location\"]',NULL,NULL),(2,'payment_cod_status','1',NULL,NULL),(3,'payment_bank_transfer_status','1',NULL,NULL),(4,'permalink-botble-blog-models-post','blog',NULL,NULL),(5,'permalink-botble-blog-models-category','blog',NULL,NULL),(6,'permalink-botble-blog-models-tag','tag',NULL,NULL),(7,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,NULL),(8,'payment_bank_transfer_description','Please send money to our bank account: ACB - 1990 404 19.',NULL,NULL),(9,'plugins_ecommerce_customer_new_order_status','0',NULL,NULL),(10,'plugins_ecommerce_admin_new_order_status','0',NULL,NULL),(11,'sale_popup_display_pages','[\"public.index\"]',NULL,NULL),(56,'language_hide_default','1',NULL,NULL),(57,'language_switcher_display','dropdown',NULL,NULL),(58,'language_display','all',NULL,NULL),(59,'language_hide_languages','[]',NULL,NULL),(60,'ecommerce_store_name','Wowy',NULL,NULL),(61,'ecommerce_store_phone','18006268',NULL,NULL),(62,'ecommerce_store_address','North Link Building, 10 Admiralty Street',NULL,NULL),(63,'ecommerce_store_state','Singapore',NULL,NULL),(64,'ecommerce_store_city','Singapore',NULL,NULL),(65,'ecommerce_store_country','SG',NULL,NULL),(77,'theme','wowy',NULL,NULL),(78,'admin_favicon','general/favicon.png',NULL,NULL),(79,'admin_logo','general/logo-light.png',NULL,NULL),(80,'theme-wowy-site_title','Wowy - Laravel Multipurpose eCommerce Script',NULL,NULL),(81,'theme-wowy-copyright','Copyright © 2021 Wowy all rights reserved. Powered by Botble.',NULL,NULL),(82,'theme-wowy-favicon','general/favicon.png',NULL,NULL),(83,'theme-wowy-logo','general/logo.png',NULL,NULL),(84,'theme-wowy-logo_light','general/logo-light.png',NULL,NULL),(85,'theme-wowy-seo_og_image','general/open-graph-image.png',NULL,NULL),(86,'theme-wowy-address','562 Wellington Road, Street 32, San Francisco',NULL,NULL),(87,'theme-wowy-hotline','1900 - 888',NULL,NULL),(88,'theme-wowy-phone','+01 2222 365 /(+91) 01 2345 6789',NULL,NULL),(89,'theme-wowy-working_hours','10:00 - 18:00, Mon - Sat',NULL,NULL),(90,'theme-wowy-homepage_id','1',NULL,NULL),(91,'theme-wowy-blog_page_id','5',NULL,NULL),(92,'theme-wowy-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(93,'theme-wowy-cookie_consent_learn_more_url','http://wowy.test/cookie-policy',NULL,NULL),(94,'theme-wowy-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(95,'theme-wowy-payment_methods','general/payment-methods.png',NULL,NULL),(96,'theme-wowy-number_of_cross_sale_products_in_cart_page','4',NULL,NULL),(97,'theme-wowy-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"fab fa-facebook-f\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"},{\"key\":\"social-color\",\"value\":\"#3b5999\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"fab fa-twitter\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"},{\"key\":\"social-color\",\"value\":\"#55ACF9\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"fab fa-instagram\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"},{\"key\":\"social-color\",\"value\":\"#E1306C\"}],[{\"key\":\"social-name\",\"value\":\"Linkedin\"},{\"key\":\"social-icon\",\"value\":\"fab fa-linkedin\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.linkedin.com\\/\"},{\"key\":\"social-color\",\"value\":\"#007bb6\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"fab fa-pinterest\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"},{\"key\":\"social-color\",\"value\":\"#cb2027\"}]]',NULL,NULL),(98,'theme-wowy-header_messages','[[{\"key\":\"icon\",\"value\":\"fa fa-bell\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-success\\\"> Trendy 25<\\/b> silver jewelry, save up 35% off today\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Shop now\"}],[{\"key\":\"icon\",\"value\":\"fa fa-asterisk\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-danger\\\">Supper Value Deals<\\/b> - Save more with coupons\"},{\"key\":\"link\",\"value\":null},{\"key\":\"link_text\",\"value\":null}],[{\"key\":\"icon\",\"value\":\"fa fa-angle-double-right\"},{\"key\":\"message\",\"value\":\"Get great devices up to 50% off\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"View details\"}]]',NULL,NULL),(99,'theme-wowy-contact_info_boxes','[[{\"key\":\"name\",\"value\":\"Head Office\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"office@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Studio\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"studio@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Shop\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"shop@botble.com\"}]]',NULL,NULL),(100,'theme-wowy-vi-font_text','Roboto Condensed',NULL,NULL),(101,'theme-wowy-vi-copyright','Bản quyền © 2021 Wowy tất cả quyền đã được bảo hộ. Phát triển bởi Botble.',NULL,NULL),(102,'theme-wowy-vi-working_hours','10:00 - 18:00, Thứ Hai - Thứ Bảy',NULL,NULL),(103,'theme-wowy-vi-cookie_consent_message','Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ',NULL,NULL),(104,'theme-wowy-vi-cookie_consent_learn_more_url','http://wowy.test/cookie-policy',NULL,NULL),(105,'theme-wowy-vi-cookie_consent_learn_more_text','Chính sách cookie',NULL,NULL),(106,'theme-wowy-vi-homepage_id','1',NULL,NULL),(107,'theme-wowy-vi-blog_page_id','5',NULL,NULL),(108,'theme-wowy-vi-header_messages','[[{\"key\":\"icon\",\"value\":\"fa fa-bell\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-success\\\">Trang s\\u1ee9c b\\u1ea1c 25 <\\/b> th\\u1eddi th\\u01b0\\u1ee3ng, ti\\u1ebft ki\\u1ec7m \\u0111\\u1ebfn 35%\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Mua ngay\"}],[{\"key\":\"icon\",\"value\":\"fa fa-asterisk\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-danger\\\">\\u01afu \\u0111\\u00e3i si\\u00eau gi\\u00e1 tr\\u1ecb <\\/b> - Ti\\u1ebft ki\\u1ec7m h\\u01a1n v\\u1edbi phi\\u1ebfu th\\u01b0\\u1edfng\"},{\"key\":\"link\",\"value\":null},{\"key\":\"link_text\",\"value\":null}],[{\"key\":\"icon\",\"value\":\"fa fa-angle-double-right\"},{\"key\":\"message\",\"value\":\"Nh\\u1eadn c\\u00e1c s\\u1ea3n ph\\u1ea9m tuy\\u1ec7t v\\u1eddi gi\\u1ea3m gi\\u00e1 t\\u1edbi 50%\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Xem chi ti\\u1ebft\"}]]',NULL,NULL),(109,'theme-wowy-vi-contact_info_boxes','[[{\"key\":\"name\",\"value\":\"Tr\\u1ee5 s\\u1edf ch\\u00ednh\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"office@botble.com\"}],[{\"key\":\"name\",\"value\":\"Gian h\\u00e0ng tr\\u01b0ng b\\u00e0y\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"studio@botble.com\"}],[{\"key\":\"name\",\"value\":\"C\\u1eeda h\\u00e0ng\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"shop@botble.com\"}]]',NULL,NULL),(110,'media_random_hash','cab31726111fb5b057986d905081d9a7',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` int unsigned NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Super Value Deals','sliders/1-1.png','/products','Save more with coupons & up to 70% off',1,'2022-01-04 21:11:32','2022-01-04 21:11:32'),(2,1,'Tech Trending','sliders/1-2.png','/products','Save more with coupons & up to 20% off',2,'2022-01-04 21:11:32','2022-01-04 21:11:32'),(3,1,'Big Deals From','sliders/1-3.png','/products','Headphone, Gaming Laptop, PC and more...',3,'2022-01-04 21:11:32','2022-01-04 21:11:32'),(4,2,'Super Value Deals','sliders/2-1.png','/products','Save more with coupons & up to 70% off',1,'2022-01-04 21:11:32','2022-01-04 21:11:32'),(5,2,'Tech Trending','sliders/2-2.png','/products','Save more with coupons & up to 20% off',2,'2022-01-04 21:11:32','2022-01-04 21:11:32'),(6,2,'Big Deals From','sliders/2-3.png','/products','Headphone, Gaming Laptop, PC and more...',3,'2022-01-04 21:11:32','2022-01-04 21:11:32'),(7,3,'Super Value Deals','sliders/3-1.png','/products','Save more with coupons & up to 70% off',1,'2022-01-04 21:11:32','2022-01-04 21:11:32'),(8,3,'Tech Trending','sliders/3-2.png','/products','Save more with coupons & up to 20% off',2,'2022-01-04 21:11:32','2022-01-04 21:11:32'),(9,4,'Super Value Deals','sliders/4-1.png','/products','Save more with coupons & up to 70% off',1,'2022-01-04 21:11:32','2022-01-04 21:11:32'),(10,4,'Tech Trending','sliders/4-2.png','/products','Save more with coupons & up to 20% off',2,'2022-01-04 21:11:32','2022-01-04 21:11:32'),(11,4,'Big Deals From','sliders/4-3.png','/products','Headphone, Gaming Laptop, PC and more...',3,'2022-01-04 21:11:32','2022-01-04 21:11:32'),(12,5,'Giảm giá đặc biệt','sliders/1-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2022-01-04 21:11:32','2022-01-04 21:11:32'),(13,5,'Công nghệ nổi bật','sliders/1-2.png','/products','Tiết kiệm hơn với mã giảm giá 20%',2,'2022-01-04 21:11:32','2022-01-04 21:11:32'),(14,5,'Giảm giá lớn nhất từ','sliders/1-3.png','/products','Tai nghe, Máy tính chơi game, PC và hơn nữa...',3,'2022-01-04 21:11:32','2022-01-04 21:11:32'),(15,6,'Giảm giá đặc biệt','sliders/2-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2022-01-04 21:11:32','2022-01-04 21:11:32'),(16,6,'Công nghệ nổi bật','sliders/2-2.png','/products','Tiết kiệm hơn với mã giảm giá 20%',2,'2022-01-04 21:11:32','2022-01-04 21:11:32'),(17,6,'Giảm giá lớn nhất từ','sliders/2-3.png','/products','Tai nghe, Máy tính chơi game, PC và hơn nữa...',3,'2022-01-04 21:11:32','2022-01-04 21:11:32'),(18,7,'Giảm giá đặc biệt','sliders/3-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2022-01-04 21:11:32','2022-01-04 21:11:32'),(19,7,'Công nghệ nổi bật','sliders/3-2.png','/products','Tiết kiệm hơn với mã giảm giá 20%',2,'2022-01-04 21:11:32','2022-01-04 21:11:32'),(20,8,'Giảm giá đặc biệt','sliders/4-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2022-01-04 21:11:32','2022-01-04 21:11:32'),(21,8,'Công nghệ nổi bật','sliders/4-2.png','/products','Tiết kiệm hơn với mã giảm giá 20%',2,'2022-01-04 21:11:33','2022-01-04 21:11:33'),(22,8,'Giảm giá lớn nhất từ','sliders/4-3.png','/products','Tai nghe, Máy tính chơi game, PC và hơn nữa...',3,'2022-01-04 21:11:33','2022-01-04 21:11:33');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider 1','home-slider-1',NULL,'published','2022-01-04 21:11:32','2022-01-04 21:11:32'),(2,'Home slider 2','home-slider-2',NULL,'published','2022-01-04 21:11:32','2022-01-04 21:11:32'),(3,'Home slider 3','home-slider-3',NULL,'published','2022-01-04 21:11:32','2022-01-04 21:11:32'),(4,'Home slider 4','home-slider-4',NULL,'published','2022-01-04 21:11:32','2022-01-04 21:11:32'),(5,'Slider trang chủ 1','slider-trang-chu-1',NULL,'published','2022-01-04 21:11:32','2022-01-04 21:11:32'),(6,'Slider trang chủ 2','slider-trang-chu-2',NULL,'published','2022-01-04 21:11:32','2022-01-04 21:11:32'),(7,'Slider trang chủ 3','slider-trang-chu-3',NULL,'published','2022-01-04 21:11:32','2022-01-04 21:11:32'),(8,'Slider trang chủ 4','slider-trang-chu-4',NULL,'published','2022-01-04 21:11:32','2022-01-04 21:11:32');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'perxsion',1,'Botble\\Ecommerce\\Models\\Brand','brands','2022-01-04 21:10:45','2022-01-04 21:10:45'),(2,'hiching',2,'Botble\\Ecommerce\\Models\\Brand','brands','2022-01-04 21:10:45','2022-01-04 21:10:45'),(3,'kepslo',3,'Botble\\Ecommerce\\Models\\Brand','brands','2022-01-04 21:10:45','2022-01-04 21:10:45'),(4,'groneba',4,'Botble\\Ecommerce\\Models\\Brand','brands','2022-01-04 21:10:45','2022-01-04 21:10:45'),(5,'babian',5,'Botble\\Ecommerce\\Models\\Brand','brands','2022-01-04 21:10:45','2022-01-04 21:10:45'),(6,'valorant',6,'Botble\\Ecommerce\\Models\\Brand','brands','2022-01-04 21:10:45','2022-01-04 21:10:45'),(7,'pure',7,'Botble\\Ecommerce\\Models\\Brand','brands','2022-01-04 21:10:45','2022-01-04 21:10:45'),(8,'hot-promotions',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:10:47','2022-01-04 21:10:47'),(9,'electronics',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:10:47','2022-01-04 21:10:47'),(10,'home-audio-theaters',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:10:47','2022-01-04 21:10:47'),(11,'tv-videos',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:10:47','2022-01-04 21:10:47'),(12,'camera-photos-videos',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:10:47','2022-01-04 21:10:47'),(13,'cellphones-accessories',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:10:47','2022-01-04 21:10:47'),(14,'headphones',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:10:47','2022-01-04 21:10:47'),(15,'videos-games',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:10:47','2022-01-04 21:10:47'),(16,'wireless-speakers',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:10:47','2022-01-04 21:10:47'),(17,'office-electronic',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:10:47','2022-01-04 21:10:47'),(18,'clothing',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:10:47','2022-01-04 21:10:47'),(19,'computers',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:10:47','2022-01-04 21:10:47'),(20,'computer-tablets',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:10:47','2022-01-04 21:10:47'),(21,'laptop',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:10:47','2022-01-04 21:10:47'),(22,'monitors',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:10:47','2022-01-04 21:10:47'),(23,'computer-components',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:10:47','2022-01-04 21:10:47'),(24,'home-kitchen',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:10:47','2022-01-04 21:10:47'),(25,'health-beauty',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:10:47','2022-01-04 21:10:47'),(26,'jewelry-watch',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:10:47','2022-01-04 21:10:47'),(27,'technology-toys',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:10:47','2022-01-04 21:10:47'),(28,'drive-storages',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:10:47','2022-01-04 21:10:47'),(29,'gaming-laptop',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:10:47','2022-01-04 21:10:47'),(30,'security-protection',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:10:47','2022-01-04 21:10:47'),(31,'accessories',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:10:47','2022-01-04 21:10:47'),(32,'phones',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:10:47','2022-01-04 21:10:47'),(33,'babies-moms',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:10:47','2022-01-04 21:10:47'),(34,'sport-outdoor',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:10:47','2022-01-04 21:10:47'),(35,'books-office',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:10:47','2022-01-04 21:10:47'),(36,'cars-motorcycles',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:10:47','2022-01-04 21:10:47'),(37,'home-improvements',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:10:47','2022-01-04 21:10:47'),(38,'wallet',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-01-04 21:10:47','2022-01-04 21:10:47'),(39,'bags',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-01-04 21:10:47','2022-01-04 21:10:47'),(40,'shoes',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-01-04 21:10:47','2022-01-04 21:10:47'),(41,'clothes',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-01-04 21:10:47','2022-01-04 21:10:47'),(42,'hand-bag',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-01-04 21:10:47','2022-01-04 21:10:47'),(43,'smart-home-speaker',1,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:11:18','2022-01-04 21:11:18'),(44,'headphone-ultra-bass',2,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:11:18','2022-01-04 21:11:18'),(45,'boxed-bluetooth-headphone',3,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:11:18','2022-01-04 21:11:18'),(46,'chikie-bluetooth-speaker',4,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:11:18','2022-01-04 21:11:18'),(47,'camera-hikvision-hk-35vs8',5,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:11:18','2022-01-04 21:11:18'),(48,'camera-samsung-ss-24',6,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:11:18','2022-01-04 21:11:18'),(49,'leather-watch-band',7,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:11:18','2022-01-04 21:11:18'),(50,'apple-iphone-13-plus',8,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:11:18','2022-01-04 21:11:18'),(51,'macbook-pro-2015',9,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:11:18','2022-01-04 21:11:18'),(52,'macbook-air-12-inch',10,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:11:18','2022-01-04 21:11:18'),(53,'apple-watch-serial-7',11,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:11:18','2022-01-04 21:11:18'),(54,'macbook-pro-13-inch',12,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:11:18','2022-01-04 21:11:18'),(55,'apple-keyboard',13,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:11:18','2022-01-04 21:11:18'),(56,'macsafe-80w',14,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:11:18','2022-01-04 21:11:18'),(57,'hand-playstation',15,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:11:18','2022-01-04 21:11:18'),(58,'apple-airpods-serial-3',16,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:11:18','2022-01-04 21:11:18'),(59,'cool-smart-watches',17,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:11:18','2022-01-04 21:11:18'),(60,'black-smart-watches',18,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:11:18','2022-01-04 21:11:18'),(61,'leather-watch-band-serial-3',19,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:11:18','2022-01-04 21:11:18'),(62,'macbook-pro-2015-13-inch',20,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:11:18','2022-01-04 21:11:18'),(63,'historic-alarm-clock',21,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:11:18','2022-01-04 21:11:18'),(64,'black-glasses',22,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:11:18','2022-01-04 21:11:18'),(65,'phillips-mouse',23,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:11:18','2022-01-04 21:11:18'),(66,'gaming-keyboard',24,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:11:18','2022-01-04 21:11:18'),(67,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2022-01-04 21:11:38','2022-03-22 19:31:46'),(68,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2022-01-04 21:11:38','2022-03-22 19:31:46'),(69,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2022-01-04 21:11:38','2022-03-22 19:31:46'),(70,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2022-01-04 21:11:38','2022-03-22 19:31:46'),(71,'general',1,'Botble\\Blog\\Models\\Tag','tag','2022-01-04 21:11:38','2022-03-22 19:31:46'),(72,'design',2,'Botble\\Blog\\Models\\Tag','tag','2022-01-04 21:11:38','2022-03-22 19:31:46'),(73,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2022-01-04 21:11:38','2022-03-22 19:31:46'),(74,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2022-01-04 21:11:38','2022-03-22 19:31:46'),(75,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2022-01-04 21:11:38','2022-03-22 19:31:46'),(76,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2022-01-04 21:11:38','2022-03-22 19:31:46'),(77,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2022-01-04 21:11:38','2022-03-22 19:31:46'),(78,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2022-01-04 21:11:38','2022-03-22 19:31:46'),(79,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2022-01-04 21:11:38','2022-03-22 19:31:46'),(80,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2022-01-04 21:11:38','2022-03-22 19:31:46'),(81,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2022-01-04 21:11:38','2022-03-22 19:31:46'),(82,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2022-01-04 21:11:38','2022-03-22 19:31:46'),(83,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2022-01-04 21:11:38','2022-03-22 19:31:46'),(84,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2022-01-04 21:11:38','2022-03-22 19:31:46'),(85,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2022-01-04 21:11:38','2022-03-22 19:31:46'),(86,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2022-01-04 21:11:38','2022-03-22 19:31:46'),(87,'homepage',1,'Botble\\Page\\Models\\Page','','2022-01-04 21:11:38','2022-01-04 21:11:38'),(88,'homepage-2',2,'Botble\\Page\\Models\\Page','','2022-01-04 21:11:38','2022-01-04 21:11:38'),(89,'homepage-3',3,'Botble\\Page\\Models\\Page','','2022-01-04 21:11:38','2022-01-04 21:11:38'),(90,'homepage-4',4,'Botble\\Page\\Models\\Page','','2022-01-04 21:11:38','2022-01-04 21:11:38'),(91,'blog',5,'Botble\\Page\\Models\\Page','','2022-01-04 21:11:38','2022-01-04 21:11:38'),(92,'contact',6,'Botble\\Page\\Models\\Page','','2022-01-04 21:11:38','2022-01-04 21:11:38'),(93,'about-us',7,'Botble\\Page\\Models\\Page','','2022-01-04 21:11:38','2022-01-04 21:11:38'),(94,'cookie-policy',8,'Botble\\Page\\Models\\Page','','2022-01-04 21:11:38','2022-01-04 21:11:38'),(95,'terms-conditions',9,'Botble\\Page\\Models\\Page','','2022-01-04 21:11:38','2022-01-04 21:11:38'),(96,'returns-exchanges',10,'Botble\\Page\\Models\\Page','','2022-01-04 21:11:38','2022-01-04 21:11:38'),(97,'shipping-delivery',11,'Botble\\Page\\Models\\Page','','2022-01-04 21:11:38','2022-01-04 21:11:38'),(98,'privacy-policy',12,'Botble\\Page\\Models\\Page','','2022-01-04 21:11:38','2022-01-04 21:11:38'),(99,'blog-left-sidebar',13,'Botble\\Page\\Models\\Page','','2022-01-04 21:11:38','2022-01-04 21:11:38'),(100,'faq',14,'Botble\\Page\\Models\\Page','','2022-01-04 21:11:38','2022-01-04 21:11:38');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_backup`
--

DROP TABLE IF EXISTS `states_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_backup` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_backup`
--

LOCK TABLES `states_backup` WRITE;
/*!40000 ALTER TABLE `states_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` int NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User','','published','2022-01-04 21:11:38','2022-01-04 21:11:38'),(2,'Design',1,'Botble\\ACL\\Models\\User','','published','2022-01-04 21:11:38','2022-01-04 21:11:38'),(3,'Fashion',1,'Botble\\ACL\\Models\\User','','published','2022-01-04 21:11:38','2022-01-04 21:11:38'),(4,'Branding',1,'Botble\\ACL\\Models\\User','','published','2022-01-04 21:11:38','2022-01-04 21:11:38'),(5,'Modern',1,'Botble\\ACL\\Models\\User','','published','2022-01-04 21:11:38','2022-01-04 21:11:38');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
INSERT INTO `tags_translations` VALUES ('vi',1,'Chung',NULL),('vi',2,'Thiết kế',NULL),('vi',3,'Thời trang',NULL),('vi',4,'Thương hiệu',NULL),('vi',5,'Hiện đại',NULL);
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `locale` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4206 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@botble.com',NULL,'$2y$10$5q0IXy3p2dNiqlhYMPGry.79NIIrKEB7fVICaMh2N5C7uAAkd0tYC',NULL,'2022-01-04 21:11:38','2022-01-04 21:11:38','System','Admin','botble',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteInfoWidget','footer_sidebar','wowy',0,'{\"id\":\"SiteInfoWidget\",\"name\":\"Site information\"}','2022-01-04 21:11:43','2022-01-04 21:11:43'),(2,'CustomMenuWidget','footer_sidebar','wowy',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"product-categories\"}','2022-01-04 21:11:43','2022-01-04 21:11:43'),(3,'CustomMenuWidget','footer_sidebar','wowy',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}','2022-01-04 21:11:43','2022-01-04 21:11:43'),(4,'BlogSearchWidget','primary_sidebar','wowy',0,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2022-01-04 21:11:43','2022-01-04 21:11:43'),(5,'BlogCategoriesWidget','primary_sidebar','wowy',1,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}','2022-01-04 21:11:43','2022-01-04 21:11:43'),(6,'RecentPostsWidget','primary_sidebar','wowy',2,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\"}','2022-01-04 21:11:43','2022-01-04 21:11:43'),(7,'TagsWidget','primary_sidebar','wowy',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2022-01-04 21:11:43','2022-01-04 21:11:43'),(8,'ProductCategoriesWidget','product_sidebar','wowy',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}','2022-01-04 21:11:43','2022-01-04 21:11:43'),(9,'FeaturedProductsWidget','product_sidebar','wowy',2,'{\"id\":\"FeaturedProductsWidget\",\"name\":\"Featured Products\"}','2022-01-04 21:11:43','2022-01-04 21:11:43'),(10,'FeaturedBrandsWidget','product_sidebar','wowy',3,'{\"id\":\"FeaturedBrandsWidget\",\"name\":\"Manufacturers\"}','2022-01-04 21:11:43','2022-01-04 21:11:43'),(11,'SiteInfoWidget','footer_sidebar','wowy-vi',0,'{\"id\":\"SiteInfoWidget\",\"name\":\"V\\u1ec1 ch\\u00fang t\\u00f4i\"}','2022-01-04 21:11:43','2022-01-04 21:11:43'),(12,'CustomMenuWidget','footer_sidebar','wowy-vi',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Danh m\\u1ee5c s\\u1ea3n ph\\u1ea9m\",\"menu_id\":\"danh-muc-san-pham\"}','2022-01-04 21:11:43','2022-01-04 21:11:43'),(13,'CustomMenuWidget','footer_sidebar','wowy-vi',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Th\\u00f4ng tin\",\"menu_id\":\"thong-tin\"}','2022-01-04 21:11:43','2022-01-04 21:11:43'),(14,'BlogSearchWidget','primary_sidebar','wowy-vi',0,'{\"id\":\"BlogSearchWidget\",\"name\":\"T\\u00ecm ki\\u1ebfm\"}','2022-01-04 21:11:43','2022-01-04 21:11:43'),(15,'BlogCategoriesWidget','primary_sidebar','wowy-vi',1,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Danh m\\u1ee5c\"}','2022-01-04 21:11:43','2022-01-04 21:11:43'),(16,'RecentPostsWidget','primary_sidebar','wowy-vi',2,'{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft g\\u1ea7n \\u0111\\u00e2y\"}','2022-01-04 21:11:43','2022-01-04 21:11:43'),(17,'TagsWidget','primary_sidebar','wowy-vi',4,'{\"id\":\"TagsWidget\",\"name\":\"Tags ph\\u1ed5 bi\\u1ebfn\"}','2022-01-04 21:11:43','2022-01-04 21:11:43'),(18,'ProductCategoriesWidget','product_sidebar','wowy-vi',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Danh m\\u1ee5c s\\u1ea3n ph\\u1ea9m\"}','2022-01-04 21:11:43','2022-01-04 21:11:43'),(19,'FeaturedProductsWidget','product_sidebar','wowy-vi',2,'{\"id\":\"FeaturedProductsWidget\",\"name\":\"S\\u1ea3n ph\\u1ea9m n\\u1ed5i b\\u1eadt\"}','2022-01-04 21:11:43','2022-01-04 21:11:43'),(20,'FeaturedBrandsWidget','product_sidebar','wowy-vi',3,'{\"id\":\"FeaturedBrandsWidget\",\"name\":\"Nh\\u00e0 cung c\\u1ea5p\"}','2022-01-04 21:11:43','2022-01-04 21:11:43');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-01 15:30:45