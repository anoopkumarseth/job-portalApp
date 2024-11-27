-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: job_portal_development
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `applications`
--

DROP TABLE IF EXISTS `applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applications` (
  `applicationid` bigint NOT NULL AUTO_INCREMENT,
  `application_date` date DEFAULT NULL,
  `jobid` varchar(255) DEFAULT NULL,
  `resume` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `job_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`applicationid`),
  KEY `FK65weib1lru9dkrbto5pv389vi` (`job_id`),
  KEY `FKfsfqljedcla632u568jl5qf3w` (`user_id`),
  CONSTRAINT `FK65weib1lru9dkrbto5pv389vi` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`job_id`),
  CONSTRAINT `FKfsfqljedcla632u568jl5qf3w` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applications`
--

LOCK TABLES `applications` WRITE;
/*!40000 ALTER TABLE `applications` DISABLE KEYS */;
INSERT INTO `applications` VALUES (1,'2024-02-10',NULL,'3','4000',_binary '',NULL,3,6),(2,'2024-02-10',NULL,'3','4000',_binary '',NULL,4,6),(3,'2024-02-10',NULL,'3','4000',_binary '',NULL,1,6),(4,'2024-02-10',NULL,'3','4000',_binary '',NULL,1,6),(5,'2024-02-10',NULL,'3','4000',_binary '',NULL,3,6),(6,'2024-02-10',NULL,'3','4000',_binary '',NULL,3,6),(7,'2024-02-10',NULL,'3','4000',_binary '',NULL,3,6),(8,'2024-02-10',NULL,'3','4000',_binary '',NULL,1,6),(9,'2024-02-10',NULL,'3','4000',_binary '',NULL,1,6),(10,'2024-02-10',NULL,'3','4000',_binary '',NULL,4,6),(11,'2024-02-10',NULL,'3','4000',_binary '',NULL,1,6),(12,'2024-02-10',NULL,'3','4000',_binary '',NULL,9,6);
/*!40000 ALTER TABLE `applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `companyid` bigint NOT NULL AUTO_INCREMENT,
  `created_at` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`companyid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (2,'2024-11-01','Leading consultancy for financial services and startups.','delhi','AlphaEdge Consulting',_binary '','www.alphaedgeconsulting.com'),(5,'2024-10-21','A leading provider of IT services and solutions.','Bangalore','TechWave Solutions',_binary '','www.techwave.com'),(6,'2023-07-15','Specializing in AI-powered software development.','Hyderabad','InnoSpark Systems',_binary '\0','www.innospark.ai'),(7,'2024-09-10','Providing eco-friendly solutions for modern businesses.','Pune','GreenLoop Enterprises',_binary '','www.greenloop.co'),(8,'2024-01-05','Innovators in real estate and property management.','Mumbai','Skyline Ventures',_binary '\0','www.skylineventures.in'),(9,'2022-11-20','Transforming healthcare through advanced technology.','Delhi','MediCore Technologies',_binary '','www.medicoretech.com'),(10,'2024-06-18','Designing cutting-edge robotics for industrial applications.','Chennai','NextGen Robotics',_binary '','www.nextgenrobotics.com'),(11,'2023-12-10','A retail giant bringing unique products to market.','Kolkata','FusionMart Retail',_binary '\0','www.fusionmart.com'),(12,'2024-04-12','Experts in big data and analytics solutions.','Gurgaon','DataHive Analytics',_binary '','www.datahive.co'),(13,'2023-09-05','Revolutionizing cloud storage and data synchronization.','Noida','CloudSync Innovations',_binary '\0','www.cloudsync.io');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `job_id` bigint NOT NULL AUTO_INCREMENT,
  `companyid` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `company_id` bigint NOT NULL,
  PRIMARY KEY (`job_id`),
  KEY `FKrtmqcrktb6s7xq8djbs2a2war` (`company_id`),
  CONSTRAINT `FKrtmqcrktb6s7xq8djbs2a2war` FOREIGN KEY (`company_id`) REFERENCES `companies` (`companyid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1,NULL,'2024-11-01','Design and implement cloud computing solutions for enterprise clients.','Noida','5000',_binary '','Cloud Solutions Architect',2),(3,NULL,'2024-10-21','Develop and maintain software applications.','Bangalore','80000',_binary '','Software Engineer',2),(4,NULL,'2024-09-15','Conduct research on machine learning algorithms.','Hyderabad','95000',_binary '','AI Researcher',2),(6,NULL,'2024-08-10','Provide environmental assessments and solutions.','Pune','70000',_binary '','Environmental Consultant',13),(8,NULL,'2024-07-12','Oversee property management and development projects.','Mumbai','85000',_binary '\0','Real Estate Manager',5),(9,NULL,'2024-06-05','Design and develop medical devices and systems.','Delhi','90000',_binary '','Medical Device Engineer',5),(10,NULL,'2024-06-18','Develop robotics systems for industrial applications.','Chennai','95000',_binary '','Robotics Engineer',6),(11,NULL,'2024-05-23','Manage daily retail operations and product strategy.','Kolkata','60000',_binary '\0','Retail Manager',7),(12,NULL,'2024-04-15','Analyze large datasets and provide actionable insights.','Gurgaon','75000',_binary '','Data Analyst',8),(13,NULL,'2024-03-01','Design and implement cloud infrastructure solutions.','Noida','100000',_binary '','Cloud Systems Architect',9),(14,NULL,'2024-02-10','Provide financial advisory services to clients.','Ahmedabad','95000',_binary '\0','Financial Consultant',10);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_companies`
--

DROP TABLE IF EXISTS `user_companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_companies` (
  `user_id` bigint NOT NULL,
  `company_id` bigint NOT NULL,
  KEY `FKktnoikyq9iqkm9pye0esfn1i9` (`company_id`),
  KEY `FKnv1a2e7xyd45ghv8s3y9lo4a0` (`user_id`),
  CONSTRAINT `FKktnoikyq9iqkm9pye0esfn1i9` FOREIGN KEY (`company_id`) REFERENCES `companies` (`companyid`),
  CONSTRAINT `FKnv1a2e7xyd45ghv8s3y9lo4a0` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_companies`
--

LOCK TABLES `user_companies` WRITE;
/*!40000 ALTER TABLE `user_companies` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (6,'2024-10-15','ravi.kumar@example.com',_binary '','You have new job alerts!','Ravi Kumar','password123@'),(7,'2024-09-05','priya.patel@email.com',_binary '\0','Account deactivated. Please contact support.','Priya Patel','mySecure@456'),(8,'2024-08-20','vikram.yadav@example.com',_binary '','You have unread notifications.','Vikram Yadav','yadav123@abc'),(9,'2024-07-10','sita.sharma@outlook.com',_binary '','Your profile is 90% complete.','Sita Sharma','sharma@1234'),(10,'2024-06-25','arjun.desai@xyz.com',_binary '','Your job application has been received.','Arjun Desai','securePassword@789'),(11,'2024-05-12','nina.mehta@gmail.com',_binary '\0','Your account is under review.','Nina Mehta','nina@pass123'),(12,'2024-04-05','anil.kapoor@company.com',_binary '','Reminder: Update your resume.','Anil Kapoor','kapoor@321'),(13,'2024-03-25','neha.rao@domain.com',_binary '\0','Account suspended. Please resolve the issue.','Neha Rao','rao@12345'),(14,'2024-02-10','suresh.verma@company.org',_binary '','Welcome to the platform!','Suresh Verma','verma@6789'),(15,'2024-11-01','anoop.seth@gmail.com',_binary '','Welcome aboard!','Anoop Seth','123456@13'),(16,'2024-11-01','',_binary '','22','',''),(17,NULL,NULL,NULL,NULL,NULL,NULL);
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

-- Dump completed on 2024-11-28  4:26:06
