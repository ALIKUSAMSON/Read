-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: SomaFoundation
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.17.10.1

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
-- Table structure for table `academic_info`
--

DROP TABLE IF EXISTS `academic_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `academic_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(120) DEFAULT NULL,
  `year_of_exam` varchar(120) DEFAULT NULL,
  `school_name` varchar(225) DEFAULT NULL,
  `school_location` varchar(120) DEFAULT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `personal_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contact_id` (`contact_id`),
  KEY `personal_id` (`personal_id`),
  KEY `ix_academic_info_email` (`email`),
  KEY `ix_academic_info_school_name` (`school_name`),
  KEY `ix_academic_info_school_location` (`school_location`),
  KEY `ix_academic_info_year_of_exam` (`year_of_exam`),
  CONSTRAINT `academic_info_ibfk_1` FOREIGN KEY (`contact_id`) REFERENCES `contact_info` (`id`),
  CONSTRAINT `academic_info_ibfk_2` FOREIGN KEY (`personal_id`) REFERENCES `personal_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic_info`
--

LOCK TABLES `academic_info` WRITE;
/*!40000 ALTER TABLE `academic_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `academic_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `birth_certificates`
--

DROP TABLE IF EXISTS `birth_certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `birth_certificates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upload` varchar(255) DEFAULT NULL,
  `academic_id` int(11) DEFAULT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `personal_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `academic_id` (`academic_id`),
  KEY `contact_id` (`contact_id`),
  KEY `personal_id` (`personal_id`),
  CONSTRAINT `birth_certificates_ibfk_1` FOREIGN KEY (`academic_id`) REFERENCES `academic_info` (`id`),
  CONSTRAINT `birth_certificates_ibfk_2` FOREIGN KEY (`contact_id`) REFERENCES `contact_info` (`id`),
  CONSTRAINT `birth_certificates_ibfk_3` FOREIGN KEY (`personal_id`) REFERENCES `personal_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `birth_certificates`
--

LOCK TABLES `birth_certificates` WRITE;
/*!40000 ALTER TABLE `birth_certificates` DISABLE KEYS */;
/*!40000 ALTER TABLE `birth_certificates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_info`
--

DROP TABLE IF EXISTS `contact_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `applicant_tele_numb` varchar(120) DEFAULT NULL,
  `permanent_email` varchar(120) DEFAULT NULL,
  `gurdian` varchar(120) DEFAULT NULL,
  `gurd_tele_numb` varchar(120) DEFAULT NULL,
  `mother` varchar(225) DEFAULT NULL,
  `moth_tele_numb` varchar(120) DEFAULT NULL,
  `father` varchar(120) DEFAULT NULL,
  `fath_tele_numb` varchar(120) DEFAULT NULL,
  `former_school_numb` varchar(120) DEFAULT NULL,
  `former_school_email` varchar(120) DEFAULT NULL,
  `related_person` varchar(225) DEFAULT NULL,
  `relationship` varchar(120) DEFAULT NULL,
  `country_of_residence` varchar(225) DEFAULT NULL,
  `contact_email` varchar(120) DEFAULT NULL,
  `contact_numb` varchar(225) DEFAULT NULL,
  `personal_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `personal_id` (`personal_id`),
  KEY `ix_contact_info_related_person` (`related_person`),
  KEY `ix_contact_info_contact_numb` (`contact_numb`),
  KEY `ix_contact_info_country_of_residence` (`country_of_residence`),
  KEY `ix_contact_info_gurdian` (`gurdian`),
  KEY `ix_contact_info_applicant_tele_numb` (`applicant_tele_numb`),
  KEY `ix_contact_info_gurd_tele_numb` (`gurd_tele_numb`),
  KEY `ix_contact_info_former_school_email` (`former_school_email`),
  KEY `ix_contact_info_fath_tele_numb` (`fath_tele_numb`),
  KEY `ix_contact_info_relationship` (`relationship`),
  KEY `ix_contact_info_contact_email` (`contact_email`),
  KEY `ix_contact_info_mother` (`mother`),
  KEY `ix_contact_info_permanent_email` (`permanent_email`),
  KEY `ix_contact_info_moth_tele_numb` (`moth_tele_numb`),
  KEY `ix_contact_info_former_school_numb` (`former_school_numb`),
  KEY `ix_contact_info_father` (`father`),
  CONSTRAINT `contact_info_ibfk_1` FOREIGN KEY (`personal_id`) REFERENCES `personal_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_info`
--

LOCK TABLES `contact_info` WRITE;
/*!40000 ALTER TABLE `contact_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donation`
--

DROP TABLE IF EXISTS `donation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `donation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(64) DEFAULT NULL,
  `address` varchar(64) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `phone` varchar(64) DEFAULT NULL,
  `amount` varchar(120) DEFAULT NULL,
  `items` varchar(120) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_donation_full_name` (`full_name`),
  KEY `ix_donation_phone` (`phone`),
  KEY `ix_donation_address` (`address`),
  KEY `ix_donation_create_date` (`create_date`),
  KEY `ix_donation_items` (`items`),
  KEY `ix_donation_amount` (`amount`),
  KEY `ix_donation_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donation`
--

LOCK TABLES `donation` WRITE;
/*!40000 ALTER TABLE `donation` DISABLE KEYS */;
/*!40000 ALTER TABLE `donation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(120) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `comments` text,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_messages_subject` (`subject`),
  KEY `ix_messages_create_date` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_info`
--

DROP TABLE IF EXISTS `personal_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `surname` varchar(120) DEFAULT NULL,
  `first_name` varchar(120) DEFAULT NULL,
  `middle_name` varchar(120) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `sex` varchar(120) DEFAULT NULL,
  `district` varchar(120) DEFAULT NULL,
  `country_of_birth` varchar(120) DEFAULT NULL,
  `nationality` varchar(120) DEFAULT NULL,
  `Village` varchar(120) DEFAULT NULL,
  `Sub_county` varchar(120) DEFAULT NULL,
  `district_residence` varchar(120) DEFAULT NULL,
  `county` varchar(120) DEFAULT NULL,
  `main_road` varchar(120) DEFAULT NULL,
  `disabilities` varchar(120) DEFAULT NULL,
  `opportunity` varchar(120) DEFAULT NULL,
  `occupation` varchar(120) DEFAULT NULL,
  `specify` varchar(120) DEFAULT NULL,
  `feature` varchar(225) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_personal_info_sex` (`sex`),
  KEY `ix_personal_info_nationality` (`nationality`),
  KEY `ix_personal_info_first_name` (`first_name`),
  KEY `ix_personal_info_country_of_birth` (`country_of_birth`),
  KEY `ix_personal_info_district` (`district`),
  KEY `ix_personal_info_Sub_county` (`Sub_county`),
  KEY `ix_personal_info_disabilities` (`disabilities`),
  KEY `ix_personal_info_county` (`county`),
  KEY `ix_personal_info_middle_name` (`middle_name`),
  KEY `ix_personal_info_occupation` (`occupation`),
  KEY `ix_personal_info_feature` (`feature`),
  KEY `ix_personal_info_district_residence` (`district_residence`),
  KEY `ix_personal_info_dob` (`dob`),
  KEY `ix_personal_info_specify` (`specify`),
  KEY `ix_personal_info_surname` (`surname`),
  KEY `ix_personal_info_create_date` (`create_date`),
  KEY `ix_personal_info_Village` (`Village`),
  KEY `ix_personal_info_opportunity` (`opportunity`),
  KEY `ix_personal_info_main_road` (`main_road`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_info`
--

LOCK TABLES `personal_info` WRITE;
/*!40000 ALTER TABLE `personal_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ple`
--

DROP TABLE IF EXISTS `ple`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ple` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upload` varchar(255) DEFAULT NULL,
  `uce_id` int(11) DEFAULT NULL,
  `birth_certificate_id` int(11) DEFAULT NULL,
  `uace_id` int(11) DEFAULT NULL,
  `academic_id` int(11) DEFAULT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `personal_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uce_id` (`uce_id`),
  KEY `birth_certificate_id` (`birth_certificate_id`),
  KEY `uace_id` (`uace_id`),
  KEY `academic_id` (`academic_id`),
  KEY `contact_id` (`contact_id`),
  KEY `personal_id` (`personal_id`),
  CONSTRAINT `ple_ibfk_1` FOREIGN KEY (`uce_id`) REFERENCES `uce` (`id`),
  CONSTRAINT `ple_ibfk_2` FOREIGN KEY (`birth_certificate_id`) REFERENCES `birth_certificates` (`id`),
  CONSTRAINT `ple_ibfk_3` FOREIGN KEY (`uace_id`) REFERENCES `uace` (`id`),
  CONSTRAINT `ple_ibfk_4` FOREIGN KEY (`academic_id`) REFERENCES `academic_info` (`id`),
  CONSTRAINT `ple_ibfk_5` FOREIGN KEY (`contact_id`) REFERENCES `contact_info` (`id`),
  CONSTRAINT `ple_ibfk_6` FOREIGN KEY (`personal_id`) REFERENCES `personal_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ple`
--

LOCK TABLES `ple` WRITE;
/*!40000 ALTER TABLE `ple` DISABLE KEYS */;
/*!40000 ALTER TABLE `ple` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sketchmap`
--

DROP TABLE IF EXISTS `sketchmap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sketchmap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upload` varchar(255) DEFAULT NULL,
  `ple_id` int(11) DEFAULT NULL,
  `uce_id` int(11) DEFAULT NULL,
  `birth_certificate_id` int(11) DEFAULT NULL,
  `uace_id` int(11) DEFAULT NULL,
  `academic_id` int(11) DEFAULT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `personal_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ple_id` (`ple_id`),
  KEY `uce_id` (`uce_id`),
  KEY `birth_certificate_id` (`birth_certificate_id`),
  KEY `uace_id` (`uace_id`),
  KEY `academic_id` (`academic_id`),
  KEY `contact_id` (`contact_id`),
  KEY `personal_id` (`personal_id`),
  CONSTRAINT `sketchmap_ibfk_1` FOREIGN KEY (`ple_id`) REFERENCES `ple` (`id`),
  CONSTRAINT `sketchmap_ibfk_2` FOREIGN KEY (`uce_id`) REFERENCES `uce` (`id`),
  CONSTRAINT `sketchmap_ibfk_3` FOREIGN KEY (`birth_certificate_id`) REFERENCES `birth_certificates` (`id`),
  CONSTRAINT `sketchmap_ibfk_4` FOREIGN KEY (`uace_id`) REFERENCES `uace` (`id`),
  CONSTRAINT `sketchmap_ibfk_5` FOREIGN KEY (`academic_id`) REFERENCES `academic_info` (`id`),
  CONSTRAINT `sketchmap_ibfk_6` FOREIGN KEY (`contact_id`) REFERENCES `contact_info` (`id`),
  CONSTRAINT `sketchmap_ibfk_7` FOREIGN KEY (`personal_id`) REFERENCES `personal_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sketchmap`
--

LOCK TABLES `sketchmap` WRITE;
/*!40000 ALTER TABLE `sketchmap` DISABLE KEYS */;
/*!40000 ALTER TABLE `sketchmap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uace`
--

DROP TABLE IF EXISTS `uace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uace` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upload` varchar(255) DEFAULT NULL,
  `birth_certificate_id` int(11) DEFAULT NULL,
  `academic_id` int(11) DEFAULT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `personal_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `birth_certificate_id` (`birth_certificate_id`),
  KEY `academic_id` (`academic_id`),
  KEY `contact_id` (`contact_id`),
  KEY `personal_id` (`personal_id`),
  CONSTRAINT `uace_ibfk_1` FOREIGN KEY (`birth_certificate_id`) REFERENCES `birth_certificates` (`id`),
  CONSTRAINT `uace_ibfk_2` FOREIGN KEY (`academic_id`) REFERENCES `academic_info` (`id`),
  CONSTRAINT `uace_ibfk_3` FOREIGN KEY (`contact_id`) REFERENCES `contact_info` (`id`),
  CONSTRAINT `uace_ibfk_4` FOREIGN KEY (`personal_id`) REFERENCES `personal_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uace`
--

LOCK TABLES `uace` WRITE;
/*!40000 ALTER TABLE `uace` DISABLE KEYS */;
/*!40000 ALTER TABLE `uace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uce`
--

DROP TABLE IF EXISTS `uce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upload` varchar(255) DEFAULT NULL,
  `uace_id` int(11) DEFAULT NULL,
  `birth_certificate_id` int(11) DEFAULT NULL,
  `academic_id` int(11) DEFAULT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `personal_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uace_id` (`uace_id`),
  KEY `birth_certificate_id` (`birth_certificate_id`),
  KEY `academic_id` (`academic_id`),
  KEY `contact_id` (`contact_id`),
  KEY `personal_id` (`personal_id`),
  CONSTRAINT `uce_ibfk_1` FOREIGN KEY (`uace_id`) REFERENCES `uace` (`id`),
  CONSTRAINT `uce_ibfk_2` FOREIGN KEY (`birth_certificate_id`) REFERENCES `birth_certificates` (`id`),
  CONSTRAINT `uce_ibfk_3` FOREIGN KEY (`academic_id`) REFERENCES `academic_info` (`id`),
  CONSTRAINT `uce_ibfk_4` FOREIGN KEY (`contact_id`) REFERENCES `contact_info` (`id`),
  CONSTRAINT `uce_ibfk_5` FOREIGN KEY (`personal_id`) REFERENCES `personal_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uce`
--

LOCK TABLES `uce` WRITE;
/*!40000 ALTER TABLE `uce` DISABLE KEYS */;
/*!40000 ALTER TABLE `uce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_users_email` (`email`),
  UNIQUE KEY `ix_users_username` (`username`),
  KEY `ix_users_password` (`password`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'dengima xmass','dengima2013@gmail.com','$5$rounds=535000$cqN3nU3OPwx6In1D$yAy5X9Adx5isCYwDGcRUxI1qs1x/egH8nIS7S4hbi06');
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

-- Dump completed on 2018-04-11 16:28:55
