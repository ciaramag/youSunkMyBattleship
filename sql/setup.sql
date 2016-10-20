-- MySQL dump 10.13  Distrib 5.7.16, for osx10.11 (x86_64)
--
-- Host: localhost    Database: Company
-- ------------------------------------------------------
-- Server version	5.7.16

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
-- Table structure for table `BU`
--

DROP TABLE IF EXISTS `BU`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BU` (
  `BU_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `BU_name` varchar(25) NOT NULL,
  PRIMARY KEY (`BU_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BU`
--

LOCK TABLES `BU` WRITE;
/*!40000 ALTER TABLE `BU` DISABLE KEYS */;
INSERT INTO `BU` VALUES (1,'Evolve'),(2,'Smart'),(3,'Gov'),(4,'Enterprise');
/*!40000 ALTER TABLE `BU` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EmployeeProject`
--

DROP TABLE IF EXISTS `EmployeeProject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EmployeeProject` (
  `Project_id` smallint(5) NOT NULL,
  `Employee_number` smallint(5) NOT NULL,
  PRIMARY KEY (`Project_id`,`Employee_number`),
  KEY `Employee_number` (`Employee_number`),
  CONSTRAINT `employeeproject_ibfk_1` FOREIGN KEY (`Project_id`) REFERENCES `Project` (`Project_id`),
  CONSTRAINT `employeeproject_ibfk_2` FOREIGN KEY (`Employee_number`) REFERENCES `Employees` (`Employee_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EmployeeProject`
--

LOCK TABLES `EmployeeProject` WRITE;
/*!40000 ALTER TABLE `EmployeeProject` DISABLE KEYS */;
INSERT INTO `EmployeeProject` VALUES (2,1),(2,2),(1,3),(3,4),(2,5),(3,6),(1,7);
/*!40000 ALTER TABLE `EmployeeProject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employees`
--

DROP TABLE IF EXISTS `Employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Employees` (
  `Employee_number` smallint(5) NOT NULL AUTO_INCREMENT,
  `Employee_name` varchar(20) NOT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `National_insurance_number` varchar(10) DEFAULT NULL,
  `Bank_account_IBAN` varchar(15) NOT NULL,
  `Starting_salary` decimal(10,2) NOT NULL,
  `Employee_type_id` smallint(5) NOT NULL,
  `Commission_rate` tinyint(3) DEFAULT '0',
  `Total_sales` int(10) DEFAULT '0',
  PRIMARY KEY (`Employee_number`),
  KEY `Employee_type_id` (`Employee_type_id`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`Employee_type_id`) REFERENCES `JobTitles` (`Employee_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employees`
--

LOCK TABLES `Employees` WRITE;
/*!40000 ALTER TABLE `Employees` DISABLE KEYS */;
INSERT INTO `Employees` VALUES (1,'Clarke Kent','17 Banjo Road, Belfast','TM477828G','IBN3488585555',16500.75,3,20,1500),(2,'Bill Clinton','226 Jolly Road, Belfast','TM557828G','IBN3488585566',16500.75,3,20,2200),(3,'Billy Bob','1a Bramblewood Court, Belfast','TM667828G','IBN3488585577',16500.75,2,0,0),(4,'Jane Doe','121 Who Knows, Middleofnowhere','TM777828G','IBN3488585588',16500.75,2,0,0),(5,'Louis Lane','34 Nightlife, Belfast','TM887828G','IBN3488585599',21500.75,4,0,0),(6,'Jenny Lane','3 Upper Crescent, Belfast','TM555528G','IBN8888585599',21500.75,4,0,0),(7,'Jimmy Joe','54 Ukelele Lane, Belfast','TM997828G','IBN3488589999',21500.75,1,0,0);
/*!40000 ALTER TABLE `Employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JobTitles`
--

DROP TABLE IF EXISTS `JobTitles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JobTitles` (
  `Employee_type_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `Job_title` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Employee_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JobTitles`
--

LOCK TABLES `JobTitles` WRITE;
/*!40000 ALTER TABLE `JobTitles` DISABLE KEYS */;
INSERT INTO `JobTitles` VALUES (1,'HR'),(2,'Finance'),(3,'Sales'),(4,'Talent Manager');
/*!40000 ALTER TABLE `JobTitles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Login`
--

DROP TABLE IF EXISTS `Login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Login` (
  `Username` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Employee_number` smallint(5) NOT NULL,
  `Employee_type_id` smallint(5) NOT NULL,
  PRIMARY KEY (`Username`,`Password`),
  KEY `Employee_number` (`Employee_number`),
  KEY `Employee_type_id` (`Employee_type_id`),
  CONSTRAINT `login_ibfk_1` FOREIGN KEY (`Employee_number`) REFERENCES `Employees` (`Employee_number`),
  CONSTRAINT `login_ibfk_2` FOREIGN KEY (`Employee_type_id`) REFERENCES `JobTitles` (`Employee_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Login`
--

LOCK TABLES `Login` WRITE;
/*!40000 ALTER TABLE `Login` DISABLE KEYS */;
INSERT INTO `Login` VALUES ('bbob','password',3,2),('bclinton','password',2,3),('jjoe','password',7,1),('jlane','password',6,4);
/*!40000 ALTER TABLE `Login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Project`
--

DROP TABLE IF EXISTS `Project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Project` (
  `Project_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `Project_Name` varchar(100) NOT NULL,
  `BU_id` smallint(5) NOT NULL,
  PRIMARY KEY (`Project_id`),
  KEY `BU_id` (`BU_id`),
  CONSTRAINT `project_ibfk_1` FOREIGN KEY (`BU_id`) REFERENCES `BU` (`BU_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Project`
--

LOCK TABLES `Project` WRITE;
/*!40000 ALTER TABLE `Project` DISABLE KEYS */;
INSERT INTO `Project` VALUES (1,'HCM Team',2),(2,'DFID',4),(3,'Velocity Team',1);
/*!40000 ALTER TABLE `Project` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-20 14:19:22
