-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card`
--

DROP TABLE IF EXISTS `card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card` (
  `cardID` int(11) NOT NULL AUTO_INCREMENT,
  `cardNo` int(11) NOT NULL,
  `cardOwner` varchar(45) NOT NULL,
  `cardExp` datetime NOT NULL,
  `cardTypeID` int(11) NOT NULL,
  PRIMARY KEY (`cardID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card`
--

LOCK TABLES `card` WRITE;
/*!40000 ALTER TABLE `card` DISABLE KEYS */;
/*!40000 ALTER TABLE `card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cardtype`
--

DROP TABLE IF EXISTS `cardtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cardtype` (
  `cardTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `cardTypeKind` varchar(45) NOT NULL,
  PRIMARY KEY (`cardTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cardtype`
--

LOCK TABLES `cardtype` WRITE;
/*!40000 ALTER TABLE `cardtype` DISABLE KEYS */;
/*!40000 ALTER TABLE `cardtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `financialinfo`
--

DROP TABLE IF EXISTS `financialinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `financialinfo` (
  `finID` int(11) NOT NULL AUTO_INCREMENT,
  `purchaseID` int(11) NOT NULL,
  PRIMARY KEY (`finID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financialinfo`
--

LOCK TABLES `financialinfo` WRITE;
/*!40000 ALTER TABLE `financialinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `financialinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `prodID` int(11) NOT NULL AUTO_INCREMENT,
  `prodName` varchar(45) NOT NULL,
  `prodType` varchar(45) NOT NULL,
  `prodDesc` varchar(45) NOT NULL,
  `prodCount` int(11) NOT NULL,
  `prodPrice` float NOT NULL,
  `prodRestockDateTime` datetime NOT NULL,
  PRIMARY KEY (`prodID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producttype`
--

DROP TABLE IF EXISTS `producttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producttype` (
  `prodTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `prodTypeName` varchar(45) NOT NULL,
  `userRefNo` int(11) NOT NULL,
  PRIMARY KEY (`prodTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producttype`
--

LOCK TABLES `producttype` WRITE;
/*!40000 ALTER TABLE `producttype` DISABLE KEYS */;
/*!40000 ALTER TABLE `producttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase` (
  `purchaseID` int(11) NOT NULL AUTO_INCREMENT,
  `prodID` int(11) NOT NULL,
  `purchaseProdQty` int(11) NOT NULL,
  `userRefNo` int(11) NOT NULL,
  `purchaseDateTime` datetime NOT NULL,
  PRIMARY KEY (`purchaseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase`
--

LOCK TABLES `purchase` WRITE;
/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `reviewID` int(11) NOT NULL AUTO_INCREMENT,
  `purchaseID` int(11) NOT NULL,
  `reviewText` varchar(45) NOT NULL,
  `reviewDateTime` datetime NOT NULL,
  PRIMARY KEY (`reviewID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userRefNo` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `userLast` varchar(45) NOT NULL,
  `userFirst` varchar(45) NOT NULL,
  `userMI` varchar(45) NOT NULL,
  `userUsername` varchar(45) NOT NULL,
  `userPassword` varchar(45) NOT NULL,
  `userEmail` varchar(45) NOT NULL,
  `userBuildingAdd` varchar(45) NOT NULL,
  `userDeliveryAdd` varchar(45) NOT NULL,
  `userStatus` binary(1) NOT NULL,
  `userTypeID` int(11) NOT NULL,
  `userAttemptCount` int(11) NOT NULL,
  `userAttemptDate` datetime NOT NULL,
  `userEditDateTime` datetime NOT NULL,
  PRIMARY KEY (`userRefNo`),
  UNIQUE KEY `userID_UNIQUE` (`userID`),
  UNIQUE KEY `userRefNo_UNIQUE` (`userRefNo`),
  UNIQUE KEY `userUsername_UNIQUE` (`userUsername`),
  UNIQUE KEY `userEmail_UNIQUE` (`userEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usercard`
--

DROP TABLE IF EXISTS `usercard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usercard` (
  `userCardID` int(11) NOT NULL,
  `userRefNo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usercard`
--

LOCK TABLES `usercard` WRITE;
/*!40000 ALTER TABLE `usercard` DISABLE KEYS */;
/*!40000 ALTER TABLE `usercard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertype`
--

DROP TABLE IF EXISTS `usertype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usertype` (
  `userTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `userTypeKind` varchar(45) NOT NULL,
  PRIMARY KEY (`userTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertype`
--

LOCK TABLES `usertype` WRITE;
/*!40000 ALTER TABLE `usertype` DISABLE KEYS */;
/*!40000 ALTER TABLE `usertype` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-25 13:00:35
