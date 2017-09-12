-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: 192.168.3.41    Database: admin
-- ------------------------------------------------------
-- Server version	5.7.18

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
-- Table structure for table `LIUWP`
--

CREATE DATABASE IF NOT EXISTS admin;

USE admin;

DROP TABLE IF EXISTS `LIUWP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LIUWP` (
  `u_id` varchar(32) NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LIUWP`
--

LOCK TABLES `LIUWP` WRITE;
/*!40000 ALTER TABLE `LIUWP` DISABLE KEYS */;
INSERT INTO `LIUWP` VALUES ('12123312312'),('123hello'),('helloworld'),('wtf'),('wtff'),('wtfff'),('xie');
/*!40000 ALTER TABLE `LIUWP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authority`
--

DROP TABLE IF EXISTS `authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authority` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authority`
--

LOCK TABLES `authority` WRITE;
/*!40000 ALTER TABLE `authority` DISABLE KEYS */;
INSERT INTO `authority` VALUES (1,'test121','man','123123@qq.com'),(2,'test122','man','123124@qq.com'),(3,'test123','man','123124@qq.com'),(4,'test124','man','123125@qq.com');
/*!40000 ALTER TABLE `authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autoCompleteData`
--

DROP TABLE IF EXISTS `autoCompleteData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autoCompleteData` (
  `caption` varchar(60) NOT NULL,
  `value` varchar(60) DEFAULT NULL,
  `meta` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`caption`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autoCompleteData`
--

LOCK TABLES `autoCompleteData` WRITE;
/*!40000 ALTER TABLE `autoCompleteData` DISABLE KEYS */;
INSERT INTO `autoCompleteData` VALUES ('configService.isProxyTargetClass()','configService.isProxyTargetClass();','boolean'),('dynamicFormService.addAdvice(Advice advice)','dynamicFormService.addAdvice(advice);','void'),('sqlExecutor.single(SQL sQL)','sqlExecutor.single(sQL);','Map');
/*!40000 ALTER TABLE `autoCompleteData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backup`
--

DROP TABLE IF EXISTS `backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backup` (
  `name` varchar(45) NOT NULL,
  `size` int(11) DEFAULT NULL,
  `totalTimes` int(11) DEFAULT NULL,
  `hitTimes` int(11) DEFAULT NULL,
  `putTimes` int(11) DEFAULT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backup`
--

LOCK TABLES `backup` WRITE;
/*!40000 ALTER TABLE `backup` DISABLE KEYS */;
INSERT INTO `backup` VALUES ('form.deploy',1,1946,1903,43,'deploy.f_test'),('login.err',4,2000,1980,20,'admin@108.162.215.22-number|admin@108.162.215.22-number1|admin@108.162.215.22-number2');
/*!40000 ALTER TABLE `backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache` (
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` VALUES ('backup'),('cacheManager');
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cacheManager`
--

DROP TABLE IF EXISTS `cacheManager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cacheManager` (
  `name` varchar(30) NOT NULL,
  `size` int(11) DEFAULT NULL,
  `totalTimes` int(11) DEFAULT NULL,
  `hitTimes` int(11) DEFAULT NULL,
  `putTimes` int(11) DEFAULT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cacheManager`
--

LOCK TABLES `cacheManager` WRITE;
/*!40000 ALTER TABLE `cacheManager` DISABLE KEYS */;
INSERT INTO `cacheManager` VALUES ('config',2,14447,14408,39,'info.login.key.error.max_number.int'),('form',1,753,726,27,'deploy.f_test.version');
/*!40000 ALTER TABLE `cacheManager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cachevalue`
--

DROP TABLE IF EXISTS `cachevalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cachevalue` (
  `key` varchar(100) NOT NULL,
  `value` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cachevalue`
--

LOCK TABLES `cachevalue` WRITE;
/*!40000 ALTER TABLE `cachevalue` DISABLE KEYS */;
INSERT INTO `cachevalue` VALUES ('backup.login.err.admin@108.162.215.22-number','1147'),('backup.login.err.admin@108.162.215.22-number1','1148'),('backup.login.err.admin@108.162.215.22-number2','1149'),('cacheManager.config.info.login.key.error.wait_minutes.int','10'),('cacheManager.form.deploy.f_test.version','hello');
/*!40000 ALTER TABLE `cachevalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron`
--

DROP TABLE IF EXISTS `cron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cron` (
  `id` varchar(45) NOT NULL,
  `cron` varchar(45) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `language` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `parameters` varchar(45) DEFAULT NULL,
  `properties` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT '""',
  `script` varchar(100) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cron`
--

LOCK TABLES `cron` WRITE;
/*!40000 ALTER TABLE `cron` DISABLE KEYS */;
INSERT INTO `cron` VALUES ('0d3c60dc67e6285e54e3472c75a67428','0/30 * * * * ? ',1,'js','test2',NULL,NULL,'',' Thread.sleep(10*1000); return \"test2\";',0),('5ae1113d37643f83587468158c8ac4c5','0/5 * * * * ? ',1,'java','test',NULL,NULL,'',' sqlExecutor.list(\"select * from s_user\"); return \"test task\";',0);
/*!40000 ALTER TABLE `cron` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datasource`
--

DROP TABLE IF EXISTS `datasource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datasource` (
  `id` varchar(32) NOT NULL,
  `name` varchar(45) NOT NULL,
  `url` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `enabled` decimal(4,0) DEFAULT NULL,
  `createDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hash` int(11) DEFAULT NULL,
  `testSql` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datasource`
--

LOCK TABLES `datasource` WRITE;
/*!40000 ALTER TABLE `datasource` DISABLE KEYS */;
INSERT INTO `datasource` VALUES ('11111','1111','11111','1111','1111',NULL,'2017-07-24 08:35:49',NULL,'11111'),('12','12','12222','12','1231123',1,'2017-07-11 08:04:42',NULL,'asdasd'),('123123','12312','/osds','word','1231231',NULL,'2017-07-08 03:30:29',NULL,'sada123'),('12321','123','32','321','123qq1',1,'2017-07-07 10:56:14',NULL,'32'),('12333','123','1','1','asd123',1,'2017-07-11 11:40:46',213,'asdasd'),('17231','hellowesaa','/sasd','mosaasda','12312',NULL,'2017-07-07 11:47:19',NULL,'select * form  data ;'),('2313','dada','ada','1asda','asda',NULL,'2017-07-07 12:07:48',NULL,'asda'),('ad','a','1','helloworld','123',1,'2017-07-08 06:00:57',123,'asdad');
/*!40000 ALTER TABLE `datasource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `f_test`
--

DROP TABLE IF EXISTS `f_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `f_test` (
  `u_id` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `sex` int(11) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `f_test`
--

LOCK TABLES `f_test` WRITE;
/*!40000 ALTER TABLE `f_test` DISABLE KEYS */;
INSERT INTO `f_test` VALUES ('c5c830ce01160ebccff9991b59d7069c','asda',1,'asda'),('f7e9929ed0d7e0820d148ae3c230d77b','qwe',1,'asda@qq.com');
/*!40000 ALTER TABLE `f_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file`
--

DROP TABLE IF EXISTS `file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file` (
  `id` varchar(45) NOT NULL,
  `md5` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `data` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file`
--

LOCK TABLES `file` WRITE;
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
/*!40000 ALTER TABLE `file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form`
--

DROP TABLE IF EXISTS `form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form` (
  `config` varchar(45) DEFAULT NULL,
  `icon` varchar(45) DEFAULT NULL,
  `id` varchar(60) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `parentId` varchar(60) DEFAULT NULL,
  `properties` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `sortIndex` int(11) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form`
--

LOCK TABLES `form` WRITE;
/*!40000 ALTER TABLE `form` DISABLE KEYS */;
INSERT INTO `form` VALUES (NULL,NULL,'05bc03c336e46b9b933812446cfb169a','34','2e0d318e43f0bdc66a3aa8ca4af378a7',NULL,NULL,0,'form'),(NULL,NULL,'05c29dff102375271f2edcbca851afdf','sss','2e0d318e43f0bdc66a3aa8ca4af378a7',NULL,NULL,0,'form'),(NULL,NULL,'2e0d318e43f0bdc66a3aa8ca4af378a7','adct','-1',NULL,NULL,0,'form'),(NULL,NULL,'33293d440058a5ff63b7eff62558b82b','222222','05c29dff102375271f2edcbca851afdf',NULL,NULL,0,'form'),(NULL,NULL,'CIBEUZAEUSBZJCSJXHFMOHMQAEMRZMRQ','测试','-1',NULL,NULL,NULL,'form'),(NULL,NULL,'CTYLNKWWZHBZRDCOHXKKLCEQKJONPRNQ','测试2','-1',NULL,NULL,NULL,'form'),(NULL,NULL,'QTIEGVJXZJQFAFWZQLXCDWDFDIZVECAD','大数据','CIBEUZAEUSBZJCSJXHFMOHMQAEMRZMRQ',NULL,NULL,NULL,'form'),(NULL,NULL,'RXWCYPVDNCKKODRIAWASLANJBINUDFPX','后端','CIBEUZAEUSBZJCSJXHFMOHMQAEMRZMRQ',NULL,NULL,NULL,'form'),(NULL,NULL,'UDQYWDFKYGZSQKAXDUGNWADFIWCEETEL','前端','CIBEUZAEUSBZJCSJXHFMOHMQAEMRZMRQ',NULL,NULL,NULL,'form'),(NULL,NULL,'URLEMFMOQWKLPEMRPBZDODFJHVNYOREB','js','CIBEUZAEUSBZJCSJXHFMOHMQAEMRZMRQ',NULL,NULL,NULL,'form');
/*!40000 ALTER TABLE `form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forminfo`
--

DROP TABLE IF EXISTS `forminfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forminfo` (
  `classifiedId` varchar(60) DEFAULT NULL,
  `createDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id` varchar(45) NOT NULL,
  `updateDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(45) DEFAULT NULL,
  `properties` varchar(45) DEFAULT NULL,
  `release` int(11) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `using` tinyint(4) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `config` text,
  `html` text,
  `meta` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forminfo`
--

LOCK TABLES `forminfo` WRITE;
/*!40000 ALTER TABLE `forminfo` DISABLE KEYS */;
INSERT INTO `forminfo` VALUES ('cf5b6a00c2f6415af852bc0e99cf23da','2017-07-18 06:40:00','CKSVLEGX','2017-07-18 09:35:41','testaaa',NULL,NULL,'asd',1,1,7,NULL,NULL,NULL),('05bc03c336e46b9b933812446cfb169a','2017-07-12 12:12:39','DEEEWSCX','2017-07-18 09:30:00','very_good',NULL,NULL,'asd',1,0,13,NULL,NULL,NULL),('05bc03c336e46b9b933812446cfb169a','2017-07-25 10:42:24','DPOBPDZQ','2017-07-25 10:42:24','very_good',NULL,NULL,NULL,1,NULL,13,NULL,NULL,NULL),('24b7d2c2aabcfafc1276f5c84515e276','2017-07-12 05:27:00','JXwIjiPa','2017-07-18 06:31:53','test_girl',NULL,0,'test_girl',1,1,5,NULL,NULL,NULL),('05bc03c336e46b9b933812446cfb169a','2017-07-25 10:31:35','KQKOIQJI','2017-07-25 10:31:35','very_good',NULL,NULL,NULL,1,NULL,13,NULL,NULL,NULL),('cf5b6a00c2f6415af852bc0e99cf23da','2017-07-18 09:36:04','RIXHDEHI','2017-07-19 02:41:56','12321',NULL,NULL,NULL,1,0,7,NULL,NULL,NULL),('05bc03c336e46b9b933812446cfb169a','2017-07-25 10:30:23','SGOGXFWF','2017-07-25 10:30:23','very_good',NULL,NULL,NULL,1,NULL,13,NULL,NULL,NULL),('QTIEGVJXZJQFAFWZQLXCDWDFDIZVECAD','2017-07-25 10:45:26','SUJIKAZM','2017-07-25 10:45:26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{\"_meta\":\"main\",\"correlation\":\"[]\",\"trigger\":\"[]\",\"repeat-validator\":\"[]\",\"permissions\":\"[]\",\"scripts\":\"[]\",\"css\":\"[]\",\"addDefaultField\":\"true\"}','','{\"main\":[{\"key\":\"name\",\"describe\":\"表名\",\"_id\":20,\"_uid\":20},{\"key\":\"alias\",\"describe\":\"别名\",\"_id\":21,\"_uid\":21},{\"key\":\"comment\",\"describe\":\"表单描述\",\"_id\":22,\"_uid\":22},{\"key\":\"_meta\",\"value\":\"main\",\"describe\":\"类型\",\"_id\":23,\"_uid\":23},{\"key\":\"correlation\",\"value\":\"[]\",\"describe\":\"表链接\",\"_id\":24,\"_uid\":24},{\"key\":\"trigger\",\"value\":\"[]\",\"describe\":\"触发器\",\"_id\":25,\"_uid\":25},{\"key\":\"repeat-validator\",\"value\":\"[]\",\"describe\":\"重复数据验证规则\",\"_id\":26,\"_uid\":26},{\"key\":\"permissions\",\"value\":\"[]\",\"describe\":\"权限配置\",\"_id\":27,\"_uid\":27},{\"key\":\"scripts\",\"value\":\"[]\",\"describe\":\"javascript\",\"_id\":28,\"_uid\":28},{\"key\":\"css\",\"value\":\"[]\",\"describe\":\"css\",\"_id\":29,\"_uid\":29},{\"key\":\"addDefaultField\",\"value\":\"true\",\"describe\":\"添加默认字段\",\"_id\":30,\"_uid\":30}]}'),('cf5b6a00c2f6415af852bc0e99cf23da','2017-07-12 05:29:36','TU2HyA6t','2017-07-19 02:41:53','12321',NULL,0,'asd',1,0,7,'nil','nil','nil'),('05bc03c336e46b9b933812446cfb169a','2017-07-25 10:42:46','UBJQWQSY','2017-07-25 10:42:46','very_good',NULL,NULL,NULL,1,NULL,13,NULL,NULL,NULL),('cf5b6a00c2f6415af852bc0e99cf23da','2017-07-20 03:41:59','UDQYWDFK','2017-07-20 03:42:44','12321',NULL,NULL,NULL,1,0,7,NULL,NULL,NULL),('CTYLNKWWZHBZRDCOHXKKLCEQKJONPRNQ','2017-07-20 03:44:11','XOBOYDCC','2017-07-20 03:44:11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{\"alias\":\"asda\",\"comment\":\"asda\",\"_meta\":\"main\",\"correlation\":\"[]\",\"trigger\":\"[]\",\"repeat-validator\":\"[]\",\"permissions\":\"[]\",\"scripts\":\"[]\",\"css\":\"[]\",\"addDefaultField\":\"true\"}','<p><input field-id=\"cJscNaKsssbKKtmXZAmifTTwedtstGEt\"/></p>','{\"main\":[{\"key\":\"name\",\"value\":\"测试\",\"describe\":\"表名\"},{\"key\":\"alias\",\"value\":\"asda\",\"describe\":\"别名\"},{\"key\":\"comment\",\"value\":\"asda\",\"describe\":\"表单描述\"},{\"key\":\"_meta\",\"value\":\"main\",\"describe\":\"类型\"},{\"key\":\"correlation\",\"value\":\"[]\",\"describe\":\"表链接\"},{\"key\":\"trigger\",\"value\":\"[]\",\"describe\":\"触发器\"},{\"key\":\"repeat-validator\",\"value\":\"[]\",\"describe\":\"重复数据验证规则\"},{\"key\":\"permissions\",\"value\":\"[]\",\"describe\":\"权限配置\"},{\"key\":\"scripts\",\"value\":\"[]\",\"describe\":\"javascript\"},{\"key\":\"css\",\"value\":\"[]\",\"describe\":\"css\"},{\"key\":\"addDefaultField\",\"value\":\"true\",\"describe\":\"添加默认字段\"}],\"cJscNaKsssbKKtmXZAmifTTwedtstGEt\":[{\"key\":\"name\",\"describe\":\"名称\",\"_id\":42,\"_uid\":42},{\"key\":\"alias\",\"describe\":\"别名\",\"_id\":43,\"_uid\":43},{\"key\":\"comment\",\"describe\":\"字段描述\",\"_id\":44,\"_uid\":44},{\"key\":\"javaType\",\"value\":\"string\",\"describe\":\"java类型\",\"_id\":45,\"_uid\":45},{\"key\":\"is-column\",\"value\":\"true\",\"describe\":\"是否数据库\",\"_id\":46,\"_uid\":46},{\"key\":\"dataType\",\"value\":\"varchar2(128)\",\"describe\":\"数据库类型\",\"_id\":47,\"_uid\":47},{\"key\":\"_meta\",\"value\":\"spinner\",\"describe\":\"控件类型\",\"_id\":48,\"_uid\":48},{\"key\":\"class\",\"value\":\"mini-spinner\",\"describe\":\"class\",\"_id\":49,\"_uid\":49},{\"key\":\"excel-header\",\"value\":\"\",\"describe\":\"excel表头\",\"_id\":50,\"_uid\":50},{\"key\":\"export-excel\",\"value\":true,\"describe\":\"可导出为excel\",\"_id\":51,\"_uid\":51},{\"key\":\"import-excel\",\"value\":true,\"describe\":\"可从excel导入\",\"_id\":52,\"_uid\":52},{\"key\":\"validator-list\",\"value\":\"[]\",\"describe\":\"验证器\",\"_id\":53,\"_uid\":53},{\"key\":\"domProperty\",\"value\":\"[]\",\"describe\":\"其他控件配置\",\"_id\":54,\"_uid\":54}]}');
/*!40000 ALTER TABLE `forminfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module` (
  `icon` varchar(45) DEFAULT NULL,
  `id` varchar(45) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `optional` text,
  `parentId` varchar(30) DEFAULT NULL,
  `properties` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `sortIndex` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `uri` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module`
--

LOCK TABLES `module` WRITE;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
INSERT INTO `module` VALUES ('icon-flag-mn','123213','sourceforge','[{\"id\":\"M\",\"text\":\"菜单可见\",\"checked\":true},{\"id\":\"R\",\"text\":\"查询\",\"checked\":true},{\"id\":\"C\",\"text\":\"新增\",\"checked\":true},{\"id\":\"U\",\"text\":\"修改\",\"checked\":true},{\"id\":\"D\",\"text\":\"删除\",\"checked\":false}]','-1','','123123',0,NULL,'12312'),('','333','github.com','[{\"id\":\"M\",\"text\":\"菜单可见\",\"checked\":true},{\"id\":\"R\",\"text\":\"查询\",\"checked\":true},{\"id\":\"C\",\"text\":\"新增\",\"checked\":true},{\"id\":\"U\",\"text\":\"修改\",\"checked\":true},{\"id\":\"D\",\"text\":\"删除\",\"checked\":false}]','tasdfg',NULL,'',1,1,' '),('icon-sound-low','5','coolshell','[{\"id\":\"M\",\"text\":\"菜单可见\",\"checked\":true},{\"id\":\"R\",\"text\":\"查询\",\"checked\":true},{\"id\":\"C\",\"text\":\"新增\",\"checked\":true},{\"id\":\"U\",\"text\":\"修改\",\"checked\":true},{\"id\":\"D\",\"text\":\"删除\",\"checked\":false}]','zywh',NULL,'qwe',2,1,'1313112132'),('','tasdfg','航天','[{\"id\":\"M\",\"text\":\"菜单可见\",\"checked\":true},{\"id\":\"import\",\"text\":\"导入excel\",\"checked\":true},{\"id\":\"export\",\"text\":\"导出excel\",\"checked\":true},{\"id\":\"R\",\"text\":\"查询\",\"checked\":true},{\"id\":\"C\",\"text\":\"新增\",\"checked\":true},{\"id\":\"U\",\"text\":\"修改\",\"checked\":true},{\"id\":\"D\",\"text\":\"删除\",\"checked\":false}]','default',NULL,'',0,1,'module-view/tasdfg/list.html'),('','zywh','工种','[{\"id\": \"M\", \"text\": \"菜单可见\", \"checked\": true}, {\"id\": \"import\", \"text\": \"导入excel\", \"checked\": true}, {\"id\": \"export\", \"text\": \"导出excel\", \"checked\": true}, {\"id\": \"R\", \"text\": \"查询\", \"checked\": true}, {\"id\": \"C\", \"text\": \"新增\", \"checked\": true}, {\"id\": \"U\", \"text\": \"修改\", \"checked\": true}, {\"id\": \"D\", \"text\": \"删除\", \"checked\": false}]','default',NULL,'',0,1,'module-view/zywh/list.html');
/*!40000 ALTER TABLE `module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_meta`
--

DROP TABLE IF EXISTS `module_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_meta` (
  `id` varchar(45) NOT NULL,
  `key` varchar(45) DEFAULT NULL,
  `md5` varchar(60) DEFAULT NULL,
  `meta` json DEFAULT NULL,
  `moduleId` varchar(45) DEFAULT NULL,
  `properties` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `roleId` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `actions` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_meta`
--

LOCK TABLES `module_meta` WRITE;
/*!40000 ALTER TABLE `module_meta` DISABLE KEYS */;
INSERT INTO `module_meta` VALUES ('019a4ad2c7fd653f5246d89a4eb5bd2b','测试jone','a38b18634096885e21bd6a38b748ce3b','{\"key\": \"测试jone\", \"remark\": \"急倒\", \"roleId\": \",,,test,,,\", \"dynForm\": \"liuwp\", \"pagesize\": \"\", \"info_page\": \"6789\", \"save_page\": \"\", \"table_api\": \"\", \"create_page\": \"\", \"actionConfig\": [{\"icon\": \"icon-edit\", \"title\": \"编辑\", \"onclick\": \"editData(id);\", \"moduleAction\": \"U\"}, {\"icon\": \"icon-flag-tr\", \"title\": \"添加\", \"moduleAction\": \"A\"}, {\"icon\": \"icon-bullet-cross\", \"title\": \"删除\", \"onclick\": \"delData(id);\"}], \"formFieldList\": \"\", \"dynFormVersion\": 1, \"tableFieldList\": \"\", \"queryPlanConfig\": [{\"id\": \"zkacmZmd\", \"type\": \"and\", \"field\": \"u_id\", \"title\": \"主键\", \"queryType\": \"=\"}, {\"id\": \"hbmHhaWN\", \"type\": \"and\", \"field\": \"u_id\", \"title\": \"主键\", \"queryType\": \"=\"}], \"queryTableConfig\": [{\"id\": \"SMWncmTC\", \"align\": \"center\", \"field\": \"u_id\", \"width\": 100, \"header\": \"主键\", \"visible\": true, \"headerAlign\": \"center\", \"displayField\": \"u_id\"}]}','测试jone',NULL,'急倒','test',0,'[\"M\",\"R\",\"C\",\"D\"]'),('92da6c2f0a178c194ec86b606c9d00bb','query-plan','dd75f825678fa40ec4c7cdd660f92aff','{\"key\": \"query-plan\", \"remark\": \"helllo\", \"roleId\": \",dev,\", \"dynForm\": \"testname\", \"pagesize\": \"\", \"info_page\": \"infomation.hmtl\", \"save_page\": \"ugly.html\", \"table_api\": \"int printf(const* fmt, ...)\", \"create_page\": \"beautiful.js\", \"actionConfig\": [{\"icon\": \"icon-find\", \"title\": \"查看\", \"onclick\": \"infoData(id);\", \"moduleAction\": \"\"}, {\"icon\": \"icon-edit\", \"title\": \"编辑\", \"onclick\": \"editData(id);\", \"moduleAction\": \"U\"}], \"formFieldList\": \"\", \"dynFormVersion\": 0, \"tableFieldList\": \"\", \"queryPlanConfig\": [{\"id\": \"DTExkaPT\", \"type\": \"and\", \"field\": \"testname\", \"title\": \"测试名称\", \"queryType\": \"=\"}, {\"id\": \"EptcTbsN\", \"type\": \"and\", \"field\": \"u_id\", \"title\": \"主键\", \"queryType\": \"=\"}], \"queryTableConfig\": []}','query-plan',NULL,'helllo',',dev,',0,NULL),('CIBEUZAEUSBZJCSJXHFM','123',NULL,'{\"key\": \"123\", \"remark\": \"12312\", \"roleId\": \",dev,\", \"dynForm\": \"\", \"pagesize\": 10, \"info_page\": \"123\", \"save_page\": \"123\", \"table_api\": \"123\", \"create_page\": \"123\", \"actionConfig\": [], \"formFieldList\": \"\", \"dynFormVersion\": 0, \"tableFieldList\": \"\", \"queryPlanConfig\": [], \"queryTableConfig\": []}','123',NULL,'12312','dev',NULL,NULL),('YYKIYKLWGLJPPZLDFBIY','5',NULL,'{\"key\": \"5\", \"remark\": \"asd\", \"roleId\": \"\", \"dynForm\": \"\", \"pagesize\": 10, \"info_page\": \"\", \"save_page\": \"\", \"table_api\": \"\", \"create_page\": \"\", \"actionConfig\": [{\"icon\": \"icon-find\", \"title\": \"查看\", \"onclick\": \"infoData(id);\", \"moduleAction\": \"\"}, {\"icon\": \"icon-edit\", \"title\": \"编辑\", \"onclick\": \"editData(id);\", \"moduleAction\": \"U\"}], \"formFieldList\": \"\", \"dynFormVersion\": 0, \"tableFieldList\": \"\", \"queryPlanConfig\": [], \"queryTableConfig\": []}','5',NULL,'asd','',NULL,NULL),('ZVFKRGTGBRKRXHRRXRME','123213',NULL,'{\"key\": \"123213\", \"remark\": \"adad\", \"roleId\": \",123123123,\", \"dynForm\": \"\", \"pagesize\": 10, \"info_page\": \"\", \"save_page\": \"\", \"table_api\": \"\", \"create_page\": \"\", \"actionConfig\": [{\"icon\": \"icon-find\", \"title\": \"查看\", \"onclick\": \"infoData(id);\", \"moduleAction\": \"\"}, {\"icon\": \"icon-edit\", \"title\": \"编辑\", \"onclick\": \"editData(id);\", \"moduleAction\": \"U\"}], \"formFieldList\": \"\", \"dynFormVersion\": 0, \"tableFieldList\": \"\", \"queryPlanConfig\": [], \"queryTableConfig\": []}','123213',NULL,'adad','123123123',NULL,NULL);
/*!40000 ALTER TABLE `module_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` varchar(20) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `properties` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES ('123','1','dev','',NULL),('12312123','asdasd','dev','',NULL),('123123','asda','test','asd',NULL),('123123123','阿斯蒂芬','test','',NULL),('asda','asdas','dev','',NULL),('asdasd','asdasd','pro','asdasd',NULL),('dev','develop','red','研发人员',NULL),('dfgdfg','dgdfg','test','',NULL),('product','pro','pro','产品经理',NULL),('test','test','test','测试',NULL),('tetest','setetset','test','setset',NULL);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_type`
--

DROP TABLE IF EXISTS `role_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_type` (
  `text` varchar(45) DEFAULT NULL,
  `id` varchar(45) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_type`
--

LOCK TABLES `role_type` WRITE;
/*!40000 ALTER TABLE `role_type` DISABLE KEYS */;
INSERT INTO `role_type` VALUES ('dev','dev','开发'),('pro','pro','产品'),('test','test','测试');
/*!40000 ALTER TABLE `role_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tables`
--

DROP TABLE IF EXISTS `tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tables` (
  `alias` varchar(45) NOT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `columns` text,
  PRIMARY KEY (`alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tables`
--

LOCK TABLES `tables` WRITE;
/*!40000 ALTER TABLE `tables` DISABLE KEYS */;
INSERT INTO `tables` VALUES ('LIUWP','','LIUWP','[{\"name\": \"u_id\", \"alias\": \"u_id\", \"comment\": \"主键\", \"notNull\": true, \"dataType\": \"varchar(32)\", \"javaType\": null, \"jdbcType\": \"VARCHAR\", \"primaryKey\": false, \"properties\": {\"not-null\": true, \"old-name\": \"u_id\", \"data_type\": \"VARCHAR\", \"data_scale\": 0, \"data_length\": 32, \"data_precision\": 32}}]');
/*!40000 ALTER TABLE `tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` varchar(20) DEFAULT NULL,
  `createDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `properties` varchar(20) DEFAULT NULL,
  `roleinfo` varchar(20) DEFAULT NULL,
  `updateDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `username` varchar(20) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('aa123','2017-07-07 09:43:34',NULL,'admin',NULL,NULL,NULL,'2017-07-24 08:06:48','admin',1,'admin'),(NULL,'2017-07-25 09:41:47','1212@qq.com','1','1',NULL,NULL,'2017-07-25 09:41:47','adminsad',NULL,'12312'),(NULL,'2017-07-07 09:53:59','123123@qq.com','asdasd','131231',NULL,NULL,'2017-07-07 09:53:59','asdad',NULL,'12314'),(NULL,'2017-07-25 05:54:23','','xiehuia','123123',NULL,NULL,'2017-07-25 05:54:23','chuangjian',NULL,'123213'),(NULL,'2017-07-07 09:57:36','123213@qq.com','hello','123123',NULL,NULL,'2017-07-07 09:57:36','hello',NULL,'123123'),('tokyo','2017-07-07 03:41:56','12312sa@qq.com','test5','124453',NULL,NULL,'2017-07-07 09:38:13','look',-1,''),(NULL,'2017-07-12 01:52:17','asad@qq.com','asda','123123',NULL,NULL,'2017-07-12 01:52:17','mcj',NULL,'12312'),(NULL,'2017-07-07 10:07:14','11@qq.com','moserkill','1823123',NULL,NULL,'2017-07-07 10:07:14','moserkill',NULL,'12321'),(NULL,'2017-07-24 08:48:28','','etset','',NULL,NULL,'2017-07-24 08:48:28','test',NULL,'stetet'),('AzLa1s','2017-07-07 02:21:00','61123@qq.com','test599','123123',NULL,NULL,'2017-07-07 09:38:13','test5',1,''),('tyGClQ','2017-07-07 02:20:18',NULL,'xiehui',NULL,NULL,NULL,'2017-07-07 09:39:46','xiehui',1,'123'),(NULL,'2017-07-25 05:55:02','','xiehuia','1123213213',NULL,NULL,'2017-07-25 05:55:02','xiehuia',NULL,'213123'),(NULL,'2017-07-25 05:57:47','','','',NULL,NULL,'2017-07-25 05:57:47','xiehuiabc',NULL,'213123'),(NULL,'2017-07-07 09:52:45','1278123@gmail.com','xiexie','1826718',NULL,NULL,'2017-07-07 09:52:45','xiqew',NULL,'1234');
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

-- Dump completed on 2017-07-28 10:58:39
