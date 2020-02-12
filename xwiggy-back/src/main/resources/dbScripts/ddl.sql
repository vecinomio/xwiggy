-- CREATE DATABASE IF NOT EXISTS myusers;
-- USE myusers;
--
-- DROP TABLE IF EXISTS `myusers`.`user`;
-- CREATE TABLE IF NOT EXISTS `myusers`.`user`
-- (
--   `username`  VARCHAR(45) NOT NULL,
--   `password`  VARCHAR(45) NULL,
--   `firstname` VARCHAR(45) NOT NULL,
--   `lastname`  VARCHAR(45) NULL,
--   `email`     VARCHAR(45) NULL,
--   `address`   VARCHAR(45) NULL,
--   `phone`     INT         NULL,
--   PRIMARY KEY (`username`)
-- );
--
-- CREATE TABLE IF NOT EXISTS `myusers`.`food` (
--    `id` VARCHAR(45) NOT NULL,
--    `item` VARCHAR(45) NOT NULL,
--    `prince` INT NOT NULL,
--    `quantity` INT NOT NULL,
--    `url` VARCHAR(150) NOT NULL,
--    `formID` VARCHAR(50) NOT NULL,
--    `cartID` VARCHAR(50) NOT NULL,
--    PRIMARY KEY (`id`));
--
-- CREATE TABLE IF NOT EXISTS `myusers`.`cart` (
--   `quantity1` INT NOT NULL,
--   `quantity2` INT NOT NULL,
--   `quantity3` INT NOT NULL,
--   PRIMARY KEY (`quantity1`)
-- );

--###########################################################################--

-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: myusers
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE DATABASE IF NOT EXISTS myusers;
USE myusers;
--
-- Table structure for table `cart`
--
DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cart` (
  `quantity1` int(11) NOT NULL,
  `quantity2` int(11) NOT NULL,
  `quantity3` int(11) DEFAULT NULL,
  PRIMARY KEY (`quantity1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (0,0,0),(1,0,0);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `food` (
  `id` varchar(45) NOT NULL,
  `item` varchar(45) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `url` varchar(120) NOT NULL,
  `formID` varchar(50) NOT NULL,
  `cartID` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food`
--

LOCK TABLES `food` WRITE;
/*!40000 ALTER TABLE `food` DISABLE KEYS */;
INSERT INTO `food` VALUES ('abc','Coffee',50,13,'https://images.pexels.com/photos/414720/pexels-photo-414720.jpeg','modalCart.quantity1','quantity1'),('bcd','Cookie',20,12,'https://images-gmi-pmc.edge-generalmills.com/087d17eb-500e-4b26-abd1-4f9ffa96a2c6.jpg','modalCart.quantity2','quantity2'),('def','Cake',80,12,'https://livforcake.com/wp-content/uploads/2017/07/black-forest-cake-thumb-500x500.jpg','modalCart.quantity3','quantity3');
/*!40000 ALTER TABLE `food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(45) NOT NULL,
  `phone` int(11) NOT NULL,
  `merchant` tinyint(4) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('vecino','fdsa192r','Igor','Makienko','vecinomio@gmail.com','Dnipro',1235443674,0),('amank','abcd1234','Aman','Kumar','aman@gmail.com','Bangalore, India',9585418,0),('merchant','abcd1234','Merchant','Merchant','merchant@merchant.com','Merchant LTD',1234567890,1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-03 17:42:17
