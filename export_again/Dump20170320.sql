-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: chaim_chagbi
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
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `ID` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `COMP_NAME` varchar(45) NOT NULL,
  `PASSWORD` varchar(45) NOT NULL,
  `EMAIL` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'IBM','ibm123','ibm-newuser@ibm.co.il'),(2,'HP','hp123','hp-newuser@hp.com'),(5,'LAMETAYEL','LAMETAYEL123','LAMETAYEL-USER@gmail.com'),(6,'ACHLA','achla123','achla-user@gmail.co.il'),(7,'MAYA','maya123','maya-user@gmail.com'),(8,'TARGET','target123','target-user@gmail.co.il'),(9,'MEGA','maga123','mega-user@gmail.com'),(10,'REQUSHET','requshet123','requshet-user@requshet.com'),(11,'kfar bloom','kfarbloom123','kfarbloom@kfarbloom.com'),(12,'ksp','ksp123','ksp-user@ksp.co.il');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_coupon`
--

DROP TABLE IF EXISTS `company_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_coupon` (
  `COMP_ID` bigint(11) unsigned NOT NULL,
  `COUPON_ID` bigint(11) unsigned NOT NULL,
  PRIMARY KEY (`COMP_ID`,`COUPON_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_coupon`
--

LOCK TABLES `company_coupon` WRITE;
/*!40000 ALTER TABLE `company_coupon` DISABLE KEYS */;
INSERT INTO `company_coupon` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(5,15),(5,16),(5,17),(6,6),(6,7),(7,10),(7,11),(8,8),(8,9),(9,12),(9,13),(9,14),(10,18),(10,19),(10,20),(10,21),(10,22),(11,23),(11,24),(12,25),(12,26),(12,27),(12,28);
/*!40000 ALTER TABLE `company_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon`
--

DROP TABLE IF EXISTS `coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon` (
  `ID` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(100) NOT NULL,
  `START_DATE` datetime NOT NULL,
  `END_DATE` datetime NOT NULL,
  `AMOUNT` int(11) unsigned NOT NULL,
  `TYPE` varchar(20) NOT NULL,
  `MESSAGE` varchar(150) NOT NULL,
  `PRICE` double unsigned NOT NULL,
  `IMAGE` varchar(150) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon`
--

LOCK TABLES `coupon` WRITE;
/*!40000 ALTER TABLE `coupon` DISABLE KEYS */;
INSERT INTO `coupon` VALUES (1,'New pc almost free','2017-03-16 00:00:00','2017-03-23 00:00:00',54,'ELECTRICITY','This is very nice sell offer so use your ,,',6000.99,'http://link_to_coupon'),(2,'Weekend in spa','2017-03-16 00:00:00','2020-02-01 00:00:00',21,'OTHER','Take a rest with our ',55,'this emage for coupon'),(3,'25% discount on buying new leptop','2017-03-18 00:00:00','2017-04-17 00:00:00',99,'ELECTRICITY','If you buing our leptop you can get 25% discount',2500,'http://ibm.com/coupon_0k8'),(4,'13% discount of buying new tablet','2017-03-18 00:00:00','2017-04-02 00:00:00',298,'ELECTRICITY','If you buing our tablet you can get 13% discount',65,'http://ibm.com/coupon_0k99'),(5,'20% discount of buying new software support','2017-03-18 00:00:00','2017-04-05 00:00:00',187,'ELECTRICITY','If you buing our software you can get 20% discount',80,'http://ibm.com/coupon_0k92'),(6,'8% discount if you by 2 meals','2017-03-18 00:00:00','2017-03-20 00:00:00',200,'RESTURANS','http://achla.com/coupon_0a2',2,'http://achla.com/coupon_0a2'),(7,'15% discount buying 4 meals','2017-03-18 00:00:00','2017-05-25 00:00:00',819,'RESTURANS','15% discount if you by meals',2,'http://achla.com/coupon_0a8'),(8,'250 nis discount for 100 first member for 12 month','2017-03-18 00:00:00','2017-04-07 00:00:00',78,'HEALTH','250 nis discount for 100 first member for 12 months ',20,'http://TARDET.com/coupon_0t16'),(9,'2+1 jars of pure protein ','2017-03-18 00:00:00','2017-04-01 00:00:00',699,'HEALTH','Buy 2 jars of pure protein get 1 extra',5,'http://TARGET.com/coupon_0t23'),(10,'3+2 packages of rice','2017-03-18 00:00:00','2017-03-25 00:00:00',100,'FOOD','if you by 3 packages of rice you get 2 free',5,'http://MAYA.com/coupon_0m70'),(11,'4+3 packages of beans','2017-03-18 00:00:00','2017-03-20 00:00:00',128,'FOOD','if you by 4 packages of beans you get 3 free',40,'http://MAYA.com/coupon_0m75'),(12,'2 pair of shoes with 1 ','2017-03-18 00:00:00','2017-03-20 00:00:00',100,'SPORTS','if you by 2 pair of sports shoes you get 1 free',100,'http://MEGA.com/coupon_0m85'),(13,'20% discount on sports wears','2017-03-18 00:00:00','2017-03-21 00:00:00',400,'SPORTS','3 dayes last to sale',5,'http://MEGA.com/coupon_0m88'),(14,'basketball made leather at 50 nis','2017-03-18 00:00:00','2017-06-08 00:00:00',498,'SPORTS','The owner got crazy',5,'http://MEGA.com/coupon_0m81'),(15,'swiss penknife in 100 nis','2017-03-18 00:00:00','2017-04-17 00:00:00',700,'TRAVALLING','http://LAMETAYEL.com/coupon_0l65',10,'htthttp://LAMETAYEL.com/coupon_0l64'),(16,'tent with sleeping beg ion 200 nis','2017-03-18 00:00:00','2017-04-27 00:00:00',98,'TRAVALLING','you want to travel after you see this price',15,'htthttp://LAMETAYEL.com/coupon_0l66'),(17,'flashlight at 50 nis','2017-03-18 00:00:00','2017-03-20 00:00:00',198,'TRAVALLING','this is amazing voucher',12,'htthttp://LAMETAYEL.com/coupon_0l69'),(18,'22% discount all the producs','2017-03-18 00:00:00','2017-05-07 00:00:00',199,'CAMPING','this the best sale',18,'htthttp://REQUSHET.com/coupon_0r45'),(19,'1+1 to warm wears','2017-03-18 00:00:00','2017-04-27 00:00:00',24,'CAMPING','good thing minimum price',40,'htthttp://REQUSHET.com/coupon_0r45'),(20,'18% discount to hotels','2017-03-18 00:00:00','2017-05-07 00:00:00',99,'CAMPING','huge holidwys at small price at the hotels arrangements',50,'htthttp://REQUSHET.com/coupon_0r42'),(21,'150 nis for guest room','2017-03-18 00:00:00','2017-04-02 00:00:00',78,'CAMPING','The best price ever',40,'htthttp://REQUSHET.com/coupon_0r40'),(22,'22% discount of this weekend','2017-03-18 00:00:00','2017-03-20 00:00:00',10,'CAMPING','good price you can\'t achieve',10,'htthttp://REQUSHET.com/coupon_0r47'),(23,'15% discount for hospitality for weekend','2017-03-18 00:00:00','2017-04-07 00:00:00',19,'OTHER','very good price small charge',20,'htthttp://kfar bloom.com/coupon_0k23'),(24,'all family vacation pay for parents','2017-03-18 00:00:00','2017-03-28 00:00:00',10,'OTHER','all family include with parents payment',50,'htthttp://kfar bloom.com/coupon_0k28'),(25,'17% discount of all the products','2017-03-18 00:00:00','2017-03-20 00:00:00',200,'OTHER','all the products you ever want with small price',40,'htthttp://ksp.com/coupon_0k11'),(26,'Wireless headphones in 100 nis','2017-03-18 00:00:00','2017-03-23 00:00:00',99,'OTHER','The best price of this quality',10,'htthttp://ksp.com/coupon_0k17'),(27,'buy computer and get screen 75% discount','2017-03-18 00:00:00','2017-03-25 00:00:00',38,'OTHER','best price for this quality',100,'htthttp://ksp.com/coupon_0k12'),(28,'Video card','2017-03-18 00:00:00','2017-03-26 00:00:00',100,'OTHER','The low price you ever get',15,'htthttp://ksp.com/coupon_0k9');
/*!40000 ALTER TABLE `coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `ID` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `CUST_NAME` varchar(45) NOT NULL,
  `PASSWORD` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Shmulik T','Shmulik 123'),(2,'SecretAgent','moresecret'),(3,'kipi ben-kipod','kipi123'),(4,'moishe ufnik','moishe123'),(5,'erez lonoch','erez123'),(6,'koko meelat','koko123'),(7,'kfir akof','kfir123'),(8,'ezra agadol','ezra123'),(9,'bents arikbrother ','bents123'),(10,'chavitush longslive','chavitush123'),(11,'gargamel lovedardasim','gargamel123'),(12,'kobi gever','kobi123'),(13,'mipmip thebird','mipmip123'),(15,'shugi kokosfriend','shugi123');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_coupon`
--

DROP TABLE IF EXISTS `customer_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_coupon` (
  `CUST_ID` bigint(11) unsigned NOT NULL,
  `COUPON_ID` bigint(11) unsigned NOT NULL,
  PRIMARY KEY (`CUST_ID`,`COUPON_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_coupon`
--

LOCK TABLES `customer_coupon` WRITE;
/*!40000 ALTER TABLE `customer_coupon` DISABLE KEYS */;
INSERT INTO `customer_coupon` VALUES (1,2),(1,27),(2,1),(2,2),(3,3),(3,11),(3,20),(4,17),(5,8),(5,14),(5,17),(6,8),(6,9),(6,27),(7,7),(7,11),(7,23),(8,16),(8,18),(9,5),(9,21),(9,26),(10,4),(10,19),(11,21),(12,4),(13,14),(13,16);
/*!40000 ALTER TABLE `customer_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'chaim_chagbi'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-20 21:28:11
