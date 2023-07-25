-- MySQL dump 10.13  Distrib 5.7.42, for Linux (x86_64)
--
-- Host: localhost    Database: countryside_development
-- ------------------------------------------------------
-- Server version	5.7.42

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
-- Table structure for table `active_storage_attachments`
--

DROP TABLE IF EXISTS `active_storage_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `active_storage_attachments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `record_type` varchar(255) NOT NULL,
  `record_id` bigint(20) NOT NULL,
  `blob_id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_attachments_uniqueness` (`record_type`,`record_id`,`name`,`blob_id`),
  KEY `index_active_storage_attachments_on_blob_id` (`blob_id`),
  CONSTRAINT `fk_rails_c3b3935057` FOREIGN KEY (`blob_id`) REFERENCES `active_storage_blobs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_storage_attachments`
--

LOCK TABLES `active_storage_attachments` WRITE;
/*!40000 ALTER TABLE `active_storage_attachments` DISABLE KEYS */;
INSERT INTO `active_storage_attachments` VALUES (1,'avatar','UserProfile',1,1,'2023-07-24 23:58:14.472720'),(2,'image','ActiveStorage::VariantRecord',1,2,'2023-07-24 23:58:15.026822'),(3,'images','Post',1,3,'2023-07-24 23:59:07.470151'),(4,'images','Post',1,4,'2023-07-24 23:59:07.480649'),(5,'images','Post',1,5,'2023-07-24 23:59:07.495378'),(6,'images','Post',1,6,'2023-07-24 23:59:07.515701'),(7,'images','Post',1,7,'2023-07-24 23:59:07.538259'),(8,'image','ActiveStorage::VariantRecord',2,8,'2023-07-24 23:59:08.616456'),(9,'image','ActiveStorage::VariantRecord',3,9,'2023-07-24 23:59:08.923571'),(10,'image','ActiveStorage::VariantRecord',4,10,'2023-07-24 23:59:08.946399'),(11,'image','ActiveStorage::VariantRecord',5,11,'2023-07-24 23:59:14.093442'),(12,'image','ActiveStorage::VariantRecord',6,12,'2023-07-24 23:59:14.190211'),(13,'image','ActiveStorage::VariantRecord',7,13,'2023-07-25 00:00:16.057364'),(14,'avatar','UserProfile',2,14,'2023-07-25 00:01:02.059067'),(15,'image','ActiveStorage::VariantRecord',8,15,'2023-07-25 00:01:02.443805'),(16,'images','Post',2,16,'2023-07-25 00:01:30.011429'),(17,'image','ActiveStorage::VariantRecord',9,17,'2023-07-25 00:01:30.433736'),(18,'image','ActiveStorage::VariantRecord',10,18,'2023-07-25 00:01:59.597202'),(19,'image','ActiveStorage::VariantRecord',11,19,'2023-07-25 00:01:59.641252');
/*!40000 ALTER TABLE `active_storage_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `active_storage_blobs`
--

DROP TABLE IF EXISTS `active_storage_blobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `active_storage_blobs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `metadata` text,
  `service_name` varchar(255) NOT NULL,
  `byte_size` bigint(20) NOT NULL,
  `checksum` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_blobs_on_key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_storage_blobs`
--

LOCK TABLES `active_storage_blobs` WRITE;
/*!40000 ALTER TABLE `active_storage_blobs` DISABLE KEYS */;
INSERT INTO `active_storage_blobs` VALUES (1,'9ccpn9x0egfbmu8uinp1qgxpuub4','2020-09-04-15-04-36-731-1.jpg','image/jpeg','{\"identified\":true,\"width\":1024,\"height\":768,\"analyzed\":true}','test',62525,'Obo9RIDFm5dLCPP77wno1A==','2023-07-24 23:58:14.466956'),(2,'kqcvlwaijgoy5jjhn9bd8a0gx86a','2020-09-04-15-04-36-731-1.jpg','image/jpeg','{\"identified\":true,\"width\":400,\"height\":300,\"analyzed\":true}','test',16459,'9DgSFnN+HNxIyPvHP8Nw3w==','2023-07-24 23:58:15.021588'),(3,'4vygwk07hnlt2q43e4frcqhpvfkp','4.jpg','image/jpeg','{\"identified\":true,\"width\":692,\"height\":461,\"analyzed\":true}','test',193783,'w4lBKJgIHqU634nSmc0PAQ==','2023-07-24 23:59:07.465032'),(4,'x9jkujknomgx0koe80o2vmq6ao5s','5f1a70682700001310e67507.jpeg','image/jpeg','{\"identified\":true,\"width\":1199,\"height\":630,\"analyzed\":true}','test',166613,'hBes7KQaokKgPgygvRXlZw==','2023-07-24 23:59:07.474533'),(5,'px7mzblz0ytbnv7i034m3hfkjlgl','046.jpg','image/jpeg','{\"identified\":true,\"width\":735,\"height\":435,\"analyzed\":true}','test',94737,'2KelYy6qsafANOtcNdxcaQ==','2023-07-24 23:59:07.485919'),(6,'w8nz7foj9bdcpprpjza4zxcg2551','img_option_dolphin-1.jpg','image/jpeg','{\"identified\":true,\"width\":800,\"height\":450,\"analyzed\":true}','test',47169,'077uhaVY2mNPgv7+iPkz7g==','2023-07-24 23:59:07.504947'),(7,'w0bsw6pe1mgtepzc4zy8kh8uetns','p_SIN.jpg','image/jpeg','{\"identified\":true,\"width\":500,\"height\":273,\"analyzed\":true}','test',115397,'M9/Xyw1GC1EP9oPeALR9Pg==','2023-07-24 23:59:07.527089'),(8,'ll4xh0ny6tyunnxmoq6qikxhdn0u','p_SIN.jpg','image/jpeg','{\"identified\":true,\"width\":500,\"height\":273,\"analyzed\":true}','test',119276,'Y7TWNn0VXQJCpwaTui0oRA==','2023-07-24 23:59:08.597153'),(9,'r1isjuu4dmx8wz661tg1h6lqk0gc','img_option_dolphin-1.jpg','image/jpeg','{\"identified\":true,\"width\":622,\"height\":350,\"analyzed\":true}','test',38356,'R6fwLDlQd0J7yVKxme26Vw==','2023-07-24 23:59:08.897155'),(10,'maudermpgmb51dmvj01siwhsygha','046.jpg','image/jpeg','{\"identified\":true,\"width\":591,\"height\":350,\"analyzed\":true}','test',147501,'PsZ0/lYT1sqLeT75JVy9AQ==','2023-07-24 23:59:08.927974'),(11,'9j5win7yc4ndasu1e78ek1tqsygv','4.jpg','image/jpeg','{\"identified\":true,\"width\":525,\"height\":350,\"analyzed\":true}','test',133220,'3B0Uuvhjtm07AehzUyF4kA==','2023-07-24 23:59:08.934667'),(12,'0mdu3t169z3urmctlxw7ksjb4hxs','5f1a70682700001310e67507.jpeg','image/jpeg','{\"identified\":true,\"width\":666,\"height\":350,\"analyzed\":true}','test',51995,'2kWE++i4c/CMGFvugdJUWw==','2023-07-24 23:59:14.161171'),(13,'arc2n651qejpg8mx0khtmi2rkucm','2020-09-04-15-04-36-731-1.jpg','image/jpeg','{\"identified\":true,\"width\":50,\"height\":50,\"analyzed\":true}','test',1363,'IBsjInY5yvH9lIO3kMGYGw==','2023-07-25 00:00:16.052022'),(14,'fd9h7qum2g00qsfvyblq4m9242tx','376-new-sonota-05-18-02.jpg','image/jpeg','{\"identified\":true,\"width\":375,\"height\":525,\"analyzed\":true}','test',229866,'FOlK1KJ3qDRqdq3/gQr5ww==','2023-07-25 00:01:02.052608'),(15,'gh2n4w5x510hzui95773a5p4bj3q','376-new-sonota-05-18-02.jpg','image/jpeg','{\"identified\":true,\"width\":286,\"height\":400,\"analyzed\":true}','test',157061,'uVZmgzvAWpbmxroCmbRkxQ==','2023-07-25 00:01:02.436427'),(16,'jhy84t8q062sa3g5y2p4aittecwh','p_SIN.jpg','image/jpeg','{\"identified\":true,\"width\":500,\"height\":273,\"analyzed\":true}','test',115397,'M9/Xyw1GC1EP9oPeALR9Pg==','2023-07-25 00:01:30.004778'),(17,'vgn4irf7j960o3ojfj90linhxcca','p_SIN.jpg','image/jpeg','{\"identified\":true,\"width\":500,\"height\":273,\"analyzed\":true}','test',119276,'Y7TWNn0VXQJCpwaTui0oRA==','2023-07-25 00:01:30.429785'),(18,'x62ihslgjo75ljy6yffuvuly1kzp','p_SIN.jpg','image/jpeg','{\"identified\":true,\"width\":250,\"height\":220,\"analyzed\":true}','test',52556,'WkJ25iHZ6xn6ZfGMwPFsrw==','2023-07-25 00:01:59.591034'),(19,'lwd1owi7a0gyo55lr9q6zg2ixlej','4.jpg','image/jpeg','{\"identified\":true,\"width\":250,\"height\":220,\"analyzed\":true}','test',73640,'E2LFtJnWeZu2NMXCaDipzw==','2023-07-25 00:01:59.634142');
/*!40000 ALTER TABLE `active_storage_blobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `active_storage_variant_records`
--

DROP TABLE IF EXISTS `active_storage_variant_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `active_storage_variant_records` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `blob_id` bigint(20) NOT NULL,
  `variation_digest` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_variant_records_uniqueness` (`blob_id`,`variation_digest`),
  CONSTRAINT `fk_rails_993965df05` FOREIGN KEY (`blob_id`) REFERENCES `active_storage_blobs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_storage_variant_records`
--

LOCK TABLES `active_storage_variant_records` WRITE;
/*!40000 ALTER TABLE `active_storage_variant_records` DISABLE KEYS */;
INSERT INTO `active_storage_variant_records` VALUES (1,1,'511iy5HjR/JOPn6SHwBHIp4Cz5c='),(7,1,'FoGro3T/qHGg3QlFXfhi3ffv0NU='),(11,3,'EJdVl95E3/+gT6J8VKqx8p5CY1Q='),(5,3,'nO3UuUgQbj40eBeDsjeXY199AtU='),(6,4,'AFRRPJJXHqtSNzqyDNBlgAS/xQ8='),(4,5,'nO3UuUgQbj40eBeDsjeXY199AtU='),(3,6,'nO3UuUgQbj40eBeDsjeXY199AtU='),(2,7,'nO3UuUgQbj40eBeDsjeXY199AtU='),(8,14,'511iy5HjR/JOPn6SHwBHIp4Cz5c='),(10,16,'EJdVl95E3/+gT6J8VKqx8p5CY1Q='),(9,16,'nO3UuUgQbj40eBeDsjeXY199AtU=');
/*!40000 ALTER TABLE `active_storage_variant_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime(6) DEFAULT NULL,
  `remember_created_at` datetime(6) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admins_on_email` (`email`),
  UNIQUE KEY `index_admins_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'admin@gmail.com','$2a$12$ZIeArqmArP2YAGdXUw0nDOhAdBHveLSfNEmOXWC4vO4JFE2PTVhZS',NULL,NULL,NULL,'2023-07-24 23:57:12.335625','2023-07-24 23:57:12.335625');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2023-07-24 23:56:06.455074','2023-07-24 23:56:06.455074');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_about_regions`
--

DROP TABLE IF EXISTS `category_about_regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_about_regions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_about_regions`
--

LOCK TABLES `category_about_regions` WRITE;
/*!40000 ALTER TABLE `category_about_regions` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_about_regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_earnests`
--

DROP TABLE IF EXISTS `category_earnests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_earnests` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_earnests`
--

LOCK TABLES `category_earnests` WRITE;
/*!40000 ALTER TABLE `category_earnests` DISABLE KEYS */;
INSERT INTO `category_earnests` VALUES (1,'本気','2023-07-24 23:57:38.640340','2023-07-24 23:57:38.640340');
/*!40000 ALTER TABLE `category_earnests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_features`
--

DROP TABLE IF EXISTS `category_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_features` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_features`
--

LOCK TABLES `category_features` WRITE;
/*!40000 ALTER TABLE `category_features` DISABLE KEYS */;
INSERT INTO `category_features` VALUES (1,'緑が多い','2023-07-24 23:57:28.546182','2023-07-24 23:57:28.546182');
/*!40000 ALTER TABLE `category_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_immigration_supports`
--

DROP TABLE IF EXISTS `category_immigration_supports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_immigration_supports` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_immigration_supports`
--

LOCK TABLES `category_immigration_supports` WRITE;
/*!40000 ALTER TABLE `category_immigration_supports` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_immigration_supports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_incubations`
--

DROP TABLE IF EXISTS `category_incubations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_incubations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_incubations`
--

LOCK TABLES `category_incubations` WRITE;
/*!40000 ALTER TABLE `category_incubations` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_incubations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_interests`
--

DROP TABLE IF EXISTS `category_interests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_interests` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_interests`
--

LOCK TABLES `category_interests` WRITE;
/*!40000 ALTER TABLE `category_interests` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_interests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_issues`
--

DROP TABLE IF EXISTS `category_issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_issues` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_issues`
--

LOCK TABLES `category_issues` WRITE;
/*!40000 ALTER TABLE `category_issues` DISABLE KEYS */;
INSERT INTO `category_issues` VALUES (1,'金銭支援','2023-07-24 23:57:20.851676','2023-07-24 23:57:20.851676');
/*!40000 ALTER TABLE `category_issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_jobs`
--

DROP TABLE IF EXISTS `category_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_jobs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_jobs`
--

LOCK TABLES `category_jobs` WRITE;
/*!40000 ALTER TABLE `category_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_markets`
--

DROP TABLE IF EXISTS `category_markets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_markets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_markets`
--

LOCK TABLES `category_markets` WRITE;
/*!40000 ALTER TABLE `category_markets` DISABLE KEYS */;
INSERT INTO `category_markets` VALUES (1,'若い人に興味が多い','2023-07-24 23:57:24.743633','2023-07-24 23:57:24.743633');
/*!40000 ALTER TABLE `category_markets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_realizabilities`
--

DROP TABLE IF EXISTS `category_realizabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_realizabilities` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_realizabilities`
--

LOCK TABLES `category_realizabilities` WRITE;
/*!40000 ALTER TABLE `category_realizabilities` DISABLE KEYS */;
INSERT INTO `category_realizabilities` VALUES (1,'高い','2023-07-24 23:57:31.438201','2023-07-24 23:57:31.438201');
/*!40000 ALTER TABLE `category_realizabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_resources`
--

DROP TABLE IF EXISTS `category_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_resources` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_resources`
--

LOCK TABLES `category_resources` WRITE;
/*!40000 ALTER TABLE `category_resources` DISABLE KEYS */;
INSERT INTO `category_resources` VALUES (1,'スポーツ','2023-07-24 23:57:16.737546','2023-07-24 23:57:16.737546'),(2,'食','2023-07-24 23:57:19.023044','2023-07-24 23:57:19.023044');
/*!40000 ALTER TABLE `category_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_skills`
--

DROP TABLE IF EXISTS `category_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_skills` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_skills`
--

LOCK TABLES `category_skills` WRITE;
/*!40000 ALTER TABLE `category_skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_wants`
--

DROP TABLE IF EXISTS `category_wants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_wants` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_wants`
--

LOCK TABLES `category_wants` WRITE;
/*!40000 ALTER TABLE `category_wants` DISABLE KEYS */;
INSERT INTO `category_wants` VALUES (1,'店を作る','2023-07-24 23:57:36.476230','2023-07-24 23:57:36.476230');
/*!40000 ALTER TABLE `category_wants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `content` text,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,1,1,'ああ','2023-07-25 00:00:15.582120','2023-07-25 00:00:15.582120');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorites` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (1,2,2,'2023-07-25 00:04:08.532059','2023-07-25 00:04:08.532059');
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `from_id` int(11) DEFAULT NULL,
  `to_id` int(11) DEFAULT NULL,
  `content` text,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_messages_on_from_id` (`from_id`),
  KEY `index_messages_on_to_id` (`to_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,1,2,'こんにちは！','2023-07-25 00:22:54.770148','2023-07-25 00:22:54.770148'),(2,1,2,'やあ','2023-07-25 00:27:58.572302','2023-07-25 00:27:58.572302'),(3,2,1,'やあ','2023-07-25 00:28:19.729194','2023-07-25 00:28:19.729194'),(4,2,1,'こんにちは','2023-07-25 00:40:16.662604','2023-07-25 00:40:16.662604'),(5,2,1,'よろしく','2023-07-25 00:42:00.438081','2023-07-25 00:42:00.438081'),(6,1,2,'やあ\n','2023-07-25 00:42:28.186015','2023-07-25 00:42:28.186015');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_category_earnests`
--

DROP TABLE IF EXISTS `post_category_earnests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_category_earnests` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `category_earnest_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_category_earnests`
--

LOCK TABLES `post_category_earnests` WRITE;
/*!40000 ALTER TABLE `post_category_earnests` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_category_earnests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_category_features`
--

DROP TABLE IF EXISTS `post_category_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_category_features` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `category_feature_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_category_features`
--

LOCK TABLES `post_category_features` WRITE;
/*!40000 ALTER TABLE `post_category_features` DISABLE KEYS */;
INSERT INTO `post_category_features` VALUES (1,1,1,'2023-07-24 23:59:07.874368','2023-07-24 23:59:07.874368'),(2,2,1,'2023-07-25 00:01:30.113009','2023-07-25 00:01:30.113009');
/*!40000 ALTER TABLE `post_category_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_category_issues`
--

DROP TABLE IF EXISTS `post_category_issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_category_issues` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `category_issue_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_category_issues`
--

LOCK TABLES `post_category_issues` WRITE;
/*!40000 ALTER TABLE `post_category_issues` DISABLE KEYS */;
INSERT INTO `post_category_issues` VALUES (1,1,1,'2023-07-24 23:59:07.782698','2023-07-24 23:59:07.782698'),(2,2,1,'2023-07-25 00:01:30.092643','2023-07-25 00:01:30.092643');
/*!40000 ALTER TABLE `post_category_issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_category_markets`
--

DROP TABLE IF EXISTS `post_category_markets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_category_markets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `category_market_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_category_markets`
--

LOCK TABLES `post_category_markets` WRITE;
/*!40000 ALTER TABLE `post_category_markets` DISABLE KEYS */;
INSERT INTO `post_category_markets` VALUES (1,1,1,'2023-07-24 23:59:07.834174','2023-07-24 23:59:07.834174');
/*!40000 ALTER TABLE `post_category_markets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_category_realizabilities`
--

DROP TABLE IF EXISTS `post_category_realizabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_category_realizabilities` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `category_realizability_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_category_realizabilities`
--

LOCK TABLES `post_category_realizabilities` WRITE;
/*!40000 ALTER TABLE `post_category_realizabilities` DISABLE KEYS */;
INSERT INTO `post_category_realizabilities` VALUES (1,1,1,'2023-07-24 23:59:07.912070','2023-07-24 23:59:07.912070');
/*!40000 ALTER TABLE `post_category_realizabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_category_resources`
--

DROP TABLE IF EXISTS `post_category_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_category_resources` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `category_resource_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_category_resources`
--

LOCK TABLES `post_category_resources` WRITE;
/*!40000 ALTER TABLE `post_category_resources` DISABLE KEYS */;
INSERT INTO `post_category_resources` VALUES (1,1,1,'2023-07-24 23:59:07.716201','2023-07-24 23:59:07.716201'),(2,1,2,'2023-07-24 23:59:07.739434','2023-07-24 23:59:07.739434'),(3,2,1,'2023-07-25 00:01:30.050564','2023-07-25 00:01:30.050564'),(4,2,2,'2023-07-25 00:01:30.074585','2023-07-25 00:01:30.074585');
/*!40000 ALTER TABLE `post_category_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_category_wants`
--

DROP TABLE IF EXISTS `post_category_wants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_category_wants` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `category_want_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_category_wants`
--

LOCK TABLES `post_category_wants` WRITE;
/*!40000 ALTER TABLE `post_category_wants` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_category_wants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `post_type` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `prefecture` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `body1` text,
  `body2` text,
  `feature` text,
  `attachment` varchar(255) DEFAULT NULL,
  `realizability` varchar(255) DEFAULT NULL,
  `earnest` varchar(255) DEFAULT NULL,
  `public_status_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1,1,'テスト','宮城県','市川市','テスト',NULL,'',NULL,'大',NULL,1,'2023-07-24 23:59:07.459823','2023-07-24 23:59:07.546417'),(2,2,1,'テスト２','栃木県','山形市','テスト2',NULL,'',NULL,'',NULL,1,'2023-07-25 00:01:29.998882','2023-07-25 00:01:30.015757');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_category_about_regions`
--

DROP TABLE IF EXISTS `profile_category_about_regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_category_about_regions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_profile_id` int(11) DEFAULT NULL,
  `category_about_region_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_category_about_regions`
--

LOCK TABLES `profile_category_about_regions` WRITE;
/*!40000 ALTER TABLE `profile_category_about_regions` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_category_about_regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_category_immigration_supports`
--

DROP TABLE IF EXISTS `profile_category_immigration_supports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_category_immigration_supports` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_profile_id` int(11) DEFAULT NULL,
  `category_immigration_support_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_category_immigration_supports`
--

LOCK TABLES `profile_category_immigration_supports` WRITE;
/*!40000 ALTER TABLE `profile_category_immigration_supports` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_category_immigration_supports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_category_incubations`
--

DROP TABLE IF EXISTS `profile_category_incubations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_category_incubations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_profile_id` int(11) DEFAULT NULL,
  `category_immigration_support_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_category_incubations`
--

LOCK TABLES `profile_category_incubations` WRITE;
/*!40000 ALTER TABLE `profile_category_incubations` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_category_incubations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_category_interests`
--

DROP TABLE IF EXISTS `profile_category_interests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_category_interests` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_profile_id` int(11) DEFAULT NULL,
  `category_interest_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_category_interests`
--

LOCK TABLES `profile_category_interests` WRITE;
/*!40000 ALTER TABLE `profile_category_interests` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_category_interests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_category_jobs`
--

DROP TABLE IF EXISTS `profile_category_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_category_jobs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_profile_id` int(11) DEFAULT NULL,
  `category_job_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_category_jobs`
--

LOCK TABLES `profile_category_jobs` WRITE;
/*!40000 ALTER TABLE `profile_category_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_category_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_category_skills`
--

DROP TABLE IF EXISTS `profile_category_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_category_skills` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_profile_id` int(11) DEFAULT NULL,
  `category_skill_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_category_skills`
--

LOCK TABLES `profile_category_skills` WRITE;
/*!40000 ALTER TABLE `profile_category_skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_category_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20230522065701'),('20230525071856'),('20230529001819'),('20230604205251'),('20230613205406'),('20230620004150'),('20230623215032'),('20230625230312'),('20230626225354'),('20230627051719'),('20230630061143'),('20230701204207'),('20230701205525'),('20230703002619'),('20230703021718'),('20230703035609'),('20230703035619'),('20230703035648'),('20230703035659'),('20230703035719'),('20230703035734'),('20230705023326'),('20230705023351'),('20230705023416'),('20230705023427'),('20230705023459'),('20230705023510'),('20230705023536'),('20230705023543'),('20230705023600'),('20230705023611'),('20230705023629'),('20230705023637'),('20230725000801');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profiles`
--

DROP TABLE IF EXISTS `user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_profiles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `profile_type1` tinyint(1) DEFAULT NULL,
  `profile_type2` tinyint(1) DEFAULT NULL,
  `screen_name` varchar(255) DEFAULT NULL,
  `prefecture` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `about_region` text,
  `immigration_support` text,
  `incubation` text,
  `job` text,
  `skill` text,
  `interest` text,
  `other1` text,
  `other2` text,
  `public_status_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profiles`
--

LOCK TABLES `user_profiles` WRITE;
/*!40000 ALTER TABLE `user_profiles` DISABLE KEYS */;
INSERT INTO `user_profiles` VALUES (1,1,1,1,'島尚徳','北海道','市川市','','','','','','','','',1,'2023-07-24 23:58:14.423738','2023-07-24 23:58:14.477944'),(2,2,1,NULL,'田中太郎','栃木県','市川市','','','','','','','','',1,'2023-07-25 00:01:02.030705','2023-07-25 00:01:02.063222');
/*!40000 ALTER TABLE `user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime(6) DEFAULT NULL,
  `remember_created_at` datetime(6) DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime(6) DEFAULT NULL,
  `last_sign_in_at` datetime(6) DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'shima@gmail.com','$2a$12$0OWNWcynROncS.lxH3qRJ.v4wPcYSe3rSn9Isd0226Ke0uMz6r/Dm',NULL,NULL,NULL,3,'2023-07-25 00:42:12.091889','2023-07-25 00:04:24.252306','60.125.207.150','60.125.207.150','2023-07-24 23:57:51.339251','2023-07-25 00:42:12.092171'),(2,'tanaka@gmail.com','$2a$12$ICGxKlDQngN/uKBKZWrGqODzQrcMEoWs7iGXymQHTh8ADKdxTHvkS',NULL,NULL,NULL,2,'2023-07-25 00:28:10.101624','2023-07-25 00:00:36.632455','60.125.207.150','60.125.207.150','2023-07-25 00:00:36.621768','2023-07-25 00:28:10.101892');
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

-- Dump completed on 2023-07-25  0:49:45
