-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: sample
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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP NOT NULL DEFAULT now() ON UPDATE now(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'India Pale Ale','2017-07-04 19:26:43','2017-07-04 19:26:43'),(2,'Imperial India Pale Ale','2017-07-04 19:26:43','2017-07-04 19:26:43'),(3,'Pale Ale','2017-07-04 19:26:43','2017-07-04 19:26:43'),(4,'Russian Imperial Stout','2017-07-04 19:26:43','2017-07-04 19:26:43'),(5,'Porter','2017-07-04 19:26:43','2017-07-04 19:26:43'),(6,'Imperial Porter','2017-07-04 19:26:43','2017-07-04 19:26:43'),(7,'Rauchbier','2017-07-04 19:26:43','2017-07-04 19:26:43');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1,'Colorado Indica','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce scelerisque eget purus rhoncus malesuada. Donec tempus nisl odio, ut feugiat massa pretium vitae. Phasellus vulputate arcu ac nulla venenatis, eget posuere mauris interdum.',15.9,'2017-07-04 19:26:43','2017-07-04 19:26:43'),(2,1,'Ballast Point Sculpin','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce scelerisque eget purus rhoncus malesuada. Donec tempus nisl odio, ut feugiat massa pretium vitae. Phasellus vulputate arcu ac nulla venenatis, eget posuere mauris interdum.',25.9,'2017-07-04 19:26:43','2017-07-04 19:26:43'),(3,2,'BrewDog Hardcore IPA','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce scelerisque eget purus rhoncus malesuada. Donec tempus nisl odio, ut feugiat massa pretium vitae. Phasellus vulputate arcu ac nulla venenatis, eget posuere mauris interdum.',35.9,'2017-07-04 19:26:43','2017-07-04 19:26:43'),(4,2,'BrewDog Anarchist / Alchemist','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce scelerisque eget purus rhoncus malesuada. Donec tempus nisl odio, ut feugiat massa pretium vitae. Phasellus vulputate arcu ac nulla venenatis, eget posuere mauris interdum.',90.9,'2017-07-04 19:26:43','2017-07-04 19:26:43'),(5,3,'Coopers Original Pale Ale','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce scelerisque eget purus rhoncus malesuada. Donec tempus nisl odio, ut feugiat massa pretium vitae. Phasellus vulputate arcu ac nulla venenatis, eget posuere mauris interdum.',16.9,'2017-07-04 19:26:43','2017-07-04 19:26:43'),(6,3,'Fat Yak Original Pale Ale','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce scelerisque eget purus rhoncus malesuada. Donec tempus nisl odio, ut feugiat massa pretium vitae. Phasellus vulputate arcu ac nulla venenatis, eget posuere mauris interdum.',16.9,'2017-07-04 19:26:43','2017-07-04 19:26:43'),(7,4,'Rasputin Russian Imperial Stout','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce scelerisque eget purus rhoncus malesuada. Donec tempus nisl odio, ut feugiat massa pretium vitae. Phasellus vulputate arcu ac nulla venenatis, eget posuere mauris interdum.',45.9,'2017-07-04 19:26:43','2017-07-04 19:26:43'),(8,4,'Stone Russian Imperial Stout','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce scelerisque eget purus rhoncus malesuada. Donec tempus nisl odio, ut feugiat massa pretium vitae. Phasellus vulputate arcu ac nulla venenatis, eget posuere mauris interdum.',45.9,'2017-07-04 19:26:43','2017-07-04 19:26:43'),(9,5,'Lodon Porter','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce scelerisque eget purus rhoncus malesuada. Donec tempus nisl odio, ut feugiat massa pretium vitae. Phasellus vulputate arcu ac nulla venenatis, eget posuere mauris interdum.',25.9,'2017-07-04 19:26:43','2017-07-04 19:26:43'),(10,5,'Colorado Demoiselle','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce scelerisque eget purus rhoncus malesuada. Donec tempus nisl odio, ut feugiat massa pretium vitae. Phasellus vulputate arcu ac nulla venenatis, eget posuere mauris interdum.',25.9,'2017-07-04 19:26:43','2017-07-04 19:26:43'),(11,6,'Lodon Porter','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce scelerisque eget purus rhoncus malesuada. Donec tempus nisl odio, ut feugiat massa pretium vitae. Phasellus vulputate arcu ac nulla venenatis, eget posuere mauris interdum.',35.9,'2017-07-04 19:26:43','2017-07-04 19:26:43'),(12,6,'Tupiniquim Monjolo ','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce scelerisque eget purus rhoncus malesuada. Donec tempus nisl odio, ut feugiat massa pretium vitae. Phasellus vulputate arcu ac nulla venenatis, eget posuere mauris interdum.',35.9,'2017-07-04 19:26:43','2017-07-04 19:26:43'),(13,7,'Schlenkerla','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce scelerisque eget purus rhoncus malesuada. Donec tempus nisl odio, ut feugiat massa pretium vitae. Phasellus vulputate arcu ac nulla venenatis, eget posuere mauris interdum.',35.9,'2017-07-04 19:26:43','2017-07-04 19:26:43'),(14,7,'Bamberg Rauchbier','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce scelerisque eget purus rhoncus malesuada. Donec tempus nisl odio, ut feugiat massa pretium vitae. Phasellus vulputate arcu ac nulla venenatis, eget posuere mauris interdum.',35.9,'2017-07-04 19:26:43','2017-07-04 19:26:43');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-04 16:27:07
