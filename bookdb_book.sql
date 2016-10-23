-- MySQL dump 10.13  Distrib 5.5.52, for Win32 (x86)
--
-- Host: localhost    Database: bookdb
-- ------------------------------------------------------
-- Server version	5.5.52

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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `ISBN` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Title` varchar(30) NOT NULL,
  `AuthorID` smallint(5) unsigned NOT NULL,
  `Publisher` varchar(20) DEFAULT NULL,
  `PublishDate` date DEFAULT NULL,
  `Price` double(5,2) unsigned DEFAULT NULL,
  PRIMARY KEY (`ISBN`),
  KEY `AuthorID` (`AuthorID`),
  CONSTRAINT `book_ibfk_1` FOREIGN KEY (`AuthorID`) REFERENCES `author` (`AuthorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1000000001,'实现美国的伟大复兴',1,'美国教育出版社','2002-08-30',85.99),(1000000002,'何时回到祖国的怀抱',2,'台湾民进党出版社','2014-11-12',50.33),(1000000003,'竞选之路',2,'台湾民进党出版社','2016-09-12',33.33),(1000000004,'当总理的那些年',3,'俄罗斯铁人出版社','2007-03-21',120.99),(1000000005,'论与美国的持久战',3,'俄罗斯战争出版社','2010-05-01',99.99),(1000000006,'我的失败人生',4,'台湾自由出版社','2010-03-28',39.99),(1000000007,'我与工大的那一份情',5,'哈工大出版社','2011-08-01',45.66),(1000000008,'热力学传输理论',5,'高等教育出版社','2006-01-22',120.99),(1000000009,'我的篮球故事',6,'法国工业出版社','2011-04-01',45.79),(1000000010,'GDP传奇',6,'NBA出版社','2016-04-30',77.79),(1000000011,'我的童年',1,'美国农业出版社','2004-02-10',50.45),(1000000012,'小时候的事情',8,'哈哈出版社','2004-09-04',33.33),(1000000013,'我的假期如此之短',7,'痛苦出版社','2016-07-16',66.66);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-21 16:43:33
