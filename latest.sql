-- MariaDB dump 10.17  Distrib 10.4.10-MariaDB, for osx10.15 (x86_64)
--
-- Host: localhost    Database: venture
-- ------------------------------------------------------
-- Server version	10.4.10-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `about_pages`
--

DROP TABLE IF EXISTS `about_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `about_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `AboutUs` longtext NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Subtitle` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `BestPlaceContent` longtext NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about_pages`
--

LOCK TABLES `about_pages` WRITE;
/*!40000 ALTER TABLE `about_pages` DISABLE KEYS */;
INSERT INTO `about_pages` VALUES (1,'Venture Plans is a  sophisticated team of diverse industry-specific consultants, financial and legal advisors, and digital masters from elite universities with institutional-caliber capabilities. We endeavor to provide greater focus and heightened service for our global clients. Venture Plans Supports high-tech firms with an emphasis on growth, marketing, and go-to-market strategy focused through financial institutions and private equity. With deep customer analysis and marketing best practices, we shape companies\' strategies in over 150 + Industries with our business plans, and digital innovation to accelerate top-line growth. At venture plans our model is to provide deep insight to help companies win in the Long term. We have considerable operating expertise in software and product management and development in our technology division, to help our clients with every aspect of their business objectives. ','About Us','Venture Plans, your dream starts with us.','Global consulting firm with a speciality in innovation, Technology, Digital Transformation, Financing and Revenue Growth.','Venture Plans is a  sophisticated team of diverse industry-specific consultants, financial and legal advisors, and digital masters from elite universities with institutional-caliber capabilities. We endeavor to provide greater focus and heightened service for our global clients. Venture Plans Supports high-tech firms with an emphasis on growth, marketing, and go-to-market strategy focused through financial institutions and private equity. With deep customer analysis and marketing best practices, we shape companies\' strategies in over 150 + Industries with our business plans, and digital innovation to accelerate top-line growth. At venture plans our model is to provide deep insight to help companies win in the Long term. We have considerable operating expertise in software and product management and development in our technology division, to help our clients with every aspect of their business objectives. ',1,1,'2021-07-24 11:28:24','2021-07-29 03:44:57');
/*!40000 ALTER TABLE `about_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `about_pages_components`
--

DROP TABLE IF EXISTS `about_pages_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `about_pages_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `about_page_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `about_page_id_fk` (`about_page_id`),
  CONSTRAINT `about_page_id_fk` FOREIGN KEY (`about_page_id`) REFERENCES `about_pages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about_pages_components`
--

LOCK TABLES `about_pages_components` WRITE;
/*!40000 ALTER TABLE `about_pages_components` DISABLE KEYS */;
INSERT INTO `about_pages_components` VALUES (1,'PassionResults',1,'components_passion_results_passion_results',1,1),(2,'PassionResults',2,'components_passion_results_passion_results',2,1),(3,'PassionResults',3,'components_passion_results_passion_results',3,1),(5,'PassionResults',4,'components_passion_results_passion_results',5,1);
/*!40000 ALTER TABLE `about_pages_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accelerate_entries`
--

DROP TABLE IF EXISTS `accelerate_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accelerate_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FullName` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `PhoneNumber` varchar(255) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accelerate_entries`
--

LOCK TABLES `accelerate_entries` WRITE;
/*!40000 ALTER TABLE `accelerate_entries` DISABLE KEYS */;
INSERT INTO `accelerate_entries` VALUES (1,'kiem','info@xdevlabs.com','+84906282404',NULL,NULL,'2021-07-28 02:10:30','2021-07-28 02:10:30'),(2,'kiem','info@xdevlabs.com','+84906282404',NULL,NULL,'2021-07-28 02:10:36','2021-07-28 02:10:36'),(3,'Hoang Kiem','kiemhd@outlook.com','0906282404',NULL,NULL,'2021-07-29 02:12:19','2021-07-29 02:12:19');
/*!40000 ALTER TABLE `accelerate_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accelerate_entries_components`
--

DROP TABLE IF EXISTS `accelerate_entries_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accelerate_entries_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `accelerate_entry_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `accelerate_entry_id_fk` (`accelerate_entry_id`),
  CONSTRAINT `accelerate_entry_id_fk` FOREIGN KEY (`accelerate_entry_id`) REFERENCES `accelerate_entries` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accelerate_entries_components`
--

LOCK TABLES `accelerate_entries_components` WRITE;
/*!40000 ALTER TABLE `accelerate_entries_components` DISABLE KEYS */;
INSERT INTO `accelerate_entries_components` VALUES (1,'QuestionOptionEntry',1,'components_question_option_entry_question_option_entries',1,1),(2,'QuestionOptionEntry',2,'components_question_option_entry_question_option_entries',2,1),(3,'QuestionOptionEntry',3,'components_question_option_entry_question_option_entries',3,1),(4,'QuestionOptionEntry',1,'components_question_option_entry_question_option_entries',4,2),(5,'QuestionOptionEntry',2,'components_question_option_entry_question_option_entries',5,2),(6,'QuestionOptionEntry',3,'components_question_option_entry_question_option_entries',6,2),(7,'QuestionOptionEntry',1,'components_question_option_entry_question_option_entries',7,3),(8,'QuestionOptionEntry',2,'components_question_option_entry_question_option_entries',8,3),(9,'QuestionOptionEntry',3,'components_question_option_entry_question_option_entries',9,3);
/*!40000 ALTER TABLE `accelerate_entries_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accelerates`
--

DROP TABLE IF EXISTS `accelerates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accelerates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) NOT NULL,
  `Content` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accelerates`
--

LOCK TABLES `accelerates` WRITE;
/*!40000 ALTER TABLE `accelerates` DISABLE KEYS */;
INSERT INTO `accelerates` VALUES (1,'Your trusted partner in navigating through uncertain times. Let’s accelerate your growth.','Answer three questions so we can better help you with your Business objectives','home',1,1,'2021-07-24 03:12:24','2021-07-28 13:31:55'),(2,'Your trusted partner in navigating through uncertain times. Let’s accelerate your growth.','Answer three questions so we can better help you with finding the right grants for your entity','grants',1,1,'2021-07-24 03:21:24','2021-07-24 03:21:25');
/*!40000 ALTER TABLE `accelerates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accelerates_components`
--

DROP TABLE IF EXISTS `accelerates_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accelerates_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `accelerate_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `accelerate_id_fk` (`accelerate_id`),
  CONSTRAINT `accelerate_id_fk` FOREIGN KEY (`accelerate_id`) REFERENCES `accelerates` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accelerates_components`
--

LOCK TABLES `accelerates_components` WRITE;
/*!40000 ALTER TABLE `accelerates_components` DISABLE KEYS */;
INSERT INTO `accelerates_components` VALUES (1,'QuestionOption',1,'components_question_option_question_options',1,1),(2,'QuestionOption',2,'components_question_option_question_options',2,1),(3,'QuestionOption',3,'components_question_option_question_options',3,1),(4,'QuestionOption',1,'components_question_option_question_options',4,2),(5,'QuestionOption',2,'components_question_option_question_options',5,2),(6,'QuestionOption',3,'components_question_option_question_options',6,2);
/*!40000 ALTER TABLE `accelerates_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `author` int(11) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `articles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,'What\'s inside a Black Hole','Maybe the answer is in this article, or not...','Well, we don\'t know yet...','what-s-inside-a-black-hole',1,2,'2021-06-21 15:07:46',NULL,NULL,'2021-06-21 15:07:46','2021-06-21 15:07:46'),(2,'This shrimp is awesome','Mantis shrimps, or stomatopods, are marine crustaceans of the order Stomatopoda. Some species have specialised calcified \"clubs\" that can strike with great power, while others have sharp forelimbs used to capture prey.','# Badass\n\nMantis shrimps, or stomatopods, are marine crustaceans of the order Stomatopoda. Some species have specialised calcified \"*clubs*\" that can strike with **great power**, while others have sharp forelimbs used to capture prey. They branched from other members of the class Malacostraca around 340 million years ago. Mantis shrimps typically grow to around 10 cm (3.9 in) in length. A few can reach up to 38 cm (15 in). The largest mantis shrimp ever caught had a length of 46 cm (18 in); it was caught in the Indian River near Fort Pierce, Florida, in the United States. A mantis shrimp\'s carapace (the bony, thick shell that covers crustaceans and some other species) covers only the rear part of the head and the first four segments of the thorax. Varieties range in color from shades of brown to vivid colors, with more than 450 species of mantis shrimps being known. They are among the most important predators in many shallow, tropical and subtropical marine habitats. However, despite being common, they are poorly understood, as many species spend most of their lives tucked away in burrows and holes.\n\nCalled \"sea locusts\" by ancient Assyrians, \"prawn killers\" in Australia, and now sometimes referred to as \"thumb splitters\"—because of the animal\'s ability to inflict painful gashes if handled incautiously—mantis shrimps have powerful claws that are used to attack and kill prey by spearing, stunning, or dismembering.\n\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/CW8NUCPLE1c\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\n\nMantis shrimps have, like mantis, ravishing legs. But theirs are so resilient that they inspire the military to make the armor of the future. Above all, their speed and striking power are the responsibility of the superpowers. As the comic book The Oatmeal recounts, the squid\'s ravishing legs move at the speed of a bullet fired by a 22 caliber and can strike a prey in 1/3000 of a second, with a force of 1,500 Newtons. One tenth of that speed, deployed by a human arm, \"would be enough to send a baseball into orbit.\"\n\nA speed such as it boils water around ravishing legs and creates a shock wave capable of killing a prey missed by the strike.\n\nKept in an aquarium, crustaceans make carnage by dismembering and devouring crabs, shrimps, octopuses, snails and shells (whose shells they break). They would even be able to break the windows of overly fragile aquariums.','this-shrimp-is-awesome',4,1,'2021-06-21 15:07:46',NULL,NULL,'2021-06-21 15:07:46','2021-06-21 15:07:46'),(3,'A bug is becoming a meme on the internet','How a bug on MySQL is becoming a meme on the internet','It\'s the story of a user named **Omer Barnir** who reported a bug in 2005 on the MySQL [bug report platform](https://bugs.mysql.com/)\n\nBut the thing is that Omer never get an answer. 15 years later, the bug has never been fix and people are starting to make fun out of it. We let you take a look at the conversation [here](https://bugs.mysql.com/bug.php?id=11472), it\'s pretty funny','a-bug-is-becoming-a-meme-on-the-internet',2,2,'2021-06-21 15:07:46',NULL,NULL,'2021-06-21 15:07:46','2021-06-21 15:07:46'),(4,'Beautiful picture','Description of a beautiful picture','This is an empty blog post with a beautiful picture','beautiful-picture',4,2,'2021-06-21 15:07:46',NULL,NULL,'2021-06-21 15:07:46','2021-06-21 15:07:46'),(5,'We love Pizza','Pizza is so delicious, specially four cheese pizza','We love pizza at Strapi, what about you?','we-love-pizza',3,1,'2021-06-21 15:07:46',NULL,NULL,'2021-06-21 15:07:46','2021-06-21 15:07:46');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brands` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Link` longtext NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'#',1,1,'2021-07-24 03:22:49','2021-08-07 15:38:20'),(2,'#',1,1,'2021-07-24 03:23:04','2021-08-07 15:42:50'),(3,'#',1,1,'2021-07-24 03:23:28','2021-08-07 15:42:24'),(4,'#',1,1,'2021-07-24 03:23:37','2021-08-07 15:41:56'),(5,'#',1,1,'2021-07-24 03:23:57','2021-08-07 15:41:26'),(6,'#',1,1,'2021-07-24 03:24:09','2021-08-07 15:40:48'),(7,'#',1,1,'2021-07-24 03:24:19','2021-08-07 15:40:01'),(8,'#',1,1,'2021-08-07 15:35:47','2021-08-07 15:39:20');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business_pages`
--

DROP TABLE IF EXISTS `business_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) NOT NULL,
  `Subtitle` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_pages`
--

LOCK TABLES `business_pages` WRITE;
/*!40000 ALTER TABLE `business_pages` DISABLE KEYS */;
INSERT INTO `business_pages` VALUES (1,'RAISE CAPITAL WITH CUSTOM INVESTOR  BUSINESS PLANS AND PPMS  ','Venture Plans, your dream starts with us','Get funding with FINRA and Harvard  Accredited  Industry Experts ',1,1,'2021-07-24 11:33:55','2021-07-24 11:33:55');
/*!40000 ALTER TABLE `business_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business_pages_components`
--

DROP TABLE IF EXISTS `business_pages_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_pages_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `business_page_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `business_page_id_fk` (`business_page_id`),
  CONSTRAINT `business_page_id_fk` FOREIGN KEY (`business_page_id`) REFERENCES `business_pages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_pages_components`
--

LOCK TABLES `business_pages_components` WRITE;
/*!40000 ALTER TABLE `business_pages_components` DISABLE KEYS */;
INSERT INTO `business_pages_components` VALUES (1,'SamplePlan',1,'components_sample_plan_sample_plans',1,1);
/*!40000 ALTER TABLE `business_pages_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'news','news',NULL,NULL,'2021-06-21 15:07:45','2021-06-21 15:07:45'),(2,'tech','tech',NULL,NULL,'2021-06-21 15:07:45','2021-06-21 15:07:45'),(3,'food','food',NULL,NULL,'2021-06-21 15:07:45','2021-06-21 15:07:45'),(4,'nature','nature',NULL,NULL,'2021-06-21 15:07:45','2021-06-21 15:07:45'),(5,'story','story',NULL,NULL,'2021-06-21 15:07:45','2021-06-21 15:07:45');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_words`
--

DROP TABLE IF EXISTS `client_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_words` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Content` longtext NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_words`
--

LOCK TABLES `client_words` WRITE;
/*!40000 ALTER TABLE `client_words` DISABLE KEYS */;
INSERT INTO `client_words` VALUES (1,'Jack K- Boulon D Amour','Venture Plans has extensive experience and a proven track record for securing grant applications targeting nationwide federal funding. They backed us in achieving a 3.5 M rise. They are friendly, experienced, and talented. Grant approvals in the U.S. have been highly competitive, Covid had reduced our income by 50 %, and we needed urgent assistance from an experienced team to advise and provide grant application support.',1,1,'2021-07-24 03:25:25','2021-07-24 03:25:26'),(2,'Jack K- Boulon D Amour','Venture Plans has extensive experience and a proven track record for securing grant applications targeting nationwide federal funding. They backed us in achieving a 3.5 M rise. They are friendly, experienced, and talented. Grant approvals in the U.S. have been highly competitive, Covid had reduced our income by 50 %, and we needed urgent assistance from an experienced team to advise and provide grant application support.',1,1,'2021-07-24 03:25:46','2021-07-24 03:25:46');
/*!40000 ALTER TABLE `client_words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_business_services_business_services`
--

DROP TABLE IF EXISTS `components_business_services_business_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_business_services_business_services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_business_services_business_services`
--

LOCK TABLES `components_business_services_business_services` WRITE;
/*!40000 ALTER TABLE `components_business_services_business_services` DISABLE KEYS */;
INSERT INTO `components_business_services_business_services` VALUES (1,'Commercial Real Estate'),(2,'Cannabis Application Support'),(3,'Consumer Product & services'),(4,'Clean Tech, Fitness'),(5,'Financial Services'),(6,'Medical Technology, Biotech, Healthcare'),(7,'Education & E-Learning'),(13,'Restaurants & Bars, Serve Robotics');
/*!40000 ALTER TABLE `components_business_services_business_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_column_columns`
--

DROP TABLE IF EXISTS `components_column_columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_column_columns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_column_columns`
--

LOCK TABLES `components_column_columns` WRITE;
/*!40000 ALTER TABLE `components_column_columns` DISABLE KEYS */;
INSERT INTO `components_column_columns` VALUES (1,NULL),(2,'Business Plans'),(3,NULL),(4,NULL),(5,NULL),(6,'Data Market Reports'),(7,NULL),(8,NULL),(9,NULL),(10,NULL),(11,''),(12,NULL),(13,NULL),(14,NULL),(15,NULL),(16,NULL),(17,NULL),(18,NULL),(19,NULL);
/*!40000 ALTER TABLE `components_column_columns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_column_columns__menu_items`
--

DROP TABLE IF EXISTS `components_column_columns__menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_column_columns__menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `components_column_column_id` int(11) DEFAULT NULL,
  `sub-menu_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_column_columns__menu_items`
--

LOCK TABLES `components_column_columns__menu_items` WRITE;
/*!40000 ALTER TABLE `components_column_columns__menu_items` DISABLE KEYS */;
INSERT INTO `components_column_columns__menu_items` VALUES (1,1,3),(2,1,4),(3,1,5),(4,2,17),(5,2,18),(6,3,23),(7,3,24),(8,3,25),(9,3,26),(10,3,27),(11,4,28),(12,4,29),(13,4,30),(14,4,31),(15,4,32),(16,5,33),(17,5,32),(18,6,34),(19,6,35),(20,7,6),(21,7,7),(22,7,8),(23,8,9),(24,8,10),(25,9,11),(26,9,12),(27,9,13),(28,10,14),(29,10,15),(30,11,37),(31,11,38),(32,12,42),(33,12,43),(34,12,44),(35,12,45),(36,12,46),(37,12,47),(38,13,48),(39,14,73),(40,15,79),(41,15,80),(42,15,81),(43,16,56),(44,17,61),(45,17,62),(46,17,63),(47,17,64),(48,18,65),(49,18,66),(50,18,46),(51,18,68),(52,19,69),(53,19,70),(54,19,71);
/*!40000 ALTER TABLE `components_column_columns__menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_country_region_country_regions`
--

DROP TABLE IF EXISTS `components_country_region_country_regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_country_region_country_regions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_country_region_country_regions`
--

LOCK TABLES `components_country_region_country_regions` WRITE;
/*!40000 ALTER TABLE `components_country_region_country_regions` DISABLE KEYS */;
INSERT INTO `components_country_region_country_regions` VALUES (1,'England'),(2,'United States');
/*!40000 ALTER TABLE `components_country_region_country_regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_decoration_heroes`
--

DROP TABLE IF EXISTS `components_decoration_heroes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_decoration_heroes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_decoration_heroes`
--

LOCK TABLES `components_decoration_heroes` WRITE;
/*!40000 ALTER TABLE `components_decoration_heroes` DISABLE KEYS */;
INSERT INTO `components_decoration_heroes` VALUES (1,'Test content with blog pages'),(2,'My blog');
/*!40000 ALTER TABLE `components_decoration_heroes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_inquiry_reason_inquiry_reasons`
--

DROP TABLE IF EXISTS `components_inquiry_reason_inquiry_reasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_inquiry_reason_inquiry_reasons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_inquiry_reason_inquiry_reasons`
--

LOCK TABLES `components_inquiry_reason_inquiry_reasons` WRITE;
/*!40000 ALTER TABLE `components_inquiry_reason_inquiry_reasons` DISABLE KEYS */;
INSERT INTO `components_inquiry_reason_inquiry_reasons` VALUES (1,'Business Inquiry: I\'m looking to work with Venture Plans'),(2,'Business Inquiry: I\'m looking for Venture Plans business services'),(3,'Partnership Request: I have a business and I am looking for operation resources or capital'),(4,'Press / Media: I\'m looking to feature you in our press release'),(5,'Speaker Request: I\'m looking for a speaker at our event'),(6,'Vendor Inquiry: I\'m looking to sell our product to you'),(7,'Career Information: I\'m looking to work with Venture Plans'),(8,'Other');
/*!40000 ALTER TABLE `components_inquiry_reason_inquiry_reasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_option_options`
--

DROP TABLE IF EXISTS `components_option_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_option_options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Option` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_option_options`
--

LOCK TABLES `components_option_options` WRITE;
/*!40000 ALTER TABLE `components_option_options` DISABLE KEYS */;
INSERT INTO `components_option_options` VALUES (1,'Start-up'),(2,'Seeking Exit'),(3,'In-revenue'),(4,'Acquisition'),(5,'M&A'),(6,'IPO & ICO'),(7,'Raise Capital'),(8,'Software or App Development'),(9,'Write a Business Plan'),(10,'Request For Proposal'),(11,'Technology'),(12,'Fintechnology'),(13,'Real Estate'),(14,'Health Care'),(15,'Research & Science'),(16,'Police Brutality'),(17,'Health Care'),(18,'Affordable Housing'),(19,'Economic Development'),(20,'Yes'),(21,'No'),(22,'Grant Proposal & Budget'),(23,'Full Grant(s) Application Management'),(24,'Grant Proposal'),(25,'Data and Market Trend Reports'),(26,'Due Diligence Certification'),(27,'Investment Portfolios'),(28,'Digital Transformation'),(29,'Agile Implementation'),(30,'Restructring'),(31,'Automation '),(32,'Digital Marketing '),(33,'Legals '),(34,'Crowdfunding '),(35,'Private Placement Memorandum'),(36,'E-B5, E-2 VISA '),(37,'Cannabis Licensing & Aplication Support  '),(38,'Tax Planing '),(39,'Growth Strategy Implementation '),(40,'Intellectual Property '),(41,'Mangement Consulting '),(42,'Artificial Intelligence '),(43,'Artificial Intelligence '),(44,'Consumer goods & Manufacturing'),(45,'Real Estate '),(46,'Cannabis '),(47,'Autombile Manufacturing '),(48,'Clean Tech'),(49,'Education & E-Learning '),(50,'Robotics '),(51,'Advanced Consumer goods & Manufacturing'),(52,'Automation'),(53,'Quantum Information Science '),(54,'5-G Advanced Wireless Technology'),(55,'Biotechnlogy '),(56,'Pharmaceutical'),(57,'Non-Profit Organization'),(58,'Finance'),(59,'Virtual Reality'),(60,'Oil & Gas'),(61,'Electric Automobile Manufacturing '),(62,'3-D Printing '),(63,'Gaming '),(64,'Cybersecurity'),(65,'Biometrics'),(66,'Cultivation '),(67,'Block Chain'),(68,'Aerospace & Defense  '),(69,'Law, Financial Consulting & Accounting '),(70,'Consumer Product & Services '),(71,'Software, Apps, & Telecomunications '),(72,'Medical Technology, Health & Fitness '),(73,'Other');
/*!40000 ALTER TABLE `components_option_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_passion_results_passion_results`
--

DROP TABLE IF EXISTS `components_passion_results_passion_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_passion_results_passion_results` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) DEFAULT NULL,
  `Content` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_passion_results_passion_results`
--

LOCK TABLES `components_passion_results_passion_results` WRITE;
/*!40000 ALTER TABLE `components_passion_results_passion_results` DISABLE KEYS */;
INSERT INTO `components_passion_results_passion_results` VALUES (1,'Passion & Diligence','We exceed professional expectations through customer engagement and guarantee results with strong work ethic.'),(2,'Honesty & Openness','We uphold integrity and trust in our work. We are accountable and consistent in driving results.'),(3,'Practical','We use proprietary standard operating procedures that are tested and proven for maximizing operational efficiencies'),(5,'One Team','Our accredited advisors work together to align with your vision and boost your growth.');
/*!40000 ALTER TABLE `components_passion_results_passion_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_positions_positions`
--

DROP TABLE IF EXISTS `components_positions_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_positions_positions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Position` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_positions_positions`
--

LOCK TABLES `components_positions_positions` WRITE;
/*!40000 ALTER TABLE `components_positions_positions` DISABLE KEYS */;
INSERT INTO `components_positions_positions` VALUES (1,'Managing Director at Interstate'),(2,'Venture Capital'),(3,'Switzerland Venture Capital'),(4,'Managing Director at Interstate Venture Capital ');
/*!40000 ALTER TABLE `components_positions_positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_question_option_entry_question_option_entries`
--

DROP TABLE IF EXISTS `components_question_option_entry_question_option_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_question_option_entry_question_option_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Question` varchar(255) DEFAULT NULL,
  `Option` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_question_option_entry_question_option_entries`
--

LOCK TABLES `components_question_option_entry_question_option_entries` WRITE;
/*!40000 ALTER TABLE `components_question_option_entry_question_option_entries` DISABLE KEYS */;
INSERT INTO `components_question_option_entry_question_option_entries` VALUES (1,'What phase is your business in?','Start-up'),(2,'What service best suits your needs?','Write a Business Plan'),(3,'What is your industry?','Technology'),(4,'What phase is your business in?','Start-up'),(5,'What service best suits your needs?','Write a Business Plan'),(6,'What is your industry?','Technology'),(7,'What industry below best describes your entity?','Research & Science'),(8,'Are you a registered 501 (c) 3 non profit organization?','No'),(9,'What can Venture Plans do to better serve your needs?','Full Grant(s) Application Management');
/*!40000 ALTER TABLE `components_question_option_entry_question_option_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_question_option_question_options`
--

DROP TABLE IF EXISTS `components_question_option_question_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_question_option_question_options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Question` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_question_option_question_options`
--

LOCK TABLES `components_question_option_question_options` WRITE;
/*!40000 ALTER TABLE `components_question_option_question_options` DISABLE KEYS */;
INSERT INTO `components_question_option_question_options` VALUES (1,'What phase is your business in?'),(2,'What service best suits your needs?'),(3,'What is your industry?'),(4,'What industry below best describes your entity?'),(5,'Are you a registered 501 (c) 3 non profit organization?'),(6,'What can Venture Plans do to better serve your needs?');
/*!40000 ALTER TABLE `components_question_option_question_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_question_option_question_options_components`
--

DROP TABLE IF EXISTS `components_question_option_question_options_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_question_option_question_options_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `components_question_option_question_option_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `components_question_option_question_option_id_fk` (`components_question_option_question_option_id`),
  CONSTRAINT `components_question_option_question_option_id_fk` FOREIGN KEY (`components_question_option_question_option_id`) REFERENCES `components_question_option_question_options` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_question_option_question_options_components`
--

LOCK TABLES `components_question_option_question_options_components` WRITE;
/*!40000 ALTER TABLE `components_question_option_question_options_components` DISABLE KEYS */;
INSERT INTO `components_question_option_question_options_components` VALUES (1,'Option',1,'components_option_options',1,1),(2,'Option',2,'components_option_options',2,1),(3,'Option',3,'components_option_options',3,1),(4,'Option',4,'components_option_options',4,1),(5,'Option',5,'components_option_options',5,1),(6,'Option',6,'components_option_options',6,1),(7,'Option',1,'components_option_options',7,2),(8,'Option',2,'components_option_options',8,2),(9,'Option',3,'components_option_options',9,2),(10,'Option',4,'components_option_options',10,2),(11,'Option',1,'components_option_options',11,3),(12,'Option',2,'components_option_options',12,3),(13,'Option',3,'components_option_options',13,3),(14,'Option',4,'components_option_options',14,3),(15,'Option',1,'components_option_options',15,4),(16,'Option',2,'components_option_options',16,4),(17,'Option',3,'components_option_options',17,4),(18,'Option',4,'components_option_options',18,4),(19,'Option',5,'components_option_options',19,4),(20,'Option',1,'components_option_options',20,5),(21,'Option',2,'components_option_options',21,5),(22,'Option',1,'components_option_options',22,6),(23,'Option',2,'components_option_options',23,6),(24,'Option',5,'components_option_options',24,2),(25,'Option',6,'components_option_options',25,2),(26,'Option',7,'components_option_options',26,2),(27,'Option',8,'components_option_options',27,2),(28,'Option',9,'components_option_options',28,2),(29,'Option',10,'components_option_options',29,2),(30,'Option',11,'components_option_options',30,2),(31,'Option',12,'components_option_options',31,2),(32,'Option',13,'components_option_options',32,2),(33,'Option',14,'components_option_options',33,2),(34,'Option',15,'components_option_options',34,2),(35,'Option',16,'components_option_options',35,2),(36,'Option',17,'components_option_options',36,2),(37,'Option',18,'components_option_options',37,2),(38,'Option',19,'components_option_options',38,2),(39,'Option',20,'components_option_options',39,2),(40,'Option',21,'components_option_options',40,2),(41,'Option',22,'components_option_options',41,2),(42,'Option',23,'components_option_options',42,2),(43,'Option',5,'components_option_options',43,3),(44,'Option',6,'components_option_options',44,3),(45,'Option',7,'components_option_options',45,3),(46,'Option',8,'components_option_options',46,3),(47,'Option',9,'components_option_options',47,3),(48,'Option',10,'components_option_options',48,3),(49,'Option',11,'components_option_options',49,3),(50,'Option',12,'components_option_options',50,3),(51,'Option',13,'components_option_options',51,3),(52,'Option',14,'components_option_options',52,3),(53,'Option',15,'components_option_options',53,3),(54,'Option',16,'components_option_options',54,3),(55,'Option',17,'components_option_options',55,3),(56,'Option',18,'components_option_options',56,3),(57,'Option',19,'components_option_options',57,3),(58,'Option',20,'components_option_options',58,3),(59,'Option',21,'components_option_options',59,3),(60,'Option',22,'components_option_options',60,3),(61,'Option',23,'components_option_options',61,3),(62,'Option',24,'components_option_options',62,3),(63,'Option',25,'components_option_options',63,3),(64,'Option',26,'components_option_options',64,3),(65,'Option',27,'components_option_options',65,3),(66,'Option',28,'components_option_options',66,3),(67,'Option',29,'components_option_options',67,3),(68,'Option',30,'components_option_options',68,3),(69,'Option',31,'components_option_options',69,3),(70,'Option',32,'components_option_options',70,3),(71,'Option',33,'components_option_options',71,3),(72,'Option',34,'components_option_options',72,3),(73,'Option',35,'components_option_options',73,3);
/*!40000 ALTER TABLE `components_question_option_question_options_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_rating_types_rating_types`
--

DROP TABLE IF EXISTS `components_rating_types_rating_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_rating_types_rating_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_rating_types_rating_types`
--

LOCK TABLES `components_rating_types_rating_types` WRITE;
/*!40000 ALTER TABLE `components_rating_types_rating_types` DISABLE KEYS */;
INSERT INTO `components_rating_types_rating_types` VALUES (1,'google'),(3,'yelp'),(5,'yelp'),(6,'yelp'),(7,'google');
/*!40000 ALTER TABLE `components_rating_types_rating_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_row_dynamic_addresses`
--

DROP TABLE IF EXISTS `components_row_dynamic_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_row_dynamic_addresses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_row_dynamic_addresses`
--

LOCK TABLES `components_row_dynamic_addresses` WRITE;
/*!40000 ALTER TABLE `components_row_dynamic_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_row_dynamic_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_row_rows`
--

DROP TABLE IF EXISTS `components_row_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_row_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_row_rows`
--

LOCK TABLES `components_row_rows` WRITE;
/*!40000 ALTER TABLE `components_row_rows` DISABLE KEYS */;
INSERT INTO `components_row_rows` VALUES (1,'Consulting'),(2,NULL),(3,'Financing'),(4,'Technology'),(5,'Legal advisory');
/*!40000 ALTER TABLE `components_row_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_row_rows_components`
--

DROP TABLE IF EXISTS `components_row_rows_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_row_rows_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `components_row_row_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `components_row_row_id_fk` (`components_row_row_id`),
  CONSTRAINT `components_row_row_id_fk` FOREIGN KEY (`components_row_row_id`) REFERENCES `components_row_rows` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_row_rows_components`
--

LOCK TABLES `components_row_rows_components` WRITE;
/*!40000 ALTER TABLE `components_row_rows_components` DISABLE KEYS */;
INSERT INTO `components_row_rows_components` VALUES (1,'Columns',1,'components_column_columns',1,1),(2,'Columns',1,'components_column_columns',2,2),(3,'Columns',2,'components_column_columns',3,2),(4,'Columns',3,'components_column_columns',4,2),(5,'Columns',4,'components_column_columns',5,2),(6,'Columns',5,'components_column_columns',6,2),(7,'Columns',2,'components_column_columns',7,1),(8,'Columns',3,'components_column_columns',8,1),(9,'Columns',4,'components_column_columns',9,1),(10,'Columns',5,'components_column_columns',10,1),(11,'Columns',1,'components_column_columns',11,3),(12,'Columns',2,'components_column_columns',12,3),(13,'Columns',3,'components_column_columns',13,3),(14,'Columns',1,'components_column_columns',14,4),(15,'Columns',2,'components_column_columns',15,4),(16,'Columns',1,'components_column_columns',16,5),(17,'Columns',2,'components_column_columns',17,5),(18,'Columns',3,'components_column_columns',18,5),(19,'Columns',4,'components_column_columns',19,5);
/*!40000 ALTER TABLE `components_row_rows_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_sample_plan_sample_plans`
--

DROP TABLE IF EXISTS `components_sample_plan_sample_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_sample_plan_sample_plans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Content` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_sample_plan_sample_plans`
--

LOCK TABLES `components_sample_plan_sample_plans` WRITE;
/*!40000 ALTER TABLE `components_sample_plan_sample_plans` DISABLE KEYS */;
INSERT INTO `components_sample_plan_sample_plans` VALUES (1,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s.\n\nWhen an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s.\n\nWhen an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,');
/*!40000 ALTER TABLE `components_sample_plan_sample_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_sample_plans_sample_plans`
--

DROP TABLE IF EXISTS `components_sample_plans_sample_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_sample_plans_sample_plans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_sample_plans_sample_plans`
--

LOCK TABLES `components_sample_plans_sample_plans` WRITE;
/*!40000 ALTER TABLE `components_sample_plans_sample_plans` DISABLE KEYS */;
INSERT INTO `components_sample_plans_sample_plans` VALUES (1,'Real Estate Business Plan'),(2,'Cannabis Business Plan'),(3,'Bank Plan (SBA)'),(4,'Tech Investor Business Plan');
/*!40000 ALTER TABLE `components_sample_plans_sample_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_shared_seos`
--

DROP TABLE IF EXISTS `components_shared_seos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_shared_seos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `metaTitle` varchar(255) DEFAULT NULL,
  `metaDescription` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_shared_seos`
--

LOCK TABLES `components_shared_seos` WRITE;
/*!40000 ALTER TABLE `components_shared_seos` DISABLE KEYS */;
INSERT INTO `components_shared_seos` VALUES (1,'Venture plan backend','Venture plan backend'),(2,'Page','Venture plan'),(3,'My personal Strapi blog','Discover my SEO friendly blog built with Strapi.'),(4,'Page','A blog made with Strapi');
/*!40000 ALTER TABLE `components_shared_seos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_sliders_sliders`
--

DROP TABLE IF EXISTS `components_sliders_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_sliders_sliders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Title` longtext DEFAULT NULL,
  `Content` longtext DEFAULT NULL,
  `Label` varchar(255) DEFAULT NULL,
  `Link` varchar(255) DEFAULT NULL,
  `LinkType` varchar(255) DEFAULT NULL,
  `BannerType` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_sliders_sliders`
--

LOCK TABLES `components_sliders_sliders` WRITE;
/*!40000 ALTER TABLE `components_sliders_sliders` DISABLE KEYS */;
INSERT INTO `components_sliders_sliders` VALUES (1,'DEEP EXPERTISE\nIN CAPITAL RAISING','Global consulting firm with a speciality in innovation, Technology, Digital Transformation, Financing and Revenue Growth.','Let\'s Work Together','#','Complex',NULL),(2,'INDUSTRIES OF THE FUTURE','Upcoming Industries that will change the job market','Industries of the future','#','Simple',NULL),(3,'Digital transformation','Preparation for a modern world economy','Digital Transformation','#','Simple',NULL),(4,'BIG TRENDS','How will artificial intelligence impact your industry','Recruiting talent','#','Simple',NULL),(5,'Economic Leaders','U.S.,CHINA & INDIA Projected GDP Growth ','Investors & the Economy','#','Simple','Video'),(6,'DEEP EXPERTISE\nIN CAPITAL RAISING','Global consulting firm with a speciality in innovation, Technology, Digital Transformation, Financing and Revenue Growth.','Value of consulting firms','#','Simple',NULL);
/*!40000 ALTER TABLE `components_sliders_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_statistic_content_statistic_contents`
--

DROP TABLE IF EXISTS `components_statistic_content_statistic_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_statistic_content_statistic_contents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_statistic_content_statistic_contents`
--

LOCK TABLES `components_statistic_content_statistic_contents` WRITE;
/*!40000 ALTER TABLE `components_statistic_content_statistic_contents` DISABLE KEYS */;
INSERT INTO `components_statistic_content_statistic_contents` VALUES (1,'Institutional Level Investor Business Plans, PPMS, RFPS, Grant Proposal Drafted'),(2,'Amount of Investments We Helped Our Clients Raise'),(3,'Ivy League Trained'),(4,'Industry Specific'),(5,'Executive Level Grant Experts'),(6,'Accurate Financial Projections & Current'),(7,'Market Research'),(8,'Custom Business Plans'),(9,'Delivered As Fast As 3 Days. We Guarante On Time Delivery'),(10,'In Finance'),(11,'Artificial Intelligence'),(12,'Cannabis, Robotics'),(13,'Real Estate, Fashion'),(14,'Healthcare and More');
/*!40000 ALTER TABLE `components_statistic_content_statistic_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_talk_to_expert_services_tte_services`
--

DROP TABLE IF EXISTS `components_talk_to_expert_services_tte_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_talk_to_expert_services_tte_services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_talk_to_expert_services_tte_services`
--

LOCK TABLES `components_talk_to_expert_services_tte_services` WRITE;
/*!40000 ALTER TABLE `components_talk_to_expert_services_tte_services` DISABLE KEYS */;
INSERT INTO `components_talk_to_expert_services_tte_services` VALUES (1,'Commercial Real Estate'),(2,'Cannabis'),(3,'Clean Tech, Ag Tech'),(4,'Consumer Products & Services, 3D Printing'),(5,'Education & E-learning, AI Cognitive Computing'),(6,'Financial Services, Fin Tech Krypto, Bitcoin'),(7,'Medical Technology, Biotech, Healthcare & Fitness, Machine Learning'),(8,'Manufacturing, Aerospace & Defense, Robotics '),(9,'Software/Apps & Telecommunications, 5 G'),(10,'Law, Consulting & Accounting Brokerage, Insurance'),(11,'Residential Real Estate, Development '),(12,'Restaurants & Bars, Serve Robotics');
/*!40000 ALTER TABLE `components_talk_to_expert_services_tte_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_talk_to_expert_talk_to_experts`
--

DROP TABLE IF EXISTS `components_talk_to_expert_talk_to_experts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_talk_to_expert_talk_to_experts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) DEFAULT NULL,
  `Subtitle` varchar(255) DEFAULT NULL,
  `FormTitle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_talk_to_expert_talk_to_experts`
--

LOCK TABLES `components_talk_to_expert_talk_to_experts` WRITE;
/*!40000 ALTER TABLE `components_talk_to_expert_talk_to_experts` DISABLE KEYS */;
INSERT INTO `components_talk_to_expert_talk_to_experts` VALUES (1,'Ready to talk?','I want to talk to your experts in:','Experienced in capital markets, a client-first culture, and potent track-record');
/*!40000 ALTER TABLE `components_talk_to_expert_talk_to_experts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_talk_to_expert_talk_to_experts_components`
--

DROP TABLE IF EXISTS `components_talk_to_expert_talk_to_experts_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_talk_to_expert_talk_to_experts_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `components_talk_to_expert_talk_to_expert_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `components_talk_to_expert_talk_to_expert_id_fk` (`components_talk_to_expert_talk_to_expert_id`),
  CONSTRAINT `components_talk_to_expert_talk_to_expert_id_fk` FOREIGN KEY (`components_talk_to_expert_talk_to_expert_id`) REFERENCES `components_talk_to_expert_talk_to_experts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_talk_to_expert_talk_to_experts_components`
--

LOCK TABLES `components_talk_to_expert_talk_to_experts_components` WRITE;
/*!40000 ALTER TABLE `components_talk_to_expert_talk_to_experts_components` DISABLE KEYS */;
INSERT INTO `components_talk_to_expert_talk_to_experts_components` VALUES (1,'TTEServices',1,'components_talk_to_expert_services_tte_services',1,1),(2,'TTEServices',2,'components_talk_to_expert_services_tte_services',2,1),(3,'TTEServices',3,'components_talk_to_expert_services_tte_services',3,1),(4,'TTEServices',4,'components_talk_to_expert_services_tte_services',4,1),(5,'TTEServices',5,'components_talk_to_expert_services_tte_services',5,1),(6,'TTEServices',6,'components_talk_to_expert_services_tte_services',6,1),(7,'TTEServices',7,'components_talk_to_expert_services_tte_services',7,1),(8,'TTEServices',8,'components_talk_to_expert_services_tte_services',8,1),(9,'TTEServices',9,'components_talk_to_expert_services_tte_services',9,1),(10,'TTEServices',10,'components_talk_to_expert_services_tte_services',10,1),(11,'TTEServices',11,'components_talk_to_expert_services_tte_services',11,1),(12,'TTEServices',12,'components_talk_to_expert_services_tte_services',12,1);
/*!40000 ALTER TABLE `components_talk_to_expert_talk_to_experts_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consultation_entries`
--

DROP TABLE IF EXISTS `consultation_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consultation_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Email` varchar(255) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `Subscribe` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultation_entries`
--

LOCK TABLES `consultation_entries` WRITE;
/*!40000 ALTER TABLE `consultation_entries` DISABLE KEYS */;
INSERT INTO `consultation_entries` VALUES (1,'fdsfdsfdsfds@gmail.com',NULL,NULL,'2021-08-07 10:45:05','2021-08-07 10:45:05','download'),(2,'fdgfdddffgfgdf@gmail.com',NULL,NULL,'2021-08-07 10:45:10','2021-08-07 10:45:10','subscribe'),(3,'fdgfdddffgfgdf@gmail.com',NULL,NULL,'2021-08-07 10:45:42','2021-08-07 10:45:42','subscribe'),(4,'fdgfdddffgfgdf@gmail.com',NULL,NULL,'2021-08-07 10:45:42','2021-08-07 10:45:42','subscribe'),(5,'fdgfdddffgfgdf@gmail.com',NULL,NULL,'2021-08-07 10:45:42','2021-08-07 10:45:42','subscribe'),(6,'fdgfdddffgfgdf@gmail.com',NULL,NULL,'2021-08-07 10:45:42','2021-08-07 10:45:42','subscribe');
/*!40000 ALTER TABLE `consultation_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_entries`
--

DROP TABLE IF EXISTS `contact_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Reason` varchar(255) DEFAULT NULL,
  `FullName` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `CountryRegion` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `InquiryReason` varchar(255) DEFAULT NULL,
  `Service` varchar(255) DEFAULT NULL,
  `MoreInfo` longtext DEFAULT NULL,
  `Type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_entries`
--

LOCK TABLES `contact_entries` WRITE;
/*!40000 ALTER TABLE `contact_entries` DISABLE KEYS */;
INSERT INTO `contact_entries` VALUES (1,NULL,'kiem hoang','+84906282404',NULL,'info@xdevlabs.com',NULL,1,'2021-07-27 14:14:26','2021-07-28 02:11:18',NULL,'Automation and Digital Transformation',NULL,'Talk'),(2,NULL,'asdf','123456789',NULL,'asd@aol.com',NULL,NULL,'2021-08-05 17:35:26','2021-08-05 17:35:26',NULL,'Cannabis',NULL,'Talk'),(3,NULL,'vgffretre','0954384354',NULL,'45435435@gmail.com',NULL,NULL,'2021-08-06 09:40:26','2021-08-06 09:40:26','Business Inquiry: I\'m looking for Venture Plans business services',NULL,NULL,'Contact'),(4,NULL,'csdfdsfdsfds','0906282404',NULL,'kiemhd@outlook.com',NULL,NULL,'2021-08-10 08:07:04','2021-08-10 08:07:04',NULL,'Clean Tech, Fitness',NULL,'Business');
/*!40000 ALTER TABLE `contact_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_forms`
--

DROP TABLE IF EXISTS `contact_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_forms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_forms`
--

LOCK TABLES `contact_forms` WRITE;
/*!40000 ALTER TABLE `contact_forms` DISABLE KEYS */;
INSERT INTO `contact_forms` VALUES (1,1,1,'2021-06-23 13:38:01','2021-08-10 08:01:02');
/*!40000 ALTER TABLE `contact_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_forms_components`
--

DROP TABLE IF EXISTS `contact_forms_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_forms_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `contact_form_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contact_form_id_fk` (`contact_form_id`),
  CONSTRAINT `contact_form_id_fk` FOREIGN KEY (`contact_form_id`) REFERENCES `contact_forms` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_forms_components`
--

LOCK TABLES `contact_forms_components` WRITE;
/*!40000 ALTER TABLE `contact_forms_components` DISABLE KEYS */;
INSERT INTO `contact_forms_components` VALUES (1,'countryregion',1,'components_country_region_country_regions',1,1),(2,'countryregion',2,'components_country_region_country_regions',2,1),(4,'inquiryreason',1,'components_inquiry_reason_inquiry_reasons',1,1),(5,'inquiryreason',2,'components_inquiry_reason_inquiry_reasons',2,1),(6,'inquiryreason',3,'components_inquiry_reason_inquiry_reasons',3,1),(7,'inquiryreason',4,'components_inquiry_reason_inquiry_reasons',4,1),(8,'inquiryreason',5,'components_inquiry_reason_inquiry_reasons',5,1),(9,'inquiryreason',6,'components_inquiry_reason_inquiry_reasons',6,1),(10,'inquiryreason',7,'components_inquiry_reason_inquiry_reasons',7,1),(11,'inquiryreason',8,'components_inquiry_reason_inquiry_reasons',8,1),(13,'TalkToExpert',1,'components_talk_to_expert_talk_to_experts',1,1),(14,'BusinessServices',1,'components_business_services_business_services',1,1),(15,'BusinessServices',2,'components_business_services_business_services',2,1),(16,'BusinessServices',3,'components_business_services_business_services',3,1),(17,'BusinessServices',4,'components_business_services_business_services',4,1),(18,'BusinessServices',5,'components_business_services_business_services',5,1),(19,'BusinessServices',6,'components_business_services_business_services',6,1),(20,'BusinessServices',7,'components_business_services_business_services',7,1),(26,'BusinessServices',8,'components_business_services_business_services',13,1);
/*!40000 ALTER TABLE `contact_forms_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_pages`
--

DROP TABLE IF EXISTS `contact_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) NOT NULL,
  `HelpContent` longtext NOT NULL,
  `ThanksContent` longtext NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_pages`
--

LOCK TABLES `contact_pages` WRITE;
/*!40000 ALTER TABLE `contact_pages` DISABLE KEYS */;
INSERT INTO `contact_pages` VALUES (1,'Drive change in how your  company operates Contact US ','We bring a fresh perspective and infectious energy to every client relationship. Our emphasis on teamwork, trust and tolerance for diverging opinions helps clients focus on their opportunities, build their capabilities and win the future. Together, we achieve results that bridge what is with what can be.v','We bring a fresh perspective and infectious energy to every client relationship. Our emphasis on teamwork, trust and tolerance for diverging opinions helps clients focus on their opportunities, build their capabilities and win the future. Together, we achieve results that bridge what is with what can be.v',1,1,'2021-07-24 08:43:08','2021-07-24 08:43:08');
/*!40000 ALTER TABLE `contact_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_store`
--

DROP TABLE IF EXISTS `core_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_store` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_store`
--

LOCK TABLES `core_store` WRITE;
/*!40000 ALTER TABLE `core_store` DISABLE KEYS */;
INSERT INTO `core_store` VALUES (1,'model_def_strapi::core-store','{\"uid\":\"strapi::core-store\",\"collectionName\":\"core_store\",\"info\":{\"name\":\"core_store\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}}','object',NULL,NULL),(2,'model_def_sections.hero','{\"uid\":\"sections.hero\",\"collectionName\":\"components_decoration_heroes\",\"info\":{\"name\":\"Hero\",\"icon\":\"address-card\"},\"options\":{\"timestamps\":false},\"attributes\":{\"title\":{\"type\":\"string\",\"required\":true}}}','object',NULL,NULL),(3,'model_def_shared.seo','{\"uid\":\"shared.seo\",\"collectionName\":\"components_shared_seos\",\"info\":{\"name\":\"Seo\",\"icon\":\"allergies\"},\"options\":{\"timestamps\":false},\"attributes\":{\"metaTitle\":{\"type\":\"string\",\"required\":true},\"metaDescription\":{\"type\":\"text\",\"required\":true},\"shareImage\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":false}}}','object',NULL,NULL),(4,'model_def_application::article.article','{\"uid\":\"application::article.article\",\"collectionName\":\"articles\",\"kind\":\"collectionType\",\"info\":{\"name\":\"article\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\",\"required\":true},\"description\":{\"type\":\"text\",\"required\":true},\"content\":{\"type\":\"richtext\",\"required\":true},\"slug\":{\"type\":\"uid\",\"targetField\":\"title\",\"required\":true},\"category\":{\"model\":\"category\",\"via\":\"articles\"},\"image\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"files\",\"images\",\"videos\"],\"plugin\":\"upload\",\"required\":true,\"pluginOptions\":{}},\"author\":{\"via\":\"articles\",\"model\":\"writer\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(5,'model_def_application::category.category','{\"uid\":\"application::category.category\",\"collectionName\":\"categories\",\"kind\":\"collectionType\",\"info\":{\"name\":\"category\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"slug\":{\"type\":\"uid\",\"targetField\":\"name\",\"required\":true},\"articles\":{\"via\":\"category\",\"collection\":\"article\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(6,'model_def_application::global.global','{\"uid\":\"application::global.global\",\"collectionName\":\"globals\",\"kind\":\"singleType\",\"info\":{\"name\":\"Global\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"attributes\":{\"favicon\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false,\"pluginOptions\":{}},\"siteName\":{\"type\":\"string\",\"required\":true},\"defaultSeo\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.seo\",\"required\":true},\"Address\":{\"type\":\"text\",\"required\":true},\"Email\":{\"type\":\"email\",\"required\":true},\"PhoneNumber\":{\"type\":\"string\",\"required\":true},\"FacebookURL\":{\"type\":\"string\"},\"LinkedInURL\":{\"type\":\"string\"},\"TwitterURL\":{\"type\":\"string\"},\"YoutubeURL\":{\"type\":\"string\"},\"InstagramURL\":{\"type\":\"string\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(7,'model_def_application::homepage.homepage','{\"uid\":\"application::homepage.homepage\",\"collectionName\":\"homepages\",\"kind\":\"singleType\",\"info\":{\"name\":\"Homepage\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"attributes\":{\"seo\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.seo\"},\"CompanyOverview\":{\"type\":\"text\",\"required\":true},\"Sliders\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"sliders.sliders\",\"required\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(8,'model_def_application::writer.writer','{\"uid\":\"application::writer.writer\",\"collectionName\":\"writers\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Writer\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"name\":{\"type\":\"string\"},\"picture\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":false},\"articles\":{\"via\":\"author\",\"collection\":\"article\",\"isVirtual\":true},\"email\":{\"type\":\"string\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(9,'model_def_strapi::webhooks','{\"uid\":\"strapi::webhooks\",\"collectionName\":\"strapi_webhooks\",\"info\":{\"name\":\"Strapi webhooks\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\"},\"url\":{\"type\":\"text\"},\"headers\":{\"type\":\"json\"},\"events\":{\"type\":\"json\"},\"enabled\":{\"type\":\"boolean\"}}}','object',NULL,NULL),(10,'model_def_strapi::permission','{\"uid\":\"strapi::permission\",\"collectionName\":\"strapi_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Permission\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"model\":\"role\",\"plugin\":\"admin\"}}}','object',NULL,NULL),(11,'model_def_strapi::role','{\"uid\":\"strapi::role\",\"collectionName\":\"strapi_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Role\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"collection\":\"user\",\"via\":\"roles\",\"plugin\":\"admin\",\"attribute\":\"user\",\"column\":\"id\",\"isVirtual\":true},\"permissions\":{\"configurable\":false,\"plugin\":\"admin\",\"collection\":\"permission\",\"via\":\"role\",\"isVirtual\":true}}}','object',NULL,NULL),(12,'model_def_strapi::user','{\"uid\":\"strapi::user\",\"collectionName\":\"strapi_administrator\",\"kind\":\"collectionType\",\"info\":{\"name\":\"User\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"collection\":\"role\",\"collectionName\":\"strapi_users_roles\",\"via\":\"users\",\"dominant\":true,\"plugin\":\"admin\",\"configurable\":false,\"private\":true,\"attribute\":\"role\",\"column\":\"id\",\"isVirtual\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false}}}','object',NULL,NULL),(13,'model_def_plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"collectionName\":\"users-permissions_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"permission\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(14,'model_def_plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"collectionName\":\"users-permissions_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"role\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(15,'model_def_plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"collectionName\":\"users-permissions_user\",\"kind\":\"collectionType\",\"info\":{\"name\":\"user\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(16,'model_def_plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"collectionName\":\"upload_file\",\"kind\":\"collectionType\",\"info\":{\"name\":\"file\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(17,'model_def_plugins::i18n.locale','{\"uid\":\"plugins::i18n.locale\",\"collectionName\":\"i18n_locales\",\"kind\":\"collectionType\",\"info\":{\"name\":\"locale\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(18,'plugin_upload_settings','{\"sizeOptimization\":true,\"responsiveDimensions\":true}','object','development',''),(19,'plugin_users-permissions_grant','{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"}}','object','',''),(20,'plugin_content_manager_configuration_components::sections.hero','{\"uid\":\"sections.hero\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\"],\"edit\":[[{\"name\":\"title\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object','',''),(21,'plugin_content_manager_configuration_components::shared.seo','{\"uid\":\"shared.seo\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"metaTitle\",\"defaultSortBy\":\"metaTitle\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"metaTitle\":{\"edit\":{\"label\":\"MetaTitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"MetaTitle\",\"searchable\":true,\"sortable\":true}},\"metaDescription\":{\"edit\":{\"label\":\"MetaDescription\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"MetaDescription\",\"searchable\":true,\"sortable\":true}},\"shareImage\":{\"edit\":{\"label\":\"ShareImage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ShareImage\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"metaTitle\",\"metaDescription\",\"shareImage\"],\"edit\":[[{\"name\":\"shareImage\",\"size\":6},{\"name\":\"metaDescription\",\"size\":6}],[{\"name\":\"metaTitle\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object','',''),(22,'plugin_i18n_default_locale','\"en\"','string','',''),(23,'plugin_users-permissions_email','{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}','object','',''),(24,'plugin_content_manager_configuration_content_types::application::global.global','{\"uid\":\"application::global.global\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"siteName\",\"defaultSortBy\":\"siteName\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"favicon\":{\"edit\":{\"label\":\"Favicon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Favicon\",\"searchable\":false,\"sortable\":false}},\"siteName\":{\"edit\":{\"label\":\"SiteName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"SiteName\",\"searchable\":true,\"sortable\":true}},\"defaultSeo\":{\"edit\":{\"label\":\"DefaultSeo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"DefaultSeo\",\"searchable\":false,\"sortable\":false}},\"Address\":{\"edit\":{\"label\":\"Address\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Address\",\"searchable\":true,\"sortable\":true}},\"Email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"PhoneNumber\":{\"edit\":{\"label\":\"PhoneNumber\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PhoneNumber\",\"searchable\":true,\"sortable\":true}},\"FacebookURL\":{\"edit\":{\"label\":\"FacebookURL\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"FacebookURL\",\"searchable\":true,\"sortable\":true}},\"LinkedInURL\":{\"edit\":{\"label\":\"LinkedInURL\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"LinkedInURL\",\"searchable\":true,\"sortable\":true}},\"TwitterURL\":{\"edit\":{\"label\":\"TwitterURL\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"TwitterURL\",\"searchable\":true,\"sortable\":true}},\"YoutubeURL\":{\"edit\":{\"label\":\"YoutubeURL\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"YoutubeURL\",\"searchable\":true,\"sortable\":true}},\"InstagramURL\":{\"edit\":{\"label\":\"InstagramURL\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"InstagramURL\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"favicon\",\"siteName\",\"created_at\"],\"edit\":[[{\"name\":\"defaultSeo\",\"size\":12}],[{\"name\":\"siteName\",\"size\":6},{\"name\":\"Address\",\"size\":6}],[{\"name\":\"PhoneNumber\",\"size\":6},{\"name\":\"Email\",\"size\":6}],[{\"name\":\"favicon\",\"size\":6},{\"name\":\"FacebookURL\",\"size\":6}],[{\"name\":\"LinkedInURL\",\"size\":6},{\"name\":\"TwitterURL\",\"size\":6}],[{\"name\":\"YoutubeURL\",\"size\":6},{\"name\":\"InstagramURL\",\"size\":6}]],\"editRelations\":[]}}','object','',''),(25,'plugin_content_manager_configuration_content_types::application::homepage.homepage','{\"uid\":\"application::homepage.homepage\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"seo\":{\"edit\":{\"label\":\"Seo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Seo\",\"searchable\":false,\"sortable\":false}},\"CompanyOverview\":{\"edit\":{\"label\":\"CompanyOverview\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"CompanyOverview\",\"searchable\":true,\"sortable\":true}},\"Sliders\":{\"edit\":{\"label\":\"Sliders\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Sliders\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"created_at\",\"updated_at\",\"CompanyOverview\"],\"edit\":[[{\"name\":\"seo\",\"size\":12}],[{\"name\":\"CompanyOverview\",\"size\":6}],[{\"name\":\"Sliders\",\"size\":12}]],\"editRelations\":[]}}','object','',''),(27,'plugin_content_manager_configuration_content_types::strapi::permission','{\"uid\":\"strapi::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"Subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"Properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"Conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}','object','',''),(29,'plugin_content_manager_configuration_content_types::plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"type\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}','object','',''),(30,'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"type\",\"defaultSortBy\":\"type\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"controller\":{\"edit\":{\"label\":\"Controller\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Controller\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"policy\":{\"edit\":{\"label\":\"Policy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Policy\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"type\",\"controller\",\"action\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"controller\",\"size\":6}],[{\"name\":\"action\",\"size\":6},{\"name\":\"enabled\",\"size\":4}],[{\"name\":\"policy\",\"size\":6}]]}}','object','',''),(32,'plugin_content_manager_configuration_content_types::plugins::i18n.locale','{\"uid\":\"plugins::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"created_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}','object','',''),(33,'plugin_content_manager_configuration_content_types::plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"AlternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"Caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"Width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"Height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"Formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"Hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"Ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"Mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"Size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"PreviewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreviewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"Provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider_metadata\",\"searchable\":false,\"sortable\":false}},\"related\":{\"edit\":{\"label\":\"Related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Related\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"related\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}','object','',''),(34,'plugin_content_manager_configuration_content_types::plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"ConfirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ConfirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"Confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}','object','',''),(35,'plugin_content_manager_configuration_content_types::strapi::role','{\"uid\":\"strapi::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}','object','',''),(36,'plugin_content_manager_configuration_content_types::strapi::user','{\"uid\":\"strapi::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"Firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"Lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"RegistrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"RegistrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"IsActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"Roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"PreferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreferedLanguage\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"preferedLanguage\",\"size\":6}]]}}','object','',''),(37,'plugin_users-permissions_advanced','{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}','object','',''),(38,'type_setup_initHasRun','true','boolean','development',''),(39,'core_admin_auth','{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}','object','',''),(40,'model_def_application::pages.pages','{\"uid\":\"application::pages.pages\",\"collectionName\":\"pages\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Pages\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"Title\":{\"type\":\"string\",\"required\":true},\"FeatureImage\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":true,\"pluginOptions\":{}},\"Slug\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"Content\":{\"type\":\"richtext\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(42,'model_def_application::inquiry-reasons.inquiry-reasons','{\"uid\":\"application::inquiry-reasons.inquiry-reasons\",\"collectionName\":\"inquiry_reasons\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Inquiry Reasons\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"Reason\":{\"type\":\"text\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(44,'model_def_country-region.country-region','{\"uid\":\"country-region.country-region\",\"collectionName\":\"components_country_region_country_regions\",\"info\":{\"name\":\"Country / Region\",\"icon\":\"location-arrow\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"Name\":{\"type\":\"string\",\"required\":true}}}','object',NULL,NULL),(45,'model_def_inquiry-reason.inquiry-reasons','{\"uid\":\"inquiry-reason.inquiry-reasons\",\"collectionName\":\"components_inquiry_reason_inquiry_reasons\",\"info\":{\"name\":\"Inquiry Reasons\",\"icon\":\"tag\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"Reason\":{\"type\":\"string\",\"required\":true}}}','object',NULL,NULL),(46,'model_def_application::contact-form.contact-form','{\"uid\":\"application::contact-form.contact-form\",\"collectionName\":\"contact_forms\",\"kind\":\"singleType\",\"info\":{\"name\":\"Contact Form\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"CountryRegion\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"country-region.country-region\",\"required\":true},\"InquiryReason\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"inquiry-reason.inquiry-reasons\",\"required\":true},\"TalkToExpert\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"talk-to-expert.talk-to-expert\",\"required\":true},\"BusinessServices\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"business-services.business-services\",\"required\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(50,'model_def_application::contact-entries.contact-entries','{\"uid\":\"application::contact-entries.contact-entries\",\"collectionName\":\"contact_entries\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Contact Entries\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"FullName\":{\"type\":\"string\",\"required\":true},\"Phone\":{\"type\":\"string\",\"required\":true},\"Email\":{\"type\":\"email\",\"required\":true},\"InquiryReason\":{\"type\":\"string\",\"required\":false},\"CountryRegion\":{\"type\":\"string\"},\"Service\":{\"type\":\"string\"},\"MoreInfo\":{\"type\":\"richtext\"},\"Type\":{\"type\":\"enumeration\",\"enum\":[\"Business\",\"Talk\",\"Contact\"],\"required\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(55,'plugin_content_manager_configuration_components::inquiry-reason.inquiry-reasons','{\"uid\":\"inquiry-reason.inquiry-reasons\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Reason\",\"defaultSortBy\":\"Reason\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"Reason\":{\"edit\":{\"label\":\"Reason\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Reason\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Reason\"],\"edit\":[[{\"name\":\"Reason\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object','',''),(56,'plugin_content_manager_configuration_components::country-region.country-region','{\"uid\":\"country-region.country-region\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Name\",\"defaultSortBy\":\"Name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"Name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Name\"],\"edit\":[[{\"name\":\"Name\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object','',''),(57,'plugin_content_manager_configuration_content_types::application::contact-entries.contact-entries','{\"uid\":\"application::contact-entries.contact-entries\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"FullName\",\"defaultSortBy\":\"FullName\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"FullName\":{\"edit\":{\"label\":\"FullName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"FullName\",\"searchable\":true,\"sortable\":true}},\"Phone\":{\"edit\":{\"label\":\"Phone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Phone\",\"searchable\":true,\"sortable\":true}},\"Email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"InquiryReason\":{\"edit\":{\"label\":\"InquiryReason\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"InquiryReason\",\"searchable\":true,\"sortable\":true}},\"CountryRegion\":{\"edit\":{\"label\":\"CountryRegion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"CountryRegion\",\"searchable\":true,\"sortable\":true}},\"Service\":{\"edit\":{\"label\":\"Service\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Service\",\"searchable\":true,\"sortable\":true}},\"MoreInfo\":{\"edit\":{\"label\":\"MoreInfo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"MoreInfo\",\"searchable\":false,\"sortable\":false}},\"Type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"FullName\",\"Phone\",\"InquiryReason\"],\"edit\":[[{\"name\":\"FullName\",\"size\":6}],[{\"name\":\"Phone\",\"size\":6},{\"name\":\"CountryRegion\",\"size\":6}],[{\"name\":\"Email\",\"size\":6},{\"name\":\"InquiryReason\",\"size\":6}],[{\"name\":\"Service\",\"size\":6}],[{\"name\":\"MoreInfo\",\"size\":12}],[{\"name\":\"Type\",\"size\":6}]],\"editRelations\":[]}}','object','',''),(58,'plugin_content_manager_configuration_content_types::application::contact-form.contact-form','{\"uid\":\"application::contact-form.contact-form\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"CountryRegion\":{\"edit\":{\"label\":\"CountryRegion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"CountryRegion\",\"searchable\":false,\"sortable\":false}},\"InquiryReason\":{\"edit\":{\"label\":\"InquiryReason\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"InquiryReason\",\"searchable\":false,\"sortable\":false}},\"TalkToExpert\":{\"edit\":{\"label\":\"TalkToExpert\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"TalkToExpert\",\"searchable\":false,\"sortable\":false}},\"BusinessServices\":{\"edit\":{\"label\":\"BusinessServices\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"BusinessServices\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"created_at\",\"updated_at\"],\"edit\":[[{\"name\":\"CountryRegion\",\"size\":12}],[{\"name\":\"InquiryReason\",\"size\":12}],[{\"name\":\"TalkToExpert\",\"size\":12}],[{\"name\":\"BusinessServices\",\"size\":12}]],\"editRelations\":[]}}','object','',''),(60,'model_def_application::insights.insights','{\"uid\":\"application::insights.insights\",\"collectionName\":\"insights\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Insights\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"Title\":{\"type\":\"text\",\"required\":true},\"Subtitle\":{\"type\":\"string\",\"required\":true},\"Content\":{\"type\":\"text\",\"required\":true},\"Image\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":true,\"pluginOptions\":{}},\"insight_categories\":{\"collection\":\"insight-categories\",\"attribute\":\"insight-category\",\"column\":\"id\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(61,'model_def_application::testimonials.testimonials','{\"uid\":\"application::testimonials.testimonials\",\"collectionName\":\"testimonials\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Testimonials\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Name\":{\"type\":\"string\",\"required\":true},\"Content\":{\"type\":\"text\",\"required\":true},\"Rating\":{\"type\":\"integer\",\"required\":true},\"Image\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":true,\"pluginOptions\":{}},\"Positions\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"positions.positions\"},\"RatingTypes\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"rating-types.rating-types\"},\"Date\":{\"type\":\"date\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(62,'plugin_content_manager_configuration_content_types::application::insights.insights','{\"uid\":\"application::insights.insights\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Subtitle\",\"defaultSortBy\":\"Subtitle\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"Subtitle\":{\"edit\":{\"label\":\"Subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subtitle\",\"searchable\":true,\"sortable\":true}},\"Content\":{\"edit\":{\"label\":\"Content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Content\",\"searchable\":false,\"sortable\":false}},\"Image\":{\"edit\":{\"label\":\"Image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Image\",\"searchable\":false,\"sortable\":false}},\"insight_categories\":{\"edit\":{\"label\":\"Insight_categories\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"Name\"},\"list\":{\"label\":\"Insight_categories\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Title\",\"Subtitle\"],\"edit\":[[{\"name\":\"Title\",\"size\":6},{\"name\":\"Subtitle\",\"size\":6}],[{\"name\":\"Image\",\"size\":6},{\"name\":\"Content\",\"size\":6}]],\"editRelations\":[\"insight_categories\"]}}','object','',''),(63,'plugin_content_manager_configuration_content_types::application::testimonials.testimonials','{\"uid\":\"application::testimonials.testimonials\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Name\",\"defaultSortBy\":\"Name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"Content\":{\"edit\":{\"label\":\"Content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Content\",\"searchable\":true,\"sortable\":true}},\"Rating\":{\"edit\":{\"label\":\"Rating\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Rating\",\"searchable\":true,\"sortable\":true}},\"Image\":{\"edit\":{\"label\":\"Image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Image\",\"searchable\":false,\"sortable\":false}},\"Positions\":{\"edit\":{\"label\":\"Positions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Positions\",\"searchable\":false,\"sortable\":false}},\"RatingTypes\":{\"edit\":{\"label\":\"RatingTypes\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"RatingTypes\",\"searchable\":false,\"sortable\":false}},\"Date\":{\"edit\":{\"label\":\"Date\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Date\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Name\",\"Content\",\"Rating\"],\"edit\":[[{\"name\":\"Name\",\"size\":6},{\"name\":\"Content\",\"size\":6}],[{\"name\":\"Image\",\"size\":6},{\"name\":\"Rating\",\"size\":4}],[{\"name\":\"Positions\",\"size\":12}],[{\"name\":\"RatingTypes\",\"size\":12}],[{\"name\":\"Date\",\"size\":4}]],\"editRelations\":[]}}','object','',''),(64,'model_def_application::social-testimonials.social-testimonials','{\"uid\":\"application::social-testimonials.social-testimonials\",\"collectionName\":\"social_testimonials\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Social Testimonials\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"Name\":{\"type\":\"string\"},\"Content\":{\"type\":\"text\"},\"Type\":{\"type\":\"string\"},\"Image\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false,\"pluginOptions\":{}},\"Rating\":{\"type\":\"integer\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(65,'model_def_application::team-members.team-members','{\"uid\":\"application::team-members.team-members\",\"collectionName\":\"team_members\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Team Members\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"Name\":{\"type\":\"string\"},\"Position\":{\"type\":\"string\"},\"Image\":{\"collection\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false,\"pluginOptions\":{}},\"Content\":{\"type\":\"richtext\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(68,'model_def_column.column','{\"uid\":\"column.column\",\"collectionName\":\"components_column_columns\",\"info\":{\"name\":\"Column\",\"icon\":\"columns\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"Title\":{\"type\":\"string\"},\"menu_items\":{\"collection\":\"sub-menu\",\"attribute\":\"sub-menu\",\"column\":\"id\",\"isVirtual\":true}}}','object',NULL,NULL),(69,'model_def_row.row','{\"uid\":\"row.row\",\"collectionName\":\"components_row_rows\",\"info\":{\"name\":\"Row\",\"icon\":\"arrows-alt-v\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"Columns\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"column.column\"},\"Title\":{\"type\":\"string\"}}}','object',NULL,NULL),(70,'model_def_application::menu.menu','{\"uid\":\"application::menu.menu\",\"collectionName\":\"menus\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Menu\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Label\":{\"type\":\"string\",\"required\":true},\"Slug\":{\"type\":\"string\",\"required\":true},\"menu_items\":{\"collection\":\"sub-menu\",\"attribute\":\"sub-menu\",\"column\":\"id\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(71,'model_def_application::sub-menu.sub-menu','{\"uid\":\"application::sub-menu.sub-menu\",\"collectionName\":\"menu_items\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Menu Item\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Label\":{\"type\":\"string\",\"required\":true},\"Link\":{\"type\":\"string\",\"required\":true},\"sub_items\":{\"collection\":\"sub-menu\",\"attribute\":\"sub-menu\",\"column\":\"id\",\"isVirtual\":true},\"Rows\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"row.row\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(72,'plugin_upload_settings','{\"sizeOptimization\":true,\"responsiveDimensions\":true}','object','production',''),(73,'plugin_content_manager_configuration_components::row.row','{\"uid\":\"row.row\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Title\",\"defaultSortBy\":\"Title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"Columns\":{\"edit\":{\"label\":\"Columns\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Columns\",\"searchable\":false,\"sortable\":false}},\"Title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Title\"],\"edit\":[[{\"name\":\"Columns\",\"size\":12}],[{\"name\":\"Title\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object','',''),(74,'plugin_content_manager_configuration_components::column.column','{\"uid\":\"column.column\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Title\",\"defaultSortBy\":\"Title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"Title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"menu_items\":{\"edit\":{\"label\":\"Menu_items\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"Label\"},\"list\":{\"label\":\"Menu_items\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"Title\",\"menu_items\"],\"edit\":[[{\"name\":\"Title\",\"size\":6},{\"name\":\"menu_items\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object','',''),(75,'plugin_content_manager_configuration_content_types::application::menu.menu','{\"uid\":\"application::menu.menu\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Label\",\"defaultSortBy\":\"Label\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Label\":{\"edit\":{\"label\":\"Label\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Label\",\"searchable\":true,\"sortable\":true}},\"Slug\":{\"edit\":{\"label\":\"Slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Slug\",\"searchable\":true,\"sortable\":true}},\"menu_items\":{\"edit\":{\"label\":\"Menu_items\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"Label\"},\"list\":{\"label\":\"Menu_items\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Label\",\"Slug\",\"menu_items\"],\"editRelations\":[\"menu_items\"],\"edit\":[[{\"name\":\"Label\",\"size\":6},{\"name\":\"Slug\",\"size\":6}]]}}','object','',''),(76,'plugin_content_manager_configuration_content_types::application::sub-menu.sub-menu','{\"uid\":\"application::sub-menu.sub-menu\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Label\",\"defaultSortBy\":\"Label\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Label\":{\"edit\":{\"label\":\"Label\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Label\",\"searchable\":true,\"sortable\":true}},\"Link\":{\"edit\":{\"label\":\"Link\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Link\",\"searchable\":true,\"sortable\":true}},\"sub_items\":{\"edit\":{\"label\":\"Sub_items\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"Label\"},\"list\":{\"label\":\"Sub_items\",\"searchable\":false,\"sortable\":false}},\"Rows\":{\"edit\":{\"label\":\"Rows\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Rows\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Label\",\"Link\",\"sub_items\"],\"editRelations\":[\"sub_items\"],\"edit\":[[{\"name\":\"Label\",\"size\":6},{\"name\":\"Link\",\"size\":6}],[{\"name\":\"Rows\",\"size\":12}]]}}','object','',''),(77,'type_setup_initHasRun','true','boolean','production',''),(78,'model_def_business-services.business-services','{\"uid\":\"business-services.business-services\",\"collectionName\":\"components_business_services_business_services\",\"info\":{\"name\":\"Business Services\",\"icon\":\"angle-double-left\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"Name\":{\"type\":\"string\",\"required\":true}}}','object',NULL,NULL),(79,'model_def_option.option','{\"uid\":\"option.option\",\"collectionName\":\"components_option_options\",\"info\":{\"name\":\"Option\",\"icon\":\"align-center\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"Option\":{\"type\":\"string\",\"required\":true}}}','object',NULL,NULL),(80,'model_def_passion-results.passion-results','{\"uid\":\"passion-results.passion-results\",\"collectionName\":\"components_passion_results_passion_results\",\"info\":{\"name\":\"Passion Results\",\"icon\":\"align-left\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"Title\":{\"type\":\"string\",\"required\":true},\"Content\":{\"type\":\"text\",\"required\":true}}}','object',NULL,NULL),(81,'model_def_positions.positions','{\"uid\":\"positions.positions\",\"collectionName\":\"components_positions_positions\",\"info\":{\"name\":\"Positions\",\"icon\":\"ad\"},\"options\":{\"timestamps\":false},\"attributes\":{\"Position\":{\"type\":\"text\"}}}','object',NULL,NULL),(82,'model_def_question-option-entry.question-option-entry','{\"uid\":\"question-option-entry.question-option-entry\",\"collectionName\":\"components_question_option_entry_question_option_entries\",\"info\":{\"name\":\"Question Option Entry\",\"icon\":\"align-justify\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"Question\":{\"type\":\"string\"},\"Option\":{\"type\":\"string\"}}}','object',NULL,NULL),(83,'model_def_question-option.question-option','{\"uid\":\"question-option.question-option\",\"collectionName\":\"components_question_option_question_options\",\"info\":{\"name\":\"Question Option\",\"icon\":\"air-freshener\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"Question\":{\"type\":\"string\",\"required\":true},\"Option\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"option.option\",\"required\":true},\"Image\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":true,\"pluginOptions\":{}}}}','object',NULL,NULL),(84,'model_def_rating-types.rating-types','{\"uid\":\"rating-types.rating-types\",\"collectionName\":\"components_rating_types_rating_types\",\"info\":{\"name\":\"Rating Types\",\"icon\":\"address-book\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"Type\":{\"type\":\"enumeration\",\"enum\":[\"google\",\"yelp\"]}}}','object',NULL,NULL),(85,'model_def_sample-plan.sample-plan','{\"uid\":\"sample-plan.sample-plan\",\"collectionName\":\"components_sample_plan_sample_plans\",\"info\":{\"name\":\"SamplePlan\",\"icon\":\"ambulance\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"Content\":{\"type\":\"richtext\",\"required\":true},\"Image\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":true,\"pluginOptions\":{}},\"File\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"files\"],\"plugin\":\"upload\",\"required\":true,\"pluginOptions\":{}}}}','object',NULL,NULL),(86,'model_def_sample-plans.sample-plans','{\"uid\":\"sample-plans.sample-plans\",\"collectionName\":\"components_sample_plans_sample_plans\",\"info\":{\"name\":\"Sample Plans\",\"icon\":\"align-right\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"Name\":{\"type\":\"string\",\"required\":true},\"Image\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":true,\"pluginOptions\":{}},\"File\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"files\"],\"plugin\":\"upload\",\"required\":true,\"pluginOptions\":{}}}}','object',NULL,NULL),(87,'model_def_sliders.sliders','{\"uid\":\"sliders.sliders\",\"collectionName\":\"components_sliders_sliders\",\"info\":{\"name\":\"Sliders\",\"icon\":\"angle-double-down\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"Title\":{\"type\":\"text\",\"required\":true},\"Content\":{\"type\":\"text\",\"required\":true},\"Label\":{\"type\":\"string\",\"required\":true},\"Image\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":false,\"pluginOptions\":{}},\"Link\":{\"type\":\"string\",\"required\":true},\"LinkType\":{\"type\":\"enumeration\",\"enum\":[\"Simple\",\"Complex\"],\"unique\":false,\"required\":true},\"ImageMobile\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":false,\"pluginOptions\":{}},\"BannerType\":{\"type\":\"enumeration\",\"enum\":[\"Image\",\"Video\"],\"default\":\"Image\",\"required\":false},\"VideoBanner\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"videos\"],\"plugin\":\"upload\",\"required\":false,\"pluginOptions\":{}}}}','object',NULL,NULL),(88,'model_def_statistic-content.statistic-content','{\"uid\":\"statistic-content.statistic-content\",\"collectionName\":\"components_statistic_content_statistic_contents\",\"info\":{\"name\":\"Statistic Content\",\"icon\":\"adjust\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"Content\":{\"type\":\"string\",\"required\":true}}}','object',NULL,NULL),(89,'model_def_talk-to-expert-services.tte-services','{\"uid\":\"talk-to-expert-services.tte-services\",\"collectionName\":\"components_talk_to_expert_services_tte_services\",\"info\":{\"name\":\"TTEServices\",\"icon\":\"american-sign-language-interpreting\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"Name\":{\"type\":\"string\",\"required\":true}}}','object',NULL,NULL),(90,'model_def_talk-to-expert.talk-to-expert','{\"uid\":\"talk-to-expert.talk-to-expert\",\"collectionName\":\"components_talk_to_expert_talk_to_experts\",\"info\":{\"name\":\"Talk To Expert\",\"icon\":\"anchor\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"Title\":{\"type\":\"string\",\"required\":true},\"Subtitle\":{\"type\":\"string\",\"required\":true},\"FormTitle\":{\"type\":\"string\",\"required\":true},\"TTEServices\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"talk-to-expert-services.tte-services\",\"required\":true}}}','object',NULL,NULL),(91,'model_def_application::about-page.about-page','{\"uid\":\"application::about-page.about-page\",\"collectionName\":\"about_pages\",\"kind\":\"singleType\",\"info\":{\"name\":\"About page\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"AboutUs\":{\"type\":\"text\",\"required\":true},\"EnvironmentVideo\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"videos\"],\"plugin\":\"upload\",\"required\":true,\"pluginOptions\":{}},\"PassionResults\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"passion-results.passion-results\",\"required\":true},\"Title\":{\"type\":\"string\",\"required\":true},\"Subtitle\":{\"type\":\"string\",\"required\":true},\"Description\":{\"type\":\"string\",\"required\":true},\"BestPlaceContent\":{\"type\":\"text\",\"required\":true},\"BannerDesktop\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":true,\"pluginOptions\":{}},\"BannerMobile\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":true,\"pluginOptions\":{}},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(92,'model_def_application::accelerate-entries.accelerate-entries','{\"uid\":\"application::accelerate-entries.accelerate-entries\",\"collectionName\":\"accelerate_entries\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Accelerate Entries\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"FullName\":{\"type\":\"string\",\"required\":true},\"Email\":{\"type\":\"email\",\"required\":true},\"PhoneNumber\":{\"type\":\"string\",\"required\":true},\"QuestionOptionEntry\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"question-option-entry.question-option-entry\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(93,'model_def_application::accelerates.accelerates','{\"uid\":\"application::accelerates.accelerates\",\"collectionName\":\"accelerates\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Accelerates\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Title\":{\"type\":\"string\",\"required\":true},\"Content\":{\"type\":\"string\",\"required\":true},\"QuestionOption\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"question-option.question-option\"},\"Image\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":false,\"pluginOptions\":{}},\"key\":{\"type\":\"string\",\"required\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(94,'model_def_application::brands.brands','{\"uid\":\"application::brands.brands\",\"collectionName\":\"brands\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Brands\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Link\":{\"type\":\"text\",\"default\":\"#\",\"required\":true},\"Logo\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":true,\"pluginOptions\":{}},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(95,'model_def_application::business-page.business-page','{\"uid\":\"application::business-page.business-page\",\"collectionName\":\"business_pages\",\"kind\":\"singleType\",\"info\":{\"name\":\"Business page\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Title\":{\"type\":\"string\",\"required\":true},\"Subtitle\":{\"type\":\"string\",\"required\":true},\"Description\":{\"type\":\"string\",\"required\":true},\"BannerDesktop\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":true,\"pluginOptions\":{}},\"BannerMobile\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":true,\"pluginOptions\":{}},\"SamplePlan\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"sample-plan.sample-plan\",\"required\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(96,'model_def_application::client-words.client-words','{\"uid\":\"application::client-words.client-words\",\"collectionName\":\"client_words\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Client Words\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Name\":{\"type\":\"string\",\"required\":true},\"Content\":{\"type\":\"text\",\"required\":true},\"Image\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":true,\"pluginOptions\":{}},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(97,'model_def_application::contact-page.contact-page','{\"uid\":\"application::contact-page.contact-page\",\"collectionName\":\"contact_pages\",\"kind\":\"singleType\",\"info\":{\"name\":\"Contact page\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"BannerDesktop\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":true,\"pluginOptions\":{}},\"Title\":{\"type\":\"string\",\"required\":true},\"HelpContent\":{\"type\":\"richtext\",\"required\":true},\"ThanksContent\":{\"type\":\"richtext\",\"required\":true},\"BannerMobile\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":true,\"pluginOptions\":{}},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(98,'model_def_application::core-values.core-values','{\"uid\":\"application::core-values.core-values\",\"collectionName\":\"core_values\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Core Values\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Title\":{\"type\":\"string\",\"required\":true},\"Content\":{\"type\":\"text\",\"required\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(99,'model_def_application::faq.faq','{\"uid\":\"application::faq.faq\",\"collectionName\":\"faqs\",\"kind\":\"collectionType\",\"info\":{\"name\":\"FAQ\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Question\":{\"type\":\"string\",\"required\":true},\"Answer\":{\"type\":\"string\",\"required\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(100,'model_def_application::grant-page.grant-page','{\"uid\":\"application::grant-page.grant-page\",\"collectionName\":\"grant_pages\",\"kind\":\"singleType\",\"info\":{\"name\":\"Grant page\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Title\":{\"type\":\"string\",\"required\":true},\"Subtitle\":{\"type\":\"string\",\"required\":true},\"Overview\":{\"type\":\"richtext\",\"required\":true},\"SamplePlans\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"sample-plans.sample-plans\",\"required\":true},\"SamplePlansTitle\":{\"type\":\"string\",\"required\":true},\"SamplePlansDescription\":{\"type\":\"string\",\"required\":true},\"SamplePlansBottomText\":{\"type\":\"string\",\"required\":true},\"BannerDesktop\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":true,\"pluginOptions\":{}},\"BannerMobile\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":true,\"pluginOptions\":{}},\"Description\":{\"type\":\"richtext\",\"required\":true},\"OurTeamDescription\":{\"type\":\"richtext\",\"required\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(101,'model_def_application::insights-page.insights-page','{\"uid\":\"application::insights-page.insights-page\",\"collectionName\":\"insights_pages\",\"kind\":\"singleType\",\"info\":{\"name\":\"Insights page\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Title\":{\"type\":\"string\",\"required\":true},\"Subtitle\":{\"type\":\"string\",\"required\":true},\"BannerDesktop\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":true,\"pluginOptions\":{}},\"BannerMobile\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":true,\"pluginOptions\":{}},\"Overview\":{\"type\":\"richtext\",\"required\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(102,'model_def_application::members.members','{\"uid\":\"application::members.members\",\"collectionName\":\"members\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Members\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Name\":{\"type\":\"string\",\"required\":true},\"Position\":{\"type\":\"string\",\"required\":true},\"Description\":{\"type\":\"string\",\"required\":true},\"ProfileImage\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":true,\"pluginOptions\":{}},\"BrandImage\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":true,\"pluginOptions\":{}},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(103,'model_def_application::our-firms.our-firms','{\"uid\":\"application::our-firms.our-firms\",\"collectionName\":\"our_firms\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Our Firms\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Title\":{\"type\":\"string\",\"required\":true},\"Content\":{\"type\":\"string\",\"required\":true},\"Image\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":true,\"pluginOptions\":{}},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(104,'model_def_application::our-services.our-services','{\"uid\":\"application::our-services.our-services\",\"collectionName\":\"our_services\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Our Services\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Name\":{\"type\":\"string\",\"required\":true},\"Video\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"videos\"],\"plugin\":\"upload\",\"required\":true,\"pluginOptions\":{}},\"Content\":{\"type\":\"richtext\",\"required\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(105,'model_def_application::processes.processes','{\"uid\":\"application::processes.processes\",\"collectionName\":\"processes\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Processes\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Title\":{\"type\":\"string\",\"required\":true},\"Content\":{\"type\":\"text\",\"required\":true},\"Image\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":false,\"pluginOptions\":{}},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(106,'model_def_application::services.services','{\"uid\":\"application::services.services\",\"collectionName\":\"services\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Services\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Title\":{\"type\":\"string\",\"required\":true},\"Content\":{\"type\":\"string\",\"required\":true},\"Image\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":true,\"pluginOptions\":{}},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(107,'model_def_application::statistics.statistics','{\"uid\":\"application::statistics.statistics\",\"collectionName\":\"statistics\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Statistics\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Title\":{\"type\":\"string\",\"required\":true},\"Image\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":true,\"pluginOptions\":{}},\"StatisticContent\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"statistic-content.statistic-content\",\"required\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(108,'model_def_application::trust-certificates.trust-certificates','{\"uid\":\"application::trust-certificates.trust-certificates\",\"collectionName\":\"trust_certificates\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Trust Certificates\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Title\":{\"type\":\"string\",\"required\":true},\"Content\":{\"type\":\"string\",\"required\":true},\"Image\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":true,\"pluginOptions\":{}},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(109,'plugin_content_manager_configuration_components::question-option-entry.question-option-entry','{\"uid\":\"question-option-entry.question-option-entry\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Question\",\"defaultSortBy\":\"Question\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"Question\":{\"edit\":{\"label\":\"Question\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Question\",\"searchable\":true,\"sortable\":true}},\"Option\":{\"edit\":{\"label\":\"Option\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Option\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Question\",\"Option\"],\"edit\":[[{\"name\":\"Question\",\"size\":6},{\"name\":\"Option\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object','',''),(110,'plugin_content_manager_configuration_components::question-option.question-option','{\"uid\":\"question-option.question-option\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Question\",\"defaultSortBy\":\"Question\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"Question\":{\"edit\":{\"label\":\"Question\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Question\",\"searchable\":true,\"sortable\":true}},\"Option\":{\"edit\":{\"label\":\"Option\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Option\",\"searchable\":false,\"sortable\":false}},\"Image\":{\"edit\":{\"label\":\"Image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Image\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"Question\",\"Image\"],\"edit\":[[{\"name\":\"Question\",\"size\":6}],[{\"name\":\"Option\",\"size\":12}],[{\"name\":\"Image\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object','',''),(111,'plugin_content_manager_configuration_components::passion-results.passion-results','{\"uid\":\"passion-results.passion-results\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Title\",\"defaultSortBy\":\"Title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"Title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"Content\":{\"edit\":{\"label\":\"Content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Content\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Title\",\"Content\"],\"edit\":[[{\"name\":\"Title\",\"size\":6},{\"name\":\"Content\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object','',''),(112,'plugin_content_manager_configuration_components::positions.positions','{\"uid\":\"positions.positions\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"Position\":{\"edit\":{\"label\":\"Position\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Position\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Position\"],\"edit\":[[{\"name\":\"Position\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object','',''),(113,'plugin_content_manager_configuration_components::option.option','{\"uid\":\"option.option\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Option\",\"defaultSortBy\":\"Option\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"Option\":{\"edit\":{\"label\":\"Option\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Option\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Option\"],\"edit\":[[{\"name\":\"Option\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object','',''),(114,'plugin_content_manager_configuration_components::business-services.business-services','{\"uid\":\"business-services.business-services\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Name\",\"defaultSortBy\":\"Name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"Name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Name\"],\"edit\":[[{\"name\":\"Name\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object','',''),(115,'plugin_content_manager_configuration_components::rating-types.rating-types','{\"uid\":\"rating-types.rating-types\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"Type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Type\"],\"edit\":[[{\"name\":\"Type\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object','',''),(116,'plugin_content_manager_configuration_components::sample-plans.sample-plans','{\"uid\":\"sample-plans.sample-plans\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Name\",\"defaultSortBy\":\"Name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"Name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"Image\":{\"edit\":{\"label\":\"Image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Image\",\"searchable\":false,\"sortable\":false}},\"File\":{\"edit\":{\"label\":\"File\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"File\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"Name\",\"Image\",\"File\"],\"edit\":[[{\"name\":\"Name\",\"size\":6},{\"name\":\"Image\",\"size\":6}],[{\"name\":\"File\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object','',''),(117,'plugin_content_manager_configuration_components::talk-to-expert.talk-to-expert','{\"uid\":\"talk-to-expert.talk-to-expert\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Title\",\"defaultSortBy\":\"Title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"Title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"Subtitle\":{\"edit\":{\"label\":\"Subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subtitle\",\"searchable\":true,\"sortable\":true}},\"FormTitle\":{\"edit\":{\"label\":\"FormTitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"FormTitle\",\"searchable\":true,\"sortable\":true}},\"TTEServices\":{\"edit\":{\"label\":\"TTEServices\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"TTEServices\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"Title\",\"Subtitle\",\"FormTitle\"],\"edit\":[[{\"name\":\"Title\",\"size\":6},{\"name\":\"Subtitle\",\"size\":6}],[{\"name\":\"FormTitle\",\"size\":6}],[{\"name\":\"TTEServices\",\"size\":12}]],\"editRelations\":[]},\"isComponent\":true}','object','',''),(118,'plugin_content_manager_configuration_components::sample-plan.sample-plan','{\"uid\":\"sample-plan.sample-plan\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"Content\":{\"edit\":{\"label\":\"Content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Content\",\"searchable\":false,\"sortable\":false}},\"Image\":{\"edit\":{\"label\":\"Image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Image\",\"searchable\":false,\"sortable\":false}},\"File\":{\"edit\":{\"label\":\"File Download\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"File\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"Image\",\"File\"],\"edit\":[[{\"name\":\"Content\",\"size\":12}],[{\"name\":\"Image\",\"size\":6},{\"name\":\"File\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object','',''),(119,'plugin_content_manager_configuration_components::talk-to-expert-services.tte-services','{\"uid\":\"talk-to-expert-services.tte-services\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Name\",\"defaultSortBy\":\"Name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"Name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Name\"],\"edit\":[[{\"name\":\"Name\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object','',''),(120,'plugin_content_manager_configuration_components::statistic-content.statistic-content','{\"uid\":\"statistic-content.statistic-content\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Content\",\"defaultSortBy\":\"Content\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"Content\":{\"edit\":{\"label\":\"Content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Content\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Content\"],\"edit\":[[{\"name\":\"Content\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object','',''),(121,'plugin_content_manager_configuration_components::sliders.sliders','{\"uid\":\"sliders.sliders\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Label\",\"defaultSortBy\":\"Label\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"BannerType\":{\"edit\":{\"label\":\"BannerType\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"BannerType\",\"searchable\":true,\"sortable\":true}},\"VideoBanner\":{\"edit\":{\"label\":\"VideoBanner\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"VideoBanner\",\"searchable\":false,\"sortable\":false}},\"LinkType\":{\"edit\":{\"label\":\"LinkType\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"LinkType\",\"searchable\":true,\"sortable\":true}},\"Label\":{\"edit\":{\"label\":\"Label\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Label\",\"searchable\":true,\"sortable\":true}},\"Title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"Content\":{\"edit\":{\"label\":\"Content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Content\",\"searchable\":true,\"sortable\":true}},\"Link\":{\"edit\":{\"label\":\"Link\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Link\",\"searchable\":true,\"sortable\":true}},\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"Image\":{\"edit\":{\"label\":\"Image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Image\",\"searchable\":false,\"sortable\":false}},\"ImageMobile\":{\"edit\":{\"label\":\"ImageMobile\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ImageMobile\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"Title\",\"Content\",\"Label\"],\"edit\":[[{\"name\":\"Image\",\"size\":6},{\"name\":\"ImageMobile\",\"size\":6}],[{\"name\":\"Title\",\"size\":6},{\"name\":\"VideoBanner\",\"size\":6}],[{\"name\":\"Label\",\"size\":6},{\"name\":\"BannerType\",\"size\":6}],[{\"name\":\"Link\",\"size\":6},{\"name\":\"LinkType\",\"size\":6}],[{\"name\":\"Content\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object','',''),(122,'plugin_content_manager_configuration_content_types::application::about-page.about-page','{\"uid\":\"application::about-page.about-page\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Title\",\"defaultSortBy\":\"Title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"EnvironmentVideo\":{\"edit\":{\"label\":\"EnvironmentVideo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"EnvironmentVideo\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"AboutUs\":{\"edit\":{\"label\":\"AboutUs\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AboutUs\",\"searchable\":true,\"sortable\":true}},\"BannerMobile\":{\"edit\":{\"label\":\"BannerMobile\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"BannerMobile\",\"searchable\":false,\"sortable\":false}},\"BannerDesktop\":{\"edit\":{\"label\":\"BannerDesktop\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"BannerDesktop\",\"searchable\":false,\"sortable\":false}},\"BestPlaceContent\":{\"edit\":{\"label\":\"BestPlaceContent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"BestPlaceContent\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}},\"Subtitle\":{\"edit\":{\"label\":\"Subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subtitle\",\"searchable\":true,\"sortable\":true}},\"Title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"PassionResults\":{\"edit\":{\"label\":\"PassionResults\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PassionResults\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"edit\":[[{\"name\":\"BannerDesktop\",\"size\":6},{\"name\":\"EnvironmentVideo\",\"size\":6}],[{\"name\":\"Title\",\"size\":6}],[{\"name\":\"Subtitle\",\"size\":6},{\"name\":\"BannerMobile\",\"size\":6}],[{\"name\":\"Description\",\"size\":6}],[{\"name\":\"AboutUs\",\"size\":6},{\"name\":\"BestPlaceContent\",\"size\":6}],[{\"name\":\"PassionResults\",\"size\":12}]],\"editRelations\":[],\"list\":[\"id\",\"AboutUs\",\"EnvironmentVideo\",\"Title\"]}}','object','',''),(123,'plugin_content_manager_configuration_content_types::application::accelerate-entries.accelerate-entries','{\"uid\":\"application::accelerate-entries.accelerate-entries\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"FullName\",\"defaultSortBy\":\"FullName\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"FullName\":{\"edit\":{\"label\":\"FullName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"FullName\",\"searchable\":true,\"sortable\":true}},\"Email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"PhoneNumber\":{\"edit\":{\"label\":\"PhoneNumber\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PhoneNumber\",\"searchable\":true,\"sortable\":true}},\"QuestionOptionEntry\":{\"edit\":{\"label\":\"QuestionOptionEntry\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"QuestionOptionEntry\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"FullName\",\"Email\",\"PhoneNumber\"],\"editRelations\":[],\"edit\":[[{\"name\":\"FullName\",\"size\":6},{\"name\":\"Email\",\"size\":6}],[{\"name\":\"PhoneNumber\",\"size\":6}],[{\"name\":\"QuestionOptionEntry\",\"size\":12}]]}}','object','',''),(124,'plugin_content_manager_configuration_content_types::application::accelerates.accelerates','{\"uid\":\"application::accelerates.accelerates\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Title\",\"defaultSortBy\":\"Title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"Content\":{\"edit\":{\"label\":\"Content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Content\",\"searchable\":true,\"sortable\":true}},\"QuestionOption\":{\"edit\":{\"label\":\"QuestionOption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"QuestionOption\",\"searchable\":false,\"sortable\":false}},\"Image\":{\"edit\":{\"label\":\"Image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Image\",\"searchable\":false,\"sortable\":false}},\"key\":{\"edit\":{\"label\":\"Key\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Key\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"Image\",\"size\":6},{\"name\":\"key\",\"size\":6}],[{\"name\":\"Title\",\"size\":6},{\"name\":\"Content\",\"size\":6}],[{\"name\":\"QuestionOption\",\"size\":12}]],\"editRelations\":[],\"list\":[\"id\",\"Title\",\"Content\",\"Image\"]}}','object','',''),(125,'plugin_content_manager_configuration_content_types::application::brands.brands','{\"uid\":\"application::brands.brands\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Link\":{\"edit\":{\"label\":\"Link\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Link\",\"searchable\":true,\"sortable\":true}},\"Logo\":{\"edit\":{\"label\":\"Logo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Logo\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Link\",\"Logo\",\"created_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"Link\",\"size\":6},{\"name\":\"Logo\",\"size\":6}]]}}','object','',''),(126,'plugin_content_manager_configuration_content_types::application::business-page.business-page','{\"uid\":\"application::business-page.business-page\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Title\",\"defaultSortBy\":\"Title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"BannerMobile\":{\"edit\":{\"label\":\"BannerMobile\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"BannerMobile\",\"searchable\":false,\"sortable\":false}},\"BannerDesktop\":{\"edit\":{\"label\":\"BannerDesktop\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"BannerDesktop\",\"searchable\":false,\"sortable\":false}},\"SamplePlan\":{\"edit\":{\"label\":\"SamplePlan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"SamplePlan\",\"searchable\":false,\"sortable\":false}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}},\"Subtitle\":{\"edit\":{\"label\":\"Subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subtitle\",\"searchable\":true,\"sortable\":true}},\"Title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"BannerDesktop\",\"size\":6},{\"name\":\"BannerMobile\",\"size\":6}],[{\"name\":\"Title\",\"size\":6},{\"name\":\"Description\",\"size\":6}],[{\"name\":\"Subtitle\",\"size\":6}],[{\"name\":\"SamplePlan\",\"size\":12}]],\"editRelations\":[],\"list\":[\"id\",\"Title\",\"Subtitle\",\"Description\"]}}','object','',''),(127,'plugin_content_manager_configuration_content_types::application::client-words.client-words','{\"uid\":\"application::client-words.client-words\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Name\",\"defaultSortBy\":\"Name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"Content\":{\"edit\":{\"label\":\"Content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Content\",\"searchable\":true,\"sortable\":true}},\"Image\":{\"edit\":{\"label\":\"Image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Image\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"Image\",\"size\":6}],[{\"name\":\"Name\",\"size\":6},{\"name\":\"Content\",\"size\":6}]],\"editRelations\":[],\"list\":[\"id\",\"Name\",\"Content\",\"Image\"]}}','object','',''),(128,'plugin_content_manager_configuration_content_types::application::contact-page.contact-page','{\"uid\":\"application::contact-page.contact-page\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Title\",\"defaultSortBy\":\"Title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"BannerDesktop\":{\"edit\":{\"label\":\"BannerDesktop\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"BannerDesktop\",\"searchable\":false,\"sortable\":false}},\"Title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"HelpContent\":{\"edit\":{\"label\":\"HelpContent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"HelpContent\",\"searchable\":false,\"sortable\":false}},\"ThanksContent\":{\"edit\":{\"label\":\"ThanksContent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ThanksContent\",\"searchable\":false,\"sortable\":false}},\"BannerMobile\":{\"edit\":{\"label\":\"BannerMobile\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"BannerMobile\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"BannerDesktop\",\"size\":6},{\"name\":\"BannerMobile\",\"size\":6}],[{\"name\":\"Title\",\"size\":6}],[{\"name\":\"HelpContent\",\"size\":12}],[{\"name\":\"ThanksContent\",\"size\":12}]],\"editRelations\":[],\"list\":[\"id\",\"BannerDesktop\",\"Title\",\"BannerMobile\"]}}','object','',''),(129,'plugin_content_manager_configuration_content_types::application::core-values.core-values','{\"uid\":\"application::core-values.core-values\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Title\",\"defaultSortBy\":\"Title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"Content\":{\"edit\":{\"label\":\"Content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Content\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Title\",\"Content\",\"created_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"Title\",\"size\":6},{\"name\":\"Content\",\"size\":6}]]}}','object','',''),(130,'plugin_content_manager_configuration_content_types::application::faq.faq','{\"uid\":\"application::faq.faq\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Question\",\"defaultSortBy\":\"Question\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Question\":{\"edit\":{\"label\":\"Question\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Question\",\"searchable\":true,\"sortable\":true}},\"Answer\":{\"edit\":{\"label\":\"Answer\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Answer\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Question\",\"Answer\",\"created_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"Question\",\"size\":6},{\"name\":\"Answer\",\"size\":6}]]}}','object','',''),(131,'plugin_content_manager_configuration_content_types::application::grant-page.grant-page','{\"uid\":\"application::grant-page.grant-page\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Title\",\"defaultSortBy\":\"Title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"Subtitle\":{\"edit\":{\"label\":\"Subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subtitle\",\"searchable\":true,\"sortable\":true}},\"Overview\":{\"edit\":{\"label\":\"Overview\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Overview\",\"searchable\":false,\"sortable\":false}},\"SamplePlans\":{\"edit\":{\"label\":\"SamplePlans\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"SamplePlans\",\"searchable\":false,\"sortable\":false}},\"SamplePlansTitle\":{\"edit\":{\"label\":\"SamplePlansTitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"SamplePlansTitle\",\"searchable\":true,\"sortable\":true}},\"SamplePlansDescription\":{\"edit\":{\"label\":\"SamplePlansDescription\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"SamplePlansDescription\",\"searchable\":true,\"sortable\":true}},\"SamplePlansBottomText\":{\"edit\":{\"label\":\"SamplePlansBottomText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"SamplePlansBottomText\",\"searchable\":true,\"sortable\":true}},\"BannerDesktop\":{\"edit\":{\"label\":\"BannerDesktop\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"BannerDesktop\",\"searchable\":false,\"sortable\":false}},\"BannerMobile\":{\"edit\":{\"label\":\"BannerMobile\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"BannerMobile\",\"searchable\":false,\"sortable\":false}},\"Description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":false,\"sortable\":false}},\"OurTeamDescription\":{\"edit\":{\"label\":\"OurTeamDescription\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"OurTeamDescription\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Title\",\"Subtitle\",\"SamplePlansTitle\"],\"edit\":[[{\"name\":\"Title\",\"size\":6},{\"name\":\"Subtitle\",\"size\":6}],[{\"name\":\"Overview\",\"size\":12}],[{\"name\":\"SamplePlans\",\"size\":12}],[{\"name\":\"SamplePlansTitle\",\"size\":6},{\"name\":\"SamplePlansDescription\",\"size\":6}],[{\"name\":\"SamplePlansBottomText\",\"size\":6},{\"name\":\"BannerDesktop\",\"size\":6}],[{\"name\":\"BannerMobile\",\"size\":6}],[{\"name\":\"Description\",\"size\":12}],[{\"name\":\"OurTeamDescription\",\"size\":12}]],\"editRelations\":[]}}','object','',''),(132,'plugin_content_manager_configuration_content_types::application::members.members','{\"uid\":\"application::members.members\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Name\",\"defaultSortBy\":\"Name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"Position\":{\"edit\":{\"label\":\"Position\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Position\",\"searchable\":true,\"sortable\":true}},\"Description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"ProfileImage\":{\"edit\":{\"label\":\"ProfileImage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ProfileImage\",\"searchable\":false,\"sortable\":false}},\"BrandImage\":{\"edit\":{\"label\":\"BrandImage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"BrandImage\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"BrandImage\",\"size\":6},{\"name\":\"ProfileImage\",\"size\":6}],[{\"name\":\"Name\",\"size\":6},{\"name\":\"Position\",\"size\":6}],[{\"name\":\"Description\",\"size\":6}]],\"editRelations\":[],\"list\":[\"id\",\"Name\",\"Position\",\"Description\"]}}','object','',''),(133,'plugin_content_manager_configuration_content_types::application::insights-page.insights-page','{\"uid\":\"application::insights-page.insights-page\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Title\",\"defaultSortBy\":\"Title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"Subtitle\":{\"edit\":{\"label\":\"Subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subtitle\",\"searchable\":true,\"sortable\":true}},\"BannerDesktop\":{\"edit\":{\"label\":\"BannerDesktop\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"BannerDesktop\",\"searchable\":false,\"sortable\":false}},\"BannerMobile\":{\"edit\":{\"label\":\"BannerMobile\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"BannerMobile\",\"searchable\":false,\"sortable\":false}},\"Overview\":{\"edit\":{\"label\":\"Overview\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Overview\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Title\",\"Subtitle\",\"BannerDesktop\"],\"editRelations\":[],\"edit\":[[{\"name\":\"Title\",\"size\":6},{\"name\":\"Subtitle\",\"size\":6}],[{\"name\":\"BannerDesktop\",\"size\":6},{\"name\":\"BannerMobile\",\"size\":6}],[{\"name\":\"Overview\",\"size\":12}]]}}','object','',''),(134,'plugin_content_manager_configuration_content_types::application::our-services.our-services','{\"uid\":\"application::our-services.our-services\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Name\",\"defaultSortBy\":\"Name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"Video\":{\"edit\":{\"label\":\"Video\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Video\",\"searchable\":false,\"sortable\":false}},\"Content\":{\"edit\":{\"label\":\"Content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Content\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"Video\",\"size\":6}],[{\"name\":\"Name\",\"size\":6}],[{\"name\":\"Content\",\"size\":12}]],\"editRelations\":[],\"list\":[\"id\",\"Name\",\"Video\",\"created_at\"]}}','object','',''),(135,'plugin_content_manager_configuration_content_types::application::processes.processes','{\"uid\":\"application::processes.processes\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Title\",\"defaultSortBy\":\"Title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"Content\":{\"edit\":{\"label\":\"Content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Content\",\"searchable\":true,\"sortable\":true}},\"Image\":{\"edit\":{\"label\":\"Image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Image\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Title\",\"Content\",\"Image\"],\"editRelations\":[],\"edit\":[[{\"name\":\"Title\",\"size\":6},{\"name\":\"Content\",\"size\":6}],[{\"name\":\"Image\",\"size\":6}]]}}','object','',''),(136,'plugin_content_manager_configuration_content_types::application::services.services','{\"uid\":\"application::services.services\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Title\",\"defaultSortBy\":\"Title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"Content\":{\"edit\":{\"label\":\"Content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Content\",\"searchable\":true,\"sortable\":true}},\"Image\":{\"edit\":{\"label\":\"Image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Image\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"Image\",\"size\":6}],[{\"name\":\"Title\",\"size\":6},{\"name\":\"Content\",\"size\":6}]],\"editRelations\":[],\"list\":[\"id\",\"Title\",\"Content\",\"Image\"]}}','object','',''),(137,'plugin_content_manager_configuration_content_types::application::our-firms.our-firms','{\"uid\":\"application::our-firms.our-firms\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Title\",\"defaultSortBy\":\"Title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"Content\":{\"edit\":{\"label\":\"Content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Content\",\"searchable\":true,\"sortable\":true}},\"Image\":{\"edit\":{\"label\":\"Image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Image\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Title\",\"Content\",\"Image\"],\"editRelations\":[],\"edit\":[[{\"name\":\"Title\",\"size\":6},{\"name\":\"Content\",\"size\":6}],[{\"name\":\"Image\",\"size\":6}]]}}','object','',''),(138,'plugin_content_manager_configuration_content_types::application::statistics.statistics','{\"uid\":\"application::statistics.statistics\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Title\",\"defaultSortBy\":\"Title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"Image\":{\"edit\":{\"label\":\"Image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Image\",\"searchable\":false,\"sortable\":false}},\"StatisticContent\":{\"edit\":{\"label\":\"StatisticContent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"StatisticContent\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Title\",\"Image\",\"created_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"Title\",\"size\":6},{\"name\":\"Image\",\"size\":6}],[{\"name\":\"StatisticContent\",\"size\":12}]]}}','object','',''),(139,'plugin_content_manager_configuration_content_types::application::trust-certificates.trust-certificates','{\"uid\":\"application::trust-certificates.trust-certificates\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Title\",\"defaultSortBy\":\"Title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"Content\":{\"edit\":{\"label\":\"Content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Content\",\"searchable\":true,\"sortable\":true}},\"Image\":{\"edit\":{\"label\":\"Image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Image\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Title\",\"Content\",\"Image\"],\"editRelations\":[],\"edit\":[[{\"name\":\"Title\",\"size\":6},{\"name\":\"Content\",\"size\":6}],[{\"name\":\"Image\",\"size\":6}]]}}','object','',''),(140,'model_def_application::sectors.sectors','{\"uid\":\"application::sectors.sectors\",\"collectionName\":\"sectors\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Sectors\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Name\":{\"type\":\"string\",\"required\":true},\"Image\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":true,\"pluginOptions\":{}},\"IndustryConsultations\":{\"type\":\"integer\",\"min\":1,\"required\":true},\"BusinessPlansWritten\":{\"type\":\"integer\",\"required\":true,\"min\":1},\"YearsExperience\":{\"type\":\"integer\",\"min\":1,\"required\":true},\"Raised\":{\"type\":\"integer\",\"min\":1,\"required\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(141,'plugin_content_manager_configuration_content_types::application::sectors.sectors','{\"uid\":\"application::sectors.sectors\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Name\",\"defaultSortBy\":\"Name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"YearsExperience\":{\"edit\":{\"label\":\"YearsExperience\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"YearsExperience\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"Name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"IndustryConsultations\":{\"edit\":{\"label\":\"IndustryConsultations\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IndustryConsultations\",\"searchable\":true,\"sortable\":true}},\"BusinessPlansWritten\":{\"edit\":{\"label\":\"BusinessPlansWritten\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"BusinessPlansWritten\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}},\"Raised\":{\"edit\":{\"label\":\"Raised\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Raised\",\"searchable\":true,\"sortable\":true}},\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Image\":{\"edit\":{\"label\":\"Image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Image\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"edit\":[[{\"name\":\"Image\",\"size\":6}],[{\"name\":\"Name\",\"size\":6}],[{\"name\":\"BusinessPlansWritten\",\"size\":4},{\"name\":\"YearsExperience\",\"size\":4}],[{\"name\":\"Raised\",\"size\":4},{\"name\":\"IndustryConsultations\",\"size\":4}]],\"editRelations\":[],\"list\":[\"id\",\"Name\",\"Image\",\"IndustryConsultations\"]}}','object','',''),(142,'model_def_application::insight-categories.insight-categories','{\"uid\":\"application::insight-categories.insight-categories\",\"collectionName\":\"insight_categories\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Insight Categories\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Name\":{\"type\":\"string\",\"required\":true},\"Type\":{\"type\":\"enumeration\",\"enum\":[\"Industries\",\"Services\"],\"required\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(143,'plugin_content_manager_configuration_content_types::application::insight-categories.insight-categories','{\"uid\":\"application::insight-categories.insight-categories\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Name\",\"defaultSortBy\":\"Name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"Type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Name\",\"Type\",\"created_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"Name\",\"size\":6},{\"name\":\"Type\",\"size\":6}]]}}','object','',''),(144,'model_def_application::search-entries.search-entries','{\"uid\":\"application::search-entries.search-entries\",\"collectionName\":\"search_entries\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Search Entries\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Keyword\":{\"type\":\"string\",\"required\":true},\"Count\":{\"type\":\"biginteger\",\"required\":true,\"default\":\"1\",\"min\":\"1\",\"unique\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(145,'plugin_content_manager_configuration_content_types::application::search-entries.search-entries','{\"uid\":\"application::search-entries.search-entries\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Keyword\",\"defaultSortBy\":\"Keyword\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Keyword\":{\"edit\":{\"label\":\"Keyword\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Keyword\",\"searchable\":true,\"sortable\":true}},\"Count\":{\"edit\":{\"label\":\"Count\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Count\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Keyword\",\"Count\",\"created_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"Keyword\",\"size\":6},{\"name\":\"Count\",\"size\":4}]]}}','object','',''),(146,'plugin_content_manager_configuration_content_types::application::pages.pages','{\"uid\":\"application::pages.pages\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Title\",\"defaultSortBy\":\"Title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"FeatureImage\":{\"edit\":{\"label\":\"FeatureImage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"FeatureImage\",\"searchable\":false,\"sortable\":false}},\"Slug\":{\"edit\":{\"label\":\"Slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Slug\",\"searchable\":true,\"sortable\":true}},\"Content\":{\"edit\":{\"label\":\"Content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Content\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Title\",\"FeatureImage\",\"Slug\"],\"edit\":[[{\"name\":\"Title\",\"size\":6},{\"name\":\"FeatureImage\",\"size\":6}],[{\"name\":\"Slug\",\"size\":6}],[{\"name\":\"Content\",\"size\":12}]],\"editRelations\":[]}}','object','',''),(147,'model_def_application::consultation-entries.consultation-entries','{\"uid\":\"application::consultation-entries.consultation-entries\",\"collectionName\":\"consultation_entries\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Consultation Entries\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Email\":{\"type\":\"email\",\"required\":true},\"Subscribe\":{\"type\":\"string\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(148,'model_def_application::popup.popup','{\"uid\":\"application::popup.popup\",\"collectionName\":\"popups\",\"kind\":\"singleType\",\"info\":{\"name\":\"Popup\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"UserDescription\":{\"type\":\"string\",\"required\":true},\"UserName\":{\"type\":\"string\",\"required\":true},\"RightSubtitle\":{\"type\":\"string\",\"required\":true},\"RightTitle\":{\"type\":\"string\",\"required\":true},\"RightDescription\":{\"type\":\"string\",\"required\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(149,'model_def_application::subscribers.subscribers','{\"uid\":\"application::subscribers.subscribers\",\"collectionName\":\"subscribers\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Subscribers\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Email\":{\"type\":\"email\",\"required\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(154,'plugin_content_manager_configuration_content_types::application::popup.popup','{\"uid\":\"application::popup.popup\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"UserDescription\",\"defaultSortBy\":\"UserDescription\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"UserDescription\":{\"edit\":{\"label\":\"UserDescription\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"UserDescription\",\"searchable\":true,\"sortable\":true}},\"UserName\":{\"edit\":{\"label\":\"UserName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"UserName\",\"searchable\":true,\"sortable\":true}},\"RightSubtitle\":{\"edit\":{\"label\":\"RightSubtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"RightSubtitle\",\"searchable\":true,\"sortable\":true}},\"RightTitle\":{\"edit\":{\"label\":\"RightTitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"RightTitle\",\"searchable\":true,\"sortable\":true}},\"RightDescription\":{\"edit\":{\"label\":\"RightDescription\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"RightDescription\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"UserDescription\",\"UserName\",\"RightSubtitle\"],\"editRelations\":[],\"edit\":[[{\"name\":\"UserDescription\",\"size\":6},{\"name\":\"UserName\",\"size\":6}],[{\"name\":\"RightSubtitle\",\"size\":6},{\"name\":\"RightTitle\",\"size\":6}],[{\"name\":\"RightDescription\",\"size\":6}]]}}','object','',''),(155,'plugin_content_manager_configuration_content_types::application::consultation-entries.consultation-entries','{\"uid\":\"application::consultation-entries.consultation-entries\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Subscribe\",\"defaultSortBy\":\"Subscribe\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"Subscribe\":{\"edit\":{\"label\":\"Subscribe\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subscribe\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Email\",\"Subscribe\",\"created_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"Email\",\"size\":6},{\"name\":\"Subscribe\",\"size\":6}]]}}','object','',''),(156,'model_def_application::package-entries.package-entries','{\"uid\":\"application::package-entries.package-entries\",\"collectionName\":\"package_entries\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Package Entries\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"FullName\":{\"type\":\"string\",\"required\":true},\"Email\":{\"type\":\"email\",\"required\":true},\"PhoneNumber\":{\"type\":\"string\",\"required\":true},\"package\":{\"model\":\"packages\"},\"Price\":{\"type\":\"float\",\"required\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(157,'model_def_application::packages.packages','{\"uid\":\"application::packages.packages\",\"collectionName\":\"packages\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Packages\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Name\":{\"type\":\"string\",\"required\":true},\"Description\":{\"type\":\"text\",\"required\":true},\"Image\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":true,\"pluginOptions\":{}},\"Price\":{\"type\":\"integer\",\"required\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(158,'plugin_content_manager_configuration_content_types::application::package-entries.package-entries','{\"uid\":\"application::package-entries.package-entries\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"FullName\",\"defaultSortBy\":\"FullName\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"FullName\":{\"edit\":{\"label\":\"FullName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"FullName\",\"searchable\":true,\"sortable\":true}},\"Email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"PhoneNumber\":{\"edit\":{\"label\":\"PhoneNumber\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PhoneNumber\",\"searchable\":true,\"sortable\":true}},\"package\":{\"edit\":{\"label\":\"Package\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"Name\"},\"list\":{\"label\":\"Package\",\"searchable\":true,\"sortable\":true}},\"Price\":{\"edit\":{\"label\":\"Price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Price\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"FullName\",\"Email\",\"PhoneNumber\"],\"edit\":[[{\"name\":\"FullName\",\"size\":6},{\"name\":\"Email\",\"size\":6}],[{\"name\":\"PhoneNumber\",\"size\":6},{\"name\":\"Price\",\"size\":4}]],\"editRelations\":[\"package\"]}}','object','',''),(159,'plugin_content_manager_configuration_content_types::application::packages.packages','{\"uid\":\"application::packages.packages\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Name\",\"defaultSortBy\":\"Name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"Description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"Image\":{\"edit\":{\"label\":\"Image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Image\",\"searchable\":false,\"sortable\":false}},\"Price\":{\"edit\":{\"label\":\"Price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Price\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Name\",\"Description\",\"Image\"],\"editRelations\":[],\"edit\":[[{\"name\":\"Name\",\"size\":6},{\"name\":\"Description\",\"size\":6}],[{\"name\":\"Image\",\"size\":6},{\"name\":\"Price\",\"size\":4}]]}}','object','',''),(160,'model_def_application::payment.payment','{\"uid\":\"application::payment.payment\",\"collectionName\":\"payments\",\"kind\":\"singleType\",\"info\":{\"name\":\"Payment\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Test\":{\"type\":\"string\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(161,'plugin_content_manager_configuration_content_types::application::payment.payment','{\"uid\":\"application::payment.payment\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Test\",\"defaultSortBy\":\"Test\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Test\":{\"edit\":{\"label\":\"Test\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Test\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Test\",\"created_at\",\"updated_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"Test\",\"size\":6}]]}}','object','','');
/*!40000 ALTER TABLE `core_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_values`
--

DROP TABLE IF EXISTS `core_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_values` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) NOT NULL,
  `Content` longtext NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_values`
--

LOCK TABLES `core_values` WRITE;
/*!40000 ALTER TABLE `core_values` DISABLE KEYS */;
INSERT INTO `core_values` VALUES (1,'Passion & Diligence','Passion is a main driver to change your idea into a profitable venture. Our diligence is reflected in our careful and persistent work ethic.',1,1,'2021-07-24 03:26:15','2021-07-24 03:26:15'),(2,'Honesty & Flexibility','We uphold integrity, honesty and trust in our work. We are accountable and consistent in driving results.\n\n',1,1,'2021-07-24 03:26:47','2021-07-24 03:26:47'),(3,'Practical','Proprietary standard operating procedures that are tested and proven for maximizing operational efficiencies.',1,1,'2021-07-24 03:27:04','2021-07-31 14:10:17'),(4,'One Team','Our accredited advisors work together to align with your vision and boost your growth.',1,1,'2021-07-24 03:27:17','2021-07-24 03:27:17');
/*!40000 ALTER TABLE `core_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Question` varchar(255) NOT NULL,
  `Answer` varchar(255) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'Can I get free consultation with Ventureplans?','Lorem ipsum dolor sit amet, consectetur adipiscing elit. In scelerisque est id congue suscipit. Pellentesque velreninterdum est. Suspendisse potenti. Pellentesque sagittis accumsan lectus, vitae pretium lacus bibendum vel.',1,1,'2021-07-24 03:28:11','2021-07-24 03:28:11'),(2,'How to choose a software development services company?','Lorem ipsum dolor sit amet, consectetur adipiscing elit. In scelerisque est id congue suscipit. Pellentesque velren interdum est. Suspendisse potenti. Pellentesque sagittis accumsan lectus, vitae pretium lacus bibendum vel.',1,1,'2021-07-24 03:28:22','2021-07-24 03:28:22'),(3,'What are the biggest benefits of outsourcing a software development services firm?','Lorem ipsum dolor sit amet, consectetur adipiscing elit. In scelerisque est id congue suscipit. Pellentesque velren interdum est. Suspendisse potenti. Pellentesque sagittis accumsan lectus, vitae pretium lacus bibendum vel.',1,1,'2021-07-24 03:28:33','2021-07-24 03:28:33'),(4,'How to reduce software development services costs?','Lorem ipsum dolor sit amet, consectetur adipiscing elit. In scelerisque est id congue suscipit. Pellentesque velren interdum est. Suspendisse potenti. Pellentesque sagittis accumsan lectus, vitae pretium lacus bibendum vel.',1,1,'2021-07-24 03:28:45','2021-07-24 03:28:45'),(5,'What are the most popular types of software development services?','Lorem ipsum dolor sit amet, consectetur adipiscing elit. In scelerisque est id congue suscipit. Pellentesque velren interdum est. Suspendisse potenti. Pellentesque sagittis accumsan lectus, vitae pretium lacus bibendum vel.',1,1,'2021-07-24 03:29:00','2021-07-24 03:29:00');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `globals`
--

DROP TABLE IF EXISTS `globals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `globals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `siteName` varchar(255) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `Address` longtext NOT NULL,
  `Email` varchar(255) NOT NULL,
  `PhoneNumber` varchar(255) NOT NULL,
  `FacebookURL` varchar(255) DEFAULT NULL,
  `LinkedInURL` varchar(255) DEFAULT NULL,
  `TwitterURL` varchar(255) DEFAULT NULL,
  `YoutubeURL` varchar(255) DEFAULT NULL,
  `InstagramURL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `globals`
--

LOCK TABLES `globals` WRITE;
/*!40000 ALTER TABLE `globals` DISABLE KEYS */;
INSERT INTO `globals` VALUES (1,'Venture plan website',NULL,1,'2021-06-21 15:07:47','2021-07-24 03:48:41','9255 Sunset Blvd. #1100  Beverly Hills, CA 90069','info@ventureplans.net',' 1-800-000-0000',NULL,NULL,NULL,NULL,NULL),(2,'Strapi Blog',NULL,NULL,'2021-07-05 11:00:29','2021-07-05 11:00:29','','','',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `globals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `globals_components`
--

DROP TABLE IF EXISTS `globals_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `globals_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `global_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `global_id_fk` (`global_id`),
  CONSTRAINT `global_id_fk` FOREIGN KEY (`global_id`) REFERENCES `globals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `globals_components`
--

LOCK TABLES `globals_components` WRITE;
/*!40000 ALTER TABLE `globals_components` DISABLE KEYS */;
INSERT INTO `globals_components` VALUES (1,'defaultSeo',1,'components_shared_seos',2,1),(2,'defaultSeo',1,'components_shared_seos',4,2);
/*!40000 ALTER TABLE `globals_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grant_pages`
--

DROP TABLE IF EXISTS `grant_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grant_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) NOT NULL,
  `Subtitle` varchar(255) NOT NULL,
  `Overview` longtext NOT NULL,
  `SamplePlansTitle` varchar(255) NOT NULL,
  `SamplePlansDescription` varchar(255) NOT NULL,
  `SamplePlansBottomText` varchar(255) NOT NULL,
  `Description` longtext NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `OurTeamDescription` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grant_pages`
--

LOCK TABLES `grant_pages` WRITE;
/*!40000 ALTER TABLE `grant_pages` DISABLE KEYS */;
INSERT INTO `grant_pages` VALUES (1,'Grant Application Support','Venture Plans, your dream starts with us.','We have assisted many nonprofits and for profit enterprises  receive millions of dollars in competitive funding support, formula funding, continuation funding, and pass through funding in state and federal level applications. \n\nVenture Plans focuses on offering comprehensive federal government proposal and application management support,  top-tier industry specific proposal experts, and and has a track record for producing consistent, cost-effective, and efficient outcomes. \n\n A well-prepared, designed, and packaged grant application is the key to success. Learn more below. ','Tech Investor Business Plan','Tech Investor Business Plan','Tech Investor Business Plan','The four main types of grants are:\nCompetitive Funding, Formula Funding, Continuation Funding, Pass through funding',1,1,'2021-07-24 08:41:33','2021-08-09 02:35:16','Our Finra and Harvard accredited Industry Consultants have decades of cumulative\nexperience preparing business plans that helped\nentrepreneurs raise capital.');
/*!40000 ALTER TABLE `grant_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grant_pages_components`
--

DROP TABLE IF EXISTS `grant_pages_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grant_pages_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `grant_page_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `grant_page_id_fk` (`grant_page_id`),
  CONSTRAINT `grant_page_id_fk` FOREIGN KEY (`grant_page_id`) REFERENCES `grant_pages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grant_pages_components`
--

LOCK TABLES `grant_pages_components` WRITE;
/*!40000 ALTER TABLE `grant_pages_components` DISABLE KEYS */;
INSERT INTO `grant_pages_components` VALUES (1,'SamplePlans',4,'components_sample_plans_sample_plans',1,1),(2,'SamplePlans',3,'components_sample_plans_sample_plans',2,1),(3,'SamplePlans',2,'components_sample_plans_sample_plans',3,1),(4,'SamplePlans',1,'components_sample_plans_sample_plans',4,1);
/*!40000 ALTER TABLE `grant_pages_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homepages`
--

DROP TABLE IF EXISTS `homepages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `homepages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `CompanyOverview` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homepages`
--

LOCK TABLES `homepages` WRITE;
/*!40000 ALTER TABLE `homepages` DISABLE KEYS */;
INSERT INTO `homepages` VALUES (1,NULL,1,'2021-06-21 15:07:45','2021-08-04 03:39:50','Venture Plans is a sophisticated team of diverse industry-specific consultants with a deep focus in finance, legal advisory and digital innovation. Our executive-level consultants are ivy league trained with institutional-caliber capabilities. We enable the best possible outcomes through value-based methodologies that succinctly capture the maximum value of your principals, intellectual property, business performance, markets, and outlook.\n\nVenture Plans Supports high-tech firms with an emphasis on growth, marketing, and go-to-market strategy focused through financial institutions and private equity. Through deep customer analysis and marketing best practices, we shape companies’ business strategies and digitally transform operation models to accelerate top-line growth. We provide data-backed insights to help companies win in the long term and recommend sustainable outcomes.\n\nAt venture Plans, we tailor your strategy with precision to meet your individual needs. We accelerate growth by encouraging our clients to avoid Cookie-cutter strategic planning as it delivers inferior results. With wider industry experience, Venture Plans has helped a wide array of clients thrive in hospitality, real estate, SaaS & technology, professional services, health care, cannabis, and many more. Our firm has access to industry-leading tools, databases, and analysis software that can provide market research data that is accurate and up-to-date. Our mission is to help companies build capabilities that will compete to win in the long term. Our mission is to help companies across all'),(2,NULL,NULL,'2021-07-05 11:00:29','2021-07-05 11:00:29',NULL);
/*!40000 ALTER TABLE `homepages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homepages_components`
--

DROP TABLE IF EXISTS `homepages_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `homepages_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `homepage_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `homepage_id_fk` (`homepage_id`),
  CONSTRAINT `homepage_id_fk` FOREIGN KEY (`homepage_id`) REFERENCES `homepages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homepages_components`
--

LOCK TABLES `homepages_components` WRITE;
/*!40000 ALTER TABLE `homepages_components` DISABLE KEYS */;
INSERT INTO `homepages_components` VALUES (1,'seo',1,'components_shared_seos',1,1),(2,'hero',1,'components_decoration_heroes',1,1),(3,'seo',1,'components_shared_seos',3,2),(4,'hero',1,'components_decoration_heroes',2,2),(5,'Sliders',1,'components_sliders_sliders',1,1),(6,'Sliders',4,'components_sliders_sliders',2,1),(7,'Sliders',3,'components_sliders_sliders',3,1),(8,'Sliders',5,'components_sliders_sliders',4,1),(9,'Sliders',2,'components_sliders_sliders',5,1),(10,'Sliders',6,'components_sliders_sliders',6,1);
/*!40000 ALTER TABLE `homepages_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i18n_locales`
--

DROP TABLE IF EXISTS `i18n_locales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i18n_locales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `i18n_locales_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i18n_locales`
--

LOCK TABLES `i18n_locales` WRITE;
/*!40000 ALTER TABLE `i18n_locales` DISABLE KEYS */;
INSERT INTO `i18n_locales` VALUES (1,'English (en)','en',NULL,NULL,'2021-06-21 15:07:41','2021-06-21 15:07:41'),(2,'Greek (el)','el',1,1,'2021-07-27 20:41:18','2021-07-27 20:41:18');
/*!40000 ALTER TABLE `i18n_locales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inquiry_reasons`
--

DROP TABLE IF EXISTS `inquiry_reasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inquiry_reasons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Reason` longtext DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inquiry_reasons`
--

LOCK TABLES `inquiry_reasons` WRITE;
/*!40000 ALTER TABLE `inquiry_reasons` DISABLE KEYS */;
INSERT INTO `inquiry_reasons` VALUES (1,'Business Inquiry: I\'m looking to work with Venture Plans','2021-06-23 13:16:06',1,1,'2021-06-23 13:16:03','2021-06-23 13:16:06'),(2,'Business Inquiry: I\'m looking for Venture Plans business services','2021-06-23 13:21:35',1,1,'2021-06-23 13:20:13','2021-06-23 13:21:35'),(3,'Partnership Request: I have a business and I am looking for operation resources or capital','2021-06-23 13:23:57',1,1,'2021-06-23 13:23:55','2021-06-23 13:23:57'),(4,'Press / Media: I\'m looking to feature you in our press release','2021-06-23 13:24:43',1,1,'2021-06-23 13:24:42','2021-06-23 13:24:43'),(5,'Speaker Request: I\'m looking for a speaker at our event','2021-06-23 13:26:03',1,1,'2021-06-23 13:26:01','2021-06-23 13:26:03'),(6,'Vendor Inquiry: I\'m looking to sell our product to you','2021-06-23 13:26:42',1,1,'2021-06-23 13:26:35','2021-06-23 13:26:42'),(7,'Career Information: I\'m looking to work with Venture Plans','2021-06-23 13:27:22',1,1,'2021-06-23 13:27:11','2021-06-23 13:27:22'),(8,'Other','2021-06-23 13:27:30',1,1,'2021-06-23 13:27:29','2021-06-23 13:27:30');
/*!40000 ALTER TABLE `inquiry_reasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insight_categories`
--

DROP TABLE IF EXISTS `insight_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insight_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Type` varchar(255) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insight_categories`
--

LOCK TABLES `insight_categories` WRITE;
/*!40000 ALTER TABLE `insight_categories` DISABLE KEYS */;
INSERT INTO `insight_categories` VALUES (1,'Business','Industries',1,1,'2021-07-28 15:53:28','2021-07-28 15:53:28'),(2,'Education','Industries',1,1,'2021-07-28 15:53:37','2021-07-28 15:54:29'),(3,'Entertainment','Industries',1,1,'2021-07-28 15:54:37','2021-07-28 15:54:37'),(4,'Finance','Industries',1,1,'2021-07-28 15:54:47','2021-07-28 15:54:47'),(5,'Food & Drink','Industries',1,1,'2021-07-28 15:54:59','2021-07-28 15:54:59'),(6,'Health & Fitness','Services',1,1,'2021-07-28 15:55:08','2021-07-28 15:55:08'),(7,'Lifestyle','Services',1,1,'2021-07-28 15:55:18','2021-07-28 15:55:18'),(8,'Medical','Services',1,1,'2021-07-28 15:55:32','2021-07-28 15:55:32'),(9,'Music','Services',1,1,'2021-07-28 15:55:39','2021-07-28 15:55:39'),(10,'News','Services',1,1,'2021-07-28 15:55:47','2021-07-28 15:55:47');
/*!40000 ALTER TABLE `insight_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insights`
--

DROP TABLE IF EXISTS `insights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insights` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Title` longtext DEFAULT NULL,
  `Subtitle` varchar(255) DEFAULT NULL,
  `Content` longtext DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `excerp` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insights`
--

LOCK TABLES `insights` WRITE;
/*!40000 ALTER TABLE `insights` DISABLE KEYS */;
INSERT INTO `insights` VALUES (1,'Cyber Security & Data Encryption','U.S Demand in cyber security at a peak for the next decade','As consumer engagement with (and trust in) online services and platforms has grown, the potential for serious cybersecurity breaches and imperiling of consumer data has grown, too.','2021-06-24 14:08:28',1,1,'2021-06-24 14:08:26','2021-07-28 15:56:29',NULL),(2,'Investors as Engines for A Strong Economy','Venture Capital and Finance','investors and their capital can also greatly contribute to the overall health of the U.S. (and global) economy. An investor\'s dollar has significant butterfly effects, making it a powerful tool.','2021-06-24 14:11:15',1,1,'2021-06-24 14:11:12','2021-07-28 15:56:39',NULL),(3,'How industries can increase job \nOpportunities with automation','Redesigned Account Planning Transforms an IT Company’s Performance','New tools and strategies boost year-on-year growth and reenergize the company’s sales pipeline','2021-06-24 14:13:13',1,1,'2021-06-24 14:13:11','2021-07-31 14:44:23',NULL),(4,'Key drivers for finding quality\nTalent for your business ','Redesigned Account Planning Transforms an IT Company’s Performance','New tools and strategies boost year-on-year growth and reenergize the company’s sales pipeline','2021-06-24 14:14:55',1,1,'2021-06-24 14:14:52','2021-07-31 14:42:26',NULL),(5,'How wealthy individuals can contribute to the overall economic growth Cycle.  ','Redesigned Account Planning Transforms an IT Company’s Performance','New tools and strategies boost year-on-year growth and reenergize the company’s sales pipeline','2021-06-24 14:16:26',1,1,'2021-06-24 14:16:23','2021-07-31 14:41:44',NULL),(6,'How wealthy individuals can contribute to the overall economic growth Cycle.  ','New tools and strategies boost year-on-year growth and reenergize the company’s sales pipeline','Redesigned Account Planning \nTransforms an IT Company’s \nPerformance','2021-06-24 14:17:36',1,1,'2021-06-24 14:17:34','2021-07-31 14:40:43',NULL);
/*!40000 ALTER TABLE `insights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insights__insight_categories`
--

DROP TABLE IF EXISTS `insights__insight_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insights__insight_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `insight_id` int(11) DEFAULT NULL,
  `insight-category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insights__insight_categories`
--

LOCK TABLES `insights__insight_categories` WRITE;
/*!40000 ALTER TABLE `insights__insight_categories` DISABLE KEYS */;
INSERT INTO `insights__insight_categories` VALUES (1,6,1),(2,6,2),(3,4,3),(4,4,4),(5,5,5),(6,5,6),(7,1,7),(8,1,8),(9,2,9),(10,2,10);
/*!40000 ALTER TABLE `insights__insight_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insights_pages`
--

DROP TABLE IF EXISTS `insights_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insights_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) NOT NULL,
  `Subtitle` varchar(255) NOT NULL,
  `Overview` longtext NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insights_pages`
--

LOCK TABLES `insights_pages` WRITE;
/*!40000 ALTER TABLE `insights_pages` DISABLE KEYS */;
INSERT INTO `insights_pages` VALUES (1,'Venture Plans Insights ','Be the first to learn more about the changes in your industry','Our insights help you be informed of next era of industry news. Through our global networks and intel in the United States we are always informed of the direction of the economy. Take a look at some key tips related to your industry and call one of our senior business analysts for more information about your industry. ',1,1,'2021-07-24 08:37:37','2021-07-24 08:37:37');
/*!40000 ALTER TABLE `insights_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Position` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'Arleo Dordar','Financial Advisor, CEO','Lorem ipsum dolor sit amet, consectetur adipiscing elit. In scelerisque est id congue suscipit. Pellentesque velren interdum est. Suspendisse potenti. Pellentesque sagittis accumsan lectus, vitae pretium lacus bibendum vel.',1,1,'2021-07-24 03:30:20','2021-07-24 03:30:20'),(2,'Amaris Olguin','Harvard Business Analyst, Vice President','Lorem ipsum dolor sit amet, consectetur adipiscing elit. In scelerisque est id congue suscipit. Pellentesque velren interdum est. Suspendisse potenti. Pellentesque sagittis accumsan lectus, vitae pretium lacus bibendum vel.',1,1,'2021-07-24 03:31:26','2021-07-24 03:31:26'),(3,'Amaris Olguin','Harvard Business Analyst, Vice President','Lorem ipsum dolor sit amet, consectetur adipiscing elit. In scelerisque est id congue suscipit. Pellentesque velren interdum est. Suspendisse potenti. Pellentesque sagittis accumsan lectus, vitae pretium lacus bibendum vel.',1,1,'2021-07-24 03:31:51','2021-07-24 03:31:51');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Label` varchar(255) NOT NULL,
  `Link` varchar(255) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,'About','about.html',1,1,'2021-07-05 13:20:24','2021-07-28 02:12:24'),(2,'Consulting','#',1,1,'2021-07-05 13:21:50','2021-07-05 14:17:27'),(3,'Management Consulting','#',1,1,'2021-07-05 13:22:06','2021-07-05 13:22:06'),(4,'Restructuring Operations','#',1,1,'2021-07-05 13:22:15','2021-07-05 13:22:15'),(5,'Digital Marketing','#',1,1,'2021-07-05 13:22:24','2021-07-05 13:22:24'),(6,'Revenue Growth','#',1,1,'2021-07-05 13:22:33','2021-07-05 13:22:33'),(7,'Agile Implementation','#',1,1,'2021-07-05 13:22:41','2021-07-05 13:22:41'),(8,'Transformation Modification & Integration','#',1,1,'2021-07-05 13:22:49','2021-07-05 13:22:49'),(9,'Customer Experience','#',1,1,'2021-07-05 13:22:57','2021-07-05 13:22:57'),(10,'Financial Advisory','#',1,1,'2021-07-05 13:23:06','2021-07-05 13:23:06'),(11,'Strategy','#',1,1,'2021-07-05 13:23:14','2021-07-05 13:23:14'),(12,'Human Resources','#',1,1,'2021-07-05 13:23:20','2021-07-05 13:23:20'),(13,'Industries','#',1,1,'2021-07-05 13:23:28','2021-07-05 13:23:28'),(14,'Cannabis Licensing and Application Support','#',1,1,'2021-07-05 13:23:35','2021-07-05 13:23:35'),(15,'New Start Up Technology','#',1,1,'2021-07-05 13:23:42','2021-07-05 13:23:42'),(16,'Business Plans','business.html',1,1,'2021-07-05 13:24:26','2021-07-28 02:13:47'),(17,'Investor Business Plans','#',1,1,'2021-07-05 13:24:37','2021-07-05 13:24:37'),(18,'Immigration Business Plans','#',1,1,'2021-07-05 13:24:44','2021-07-05 13:38:43'),(19,'E2 Business Plans','#',1,1,'2021-07-05 13:24:52','2021-07-05 13:24:52'),(20,'EB1 Business Plans','#',1,1,'2021-07-05 13:25:03','2021-07-05 13:25:03'),(21,'EB5 Business Plans','#',1,1,'2021-07-05 13:25:13','2021-07-05 13:25:13'),(22,'L-1A & L-1B Business Plans','#',1,1,'2021-07-05 13:25:20','2021-07-05 13:25:20'),(23,'SBA Lender Business Plans','#',1,1,'2021-07-05 13:25:32','2021-07-05 13:25:32'),(24,'Marketing Plan','#',1,1,'2021-07-05 13:25:51','2021-07-05 13:25:51'),(25,'Restructuring Business Plan','#',1,1,'2021-07-05 13:25:57','2021-07-05 13:25:58'),(26,'Franchising Plan','#',1,1,'2021-07-05 13:26:05','2021-07-05 13:26:05'),(27,'Cannabis Business Plan','#',1,1,'2021-07-05 13:26:12','2021-07-05 13:26:12'),(28,'Request For Proposal','#',1,1,'2021-07-05 13:26:19','2021-07-05 13:26:19'),(29,'Grant Business Plans','#',1,1,'2021-07-05 13:26:26','2021-07-05 13:26:26'),(30,'Investor Pitch Deck','#',1,1,'2021-07-05 13:26:33','2021-07-05 13:26:33'),(31,'Financial Proforma','#',1,1,'2021-07-05 13:26:42','2021-07-05 13:26:42'),(32,'Prospectus','#',1,1,'2021-07-05 13:26:49','2021-07-05 13:26:49'),(33,'White Paper','#',1,1,'2021-07-05 13:26:57','2021-07-05 13:26:57'),(34,'Data Industry Reports','#',1,1,'2021-07-05 13:27:04','2021-07-05 13:27:04'),(35,'Feasibility Reports','#',1,1,'2021-07-05 13:27:12','2021-07-05 13:27:12'),(36,'Financing','#',1,1,'2021-07-05 13:27:38','2021-07-29 08:00:38'),(37,'Private Placements','#',1,1,'2021-07-05 13:27:57','2021-07-05 13:27:57'),(38,'Regulation D','#',1,1,'2021-07-05 13:28:04','2021-07-05 13:40:45'),(39,'506 (B) Relationship Investors','#',1,1,'2021-07-05 13:28:11','2021-07-05 13:28:11'),(40,'506 (C) Advertised Offering','#',1,1,'2021-07-05 13:28:18','2021-07-05 13:28:18'),(41,'Grants','#',1,1,'2021-07-05 13:28:26','2021-07-05 13:28:26'),(42,'Private Equity','#',1,1,'2021-07-05 13:28:33','2021-07-05 13:28:33'),(43,'Regulation S Offshore Offering','#',1,1,'2021-07-05 13:28:40','2021-07-05 13:28:40'),(44,'Regulation A+ Crowd Funding','#',1,1,'2021-07-05 13:28:46','2021-07-05 13:28:46'),(45,'Investment Portfolio Managment','#',1,1,'2021-07-05 13:28:53','2021-07-05 13:28:53'),(46,'Private Placement Memorandum','#',1,1,'2021-07-05 13:28:59','2021-07-05 13:28:59'),(47,'Deal Structuring','#',1,1,'2021-07-05 13:29:08','2021-07-05 13:29:08'),(48,'Mergers & Acquisitions','#',1,1,'2021-07-05 13:29:16','2021-07-05 13:41:21'),(49,'Post Merger Integration','#',1,1,'2021-07-05 13:29:23','2021-07-05 13:29:23'),(50,'Diviestitures','#',1,1,'2021-07-05 13:29:29','2021-07-05 13:29:29'),(51,'Due Deligince Certification','#',1,1,'2021-07-05 13:29:36','2021-07-05 13:29:36'),(52,'Forensic accounting','#',1,1,'2021-07-05 13:29:42','2021-07-05 13:29:42'),(53,'Securitization','#',1,1,'2021-07-05 13:29:48','2021-07-05 13:29:48'),(54,'Real Estate Investment Trust Fund','#',1,1,'2021-07-05 13:29:55','2021-07-05 13:29:55'),(55,'Legal advisory','#',1,1,'2021-07-05 13:30:31','2021-07-05 14:24:00'),(56,'Intellectual Property','#',1,1,'2021-07-05 13:30:37','2021-07-05 13:43:28'),(57,'Utility Patent','#',1,1,'2021-07-05 13:30:45','2021-07-05 13:30:45'),(58,'Design Patent','#',1,1,'2021-07-05 13:30:54','2021-07-05 13:30:54'),(59,'Plant Patent','#',1,1,'2021-07-05 13:31:00','2021-07-05 13:31:00'),(60,'Provisional and Non Provisional','#',1,1,'2021-07-05 13:31:08','2021-07-05 13:31:08'),(61,'Trademark','#',1,1,'2021-07-05 13:31:16','2021-07-05 13:31:16'),(62,'Copyright','#',1,1,'2021-07-05 13:31:53','2021-07-05 13:31:53'),(63,'Convertible Note(s)','#',1,1,'2021-07-05 13:32:02','2021-07-05 13:32:02'),(64,'Chapter 11 Bankruptcy','#',1,1,'2021-07-05 13:32:20','2021-07-05 13:32:20'),(65,'Commodity & Futures Contract','#',1,1,'2021-07-05 13:32:26','2021-07-05 13:32:26'),(66,'Initial Public Offering','#',1,1,'2021-07-05 13:32:34','2021-07-05 13:32:34'),(67,'Private Placement Memorandum','#',1,1,'2021-07-05 13:32:40','2021-07-05 13:32:40'),(68,'Commodity & Futures','#',1,1,'2021-07-05 13:32:48','2021-07-05 13:32:48'),(69,'Securities Arbitration','#',1,1,'2021-07-05 13:32:55','2021-07-05 13:32:55'),(70,'Offering Memorandum(Canada)','#',1,1,'2021-07-05 13:33:01','2021-07-05 13:33:01'),(71,'Legal Entity Structuring','#',1,1,'2021-07-05 13:33:17','2021-07-05 13:33:17'),(72,'Technology','#',1,1,'2021-07-05 13:33:24','2021-07-05 14:22:38'),(73,'Agile','#',1,1,'2021-07-05 13:33:59','2021-07-05 13:44:24'),(74,'Custom Software Development','#',1,1,'2021-07-05 13:34:06','2021-07-05 13:34:06'),(75,'Custom Application Development','#',1,1,'2021-07-05 13:34:12','2021-07-05 13:34:12'),(76,'Prototypes','#',1,1,'2021-07-05 13:34:18','2021-07-05 13:34:18'),(77,'Backlog Feature Implementation','#',1,1,'2021-07-05 13:34:25','2021-07-05 13:34:25'),(78,'Functional Specification','#',1,1,'2021-07-05 13:34:31','2021-07-05 13:34:31'),(79,'Custom Design and Build','#',1,1,'2021-07-05 13:34:37','2021-07-05 13:34:37'),(80,'Automation','#',1,1,'2021-07-05 13:34:45','2021-07-05 13:34:45'),(81,'Data Analytics Implementation','#',1,1,'2021-07-05 13:34:51','2021-07-05 13:34:51'),(82,'Industries','#',1,1,'2021-07-05 13:35:00','2021-07-05 13:35:00'),(83,'Careers','#',1,1,'2021-07-05 13:35:09','2021-07-05 13:35:09'),(84,'Data Market Reports','#',1,1,'2021-07-05 13:35:16','2021-07-05 13:35:16');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items__sub_items`
--

DROP TABLE IF EXISTS `menu_items__sub_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items__sub_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_item_id` int(11) DEFAULT NULL,
  `sub-menu_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items__sub_items`
--

LOCK TABLES `menu_items__sub_items` WRITE;
/*!40000 ALTER TABLE `menu_items__sub_items` DISABLE KEYS */;
INSERT INTO `menu_items__sub_items` VALUES (1,2,3),(2,2,4),(3,2,5),(4,2,6),(5,2,7),(6,2,8),(7,2,9),(8,2,10),(9,2,11),(10,2,12),(11,2,13),(12,2,14),(13,2,15),(14,16,17),(15,16,18),(16,16,23),(17,16,24),(18,16,25),(19,16,26),(20,16,27),(21,16,28),(22,16,29),(23,16,30),(24,16,31),(25,16,32),(26,16,33),(27,16,34),(28,16,35),(29,18,19),(30,18,20),(31,18,21),(32,18,22),(33,36,37),(34,36,38),(35,38,39),(36,38,40),(37,38,41),(38,38,42),(39,38,43),(40,38,44),(41,38,45),(42,38,46),(43,38,47),(44,38,48),(45,48,49),(46,48,50),(47,48,51),(48,48,52),(49,48,53),(50,48,54),(51,55,56),(52,55,61),(53,55,62),(54,55,63),(55,55,64),(56,55,65),(57,55,66),(58,55,46),(59,55,68),(60,55,69),(61,55,70),(62,55,71),(63,56,57),(64,56,58),(65,56,59),(66,56,60),(67,72,73),(68,73,74),(69,73,75),(70,73,76),(71,73,77),(72,73,78),(73,73,79),(74,73,80),(75,73,81),(76,36,42),(77,36,48);
/*!40000 ALTER TABLE `menu_items__sub_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items_components`
--

DROP TABLE IF EXISTS `menu_items_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `menu_item_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_item_id_fk` (`menu_item_id`),
  CONSTRAINT `menu_item_id_fk` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items_components`
--

LOCK TABLES `menu_items_components` WRITE;
/*!40000 ALTER TABLE `menu_items_components` DISABLE KEYS */;
INSERT INTO `menu_items_components` VALUES (1,'Rows',1,'components_row_rows',1,2),(2,'Rows',2,'components_row_rows',2,2),(3,'Rows',1,'components_row_rows',3,36),(4,'Rows',1,'components_row_rows',4,72),(5,'Rows',1,'components_row_rows',5,55);
/*!40000 ALTER TABLE `menu_items_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Label` varchar(255) NOT NULL,
  `Slug` varchar(255) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Left Menu','left-menu',1,1,'2021-07-05 11:03:15','2021-07-05 13:45:07'),(2,'Header Navigation','header-navigation',1,1,'2021-07-05 11:03:24','2021-07-05 14:24:38');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus__menu_items`
--

DROP TABLE IF EXISTS `menus__menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus__menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) DEFAULT NULL,
  `sub-menu_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus__menu_items`
--

LOCK TABLES `menus__menu_items` WRITE;
/*!40000 ALTER TABLE `menus__menu_items` DISABLE KEYS */;
INSERT INTO `menus__menu_items` VALUES (1,1,1),(2,1,2),(3,1,16),(4,1,36),(5,1,55),(6,1,72),(7,1,13),(8,1,83),(9,1,84),(10,2,1),(11,2,2),(12,2,36),(13,2,72),(14,2,55),(15,2,83);
/*!40000 ALTER TABLE `menus__menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `our_firms`
--

DROP TABLE IF EXISTS `our_firms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `our_firms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) NOT NULL,
  `Content` varchar(255) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `our_firms`
--

LOCK TABLES `our_firms` WRITE;
/*!40000 ALTER TABLE `our_firms` DISABLE KEYS */;
INSERT INTO `our_firms` VALUES (1,'Our Vision','Building processes to help businesses succeed and win in the long term',1,1,'2021-07-24 03:34:23','2021-07-24 03:34:23'),(2,'Our Mission','To deploy digital innovation to drive top line growth',1,1,'2021-07-24 03:34:54','2021-07-24 03:34:54'),(3,'Our Culture','By identifying new markets, optimizing revenue, operations, technology and financing, we help businesses across sectors transform and expand.',1,1,'2021-07-24 03:35:11','2021-07-24 03:35:11');
/*!40000 ALTER TABLE `our_firms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `our_services`
--

DROP TABLE IF EXISTS `our_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `our_services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Content` longtext NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `our_services`
--

LOCK TABLES `our_services` WRITE;
/*!40000 ALTER TABLE `our_services` DISABLE KEYS */;
INSERT INTO `our_services` VALUES (1,'Investor Business Plans ','The Investor Business Plans  standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\n\nAvailable as either a rapid (2-4 days) or comprehensive (4-6 weeks) assessment, our diagnostic assesses four critical facets of manufacturing: supply chain, footprint design, plant performance, and digital/Industry 4.0.',1,1,'2021-07-24 03:36:09','2021-08-08 16:50:10'),(2,'Talk To Us','Your journey to full potential begins with a detailed, clear-eyed assessment of where you stand today. Only Bain offers a Manufacturing Full Potential Diagnostic that provides a standardized approach and proprietary benchmarks that give you a qualitative and quantitative assessment of your starting point.\n\nAvailable as either a rapid (2-4 days) or comprehensive (4-6 weeks) assessment, our diagnostic assesses four critical facets of manufacturing: supply chain, footprint design, plant performance, and digital/Industry 4.0.',1,1,'2021-07-24 03:36:35','2021-07-24 03:36:35'),(3,'Pitch Deck','Your journey to full potential begins with a detailed, clear-eyed assessment of where you stand today. Only Bain offers a Manufacturing Full Potential Diagnostic that provides a standardized approach and proprietary benchmarks that give you a qualitative and quantitative assessment of your starting point.\n\nAvailable as either a rapid (2-4 days) or comprehensive (4-6 weeks) assessment, our diagnostic assesses four critical facets of manufacturing: supply chain, footprint design, plant performance, and digital/Industry 4.0.',1,1,'2021-07-24 03:36:51','2021-07-24 03:36:51'),(4,'Immigration Business Plans (E-2, EB-5, L-1)','Immigration Business Plans (E-2, EB-5, L-1) see where you’re strong, where you lag, and what the savings potential can be when you improve specific elements of your performance and capability. Our benchmarking database of 250+ plants across a wide variety of industries captures today’s most relevant KPIs, allowing you to visualize your current state, spot areas of opportunity and prioritize the actions that will vault you ahead of your competitors.\n\nAvailable as either a rapid (2-4 days) or comprehensive (4-6 weeks) assessment, our diagnostic assesses four critical facets of manufacturing: supply chain, footprint design, plant performance, and digital/Industry 4.0',1,1,'2021-07-28 15:18:48','2021-08-08 16:49:45'),(5,'Grants','See where you’re Grants, where you lag, and what the savings potential can be when you improve specific elements of your performance and capability. Our benchmarking database of 250+ plants across a wide variety of industries captures today’s most relevant KPIs, allowing you to visualize your current state, spot areas of opportunity and prioritize the actions that will vault you ahead of your competitors.\n\nYour journey to full potential begins with a detailed, clear-eyed assessment of where you stand today. Only Bain offers a Manufacturing Full Potential Diagnostic that provides a standardized approach and proprietary benchmarks that give you a qualitative and quantitative assessment of your starting point.',1,1,'2021-07-28 15:19:50','2021-08-08 16:49:34'),(6,'Request for Proposals ','Your journey to full potential begins with a detailed, clear-eyed assessment of where you stand today. Only Bain offers a Manufacturing Full Potential Diagnostic that provides a standardized approach and proprietary benchmarks that give you a qualitative and quantitative assessment of your starting point.\n\nAvailable as either a rapid (2-4 days) or comprehensive (4-6 weeks) assessment, our diagnostic assesses four critical facets of manufacturing: supply chain, footprint design, plant performance, and digital/Industry 4.0.\n\nSee where you’re strong, where you lag, and what the savings potential can be when you improve specific elements of your performance and capability. Our benchmarking database of 250+ plants across a wide variety of industries captures today’s most relevant KPIs, allowing you to visualize your current state, spot areas of opportunity and prioritize the actions that will vault you ahead of your competitors.',1,1,'2021-07-28 15:20:20','2021-07-28 15:20:20'),(7,'Financial Modeling ','There are many variations of Financial Modeling of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. \n\nAll the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.',1,1,'2021-07-28 15:21:06','2021-08-08 16:49:01'),(8,'Private Placement Memorandum ','Your journey to full potential begins with a detailed, clear-eyed assessment of where you stand today. Only Bain offers a Manufacturing Full Potential Diagnostic that provides a standardized approach and proprietary benchmarks that give you a qualitative and quantitative assessment of your starting point.\n\nAvailable as either a rapid (2-4 days) or comprehensive (4-6 weeks) assessment, our diagnostic assesses four critical facets of manufacturing: supply chain, footprint design, plant performance, and digital/Industry 4.0.',1,1,'2021-07-28 15:21:39','2021-07-28 15:21:39'),(9,'Cannabis Application Support ','Your journey to full potential begins with a detailed, clear-eyed assessment of where you stand today. Only Bain offers a Manufacturing Full Potential Diagnostic that provides a standardized approach and proprietary benchmarks that give you a qualitative and quantitative assessment of your starting point.\n\nAvailable as either a rapid (2-4 days) or comprehensive (4-6 weeks) assessment, our diagnostic assesses four critical facets of manufacturing: supply chain, footprint design, plant performance, and digital/Industry 4.0.',1,1,'2021-07-28 15:22:14','2021-07-28 15:22:14'),(10,'SBA Lender Application Support','Your journey to full potential begins with a detailed, clear-eyed assessment of where you stand today. Only Bain offers a Manufacturing Full Potential Diagnostic that provides a standardized approach and proprietary benchmarks that give you a qualitative and quantitative assessment of your starting point.\n\nAvailable as either a rapid (2-4 days) or comprehensive (4-6 weeks) assessment, our diagnostic assesses four critical facets of manufacturing: supply chain, footprint design, plant performance, and digital/Industry 4.0.',1,1,'2021-07-28 15:22:45','2021-07-28 15:22:45'),(11,'Intellectual Property','Available as either a rapid (2-4 days) or comprehensive (4-6 weeks) assessment, our diagnostic assesses four critical facets of manufacturing: supply chain, footprint design, plant performance, and digital/Industry 4.0.\n\nIntellectual Property Your journey to full potential begins with a detailed, clear-eyed assessment of where you stand today. Only Bain offers a Manufacturing Full Potential Diagnostic that provides a standardized approach and proprietary benchmarks that give you a qualitative and quantitative assessment of your starting point.',1,1,'2021-07-28 15:23:23','2021-08-08 16:49:56'),(13,'Private Placements ','Your journey to full potential begins with a detailed, clear-eyed assessment of where you stand today. Only Bain offers a Manufacturing Full Potential Diagnostic that provides a standardized approach and proprietary benchmarks that give you a qualitative and quantitative assessment of your starting point.\n\nAvailable as either a rapid (2-4 days) or comprehensive (4-6 weeks) assessment, our diagnostic assesses four critical facets of manufacturing: supply chain, footprint design, plant performance, and digital/Industry 4.0.',1,1,'2021-07-28 15:24:24','2021-07-28 15:24:24'),(14,'Private Equity','Your journey to full potential begins with a detailed, clear-eyed assessment of where you stand today. Only Bain offers a Manufacturing Full Potential Diagnostic that provides a standardized approach and proprietary benchmarks that give you a qualitative and quantitative assessment of your starting point.\n\nAvailable as either a rapid (2-4 days) or comprehensive (4-6 weeks) assessment, our diagnostic assesses four critical facets of manufacturing: supply chain, footprint design, plant performance, and digital/Industry 4.0.\n',1,1,'2021-07-28 15:25:18','2021-07-28 15:25:30'),(15,'Mergers & Acquisitions ','Your journey to full potential begins with a detailed, clear-eyed assessment of where you stand today. Only Bain offers a Manufacturing Full Potential Diagnostic that provides a standardized approach and proprietary benchmarks that give you a qualitative and quantitative assessment of your starting point.\n\nAvailable as either a rapid (2-4 days) or comprehensive (4-6 weeks) assessment, our diagnostic assesses four critical facets of manufacturing: supply chain, footprint design, plant performance, and digital/Industry 4.0.',1,1,'2021-07-28 15:25:56','2021-07-28 15:25:56'),(16,'Diviestitures ','Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\n\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. \n',1,1,'2021-07-28 15:26:48','2021-08-08 16:48:39'),(17,'Due Deligince Certification ','Due Deligince Certification, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.\n\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.',1,1,'2021-07-28 15:28:05','2021-08-08 16:44:26'),(18,'Forensic accounting','Your Forensic accounting to full potential begins with a detailed, clear-eyed assessment of where you stand today. Only Bain offers a Manufacturing Full Potential Diagnostic that provides a standardized approach and proprietary benchmarks that give you a qualitative and quantitative assessment of your starting point.\n\nAvailable as either a rapid (2-4 days) or comprehensive (4-6 weeks) assessment, our diagnostic assesses four critical facets of manufacturing: supply chain, footprint design, plant performance, and digital/Industry 4.0.\n',1,1,'2021-07-28 15:28:36','2021-08-08 16:49:12'),(19,'Securitization','Your journey to full potential begins with a detailed, clear-eyed assessment of where you stand today. Only Bain offers a Manufacturing Full Potential Diagnostic that provides a standardized approach and proprietary benchmarks that give you a qualitative and quantitative assessment of your starting point.\n\nAvailable as either a rapid (2-4 days) or comprehensive (4-6 weeks) assessment, our diagnostic assesses four critical facets of manufacturing: supply chain, footprint design, plant performance, and digital/Industry 4.0.',1,1,'2021-07-28 15:29:02','2021-07-28 15:29:02'),(20,'Real Estate Investment Trust Fund','Your journey to full potential begins with a detailed, clear-eyed assessment of where you stand today. Only Bain offers a Manufacturing Full Potential Diagnostic that provides a standardized approach and proprietary benchmarks that give you a qualitative and quantitative assessment of your starting point.\n\nAvailable as either a rapid (2-4 days) or comprehensive (4-6 weeks) assessment, our diagnostic assesses four critical facets of manufacturing: supply chain, footprint design, plant performance, and digital/Industry 4.0.',1,1,'2021-07-28 15:29:24','2021-07-28 15:29:24');
/*!40000 ALTER TABLE `our_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_entries`
--

DROP TABLE IF EXISTS `package_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FullName` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `PhoneNumber` varchar(255) NOT NULL,
  `package` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `Price` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_entries`
--

LOCK TABLES `package_entries` WRITE;
/*!40000 ALTER TABLE `package_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `package_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packages`
--

DROP TABLE IF EXISTS `packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `packages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Description` longtext NOT NULL,
  `Price` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packages`
--

LOCK TABLES `packages` WRITE;
/*!40000 ALTER TABLE `packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) DEFAULT NULL,
  `Slug` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `Content` longtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_Slug_unique` (`Slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (5,'Privacy','privacy-policy','2021-08-03 04:19:38',1,1,'2021-07-31 10:44:39','2021-08-06 09:12:19','**The standard Lorem Ipsum passage, used since the 1500s**\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\n\n**Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC**\n\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\n\n**1914 translation by H. Rackham**\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"\n\n**Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC**\n\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"\n\n**1914 translation by H. Rackham**\n\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"',NULL);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_components`
--

DROP TABLE IF EXISTS `pages_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `page_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `page_id_fk` (`page_id`),
  CONSTRAINT `page_id_fk` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_components`
--

LOCK TABLES `pages_components` WRITE;
/*!40000 ALTER TABLE `pages_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Test` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `popups`
--

DROP TABLE IF EXISTS `popups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `popups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `UserDescription` varchar(255) NOT NULL,
  `UserName` varchar(255) NOT NULL,
  `RightSubtitle` varchar(255) NOT NULL,
  `RightTitle` varchar(255) NOT NULL,
  `RightDescription` varchar(255) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `popups`
--

LOCK TABLES `popups` WRITE;
/*!40000 ALTER TABLE `popups` DISABLE KEYS */;
INSERT INTO `popups` VALUES (1,'I\'m an angel investor, and I recommend Venture Plans for all your financing objectives.','Michelle Zorovsky, Nabisco','GET A FREE CONSULTATION','RAISE CAPITAL WITH EXPERTS','Get a free consultation from one of our accredited experts in your industry! PPM, Business Plans, Financing!',1,1,'2021-08-02 15:57:33','2021-08-02 15:57:33');
/*!40000 ALTER TABLE `popups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processes`
--

DROP TABLE IF EXISTS `processes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `processes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) NOT NULL,
  `Content` longtext NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processes`
--

LOCK TABLES `processes` WRITE;
/*!40000 ALTER TABLE `processes` DISABLE KEYS */;
INSERT INTO `processes` VALUES (1,'Research','Grants are available from government agencies, state associations, and private corporations. The government website grants.gov, the local Business Development Center, and charities like the Local, State, or national wide Initiatives Support Corp are all places venture plans starts byresearching and finding the top eligible choices that fit well with your entity and for your application.',1,1,'2021-07-24 03:38:59','2021-07-24 03:38:59'),(2,'Guidelines & Requirements','After the initial research phase, we dive deeper in disecting the guidelines of the top compatible grants that match your venture’s needs. We start looking at the requirements and checklist of the stated guidelines, to see how we are going to create a compelling business model, sustainability plan for a proper budgeting strategy for a ongoing long term funding portal.',1,1,'2021-07-24 03:42:09','2021-07-24 03:42:09'),(3,'Grant Proposal and Submission','Our team of grant experts draft a grant proposal that is straightforward, precise document written for a specific institution or funding agency with the intention of influencing the supporters to help you because: (1) you have a significant and well-thought-out strategy to pursue a viable cause, and (2) you are accountable and capable of carrying out that plan.',1,1,'2021-07-24 03:42:23','2021-07-24 03:42:23');
/*!40000 ALTER TABLE `processes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_entries`
--

DROP TABLE IF EXISTS `search_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Keyword` varchar(255) NOT NULL,
  `Count` bigint(20) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `search_entries_Count_unique` (`Count`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_entries`
--

LOCK TABLES `search_entries` WRITE;
/*!40000 ALTER TABLE `search_entries` DISABLE KEYS */;
INSERT INTO `search_entries` VALUES (1,'insights',1,NULL,NULL,'2021-08-06 22:14:37','2021-08-06 22:14:37');
/*!40000 ALTER TABLE `search_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sectors`
--

DROP TABLE IF EXISTS `sectors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sectors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `IndustryConsultations` int(11) NOT NULL,
  `BusinessPlansWritten` int(11) NOT NULL,
  `YearsExperience` int(11) NOT NULL,
  `Raised` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sectors`
--

LOCK TABLES `sectors` WRITE;
/*!40000 ALTER TABLE `sectors` DISABLE KEYS */;
INSERT INTO `sectors` VALUES (1,'Software/Apps & Telecommunications',8,386,10,35,1,1,'2021-07-27 03:09:16','2021-07-27 03:09:16'),(2,'Cannabis Application Support',1,2,3,4,1,1,'2021-07-27 03:09:41','2021-07-27 03:09:41'),(3,'Financial Services, Fintech, Crypto, Bitcoin',10,11,12,13,1,1,'2021-07-27 03:10:04','2021-07-27 03:10:04'),(4,'Residential Real Estate, Development',20,21,22,23,1,1,'2021-07-27 03:10:31','2021-07-27 03:10:31'),(5,'Education & E-learning, AI Cognitive Computing',30,31,32,33,1,1,'2021-07-27 03:10:53','2021-07-27 03:10:53'),(6,'Manufacturing, Aerospace & Defense, Robotics',40,41,42,43,1,1,'2021-07-27 03:11:14','2021-07-27 03:11:14'),(7,'Commercial Real Estate',50,51,52,53,1,1,'2021-07-27 03:11:48','2021-07-27 03:11:48');
/*!40000 ALTER TABLE `sectors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) NOT NULL,
  `Content` varchar(255) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Rapid Execution','Choose from 5-day standard and expedited options. Deadlines met.',1,1,'2021-07-24 03:43:51','2021-07-24 03:43:51'),(2,'Ivy League Trained','Put the best & brightest to work on Your businesses future.',1,1,'2021-07-24 03:44:30','2021-07-24 03:44:30'),(3,'Custom Narrative & Forecasts','Put the best & brightest to work on Your businesses future.',1,1,'2021-07-24 03:44:46','2021-07-24 03:44:46');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_testimonials`
--

DROP TABLE IF EXISTS `social_testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_testimonials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Content` longtext DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `Rating` int(11) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_testimonials`
--

LOCK TABLES `social_testimonials` WRITE;
/*!40000 ALTER TABLE `social_testimonials` DISABLE KEYS */;
INSERT INTO `social_testimonials` VALUES (1,'Jack M.','I\'m a shareholder and a serial entrepreneur, of multi-million dollar firms since the early 1990\'s. Our target for corporate planning, restructuring, financial advisory and deal structuring is Arleo Dordar and venture plans. Arleo Dordar helped draft an ','Google',5,NULL,1,1,'2021-06-24 15:45:18','2021-06-24 15:45:18');
/*!40000 ALTER TABLE `social_testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statistics`
--

DROP TABLE IF EXISTS `statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statistics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statistics`
--

LOCK TABLES `statistics` WRITE;
/*!40000 ALTER TABLE `statistics` DISABLE KEYS */;
INSERT INTO `statistics` VALUES (1,'10500 +',1,1,'2021-07-24 03:46:38','2021-07-24 03:46:57'),(2,'$650 MM',1,1,'2021-07-24 03:47:25','2021-07-24 03:47:25'),(3,'Accredited Experts',1,1,'2021-07-24 03:48:01','2021-07-24 03:48:01'),(4,'Comprehensive Compact Pitch',1,1,'2021-07-24 03:48:30','2021-07-24 03:48:30'),(5,'Expedited Services',1,1,'2021-07-24 03:49:48','2021-07-24 03:49:48'),(6,'20 Consultants',1,1,'2021-07-24 03:51:14','2021-07-24 03:51:14');
/*!40000 ALTER TABLE `statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statistics_components`
--

DROP TABLE IF EXISTS `statistics_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statistics_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `statistic_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `statistic_id_fk` (`statistic_id`),
  CONSTRAINT `statistic_id_fk` FOREIGN KEY (`statistic_id`) REFERENCES `statistics` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statistics_components`
--

LOCK TABLES `statistics_components` WRITE;
/*!40000 ALTER TABLE `statistics_components` DISABLE KEYS */;
INSERT INTO `statistics_components` VALUES (1,'StatisticContent',1,'components_statistic_content_statistic_contents',1,1),(2,'StatisticContent',1,'components_statistic_content_statistic_contents',2,2),(3,'StatisticContent',1,'components_statistic_content_statistic_contents',3,3),(4,'StatisticContent',2,'components_statistic_content_statistic_contents',4,3),(5,'StatisticContent',3,'components_statistic_content_statistic_contents',5,3),(6,'StatisticContent',1,'components_statistic_content_statistic_contents',6,4),(7,'StatisticContent',2,'components_statistic_content_statistic_contents',7,4),(8,'StatisticContent',1,'components_statistic_content_statistic_contents',8,5),(9,'StatisticContent',2,'components_statistic_content_statistic_contents',9,5),(10,'StatisticContent',1,'components_statistic_content_statistic_contents',10,6),(11,'StatisticContent',2,'components_statistic_content_statistic_contents',11,6),(12,'StatisticContent',3,'components_statistic_content_statistic_contents',12,6),(13,'StatisticContent',4,'components_statistic_content_statistic_contents',13,6),(14,'StatisticContent',5,'components_statistic_content_statistic_contents',14,6);
/*!40000 ALTER TABLE `statistics_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_administrator`
--

DROP TABLE IF EXISTS `strapi_administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_administrator` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `registrationToken` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `preferedLanguage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_administrator_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_administrator`
--

LOCK TABLES `strapi_administrator` WRITE;
/*!40000 ALTER TABLE `strapi_administrator` DISABLE KEYS */;
INSERT INTO `strapi_administrator` VALUES (1,'Venture','Doe',NULL,'admin@venture-plan.com','$2a$10$MeVNq28sePnhUniw2SOOuO2z0oNoeRiUTdxspkPQU7OH/pG2dIFOa',NULL,NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `strapi_administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_permission`
--

DROP TABLE IF EXISTS `strapi_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` longtext DEFAULT NULL,
  `conditions` longtext DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2800 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_permission`
--

LOCK TABLES `strapi_permission` WRITE;
/*!40000 ALTER TABLE `strapi_permission` DISABLE KEYS */;
INSERT INTO `strapi_permission` VALUES (3,'plugins::content-manager.explorer.create','application::global.global','{\"fields\":[\"favicon\",\"siteName\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\",\"Address\",\"Email\",\"PhoneNumber\"]}','[]',2,'2021-06-21 15:07:48','2021-07-24 03:01:41'),(4,'plugins::content-manager.explorer.create','application::homepage.homepage','{\"fields\":[\"seo.metaTitle\",\"seo.metaDescription\",\"seo.shareImage\",\"CompanyOverview\",\"Sliders.Title\",\"Sliders.Content\",\"Sliders.Label\",\"Sliders.Image\",\"Sliders.Link\",\"Sliders.LinkType\",\"Sliders.ImageMobile\"]}','[]',2,'2021-06-21 15:07:48','2021-07-24 03:01:41'),(8,'plugins::content-manager.explorer.read','application::global.global','{\"fields\":[\"favicon\",\"siteName\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\",\"Address\",\"Email\",\"PhoneNumber\"]}','[]',2,'2021-06-21 15:07:48','2021-07-24 03:01:41'),(9,'plugins::content-manager.explorer.read','application::homepage.homepage','{\"fields\":[\"seo.metaTitle\",\"seo.metaDescription\",\"seo.shareImage\",\"CompanyOverview\",\"Sliders.Title\",\"Sliders.Content\",\"Sliders.Label\",\"Sliders.Image\",\"Sliders.Link\",\"Sliders.LinkType\",\"Sliders.ImageMobile\"]}','[]',2,'2021-06-21 15:07:48','2021-07-24 03:01:41'),(13,'plugins::content-manager.explorer.update','application::global.global','{\"fields\":[\"favicon\",\"siteName\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\",\"Address\",\"Email\",\"PhoneNumber\"]}','[]',2,'2021-06-21 15:07:48','2021-07-24 03:01:41'),(14,'plugins::content-manager.explorer.update','application::homepage.homepage','{\"fields\":[\"seo.metaTitle\",\"seo.metaDescription\",\"seo.shareImage\",\"CompanyOverview\",\"Sliders.Title\",\"Sliders.Content\",\"Sliders.Label\",\"Sliders.Image\",\"Sliders.Link\",\"Sliders.LinkType\",\"Sliders.ImageMobile\"]}','[]',2,'2021-06-21 15:07:48','2021-07-24 03:01:41'),(18,'plugins::content-manager.explorer.delete','application::global.global','{}','[]',2,'2021-06-21 15:07:48','2021-06-21 15:07:48'),(19,'plugins::content-manager.explorer.delete','application::homepage.homepage','{}','[]',2,'2021-06-21 15:07:48','2021-06-21 15:07:48'),(22,'plugins::upload.read',NULL,'{}','[]',2,'2021-06-21 15:07:48','2021-06-21 15:07:48'),(23,'plugins::upload.assets.create',NULL,'{}','[]',2,'2021-06-21 15:07:48','2021-06-21 15:07:48'),(24,'plugins::upload.assets.update',NULL,'{}','[]',2,'2021-06-21 15:07:48','2021-06-21 15:07:48'),(25,'plugins::upload.assets.download',NULL,'{}','[]',2,'2021-06-21 15:07:48','2021-06-21 15:07:48'),(26,'plugins::upload.assets.copy-link',NULL,'{}','[]',2,'2021-06-21 15:07:48','2021-06-21 15:07:48'),(27,'plugins::content-manager.explorer.create','application::homepage.homepage','{\"fields\":[\"seo.metaTitle\",\"seo.metaDescription\",\"seo.shareImage\",\"CompanyOverview\",\"Sliders.Title\",\"Sliders.Content\",\"Sliders.Label\",\"Sliders.Image\",\"Sliders.Link\",\"Sliders.LinkType\",\"Sliders.ImageMobile\"]}','[\"admin::is-creator\"]',3,'2021-06-21 15:07:48','2021-07-24 03:01:41'),(28,'plugins::content-manager.explorer.create','application::global.global','{\"fields\":[\"favicon\",\"siteName\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\",\"Address\",\"Email\",\"PhoneNumber\"]}','[\"admin::is-creator\"]',3,'2021-06-21 15:07:48','2021-07-24 03:01:41'),(34,'plugins::content-manager.explorer.read','application::global.global','{\"fields\":[\"favicon\",\"siteName\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\",\"Address\",\"Email\",\"PhoneNumber\"]}','[\"admin::is-creator\"]',3,'2021-06-21 15:07:48','2021-07-24 03:01:41'),(35,'plugins::content-manager.explorer.read','application::homepage.homepage','{\"fields\":[\"seo.metaTitle\",\"seo.metaDescription\",\"seo.shareImage\",\"CompanyOverview\",\"Sliders.Title\",\"Sliders.Content\",\"Sliders.Label\",\"Sliders.Image\",\"Sliders.Link\",\"Sliders.LinkType\",\"Sliders.ImageMobile\"]}','[\"admin::is-creator\"]',3,'2021-06-21 15:07:48','2021-07-24 03:01:41'),(39,'plugins::content-manager.explorer.update','application::homepage.homepage','{\"fields\":[\"seo.metaTitle\",\"seo.metaDescription\",\"seo.shareImage\",\"CompanyOverview\",\"Sliders.Title\",\"Sliders.Content\",\"Sliders.Label\",\"Sliders.Image\",\"Sliders.Link\",\"Sliders.LinkType\",\"Sliders.ImageMobile\"]}','[\"admin::is-creator\"]',3,'2021-06-21 15:07:48','2021-07-24 03:01:41'),(42,'plugins::content-manager.explorer.update','application::global.global','{\"fields\":[\"favicon\",\"siteName\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\",\"Address\",\"Email\",\"PhoneNumber\"]}','[\"admin::is-creator\"]',3,'2021-06-21 15:07:48','2021-07-24 03:01:41'),(44,'plugins::content-manager.explorer.delete','application::global.global','{}','[\"admin::is-creator\"]',3,'2021-06-21 15:07:48','2021-06-21 15:07:48'),(45,'plugins::content-manager.explorer.delete','application::homepage.homepage','{}','[\"admin::is-creator\"]',3,'2021-06-21 15:07:48','2021-06-21 15:07:48'),(47,'plugins::upload.read',NULL,'{}','[\"admin::is-creator\"]',3,'2021-06-21 15:07:48','2021-06-21 15:07:48'),(48,'plugins::upload.assets.create',NULL,'{}','[]',3,'2021-06-21 15:07:48','2021-06-21 15:07:48'),(49,'plugins::upload.assets.update',NULL,'{}','[\"admin::is-creator\"]',3,'2021-06-21 15:07:48','2021-06-21 15:07:48'),(50,'plugins::upload.assets.download',NULL,'{}','[]',3,'2021-06-21 15:07:48','2021-06-21 15:07:48'),(51,'plugins::upload.assets.copy-link',NULL,'{}','[]',3,'2021-06-21 15:07:48','2021-06-21 15:07:48'),(57,'plugins::content-manager.explorer.create','plugins::users-permissions.user','{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(63,'plugins::content-manager.explorer.read','plugins::users-permissions.user','{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(69,'plugins::content-manager.explorer.update','plugins::users-permissions.user','{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(76,'plugins::content-type-builder.read',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(77,'plugins::email.settings.read',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(79,'plugins::upload.read',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(80,'plugins::upload.assets.create',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(81,'plugins::upload.assets.update',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(82,'plugins::upload.assets.download',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(83,'plugins::upload.assets.copy-link',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(84,'plugins::upload.settings.read',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(85,'plugins::i18n.locale.create',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(86,'plugins::i18n.locale.read',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(87,'plugins::i18n.locale.update',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(88,'plugins::i18n.locale.delete',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(89,'plugins::content-manager.single-types.configure-view',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(90,'plugins::content-manager.collection-types.configure-view',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(91,'plugins::content-manager.components.configure-layout',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(92,'plugins::users-permissions.roles.create',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(93,'plugins::users-permissions.roles.read',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(94,'plugins::users-permissions.roles.update',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(95,'plugins::users-permissions.roles.delete',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(96,'plugins::users-permissions.providers.read',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(97,'plugins::users-permissions.providers.update',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(98,'plugins::users-permissions.email-templates.read',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(99,'plugins::users-permissions.email-templates.update',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(100,'plugins::users-permissions.advanced-settings.read',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(101,'plugins::users-permissions.advanced-settings.update',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(102,'admin::marketplace.read',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(103,'admin::marketplace.plugins.install',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(104,'admin::marketplace.plugins.uninstall',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(105,'admin::webhooks.create',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(106,'admin::webhooks.read',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(107,'admin::webhooks.update',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(108,'admin::webhooks.delete',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(109,'admin::users.create',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(110,'admin::users.update',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(111,'admin::users.read',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(112,'admin::users.delete',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(113,'admin::roles.create',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(114,'admin::roles.read',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(115,'admin::roles.update',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(116,'admin::roles.delete',NULL,'{}','[]',1,'2021-06-21 15:07:49','2021-06-21 15:07:49'),(551,'plugins::content-manager.explorer.read','application::menu.menu','{\"fields\":[\"Label\",\"Slug\",\"menu_items\"]}','[]',1,'2021-07-05 11:00:31','2021-07-05 11:00:31'),(554,'plugins::content-manager.explorer.create','application::sub-menu.sub-menu','{\"fields\":[\"Label\",\"Link\",\"sub_items\",\"Rows.Columns.Title\",\"Rows.Columns.menu_items\",\"Rows.Title\"]}','[]',1,'2021-07-05 11:00:31','2021-07-05 11:00:31'),(555,'plugins::content-manager.explorer.create','application::menu.menu','{\"fields\":[\"Label\",\"Slug\",\"menu_items\"]}','[]',1,'2021-07-05 11:00:31','2021-07-05 11:00:31'),(557,'plugins::content-manager.explorer.read','application::sub-menu.sub-menu','{\"fields\":[\"Label\",\"Link\",\"sub_items\",\"Rows.Columns.Title\",\"Rows.Columns.menu_items\",\"Rows.Title\"]}','[]',1,'2021-07-05 11:00:31','2021-07-05 11:00:31'),(560,'plugins::content-manager.explorer.update','application::menu.menu','{\"fields\":[\"Label\",\"Slug\",\"menu_items\"]}','[]',1,'2021-07-05 11:00:31','2021-07-05 11:00:31'),(561,'plugins::content-manager.explorer.update','application::sub-menu.sub-menu','{\"fields\":[\"Label\",\"Link\",\"sub_items\",\"Rows.Columns.Title\",\"Rows.Columns.menu_items\",\"Rows.Title\"]}','[]',1,'2021-07-05 11:00:31','2021-07-05 11:00:31'),(608,'plugins::content-manager.explorer.create','application::client-words.client-words','{\"fields\":[\"Name\",\"Content\",\"Image\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(609,'plugins::content-manager.explorer.create','application::business-page.business-page','{\"fields\":[\"Title\",\"Subtitle\",\"Description\",\"BannerDesktop\",\"BannerMobile\",\"SamplePlan.Content\",\"SamplePlan.Image\",\"SamplePlan.File\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(611,'plugins::content-manager.explorer.create','application::about-page.about-page','{\"fields\":[\"AboutUs\",\"EnvironmentVideo\",\"PassionResults.Title\",\"PassionResults.Content\",\"Title\",\"Subtitle\",\"Description\",\"BestPlaceContent\",\"BannerDesktop\",\"BannerMobile\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(612,'plugins::content-manager.explorer.create','application::core-values.core-values','{\"fields\":[\"Title\",\"Content\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(613,'plugins::content-manager.explorer.create','application::accelerates.accelerates','{\"fields\":[\"Title\",\"Content\",\"QuestionOption.Question\",\"QuestionOption.Option.Option\",\"QuestionOption.Image\",\"Image\",\"key\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(614,'plugins::content-manager.explorer.create','application::contact-page.contact-page','{\"fields\":[\"BannerDesktop\",\"Title\",\"HelpContent\",\"ThanksContent\",\"BannerMobile\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(615,'plugins::content-manager.explorer.create','application::contact-entries.contact-entries','{\"fields\":[\"FullName\",\"Phone\",\"Email\",\"InquiryReason\",\"CountryRegion\",\"Service\",\"MoreInfo\",\"Type\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(616,'plugins::content-manager.explorer.create','application::brands.brands','{\"fields\":[\"Link\",\"Logo\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(617,'plugins::content-manager.explorer.create','application::accelerate-entries.accelerate-entries','{\"fields\":[\"FullName\",\"Email\",\"PhoneNumber\",\"QuestionOptionEntry.Question\",\"QuestionOptionEntry.Option\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(618,'plugins::content-manager.explorer.create','application::faq.faq','{\"fields\":[\"Question\",\"Answer\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(622,'plugins::content-manager.explorer.create','application::insights-page.insights-page','{\"fields\":[\"Title\",\"Subtitle\",\"BannerDesktop\",\"BannerMobile\",\"Overview\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(623,'plugins::content-manager.explorer.create','application::our-firms.our-firms','{\"fields\":[\"Title\",\"Content\",\"Image\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(624,'plugins::content-manager.explorer.create','application::our-services.our-services','{\"fields\":[\"Name\",\"Video\",\"Content\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(625,'plugins::content-manager.explorer.create','application::processes.processes','{\"fields\":[\"Title\",\"Content\",\"Image\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(626,'plugins::content-manager.explorer.create','application::services.services','{\"fields\":[\"Title\",\"Content\",\"Image\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(627,'plugins::content-manager.explorer.create','application::members.members','{\"fields\":[\"Name\",\"Position\",\"Description\",\"ProfileImage\",\"BrandImage\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(628,'plugins::content-manager.explorer.create','application::statistics.statistics','{\"fields\":[\"Title\",\"Image\",\"StatisticContent.Content\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(629,'plugins::content-manager.explorer.create','application::testimonials.testimonials','{\"fields\":[\"Name\",\"Content\",\"Rating\",\"Image\",\"Positions.Position\",\"RatingTypes.Type\",\"Date\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(630,'plugins::content-manager.explorer.create','application::trust-certificates.trust-certificates','{\"fields\":[\"Title\",\"Content\",\"Image\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(631,'plugins::content-manager.explorer.read','application::about-page.about-page','{\"fields\":[\"AboutUs\",\"EnvironmentVideo\",\"PassionResults.Title\",\"PassionResults.Content\",\"Title\",\"Subtitle\",\"Description\",\"BestPlaceContent\",\"BannerDesktop\",\"BannerMobile\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(632,'plugins::content-manager.explorer.read','application::accelerate-entries.accelerate-entries','{\"fields\":[\"FullName\",\"Email\",\"PhoneNumber\",\"QuestionOptionEntry.Question\",\"QuestionOptionEntry.Option\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(633,'plugins::content-manager.explorer.read','application::accelerates.accelerates','{\"fields\":[\"Title\",\"Content\",\"QuestionOption.Question\",\"QuestionOption.Option.Option\",\"QuestionOption.Image\",\"Image\",\"key\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(634,'plugins::content-manager.explorer.read','application::brands.brands','{\"fields\":[\"Link\",\"Logo\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(635,'plugins::content-manager.explorer.read','application::business-page.business-page','{\"fields\":[\"Title\",\"Subtitle\",\"Description\",\"BannerDesktop\",\"BannerMobile\",\"SamplePlan.Content\",\"SamplePlan.Image\",\"SamplePlan.File\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(636,'plugins::content-manager.explorer.read','application::client-words.client-words','{\"fields\":[\"Name\",\"Content\",\"Image\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(637,'plugins::content-manager.explorer.read','application::contact-entries.contact-entries','{\"fields\":[\"FullName\",\"Phone\",\"Email\",\"InquiryReason\",\"CountryRegion\",\"Service\",\"MoreInfo\",\"Type\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(639,'plugins::content-manager.explorer.read','application::contact-page.contact-page','{\"fields\":[\"BannerDesktop\",\"Title\",\"HelpContent\",\"ThanksContent\",\"BannerMobile\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(640,'plugins::content-manager.explorer.read','application::core-values.core-values','{\"fields\":[\"Title\",\"Content\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(641,'plugins::content-manager.explorer.read','application::faq.faq','{\"fields\":[\"Question\",\"Answer\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(645,'plugins::content-manager.explorer.read','application::insights-page.insights-page','{\"fields\":[\"Title\",\"Subtitle\",\"BannerDesktop\",\"BannerMobile\",\"Overview\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(646,'plugins::content-manager.explorer.read','application::members.members','{\"fields\":[\"Name\",\"Position\",\"Description\",\"ProfileImage\",\"BrandImage\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(647,'plugins::content-manager.explorer.read','application::our-firms.our-firms','{\"fields\":[\"Title\",\"Content\",\"Image\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(648,'plugins::content-manager.explorer.read','application::our-services.our-services','{\"fields\":[\"Name\",\"Video\",\"Content\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(649,'plugins::content-manager.explorer.read','application::processes.processes','{\"fields\":[\"Title\",\"Content\",\"Image\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(650,'plugins::content-manager.explorer.read','application::services.services','{\"fields\":[\"Title\",\"Content\",\"Image\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(651,'plugins::content-manager.explorer.read','application::testimonials.testimonials','{\"fields\":[\"Name\",\"Content\",\"Rating\",\"Image\",\"Positions.Position\",\"RatingTypes.Type\",\"Date\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(652,'plugins::content-manager.explorer.read','application::trust-certificates.trust-certificates','{\"fields\":[\"Title\",\"Content\",\"Image\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(653,'plugins::content-manager.explorer.update','application::about-page.about-page','{\"fields\":[\"AboutUs\",\"EnvironmentVideo\",\"PassionResults.Title\",\"PassionResults.Content\",\"Title\",\"Subtitle\",\"Description\",\"BestPlaceContent\",\"BannerDesktop\",\"BannerMobile\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(654,'plugins::content-manager.explorer.update','application::accelerate-entries.accelerate-entries','{\"fields\":[\"FullName\",\"Email\",\"PhoneNumber\",\"QuestionOptionEntry.Question\",\"QuestionOptionEntry.Option\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(655,'plugins::content-manager.explorer.update','application::accelerates.accelerates','{\"fields\":[\"Title\",\"Content\",\"QuestionOption.Question\",\"QuestionOption.Option.Option\",\"QuestionOption.Image\",\"Image\",\"key\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(656,'plugins::content-manager.explorer.read','application::statistics.statistics','{\"fields\":[\"Title\",\"Image\",\"StatisticContent.Content\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(657,'plugins::content-manager.explorer.update','application::brands.brands','{\"fields\":[\"Link\",\"Logo\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(658,'plugins::content-manager.explorer.update','application::business-page.business-page','{\"fields\":[\"Title\",\"Subtitle\",\"Description\",\"BannerDesktop\",\"BannerMobile\",\"SamplePlan.Content\",\"SamplePlan.Image\",\"SamplePlan.File\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(659,'plugins::content-manager.explorer.update','application::client-words.client-words','{\"fields\":[\"Name\",\"Content\",\"Image\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(661,'plugins::content-manager.explorer.update','application::contact-page.contact-page','{\"fields\":[\"BannerDesktop\",\"Title\",\"HelpContent\",\"ThanksContent\",\"BannerMobile\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(662,'plugins::content-manager.explorer.update','application::core-values.core-values','{\"fields\":[\"Title\",\"Content\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(663,'plugins::content-manager.explorer.update','application::faq.faq','{\"fields\":[\"Question\",\"Answer\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(667,'plugins::content-manager.explorer.update','application::contact-entries.contact-entries','{\"fields\":[\"FullName\",\"Phone\",\"Email\",\"InquiryReason\",\"CountryRegion\",\"Service\",\"MoreInfo\",\"Type\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(668,'plugins::content-manager.explorer.update','application::insights-page.insights-page','{\"fields\":[\"Title\",\"Subtitle\",\"BannerDesktop\",\"BannerMobile\",\"Overview\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(669,'plugins::content-manager.explorer.update','application::members.members','{\"fields\":[\"Name\",\"Position\",\"Description\",\"ProfileImage\",\"BrandImage\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(670,'plugins::content-manager.explorer.update','application::our-firms.our-firms','{\"fields\":[\"Title\",\"Content\",\"Image\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(671,'plugins::content-manager.explorer.update','application::processes.processes','{\"fields\":[\"Title\",\"Content\",\"Image\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(672,'plugins::content-manager.explorer.update','application::services.services','{\"fields\":[\"Title\",\"Content\",\"Image\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(673,'plugins::content-manager.explorer.update','application::statistics.statistics','{\"fields\":[\"Title\",\"Image\",\"StatisticContent.Content\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(674,'plugins::content-manager.explorer.update','application::testimonials.testimonials','{\"fields\":[\"Name\",\"Content\",\"Rating\",\"Image\",\"Positions.Position\",\"RatingTypes.Type\",\"Date\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(675,'plugins::content-manager.explorer.update','application::our-services.our-services','{\"fields\":[\"Name\",\"Video\",\"Content\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(676,'plugins::content-manager.explorer.update','application::trust-certificates.trust-certificates','{\"fields\":[\"Title\",\"Content\",\"Image\"]}','[]',1,'2021-07-24 03:01:40','2021-07-24 03:01:40'),(761,'plugins::content-manager.explorer.create','application::grant-page.grant-page','{\"fields\":[\"Title\",\"Subtitle\",\"Overview\",\"SamplePlans.Name\",\"SamplePlans.Image\",\"SamplePlans.File\",\"SamplePlansTitle\",\"SamplePlansDescription\",\"SamplePlansBottomText\",\"BannerDesktop\",\"BannerMobile\",\"Description\",\"OurTeamDescription\"]}','[]',1,'2021-07-26 15:10:52','2021-07-26 15:10:52'),(762,'plugins::content-manager.explorer.read','application::grant-page.grant-page','{\"fields\":[\"Title\",\"Subtitle\",\"Overview\",\"SamplePlans.Name\",\"SamplePlans.Image\",\"SamplePlans.File\",\"SamplePlansTitle\",\"SamplePlansDescription\",\"SamplePlansBottomText\",\"BannerDesktop\",\"BannerMobile\",\"Description\",\"OurTeamDescription\"]}','[]',1,'2021-07-26 15:10:52','2021-07-26 15:10:52'),(763,'plugins::content-manager.explorer.create','application::sectors.sectors','{\"fields\":[\"Name\",\"Image\",\"IndustryConsultations\",\"BusinessPlansWritten\",\"YearsExperience\",\"Raised\"]}','[]',1,'2021-07-26 15:10:52','2021-07-26 15:10:52'),(764,'plugins::content-manager.explorer.read','application::sectors.sectors','{\"fields\":[\"Name\",\"Image\",\"IndustryConsultations\",\"BusinessPlansWritten\",\"YearsExperience\",\"Raised\"]}','[]',1,'2021-07-26 15:10:52','2021-07-26 15:10:52'),(765,'plugins::content-manager.explorer.update','application::grant-page.grant-page','{\"fields\":[\"Title\",\"Subtitle\",\"Overview\",\"SamplePlans.Name\",\"SamplePlans.Image\",\"SamplePlans.File\",\"SamplePlansTitle\",\"SamplePlansDescription\",\"SamplePlansBottomText\",\"BannerDesktop\",\"BannerMobile\",\"Description\",\"OurTeamDescription\"]}','[]',1,'2021-07-26 15:10:52','2021-07-26 15:10:52'),(766,'plugins::content-manager.explorer.update','application::sectors.sectors','{\"fields\":[\"Name\",\"Image\",\"IndustryConsultations\",\"BusinessPlansWritten\",\"YearsExperience\",\"Raised\"]}','[]',1,'2021-07-26 15:10:52','2021-07-26 15:10:52'),(999,'plugins::content-manager.explorer.create','application::homepage.homepage','{\"fields\":[\"seo.metaTitle\",\"seo.metaDescription\",\"seo.shareImage\",\"CompanyOverview\",\"Sliders.Title\",\"Sliders.Content\",\"Sliders.Label\",\"Sliders.Image\",\"Sliders.Link\",\"Sliders.LinkType\",\"Sliders.ImageMobile\",\"Sliders.BannerType\",\"Sliders.VideoBanner\"]}','[]',1,'2021-07-28 15:33:45','2021-07-28 15:33:45'),(1000,'plugins::content-manager.explorer.create','application::insight-categories.insight-categories','{\"fields\":[\"Name\",\"Type\"]}','[]',1,'2021-07-28 15:33:45','2021-07-28 15:33:45'),(1002,'plugins::content-manager.explorer.read','application::homepage.homepage','{\"fields\":[\"seo.metaTitle\",\"seo.metaDescription\",\"seo.shareImage\",\"CompanyOverview\",\"Sliders.Title\",\"Sliders.Content\",\"Sliders.Label\",\"Sliders.Image\",\"Sliders.Link\",\"Sliders.LinkType\",\"Sliders.ImageMobile\",\"Sliders.BannerType\",\"Sliders.VideoBanner\"]}','[]',1,'2021-07-28 15:33:45','2021-07-28 15:33:45'),(1003,'plugins::content-manager.explorer.read','application::insight-categories.insight-categories','{\"fields\":[\"Name\",\"Type\"]}','[]',1,'2021-07-28 15:33:45','2021-07-28 15:33:45'),(1005,'plugins::content-manager.explorer.update','application::homepage.homepage','{\"fields\":[\"seo.metaTitle\",\"seo.metaDescription\",\"seo.shareImage\",\"CompanyOverview\",\"Sliders.Title\",\"Sliders.Content\",\"Sliders.Label\",\"Sliders.Image\",\"Sliders.Link\",\"Sliders.LinkType\",\"Sliders.ImageMobile\",\"Sliders.BannerType\",\"Sliders.VideoBanner\"]}','[]',1,'2021-07-28 15:33:45','2021-07-28 15:33:45'),(1006,'plugins::content-manager.explorer.update','application::insight-categories.insight-categories','{\"fields\":[\"Name\",\"Type\"]}','[]',1,'2021-07-28 15:33:45','2021-07-28 15:33:45'),(1039,'plugins::content-manager.explorer.create','application::global.global','{\"fields\":[\"favicon\",\"siteName\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\",\"Address\",\"Email\",\"PhoneNumber\",\"FacebookURL\",\"LinkedInURL\",\"TwitterURL\",\"YoutubeURL\",\"InstagramURL\"]}','[]',1,'2021-07-31 10:07:48','2021-07-31 10:07:48'),(1040,'plugins::content-manager.explorer.create','application::search-entries.search-entries','{\"fields\":[\"Keyword\",\"Count\"]}','[]',1,'2021-07-31 10:07:48','2021-07-31 10:07:48'),(1041,'plugins::content-manager.explorer.read','application::global.global','{\"fields\":[\"favicon\",\"siteName\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\",\"Address\",\"Email\",\"PhoneNumber\",\"FacebookURL\",\"LinkedInURL\",\"TwitterURL\",\"YoutubeURL\",\"InstagramURL\"]}','[]',1,'2021-07-31 10:07:48','2021-07-31 10:07:48'),(1043,'plugins::content-manager.explorer.read','application::search-entries.search-entries','{\"fields\":[\"Keyword\",\"Count\"]}','[]',1,'2021-07-31 10:07:48','2021-07-31 10:07:48'),(1044,'plugins::content-manager.explorer.update','application::global.global','{\"fields\":[\"favicon\",\"siteName\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\",\"Address\",\"Email\",\"PhoneNumber\",\"FacebookURL\",\"LinkedInURL\",\"TwitterURL\",\"YoutubeURL\",\"InstagramURL\"]}','[]',1,'2021-07-31 10:07:48','2021-07-31 10:07:48'),(1046,'plugins::content-manager.explorer.update','application::search-entries.search-entries','{\"fields\":[\"Keyword\",\"Count\"]}','[]',1,'2021-07-31 10:07:48','2021-07-31 10:07:48'),(1665,'plugins::content-manager.explorer.create','application::pages.pages','{\"fields\":[\"Title\",\"FeatureImage\",\"Slug\",\"Content\"]}','[]',1,'2021-08-06 09:15:37','2021-08-06 09:15:37'),(1666,'plugins::content-manager.explorer.create','application::insights.insights','{\"fields\":[\"Title\",\"Subtitle\",\"Content\",\"Image\",\"insight_categories\"]}','[]',1,'2021-08-06 09:15:37','2021-08-06 09:15:37'),(1667,'plugins::content-manager.explorer.read','application::insights.insights','{\"fields\":[\"Title\",\"Subtitle\",\"Content\",\"Image\",\"insight_categories\"]}','[]',1,'2021-08-06 09:15:37','2021-08-06 09:15:37'),(1668,'plugins::content-manager.explorer.read','application::pages.pages','{\"fields\":[\"Title\",\"FeatureImage\",\"Slug\",\"Content\"]}','[]',1,'2021-08-06 09:15:37','2021-08-06 09:15:37'),(1669,'plugins::content-manager.explorer.update','application::insights.insights','{\"fields\":[\"Title\",\"Subtitle\",\"Content\",\"Image\",\"insight_categories\"]}','[]',1,'2021-08-06 09:15:37','2021-08-06 09:15:37'),(1670,'plugins::content-manager.explorer.update','application::pages.pages','{\"fields\":[\"Title\",\"FeatureImage\",\"Slug\",\"Content\"]}','[]',1,'2021-08-06 09:15:37','2021-08-06 09:15:37'),(1839,'plugins::content-manager.explorer.update','application::popup.popup','{\"fields\":[\"UserDescription\",\"UserName\",\"RightSubtitle\",\"RightTitle\",\"RightDescription\"]}','[]',1,'2021-08-06 11:56:18','2021-08-06 11:56:18'),(1840,'plugins::content-manager.explorer.read','application::popup.popup','{\"fields\":[\"UserDescription\",\"UserName\",\"RightSubtitle\",\"RightTitle\",\"RightDescription\"]}','[]',1,'2021-08-06 11:56:18','2021-08-06 11:56:18'),(1841,'plugins::content-manager.explorer.create','application::popup.popup','{\"fields\":[\"UserDescription\",\"UserName\",\"RightSubtitle\",\"RightTitle\",\"RightDescription\"]}','[]',1,'2021-08-06 11:56:18','2021-08-06 11:56:18'),(2009,'plugins::content-manager.explorer.create','application::consultation-entries.consultation-entries','{\"fields\":[\"Email\",\"Subscribe\"]}','[]',1,'2021-08-06 15:45:51','2021-08-06 15:45:51'),(2010,'plugins::content-manager.explorer.read','application::consultation-entries.consultation-entries','{\"fields\":[\"Email\",\"Subscribe\"]}','[]',1,'2021-08-06 15:45:51','2021-08-06 15:45:51'),(2011,'plugins::content-manager.explorer.update','application::consultation-entries.consultation-entries','{\"fields\":[\"Email\",\"Subscribe\"]}','[]',1,'2021-08-06 15:45:51','2021-08-06 15:45:51'),(2328,'plugins::content-manager.explorer.create','application::packages.packages','{\"fields\":[\"Name\",\"Description\",\"Image\",\"Price\"]}','[]',1,'2021-08-10 03:00:56','2021-08-10 03:00:56'),(2330,'plugins::content-manager.explorer.read','application::packages.packages','{\"fields\":[\"Name\",\"Description\",\"Image\",\"Price\"]}','[]',1,'2021-08-10 03:00:56','2021-08-10 03:00:56'),(2332,'plugins::content-manager.explorer.update','application::packages.packages','{\"fields\":[\"Name\",\"Description\",\"Image\",\"Price\"]}','[]',1,'2021-08-10 03:00:56','2021-08-10 03:00:56'),(2481,'plugins::content-manager.explorer.create','application::package-entries.package-entries','{\"fields\":[\"FullName\",\"Email\",\"PhoneNumber\",\"package\",\"Price\"]}','[]',1,'2021-08-10 04:08:08','2021-08-10 04:08:08'),(2482,'plugins::content-manager.explorer.create','application::payment.payment','{\"fields\":[\"Test\"]}','[]',1,'2021-08-10 04:08:08','2021-08-10 04:08:08'),(2483,'plugins::content-manager.explorer.read','application::package-entries.package-entries','{\"fields\":[\"FullName\",\"Email\",\"PhoneNumber\",\"package\",\"Price\"]}','[]',1,'2021-08-10 04:08:08','2021-08-10 04:08:08'),(2484,'plugins::content-manager.explorer.read','application::payment.payment','{\"fields\":[\"Test\"]}','[]',1,'2021-08-10 04:08:08','2021-08-10 04:08:08'),(2485,'plugins::content-manager.explorer.update','application::package-entries.package-entries','{\"fields\":[\"FullName\",\"Email\",\"PhoneNumber\",\"package\",\"Price\"]}','[]',1,'2021-08-10 04:08:08','2021-08-10 04:08:08'),(2486,'plugins::content-manager.explorer.update','application::payment.payment','{\"fields\":[\"Test\"]}','[]',1,'2021-08-10 04:08:08','2021-08-10 04:08:08'),(2607,'plugins::content-manager.explorer.create','application::contact-form.contact-form','{\"fields\":[\"CountryRegion.Name\",\"InquiryReason.Reason\",\"TalkToExpert.Title\",\"TalkToExpert.Subtitle\",\"TalkToExpert.FormTitle\",\"TalkToExpert.TTEServices.Name\",\"BusinessServices.Name\"]}','[]',1,'2021-08-10 08:04:24','2021-08-10 08:04:24'),(2608,'plugins::content-manager.explorer.read','application::contact-form.contact-form','{\"fields\":[\"CountryRegion.Name\",\"InquiryReason.Reason\",\"TalkToExpert.Title\",\"TalkToExpert.Subtitle\",\"TalkToExpert.FormTitle\",\"TalkToExpert.TTEServices.Name\",\"BusinessServices.Name\"]}','[]',1,'2021-08-10 08:04:24','2021-08-10 08:04:24'),(2609,'plugins::content-manager.explorer.update','application::contact-form.contact-form','{\"fields\":[\"CountryRegion.Name\",\"InquiryReason.Reason\",\"TalkToExpert.Title\",\"TalkToExpert.Subtitle\",\"TalkToExpert.FormTitle\",\"TalkToExpert.TTEServices.Name\",\"BusinessServices.Name\"]}','[]',1,'2021-08-10 08:04:24','2021-08-10 08:04:24'),(2762,'plugins::content-manager.explorer.delete','application::client-words.client-words','{}','[]',1,'2021-09-17 03:36:02','2021-09-17 03:36:02'),(2763,'plugins::content-manager.explorer.delete','application::brands.brands','{}','[]',1,'2021-09-17 03:36:02','2021-09-17 03:36:02'),(2764,'plugins::content-manager.explorer.delete','application::business-page.business-page','{}','[]',1,'2021-09-17 03:36:02','2021-09-17 03:36:02'),(2765,'plugins::content-manager.explorer.delete','application::accelerates.accelerates','{}','[]',1,'2021-09-17 03:36:02','2021-09-17 03:36:02'),(2766,'plugins::content-manager.explorer.delete','application::accelerate-entries.accelerate-entries','{}','[]',1,'2021-09-17 03:36:02','2021-09-17 03:36:02'),(2767,'plugins::content-manager.explorer.delete','application::about-page.about-page','{}','[]',1,'2021-09-17 03:36:02','2021-09-17 03:36:02'),(2768,'plugins::content-manager.explorer.delete','application::consultation-entries.consultation-entries','{}','[]',1,'2021-09-17 03:36:02','2021-09-17 03:36:02'),(2769,'plugins::content-manager.explorer.delete','application::contact-entries.contact-entries','{}','[]',1,'2021-09-17 03:36:02','2021-09-17 03:36:02'),(2770,'plugins::content-manager.explorer.delete','application::contact-form.contact-form','{}','[]',1,'2021-09-17 03:36:02','2021-09-17 03:36:02'),(2771,'plugins::content-manager.explorer.delete','application::contact-page.contact-page','{}','[]',1,'2021-09-17 03:36:02','2021-09-17 03:36:02'),(2772,'plugins::content-manager.explorer.delete','application::faq.faq','{}','[]',1,'2021-09-17 03:36:02','2021-09-17 03:36:02'),(2773,'plugins::content-manager.explorer.delete','application::core-values.core-values','{}','[]',1,'2021-09-17 03:36:02','2021-09-17 03:36:02'),(2774,'plugins::content-manager.explorer.delete','application::global.global','{}','[]',1,'2021-09-17 03:36:02','2021-09-17 03:36:02'),(2775,'plugins::content-manager.explorer.delete','application::grant-page.grant-page','{}','[]',1,'2021-09-17 03:36:02','2021-09-17 03:36:02'),(2776,'plugins::content-manager.explorer.delete','application::homepage.homepage','{}','[]',1,'2021-09-17 03:36:02','2021-09-17 03:36:02'),(2777,'plugins::content-manager.explorer.delete','application::insight-categories.insight-categories','{}','[]',1,'2021-09-17 03:36:02','2021-09-17 03:36:02'),(2778,'plugins::content-manager.explorer.delete','application::insights-page.insights-page','{}','[]',1,'2021-09-17 03:36:02','2021-09-17 03:36:02'),(2779,'plugins::content-manager.explorer.delete','application::insights.insights','{}','[]',1,'2021-09-17 03:36:02','2021-09-17 03:36:02'),(2780,'plugins::content-manager.explorer.delete','application::members.members','{}','[]',1,'2021-09-17 03:36:02','2021-09-17 03:36:02'),(2781,'plugins::content-manager.explorer.delete','application::menu.menu','{}','[]',1,'2021-09-17 03:36:02','2021-09-17 03:36:02'),(2782,'plugins::content-manager.explorer.delete','application::our-firms.our-firms','{}','[]',1,'2021-09-17 03:36:02','2021-09-17 03:36:02'),(2783,'plugins::content-manager.explorer.delete','application::package-entries.package-entries','{}','[]',1,'2021-09-17 03:36:02','2021-09-17 03:36:02'),(2784,'plugins::content-manager.explorer.delete','application::packages.packages','{}','[]',1,'2021-09-17 03:36:02','2021-09-17 03:36:02'),(2785,'plugins::content-manager.explorer.delete','application::our-services.our-services','{}','[]',1,'2021-09-17 03:36:02','2021-09-17 03:36:02'),(2786,'plugins::content-manager.explorer.delete','application::pages.pages','{}','[]',1,'2021-09-17 03:36:02','2021-09-17 03:36:02'),(2787,'plugins::content-manager.explorer.delete','application::payment.payment','{}','[]',1,'2021-09-17 03:36:02','2021-09-17 03:36:02'),(2788,'plugins::content-manager.explorer.delete','application::popup.popup','{}','[]',1,'2021-09-17 03:36:02','2021-09-17 03:36:02'),(2789,'plugins::content-manager.explorer.delete','application::processes.processes','{}','[]',1,'2021-09-17 03:36:02','2021-09-17 03:36:02'),(2790,'plugins::content-manager.explorer.delete','application::search-entries.search-entries','{}','[]',1,'2021-09-17 03:36:02','2021-09-17 03:36:02'),(2791,'plugins::content-manager.explorer.delete','application::sectors.sectors','{}','[]',1,'2021-09-17 03:36:02','2021-09-17 03:36:02'),(2792,'plugins::content-manager.explorer.delete','application::services.services','{}','[]',1,'2021-09-17 03:36:02','2021-09-17 03:36:02'),(2793,'plugins::content-manager.explorer.delete','application::statistics.statistics','{}','[]',1,'2021-09-17 03:36:02','2021-09-17 03:36:02'),(2794,'plugins::content-manager.explorer.delete','application::sub-menu.sub-menu','{}','[]',1,'2021-09-17 03:36:02','2021-09-17 03:36:02'),(2795,'plugins::content-manager.explorer.delete','application::testimonials.testimonials','{}','[]',1,'2021-09-17 03:36:02','2021-09-17 03:36:02'),(2796,'plugins::content-manager.explorer.delete','plugins::users-permissions.user','{}','[]',1,'2021-09-17 03:36:02','2021-09-17 03:36:02'),(2797,'plugins::content-manager.explorer.delete','application::trust-certificates.trust-certificates','{}','[]',1,'2021-09-17 03:36:02','2021-09-17 03:36:02'),(2798,'plugins::content-manager.explorer.publish','application::insights.insights','{}','[]',1,'2021-09-17 03:36:02','2021-09-17 03:36:02'),(2799,'plugins::content-manager.explorer.publish','application::pages.pages','{}','[]',1,'2021-09-17 03:36:02','2021-09-17 03:36:02');
/*!40000 ALTER TABLE `strapi_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_role`
--

DROP TABLE IF EXISTS `strapi_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_role_name_unique` (`name`),
  UNIQUE KEY `strapi_role_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_role`
--

LOCK TABLES `strapi_role` WRITE;
/*!40000 ALTER TABLE `strapi_role` DISABLE KEYS */;
INSERT INTO `strapi_role` VALUES (1,'Super Admin','strapi-super-admin','Super Admins can access and manage all features and settings.','2021-06-21 15:07:48','2021-06-21 15:07:48'),(2,'Editor','strapi-editor','Editors can manage and publish contents including those of other users.','2021-06-21 15:07:48','2021-06-21 15:07:48'),(3,'Author','strapi-author','Authors can manage the content they have created.','2021-06-21 15:07:48','2021-06-21 15:07:48');
/*!40000 ALTER TABLE `strapi_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_users_roles`
--

DROP TABLE IF EXISTS `strapi_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_users_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_users_roles`
--

LOCK TABLES `strapi_users_roles` WRITE;
/*!40000 ALTER TABLE `strapi_users_roles` DISABLE KEYS */;
INSERT INTO `strapi_users_roles` VALUES (1,1,1);
/*!40000 ALTER TABLE `strapi_users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_webhooks`
--

DROP TABLE IF EXISTS `strapi_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_webhooks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `headers` longtext DEFAULT NULL,
  `events` longtext DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_webhooks`
--

LOCK TABLES `strapi_webhooks` WRITE;
/*!40000 ALTER TABLE `strapi_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribers`
--

DROP TABLE IF EXISTS `subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscribers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Email` varchar(255) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribers`
--

LOCK TABLES `subscribers` WRITE;
/*!40000 ALTER TABLE `subscribers` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_members`
--

DROP TABLE IF EXISTS `team_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Position` varchar(255) DEFAULT NULL,
  `Content` longtext DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_members`
--

LOCK TABLES `team_members` WRITE;
/*!40000 ALTER TABLE `team_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimonials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Content` longtext NOT NULL,
  `Rating` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'Jack K.','I’m a shareholder and a serial entrepreneur, of multi-million dollar firms since the early 1990’s. Our target for corporate planning, restructuring, financial advisory and deal structuring is Arleo Dordar and venture plans. Arleo Dordar helped draft an ',5,1,1,'2021-06-24 14:20:37','2021-08-09 02:40:42',NULL),(2,'Frank G','It is clear that Mr. Dordar and Venture Plans has very large accomplishments in the horizon. ',5,1,1,'2021-06-24 14:21:58','2021-08-09 02:41:57',NULL),(4,'Andre J.','Grant applications in the U.S. are highly competitive, Covid had reduced our revenue by 50 percent, qualified grant-specific consultants are important for effective grant approvals, we resulted in a 3.5 M raise with',5,1,1,'2021-07-24 03:56:52','2021-08-09 02:44:33',NULL),(5,'Jack K.','We featured Arleo Dordar on the Beverly Hills House Wives on Bravo to provide direction on our deal structure. Venture Plans helped prepare a comprehensive business plan for a series A round and helped strengthen our digital marketing systems to help us scale our global e-commerce fashion line. Since then ',3,1,1,'2021-07-24 03:57:18','2021-08-09 02:42:56','2020-10-20');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials_components`
--

DROP TABLE IF EXISTS `testimonials_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimonials_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `testimonial_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `testimonial_id_fk` (`testimonial_id`),
  CONSTRAINT `testimonial_id_fk` FOREIGN KEY (`testimonial_id`) REFERENCES `testimonials` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials_components`
--

LOCK TABLES `testimonials_components` WRITE;
/*!40000 ALTER TABLE `testimonials_components` DISABLE KEYS */;
INSERT INTO `testimonials_components` VALUES (1,'Positions',1,'components_positions_positions',1,1),(2,'Positions',2,'components_positions_positions',2,1),(3,'RatingTypes',1,'components_rating_types_rating_types',1,1),(5,'RatingTypes',1,'components_rating_types_rating_types',3,2),(7,'Positions',1,'components_positions_positions',3,4),(8,'RatingTypes',1,'components_rating_types_rating_types',5,4),(9,'RatingTypes',2,'components_rating_types_rating_types',6,1),(10,'Positions',1,'components_positions_positions',4,2),(11,'RatingTypes',1,'components_rating_types_rating_types',7,5);
/*!40000 ALTER TABLE `testimonials_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trust_certificates`
--

DROP TABLE IF EXISTS `trust_certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trust_certificates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) NOT NULL,
  `Content` varchar(255) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trust_certificates`
--

LOCK TABLES `trust_certificates` WRITE;
/*!40000 ALTER TABLE `trust_certificates` DISABLE KEYS */;
INSERT INTO `trust_certificates` VALUES (1,'15 Years','In Business with many client success stories for grants, investor business plans, request for proposal, ppm, & immigration plans.',1,1,'2021-07-24 03:57:58','2021-07-24 03:57:58'),(2,'Trusted','By The Most Influential Company’s In the United States & The World.',1,1,'2021-07-24 03:58:14','2021-07-24 03:58:14'),(3,'Accredited','Our consultants & Legal Advisors are accredited with FINRA, CFI Institute, Harvard Law, and Certified Valuators and Analysts.',1,1,'2021-07-24 03:58:28','2021-07-24 03:58:28'),(4,'Free Consult','In your free consultation you get, strategy and direction, financing advisory, and a custom quote for your project.',1,1,'2021-07-24 03:58:43','2021-07-24 03:58:43');
/*!40000 ALTER TABLE `trust_certificates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_file`
--

DROP TABLE IF EXISTS `upload_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upload_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alternativeText` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext DEFAULT NULL,
  `hash` varchar(255) NOT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_metadata` longtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file`
--

LOCK TABLES `upload_file` WRITE;
/*!40000 ALTER TABLE `upload_file` DISABLE KEYS */;
INSERT INTO `upload_file` VALUES (1,'default-image.png',NULL,NULL,1208,715,'{\"thumbnail\":{\"name\":\"thumbnail_default-image.png\",\"hash\":\"thumbnail_default_image_cdb95169a1\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":145,\"size\":27.69,\"path\":null,\"url\":\"/uploads/thumbnail_default_image_cdb95169a1.png\"},\"large\":{\"name\":\"large_default-image.png\",\"hash\":\"large_default_image_cdb95169a1\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":1000,\"height\":592,\"size\":423.75,\"path\":null,\"url\":\"/uploads/large_default_image_cdb95169a1.png\"},\"medium\":{\"name\":\"medium_default-image.png\",\"hash\":\"medium_default_image_cdb95169a1\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":750,\"height\":444,\"size\":250.27,\"path\":null,\"url\":\"/uploads/medium_default_image_cdb95169a1.png\"},\"small\":{\"name\":\"small_default-image.png\",\"hash\":\"small_default_image_cdb95169a1\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":296,\"size\":114.01,\"path\":null,\"url\":\"/uploads/small_default_image_cdb95169a1.png\"}}','default_image_cdb95169a1','.png','image/png',297.42,'/uploads/default_image_cdb95169a1.png',NULL,'local',NULL,NULL,NULL,'2021-06-21 15:07:45','2021-06-21 15:07:45'),(2,'daviddoe@strapi.io.jpg',NULL,NULL,2418,2711,'{\"thumbnail\":{\"name\":\"thumbnail_daviddoe@strapi.io.jpg\",\"hash\":\"thumbnail_daviddoe_strapi_io_6956f0d2c0\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":139,\"height\":156,\"size\":4.37,\"path\":null,\"url\":\"/uploads/thumbnail_daviddoe_strapi_io_6956f0d2c0.jpg\"},\"large\":{\"name\":\"large_daviddoe@strapi.io.jpg\",\"hash\":\"large_daviddoe_strapi_io_6956f0d2c0\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":892,\"height\":1000,\"size\":74,\"path\":null,\"url\":\"/uploads/large_daviddoe_strapi_io_6956f0d2c0.jpg\"},\"medium\":{\"name\":\"medium_daviddoe@strapi.io.jpg\",\"hash\":\"medium_daviddoe_strapi_io_6956f0d2c0\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":669,\"height\":750,\"size\":44.52,\"path\":null,\"url\":\"/uploads/medium_daviddoe_strapi_io_6956f0d2c0.jpg\"},\"small\":{\"name\":\"small_daviddoe@strapi.io.jpg\",\"hash\":\"small_daviddoe_strapi_io_6956f0d2c0\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":446,\"height\":500,\"size\":22.69,\"path\":null,\"url\":\"/uploads/small_daviddoe_strapi_io_6956f0d2c0.jpg\"}}','daviddoe_strapi_io_6956f0d2c0','.jpg','image/jpeg',587.69,'/uploads/daviddoe_strapi_io_6956f0d2c0.jpg',NULL,'local',NULL,NULL,NULL,'2021-06-21 15:07:46','2021-06-21 15:07:46'),(3,'sarahbaker@strapi.io.jpg',NULL,NULL,3321,2746,'{\"thumbnail\":{\"name\":\"thumbnail_sarahbaker@strapi.io.jpg\",\"hash\":\"thumbnail_sarahbaker_strapi_io_006a7b0a2c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":189,\"height\":156,\"size\":6.87,\"path\":null,\"url\":\"/uploads/thumbnail_sarahbaker_strapi_io_006a7b0a2c.jpg\"},\"large\":{\"name\":\"large_sarahbaker@strapi.io.jpg\",\"hash\":\"large_sarahbaker_strapi_io_006a7b0a2c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":1000,\"height\":827,\"size\":102.14,\"path\":null,\"url\":\"/uploads/large_sarahbaker_strapi_io_006a7b0a2c.jpg\"},\"medium\":{\"name\":\"medium_sarahbaker@strapi.io.jpg\",\"hash\":\"medium_sarahbaker_strapi_io_006a7b0a2c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":620,\"size\":59.92,\"path\":null,\"url\":\"/uploads/medium_sarahbaker_strapi_io_006a7b0a2c.jpg\"},\"small\":{\"name\":\"small_sarahbaker@strapi.io.jpg\",\"hash\":\"small_sarahbaker_strapi_io_006a7b0a2c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":413,\"size\":30.78,\"path\":null,\"url\":\"/uploads/small_sarahbaker_strapi_io_006a7b0a2c.jpg\"}}','sarahbaker_strapi_io_006a7b0a2c','.jpg','image/jpeg',698.27,'/uploads/sarahbaker_strapi_io_006a7b0a2c.jpg',NULL,'local',NULL,NULL,NULL,'2021-06-21 15:07:46','2021-06-21 15:07:46'),(4,'what-s-inside-a-black-hole.jpg',NULL,NULL,800,466,'{\"thumbnail\":{\"name\":\"thumbnail_what-s-inside-a-black-hole.jpg\",\"hash\":\"thumbnail_what_s_inside_a_black_hole_bf151f0550\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":245,\"height\":143,\"size\":1.74,\"path\":null,\"url\":\"/uploads/thumbnail_what_s_inside_a_black_hole_bf151f0550.jpg\"},\"medium\":{\"name\":\"medium_what-s-inside-a-black-hole.jpg\",\"hash\":\"medium_what_s_inside_a_black_hole_bf151f0550\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":437,\"size\":7.13,\"path\":null,\"url\":\"/uploads/medium_what_s_inside_a_black_hole_bf151f0550.jpg\"},\"small\":{\"name\":\"small_what-s-inside-a-black-hole.jpg\",\"hash\":\"small_what_s_inside_a_black_hole_bf151f0550\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":291,\"size\":4.08,\"path\":null,\"url\":\"/uploads/small_what_s_inside_a_black_hole_bf151f0550.jpg\"}}','what_s_inside_a_black_hole_bf151f0550','.jpg','image/jpeg',7.50,'/uploads/what_s_inside_a_black_hole_bf151f0550.jpg',NULL,'local',NULL,NULL,NULL,'2021-06-21 15:07:46','2021-06-21 15:07:46'),(5,'this-shrimp-is-awesome.jpg',NULL,NULL,1200,630,'{\"thumbnail\":{\"name\":\"thumbnail_this-shrimp-is-awesome.jpg\",\"hash\":\"thumbnail_this_shrimp_is_awesome_4565a161e3\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":245,\"height\":129,\"size\":9.62,\"path\":null,\"url\":\"/uploads/thumbnail_this_shrimp_is_awesome_4565a161e3.jpg\"},\"large\":{\"name\":\"large_this-shrimp-is-awesome.jpg\",\"hash\":\"large_this_shrimp_is_awesome_4565a161e3\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":1000,\"height\":525,\"size\":73.06,\"path\":null,\"url\":\"/uploads/large_this_shrimp_is_awesome_4565a161e3.jpg\"},\"medium\":{\"name\":\"medium_this-shrimp-is-awesome.jpg\",\"hash\":\"medium_this_shrimp_is_awesome_4565a161e3\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":394,\"size\":48.57,\"path\":null,\"url\":\"/uploads/medium_this_shrimp_is_awesome_4565a161e3.jpg\"},\"small\":{\"name\":\"small_this-shrimp-is-awesome.jpg\",\"hash\":\"small_this_shrimp_is_awesome_4565a161e3\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":263,\"size\":26.88,\"path\":null,\"url\":\"/uploads/small_this_shrimp_is_awesome_4565a161e3.jpg\"}}','this_shrimp_is_awesome_4565a161e3','.jpg','image/jpeg',95.48,'/uploads/this_shrimp_is_awesome_4565a161e3.jpg',NULL,'local',NULL,NULL,NULL,'2021-06-21 15:07:46','2021-06-21 15:07:46'),(6,'a-bug-is-becoming-a-meme-on-the-internet.jpg',NULL,NULL,3628,2419,'{\"thumbnail\":{\"name\":\"thumbnail_a-bug-is-becoming-a-meme-on-the-internet.jpg\",\"hash\":\"thumbnail_a_bug_is_becoming_a_meme_on_the_internet_bf6ab2d40b\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":234,\"height\":156,\"size\":6.93,\"path\":null,\"url\":\"/uploads/thumbnail_a_bug_is_becoming_a_meme_on_the_internet_bf6ab2d40b.jpg\"},\"large\":{\"name\":\"large_a-bug-is-becoming-a-meme-on-the-internet.jpg\",\"hash\":\"large_a_bug_is_becoming_a_meme_on_the_internet_bf6ab2d40b\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":1000,\"height\":667,\"size\":51.29,\"path\":null,\"url\":\"/uploads/large_a_bug_is_becoming_a_meme_on_the_internet_bf6ab2d40b.jpg\"},\"medium\":{\"name\":\"medium_a-bug-is-becoming-a-meme-on-the-internet.jpg\",\"hash\":\"medium_a_bug_is_becoming_a_meme_on_the_internet_bf6ab2d40b\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":500,\"size\":33.47,\"path\":null,\"url\":\"/uploads/medium_a_bug_is_becoming_a_meme_on_the_internet_bf6ab2d40b.jpg\"},\"small\":{\"name\":\"small_a-bug-is-becoming-a-meme-on-the-internet.jpg\",\"hash\":\"small_a_bug_is_becoming_a_meme_on_the_internet_bf6ab2d40b\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":333,\"size\":19.44,\"path\":null,\"url\":\"/uploads/small_a_bug_is_becoming_a_meme_on_the_internet_bf6ab2d40b.jpg\"}}','a_bug_is_becoming_a_meme_on_the_internet_bf6ab2d40b','.jpg','image/jpeg',198.85,'/uploads/a_bug_is_becoming_a_meme_on_the_internet_bf6ab2d40b.jpg',NULL,'local',NULL,NULL,NULL,'2021-06-21 15:07:47','2021-06-21 15:07:47'),(7,'beautiful-picture.jpg',NULL,NULL,3824,2548,'{\"thumbnail\":{\"name\":\"thumbnail_beautiful-picture.jpg\",\"hash\":\"thumbnail_beautiful_picture_fd30dce465\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":234,\"height\":156,\"size\":6.63,\"path\":null,\"url\":\"/uploads/thumbnail_beautiful_picture_fd30dce465.jpg\"},\"large\":{\"name\":\"large_beautiful-picture.jpg\",\"hash\":\"large_beautiful_picture_fd30dce465\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":1000,\"height\":666,\"size\":83.75,\"path\":null,\"url\":\"/uploads/large_beautiful_picture_fd30dce465.jpg\"},\"medium\":{\"name\":\"medium_beautiful-picture.jpg\",\"hash\":\"medium_beautiful_picture_fd30dce465\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":500,\"size\":48.01,\"path\":null,\"url\":\"/uploads/medium_beautiful_picture_fd30dce465.jpg\"},\"small\":{\"name\":\"small_beautiful-picture.jpg\",\"hash\":\"small_beautiful_picture_fd30dce465\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":333,\"size\":23.55,\"path\":null,\"url\":\"/uploads/small_beautiful_picture_fd30dce465.jpg\"}}','beautiful_picture_fd30dce465','.jpg','image/jpeg',585.12,'/uploads/beautiful_picture_fd30dce465.jpg',NULL,'local',NULL,NULL,NULL,'2021-06-21 15:07:47','2021-06-21 15:07:47'),(8,'we-love-pizza.jpg',NULL,NULL,3782,2522,'{\"thumbnail\":{\"name\":\"thumbnail_we-love-pizza.jpg\",\"hash\":\"thumbnail_we_love_pizza_3586563cbc\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":234,\"height\":156,\"size\":13.94,\"path\":null,\"url\":\"/uploads/thumbnail_we_love_pizza_3586563cbc.jpg\"},\"large\":{\"name\":\"large_we-love-pizza.jpg\",\"hash\":\"large_we_love_pizza_3586563cbc\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":1000,\"height\":667,\"size\":180.65,\"path\":null,\"url\":\"/uploads/large_we_love_pizza_3586563cbc.jpg\"},\"medium\":{\"name\":\"medium_we-love-pizza.jpg\",\"hash\":\"medium_we_love_pizza_3586563cbc\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":500,\"size\":106.44,\"path\":null,\"url\":\"/uploads/medium_we_love_pizza_3586563cbc.jpg\"},\"small\":{\"name\":\"small_we-love-pizza.jpg\",\"hash\":\"small_we_love_pizza_3586563cbc\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":333,\"size\":52.78,\"path\":null,\"url\":\"/uploads/small_we_love_pizza_3586563cbc.jpg\"}}','we_love_pizza_3586563cbc','.jpg','image/jpeg',955.02,'/uploads/we_love_pizza_3586563cbc.jpg',NULL,'local',NULL,NULL,NULL,'2021-06-21 15:07:47','2021-06-21 15:07:47'),(9,'favicon.png',NULL,NULL,512,512,'{\"thumbnail\":{\"name\":\"thumbnail_favicon.png\",\"hash\":\"thumbnail_favicon_8e865f8756\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":156,\"height\":156,\"size\":6.27,\"path\":null,\"url\":\"/uploads/thumbnail_favicon_8e865f8756.png\"},\"small\":{\"name\":\"small_favicon.png\",\"hash\":\"small_favicon_8e865f8756\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":500,\"size\":28.98,\"path\":null,\"url\":\"/uploads/small_favicon_8e865f8756.png\"}}','favicon_8e865f8756','.png','image/png',5.26,'/uploads/favicon_8e865f8756.png',NULL,'local',NULL,NULL,NULL,'2021-06-21 15:07:47','2021-06-21 15:07:47'),(10,'default-image.png',NULL,NULL,1208,715,'{\"thumbnail\":{\"name\":\"thumbnail_default-image.png\",\"hash\":\"thumbnail_default_image_a584c2d8df\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":145,\"size\":27.69,\"path\":null,\"url\":\"/uploads/thumbnail_default_image_a584c2d8df.png\"},\"large\":{\"name\":\"large_default-image.png\",\"hash\":\"large_default_image_a584c2d8df\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":1000,\"height\":592,\"size\":423.75,\"path\":null,\"url\":\"/uploads/large_default_image_a584c2d8df.png\"},\"medium\":{\"name\":\"medium_default-image.png\",\"hash\":\"medium_default_image_a584c2d8df\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":750,\"height\":444,\"size\":250.27,\"path\":null,\"url\":\"/uploads/medium_default_image_a584c2d8df.png\"},\"small\":{\"name\":\"small_default-image.png\",\"hash\":\"small_default_image_a584c2d8df\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":296,\"size\":114.01,\"path\":null,\"url\":\"/uploads/small_default_image_a584c2d8df.png\"}}','default_image_a584c2d8df','.png','image/png',297.42,'/uploads/default_image_a584c2d8df.png',NULL,'local',NULL,NULL,NULL,'2021-06-21 15:07:48','2021-06-21 15:07:48'),(11,'5c1e89d8f2fff7653773a6aa671ef4b8ae29314a.jpg','','',2289,2289,'{\"thumbnail\":{\"name\":\"thumbnail_5c1e89d8f2fff7653773a6aa671ef4b8ae29314a.jpg\",\"hash\":\"thumbnail_5c1e89d8f2fff7653773a6aa671ef4b8ae29314a_64be524fd6\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":156,\"height\":156,\"size\":6.16,\"path\":null,\"url\":\"/uploads/thumbnail_5c1e89d8f2fff7653773a6aa671ef4b8ae29314a_64be524fd6.jpg\"},\"large\":{\"name\":\"large_5c1e89d8f2fff7653773a6aa671ef4b8ae29314a.jpg\",\"hash\":\"large_5c1e89d8f2fff7653773a6aa671ef4b8ae29314a_64be524fd6\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":1000,\"height\":1000,\"size\":65.4,\"path\":null,\"url\":\"/uploads/large_5c1e89d8f2fff7653773a6aa671ef4b8ae29314a_64be524fd6.jpg\"},\"medium\":{\"name\":\"medium_5c1e89d8f2fff7653773a6aa671ef4b8ae29314a.jpg\",\"hash\":\"medium_5c1e89d8f2fff7653773a6aa671ef4b8ae29314a_64be524fd6\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":750,\"size\":45.11,\"path\":null,\"url\":\"/uploads/medium_5c1e89d8f2fff7653773a6aa671ef4b8ae29314a_64be524fd6.jpg\"},\"small\":{\"name\":\"small_5c1e89d8f2fff7653773a6aa671ef4b8ae29314a.jpg\",\"hash\":\"small_5c1e89d8f2fff7653773a6aa671ef4b8ae29314a_64be524fd6\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":500,\"size\":27.28,\"path\":null,\"url\":\"/uploads/small_5c1e89d8f2fff7653773a6aa671ef4b8ae29314a_64be524fd6.jpg\"}}','5c1e89d8f2fff7653773a6aa671ef4b8ae29314a_64be524fd6','.jpg','image/jpeg',209.66,'/uploads/5c1e89d8f2fff7653773a6aa671ef4b8ae29314a_64be524fd6.jpg',NULL,'local',NULL,1,1,'2021-06-23 08:51:20','2021-06-23 08:51:20'),(12,'Screenshot at Jun 24 21-07-40.png','','',632,390,'{\"thumbnail\":{\"name\":\"thumbnail_Screenshot at Jun 24 21-07-40.png\",\"hash\":\"thumbnail_Screenshot_at_Jun_24_21_07_40_b4a0f775a1\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":151,\"size\":110.75,\"path\":null,\"url\":\"/uploads/thumbnail_Screenshot_at_Jun_24_21_07_40_b4a0f775a1.png\"},\"small\":{\"name\":\"small_Screenshot at Jun 24 21-07-40.png\",\"hash\":\"small_Screenshot_at_Jun_24_21_07_40_b4a0f775a1\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":309,\"size\":435.32,\"path\":null,\"url\":\"/uploads/small_Screenshot_at_Jun_24_21_07_40_b4a0f775a1.png\"}}','Screenshot_at_Jun_24_21_07_40_b4a0f775a1','.png','image/png',632.62,'/uploads/Screenshot_at_Jun_24_21_07_40_b4a0f775a1.png',NULL,'local',NULL,1,1,'2021-06-24 14:08:21','2021-06-24 14:08:21'),(13,'Screenshot at Jun 24 21-09-38.png','','',624,360,'{\"thumbnail\":{\"name\":\"thumbnail_Screenshot at Jun 24 21-09-38.png\",\"hash\":\"thumbnail_Screenshot_at_Jun_24_21_09_38_b6e486e92f\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":141,\"size\":72.53,\"path\":null,\"url\":\"/uploads/thumbnail_Screenshot_at_Jun_24_21_09_38_b6e486e92f.png\"},\"small\":{\"name\":\"small_Screenshot at Jun 24 21-09-38.png\",\"hash\":\"small_Screenshot_at_Jun_24_21_09_38_b6e486e92f\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":288,\"size\":286.92,\"path\":null,\"url\":\"/uploads/small_Screenshot_at_Jun_24_21_09_38_b6e486e92f.png\"}}','Screenshot_at_Jun_24_21_09_38_b6e486e92f','.png','image/png',395.40,'/uploads/Screenshot_at_Jun_24_21_09_38_b6e486e92f.png',NULL,'local',NULL,1,1,'2021-06-24 14:09:51','2021-06-24 14:09:51'),(14,'Screenshot at Jun 24 21-12-35.png','','',468,288,'{\"thumbnail\":{\"name\":\"thumbnail_Screenshot at Jun 24 21-12-35.png\",\"hash\":\"thumbnail_Screenshot_at_Jun_24_21_12_35_6fde1121a7\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":151,\"size\":98.43,\"path\":null,\"url\":\"/uploads/thumbnail_Screenshot_at_Jun_24_21_12_35_6fde1121a7.png\"}}','Screenshot_at_Jun_24_21_12_35_6fde1121a7','.png','image/png',283.86,'/uploads/Screenshot_at_Jun_24_21_12_35_6fde1121a7.png',NULL,'local',NULL,1,1,'2021-06-24 14:13:08','2021-07-31 14:44:05'),(15,'Screenshot at Jun 24 21-14-14.png','','',470,276,'{\"thumbnail\":{\"name\":\"thumbnail_Screenshot at Jun 24 21-14-14.png\",\"hash\":\"thumbnail_Screenshot_at_Jun_24_21_14_14_2da40aab15\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":144,\"size\":102.3,\"path\":null,\"url\":\"/uploads/thumbnail_Screenshot_at_Jun_24_21_14_14_2da40aab15.png\"}}','Screenshot_at_Jun_24_21_14_14_2da40aab15','.png','image/png',313.78,'/uploads/Screenshot_at_Jun_24_21_14_14_2da40aab15.png',NULL,'local',NULL,1,1,'2021-06-24 14:14:44','2021-06-24 14:14:44'),(17,'Screenshot at Jun 24 21-14-24.png','','',470,278,'{\"thumbnail\":{\"name\":\"thumbnail_Screenshot at Jun 24 21-14-24.png\",\"hash\":\"thumbnail_Screenshot_at_Jun_24_21_14_24_cba0162a53\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":145,\"size\":99.08,\"path\":null,\"url\":\"/uploads/thumbnail_Screenshot_at_Jun_24_21_14_24_cba0162a53.png\"}}','Screenshot_at_Jun_24_21_14_24_cba0162a53','.png','image/png',316.49,'/uploads/Screenshot_at_Jun_24_21_14_24_cba0162a53.png',NULL,'local',NULL,1,1,'2021-06-24 14:14:44','2021-06-24 14:16:19'),(18,'default-image.png',NULL,NULL,1208,715,'{\"thumbnail\":{\"name\":\"thumbnail_default-image.png\",\"hash\":\"thumbnail_default_image_b9e2e6f8f6\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":145,\"size\":27.69,\"path\":null,\"url\":\"/uploads/thumbnail_default_image_b9e2e6f8f6.png\"},\"large\":{\"name\":\"large_default-image.png\",\"hash\":\"large_default_image_b9e2e6f8f6\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":1000,\"height\":592,\"size\":423.75,\"path\":null,\"url\":\"/uploads/large_default_image_b9e2e6f8f6.png\"},\"medium\":{\"name\":\"medium_default-image.png\",\"hash\":\"medium_default_image_b9e2e6f8f6\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":750,\"height\":444,\"size\":250.27,\"path\":null,\"url\":\"/uploads/medium_default_image_b9e2e6f8f6.png\"},\"small\":{\"name\":\"small_default-image.png\",\"hash\":\"small_default_image_b9e2e6f8f6\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":296,\"size\":114.01,\"path\":null,\"url\":\"/uploads/small_default_image_b9e2e6f8f6.png\"}}','default_image_b9e2e6f8f6','.png','image/png',297.42,'/uploads/default_image_b9e2e6f8f6.png',NULL,'local',NULL,NULL,NULL,'2021-07-05 11:00:29','2021-07-05 11:00:29'),(19,'favicon.png',NULL,NULL,512,512,'{\"thumbnail\":{\"name\":\"thumbnail_favicon.png\",\"hash\":\"thumbnail_favicon_06f84cb587\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":156,\"height\":156,\"size\":6.27,\"path\":null,\"url\":\"/uploads/thumbnail_favicon_06f84cb587.png\"},\"small\":{\"name\":\"small_favicon.png\",\"hash\":\"small_favicon_06f84cb587\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":500,\"size\":28.98,\"path\":null,\"url\":\"/uploads/small_favicon_06f84cb587.png\"}}','favicon_06f84cb587','.png','image/png',5.26,'/uploads/favicon_06f84cb587.png',NULL,'local',NULL,NULL,NULL,'2021-07-05 11:00:29','2021-07-05 11:00:29'),(20,'default-image.png',NULL,NULL,1208,715,'{\"thumbnail\":{\"name\":\"thumbnail_default-image.png\",\"hash\":\"thumbnail_default_image_0701ec78e8\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":145,\"size\":27.69,\"path\":null,\"url\":\"/uploads/thumbnail_default_image_0701ec78e8.png\"},\"large\":{\"name\":\"large_default-image.png\",\"hash\":\"large_default_image_0701ec78e8\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":1000,\"height\":592,\"size\":423.75,\"path\":null,\"url\":\"/uploads/large_default_image_0701ec78e8.png\"},\"medium\":{\"name\":\"medium_default-image.png\",\"hash\":\"medium_default_image_0701ec78e8\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":750,\"height\":444,\"size\":250.27,\"path\":null,\"url\":\"/uploads/medium_default_image_0701ec78e8.png\"},\"small\":{\"name\":\"small_default-image.png\",\"hash\":\"small_default_image_0701ec78e8\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":296,\"size\":114.01,\"path\":null,\"url\":\"/uploads/small_default_image_0701ec78e8.png\"}}','default_image_0701ec78e8','.png','image/png',297.42,'/uploads/default_image_0701ec78e8.png',NULL,'local',NULL,NULL,NULL,'2021-07-05 11:00:30','2021-07-05 11:00:30'),(21,'accelerate-4.jpg','','',1300,952,'{\"thumbnail\":{\"name\":\"thumbnail_accelerate-4.jpg\",\"hash\":\"thumbnail_accelerate_4_1dd85ca73b\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":213,\"height\":156,\"size\":5.43,\"path\":null,\"url\":\"/uploads/thumbnail_accelerate_4_1dd85ca73b.jpg\"},\"large\":{\"name\":\"large_accelerate-4.jpg\",\"hash\":\"large_accelerate_4_1dd85ca73b\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":1000,\"height\":732,\"size\":43.9,\"path\":null,\"url\":\"/uploads/large_accelerate_4_1dd85ca73b.jpg\"},\"medium\":{\"name\":\"medium_accelerate-4.jpg\",\"hash\":\"medium_accelerate_4_1dd85ca73b\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":549,\"size\":28.78,\"path\":null,\"url\":\"/uploads/medium_accelerate_4_1dd85ca73b.jpg\"},\"small\":{\"name\":\"small_accelerate-4.jpg\",\"hash\":\"small_accelerate_4_1dd85ca73b\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":366,\"size\":16.21,\"path\":null,\"url\":\"/uploads/small_accelerate_4_1dd85ca73b.jpg\"}}','accelerate_4_1dd85ca73b','.jpg','image/jpeg',64.09,'/uploads/accelerate_4_1dd85ca73b.jpg',NULL,'local',NULL,1,1,'2021-07-24 03:07:05','2021-07-24 03:07:05'),(22,'accelerate-2.jpg','','',1454,1000,'{\"thumbnail\":{\"name\":\"thumbnail_accelerate-2.jpg\",\"hash\":\"thumbnail_accelerate_2_7e7d3f5eb0\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":227,\"height\":156,\"size\":7.94,\"path\":null,\"url\":\"/uploads/thumbnail_accelerate_2_7e7d3f5eb0.jpg\"},\"large\":{\"name\":\"large_accelerate-2.jpg\",\"hash\":\"large_accelerate_2_7e7d3f5eb0\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":1000,\"height\":688,\"size\":69.16,\"path\":null,\"url\":\"/uploads/large_accelerate_2_7e7d3f5eb0.jpg\"},\"medium\":{\"name\":\"medium_accelerate-2.jpg\",\"hash\":\"medium_accelerate_2_7e7d3f5eb0\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":516,\"size\":46.15,\"path\":null,\"url\":\"/uploads/medium_accelerate_2_7e7d3f5eb0.jpg\"},\"small\":{\"name\":\"small_accelerate-2.jpg\",\"hash\":\"small_accelerate_2_7e7d3f5eb0\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":344,\"size\":25.34,\"path\":null,\"url\":\"/uploads/small_accelerate_2_7e7d3f5eb0.jpg\"}}','accelerate_2_7e7d3f5eb0','.jpg','image/jpeg',115.62,'/uploads/accelerate_2_7e7d3f5eb0.jpg',NULL,'local',NULL,1,1,'2021-07-24 03:07:05','2021-07-24 03:07:05'),(23,'accelerate-3.jpg','','',1544,1130,'{\"thumbnail\":{\"name\":\"thumbnail_accelerate-3.jpg\",\"hash\":\"thumbnail_accelerate_3_da8f39b422\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":213,\"height\":156,\"size\":8.85,\"path\":null,\"url\":\"/uploads/thumbnail_accelerate_3_da8f39b422.jpg\"},\"large\":{\"name\":\"large_accelerate-3.jpg\",\"hash\":\"large_accelerate_3_da8f39b422\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":1000,\"height\":732,\"size\":104.2,\"path\":null,\"url\":\"/uploads/large_accelerate_3_da8f39b422.jpg\"},\"medium\":{\"name\":\"medium_accelerate-3.jpg\",\"hash\":\"medium_accelerate_3_da8f39b422\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":549,\"size\":64.53,\"path\":null,\"url\":\"/uploads/medium_accelerate_3_da8f39b422.jpg\"},\"small\":{\"name\":\"small_accelerate-3.jpg\",\"hash\":\"small_accelerate_3_da8f39b422\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":366,\"size\":34.05,\"path\":null,\"url\":\"/uploads/small_accelerate_3_da8f39b422.jpg\"}}','accelerate_3_da8f39b422','.jpg','image/jpeg',199.40,'/uploads/accelerate_3_da8f39b422.jpg',NULL,'local',NULL,1,1,'2021-07-24 03:07:05','2021-07-24 03:07:05'),(24,'accelerate.jpg','','',6000,4369,'{\"thumbnail\":{\"name\":\"thumbnail_accelerate.jpg\",\"hash\":\"thumbnail_accelerate_b744cce62c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":214,\"height\":156,\"size\":6.01,\"path\":null,\"url\":\"/uploads/thumbnail_accelerate_b744cce62c.jpg\"},\"large\":{\"name\":\"large_accelerate.jpg\",\"hash\":\"large_accelerate_b744cce62c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":1000,\"height\":728,\"size\":105.34,\"path\":null,\"url\":\"/uploads/large_accelerate_b744cce62c.jpg\"},\"medium\":{\"name\":\"medium_accelerate.jpg\",\"hash\":\"medium_accelerate_b744cce62c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":546,\"size\":60.08,\"path\":null,\"url\":\"/uploads/medium_accelerate_b744cce62c.jpg\"},\"small\":{\"name\":\"small_accelerate.jpg\",\"hash\":\"small_accelerate_b744cce62c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":364,\"size\":28.31,\"path\":null,\"url\":\"/uploads/small_accelerate_b744cce62c.jpg\"}}','accelerate_b744cce62c','.jpg','image/jpeg',3854.43,'/uploads/accelerate_b744cce62c.jpg',NULL,'local',NULL,1,1,'2021-07-24 03:07:13','2021-07-24 03:07:13'),(25,'accelerate-grants-2.jpg','','',1082,793,'{\"thumbnail\":{\"name\":\"thumbnail_accelerate-grants-2.jpg\",\"hash\":\"thumbnail_accelerate_grants_2_71b53777f8\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":213,\"height\":156,\"size\":6.15,\"path\":null,\"url\":\"/uploads/thumbnail_accelerate_grants_2_71b53777f8.jpg\"},\"large\":{\"name\":\"large_accelerate-grants-2.jpg\",\"hash\":\"large_accelerate_grants_2_71b53777f8\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":1000,\"height\":733,\"size\":41.31,\"path\":null,\"url\":\"/uploads/large_accelerate_grants_2_71b53777f8.jpg\"},\"medium\":{\"name\":\"medium_accelerate-grants-2.jpg\",\"hash\":\"medium_accelerate_grants_2_71b53777f8\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":550,\"size\":29.44,\"path\":null,\"url\":\"/uploads/medium_accelerate_grants_2_71b53777f8.jpg\"},\"small\":{\"name\":\"small_accelerate-grants-2.jpg\",\"hash\":\"small_accelerate_grants_2_71b53777f8\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":366,\"size\":17.3,\"path\":null,\"url\":\"/uploads/small_accelerate_grants_2_71b53777f8.jpg\"}}','accelerate_grants_2_71b53777f8','.jpg','image/jpeg',43.02,'/uploads/accelerate_grants_2_71b53777f8.jpg',NULL,'local',NULL,1,1,'2021-07-24 03:17:11','2021-07-24 03:17:11'),(26,'accelerate-grants-3.jpg','','',1082,793,'{\"thumbnail\":{\"name\":\"thumbnail_accelerate-grants-3.jpg\",\"hash\":\"thumbnail_accelerate_grants_3_96e8b8faa2\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":213,\"height\":156,\"size\":6.82,\"path\":null,\"url\":\"/uploads/thumbnail_accelerate_grants_3_96e8b8faa2.jpg\"},\"large\":{\"name\":\"large_accelerate-grants-3.jpg\",\"hash\":\"large_accelerate_grants_3_96e8b8faa2\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":1000,\"height\":733,\"size\":65.42,\"path\":null,\"url\":\"/uploads/large_accelerate_grants_3_96e8b8faa2.jpg\"},\"medium\":{\"name\":\"medium_accelerate-grants-3.jpg\",\"hash\":\"medium_accelerate_grants_3_96e8b8faa2\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":550,\"size\":42.61,\"path\":null,\"url\":\"/uploads/medium_accelerate_grants_3_96e8b8faa2.jpg\"},\"small\":{\"name\":\"small_accelerate-grants-3.jpg\",\"hash\":\"small_accelerate_grants_3_96e8b8faa2\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":366,\"size\":22.25,\"path\":null,\"url\":\"/uploads/small_accelerate_grants_3_96e8b8faa2.jpg\"}}','accelerate_grants_3_96e8b8faa2','.jpg','image/jpeg',73.03,'/uploads/accelerate_grants_3_96e8b8faa2.jpg',NULL,'local',NULL,1,1,'2021-07-24 03:17:11','2021-07-24 03:17:11'),(27,'hbr_logo.png','','',122,49,NULL,'hbr_logo_b092036378','.png','image/png',6.96,'/uploads/hbr_logo_b092036378.png',NULL,'local',NULL,1,1,'2021-07-24 03:22:29','2021-07-24 03:22:29'),(28,'harvard_logo.png','','',166,49,NULL,'harvard_logo_d8b38c10a8','.png','image/png',6.52,'/uploads/harvard_logo_d8b38c10a8.png',NULL,'local',NULL,1,1,'2021-07-24 03:22:29','2021-07-24 03:22:29'),(29,'cfi_logo.png','','',194,67,NULL,'cfi_logo_4509ef34ac','.png','image/png',6.38,'/uploads/cfi_logo_4509ef34ac.png',NULL,'local',NULL,1,1,'2021-07-24 03:22:29','2021-07-24 03:22:29'),(30,'pu_logo.png','','',164,58,NULL,'pu_logo_2b1c328cd5','.png','image/png',6.82,'/uploads/pu_logo_2b1c328cd5.png',NULL,'local',NULL,1,1,'2021-07-24 03:22:29','2021-07-24 03:22:29'),(31,'yu_logo.png','','',98,76,NULL,'yu_logo_1e9396e2f7','.png','image/png',11.28,'/uploads/yu_logo_1e9396e2f7.png',NULL,'local',NULL,1,1,'2021-07-24 03:22:29','2021-07-24 03:22:29'),(32,'nacva_logo.png','','',294,55,'{\"thumbnail\":{\"name\":\"thumbnail_nacva_logo.png\",\"hash\":\"thumbnail_nacva_logo_395b829ca0\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":46,\"size\":25.05,\"path\":null,\"url\":\"/uploads/thumbnail_nacva_logo_395b829ca0.png\"}}','nacva_logo_395b829ca0','.png','image/png',19.21,'/uploads/nacva_logo_395b829ca0.png',NULL,'local',NULL,1,1,'2021-07-24 03:22:29','2021-07-24 03:22:29'),(33,'cbv_logo.png','','',170,53,NULL,'cbv_logo_896d8baf99','.png','image/png',6.38,'/uploads/cbv_logo_896d8baf99.png',NULL,'local',NULL,1,1,'2021-07-24 03:22:29','2021-07-24 03:22:29'),(34,'testimonial-3.jpg','','',800,768,'{\"thumbnail\":{\"name\":\"thumbnail_testimonial-3.jpg\",\"hash\":\"thumbnail_testimonial_3_1ddf078590\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":163,\"height\":156,\"size\":5.81,\"path\":null,\"url\":\"/uploads/thumbnail_testimonial_3_1ddf078590.jpg\"},\"medium\":{\"name\":\"medium_testimonial-3.jpg\",\"hash\":\"medium_testimonial_3_1ddf078590\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":720,\"size\":77.32,\"path\":null,\"url\":\"/uploads/medium_testimonial_3_1ddf078590.jpg\"},\"small\":{\"name\":\"small_testimonial-3.jpg\",\"hash\":\"small_testimonial_3_1ddf078590\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":480,\"size\":37.18,\"path\":null,\"url\":\"/uploads/small_testimonial_3_1ddf078590.jpg\"}}','testimonial_3_1ddf078590','.jpg','image/jpeg',89.90,'/uploads/testimonial_3_1ddf078590.jpg',NULL,'local',NULL,1,1,'2021-07-24 03:25:14','2021-07-24 03:25:14'),(35,'testimonial-2.jpg','','',1000,1115,'{\"thumbnail\":{\"name\":\"thumbnail_testimonial-2.jpg\",\"hash\":\"thumbnail_testimonial_2_76b5d5e1a7\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":140,\"height\":156,\"size\":6.51,\"path\":null,\"url\":\"/uploads/thumbnail_testimonial_2_76b5d5e1a7.jpg\"},\"large\":{\"name\":\"large_testimonial-2.jpg\",\"hash\":\"large_testimonial_2_76b5d5e1a7\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":897,\"height\":1000,\"size\":134.32,\"path\":null,\"url\":\"/uploads/large_testimonial_2_76b5d5e1a7.jpg\"},\"medium\":{\"name\":\"medium_testimonial-2.jpg\",\"hash\":\"medium_testimonial_2_76b5d5e1a7\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":673,\"height\":750,\"size\":85.85,\"path\":null,\"url\":\"/uploads/medium_testimonial_2_76b5d5e1a7.jpg\"},\"small\":{\"name\":\"small_testimonial-2.jpg\",\"hash\":\"small_testimonial_2_76b5d5e1a7\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":448,\"height\":500,\"size\":41.85,\"path\":null,\"url\":\"/uploads/small_testimonial_2_76b5d5e1a7.jpg\"}}','testimonial_2_76b5d5e1a7','.jpg','image/jpeg',157.76,'/uploads/testimonial_2_76b5d5e1a7.jpg',NULL,'local',NULL,1,1,'2021-07-24 03:25:14','2021-07-24 03:25:14'),(36,'testimonial-1.jpg','','',1333,1333,'{\"thumbnail\":{\"name\":\"thumbnail_testimonial-1.jpg\",\"hash\":\"thumbnail_testimonial_1_dff9f1cbe1\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":156,\"height\":156,\"size\":7.16,\"path\":null,\"url\":\"/uploads/thumbnail_testimonial_1_dff9f1cbe1.jpg\"},\"large\":{\"name\":\"large_testimonial-1.jpg\",\"hash\":\"large_testimonial_1_dff9f1cbe1\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":1000,\"height\":1000,\"size\":130.86,\"path\":null,\"url\":\"/uploads/large_testimonial_1_dff9f1cbe1.jpg\"},\"medium\":{\"name\":\"medium_testimonial-1.jpg\",\"hash\":\"medium_testimonial_1_dff9f1cbe1\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":750,\"size\":80.75,\"path\":null,\"url\":\"/uploads/medium_testimonial_1_dff9f1cbe1.jpg\"},\"small\":{\"name\":\"small_testimonial-1.jpg\",\"hash\":\"small_testimonial_1_dff9f1cbe1\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":500,\"size\":42.16,\"path\":null,\"url\":\"/uploads/small_testimonial_1_dff9f1cbe1.jpg\"}}','testimonial_1_dff9f1cbe1','.jpg','image/jpeg',215.76,'/uploads/testimonial_1_dff9f1cbe1.jpg',NULL,'local',NULL,1,1,'2021-07-24 03:25:14','2021-07-24 03:25:14'),(37,'firm-3.jpg','','',840,666,'{\"thumbnail\":{\"name\":\"thumbnail_firm-3.jpg\",\"hash\":\"thumbnail_firm_3_f9f89279e7\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":197,\"height\":156,\"size\":6.29,\"path\":null,\"url\":\"/uploads/thumbnail_firm_3_f9f89279e7.jpg\"},\"medium\":{\"name\":\"medium_firm-3.jpg\",\"hash\":\"medium_firm_3_f9f89279e7\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":595,\"size\":39.28,\"path\":null,\"url\":\"/uploads/medium_firm_3_f9f89279e7.jpg\"},\"small\":{\"name\":\"small_firm-3.jpg\",\"hash\":\"small_firm_3_f9f89279e7\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":396,\"size\":22.19,\"path\":null,\"url\":\"/uploads/small_firm_3_f9f89279e7.jpg\"}}','firm_3_f9f89279e7','.jpg','image/jpeg',45.90,'/uploads/firm_3_f9f89279e7.jpg',NULL,'local',NULL,1,1,'2021-07-24 03:34:12','2021-07-24 03:34:12'),(38,'firm-2.jpg','','',840,666,'{\"thumbnail\":{\"name\":\"thumbnail_firm-2.jpg\",\"hash\":\"thumbnail_firm_2_632d24b785\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":197,\"height\":156,\"size\":6.77,\"path\":null,\"url\":\"/uploads/thumbnail_firm_2_632d24b785.jpg\"},\"medium\":{\"name\":\"medium_firm-2.jpg\",\"hash\":\"medium_firm_2_632d24b785\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":595,\"size\":62.38,\"path\":null,\"url\":\"/uploads/medium_firm_2_632d24b785.jpg\"},\"small\":{\"name\":\"small_firm-2.jpg\",\"hash\":\"small_firm_2_632d24b785\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":396,\"size\":32.29,\"path\":null,\"url\":\"/uploads/small_firm_2_632d24b785.jpg\"}}','firm_2_632d24b785','.jpg','image/jpeg',74.62,'/uploads/firm_2_632d24b785.jpg',NULL,'local',NULL,1,1,'2021-07-24 03:34:12','2021-07-24 03:34:12'),(39,'firm-1.jpg','','',840,666,'{\"thumbnail\":{\"name\":\"thumbnail_firm-1.jpg\",\"hash\":\"thumbnail_firm_1_54eba3d82c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":197,\"height\":156,\"size\":6.83,\"path\":null,\"url\":\"/uploads/thumbnail_firm_1_54eba3d82c.jpg\"},\"medium\":{\"name\":\"medium_firm-1.jpg\",\"hash\":\"medium_firm_1_54eba3d82c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":595,\"size\":47.63,\"path\":null,\"url\":\"/uploads/medium_firm_1_54eba3d82c.jpg\"},\"small\":{\"name\":\"small_firm-1.jpg\",\"hash\":\"small_firm_1_54eba3d82c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":396,\"size\":25.86,\"path\":null,\"url\":\"/uploads/small_firm_1_54eba3d82c.jpg\"}}','firm_1_54eba3d82c','.jpg','image/jpeg',56.69,'/uploads/firm_1_54eba3d82c.jpg',NULL,'local',NULL,1,1,'2021-07-24 03:34:12','2021-07-24 03:34:12'),(40,'video.mp4','','',NULL,NULL,NULL,'video_9cf945830c','.mp4','video/mp4',26602.18,'/uploads/video_9cf945830c.mp4',NULL,'local',NULL,1,1,'2021-07-24 03:35:52','2021-07-29 00:54:31'),(41,'research.png','','',1518,829,'{\"thumbnail\":{\"name\":\"thumbnail_research.png\",\"hash\":\"thumbnail_research_5eafb6c0c0\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":134,\"size\":21.92,\"path\":null,\"url\":\"/uploads/thumbnail_research_5eafb6c0c0.png\"},\"large\":{\"name\":\"large_research.png\",\"hash\":\"large_research_5eafb6c0c0\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":1000,\"height\":546,\"size\":117.85,\"path\":null,\"url\":\"/uploads/large_research_5eafb6c0c0.png\"},\"medium\":{\"name\":\"medium_research.png\",\"hash\":\"medium_research_5eafb6c0c0\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":750,\"height\":410,\"size\":80.59,\"path\":null,\"url\":\"/uploads/medium_research_5eafb6c0c0.png\"},\"small\":{\"name\":\"small_research.png\",\"hash\":\"small_research_5eafb6c0c0\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":273,\"size\":49.47,\"path\":null,\"url\":\"/uploads/small_research_5eafb6c0c0.png\"}}','research_5eafb6c0c0','.png','image/png',89.30,'/uploads/research_5eafb6c0c0.png',NULL,'local',NULL,1,1,'2021-07-24 03:38:51','2021-07-24 03:38:51'),(42,'submission.png','','',1442,873,'{\"thumbnail\":{\"name\":\"thumbnail_submission.png\",\"hash\":\"thumbnail_submission_fd2a45bee4\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":148,\"size\":20.53,\"path\":null,\"url\":\"/uploads/thumbnail_submission_fd2a45bee4.png\"},\"large\":{\"name\":\"large_submission.png\",\"hash\":\"large_submission_fd2a45bee4\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":1000,\"height\":605,\"size\":115.29,\"path\":null,\"url\":\"/uploads/large_submission_fd2a45bee4.png\"},\"medium\":{\"name\":\"medium_submission.png\",\"hash\":\"medium_submission_fd2a45bee4\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":750,\"height\":454,\"size\":79.3,\"path\":null,\"url\":\"/uploads/medium_submission_fd2a45bee4.png\"},\"small\":{\"name\":\"small_submission.png\",\"hash\":\"small_submission_fd2a45bee4\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":303,\"size\":46.95,\"path\":null,\"url\":\"/uploads/small_submission_fd2a45bee4.png\"}}','submission_fd2a45bee4','.png','image/png',66.25,'/uploads/submission_fd2a45bee4.png',NULL,'local',NULL,1,1,'2021-07-24 03:38:51','2021-07-24 03:38:51'),(43,'guidelines.png','','',1348,1111,'{\"thumbnail\":{\"name\":\"thumbnail_guidelines.png\",\"hash\":\"thumbnail_guidelines_41e95aaa53\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":189,\"height\":156,\"size\":16.69,\"path\":null,\"url\":\"/uploads/thumbnail_guidelines_41e95aaa53.png\"},\"large\":{\"name\":\"large_guidelines.png\",\"hash\":\"large_guidelines_41e95aaa53\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":1000,\"height\":824,\"size\":141.09,\"path\":null,\"url\":\"/uploads/large_guidelines_41e95aaa53.png\"},\"medium\":{\"name\":\"medium_guidelines.png\",\"hash\":\"medium_guidelines_41e95aaa53\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":750,\"height\":618,\"size\":97.43,\"path\":null,\"url\":\"/uploads/medium_guidelines_41e95aaa53.png\"},\"small\":{\"name\":\"small_guidelines.png\",\"hash\":\"small_guidelines_41e95aaa53\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":412,\"size\":56.67,\"path\":null,\"url\":\"/uploads/small_guidelines_41e95aaa53.png\"}}','guidelines_41e95aaa53','.png','image/png',83.22,'/uploads/guidelines_41e95aaa53.png',NULL,'local',NULL,1,1,'2021-07-24 03:38:51','2021-07-24 03:38:51'),(44,'consultation-1.jpg','','',777,514,'{\"thumbnail\":{\"name\":\"thumbnail_consultation-1.jpg\",\"hash\":\"thumbnail_consultation_1_dc8d0cfa10\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":236,\"height\":156,\"size\":10.74,\"path\":null,\"url\":\"/uploads/thumbnail_consultation_1_dc8d0cfa10.jpg\"},\"medium\":{\"name\":\"medium_consultation-1.jpg\",\"hash\":\"medium_consultation_1_dc8d0cfa10\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":496,\"size\":62.02,\"path\":null,\"url\":\"/uploads/medium_consultation_1_dc8d0cfa10.jpg\"},\"small\":{\"name\":\"small_consultation-1.jpg\",\"hash\":\"small_consultation_1_dc8d0cfa10\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":331,\"size\":34.71,\"path\":null,\"url\":\"/uploads/small_consultation_1_dc8d0cfa10.jpg\"}}','consultation_1_dc8d0cfa10','.jpg','image/jpeg',65.16,'/uploads/consultation_1_dc8d0cfa10.jpg',NULL,'local',NULL,1,1,'2021-07-24 03:43:33','2021-07-24 03:43:33'),(45,'consultation-2.jpg','','',777,518,'{\"thumbnail\":{\"name\":\"thumbnail_consultation-2.jpg\",\"hash\":\"thumbnail_consultation_2_1318adfb85\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":234,\"height\":156,\"size\":7.22,\"path\":null,\"url\":\"/uploads/thumbnail_consultation_2_1318adfb85.jpg\"},\"medium\":{\"name\":\"medium_consultation-2.jpg\",\"hash\":\"medium_consultation_2_1318adfb85\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":500,\"size\":36.57,\"path\":null,\"url\":\"/uploads/medium_consultation_2_1318adfb85.jpg\"},\"small\":{\"name\":\"small_consultation-2.jpg\",\"hash\":\"small_consultation_2_1318adfb85\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":333,\"size\":20.77,\"path\":null,\"url\":\"/uploads/small_consultation_2_1318adfb85.jpg\"}}','consultation_2_1318adfb85','.jpg','image/jpeg',37.53,'/uploads/consultation_2_1318adfb85.jpg',NULL,'local',NULL,1,1,'2021-07-24 03:43:33','2021-07-24 03:43:33'),(46,'consultation-3.jpg','','',777,518,'{\"thumbnail\":{\"name\":\"thumbnail_consultation-3.jpg\",\"hash\":\"thumbnail_consultation_3_1f8c6aec68\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":234,\"height\":156,\"size\":9.32,\"path\":null,\"url\":\"/uploads/thumbnail_consultation_3_1f8c6aec68.jpg\"},\"medium\":{\"name\":\"medium_consultation-3.jpg\",\"hash\":\"medium_consultation_3_1f8c6aec68\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":500,\"size\":50.78,\"path\":null,\"url\":\"/uploads/medium_consultation_3_1f8c6aec68.jpg\"},\"small\":{\"name\":\"small_consultation-3.jpg\",\"hash\":\"small_consultation_3_1f8c6aec68\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":333,\"size\":28.26,\"path\":null,\"url\":\"/uploads/small_consultation_3_1f8c6aec68.jpg\"}}','consultation_3_1f8c6aec68','.jpg','image/jpeg',52.20,'/uploads/consultation_3_1f8c6aec68.jpg',NULL,'local',NULL,1,1,'2021-07-24 03:43:33','2021-07-24 03:43:33'),(47,'Screenshot_at_Jul_18_19_20_43_bbd5d65d1f.png','','',200,200,'{\"thumbnail\":{\"name\":\"thumbnail_Screenshot_at_Jul_18_19_20_43_bbd5d65d1f.png\",\"hash\":\"thumbnail_Screenshot_at_Jul_18_19_20_43_bbd5d65d1f_59e21e6ca0\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":156,\"height\":156,\"size\":5.21,\"path\":null,\"url\":\"/uploads/thumbnail_Screenshot_at_Jul_18_19_20_43_bbd5d65d1f_59e21e6ca0.png\"}}','Screenshot_at_Jul_18_19_20_43_bbd5d65d1f_59e21e6ca0','.png','image/png',2.94,'/uploads/Screenshot_at_Jul_18_19_20_43_bbd5d65d1f_59e21e6ca0.png',NULL,'local',NULL,1,1,'2021-07-24 03:46:23','2021-07-24 03:46:23'),(48,'favicon.ico','','',NULL,NULL,NULL,'favicon_c11baa348a','.ico','image/vnd.microsoft.icon',1.15,'/uploads/favicon_c11baa348a.ico',NULL,'local',NULL,1,1,'2021-07-24 03:47:20','2021-07-24 03:47:20'),(49,'slide-mobile-2.png','','',375,668,'{\"thumbnail\":{\"name\":\"thumbnail_slide-mobile-2.png\",\"hash\":\"thumbnail_slide_mobile_2_a5201b6704\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":88,\"height\":156,\"size\":30.73,\"path\":null,\"url\":\"/uploads/thumbnail_slide_mobile_2_a5201b6704.png\"},\"small\":{\"name\":\"small_slide-mobile-2.png\",\"hash\":\"small_slide_mobile_2_a5201b6704\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":281,\"height\":500,\"size\":239.5,\"path\":null,\"url\":\"/uploads/small_slide_mobile_2_a5201b6704.png\"}}','slide_mobile_2_a5201b6704','.png','image/png',231.38,'/uploads/slide_mobile_2_a5201b6704.png',NULL,'local',NULL,1,1,'2021-07-24 03:50:49','2021-07-24 03:50:49'),(50,'slide-mobile-1.png','','',375,678,'{\"thumbnail\":{\"name\":\"thumbnail_slide-mobile-1.png\",\"hash\":\"thumbnail_slide_mobile_1_71788ed168\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":86,\"height\":156,\"size\":37.64,\"path\":null,\"url\":\"/uploads/thumbnail_slide_mobile_1_71788ed168.png\"},\"small\":{\"name\":\"small_slide-mobile-1.png\",\"hash\":\"small_slide_mobile_1_71788ed168\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":277,\"height\":500,\"size\":346.81,\"path\":null,\"url\":\"/uploads/small_slide_mobile_1_71788ed168.png\"}}','slide_mobile_1_71788ed168','.png','image/png',529.11,'/uploads/slide_mobile_1_71788ed168.png',NULL,'local',NULL,1,1,'2021-07-24 03:50:49','2021-07-24 03:50:49'),(51,'slide-mobile-4.png','','',375,678,'{\"thumbnail\":{\"name\":\"thumbnail_slide-mobile-4.png\",\"hash\":\"thumbnail_slide_mobile_4_148c76709d\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":86,\"height\":156,\"size\":37.89,\"path\":null,\"url\":\"/uploads/thumbnail_slide_mobile_4_148c76709d.png\"},\"small\":{\"name\":\"small_slide-mobile-4.png\",\"hash\":\"small_slide_mobile_4_148c76709d\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":277,\"height\":500,\"size\":335.04,\"path\":null,\"url\":\"/uploads/small_slide_mobile_4_148c76709d.png\"}}','slide_mobile_4_148c76709d','.png','image/png',543.19,'/uploads/slide_mobile_4_148c76709d.png',NULL,'local',NULL,1,1,'2021-07-24 03:50:50','2021-07-24 03:50:50'),(52,'slide-mobile-3.png','','',375,672,'{\"thumbnail\":{\"name\":\"thumbnail_slide-mobile-3.png\",\"hash\":\"thumbnail_slide_mobile_3_9166ab76a2\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":87,\"height\":156,\"size\":38.17,\"path\":null,\"url\":\"/uploads/thumbnail_slide_mobile_3_9166ab76a2.png\"},\"small\":{\"name\":\"small_slide-mobile-3.png\",\"hash\":\"small_slide_mobile_3_9166ab76a2\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":279,\"height\":500,\"size\":357.88,\"path\":null,\"url\":\"/uploads/small_slide_mobile_3_9166ab76a2.png\"}}','slide_mobile_3_9166ab76a2','.png','image/png',400.68,'/uploads/slide_mobile_3_9166ab76a2.png',NULL,'local',NULL,1,1,'2021-07-24 03:50:51','2021-07-24 03:50:51'),(53,'slider6.jpg','','',1280,854,'{\"thumbnail\":{\"name\":\"thumbnail_slider6.jpg\",\"hash\":\"thumbnail_slider6_494fcab05c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":234,\"height\":156,\"size\":7.55,\"path\":null,\"url\":\"/uploads/thumbnail_slider6_494fcab05c.jpg\"},\"large\":{\"name\":\"large_slider6.jpg\",\"hash\":\"large_slider6_494fcab05c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":1000,\"height\":667,\"size\":59.82,\"path\":null,\"url\":\"/uploads/large_slider6_494fcab05c.jpg\"},\"medium\":{\"name\":\"medium_slider6.jpg\",\"hash\":\"medium_slider6_494fcab05c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":500,\"size\":38.79,\"path\":null,\"url\":\"/uploads/medium_slider6_494fcab05c.jpg\"},\"small\":{\"name\":\"small_slider6.jpg\",\"hash\":\"small_slider6_494fcab05c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":334,\"size\":21.21,\"path\":null,\"url\":\"/uploads/small_slider6_494fcab05c.jpg\"}}','slider6_494fcab05c','.jpg','image/jpeg',82.06,'/uploads/slider6_494fcab05c.jpg',NULL,'local',NULL,1,1,'2021-07-24 03:50:51','2021-07-24 03:50:51'),(54,'slide-mobile-5.png','','',375,668,'{\"thumbnail\":{\"name\":\"thumbnail_slide-mobile-5.png\",\"hash\":\"thumbnail_slide_mobile_5_e3cafeca1c\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":88,\"height\":156,\"size\":35.34,\"path\":null,\"url\":\"/uploads/thumbnail_slide_mobile_5_e3cafeca1c.png\"},\"small\":{\"name\":\"small_slide-mobile-5.png\",\"hash\":\"small_slide_mobile_5_e3cafeca1c\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":281,\"height\":500,\"size\":271.94,\"path\":null,\"url\":\"/uploads/small_slide_mobile_5_e3cafeca1c.png\"}}','slide_mobile_5_e3cafeca1c','.png','image/png',258.81,'/uploads/slide_mobile_5_e3cafeca1c.png',NULL,'local',NULL,1,1,'2021-07-24 03:50:51','2021-07-24 03:50:51'),(55,'slide-1.png','','',1920,996,'{\"thumbnail\":{\"name\":\"thumbnail_slide-1.png\",\"hash\":\"thumbnail_slide_1_394e2a8b0f\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":127,\"size\":77.88,\"path\":null,\"url\":\"/uploads/thumbnail_slide_1_394e2a8b0f.png\"},\"large\":{\"name\":\"large_slide-1.png\",\"hash\":\"large_slide_1_394e2a8b0f\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":1000,\"height\":519,\"size\":1184.23,\"path\":null,\"url\":\"/uploads/large_slide_1_394e2a8b0f.png\"},\"medium\":{\"name\":\"medium_slide-1.png\",\"hash\":\"medium_slide_1_394e2a8b0f\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":750,\"height\":389,\"size\":677.65,\"path\":null,\"url\":\"/uploads/medium_slide_1_394e2a8b0f.png\"},\"small\":{\"name\":\"small_slide-1.png\",\"hash\":\"small_slide_1_394e2a8b0f\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":259,\"size\":306.21,\"path\":null,\"url\":\"/uploads/small_slide_1_394e2a8b0f.png\"}}','slide_1_394e2a8b0f','.png','image/png',3361.90,'/uploads/slide_1_394e2a8b0f.png',NULL,'local',NULL,1,1,'2021-07-24 03:50:53','2021-07-24 03:50:53'),(56,'slide-4.png','','',1920,996,'{\"thumbnail\":{\"name\":\"thumbnail_slide-4.png\",\"hash\":\"thumbnail_slide_4_bd97edcead\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":127,\"size\":73.83,\"path\":null,\"url\":\"/uploads/thumbnail_slide_4_bd97edcead.png\"},\"large\":{\"name\":\"large_slide-4.png\",\"hash\":\"large_slide_4_bd97edcead\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":1000,\"height\":519,\"size\":1046.77,\"path\":null,\"url\":\"/uploads/large_slide_4_bd97edcead.png\"},\"medium\":{\"name\":\"medium_slide-4.png\",\"hash\":\"medium_slide_4_bd97edcead\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":750,\"height\":389,\"size\":602.73,\"path\":null,\"url\":\"/uploads/medium_slide_4_bd97edcead.png\"},\"small\":{\"name\":\"small_slide-4.png\",\"hash\":\"small_slide_4_bd97edcead\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":259,\"size\":277.89,\"path\":null,\"url\":\"/uploads/small_slide_4_bd97edcead.png\"}}','slide_4_bd97edcead','.png','image/png',3218.70,'/uploads/slide_4_bd97edcead.png',NULL,'local',NULL,1,1,'2021-07-24 03:51:00','2021-07-24 03:51:00'),(57,'slide-5.png','','',1920,996,'{\"thumbnail\":{\"name\":\"thumbnail_slide-5.png\",\"hash\":\"thumbnail_slide_5_1e04ff0f60\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":127,\"size\":89.84,\"path\":null,\"url\":\"/uploads/thumbnail_slide_5_1e04ff0f60.png\"},\"large\":{\"name\":\"large_slide-5.png\",\"hash\":\"large_slide_5_1e04ff0f60\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":1000,\"height\":519,\"size\":1166.04,\"path\":null,\"url\":\"/uploads/large_slide_5_1e04ff0f60.png\"},\"medium\":{\"name\":\"medium_slide-5.png\",\"hash\":\"medium_slide_5_1e04ff0f60\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":750,\"height\":389,\"size\":698.56,\"path\":null,\"url\":\"/uploads/medium_slide_5_1e04ff0f60.png\"},\"small\":{\"name\":\"small_slide-5.png\",\"hash\":\"small_slide_5_1e04ff0f60\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":259,\"size\":332.85,\"path\":null,\"url\":\"/uploads/small_slide_5_1e04ff0f60.png\"}}','slide_5_1e04ff0f60','.png','image/png',1923.91,'/uploads/slide_5_1e04ff0f60.png',NULL,'local',NULL,1,1,'2021-07-24 03:51:02','2021-07-24 03:51:02'),(58,'slide-2.png','','',1920,996,'{\"thumbnail\":{\"name\":\"thumbnail_slide-2.png\",\"hash\":\"thumbnail_slide_2_5953e3bbb9\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":127,\"size\":76.81,\"path\":null,\"url\":\"/uploads/thumbnail_slide_2_5953e3bbb9.png\"},\"large\":{\"name\":\"large_slide-2.png\",\"hash\":\"large_slide_2_5953e3bbb9\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":1000,\"height\":519,\"size\":938.69,\"path\":null,\"url\":\"/uploads/large_slide_2_5953e3bbb9.png\"},\"medium\":{\"name\":\"medium_slide-2.png\",\"hash\":\"medium_slide_2_5953e3bbb9\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":750,\"height\":389,\"size\":557.17,\"path\":null,\"url\":\"/uploads/medium_slide_2_5953e3bbb9.png\"},\"small\":{\"name\":\"small_slide-2.png\",\"hash\":\"small_slide_2_5953e3bbb9\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":259,\"size\":268.44,\"path\":null,\"url\":\"/uploads/small_slide_2_5953e3bbb9.png\"}}','slide_2_5953e3bbb9','.png','image/png',1660.31,'/uploads/slide_2_5953e3bbb9.png',NULL,'local',NULL,1,1,'2021-07-24 03:51:06','2021-07-24 03:51:06'),(59,'slide-3.png','','',1920,996,'{\"thumbnail\":{\"name\":\"thumbnail_slide-3.png\",\"hash\":\"thumbnail_slide_3_c0174a9c96\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":127,\"size\":88.51,\"path\":null,\"url\":\"/uploads/thumbnail_slide_3_c0174a9c96.png\"},\"large\":{\"name\":\"large_slide-3.png\",\"hash\":\"large_slide_3_c0174a9c96\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":1000,\"height\":519,\"size\":1279.38,\"path\":null,\"url\":\"/uploads/large_slide_3_c0174a9c96.png\"},\"medium\":{\"name\":\"medium_slide-3.png\",\"hash\":\"medium_slide_3_c0174a9c96\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":750,\"height\":389,\"size\":736.64,\"path\":null,\"url\":\"/uploads/medium_slide_3_c0174a9c96.png\"},\"small\":{\"name\":\"small_slide-3.png\",\"hash\":\"small_slide_3_c0174a9c96\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":259,\"size\":339.33,\"path\":null,\"url\":\"/uploads/small_slide_3_c0174a9c96.png\"}}','slide_3_c0174a9c96','.png','image/png',2624.13,'/uploads/slide_3_c0174a9c96.png',NULL,'local',NULL,1,1,'2021-07-24 03:51:10','2021-07-24 03:51:10'),(60,'Screenshot_at_Jul_18_20_10_06_d406729be1.png','','',150,150,NULL,'Screenshot_at_Jul_18_20_10_06_d406729be1_06de596291','.png','image/png',4.93,'/uploads/Screenshot_at_Jul_18_20_10_06_d406729be1_06de596291.png',NULL,'local',NULL,1,1,'2021-07-24 03:57:55','2021-07-24 03:57:55'),(61,'insights-banner.jpg','','',3835,1153,'{\"thumbnail\":{\"name\":\"thumbnail_insights-banner.jpg\",\"hash\":\"thumbnail_insights_banner_7f96af3ff0\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":245,\"height\":74,\"size\":3.83,\"path\":null,\"url\":\"/uploads/thumbnail_insights_banner_7f96af3ff0.jpg\"},\"large\":{\"name\":\"large_insights-banner.jpg\",\"hash\":\"large_insights_banner_7f96af3ff0\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":1000,\"height\":301,\"size\":35.23,\"path\":null,\"url\":\"/uploads/large_insights_banner_7f96af3ff0.jpg\"},\"medium\":{\"name\":\"medium_insights-banner.jpg\",\"hash\":\"medium_insights_banner_7f96af3ff0\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":225,\"size\":21.41,\"path\":null,\"url\":\"/uploads/medium_insights_banner_7f96af3ff0.jpg\"},\"small\":{\"name\":\"small_insights-banner.jpg\",\"hash\":\"small_insights_banner_7f96af3ff0\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":150,\"size\":11.37,\"path\":null,\"url\":\"/uploads/small_insights_banner_7f96af3ff0.jpg\"}}','insights_banner_7f96af3ff0','.jpg','image/jpeg',401.04,'/uploads/insights_banner_7f96af3ff0.jpg',NULL,'local',NULL,1,1,'2021-07-24 08:36:42','2021-07-24 08:36:42'),(62,'insights-banner.jpg','','',3835,1153,'{\"thumbnail\":{\"name\":\"thumbnail_insights-banner.jpg\",\"hash\":\"thumbnail_insights_banner_eed492eaac\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":245,\"height\":74,\"size\":3.83,\"path\":null,\"url\":\"/uploads/thumbnail_insights_banner_eed492eaac.jpg\"},\"large\":{\"name\":\"large_insights-banner.jpg\",\"hash\":\"large_insights_banner_eed492eaac\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":1000,\"height\":301,\"size\":35.23,\"path\":null,\"url\":\"/uploads/large_insights_banner_eed492eaac.jpg\"},\"medium\":{\"name\":\"medium_insights-banner.jpg\",\"hash\":\"medium_insights_banner_eed492eaac\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":225,\"size\":21.41,\"path\":null,\"url\":\"/uploads/medium_insights_banner_eed492eaac.jpg\"},\"small\":{\"name\":\"small_insights-banner.jpg\",\"hash\":\"small_insights_banner_eed492eaac\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":150,\"size\":11.37,\"path\":null,\"url\":\"/uploads/small_insights_banner_eed492eaac.jpg\"}}','insights_banner_eed492eaac','.jpg','image/jpeg',401.04,'/uploads/insights_banner_eed492eaac.jpg',NULL,'local',NULL,1,1,'2021-07-24 08:36:54','2021-07-24 08:36:54'),(63,'download-1.png','','',458,598,'{\"thumbnail\":{\"name\":\"thumbnail_download-1.png\",\"hash\":\"thumbnail_download_1_5d7afea49e\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":119,\"height\":156,\"size\":37.33,\"path\":null,\"url\":\"/uploads/thumbnail_download_1_5d7afea49e.png\"},\"small\":{\"name\":\"small_download-1.png\",\"hash\":\"small_download_1_5d7afea49e\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":383,\"height\":500,\"size\":272.2,\"path\":null,\"url\":\"/uploads/small_download_1_5d7afea49e.png\"}}','download_1_5d7afea49e','.png','image/png',277.07,'/uploads/download_1_5d7afea49e.png',NULL,'local',NULL,1,1,'2021-07-24 08:41:24','2021-07-24 08:41:24'),(64,'contact-banner.png','','',3840,2226,'{\"thumbnail\":{\"name\":\"thumbnail_contact-banner.png\",\"hash\":\"thumbnail_contact_banner_3e633bbc29\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":142,\"size\":65.12,\"path\":null,\"url\":\"/uploads/thumbnail_contact_banner_3e633bbc29.png\"},\"large\":{\"name\":\"large_contact-banner.png\",\"hash\":\"large_contact_banner_3e633bbc29\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":1000,\"height\":580,\"size\":771.96,\"path\":null,\"url\":\"/uploads/large_contact_banner_3e633bbc29.png\"},\"medium\":{\"name\":\"medium_contact-banner.png\",\"hash\":\"medium_contact_banner_3e633bbc29\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":750,\"height\":435,\"size\":447.73,\"path\":null,\"url\":\"/uploads/medium_contact_banner_3e633bbc29.png\"},\"small\":{\"name\":\"small_contact-banner.png\",\"hash\":\"small_contact_banner_3e633bbc29\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":290,\"size\":221.17,\"path\":null,\"url\":\"/uploads/small_contact_banner_3e633bbc29.png\"}}','contact_banner_3e633bbc29','.png','image/png',7794.15,'/uploads/contact_banner_3e633bbc29.png',NULL,'local',NULL,1,1,'2021-07-24 08:42:02','2021-07-24 08:42:02'),(65,'contact-banner-sp.png','','',741,1392,'{\"thumbnail\":{\"name\":\"thumbnail_contact-banner-sp.png\",\"hash\":\"thumbnail_contact_banner_sp_649ae5628c\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":83,\"height\":156,\"size\":27.71,\"path\":null,\"url\":\"/uploads/thumbnail_contact_banner_sp_649ae5628c.png\"},\"large\":{\"name\":\"large_contact-banner-sp.png\",\"hash\":\"large_contact_banner_sp_649ae5628c\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":532,\"height\":1000,\"size\":789.82,\"path\":null,\"url\":\"/uploads/large_contact_banner_sp_649ae5628c.png\"},\"medium\":{\"name\":\"medium_contact-banner-sp.png\",\"hash\":\"medium_contact_banner_sp_649ae5628c\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":399,\"height\":750,\"size\":442.2,\"path\":null,\"url\":\"/uploads/medium_contact_banner_sp_649ae5628c.png\"},\"small\":{\"name\":\"small_contact-banner-sp.png\",\"hash\":\"small_contact_banner_sp_649ae5628c\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":266,\"height\":500,\"size\":202.43,\"path\":null,\"url\":\"/uploads/small_contact_banner_sp_649ae5628c.png\"}}','contact_banner_sp_649ae5628c','.png','image/png',1142.67,'/uploads/contact_banner_sp_649ae5628c.png',NULL,'local',NULL,1,1,'2021-07-24 08:42:06','2021-07-24 08:42:06'),(66,'culture-sp.jpg','','',750,1120,'{\"thumbnail\":{\"name\":\"thumbnail_culture-sp.jpg\",\"hash\":\"thumbnail_culture_sp_77d9044df7\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":104,\"height\":156,\"size\":2.84,\"path\":null,\"url\":\"/uploads/thumbnail_culture_sp_77d9044df7.jpg\"},\"large\":{\"name\":\"large_culture-sp.jpg\",\"hash\":\"large_culture_sp_77d9044df7\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":670,\"height\":1000,\"size\":47.96,\"path\":null,\"url\":\"/uploads/large_culture_sp_77d9044df7.jpg\"},\"medium\":{\"name\":\"medium_culture-sp.jpg\",\"hash\":\"medium_culture_sp_77d9044df7\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":502,\"height\":750,\"size\":30.72,\"path\":null,\"url\":\"/uploads/medium_culture_sp_77d9044df7.jpg\"},\"small\":{\"name\":\"small_culture-sp.jpg\",\"hash\":\"small_culture_sp_77d9044df7\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":335,\"height\":500,\"size\":15.84,\"path\":null,\"url\":\"/uploads/small_culture_sp_77d9044df7.jpg\"}}','culture_sp_77d9044df7','.jpg','image/jpeg',56.19,'/uploads/culture_sp_77d9044df7.jpg',NULL,'local',NULL,1,1,'2021-07-24 11:26:39','2021-07-24 11:26:39'),(67,'culture.jpg','','',3833,1820,'{\"thumbnail\":{\"name\":\"thumbnail_culture.jpg\",\"hash\":\"thumbnail_culture_5428d43c9b\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":245,\"height\":116,\"size\":4.63,\"path\":null,\"url\":\"/uploads/thumbnail_culture_5428d43c9b.jpg\"},\"large\":{\"name\":\"large_culture.jpg\",\"hash\":\"large_culture_5428d43c9b\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":1000,\"height\":475,\"size\":38.76,\"path\":null,\"url\":\"/uploads/large_culture_5428d43c9b.jpg\"},\"medium\":{\"name\":\"medium_culture.jpg\",\"hash\":\"medium_culture_5428d43c9b\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":356,\"size\":24.19,\"path\":null,\"url\":\"/uploads/medium_culture_5428d43c9b.jpg\"},\"small\":{\"name\":\"small_culture.jpg\",\"hash\":\"small_culture_5428d43c9b\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":237,\"size\":13.09,\"path\":null,\"url\":\"/uploads/small_culture_5428d43c9b.jpg\"}}','culture_5428d43c9b','.jpg','image/jpeg',327.33,'/uploads/culture_5428d43c9b.jpg',NULL,'local',NULL,1,1,'2021-07-24 11:26:40','2021-07-24 11:26:40'),(68,'business-sp.jpg','','',747,1782,'{\"thumbnail\":{\"name\":\"thumbnail_business-sp.jpg\",\"hash\":\"thumbnail_business_sp_254498fa5f\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":65,\"height\":156,\"size\":2.1,\"path\":null,\"url\":\"/uploads/thumbnail_business_sp_254498fa5f.jpg\"},\"large\":{\"name\":\"large_business-sp.jpg\",\"hash\":\"large_business_sp_254498fa5f\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":419,\"height\":1000,\"size\":27.05,\"path\":null,\"url\":\"/uploads/large_business_sp_254498fa5f.jpg\"},\"medium\":{\"name\":\"medium_business-sp.jpg\",\"hash\":\"medium_business_sp_254498fa5f\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":314,\"height\":750,\"size\":17.62,\"path\":null,\"url\":\"/uploads/medium_business_sp_254498fa5f.jpg\"},\"small\":{\"name\":\"small_business-sp.jpg\",\"hash\":\"small_business_sp_254498fa5f\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":210,\"height\":500,\"size\":10.28,\"path\":null,\"url\":\"/uploads/small_business_sp_254498fa5f.jpg\"}}','business_sp_254498fa5f','.jpg','image/jpeg',61.34,'/uploads/business_sp_254498fa5f.jpg',NULL,'local',NULL,1,1,'2021-07-24 11:31:27','2021-07-24 11:31:27'),(69,'business-plans.png','','',1244,1544,'{\"thumbnail\":{\"name\":\"thumbnail_business-plans.png\",\"hash\":\"thumbnail_business_plans_6e8fd97e6c\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":126,\"height\":156,\"size\":30.81,\"path\":null,\"url\":\"/uploads/thumbnail_business_plans_6e8fd97e6c.png\"},\"large\":{\"name\":\"large_business-plans.png\",\"hash\":\"large_business_plans_6e8fd97e6c\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":806,\"height\":1000,\"size\":722.63,\"path\":null,\"url\":\"/uploads/large_business_plans_6e8fd97e6c.png\"},\"medium\":{\"name\":\"medium_business-plans.png\",\"hash\":\"medium_business_plans_6e8fd97e6c\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":604,\"height\":750,\"size\":437.36,\"path\":null,\"url\":\"/uploads/medium_business_plans_6e8fd97e6c.png\"},\"small\":{\"name\":\"small_business-plans.png\",\"hash\":\"small_business_plans_6e8fd97e6c\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":403,\"height\":500,\"size\":213.02,\"path\":null,\"url\":\"/uploads/small_business_plans_6e8fd97e6c.png\"}}','business_plans_6e8fd97e6c','.png','image/png',1240.03,'/uploads/business_plans_6e8fd97e6c.png',NULL,'local',NULL,1,1,'2021-07-24 11:31:33','2021-07-24 11:31:33'),(70,'business.jpg','','',3834,2140,'{\"thumbnail\":{\"name\":\"thumbnail_business.jpg\",\"hash\":\"thumbnail_business_5de9f2e32d\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":245,\"height\":137,\"size\":5.9,\"path\":null,\"url\":\"/uploads/thumbnail_business_5de9f2e32d.jpg\"},\"large\":{\"name\":\"large_business.jpg\",\"hash\":\"large_business_5de9f2e32d\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":1000,\"height\":558,\"size\":43.66,\"path\":null,\"url\":\"/uploads/large_business_5de9f2e32d.jpg\"},\"medium\":{\"name\":\"medium_business.jpg\",\"hash\":\"medium_business_5de9f2e32d\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":419,\"size\":28.76,\"path\":null,\"url\":\"/uploads/medium_business_5de9f2e32d.jpg\"},\"small\":{\"name\":\"small_business.jpg\",\"hash\":\"small_business_5de9f2e32d\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":279,\"size\":16.04,\"path\":null,\"url\":\"/uploads/small_business_5de9f2e32d.jpg\"}}','business_5de9f2e32d','.jpg','image/jpeg',309.39,'/uploads/business_5de9f2e32d.jpg',NULL,'local',NULL,1,1,'2021-07-24 11:31:34','2021-07-24 11:31:34'),(71,'2021061801_VP (Venture Plans) | Trello.pdf','','',NULL,NULL,NULL,'2021061801_VP_Venture_Plans_Trello_16ad8591cd','.pdf','application/pdf',1193.07,'/uploads/2021061801_VP_Venture_Plans_Trello_16ad8591cd.pdf',NULL,'local',NULL,1,1,'2021-07-24 11:33:51','2021-07-24 11:33:51'),(72,'cannabis.png','','',59,59,NULL,'cannabis_21aec592a5','.png','image/png',1.25,'/uploads/cannabis_21aec592a5.png',NULL,'local',NULL,1,1,'2021-07-27 03:08:24','2021-07-27 03:08:24'),(73,'manufacturing.png','','',59,59,NULL,'manufacturing_e43f648ccb','.png','image/png',1.24,'/uploads/manufacturing_e43f648ccb.png',NULL,'local',NULL,1,1,'2021-07-27 03:08:24','2021-07-27 03:08:24'),(74,'financial.png','','',59,59,NULL,'financial_50f335e573','.png','image/png',1.19,'/uploads/financial_50f335e573.png',NULL,'local',NULL,1,1,'2021-07-27 03:08:24','2021-07-27 03:08:24'),(75,'software.png','','',92,92,NULL,'software_794c1f1d6d','.png','image/png',2.10,'/uploads/software_794c1f1d6d.png',NULL,'local',NULL,1,1,'2021-07-27 03:08:24','2021-07-27 03:08:24'),(76,'residential.png','','',59,59,NULL,'residential_e9f5ab4fb1','.png','image/png',1.12,'/uploads/residential_e9f5ab4fb1.png',NULL,'local',NULL,1,1,'2021-07-27 03:08:24','2021-07-27 03:08:24'),(77,'commerce.png','','',59,59,NULL,'commerce_8763d49e0b','.png','image/png',1.67,'/uploads/commerce_8763d49e0b.png',NULL,'local',NULL,1,1,'2021-07-27 03:08:24','2021-07-27 03:08:24'),(78,'education.png','','',59,59,NULL,'education_847225d982','.png','image/png',1.25,'/uploads/education_847225d982.png',NULL,'local',NULL,1,1,'2021-07-27 03:08:24','2021-07-27 03:08:24'),(79,'Real Estate Business Plan.png','','',221,319,'{\"thumbnail\":{\"name\":\"thumbnail_Real Estate Business Plan.png\",\"hash\":\"thumbnail_Real_Estate_Business_Plan_70a2cd32f8\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":108,\"height\":156,\"size\":7.08,\"path\":null,\"url\":\"/uploads/thumbnail_Real_Estate_Business_Plan_70a2cd32f8.png\"}}','Real_Estate_Business_Plan_70a2cd32f8','.png','image/png',19.16,'/uploads/Real_Estate_Business_Plan_70a2cd32f8.png',NULL,'local',NULL,1,1,'2021-08-04 14:17:05','2021-08-04 14:23:16'),(80,'Cannabis Business Plan.png','','',220,320,'{\"thumbnail\":{\"name\":\"thumbnail_Cannabis Business Plan.png\",\"hash\":\"thumbnail_Cannabis_Business_Plan_dbf11f371e\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":107,\"height\":156,\"size\":9.98,\"path\":null,\"url\":\"/uploads/thumbnail_Cannabis_Business_Plan_dbf11f371e.png\"}}','Cannabis_Business_Plan_dbf11f371e','.png','image/png',27.66,'/uploads/Cannabis_Business_Plan_dbf11f371e.png',NULL,'local',NULL,1,1,'2021-08-04 14:17:39','2021-08-04 14:22:47'),(81,'Bank Plan (SBA).png','','',219,320,'{\"thumbnail\":{\"name\":\"thumbnail_Bank Plan (SBA).png\",\"hash\":\"thumbnail_Bank_Plan_SBA_64c1151d8e\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":107,\"height\":156,\"size\":7.55,\"path\":null,\"url\":\"/uploads/thumbnail_Bank_Plan_SBA_64c1151d8e.png\"}}','Bank_Plan_SBA_64c1151d8e','.png','image/png',20.73,'/uploads/Bank_Plan_SBA_64c1151d8e.png',NULL,'local',NULL,1,1,'2021-08-04 14:18:44','2021-08-04 14:24:04'),(82,'Tech Investor Business Plan.png','','',229,299,'{\"thumbnail\":{\"name\":\"thumbnail_Tech Investor Business Plan.png\",\"hash\":\"thumbnail_Tech_Investor_Business_Plan_25e83240f3\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":119,\"height\":156,\"size\":39.67,\"path\":null,\"url\":\"/uploads/thumbnail_Tech_Investor_Business_Plan_25e83240f3.png\"}}','Tech_Investor_Business_Plan_25e83240f3','.png','image/png',92.64,'/uploads/Tech_Investor_Business_Plan_25e83240f3.png',NULL,'local',NULL,1,1,'2021-08-04 14:18:44','2021-08-04 14:18:44'),(83,'FINRA.png','','',75,41,NULL,'FINRA_8b7f6bf09f','.png','image/png',3.33,'/uploads/FINRA_8b7f6bf09f.png',NULL,'local',NULL,1,1,'2021-08-07 15:35:44','2021-08-07 15:35:44'),(84,'grand-banner-sp.jpg','','',375,537,'{\"thumbnail\":{\"name\":\"thumbnail_grand-banner-sp.jpg\",\"hash\":\"thumbnail_grand_banner_sp_70c02db35b\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":109,\"height\":156,\"size\":4.4,\"path\":null,\"url\":\"/uploads/thumbnail_grand_banner_sp_70c02db35b.jpg\"},\"small\":{\"name\":\"small_grand-banner-sp.jpg\",\"hash\":\"small_grand_banner_sp_70c02db35b\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":349,\"height\":500,\"size\":28.45,\"path\":null,\"url\":\"/uploads/small_grand_banner_sp_70c02db35b.jpg\"}}','grand_banner_sp_70c02db35b','.jpg','image/jpeg',31.74,'/uploads/grand_banner_sp_70c02db35b.jpg',NULL,'local',NULL,1,1,'2021-08-09 02:34:40','2021-08-09 02:34:40'),(85,'grand-banner.jpg','','',1987,577,'{\"thumbnail\":{\"name\":\"thumbnail_grand-banner.jpg\",\"hash\":\"thumbnail_grand_banner_7350833953\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":245,\"height\":71,\"size\":4.73,\"path\":null,\"url\":\"/uploads/thumbnail_grand_banner_7350833953.jpg\"},\"large\":{\"name\":\"large_grand-banner.jpg\",\"hash\":\"large_grand_banner_7350833953\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":1000,\"height\":290,\"size\":51.03,\"path\":null,\"url\":\"/uploads/large_grand_banner_7350833953.jpg\"},\"medium\":{\"name\":\"medium_grand-banner.jpg\",\"hash\":\"medium_grand_banner_7350833953\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":218,\"size\":31.13,\"path\":null,\"url\":\"/uploads/medium_grand_banner_7350833953.jpg\"},\"small\":{\"name\":\"small_grand-banner.jpg\",\"hash\":\"small_grand_banner_7350833953\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":145,\"size\":16.15,\"path\":null,\"url\":\"/uploads/small_grand_banner_7350833953.jpg\"}}','grand_banner_7350833953','.jpg','image/jpeg',153.12,'/uploads/grand_banner_7350833953.jpg',NULL,'local',NULL,1,1,'2021-08-09 02:34:41','2021-08-09 02:34:41');
/*!40000 ALTER TABLE `upload_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_file_morph`
--

DROP TABLE IF EXISTS `upload_file_morph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upload_file_morph` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `upload_file_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `related_type` longtext DEFAULT NULL,
  `field` longtext DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=309 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file_morph`
--

LOCK TABLES `upload_file_morph` WRITE;
/*!40000 ALTER TABLE `upload_file_morph` DISABLE KEYS */;
INSERT INTO `upload_file_morph` VALUES (2,2,2,'writers','picture',1),(3,3,1,'writers','picture',1),(4,4,1,'articles','image',1),(5,5,2,'articles','image',1),(6,6,3,'articles','image',1),(7,7,4,'articles','image',1),(8,8,5,'articles','image',1),(12,11,3,'writers','picture',1),(21,18,3,'components_shared_seos','shareImage',1),(22,19,2,'globals','favicon',1),(23,20,4,'components_shared_seos','shareImage',1),(28,24,4,'components_question_option_question_options','Image',1),(29,25,5,'components_question_option_question_options','Image',1),(30,26,6,'components_question_option_question_options','Image',1),(31,21,2,'accelerates','Image',1),(39,36,1,'client_words','Image',1),(40,35,2,'client_words','Image',1),(41,36,1,'members','ProfileImage',1),(42,28,1,'members','BrandImage',1),(43,35,2,'members','ProfileImage',1),(44,28,2,'members','BrandImage',1),(45,34,3,'members','ProfileImage',1),(46,28,3,'members','BrandImage',1),(47,39,1,'our_firms','Image',1),(48,38,2,'our_firms','Image',1),(49,37,3,'our_firms','Image',1),(51,40,2,'our_services','Video',1),(52,40,3,'our_services','Video',1),(53,41,1,'processes','Image',1),(54,43,2,'processes','Image',1),(55,42,3,'processes','Image',1),(56,44,1,'services','Image',1),(57,45,2,'services','Image',1),(58,46,3,'services','Image',1),(60,47,1,'statistics','Image',1),(61,47,2,'statistics','Image',1),(62,47,3,'statistics','Image',1),(63,47,4,'statistics','Image',1),(64,46,2,'components_shared_seos','shareImage',1),(65,48,1,'globals','favicon',1),(66,47,5,'statistics','Image',1),(67,47,6,'statistics','Image',1),(76,60,1,'trust_certificates','Image',1),(77,60,2,'trust_certificates','Image',1),(78,60,3,'trust_certificates','Image',1),(79,60,4,'trust_certificates','Image',1),(93,61,1,'insights_pages','BannerDesktop',1),(94,62,1,'insights_pages','BannerMobile',1),(97,64,1,'contact_pages','BannerDesktop',1),(98,65,1,'contact_pages','BannerMobile',1),(102,69,1,'components_sample_plan_sample_plans','Image',1),(103,71,1,'components_sample_plan_sample_plans','File',1),(104,70,1,'business_pages','BannerDesktop',1),(105,68,1,'business_pages','BannerMobile',1),(106,75,1,'sectors','Image',1),(107,72,2,'sectors','Image',1),(108,74,3,'sectors','Image',1),(109,76,4,'sectors','Image',1),(110,78,5,'sectors','Image',1),(111,73,6,'sectors','Image',1),(112,77,7,'sectors','Image',1),(139,24,1,'components_question_option_question_options','Image',1),(140,22,2,'components_question_option_question_options','Image',1),(141,23,3,'components_question_option_question_options','Image',1),(142,21,1,'accelerates','Image',1),(146,40,6,'our_services','Video',1),(148,40,8,'our_services','Video',1),(149,40,9,'our_services','Video',1),(150,40,10,'our_services','Video',1),(153,40,13,'our_services','Video',1),(155,40,14,'our_services','Video',1),(156,40,15,'our_services','Video',1),(160,40,19,'our_services','Video',1),(161,40,20,'our_services','Video',1),(165,12,1,'insights','Image',1),(166,13,2,'insights','Image',1),(191,40,1,'about_pages','EnvironmentVideo',1),(192,67,1,'about_pages','BannerDesktop',1),(193,66,1,'about_pages','BannerMobile',1),(194,13,6,'insights','Image',1),(195,15,5,'insights','Image',1),(196,17,4,'insights','Image',1),(197,14,3,'insights','Image',1),(211,55,1,'components_shared_seos','shareImage',1),(212,55,1,'components_sliders_sliders','Image',1),(213,50,1,'components_sliders_sliders','ImageMobile',1),(214,40,5,'components_sliders_sliders','VideoBanner',1),(215,59,3,'components_sliders_sliders','Image',1),(216,52,3,'components_sliders_sliders','ImageMobile',1),(217,58,2,'components_sliders_sliders','Image',1),(218,49,2,'components_sliders_sliders','ImageMobile',1),(219,56,4,'components_sliders_sliders','Image',1),(220,51,4,'components_sliders_sliders','ImageMobile',1),(221,53,6,'components_sliders_sliders','Image',1),(222,53,6,'components_sliders_sliders','ImageMobile',1),(270,14,5,'pages','FeatureImage',1),(272,83,1,'brands','Logo',1),(273,30,8,'brands','Logo',1),(274,29,7,'brands','Logo',1),(275,32,6,'brands','Logo',1),(276,33,5,'brands','Logo',1),(277,28,4,'brands','Logo',1),(278,31,3,'brands','Logo',1),(279,27,2,'brands','Logo',1),(281,40,17,'our_services','Video',1),(287,40,16,'our_services','Video',1),(288,40,7,'our_services','Video',1),(289,40,18,'our_services','Video',1),(290,40,5,'our_services','Video',1),(291,40,4,'our_services','Video',1),(292,40,11,'our_services','Video',1),(293,40,1,'our_services','Video',1),(294,82,4,'components_sample_plans_sample_plans','Image',1),(295,71,4,'components_sample_plans_sample_plans','File',1),(296,81,3,'components_sample_plans_sample_plans','Image',1),(297,71,3,'components_sample_plans_sample_plans','File',1),(298,80,2,'components_sample_plans_sample_plans','Image',1),(299,71,2,'components_sample_plans_sample_plans','File',1),(300,79,1,'components_sample_plans_sample_plans','Image',1),(301,71,1,'components_sample_plans_sample_plans','File',1),(302,85,1,'grant_pages','BannerDesktop',1),(303,84,1,'grant_pages','BannerMobile',1),(304,2,1,'testimonials','Image',1),(305,35,2,'testimonials','Image',1),(307,3,5,'testimonials','Image',1),(308,34,4,'testimonials','Image',1);
/*!40000 ALTER TABLE `upload_file_morph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_permission`
--

DROP TABLE IF EXISTS `users-permissions_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users-permissions_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=721 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_permission`
--

LOCK TABLES `users-permissions_permission` WRITE;
/*!40000 ALTER TABLE `users-permissions_permission` DISABLE KEYS */;
INSERT INTO `users-permissions_permission` VALUES (25,'application','global','delete',0,'',1,NULL,NULL),(26,'application','global','delete',0,'',2,NULL,NULL),(27,'application','global','find',0,'',1,NULL,NULL),(28,'application','global','find',1,'',2,NULL,NULL),(29,'application','global','update',0,'',1,NULL,NULL),(30,'application','global','update',0,'',2,NULL,NULL),(31,'application','homepage','delete',0,'',1,NULL,NULL),(32,'application','homepage','delete',0,'',2,NULL,NULL),(33,'application','homepage','find',0,'',1,NULL,NULL),(34,'application','homepage','find',1,'',2,NULL,NULL),(35,'application','homepage','update',0,'',1,NULL,NULL),(36,'application','homepage','update',0,'',2,NULL,NULL),(49,'content-manager','collection-types','bulkdelete',0,'',1,NULL,NULL),(50,'content-manager','collection-types','bulkdelete',0,'',2,NULL,NULL),(51,'content-manager','collection-types','create',0,'',1,NULL,NULL),(52,'content-manager','collection-types','create',0,'',2,NULL,NULL),(53,'content-manager','collection-types','delete',0,'',1,NULL,NULL),(54,'content-manager','collection-types','delete',0,'',2,NULL,NULL),(55,'content-manager','collection-types','find',0,'',1,NULL,NULL),(56,'content-manager','collection-types','find',0,'',2,NULL,NULL),(57,'content-manager','collection-types','findone',0,'',1,NULL,NULL),(58,'content-manager','collection-types','findone',0,'',2,NULL,NULL),(59,'content-manager','collection-types','previewmanyrelations',0,'',1,NULL,NULL),(60,'content-manager','collection-types','previewmanyrelations',0,'',2,NULL,NULL),(61,'content-manager','collection-types','publish',0,'',1,NULL,NULL),(62,'content-manager','collection-types','publish',0,'',2,NULL,NULL),(63,'content-manager','collection-types','unpublish',0,'',1,NULL,NULL),(64,'content-manager','collection-types','unpublish',0,'',2,NULL,NULL),(65,'content-manager','collection-types','update',0,'',1,NULL,NULL),(66,'content-manager','collection-types','update',0,'',2,NULL,NULL),(67,'content-manager','components','findcomponentconfiguration',0,'',1,NULL,NULL),(68,'content-manager','components','findcomponentconfiguration',0,'',2,NULL,NULL),(69,'content-manager','components','findcomponents',0,'',1,NULL,NULL),(70,'content-manager','components','findcomponents',0,'',2,NULL,NULL),(71,'content-manager','components','updatecomponentconfiguration',0,'',1,NULL,NULL),(72,'content-manager','components','updatecomponentconfiguration',0,'',2,NULL,NULL),(73,'content-manager','content-types','findcontenttypeconfiguration',0,'',1,NULL,NULL),(74,'content-manager','content-types','findcontenttypeconfiguration',0,'',2,NULL,NULL),(75,'content-manager','content-types','findcontenttypes',0,'',1,NULL,NULL),(76,'content-manager','content-types','findcontenttypes',0,'',2,NULL,NULL),(77,'content-manager','content-types','findcontenttypessettings',0,'',1,NULL,NULL),(78,'content-manager','content-types','findcontenttypessettings',0,'',2,NULL,NULL),(79,'content-manager','content-types','updatecontenttypeconfiguration',0,'',1,NULL,NULL),(80,'content-manager','content-types','updatecontenttypeconfiguration',0,'',2,NULL,NULL),(81,'content-manager','relations','find',0,'',1,NULL,NULL),(82,'content-manager','relations','find',0,'',2,NULL,NULL),(83,'content-manager','single-types','createorupdate',0,'',1,NULL,NULL),(84,'content-manager','single-types','createorupdate',0,'',2,NULL,NULL),(85,'content-manager','single-types','delete',0,'',1,NULL,NULL),(86,'content-manager','single-types','delete',0,'',2,NULL,NULL),(87,'content-manager','single-types','find',0,'',1,NULL,NULL),(88,'content-manager','single-types','find',0,'',2,NULL,NULL),(89,'content-manager','single-types','publish',0,'',1,NULL,NULL),(90,'content-manager','single-types','publish',0,'',2,NULL,NULL),(91,'content-manager','single-types','unpublish',0,'',1,NULL,NULL),(92,'content-manager','single-types','unpublish',0,'',2,NULL,NULL),(93,'content-manager','uid','checkuidavailability',0,'',1,NULL,NULL),(94,'content-manager','uid','checkuidavailability',0,'',2,NULL,NULL),(95,'content-manager','uid','generateuid',0,'',1,NULL,NULL),(96,'content-manager','uid','generateuid',0,'',2,NULL,NULL),(97,'content-type-builder','builder','getreservednames',0,'',1,NULL,NULL),(98,'content-type-builder','builder','getreservednames',0,'',2,NULL,NULL),(99,'content-type-builder','componentcategories','deletecategory',0,'',1,NULL,NULL),(100,'content-type-builder','componentcategories','deletecategory',0,'',2,NULL,NULL),(101,'content-type-builder','componentcategories','editcategory',0,'',1,NULL,NULL),(102,'content-type-builder','componentcategories','editcategory',0,'',2,NULL,NULL),(103,'content-type-builder','components','createcomponent',0,'',1,NULL,NULL),(104,'content-type-builder','components','createcomponent',0,'',2,NULL,NULL),(105,'content-type-builder','components','deletecomponent',0,'',1,NULL,NULL),(106,'content-type-builder','components','deletecomponent',0,'',2,NULL,NULL),(107,'content-type-builder','components','getcomponent',0,'',1,NULL,NULL),(108,'content-type-builder','components','getcomponent',0,'',2,NULL,NULL),(109,'content-type-builder','components','getcomponents',0,'',1,NULL,NULL),(110,'content-type-builder','components','getcomponents',0,'',2,NULL,NULL),(111,'content-type-builder','components','updatecomponent',0,'',1,NULL,NULL),(112,'content-type-builder','components','updatecomponent',0,'',2,NULL,NULL),(113,'content-type-builder','connections','getconnections',0,'',1,NULL,NULL),(114,'content-type-builder','connections','getconnections',0,'',2,NULL,NULL),(115,'content-type-builder','contenttypes','createcontenttype',0,'',1,NULL,NULL),(116,'content-type-builder','contenttypes','createcontenttype',0,'',2,NULL,NULL),(117,'content-type-builder','contenttypes','deletecontenttype',0,'',1,NULL,NULL),(118,'content-type-builder','contenttypes','deletecontenttype',0,'',2,NULL,NULL),(119,'content-type-builder','contenttypes','getcontenttype',0,'',1,NULL,NULL),(120,'content-type-builder','contenttypes','getcontenttype',0,'',2,NULL,NULL),(121,'content-type-builder','contenttypes','getcontenttypes',0,'',1,NULL,NULL),(122,'content-type-builder','contenttypes','getcontenttypes',0,'',2,NULL,NULL),(123,'content-type-builder','contenttypes','updatecontenttype',0,'',1,NULL,NULL),(124,'content-type-builder','contenttypes','updatecontenttype',0,'',2,NULL,NULL),(125,'email','email','getsettings',0,'',1,NULL,NULL),(126,'email','email','getsettings',0,'',2,NULL,NULL),(127,'email','email','send',0,'',1,NULL,NULL),(128,'email','email','send',0,'',2,NULL,NULL),(129,'email','email','test',0,'',1,NULL,NULL),(130,'email','email','test',0,'',2,NULL,NULL),(131,'i18n','content-types','getnonlocalizedattributes',0,'',1,NULL,NULL),(132,'i18n','content-types','getnonlocalizedattributes',0,'',2,NULL,NULL),(133,'i18n','iso-locales','listisolocales',0,'',1,NULL,NULL),(134,'i18n','iso-locales','listisolocales',0,'',2,NULL,NULL),(135,'i18n','locales','createlocale',0,'',1,NULL,NULL),(136,'i18n','locales','createlocale',0,'',2,NULL,NULL),(137,'i18n','locales','deletelocale',0,'',1,NULL,NULL),(138,'i18n','locales','deletelocale',0,'',2,NULL,NULL),(139,'i18n','locales','listlocales',0,'',1,NULL,NULL),(140,'i18n','locales','listlocales',0,'',2,NULL,NULL),(141,'i18n','locales','updatelocale',0,'',1,NULL,NULL),(142,'upload','upload','count',0,'',1,NULL,NULL),(143,'upload','upload','count',0,'',2,NULL,NULL),(144,'upload','upload','destroy',0,'',1,NULL,NULL),(145,'upload','upload','destroy',0,'',2,NULL,NULL),(146,'upload','upload','find',0,'',1,NULL,NULL),(147,'upload','upload','find',0,'',2,NULL,NULL),(148,'i18n','locales','updatelocale',0,'',2,NULL,NULL),(149,'upload','upload','findone',0,'',1,NULL,NULL),(150,'upload','upload','findone',0,'',2,NULL,NULL),(151,'upload','upload','getsettings',0,'',1,NULL,NULL),(152,'upload','upload','getsettings',0,'',2,NULL,NULL),(153,'upload','upload','search',0,'',1,NULL,NULL),(154,'upload','upload','search',0,'',2,NULL,NULL),(155,'upload','upload','updatesettings',0,'',2,NULL,NULL),(156,'upload','upload','upload',0,'',1,NULL,NULL),(157,'upload','upload','upload',0,'',2,NULL,NULL),(158,'users-permissions','auth','callback',0,'',1,NULL,NULL),(159,'users-permissions','auth','callback',1,'',2,NULL,NULL),(160,'upload','upload','updatesettings',0,'',1,NULL,NULL),(161,'users-permissions','auth','connect',1,'',1,NULL,NULL),(162,'users-permissions','auth','connect',1,'',2,NULL,NULL),(163,'users-permissions','auth','emailconfirmation',0,'',1,NULL,NULL),(164,'users-permissions','auth','emailconfirmation',1,'',2,NULL,NULL),(165,'users-permissions','auth','forgotpassword',0,'',1,NULL,NULL),(166,'users-permissions','auth','forgotpassword',1,'',2,NULL,NULL),(167,'users-permissions','auth','register',0,'',1,NULL,NULL),(168,'users-permissions','auth','register',1,'',2,NULL,NULL),(169,'users-permissions','auth','resetpassword',0,'',1,NULL,NULL),(170,'users-permissions','auth','resetpassword',1,'',2,NULL,NULL),(171,'users-permissions','auth','sendemailconfirmation',0,'',1,NULL,NULL),(172,'users-permissions','auth','sendemailconfirmation',0,'',2,NULL,NULL),(173,'users-permissions','user','count',0,'',1,NULL,NULL),(174,'users-permissions','user','count',0,'',2,NULL,NULL),(175,'users-permissions','user','create',0,'',1,NULL,NULL),(176,'users-permissions','user','create',0,'',2,NULL,NULL),(177,'users-permissions','user','destroy',0,'',1,NULL,NULL),(178,'users-permissions','user','destroy',0,'',2,NULL,NULL),(179,'users-permissions','user','destroyall',0,'',1,NULL,NULL),(180,'users-permissions','user','destroyall',0,'',2,NULL,NULL),(181,'users-permissions','user','find',0,'',1,NULL,NULL),(182,'users-permissions','user','find',0,'',2,NULL,NULL),(183,'users-permissions','user','findone',0,'',1,NULL,NULL),(184,'users-permissions','user','findone',0,'',2,NULL,NULL),(185,'users-permissions','user','me',1,'',1,NULL,NULL),(186,'users-permissions','user','me',1,'',2,NULL,NULL),(187,'users-permissions','user','update',0,'',1,NULL,NULL),(188,'users-permissions','user','update',0,'',2,NULL,NULL),(189,'users-permissions','userspermissions','createrole',0,'',1,NULL,NULL),(190,'users-permissions','userspermissions','createrole',0,'',2,NULL,NULL),(191,'users-permissions','userspermissions','deleterole',0,'',1,NULL,NULL),(192,'users-permissions','userspermissions','deleterole',0,'',2,NULL,NULL),(193,'users-permissions','userspermissions','getadvancedsettings',0,'',1,NULL,NULL),(194,'users-permissions','userspermissions','getadvancedsettings',0,'',2,NULL,NULL),(195,'users-permissions','userspermissions','getemailtemplate',0,'',1,NULL,NULL),(196,'users-permissions','userspermissions','getemailtemplate',0,'',2,NULL,NULL),(197,'users-permissions','userspermissions','getpermissions',0,'',1,NULL,NULL),(198,'users-permissions','userspermissions','getpermissions',0,'',2,NULL,NULL),(199,'users-permissions','userspermissions','getpolicies',0,'',1,NULL,NULL),(200,'users-permissions','userspermissions','getpolicies',0,'',2,NULL,NULL),(201,'users-permissions','userspermissions','getproviders',0,'',1,NULL,NULL),(202,'users-permissions','userspermissions','getproviders',0,'',2,NULL,NULL),(203,'users-permissions','userspermissions','getrole',0,'',1,NULL,NULL),(204,'users-permissions','userspermissions','getrole',0,'',2,NULL,NULL),(205,'users-permissions','userspermissions','getroles',0,'',1,NULL,NULL),(206,'users-permissions','userspermissions','getroles',0,'',2,NULL,NULL),(207,'users-permissions','userspermissions','getroutes',0,'',1,NULL,NULL),(208,'users-permissions','userspermissions','getroutes',0,'',2,NULL,NULL),(209,'users-permissions','userspermissions','index',0,'',1,NULL,NULL),(210,'users-permissions','userspermissions','index',0,'',2,NULL,NULL),(211,'users-permissions','userspermissions','searchusers',0,'',1,NULL,NULL),(212,'users-permissions','userspermissions','searchusers',0,'',2,NULL,NULL),(213,'users-permissions','userspermissions','updateadvancedsettings',0,'',1,NULL,NULL),(214,'users-permissions','userspermissions','updateadvancedsettings',0,'',2,NULL,NULL),(215,'users-permissions','userspermissions','updateemailtemplate',0,'',2,NULL,NULL),(216,'users-permissions','userspermissions','updateproviders',0,'',1,NULL,NULL),(217,'users-permissions','userspermissions','updateemailtemplate',0,'',1,NULL,NULL),(218,'users-permissions','userspermissions','updateproviders',0,'',2,NULL,NULL),(219,'users-permissions','userspermissions','updaterole',0,'',1,NULL,NULL),(220,'users-permissions','userspermissions','updaterole',0,'',2,NULL,NULL),(299,'application','contact-entries','count',0,'',2,NULL,NULL),(300,'application','contact-entries','count',0,'',1,NULL,NULL),(301,'application','contact-entries','create',0,'',1,NULL,NULL),(302,'application','contact-entries','create',1,'',2,NULL,NULL),(303,'application','contact-entries','delete',0,'',1,NULL,NULL),(304,'application','contact-entries','delete',0,'',2,NULL,NULL),(305,'application','contact-entries','find',0,'',1,NULL,NULL),(306,'application','contact-entries','find',0,'',2,NULL,NULL),(307,'application','contact-entries','findone',0,'',1,NULL,NULL),(308,'application','contact-entries','findone',0,'',2,NULL,NULL),(309,'application','contact-entries','update',0,'',2,NULL,NULL),(310,'application','contact-form','delete',0,'',1,NULL,NULL),(311,'application','contact-form','delete',0,'',2,NULL,NULL),(312,'application','contact-entries','update',0,'',1,NULL,NULL),(313,'application','contact-form','find',0,'',1,NULL,NULL),(314,'application','contact-form','find',1,'',2,NULL,NULL),(315,'application','contact-form','update',0,'',1,NULL,NULL),(316,'application','contact-form','update',0,'',2,NULL,NULL),(329,'application','insights','create',0,'',1,NULL,NULL),(330,'application','insights','count',0,'',1,NULL,NULL),(331,'application','insights','delete',0,'',1,NULL,NULL),(332,'application','insights','delete',0,'',2,NULL,NULL),(333,'application','insights','find',0,'',1,NULL,NULL),(334,'application','insights','find',1,'',2,NULL,NULL),(335,'application','insights','create',0,'',2,NULL,NULL),(336,'application','insights','count',1,'',2,NULL,NULL),(337,'application','insights','findone',0,'',1,NULL,NULL),(338,'application','insights','findone',1,'',2,NULL,NULL),(339,'application','insights','update',0,'',1,NULL,NULL),(340,'application','insights','update',0,'',2,NULL,NULL),(341,'application','testimonials','count',0,'',1,NULL,NULL),(342,'application','testimonials','count',1,'',2,NULL,NULL),(343,'application','testimonials','create',0,'',1,NULL,NULL),(344,'application','testimonials','create',0,'',2,NULL,NULL),(345,'application','testimonials','delete',0,'',2,NULL,NULL),(346,'application','testimonials','delete',0,'',1,NULL,NULL),(347,'application','testimonials','find',0,'',1,NULL,NULL),(348,'application','testimonials','find',1,'',2,NULL,NULL),(349,'application','testimonials','findone',0,'',1,NULL,NULL),(350,'application','testimonials','findone',1,'',2,NULL,NULL),(351,'application','testimonials','update',0,'',1,NULL,NULL),(352,'application','testimonials','update',0,'',2,NULL,NULL),(377,'application','menu','create',0,'',2,NULL,NULL),(378,'application','menu','create',0,'',1,NULL,NULL),(379,'application','menu','count',1,'',2,NULL,NULL),(380,'application','menu','count',0,'',1,NULL,NULL),(381,'application','menu','delete',0,'',1,NULL,NULL),(382,'application','menu','delete',0,'',2,NULL,NULL),(383,'application','menu','find',0,'',1,NULL,NULL),(384,'application','menu','find',1,'',2,NULL,NULL),(385,'application','menu','findone',0,'',1,NULL,NULL),(386,'application','menu','findone',1,'',2,NULL,NULL),(387,'application','menu','update',0,'',2,NULL,NULL),(388,'application','sub-menu','count',0,'',1,NULL,NULL),(389,'application','sub-menu','count',1,'',2,NULL,NULL),(390,'application','sub-menu','create',0,'',1,NULL,NULL),(391,'application','menu','update',0,'',1,NULL,NULL),(392,'application','sub-menu','create',0,'',2,NULL,NULL),(393,'application','sub-menu','delete',0,'',1,NULL,NULL),(394,'application','sub-menu','delete',0,'',2,NULL,NULL),(395,'application','sub-menu','find',0,'',1,NULL,NULL),(396,'application','sub-menu','find',1,'',2,NULL,NULL),(397,'application','sub-menu','findone',0,'',1,NULL,NULL),(398,'application','sub-menu','findone',1,'',2,NULL,NULL),(399,'application','sub-menu','update',0,'',1,NULL,NULL),(400,'application','sub-menu','update',0,'',2,NULL,NULL),(401,'application','about-page','find',0,'',1,NULL,NULL),(402,'application','about-page','delete',0,'',1,NULL,NULL),(403,'application','about-page','find',1,'',2,NULL,NULL),(404,'application','about-page','update',0,'',1,NULL,NULL),(405,'application','about-page','update',0,'',2,NULL,NULL),(406,'application','accelerate-entries','count',0,'',1,NULL,NULL),(407,'application','about-page','delete',0,'',2,NULL,NULL),(408,'application','accelerate-entries','count',0,'',2,NULL,NULL),(409,'application','accelerate-entries','create',0,'',1,NULL,NULL),(410,'application','accelerate-entries','create',1,'',2,NULL,NULL),(411,'application','accelerate-entries','delete',0,'',1,NULL,NULL),(412,'application','accelerate-entries','delete',0,'',2,NULL,NULL),(413,'application','accelerate-entries','find',0,'',1,NULL,NULL),(414,'application','accelerate-entries','find',0,'',2,NULL,NULL),(415,'application','accelerate-entries','findone',0,'',1,NULL,NULL),(416,'application','accelerate-entries','findone',0,'',2,NULL,NULL),(417,'application','accelerate-entries','update',0,'',1,NULL,NULL),(418,'application','accelerate-entries','update',0,'',2,NULL,NULL),(419,'application','accelerates','count',0,'',1,NULL,NULL),(420,'application','accelerates','count',1,'',2,NULL,NULL),(421,'application','accelerates','create',0,'',1,NULL,NULL),(422,'application','accelerates','create',0,'',2,NULL,NULL),(423,'application','accelerates','delete',0,'',1,NULL,NULL),(424,'application','accelerates','delete',0,'',2,NULL,NULL),(425,'application','accelerates','find',0,'',1,NULL,NULL),(426,'application','accelerates','find',1,'',2,NULL,NULL),(427,'application','accelerates','findone',0,'',1,NULL,NULL),(428,'application','accelerates','findone',1,'',2,NULL,NULL),(429,'application','accelerates','update',0,'',1,NULL,NULL),(430,'application','accelerates','update',0,'',2,NULL,NULL),(431,'application','brands','count',0,'',1,NULL,NULL),(432,'application','brands','count',1,'',2,NULL,NULL),(433,'application','brands','create',0,'',1,NULL,NULL),(434,'application','brands','create',0,'',2,NULL,NULL),(435,'application','brands','delete',0,'',1,NULL,NULL),(436,'application','brands','delete',0,'',2,NULL,NULL),(437,'application','brands','find',0,'',1,NULL,NULL),(438,'application','brands','find',1,'',2,NULL,NULL),(439,'application','brands','findone',0,'',1,NULL,NULL),(440,'application','brands','findone',1,'',2,NULL,NULL),(441,'application','brands','update',0,'',1,NULL,NULL),(442,'application','brands','update',0,'',2,NULL,NULL),(443,'application','business-page','delete',0,'',1,NULL,NULL),(444,'application','business-page','delete',0,'',2,NULL,NULL),(445,'application','business-page','find',0,'',1,NULL,NULL),(446,'application','business-page','find',1,'',2,NULL,NULL),(447,'application','business-page','update',0,'',1,NULL,NULL),(448,'application','business-page','update',0,'',2,NULL,NULL),(449,'application','client-words','count',0,'',1,NULL,NULL),(450,'application','client-words','count',1,'',2,NULL,NULL),(451,'application','client-words','create',0,'',1,NULL,NULL),(452,'application','client-words','create',0,'',2,NULL,NULL),(453,'application','client-words','delete',0,'',1,NULL,NULL),(454,'application','client-words','delete',0,'',2,NULL,NULL),(455,'application','client-words','find',0,'',1,NULL,NULL),(456,'application','client-words','find',1,'',2,NULL,NULL),(457,'application','client-words','findone',0,'',1,NULL,NULL),(458,'application','client-words','findone',1,'',2,NULL,NULL),(459,'application','client-words','update',0,'',1,NULL,NULL),(460,'application','client-words','update',0,'',2,NULL,NULL),(461,'application','contact-page','delete',0,'',1,NULL,NULL),(462,'application','contact-page','delete',0,'',2,NULL,NULL),(463,'application','contact-page','find',0,'',1,NULL,NULL),(464,'application','contact-page','find',1,'',2,NULL,NULL),(465,'application','contact-page','update',0,'',1,NULL,NULL),(466,'application','contact-page','update',0,'',2,NULL,NULL),(467,'application','core-values','count',0,'',1,NULL,NULL),(468,'application','core-values','count',1,'',2,NULL,NULL),(469,'application','core-values','create',0,'',1,NULL,NULL),(470,'application','core-values','create',0,'',2,NULL,NULL),(471,'application','core-values','delete',0,'',1,NULL,NULL),(472,'application','core-values','delete',0,'',2,NULL,NULL),(473,'application','core-values','find',0,'',1,NULL,NULL),(474,'application','core-values','find',1,'',2,NULL,NULL),(475,'application','core-values','findone',0,'',1,NULL,NULL),(476,'application','core-values','findone',1,'',2,NULL,NULL),(477,'application','core-values','update',0,'',1,NULL,NULL),(478,'application','core-values','update',0,'',2,NULL,NULL),(479,'application','faq','count',0,'',1,NULL,NULL),(480,'application','faq','count',1,'',2,NULL,NULL),(481,'application','faq','create',0,'',1,NULL,NULL),(482,'application','faq','create',0,'',2,NULL,NULL),(483,'application','faq','delete',0,'',1,NULL,NULL),(484,'application','faq','delete',0,'',2,NULL,NULL),(485,'application','faq','find',0,'',1,NULL,NULL),(486,'application','faq','find',1,'',2,NULL,NULL),(487,'application','faq','findone',0,'',1,NULL,NULL),(488,'application','faq','findone',1,'',2,NULL,NULL),(489,'application','faq','update',0,'',1,NULL,NULL),(490,'application','faq','update',0,'',2,NULL,NULL),(491,'application','grant-page','delete',0,'',1,NULL,NULL),(492,'application','grant-page','delete',0,'',2,NULL,NULL),(493,'application','grant-page','find',0,'',1,NULL,NULL),(494,'application','grant-page','find',1,'',2,NULL,NULL),(495,'application','grant-page','update',0,'',1,NULL,NULL),(496,'application','grant-page','update',0,'',2,NULL,NULL),(497,'application','insights-page','delete',0,'',1,NULL,NULL),(498,'application','insights-page','delete',0,'',2,NULL,NULL),(499,'application','insights-page','find',0,'',1,NULL,NULL),(500,'application','insights-page','find',1,'',2,NULL,NULL),(501,'application','insights-page','update',0,'',1,NULL,NULL),(502,'application','insights-page','update',0,'',2,NULL,NULL),(503,'application','members','count',0,'',1,NULL,NULL),(504,'application','members','count',1,'',2,NULL,NULL),(505,'application','members','create',0,'',1,NULL,NULL),(506,'application','members','create',0,'',2,NULL,NULL),(507,'application','members','delete',0,'',1,NULL,NULL),(508,'application','members','delete',0,'',2,NULL,NULL),(509,'application','members','find',0,'',1,NULL,NULL),(510,'application','members','find',1,'',2,NULL,NULL),(511,'application','members','findone',0,'',1,NULL,NULL),(512,'application','members','findone',1,'',2,NULL,NULL),(513,'application','members','update',0,'',1,NULL,NULL),(514,'application','members','update',0,'',2,NULL,NULL),(515,'application','our-firms','count',0,'',1,NULL,NULL),(516,'application','our-firms','count',1,'',2,NULL,NULL),(517,'application','our-firms','create',0,'',1,NULL,NULL),(518,'application','our-firms','create',0,'',2,NULL,NULL),(519,'application','our-firms','delete',0,'',1,NULL,NULL),(520,'application','our-firms','delete',0,'',2,NULL,NULL),(521,'application','our-firms','find',0,'',1,NULL,NULL),(522,'application','our-firms','find',1,'',2,NULL,NULL),(523,'application','our-firms','findone',0,'',1,NULL,NULL),(524,'application','our-firms','findone',1,'',2,NULL,NULL),(525,'application','our-firms','update',0,'',1,NULL,NULL),(526,'application','our-firms','update',0,'',2,NULL,NULL),(527,'application','our-services','count',0,'',1,NULL,NULL),(528,'application','our-services','count',1,'',2,NULL,NULL),(529,'application','our-services','create',0,'',1,NULL,NULL),(530,'application','our-services','create',0,'',2,NULL,NULL),(531,'application','our-services','delete',0,'',1,NULL,NULL),(532,'application','our-services','delete',0,'',2,NULL,NULL),(533,'application','our-services','find',0,'',1,NULL,NULL),(534,'application','our-services','find',1,'',2,NULL,NULL),(535,'application','our-services','findone',0,'',1,NULL,NULL),(536,'application','our-services','findone',1,'',2,NULL,NULL),(537,'application','our-services','update',0,'',1,NULL,NULL),(538,'application','our-services','update',0,'',2,NULL,NULL),(539,'application','processes','count',0,'',1,NULL,NULL),(540,'application','processes','count',1,'',2,NULL,NULL),(541,'application','processes','create',0,'',1,NULL,NULL),(542,'application','processes','create',0,'',2,NULL,NULL),(543,'application','processes','delete',0,'',1,NULL,NULL),(544,'application','processes','delete',0,'',2,NULL,NULL),(545,'application','processes','find',0,'',1,NULL,NULL),(546,'application','processes','find',1,'',2,NULL,NULL),(547,'application','processes','update',0,'',1,NULL,NULL),(548,'application','processes','findone',1,'',2,NULL,NULL),(549,'application','processes','findone',0,'',1,NULL,NULL),(550,'application','processes','update',0,'',2,NULL,NULL),(551,'application','services','count',0,'',1,NULL,NULL),(552,'application','services','count',1,'',2,NULL,NULL),(553,'application','services','create',0,'',1,NULL,NULL),(554,'application','services','create',0,'',2,NULL,NULL),(555,'application','services','delete',0,'',1,NULL,NULL),(556,'application','services','delete',0,'',2,NULL,NULL),(557,'application','services','find',0,'',1,NULL,NULL),(558,'application','services','find',1,'',2,NULL,NULL),(559,'application','services','findone',0,'',1,NULL,NULL),(560,'application','services','findone',1,'',2,NULL,NULL),(561,'application','services','update',0,'',1,NULL,NULL),(562,'application','services','update',0,'',2,NULL,NULL),(563,'application','statistics','count',0,'',1,NULL,NULL),(564,'application','statistics','count',1,'',2,NULL,NULL),(565,'application','statistics','create',0,'',1,NULL,NULL),(566,'application','statistics','create',0,'',2,NULL,NULL),(567,'application','statistics','delete',0,'',1,NULL,NULL),(568,'application','statistics','delete',0,'',2,NULL,NULL),(569,'application','statistics','find',0,'',1,NULL,NULL),(570,'application','statistics','find',1,'',2,NULL,NULL),(571,'application','statistics','findone',0,'',1,NULL,NULL),(572,'application','statistics','findone',1,'',2,NULL,NULL),(573,'application','statistics','update',0,'',1,NULL,NULL),(574,'application','statistics','update',0,'',2,NULL,NULL),(575,'application','trust-certificates','count',0,'',1,NULL,NULL),(576,'application','trust-certificates','count',1,'',2,NULL,NULL),(577,'application','trust-certificates','create',0,'',1,NULL,NULL),(578,'application','trust-certificates','create',0,'',2,NULL,NULL),(579,'application','trust-certificates','delete',0,'',1,NULL,NULL),(580,'application','trust-certificates','delete',0,'',2,NULL,NULL),(581,'application','trust-certificates','find',0,'',1,NULL,NULL),(582,'application','trust-certificates','find',1,'',2,NULL,NULL),(583,'application','trust-certificates','findone',0,'',1,NULL,NULL),(584,'application','trust-certificates','findone',1,'',2,NULL,NULL),(585,'application','trust-certificates','update',0,'',1,NULL,NULL),(586,'application','trust-certificates','update',0,'',2,NULL,NULL),(587,'application','sectors','count',0,'',1,NULL,NULL),(588,'application','sectors','count',1,'',2,NULL,NULL),(589,'application','sectors','create',0,'',1,NULL,NULL),(590,'application','sectors','delete',0,'',1,NULL,NULL),(591,'application','sectors','create',0,'',2,NULL,NULL),(592,'application','sectors','delete',0,'',2,NULL,NULL),(593,'application','sectors','find',0,'',1,NULL,NULL),(594,'application','sectors','findone',0,'',1,NULL,NULL),(595,'application','sectors','find',1,'',2,NULL,NULL),(596,'application','sectors','findone',1,'',2,NULL,NULL),(597,'application','sectors','update',0,'',1,NULL,NULL),(598,'application','sectors','update',0,'',2,NULL,NULL),(599,'application','insight-categories','count',0,'',1,NULL,NULL),(600,'application','insight-categories','count',1,'',2,NULL,NULL),(601,'application','insight-categories','create',0,'',1,NULL,NULL),(602,'application','insight-categories','create',0,'',2,NULL,NULL),(603,'application','insight-categories','delete',0,'',1,NULL,NULL),(604,'application','insight-categories','delete',0,'',2,NULL,NULL),(605,'application','insight-categories','find',0,'',1,NULL,NULL),(606,'application','insight-categories','find',1,'',2,NULL,NULL),(607,'application','insight-categories','findone',0,'',1,NULL,NULL),(608,'application','insight-categories','findone',1,'',2,NULL,NULL),(609,'application','insight-categories','update',0,'',1,NULL,NULL),(610,'application','insight-categories','update',0,'',2,NULL,NULL),(611,'application','pages','count',0,'',1,NULL,NULL),(612,'application','pages','count',1,'',2,NULL,NULL),(613,'application','pages','create',0,'',1,NULL,NULL),(614,'application','pages','create',0,'',2,NULL,NULL),(615,'application','pages','delete',0,'',1,NULL,NULL),(616,'application','pages','delete',0,'',2,NULL,NULL),(617,'application','pages','find',0,'',1,NULL,NULL),(618,'application','pages','find',1,'',2,NULL,NULL),(619,'application','pages','findone',0,'',1,NULL,NULL),(620,'application','pages','findone',1,'',2,NULL,NULL),(621,'application','pages','update',0,'',1,NULL,NULL),(622,'application','pages','update',0,'',2,NULL,NULL),(623,'application','search-entries','count',0,'',1,NULL,NULL),(624,'application','search-entries','count',1,'',2,NULL,NULL),(625,'application','search-entries','create',0,'',1,NULL,NULL),(626,'application','search-entries','create',1,'',2,NULL,NULL),(627,'application','search-entries','delete',0,'',1,NULL,NULL),(628,'application','search-entries','delete',0,'',2,NULL,NULL),(629,'application','search-entries','find',0,'',1,NULL,NULL),(630,'application','search-entries','find',1,'',2,NULL,NULL),(631,'application','search-entries','findone',0,'',1,NULL,NULL),(632,'application','search-entries','findone',1,'',2,NULL,NULL),(633,'application','search-entries','update',0,'',1,NULL,NULL),(634,'application','search-entries','update',0,'',2,NULL,NULL),(671,'application','popup','find',1,'',2,NULL,NULL),(672,'application','popup','find',0,'',1,NULL,NULL),(673,'application','popup','delete',0,'',2,NULL,NULL),(674,'application','popup','delete',0,'',1,NULL,NULL),(675,'application','popup','update',0,'',1,NULL,NULL),(676,'application','popup','update',0,'',2,NULL,NULL),(677,'application','consultation-entries','create',0,'',1,NULL,NULL),(678,'application','consultation-entries','count',0,'',2,NULL,NULL),(679,'application','consultation-entries','count',0,'',1,NULL,NULL),(680,'application','consultation-entries','create',1,'',2,NULL,NULL),(681,'application','consultation-entries','delete',0,'',1,NULL,NULL),(682,'application','consultation-entries','delete',0,'',2,NULL,NULL),(683,'application','consultation-entries','find',0,'',1,NULL,NULL),(684,'application','consultation-entries','find',0,'',2,NULL,NULL),(685,'application','consultation-entries','findone',0,'',1,NULL,NULL),(686,'application','consultation-entries','findone',0,'',2,NULL,NULL),(687,'application','consultation-entries','update',0,'',1,NULL,NULL),(688,'application','consultation-entries','update',0,'',2,NULL,NULL),(689,'application','package-entries','create',0,'',1,NULL,NULL),(690,'application','package-entries','count',0,'',2,NULL,NULL),(691,'application','package-entries','count',0,'',1,NULL,NULL),(692,'application','package-entries','create',0,'',2,NULL,NULL),(693,'application','package-entries','delete',0,'',1,NULL,NULL),(694,'application','package-entries','delete',0,'',2,NULL,NULL),(695,'application','package-entries','find',0,'',1,NULL,NULL),(696,'application','package-entries','find',0,'',2,NULL,NULL),(697,'application','package-entries','findone',0,'',1,NULL,NULL),(698,'application','package-entries','findone',0,'',2,NULL,NULL),(699,'application','package-entries','update',0,'',1,NULL,NULL),(700,'application','package-entries','update',0,'',2,NULL,NULL),(701,'application','packages','count',0,'',1,NULL,NULL),(702,'application','packages','count',0,'',2,NULL,NULL),(703,'application','packages','create',0,'',1,NULL,NULL),(704,'application','packages','create',0,'',2,NULL,NULL),(705,'application','packages','delete',0,'',1,NULL,NULL),(706,'application','packages','delete',0,'',2,NULL,NULL),(707,'application','packages','find',0,'',1,NULL,NULL),(708,'application','packages','find',0,'',2,NULL,NULL),(709,'application','packages','findone',0,'',1,NULL,NULL),(710,'application','packages','findone',0,'',2,NULL,NULL),(711,'application','packages','update',0,'',1,NULL,NULL),(712,'application','packages','update',0,'',2,NULL,NULL),(713,'application','payment','createpaymentintent',0,'',1,NULL,NULL),(714,'application','payment','createpaymentintent',0,'',2,NULL,NULL),(715,'application','payment','delete',0,'',1,NULL,NULL),(716,'application','payment','delete',0,'',2,NULL,NULL),(717,'application','payment','find',0,'',1,NULL,NULL),(718,'application','payment','find',0,'',2,NULL,NULL),(719,'application','payment','update',0,'',1,NULL,NULL),(720,'application','payment','update',0,'',2,NULL,NULL);
/*!40000 ALTER TABLE `users-permissions_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_role`
--

DROP TABLE IF EXISTS `users-permissions_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users-permissions_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_role_type_unique` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_role`
--

LOCK TABLES `users-permissions_role` WRITE;
/*!40000 ALTER TABLE `users-permissions_role` DISABLE KEYS */;
INSERT INTO `users-permissions_role` VALUES (1,'Authenticated','Default role given to authenticated user.','authenticated',NULL,NULL),(2,'Public','Default role given to unauthenticated user.','public',NULL,NULL);
/*!40000 ALTER TABLE `users-permissions_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_user`
--

DROP TABLE IF EXISTS `users-permissions_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users-permissions_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmationToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_user_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_user`
--

LOCK TABLES `users-permissions_user` WRITE;
/*!40000 ALTER TABLE `users-permissions_user` DISABLE KEYS */;
INSERT INTO `users-permissions_user` VALUES (1,'jonhdoe','johndoe@gmail.com','local','$2a$10$9DHcCLoxDlW/A259RBkYg.3I51w9XOQGKyNurQZWBgq6ejFMHwMGe',NULL,NULL,0,0,1,1,1,'2021-06-22 16:04:43','2021-06-22 16:04:43');
/*!40000 ALTER TABLE `users-permissions_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `writers`
--

DROP TABLE IF EXISTS `writers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `writers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `writers`
--

LOCK TABLES `writers` WRITE;
/*!40000 ALTER TABLE `writers` DISABLE KEYS */;
INSERT INTO `writers` VALUES (1,'Sarah Baker','sarahbaker@strapi.io',NULL,NULL,'2021-06-21 15:07:45','2021-06-21 15:07:45'),(2,'David Doe','daviddoe@strapi.io',NULL,NULL,'2021-06-21 15:07:45','2021-06-21 15:07:45'),(3,'Vic Cheng','chenglong2208@gmail.com',1,1,'2021-06-23 08:51:24','2021-06-23 08:51:24');
/*!40000 ALTER TABLE `writers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-17 17:53:03
