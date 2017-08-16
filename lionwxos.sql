-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: lionwxos
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
-- Table structure for table `alipay_account`
--

DROP TABLE IF EXISTS `alipay_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alipay_account` (
  `id` varchar(50) NOT NULL,
  `accont_name` varchar(100) DEFAULT NULL COMMENT '名称',
  `appid` varchar(255) DEFAULT NULL COMMENT '企业号标识CorpID',
  `rsa_private_key` varchar(2000) DEFAULT NULL COMMENT '管理组凭证密钥Secret',
  `alipay_public_key` varchar(2000) DEFAULT NULL COMMENT 'AccessToken',
  `account_desc` varchar(300) DEFAULT NULL COMMENT '描述',
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  `conversation_secret` varchar(255) DEFAULT NULL,
  `PUBLIC_KEY` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_corpid` (`appid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='账号信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alipay_account`
--

LOCK TABLES `alipay_account` WRITE;
/*!40000 ALTER TABLE `alipay_account` DISABLE KEYS */;
INSERT INTO `alipay_account` VALUES ('402880a94742e24e014742e8942b0002','jeewx支付窗','2015121500981210','?','?','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'?');
/*!40000 ALTER TABLE `alipay_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alipay_autoresponse`
--

DROP TABLE IF EXISTS `alipay_autoresponse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alipay_autoresponse` (
  `id` varchar(100) NOT NULL,
  `key_word` varchar(200) DEFAULT NULL COMMENT '关键字',
  `res_content` varchar(500) DEFAULT NULL COMMENT '回复内容',
  `msg_type` varchar(100) DEFAULT NULL COMMENT '消息类型',
  `template_name` varchar(100) DEFAULT NULL COMMENT '模板名称',
  `accountid` varchar(100) DEFAULT NULL COMMENT '微信账号id',
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`),
  KEY `idx_accountid` (`accountid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='关键字管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alipay_autoresponse`
--

LOCK TABLES `alipay_autoresponse` WRITE;
/*!40000 ALTER TABLE `alipay_autoresponse` DISABLE KEYS */;
INSERT INTO `alipay_autoresponse` VALUES ('15314E56DCEF4D4BB2583B52E3B3C22F','你好','F65B42281D1E46E69FBEAEEC43587F6D','text','nihao','402880a94742e24e014742e8942b0002',NULL,NULL,'2016-12-20 16:24:29',NULL,NULL,NULL),('4E08CEFC43A94084A4E5146420E4CDBC','nihao','F65B42281D1E46E69FBEAEEC43587F6D','text','nihao','402880a94742e24e014742e8942b0002',NULL,NULL,'2016-07-07 12:05:46',NULL,NULL,NULL),('B1488D84B451472980425E65E1A9D2D1','jeecg','7A1B95B8B5144E3B8D97BDB29C973538','news','JEECG支付宝图文','402880a94742e24e014742e8942b0002',NULL,NULL,'2016-06-29 23:08:26',NULL,NULL,NULL);
/*!40000 ALTER TABLE `alipay_autoresponse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alipay_autoresponse_default`
--

DROP TABLE IF EXISTS `alipay_autoresponse_default`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alipay_autoresponse_default` (
  `id` varchar(50) NOT NULL COMMENT '主键Id',
  `templatename` varchar(200) NOT NULL COMMENT '模板名称',
  `templateid` varchar(50) NOT NULL COMMENT '模板Id',
  `msgtype` varchar(40) DEFAULT NULL COMMENT '消息类型',
  `accountid` varchar(40) DEFAULT NULL COMMENT '微信账号Id',
  `iswork` varchar(10) DEFAULT NULL COMMENT '是否启用',
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='默认关键字回复';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alipay_autoresponse_default`
--

LOCK TABLES `alipay_autoresponse_default` WRITE;
/*!40000 ALTER TABLE `alipay_autoresponse_default` DISABLE KEYS */;
INSERT INTO `alipay_autoresponse_default` VALUES ('8a792db34fdf51b3014fdfb22e87004f','默认回复语','8a792db34fdf51b3014fdfb1fdb3004c','text','402880a94742e24e014742e8942b0002','1',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `alipay_autoresponse_default` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alipay_gzentity`
--

DROP TABLE IF EXISTS `alipay_gzentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alipay_gzentity` (
  `id` varchar(100) NOT NULL,
  `template_name` varchar(100) DEFAULT NULL COMMENT '模板名称',
  `template_id` varchar(100) DEFAULT NULL COMMENT '模板id',
  `template_type` varchar(100) DEFAULT NULL COMMENT '类型 文本_text,图文_news',
  `is_work` varchar(100) DEFAULT NULL COMMENT '是否启用 未启用_0,启用_1',
  `accountid` varchar(100) DEFAULT NULL COMMENT '微信账号id',
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='关注回复';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alipay_gzentity`
--

LOCK TABLES `alipay_gzentity` WRITE;
/*!40000 ALTER TABLE `alipay_gzentity` DISABLE KEYS */;
INSERT INTO `alipay_gzentity` VALUES ('402880a94936f3ee0149370671400001','关注回复语','8a792db34fdf51b3014fdfb1fdb3004c','text','1','402880a94742e24e014742e8942b0002',NULL,NULL,NULL,NULL,NULL,NULL),('4B535E499E3342E5AFC94C2D72CA082E','支付宝测试图文','F47A1A912AE345589CB5E1E87202FF7B','news','0','402880a94742e24e014742e8942b0002',NULL,NULL,'2016-06-29 23:09:15',NULL,NULL,NULL);
/*!40000 ALTER TABLE `alipay_gzentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alipay_gzuserinfo`
--

DROP TABLE IF EXISTS `alipay_gzuserinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alipay_gzuserinfo` (
  `id` varchar(100) CHARACTER SET gbk NOT NULL COMMENT '主键',
  `userid` varchar(100) DEFAULT NULL COMMENT '账号',
  `name` varchar(100) DEFAULT NULL COMMENT '姓名',
  `department` varchar(200) DEFAULT NULL COMMENT '部门',
  `position` varchar(100) DEFAULT NULL COMMENT '职位',
  `mobile` varchar(100) DEFAULT NULL COMMENT '电话',
  `province` varchar(100) DEFAULT NULL COMMENT '省份',
  `gender` varchar(100) DEFAULT NULL COMMENT '性别gender=1表示男，=0表示女',
  `email` varchar(400) DEFAULT NULL COMMENT '邮箱',
  `weixinid` varchar(100) DEFAULT NULL COMMENT '微信号',
  `avatar` varchar(100) DEFAULT NULL COMMENT '头像url',
  `subscribe_status` varchar(100) DEFAULT NULL COMMENT '关注状态: 1=已关注，2=已冻结，4=未关注',
  `subscribe_time` datetime DEFAULT NULL COMMENT '关注时间',
  `accountid` varchar(100) DEFAULT NULL COMMENT '微信账号ID',
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='关注用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alipay_gzuserinfo`
--

LOCK TABLES `alipay_gzuserinfo` WRITE;
/*!40000 ALTER TABLE `alipay_gzuserinfo` DISABLE KEYS */;
INSERT INTO `alipay_gzuserinfo` VALUES ('1A7FF1B75285465DBA40F0C70F5A71E8','20881031842092627793459920019496',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,'2016-12-20 23:11:01',NULL,NULL,NULL),('348D4981D9BE45679BEEF80C4B4143F7','20880083282343625743082342419456',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,'2016-12-20 23:11:02',NULL,NULL,NULL),('3E728B2D1CD34970BDE02BF2CDE90A51','20881020743943595881371201819418',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,'2016-12-20 23:11:01',NULL,NULL,NULL),('4AD072326053422FBF8C3386EDCC8CAA','20881020743943883608363651819482',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,'2016-12-20 23:11:02',NULL,NULL,NULL),('609C15B2CD9847EDBD39316AC68DC2A9','20880020502862901156333911019474',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,'2016-12-20 23:11:01',NULL,NULL,NULL),('676FA11526F343B6B3D0F640502864DF','20880059502513400130289910719407',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,'2016-12-20 23:11:01',NULL,NULL,NULL),('680F8B6DB78B435D9BB13C27F37D804E','20880062477199306806543630119465',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,'2016-12-20 23:11:02',NULL,NULL,NULL),('7697E50079684FB0A5285CCDEF6724C5','20880017519788123843699093119431',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,'2016-12-20 23:11:01',NULL,NULL,NULL),('8324E98277C042FA8331540DA145B2EE','20880054849663244665282921619448',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,'2016-12-20 23:11:01',NULL,NULL,NULL),('881691286CB84D58B696F3D641E22EEE','20880054197230107528206912619490',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,'2016-12-20 23:11:01',NULL,NULL,NULL),('952A264667154F2EB1ED849F15C08B2E','20880074330486915983138131419414',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,'2016-12-20 23:11:02',NULL,NULL,NULL),('AA5AD0868B0949CD803EC39F02B8F02F','20880083002078558077811642819460',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,'2016-12-20 23:11:01',NULL,NULL,NULL),('AC2DCF611F8D470CB7E0F342E9BB42D9','20880074692262166946381440319403',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,'2016-12-20 23:11:01',NULL,NULL,NULL),('BF2E07F76B814341854E5070D7482180','20881062565070899752701612719459',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,'2016-12-20 23:11:01',NULL,NULL,NULL),('CD10799649434381AA4292AAC67B50D0','20880074330493508920562121419446',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,'2016-12-20 23:11:02',NULL,NULL,NULL),('E131E911FF434ABDAB50B85C015063A9','20880020502872897336717011019410',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,'2016-12-20 23:11:01',NULL,NULL,NULL),('F3139DD1BC6D4D5794707B780CD096FC','20881011548320625084538750519437',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,'2016-12-20 23:11:01',NULL,NULL,NULL),('F641D6DF5CCA42B3835F4EB7F832D73E','20880006335185776137228431719449',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,'2016-12-20 23:11:02',NULL,NULL,NULL);
/*!40000 ALTER TABLE `alipay_gzuserinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alipay_menu`
--

DROP TABLE IF EXISTS `alipay_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alipay_menu` (
  `ID` varchar(32) NOT NULL,
  `agent_id` varchar(255) DEFAULT NULL COMMENT '应用主键ID',
  `menu_name` varchar(255) DEFAULT NULL COMMENT '菜单标题',
  `menu_type` varchar(255) DEFAULT NULL COMMENT '菜单类型',
  `menu_key` varchar(255) DEFAULT NULL COMMENT '菜单KEY',
  `orders` varchar(10) DEFAULT NULL COMMENT '菜单位置',
  `msg_type` varchar(255) DEFAULT NULL COMMENT '响应消息类型',
  `template_id` varchar(255) DEFAULT NULL COMMENT '关联素材ID',
  `url` varchar(1000) DEFAULT NULL COMMENT '网页链接',
  `father_id` varchar(32) DEFAULT NULL COMMENT '父ID',
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `menu_key` (`menu_key`),
  UNIQUE KEY `order` (`orders`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='自定义菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alipay_menu`
--

LOCK TABLES `alipay_menu` WRITE;
/*!40000 ALTER TABLE `alipay_menu` DISABLE KEYS */;
INSERT INTO `alipay_menu` VALUES ('050DD02B4E8A4B06BDE8E6FE1CECCF0F',NULL,'百度','link','13','13','text','F214C903F8444BADA9F974327B726342','http://www.baidu.com','1907D8112FD7453BBCDDDEF1C7FF7020',NULL,NULL,'2016-07-14 11:04:21',NULL,NULL,NULL),('1907D8112FD7453BBCDDDEF1C7FF7020',NULL,'北京国炬','out','1','1','text','F214C903F8444BADA9F974327B726342','','',NULL,NULL,'2016-07-14 09:34:33',NULL,NULL,NULL),('7D395F8A0BA140E7A810A90724AEA1B4',NULL,'触发文本','out','21','21','text','ff808081538e81b40153a172bfcc0070','','B9AAA5D38079466DA112080B221970CF',NULL,NULL,'2016-07-07 11:54:10',NULL,NULL,NULL),('9B6E04A2D594443383A3036E5A4FE6B4',NULL,'触发图文','out','22','22','news','7A1B95B8B5144E3B8D97BDB29C973538','','B9AAA5D38079466DA112080B221970CF',NULL,NULL,'2016-07-07 11:54:42',NULL,NULL,NULL),('B9AAA5D38079466DA112080B221970CF',NULL,'触发菜单','out','2','2','text','F65B42281D1E46E69FBEAEEC43587F6D','','',NULL,NULL,NULL,NULL,NULL,NULL),('EFF7B7D2662946AFA2DC9E230D8D5208',NULL,'捷微产品','out','11','11','text','B1AB9EE54A4542B5954F389A01113F53','http://www.jeewx.com','1907D8112FD7453BBCDDDEF1C7FF7020',NULL,NULL,'2016-07-14 09:37:05',NULL,NULL,NULL);
/*!40000 ALTER TABLE `alipay_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alipay_messagelog`
--

DROP TABLE IF EXISTS `alipay_messagelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alipay_messagelog` (
  `id` varchar(200) NOT NULL,
  `message_type` varchar(50) DEFAULT NULL,
  `content_id` varchar(500) DEFAULT NULL,
  `receive_message` varchar(200) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `message_content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alipay_messagelog`
--

LOCK TABLES `alipay_messagelog` WRITE;
/*!40000 ALTER TABLE `alipay_messagelog` DISABLE KEYS */;
/*!40000 ALTER TABLE `alipay_messagelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alipay_newsitem`
--

DROP TABLE IF EXISTS `alipay_newsitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alipay_newsitem` (
  `id` varchar(100) NOT NULL,
  `title` varchar(300) DEFAULT NULL COMMENT '标题',
  `author` varchar(100) DEFAULT NULL COMMENT '作者',
  `image_path` varchar(100) DEFAULT NULL COMMENT '图片路径',
  `content` longtext COMMENT '内容',
  `templateid` varchar(100) DEFAULT NULL COMMENT '图文模板id',
  `description` varchar(400) DEFAULT NULL COMMENT '摘要',
  `order_no` varchar(100) DEFAULT NULL COMMENT '新闻顺序',
  `url` varchar(100) DEFAULT NULL COMMENT '消息内容的url',
  `hdid` varchar(100) DEFAULT NULL COMMENT '活动id',
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='图文素材新闻';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alipay_newsitem`
--

LOCK TABLES `alipay_newsitem` WRITE;
/*!40000 ALTER TABLE `alipay_newsitem` DISABLE KEYS */;
INSERT INTO `alipay_newsitem` VALUES ('18342D4E58884D55B70D93C1D3F2A24A','12','12','upload/files/1348502772_8826.gif','<p>121212</p>','0A1776E6FE6F4AFB9CF558175AAF495D','12','1','',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('7F2A47FF49684BD29E51339C4EFDFF05','jeecg图文1','jeecg','upload/files/jeecg_scott.jpg','<p>JEECG是一款基于代码生成器的J2EE快速开发平</p>','F47A1A912AE345589CB5E1E87202FF7B','jeecg支付服务窗图文','1','',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('832F2A63469A4B438C7A2280BA8E9973',' jeecg',' jeecg','upload/files/ppx01814elfynejrpjjhm47.png','<p><span style=\"color: rgb(65, 131, 196); font-family: Lato, &#39;Helvetica Neue&#39;, &#39;Microsoft YaHei&#39;, Arial, Helvetica, sans-serif; font-size: 24px; line-height: 31.92px; background-color: rgb(250, 250, 250);\">&nbsp;</span><a href=\"http://git.oschina.net/jeecg/jeecg\" class=\"repository\" title=\"jeecg\" style=\"box-sizing: inherit; color: rgb(65, 131, 196); text-decoration: none; display: inline-block; max-width: 450px; vertical-align: text-bottom; text-overflow: ellipsis; overflow: hidden; font-family: Lato, &#39;Helvetica Neue&#39;, &#39;Microsoft YaHei&#39;, Arial, Helvetica, sans-serif; font-size: 24px; line-height: 31.92px; padding-bottom: 0px; cursor: pointer !important; background: rgb(250, 250, 250);\">jeecg</a></p><p><img src=\"http://localhost/jeewx/upload/ueditor/20161216/27671481901651392.png\" title=\"ppx01814elfynejrpjjhm47.png\"/></p>','7A1B95B8B5144E3B8D97BDB29C973538',' jeecg jeecg','1','http://www.baidu.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('8a792db34fdf51b3014fdfa41353002e','test','test','upload/files/2008822103119443_2.jpg','<ul style=\"padding: 0px; color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\" class=\" list-paddingleft-2\"><li><p><span style=\"margin: 0px; padding: 0px; font-family: &#39;Microsoft YaHei&#39;;\"><strong>相册页面</strong></span><span style=\"margin: 0px; padding: 0px; font-family: &#39;Microsoft YaHei&#39;;\">&nbsp;&nbsp;</span><span style=\"margin: 0px; padding: 0px; font-size: 12px; font-family: &#39;Microsoft YaHei&#39;;\">http://localhost/jeecg-p3-web/p3test.do?page&amp;url=oa/test/basic_gallery.html</span></p></li></ul><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p><span style=\"margin: 0px; padding: 0px; font-family: &#39;Microsoft YaHei&#39;;\"><img src=\"http://img.blog.csdn.net/20160412171725458?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQv/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center\" alt=\"\" style=\"border: none; max-width: 100%;\"/><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><ul style=\"padding: 0px; color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\" class=\" list-paddingleft-2\"><li><p><span style=\"margin: 0px; padding: 0px; font-family: &#39;Microsoft YaHei&#39;;\"><strong>联系人</strong>&nbsp;&nbsp;</span><span style=\"margin: 0px; padding: 0px; font-family: &#39;Microsoft YaHei&#39;;\"><span style=\"margin: 0px; padding: 0px; font-size: 12px;\">http://localhost/jeecg-p3-web/p3test.do?page&amp;url=oa/test/contacts.html</span></span></p></li></ul><p><span style=\"margin: 0px; padding: 0px; font-family: &#39;Microsoft YaHei&#39;; font-size: 12px;\"><img src=\"http://img.blog.csdn.net/20160412171812709?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQv/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center\" alt=\"\" style=\"border: none; max-width: 100%;\"/></span></p><p><br/></p>','8a792db34fdf51b3014fdfa3c6aa002c','111','1','','',NULL,NULL,NULL,NULL,NULL,NULL),('BC89EDABF05E4678A7DC46087A8B1FBD','1231','123123','upload/files/70g58PICeGn.jpg','<p>123<br/></p>','3D4ABC0B6B5F46EA9A53311FD9E871DA','123','1','',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('ff808081538e81b40153a1602d3c006b','2323','23','upload/files/20160323104906i8kA3KPF.jpg','<p>2323</p>','ff808081538e81b401539bb4b1c80034','23','23','23','',NULL,NULL,NULL,NULL,NULL,NULL),('ff808081538e81b40153a17b319a0076','sss','ddddd','upload/files/20160323111823UttemyYU.png','<p>ssssss</p>','ff808081538e81b40153a1787a020074','jjjjjj','11','	http://www.zstobacco.com.cn:9091/tobacco-marketing/f/wxcp?verify&a=37','',NULL,NULL,NULL,NULL,NULL,NULL),('FFF442C7C80D4052B08E37FF4F96F3C0','jeewx','jeewx','upload/files/profile_small.jpg','<p>jeewxjeewxjeewx</p><p><img src=\"http://localhost/jeewx/upload/ueditor/20161216/97461481901685451.jpg\" title=\"profile_small.jpg\"/></p>','7A1B95B8B5144E3B8D97BDB29C973538','jeewx','2','',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `alipay_newsitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alipay_newstemplate`
--

DROP TABLE IF EXISTS `alipay_newstemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alipay_newstemplate` (
  `id` varchar(100) NOT NULL,
  `template_name` varchar(200) DEFAULT NULL COMMENT '模板名称',
  `template_type` varchar(100) DEFAULT NULL COMMENT '模板类型',
  `accountid` varchar(100) DEFAULT NULL COMMENT '微信企业号账号id',
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='图文素材模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alipay_newstemplate`
--

LOCK TABLES `alipay_newstemplate` WRITE;
/*!40000 ALTER TABLE `alipay_newstemplate` DISABLE KEYS */;
INSERT INTO `alipay_newstemplate` VALUES ('7A1B95B8B5144E3B8D97BDB29C973538','支付窗图文',NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,'2016-06-16 21:49:50',NULL,NULL,NULL);
/*!40000 ALTER TABLE `alipay_newstemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alipay_receivetext`
--

DROP TABLE IF EXISTS `alipay_receivetext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alipay_receivetext` (
  `id` varchar(100) NOT NULL,
  `tousername` varchar(100) NOT NULL COMMENT '开发者微信号',
  `fromusername` varchar(100) DEFAULT NULL COMMENT '发送方帐号（一个OpenID）',
  `createtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '消息创建时间 （整型）',
  `msgtype` varchar(100) DEFAULT NULL COMMENT '消息类型（text/image/location/link）',
  `msgid` varchar(100) DEFAULT NULL COMMENT '消息id，64位整型',
  `content` varchar(400) DEFAULT NULL COMMENT '消息内容',
  `response` varchar(10) DEFAULT NULL COMMENT '是否回复',
  `rescontent` varchar(400) DEFAULT NULL COMMENT '回复内容',
  `nickname` varchar(100) DEFAULT NULL COMMENT '用户昵称',
  `accountid` varchar(40) DEFAULT NULL COMMENT '微信账号Id',
  `agent_id` varchar(200) DEFAULT NULL COMMENT '应用ID(微信)',
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文本消息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alipay_receivetext`
--

LOCK TABLES `alipay_receivetext` WRITE;
/*!40000 ALTER TABLE `alipay_receivetext` DISABLE KEYS */;
INSERT INTO `alipay_receivetext` VALUES ('15E1740AC7CD4932A585D954BFBD62FA','jeecg服务窗','20880062477199306806543630119465','2016-12-16 23:32:25','文本消息',NULL,'jeewx','回复成功',NULL,NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('1B87F1CB34AB4404B89D24270652E11D','jeecg服务窗','20880062477199306806543630119465','2016-12-16 23:22:59','文本消息',NULL,'nihao','回复成功',NULL,NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('1D95511136D446F4ADADCAF0269A50ED','jeecg服务窗','20880062477199306806543630119465','2016-12-16 23:34:11','文本消息',NULL,'用户关注','回复成功',NULL,NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2BEB7D3014BB45788426426E00E4F826','jeecg服务窗','20880062477199306806543630119465','2016-12-16 23:31:38','文本消息',NULL,'用户关注','回复成功',NULL,NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('456FADF59BA9426E918774244B5A6271','jeecg服务窗','20880062477199306806543630119465','2016-12-16 23:34:13','文本消息',NULL,'触发文本','回复成功',NULL,NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4EBF4B4B9E5D48979CED14133A0084A7','jeecg服务窗','20880062477199306806543630119465','2016-12-16 23:23:04','文本消息',NULL,'jeecg','回复成功',NULL,NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5875496DAEC349469B1527B99E24AEC6','jeewx 演示服务窗','20880062477199306806543630119465','2016-12-20 18:29:49','文本消息',NULL,'你好','回复成功',NULL,NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('688BE88D5C9D4338B462C0E9C2EED79F','jeewx 演示服务窗','20880062477199306806543630119465','2016-12-20 16:24:16','文本消息',NULL,'你好','回复成功',NULL,NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('705AF89B7AC74C9AA7186C1FB5F0A191','jeecg服务窗','20880062477199306806543630119465','2016-12-16 23:32:07','文本消息',NULL,'用户关注','回复成功',NULL,NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('7EECFCEBBF094C75B14C15FBB5C9C47C','jeecg服务窗','20880062477199306806543630119465','2016-12-16 23:32:09','文本消息',NULL,'捷微官网','回复成功',NULL,NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('80C5E7B0FCAF4388BC6D044478A2D8E5','jeecg服务窗','20880062477199306806543630119465','2016-12-16 23:32:21','文本消息',NULL,'jeecg','回复成功',NULL,NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A25BAB80B918413480817CD454788D12','jeecg服务窗','20880062477199306806543630119465','2016-12-16 23:34:08','文本消息',NULL,'用户关注','回复成功',NULL,NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A2765C2E61F1485AA5BD90B0D9E7A29B','jeewx 演示服务窗','20880062477199306806543630119465','2016-12-20 16:25:28','文本消息',NULL,'用户关注','回复成功',NULL,NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A5D8A523E34E4CAEB341861230AE403E','jeecg服务窗','20880062477199306806543630119465','2016-12-16 23:36:13','文本消息',NULL,'捷微产品','回复成功',NULL,NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('AB93899B9B1C4BCCA75D5224F06EA626','jeecg服务窗','20880062477199306806543630119465','2016-12-16 23:34:19','文本消息',NULL,'捷微官网','回复成功',NULL,NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('C52F59EAE52F46DD961A6F3E0CED4190','jeewx 演示服务窗','20880062477199306806543630119465','2016-12-20 16:26:03','文本消息',NULL,'用户关注','回复成功',NULL,NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('C81412D555D748CDA1E1942490AD9D67','jeecg服务窗','20880062477199306806543630119465','2016-12-16 23:32:18','文本消息',NULL,'捷微官网','回复成功',NULL,NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('CA7368B20029427C96316C4AB191C19B','jeewx 演示服务窗','20880062477199306806543630119465','2016-12-20 16:26:37','文本消息',NULL,'你好','回复成功',NULL,NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('D1701D132BA64AF298C4A125F42B82A9','jeecg服务窗','20880062477199306806543630119465','2016-12-16 23:34:16','文本消息',NULL,'触发图文','回复成功',NULL,NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('F23306EEFF6A48F0BC7F9311B5477BC0','jeewx 演示服务窗','20880062477199306806543630119465','2016-12-20 16:24:36','文本消息',NULL,'你好','回复成功',NULL,NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `alipay_receivetext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alipay_receivetext_content`
--

DROP TABLE IF EXISTS `alipay_receivetext_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alipay_receivetext_content` (
  `id` varchar(100) NOT NULL,
  `receivetext_id` varchar(100) NOT NULL COMMENT '用户消息表 id',
  `content` varchar(400) DEFAULT NULL COMMENT '消息内容',
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户消息详情';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alipay_receivetext_content`
--

LOCK TABLES `alipay_receivetext_content` WRITE;
/*!40000 ALTER TABLE `alipay_receivetext_content` DISABLE KEYS */;
INSERT INTO `alipay_receivetext_content` VALUES ('B558A45827A6444797B6CB380D9655B2','1B87F1CB34AB4404B89D24270652E11D','9999',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `alipay_receivetext_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alipay_texttemplate`
--

DROP TABLE IF EXISTS `alipay_texttemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alipay_texttemplate` (
  `id` varchar(100) NOT NULL,
  `template_name` varchar(200) NOT NULL COMMENT '模板名称',
  `template_content` varchar(500) NOT NULL COMMENT '模板内容',
  `accountid` varchar(100) DEFAULT NULL COMMENT '微信企业账户id',
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文本模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alipay_texttemplate`
--

LOCK TABLES `alipay_texttemplate` WRITE;
/*!40000 ALTER TABLE `alipay_texttemplate` DISABLE KEYS */;
INSERT INTO `alipay_texttemplate` VALUES ('8a792db34fdf51b3014fdfa391fd002a','素材一句话冠亚军','测试素材很干净','402880a94742e24e014742e8942b0002',NULL,NULL,NULL,NULL,NULL,NULL),('8a792db34fdf51b3014fdfb196200049','验证回复语','验证回复语','402880a94742e24e014742e8942b0002',NULL,NULL,NULL,NULL,NULL,NULL),('8a792db34fdf51b3014fdfb1fdb3004c','关注回复语','关注回复语，欢迎你关注jeecg支付服务窗','402880a94742e24e014742e8942b0002',NULL,NULL,NULL,NULL,NULL,NULL),('B1AB9EE54A4542B5954F389A01113F53','JEEWX产品介绍','Jeewx是一款开源、免费的微信管家系统（多触点管理平台）。采用JAVA语言，支持微信公众号、微信企业号、支付宝服务窗、QQ公众号、微博账号等多触点管理。Jeewx实现了微信、支付窗、微信企业号、微博等触点的基础管理功能，便于用户二次开发。\n官网：www.jeewx.com\nQQ群：289709451','402880a94742e24e014742e8942b0002',NULL,NULL,'2016-12-16 23:34:57',NULL,NULL,NULL),('F65B42281D1E46E69FBEAEEC43587F6D','nihao','nihao你好，欢迎你关注 Jeewx 支付宝服务窗 ！！！','402880a94742e24e014742e8942b0002',NULL,NULL,'2016-03-25 15:46:48',NULL,NULL,NULL),('ff808081538e81b40153a172bfcc0070','JEECG产品介绍','JEECG是一款基于代码生成器的J2EE快速开发平台，开源界“小普元”超越传统商业企业级开发平台。引领新的开发模式(Online Coding模式(自定义表单);代码生成器模式;手工MERGE智能开发)， 可以帮助解决Java项目60%的重复工作，让开发更多关注业务逻辑。既能快速提高开发效率，帮助公司节省人力成本，同时又不失灵活性。具备：表单配置能力（无需编码）、移动配置能力、工作流配置能力、报表配置能力（支持移动端）、插件开发能力（可插拔） http://www.guojusoft.com ','402880a94742e24e014742e8942b0002',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `alipay_texttemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cgform_button`
--

DROP TABLE IF EXISTS `cgform_button`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cgform_button` (
  `ID` varchar(32) NOT NULL,
  `BUTTON_CODE` varchar(50) DEFAULT NULL,
  `button_icon` varchar(20) DEFAULT NULL,
  `BUTTON_NAME` varchar(50) DEFAULT NULL,
  `BUTTON_STATUS` varchar(2) DEFAULT NULL,
  `BUTTON_STYLE` varchar(20) DEFAULT NULL,
  `EXP` varchar(255) DEFAULT NULL,
  `FORM_ID` varchar(32) DEFAULT NULL,
  `OPT_TYPE` varchar(20) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cgform_button`
--

LOCK TABLES `cgform_button` WRITE;
/*!40000 ALTER TABLE `cgform_button` DISABLE KEYS */;
INSERT INTO `cgform_button` VALUES ('ff8081815ddb071f015ddb4a7a35001f','askpay','pictures','支付报价','1','button','','ff8081815ddb071f015ddb4734ce000a','action',4),('ff8081815ddb071f015ddb4b2d5c0021','sendForeign','pictures','外单发货','1','button','','ff8081815ddb071f015ddb4734ce000a','action',5),('ff8081815ddb071f015ddb4c5dc10023','signForeign','pictures','外单签收','0','button','','ff8081815ddb071f015ddb4734ce000a','action',6),('ff8081815ddb071f015ddb4dbbdd0027','orderCancel','edit','订单取消','1','button','','ff8081815ddb071f015ddb4734ce000a','js',7),('ff8081815ddb071f015ddb4e20b80029','orderPause','pictures','订单异常','1','button','','ff8081815ddb071f015ddb4734ce000a','js',8);
/*!40000 ALTER TABLE `cgform_button` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cgform_button_sql`
--

DROP TABLE IF EXISTS `cgform_button_sql`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cgform_button_sql` (
  `ID` varchar(32) NOT NULL,
  `BUTTON_CODE` varchar(50) DEFAULT NULL,
  `CGB_SQL` tinyblob,
  `CGB_SQL_NAME` varchar(50) DEFAULT NULL,
  `CONTENT` longtext,
  `FORM_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cgform_button_sql`
--

LOCK TABLES `cgform_button_sql` WRITE;
/*!40000 ALTER TABLE `cgform_button_sql` DISABLE KEYS */;
/*!40000 ALTER TABLE `cgform_button_sql` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cgform_enhance_js`
--

DROP TABLE IF EXISTS `cgform_enhance_js`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cgform_enhance_js` (
  `ID` varchar(32) NOT NULL,
  `CG_JS` blob,
  `CG_JS_TYPE` varchar(20) DEFAULT NULL,
  `CONTENT` longtext,
  `FORM_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cgform_enhance_js`
--

LOCK TABLES `cgform_enhance_js` WRITE;
/*!40000 ALTER TABLE `cgform_enhance_js` DISABLE KEYS */;
/*!40000 ALTER TABLE `cgform_enhance_js` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cgform_field`
--

DROP TABLE IF EXISTS `cgform_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cgform_field` (
  `id` varchar(32) NOT NULL,
  `content` varchar(200) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_name` varchar(32) DEFAULT NULL,
  `dict_field` varchar(100) DEFAULT NULL,
  `dict_table` varchar(100) DEFAULT NULL,
  `dict_text` varchar(100) DEFAULT NULL,
  `field_default` varchar(20) DEFAULT NULL,
  `field_href` varchar(200) DEFAULT NULL,
  `field_length` int(11) DEFAULT NULL,
  `field_name` varchar(32) NOT NULL,
  `field_valid_type` varchar(10) DEFAULT NULL,
  `is_key` varchar(2) DEFAULT NULL,
  `is_null` varchar(5) DEFAULT NULL,
  `is_query` varchar(5) DEFAULT NULL,
  `is_show` varchar(5) DEFAULT NULL,
  `is_show_list` varchar(5) DEFAULT NULL,
  `length` int(11) NOT NULL,
  `main_field` varchar(100) DEFAULT NULL,
  `main_table` varchar(100) DEFAULT NULL,
  `old_field_name` varchar(32) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `point_length` int(11) DEFAULT NULL,
  `query_mode` varchar(10) DEFAULT NULL,
  `show_type` varchar(10) DEFAULT NULL,
  `type` varchar(32) NOT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_name` varchar(32) DEFAULT NULL,
  `table_id` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_iwtkke1oigq9ukafldrovslx6` (`table_id`),
  CONSTRAINT `FK_iwtkke1oigq9ukafldrovslx6` FOREIGN KEY (`table_id`) REFERENCES `cgform_head` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cgform_field`
--

LOCK TABLES `cgform_field` WRITE;
/*!40000 ALTER TABLE `cgform_field` DISABLE KEYS */;
INSERT INTO `cgform_field` VALUES ('402881e446676a0601466770878c0002','主键','admin','2014-06-04 23:12:46','管理员','','','','','',0,'id','','Y','N','N','N','N',36,'','','id',1,0,'single','text','string',NULL,NULL,NULL,'402881e446676a060146677087880001'),('402881e446676a060146677087df0003','关键字','admin','2014-06-04 23:12:47','管理员','','','','','',120,'keyword','','N','N','N','Y','Y',100,'','','key',2,0,'single','text','string','admin','2014-06-04 23:18:27','管理员','402881e446676a060146677087880001'),('402881e446676a060146677087e20004','类长名','admin','2014-06-04 23:12:47','管理员','','','','','',120,'classname','','N','N','N','Y','Y',100,'','','classname',3,0,'single','text','string',NULL,NULL,NULL,'402881e446676a060146677087880001'),('402881e446676a060146677087e50005','微信公众帐号','admin','2014-06-04 23:12:47','管理员','','','','','',120,'accountid','','N','Y','N','Y','Y',200,'','','accountid',4,0,'single','text','string',NULL,NULL,NULL,'402881e446676a060146677087880001'),('402881e446676a0601466775b8fc0007','功能名称','admin','2014-06-04 23:18:27','管理员','','','','','',120,'name','','N','Y','N','Y','Y',100,'','','name',5,0,'single','text','string',NULL,NULL,NULL,'402881e446676a060146677087880001'),('402881e446676a0601466775b9000008','功能描述','admin','2014-06-04 23:18:27','管理员','','','','','',120,'content','','N','Y','N','Y','Y',300,'','','content',6,0,'single','text','string',NULL,NULL,NULL,'402881e446676a060146677087880001'),('402881e845c73cb00145c75445120008','主键','admin','2014-05-04 21:02:39','管理员','','','','','',0,'id','','Y','N','N','N','N',36,'','','id',1,0,'single','text','string',NULL,NULL,NULL,'402881e845c73cb00145c754450c0007'),('402881e845c73cb00145c75445ae0009','公众帐号名称','admin','2014-05-04 21:02:40','管理员','','','','','',120,'accountname','','N','Y','N','Y','Y',200,'','','accountname',2,0,'single','text','string',NULL,NULL,NULL,'402881e845c73cb00145c754450c0007'),('402881e845c73cb00145c75445b5000b','公众帐号TOKEN','admin','2014-05-04 21:02:40','管理员','','','','','',120,'accounttoken','','N','Y','N','Y','Y',200,'','','accounttoken',3,0,'single','text','string','admin','2014-05-06 20:10:22','管理员','402881e845c73cb00145c754450c0007'),('402881e845c73cb00145c75445b8000c','公众微信号','admin','2014-05-04 21:02:40','管理员','','','','','',120,'accountnumber','','N','Y','N','Y','Y',200,'','','accountnumber',4,0,'single','text','string','admin','2014-05-06 20:10:22','管理员','402881e845c73cb00145c754450c0007'),('402881e845c73cb00145c75445c3000d','公众号类型','admin','2014-05-04 21:02:40','管理员','','','','','',120,'accounttype','','N','Y','N','Y','Y',50,'','','accounttype',5,0,'single','text','string','admin','2014-05-06 20:10:22','管理员','402881e845c73cb00145c754450c0007'),('402881e845c73cb00145c75445c7000e','电子邮箱','admin','2014-05-04 21:02:40','管理员','','','','','',120,'accountemail','','N','Y','N','Y','Y',200,'','','accountemail',6,0,'single','text','string','admin','2014-05-06 20:10:22','管理员','402881e845c73cb00145c754450c0007'),('402881e845c73cb00145c75445cb000f','公众帐号描述','admin','2014-05-04 21:02:40','管理员','','','','','',120,'accountdesc','','N','Y','N','Y','Y',500,'','','accountdesc',7,0,'single','text','string','admin','2014-05-06 20:10:22','管理员','402881e845c73cb00145c754450c0007'),('402881e845d16cb10145d1711e730002','公众帐号APPID','admin','2014-05-06 20:10:22','管理员','','','','','',120,'accountappid','','N','Y','N','Y','Y',200,'','','accountappid',8,0,'single','text','string',NULL,NULL,NULL,'402881e845c73cb00145c754450c0007'),('402881e845d16cb10145d1711e790003','公众帐号APPSECRET','admin','2014-05-06 20:10:22','管理员','','','','','',120,'accountappsecret','','N','Y','N','Y','Y',500,'','','accountappsecret',9,0,'single','text','string',NULL,NULL,NULL,'402881e845c73cb00145c754450c0007'),('402881e845d16cb10145d1711e7e0004','ACCESS_TOKEN','admin','2014-05-06 20:10:22','管理员','','','','','',120,'accountaccesstoken','','N','Y','N','Y','Y',1000,'','','accountaccesstoken',10,0,'single','text','string',NULL,NULL,NULL,'402881e845c73cb00145c754450c0007'),('402881e946f72f8e0146f74632020009','主键','4028d881436d514601436d5215ac0043','2014-07-02 21:31:51','admin','','','','','',120,'id','','Y','N','N','N','N',36,'','','id',1,0,'single','text','string',NULL,NULL,NULL,'402881e946f72f8e0146f74632010008'),('402881e946f72f8e0146f7463216000a','创建人名称','4028d881436d514601436d5215ac0043','2014-07-02 21:31:51','admin','','','','','',120,'create_name','','N','Y','N','N','N',50,'','','create_name',2,0,'single','text','string',NULL,NULL,NULL,'402881e946f72f8e0146f74632010008'),('402881e946f72f8e0146f746321c000b','创建日期','4028d881436d514601436d5215ac0043','2014-07-02 21:31:51','admin','','','','','',120,'create_date','','N','Y','N','N','Y',20,'','','create_date',3,0,'single','text','Date',NULL,NULL,NULL,'402881e946f72f8e0146f74632010008'),('402881e946f72f8e0146f7463224000c','修改人名称','4028d881436d514601436d5215ac0043','2014-07-02 21:31:51','admin','','','','','',120,'update_name','','N','Y','N','N','N',50,'','','update_name',4,0,'single','text','string',NULL,NULL,NULL,'402881e946f72f8e0146f74632010008'),('402881e946f72f8e0146f7463246000d','修改日期','4028d881436d514601436d5215ac0043','2014-07-02 21:31:51','admin','','','','','',120,'update_date','','N','Y','N','N','N',20,'','','update_date',5,0,'single','text','Date',NULL,NULL,NULL,'402881e946f72f8e0146f74632010008'),('402881e946f72f8e0146f7463250000e','分类名称','4028d881436d514601436d5215ac0043','2014-07-02 21:31:51','admin','','','','','',120,'name','','N','Y','N','Y','Y',50,'','','name',6,0,'single','text','string',NULL,NULL,NULL,'402881e946f72f8e0146f74632010008'),('402881e946f72f8e0146f746326b000f','图片路径','4028d881436d514601436d5215ac0043','2014-07-02 21:31:51','admin','','','','','',120,'imgurl','','N','Y','N','Y','Y',200,'','','imgurl',7,0,'single','text','string',NULL,NULL,NULL,'402881e946f72f8e0146f74632010008'),('402881e946f72f8e0146f74632720010','分类上级ID','4028d881436d514601436d5215ac0043','2014-07-02 21:31:51','admin','','','','','',120,'parentid','','N','Y','N','Y','Y',36,'','','parentid',8,0,'single','text','string',NULL,NULL,NULL,'402881e946f72f8e0146f74632010008'),('402881e946f72f8e0146f746327b0011','卖家ID','4028d881436d514601436d5215ac0043','2014-07-02 21:31:51','admin','','','','','',120,'seller_id','','N','Y','N','N','N',36,'','','seller_id',9,0,'single','text','string',NULL,NULL,NULL,'402881e946f72f8e0146f74632010008'),('402881e94701b0bc014701b6ed3c0002','主键','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'id','','Y','N','N','N','N',36,'','','id',1,0,'single','text','string',NULL,NULL,NULL,'402881e94701b0bc014701b6ed380001'),('402881e94701b0bc014701b6ed620003','创建人名称','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'create_name','','N','Y','N','N','N',50,'','','create_name',2,0,'single','text','string',NULL,NULL,NULL,'402881e94701b0bc014701b6ed380001'),('402881e94701b0bc014701b6ed6a0004','创建日期','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'create_date','','N','Y','N','N','N',20,'','','create_date',3,0,'single','text','Date',NULL,NULL,NULL,'402881e94701b0bc014701b6ed380001'),('402881e94701b0bc014701b6ed880005','修改人名称','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'update_name','','N','Y','N','N','N',50,'','','update_name',4,0,'single','text','string',NULL,NULL,NULL,'402881e94701b0bc014701b6ed380001'),('402881e94701b0bc014701b6ed920006','修改日期','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'update_date','','N','Y','N','N','N',20,'','','update_date',5,0,'single','text','Date',NULL,NULL,NULL,'402881e94701b0bc014701b6ed380001'),('402881e94701b0bc014701b6ed9c0007','标题信息','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'title','','N','Y','N','Y','Y',200,'','','title',6,0,'single','text','string',NULL,NULL,NULL,'402881e94701b0bc014701b6ed380001'),('402881e94701b0bc014701b6eda50008','标题图片','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'title_img','','N','Y','N','Y','Y',100,'','','title_img',7,0,'single','text','string',NULL,NULL,NULL,'402881e94701b0bc014701b6ed380001'),('402881e94701b0bc014701b6edbd0009','商品详情','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'descriptions','','N','Y','N','Y','Y',5000,'','','descriptions',8,0,'single','text','Text','4028d881436d514601436d5215ac0043','2014-07-04 22:14:48','admin','402881e94701b0bc014701b6ed380001'),('402881e94701b0bc014701b6edc5000a','商品原价','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'price','','N','Y','N','Y','Y',18,'','','price',9,2,'single','text','double','4028d881436d514601436d5215ac0043','2014-07-04 22:14:48','admin','402881e94701b0bc014701b6ed380001'),('402881e94701b0bc014701b6edcc000b','商品现价','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'real_price','','N','Y','N','Y','Y',18,'','','real_price',10,2,'single','text','double','4028d881436d514601436d5215ac0043','2014-07-04 22:14:48','admin','402881e94701b0bc014701b6ed380001'),('402881e94701b0bc014701b6edd4000c','折扣','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'sale','','N','Y','N','Y','Y',18,'','','sale',11,2,'single','text','double','4028d881436d514601436d5215ac0043','2014-07-04 22:14:48','admin','402881e94701b0bc014701b6ed380001'),('402881e94701b0bc014701b6edde000d','销售数量','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'sell_count','','N','Y','N','Y','Y',11,'','','sell_count',12,0,'single','text','int','4028d881436d514601436d5215ac0043','2014-07-04 22:14:48','admin','402881e94701b0bc014701b6ed380001'),('402881e94701b0bc014701b6ede5000e','评价数量','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'discuss_count','','N','Y','N','N','Y',11,'','','discuss_count',13,0,'single','text','int','4028d881436d514601436d5215ac0043','2014-07-04 22:16:50','admin','402881e94701b0bc014701b6ed380001'),('402881e94701b0bc014701b6edec000f','好评数量','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'good_count','','N','Y','N','N','Y',11,'','','good_count',14,0,'single','text','int','4028d881436d514601436d5215ac0043','2014-07-04 22:16:50','admin','402881e94701b0bc014701b6ed380001'),('402881e94701b0bc014701b6edf40010','差评数量','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'bad_count','','N','Y','N','N','Y',11,'','','bad_count',15,0,'single','text','int','4028d881436d514601436d5215ac0043','2014-07-04 22:16:50','admin','402881e94701b0bc014701b6ed380001'),('402881e94701b0bc014701b6edff0011','状态','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'statement','','N','Y','N','N','Y',32,'','','statement',16,0,'single','text','string','4028d881436d514601436d5215ac0043','2014-07-04 22:16:50','admin','402881e94701b0bc014701b6ed380001'),('402881e94701b0bc014701b6ee1a0012','上架时间','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'shelve_time','','N','Y','N','N','Y',32,'','','shelve_time',17,0,'single','text','Date','4028d881436d514601436d5215ac0043','2014-07-04 22:16:50','admin','402881e94701b0bc014701b6ed380001'),('402881e94701b0bc014701b6ee220013','下架时间','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'remove_time','','N','Y','N','N','Y',32,'','','remove_time',18,0,'single','text','Date','4028d881436d514601436d5215ac0043','2014-07-04 22:16:50','admin','402881e94701b0bc014701b6ed380001'),('402881e94701b0bc014701b6ee280014','快递名称','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'express_name','','N','Y','N','Y','Y',32,'','','express_name',19,0,'single','text','string',NULL,NULL,NULL,'402881e94701b0bc014701b6ed380001'),('402881e94701b0bc014701b6ee2f0015','快递费用','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'express_price','','N','Y','N','Y','Y',18,'','','express_price',20,2,'single','text','double','4028d881436d514601436d5215ac0043','2014-07-04 22:14:48','admin','402881e94701b0bc014701b6ed380001'),('402881e94701b0bc014701b6ee360016','卖家ID','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'seller_id','','N','Y','N','Y','Y',36,'','','seller_id',21,0,'single','text','string','4028d881436d514601436d5215ac0043','2014-07-04 22:14:48','admin','402881e94701b0bc014701b6ed380001'),('4028d881436d514601436d52193b012f','主键','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'id',NULL,'Y','N','N','N','N',36,'','',NULL,0,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d521928012a'),('4028d881436d514601436d5219410130','订单号','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'order_code',NULL,'N','Y','Y','Y','Y',50,'','',NULL,1,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d521928012a'),('4028d881436d514601436d5219460131','订单日期','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'order_date',NULL,'N','Y','Y','Y','Y',20,'','',NULL,2,0,'single','date','Date',NULL,NULL,NULL,'4028d881436d514601436d521928012a'),('4028d881436d514601436d5219480132','订单金额','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'order_money',NULL,'N','Y','Y','Y','Y',10,'','',NULL,3,3,'single','text','double',NULL,NULL,NULL,'4028d881436d514601436d521928012a'),('4028d881436d514601436d52194a0133','备注','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'content',NULL,'N','Y','Y','Y','Y',255,'','',NULL,4,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d521928012a'),('4028d881436d514601436d5219520134','主键','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'id',NULL,'Y','N','N','N','N',36,'','',NULL,0,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d52192d012b'),('4028d881436d514601436d5219550135','请假标题','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'title',NULL,'N','N','N','Y','Y',50,'','',NULL,1,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d52192d012b'),('4028d881436d514601436d5219570136','请假人','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'people',NULL,'N','N','Y','Y','Y',20,'','',NULL,2,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d52192d012b'),('4028d881436d514601436d5219580137','性别','admin','2014-01-07 23:28:53','管理员','sex','',NULL,NULL,NULL,0,'sex',NULL,'N','N','Y','Y','Y',10,'','',NULL,3,0,'single','list','string',NULL,NULL,NULL,'4028d881436d514601436d52192d012b'),('4028d881436d514601436d52195a0138','请假开始时间','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'begindate',NULL,'N','N','N','Y','Y',0,'','',NULL,4,0,'group','date','Date',NULL,NULL,NULL,'4028d881436d514601436d52192d012b'),('4028d881436d514601436d52195b0139','请假结束时间','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'enddate',NULL,'N','N','N','Y','Y',0,'','',NULL,5,0,'group','datetime','Date',NULL,NULL,NULL,'4028d881436d514601436d52192d012b'),('4028d881436d514601436d52195d013a','所属部门','admin','2014-01-07 23:28:53','管理员','id','t_s_depart','departname',NULL,NULL,0,'hol_dept',NULL,'N','N','N','Y','Y',32,'','',NULL,7,0,'single','list','string',NULL,NULL,NULL,'4028d881436d514601436d52192d012b'),('4028d881436d514601436d52195e013b','请假原因','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'hol_reson',NULL,'N','N','N','Y','Y',255,'','',NULL,8,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d52192d012b'),('4028d881436d514601436d521960013c','部门审批人','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'dep_leader',NULL,'N','N','N','Y','Y',20,'','',NULL,9,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d52192d012b'),('4028d881436d514601436d521961013d','部门审批意见','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'content',NULL,'N','N','N','Y','Y',255,'','',NULL,10,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d52192d012b'),('4028d881436d514601436d521963013e','请假天数','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,120,'day_num',NULL,'N','Y','N','Y','Y',10,'','',NULL,6,0,'single','text','int',NULL,NULL,NULL,'4028d881436d514601436d52192d012b'),('4028d881436d514601436d52196e013f','主键','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'id',NULL,'Y','N','N','N','N',36,'','',NULL,0,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d52192f012c'),('4028d881436d514601436d5219700140','客户名','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'name',NULL,'N','Y','Y','Y','Y',32,'','',NULL,1,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d52192f012c'),('4028d881436d514601436d5219720141','单价','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'money',NULL,'N','Y','Y','Y','Y',10,'','',NULL,2,2,'group','text','double',NULL,NULL,NULL,'4028d881436d514601436d52192f012c'),('4028d881436d514601436d5219740142','外键','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,120,'fk_id',NULL,'N','N','Y','N','N',36,'id','jform_order_main',NULL,5,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d52192f012c'),('4028d881436d514601436d5219750143','电话','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,120,'telphone',NULL,'N','Y','Y','Y','Y',32,'','',NULL,4,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d52192f012c'),('4028d881436d514601436d5219770144','性别','admin','2014-01-07 23:28:53','管理员','sex','',NULL,NULL,NULL,120,'sex',NULL,'N','Y','Y','Y','Y',4,'','',NULL,3,0,'single','radio','string',NULL,NULL,NULL,'4028d881436d514601436d52192f012c'),('4028d881436d514601436d52197b0145','主键','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,120,'id',NULL,'Y','N','N','N','N',36,'','',NULL,0,0,'single','checkbox','string',NULL,NULL,NULL,'4028d881436d514601436d521931012d'),('4028d881436d514601436d52197d0146','航班号','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,120,'ticket_code',NULL,'N','N','Y','Y','Y',100,'','',NULL,1,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d521931012d'),('4028d881436d514601436d52197f0147','航班时间','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,120,'tickect_date',NULL,'N','N','Y','Y','Y',10,'','',NULL,2,0,'single','datetime','Date',NULL,NULL,NULL,'4028d881436d514601436d521931012d'),('4028d881436d514601436d5219810148','外键','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,120,'fck_id',NULL,'N','N','N','N','N',36,'id','jform_order_main',NULL,3,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d521931012d'),('4028d881436d514601436d5219860149','主键','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'id',NULL,'Y','N','N','N','N',36,'','',NULL,0,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d521933012e'),('4028d881436d514601436d521989014a','机构合计','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'a',NULL,'N','N','Y','Y','Y',10,'','',NULL,1,2,'group','text','double',NULL,NULL,NULL,'4028d881436d514601436d521933012e'),('4028d881436d514601436d52198a014b','行政小计','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'b1',NULL,'N','N','N','Y','Y',10,'','',NULL,2,2,'group','text','double',NULL,NULL,NULL,'4028d881436d514601436d521933012e'),('4028d881436d514601436d52198d014c','行政省','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'b11',NULL,'N','N','N','Y','Y',100,'','',NULL,3,0,'group','text','string',NULL,NULL,NULL,'4028d881436d514601436d521933012e'),('4028d881436d514601436d52198f014d','行政市','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'b12',NULL,'N','N','N','Y','Y',100,'','',NULL,4,0,'group','text','string',NULL,NULL,NULL,'4028d881436d514601436d521933012e'),('4028d881436d514601436d521991014e','行政县','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'b13',NULL,'N','N','N','Y','Y',100,'','',NULL,5,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d521933012e'),('4028d881436d514601436d521994014f','事业合计','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'b2',NULL,'N','N','N','Y','Y',10,'','',NULL,6,2,'single','text','double',NULL,NULL,NULL,'4028d881436d514601436d521933012e'),('4028d881436d514601436d5219970150','参公小计','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'b3',NULL,'N','N','N','Y','Y',10,'','',NULL,7,2,'single','text','double',NULL,NULL,NULL,'4028d881436d514601436d521933012e'),('4028d881436d514601436d5219990151','参公省','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'b31',NULL,'N','N','N','Y','Y',100,'','',NULL,8,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d521933012e'),('4028d881436d514601436d52199c0152','参公市','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'b32',NULL,'N','N','N','Y','Y',100,'','',NULL,9,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d521933012e'),('4028d881436d514601436d52199e0153','参公县','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'b33',NULL,'N','N','N','Y','Y',100,'','',NULL,10,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d521933012e'),('4028d881436d514601436d5219a00154','全额拨款','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'c1',NULL,'N','N','N','Y','Y',10,'','',NULL,11,2,'single','text','double',NULL,NULL,NULL,'4028d881436d514601436d521933012e'),('4028d881436d514601436d5219a30155','差额拨款','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'c2',NULL,'N','N','N','Y','Y',10,'','',NULL,12,2,'single','text','double',NULL,NULL,NULL,'4028d881436d514601436d521933012e'),('4028d881436d514601436d5219a60156','自收自支','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'c3',NULL,'N','N','N','Y','Y',10,'','',NULL,13,2,'single','text','double',NULL,NULL,NULL,'4028d881436d514601436d521933012e'),('4028d881436d514601436d5219a80157','经费合计','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'d',NULL,'N','N','Y','Y','Y',10,'','',NULL,14,2,'single','text','int',NULL,NULL,NULL,'4028d881436d514601436d521933012e'),('4028d881436d514601436d5219aa0158','机构资质','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'d1',NULL,'N','N','N','Y','Y',1000,'','',NULL,15,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d521933012e'),('ff8081815ddb071f015ddb4734d2000b','主键','4028d881436d514601436d5215ac0043','2017-08-13 19:07:43','admin','','','','','',120,'id','','Y','N','N','N','N',36,'','','id',1,0,'single','text','string',NULL,NULL,NULL,'ff8081815ddb071f015ddb4734ce000a'),('ff8081815ddb071f015ddb4734e3000c','创建人名称','4028d881436d514601436d5215ac0043','2017-08-13 19:07:43','admin','','','','','',120,'create_name','','N','Y','N','N','N',50,'','','create_name',2,0,'single','text','string',NULL,NULL,NULL,'ff8081815ddb071f015ddb4734ce000a'),('ff8081815ddb071f015ddb4734e6000d','创建日期','4028d881436d514601436d5215ac0043','2017-08-13 19:07:43','admin','','','','','',120,'create_date','','N','Y','N','N','N',20,'','','create_date',3,0,'single','text','Date',NULL,NULL,NULL,'ff8081815ddb071f015ddb4734ce000a'),('ff8081815ddb071f015ddb4734e9000e','修改人名称','4028d881436d514601436d5215ac0043','2017-08-13 19:07:43','admin','','','','','',120,'update_name','','N','Y','N','N','N',50,'','','update_name',4,0,'single','text','string',NULL,NULL,NULL,'ff8081815ddb071f015ddb4734ce000a'),('ff8081815ddb071f015ddb4734ec000f','修改日期','4028d881436d514601436d5215ac0043','2017-08-13 19:07:43','admin','','','','','',120,'update_date','','N','Y','N','N','N',20,'','','update_date',5,0,'single','text','Date',NULL,NULL,NULL,'ff8081815ddb071f015ddb4734ce000a'),('ff8081815ddb071f015ddb4734ef0010','用户open_id','4028d881436d514601436d5215ac0043','2017-08-13 19:07:43','admin','','','','','',120,'open_id','','N','N','N','Y','Y',100,'','','open_id',6,0,'single','text','string',NULL,NULL,NULL,'ff8081815ddb071f015ddb4734ce000a'),('ff8081815ddb071f015ddb4734f10011','用户昵称','4028d881436d514601436d5215ac0043','2017-08-13 19:07:43','admin','','','','','',120,'nack_name','','N','Y','N','Y','Y',32,'','','nack_name',7,0,'single','text','string',NULL,NULL,NULL,'ff8081815ddb071f015ddb4734ce000a'),('ff8081815ddb071f015ddb4734f90012','寄件人名','4028d881436d514601436d5215ac0043','2017-08-13 19:07:43','admin','','','','','',120,'sender_name','','N','N','N','Y','Y',32,'','','sender_name',8,0,'single','text','string',NULL,NULL,NULL,'ff8081815ddb071f015ddb4734ce000a'),('ff8081815ddb071f015ddb4734fc0013','寄件人电话','4028d881436d514601436d5215ac0043','2017-08-13 19:07:43','admin','','','','','',120,'sender_phone','','N','N','N','Y','Y',32,'','','sender_phone',9,0,'single','text','string',NULL,NULL,NULL,'ff8081815ddb071f015ddb4734ce000a'),('ff8081815ddb071f015ddb4734ff0014','收件人姓名','4028d881436d514601436d5215ac0043','2017-08-13 19:07:43','admin','','','','','',120,'recevie_name','','N','N','N','Y','Y',32,'','','recevie_name',10,0,'single','text','string',NULL,NULL,NULL,'ff8081815ddb071f015ddb4734ce000a'),('ff8081815ddb071f015ddb4735020015','收件人电话','4028d881436d514601436d5215ac0043','2017-08-13 19:07:43','admin','','','','','',120,'recevie_phone','','N','N','N','Y','Y',32,'','','recevie_phone',11,0,'single','text','string',NULL,NULL,NULL,'ff8081815ddb071f015ddb4734ce000a'),('ff8081815ddb071f015ddb4735070016','收件人地址','4028d881436d514601436d5215ac0043','2017-08-13 19:07:43','admin','','','','','',120,'recv_addr','','N','N','N','Y','Y',256,'','','recv_addr',12,0,'single','text','string',NULL,NULL,NULL,'ff8081815ddb071f015ddb4734ce000a'),('ff8081815ddb071f015ddb4735570017','国外城市','4028d881436d514601436d5215ac0043','2017-08-13 19:07:43','admin','','','','','',120,'foreign_city','','N','N','N','Y','Y',256,'','','foreign_city',13,0,'single','text','string',NULL,NULL,NULL,'ff8081815ddb071f015ddb4734ce000a'),('ff8081815ddb071f015ddb47355f0018','国外地址','4028d881436d514601436d5215ac0043','2017-08-13 19:07:43','admin','','','','','',120,'foreign_addr','','N','Y','N','Y','Y',256,'','','foreign_addr',14,0,'single','text','string',NULL,NULL,NULL,'ff8081815ddb071f015ddb4734ce000a'),('ff8081815ddb071f015ddb4735640019','国内订单号','4028d881436d514601436d5215ac0043','2017-08-13 19:07:43','admin','','','','','',120,'local_order_no','','N','Y','N','Y','Y',32,'','','local_order_no',15,0,'single','text','string',NULL,NULL,NULL,'ff8081815ddb071f015ddb4734ce000a'),('ff8081815ddb071f015ddb473569001a','包裹内容','4028d881436d514601436d5215ac0043','2017-08-13 19:07:43','admin','','','','','',120,'package_content','','N','Y','N','Y','Y',1024,'','','package_content',16,0,'single','text','string',NULL,NULL,NULL,'ff8081815ddb071f015ddb4734ce000a'),('ff8081815ddb071f015ddb47356c001b','备注','4028d881436d514601436d5215ac0043','2017-08-13 19:07:43','admin','','','','','',120,'desc','','N','Y','N','Y','Y',255,'','','desc',17,0,'single','text','string',NULL,NULL,NULL,'ff8081815ddb071f015ddb4734ce000a'),('ff8081815ddb071f015ddb473570001c','包裹报价','4028d881436d514601436d5215ac0043','2017-08-13 19:07:43','admin','','','','','',120,'package_value','','N','Y','N','Y','Y',32,'','','package_value',18,0,'single','text','int',NULL,NULL,NULL,'ff8081815ddb071f015ddb4734ce000a'),('ff8081815ddb071f015ddb473573001d','运输类型','4028d881436d514601436d5215ac0043','2017-08-13 19:07:43','admin','','','','','',120,'transfer_type','','N','N','N','Y','Y',32,'','','transfer_type',19,0,'single','list','int',NULL,NULL,NULL,'ff8081815ddb071f015ddb4734ce000a'),('ff8081815ddb071f015ddb5436ce0037','订单状态','4028d881436d514601436d5215ac0043','2017-08-13 19:21:56','admin','ord_stat','t_s_type','typename','','',120,'order_state','','N','N','N','Y','Y',32,'','','order_state',20,0,'single','text','int','4028d881436d514601436d5215ac0043','2017-08-13 19:31:11','admin','ff8081815ddb071f015ddb4734ce000a');
/*!40000 ALTER TABLE `cgform_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cgform_ftl`
--

DROP TABLE IF EXISTS `cgform_ftl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cgform_ftl` (
  `ID` varchar(32) NOT NULL,
  `CGFORM_ID` varchar(36) NOT NULL,
  `CGFORM_NAME` varchar(100) NOT NULL,
  `CREATE_BY` varchar(36) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_NAME` varchar(32) DEFAULT NULL,
  `FTL_CONTENT` longtext,
  `FTL_STATUS` varchar(50) DEFAULT NULL,
  `FTL_VERSION` int(11) NOT NULL,
  `FTL_WORD_URL` varchar(200) DEFAULT NULL,
  `UPDATE_BY` varchar(36) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `UPDATE_NAME` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cgform_ftl`
--

LOCK TABLES `cgform_ftl` WRITE;
/*!40000 ALTER TABLE `cgform_ftl` DISABLE KEYS */;
/*!40000 ALTER TABLE `cgform_ftl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cgform_head`
--

DROP TABLE IF EXISTS `cgform_head`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cgform_head` (
  `id` varchar(32) NOT NULL,
  `content` varchar(200) NOT NULL,
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_name` varchar(32) DEFAULT NULL,
  `is_checkbox` varchar(5) NOT NULL,
  `is_dbsynch` varchar(20) NOT NULL,
  `is_pagination` varchar(5) NOT NULL,
  `is_tree` varchar(5) NOT NULL,
  `jform_type` int(11) NOT NULL,
  `jform_version` varchar(10) NOT NULL,
  `querymode` varchar(10) NOT NULL,
  `relation_type` int(11) DEFAULT NULL,
  `sub_table_str` longtext,
  `table_name` varchar(20) NOT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_name` varchar(32) DEFAULT NULL,
  `jform_pk_sequence` varchar(200) DEFAULT NULL,
  `jform_pk_type` varchar(100) DEFAULT NULL,
  `tab_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cgform_head`
--

LOCK TABLES `cgform_head` WRITE;
/*!40000 ALTER TABLE `cgform_head` DISABLE KEYS */;
INSERT INTO `cgform_head` VALUES ('402881e446676a060146677087880001','扩展接口管理','admin','2014-06-04 23:12:46','管理员','N','Y','Y','N',1,'2','single',0,NULL,'weixin_expandconfig','admin','2014-06-04 23:18:31','管理员',NULL,NULL,NULL),('402881e845c73cb00145c754450c0007','微信公众帐号信息','admin','2014-05-04 21:02:39','管理员','Y','Y','Y','N',1,'2','single',0,NULL,'weixin_account','admin','2014-05-06 20:10:30','管理员',NULL,NULL,NULL),('402881e946f72f8e0146f74632010008','商品分类','4028d881436d514601436d5215ac0043','2014-07-02 21:31:51','admin','N','Y','Y','Y',1,'1','single',0,NULL,'WEIXIN_MALL_CATEGORY','4028d881436d514601436d5215ac0043','2014-07-02 21:45:35','admin','','UUID',NULL),('402881e94701b0bc014701b6ed380001','商品信息','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','Y','Y','Y','N',1,'3','group',0,NULL,'weixin_shop_goods','4028d881436d514601436d5215ac0043','2014-07-04 22:23:37','admin','','UUID',NULL),('4028d881436d514601436d521928012a','订单主信息','admin','2014-01-07 23:28:53','管理员','N','Y','Y','N',2,'57','group',0,'jform_order_ticket,jform_order_customer','jform_order_main','4028d881436d514601436d5215ac0043','2014-07-24 15:39:44','admin',NULL,NULL,NULL),('4028d881436d514601436d52192d012b','请假单','admin','2014-01-07 23:28:53','管理员','N','Y','Y','N',1,'51','group',0,NULL,'jform_leave','admin','2014-01-19 10:08:17','管理员',NULL,NULL,NULL),('4028d881436d514601436d52192f012c','订单客户信息','admin','2014-01-07 23:28:53','管理员','Y','N','Y','N',3,'16','single',0,NULL,'jform_order_customer',NULL,NULL,NULL,NULL,NULL,NULL),('4028d881436d514601436d521931012d','订单机票信息','admin','2014-01-07 23:28:53','管理员','N','N','Y','N',3,'20','single',0,NULL,'jform_order_ticket',NULL,NULL,NULL,NULL,NULL,NULL),('4028d881436d514601436d521933012e','价格认证机构统计表','admin','2014-01-07 23:28:53','管理员','N','N','Y','N',1,'3','group',0,NULL,'jform_price1',NULL,NULL,NULL,NULL,NULL,NULL),('ff8081815ddb071f015ddb4734ce000a','小包快递订单','4028d881436d514601436d5215ac0043','2017-08-13 19:07:43','admin','N','N','Y','N',2,'4','group',0,NULL,'SMP_WEIXIN_ORDER','4028d881436d514601436d5215ac0043','2017-08-13 19:31:11','admin','','UUID',NULL);
/*!40000 ALTER TABLE `cgform_head` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cgform_uploadfiles`
--

DROP TABLE IF EXISTS `cgform_uploadfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cgform_uploadfiles` (
  `CGFORM_FIELD` varchar(100) NOT NULL,
  `CGFORM_ID` varchar(36) NOT NULL,
  `CGFORM_NAME` varchar(100) NOT NULL,
  `id` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_qwig8sn3okhvh4wye8nn8gdeg` (`id`),
  CONSTRAINT `FK_qwig8sn3okhvh4wye8nn8gdeg` FOREIGN KEY (`id`) REFERENCES `t_s_attachment` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cgform_uploadfiles`
--

LOCK TABLES `cgform_uploadfiles` WRITE;
/*!40000 ALTER TABLE `cgform_uploadfiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `cgform_uploadfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck_editor`
--

DROP TABLE IF EXISTS `ck_editor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck_editor` (
  `ID` varchar(32) NOT NULL,
  `CONTENTS` blob,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck_editor`
--

LOCK TABLES `ck_editor` WRITE;
/*!40000 ALTER TABLE `ck_editor` DISABLE KEYS */;
INSERT INTO `ck_editor` VALUES ('4028d881436d514601436d5219250129','<html><head><title></title><link href=\'plug-in/easyui/themes/default/easyui.css\' id=\'easyuiTheme\' rel=\'stylesheet\' type=\'text/css\' /><link href=\'plug-in/easyui/themes/icon.css\' rel=\'stylesheet\' type=\'text/css\' /><link href=\'plug-in/accordion/css/accordion.css\' rel=\'stylesheet\' type=\'text/css\' /><link href=\'plug-in/Validform/css/style.css\' rel=\'stylesheet\' type=\'text/css\' /><link href=\'plug-in/Validform/css/tablefrom.css\' rel=\'stylesheet\' type=\'text/css\' /><style type=\'text/css\'>body{font-size:12px;}table {border:1px solid #000000;border-collapse: collapse;}td {border:1px solid #000000;background:white;font-size:12px;font-family: \�\�\�\�\�\�;color: #333;</style></head><body><div><p>����2��</p><h1 style=\'text-align:center\'><span style=\'font-size:24px\'><strong>�۸�\�\�֤\�\�Աͳ�Ʊ\�</strong></span></h1><p>\���λ���\�\�£���<input name=\'org_name\' type=\'text\' value=\'${org_name?if_exists?html}\' /></p><p>��λ��\�\�ţ�<input name=\'num\' type=\'text\' value=\'${num?if_exists?html}\' /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��λ��\�\�\�\�&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ��\�\�\�ڣ�&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \�\�&nbsp;&nbsp; \�\�&nbsp;&nbsp; \�\�</p><form action=\'cgFormBuildController.do?saveOrUpdate\' id=\'formobj\' method=\'post\' name=\'formobj\'><input name=\'tableName\' type=\'hidden\' value=\'${tableName?if_exists?html}\' /> <input name=\'id\' type=\'hidden\' value=\'${id?if_exists?html}\' />#{jform_hidden_field}<input type=\'hidden\' /><p>&nbsp;</p><table border=\'1\' cellpadding=\'0\' cellspacing=\'0\' style=\'width:1016px\'><tbody><tr><td rowspan=\'4\'><p>&nbsp;</p><p>&nbsp;</p><p>�ϼ\�</p><p>&nbsp;</p></td><td colspan=\'6\' rowspan=\'2\'><p>&nbsp;</p><p>\�\�\��</p></td><td colspan=\'5\' rowspan=\'2\'><p>&nbsp;</p><p>ѧ��</p></td><td colspan=\'4\' rowspan=\'2\'><p>&nbsp;</p><p>ȡ�õģ�\�ϸڣ�ִҵ\�ʸ�</p></td><td colspan=\'4\'><p>רҵ��\��ְ�\�</p></td></tr><tr><td colspan=\'4\'><p>�����\�ϵ�С����\�ϵ�У�</p></td></tr><tr><td colspan=\'3\'><p>\�ڱ\�\�\�Ա</p></td><td colspan=\'2\'><p>Ƹ\�\�\�\�Ա</p></td><td rowspan=\'2\'><p>�\�ʱ(�\�\�\�)\�\�Ա</p></td><td rowspan=\'2\'><p>�\�\�\�</p></td><td rowspan=\'2\'><p>��ר</p></td><td rowspan=\'2\'><p>���\�</p></td><td rowspan=\'2\'><p>\�о�\��</p></td><td rowspan=\'2\'><p>\�\�\��</p></td><td rowspan=\'2\'><p>�۸�</p><p>��֤Ա</p></td><td rowspan=\'2\'><p>�۸�</p><p>��֤ʦ</p></td><td rowspan=\'2\'><p>���\�</p><p>�ö�Ա</p></td><td rowspan=\'2\'><p>\�\�\��</p></td><td rowspan=\'2\'><p>����</p></td><td rowspan=\'2\'><p>\�м�</p></td><td rowspan=\'2\'><p>�߼�</p></td><td rowspan=\'2\'><p>\�\�\��</p></td></tr><tr><td><p>����λ</p></td><td colspan=\'2\'><p>\�\�\��</p></td><td><p>��\�\�</p></td><td><p>�\�\�\�</p></td></tr><tr><td><p>A1</p></td><td><p>B1</p></td><td><p>B2</p></td><td colspan=\'2\'><p>B3</p></td><td><p>B4</p></td><td><p>B5</p></td><td><p>C1</p></td><td><p>C2</p></td><td><p>C3</p></td><td><p>C4</p></td><td><p>C5</p></td><td><p>D1</p></td><td><p>D2</p></td><td><p>D3</p></td><td><p>D4</p></td><td><p>E1</p></td><td><p>E2</p></td><td><p>E3</p></td><td><p>E4</p></td></tr><tr><td><p><input name=\'a1\' size=\'4\' type=\'text\' value=\'${a1?if_exists?html}\' /></p></td><td><p><input name=\'b1\' size=\'4\' type=\'text\' value=\'${b1?if_exists?html}\' /></p></td><td><p><input name=\'b2\' size=\'4\' type=\'text\' value=\'${b2?if_exists?html}\' /></p></td><td colspan=\'2\'><p><input name=\'b3\' size=\'4\' type=\'text\' value=\'${b3?if_exists?html}\' /></p></td><td><p><input name=\'b4\' size=\'4\' type=\'text\' value=\'${b4?if_exists?html}\' /></p></td><td><p><input name=\'b5\' size=\'4\' type=\'text\' value=\'${b5?if_exists?html}\' /></p></td><td><p><input name=\'c1\' size=\'4\' type=\'text\' value=\'${c1?if_exists?html}\' /></p></td><td><p><input name=\'c2\' size=\'4\' type=\'text\' value=\'${c2?if_exists?html}\' /></p></td><td><p><input name=\'c3\' size=\'4\' type=\'text\' value=\'${c3?if_exists?html}\' /></p></td><td><p><input name=\'c4\' size=\'4\' type=\'text\' value=\'${c4?if_exists?html}\' /></p></td><td><p><input name=\'c5\' size=\'4\' type=\'text\' value=\'${c5?if_exists?html}\' /></p></td><td><p><input name=\'d1\' size=\'4\' type=\'text\' value=\'${d1?if_exists?html}\' /></p></td><td><p><input name=\'d2\' size=\'4\' type=\'text\' value=\'${d2?if_exists?html}\' /></p></td><td><p><input name=\'d3\' size=\'4\' type=\'text\' value=\'${d3?if_exists?html}\' /></p></td><td><p><input name=\'d4\' size=\'4\' type=\'text\' value=\'${d4?if_exists?html}\' /></p></td><td><p><input name=\'e1\' size=\'4\' type=\'text\' value=\'${e1?if_exists?html}\' /></p></td><td><p><input name=\'e2\' size=\'4\' type=\'text\' value=\'${e2?if_exists?html}\' /></p></td><td><p><input name=\'e3\' size=\'4\' type=\'text\' value=\'${e3?if_exists?html}\' /></p></td><td><p><input name=\'e4\' size=\'4\' type=\'text\' value=\'${e4?if_exists?html}\' /></p></td></tr><tr><td colspan=\'20\'><p>&nbsp;</p><p>\�˵\����</p><p>һ���ϼƣ�A����\�\��ͳ�ƽ\�ֹ\�ڵı������\�\�\�Ա\�\�\����</p><p>����\�\�\����</p><p>\�ڱ\�\�\�Ա���ֱ�\�ռ۸�\�\�֤�����\�\�\�\�ڼ�\�\�\���\�\�м۸�\���ܲ�\�ű\�\�Ƶ\�ʵ\�\�\�\�\��\�\�\�B1��B2��\�ڡ�</p><p>Ƹ\�\�\�\�Ա����\�վ��۸�\���ܲ�\�Ż�۸�\�\�֤����\�\�\�²�\�\�\�ϿɵĲ�ǩ��\��\�\�\�\�\�ϵĹ�\���\�ͬ�\�\�\�Ա��B3����\�Լ�û\�о����۸�\���ܲ�\�Ż�۸�\�\�֤����\�\�\�²�\�\�\�Ͽɵ\�ǩ���\�ͬ\�\�\�\�\��\�\�\�\�\�Ա��B4���ֱ�����\�\�ͳ�ơ�</p><p>�\�ʱ���\�\�ã�\�\�Ա��B5����\�\�ָ\�\�Ƹ�\��\�ʱ������\�߹�\���\�ϵ��\�ڱ���λ\�\�\�޳�\�\�Ƹ\�ú\�ͬ�Ľ\��\�\�Ա�ȡ�</p><p>\�����\�\�ڸ���Ŀ�\�ϵ</p><p>A=B1+B2+B3+B4+B5=C1+C2+C3+C4+C5=D1+D2+D3+D4=E1+E2+E3+E4</p></td></tr></tbody></table></form></div></body></html>');
/*!40000 ALTER TABLE `ck_editor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck_finder`
--

DROP TABLE IF EXISTS `ck_finder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck_finder` (
  `ID` varchar(32) NOT NULL,
  `ATTACHMENT` varchar(255) DEFAULT NULL,
  `IMAGE` varchar(255) DEFAULT NULL,
  `REMARK` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck_finder`
--

LOCK TABLES `ck_finder` WRITE;
/*!40000 ALTER TABLE `ck_finder` DISABLE KEYS */;
/*!40000 ALTER TABLE `ck_finder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doc`
--

DROP TABLE IF EXISTS `doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doc` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DOCCONTENT` longblob,
  `DOCDATE` datetime DEFAULT NULL,
  `DOCID` varchar(255) DEFAULT NULL,
  `DOCTITLE` varchar(255) DEFAULT NULL,
  `DOCTYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doc`
--

LOCK TABLES `doc` WRITE;
/*!40000 ALTER TABLE `doc` DISABLE KEYS */;
/*!40000 ALTER TABLE `doc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jeecg_demo`
--

DROP TABLE IF EXISTS `jeecg_demo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jeecg_demo` (
  `ID` varchar(32) NOT NULL,
  `AGE` int(11) DEFAULT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `DEP_ID` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `MOBILE_PHONE` varchar(255) DEFAULT NULL,
  `OFFICE_PHONE` varchar(255) DEFAULT NULL,
  `SALARY` decimal(19,2) DEFAULT NULL,
  `SEX` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `USER_NAME` varchar(255) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jeecg_demo`
--

LOCK TABLES `jeecg_demo` WRITE;
/*!40000 ALTER TABLE `jeecg_demo` DISABLE KEYS */;
INSERT INTO `jeecg_demo` VALUES ('4028d881436d514601436d521ad4015e',12,'2014-01-07 23:28:53',NULL,NULL,'123','demo@jeecg.com','13111111111','66666666',111111.00,'1',NULL,'小明',NULL);
/*!40000 ALTER TABLE `jeecg_demo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jeecg_demo_course`
--

DROP TABLE IF EXISTS `jeecg_demo_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jeecg_demo_course` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(25) DEFAULT NULL,
  `teacher_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_g3jn8mfod69i7jfv5gnrcvgbx` (`teacher_ID`),
  CONSTRAINT `FK_g3jn8mfod69i7jfv5gnrcvgbx` FOREIGN KEY (`teacher_ID`) REFERENCES `jeecg_demo_teacher` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jeecg_demo_course`
--

LOCK TABLES `jeecg_demo_course` WRITE;
/*!40000 ALTER TABLE `jeecg_demo_course` DISABLE KEYS */;
INSERT INTO `jeecg_demo_course` VALUES ('4028d881436d514601436d5219b0015b','海贼王','4028d881436d514601436d5219ae015a');
/*!40000 ALTER TABLE `jeecg_demo_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jeecg_demo_student`
--

DROP TABLE IF EXISTS `jeecg_demo_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jeecg_demo_student` (
  `ID` varchar(32) NOT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `NAME` varchar(32) DEFAULT NULL,
  `SEX` varchar(1) DEFAULT NULL,
  `COURSE_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_r86q81koyocgod3cx6529hbpw` (`COURSE_ID`),
  CONSTRAINT `FK_r86q81koyocgod3cx6529hbpw` FOREIGN KEY (`COURSE_ID`) REFERENCES `jeecg_demo_course` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jeecg_demo_student`
--

LOCK TABLES `jeecg_demo_student` WRITE;
/*!40000 ALTER TABLE `jeecg_demo_student` DISABLE KEYS */;
INSERT INTO `jeecg_demo_student` VALUES ('4028d881436d514601436d5219b4015c',NULL,'卓洛','0','4028d881436d514601436d5219b0015b'),('4028d881436d514601436d5219b7015d',NULL,'山治 ','0','4028d881436d514601436d5219b0015b');
/*!40000 ALTER TABLE `jeecg_demo_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jeecg_demo_teacher`
--

DROP TABLE IF EXISTS `jeecg_demo_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jeecg_demo_teacher` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(12) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jeecg_demo_teacher`
--

LOCK TABLES `jeecg_demo_teacher` WRITE;
/*!40000 ALTER TABLE `jeecg_demo_teacher` DISABLE KEYS */;
INSERT INTO `jeecg_demo_teacher` VALUES ('4028d881436d514601436d5219ae015a','路飞','upload/Teacher/pic3345280233.PNG');
/*!40000 ALTER TABLE `jeecg_demo_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jeecg_matter_bom`
--

DROP TABLE IF EXISTS `jeecg_matter_bom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jeecg_matter_bom` (
  `ID` varchar(32) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` decimal(21,6) NOT NULL,
  `productionDate` datetime DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `weight` varchar(50) DEFAULT NULL,
  `parent_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_fldfyrevj0li4hej5b2gu2q7w` (`parent_ID`),
  CONSTRAINT `FK_fldfyrevj0li4hej5b2gu2q7w` FOREIGN KEY (`parent_ID`) REFERENCES `jeecg_matter_bom` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jeecg_matter_bom`
--

LOCK TABLES `jeecg_matter_bom` WRITE;
/*!40000 ALTER TABLE `jeecg_matter_bom` DISABLE KEYS */;
INSERT INTO `jeecg_matter_bom` VALUES ('4028d881436d514601436d521ae40163','广东深圳','001','电脑',5000.000000,'2014-01-07 23:28:53',5,10,'台','100',NULL),('4028d881436d514601436d521ae70164','上海','001001','主板',800.000000,'2014-01-07 23:28:53',6,18,'个','60','4028d881436d514601436d521ae40163');
/*!40000 ALTER TABLE `jeecg_matter_bom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jeecg_minidao`
--

DROP TABLE IF EXISTS `jeecg_minidao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jeecg_minidao` (
  `ID` varchar(32) NOT NULL,
  `AGE` int(11) DEFAULT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `CONTENT` varchar(255) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `DEP_ID` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `MOBILE_PHONE` varchar(255) DEFAULT NULL,
  `OFFICE_PHONE` varchar(255) DEFAULT NULL,
  `SALARY` decimal(19,2) DEFAULT NULL,
  `SEX` int(11) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `USER_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jeecg_minidao`
--

LOCK TABLES `jeecg_minidao` WRITE;
/*!40000 ALTER TABLE `jeecg_minidao` DISABLE KEYS */;
/*!40000 ALTER TABLE `jeecg_minidao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jeecg_order_custom`
--

DROP TABLE IF EXISTS `jeecg_order_custom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jeecg_order_custom` (
  `ID` varchar(32) NOT NULL,
  `CREATE_DT` datetime DEFAULT NULL,
  `CRTUSER` varchar(12) DEFAULT NULL,
  `CRTUSER_NAME` varchar(10) DEFAULT NULL,
  `DEL_DT` datetime DEFAULT NULL,
  `DELFLAG` int(11) DEFAULT NULL,
  `GO_ORDER_CODE` varchar(12) NOT NULL,
  `GOC_BUSS_CONTENT` varchar(33) DEFAULT NULL,
  `GOC_CONTENT` varchar(66) DEFAULT NULL,
  `GOC_CUS_NAME` varchar(16) DEFAULT NULL,
  `GOC_IDCARD` varchar(18) DEFAULT NULL,
  `GOC_PASSPORT_CODE` varchar(10) DEFAULT NULL,
  `GOC_SEX` varchar(255) DEFAULT NULL,
  `MODIFIER` varchar(12) DEFAULT NULL,
  `MODIFIER_NAME` varchar(10) DEFAULT NULL,
  `MODIFY_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jeecg_order_custom`
--

LOCK TABLES `jeecg_order_custom` WRITE;
/*!40000 ALTER TABLE `jeecg_order_custom` DISABLE KEYS */;
INSERT INTO `jeecg_order_custom` VALUES ('4028d881436d514601436d521ae20162',NULL,NULL,NULL,NULL,NULL,'11111AAA',NULL,NULL,'小明',NULL,NULL,'1',NULL,NULL,NULL);
/*!40000 ALTER TABLE `jeecg_order_custom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jeecg_order_main`
--

DROP TABLE IF EXISTS `jeecg_order_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jeecg_order_main` (
  `ID` varchar(32) NOT NULL,
  `CREATE_DT` datetime DEFAULT NULL,
  `CRTUSER` varchar(12) DEFAULT NULL,
  `CRTUSER_NAME` varchar(10) DEFAULT NULL,
  `DEL_DT` datetime DEFAULT NULL,
  `DELFLAG` int(11) DEFAULT NULL,
  `GO_ALL_PRICE` decimal(10,2) DEFAULT NULL,
  `GO_CONTACT_NAME` varchar(16) DEFAULT NULL,
  `GO_CONTENT` varchar(66) DEFAULT NULL,
  `GO_ORDER_CODE` varchar(12) NOT NULL,
  `GO_ORDER_COUNT` int(11) DEFAULT NULL,
  `GO_RETURN_PRICE` decimal(10,2) DEFAULT NULL,
  `GO_TELPHONE` varchar(11) DEFAULT NULL,
  `GODER_TYPE` varchar(255) DEFAULT NULL,
  `MODIFIER` varchar(12) DEFAULT NULL,
  `MODIFIER_NAME` varchar(10) DEFAULT NULL,
  `MODIFY_DT` datetime DEFAULT NULL,
  `USERTYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jeecg_order_main`
--

LOCK TABLES `jeecg_order_main` WRITE;
/*!40000 ALTER TABLE `jeecg_order_main` DISABLE KEYS */;
INSERT INTO `jeecg_order_main` VALUES ('4028d881436d514601436d521adb0160',NULL,NULL,NULL,NULL,NULL,1111111.00,'alex','别放辣椒','11111AAA',1,100.00,NULL,'1',NULL,NULL,NULL,'1');
/*!40000 ALTER TABLE `jeecg_order_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jeecg_order_product`
--

DROP TABLE IF EXISTS `jeecg_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jeecg_order_product` (
  `ID` varchar(32) NOT NULL,
  `CREATE_DT` datetime DEFAULT NULL,
  `CRTUSER` varchar(12) DEFAULT NULL,
  `CRTUSER_NAME` varchar(10) DEFAULT NULL,
  `DEL_DT` datetime DEFAULT NULL,
  `DELFLAG` int(11) DEFAULT NULL,
  `GO_ORDER_CODE` varchar(12) NOT NULL,
  `GOP_CONTENT` varchar(66) DEFAULT NULL,
  `GOP_COUNT` int(11) DEFAULT NULL,
  `GOP_ONE_PRICE` decimal(10,2) DEFAULT NULL,
  `GOP_PRODUCT_NAME` varchar(33) DEFAULT NULL,
  `GOP_PRODUCT_TYPE` varchar(1) NOT NULL,
  `GOP_SUM_PRICE` decimal(10,2) DEFAULT NULL,
  `MODIFIER` varchar(12) DEFAULT NULL,
  `MODIFIER_NAME` varchar(10) DEFAULT NULL,
  `MODIFY_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jeecg_order_product`
--

LOCK TABLES `jeecg_order_product` WRITE;
/*!40000 ALTER TABLE `jeecg_order_product` DISABLE KEYS */;
INSERT INTO `jeecg_order_product` VALUES ('4028d881436d514601436d521adf0161',NULL,NULL,NULL,NULL,NULL,'11111AAA',NULL,1,100.00,'最最美味的地锅鸡','1',100.00,NULL,NULL,NULL);
/*!40000 ALTER TABLE `jeecg_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jform_cgreport_head`
--

DROP TABLE IF EXISTS `jform_cgreport_head`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jform_cgreport_head` (
  `ID` varchar(36) NOT NULL,
  `CGR_SQL` longtext NOT NULL,
  `CODE` varchar(36) NOT NULL,
  `CONTENT` longtext NOT NULL,
  `NAME` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jform_cgreport_head`
--

LOCK TABLES `jform_cgreport_head` WRITE;
/*!40000 ALTER TABLE `jform_cgreport_head` DISABLE KEYS */;
INSERT INTO `jform_cgreport_head` VALUES ('402889f847666ae401476670bb72000a','select * from  weixin_cms_menu','A001','查询微网站栏目','查询栏目');
/*!40000 ALTER TABLE `jform_cgreport_head` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jform_cgreport_item`
--

DROP TABLE IF EXISTS `jform_cgreport_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jform_cgreport_item` (
  `ID` varchar(36) NOT NULL,
  `S_FLAG` varchar(2) DEFAULT NULL,
  `S_MODE` varchar(10) DEFAULT NULL,
  `CGRHEAD_ID` varchar(36) DEFAULT NULL,
  `DICT_CODE` varchar(36) DEFAULT NULL,
  `FIELD_HREF` varchar(120) DEFAULT NULL,
  `FIELD_NAME` varchar(36) DEFAULT NULL,
  `FIELD_TXT` longtext,
  `FIELD_TYPE` varchar(10) DEFAULT NULL,
  `IS_SHOW` varchar(5) DEFAULT NULL,
  `ORDER_NUM` int(11) DEFAULT NULL,
  `REPLACE_VA` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jform_cgreport_item`
--

LOCK TABLES `jform_cgreport_item` WRITE;
/*!40000 ALTER TABLE `jform_cgreport_item` DISABLE KEYS */;
INSERT INTO `jform_cgreport_item` VALUES ('402889f847666ae401476670bb74000b','Y','single','402889f847666ae401476670bb72000a','','','ID','ID','String','Y',0,''),('402889f847666ae401476670bb78000c','Y','single','402889f847666ae401476670bb72000a','','','ACCOUNTID','ACCOUNTID','String','Y',1,''),('402889f847666ae401476670bb79000d','Y','single','402889f847666ae401476670bb72000a','','','CREATE_BY','CREATE_BY','String','Y',2,''),('402889f847666ae401476670bb7a000e','Y','single','402889f847666ae401476670bb72000a','','','CREATE_DATE','CREATE_DATE','String','Y',3,''),('402889f847666ae401476670bb7b000f','Y','single','402889f847666ae401476670bb72000a','','','CREATE_NAME','CREATE_NAME','String','Y',4,''),('402889f847666ae401476670bb7e0010','Y','single','402889f847666ae401476670bb72000a','','','IMAGE_HREF','IMAGE_HREF','String','Y',5,''),('402889f847666ae401476670bb7f0011','Y','single','402889f847666ae401476670bb72000a','','','IMAGE_NAME','IMAGE_NAME','String','Y',6,''),('402889f847666ae401476670bb800012','Y','single','402889f847666ae401476670bb72000a','','','NAME','NAME','String','Y',7,''),('402889f847666ae401476670bb810013','Y','single','402889f847666ae401476670bb72000a','','','TYPE','TYPE','String','Y',8,'');
/*!40000 ALTER TABLE `jform_cgreport_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jform_leave`
--

DROP TABLE IF EXISTS `jform_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jform_leave` (
  `id` varchar(36) NOT NULL,
  `title` varchar(50) NOT NULL COMMENT '请假标题',
  `people` varchar(20) NOT NULL COMMENT '请假人',
  `sex` varchar(10) NOT NULL COMMENT '性别',
  `begindate` datetime NOT NULL COMMENT '请假开始时间',
  `enddate` datetime NOT NULL COMMENT '请假结束时间',
  `day_num` int(11) DEFAULT NULL COMMENT '请假天数',
  `hol_dept` varchar(32) NOT NULL COMMENT '所属部门',
  `hol_reson` varchar(255) NOT NULL COMMENT '请假原因',
  `dep_leader` varchar(20) NOT NULL COMMENT '部门审批人',
  `content` varchar(255) NOT NULL COMMENT '部门审批意见',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jform_leave`
--

LOCK TABLES `jform_leave` WRITE;
/*!40000 ALTER TABLE `jform_leave` DISABLE KEYS */;
/*!40000 ALTER TABLE `jform_leave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jform_order_main`
--

DROP TABLE IF EXISTS `jform_order_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jform_order_main` (
  `id` varchar(36) NOT NULL,
  `order_code` varchar(50) DEFAULT NULL COMMENT '订单号',
  `order_date` datetime DEFAULT NULL COMMENT '订单日期',
  `order_money` double DEFAULT NULL COMMENT '订单金额',
  `content` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jform_order_main`
--

LOCK TABLES `jform_order_main` WRITE;
/*!40000 ALTER TABLE `jform_order_main` DISABLE KEYS */;
/*!40000 ALTER TABLE `jform_order_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jg_person`
--

DROP TABLE IF EXISTS `jg_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_person` (
  `ID` varchar(32) NOT NULL,
  `AGE` int(11) DEFAULT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `CREATEDT` datetime DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `SALARY` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jg_person`
--

LOCK TABLES `jg_person` WRITE;
/*!40000 ALTER TABLE `jg_person` DISABLE KEYS */;
INSERT INTO `jg_person` VALUES ('4028d881436d514601436d521ad9015f',10,'2014-01-07 23:28:53','2014-01-07 23:28:53','小红',1000.00);
/*!40000 ALTER TABLE `jg_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jp_demo_activity`
--

DROP TABLE IF EXISTS `jp_demo_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jp_demo_activity` (
  `id` varchar(32) NOT NULL COMMENT 'ID',
  `name` varchar(100) NOT NULL COMMENT '活动名称',
  `begin_time` datetime DEFAULT NULL COMMENT '活动开始时间',
  `end_time` datetime DEFAULT NULL COMMENT ' 活动结束时间',
  `hdurl` varchar(300) DEFAULT NULL COMMENT '入口地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='红包活动表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jp_demo_activity`
--

LOCK TABLES `jp_demo_activity` WRITE;
/*!40000 ALTER TABLE `jp_demo_activity` DISABLE KEYS */;
INSERT INTO `jp_demo_activity` VALUES ('CC7E3FE24C3843289A7D8E4124F53FF6','2','2016-08-22 13:02:41','2016-08-22 13:02:42','3'),('DEBCE74A2E87406EBA557748BE0FA700','1','2016-04-10 14:33:50','2016-04-10 14:33:52','1'),('F4EAEF41A7DF4B59AE9A41455E1643F9','3','2016-06-30 23:52:20','2016-06-30 23:52:21','3');
/*!40000 ALTER TABLE `jp_demo_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jp_demo_auth`
--

DROP TABLE IF EXISTS `jp_demo_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jp_demo_auth` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `auth_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '权限编码',
  `auth_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '权限名称',
  `auth_type` varchar(2) COLLATE utf8_bin DEFAULT NULL COMMENT '权限类型 0:菜单;1:功能',
  `auth_contr` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '权限控制',
  `parent_auth_id` char(12) COLLATE utf8_bin DEFAULT NULL COMMENT '上一级权限编码',
  `leaf_ind` char(2) COLLATE utf8_bin DEFAULT NULL COMMENT '是否叶子节点',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_authid` (`auth_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='运营系统权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jp_demo_auth`
--

LOCK TABLES `jp_demo_auth` WRITE;
/*!40000 ALTER TABLE `jp_demo_auth` DISABLE KEYS */;
INSERT INTO `jp_demo_auth` VALUES (1,'21','系统管理','0',NULL,NULL,'N'),(2,'2101','用户管理','0','/system/back/jwSystemUser/list.do','21','Y'),(3,'210101','新增用户','1','/system/back/jwSystemUser/doAdd.do','2101','Y'),(4,'210102','编辑用户','1','/system/back/jwSystemUser/doEdit.do','2101','Y'),(5,'2102','角色管理','0','/system/back/jwSystemRole/list.do','21','Y'),(6,'210201','新增角色','1','/system/back/jwSystemRole/doAdd.do','2102','Y'),(7,'210202','编辑角色','1','/system/back/jwSystemRole/doEdit.do','2102','Y'),(8,'210203','角色授权','1','/system/back/jwSystemRole/editRoleAuth.do','2102','Y'),(9,'210204','删除角色','1','/system/back/jwSystemRole/doDelete.do','2102','Y'),(10,'2103','权限管理','0','/system/back/jwSystemAuth/list.do','21','Y'),(11,'210301','新增权限','1','/system/back/jwSystemAuth/doAdd.do','2103','Y'),(12,'210302','编辑权限','1','/system/back/jwSystemAuth/doEdit.do1','2103','Y');
/*!40000 ALTER TABLE `jp_demo_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `optimistic_locking`
--

DROP TABLE IF EXISTS `optimistic_locking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `optimistic_locking` (
  `ID` varchar(32) NOT NULL,
  `ACCOUNT` int(11) DEFAULT NULL,
  `AGE` int(11) DEFAULT NULL,
  `NAME` varchar(85) DEFAULT NULL,
  `VER` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `optimistic_locking`
--

LOCK TABLES `optimistic_locking` WRITE;
/*!40000 ALTER TABLE `optimistic_locking` DISABLE KEYS */;
/*!40000 ALTER TABLE `optimistic_locking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywx_account`
--

DROP TABLE IF EXISTS `qywx_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywx_account` (
  `id` varchar(50) NOT NULL,
  `accont_name` varchar(100) DEFAULT NULL COMMENT '名称',
  `corpid` varchar(255) DEFAULT NULL COMMENT '企业号标识CorpID',
  `secret` varchar(255) DEFAULT NULL COMMENT '管理组凭证密钥Secret',
  `access_token` varchar(512) DEFAULT NULL COMMENT 'AccessToken',
  `account_desc` varchar(300) DEFAULT NULL COMMENT '描述',
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  `conversation_secret` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_corpid` (`corpid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='账号信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywx_account`
--

LOCK TABLES `qywx_account` WRITE;
/*!40000 ALTER TABLE `qywx_account` DISABLE KEYS */;
INSERT INTO `qywx_account` VALUES ('402880a94742e24e014742e8942b0002','捷微企业号','?','?',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'?');
/*!40000 ALTER TABLE `qywx_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywx_agent`
--

DROP TABLE IF EXISTS `qywx_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywx_agent` (
  `id` varchar(50) NOT NULL COMMENT '主键Id',
  `account_id` varchar(200) NOT NULL COMMENT '企业号ID',
  `wx_agentid` varchar(200) DEFAULT NULL COMMENT '应用ID(微信)',
  `agent_name` varchar(200) DEFAULT NULL COMMENT '应用名称',
  `token` varchar(50) DEFAULT NULL COMMENT '回调token',
  `encodingAESKey` varchar(100) DEFAULT NULL COMMENT '回调EncodingAESKey',
  `square_logo_url` varchar(200) DEFAULT NULL COMMENT '方形头像',
  `round_logo_url` varchar(200) DEFAULT NULL COMMENT '圆形头像',
  `logo_mediaid` varchar(100) DEFAULT NULL COMMENT '头像mediaid',
  `description` varchar(200) DEFAULT NULL COMMENT '描述',
  `close_status` varchar(200) DEFAULT NULL COMMENT '是否被禁用',
  `redirect_domain` varchar(200) DEFAULT NULL COMMENT '可信域名',
  `report_location_flag` varchar(2) DEFAULT NULL COMMENT '是否打开地理位置上报 0：不上报；1：进入会话上报；2：持续上报',
  `isreportuser` varchar(2) DEFAULT NULL COMMENT '是否接收用户变更通知。0：不接收；1：接收',
  `isreportenter` varchar(2) DEFAULT NULL COMMENT '是否上报用户进入应用事件。0：不接收；1：接收',
  `app_type` varchar(2) DEFAULT NULL COMMENT '应用类型。1：消息型；2：主页型',
  `home_url` varchar(200) DEFAULT NULL COMMENT '主页型应用url',
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_accountid_appid` (`account_id`,`wx_agentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='应用信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywx_agent`
--

LOCK TABLES `qywx_agent` WRITE;
/*!40000 ALTER TABLE `qywx_agent` DISABLE KEYS */;
INSERT INTO `qywx_agent` VALUES ('1','402880a94742e24e014742e8942b0002','1','微信考勤','jeewx','?','111url','11',NULL,'','1','','2','1','0','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('DC46552CD5AE4DF2AE12680C4636C9BA','402880a94742e24e014742e8942b0002','4','公司公告','jeewx','?','',NULL,NULL,'','1','http://fly1206.xicp.net/weixinCoreController.do?wechat&corpid=wx967db4406788c64c&appid=4','0','0','0','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `qywx_agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywx_autoresponse`
--

DROP TABLE IF EXISTS `qywx_autoresponse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywx_autoresponse` (
  `id` varchar(100) NOT NULL,
  `key_word` varchar(200) DEFAULT NULL COMMENT '关键字',
  `res_content` varchar(500) DEFAULT NULL COMMENT '回复内容',
  `msg_type` varchar(100) DEFAULT NULL COMMENT '消息类型',
  `template_name` varchar(100) DEFAULT NULL COMMENT '模板名称',
  `accountid` varchar(100) DEFAULT NULL COMMENT '微信账号id',
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`),
  KEY `idx_accountid` (`accountid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='关键字管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywx_autoresponse`
--

LOCK TABLES `qywx_autoresponse` WRITE;
/*!40000 ALTER TABLE `qywx_autoresponse` DISABLE KEYS */;
INSERT INTO `qywx_autoresponse` VALUES ('43232F1A56E94BD099139FADD1EFD53F','01','8a792db34fdf51b3014fdfa391fd002a','text','素材一句话冠亚军','402880a94742e24e014742e8942b0002',NULL,NULL,'2016-07-13 14:23:03',NULL,NULL,NULL),('694835F2933C4410A639906639F18D77','nihao','F65B42281D1E46E69FBEAEEC43587F6D','text','nihao','402880a94742e24e014742e8942b0002',NULL,NULL,'2016-04-18 12:43:00',NULL,NULL,NULL),('8a792db34fdf51b3014fdfa937e90038','jeecg','ff808081538e81b401539bb4b1c80034','news','QQQ','402880a94742e24e014742e8942b0002',NULL,NULL,NULL,NULL,NULL,NULL),('CCA4FFD6B26E481C878FF715C708CB55','你好','F65B42281D1E46E69FBEAEEC43587F6D','text','nihao','402880a94742e24e014742e8942b0002',NULL,NULL,'2016-12-20 16:47:48',NULL,NULL,NULL);
/*!40000 ALTER TABLE `qywx_autoresponse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywx_autoresponse_default`
--

DROP TABLE IF EXISTS `qywx_autoresponse_default`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywx_autoresponse_default` (
  `id` varchar(50) NOT NULL COMMENT '主键Id',
  `templatename` varchar(200) NOT NULL COMMENT '模板名称',
  `templateid` varchar(50) NOT NULL COMMENT '模板Id',
  `msgtype` varchar(40) DEFAULT NULL COMMENT '消息类型',
  `accountid` varchar(40) DEFAULT NULL COMMENT '微信账号Id',
  `iswork` varchar(10) DEFAULT NULL COMMENT '是否启用',
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='默认关键字回复';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywx_autoresponse_default`
--

LOCK TABLES `qywx_autoresponse_default` WRITE;
/*!40000 ALTER TABLE `qywx_autoresponse_default` DISABLE KEYS */;
INSERT INTO `qywx_autoresponse_default` VALUES ('8a792db34fdf51b3014fdfb22e87004f','默认回复语','8a792db34fdf51b3014fdfb1fdb3004c','text','402880a94742e24e014742e8942b0002','1',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `qywx_autoresponse_default` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywx_conversation`
--

DROP TABLE IF EXISTS `qywx_conversation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywx_conversation` (
  `ID` varchar(50) NOT NULL,
  `TITLE` varchar(200) DEFAULT NULL,
  `USERNAMELIST` varchar(2000) DEFAULT NULL,
  `USERIDLIST` varchar(2000) DEFAULT NULL,
  `STATUS` int(2) DEFAULT NULL,
  `MANAGERID` varchar(50) DEFAULT NULL,
  `CHATID` varchar(100) DEFAULT NULL,
  `MANAGERNAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywx_conversation`
--

LOCK TABLES `qywx_conversation` WRITE;
/*!40000 ALTER TABLE `qywx_conversation` DISABLE KEYS */;
INSERT INTO `qywx_conversation` VALUES ('725105D1D71948499B1CB7FFE465011A','会话测试','scott,周俊峰,邢磊,','scott,zhoujf,xinglei,',1,'xinglei','1465721359150','邢磊');
/*!40000 ALTER TABLE `qywx_conversation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywx_group`
--

DROP TABLE IF EXISTS `qywx_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywx_group` (
  `id` varchar(100) NOT NULL COMMENT '部门Id',
  `name` varchar(200) DEFAULT NULL COMMENT '部门名称',
  `parentid` varchar(100) DEFAULT NULL COMMENT '上级部门Id',
  `accountid` varchar(100) DEFAULT NULL COMMENT '微信账号ID',
  `orders` varchar(11) DEFAULT NULL,
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='关注用户组';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywx_group`
--

LOCK TABLES `qywx_group` WRITE;
/*!40000 ALTER TABLE `qywx_group` DISABLE KEYS */;
INSERT INTO `qywx_group` VALUES ('1','北京国炬','0','402880a94742e24e014742e8942b0002','200',NULL,NULL,NULL,NULL,NULL,NULL),('101B71F46D8A49DAA08357BC501493AF','软件开发部','1','402880a94742e24e014742e8942b0002','1',NULL,NULL,'2016-12-17 00:17:31',NULL,NULL,NULL),('8C3E0E85D3134B99BB15D4E16F5AFF36','财务室','1','402880a94742e24e014742e8942b0002','2',NULL,NULL,'2016-12-17 00:17:41',NULL,NULL,NULL);
/*!40000 ALTER TABLE `qywx_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywx_gzentity`
--

DROP TABLE IF EXISTS `qywx_gzentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywx_gzentity` (
  `id` varchar(100) NOT NULL,
  `template_name` varchar(100) DEFAULT NULL COMMENT '模板名称',
  `template_id` varchar(100) DEFAULT NULL COMMENT '模板id',
  `template_type` varchar(100) DEFAULT NULL COMMENT '类型 文本_text,图文_news',
  `is_work` varchar(100) DEFAULT NULL COMMENT '是否启用 未启用_0,启用_1',
  `accountid` varchar(100) DEFAULT NULL COMMENT '微信账号id',
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='关注回复';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywx_gzentity`
--

LOCK TABLES `qywx_gzentity` WRITE;
/*!40000 ALTER TABLE `qywx_gzentity` DISABLE KEYS */;
INSERT INTO `qywx_gzentity` VALUES ('402880a94936f3ee0149370671400001','关注回复','4028098246b78d570146b7915d020004','text','1','402880a94742e24e014742e8942b0002',NULL,NULL,NULL,NULL,NULL,NULL),('8a792db34fdf51b3014fdfa74adf0034','图文素材1','8a792db34fdf51b3014fdfa3c6aa002c','news','0','402880a94742e24e014742e8942b0002',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `qywx_gzentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywx_gzuserinfo`
--

DROP TABLE IF EXISTS `qywx_gzuserinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywx_gzuserinfo` (
  `id` varchar(100) CHARACTER SET gbk NOT NULL COMMENT '主键',
  `userid` varchar(100) DEFAULT NULL COMMENT '账号',
  `name` varchar(100) DEFAULT NULL COMMENT '姓名',
  `department` varchar(200) DEFAULT NULL COMMENT '部门',
  `position` varchar(100) DEFAULT NULL COMMENT '职位',
  `mobile` varchar(100) DEFAULT NULL COMMENT '电话',
  `province` varchar(100) DEFAULT NULL COMMENT '省份',
  `gender` varchar(100) DEFAULT NULL COMMENT '性别gender=1表示男，=0表示女',
  `email` varchar(400) DEFAULT NULL COMMENT '邮箱',
  `weixinid` varchar(100) DEFAULT NULL COMMENT '微信号',
  `avatar` varchar(100) DEFAULT NULL COMMENT '头像url',
  `subscribe_status` varchar(100) DEFAULT NULL COMMENT '关注状态: 1=已关注，2=已冻结，4=未关注',
  `subscribe_time` datetime DEFAULT NULL COMMENT '关注时间',
  `accountid` varchar(100) DEFAULT NULL COMMENT '微信账号ID',
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='关注用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywx_gzuserinfo`
--

LOCK TABLES `qywx_gzuserinfo` WRITE;
/*!40000 ALTER TABLE `qywx_gzuserinfo` DISABLE KEYS */;
INSERT INTO `qywx_gzuserinfo` VALUES ('6A36781865A349359AADABE81C42D3AF','qinfeng','秦风','1',NULL,'18600000000',NULL,'1',NULL,NULL,'http://shp.qpic.cn/bizmp/UBykN6XtpLRw6ibU7nBJUzEaicdO55PfUTic6XWqxIPbiaiciclQiav3DD01A/','1',NULL,'402880a94742e24e014742e8942b0002',NULL,NULL,'2016-12-17 00:16:30',NULL,NULL,NULL);
/*!40000 ALTER TABLE `qywx_gzuserinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywx_location`
--

DROP TABLE IF EXISTS `qywx_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywx_location` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `corpid` varchar(64) NOT NULL COMMENT '企业号corpId',
  `userid` varchar(64) DEFAULT NULL COMMENT ' 	成员UserID ',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `latitude` varchar(64) DEFAULT NULL COMMENT '地理位置纬度',
  `longitude` varchar(64) DEFAULT NULL COMMENT '地理位置径度',
  `precision` varchar(64) DEFAULT NULL COMMENT '地理位置精度',
  `agentid` int(32) DEFAULT NULL COMMENT '企业应用id',
  `location_precision` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地理位置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywx_location`
--

LOCK TABLES `qywx_location` WRITE;
/*!40000 ALTER TABLE `qywx_location` DISABLE KEYS */;
INSERT INTO `qywx_location` VALUES ('4065B9C7598C41168B07BC09FEC72757','wx967db4406788c64c','qinfeng','2016-12-17 00:27:00','40.056004','116.404671',NULL,1,'30.000000'),('BF3219EA3F2840938BDA4FDE703A5E36','wx967db4406788c64c','qinfeng','2016-12-17 01:29:17','40.067616','116.405525',NULL,4,'30.000000');
/*!40000 ALTER TABLE `qywx_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywx_menu`
--

DROP TABLE IF EXISTS `qywx_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywx_menu` (
  `ID` varchar(32) NOT NULL,
  `agent_id` varchar(255) DEFAULT NULL COMMENT '应用主键ID',
  `menu_name` varchar(255) DEFAULT NULL COMMENT '菜单标题',
  `menu_type` varchar(255) DEFAULT NULL COMMENT '菜单类型',
  `menu_key` varchar(255) DEFAULT NULL COMMENT '菜单KEY',
  `orders` varchar(10) DEFAULT NULL COMMENT '菜单位置',
  `msg_type` varchar(255) DEFAULT NULL COMMENT '响应消息类型',
  `template_id` varchar(255) DEFAULT NULL COMMENT '关联素材ID',
  `url` varchar(1000) DEFAULT NULL COMMENT '网页链接',
  `father_id` varchar(32) DEFAULT NULL COMMENT '父ID',
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`ID`),
  KEY `menu_key` (`menu_key`) USING BTREE,
  KEY `order` (`orders`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='自定义菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywx_menu`
--

LOCK TABLES `qywx_menu` WRITE;
/*!40000 ALTER TABLE `qywx_menu` DISABLE KEYS */;
INSERT INTO `qywx_menu` VALUES ('114BC83AA7AB4C548AAFFE515AB793CB','1','官网','click','2','2','text','F65B42281D1E46E69FBEAEEC43587F6D','',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('1FF5FCEA7C71477DA133CA0195EC2A07','1','jeecg','view','21','21','text','F65B42281D1E46E69FBEAEEC43587F6D','http://www.jeecg.org','114BC83AA7AB4C548AAFFE515AB793CB',NULL,NULL,NULL,NULL,NULL,NULL),('27ADD6192C04415FA7FC2CD1C3350E07','1','百度','view','12','11','text','F65B42281D1E46E69FBEAEEC43587F6D','http://www.baidu.com','D7837CB701E845F6B5557AFACCDB2B98',NULL,NULL,NULL,NULL,NULL,NULL),('4EF79061542E4DC59278BA9F6269E2CF','4','111','click','11','11','text','F65B42281D1E46E69FBEAEEC43587F6D','','CCABCD43380F4DA59E5C6987B88EF921',NULL,NULL,NULL,NULL,NULL,NULL),('CCABCD43380F4DA59E5C6987B88EF921','4','11','click','1','1','text','F65B42281D1E46E69FBEAEEC43587F6D','',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('D7837CB701E845F6B5557AFACCDB2B98','1','OA办公','click','1','1','text','F65B42281D1E46E69FBEAEEC43587F6D','',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `qywx_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywx_messagelog`
--

DROP TABLE IF EXISTS `qywx_messagelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywx_messagelog` (
  `id` varchar(32) NOT NULL,
  `wx_agent_id` int(11) DEFAULT NULL COMMENT '应用id',
  `topartys_id` varchar(64) DEFAULT NULL COMMENT '部门id',
  `message_type` varchar(32) DEFAULT NULL COMMENT '消息类型',
  `message_content` text COMMENT '文本内容',
  `content_id` varchar(64) DEFAULT NULL COMMENT '内容id',
  `receive_message` varchar(300) DEFAULT NULL COMMENT '消息状态',
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywx_messagelog`
--

LOCK TABLES `qywx_messagelog` WRITE;
/*!40000 ALTER TABLE `qywx_messagelog` DISABLE KEYS */;
INSERT INTO `qywx_messagelog` VALUES ('41EEAB4A2C0D4E9B95228A526D50CEAA',4,'','news',NULL,'ff808081538e81b401539bb4b1c80034','{\"errcode\":0,\"errmsg\":\"ok\"}','2016-12-17 01:29:04');
/*!40000 ALTER TABLE `qywx_messagelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywx_newsitem`
--

DROP TABLE IF EXISTS `qywx_newsitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywx_newsitem` (
  `id` varchar(100) NOT NULL,
  `title` varchar(300) DEFAULT NULL COMMENT '标题',
  `author` varchar(100) DEFAULT NULL COMMENT '作者',
  `image_path` varchar(100) DEFAULT NULL COMMENT '图片路径',
  `content` longtext COMMENT '内容',
  `templateid` varchar(100) DEFAULT NULL COMMENT '图文模板id',
  `description` varchar(400) DEFAULT NULL COMMENT '摘要',
  `order_no` varchar(100) DEFAULT NULL COMMENT '新闻顺序',
  `url` varchar(100) DEFAULT NULL COMMENT '消息内容的url',
  `hdid` varchar(100) DEFAULT NULL COMMENT '活动id',
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='图文素材新闻';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywx_newsitem`
--

LOCK TABLES `qywx_newsitem` WRITE;
/*!40000 ALTER TABLE `qywx_newsitem` DISABLE KEYS */;
INSERT INTO `qywx_newsitem` VALUES ('18342D4E58884D55B70D93C1D3F2A24A','12','12','upload/files/1348502772_8826.gif','<p>121212</p>','0A1776E6FE6F4AFB9CF558175AAF495D','12','1','',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('3C35D5FC5A2C4C74BAA9113EA7151740','jeewx','jeewx','upload/files/ppx01814elfynejrpjjhm47.png','<p>jeewxjeewx</p><p><img src=\"http://localhost/jeewx/upload/ueditor/20161216/91871481903127549.jpg\" title=\"profile_small.jpg\"/></p>','ff808081538e81b401539bb4b1c80034','jeewx','2','',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('8a792db34fdf51b3014fdfa41353002e','qq','qq','upload/files/e1fe9925bc315c60addea1b98eb1cb1349547719.jpg','<p><img src=\"http://localhost/jeewx/upload/ueditor/20161216/91501481903058267.jpg\" title=\"e1fe9925bc315c60addea1b98eb1cb1349547719.jpg\"/></p>','8a792db34fdf51b3014fdfa3c6aa002c','qqqq','1','','',NULL,NULL,NULL,NULL,NULL,NULL),('BC89EDABF05E4678A7DC46087A8B1FBD','1231','123123','upload/files/70g58PICeGn.jpg','<p>123<br/></p>','3D4ABC0B6B5F46EA9A53311FD9E871DA','123','1','',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('ff808081538e81b40153a1602d3c006b','庆祝jeecg企业微信发布','jeecg开源社区','upload/files/profile_small.jpg','<p>庆祝jeecg企业微信发布庆祝jeecg企业微信发布</p><p><img src=\"http://localhost/jeewx/upload/ueditor/20161216/56741481903099897.jpg\" title=\"profile_small.jpg\"/></p>','ff808081538e81b401539bb4b1c80034','庆祝jeecg企业微信发布','1','','',NULL,NULL,NULL,NULL,NULL,NULL),('ff808081538e81b40153a17b319a0076','sss','ddddd','upload/files/20160323111823UttemyYU.png','<p>ssssss</p>','ff808081538e81b40153a1787a020074','jjjjjj','11','	http://www.zstobacco.com.cn:9091/tobacco-marketing/f/wxcp?verify&a=37','',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `qywx_newsitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywx_newstemplate`
--

DROP TABLE IF EXISTS `qywx_newstemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywx_newstemplate` (
  `id` varchar(100) NOT NULL,
  `template_name` varchar(200) DEFAULT NULL COMMENT '模板名称',
  `template_type` varchar(100) DEFAULT NULL COMMENT '模板类型',
  `accountid` varchar(100) DEFAULT NULL COMMENT '微信企业号账号id',
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='图文素材模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywx_newstemplate`
--

LOCK TABLES `qywx_newstemplate` WRITE;
/*!40000 ALTER TABLE `qywx_newstemplate` DISABLE KEYS */;
INSERT INTO `qywx_newstemplate` VALUES ('8a792db34fdf51b3014fdfa3c6aa002c','QQ图文','common','402880a94742e24e014742e8942b0002',NULL,NULL,NULL,NULL,NULL,NULL),('ff808081538e81b401539bb4b1c80034','JEEWX产品介绍','common','402880a94742e24e014742e8942b0002',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `qywx_newstemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywx_receivetext`
--

DROP TABLE IF EXISTS `qywx_receivetext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywx_receivetext` (
  `id` varchar(100) NOT NULL,
  `tousername` varchar(100) NOT NULL COMMENT '开发者微信号',
  `fromusername` varchar(100) DEFAULT NULL COMMENT '发送方帐号（一个OpenID）',
  `createtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '消息创建时间 （整型）',
  `msgtype` varchar(100) DEFAULT NULL COMMENT '消息类型（text/image/location/link）',
  `msgid` varchar(100) DEFAULT NULL COMMENT '消息id，64位整型',
  `content` varchar(400) DEFAULT NULL COMMENT '消息内容',
  `response` varchar(10) DEFAULT NULL COMMENT '是否回复',
  `rescontent` varchar(400) DEFAULT NULL COMMENT '回复内容',
  `nickname` varchar(100) DEFAULT NULL COMMENT '用户昵称',
  `accountid` varchar(40) DEFAULT NULL COMMENT '微信账号Id',
  `agent_id` varchar(200) DEFAULT NULL COMMENT '应用ID(微信)',
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文本消息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywx_receivetext`
--

LOCK TABLES `qywx_receivetext` WRITE;
/*!40000 ALTER TABLE `qywx_receivetext` DISABLE KEYS */;
INSERT INTO `qywx_receivetext` VALUES ('0356C7F17AD64D0CBCD2E706DD1B94F2','wx967db4406788c64c','qinfeng','2016-12-17 00:22:04','text','2938593396750063237','nihao','0',NULL,'','402880a94742e24e014742e8942b0002','1',NULL,NULL,'2016-12-17 00:27:00',NULL,NULL,NULL),('28D7E805A9E94F3A8A31E521BEC477AB','wx967db4406788c64c','qinfeng','2016-12-20 18:29:19','text','2938593396750063242','你好','0',NULL,'','402880a94742e24e014742e8942b0002','1',NULL,NULL,'2016-12-20 18:29:20',NULL,NULL,NULL),('2BAA99FFE8AC434B8AD5C9D434678630','wx967db4406788c64c','qinfeng','2016-12-20 16:48:36','text','2938593396750063241','你好','0',NULL,'','402880a94742e24e014742e8942b0002','1',NULL,NULL,'2016-12-20 16:48:36',NULL,NULL,NULL),('5EB24BDFAC51430C80607E4F3442C8D0','wx967db4406788c64c','qinfeng','2016-12-17 00:28:33','text','2938593396750063239','jeecg','0',NULL,'','402880a94742e24e014742e8942b0002','1',NULL,NULL,'2016-12-17 00:28:29',NULL,NULL,NULL),('A7B14A39A72D4476B5D402232552A72C','wx967db4406788c64c','qinfeng','2016-12-17 00:22:04','text','2938593396750063237','nihao','0',NULL,'','402880a94742e24e014742e8942b0002','1',NULL,NULL,'2016-12-17 00:26:59',NULL,NULL,NULL),('C57E74A3402E433F9EF7AFA672AAC540','wx967db4406788c64c','qinfeng','2016-12-17 00:29:24','text','2938593396750063240','jeecg','0',NULL,'','402880a94742e24e014742e8942b0002','1',NULL,NULL,'2016-12-17 00:29:21',NULL,NULL,NULL),('C6434CDE401B49D0BA8AE2F8BA8D6F51','wx967db4406788c64c','qinfeng','2016-12-17 00:27:20','text','2938593396750063238','nihao','0',NULL,'','402880a94742e24e014742e8942b0002','1',NULL,NULL,'2016-12-17 00:27:17',NULL,NULL,NULL),('E2E5456B445844FFB95B5473585D8F9A','wx967db4406788c64c','qinfeng','2016-12-17 00:22:04','text','2938593396750063237','nihao','0',NULL,'','402880a94742e24e014742e8942b0002','1',NULL,NULL,'2016-12-17 00:27:00',NULL,NULL,NULL);
/*!40000 ALTER TABLE `qywx_receivetext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywx_texttemplate`
--

DROP TABLE IF EXISTS `qywx_texttemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywx_texttemplate` (
  `id` varchar(100) NOT NULL,
  `template_name` varchar(200) NOT NULL COMMENT '模板名称',
  `template_content` varchar(500) NOT NULL COMMENT '模板内容',
  `accountid` varchar(100) DEFAULT NULL COMMENT '微信企业账户id',
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文本模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywx_texttemplate`
--

LOCK TABLES `qywx_texttemplate` WRITE;
/*!40000 ALTER TABLE `qywx_texttemplate` DISABLE KEYS */;
INSERT INTO `qywx_texttemplate` VALUES ('8a792db34fdf51b3014fdfa391fd002a','素材01','素材01，测试素材文本功能','402880a94742e24e014742e8942b0002',NULL,NULL,NULL,NULL,NULL,NULL),('8a792db34fdf51b3014fdfb196200049','验证回复语','验证回复语','402880a94742e24e014742e8942b0002',NULL,NULL,NULL,NULL,NULL,NULL),('8a792db34fdf51b3014fdfb1fdb3004c','默认回复语','默认回复语','402880a94742e24e014742e8942b0002',NULL,NULL,NULL,NULL,NULL,NULL),('F65B42281D1E46E69FBEAEEC43587F6D','nihao','你好，欢迎你关注JEEWX产品，我是微信企业号触点！！！','402880a94742e24e014742e8942b0002',NULL,NULL,'2016-03-25 15:46:48',NULL,NULL,NULL);
/*!40000 ALTER TABLE `qywx_texttemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_finance`
--

DROP TABLE IF EXISTS `t_finance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_finance` (
  `ID` varchar(32) NOT NULL,
  `APPROFILETYPE` varchar(255) DEFAULT NULL,
  `BUYMONEY` float DEFAULT NULL,
  `BUYPROJECTNO` varchar(255) DEFAULT NULL,
  `BUYPROJECTORG` varchar(255) DEFAULT NULL,
  `BUYUSE` varchar(255) DEFAULT NULL,
  `BUYYEAR` varchar(255) DEFAULT NULL,
  `CATEGORY` varchar(255) DEFAULT NULL,
  `COLLECTORG` varchar(255) DEFAULT NULL,
  `EXPENSEACCOUNT` varchar(255) DEFAULT NULL,
  `HAPPENYEAR` int(11) DEFAULT NULL,
  `MONEYAREA` varchar(255) DEFAULT NULL,
  `MONEYSOURCE` varchar(255) DEFAULT NULL,
  `MONEYTOTAL` float DEFAULT NULL,
  `MONEYUSE` varchar(255) DEFAULT NULL,
  `PAYTIME` datetime DEFAULT NULL,
  `ZBWNO` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_finance`
--

LOCK TABLES `t_finance` WRITE;
/*!40000 ALTER TABLE `t_finance` DISABLE KEYS */;
INSERT INTO `t_finance` VALUES ('402880e6478c6d8201478c72e8ff0008',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('402880e6478c6d8201478c74a6000010',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('402880f259074906015907542ecc0011',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('402881e547bb946e0147bb9834db0013',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('40289481515cf0fe01515d076d6f003e',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4028948151dc770f0151dc7e8b100003',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `t_finance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_finance_files`
--

DROP TABLE IF EXISTS `t_finance_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_finance_files` (
  `id` varchar(32) NOT NULL,
  `financeId` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ij2p74feypwcda4n0n96pyd10` (`financeId`),
  KEY `FK_28m7vvi0cy5r5keke68b6f7rt` (`id`),
  CONSTRAINT `FK_28m7vvi0cy5r5keke68b6f7rt` FOREIGN KEY (`id`) REFERENCES `t_s_attachment` (`ID`),
  CONSTRAINT `FK_ij2p74feypwcda4n0n96pyd10` FOREIGN KEY (`financeId`) REFERENCES `t_finance` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_finance_files`
--

LOCK TABLES `t_finance_files` WRITE;
/*!40000 ALTER TABLE `t_finance_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_finance_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_attachment`
--

DROP TABLE IF EXISTS `t_s_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_attachment` (
  `ID` varchar(32) NOT NULL,
  `attachmentcontent` longblob,
  `attachmenttitle` varchar(100) DEFAULT NULL,
  `businesskey` varchar(32) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `extend` varchar(32) DEFAULT NULL,
  `note` longtext,
  `realpath` varchar(100) DEFAULT NULL,
  `subclassname` longtext,
  `swfpath` longtext,
  `BUSENTITYNAME` varchar(100) DEFAULT NULL,
  `INFOTYPEID` varchar(32) DEFAULT NULL,
  `USERID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_mnq23hlc835n4ufgjl7nkn3bd` (`USERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_attachment`
--

LOCK TABLES `t_s_attachment` WRITE;
/*!40000 ALTER TABLE `t_s_attachment` DISABLE KEYS */;
INSERT INTO `t_s_attachment` VALUES ('402880f2590749060159075431330013',NULL,'4afbfbedab64034f9015f1bca8c379310b551dab',NULL,NULL,'jpg',NULL,'upload/files/20161216191115J7j8Dw1N.jpg',NULL,'upload/files/20161216191115J7j8Dw1N.swf',NULL,NULL,NULL),('402880f25907490601590754343a0014',NULL,'e1fe9925bc315c60addea1b98eb1cb1349547719',NULL,NULL,'jpg',NULL,'upload/files/20161216191116rMyqV3XX.jpg',NULL,'upload/files/20161216191116rMyqV3XX.swf',NULL,NULL,NULL),('402880f2590749060159075436400015',NULL,'ppx01814elfynejrpjjhm47',NULL,NULL,'png',NULL,'upload/files/20161216191116LdpGOmwr.png',NULL,'upload/files/20161216191116LdpGOmwr.swf',NULL,NULL,NULL),('402880f2590749060159075438570016',NULL,'profile_small',NULL,NULL,'jpg',NULL,'upload/files/201612161911174ruvdxws.jpg',NULL,'upload/files/201612161911174ruvdxws.swf',NULL,NULL,NULL),('402881865907db74015908069bf6000c','�\��\�\0JFIF\0\0H\0H\0\0�\�\0C\0\n\n\n		\n\Z%\Z# , #&\')*)-0-(0%()(�\�\0C\n\n\n\n(\Z\Z((((((((((((((((((((((((((((((((((((((((((((((((((��\0\0\�\0�\�\0\0\0\0\0\0\0\0\0\0\0	\n�\�\0�\0\0\0}\0!1AQa\"q2���#B��R\��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz�����������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\������������\�\0\0\0\0\0\0\0\0	\n�\�\0�\0\0w\0!1AQaq\"2�B����	#3R�br\�\n$4\�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz������������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�����������\�\0\0\0?\0���\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(���U$��&\�\�\�\�\�\���ZHcIe�`pL	��\��.�q��\�{��,�Q^\��)�Ľ$��\��]��`�\�?fl�LB\�]����1�%���\�@�\�kxgi�0�U��\�:\r?T�\�Wu�\���?�\�N�:�\�W8�R�7i�+c0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(���u4��T��$�wP	\�\�Ex�\�YB��\���jQ����#\�k\�O�\n@\0\�ݣp�#���~\"��\�\�D\�\�j\�W:�\0��R\�\�c�&�\�q�H�ٻ�?�{XL\�?v���y-:��-\�z���\�kV�\�\�`\�є�\�}\�_Q�\�\�\�G��>f��	rTVf�t�\0\0P@\0\0P@\0\0P@\0\0P@\0\0P@\0\0P@\0��\�6\�֝%�\�>[rz��{\��<1t籵\n�5R�~�\0&�\�R=�\�t\'?μ\��\�3\�Y���&O�\�oϪ�ـc�\�.�Y����F�\0\��JZ\������ǑXU\�&�\�\�szY�^�#c�\���\�.+P��=7\�z\Z�\�*\�ݪ#\�\�\�\�b鲝s%\�#S�\�oR\�\�S���a\�Gq]8lUL4��\�lN�&�G�xW_���\'�\�>Y�\�(\�\�{\Z��2�|�\���^xZ��6��\�\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0��\�\ZE��\�\�ീ\�\�=ML���\�)Q�ir\�Wg��e�ՙe�z������[ʹg��3ڡØʺ�ʼ\�R�\�\�1��\n/c5�\'���b�D�)��u>\�U�㖬y�E�\'�\�\��|\��\0h��5�	B\�Tq\�~\0�����\�ټMc�\�r\�#�\�cw#ӭvP\�F��s�̲j�zZǹ\�\�I\�\0\0Pdu�;Q\�$\�\nNJ*\�i_De\�\�M\Z\'\����oO4\Z\�x\�	\�\�,-g�����z���͝\��\0\�9*\��\��es9Ӝ>%ao���W���&�����u)B�yf��%N\\\�vg��\���\�ln��K�1\�yh����\0�|�e�<?\�)\�\����4U�\0wW\��\�F�S\�6<)�I�k])>I�&A�I\��Ew\�ط���G�\�\�85��\�U�\�qH�ƲF���e#�=\�\�\�%%t|CM;1\�B\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0&�<�\��\0��v�\�@\�\��is�b?Q���\�޸�\�\�\�:�\�r\����J�\�x>��\�\Z\��]\�\�r\�Nz<(�Q\�G��\"�Y\�w�>\�	����-(\�Ϭ\����\'���\��\�W1\�@\�X\��E]9�IIbhƽ)S�\�eh���\�6w�0���znP�}_2L���=�\�;2\�Q�P@Y�z�\�\��;�m|�4�\�\�I�\��|\�}ZjQ�\��<��$�Q\�y\�|\�ϥ��D\��H���r�ET*J�dN�&�%s\�<\�١�;=rO2;V\��\��\0{\�{���˳�uN�\�|\�a���Jq\�\�Eͻ\�*��H�e<���\�N6{3\�Sqw[�\�	�e\�\\�Y>x�\0w\�\�:~U���\�l�{k�\�>�K]\�\�yǤ{\�\�L\��{\�\�6e�o/�\�W��¾\�&\�{Z{�\��z\�\�\�\�vU\�XP@\0\0P@\0\0P@\0\0P\�v�6�\�\�M6�)g�F¨�&�i+��	NJ1Wl�\�\�O\��y�Ӵ&�\�J\�^Q�\�p?�U�\�{�W��\�9{�\������Jձ*�\�\��\n�J\� �a@\0\0\�\�d�һ�3��[g\���{/i6��$�\�$`{�5��բ��&ju�%ճV��3@\r.�\�\�Ҹ\�\�\�B�\�m\�+��*r�)\�!�5͉\�S\�ǖ�7\�\�ja\�\�M�l�\0!$�\Z��;�7�\"�y��\�#֎Q|QG#\�o\nj\Z$�,֬p&��>�v��\�®m\�\�\�Jx�˳9��OL��\0��\�\�\�\�e;�̅RO&3\��\�~U�Y.)֣\�-\��P�\��?\�\�0^�m\�s5��T�\�ч\�\�\�ZguW\�TFS_\�\�\��<f� �S��Kva\�\�-��g��{�\��&�� �j�\�\�g\�\�N3\�\�]��>X(\0��\n\0(\0��\n\0(\0��\n\0��\�\�i�^_ΐ[B�\�\��R���.�9T��\�>d��\�\�^ /�f(:�7����\�b�N�\�\�\�6IUZ�\��8z\�>�(\0��\n\0(K\�r\�A\�2]K�(\�cy�3��Z\�iM9lqf0�<4\�K\�h�Z��\�=��}F^\�o��`W�<e(�����񕞱\��8w\�f�u�4{+k\��9�\0��ֹ\'�\��(��\�)Mk^w�8]S\�\"\��\�f�\��\0\�c_\�p+�X��ݞ\��G\�1�y��4ҳz�$�\0:\�\�K�ڰ�R��5t_\�$�&��]C���B\�~�\���&�6g&\')\�b��=�\0\�\�X�X�\��\�W�wS�L��/��\�\�*��\��<\�\'�_.h\�\�\��{H��˫i\�4r\�\�A�u�+\�U)\�2<�Sp��wG\�\�Z�\�j\�h�\n�)��\�I|G<c\�\�\��k\�\�$\�f��>��Q~g�j\�	�˸�d<.�����T�\�>\�\�җ,\�>sҿ9����\�\�&t�\�1�\�O\��_\�Mzy<���\�g1��\�_p|`P@\0\0P@\0\0P@\02y���gT��3�I�݆���>d��\�\�|W�[\'d\�m\��k\�\�a�\0-�\�z׍�\��G\��\��,�a#���}�\\\'\�\0\0P@\0\0P\�P@\0B\�\�ѵ�-Fي\�m*\�1\�\����֔f\�4\�Ǐ\�\���9uG\�\�~\�d\�?�i\���+\�f��\�?%^\�>rthݑ����\Z�\�\\f\�?B�%(&��\0\����}vT�q\�\"\r�\�9\�\�+\�2\nO�U>��\Z}w=#Z�[i��\�\��)��\�K�����\�c\�R+\��\�}\���Τ\�\�?C��H\�~Fd�?�{�Mzy2�)^s+aY\�5�\�\0\0P@\0\0P@\0\0\Z\0��^873\�\�._\�F\�dS�\��y�~;\Z�1��~\�\'\�p\�S\��\�Uz�\�u\�l\0P@\0\�y�\�M&�&S�u��z\�IԮ��m:�Pz�s�+EFodr\�0\�C\��\�_��\��\��&������z�\�e����\0��\�+\\\����~Ӧ\�B]�\�?�K�5�5�a��\�Q}\��\�<�w�i�Ψ\�2\�,)\0P@>\�%��,4\�A��\�o\�\�9c�1[\�麕<\�\���iT{��>��BF��\n\0���?(n��έ\�}#S�{�Rh�s�O�9�#~�\�WʨV�<��}ʽrE\�oi�}��h��0�0�E̞\�޻�Q���Yu*ʬ��\�\��\0\Z��xWTX.`n�\�5�97���clJ���\����>�\��ٙu���>X!\��L�\Z���\�J�c\��궄i��_X|�P@\0\0P@\0\0P@?ŏ�\n�t�����\�c�\�����\"��5��/\��r|�㫨��jϗ�1fb\�NI\'$�S^wwg\�0��Tc��A@\n��PK�\0\�\'\�SI�3�`��\�A�\�\�J�]ƚ]�s�\�0�d�x�\�X\�Yh��\��6�\�K\��\�\Z�\�\r\�*���ԥLϱ?\�\�\�MwCN;\�|\�\'����\�^Go�\�\ZF��t�6\�\�� �x\�t\��\��*b*\�w����x�1P�\0\�\�<=�j�WQ\�,\�A\�$*O\�֢T\�-ѵ<MZN�_3����\n�Y�g\�&=2?�\��?\\�04嶇��\�L]*{\�\���]�\�/�\�\�@\�]\�\��\0�w_\��:��=wG\�\�3\�63ݿ,�3��S\�\n\0����\�ͬL�\�\�D��<� \�,��\��W���6���M�\�W�%t�>������Ki<S\�z<n~b�t\�\��9BPv��52B�=)5p8�C\�֓uv\�C%Ų�\�G�+ȭ�Щ>m�V�q��]ΗE\�l�k%���d`\�\�1�\'��G���G�Z�\�˞��/\�\�A@\0\0P@\0\0P@�D�\'�V	\Z)fbp\0�Cv\ZM�#俈^%�\�^\'��\��*�\�\��\�\�z��x�\�\�~G\�.`�\�?�\�\�j��\\(��w��?jf\�\"\�hG�p\�\�=\�s\�5\�C*\�M�/2\�h\�!yk.��3�?�o\nƲA\�u|\�s\0_�:(�~f��XxRZn~{�\�k\�\�.\�`+s\�\n\0��j�n���-B\�\�O{��?��\0ɏ\�~��\'��Bޟn��hn\��\��?2\�\���\0��\�\�\r\0Y��\n\0l��##��0�Vz\Z��G��T�Z�E6�\�\n�\�\�,�g�F?��^�\�\�i��>�%\�\�	*�u\��\0�\�\�\�SOT��jW\�U��L��\�Q�P�_\�\�ZB�\�Yˈ�P\�+U�g��\��lv~,\nQ�Q}\Z\�o�tQ\�\�~U\�P\�s>Z�\�f|4\�S�\�{|2�\�$�:�n+)\� � פ|�M;1�(\0��\n\0(\0��\n\0(\0��\n\0��^ }+\�ɧ[�Y�61��\�\���Mq\�j�:v]O��K�\�\�\��Ƽ3�����\���n��6�\�\n��\�\"$\�_rz�ч�\�J\�+6\�〥ͼ�\���\��-���C�\�m\�;�\�\�{�\�^\� ���*�\�b*:�\�4�\�L_x�J�6��\�-��\\�\�7dE\�\�}\0|��\�\�|G4����i}\0����z��\��_\�\�ܤ���K��k�y�夕��>\�\�\�2-��\��P�>�\�M�Y�\�\�\�S�%��\�H�f�u�A��C�+o�ִ̀Ґ\�c\�7��Ͻ���7�\�\�$ѭ�]\Z\�.��rH��#�#��TI�@\0f�>h�\�\�D�����\�0�\Z�\�@\�9\�Q\�s��׍��\�.u�?A\�\�\�):�\��\�>�(\0�q���S$�^HXD�kBǢ\�\�O�\�#\�k\��\�\�\\��>&˕�M5�\�\����O�\n\0(\0��\n\0(\0��\n\0(\0��>v��\�\�\�1��\�\�of=ى?\�W��\�\�H�\��j3�vyey\�\�j-q6��>��O\��߄\�\�D�\���︎�8�\�\�0ԕ8$~W�\�^3)�Z#���\�!���\�\�k��+xQ��F8�d�\�\0���.��\�\��e�wt\�\�&;rxH�\0�G�۩?Aڤ��\Z��\0>(\�T�y$s�DR\�\�\�ɠ\\\�\�k3Cu�L�c�\n0�4\0{\'\�\�㉼9\�h�K�X\�ZÈ�\�w�}~\��\��P�\��eQ!@\0y\�Ǜ���7\�O�}2v�ѫ�jL��z����]t>h��4(\0��\�M\�\�|C\�\�7\�b?FR\ru`ݪ�\�\�)\�g~�\��\����\n\0(\0��\n\0(\0��\n\0(\�Ϗ�4~=É,\�#�,+\�\�\�?@\�Y\'��\�\�6�\�\ro	Y��\�\"\�\�Rk����\�	�m�\\\�<�ү�\�T�\�}�8��?\'�<��\�_I�_-�V]R\�-:�|��aq�\�c[��ԚE\���\���S�è\�Ţ\�\�\�\�\�^i�a#h?\�}���t\Z�\�ɬ\�\�<�.�g2��3\�`-\�,3�\�;1\�\�{�xC\�z폌DZV�a���#�>bn<)9S�\�pi z����[\�\\\��Zŵ��f\�\�\�[�ʈF{\�\�\�\��\�#�i��\�=��gs	+,3\�\"�ث?�\0~�!ʃ\�3T@�\0P��v�[o��q���f�%�6\��)�\\d�I�\�\�u1зMO�k�?N\n\0(��1b\�\�4\�R\�}\�@�@�H�\�oU>\�\��%eO\�\�C\�Q^\���P@\0\0P@\0\0P@\0⿴n�\���F��lֲ�@\�2���Ƽ\�\�}o\n\�T*ʋ\�\�\�vk�F�t\�h�����\�7\0�m��-D\�?5�\�\�*Av>\�Ҿ���(\�\�\�\Z	¾�A�eo�Dq��&TO	�+�Zk��;a�*��\\^6\�>\�g\n}A*8���>����>;��\�O���l\�i���w`\�>�G\�K)\'@7��\�\�\ZhzT@�uy\Z6; m\�\��*�\n\0(珏�$MK^�G�}\�i�2�\�\�ç�~�ב�U�P]�\�|�&K}�\�U\�\\\0P��\�^k]*\�\\�B$�>T�\�O\'�o���.X�>�\�\�O�U��zG�=~�Ϙ\n\0(\0��\n\0(\0��\n\0(\0��2�S�\���@�\�\�6�\�\�X}\rEH)\�ś\�q\�U�Xn��5�6\�H\�\�t�����w(\���b9Z�\�\�98���*�J���Y\�\�CWVgԟ	<T�%�+,�\�6j!�S\�\�|��a��_A���\��O\�s��X���Gq]�q�$\�3�{�\�v\�\r\�Qqi��\0-���+�\0�Ə��}J�\��妣dZ\�P��H�הu<�\���>\��Oǯ\�lGX�MQ\n�]d&\�\�$\��\��S�6\�_�\�\�,e�ƻ\ZޠA\�j��r�>�>\�\\,|�\�z�\0\���\�%��}\�@¨\�Ge\0\0�\"��\0(\��\0\�O\���\�\'��hJ<ј�\�qϖ~���.�\�\'���\��2B�<�⯏��Y\�:I�N��N�?\�\���\0J\�\�\�\�n{9>S<uK\�H-\�\�|\�#��<��<�K31\�by$�ׄ\�\�\�\�\�)Ӎ8�EY!��\n\0\�	\�{�x�C-�\�\�\�����\'���WF\Z��+t<�\�1���\�{YXZAae��b+xG\Z��`\n�\�IY�Nnrr�\�L���\n\0(\0��\n\0(\0��\n\0(\0�:��\��M��ӕSY�\\.x��	��?�J\�\�a�eu�\�\�ٴ�9e��^g͗Kmq$�SF\�7e#�\"�IE\�ٟ�ѫ\n\�S��f��|C}\�f-GMp$_�\�o�*wV��G�ҍiR�\�ɘ\�����9\�џO�\'\�Z_�l\�l�@<\�W?���\0Q\�8�v�h\�W���;/���%U�\�Η�jq=�{�).�uq\�OD�R�\�\��\��\0};�\��\�\Zg\�7V�\�\\\�mu�\\D\�d�U(\�}<�EP1(�b�y��\�Y�;R4R\�\�\�\�4�/�\�7w�j�;�\�٩�\�\�%����\��=�л	�\�h�HbH\�UH\�UQ�\0\�\0�HI\"F�\��QFK����<�\�\�\�[�\�\�\�W��]����\0w�\���\�#i\rY��_TĵR��\�Y\�\�w3\�]Ksw4�\\JŤ�C�c\�My������B �\�VH��\�(W\�Z�\�=V;\r*$\�\�1\�#_\�1\�?�j֕U��p\��\nX\Znu�\�}K\�_\nY�GE[+O\�L\�|󑆕�}�\�j��ҍ(��,~:�6��S\�jq\0\0P@\0\0P@\0\0P@\0\0P\r�\�ޟ\�\�\�\�dZjʸK�^�\��\�?J毆�e\�z\�fo[-5�c\�OxsT�\��\�u{V��ܐs�\�[����\Z�	\�v�?B�\�t1��7�n�u�\�ͅ\�w63\�os\�Ke�k8NPw�:�\�\�\�!\�U]�\�O�Wvʐx�\�\�h8�M�O�/C�b�*Y�J��wk͆�ɞ����\0\�:\�Qi�[���YN|�\�l~�\�\n�\�>k�b�\���b����*u\�*\�����\r�(��p߭k�ê<\�Q��|%<���f\�\���\�K�֋\�i߳W�m\�5\���y�\�3$j\����s\��)\�OxEI\�4{K91��.\�O\�F\�~�r\�\�GRuZ\�?�\�\�#&�Ua\r\�\�G^��87�<�\�?4�ux�;)\�\�$��Q�\0�G�\�S�:�\��15u��W\�y/��o����\�W�mIȶ�\�}G�~$ןWR��W�\�0\�;J*�\�\�f��\\(\0<��	��;��4\�<L\�\�N��釓q*�\�?\�^�\0S\�ֻh`�SYh��̸��8R���Dx[\�zg�4\�g�ۈ\��\�yyՏs��W�N�i�D�,V.�.~ҫ�6kC�(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(���Y\�ok�\�Esn�\0z9T04�%f]:��.h;3ȼY�R)\�᛿%���\�_��Q�\���\�Xh}F�*Ӵq�w\�y.�\�mo\�\�WV\�n A�\0-v\��dW�SR�\���.m�\�/rz�1xa؏ΰ=j\�Q��9�����\0�S2#Z*��\�橂\�\��\��\�׋ƾ\'�p����y\��u�\�U�c�\�˴9�o\�R\�\Z��\��T<U_\��`W��F]泩\�\�횕\�\��\\;\�5��Q\�Κy~\Z�\�M/�@\0@\0\�6\�\�Tb��AH�hk+K�\�66�\\\�z$(\\�B�4\�-��lU\Z*�$�\�xs\���R�|�\�v穜\�\�?�\�O9k-\��jZR\\\��=s\�_�?\���w�\��Ț\���t���B��=m��\�\��\�N˲;�1]\'�\0P@\0\0P@\0\0P@\0\0P@\0\0P@\0\0\�Et*\�2�# \�	\�Tr�\�ÿ\�\�\�I�9O���\�M�\0�\�V3\�Ӟ\��(f��?�7��v��;K���귶��*���\Z\�_M\�\�^�\�a�\�3\�\�f����Y�q\�̅��X����\�-_j�\�So�^ \����	\��\�S��>\�ˋ(u��#\��\��Z�\0���\0\�gK��Q\�]����>ѭZ \�\��\��ȪYwyϋW٧��V?t\� \�k�z��X\�\�\�9|\�\�\�X�|H\�4��~��:oڜԍ\'\�\���ᄥ�\�V\��s��\�X\�ZXE\�X\�Am�a� �+�E-�6u\'Q\�N\�1L���\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(\0��\n\0(�\�','4afbfbedab64034f9015f1bca8c379310b551dab',NULL,'2016-12-16 22:26:07','jpg',NULL,'upload/files/20161216222607YvbDnX3S.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20161216222607YvbDnX3S.swf',NULL,NULL,NULL),('4028948151dc770f0151dc7e8c5a0005',NULL,'u=2838363326,1449558984&fm=21&gp=0',NULL,NULL,'jpg',NULL,'upload/files/20151226121419XByRRIAP.jpg',NULL,'upload/files/20151226121419XByRRIAP.swf',NULL,NULL,NULL),('4028948151dc770f0151dc7e8d050006',NULL,'u=1363640605,4248245426&fm=21&gp=0',NULL,NULL,'jpg',NULL,'upload/files/20151226121419g57TQ4dt.jpg',NULL,'upload/files/20151226121419g57TQ4dt.swf',NULL,NULL,NULL),('4028948151dc770f0151dc7e8d7e0007',NULL,'u=3142339483,1901057718&fm=21&gp=0',NULL,NULL,'jpg',NULL,'upload/files/20151226121420U1FbymIQ.jpg',NULL,'upload/files/20151226121420U1FbymIQ.swf',NULL,NULL,NULL),('4028948151dc770f0151dc7e8e020008',NULL,'u=175527439,2098210574&fm=21&gp=0',NULL,NULL,'jpg',NULL,'upload/files/20151226121420DtR5hB67.jpg',NULL,'upload/files/20151226121420DtR5hB67.swf',NULL,NULL,NULL),('4028948151dc770f0151dc7e8e8b0009',NULL,'u=4125376057,1493775393&fm=21&gp=0',NULL,NULL,'jpg',NULL,'upload/files/20151226121420FiCmHjrJ.jpg',NULL,'upload/files/20151226121420FiCmHjrJ.swf',NULL,NULL,NULL),('ff8081815dd6d4bf015dd6daed900007','%PDF-1.6\r%\�\�\�\�\r\n103 0 obj\r<</Linearized 1/L 196532/O 105/E 53863/N 9/T 196040/H [ 519 376]>>\rendobj\r              \r\n129 0 obj\r<</DecodeParms<</Columns 4/Predictor 12>>/Filter/FlateDecode/ID[<0565BD43540AE847BB0B61F5A4179D99><F03BA8BF399B8044B98F9592C86CF3C0>]/Index[103 49]/Info 102 0 R/Length 113/Prev 196041/Root 104 0 R/Size 152/Type/XRef/W[1 2 1]>>stream\r\nh\�bbd``b`\��@�i?�\�\�b-I��@� �D8�_q$+	\"v�;�\�l !�\nH��Xr@B\�-�`)\�\�A�2 �$����\\��Hk\�?\�\�7\0\0�m\r\nendstream\rendobj\rstartxref\r\n0\r\n%%EOF\r\n    \r\n151 0 obj\r<</Filter/FlateDecode/I 340/Length 293/S 254>>stream\r\nh\�b```\"V�� \0cc`a\�\�x�P�\�`\�\�׌Y��\�#ͅ\�&�e{\�\�t�P\0U-єb-��\�Q\\�M͙#pv\�\�s�b���kg<�\��\�>ʑ~;�:�%K\\�\�L�ے+d,�H�	$��\�\�\�<�p�\�c�+�\� 1�\'��h���DG\�\Z掎 %\\\�\�v�iFaw(C$�@��Q*��0}\0T���4�\�~ Vy�������\�a;�	S\�\�\�%\�	99ip;\�i���e\�\�]��$���\�<(8\�\�Ez�\�5�\�:���\�u��3e`��2�\0�af\r\nendstream\rendobj\r104 0 obj\r<</Metadata 51 0 R/Pages 101 0 R/Type/Catalog>>\rendobj\r105 0 obj\r<</ArtBox[0.0 0.0 585.0 783.0]/BleedBox[0.0 0.0 585.0 783.0]/Contents[109 0 R 112 0 R 113 0 R 114 0 R 115 0 R 116 0 R 117 0 R 118 0 R]/CropBox[0.0 0.0 585.0 783.0]/MediaBox[0.0 0.0 585.0 783.0]/Parent 101 0 R/Resources<</ExtGState<</GS0 130 0 R/GS1 131 0 R>>/Font<</T1_0 134 0 R/T1_1 137 0 R/T1_2 140 0 R/T1_3 142 0 R/T1_4 145 0 R/T1_5 148 0 R/T1_6 150 0 R>>/ProcSet[/PDF/Text]>>/Rotate 0/TrimBox[0.0 0.0 585.0 783.0]/Type/Page>>\rendobj\r106 0 obj\r<</Filter/FlateDecode/First 181/Length 2393/N 21/Type/ObjStm>>stream\r\nh\�Ԛ\�r\�6���\��ˤ���`U*U��\�I�\�r\�Ll_Pݐ\�1{1\�v\�<��\�]��[���� �\��B���GR�LdR\�,7�T&s�ԙr�\�B\�#m�ˤ�|\�gJ+�DȴP\\6G\"G��v�23F\�H�\�\�0�Fg\�4`Lf�C)c3��D\�e^JTo<1!�>ϳ`�[��\�|���t��,�(�&\�\�3z>�EEN2���/���D\�\�2Ig\'\�\�ٳ��\0\�a�ןǑ]�?��E�W�b�q2�ᇽ�ww�>�K��M|4\��\��ޔÓaSί���\�^lު�\�p\�\�EE\��i\�Sˮ�M/[�=C��X^^���\\�Yl�Y���qы�{U1���Q�\��GUU\�4�5\�\�\�7h��4.Г*^�]�\�\�h\�X�x\�q��{�����\�\�8\�:\�Q���h�\�\�X�����kD\�U#]�&5:�)RS^S?�L\�3\rK�F\�h�\�A٥\�\�	��\�$6m�ˢ�:���\�c���\�S��~�_\�^\�KzEg��~�\�\�\r�A��w�\n:��	�\�%]QI��Tр�4�1}��\ZjiB�\�/��\��7�c8��W�mY�1`UU���醦�\�\���]t�\�Ϗ?�Tm9�>Kc��\�+\�\�qU\\6�V�x4lOOG\�o\�c^�L*��U�O�����\r\�Ev:\Z}��\�.��٥x\�J9ϋA�\�??z�\�\�_\��>[�[gm\�\�\�\�#\�7\�7b���mQ��~ә��6~ϼ\�26\�~\�\�\��\��ӲB\�?a6\�\�\�\��L<I},\�\�\�1\���Zob\r\��R\�L���\�y\�}\��Hz=�m�\�3)B2�w��\�^5o�ә�t��\�d������\�60�A�%.��ʴ�]L\�\0B	.ŀB\�=\�DpH+����w\��D��\�Y�7�9\�\�b�\�`gs�\�\"\�}��n �NfAH䃁��59\�ds�J:\�\�6%]H%\�\�\�JX�.\�70\�\nP��Zwc��D\�W |�!\�[\�S9\�sy�\r�kAi�V��)6cZ\�\�͟v��¬�h�S�\�)�u�����C\�\�\�\�ɰ\�D\�\'�\�\��RŔ�\�\�\�<\�My9\\\�o1@�)��\���\�\����X�\�ve\�t^��M}woz5]<���*\�\�O\�a\"�. �M@\�t\�[�s,�ٍ@��+@��N W�=@\�Of��3���\�N\"�\�%\"\�[\�Bd��Ȋ�\�3L �染�R�ʂ\�<\rm\�!��\�\�\��5�����9�w��F,��s�\�&\�s��f\�r�\\7\�$\�\n����\'`�em\�%x\�\�\']\�\�U�W\�O��I\�@�d�ũ��ϱJ8����Ӡ���M��\�K�Ԛ.\�~*Ns+\�3��D����\��{η\�v�cfю\�B�沠mW\'�7�\�\�r��~�\�4}�\�^��>�݁D\��I�]\"�\�rA\�e�a��\�bv�G@�ݽU�\�P�6^X�Q�f5Ke\���\0	\�\"ƮP��^\�Av�\nQ�7B�3�E�n]����\�-/a4�a�\�\r�\�k5n;F�\�\"l1�6\�|\�`\'\�U7ѵ\�B�\�cL�5t2\�\�&�r\�Χd��d�\�]�\�\�\� L=\��Ֆ\�\��b\�+*��؁��\�\�\'yc�\�F9��A�98�\0��\�\r�\\3�dF-DN�P\�:\�>r��%�\'���\�#�˻:\0o/X\����z(�xd6\0 �\���+C�\�5��UZ\�\�\��\�x<�$�8�<JT\�߻{˻�\�\�\�\�p�\�^X�Sܽ�\\ŝ݅�%�m�\�<a\��iC�!/M�%\�I+w \�\�y�\�6܉[\�N,�\�81\�\�nԹ#Q\�\�\�ẇa\�~\�	�ܡ;\�0=h<�1��kz���j�L\�\n�M5��]�}�\�\�.�\�4G`�\n��{C���&\�>�7�\�Q\�\�\�)�\�v�/y\��b�\�+�o�)�I��I\�\�D��S\�o�\�)\�MWʝ��\��pVo\�lwҕ�\�e�^ߟ���5K)�P�H{X\�ĴU�g�G\�Ld\�`��k\\���w��\Z3�o\'8wS�\�]^��\�9�\�]k|�J\� �&�i�>Ȟ\�\��\�m\�]9�\�b���\�_\�\����(�:){��햁;�\0;\�\�2\�\�i�\�\�\�{k����i��eǔ�\�V�h��ҶC\�̽/\�\��T&��ԝ�`��n]\�ʛ\��k\�\�z{\���52�{N4�\�!\�}\�g�9\�<V��7s�M:�\��;����T�w]\�0�$���|\��M�;9\��Gٝ�:�!/���|���DI\r�\�a�]�g\�\��\nL<_��N��º{J>�\�L^�gax�`��\�2\�(u�U\nSu��Q\�حl\��<\�\�`:\nm��`\�:\�\�8\�1\�D���Z̬��Z�\�:��H\�\�\��\����1y�\�SA�2\�\�rǰ���-�O�݊\�\�|�?&��u�[���	�|}{-vl�\�6\�̍m�\�\�BNu�\�ͭJNavǄ\�a5R��4\�3d͜S	����rMV��;�iN\�\�;\�.�\�\n�V\�&Q�$�J�\�%i�	-E\�;h:y\�d\�̹�H�0����3�!\���� \����\��\�\�\�\�S��3\�\���\0[$\�\r\nendstream\rendobj\r107 0 obj\r<</Filter/FlateDecode/Length 605>>stream\r\nH�\\\�\�n\�@ཟb�\�\"�\�\�\�K�Fb\����=PK\�X\�,x�\��A�U$\�3�\��8��nv\�]\�M&�1^�}�̱\�\�1\\/��	\�N]�\�i�fz�\�͹�4^��_�p\��\�KRU&�O^��n�\�\�\�����؆�\�O\�\��f�l\��m��s\�\'��\�ʴ\�o���\�\�`\����]\�w\��%^�\�\�}��\�91ͥ\rסn\�X���TY|�L�_�$�\�\�ˌ��͟zL�|7g\�:[\��e\�\"����s]\�u�\�\�{\�l��C�\�Y�����d�\�a\��+h���i���鈇��4XlΜ#\�2m6K��\�\�fa��Yج2+2�NK��Ӯ�\�\�o\�o\�4[�-\�fK��\�\�)p::��N�\�\�\�\�tt\n�N\�\0�N��S\�tt:8�NG��\�سCώf�\�=�9\�\��a�\�٣gO��\�\�\�a�4{�=\�\n��\�\�\�i�0{�fO��\�Ӭ0{�=̞N�,:zYt(�<�\�P\n=�,:z\�\�\�#�ȢCa��oCʢCYt�\�Pѡү�+�\n�ү�+�\n�.�T�~�_\�\�E�J�¯�>_q����2�s��e����e\�\�*3>W)̰�\�ۖ�x��yL��8\�\�kn\�G\�<6\�م�\��\�c���ī�N�	0\0i^B�\r\nendstream\rendobj\r108 0 obj\r<</Filter/FlateDecode/Length 615>>stream\r\nH�\\\�\�j\�0ཟB\�vQ���{k�6�B�\�d\�R[\�&�q\�E\�~t|Bk&��[\�\�SW�f�\��\�\��\�\�\�\���\�\��>6ѽƷ�\�\�ʵ]3\�F�\�\�t�<M\�_/S<\��\�9[�\\�3ݼL\�\�\�=�\�\�x�\�\�\�6�]�\�\�~o��.߿\�\�x��\�\n�^�6\�B_÷\�)�|���k\��n�>�9�O��\�U�$�9��2�8������Y�\�K���ط�ݯN{=6c�*�\�\�*�u\�_R.\n\��\�`��9�Ӹ*\�q��\\2�\�3֨�Y�s@6fC~d~D��\����������7\�0U[\�-2�\�2�钭<�NO��\�\�\�\���\�#\�\�a�4{��2+2�~O��\�\�\�\���{�=�~O��\�\�\�\�:N�S\�:N�S\�:N�S\�:N�S\�:N�S\�:N�S\��<�\�f�Yس�g������\�\0s�9�h0�\r\�@��h0�́\�\0��E?ʽ{)�R\�\�K��.�Q��\�ȋ~tяr��=\�E?\�~�\�e?�~���~tя�C?F��o��F��o���\�\�]��\�o���\�o�\��\�ip>b����f]͹\�\�\�3\��Z��;\�\�ۖ�t�s;IpԤ\�}�c\��8�#l>6\��V\�Ǐ�u8.\�\�7�\'�\0d�B}\r\nendstream\rendobj\r109 0 obj\r<</Filter/FlateDecode/Length 489>>stream\r\nH��T]k\�0}ׯ���C\�\�ˆp��]W\�[�J)��\�`k\�\�:����I�c)\�8\�alY\�\�{Ϲ\�sG8�K�W29]s���L��;\�\�\�/[\�L��\�*Q1i�L[\r\�\��\�}!����o\�\�\�>��t�<OW\�Պs#���\�f0_T\�9�AO\�-/rY�m�9Jb\�\�\�@�\�\�\��*CE��[w\��r�\0kW#�ٷU�P%�ѿ�s*A_�a\"��\02�\�悁��7Dz-�f9�^�.\�ÅG\�hT\�6j\�<��d�\��~\"\�}�\�>\�h\�\��\�r<\�\�\r}��\�Q�U{H\�\�\�U\��f<��1�:��Y�\�kUĹD޳%�rZխ�\�L��0�[Y\0^�-|\�\�\�\�\�\�\'�ZyU\�\�t|�h\�Y|\�9P�wj ?�N�/sDɊ\\*\�>�\�\��D؂)�\�#Y��d\�v0I;�qH��=���ޙj\�G��E�Xf�m\�Ebָ\�\��&�o�a\�8\�,<����\�m\"�{M�\�kA�I�\�<�\�\"\�\�,\�\�]�\�\�>�\'�\0�c[�\r\nendstream\rendobj\r110 0 obj\r<</Filter/FlateDecode/Length 681>>stream\r\nH�\\\�\�n\�0\�}�\�\�vQA�_\�H�\\*����\�\�\�t���\�\�\�\'�3)�X��ϖ�3YnV�\�p	�\�é٦K\��vH\�\��Ф�\�]QV�=4�[o�m����\��\�\�����n*f�0���/\�5\�=��\�t_L�\rm\Z\�[���\�އ\���\��c\�.a\Z\��Ц}�\�ˮ��;�0�=l\���p�>\�1�o�\\���_Ӝ\�t\�wM\Zv\�[*f\�|\�\�\�9_�\"u\�\�\�\�\�^�ͯ\�P\�\�e~��\�j��*\�i�zD^#O\��]���\�_\�~5��ɹd.��Y��Y��ِ�ّ��ͪf\���\'\�\'\��y\�<\ZV\�+dzs�3��)fB��)t\n�R1c\�B��,4\�B��,4\��#2��\�/���\�/���\�/�\��Ҭ0+\�\n�Ҭ0+\�\n�Ҭ0+\�\n�Ҭ0+\�\n�Ҭ0+\�\n�Ҭ0+\�\n�Ҭ0+\�\n�r\�{��+�F��o��F��o��F��o��F��o��F��o��F��o��F��lt\Z�N�\�\�9lN�\�\�9lN�\�\�~;ȴ9lN�\�洍\�\�is؜6�͹�\�r:N��?\�\�\�̑{�����?\�\��G�#����?\�\��G�#����?\�\��G�#̏��⹮\�1�����1O-\�Xo�\�[;3\�ud�y��.�\�%��Ae�U0�����\�\nkYӿ\�w\�\�\�5��k\�\�_�V\�>\nq�>��u,�(��.}�5��>\�Q��?\0�Rl\�\r\nendstream\rendobj\r111 0 obj\r<</Filter/FlateDecode/Length 561>>stream\r\nH�\\\�݊�@\�{��/g.�VW� �L��\\\��\�0\�\�\n\�\\\����\'\�\�\n��Ѷ>J\�t{\��nv\��ih�av\�o�p>�&�S�t}�\�]\�5�\�h�m����q��~�\��П���\\�#��\�\�\�=m\�\����\�Ԇ�\�/\�\�\���\�\�\�\�8�	\�\�\�.s\�k\�9\�\�K=~����˴�C\�w��%\��w\�\��\\���i�6\�ƺ	S\�_BReq[�\�=n\�$�\�\�M8\�tn~\�SR�\�\�\�Y�\Z�r�Ty�\�!\�W\�W\�y�f˼E\�1\��\�{d\�7IU����s\��`.��Y�=�GVfE6fC��������\�0o�ߘߐ\�)\�z�G\�z�G\�z�G\�z�G\�za���J\�+a��\�6\��{�\�\�\�\��tz8=�NO��\�\�\�\��tz8=�NO��\�\�\�\�T\�R\�R\�R\�R\�R\�R\�R\�R\�R\�R}�CȬ����������c\�g�xF\�g�xF\�^)z�앢W\�^)z����2�\�\�+�\�\�7�\r~�\�\�7�\r~�\�\�7�\r~�\�\�7�\r~�\�\�7�\r���l��˂�R�\�/�u��O�8�\�4~M\�\�7�������Oβ\�\�>|~�\�atq�\�\0\0��\�\r\nendstream\rendobj\r112 0 obj\r<</Filter/FlateDecode/Length 764>>stream\r\nH�tT\�n�0}\�W\�\�0C \�qҪI��4\�MZ�\��7�-\�Ȇ�\�\�\�ڐ4m7E	|�\�=\�\\\�	K8T5�$��K��,)y	Y�f묠\�\�\�\�r���WF#Z��04\�\�)�\�E�m�=T\�1OX�B\�_ePI*5;��_U��ÝEgF[���v� \� ���h&\"�49\�}!�nlշ�K�%�\�9�m�=�}j�Ǡ�<�S�\�h\�\r-a\�hӚ�vƆ\�֌�ӣ;vG7`����>ҳ�\�(Z��V\Z\rn�~F�`)\����i{�\�\�)K����(Y�)�\�KU��O\�\�V9�5م\'@,\�nD\�j),^��Q~Ƕ5wr��<\�/\�X֣L7I\')_`\���o*�{w\�HIjD���Ll\�iq��{{����\�=�v���D��	[�Tذ<T�k\��w͒u>Qw\r1��/�A��9�KX��Ic��4X�r>YwCKI\�)M�\�\�\�\�ŵу �%p|���2��\n�Ƅl\�@\�V^�$ \�ViL��\'�\Z[𙴣\�iԝ�\�>ɊwDx�z�\��-u\�3\�\���m��h�\�04�^\���\r\��E�N�\���m@�f\'*\�\����\Z:��\����y\�[s\Zo\�4�(I�&���:\�4\���9�\�\�\�@=�j��|\�P\�Q��\�pJ\���3��A�S圾���M�fp�\�\�⥬�{<?����\��D�\�t�49߶�\�\�\���U?��1np\�\\\�T�O\�Ј\�:��zV����DKz\���\�D�,?\Z\�#�zw��g��3q\nH�\�P��K\��`\0\�ʬb\r\nendstream\rendobj\r113 0 obj\r<</Filter/FlateDecode/Length 774>>stream\r\nH�lT]O\�0}ϯ��\�D��6���6	i\��\0\�\�\�.�p\�`;-\�\�\�\�m�*�\�\�\�s\�=\�巄dy1�r\�$m�_\�\ZL\�\r�\�FZ���6\�W��0*�!f�C`L��R(ϓ\�ʇNY\�\�kz��P�d2\�\�+\�80�r�����[�\��~]9`V\�\�@\�\Zv\'ŀ� �Z1pf\�7s���˰�Űڪw�3=�NB\0:�p\\hP@$)\�ke%{\��\\J\��i\�\�\�yfA\�bP�k�b��äx�qk��V+i�GT@�\�]�|�WF$�Vo\�xim\�� ��v��\�v�\�d\�\�&-G9I�`\�\�Ե�\\a�֚�\�:p��9�)C\�)Y�O~��\�\�\�4���#:C9\�:B��\��f\�!�\��̳(XH�\��X*��\��\�؁���$D�J�M\'^��R+����\��/�e\��L��a\�Y!����D\�#}�e=\"Y�ԃ�W1y��\�lL��۾b\�\n���!��\����	Yy\�e68J$�\�[�\��\r<\�}�+�%�V��;v��8�ke}\��\�?\���v1�<\�\�ǼI\�S(P�5Ql�N\�\\u�\0�&�Q��8c��P/�`c\�Diև�2��\�i%=T\�\��\�0d��\���<�·�1�9ם��?�\�\�%�>;\�umk��^%F���F\�xÍvp�\�\�\�4������nC�b/�r�\�\'d\�fŮ\����\�%\�E�PW�<\0Š�sZ��es43���Y\'�\�W�\\\'?��29,\�_�h�\\%\�\��b\�4��\��[\���\�\�R>�\�ˋ\�KB�\�\�\�\�ο@R������\��\�	�`\0\Z\Z��\r\nendstream\rendobj\r114 0 obj\r<</Filter/FlateDecode/Length 647>>stream\r\nH�tTmoA���b>&7\�ξ7���\�h4F9��1�\�`k�\��{g��\�f�\�y\�}��8�~���/@|)V��nU/\�\'��\�_�\�BB�\0FB�� e�j�jɔjVÇ���_W��\�̳��\�Bu\�z�\�w�R\�b�\�ro\�\�\�\����\�k8��\\�F\�\�ӤY\�7��\�x,����\�\�9Z=Ż^طucm3_]\�d�U�\�\�\�l��A\�\�U�\�k�NK�\�R�ۥ\�ڰ\\��x/4<���IJu�`\��\�\���[J���\�@��e��F�����J+�M�vu\�O,��/*��h��\�j\��/�FI��gѤԸ�\�yׅ�!\�-\�\�b�jG:Q�2vH֨8�$�\�\Zܷ��\rܳ�\��a\�Ix�ӗp#�/\'\n�\�{Eq\\$�<���W�R�>��V܋;L).v9�\�hN�¡��\�P;\�\�-j\�w�\�\�VYBcD�\�L\\���\�w\�O�z�x1H���Z�\"(	��;�Q��2�<%��V\�\09S\�\�E�!f\�\�*��2�d\�\�G��)\�a�\�~\Z�2���{n\\�ȣ\�qWS�\r�\�a\�\�\\\0-�폶w.϶Bc�O��eHm���>-�h=��2�)l�9�\�;�b\�\�sp\�\�N\�v�\�F\�/$׭Y�D����\�ۮ��\���Y����w���-Iv,�c�:�PX�	0\0��3r\r\nendstream\rendobj\r115 0 obj\r<</Filter/FlateDecode/Length 466>>stream\r\nH�\�T=o1\��+��+n��{J���Ѱ\������\�x��\�&i����\��y��|x�x<��O\�7�\�c:\�\��\�\�|�\�|_���\��{uu��\r>y�\�\�\�>��\���$�\�ͻ���\�Ê3k�Ev�!�&�`��e\�N�Ę��h�8?\'Uր�#,�գ����֍0�Ek#��>\��Ӧ\�q\�\"���k\r9DÉp��eո\�*��\�Rw�*�|\n\re=\�2&O�\�<˲\'5\�\�<Լ���}�Ģ��ڋ��}2�����-�&��\'�vq�If\�*.G\�N�H�4�1�\�H�\�lfj\'\�C�֜Zw�\Z�g\�4\�ƣK��\'՚\��۰��\�&�M�W\�5���!\n��p\�\r�\�\��:�nK%\�P\�0=\�Oct%���o�i(�\�\�J\'�)ؗ�\�Am\�9\�\\�u���ҙ\�\�&��RZk�\�\�\�vU\�r�K+\�\�\�W\���w�hѬ���#F=2\�\�\��\\r\�\0�!�\r\nendstream\rendobj\r116 0 obj\r<</Filter/FlateDecode/Length 370>>stream\r\nH�ܒIN1E�9�/\�q��n�\�\0-��\��\�Еj�FB�@��R^U��\�KH%�s\�F���\�@��FN(e؛�6�D\�:\�a\�(q!5\�Y�\�\��X$)��|\\~�B��\�\��\�ܛ�9�Ӈ��ի0$/\�\'\�?��K\�(\�u�\�\�\�n\�P\�8�e]���STs\�L;��\�f�)N�~v�d}�\�\��\r�Ûa\�X|Qc�\�G�(\�[��68T\�ryñ�J\�-:g�t/\�&I\�\�Z\�!�\�$ȉ\�\�\�O\ZCZ�\�\�;Y\�W�),\�w�\�w�\�w�A�Ò�|Cu�\�5_N\��2J�q�\�Wល\�65(,!�.��v\��c[\�\�\�\�~:zO�5(\�\�?\�\�\�x\��Y��\���^��b1���1�\��uQ\�]�\0l\�\r\nendstream\rendobj\r117 0 obj\r<</Filter/FlateDecode/Length 503>>stream\r\nH��TM\�\�0\���@�\�8qrֈ#T�\'�X\0�����ڴ��vFMǮg�v�(���\�k��}\�~\nh?\nQ2\�9(�R4�6dWHĆ^���i�A��NX��c{\�cG��s���+��%9C��2BVMg\�\�%�\�p܌���\�Ѥ\�\�w�%z�JY\Z`I��R5RP�i�|x�\�<1H�\�4ܕ\�Xc�c\�\�d�9�)�m\�\�\�8t�\�\�\�\'{\�\�\�\0\�X�>�V��h�\n͇\�\\.�A},h\�\�2�\�b\��Z�>S\�\��D�L ͗\�.���cq�_ۈ\"Rx[7\�\�\�\�p��\\�����}9a9I\���C@��~$�ڌk\"�Y7+�i$R��5\�6X\�\\zdL5�\�\�Ҟ��3�R��\�1=ɜmǪ�#W\�\�\�w4Kw����1o0�G�ޘ \�\�7�\':\�\�\n[�5\'\���b���|.�xsd����%\�P\�\�\�p�\�j_\�B*ĺl�Xއѕ���K�\�9Y�W�Kg _\�g��u�u�p\��\Z���\��\'(\�{��|�m��e��e�\��[\�\0\��\r\nendstream\rendobj\r118 0 obj\r<</Filter/FlateDecode/Length 596>>stream\r\nH��Sk�\�0��_��;q\�DBT@��S�\�	�U��*\�H/<�G�ﻛg��\�D�\�3��\r8\�<7`��(1ɥ\�Ƣ��\�\�L�h�\nr\�\�\�\�\�Y\��\�\Zp�˩Հ�GHZZ�\��6\�.s}�@�\�^p\��{\�\�j!g*�5L�\�\�\0�R�w�\\���ﭱ.\r\��\�꿛sX=[}-~Ќ^Z��\�2����\\Y�㣊\�X68��\��)\�\����\��t4GÒt\�v�m布\�1���gPy\�\�:!�\�$�u\n�xe������%$y\�\���nY8=�\�Sr0�\'�\�\��-$�p!b�]�\�\��X�w}[��\�T��\����>ϒmj\�dP)\�m�Yn\��k\�+��\r�,͛ұ��\�>\�[g�u/7/\�49V�]���\�$�\�iwx|[j�\�Q\�B\�V�`s���RF\��m4��b\�\��\�v0\�R:�6���l:�q��\�p\�x(�\�j\�7\"M\�p�\�\�?�R�|{ԑ>^$>��x�\�\�\�uבF�\�dG�;\��\�,�,\�\\U�\�s\�+Y\�^Q\��\�\�z�\�\���A;���\��ϣlt%\�WO��!v\\���҅\�nu\"���m\Z7g���\�`>�tE�\�\�)�LM�Z��Sm�\0O�Vs\r\nendstream\rendobj\r119 0 obj\r<</Filter/FlateDecode/Length 5459/Subtype/Type1C>>stream\r\nH�D�yPwǻ�\�n`��\�A\Z�����q\�\�1��(x ��a�a�k8�0��I�l�\�$FE�+���rL��\�U�q=WcP�\�n\�7䑪m�ԫ\�z\�W�O��\��M�\�(��u�^���դ0�-�$?\"�\�V0~:\�D�&�]\�K\\�\� fͯ�,\�B�\��	\nج�\�4\��\"���\�\Z�e\�2��R���\�ZXTe5O5�,6�ٚ_ZfȪ[o1�ʪK*\�\�\r3��fF(�Y��$�\���4TX*-vKA䢲��|\�tS\�s*\�P`YGQ������q�&k�h*���$\�JQ%nT\rE\�Qԟ)\� E��\\7P9�E*�ZN]�\�A��\�\�݆U!�T\�\n�U�Qu[M��\�\�/\�-\�;����\�2�z\��\��%�<��G�\�{m��g�\�\�F\�Ӟ�4z�IӤy\�\�\�\�u\�k\�[�\���Ի\�{��\�\��t��֨\�\�C�\��l�\��.���=\��L7Uרd\�a\�/\�\�C�\�\�1Nt�\�E�^\�g\��C�g�\��w���?�\n+\��]����~ד~8�S�����\'0�EnV��P23��\�4`�8�;���\\���`\�5\�z26\��c�|\�n;$C\� k\��5��\��̀��c2��|��`?f�c[ �5�m�A5��\���\�\�=J\�V��V$\Zֆ�\�\�\�c�c�\�[��\�qM�lz\0���\�q*\�b��\��\��\�\np\�O�τ\�\'\�v�)\�Z��!\�X\�\�N\�\�7Zȳ\'o�e�\�\�\Zp\r�TյI	�R���U`J�\�?\�X ��\�\�}=\�p��G8\�nYo\n\���\�\�\�v�w3\�8�S�\�zh @�\0n��\Zn�\�\�/C72�m޼�\��/s\�w��%��\�↦�2Dp{�7��&\�U�]SL\\\�ƌ\��\�O\�I\�\�ّ�G�H�C���֛\�Za��`w��n�{�6؋�Pxv\�/�\�A\�U6Z\�D�<,��\�\�\Z�\��\��b��B���\�kq�˂�7��j�B\�a\�3\�n��ن��\�7�L��{�ƅaid\�u�0)6ư�#\�H!:�Yc�\�$�u\�\�.���o��n\�\�.�\�[ٲWj\���3G�VYV����\'i8$\n�\�\�ǚ�<�_�H�g�å%\�7�y|\�J�å\Z�+�W=vMﰗa\ZF�Ǆ>�\�L���TC\�Q��L�\�.�0ĀQ���\���#	l(jWaFJ}\�?��U�#�N>G�\�<�!Z�\�\�-�g�c\�>t\�4	�6�Y�a\n�y��OY�{h�]S&�*�v@҇�J�3�gX~$>�ݧ�8H\�8�\�]�\�G\�\�е����\�F\�0�a�\��]k�\��\0^�\n.9D�p�d8\��l�x�1\0�\�0�`\'��a��# ���蒡�\�9\�\�\�{�p5�.nM\�\�ń\�^�\�\�2�U�ӻ\�\n���>A��\�D�\�[�\0?��0uN0\�Hn_ѻ*��[?`�\�dn\��ex	�\�~��`�!I�9�\�}G\��5�uT\�+	j0��\�f�6s�\���\�?�\ne�ug!\Zf\�\\�\�t*}\�\�^�z�y1u��\'�|\�|r\�;	T11\Z#�Ǡ;��Y\�8\�\�\�斋\�;*�.,�]J2\�g�m�\�HYZl\�\�,\�픅�]8��C\�d�I��f;DA�+^q?sT0��9�-$\�r\�Lb�Q\�\�+��,���0(��[\�\� (�@\�����\�)0b����E�D�	!��sֲ�l�\�_!��Kfk\��aZ\r��\�@S{`ω�ly\rg��m�2\�\"\�wrB\�^\�\"�o��ơ�d\'���)� ܅�\�[��\��\��pC� �0��\�L��\�ii\�u�\�#\�H\�9ā&\�\ZN\�ɨ�G�^Nq\�D\�(f�\�Oq_;??\��\�[Y$�3۬K��\�\��\Z�i\�@�\n4zHc߇v�k\�t~\�C�k��E_t���\�|�CYʅ��	�\�\�\�(S!Y\��/�\�7�����\�ޜ]\�ds[�9\��\�\�\�-\�Q3����\�&\���%�������xM*\���*��FĜ�݊ԞS��Nu\�e+���b�\0z\�\\��\��uu\�\�\�\�[N��܂�\\\�W7(���x(��\"(��\�0\�;�\�� +CU&\�}	NBJ$��6\�\�M\�mY.��hi\��ɮ֠��+,\�\���\�AH\�DA���P4D�\\EǷ�B#2S\'��bkC\�;�<� ���c}VcD�i�j\�i��Y\�i\�1b�\�s\�\�{}g������\�ӶQ\�BI]M�\0\�S\�f�7k�i��<r��L��yv\�.��\�\�\�\�\�3�Eq#\�\�M��*\�\�y���R��֎�vy\n\�gN�0\�j4<u4��\r\���jo\�26�\�]�\Zs�X�%iXb\n�1���u�\�\�U\�<\�k\��S5\0�(\�Y\�!\�\n�Jq�\�\��ډ��\'\�x��\�\�Y�PR? O=]¿H9(-�\�O쨩+]�:5b^\�-}~�\�i������\ZB�\�=��\�,%\�H\�v��\r\�D-z+\�(�?��o�+4M;޷\�E��^|K%�z��Ob���\�\�\�\�\�}%\0Q�-6\�M\�\�\�ˍٗ\�\�\�\�I�q\�@i\�%O8�_%o��#\�le{oy�t�of-Z����\�)�\�2SR�.�\�\�c�\�oĢ��Y?��]��R�\�_1F��\�\�24fQ|،�k\Z\�;\�\�.4]X�\� �L\"��|4\ZF>#(\\���\"\��\0M�TȰ�{�as�Y\�m8%0}\�0QG�\�X<\�\'\�h�\Z���W�gG\�(\�\�Ң5�\��\�m�3a\�؍���_\�jy\�)�9v\n5�S\\ʥ\��f\'�\�|E���޵I�\��Y��3\�\��*܂�\�h��1�5s\��C�$&l\�1�y��\�Z\�\�Ժ<T��{M�_�e\���1LS\�U��}ٯ�\�\�p���V�\��d��}��}\�T��yV{r�w\�U��1~ƍl�\n�2��]`�H\�K)±H\�g&D�\�i�\�Qh���Q��W�\rsŽ\�G_*H�;c<�pX�8A�tS�M��\�\n�Z;l�͜\�F�\��:\�\r_\��h$�x�\�t���u��d��	�q�(��.\ne�y�7\�\�0\�楎\�\n�\�&\�\�\���~\n�\n���\�\�\\g�\�s�z\0�!F\�L�)\�gv�A\�?��4J�4�\�q���3�ty�ly륳i!\Z͗A̟���|�\�tb\�\�\�y,c\�}��B�	�]EW��c\�\Z�\�M&!}k\�B�V/����>YWa�aa;޴\�UrG\��\���{\�y\�c�C\Z�\�\�7`�e둅1�s\�E\�\�\��1�\�K`&;\�2G\�>��2\�\��\�\�\�\�2}S\�j\��c\�N5�[e/\�\��X�9md�{1\�\�\�~ �N{����\"�6�2\'\�3)v����/N\�\�H鯼�5�����nS�\�\�	\�fJ�\�o�kG_\�7ܗ\�B���kgXZ\� \�/؟���\"t#�\��rT�=d\�\�\�hF<s/UR$���\�\�۳\�Y\��a��r\�S̓$_G��{A}�B����_o�\�m�X��7G����L��b�c�\�ǘ�P��ΎH�\�oD*!\�\�?1i�\rS��5\�i��DA��3\��T!�\��A=��P��lz��\��B&:#φ�(\�7&(Lnҩ��Q�#\�����u̉��\r\\̅\�F����\nN7�6G��\�6J�\�\�x\�\�\�v~D	V��E���6���a\�;\�[\��\���8\�e#	��h\�£y�\�\�\�ŉ2x+cE4\rT\��\�\�,d<8̗D7��`}\�Ǫ6\n��\Z�|lm�Pr�V/�\�s�r�ֺ\"@��쓯�xb�Dor;Aݨ+�\�o\�YZ\��\�\�\�\�x`e��6Tz�-�z�_����E5qծ��N跗��eb4uY\�\�Y\� �l�f.\�pY\��/\n\�\�Pu�P\�]�.I\�V%�k(�@a\�}����륥>�`���t�֔Y{\�\�\�&�\�Us��\�x��2&-#US\��Гz�\�报�\�\�^��\�\�b\�u�[l�n\Z�\'-[\�筜=c��\�\Zl�\�\�=u5�W\�k�Ź�S��\�W<dY\�=��h>�ޅ5\Z\�H>z�+�\�\�P*?��X��|kC\���r}=��>F�bDy�rI\�\�D/r\ZF�N\�9R��.\��\�\�Pכ�X����.#V#w��9[S��x�\���	T�\�`sPvF]����}M��)��љ\�^\�\���\�w\��s���\\\�#���x\Z�\r�4\�\��ͺI~ydommUf��ڼq���\�\�\�\�\�{�q�ކ1�\�Ct\�(�n-ٵe��[4֫�K-�\Z\Zb�\�z|u�,\�e�\�\�\�%\�\�\�~�[�p\�I�\"�\�O1���\��\�� T/��|�ɀ`3�n�\�k|�h�\�z�J+�%�\�O\r�5ss\�\\m������z\��#\�\��M��y\\�\�S]{<3V{OF\�WrRV�\��\'\�\�\�P��f�qR\\���?�\�>]�s\�:I�7�/\�UU�g[\�{\��{�԰ӽbj����\r׀�]fv\��Q\�JM$\�LRd��\��EM4\�U��!�dD�\0s�Yű�(riP\�&��ε����5MN�3�c�\����\�\�\�y�3k��\�t�v\�U�\�\�v~a\�^�>\�Mt\r�\0a�^\\\0!j��ư6��\n{\�,\r��������x�\�[���)��6\�\\�\n�\��WW\�ۻﻥ�`)�l�\�\�uR�N\�Ѭ��\0fs`c}0\�s�\"�<.\�ԧ\�L�i)\0Y�Ʃk�\�zX\\ \�^��V�\�|IN^\�\�\�\�������\�c3@/p:�I~��LZ:�\r?.��\�DmCwEʫ~\\\������\�\�E�d\�$��1%�9ƒ�� M.a_��\�e�j˕&�x\�\�a>� ��/\�g&g-\\N�Ħ�/�n�y��z�8�y���`<u&*�\�!E����#5돑 ΥV�\�\��:ڪ�\�w6\�6�ԯJ�1����I#F&\�:h��\rC��&��8O�@�6��\�\�\�V#��Or��nQ����7�\�tP\�3IK^Љx�r�A\"����4��d-L�H�\��݁fO�����\'\��R4�Ы\��lU�\�\�\�V4(8�\��U\��Sg�47\�elj�_}Nw�_���	a\�79\rm���MC���_��\�-):,\�X~��+\�8Ӷ85S�\�7x5lc6�͸<\��$2�qzp�zx�B���OܯL\�\�e\�L\�QVs�\�\�񓹫\�\�;�ܩ���O0b\���=�z�S�:���m\�Xx�pu\�ʥ\�IIU�oȦn\�\�\�~0\nX\\@	\�E8u\�\�}��铓\�pL+OQ�;[��o\�}T�@\��z� �\�\�n�\�Qwu\�uYp�B0>\�P뜆����9�\���\��c\Zk6Y���$��3Vd�<\�\�D\�|�~?\�\���tG�\�\�P�\0\'�\�ӀgWs8�M��\\{nrh%s�>�(�Mb��˕�[\�\� ��߽W�}M�pr\�\�C�\"\Z<F2^�f�\�a<,\�A��\�EUf?B\�O埧�pb`\'�&�\�a�f\�ܗs��\�CR��v<1�������W��\�^\�4z9Ld�\�ۛ��e:\�\�4\�/۾^A�/r-:bƕ\�W\�(]]��\n�H����@\��^\"+�\�ЅM�0F��\�\���5&���&m�|���\�\�E.3�7;\r�\0Ԛf�\�#\�\0��\�I��)�k\�\�n��x��l̐��?�Z\��\�\�Oյ�I���R�|@W\�Z9\�d9�p�\�u`\�#X���@`�0\�\��0å\�\�\\\�Q,\�w��K!A灸\��O\�۞P\�2\�l�\�!\��0�����?��0�ϡ�Q\�u\��lh빌6r�V�%�`\"\�\�\�ڭ2�v���|���\nս,{~.e�����\���`~\�C\�3\�O\0����\r\nendstream\rendobj\r120 0 obj\r<</Filter/FlateDecode/Length 5444/Subtype/Type1C>>stream\r\nH�d�	PW\Z��g�~\�1\��͸\��\'�\�\�D@�(�\\�hD9A�AR�d=*Q�Tv�ݬYM��V\"�	� 0Cd��&\"�f7k\�\�\�#U\�\�n\�Vm����u�\�\����\�є���i\�%&*|\�\�U\"rRsS�\�\�\�~�ލ\�\�m��2n\�\�n��u��!\�	\n�ϻ\�X\�B�i:61-\">B�Մ\�\�dedi\�yi\"t9YiY���4�%�:MDޞ]\�%5K���-~�5�rr4o�BM��PW�ץ/�\�+\�M\�Y���֤\�vPM\�\"JBSR�)J\�L�\"*ĕ\�BQ\�ST&M\�\�T1E�P\�a������6\�QqT\"UJ]�\�\�f��J/�ՈzD���bq��q�M�M��A��dK��la�2\'�z�@V\�B\�Q\�\�Ŷlll_\�a�\rv����뵳گ���7\�eɲ?\�\�eV�	\�lv;\�\�\�\�q\�I\�\�\�\�颓\�y�s�s�\�R\�rIn\'���_��P�\�\�f\�/\�\� �\\\�W&*w(��J\���6���\�&�����\�\�E�kjH�[9M��� �A�[YB4$���X���´�\�\��\��өqĒq�4��-?^L\�%;\�\�\�f��:	iI:<��{��K\���O��ŏ��֟@&�9t.-��g6����?vZ�\���\�&��\�H.\��#\���?�&kOaB_��}�\�\�-UG\�\�6Ý\�I\�p׹]�\�~\�:��\�\��\�GX�2V�{��:t��\�\�\�RE\�f��M�\�)�k\n\�Ŀ<\�\�B�Ƿ�z�\���n\�}Z\�\�\�K�@\�\�M�/!^q}]\�߫�=���n\�\nL\\��)̈́\�븍k\�\��j\�]j�w.[��\'\�\�g\'a\�mj\�k�~8M\�/7>^{5,<&\��ȿ5È\�o	���j�@�\�pev:&H�\'��Ʃ�T��\�u\�<I�p�����\���!�W\�\\{	H�����D�\�[L?5���\�ruL0\�\��2�WA\\58��oe擙;H��\"\�\Z�3Ad��$,\�\�yCN��\r\��\nfe@�\�\�\�3�\�\�q q*\�N��\"�ҏ_��>���-�\���\�\�TS\�8�V6\\\�)\���Hl��0�dL�{P,�\�\Z\�p��k=\�#EP�H��>	��P��i�E<D�\\\rsM(�\�hQ�m5\��p��r�a�2�\�4*-` �\�_�u��>Fh���c\�!\�z��(\�\��\�Eg�\�a1ԗr��h\0TjB�=���8q��\�CD0�V�3\��\�28��[�\'\'�#�01#��(/\���ZgA�\�*���d�u�N�dn�<�WJ�,$�)e>R��\\\���\�C�J\�\�@:˅�g\����:\�!q#��\��w�A�[ƦZ�\�ڤBo�X�I\n)��9�]Pe�w Q�\��\0N�c[cG\�\�\���\�fp{��m\�I�Q$�=u\�dR=J|A\�w�a��\��\�Hnn�fj��\�\'q\�J�f��OԾ\�Kd\�Q	]\�W\�\'\�\�\�������\�k=$w�8_�\��Zi�䗝� �	���\�d7�*~�d9C�L�Hb\�>b�J�\�6]ZM��	�|\�\n\�)_��G]���׾xCr�.sIM\�)�\�3\�\'�p\�֙f�AC���\0���0,��Z��tpZ)�\�Y�`���G�am�K��/��%��b\��j��Imל�B�קa�CC\r\�\�\�M\�C�|r�\�4�E\�%$Z1/�(0y$\�\��ğws��\r}\�N46\�\�\�ѿ\�\�G�S\�`6\�k�Ui�aΘ\�(ǄYu~v\���L�\r�ID\\��Hy)�L\�\�v@U�m�;�P-\��i\��\�v\�*dNj[s�|�Mk���/G���@\�\�DĄ��&�8\�\�X\�S�#�cCT\�H���wp��ߚ\�\�\��UF�9\�\�1[�qLr\�A\�G\�W���7�^c�\�@A\�[\�`v\�G��\�t\�\\9�P!?�@��Q�#�#\�\�P\�D���#�\�;x��\n?�rc\�bmBM?>��yE�\n����+O\�\�\�N����\�\�(�\�/!OwT��:*l, \r�nb^��\��uq>Oqo�J`cx4\�a#Ǘ5L�1\�a�V`\�o���\Z\�\�\�\�g\�\�$$;⹾z\�\�wu���߭kh<�X\nL`�\'��a�\��]A�#�\��\�{\��\�S��qZڮ\�O��Ɂ\�J<MV\�u󶛼�4�.-��\��/��5*�\�\n3\�=QG\�x\'�ɺ\�G���\"(��� >�ADMl5j�\�@�u\0A\�ַ4�jդP�h�A��\�sa`������f\�;k_�zF\�Z]+�\�:���\�\�\�\�\�\�ߑ֪z�|�\�\�m϶y\�1;�\�͋Ѥ��\�\�Z�˨��.���0��\0�!=1�\�Pt+\�;�\�L2\�\�d\nI�a�T���d�\�	�M0\�\n�{\�\�\�����y�\�|�\�{~QU\�g0��^\�~\�A6\�W\�1\\��X!1��7h�{\�f��Z��pI�n(=\\�g\�Ld��\�\\2k\�j~;����\��B�}̢���^\�\\���S�U;�r�$�\�\�%xܹ��&!r#\�	Ci>a�W��\�	�\�\�=��,nX\�P��G\r\�j�\�\�2��U����l���\�\�\�\�߈c�]�C\"{�uʹ��\�P����\"�cU���\�\�\�s#\�-��a\���\�G�jܧ�d<\��p6JϪ\��\�M@���\�\���u�?�\��\���z\����\�$\��X\�b�-�t\��6��F/\�^��/	�\�~\�3�8\���m89Nj��Էi���\�7v��ʣ{E8j��\�@\�\�p\�-\�\���E�[)�w,�\�\�\Z܁:\��\�\�\"��\� �^�\�PHsl�9\�i\��\�}�͕#Lǳ��\��Ǥ�2\�4�\�\�O�\�Y�����\�4�\��,Фse:�&�>\�>�33�p�\�\�\�k�̔�>t�78\�\��_6��4ڂZ\�Z�<�(K�D\�8�\�j\�p��D�\�\'.H\��쬌(��\�\��\�\��8x\�MJ�Y���7M\�w�\�\�<\"X.̓cP\�L&�����\"X�n�\�T�]/����SM��\�\�M&�m�v\�\�M2\�#�V�\�4ӏ\�ϔ\�f�3ӗ\�&9�)&�����\�˷�wIú�Y�\�SJ$V\�az�YQ���\�����Di@T\�\"SQ\n��\Z��O!L�<�px?j\�G�#�eF��©R=艴�\��*�޶��\�ie`!�CC�h:C��0\�5�|��5@�/��u`/� �/\�`&;ж<�o����\��RT��\�%�%�����s\�:^�j\�=�\��\�\��#\��\�+S��o\�Jt�\��,\��B�CW�;\�\�sӾ�KU\r�X=㴀\�}\�\��\��ok}\�֋�[듿\�\�\�1�\�^\�!\Z\�|c\�k⭴\�Ьen\�m�\�3sN\�\�)�\�\���\�z��\�Pk�G)\�c\�\n8D!<��;\��N��\�|\�\�@^�s�K�J\�t�\r!\�`Z� m��\�S��\�K@O\�بzP	Һ�S�\�Ws�\��˶9s��\�o\�\��\�&�`���\�ӥ\�H	߿]�\�\�\�L�\�3��#\�g�,��\'\�}L�\�RKPKG\�~Q{Û�:�~@`!\�A<\�1�I,��\�L(��\Z\�\�k&��j`�%o,\��;|��A�ƄL�~L�~&��N9�Q\�\�\�o\�;ov@��z\�+�i&(��.\�G�\\S\��e���>)1�f�\�=;H\�	c\�90��UL�\�n\"�7���򺆓�\��-��<*�C�rPб��p��KN�\�hm,k@�Af\�P9�eh޸MJm��:\�N(\�RU��\�׻8e*\�Ѧ���[\�\�Ӗ}5���;U�U\�N5}ؤ)h\�bo\�^�O\�\�枪�xCٰ�\�ye��9�>�\�b\�m�w\�A�\��!ze<\��\�&�\�EY9euz��\�Z#\�ު�;w.��PJ\�!aAނTQ�E\�<z���;�Jh\�*CKZ�4��+\�*+���Ƭ7pՖ�\�\�]\�CDgf^)d\�&W,\��,E��4ht�.�\�x����\�m�}���\�\�ǳS\�\\\�#�*\�E\�0�IAC>\�\�eNϴ_��3\�7\�l\\�	I�\�_B5<\�aA\�F\�ֈ�Q\��\�\�H\0��\�N��\r�\�+\�\��\�\'\�\�ۤ\�z�\�J�=u:T\�)%�G�ܸ�\�7��\�\�\�2��ݿc{\�vMHƊ@!,x\�V��\�\r0�AR5\�\�\�\�\"%~#fS\���PAʋ\r�\�eK\���6(9��@\Zb^\0���lK9\�\�����瞨\�\�/��YXѹ�SsNs+]�g\�\\l4�>\�}\�_\�[E1ȥ��\��liM췺w�;i\�>n�\�j��̣h�\�\�\������Y誌\��J\Z�V\�:\�@A\�\\6Rq�G\'(\\ӏ0�\�9����VXmU�(\�,\��\�\��\����\�\Z�\\�1�W�(\�QR�/$�\�ʊ�hDg\rgE4Q\�x��\�\�\�\��?��>��*�����(-ʺDn\�bS\�h��\Z6&��|<P�������\� Z�\'��<FKPȁp0D1���\0E����>�e3P�c(\��g��M�}b\�8�\�޳{Ͻ\�\����߁Edhޢ\�/���^XQ��;��QM���\�\\\��k�\�p�\�\\��D��cr;����g\��\�{�گl�ѥ$j��c�1B�\n\�o\�U��a\�\�n{�څEUhg�:�\�\�|�\�cG\":\�\\bL�H�\nH\�\��\�EbH\�\�\�|\�_f\'R�\�DY����̔�\Zq��Ӛ�i�6�\��\�U\�-F�\�n��2�����ѩ��	�^�d)7/�\���q��\��b\�\\�y�y\rv�/�~��o#\�i�\�У-�	\��\�A���deUgr�8r߉�9:�ox�Y�\Z��o� ��M\�{�\�>�\��\��\��\�	�\�\�(���\�\�\�>�B��\��ƍA\�ɖ���\�\�c4�l����\'\�+=�tf\�x3\�\�\�\�\�{{�Tj<W�\\\�ʭy�M�(;�0SLy\'Q\��7�KXnVV�\�{\�p�\�o�@n��p�2�\�Ơr9��Yvx}��\�=\�\�~f\�\�:�\�Ӽa���EjXj���8�._\�bz3\�w���\"r\��ʦD\��uL�9ǎ������\�g�S� ��{�ʦ�_��m쾏?�l�ȏ\�o;rQ�� w 7�Q?�\��.;\�\�\�\���ucu��\�\�\�\�b�o��,\�F�\�\��:�\���#�\�y\�7le`h�\�\�#�o��<&q\�G\�j!���|A!�2�	}U��\�,Y�����w\'�	q�\�\� n���y8c��k�~!t�\�ϟ��\�7\�\�	:C�\�\"�@�&]\�/Ei�\0r����@�\�\r�X�`��\�ޠ�n]�ݣ&�\�Y5T+C�:�\�L\�f\�뼮\�D5\�Z\�\�\�\�\�)\�׋��3B~\�WU�\�\�i\�.ս\�p\�S�\�E�#Р�L�\�\�,=�	G��\�K0,�.�\� t��D\�\�_ug����R���#�>t��F\�KZas\��\��\�+�\�ϙ\�=9\��OXE7�^-Ƥ�\�\�9��efHE����9\�9R�\r\�\�YH$&52��\�îTM\�V�M%�\�ʬ\'�\�\�P\�_[\"ل6\'森\�79\��^�R?�\��4���g\0�բ�\��F��Φ�\�@Be�S�������\�u��7?\�\�\�Wz\�/_�����\��\�1=-\�,\�����\'a\�\�(�1\�&r\n0Z&�N:�7���,��jXܭ\�\�P��韞�kQW<\�\�*�k\0�\��\�qP�m�:(\���y@?����Z8+�\�Vͪ��`�\�\�#�-#D\���FlC�	Kj@Aў�\��7jd�\�2��\��a%t\�V�H�\�\��OW�`\0q\�\��\r\nendstream\rendobj\r121 0 obj\r<</Filter/FlateDecode/Length 7601/Subtype/Type1C>>stream\r\nH�|TyTSg!y\�b\�C|�����Q�g*�Ȧ-����Y$�v��Ђ�e1  (*���\n\�:�Ņ#\�8n�:\�\�07��\�̋��s\��\�.�\�~�\���}<L`��x<��@��kV��R+�>�\�\�hS|�ёg���(4�\Z>��\�w\�	�.r�	�\"�[C�M���\�\��x\�VG�\�\�rw\�\�dU�:.V�*��c�d}�zc�J\�&Y,�.v��JL�|Lj$j�F�N�G�/\�`�H��hy��1�I�\�\�mǰ8K2\�20,Ê0\��5a�\�:1l\�\�a\�#�W�q\'��\�cw�4\�[^��\�l�Y�\�8ߊ?������\�\�\�\�\�x	�I\�/\�\�	�� J�\�)�oRf\�d�b�\�b�E�%\�2�rb\�73t3����:6s\�̜�Ba���\�XϷN������a;\��Sە�_\�*m�5kì�vvav�\�WT���}��\�l�ٽ�C�õ9̜�9�h[:�\�����G\�\"ǿ;���\�;}`�1\�L!s�\�c^�\�\�JI��_!D�\"=̄@\�@���-��)I��ǧjJ�&T�6�\�Uh3\�\�`hkW7\�+RT��Fe;+��FBj\� %<Q^���\��#�\�\�ȏ\�)n7\�>h��y�<I�{�\Zu\�\�\�h	��\�a	�	Iq\��\�q1U\��Z�k�\�D(�B��\�?&~�|vx�;\�\�\�\'\�fv�}�u��&�NVe\�@@(�N�\'�\�DTo,�s3=��|�w��d(t$�\�\�\�\�R�+)�\'�jIe3\��-����(�+_\\�ͼ��`_qIQ1]N\����lõ]#b#+(\�\�\�֧��\�C\�\�\r`�\��)(\"4\��領�5�!�?RO\�\�z\�\�\�\�\�_��G��l1\Z��\�F\�<�h�w\�8?\�Ϙi|�և_�\�;8t~�o@\� \�(@w�^��\\j�����=�\�\�\�\�ŀ\�SGj*\�j2N9Է5ާk�.c�\�\�/�l\�\��\�\��{#S\����[���M\�#�p�q�#\"�:\�\��\�����\�\�!o�ej�8Ս�\r;[�\�\�3m=\'w|�J-Kd��[�OH\��ޖ�\�S,����Z��Y,D\'��\"\�\"q�z\���\�	5\��dE|S�i&\\��d�(\rZ�e 篃ِ\�>\"Auf�c$�sF�\�JI�?��΄6���7\�gGI\�sQ��|1HŮ#�jr�\���8C\�Tr,��+�EL\�8���\�\0���\Z�3��L�\r�l%\������^(��nY\�P�\�7\��h-u�ho\Z�\��wKi��ML�G5�.2+\�\�&$p����\n\n2�Q�	\�\\�\�\�\�yF٢�Q&\�\�\r��e轩K$�v\0�B�͡\�� \��m9�r�B�(my�D\�\�v�$�5|K�`��]-rE\�#\r��\�\��fⳣxjY��\�x9�\�\Z�|��\�I\�ԏ�!R�jtµ�����!J+�S\�G\�S��yxnA�N+F{ \0\�\�W ��D|d�\�}�v�\�\�LQ|���=y�\�\�\�0D��ܲ�A_�\�ܾ2vs��V�{v��bzs�~��\�[�|!\�HL�\��ct^��\�\����}):�8��\�D\��؍0OI�lij��\�Vwoե5ŋ\�Ԅ5�S\�\�~�{�h&B*�]eE\�G\�_��4�В9y�l��^\�usIm�N[\��\�\�\�\n|(��78zC\n!�k�}�ȟ7�@B噹\�lIX\�PE4?\�\�Q�\�l\�\�0?\�1���O<1�\�\�cǗ\��\�岅g�\�\�v�F���\��\�\\SM\\U�÷`	6^��\�\�`ud�u\�&�Ľ�y9z��<�s<X� \'d��!���b�k�\�@l\���t۩��\�\��}!�#��q�\�\�\�f�����Z�\��\�\�n\�%�]`�,\�o#\�y\�e\�O���\'\��\�e�/�_\�dԁ2)�\��`1]�иV���\�9w}�m��OR\'\�(4Bm\�}𸾣��׌\'�\�\r�\�>�/�\�Ҧ`)���?\�\\۔��A6O|@p\����69\�\\��\�_\�Y\�il�Sw!�U\�\�#�����\��\�9\Z�\�2192;R�Q\�kÙNe3\'�$y�I\�\�\��dwt����1%|�\��_~F\�)��=�`��	x�\�NoE�F(��gZF�}�?�7�\�fj�\�[SPUE7UW�\�W\�{G�^{\�]�yg��\�\�\��\�ڣ��\��\�z\�\�LO�\r\�\�\�{u�u>�*\�U;\�\�g���APlA����$@!Hn �$Bx$$@-*R*`\�*�\�V�=\�\�h\�\�;g�\�\�YO�\�s~\�9�E\�ӝ�\�\�\���~��\���5�uJ���j`�k`�\�\�\�d}��̝���^\�*�������T$;1\�)��\� \'��jL�\���\�Մ	\��\r�/2H�ұ�K�\0\��\Z0�\��j\�\�[\�Ow��9\Zj\�\��\���\�f��&�E\�\"��\��\�PW,\�s\Z�����\�~\�����\�j��XU�@�R����\�\���d�\�/�\�]\�\��B\�hz9�֢L�s�`�\�Q\�޹|9�v������\�Ks魚\�#w�-\�wK}\Zf`$G\�L�\�f3\�\�]B\r|�*j�G��v\Z?&���,�_c�\�:\��@�\�>�}��\�_N��u�\�:O\�\�4�2\�}\�{\�\�\��?\�aѨ��l!\"v��F��Q5��g��\�\��\n<\�\�q�2�\�\��%۔K�4)+W����5\�S\�\�y�¥�s��\�\�~\Z\�y�;\�5YW�\\m\�K*U;*�3h�rL[���K�^�1�\�\rp!Mp}\�>I���a<@Tj�pnN\�\�A��rPPh�aᛆR\�$\�ٸ��J��ơ\�\��nG\���N��\�\��	�\�\�O5\'\�)o\�	O����y��|�ʲ�h\'�=�\"֓q<�h\�\�m�A+1�g}�� U�[���Ϩ���P\�I*�$_�ߧ��`Ƴ�B�i#�^7Մ�`y\�>FRyo.���\��\�z�[ۤ��������`o씃	h*T\�٪����\'\��\��I�hp�-�\�B/\�sy2�\'���?\�c�,\��\�\�*�Vm\��\�\��@�\�`\�ױ�q���\ny[��l����\ru��\�\��F�6P:mv��A�\�P��S�j\�\�\�\Z��udݷQ*MF��\�\�\�\r-aP)JCr�	m�\'\�P\�(5\�(�\�\�nQ\�\�p\�`��\��\�$�\�Bh ��D�P\�\n\�E���^j\'\�(��\�Y�>\�e\�����P�o�#���v:\�\���)YGH\�Ƒ�\�\�,?Q!8IuEZ\�K\�\�\��G��\�\�9q����_��e\�\r�{�_nSh���b;\�S}&�)\�\�\�\�Q��)ё�bd^@߱wXq�\�>ȅ�3\�h�z蓭D�\�\�H}/\�=b6Ө)\�\�\�\�\�\�����\�SO��ԳO\��UJ����7�\�\�\�qg�Ar��4\�\�\�v��i�q�9��&KTBK\'��w\�#7;�ICX\���\�G��\��� q4,1r�\�\�rt8�hgo\�9|A��	n\�C$v&[\�\�Y	tǩ���\�q�E�q��;�(\�B!c�\�\�ڬ\"\�[��\�m�\�s�rg���m4;\�*���R\��l��1�����\�\�\�\�s]�\�P���\�\�w\nvW\�һ\n�\�h�J�XTh��<S�\�d�\'XJ\�P`�\�*�\�\�\�fMUC]�Z\��s�g�vĝcq9|�\�LH\�Y\"��e�\�O\�<������m��\�R\� Z��Y|%,���,��S}Z���-\�\�\'S`4Ff�	�\�\�\�%��\�\�ÎM}3a&z\�]�ʡ�\Z;;�K�\�5&\�Ւd\�v�R�P2���b%��m7zgV�؆SDI��ﳻ�\���	,�4,��\�lsSS33�\�d\��a	>0\�~�E4Ff�	.�\��\�_ъc���p\r\rK�U��\�ث?No�\�\�s\�P���S\�\'7?�Ìâ\��\�\��\�wLaJ\�{�1�~9�ůsw�qR\�Y���\�9F���3���\'�yf~�\�XV�{f�\�\�_�*�u���\�\�\Zm?�W\�\\�bF�H��*��4�+�A?Y�\�\�e\�\�)宕\�\r\�U/\�\�\�V<�\�P,�g�\�֋x�,#=�iB?rK���)0\'7�	�ۖ���9j��C?\�uk\�9m�%1�Sj�9�70�yd�V#׀�(\�;|/��w�w\\eFa�\�٨�������\�/�����۸\0\�X#>\\g�j\�j-�\'�a\Z�ˑl\�\�[0��?R�\�+~��[MM\�a\�m���)\n�y�[�էp�N6B�]��\�\�.��XRl��\Z�\�\�k\�ki�Rb#Z+�k\�nB=�$�&�5�:=&Z*.���B���\�\�f\�-�\�ޠ\�\�I�ڍ\�\�\�l^o�QZ\"�3����\�\�\�{���\�mmv���d\��&�\�oX�\�m\�/jj\�H�\�\��V\�\�{M���YС�\�|�\0\rsq\�NC��\�ڃ��\�p��=Ա\�\�:\�{ͽR\�G\�\�c�֨��i��&���\n\�{�\�.��ov؅\�ewa�\�<�\�ᥰ (X�F[�Ij�\�Xc;�:��9\�2\�s�\�t�ӿ�\�\��\���\���>w��Xn\��Q\��vmua�F�eU\�T\�IK�UD:ΈḲ\�\�4h�h���\�<���v4T�\��-[\�uU&�\�](B1؅\�\�zu�\�Td�h���\�J4\�!\�]\�o!\�B���z]�.�\�*j�$%b�.\�;.�F.\�\�X��\"��au.��!��n���Z!BG�$��H2\�M\�\�|=+�r�E\�-�O�\���2bJI�/\�\r\�SlD{5� a���~�\�\�l�n	0�\�-��DVP\���B����\n<��(B\r&q>\�t?�Kޓ/���\0�V\r���8�\Z\�\�K�%cs%�.��\�}�~�/�;\�{��������o�\��+|�0\r\�TSW\'�9\�\�<��\�AWC\�%Y\�\�\�T\�\���*rp]�i�4�͒IQ�d���=s��f\�~;�m\�\�!\�~��<�%wm:q�\�\�LQ�i\����\�5\�g�\0�G�\�;\��}U/xo���膉7~�\0\nGkv}��\�>��͡�0P1c\�c3X�d�[	:UV\�qz.\Z\��\"��E1cTT\��4����u�a�y8��\�\�o�\�	\�D5�\�\�\�\�.NS�e�\�\���h\�\�G�\�\ZdZ\'���\�X��3[s}-M�\�\�\�\�H�=\�`z~�Hi\�l(�!\�� ��\�\�\�� \�\�+c\�G\�/\��&\�\�دg\�\�\�4\�}y\�\�̾��\��a8Z~c�g��\�X@m���(ru��X�BW\�\�0G�$Me�ǑMM=�\n\�\�\�.����s�Y}\���\�\�f{%�.�\�\�sӏw����*�\�\�X�\�r\'�d0D�>�<w\�\�\�TO\�^]��\�@�\\1�.//s�\nm%���hi\0/�\r�=�\�Y��E�R\�\�\�MnL�?�\�.��\�z*\��G��@�.�\�\�P$��\�\�X��\�\��\�\�0]�*�\\^�����۷��0`kvV�U\Z`�7*�\�Ʀ\�VYSFRF\�[:\����ۘW7G�d��75\\�,ZK\'�\��\�2��\�¼�ܜ�kz\�ݓ�ء\�*�\�\�\'����ŶSG���9��MT\���\�\�:\�b\�_2��������^%n��+Hq�][^M�1��gpp����9g�XՆ2I1��y\�$$\'Ve��F�	��ߺ\�ء#y,qŁ�\�s����՘EύA��Tj���і\�����\�/\�HO�d��nws��sw($�\n��@b7Z\�\�\��L�)1�\�Ӏ�\��b�����!6�5|%�$\�H\�\�&�|\�.�}{��\�W\�j.XOJ�\�K����\�b̧\�\�\�Dq��i(K`\�sr\�\���C���\� �\nN���\�XJ�Z\�\�\���>}�}\��Q\�K�&�� �G�\�^AF�\�85!\n\'\�^��:w�Ut��$�y�[ۮ�\�\�jॅZ�>\�$\�CgIU�\�h\�;��\��\�\�ܓ\�O�W����\�L�V�e�ۅ^xl��\�d�\�\\jn7s	bG\�V2\�\0�\��=\�\�w\�\�Ǒy*�f�aa�r/\\\0\�LH^-M��fxr��W\�U=/�G�\�G/�i�UP�u�z\�\�\�Ǣ�X�\�Â�\�\�̮�c\�\�\�\�VY֨5\�O7�Jb*\�\�$��\�\��\�\�\�7Dw��i&K��\�Zğ����\�_�\�H\\T6�\�3\�\�\�1KhV\"]xy5ȧ�ЪG_�0�a�C�J�֭!�u�\�\�h\�_q\�k�zi\�\�콱uD\�F\��%\'<׎u*�\n~\�b��\�$f5Oȉ\�r\�֢�=��F%\�fs\'-�ȷ\�FZPX\r2zn*\r��yl��QG3\�]\n]�=-\�\�C\�#�\�Rw�\�	�\�E�c�ϳ\�,n�\�+9�`<�\�\�֟`0�iA?G\��=�~W@�\�$6��jP�<Ԧ���\�\��ǸO��,�\�i\Z#\�\��`7\�\�\�6�V�`�k���\�\�\�\�8�X\�(ݖٜs8�@>��/4����47Ϩ�V�\�\�a\�s�\��\�+G�4p?\�ɵJ\�9z|�;\�\�\�W�\�*iu�-%�\rm\��Hƕ����\�o�]\�\�w\'th���\�\�S☌l�7�-�*���!��c\�I55\�i\�ՠ�0G�\�D\�{�q���\�PĤC�X�W)�I�␴)<\�O����R5�\��k\�\\D[@#<S\nz>WX\�\�}~\���sV\�4v��\�6xJ�vz?�]6�)�\"\��u���\�`V�`�\Z�jm\�\"\Z\�!^t9�+G\�:�ˁ�\�۪]�\Z��\�F^��<ث\�\�W+D�q^�\�\�?��3�\�C�;�\�\�]��۝\�D�\�BP\�&\"uC�c�Ӂ-���-P��e�\�i)�\�R(�Q\�Dc��$n�Q㖸�M��e\�\�\�%no-F�ܖ\�\�����}\�<w�<�D�@7\�N.\�>�\�Ɵ\��h�Z~v!�����Nw\0��\���/�p{{\�\�j=J��\� \�\��\�\�\�\�ѸY��[zZ-\�M�)%L��T��y\�\�\�#�\r{P6kW�\�꬧\�Ē��q�S\�Y�n���z\�:�v��k�q#gp�9N�iT\�C�k�\�N\�\�\�C.\�KO�Z\�V\�֨�w����\�\�\"\�\�\�>�\�µ�L4x	��0�X�\�z���1c\�\�Ih�n���e�^Q~Jho��ω,7!˖��\�n��\�2�88cs;x?O�\��OO P�w6s\�y\�\�\�C\�\��J��^\�ՎWIktzEŨ\�<Kf\n\�?u�\�E/l\\��\�m�&)܌�q5ַ��\�+-H�\�W\�1����IA\Z�\��鐧\"�bt�E\�v_~!���\������_G\�b\� Sk`�\�2FM\�\�Qe��}\r�`CV\�G.\�N9�XPI�p\'<̈́Y�\�<� I;S�Z\"�Jca�-�w��\�l�WlJ�\nbÇ�\�\�\0Sq\r!Մ�q\r�f*�%P�/��O?j3\�ͨ����ݘ��\�{%\0��\�v���\�?�VO�}���\�\�_����$]�� 4`2;�����B\�`\�7z#{8�\�H�����Dc6\r\�\�F{���Ӄ�\�\�K&\��k\�ϗ�b\�T0=����\0�G�;\�\�\�D[�բ�K�v*�i�\�\"��5>Mu�\�`{��<J�M.\�pT,\�\�\���\�|ʵ#^U�F�P\�s@�����\�I&p��h�2b(\�Q��N35,�G�\Z��Z��+B*\�\\���A�\�\n�j\r҄�6(Nh\�r-҂�(K��\��s\�䣍8jG�5�\�\�\�\�֧\�\�nX;�v|����׳W�\�\�\\)ڞ��Hƒ�@I�\�\�q2&P`\'(;a�?�A	\�{̇\�hUlЀ|��J0�~��\�w\�\�^>_Pt�e���7\'g|\�=t\�\�\��񏪳\�\�T{��R�\�M����khV\�nN\�tA�O\����b�����\�j�@YIG�~\0߀RX\�K\��=rШ��fz\�8f�JQ\Zju�.���#�wGL������1���\�\���{S|M\�F�A\�`f+���$�E\nBa�_�1ԩ\���\�B��\�4�:��\ra�����b\�?�G\�Ί_Q`\�\��\rV��Vn\�R��Q\��;�R�l\�\�\�\�pƟ\��x�J~�܊{+G\\\�\��<\�/��/�\�o\0�R�\r\nendstream\rendobj\r122 0 obj\r<</Filter/FlateDecode/Length 6038/Subtype/Type1C>>stream\r\nH�tTiXTG}\rT\�\nݨ�\Z^��5bdl��D\'F6AQ�%*�\r4�F\� K/�\�\rDh6�4�,��(.a\�\"\�B&\�Q\'�qL>��t\'�\��}�4��V����\�9��[\�ͅҘ\�\�+\"Cf�\�5i\n��P�V��Ԑ�R&���\�dN��\�\�\���\'=6����\�\��\��\��fzA\�X3��-\�\�I��@0wQ�V��W��d3�d+���su\n�lnP\�\�ٲ�J��2S�Wd*�ي\�فK\�^�ȂdɊ���P\"Wj\�xJFQS�\�,\�PJ�RS\�v�*���_\�<ʕ\�T\0�H\��NR���\�S���\"�\�E\�br�\��\�u�k�\�=7_�4�~4��x-t�\����S\�\��q3ƥ�?u|���G�\�5O�\�.����\��s�E^-B\'��\�31k⏓ޝ�7\�\�\�;�_N\�8\�1�\�\���\�[b��\��\��e|�0�\�X\�䆘\�|\�\�gq�ޟ����\�jLSmS�$5u\��b�c3M~b�����ڏ2�\��C\�� c�\��\�j�<h\�tR��K#DvG�&^��y\��4��\�9]\�z��\'\�\0b�\�\�\"p�#���S\"q\�\�T\��\�\�mu�F�IO\�4(U\��TEcQ�\�o\�8����j�\Z̸a3�\�\�\�:{�t\Z[Չ\��֑\�͉\�zm0݇\�\�\�\n��ŵ �����^\\V\�\��;\�3(�K\"�\�+ͻ��0\�$��d\�X��,�Ugc�0�s$N9.�\���\�m��\�Q��Ț\�#\�g\�?��L�ޏ�J�#\�\��+1��KM\�.������Zx�\��\�{\�ȡͫ�2g\��!s�\"\�4HA4\n_\'\\�l\�n�ܸ����\�\�S�FFN\��\�\�\�5���Çիf��\�\\�VT\�\�j�c�\�>!���|/O[S�\�/�<:P��=�\�\�s\�R_\�\� �@/9�\�R�Iy�����\��\���s2ccQ|��x\�s,зH��\���J�Kh8�\�[<\�(�\��(`�!��d�e;7\0�v\�w�����P3n\�\�\�ao^�v\�y^ޞJg>��vHd\r�����\��yri��3^��D\\��f�^�\��\0�\�\�\�sp�^\�lJ\�\\̒2D,$�x\�\r\�9>��6]�w��؞�\\��S\�ٛ_l�Oġ�!���\�vF8��\�\�\�\�F��!�G¤\����m\�ύ�=x\"��8D\��,�x�M\�\��{O���Jƃ�x�s:n_��\�\�\�\�7n��\�[6����Pr�Q:Z\�w�\���{�\�\�璗KF�\�OB#\rͿ�6P\�\��p�YćG��۹3m�z8�v����llJ{��3��ퟞԎ�0>��~|�\��\��\��V��2Jt�L�\�=y\�\�\r�h\�X��:z�\�7�N\�(R��\��\�7��\���V\�V\ro��\��C4	��\�\�����Gz\�w\��z\�?\�+B�\�`>�g\�F鵈��#f�-\�V�\�}��\�p}a�\�\�g�i�7�g�RcH\�d3�\�\\Y�\� �L_1i\�Ń!H\�\��l���4`�|�@�눰̸k����� \r�\�Sj˭ե�\�\n\�U�\�\��ؗ�9\�,+���>�aԶ�Z$��Y�\�\0�Մ�1\�z\�Ջ��\�гЏ4h�ysۮ❶\\�x�魦\�+�̂��\�!(D��\�\�\��\�\�9ˣ��#i��^�\�}{\�0�;�Z$�h��7�/�Y\�k�\Z�s#�iq����Z�g\�dX\��_\��X?ܧ\�9�\ZUy�M)\�\�g!\�b��+\���%\'x��p�\���\��$	\\�`\�\�M|��\��\����ʾd�5�!�1�\�d+\�[�h���r:s}u��g\'�r�le[0\�zޙNB\�2���$q�\�QX�tX���<#S��YW�Ȫq�\�^�\��E ��\�\�\�\n\�>|r�[\�\�M�<!���Qe\�\��6�\Z�3\Zk�\Z�}�i\'\�uȖ��\�\�1�9�kyQ�]x�#\�^\\Q\�ʜ�g�Ďl�\�DigަL0\���%��\�P\�>�\n_\�˱\�ruڲ��\�ଙ�\��<z3ȡ���\�NG\�1�\����h\�m\�_ʹW�6�׹_\�uX+\nl�\��e�\�sc\�Y+�\��\�^	�\��7sM��ˬ�~kY6\�iQ�:�y>K�����\"\�;\�\�;�΋\�ۅc\�r\��j^\�\0|�W�\�b��0\�\�D��r]�{Q\\]\�ʀ�S]\�\����?\�\�\Z\�u�k�ޡ��6\�,\�\�d��\�a�\ZD�\��F!$(\Z\�0đ\�5�f2�;3\�{�df����/�EDM\�\�\n>�Z\�&mc]��g�δ�g�\�GV\�\�\���o\�\�\�\�\��\\\'�&!+N�9N%`p-����	ȎU\"�\�\�da\��\�?A�?/2�[�`^WR���8A\\�QZLI�jSI����\�h	�\�\�8�\�[��jq\"����N�\�\�k��\�6ېu�8���؇���\Z\�\�XR\��G�d;\�MZ+�(\�ݖv��\�Brb!��oĶ�*��\�\��3�֨PW��\�f˶)+\�ud�D-�6�dIl�6*�fA�=\�{;i���\�5)+��	�E\�ҶH\�\�jE�z\�J؝\�\�,\�\�C��\�*Ո\��\�*��!k%j��i�,I\�a\�[�Xc��qr��\�qc�M���8\��\�R�c��sk��p|f�J�|~x�v���A\�]Px�\�\�p\�ȇ+i�IT�\�0\�sՙu@;n�\�9�\���[�\�rΥ�\���\�� @��`&w\�\�A����ԭ�\�dd\�Q\�#\0݅\�ͱ�-\���&*O$����`\�\��^\�Ϟ�^Vsé\�i���y�\�d~e\�\n\�\�\�\�\�X\�	��\��\'\��\�z��SO:��{v�g\�Q�0�1(*�\�=\�_�\0�sZp�m�y�5��i,B�\Z�2��w�1��\�\����\�\�\�����i�Y1+�����\�q	ڌ\�?^?�]\�P^/�\�y����o?\�D\����\�{;C�Wެ\�v\���5x�\0\�؝\�\�J�g���V\�\�\�c�X��K�\�I\�\�z}厱Sᖰ��[�ץ\�I�\'�?��Ά��x_��^0cG�M�]���e��$!�\"��T#h��b��?�4Z\��{p3օ�\�\�$X]޳\��Xk�\��JQ�<�\n,��\n,9@\�\0g-~�-`!?nE\�\�V\�:#�\�r��\��Ql~�\�`\"����\�.k��П�\�F\'c�\�S��+�B֐ң�4���\n�bj��Nā3&\�l.�\"\�Q^<�T�\�m7y\�d؎.e\nY\�>\�^�����؋�\���6�\�c$\�Z��,cU.��\�PO���@��p\�7�v0�k\���8�\�\�5��q����:�N��*�q�\�\��>��q�\�%BV�ʥ�k\Z��پ\�}�\�\�58�\�8�r\�pb���-�`W/t�=\��� \rdކ\�\�jպZ��\�ʀ:\�*�I�r����3���\n�ˆ\�\��0��5$�\�Z)2\�b��\�UmA�\�@��p!뀪U\�h�b̀(�j�D�iԓ\n�}e2��\�tכu\�1P\0 \�p9\�^3\�\'�I\�\�U�5FUC\r	߃\�\�@�\�\�2!>�q�j\�X=*�֨5K\�o�\�z�Z)ґK$�p\����+�\�\\y\�\�ԉ�Ç��,PWQ\�/ԒM�&���u;��\�\�>\���H1���+�\�E\�0f�5Kz�\�\��	B����yw�\"0�;\�(�\�\�ȂkKW.\�H��E�\�~�\\?V\�S`)z�g�uS�\'���/\�\�W�ǖ`�\�K\��a�\0�a�R�4\Z9�\�ubw\�\�c`v��柏S��L��\rB�S@���6q�R]\�����yT��\�w�޾f�2\\3n�\��z�\�P:Duz;:�\"YpQ2ڡ�\�\�v�f�Dq���\��I&J�A��>QC\�/А:G�\��\�j\�wq+��%����\���2�5�tr+�\r�G\�\�I�̗\�p����\�t\�Q!�L������\�t܂\�I}u\�\�\�T_\\;5=H���0�*��6��?\�t�>2���c\����\�rN\�\ZL�˟�\�𵗎\�\�\�\nAq\�s�\�$�\�%.ސ]�+E\�t\�B��C\0\�\�\�\��\��ɸ9���C�\�\�Q�2�\�\�\��:��Hwqx\r��[	SDt���j��k\�|�,\�ϫ\��\�CXH���Q�����\�\�4{�?��\0\��Y�\'r�Y�b\�\����\�\�o�x�-\�x\�;>s\�w��\���\nxڂa�[�\�X\�@K\n:r)�\��)\�\�\�-����\��s\����Jnf\r�[�[�\�I�*�\��&��\�$\�8	��\�GG�5[ �9%�^�Md�����v\�{JlD\�S8kRv.\��?S�g��;hy@\\�\�oגz�\�b\�3�l!\�Y��\�\"\�P�s�*�~ڪ7\�3\�/��c�p��mU#\Z�&�\�\� v�+0�O\���\�fS\�H4�\�jz�#O�\�8�~�J�4:M�\�\�n�5\�6l+\�\�{i8+�51�\�C���Z��if��\0a:����\��\�\�\�y\�\'i�����Ʈ��:�Z�MI�F\�2����QAA0��\�\'��\�.,�\�CvawY\��.����@��\n1:�cH\��i:I�\�|\�~�\�� �M\���\�=3�\�w\����;\�=_o��	�I�.�;+t�*.\'U��|u�=\�0���\�	J�n\�}�\�}w���\�%�\�^��\��	D�0Ȅ��\�|y����\��\"��\�D���ў\�P\�W���\�\"��r�0u�7ðJz\�.p�\�\����\Z\�\�:B�;��u�o\�\�\�\\��\�\�RRۈ�}^<���9\�\�sL��Ce��\\-�\�F^\�ޭ�J�ޣ�ϯ�pz\�K\��ٙ=���bON���pf\���83:�^O��/>u}\�\�ZM�(mu�����A��ԟx\�\�\�+^\�.\�)N\�@�% ��\�KO�8\\��\�\��\�D\��)��\ZZ�\�X^��m1�Кt�����ʧ\�O�+IT����\",`\r�r�\�\�ʱ��r	�	\�/\�C�\�qs\��(\�2\�P\��\�1\�ca�\�~�\�窬\�\Z0G}3\�8�\�Q\�\�\��\�>�\�|.��\��\�\��\�W�\�V��<*�8<O��`��\r߂����=8�m��C�C&�~\�t�\�e\�7\�;_@�\�mWZzg\'Z�a5�\�\�q��\�mʯ\�\��^\�?�@f\��S0\�[x�;�u�\�\�{O3\�G\��Yn\�_[IYm��\�A\�/V��TUqb\n�\Z6W��J�\�0\�\�~��\�o\�,O�@�3��?\�\�%k��Z\�\�}\�ھ2\� v�\�W�!\�\�\�Շ>��\�lC�U��eEU��\�Z\����}�\'-\�p�+�\�	lD��B7��{�\��>�fF�<��\�U즚\�:z;eΜ�\��2\�Ώ�5�\��_`m��*��?|��\�Q��I\�\"\�\09<\�n3�\Z=��Q\������\�S\�Q{w%\�<ޚc+`f�U�$�<)I�\�\�k4�h�\�\�t�=b�X,,H��}\�#��\�\�:5�\��[��\�2�I��\�\\ek&\�\�\�6�\�d\�cÿ$\�/��؊�7�\�A@45�$VB�\�%\�Yc�ul)W\�\�\�[�2	�\�\�D\�R�\�ӜK#Hx&k�AS\�@z\�{��D\�{M�z+GDɌE�\�\�l���eF�Eߤ�03�f�=\�\�\�Ա\�\���)\�\��v�\�qj$\��R^�\rV\�D2\�͝�Y\�+e\�j\0p�\�\�:	�\�~EwJN�H�֜e\�Қ\���\��U�\�ӏH\�)Y8����G�s�\�\�\�좜y\�}o��ʷ�\�Y�ğ�p��\�~<4\�\���.\�?\��q��F-�+Vе�;Ѻ��U�\���\�G�s\�k��H�\�\�\��9\�\�\�x`��q��m7e�m��2���\�.f\�6�*H4��=ԥ�\�#w\0i�L �\�\��7|	7�b{S��\�p6u�ʚs\�ğ3�\�0\0��\�6p��S\�2\�).��\�C5Ֆ�3]��m&�\�!�y\�l�K\�Ű����\��\�\�`\�+0\�E�09$�fp�$���$��\�\�$��\�(H\\�\�\�/V=-ΝJ�N����2\�\\k��\�Q͙���.-\�\�\�q�<aJk�\�X�SjV\�k�\�gȌ��!��vq\�w��>g\�-��r3De�\�\���BeeE)\�|�e��%\�0\�6*&�d��R\�t9=\r�mpG�>�t\�kj4���%\�\�Ol	�%��w�@vg{w߀�^T\�\\���\�xBR�ۍdJSA/�b\�vv\�x�R�\�J��\�x�\"|��e���`��\�8?Q�O|�\0\�!��u%j\�>T�I%��\�K\�o*�\�\�\�\�k\r��[\�չ\�;\��\�}yZ#h#^�\�!\�|c��\�\��&�\�M���\�m))!\�xS�\�M\�W �C�\�\���$\�\�TJ�7��R;�\�\�%����+v�V�\'�\�;O\�\�|{V?;3ͮ�����+i�v�h6�\�Y�\�}!,Q\�,�z\��xs\�o?\�8����\'O�\�ftZIG��PP,��h�\�\�\\��s\�HЮ׷�\��\nze0�\�O�AAA�}\�?�հ�-�\0jf\�n\r\nendstream\rendobj\r123 0 obj\r<</Filter/FlateDecode/Length 6061/Subtype/Type1C>>stream\r\nH�|�iTWǫ���Ah-����\�	�-��HP61\�\�\��\�F����E��}wD�AA@��(��\�\r��Q�1q��sc\�\�\�\�L�0�a\�qμ�\����\�߹���\��W�Y�4pv�f�<1\�#(M�0v33��\�ņB��������O\��i[�n+\�a�\�)�@G\�B ��NSei�\�[�n�k�i²T�\�R/OO/�4P���;L�j\�5�	�9KB\'$ROiBb�	��\�Ld�\�\�a\�\�1o��aX�S`X���a\�6��+�7�Yb\�\'�&��	\��c�7�Q��Ζ\�,���P\"\�>­� BH�\�H	��|&Z!\Z��k��\���α~;)vR����\�\�\'ۥ���/ś\�v;\�\�\�\�=m/�q�\�ptt\�\�xc2=\�8ytʎ)c�UD=w�\�\�\�4\�\�\��ǩ�S�H,%!�3�Lz�F\�Џ\�b�T%��\�	��GG~�A\�oZt��l\�!�\�/\�Jo\�ڠn��u��3�Mrc�\�\re�+���H�\'[\�F�􇿍`�\�(�,.\�U�\�lLio\�p��9\�w�D\n�\"�ҧ8BTPj(1�ť%\�t\r\�@4�\�c;^1faqٮ�rQB��\�\�\�X\�n\�4~��h�\'�m[8����a5��U\�\�_\�=�\�97(\�\��^\�W�\�Sf�\�u�\��n�\��f\\�S᛻<8\�s\�\�\�E�I\�8�}�~T��\��%al~��\��Ht\�\��2&�S\�\�\�)V\�)X1\��ȝ\�\"}��T\�\rT\�\���\�\"�p\��@\�y\05�\�\�\�@s`\'w��|���\�d�\�0rF*n�T\�\�t_^l��VRW�#\��c`M�\�4\'\�˕ѱʓl\�f\�89/�l�l\n�/��\��ಝ:\�\�y\�dJWTTrr|LW\�i��̺\0\�\Zi�U\�	1ȥ\�\���\�1\�\�C\�6�w�\Zm�+�W\�paL��\��J`�|_���r/B\�|N<\�d�\�&\�\���\�\nj\Zh�P�)\Z��ҵ� \�\���/!t]	;;�s2�սm@ԙD[�%^x^A^�v%�/\�`5��8\�@\\A��z\��e\�+�\���������\�\�sg\�?F\�k?b�X\\�\�)�	\�m�ҧga-��\�\�o\��g?�-E�0�\�\���gN�Cؒ �椬�m��PKV76U\�cn�\� a|\�\�mmm.Wd\���қ\�\"K�B\�eN�;A_7Q�\�\��\�O�\Z\n1\�\�J\�\�៞ʠ\�qO\\\r�\�d��P_\�.+�\�!��ep\rG\�H1�\�Y>1�n\"\��$m��+mx{���D��8zE�#Z�f\�E���\r\�-�\�þ�\�)\�}�t{j�\�^��8�{=��U��\�o��O\��\�)\�>��K3�\"u�)\�i��\�����0��\� �6\Z\�2h� +����2��\�\�ԧ�`dcYcYw\�xx\�If�x�L��[Ή_;�B@��\'�a<�\�Kq@|�\��پ\0�g!#�Fnh�\�\�竮#\�,d�@��ןӱ�ڐ\�4�xɷ�	Ʃ�U-c���\�SW�\�����\�Ul,zH�%�?����pw+��қ�JR��(��l\'���A>����z-\�љ�*���#�<��\"�\�S�\�)I}�\�^�\�3��om����\��C\���\nE�]��y\�tO\0a\����\�	 Р�@2!>�>=��\'�ͳ\�1<��n\���\�\�51K��JF�\" \n��/��{\Z�F�H\Z\��aW\�C�ɱ\�!DFFg\�\�lj�ɖ+R\�\�i\'L\�N\�Գ���\��\�&\��ɭs\�H_-\�uU̥?��n�\�d\�!6��u=80\����j\�\n�@5(E�ܖ�<A���\�A>�9r�\�PS׻G��N�\�*�m��\�&6\�\�V���KN�\�!�\�s�\�)ܙY,\�P�\'AG7��ή\�\�S�W��\�\�x0�\��|\��\"I|+\�3\�1�#.~~\�	���M?L�\���l?7Rw\��]�\�A4�E�\n\�l.~\�PY��\�sH}QYz���\Z.Q` �\�\�ʛ�j\�\�\�\�y��\�\\\Z��2+*s8\�\�C�\�r��\�52�g�\\\�ۯ\�\�:a%�F\�D\'��EY\��5�\�\'o`-���\�8�\�l嚕���ŋ�y�\��1�\Z?�)|�b�)h���H�|\�|\r/	�9�@>�f�C<�C7��c��7��_\�J(���ZǙ\�\�\��#UML=\�_ ~z.��Ys\�;G�Mw�5yeq;z���m:�6h�\�\�CWZ�[u�vW\�\�v:m��\�V�#!\" ᕏG\�#/ _���  y��`uD�\���\�g\��Q�;�\�\�9\�\�\�togک�}\�=\�\���\�=\'*db�\�o(�\�\�\�^�\')\�\�Y�\�\�1�V1������-ՙ,i��BƐ���-HVB	cm��X\'s}��\�\��Ձ=.%MDC?dC�J�͆_}\n�Ҷ�(�\�\�lnD\Z���E�p�\�_�!ic.c\�\�UKbA\�ؚZ����9}�T��\��\��/R\Z�\�\�\�\��P�~�?\�30\�\�>\�|6b\�\��m��x\���R\�5�&AA6`!��VŒg\�\�\�\�\�\�x�\�ɣB\rڱ�!�Z\�\�\Z�sRZ~˒L��H\���%\�!�֨�\�h4\�(\�(\�n��(�zI\�ܛ�Z�N�x\�ck�{\�ꀃu� Mǣ�� ɤ��\�Z\�f\�N\�Y��%��b<\��\�\�\�Y�\�O����(e\����\��|\�\�\�9��OkQ�^�\���E\�y*=7\�,�%�Gr\�\�K��h�/�\�Q\�\�$;s�)\���ɉT��>_��\�&rR�\��\�X[�+���H��:[(7ʫ�\�l��U\��s\�ɭ]�� 	\�G�\� �\�Fy?Od,�t<�\�D�5y�\�D�\�Q!\r\��)��wi*T\�3�hS\�r&\�X�\�Cf\�\�}\"wم�\��� I�&\�\��\�_\�E�h�\�\�~\�\��\�0�S���\�л(�\�\�\�s,�gl�<X�.�H�5\�avc��%	�XD2U\�D)j18�E�9�lJ5\�q\�b�Y0\�(_\"�]�\�Zٹ\�>fH��Z�Mlϻ��S\Z��k1\��\Z�5˒�� ��|Z�Ⱦ4\�\\)j2\��4�8ŘdVsf�l(6\�,_�c?\�\�D�\�\�,7�L=\�0Eg��ЮH�Hl�MD\n+)ݒ\��d\�H6\��\�\rH�3Y��u�b�\�\�^\�#+	K���u\�%^:JYw�����X�\�&lÆ�N��\��\Z0��,&���Ti5\�\�]�V�\��\�lY~h;y����G�����\�j}\n\�=��&k:��~A\�(\�\�\�B�\�!O���>\�W\�\�7��)\�L�#7���Z�\��9|T?9��\Z\�\�h^Z<���1\�6�i?ga탿S�]�ex\�	~k\'\�8r��bjt`br G\��\�A�\�\���F\�鉮Y*��wD\�\�\�%�W�\�d~O�6Ŷ��\"\�W8X<�|�\�mTI�7 &\n����\�\�\�\�£ݦ�~�)ǿ˙$霍QU�h(`\�\�\�![]!_EPS?\��uJ\\M�\r�\�氇)5ը�\�\�R\�\���\��/��u<L\�Z�G\�\�x)1\�U�z	�,&��Lc����H^S\��\"�\�&�\�pS\rh�O\�#:\�6[�\�-L��6�jNz괲�H7L\�\�\�Vy���z\\\Z���E����\�a��\n-5xD*��\�ݞ�\�+]&{��\\.\r��\"]\�\�\�\�a]f� t\�\�u:\���\���4|��J�Q���\�\�EDZll�\�<V�\��-\�\�\�0Z��`,YH\�\�\�\�R�\�\��Z\�Cs�U�\� ҈\�\�GH7�|����s*�\�v��u^QtPh\�Ux�\�g+��r�ѐ�A��\�^�|8boS\�\�J��VU��\��d�]�\�TM1�+C\�\�`D�zg\�⃉\�s$e�)\�l��GM\�(|Xe�ix\�C\�\�\�k�i\�8\�\�Վ�r/|�\�r\�4\�$�«YV�~�\��E3�\0SK\�\�oI�vx7�_%&\�\rH�ohe�\��\�i˺ȶN�\Z;�6�\�ż����\�X�~\�\�\��wY\Zt�i㝟�\�/ƻ��\�>�*KVӉ\�\�/&��[\Z\�1\�˳(�o\��	��aļu�\�[��t���������;�\�Q6��\�eVS�\"�\���\�\"^��\�rۧ`�-\�.O;s*�\�\'�Nz\�M3/\�5Z\�7\�\�o��:\�\�\�*S���\����\���ڒz��U�\Z�REZGv��k�\'����\�h��%\�bWQ	��,\�/�Q�Ab\0Ç\ZPn�\�Ҡ\��\�m0�ȸt��{\�р\�fJS�X\�*d�*Y�\�\�t3\\AV���:2r���Z�-\�, X8q�v�g�h\�\�gX#h���\�� R��w�ҕn��ef�	q\�\�n}g\�\�56�����YloV����c�\�Ud��#�,_��\�\��!���\�\�;\�v�C��5�\�\�`_w��9\�Qk�D�\�\�\�ew�\�\��\�\�{%c�l���Ą�QIV�\�M�\n���\�\n�7�5s*8u�\�ۤVF������\�<��\�aQg�+:�\�~x\�\��\�D<(v:\��\�Z����p\�dw!u\�XOW���!Np�$5`\��r)!��\�7ٱ�ek%\�%K^I1i%˒5�,!K~H�S~`\�&�$��@%3}��-th&����j���\�NI&\��\�=w�s\��\��\�w\�v-f�x\ZNKB��@X\�\�˳\Z�\�\�\�Ci�p\�ޤ���a�\r/�\����Z�o\�-\'�\�o\�(��8k� \�7b;ɬڙ�\�915\���]\�U\�g3|<�\�R\Z�:\�\����k�aSoC�8\�H\�FZt1�N�\�*��K`�\�v�\"�\�L���:\�	�\�h5�\���>\�T\�M\�N��ˡk\�;rK���\���y�C\Z̯�\�\���1��\�͖j��\��@hd�$|�p�L**g\���M�;\\m\�X�Q薍rn�<:���nT�\�;�\�،\n��L\��/ �C\Zc\���G��\�#���0:uXo�͠\�B�.�(6\�Q�\�\��b�\�\�ܳ\�QF\�\�N\\��b����8���Bǈar�\��\n�< �F=�~}\�\�\�s{x*܊��%��~�o\�4P���NW��1Q�\�ln捼\�\�`6^�˾\�\�\��KDP�\0!�����1,�8\n[Z-|ś\�Y�\'\�\�\�D��K�����d�\�\�T\�\'\�B4G1\�|\�\�㕹�\��n!\�\��䆜�yj�\�/Vg\r\�l\�)\�(g>]���]�Ț���{W#��cy�\�¨ۮ\�Q�}m�\�ͽ��B^nf�\�X��.ЃD!\�6�b��S>�)0\�Y�M�&\�I)\�\�#/\�n�\� y\���K\�m��ɇ�dD]PO�\�><Ӊ)�e�\�a\�\�%\�;\�a�8X��C�m�\�(�?�C�����G\��N,\�$\�V;\Z\\ �\�W߼\�.\�ݹ���n!Yd�\�v�\�)�\�\��\�\�W#��\\3��\�\�\�\��F\��0��|\�\�,N}p]�Ŏ9Y�d��< a!�\��$!_#\�fZF��\�\�\�eN΁\�\Z�\�\�\�s\��y�?��\�MK�w~{\�\�Gۣ�^&Ç��j�\�񡮑���Z\�Z\�T�G�D�S*�V���\�$I\�f\'o����dޗc�M#u\�\��by^�\�\�W\�\Z�\�m}y6<\n�\��\�\�nF\�\�\Z\�:�$�:|�m`\�Y��3�Fu\�+�Uǵ\���\�%ySp�\�2~\�.�&N���1=8`�$@�M�\�vL\�6\�=b\���eTxB\�\�\�	걐\�lB�\�@(\ZJd%�\r�^g�&\��T��o�lAX��7��ȉ\���\�i\� MK\�v��\�j\�\�֊̒˂�&�h\ns\'9c-�#\�YN\�\�g�z\�(Z\�\�\�v�U\�7P\"�$k\���;\�-\�FXkc��n+\��\�a�	X!\�l@\�\�\�\�N�\�\�V��\�\�:͹��EC�������or�\�^+\�-ȍ�%(�\�5[%\�r\"\�\�%6�\��\�\�\�\�~Wش��c)��o�T\�\�I���\� ru��n�\�\�f�A.hl5ԱTFj:��\�\�ڂܧ�&g5ڐK{f�����\�\�*�b��h\�\�\��z+Ā\��RG�\�\�\�)�An@�������Rᩧ�u�J�7ӲD��\�d\��\Z\n\�gT\�b?����K^yW���J!ϊ�&Qj 1�o1\�A�\�\�2Lo0�\Zќā6�\n�Ɨ\�\"���=�沵Y<�{8\�\�I�\�y�+�	9<\�71&\�+b\��gF�\�}��rk\�\�\�]Ճ4\�NX\�D�\���\�ZtO~�S��̂A\04\�\�uj�bqB\�\�8[\�\�\�q�]%\�L‘z��׫\�l�\�\�s\�A\�` 8�ƶ��\�\��\��W�#��P�Ls�\�/%�}.\�\�\�_��oN��f\�q��׊F�΀Rs��\�\'i\�}s�Z��/�\�$��Om�k�2Qnp����x:�jeE����}7wW�\�o���\��p\�0]X�\�h�P�x\�B�\�\"!\Z��{\nKiQ\�e\�\�\�f���u�O17\�e@V\�*�ɂl�AyCA�\�ʎ�\�ZaD5�Xn\00\�<N�\�\\.׿��?\n\�o��\0ݖ�\�	�X`E,L�[�\0&�N\r\nendstream\rendobj\r124 0 obj\r<</Filter/FlateDecode/Length 580>>stream\r\nH�\\\�͎\�0\�}�\�˙\�(_\�;�Eb\��� 14R	Q\�,x��䠙�H!\�$Ɵ��z�ٵ\�\����\�\�����\�\�\��\�W\�\�i�y\�\�\Z���,O���\�/��t\���LoCwO��z�\�Y���cߴg��{�v���\��\�Kl7s˥�\�)}\�\�C�\�p�.��\�\�t�\�/i\�\��\�]t\�8�S]\�x\�U\�\�9f�Yz-\�b�^\�,��\�_N;��?�>[̿��g3\�t��i���i\\\�\�q:�,̂��+�+r\�<\�]3\�{�\r��k�S\�\\/���\�Zk�9��`.�=�G�\�\�\�\���xeVdc6d:=��N�_1��ߘ\�Rz�G\�z�G\�z�G\�z�G\�z�G\�z�GF��)\�SЧ<~C�)�\�}���f�9\�`4́\�\0s�9�h0:��\�\0g�3�h�\�7�Aa\�IoJ� �\�T\�\"2\r\n��7EoJ\���*=\n�ң�({�o�MGۤ7��f\�\�Л\�o�ۤC�\�\�I�F��o��F��o��F��o��%\�*fs|^zf�Ka��TfJc�a\�u\�	�㟎� \�X\�c��\��>m1\�6\�-\�U�6~\�|ݵsi�\�\0\0ɰ/�\r\nendstream\rendobj\r125 0 obj\r<</Filter/FlateDecode/Length 5690/Subtype/Type1C>>stream\r\nH�|�yTSw\�_��\"K屼�\�E\�\�� =��\"U\�\��2��(K�@B\�0���@@@6M\"(\�A�\�\�r\�l\�\�\�\�\�3U��8\�\�\��ǜ3\��ә3\��y��{?�~\�\�bB$\�Q\�>\��r\�Ju�<930J�\�LTLf9X�\�\�\�1͍\���\��\�\�h:��\�\�fz@\�d\�\�\�5�q�B�E�\�UJ�V��*ϑ\�\�=[�1W�Y�J�ϟ<O�R���jd\�dM�:/9i^\�\�\�	�l�,)9� D\�OHĄ���DL#A�{!$�� \���4�\��QA\�:�p\"Hb�G\�@؉?�E.�E�J\�kq�\� ~,�\�)\�\�\�?�c�{�\�\�\ZFvR�T%��\�YR)�rRԤO]D.;\\F]#]m�\�-̭\�}�{���t������ܣo�\�\�W==<<_L�rmꜩ�So{\��\�z=�9\�H\���\��q�Y\�S\�+�M�\��=#�\�o��\�Í>O�����d�\�gʳ��i�\�^.A�9=��\�\\\�\�����|!�@�\�&�<\�\��\��\�|0����\�Oȁ`?F�^L\0�i.�z~sX\�o��j=�\�m\��z�2\�\�1�\�\�\��\�])�I�:U�܊�k\��\�\�	�4\������\�\�\�\�\�\�\�NN\�T�$w)x)\�\�0��ۖ��c��x\Z�±��\�\���C�`2,��f��\�\�!<�\�\�=\�#��>�v��\�9M(�\�P{�q\\Ƞ\��%��L�\Zǣɜ�2���\����cYUg{c�hȨ٨԰Ϥcq1	\�-�u\\�)h\�u섽6\�\�UWs\�\��\r\��o�.\�9�Ɉ�ح^��#)\��\�?7@��\�4�w�_c���\�Ek�	���\�3r�r\�jgZ���Z��\�0d�$r����;�T�����܆z=o\Z@=�\�\�tV^�Ɉg\�g\��\�En�G{�+̍̏\�,u,\�R���5&\�2��7,\�Q�r���/EX4솧?�����ρz��)�I)(-\�4u���\�[��U�)ļa�\�F6���_d]��MY� ���`)_>��M��xV�֦��3oX�\����^�x.�⸭9	i<��<y��=oߧ��TC\�n\�\',V\��\n\��7���\���I|]e]\�\�\�\�~��j0znP\��!1�����רu<�҅ xCJ���~\�4x=Yw#��\�o|\�����\�xo;v�}�<X��VGn�\�|�\�O��;\r?Ы�o��`\r�ih\�DtD�J�]�\�\�w\�;\�\�h9u����˜\�,JH\��Ia���T�G����\�E�\�{>	\�K珞\�\����H\��ٝZs}.����A}\�0@�$~��\��GI\�b��J��\�\�2�>?�,�}wp\�o`\�x��?�1�(Yv\�\�\�\�t4���q.����y�\�Ӏ\�آ��C9E�\�t&�I\�y�HGG���\�\�54�7g�<��\"L��MΧ��j\�$v�D�u\�O�Tu��*�ryg\�)^��7\�\�ɘC�\�2sM�\�ipC�MbIm�\�PXeA���7��Օ�\��QMb\����\�Pl�/A�b\�g`{�mH��~o��|.\��x�P���m�4Ƽ\\>��s�R9�Gm\�\�\n3n�t�\n��\�,䈃\�4��K��=L~}!=$0V�\�\�!Z�1���\�|�z5\Z�01n��6>��~|\�rd�\�(�$�;ӗ\�\�J\nT�9`�[�\�*���a\�\��\Z\�qު�E\�\�t�%���\�5:\Z]\�\�mxfp4�P82�\�BH\�\"��?D@z�7��ʯ��\�\��O\�\�t�iEFMm!\�S[�j����\�+B\�xU\�\�\�KG����b��,�Wm\�SK�J�\�21\�\\�+�N�=\�\"�\�%��6�4*4�\�B	v=i��W���\�ͫE���5�Hl\��-lC\�=)%;\��\�\��\�&m;\�\r\�vrI+\�3�\�oa�\\)��薺tI�\�\�\nu|^��B9Yc���l9<�sK\�_\�\n⍉\�8�E\�*����7u ~*�A�CǱs�\�\"�e���4pG�v�_I}�EVat:Li4�E\�Y\�\0b��_\�$�u\�:����\�W\�\'�sI1\�R6jR\�[g�X�\�\�~��x-�\�9�Cp�Rp�\�N\�B95��fJ\�.}�d\�\��H	�Ttʭ)�lf�\�\\\�V\�\r5\";\�Ȣ.���R\�I÷ M�V�\�r~��\�&�\Z�f��?tWipS\�C߻&M\�i�\�=�\�biXZ\�	�2\�8\��\�\�ƛd\�˲[ғ,˒@�%d,\�+6ؖl�qL��\�4h�.CK�N&M��ozՙ^��I3a\�\�{�s\�9\����\�w��_�\Zc�N|�\�\���(W��g\�p%\'�}y\�A�а\\\�}\�}ѷ�\0\�=R�\�Ć;j\�s���07\\5�s�\�\� �\�,w\�\��B\�0f�TO\�)\�Y+uΆ×J��ګ\�\�r9�rQ���F�\�Q\Z`jv�X\���u�\�\�\�\\u\\4�[��_u��G�p��OF��ddU����X\�I��4Mq�Q�\�9�0\'Ȁ�7�x�f� c\��cK�;��\��vBnһ�����\��>��h-a%�A\�\�]x\�ʵ쁘uA\�\�\�\�\�M�v\�E\��ʣYH\"\�#P���T]Mc-eA�N\�\\\�\Z\�:e�ag\�|L(\�}B懌^\�m\�&vƎ���\�(]����\�\�c�i�W\'(�\�u	yQ�A��::�\0\�f\�@z�°�a�g\�;&�\�\�\�\�\r?ƣx/�ⱙ\��Up܊\�\�d���yh)ڂ�\�yh5L\�+Z�	_�����\�0y-BJ\�@��%�(�9w)HnvUf�+x?\������r�G�/�x\r���-�7,\0��]Àwt�\�A~v!�\�hVV�>&��{�d�ۃބ��\�OЪPVo�ON�5A2\�T������z�I\�d��\�A��\��\�i8k\�bX4�\�=b\���3V7��\'�C�~����\�]T�}�;D\��D\�\�3��\����-c{�\�k�D\�YYh��>>4=\�+;\�źK;�ێ\�\�&���RJt:�\� �lW�\�\�Y��k�Ļ\�#\�;\�\�9Y\�R��r�jXy�q$��4���\��yq�;pE��?w\�8Ԃ9\�\r�H��\�\��R�h�\Zlt��m%M\"��-�*N���n\�>\��\�\�\�篘����\�[p���\��\��?��\�\�\�4�c\�QG�\���\�ԙuJ\Z\�d�D?X�\�6�\�\��\�\�{xv&&�N)�P�Y��\�C�\��s#\\Ɗ�3*��C�p\�\�<\�#j���p�uMX\��\�\�:a�\�\�\�w�\�d;��t�]Z�\�ZG��eP��\�y$쀫�;�	%VO�\��/Go\�n�\�j)�0��\"�\�:M�������ک�\�0\�\�\�x��%\n[tN 5;a��.���ߜ\0O\�\\Wy�\�fwQ��\��$�\�Q�k�\�Q\Z	l����;\�ʂ�S(q��|��\ZiǊ\�/��{y�ZA�\�\�(\�jp\�mfj4fu)�:�����i�\�BjE�R�4P\�U�(П Ԑ}0�T}Ή\�2Y��x�/��I(Ww�EyK\r�B{q\�;�t�ŵu]3�30�D��^!D�p�R|},4\�[=�w_\�\�	q��Lj�\�pM\�f�0�G\�\�)\�_:x����-�%*\�y%\�\�Bweߐ;�\�\\\Z\'+��\�n��yo�p#�\�Wk+������-;:-\�.	L\���̨��\�#P\"(�+�\�2��ǵ\�N�\�%\"/4�3�{�Wϥp��\��od̕qp3�0_��->IT���)��\�t�4\Z\�JY�vQ�Uxa����\�\�\�1\��q\�MD���Mk��h74*\����\�˩ډÒc\�9\��G�OF��\�Hg���ST�Jm��.\�*\�	u��C�j7�>u�A��Y\�E��A�\�n%��V��	/8b\'ʬ1S�A\�4c�=ru9Q��Q�FA��hFa^��a/�ſN��[�\�\0��V�\�\��p.�3�\�#�:�i�\�d�����V�����{\\��8.=R�����.�o\�-\�V\Z�5�\�\�����g^BV%�D%-�	\�BxK�~\�Э�̥\��7J����	�?\�2k�\��\�\�h����s�\�\�\�G*�?\�19ڙ�\�mڊ�r\�P�M\�F�T\�ZJ4l��U���Y�\�;p\����M��s�\�C���\�{�>f\� ikg\�UD�\�#�2!����\�[|HrhO#7srox-�|�ޅ/\�\�|_\��ʐe\��\�!%\�lj5��T�k��\�;\��+;&l�]��\��\�T\�u?)ڗΙ��x[���{}�\�|��\�O(r\�u;�6��k=	P\�\'\�Y��\';O��f��\�s-\0��������ʠ\��:\��;{&W�\�\�\�\�\�z+\�?�+�\r\������F��6>-\nR\�Cq�{��$��/��\�8�B����\"l�\0Ė`�t���:^Ssį!\�`r)�����	F\n\��\������0��^|�\�Kv{�^DD�\�h\�cȶ�E\�c�� X�\nŖ�\�\�r��^[my���B\rĄ����1na�,.&:\�\�r��8�D\rٟ\�w��\���\��~�/\�q>���K̈́\\c\�,�\Z\�=c6�	f�\�BI��h�J��KJ�Ү�_ax��Q@ނ8����f�}\�Au�/ľt���(.�J\Z3��\�x�\�\0�v��\�&\�0̑]U^m�欚�p��J�-�&5�\�h��,:��N�\0��NgzG�[Ƀ������\�0$\�;&jk�V\"ӁU�\�L\r$F\�z\�ר��\��2��<q�\�\��nS�\�\�_�^ ��\��_:�\'\�����\�z�vEZw2�|�b���\�R\�TU+xM\�\���\���y�����\�\�ԉ�Iii\�\���£��\Z=�Gh��A\\\�ھVo�� \r\�=^V3��Y\�����{\�ޕ\���䮏^?�~|`o��:�b�9PH���U�S`\�C\�>y�\�I\�>!f~~>Z-\�rV/̌JC�d��j�R�C��\�0\�6#��f[��\�D�w�\�\�VBl��u\n�\�TL$�\��\�Y���L\�h��3\Zlc��PW��\�\�\�*\�\Z�[�\�r\�\�䃫�\�=ǉ��B�\�/\�2؁\�`\�&�\0���K�.����lLm\��E\�E)\'\��\�`�\�\�L�B\�o�9?v\�\�W5L�2y�\�\�\�\�l7��\�u��}��K����L\���6\'\�6�\�J���\�;3����l\�;�9T�|\'\�<��4UpJX�\")qzJh\�Ey�r0R���g!��\�1\�c�\Z�JE�\\D)kg@;�\n\"\�r�D���\\��h\�ȼa8B$\rdLҼ Ш�?Ǯ�g\�`{v�r�̦e��\�+C����|g\�Z�\0\�9gD��R\�\�[����Y4�ҥ8�SaR�]�y�X\��\�:	\r��\�5�\�6�Z\�68lKr,z㻤D��Ck\�!\�=Ѡ\���؋�ˁ����[\�4X�X%\��d\r�\�H0\�o�v�\�겘]�9��s`f�^A\�\��[\�4\�.X\�@,KJ�t\�j��NIr�c�n����\�vqxRJ��\r\��UF�v\�F�}\\h-f��\�G\�oM�x�\�l\�� ��+\�2�Ѭq�0\ZdO��\\��u�d�!\�=:���W��׼Vh8�\�\�%\�f)\�24\�\�j��oÃp	L���2=Y�&zj���\��\�ŀ\�C\�z_]g!�r�\��uv�VF\��N���fK�BeH�&�\�hW�x\�\�z\�l�X$,�n4Izs�ii~zoi?\�\�\�\nax���\�\�\�\�\�\�Z�QE��8�Ecf0�C�{�[S�\�\�`)�\n�\�L\�K\�\�H:�H��yL�Hg;��+*�\�鑷\��@Twۋp`^��y]Qa�8ƅ��\�w$�\�:����\��j�\�*Z��;8xc�\�c�G��\���n\�Sm����]�\�0vr)�\n�td(f\��[�\�|:3J<�}\��g\�(�I��Ù峙�����cV\��V`\r\�\"k\r��IL\�k%�g?\��v�W��\�%��B���\�\�\�p\� \�z-̛�茼p�:\�^���n��	\�\�ݡ�V�4}\�\�t��\��Y��k\���P\�P\'�_\0�3�\r\nendstream\rendobj\r126 0 obj\r<</Filter/FlateDecode/Length 559>>stream\r\nH�\\�͎\�0��y\n/g��]\�;H�ET\��\�\�H%�BX���\�A3��B>\�\��ˑ\�t�\�l�vr鏱�warǶk\�p\�c\�!�\�.\�״�toͿ�y?$i��]�p\�v\�>�*�����i���U\�\�s�~�0�\�\�=�^\�]��\�\�p\�\�2�\\�&\�D_�÷�9�t��mb;\�^\�\�7~݆\����S�\�p�u�\�)$U���\�\�LB\��\�o\�a�c�g?&U�%��e��^/c�����\�\"�\�����\n^�\�w\�d�/6\�\r�s\�GR���\�<eN\���\0�\�,d{�+Y�F60\�J��t+\�V��\�����H*���A\� p:����A�����\�A\� p�y���G�� 7an�܄�	r:�=34d\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�G������������������>䣬����(�ט��\�u��\"e>�T\�\�G\�k�\�}�\"{\�\�\�o�7�������\�\�o�7�������\�\�o�7���Ud9�_�d�/����eޠ����\ZO�q\�\�q�G�|\�\�{��\�\�\�\�4􃋣p\'�\0��\r\nendstream\rendobj\r127 0 obj\r<</Filter/FlateDecode/Length 3324/Subtype/Type1C>>stream\r\nH�lUP\�\�f\�~ \�\�:hπ��%�fe$\��2�?\�̢��\�5�eU\\K+� �?~���+w�,V\�\��Ԧܤ\�hT��I�N\�Ū��l��W\��^�=��{߹�E!8HEѐ���tq���\n[�-1�\�\�Xx�ňڸ`m|���\�5�7HH��g$|�z\�E\�\�:Q\�/rdfY���\�5�u\�\�\�$\�dK��\�\�p۪�-��5.KVuC���q�eFRRr\"�\�~ǒ^Qa\�[\�\\��:�\��N^u]��bZV�0*\�\�t�	�ȇ$DH\�hQ�b�\"��)��(\n\�!YRD!#DX\"	L�\� �0�G(E�O\�\�p\�,N�\�f�FPfЦ \�M\�]\�=\r\�>�B\Z%\�H.\��T.�=�~�+dgCƇl\r�6t\\\�\���1uDɈ\�\�İ�a�\�^�����!\��2\�7w#�\�\�\�~\�y�x�_{گ�#�\�\r\�=u�r\�\�||\�@\�۹DZh\\=X�f�\��f�Q{�=zΔ�\�\n=В��\�2�\Z\�\�Z��/�C$J\�&;-�\�:I\�\�\��\�\'��\�Zn����U��\�&d��\�D�:KN�\�<ʤ-��r�R��o(Frl\�0�)��D�����\�D�r\�MJk!F\�&�]Es�R\"���%u����b��T�1GlC�\�1��\�\�N\r[_��Ed�:�\�|\�+)؈x�K4AV�����G�x��z����\�1ό��4�:�hMɣwU:\�h��!Z݁4cIÑ�ft���-�O�T�\���\�_gU\�N\�k�x�\�p꾈Җ ���{$ȴ�x/MD�.ih)L��c�w\r��t�\�Oc5\"a\';��8\�\�(\�8�\�ǫ�\�?`\�\��n6���Ȅ\�	)�R�)J�Ú\��M۞C:ڼ�e��v�\�\���+\�Z����=fëd�c4�YRU\�\�\�E4\�h�8\�<[xHW�\r\�\�A�̳� -��p\\�%\�V���L�$\�`\�z??�TDua3�\"U\�a#��q�SN��k�\�f\�޻Ka\�+|��\�\0\�hm>\�yxC�jx六�A?\�%\�d�{�\�U������8u7\�\Z�\�\�\�3\�j\�޶ß�mj>���/U��&�v�\�Q�Cxj\�\�\���\��$�P\Z�bAѤ��\�hq�\�\�\�4.�	���?Ƣ�JQa�\�0\�i0|�Q\��\��3\�Aՠ�:v\�\�$\�8\Zu�&Q<Ef\�\���G\nz}\�\Z�kU�\�\�h\"�#�Ka�\�U��vs;~|GG\�F��\�m��\�v\��\�/�b\�S��삀�Y|@)H\�w g%E�<Xm��E\�\��U\�\�o:Ѭ\Z\�\\\�:s\��3����9dQ\�!\� 3�tv\�\�\�ꭰ.v\�y\�\�ʼ\��M�\�~�\��\�^]~dhc��\��\�;G�?�\�\"\�\�\�Q��XkJr\�u��X\����_\�;[S�zP�)C\Z�ޠX�I\�R)[%����3U\��N\�V���\�\r\�yW\�LX\�!ό�\�ަ�n\��u5\��\�]^d�<��ښ�*����H@z�	w�]B=y��|\��x���K�\��\�>�n$q;���_񯼌��U2\�Fے\�\rݧ\�6rW2\�\�\�\�U\�\�\�\��\�Zyd\rM\�Ak\��Uӡ$@ުe�V��H��!\��\�P&J�tT�@�\�69�u\�\�y^\\^�p2󆣟���-#�\�1#6!�e&�\�\�I߱\�[�NG�k�Y\�\�G�6�Ïqi��K\��T�\�¢ywhD�y\�Qi\�>׮vS{Ǟ���ޯ<�b��9\�4&��\n�ī��j\�ЗK��lq�\�\��g��촪��$-\Z�#,F9\�����\�\�ա6\n�e1\�\��T,+\�zKx��\�0\�����2\�\Z�_\��5H\�I{�/�nf���\�I�\�\�\�$�\�\�`�O���CN՘DVy&_l�g5�b�\�b�\�����]��o\�Z�\�i\�\�r��ԟ�\�\�5\�\r\�ݙ�\�;~�\��5\�3\�\�\�k4�&RD6���X��:}\�~����B-�2�h��&\�\�_�\��c\�斖ӝ{�\�\�n�\�\��g,�^\�\'��Y>�Y8yWv\Z.h�MF�>{�w3���4���v�K\�\�K\�)6��\�v\�#f�`\�\�\��ǝו\�lF$�\��q��c�b��XqM]��\�m\�?�x4���?\��\�P�0X\r��\��Q_`��Y�\�|VmLg���/\�\�M�\�]\�Ώ\n��_�\�H#**��\" *h8Z\�\�\�CP\�DO\�NO�BEPl+Vm�FM���5Z�6q��v��6iL\�&o2�;ϼ\�<\�����Js3ͮN	d�\�y\�ۓ\�J�$>�ֵp�H��j\�\�a��\�q$\�\�dPK�B+��2��PJ�J\���B\�\�\�\�\�\�T�\"H\'\�f�\�Ɲ\�Mr��8j\�\\��+	\n27b P���\�e�\�z�]nי/�%TsI�̹�jILz�B��\�\�RI�p�L<\�\�/\�BSQ8�h���\�qI����\�\�C�����f>Η\"8��$)��\\\�qWk�˜%���7yx\�ޅ �!\����=�o��\�\�:v�\�\�V\'Q��Ϭ\�gM\�\�\�rZ<jɝJI~\"\���&Y-\�VB/\�EB;� z� .\�S��\�m䦧��G\�\�!\��\'7u\�\�}\�B�T�Ʈ\�7Ħ,\�$YZ���y�+�V\�{\�¦-\�����\�\�\�EM�\�%\�POʨ\�P\Zz�\��v\��ث\�&w\�\�5��u`�h�JS;t���Ĥ\Zb�\n_Rr��\�)�\�<\"\��>}`��\�\r����Ş��\Z(`��\�\����(\�:\�\�\�\�m\�l_ȡ)\�ط�E�i�m\�V\�\�\�\�uN\�c\�\�\�\\��\�W�\n�Aa};\�3f,?�.,\�ǽ\�\���)��^\�\�\�$\�X�\�fp#}Ғ\�G����\�TRAb�D��o+�iV\�1�0\�G��\0Ű.�8\�\�\�-Ñ�k{�kA(\�\�\�x\�@�\n�T\r���RW��\\\�a��\�\��	C�\r�o^O\"���a\�M���эK�D`�as\Z/��\��*�~s�A�n�U\r\�ӄ�\�7\Z��x����\�Zc��6\�O	�h��\���\���}<P\�e?���E��o�-\�R���@�&\�$W�|�S�l+��.\�s\Z_\�F_pn?�\���k�r\�1�d���>\�c_\�\�+[M��W0�阷ځ>\"FL������G��\��=\�{��\�\�))\�h3%\�76fJ31�I~�s\�KQ�9\���0�\�cb\�˅\�s�� L\�vX\�Ufqö�#2,_�L_C�-F\�X\�\�g�����v/Ԁ\�jQ_�\�!\�*\\i�\�)װ|I4d(D\�>.��o\\^\�\�$�m4k8��g�I��(��\�*r#�6��Qx��dg�u\�zjG�t�g��Mf�o2��^���w�a�\0�)-�\\\�\�\�a�P9ldU	\�b\�)�Ϯjڮ\�!�x�\�њ�uƳsq�\'0�A3\���\�0�z\�\�c0Qx�k;�\�ʐ\��A�0o�;F�\r�BHvo/gJ*��2�fS͞\"ùJW˶vQ�� ���C\�n�p�*�{Z\�0���,�:8�~\�\���F\��\�`���10\0N9u\�\r\nendstream\rendobj\r128 0 obj\r<</Filter/FlateDecode/Length 463>>stream\r\nH�\\�\�j\�0��~\n-\�E�{0�4i!��a2�\0����\�6��\�ۏ�O\���|ƾ\�߱\�|�\�\�~6�\�8��0�S?t1\\\�[l�9�s?dee���?��\��\�LY���\�.�\�4fum�_\�\�u�w�\�\�cx\����\�\�\�\���h�\�m�>\�%�)\�zm�pJAߚ\�{s	&_ƞ�]:\�\���4�\�\��)�j9.)ӎ]�NMb3�CV\�6�[���0t���ǎ����Y]\�\�H��\�\�\�yޒ�\�y~%��\�\�馵e�E�-\�%ؒ-ؑX\�V��\�c\�c7\�\r�����c�C�c�C��d\�ìc�.�]�x:{8{fzdzfzdzzzxzzzx\n;\n:JE��\�\�s9B7��0S�)̔%�\�݅k!Xy!��\�E\�E\�E\�E�.�u>+��RvTtTz*<��\nO��\�S\��Tz*<��\nO��\�S\��\\!�*ʅ�l�\r���5\�d��}{�1m�\�5[�:vy?��7q\Z\'���\��\n0\0�\�\�:\r\nendstream\rendobj\r1 0 obj\r<</ArtBox[0.0 0.0 585.0 783.0]/BleedBox[0.0 0.0 585.0 783.0]/Contents 2 0 R/CropBox[0.0 0.0 585.0 783.0]/Group 68 0 R/MediaBox[0.0 0.0 585.0 783.0]/Parent 101 0 R/Resources<</ExtGState<</GS0 131 0 R/GS1 130 0 R/GS2 55 0 R>>/Font<</T1_0 82 0 R/T1_1 137 0 R/T1_10 89 0 R/T1_11 87 0 R/T1_2 134 0 R/T1_3 145 0 R/T1_4 148 0 R/T1_5 84 0 R/T1_6 83 0 R/T1_7 80 0 R/T1_8 79 0 R/T1_9 85 0 R>>/ProcSet[/PDF/Text]/Properties<</MC0 65 0 R/MC1 66 0 R>>/XObject<</Fm0 8 0 R>>>>/Rotate 0/TrimBox[0.0 0.0 585.0 783.0]/Type/Page>>\rendobj\r2 0 obj\r<</Filter/FlateDecode/Length 8135>>stream\r\nH��W\�r\�\�}\�W\�#�a\\�L\\���\�\�,kq\�JI�\��X.�\�\�\�\��\�\�B�+�H	\�\�}����_\�.S�(dOo�~\�]u�f\��\�e[o/f�\�z![\�\�|82o�l��\�\"dQ9+د�\�P\��\�\�qm\�|\�Jca�{���\�\�#��O\�ꀙ�pd���\�,�\�9�vo-|{�������LمƎ��Љ��jh\��5\�����\�\�\�\���I�q\�\�۷o�\�\�\�Z|�߾�y�\�u��~���r��]X�ћ7���\�իV\��\�r\�xђ\�L.���\�\�\�gGA�}o\�\�޳�\�ۭ;�\�\�ve���\�V�h��P1��}2l\r\��_l��|Ǐ|�-c^�\�\���.\\\�	\�scz��O��:�|�\�G��v�`]�\��\�ֿT\�B\�E3��f��4��\��l{K\�\�\�\�~�	���\�ҟw�x���iP\�;\�-�y]���ٙGTǕzK�E~\�frr�4/Y,�,DQW�\���R�G7�\�\�t��K� �{E]6�\�\�Q\�V%\�\��HX)��\�}�p#XU��Eno�\�\�A�nJ^��<��\�i�cթ�E\�/\�Q6Yb*8�\"�Q�@\���\�8`\���.\�Y\��<\�!4#���\��H	g��ϡ_\�t\�\�§�\�\\X��(1��C��\"���\�`�	��\�Q�Ǵ޷��\\�}�\�\�2�,2�\\\�\Z�-L�\�\�z[\�\�(\�\'\�\0xxB�&��\�i�O�W�\��	?�\�7��8r&�\0��F\��g�>-�����s�$\���iW\�O��,s�\r��F6u��\�ka\���.\��j]\�3iO�3��\�\�A\�*�\�P\��\�ɸ��r\�\n��ns\�n檂�:�D\�T�}��Y-Yw���� +�l\�l�Ȭ��u\�\�\�4yV\�:��|X\�򡲱Ϸ\�uXeS��T�a\�Bːf.j��3\�\0\n�����9:��m��G�\��_\"�`i�Y���\��I�گj\�=��}L�\�+�e��H4v�%-y�\�^V��u�W�VA����\�>tYc*�J��:p\�ԣ��b\�+\����w\�u\�\�\��*��\�^<\�`�L\�M)\�\"y��*�p%�`��p��P�frG\�~Z��h�\�6\�\�>AD�,��\�\�]p6u\��U��\" �J^붖�,\�V�Nҧ6J��\�:\�Y�\r4����1w\�)���H\��ts��\�\���)8K�\�xה�\�K��̱	d��s\�\��jr:�EuHk\��9��\�4XJ�%\�hz\n�\�\�\�`ɖ\�/Y�ve�8d�D?\�V-\��C\�d@�\����\"vCskz���\�\�XM�͒�i�~\�jD\��	����p\�7��\�\�-�\�\'Н:-*J{\�6SKeH4yIg-�\��P\�)�G)�:-`�g��򈾪N,m�\�_�&\�\�sڻ1m0�Fqd\�iI�[g�\�\�ljQ�\��@�G�y\�9\\\"\�\�q�񝼤h�Z\��g\�ğ`�K��\�sZ#7�g!��9�%b��h���\��\�F���玡�1�B-j\�\�\r�׾��s�{c�\Z�<�F!\�=����\�D�\�Y���He@��Jg�bKH�R�$\�\�8��],�#3\��ഒFAŎ߁\�\�\�:\�-�X�Τ\��+���jז���B��%I\�(\�\�4�-�_U��5;�\Z\�6�}͚\�3\�p\�)Zw޵�\n/�\�P�Jia�N\�� \�Р\��`�զ��Z�Ma�\���!`M\�O�yK8�.:���3D�%ؗ\'�P�v&E\�nR\'\�jS�z�d\�1���(�4�tz�\�\�,%\�H\�S\�HdH�Ђ\r�\�ǋN\�-\�*�\�I\�\"8\�7�����\�\Z\n�Fw|\'��rKR�Ȼm�s�\�\�fbW-�\0���î�\�\"�F\nZ,+\��<�X�*\�SZ��zI�\�\�\���\�M�\�\�ٞ\�@\�\�X\\Z.��\�K;X��0�\Z�\�#�R�)\�$�\�O#5\�ۣ\�\���\�{\��e@�;S�\�L4��7B:�=d9\�S��\�\\SRa��ײ����&BOW%��\��\��R\��\�\�\�K�7)��B1�T�[\�\�T\�P�zR�o\�O��\ZB��r�\r�{8�V����0\�2���L��^1. g�Z��\�Jjb!b%;\�4Έ�5\�\�\�S��\0 ���l\�>6uJQQtg\�>�I	:T�\�U�\�&U�����pbG�\�\�*\��!պ�\�h\��\ZuQ��ӪV7\�Gu\��xB�\�Bq�,X@=z,�\�C�D���[-ݪ�\��v}�h����L<��l\�\��\�����\�\n��\��;�eB\�q�8*��C�\�{\n\�~͒2}b\�G<\���$�f��\�\��b!�4���\�+Y��\�\�Z�J�*��g�ޅ	��JTCޘ�u�����\�G�_\�5̎\�\�\�%���9۟�\ZD#���\'(J:\�7J\�\��\nx\�\�p��\�ϳK\�|�Y\�׺\�\�\�^9���N�揶�WYfvA+\�pQ��Ԍ\��=^\�[\�D�\�\\����%=0J�+�\"��r�\�\�4!͓�����H��\��\�Dr���?��E*-��\�w���Ҡ�ؐ\�\�}�m\�\�$xY]�L�\�\�K,:yO�l�Fw\0�4�Iҩ���\�yR\�n\"\�\\IK\�\�a\�;/��\�\�\�z0\�\�0�ۼ\����nJ	�\���H�<�^\���NV��;��	�>��Dl�;,ƨ�\�A���\�p��\�]�\�&t\�\0T\�\��\�͗��e\�¹\����u~a��޲ۙ륾r�)=}\�d?p\�H[�iɠL\���W\�nTI}/i�\�>���\�}�Rm��F\rmF3�cnCQ\�\�f<�4�\�\'\"2�f-6\rm�P\�\�\�%Ή\'\�����\�\�`\�;�\�՚M<l�\�o+|}uM�/�5�;gܮ]��<\'\�\�\�����?�\�\\m�v��;6��L>9������\�#n\nA�y�q�3\r�$\�(e\�ZR\�ܢ.�\ZV\'}u����k�\�#\�ٗ\���\�\�Z\�n+l�V\�\�\�y�]+�Ɩ\�,�\�\�:#%`��Ҭ.�s\�n��(���O�0@|�_i�(W\\[H)\�6\��Q��_j\�t�\�\�;ĥ\n]Q\�4Ōxyy�B�\��C��a?�i�h\��CK�;�i:v��#\�\���\Z?\0jw\��oJ\�Yۋݦ��\�w\0u�\�ǹ����? �\��eq��\�\�\�85s\���\��r�_�(\�\�\�\����\�H���ryZ��g\�\�|)�\�}]�X\�k\�ɢ�dTAB\��3����i_r@�^�O��UP��\�!\�}M\�\�\��,giGς�2�\'�8��!ԯ\�\�\�jg2��ʫŒ\�\��\Z��2!6\�\'�\�|3S�Yz�+\�n7�f�\�yn\�K�ɬdg�x8�?\�A疳\�\�\�n�Qv\�h�UKŚû\�\�\�\�\�\��ű\Z.�g6\�{�\�Zp>\Z�p���\rO�\�\�\�u�\\��8\�ȧ�D�&Fb\��\�cd�\�Ǉ?�Q�{��\�\�\���\�͓\'O��ϟ\r�XT��:\��Gk�LAŏ8f/1\n.��\�\�\�p�2�h�\�ת\���\�7�;?]�W`!^^J!Y\0�\�% :��h8|�L\�>�N\�\�A�$\�\�H0G�c\Z\\2�M�7x�l\�/\�\��s�Y�~\Z?u��\�/\�+\�}\�\����I���f�1\�\�����V\��>\��S\�B+ktG\�z������e��TU��%Q�]��ť�\�\�W�\�,fn3Fl\�F��\\εC\r�2c��\�=�\� �:�\'\"��K\0\r\�Q0jT�\�}(����\�;�\�Lj��)\�\�=�Sq�\�C\�8���\�I;�Qo��\�]۱.\�\�AH\��\�F��\�0\�\�W\���0�yc�\�W\'e\�\�\�\�Ui&�J���{\�ۼ|���4f�\�\�L@Y\rFv}#q,{�\�{�zK^rb­�\�a�T��\��>��Euuށ�\�.0�T`-Y���=ʢ?\�e������\�1���\�\�\�y�$�W�[�mܤz�\�XPV\Z,\n�\�R�\�&��(\�}X\�8F�\�\��\"y�\�d\�\���D\� �X�&2��\�(\�OV;R\�\�䉝JBcQ\�q\�\�V��\��aB�����{\�ƷS:�\�z\��o*?�����P\�\�\�\�e�-\���j8߭\�h(�1�qP�}��g��b���\�1fk����g1]�\�no��Z\�c4��S͎)&\�N+D\�\�Re�F�N\Z�]�VC_\�G$������G\�!\�\�N�\�D���l{;�oѵL���myK춭\�\�>\�\�l7���*|��H*=��]�в_&&t.\�\�&6ƍ\�!�\�tiX+��&\�n\�/U\�\�K[�{�/�AwK\�\�=�v���c[\�\��H\�脭#�2\��+�\�}\�@YF\��\�n	�fe`�}�����5\��\�\��\"%�\�T�pmPނ���$���Qm\��jc\�\�\�rѦ�l\�#K2u�W�Ѫ!1\�(H\����+�\�p��E\���=�A\�h�.�!K�\�Uj�R\�/�sX��\�� b�\�=�\�\�s��.�\�\�\�\��\��74���\�\�Ӷ��t(*�[59\�իZk��W��6���M-]���\��g�\�\�v}��\�]\������s�\�m���mJt�W�\��\�`\�\�h�\��iO\�c�|�\�\�2D k��Kd&b	Z\�\02)չG�\�1Z\�P\�JDtv��E@\"(��(u}g\�ڎ\�@\�<\�Z�G�\�l\r���|\�\�v�&�E�\�0\�\Z=�0\�5ӂvfL�\�\r�2\�e!��akYr8\�g�Xt ���E\�9��Y ��V�\rg\��\�\���\�\�����\�X\�SI\r~\�-�)C�\�\�BF�w\�6x�6RSA�p6o�R��3�\�\'!�\�Q-\�l\�\�\�\�\�L,\�\��$� \�\"����a\�\�\�\�VG�\�!�m[�\�X\Z�I*Sn\�\�l\�\�xD\�l6\'��{R2k�K�tO��xC:�\�\\\�^�(\ZZ&�7i��\�Z�{r#�\'�\�E ��ћ�a.�C�*Ps�]ê\�\�+x\�l�T;�K+�2�췆\�­(m�\nV\�\�x\�\�l�S��\�\�/��%�\�SZ���(\�Z�\��7M\�\�K\�\�2Y���$7[\�\�J1U��\�\�p\�D�@�S\�\�\�52D<!\��gi(\�)Y\�i.c�\�ḵ��^\��p�m}�\�av�\�\�׳ãOjx�\�w>o\�I\�>�N ��|(�\�\��\�xP�\�##\�\�F�\nf\�k���11hv0\�{h}\'\�\\\0p�\�BVԻ4&\�?(�(\�!zE�\�Q��2��d�{K��/ 5&\�:Y���\�x\�\�Uޔ�\�\�A\�S\r8]uw�6\�ID\�P�$�\��b\�\�\���vZ\�J\�z�M�ǀY���\'� ��\Z9��\r$\\��_0M���J*S�\ny������؃�\�\�lb��CUBɨ��{Y�~ X\�d�\�u)���F~�A�=����\�H�z�+�\�0�Ń\�2�a�d*�	7-N뺶G;\0��ɒ�~+ȡ\�2\�(�\�\��X\��.R�\�({�hv�xd�uW\r#�G�f}��b]ސ6���\�.څ\r�F�Chs���\�\���2YQq^ho-\�Х�:N�r1��-|�G�5Q\�ބZ\�Z#�\�=�X�3|*4�M6\'��\\�bV\'�\�\�Tu\�/�s��Q�i\����A\�7[5F�P�7fI\�}\Z\����\�akA-�$�@�P&k \�迊��X6�(AkȒ�ʶ$�Re\�N��jX���5\'ʀ\�\�\�\�M�\�6��3\�0�HYQaRZ\'\�G�J���\Zҏ�\�\r|ѽC\�c�5\rr��j�\�\�\�]����\�����8lHu6�\�W�$�2Yy#+�T�ӥ\�fە���Lu+j�DWL��$��/1\�\�䦂g�f\ZW�K�\�^\�ʑ\�Fԟ�hs\�`2q\�\n9��%W��	\�\�\�\Z��\�\�(T5��,\�:$��J\0y��ѱx�k��V�PM\�l��}b2*\�,)�g[�m\�sX��7	W	�m\�\�1�\��0U�m>��\�\�}}�\�h[�������\Z\�\�>�\�,\�nV{�0�\00�J�V\��y\��\�|Gr�&4�|x�\�\�<Z��[���(L�>\�2V\�9}\�\�OS˶\�䔾���B۠\��0r�Ap�`\��\�V�� b_I\�\����g��P\�`��9\��d���c8W\Z`�xt2+�\�u\r�\�cX|\�\�w#8\�m5t�_�����hs��\�q\�\�K+|]\�X+�E\��\�g\�e\�z�4x\'md0I*�wZCw���D�;�\�9\�LV\�cm���p�\�L�k�TtA�2�hD\�\��[�Sv�\�=�#�\�B���B\0�\�n8��U\�\�\�+\��*ol�\0f�J#���\�RdC�L�k�8�6�2m\�\�=\��p���)]}I_4hC�ps5�\�\rH[�_�&$&$\�/�f��|e=@��N\'�9\�*iOi�\�����}�hZ5��ag��}ۛt\�I\��S��UPِ�U\�\�F`�/-�\�^\�@�\�V�����*\�\��\�\Z�\�	��#\�\�@@�\�T\�\��@e� �V	\��~�.�\\~\�\�������D��\�-x\�ߴ�^jɊ!��V\�2\���MdZU0\�\'3��39�+H�{h\�جнA�<]\��+�6\�Gd��>!�.[z{o>v\Z�@�\�h��[:\�O\�\��<\n[W\Z!��?,3z�\�wf\�G���Ț�y�\�v(7§�\�檡`\�fG�m\Z�K\�\��\���Y\�i\�K˽J�\�g�r3\�9��x��k�\�`@�\ny\�9>m\�S\�\�\�}\�ޔ+�tg����\�\�	�M\��.߁�k�p�X��\�\�S��P�\�H��\0d\�\����\�\���!\�`\�i\�\\-�D��d���l`Ap�\"\�q��][�r$�\�`�,yv\��1_\\Sh�4�\��$.�\�>[P\�|Mܭ�e�I:��a�P��\�3)��_\�;�\r���h\�\\?� \�k[1<�0�\�U\'bF\�{��\�\�B\�\�3�����M��p��|���g�����\�y\'n�h�@\�\�\�n�P�&�\�{\��h?\�1-⇪\�\��>�X\�&=}\�\�\�_nB%�K\�\�]\�g\�\�&L%�\�g7�c�\"\�\�\��\�ͣ\�|#\�\�0OHp�\�/\�!p�)w\�ƁL\�\�\�c@����-|\��B��Z�Rhiw<��\�!?�T\�\�޺S�����l\�\"�Ls2}\�\\�lt:��\�m\�\�oƼ\�\�&X�+�&zڎq�И1��\�uJ�*\Z�z�\�P69����zHAΏ�4ρ\�.D$[��\�\�8~Q\��8�\08N��\�aΏ4U�t\�\�Hr~\�ٴ�ܢ\�ccd�m�H�\�\�=E�R�O\�J/+��e%����k�\�#\�1�\�\�m\�\�|��eH;=����\��\�<�5\�>�]H�M�W\�ãTņ�Ш^�`\�\�A&3$�\�\�ɝϨ\�\�T��\�\�\�c঻�lPeR8�1H\�\�I�\�&�ih\�7�;3f2�@\�({\�}�Ȼߵ�U��)Fũ\�\nfꂦN.MaҼw&\�z�]\�s��լ\�VR*�\�b�&\r�\�>�F\���\��`3M&]ag{[���}�\�a�P�6����o�Mr\'+_$�\��\�\�$hbgc�\�Xݲ\�=}I��\�A\�<p��\�rH�e\�j̈́����>x\�+\�y�\\q۶JdԀ!�\���c\0�tJ��\��)�d!rvg7\�Q=�_$$R��ͥ\�4\�W\�\�\�el���8�~�\�W:b5<�1\\\��;�?_\��\�2\�a\�)�Rl����!oC��fH��P�b�eQ�~%�\�뇕AB2�\�\�-:_��-�zjN\�{e\ZR4=)�+dZ:J�\�\�(QG\�\�5�2*ϭJ\'\�\�â#\�	\�;�~-_��k8�\�\r#�\�V	Kb>\�23�\��S\��r�+\�x\�J_�D�!\�B��cr��\�ew.\�Gu]�\�\�N\�%(���QK1\'6H��6^��\�ƒ\"V��Z\�\0�L�,\�jp\n���.\�ɸ`�-n�N��W��4��\�@n\�\�5�\��hT��$�\�a\�\�-\�q,YS\n�~�\�\�\�\�\"P\�U_\�\'��{䅩���*Ğ\�l\�orV��\�\�ȯ\�r���~�V����L\�\�\�\�E\�a�t5��)R܍�\����$>�@�?\"�Xoa��k8\�\�\�30\�����`.(���\�Vx%n��P�\�\�1:�T��k�Θ�>�r�؁�\�Ő\�=RĐܣ\�.Ҏ��\rs\"\�\��\"S�@Y��\�%χ|��\�\�@��\�hk�\�N�\�w�a�i9\�:;\�`KGC�\ra���#�\�aʳ)\�@9LFH\�Hw�յ�F�YQͼ9	�״Xj\\˳~/B�(\�\r�\rQ����\"\�!�\�\�zcD\�34\�Z7\�ץ���&�͘\�\�q6\�\�\�5g\��g��\�d:����)_����\��5Տx$\�\�0�Iw.\�\Z��RY\��\��Xsm�Tpz0y�u#�� 8�C�Zz��\�M\�1\�Sy�\�\�,ۿC06\�7���}$I�0Nʍ����TLe�\"gZ��*g\�\"�a&\�3MHtOx�t\�\�\n5\0\�ґ\�(3 \�N��S�>�\�4,�*�/\�	+Z˒!�1G\�H k_��h��\�?\�U\�	��\�w˚��*\��@U\�5׶\�x4�Ē\'\�}\�\�\�؇\Z\\X6	�,Q�m\�ǁ�+���i��\\Y�U\�\'�)L�ŔhI�?�B�\�(㕞\�g:��W�\�-\�*��\�7!��Ɍ+�[-\��\\�����Ͽ]��_�\0�\�h\r\nendstream\rendobj\r3 0 obj\r<</Filter/FlateDecode/Length 2077/Subtype/Type1C>>stream\r\nH�|�{TT\��\�e8Қk�ɥ:\�̝\��H}��Q�D\�Q1\"��2(\�cd@�0\�\�\�F��\nb�%H�Fy\��)�hH��mZ��\���L�\�\�j�\�:kݵ\�\�g\�}�������A�\�\\ŶM~[dK\�q\��\�\�\���[��q1*�\�m�!���ܛ�hg��o�\�mh\�l�\�WH9�r�\�_���$��\�r\�t\����	1����KT\�J\�Q|�\�xi`\��(�<>�@dB\�2�����r��\�\n�,.N:�(M�J�JPGE�P\�\'\�W\�9\���\\��Q{	�\�A�7Al�#�\�\�\"��\�\�{���g!�@bq��\"\�\�\�\��$xS�\�\�\��\��\Z:\��\n+\�}�\�����*���\�$[:�����~A#_\�����\�w\�V�\��\n�\�\�\0K�Fz*l*\�\�0\��\�;47\�=�N:PԻ\�\�O6 3�N�\�~�K!uO׳��[\�%�4*�A!:�\�N\��U\�E\�\\�-8�\��&xx-Ȇ=i>�\�`��[�0�M��cI9j\��A�.ոwMJ\��\�[�\�\�Ǎ��\�l%r\�%��L�\�;Ӑ�\�dS\�\�Z��uV׍>G��.a\�T;,��>\�\�뮫�c���\�\�}2F^\�_�\�Z2\�\�-�\�;ɌV)\�X\�\�CfN�\�4�2[�\�򆅘^��$�+�\�E���� �\�_��]\Za\�(�?XG���dK\�\�!N\�`0���S\�s~�\�J,Jf5X����3ݕWt[�����~�\�kRm\�4d�t�<]\�4]#O���\�\"\�Fѵ!J\�ѣ�ʯ5��W�:V+c�B.XL�\�,zZ?���٦�%X�\�\�K�hWgEǈ1�m\�\�L�Ϙ�y��-�\�\�\�H\�\�z\�\�},u�:�s\�\�C^�#@\�XE�_?��\�V��ȡ\�\���òOC�\�x��M]r,���>M�M�\��Sw_e\�e����>C�\�\��	tcv��~ˆD��\��6t�\�Y\�~<��Y���o\�`�Z>�\�2I\�$��T�`o�zP�\�>\�E\�\Z�[7&�q\Z��\�*��\���i��ю��\����0\�Bπ�\�|�X\�\�\�yS�b�DolFM�R|\�N\�\�+��Bz�#\�\�̻\r\Z�Ր�\�\'\"�G�\�\'�\�o�~���U��\�qnLa\�\�\�E\Z�sT�܎\�g\�\��dZ�>-1\'�ٟT�9�{ca��\�\���\�C��\�\�t\�.D�K(\�ņ\�\�+��xL4h���i��WX\�I���X\�\�:�\�\�P�7L\�Ϟ@\�3\�PZaW~�\����\�v�\�b\�K:�E4�f6\�c|\�\�l#\rZ�馭,�\����\�\�\�\�0���T��Jթ\�\��\�x��P��F�?CsN��?�\�\�\'ͥ&K���\�\�����xN�D뚣�=�\��a�;wC_H�i�����Xd*dϠy\�^qK\�cf�~\�6\�\�`��<�J\�\�\�P_c�\Z�tqCz��Ϩȟ�\�x}\�\�\�\�\�\��\�\�}\�\n�\�\�U�O�m1���kZ\�1V!Ɇ�I\�8��\�\�\ZBo�4�o*4\�\'�	��u37/\��f�d\�+�\�n��3\�Z�g��Ӌs�������O��ӹz[t3u\�\�\��߆�9�\�s^ܨ��vnE�\�&R\��\�\��sD^B��v9���\�Yv\�d��\�\��\�Ɔ��s��+�V\�W�>�_�)\\׵&<��\�I�WG��֫~���\�+	\�\rB\�\�wJ�\�\�9���8\���h�g\�g�\��؂.��,��L.��\��^QZ\�@�aA;�󡨦��(\Z������\��Ï��H\�#b�fM���6�/��\�;\�x\�J��{��y�vk\��\0\�F\�JƋG7�|��y\�=�\��\�\"\�iS1ۆ��\n�Զ\�Z��^_�LH(K��\�՜\�E\�\�\����q��\�h�s:���ܳ\0P\���MI\r�m��e��\��eDF>d=\�֥��sK�V��y���׼ ub����@�)�c%��\\T���,�\Z\�\�X�)�Z�(�1�*qD�,\�toOţ�X4\�=�GX�i=�\�`|aՅ��(�ރ{��d�9�MW����ҟ`(cn\'\� \rN��\0��\�/]\�\n�\�\�P\�\�[\�j�Q�=jί\r\�#G\�\�,���ؗ*Bv� ,h\�Z���˾`\�\n\r٥��\�:dJaV\�_�\�j݀3\�\��@f��_ɘ\�������2]1g(B�%/r!��8H\�=T?\�z\rž��\��`\0{V#�\r\nendstream\rendobj\r4 0 obj\r<</Filter/FlateDecode/Length 1763/Subtype/Type1C>>stream\r\nH�|�P\�\�w�\�}\�N6�\�,(wݽ1��c�b.ʕ��D�B�.!Gi1\�U\�\�/&È1F���X!*�C�@��\n�\n2%)�fB��	x��}q\�w;M�Gg\�v��\�}\��~\�\��GSLE\��S)K�\'�昋r�s�-�|��be~F@OL\�\'S\�U\�j`����\��JYO3�;:JEӯ���W���d\�\�\�J����-\�,k�\�l+�[\��\�K�+*KmFsɆ���ʹ\�g\�\�\�G�\��1FSQ�1�Pft\�\�l�r[~LJ��8�(֜̊3\�\�\�QM��4Mͣ�W*)��0T����p\�@�S�T�]@\�\nYrX5EeU\r3Ә�3��ղV\�\�\�\\>w��������\�	\����	j,ʅ-��\�2[I�\\$��e2f�/f?\\�(��<�)F�\'F�@\�=�$T�\�v�q|\�`a0��n\0�\���C`�\��!\��!�f\�_6\�;��\�|�\�j$<��3,I�S�O�D��������]�D\�/�G$\�!	}\�oZR�\�I2�g\"?�\r\���\�A��SDA�܀u.�� y�\�}K��hl\�\�_z�b$\�\Z\�c\�6\�8,F\�_Hx#\�����`9|@�;���\r�\"ҧ�\�8x�\Z��\�O�%�!z�W\"yWF�ݥL�\�d>\�u7�^�}^�{G\��h�4\��6(p��-ug\�\�]�P�sˮ�][�@��=\�C�\"a�\'g�\�\��\r3\�&�GBsSK}\�\�oeH\�؀f\�{m\�\�\��r\�]1��\�L{s�y�:��]%�\��\���s~H�\����\�\�%�yA�A� b^?fr\�*3m\�v؋yN�z���5Hp\��]I_5..\�:yY5\Z�\�\�+\�\n,�)�4S\�g8Ǟ�\\���\�V�\Z���o���\n����3K�$!;9�T��w=\�q�$Q�\\��C`�lVaS/\�\�\�6\0�\n\��?fn�+m�%<a�v�{[\�Do\Zh\�`\�V�\�7�\����mƲ���G|��\�/.[}�@Ę#�W:\�2�*\�:\� b�qZ!��R\0�n�\�*G_`�Kז\�\�W\�G\�\��!?\�j\�L�b�\�\�I67aۄ�\�8\�\��>\���*t�\�A-\�>�%Bb��Fر:	��Ҍ\�\����O ң���\�K\��&)-\�\�6�)�\�l���\�g�R\0.&\�v�)h�ؘԃ\��d\�h\��\�\�N�V\�}���$\�A\�\����\�(��]�����	\rI\�]�-�+\��\��n�\�s�d�+o\���\�G��\�<8/�m��\�\��GѶ\r\�m�\�\�\������rj� L\�&(�lFYj��?�{i��\�\�3�2�%\�&\�s���\�\��p�Yd|�tÂ�sW\�H\�9�9G~�_�\�\�.��q��2V�\�Ԯ\�r\'\�\���K��&\�\�W��/9\�\�\�=�-\�V\�H��\"�\�\'��U_`-f�z�%J,�H\Zg&m\������~�^%��]�mA_/\�I\\]\�Mvp��cj�j+A�?%��9��qjH�~\���\�p꘱�\n��{=\n�>\��{wT�/���5oW\�x[��(/�X\�.\�l\�샻��/������6�~\���,���r\�>veݚwND�|T������w�\�\�W\�\�1�bL\�\��[�\�\�d�\�#��F\�d�&+5�OmoH\�%�/w\�*�F\�\�-\�|\��Al�\�\�`�lF�|�X\�^S{D���X�i�C/|_R�\�\����\�*�%Mk�\�\�g�����\��`�R�\nh\�\�v\�\�/u}\�n�k8a\�2�@\n� �}�-7\�b?}]�2s\� r��ؽ\�\��\�\��:$�7뽽��\Z\Z\�\�a��o\0�1\�G\r\nendstream\rendobj\r5 0 obj\r<</Filter/FlateDecode/Length 370/Subtype/Type1C>>stream\r\nH�bd`ab`dd��v��p\�v\�I\�M\��\�L\�(	+��f�!\��C�G4�w�\�\�_�\�\��{�;\n.��K����1 ,\�-\�M�S�9����[A#YS�-5\'3931/_!�� U�-�4/��RG�\���DH�\�)8\�\�(�5+�����\��\�\�&\�\��u(���1\0A#c𖟧*��xq��\��O�3��\�%�\��n\��\�\�N�@\�J�\�a��V�\�\"�3\�g\�\��\�UD���\�\�v�ܿC6�\�(��{P\�!\�k��~`۸|�.��\�\�f\�\\\�/��=cRӌeRߏ�\�\�_�*�[ �;\'���i�Zk\��bO�S��A��=���2Q\�4{uK[����ߜl|u3~�\��7�S7\�\��9\�r,���p\0c��7\r\nendstream\rendobj\r6 0 obj\r<</Length 9126/Subtype/XML/Type/Metadata>>stream\r\n<?xpacket begin=\"﻿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?>\n<x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 5.3-c011 66.145661, 2012/02/06-14:56:27        \">\n   <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">\n      <rdf:Description rdf:about=\"\"\n            xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\">\n         <xmp:CreateDate>2013-11-19T14:38:18-05:00</xmp:CreateDate>\n         <xmp:CreatorTool>Adobe Illustrator CS6 (Macintosh)</xmp:CreatorTool>\n         <xmp:ModifyDate>2013-12-11T13:04:55-05:00</xmp:ModifyDate>\n         <xmp:MetadataDate>2013-12-11T13:04:55-05:00</xmp:MetadataDate>\n      </rdf:Description>\n      <rdf:Description rdf:about=\"\"\n            xmlns:pdf=\"http://ns.adobe.com/pdf/1.3/\">\n         <pdf:Producer>Adobe PDF library 10.01</pdf:Producer>\n      </rdf:Description>\n      <rdf:Description rdf:about=\"\"\n            xmlns:dc=\"http://purl.org/dc/elements/1.1/\">\n         <dc:format>application/pdf</dc:format>\n         <dc:creator>\n            <rdf:Seq>\n               <rdf:li>Anil Madhavapeddy</rdf:li>\n            </rdf:Seq>\n         </dc:creator>\n         <dc:title>\n            <rdf:Alt>\n               <rdf:li xml:lang=\"x-default\">Fig1</rdf:li>\n            </rdf:Alt>\n         </dc:title>\n      </rdf:Description>\n      <rdf:Description rdf:about=\"\"\n            xmlns:xmpTPg=\"http://ns.adobe.com/xap/1.0/t/pg/\"\n            xmlns:stDim=\"http://ns.adobe.com/xap/1.0/sType/Dimensions#\"\n            xmlns:stFnt=\"http://ns.adobe.com/xap/1.0/sType/Font#\"\n            xmlns:xmpG=\"http://ns.adobe.com/xap/1.0/g/\">\n         <xmpTPg:NPages>1</xmpTPg:NPages>\n         <xmpTPg:HasVisibleTransparency>False</xmpTPg:HasVisibleTransparency>\n         <xmpTPg:HasVisibleOverprint>False</xmpTPg:HasVisibleOverprint>\n         <xmpTPg:MaxPageSize rdf:parseType=\"Resource\">\n            <stDim:w>4.472222</stDim:w>\n            <stDim:h>2.972222</stDim:h>\n            <stDim:unit>Inches</stDim:unit>\n         </xmpTPg:MaxPageSize>\n         <xmpTPg:Fonts>\n            <rdf:Bag>\n               <rdf:li rdf:parseType=\"Resource\">\n                  <stFnt:fontName>Flama-Light</stFnt:fontName>\n                  <stFnt:fontFamily>Flama</stFnt:fontFamily>\n                  <stFnt:fontFace>Light</stFnt:fontFace>\n                  <stFnt:fontType>Open Type</stFnt:fontType>\n                  <stFnt:versionString>2.001</stFnt:versionString>\n                  <stFnt:composite>False</stFnt:composite>\n                  <stFnt:fontFileName>Flama-Light.otf</stFnt:fontFileName>\n               </rdf:li>\n               <rdf:li rdf:parseType=\"Resource\">\n                  <stFnt:fontName>Flama-Book</stFnt:fontName>\n                  <stFnt:fontFamily>Flama</stFnt:fontFamily>\n                  <stFnt:fontFace>Book</stFnt:fontFace>\n                  <stFnt:fontType>Open Type</stFnt:fontType>\n                  <stFnt:versionString>2.001</stFnt:versionString>\n                  <stFnt:composite>False</stFnt:composite>\n                  <stFnt:fontFileName>Flama-Book.otf</stFnt:fontFileName>\n               </rdf:li>\n               <rdf:li rdf:parseType=\"Resource\">\n                  <stFnt:fontName>Flama-BookItalic</stFnt:fontName>\n                  <stFnt:fontFamily>Flama</stFnt:fontFamily>\n                  <stFnt:fontFace>Book Italic</stFnt:fontFace>\n                  <stFnt:fontType>Open Type</stFnt:fontType>\n                  <stFnt:versionString>2.001</stFnt:versionString>\n                  <stFnt:composite>False</stFnt:composite>\n                  <stFnt:fontFileName>Flama-BookItalic.otf</stFnt:fontFileName>\n               </rdf:li>\n            </rdf:Bag>\n         </xmpTPg:Fonts>\n         <xmpTPg:PlateNames>\n            <rdf:Seq>\n               <rdf:li>Cyan</rdf:li>\n               <rdf:li>Magenta</rdf:li>\n               <rdf:li>Yellow</rdf:li>\n               <rdf:li>Black</rdf:li>\n            </rdf:Seq>\n         </xmpTPg:PlateNames>\n         <xmpTPg:SwatchGroups>\n            <rdf:Seq>\n               <rdf:li rdf:parseType=\"Resource\">\n                  <xmpG:groupName>Default Swatch Group</xmpG:groupName>\n                  <xmpG:groupType>0</xmpG:groupType>\n                  <xmpG:Colorants>\n                     <rdf:Seq>\n                        <rdf:li rdf:parseType=\"Resource\">\n                           <xmpG:swatchName>C=20 M=0 Y=100 K=33</xmpG:swatchName>\n                           <xmpG:type>PROCESS</xmpG:type>\n                           <xmpG:tint>100.000000</xmpG:tint>\n                           <xmpG:mode>CMYK</xmpG:mode>\n                           <xmpG:cyan>45.212502</xmpG:cyan>\n                           <xmpG:magenta>23.675900</xmpG:magenta>\n                           <xmpG:yellow>100.000000</xmpG:yellow>\n                           <xmpG:black>2.667300</xmpG:black>\n                        </rdf:li>\n                     </rdf:Seq>\n                  </xmpG:Colorants>\n               </rdf:li>\n            </rdf:Seq>\n         </xmpTPg:SwatchGroups>\n      </rdf:Description>\n      <rdf:Description rdf:about=\"\"\n            xmlns:illustrator=\"http://ns.adobe.com/illustrator/1.0/\">\n         <illustrator:Type>Document</illustrator:Type>\n      </rdf:Description>\n      <rdf:Description rdf:about=\"\"\n            xmlns:xmpMM=\"http://ns.adobe.com/xap/1.0/mm/\"\n            xmlns:stEvt=\"http://ns.adobe.com/xap/1.0/sType/ResourceEvent#\">\n         <xmpMM:DocumentID>xmp.did:0180117407206811822AEFD899E57EBB</xmpMM:DocumentID>\n         <xmpMM:InstanceID>uuid:bf941dd6-4c41-dd41-8cd7-a1ebd2493d45</xmpMM:InstanceID>\n         <xmpMM:OriginalDocumentID>xmp.did:0180117407206811822AEFD899E57EBB</xmpMM:OriginalDocumentID>\n         <xmpMM:RenditionClass>proof:pdf</xmpMM:RenditionClass>\n         <xmpMM:History>\n            <rdf:Seq>\n               <rdf:li rdf:parseType=\"Resource\">\n                  <stEvt:action>saved</stEvt:action>\n                  <stEvt:instanceID>xmp.iid:0180117407206811822AEFD899E57EBB</stEvt:instanceID>\n                  <stEvt:when>2013-11-19T14:38:16-05:00</stEvt:when>\n                  <stEvt:softwareAgent>Adobe Illustrator CS6 (Macintosh)</stEvt:softwareAgent>\n                  <stEvt:changed>/</stEvt:changed>\n               </rdf:li>\n            </rdf:Seq>\n         </xmpMM:History>\n      </rdf:Description>\n      <rdf:Description rdf:about=\"\"\n            xmlns:ExtensisFontSense=\"http://www.extensis.com/meta/FontSense/\">\n         <ExtensisFontSense:slug>\n            <rdf:Bag>\n               <rdf:li rdf:parseType=\"Resource\">\n                  <ExtensisFontSense:Family>Flama</ExtensisFontSense:Family>\n                  <ExtensisFontSense:Version>2.001</ExtensisFontSense:Version>\n                  <ExtensisFontSense:OutlineFileSize>0</ExtensisFontSense:OutlineFileSize>\n                  <ExtensisFontSense:KerningChecksum>0</ExtensisFontSense:KerningChecksum>\n                  <ExtensisFontSense:Foundry>--</ExtensisFontSense:Foundry>\n                  <ExtensisFontSense:FontKind>OpenType - PS</ExtensisFontSense:FontKind>\n                  <ExtensisFontSense:Checksum>3451805582</ExtensisFontSense:Checksum>\n                  <ExtensisFontSense:PostScriptName>Flama-Light</ExtensisFontSense:PostScriptName>\n                  <ExtensisFontSense:FontSense_1.2_Checksum>3451805582</ExtensisFontSense:FontSense_1.2_Checksum>\n               </rdf:li>\n               <rdf:li rdf:parseType=\"Resource\">\n                  <ExtensisFontSense:Family>Flama</ExtensisFontSense:Family>\n                  <ExtensisFontSense:Version>2.001</ExtensisFontSense:Version>\n                  <ExtensisFontSense:OutlineFileSize>0</ExtensisFontSense:OutlineFileSize>\n                  <ExtensisFontSense:KerningChecksum>0</ExtensisFontSense:KerningChecksum>\n                  <ExtensisFontSense:Foundry>--</ExtensisFontSense:Foundry>\n                  <ExtensisFontSense:FontKind>OpenType - PS</ExtensisFontSense:FontKind>\n                  <ExtensisFontSense:Checksum>2560462249</ExtensisFontSense:Checksum>\n                  <ExtensisFontSense:PostScriptName>Flama-Book</ExtensisFontSense:PostScriptName>\n                  <ExtensisFontSense:FontSense_1.2_Checksum>2560462249</ExtensisFontSense:FontSense_1.2_Checksum>\n               </rdf:li>\n               <rdf:li rdf:parseType=\"Resource\">\n                  <ExtensisFontSense:Family>Flama</ExtensisFontSense:Family>\n                  <ExtensisFontSense:Version>2.001</ExtensisFontSense:Version>\n                  <ExtensisFontSense:OutlineFileSize>0</ExtensisFontSense:OutlineFileSize>\n                  <ExtensisFontSense:KerningChecksum>0</ExtensisFontSense:KerningChecksum>\n                  <ExtensisFontSense:Foundry>--</ExtensisFontSense:Foundry>\n                  <ExtensisFontSense:FontKind>OpenType - PS</ExtensisFontSense:FontKind>\n                  <ExtensisFontSense:Checksum>3858695973</ExtensisFontSense:Checksum>\n                  <ExtensisFontSense:PostScriptName>Flama-BookItalic</ExtensisFontSense:PostScriptName>\n                  <ExtensisFontSense:FontSense_1.2_Checksum>3858695973</ExtensisFontSense:FontSense_1.2_Checksum>\n               </rdf:li>\n            </rdf:Bag>\n         </ExtensisFontSense:slug>\n      </rdf:Description>\n   </rdf:RDF>\n</x:xmpmeta>\n<?xpacket end=\"r\"?>\r\nendstream\rendobj\r7 0 obj\r<</Length 13295/Subtype/XML/Type/Metadata>>stream\r\n<?xpacket begin=\"﻿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?>\n<x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 5.3-c011 66.145661, 2012/02/06-14:56:27        \">\n   <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">\n      <rdf:Description rdf:about=\"\"\n            xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\">\n         <xmp:CreateDate>2013-11-19T14:56:46-05:00</xmp:CreateDate>\n         <xmp:CreatorTool>Adobe Illustrator CS6 (Macintosh)</xmp:CreatorTool>\n         <xmp:ModifyDate>2013-11-19T14:56:46-05:00</xmp:ModifyDate>\n         <xmp:MetadataDate>2013-11-19T14:56:46-05:00</xmp:MetadataDate>\n      </rdf:Description>\n      <rdf:Description rdf:about=\"\"\n            xmlns:pdf=\"http://ns.adobe.com/pdf/1.3/\">\n         <pdf:Producer>Adobe PDF library 10.01</pdf:Producer>\n      </rdf:Description>\n      <rdf:Description rdf:about=\"\"\n            xmlns:dc=\"http://purl.org/dc/elements/1.1/\">\n         <dc:format>application/pdf</dc:format>\n         <dc:creator>\n            <rdf:Seq>\n               <rdf:li>Anil Madhavapeddy</rdf:li>\n            </rdf:Seq>\n         </dc:creator>\n         <dc:title>\n            <rdf:Alt>\n               <rdf:li xml:lang=\"x-default\">Fig2</rdf:li>\n            </rdf:Alt>\n         </dc:title>\n      </rdf:Description>\n      <rdf:Description rdf:about=\"\"\n            xmlns:xmpTPg=\"http://ns.adobe.com/xap/1.0/t/pg/\"\n            xmlns:stDim=\"http://ns.adobe.com/xap/1.0/sType/Dimensions#\"\n            xmlns:stFnt=\"http://ns.adobe.com/xap/1.0/sType/Font#\"\n            xmlns:xmpG=\"http://ns.adobe.com/xap/1.0/g/\">\n         <xmpTPg:NPages>1</xmpTPg:NPages>\n         <xmpTPg:HasVisibleTransparency>True</xmpTPg:HasVisibleTransparency>\n         <xmpTPg:HasVisibleOverprint>False</xmpTPg:HasVisibleOverprint>\n         <xmpTPg:MaxPageSize rdf:parseType=\"Resource\">\n            <stDim:w>6.722222</stDim:w>\n            <stDim:h>5.722222</stDim:h>\n            <stDim:unit>Inches</stDim:unit>\n         </xmpTPg:MaxPageSize>\n         <xmpTPg:Fonts>\n            <rdf:Bag>\n               <rdf:li rdf:parseType=\"Resource\">\n                  <stFnt:fontName>Flama-Book</stFnt:fontName>\n                  <stFnt:fontFamily>Flama</stFnt:fontFamily>\n                  <stFnt:fontFace>Book</stFnt:fontFace>\n                  <stFnt:fontType>Open Type</stFnt:fontType>\n                  <stFnt:versionString>2.001</stFnt:versionString>\n                  <stFnt:composite>False</stFnt:composite>\n                  <stFnt:fontFileName>Flama-Book.otf</stFnt:fontFileName>\n               </rdf:li>\n               <rdf:li rdf:parseType=\"Resource\">\n                  <stFnt:fontName>Flama-BookItalic</stFnt:fontName>\n                  <stFnt:fontFamily>Flama</stFnt:fontFamily>\n                  <stFnt:fontFace>Book Italic</stFnt:fontFace>\n                  <stFnt:fontType>Open Type</stFnt:fontType>\n                  <stFnt:versionString>2.001</stFnt:versionString>\n                  <stFnt:composite>False</stFnt:composite>\n                  <stFnt:fontFileName>Flama-BookItalic.otf</stFnt:fontFileName>\n               </rdf:li>\n               <rdf:li rdf:parseType=\"Resource\">\n                  <stFnt:fontName>Flama-Medium</stFnt:fontName>\n                  <stFnt:fontFamily>Flama</stFnt:fontFamily>\n                  <stFnt:fontFace>Medium</stFnt:fontFace>\n                  <stFnt:fontType>Open Type</stFnt:fontType>\n                  <stFnt:versionString>2.001</stFnt:versionString>\n                  <stFnt:composite>False</stFnt:composite>\n                  <stFnt:fontFileName>Flama-Medium.otf</stFnt:fontFileName>\n               </rdf:li>\n            </rdf:Bag>\n         </xmpTPg:Fonts>\n         <xmpTPg:PlateNames>\n            <rdf:Seq>\n               <rdf:li>Cyan</rdf:li>\n               <rdf:li>Magenta</rdf:li>\n               <rdf:li>Yellow</rdf:li>\n               <rdf:li>Black</rdf:li>\n            </rdf:Seq>\n         </xmpTPg:PlateNames>\n         <xmpTPg:SwatchGroups>\n            <rdf:Seq>\n               <rdf:li rdf:parseType=\"Resource\">\n                  <xmpG:groupName>Default Swatch Group</xmpG:groupName>\n                  <xmpG:groupType>0</xmpG:groupType>\n                  <xmpG:Colorants>\n                     <rdf:Seq>\n                        <rdf:li rdf:parseType=\"Resource\">\n                           <xmpG:swatchName>C=30 M=0 Y=100 K=0</xmpG:swatchName>\n                           <xmpG:type>PROCESS</xmpG:type>\n                           <xmpG:tint>100.000000</xmpG:tint>\n                           <xmpG:mode>CMYK</xmpG:mode>\n                           <xmpG:cyan>30.206758</xmpG:cyan>\n                           <xmpG:magenta>0.054932</xmpG:magenta>\n                           <xmpG:yellow>99.780266</xmpG:yellow>\n                           <xmpG:black>0.000000</xmpG:black>\n                        </rdf:li>\n                        <rdf:li rdf:parseType=\"Resource\">\n                           <xmpG:swatchName>C=0 M=0 Y=100 K=0</xmpG:swatchName>\n                           <xmpG:type>PROCESS</xmpG:type>\n                           <xmpG:tint>100.000000</xmpG:tint>\n                           <xmpG:mode>CMYK</xmpG:mode>\n                           <xmpG:cyan>3.836118</xmpG:cyan>\n                           <xmpG:magenta>0.000000</xmpG:magenta>\n                           <xmpG:yellow>94.271759</xmpG:yellow>\n                           <xmpG:black>0.000000</xmpG:black>\n                        </rdf:li>\n                        <rdf:li rdf:parseType=\"Resource\">\n                           <xmpG:swatchName>C=0 M=85 Y=90 K=0</xmpG:swatchName>\n                           <xmpG:type>PROCESS</xmpG:type>\n                           <xmpG:tint>100.000000</xmpG:tint>\n                           <xmpG:mode>CMYK</xmpG:mode>\n                           <xmpG:cyan>0.000000</xmpG:cyan>\n                           <xmpG:magenta>84.606697</xmpG:magenta>\n                           <xmpG:yellow>90.786598</xmpG:yellow>\n                           <xmpG:black>0.064088</xmpG:black>\n                        </rdf:li>\n                        <rdf:li rdf:parseType=\"Resource\">\n                           <xmpG:swatchName>C=90 M=0 Y=0 K=5</xmpG:swatchName>\n                           <xmpG:type>PROCESS</xmpG:type>\n                           <xmpG:tint>100.000000</xmpG:tint>\n                           <xmpG:mode>CMYK</xmpG:mode>\n                           <xmpG:cyan>73.015938</xmpG:cyan>\n                           <xmpG:magenta>13.482872</xmpG:magenta>\n                           <xmpG:yellow>0.000000</xmpG:yellow>\n                           <xmpG:black>0.000000</xmpG:black>\n                        </rdf:li>\n                        <rdf:li rdf:parseType=\"Resource\">\n                           <xmpG:swatchName>C=4 M=4 Y=13 K=4</xmpG:swatchName>\n                           <xmpG:type>PROCESS</xmpG:type>\n                           <xmpG:tint>100.000000</xmpG:tint>\n                           <xmpG:mode>CMYK</xmpG:mode>\n                           <xmpG:cyan>8.502327</xmpG:cyan>\n                           <xmpG:magenta>7.153429</xmpG:magenta>\n                           <xmpG:yellow>16.113527</xmpG:yellow>\n                           <xmpG:black>0.000000</xmpG:black>\n                        </rdf:li>\n                        <rdf:li rdf:parseType=\"Resource\">\n                           <xmpG:swatchName>C=0 M=0 Y=0 K=75</xmpG:swatchName>\n                           <xmpG:type>PROCESS</xmpG:type>\n                           <xmpG:tint>100.000000</xmpG:tint>\n                           <xmpG:mode>CMYK</xmpG:mode>\n                           <xmpG:cyan>61.327530</xmpG:cyan>\n                           <xmpG:magenta>52.242310</xmpG:magenta>\n                           <xmpG:yellow>49.747459</xmpG:yellow>\n                           <xmpG:black>20.471502</xmpG:black>\n                        </rdf:li>\n                        <rdf:li rdf:parseType=\"Resource\">\n                           <xmpG:swatchName>C=100 M=0 Y=0 K=0</xmpG:swatchName>\n                           <xmpG:type>PROCESS</xmpG:type>\n                           <xmpG:tint>100.000000</xmpG:tint>\n                           <xmpG:mode>CMYK</xmpG:mode>\n                           <xmpG:cyan>70.553139</xmpG:cyan>\n                           <xmpG:magenta>13.116654</xmpG:magenta>\n                           <xmpG:yellow>0.000000</xmpG:yellow>\n                           <xmpG:black>0.000000</xmpG:black>\n                        </rdf:li>\n                        <rdf:li rdf:parseType=\"Resource\">\n                           <xmpG:swatchName>C=0 M=0 Y=0 K=60</xmpG:swatchName>\n                           <xmpG:type>PROCESS</xmpG:type>\n                           <xmpG:tint>100.000000</xmpG:tint>\n                           <xmpG:mode>CMYK</xmpG:mode>\n                           <xmpG:cyan>52.086670</xmpG:cyan>\n                           <xmpG:magenta>42.627602</xmpG:magenta>\n                           <xmpG:yellow>41.037613</xmpG:yellow>\n                           <xmpG:black>6.289768</xmpG:black>\n                        </rdf:li>\n                     </rdf:Seq>\n                  </xmpG:Colorants>\n               </rdf:li>\n            </rdf:Seq>\n         </xmpTPg:SwatchGroups>\n      </rdf:Description>\n      <rdf:Description rdf:about=\"\"\n            xmlns:illustrator=\"http://ns.adobe.com/illustrator/1.0/\">\n         <illustrator:Type>Document</illustrator:Type>\n      </rdf:Description>\n      <rdf:Description rdf:about=\"\"\n            xmlns:xmpMM=\"http://ns.adobe.com/xap/1.0/mm/\"\n            xmlns:stEvt=\"http://ns.adobe.com/xap/1.0/sType/ResourceEvent#\">\n         <xmpMM:DocumentID>xmp.did:0280117407206811822AEFD899E57EBB</xmpMM:DocumentID>\n         <xmpMM:InstanceID>uuid:da7fd18a-99b6-284a-8e51-6826d94f22a2</xmpMM:InstanceID>\n         <xmpMM:OriginalDocumentID>xmp.did:0280117407206811822AEFD899E57EBB</xmpMM:OriginalDocumentID>\n         <xmpMM:RenditionClass>proof:pdf</xmpMM:RenditionClass>\n         <xmpMM:History>\n            <rdf:Seq>\n               <rdf:li rdf:parseType=\"Resource\">\n                  <stEvt:action>saved</stEvt:action>\n                  <stEvt:instanceID>xmp.iid:0280117407206811822AEFD899E57EBB</stEvt:instanceID>\n                  <stEvt:when>2013-11-19T14:56:44-05:00</stEvt:when>\n                  <stEvt:softwareAgent>Adobe Illustrator CS6 (Macintosh)</stEvt:softwareAgent>\n                  <stEvt:changed>/</stEvt:changed>\n               </rdf:li>\n            </rdf:Seq>\n         </xmpMM:History>\n      </rdf:Description>\n      <rdf:Description rdf:about=\"\"\n            xmlns:ExtensisFontSense=\"http://www.extensis.com/meta/FontSense/\">\n         <ExtensisFontSense:slug>\n            <rdf:Bag>\n               <rdf:li rdf:parseType=\"Resource\">\n                  <ExtensisFontSense:Family>Flama</ExtensisFontSense:Family>\n                  <ExtensisFontSense:Version>2.001</ExtensisFontSense:Version>\n                  <ExtensisFontSense:OutlineFileSize>0</ExtensisFontSense:OutlineFileSize>\n                  <ExtensisFontSense:KerningChecksum>0</ExtensisFontSense:KerningChecksum>\n                  <ExtensisFontSense:Foundry>--</ExtensisFontSense:Foundry>\n                  <ExtensisFontSense:FontKind>OpenType - PS</ExtensisFontSense:FontKind>\n                  <ExtensisFontSense:Checksum>2560462249</ExtensisFontSense:Checksum>\n                  <ExtensisFontSense:PostScriptName>Flama-Book</ExtensisFontSense:PostScriptName>\n                  <ExtensisFontSense:FontSense_1.2_Checksum>2560462249</ExtensisFontSense:FontSense_1.2_Checksum>\n               </rdf:li>\n               <rdf:li rdf:parseType=\"Resource\">\n                  <ExtensisFontSense:Family>Flama</ExtensisFontSense:Family>\n                  <ExtensisFontSense:Version>2.001</ExtensisFontSense:Version>\n                  <ExtensisFontSense:OutlineFileSize>0</ExtensisFontSense:OutlineFileSize>\n                  <ExtensisFontSense:KerningChecksum>0</ExtensisFontSense:KerningChecksum>\n                  <ExtensisFontSense:Foundry>--</ExtensisFontSense:Foundry>\n                  <ExtensisFontSense:FontKind>OpenType - PS</ExtensisFontSense:FontKind>\n                  <ExtensisFontSense:Checksum>1118994754</ExtensisFontSense:Checksum>\n                  <ExtensisFontSense:PostScriptName>Flama-Medium</ExtensisFontSense:PostScriptName>\n                  <ExtensisFontSense:FontSense_1.2_Checksum>1118994754</ExtensisFontSense:FontSense_1.2_Checksum>\n               </rdf:li>\n               <rdf:li rdf:parseType=\"Resource\">\n                  <ExtensisFontSense:Family>Flama</ExtensisFontSense:Family>\n                  <ExtensisFontSense:Version>2.001</ExtensisFontSense:Version>\n                  <ExtensisFontSense:OutlineFileSize>0</ExtensisFontSense:OutlineFileSize>\n                  <ExtensisFontSense:KerningChecksum>0</ExtensisFontSense:KerningChecksum>\n                  <ExtensisFontSense:Foundry>--</ExtensisFontSense:Foundry>\n                  <ExtensisFontSense:FontKind>OpenType - PS</ExtensisFontSense:FontKind>\n                  <ExtensisFontSense:Checksum>3858695973</ExtensisFontSense:Checksum>\n                  <ExtensisFontSense:PostScriptName>Flama-BookItalic</ExtensisFontSense:PostScriptName>\n                  <ExtensisFontSense:FontSense_1.2_Checksum>3858695973</ExtensisFontSense:FontSense_1.2_Checksum>\n               </rdf:li>\n            </rdf:Bag>\n         </ExtensisFontSense:slug>\n      </rdf:Description>\n   </rdf:RDF>\n</x:xmpmeta>\n<?xpacket end=\"r\"?>\r\nendstream\rendobj\r8 0 obj\r<</BBox[71.0101 296.27 313.66 82.9375]/Filter/FlateDecode/Group 67 0 R/Length 776/Matrix[1.0 0.0 0.0 1.0 0.0 0.0]/Resources<</ExtGState<</GS0 131 0 R>>>>/Subtype/Form>>stream\r\nH�<�K�1��}�\\�C\�8qrֈ�`�\�/�U\Z\�H=�c�\\U\�ەV��\�u�,^\�(n��\�\�\�\�\�S�y�\�\�(<\�yڴ\�\��\�\����|�}��7���9�f�c���\�K�^�{\�Vno\�\�.?\�w�rw��=��3�H\�\�\�3\�\������\�\�}\�\�V^�;A�;hK5֪19;�v\�ڻ.\�]�Rf��\�ݗw\�0Aڋ��\�^#\�	t!4��Z�g;}-�2DF�F�eg�(�26G\r>SE��:9kP�����lE�$)`b\�\'�\�t�\�\')GE�\�F=e)�$��\�\�أ膟\��c�\�\Z>�,J�:,�\�, ������݃j��a\�:����NC�\n+mԜϝ���]܄@t\�g�uPs�.\��~��3�h1�q��?\�\'�\�!BQ/�*�.\�`\�\�\�\�\�6�1\�B9\�j@-_p���\�1\�\�A�(\'�ǰ2��	iV\�b\�-�1�O����,1��hg34��w��f�H$\��\�,#\�;�\�x\�c�\�nAV��#��o\�\�R\�\����R>�v��=�k\�zơ{\�yVe�\�\�\�Z�2q�ܰk�\Z\�ң`�\�?+F�.��tF����X�>�\0D25凤���� s6�����\�G�:evo8w�0\�\�\�\"��\�\�\��$\�\�\�\�Rag޵	\�IO�m�r��+\�\�A�q	���\�\�*9�/t�k70i!��q�`\'�\�M\�u�$\�[J�<��im\r�̣=���p\�U��/9i8ϥ0\�\�\�\Zp��\�\n��� u{�Q�vL�����\�]�ZUn�~\�H �\�-(�\��r}\�\�\0\0E�g\r\nendstream\rendobj\r9 0 obj\r<</Filter/FlateDecode/First 104/Length 744/N 14/Type/ObjStm>>stream\r\nhޤUmo\�0�+�\�j\�.΋�HU�@K[1\njغ�\�7b�7%�B�\�I��\�\�}�{�<\��C\�0B\rF��\�#~M�8>a�I�A|\� �b�G	3	���G��.ۄ\�h\�\�l�0L\�p���za��m�\�K\�C2\�I%�7���Ly��_��\�I{<���a@T��x�\��L�t[�٨\�Pq% \���|u��z�7Y�\�d��\'�Y%�\�\�r>�\�\"Q=���5�\�J�\n	�\�\r��`9� ��8l!�\n0{iQ�\�\�zA�L\���ϋ;!�\"�a@?\�e(\���`�\�\�k\�o�Xd�~�\�SL�cr�Ђ\�\�\�d��\�\�\�Z4�/LÅA\�a0\�3\�\�\�\�߬O��\��R�\rx*�\�����ّ����z?\�\�<�0�\�_갋^�/\�OdT��*�wZ魧\�\�l|�&0\��\�j)�� �ٰ�C5\�R*/\�gK�c��\�C)\�5A\�\�\'�>�\"3�-L��1�\�\�H`�K�S\�\Z��\�\�	b�T�\�\�\�d$fr�~\"�sDj\�\�j\�S\�@�H\�#�\r���w\�d!���5��\ri�k�̑\�\�\�	\�\�Ii�B��>��)6.\�\�\�C�;@{9E�hox�{N�^��w\r�N\�\�\Z+����\����\�\�\�`�\�\��O�eR��\�[N���\�z�X\�:b-ft:\���\�8�qεP}�\�;p\n\�j�Bi#-\�!\\퇴n��1�� >D�H(>\��)�{\�\�o�C\�{-#\��\Z\�}��3l\��%ϰ�F�m�ܖ��8p�#��\0\0dV�\r\nendstream\rendobj\r10 0 obj\r<</ArtBox[0.0 0.0 585.0 783.0]/BleedBox[0.0 0.0 585.0 783.0]/Contents 11 0 R/CropBox[0.0 0.0 585.0 783.0]/MediaBox[0.0 0.0 585.0 783.0]/Parent 101 0 R/Resources<</ExtGState<</GS0 131 0 R/GS1 130 0 R>>/Font<</T1_0 82 0 R/T1_1 134 0 R/T1_2 137 0 R/T1_3 145 0 R/T1_4 148 0 R/T1_5 84 0 R>>/ProcSet[/PDF/Text]/XObject<</Fm0 45 0 R>>>>/Rotate 0/TrimBox[0.0 0.0 585.0 783.0]/Type/Page>>\rendobj\r11 0 obj\r<</Filter/FlateDecode/Length 4228>>stream\r\nH��Wio\�\���_\�9�D�&\�0v���Ļ�\�D�G`AٚaD�i\Z)ȏϫ\�\�!ql#|5b\��\�ի\�/\'\��uخ=9�*�F���\�͉\�\�;\���\�\���\�\\��;9sl\�\r\�&e\�\��\�@��G膶\'	�\�\�^\�Ħ<�d\�\�\�K,�v�3ϵ�T����\�8r�w�\�j/�\�*d>�C�*}��o\'~2ϵCm\��y��\�\��mͫׯ\�/Ү\�\�F<v��\�^]9N\�\�\�\�~����\��pyd7;�.>\�ɷ\��\����Fb�֣!\��֑6�ɺ�\�\������=\�9���\�\�9�eg�g���|d��?x`췕�X7\�mư;!��\�\�:į\'>!gMh}�nV^h\�0��Dr`�&\��%�˛\�\�_?|;ԩ6ֻ���\�<\�N\�v4T\�\�̬\�|\�w\�O�o�S\�\�\�\��\��tn3��/o\�\�\�s�\�k\�1L\�\�hG`sTw�\r/Ŧ}\�3�\�@<�\�\��\��f�\�/�\�\�a\�\�\��\�\���\�bom;8��\�u��,Je�8�\�B\��c4�\�K(��	�>2\�+�I��\�?�y\�\�+^\�]/Z\��\�񖕢\�d\ZYq�~���\�\�ڞ�\0\�\0K\�<��\�\�߱�h�ăhX�Ϳ�y\'��\�\�*��\��Y��a��,e�w0ě\���ye���NT�\�\�w<wd+�\�\�@\�].�����\�3��\��RѴ�8�/dr�\'XB@�g�\�X\'Y\�p�\n[\�dy~\�E�/\�i��ʫ\�`�](L6��ɒ\��\�\�\�{��V4Pwֈ��U623�&�\�(x\�Q���ᥑ0ƲŶO������~r[J��\�a/*��̫���=Í�\�73ۧ�e{\n�:���d7\ZA,Ywy��5��\rk��\�Vʎ\��}�~Ͽ����Gb\�\�\�\�w�N\��qV�\���w�\�]��\�:誅\r\�&Q<ꉂ:Տ�z����\����\�]4\�H\�9	\�\�\�HQV�m\�\�0��Z\�	�\��w��\�z��yVUE\�ȾR\��rȻ={\�\�@[\���;\�`Ĕ}�BS8L��O�б\�\�ҐX�\0V\"4�i���	i�EV}�<��vh!W�\� ��G\'\�\�\��E\�U �R�II݂�=�\�Gc#L`�%���8K$5Aꇋv��SF\ZQrt6Q���`�0~\�hQ�\�Z\"Wǩ�Y\�D�\�31w�I��,��ͮh�\�UC�S�>��G�i��\�>tܷx�{6˷5\�\�}���~�;D@�i@Å��F�\�\�\�F�r��P� �j)%��?n\�\�ig\0����S\'	�Јe�\�C��RSQa�6�D�w\�\�\�n��T\�X<\��&�1/&�eH�\������`)������\"\�\�Eٗ�[�X���!�\Z��\�l��\�$��8\�\�T\�G�m���\�\�\�:X�>D�PH<Q٣׌�p#+�Hs^(�4\����x\�\�\"\�,TܕD9��k8�l�t\�\�ĽJ{��5f�w�\�>�h�S\�]�>R\nF\�\\\�\n��i\��O5M�\�N\�1��\�\�ځ!NxD\�\�D��4\��ITlۇ�6\�a�K--N\�\�V>k\�ؓ�\�\�A)�U�M�\�\�z)\r)\�\�Dۗ\�\�J�\�%��ٍ\�\�ŋ\�۾c\�%*6�y���	\Z�h�;�ζ7c#X�E�xs�\��w�\\cB����\�f��P-\'q%\�Y��;pjDn�!�\��JMr}<r�m�}U�Q)yS�\��M;NZ\��\�4�ڬ\\Ϻ���\��\�G\�v<���-\�}��|��\0\�\�\�R\�K#��9Q�3䄳^::\�,�!Y�\"��|[Uh-i�\�\�\�cci��P�\�h�X�M�6\�.\�ڡ\' r�w(ݏ��kQpt~nP\�\�\�;��\�M�\�;�\�ViϋGWK\��\�V,vIߎ\�\�Ӏ\�=F�(\�\�.\�\�\�-�FȾ+�J�]\�V䚂\�\�gA Ld\�~=�\�;\�1R\Z\��q2�bxY1�N��\�	�35m\�\�oZ\�GV�]\�t\��]��r��<\�i1�w\�2�d\�������\�0�.\�]_<�|e|�\�|�=��\�\�`?\��zsǰ>���jj��azc�/bwt\�g\�\�u1�\�6�j�ʝP2�;O9�\�dp\�\�+TJ��=�\�\�\�R`��\�-��<\�\\��\"�\��\���L�-�RD���p�25�S�9�\�HTFوM �\�\����\n��e��Z��\�X��/\�X^�WD��S\0bo*DG\�l��*\��ࢋ�\�,�/�R��A(ŠH�\�V��v\�k��\n\�T\�\�б\�\�\��f/pWE ��\��\�\�\"�GU\�}�j�\�\�^z��\�/\�:\��� ʀt�i\�]�\�ۓR��^Z8\�]�؏\��sY\��c&��S_z\�R߁�[\�\�,`#\�\�o\�yd�[�|\�(�� �\�W��\�a\�S����a��g���V�h�]5�\�e]u[�\����<TS\�\�āv�xԯ�Tc�Ӻg-��\�nn?��\����\�-�z(�\Z�\�\�>\�|z�(uW��\�\�\�,p�\�<�^l�=?fQ�\�1}�)O�虻���\�g\�;v$xb��j\�\�\�\nm��s\�|تr5��^��}�Eal{C�cB�ݗ!\�\�N�J\�\�C�5�!\�g6{G�E�8\\�<\�/g�8ϔ젢\�\0��7�\�ӭ\�۽�4&\�;��-\�\�y���R�\'l�\�NZ�G\"{���^���K)\"h\� �U�=K\�%]��q\�5C��\"\�\r$o˥)7Ѭ;�/\�\�\�۶\r�\��+�\�\0����i�\rC�IӇ􅖘X�$��$q��CRe\�\�\n�`KG\�\�s�KkR�-\�\\�\�޹�<.F�ݓ�\�\��VD�dC+9�b�\0�8��ͤj\';(	W&��\�\r�\�AWF��Z>��y\�\�\�d!\�M\�0��w��զe�\�Y\�A\�\n^2U��I�e0�\��GUާs�3 PS��\�hƈQh]�\�I\Z|տ}\�\�\�J͂g�i��0ώ���3\�+(.��\�L*\�%��6��05\�\�k%��m�J\�Ai�{�X\�\�4\��\�vb�vF6���R\�!wG�;7P�Z\\q�\�Cm_\�-�5V�[�-`�^kd�M64X��&a!�\�	\�8k�\�g\�Ŷ�l \�)(@͹\�X!\�g\������Z.\�v\�x�T�M(z\�XbT���ښ�;Y�<�P5�ֳv�,\�;����\�C��\�IX[w��\�zUp8\��3�l\�!\�(}���\Z�\�*�F�g���F=�%��/������\�\�h;\�\"47\�CEب}�ޢ��:\�R��h\���\�VG@!V6��-\�!\�\n��o\�>�*\�\�*\�<�0E����\�BG2\���PA��-\�\�\��\�����юLR[Oz��GzP^�.��I%�\�\�\�_�#�d\�+�\�^�;r�s�M�ÐpL�\�1k>z\�5RE$QT!\�\�\��\���qv�#b�\n\r\"�i\��[MZҚ��\�-o�AX 7\�\�%v�\r��\�\�cA\�㘙�~�\�Q�m��3\�\�\��Npz\\�:Wb\��oF�I\�Ì|\�]\�s;V\�QT��#S��K�̟���jCE�bE\�\�@��\�\�mW�}8��5�\�\�^\��(���+7d��$?Ao\�#\�K�\���,�%i\�H�&�\�{\�#�!%*2\�É^\�gΔ�)J���Z�\����\�-\r\rX\�?/ \�������\�\�L��yY\�A��Q�b�\�b$��\�R�\Z\�-��}�\�\�&p\r\�_\��X\�$\�)k\�\�\�DP��\�Fy~@N\�qM\\Vu��\�)�#\�Z�h	r�-\�D\0�6\�U�Š\�T����\�a�VǼ\�Rf��F���\�{\�\00�\�m/*R\r\�#β\�ʢb��t\�\�c<{�Eˣ�\n\��\�\�#*`�����\n�\�ⴠ\�=�Y�B�t^%�\�&6\�W�k��\����\�n\�\�S\�0�p���,a\nw���?�.��0P�z�\'��BZE�2\�\�%�qo\�8��\0��`�\�U�����y��Ф�9���K5o��\�(Ӫ\�&G���tqVo��J)���ƫ\�a\�i�\�t\�\�R�nG�\�U� �������s�\�Z]]}�bt�N��Pv�`h-q�\�\���\rv�\�J�\�_��>\�|\�U3�Ie�\�x\�acƾ\�~\�2m\�p�\�a�\�W�M�\�H(��\�F\�0��\�\�tE>\�M�s�-\�\�WH`�\�\�+|���k,z\�e7l�\��[�=��\�\rt�\�|/tV>�<g��L=�MV�{:����ϯWCo�և;�$u+N\"`;a�.焋n\�W�読��̑\��$q:��l6s�\�v\��w\�#:�;�Z]\\��v\��\�\�\�%���Mlł7ԝ�n�ڱ8�S�\�e�\�2ӿ�\�o�\�Kk%�W�\�UQkO���u�٪�\�{�\��\�\�{�.UJˣ��\�\�[�[ϡ�=�\� �\�\�\�@஛�A]:Cgm�[:\�w���MW�R��k�0մF�]�}�\�驌\���4����RDR\�\�\r�\�\�\�k�!.E�g\�\�SN(D]*�\�t�\�\�Y��F�\�\0C��\�:<z@)�\nNC�;}|?\\%ɋ��$�i�q�E`n�`\0e4�\�\r\nendstream\rendobj\r12 0 obj\r<</ArtBox[0.0 0.0 585.0 783.0]/BleedBox[0.0 0.0 585.0 783.0]/Contents 13 0 R/CropBox[0.0 0.0 585.0 783.0]/MediaBox[0.0 0.0 585.0 783.0]/Parent 101 0 R/Resources<</ExtGState<</GS0 131 0 R/GS1 130 0 R>>/Font<</T1_0 82 0 R/T1_1 137 0 R/T1_2 134 0 R/T1_3 145 0 R/T1_4 91 0 R/T1_5 148 0 R/T1_6 84 0 R/T1_7 93 0 R>>/ProcSet[/PDF/Text]>>/Rotate 0/TrimBox[0.0 0.0 585.0 783.0]/Type/Page>>\rendobj\r13 0 obj\r<</Filter/FlateDecode/Length 4191>>stream\r\nH��Wko��\�_���B\�\�S+A\0__�\�E�r�\�.\njEI���}HQ\�\�3$�!�\�\�Ih�,��3g\����r��kG!{�z��G����w+�_s\�j{5sl\�\r\�*f\�\�\�\�@���;�\�!�\�\�^b�*�z��r\�-,ד�\�Z2��~3��z�\�\�\�[ �\�`��,�C�>}�s\�v�\�[�`���\�zf�9�Z�u���b\��\�\�\�\�\�֮\n@��������\��\�޿w\�\rOV\�{��\��\�\�q\�\�>�_~�aW\�Gz���o�\�\\g+�-h\�͕�\ZDyx{\�\�\��~\�W��;��\��u�nݓ�\�[v=�\�\�^�h��P1��<\�D\������6к�\�E�ɖ�\�ކ\�ſ\�\��Yz��O�\��D���\�˹�d]�x�����\�s@\�Ҍ�\�\�v~�c�O܅��\�fa��}�����t�x���yP臉Z6s�2�ge��%\�qi��>�e�\"Ϸ\�9��\�;��ȸL+V\�\�\��\�꽨\�H�\0qa�m7\\\�יk{s_}��\�\� J��Y-\�-�E�\�y\�:��\�E��H\�6��x�|N_�.ԯWV�Ș\�2\�XS��UE\�s\�Y%�]\"�9P\�\�\�n?K\�\�&<\�5ȐmK��c^�\�\�1O\�վ��_�	`\�[6A-\�\�\"ώ?�+��}!\�7\�I?e�CdC�>�\�qR��;H�\�و?��\���\�{w^W�H�\'�8��0\\�yv�d1 �s�\�!d�[��,{ј.\�\�=֨A\�\�S!X����\�@~h��\�&O��,\�Y���D�\�,q«�xf\�c^J�N��d\�d�)\�\"2����#\�@\�ӋJ�M\�5�Qv܋�#\�r\�0\�m\�P\�<:MY��%�\�?�I�^�/Ǧ[&kv����\�\�)�\�rKC\�\�\��=@\�x�L���́�\�z\'�^��b��!�L\����[�r\�Ͳ\�\�+��&�\��\�nA\rrC(2\��.	�#?�m^R���Z@̱��K��)���\�[M�\�\�)xYw\�\�N@\�;l\�<e�\�{��\\��\�\�M\�b���\�6d�\'\"9Q\���\�9���x\�/�\�r&���\Z\��dI\��i^��|7�� \�4�z��Z�H�f�� �z%!\�3U}U�C~0:J\��HJWMRk��_(k\�޸�8�!T�ٺ�r0��DzG�\�\�qv��h��)�JR0\�[\�2IP<q\�	�Xf\�\�:F�c\�\�\�~YiP�-��֌�[� \�Nd�I����;�\��y-�мE}&���\�\��>OءI2�\�Z&�>�\r���Wh\�\��\�XPd�\�\���=\�TJb^�0��>u�\��\�1�\"γ�̓i&l��\�+=A\0��tY\�/\�~!�u�\�\�C5B�\"��6W\�O��`��K\�=\�Pf^Un�\Z\�Vdhd\�EB;t]�vG��N\�^����\�x+\�AH��Ԗ�	КJ�\�kB\r��T�\��`6*e��q\�/��?0\��\�\�8�\�6\�eS穂\�h�ny�!���\�ȅ��9�_�4�ڊ:J�\�+i_�Q/�p�\�܈�d\�\�2Qah~�Bг���P\�W)��N�fe*kY���\�\r�>[\�U+JŞ-\Z\�;O�DL�9qa|\�{\n6�%U�%ER?||��<�����_\�x�&��/q��5��\�\0%�?j�Rw\'U\�0\�\�.C`>��\�T��m\�p�/z�m\�\�s$\'�V��n��\��R\\{_�� ��P��I��_��N��\��$���\�\�2�YG.�K�0\0���uD�TUu٨Uˍ�*tC87w� ?�TES\��-\�̓�ñ�\�L\\>�+L�i\�\�\�4\�\�bߋ��+\Z�f:\�\�ݕj\�:�r0R�\�\�3\�w�H\�#~o	Ȣ�Qf�\�C]\�H�\�FYb��M1\�Ҍ�\�7tb��1$H�\� �4	@\\\r-�T\�4��\")\�����E�\�j\�\n\��\���#Qg$�J\�mEg�\�F\�\\&C�I�0��\Zt\�19j\�%�1L�R�W79l����䚩��\�eP3�\��\�RR`�ө��\�z\�\�ִ\�\�t\�\�|��x\�z\�-�NК�S��1�p\�S\�\���\���\��*�1pDc��\'/��D�ϓ�B7��\ZWm\�M:�6�=Ä0$�d\��cЪ\�\�\��s�C\�\�TƊ.Y�\'}�h�1��\�6ځ�\�F&L�<\�$e\�\�2��� z\�XX}KX;#�/ �\�8B\�\�YU�\�uN&\��6A7?ug3\��8���T)Z���i�9]F\�\����z��%lk���K\�o�]�ǈi#m\�\�)\�0\�\�\�\�\0\�ð��|@:�7��5l�l|I2����rC5@\�\�\��\�\��ǌ��\�ř?�x�\�UH�|�\�(.u��b\���R\�M`dM\\\�\�l9R�\'K���u�>��$���!�K��\�7H�7R&{8\�� �\\\�b\�q�Q܅\�i���a\�b�\�h\�`��\�lU��,.a-\�\0��\\?<��騌ȝm^P7\�\�6��&�Q�?D��\������ \�p\�f6N}x$B@_�=����(\�BQN\�6f2�\�a:S�~�ާW\�*\�IԓE����\�\�r�.A\�Q\"��7rog�/LJY�&��$+��\�\��:\�q\�[�\�\�J�	d�X>��F�V���nx���z\�\�\��}��\�\�	N4\�nm\������If\�=\�r܁\�\�f�M�n�)\�O\�%,ɷ�G+��\�<ȍJ��%\��\�%ˡܢ*\�\��\����o��U�`{Q*`\�\�Y|\�Dj�3\Z*#,1\r)\nD�&b���\�M\\*p��(\�!5vy覷�Û��\'3\�\�5�\�q�\�\��`\�\�h6��	E��/\�\�֛��\��+\�\�H�cc@�\"e\�M+��\�6����\�`���/!\�\�w\��aՇ��`\�gf\�廬\�\\\'��.��N�\�\�\�%��\Z�\�Cl��ୀ��)R\�7I̪k�1�2s���[\�cI}�9}(|@E&\�i��\��aW]Ah���֒�\�|\�\���(�\�,D���RQⶂ�K\�B\�6O�5\��T\"\�Т�\"!J	; J�H�\�J\�bJ\��q\�؛@�\�Q\ZB����\����9@,�XÊ��\�s+�ǈ�`��t]m�\�6##*\��jݯ`R��\��^�\\\�\Z1o\�؍b\�\�+\�\�	��� ��?\�[$�7��F\�S.��A	��^|�\ny\'����A��2�A]6F�؛.��UW*�#t�-\�(��{31\��������[�pKO\�\�!@W���\�\�\�\0�tZ�\�\�O��?��\�zh�D[�t\�ˑ^)��]���\�\�\�ɣRY]T�]th��z\�\�-\�+\�9�\�� ƀ[nҟ\�\�i2�E\�Z\�\�u\'-M��\�	P��J���y\�U5wvZ�\��Ul�\�^��[�\�>�\��\�Q�CN��n#+��ğx򪤢���7��c\0\�L\�t�\�\�\��{q\�x\�\�%<5*4:�tq]�\�,���yz�^LO��\0F�����\�xD�`\�F�@��g����\�D��P0�wa S�2T\�\�%}��\�\�\�7h���u\�]Κ�>�6ƚH��\�lָ�ێ\"�+\�\�\"\��c��YS)�h������\�.�\�H	*����g_�F�\�x\�[\r	\�dZog[(\"RvR̀�\�j�d�A\�\�W���~}��TB#\�e�&byq�\�\'$��*���\�k%� \�N(��TW%�m�\�]%~��-q@E�\�M���\\J�aQ\�\�cE���Q�\�l��Gr���y-�\�t+:ޢ �\����N��ޠ�\�\�d�4\�\ZO\Z\�Q{�Z(F\�%%\�<�u�͡\�vH�\�s��\n&^���5y�D\�\�\�<:a\�_\���\����S\0�3�\�\�\��W|yFpY]ɥʅv	p�j\�.����\0\�\r\�G֪$�e�H8���C^vԾ�[DA/Uy\�J��H��u�i��4�V\�\�h�A[���1t}\�u�]&Xg�ב��\�\�ݶ��1������-\�:�i;�d\� ,\�\�E]5�\�{�����d\r.N\�@�^\�\�mc{[ԫA\�^��g|�>.�m����X2!X�X	&\rrشȥ\\!I���2�\���Zٯ+����\�0i^���\�>+\�\���\�\�;�D\�\��\�\����\�g�\nԯT��ګH}QW�\��<\'2\r\�6[lx9}��^y�t��`u��ղ#\���cl��\�\�\�O�ʛ�hs5\r|o�\�\�W{߹�\"T�+?=\��x)�\�\�BpĚ�m\�\�\�.\�\�\�\�\�/\�=g\�\�\�\�\�GLuww�>����\�W�\�7�\�oJD\�)��5N\��~�\�u��w_���-���^m\�s\�ܰ\�R��\��ޜ�\�rwny�\�\n�@���m0i��S\�6�Ô�,\��\�\r��<1mS���\0���j\'A\\Z\�j\�DT;��;\�q�`Pq��Gw~im뎾mX�\�i�vN4�\�O\�\�M\�\0\�Cg�C3���R0��ԝxQ|�������#<�9��;vN\\ ��W�\0�\n\r\nendstream\rendobj\r14 0 obj\r<</Filter/FlateDecode/Length 1458/Subtype/Type1C>>stream\r\nH�<�	PW\�wފ�K .u���P��<p\�h�(\n��1�r	Ē�P!��\nrX�ʡx��\"��Z퀎�^\�Tg��\�ڇm7\�\��gv����뿿]���$IN߼\�gˆ5�|cUq�kb#>HQ\�F��g��f\�3�0>X=\������Y᎟\�@;R��R��*\'�\�Ӓ��E�(]\�nJ_�X(Z��LK\�(}\�G$�\�W.vwo���\\�\\��HHV&i�5IZM\�\�\�	Iq�\�w}&�ܕ�H� E.�VB�ć\�G�$ !�	\�A\\� ���\�\"�C��I:$�I\�/lޱ)�y�d�at�\��H!\��\n���c�7�Z��#5���Vbo\�\�\�W\�wS�\�2¨�t|t�;iχ9\�*�C\n5\�+mq�n\n�7^\�|\�݊\�e�l-U\�\�j\��S�4_��\�\�2\�\�*�\'\�\��)\��I^\0OˊȎ��\����Y�e8b��.3թ	Vʛ 0�\�l\�<\�R�?����z��P\�](��7u\���\�\�b�\�\�\�\�Z\�d\�\�n����KW�}o\�3\�kpd\�?j�Xdş�^r���\�lKٓ���w�O�r�=S�	di=\�{hwp�T\'��\�]p[\��\����/\�)\�)鵵T�+�c�\��\�\Z�\�r��P��%?��^�\"p�J��8p\�ކ\�\�\�\�!�gT�\�.\�/6\�k�F7J\�:n����ò�D�#8�\�̈\�\�,��d	��کVB\0\��(\�3#�jZy�(mG�n\Z|�\�T\�wŧ�\�c-gn�m-�*^�\�`2��R�\�5\�@;\�\�b\�\�$rƐ���\�	��\0\�\�_Y{ٌ�\n�d3xA0̗\��\�H�\�[|\�\�(]�)y#\ZT\�Sn)/(\�a�:z����&��\�\�.X��&rY*ݶ�\n,�\� \�b\�����\�\\h{�\�l\�5��Y�\�\�\�Mz�\�Q�Za��\'����I8iu\�\�<����\'E\�%F`�\�SI�22\�\����p,/�`\�Ǭ\�\�b!�\\�`�\�2�����§w\�0G��\�2q�\�ˤ`\�`��cP6�\�C�j\�q[K���B�Y�X�gb�\'\��s�\�9sSmsuy:�;�$\�$80��]E\�b�:pF=%��\�c;Z�ó��s�\� �\�+�\��\"�����\"��:��7\��\�CD�Umvc@V\��~���׶��@�\�\��\��[�\�\�T\\%T�)X?��	��\�*\��.�\�7KϷ���\�aY���\n6FD��w�\�\�N�t\�=�^�S\�Ǫ��\�\�3��z�xT��jֱW�G�)ymՈ�ݞ�`9nc\�)�h�(�`68\�^���\"Cq�������O�\�\�\r��.n\�Z��\�S�\�6,w�6\�~*-�\��\�`�	h<ɭpA;o?<0\�\�\�L�	�bQ�T���B@&\�\�^Tz^\�\�	\�j�&-�r\�h#/�sD\�ZUvHI5���D\�6RZl��\\�L�<�A��N\�}�F+ԋ\�,\�c`�\��;�=��C\�\'{Q��\\�+�uec�-�\�\�.W�3e��l��c�`\0�#į\r\nendstream\rendobj\r15 0 obj\r<</Filter/FlateDecode/Length 296>>stream\r\nH�\\�\�j\� �\�}��ܽXL�Y�@IY\�E4\�$:\�\n�\�^\�\�;겅\n:���;��}n�	�\���:0\Z�=.�\�+��Ʋ�mT�\�Ҫ�\�1N\�ݺ�Z;\�LJ\��\\�_a�\����y�\�\�+l��n��9��\�\0\�5hI\�w����SٮՔ7a\�Q\�߉\�\�!Ti_\�fԬqq�B\�\�+2YШA^h\����/�l\�w\�ᢠ�\�ᐘ��21\�*sy�y�������\�\�D�d�f�\�w�x�Ț\"j��)��\�=�؃8e>��\�;�O\"\�\�ᗺyOV�\�IEw�\�\��\�U\�\�~\0$��\�\r\nendstream\rendobj\r16 0 obj\r<</Filter/FlateDecode/First 5/Length 225/N 1/Type/ObjStm>>stream\r\nh\�,�Qk�@��\�>&�Sm 4��,\�\�B�vуӓ�(Ϳ��y��fwg�	\�5��v\�G9�Y5��T[i+v+���\'H|�CA\�`�\��\�5N�\�\"��в)�P�\�\�������c2/�z���ҷ\�\�w�r�\�\�I�\��\�*\�1��\�\�7/��c�/O�\�\��g�9�D<P9ˮnQ\Z\�I\��\�{�h�\��F3	T��\n�\�ﷁ=;��jp\�\�\���m��\0r\�]�\r\nendstream\rendobj\r17 0 obj\r<</ArtBox[0.0 0.0 585.0 783.0]/BleedBox[0.0 0.0 585.0 783.0]/Contents 18 0 R/CropBox[0.0 0.0 585.0 783.0]/MediaBox[0.0 0.0 585.0 783.0]/Parent 101 0 R/Resources<</ExtGState<</GS0 131 0 R/GS1 130 0 R>>/Font<</T1_0 82 0 R/T1_1 134 0 R/T1_2 137 0 R/T1_3 145 0 R/T1_4 148 0 R/T1_5 91 0 R/T1_6 84 0 R/T1_7 94 0 R>>/ProcSet[/PDF/Text]/Properties<</MC0 71 0 R>>/XObject<</Fm0 45 0 R>>>>/Rotate 0/TrimBox[0.0 0.0 585.0 783.0]/Type/Page>>\rendobj\r18 0 obj\r<</Filter/FlateDecode/Length 6020>>stream\r\nH��Wko\��\�_��rk$\�\�\�`�lv\�\�\�l\�n�LQ02ms�\�\�1��=�e;�dP,�ı-^^\�{\�9��fo��\�m;{s[x\�\�j��\���\��D\���\�\���\�|�\�\��\��[el�g\��P��K\�G���)K�\�]\"Ī�=:u3\�#�n�ྣ29��\�\�a#\�\�\�\�]|��\��z\n��~�^�i\�Ō�nd\�;?\�WgojQ�}�\�:\�z��\�\�\�\��\�[ϋ}�����\�\�?\�0�cNq\�3\��Z�\�;\�$\��]���˗�	�\�\\�c\�C\�_�\\&\�\��(��\�iA=:��\�\�קu�~\Z\��m\�\��\�\\%�{�\��8rS50)~�\�\�\�9\�j=:�s9.���L�,t��<@�O!\�\�\�\�ݽ�\��T��q~:6�\��\�UIx�2qc\�Ugu\�����\��\�q��}��Ix\\�:)\�_ޱ\�9���;]\�\��&O�v�l��΅}(Ƈ^�`\�\�ON\�\'��ƫ�KE1t�ݱ\�\'|b>R\��t=,\�\n�8�]1G\�|�`�r	Β\rBN�,�D\�5�P�E9}�cE\�H\�\�D\�T\��U��YY5�\��#׏\n�=}��\�\�Ǚ�$�xʱ�r\�\�\�U}Ǟ\�j�\��V�j��\�.\��\�\�Nӗ�*�\�\�dU��\�m߈NU\��TG0_�\�e�s\�\�w�4�$�C�[&\�<J���hu\ZȭFzuSmQج\�%�_��\�\�v���P%��r\�I~+K٨\�}�\�i�&\�\�d[Z&Z\�6\�V\"g;�v�X_�́\���$-lq�I����\�5*\�1S�)�YF�\�L\�P�\�$ۋ�\�ڼ�u^T�ec\"gK�/�\�r��,���k6�\�D<\Z\�\nb\�\rL��X\�\�\�\�Ըvh\�F��odk޵j[*�\��^\'u�����8�(;4�U\�U��C5ۮ\�3]\r`̈́�h\�裓�f+m&\0\���\n\�w&�B�b+\�\�	�,���XH��k���\�L�\\�\���u�ڶ \�\0�\0J<�u}޵\�s\��Y�ʬ�\�L�3\�C}�bm��gf�l\'�gj\�g�r��t\Z�*-i4~��Bt�Ҳ�*h|QC�M\"y\��@�\�Y�:l-.\��\0\�����X\���\�W\Z\�E�\�Ms&�$�f�2pR�\�@ST\�	h���ٚN\�\�N-ՠh1\n���L�M�\�Ǚ�\�\�t��\�2���=�/���\"�G�\�\�\r�\�\��D�^U�0>�\�\��\n��/��q~m���\��}w\�\\~*\r���~O��昘(r{\�`\�7k?C·Q�LN�\��y:�\�\�tT\�^\�kB,��N5�����9v\��`5��t:�\�/e{苎�\�N�t\�\� <� /�D�\�6H�\�)\�\0��h؞F\Zw!�\"\�ж&C#Ehe\�\"�\0\�\�\�\�Eᅜ�N��7WO�\0\�T�$�\'6\�\�hx\�4�`y�4�\�ȋV6�a\�6/P-=���Be�P�#\"\�K�Z\��^h�\�\�#2�C��I��2uS5\�Г\�)de�\Z��`\�s7G�u+��h��^�0N4���uHz^Kw�\�V\��6\�\�0�\��|�m<0	��\'	�A��Cшڊz\'�v��]l�SD%}]W�\���ô�\�\�	�.\0�ϒ̚�\�h#�3+�N<�\\uL\�\Z҉i\�sF�i\r׍����%Œ��/\�\��i*��h\�-�$Өe��\�7A�i��ؐۄX��Ŋ��g��WP�\�\"|	#x��\�\'db}����~\�=w�)CF\�ͬ\�\�,�(2?m6��l��\�V\�\�Pkb���\0Q�\�R5�\0�ās\�;\\Q���\�\"!z?�\�i\�A\�u\�n�d�\�K\�(ǐ�ᕩ�U�nO^\�,.Q�V<\�N c�*��+��<�T�:`����Z<}\�x)\�0�\�\rz�\�\�61>x\�\�f�\��Ӆɋ\n�\�{U�\\V\���\�j\�\�\�Z$r��\�;\����4��?9NmnGr\�\�\r����W7�Z\�K�8r=��_q�\Zel\n\0\�;\�(i��ƫ�M��Ar\�e#�\�\�\�ռQ]���\��ؑ\���	=\�\�\�^��0pS\�\�&!�\�\�Xr\�2OG,\�G\�q�nՖ:\��`O\��\�\\\�\�r\��\�˓D:岟:�׀v0�\�6�.\���e�`\�০P]�Y\�=\�\0b�\� \�S\�!�\����\�l\0	\�d$0��A� B�\"��Y��C�\�\�|E�\�F~\�GK�\�\"\',��5\��\�Y\�f\rg�a��\0BⓉs�`\�5�\�\�h\�p����\�=^�\�\�Хzr��ښ\�}w\�/D- .�Wt�\0t�H�\��\n!��\�f\rܫ[}\�f��K���-�5_�\��,�R\�\�\�8�~m=\���q$%��\�\�ZB��\�\'y<:�P0�\rP�\���^�g�\�z\�\�\n\�1�\�ӷS������ꘉo�d�������c5\�L��\�\�\��\�\�b_�~��@L��*R\�\r~9��V�w�����szk\�\Zb_�s\���P Y.{�)�{SPP\�L��`u���v�\�Ve�JK\�\�rz۳�,�\�<�B�P�l��Ҵe���LmDFm�3\�owY��~̭�\�\�ih\��l��\��\r\�Q��Z:M\���yd\�\��(��\�ޒ\�\�\�\�\"\'�\�5Nͩ�_�ǵ,���h��\�L����\"}�g�\�%�\�E�x�Xb���\�ȫr�\�0��\��l�AC�\�~����\�tB\�]���\�\�/2#�K})B\'p�3;��\�лpC�Vg�����Z\�A\��\�\�\�\��1\�X¦���h�A�t\�*�|ӧ�9[?U|dp\�д-��\�A`��g��T�\�Y\�Ҍ�\�\�\��A)\�\0\���^m�m$G�]_1�$ ��\�3OA.v�$l�\r\�}J#�/\nIIѾ\�\�TUύC���F\�tw\�\�S�Na��0�h7ڙ�\�(\�3%�S	u��:\�h�_`\�\��RE(KH\'�g\�U9��v{Xq\��X6pO^\�2�����{z\�\�\��N��\��Ra�\�v�\n-]\�\�\�i�\��6\�\�\��\�Z\ZR����	Z-�h\�\�ӆD�n��얇�!�c]\��c���ԓ>V\�\�z�>0\n<q�+\�ĥ=\�7K\"\�Mc���\n�JC\'\�\�Ǫ�*�\0,VO�\�\Zg/j<\�\�)��\rz?r��\�z�^�ǲ\�;}�6�_r=_�=~)�K9�D\�v;RD���q\�Ә�?R��Kb\���݈�d\�j��`\�\�W\�5Se��\��!5\�k+�\��\��O\�Ʀ\�\\\�\�&~Vu\�Ѧ\Z\�\Z��\�0j8�\�jU�\�rG\�}ד���\�;\�N�o���kc�[�Ѥ\�ϤJ\�\�\rx��\�/\'�V�TUYR`8��ePh���괂\�h\����U��\�\��u\"��%� W�Ԩ�\�ꓓ\�\�ɼڳ^H\�j\r%�Rew�K\'�ʞ\�1�$\�\�t\�\�\�^�G�%Iu\�\�ݪ�]\�\�G\�(���o\��uO��yj�&\'\�FH��事H!�\�\��:y��j��z%�q�T�-����\��\�X�juM���v�\\s�\���fb�\�vNft�\�w(�\�+�5�O\n�\��uZ-\�#�~�\�\�Q�2c\�\�\�j�\�\�Vޒ����#��0�ҭPz\�;\Zq�\�\�\�\�L\��\�0\�Y\\�\'�u� \"�n�\Z%\�Y\�e�*cw\�[*\�\�nyC \���v�\�\�?Q\�V���\�|��æ\��Mu��_��3T\���0��\�}]=/�S��\�\Z�|\�\n�GƪTB⭭�<\�v��,K�\��\�\���ڣ\�1�2yyh��P\�\���t����(�\�%H�̗\�\�#v�\�|T\',\�ֻzC~o�ھ\�e\�j�\�6�\�a;�\�Fc\�Uw5\0߮\�`\�v(\�6#v��F\�e�	��p�\���=n_��O�a�[;\Z\�(!TĢޠ�W��\�ǀ:\�	��~{�VP^tפG\�\��\�x[�0p��\�\�4�q/�\�\�݅�wc�\�8�}�V�\�k\�-�\�\�g\0cI��\'m$�\��:IҚhU\��l���!\�\�ԙ6C\�\�\�rs�\n\��\�\�B|Mztơ\�\n��hsC!��]۷\��rW1������DF0\�p#\�þ^\�]c�\����8\n!���\�\��8���1{v�\�̖k�_r\�x\�\�P~01\�∝\�\�\�\�\�;�;|�\Z��l*nnX1|q45�q�\���u����~\'m�uh8�*E\�t�\�Ӂ\��)\�)\���6\�3i\�JO\�,fIdP8\�\�g�(�\�\���g#�me�4\�P�܍P�u\n\�mM��\��\�\�;N6\��\�hs\�a�Ԓ��1yQD�ԕt�Q�F�\����nx��\�f\�)\Z[1��i�>\�n�C5c!YE��C【\�\r\0��e:ش\�u��j�\Z��\nu\�#��j\�\��i\n\�\��\�\�ßR\�be\0�s<\�X\�\'V�;\�\�W�-\�\�\n^�s���y�o[\�(�DY��\�8*���\�lL��\�6\�B7�����F�t�ű!/�׬�\�\�m�\\\�2�\��\�\�\�}��v1\�,�\�\�MNX\�OvR=\�\'c�\�\�SfM\�94o���\�i�\��5�Iޠ�\�\�\n\�\�\�?}\�>|���cU\�lA\�:\�c�\�KՔ!w>f@C\� }Z\�#<u\�3\n�!/K\�F���\�Qct}.�\��3La\�3\�\'�\��\�\�!Wb -��\�0=jy�\�K\�K\�\�\�\�5\�5m�����,M\�W\�xx��e^�s�B\��\�`P\��\�1��P\�Xu��)B\��\�\�Hf/\�a\"?\Z<�<r\����W-���\Z\�\�\�\�2����W982\�t�\�m�e\�%�t\�k��|�7\�re��\�q=���hڂ\\�^\�\Z7`P\��F�\�L2\ZI���Q\�Y) \�炬�#�ؒ\�d��\��E�9\�|0��8��\�$-�`1\n�85�0	\�t�x\�+z\���[�ƴ��|K\�r\0|ag.�DЄ���7�\�\����汈\�C\�\�┳\�p���1\�6\"ٜ���������\�\�\��/)\�v|\��LnG /N*A�y�)��P�\���\�Xj� 8-���\�V�E0xj�|�\r�� �\r���D�5\�v�q���[����e\Z\�P	b+y)\�h�\�6؞\�5$l\�h݉0�/)\�\�J�p�\�0=��#��� �CY�Au\0�\�hk�_��hx����\�ؾ,[h5A+1Q�\�:�n�\�$*���\�4�\�$��\�!a�*�\�oS+w֙����gl\�0�܋�&0�E\\\����V<|�Ix��c��t-~t\re=\Z��1\�\�6=�Pkڮ�\�a�a�n�Md���J�\�%I0Srl�B�$7��A\�u�\�\�>\�BXS�\����h%�͋��s:�[\�\�\�t��\�۵x�޴طk����\��\�\�9\�\r�\�E\�DZVwN�-N�b��\\\�#OyY1G\�)	BC/XijT\�ox&>H�ԉ�\0\�\�\�V\�W\�2s\�x�(»\������\Z��D\�\0��\���\�R\�j\���\�7��m�b;���\�\�Ĕ)�A��~�^c%\�\�@\�A�\�@\� k��*B)�hQ9��!�qM]\�	����B\ZF|c[�\�h}lE2	߸c�l��!ݗ`\�%�\�\��\�	j8ҧ\��-��@� \�_�I�\���i�}P�\�\�_���d:ah��Q�R�ƕ>�Y3�\�+�MX<�(\�\�VW?]��̓�[B��/\�\'x��\�o��\�d\�q\Z�\�\�rq\0BTG!�o?z�v��O%�mYdJ܀f�]L~�>>���\�\��\�`�A+\��¬�\��\���Y\"��\"�M\�^\�O�vt��ɓi7���|EF=\�G?\��(bD<(��Q�x|Ͻ!�\�\04\�G��l�\�\��R��$�E\�0@[�}Q��L��:u� ��1Ƒ�A�1Z#J��\�\�@��ҝ��w\�v)5�M	\�MF�\�\�	��\�	ތ3�uA�\"|b\�#�\�\�()\Z�G��\�\��\�޹\��0\�\�C,-r�}Ou@�=/�\r��n.7\�1U]@-x\�`\Z�ז6��\r�^	}��;[�\�\��R��\����;V\�@E{V���F�o͡d,��\�\\\�80��C\�$q˖,=\�\�\0�҄�\�\�aҶ/��߶\�8\�\'~��U��u��̯\�ÿ\�;�^zx��\�Pt�盂\"��$�m׆\�\�2\�<i���N�ڕ�\�#\�O��\�z.\�\�M�\�C��\�m\�/�\\\�\�n��{�趶Q��2ڥ\��\�S.��\�0ó\�\�\�+\�\�|;�I\�:�a�\�\��DE�wG��&���Jo�v�-N���@&\���u�\�BB\��\'����o�\�-dji\�\�(>|[7k\Z��ͭ\� \�nM5%\�a�$B|��ݼ�����c8�T����\�d��}zq\�`I\�˿Q\�\�\���ןO6>E�\��\�\�\�\\X��le��&\�}H\�Ti�Z\��̓\�*�H\�\�r\�Gǃt*\��\rb,\�:m5A\�ja~8�\�A�\�Z��7{�*�\�\���<\���sִ�-h�T����L\�<���Ջ(H��/>���;\�\�\�B�{bx�M;\�s\�\�|\�?\�.O\�\0��}`\r\nendstream\rendobj\r19 0 obj\r<</Length 7507/Subtype/XML/Type/Metadata>>stream\r\n<?xpacket begin=\"﻿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?>\n<x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 5.3-c011 66.145661, 2012/02/06-14:56:27        \">\n   <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">\n      <rdf:Description rdf:about=\"\"\n            xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\">\n         <xmp:CreateDate>2013-11-19T15:02:20-05:00</xmp:CreateDate>\n         <xmp:CreatorTool>Adobe Illustrator CS6 (Macintosh)</xmp:CreatorTool>\n         <xmp:ModifyDate>2013-11-26T11:37:54-05:00</xmp:ModifyDate>\n         <xmp:MetadataDate>2013-11-26T11:37:54-05:00</xmp:MetadataDate>\n      </rdf:Description>\n      <rdf:Description rdf:about=\"\"\n            xmlns:pdf=\"http://ns.adobe.com/pdf/1.3/\">\n         <pdf:Producer>Adobe PDF library 10.01</pdf:Producer>\n      </rdf:Description>\n      <rdf:Description rdf:about=\"\"\n            xmlns:dc=\"http://purl.org/dc/elements/1.1/\">\n         <dc:format>application/pdf</dc:format>\n         <dc:creator>\n            <rdf:Seq>\n               <rdf:li>Anil Madhavapeddy</rdf:li>\n            </rdf:Seq>\n         </dc:creator>\n         <dc:title>\n            <rdf:Alt>\n               <rdf:li xml:lang=\"x-default\">Fig3</rdf:li>\n            </rdf:Alt>\n         </dc:title>\n      </rdf:Description>\n      <rdf:Description rdf:about=\"\"\n            xmlns:xmpTPg=\"http://ns.adobe.com/xap/1.0/t/pg/\"\n            xmlns:stDim=\"http://ns.adobe.com/xap/1.0/sType/Dimensions#\"\n            xmlns:stFnt=\"http://ns.adobe.com/xap/1.0/sType/Font#\"\n            xmlns:xmpG=\"http://ns.adobe.com/xap/1.0/g/\">\n         <xmpTPg:NPages>1</xmpTPg:NPages>\n         <xmpTPg:HasVisibleTransparency>False</xmpTPg:HasVisibleTransparency>\n         <xmpTPg:HasVisibleOverprint>False</xmpTPg:HasVisibleOverprint>\n         <xmpTPg:MaxPageSize rdf:parseType=\"Resource\">\n            <stDim:w>5.444444</stDim:w>\n            <stDim:h>6.638889</stDim:h>\n            <stDim:unit>Inches</stDim:unit>\n         </xmpTPg:MaxPageSize>\n         <xmpTPg:Fonts>\n            <rdf:Bag>\n               <rdf:li rdf:parseType=\"Resource\">\n                  <stFnt:fontName>Flama-Book</stFnt:fontName>\n                  <stFnt:fontFamily>Flama</stFnt:fontFamily>\n                  <stFnt:fontFace>Book</stFnt:fontFace>\n                  <stFnt:fontType>Open Type</stFnt:fontType>\n                  <stFnt:versionString>2.001</stFnt:versionString>\n                  <stFnt:composite>False</stFnt:composite>\n                  <stFnt:fontFileName>Flama-Book.otf</stFnt:fontFileName>\n               </rdf:li>\n            </rdf:Bag>\n         </xmpTPg:Fonts>\n         <xmpTPg:PlateNames>\n            <rdf:Seq>\n               <rdf:li>Cyan</rdf:li>\n               <rdf:li>Magenta</rdf:li>\n               <rdf:li>Yellow</rdf:li>\n               <rdf:li>Black</rdf:li>\n            </rdf:Seq>\n         </xmpTPg:PlateNames>\n         <xmpTPg:SwatchGroups>\n            <rdf:Seq>\n               <rdf:li rdf:parseType=\"Resource\">\n                  <xmpG:groupName>Default Swatch Group</xmpG:groupName>\n                  <xmpG:groupType>0</xmpG:groupType>\n                  <xmpG:Colorants>\n                     <rdf:Seq>\n                        <rdf:li rdf:parseType=\"Resource\">\n                           <xmpG:swatchName>C=30 M=0 Y=100 K=0</xmpG:swatchName>\n                           <xmpG:type>PROCESS</xmpG:type>\n                           <xmpG:tint>100.000000</xmpG:tint>\n                           <xmpG:mode>CMYK</xmpG:mode>\n                           <xmpG:cyan>30.206799</xmpG:cyan>\n                           <xmpG:magenta>0.054900</xmpG:magenta>\n                           <xmpG:yellow>99.780296</xmpG:yellow>\n                           <xmpG:black>0.000000</xmpG:black>\n                        </rdf:li>\n                        <rdf:li rdf:parseType=\"Resource\">\n                           <xmpG:swatchName>C=0 M=85 Y=90 K=0</xmpG:swatchName>\n                           <xmpG:type>PROCESS</xmpG:type>\n                           <xmpG:tint>100.000000</xmpG:tint>\n                           <xmpG:mode>CMYK</xmpG:mode>\n                           <xmpG:cyan>0.000000</xmpG:cyan>\n                           <xmpG:magenta>84.606705</xmpG:magenta>\n                           <xmpG:yellow>90.786598</xmpG:yellow>\n                           <xmpG:black>0.064100</xmpG:black>\n                        </rdf:li>\n                        <rdf:li rdf:parseType=\"Resource\">\n                           <xmpG:swatchName>C=90 M=0 Y=0 K=5</xmpG:swatchName>\n                           <xmpG:type>PROCESS</xmpG:type>\n                           <xmpG:tint>100.000000</xmpG:tint>\n                           <xmpG:mode>CMYK</xmpG:mode>\n                           <xmpG:cyan>73.015900</xmpG:cyan>\n                           <xmpG:magenta>13.482900</xmpG:magenta>\n                           <xmpG:yellow>0.000000</xmpG:yellow>\n                           <xmpG:black>0.000000</xmpG:black>\n                        </rdf:li>\n                     </rdf:Seq>\n                  </xmpG:Colorants>\n               </rdf:li>\n            </rdf:Seq>\n         </xmpTPg:SwatchGroups>\n      </rdf:Description>\n      <rdf:Description rdf:about=\"\"\n            xmlns:illustrator=\"http://ns.adobe.com/illustrator/1.0/\">\n         <illustrator:Type>Document</illustrator:Type>\n      </rdf:Description>\n      <rdf:Description rdf:about=\"\"\n            xmlns:xmpMM=\"http://ns.adobe.com/xap/1.0/mm/\"\n            xmlns:stEvt=\"http://ns.adobe.com/xap/1.0/sType/ResourceEvent#\">\n         <xmpMM:DocumentID>xmp.did:0380117407206811822AEFD899E57EBB</xmpMM:DocumentID>\n         <xmpMM:InstanceID>uuid:68138b8e-f9a3-8e4e-8728-41fbf0395396</xmpMM:InstanceID>\n         <xmpMM:OriginalDocumentID>xmp.did:0380117407206811822AEFD899E57EBB</xmpMM:OriginalDocumentID>\n         <xmpMM:RenditionClass>proof:pdf</xmpMM:RenditionClass>\n         <xmpMM:History>\n            <rdf:Seq>\n               <rdf:li rdf:parseType=\"Resource\">\n                  <stEvt:action>saved</stEvt:action>\n                  <stEvt:instanceID>xmp.iid:0380117407206811822AEFD899E57EBB</stEvt:instanceID>\n                  <stEvt:when>2013-11-19T15:02:19-05:00</stEvt:when>\n                  <stEvt:softwareAgent>Adobe Illustrator CS6 (Macintosh)</stEvt:softwareAgent>\n                  <stEvt:changed>/</stEvt:changed>\n               </rdf:li>\n            </rdf:Seq>\n         </xmpMM:History>\n      </rdf:Description>\n      <rdf:Description rdf:about=\"\"\n            xmlns:ExtensisFontSense=\"http://www.extensis.com/meta/FontSense/\">\n         <ExtensisFontSense:slug>\n            <rdf:Bag>\n               <rdf:li rdf:parseType=\"Resource\">\n                  <ExtensisFontSense:Family>Flama</ExtensisFontSense:Family>\n                  <ExtensisFontSense:Version>2.001</ExtensisFontSense:Version>\n                  <ExtensisFontSense:OutlineFileSize>0</ExtensisFontSense:OutlineFileSize>\n                  <ExtensisFontSense:KerningChecksum>0</ExtensisFontSense:KerningChecksum>\n                  <ExtensisFontSense:Foundry>--</ExtensisFontSense:Foundry>\n                  <ExtensisFontSense:FontKind>OpenType - PS</ExtensisFontSense:FontKind>\n                  <ExtensisFontSense:Checksum>2560462249</ExtensisFontSense:Checksum>\n                  <ExtensisFontSense:PostScriptName>Flama-Book</ExtensisFontSense:PostScriptName>\n                  <ExtensisFontSense:FontSense_1.2_Checksum>2560462249</ExtensisFontSense:FontSense_1.2_Checksum>\n               </rdf:li>\n            </rdf:Bag>\n         </ExtensisFontSense:slug>\n      </rdf:Description>\n   </rdf:RDF>\n</x:xmpmeta>\n<?xpacket end=\"r\"?>\r\nendstream\rendobj\r20 0 obj\r<</Filter/FlateDecode/First 12/Length 189/N 2/Type/ObjStm>>stream\r\nh\�<�\�J1D_%op6�5\�B���H�mAz�\�n�5	�Q\�\��f\�\\\�1���\�J_M\�l\�\��.6>t\�|����\�߶\�Kp2�iVܒ�|�\�+G_l\�r\��5\���\�1�֓����X\�\�)�d���,{�G�{\�$\�}l��\�\\��̣\�ûҗg�͘��s�N\�u�XI��ͶX�u]�0\0(VE�\r\nendstream\rendobj\r21 0 obj\r<</ArtBox[0.0 0.0 585.0 783.0]/BleedBox[0.0 0.0 585.0 783.0]/Contents 22 0 R/CropBox[0.0 0.0 585.0 783.0]/MediaBox[0.0 0.0 585.0 783.0]/Parent 101 0 R/Resources<</ExtGState<</GS0 131 0 R/GS1 130 0 R>>/Font<</T1_0 82 0 R/T1_1 137 0 R/T1_2 134 0 R/T1_3 145 0 R/T1_4 98 0 R/T1_5 84 0 R/T1_6 148 0 R/T1_7 97 0 R/T1_8 95 0 R>>/ProcSet[/PDF/Text]/Properties<</MC0 75 0 R>>>>/Rotate 0/TrimBox[0.0 0.0 585.0 783.0]/Type/Page>>\rendobj\r22 0 obj\r<</Filter/FlateDecode/Length 6902>>stream\r\nH��Wko\�:��_��\�\"VE\�ϋ�@�6�-��h\�\�]4�Zbl6�\����\��gHJ�b%�\�\"�_\�\�̙3o\�g!3��Ɉ=����mȖ�\�՜�2\�\��g�0��\�\�^l�3x�q0�\�h\�p~�>�\�mJ?�z\"��A\�=�H�\��\�n�\�\�\�^\�悁}�e�`d~O\�x\�\"��yo<�\�?\�\�ȝu��s#w��\�Q0�g\�\�\���\�\�\�\��\�\�\�\����\�\����~�\�\"�j�\�\�\��\����0\�޼y\�޾�dg\��\��kzyy�\�ɰsr\Z�ɔ\�Lϼ�����\�\���o��\�\�;q��ܼ=�\��\�{v\�G�wymJt�Tn�\�\�\�\�&6m�\�}X`�Z\�$r\�2��\��r��o\�\�A<����!;id\�o�q�0[C?���~4��e�v)�B���0�Sa�>����ϧ\�ͧ��&��\��\�0`\r\����>s\�\�B\��\�\�o\��}Ǜ�#�\�\�5=\�i\�&Q��{��R&\�z�2ɪ�魪�[�c�e�f����\r50\�\�-�g:��C6\�A\��\�;8��%���_LɃ�4Y�V�\�\\�u\�\�>��\�/~z�l\Z>��Z�>|a�\�ӫb��Ů\��\��\r��޵?\0�\r=U��x\Z�\��\��.�D��/\�e��\��\�b*gWjY�\�\�\�\�\�ј~:p�mܦq�\�+�\�\�2d�?�*�f\�f\�A��\�MEã\�uŊ<\�1A\��J\�R�\�L=ʒ�G.\�e	\'\�e\�e����l�ݏ��\\�,\��,�u\'А��+�\�\�\�I�rS��� s[\�n|�c�h�h7�D\��\�9�\�d*�Ӟ�4�{�T�\��T\�2�+f!.\�s\\F\�.w�N�����og^ZmH\�F\�̓�a\�\'�\n\�|9�Q8;�(\�2O��f/xhײ�\�@+����W��\�\�~pK={\��Pv>�!\Z�!�u��\0\�xfAmNb��쐩���H@R! | \�\�>{2g�ֶ(s\�\'\�\�ʤ%A��Y\0����\�٦\�2M\�!}u\�j&q���6\n�T���(�y\ZǂN��G��Y��%�Tù�H-��Av�2:\"+ \�6T�\�Be�\���U)��\���it�d\��DQ�\"d�Xdp\�\�/٬J%\�\�3@�U2\��\�\���T^�bEɮJ)\�޾c�u�P\���,EZ���w=BEv�\���\�\�\rØX1�����?�>E�3u�,��\Z�.L�e\�N��L��[#��!)�z.`IVԩ\�W��\�DɊ\�\�Q\�\��HP\0�\�@\�\�5QB�\�[J�	e�*:!\�=P,�\�\�&J]%��2�\Z�w	��x0כL�A%��0x���(�!�~\�\�=�\� \�01�.md�ȶȌ;�,��9㯩I\�u	٭\0\'�w\���|�;\��EK9Љ\0_\�\�\���8�h\n\Zq\�Ù\�A��҆wX$�)FP\�q壤�\�6)զb�XAOt�;9�µ&\�\�\�q\�h:�-K��\�)����\���c��{�c\�1\��_\'>�\\\��߯1\0gxf\�3��\�tԊ7FJz�p�����!�_03Br��(\�MR\�\Z\nE=�\�\�u\�ub��q\�\��m`k\����i�e^�\�龑B+��5po>\��AV��!�\��#)Riq�ʻ0\�\�C�ѵ5p����^\�Dc\�P�h��A_\0\�\�v�\�\'v���/)\�|�\�SuO�$uf2\rX�\�Ni:,?G�\r�1\�bڲre4����~\�����Wѿ�\�a_h�,4�O��Avx�GǞ�qt޴\�9�	Q�n\��;X\�e��=�M����+���eQk�@\�dU?h�f|\\|��\n��Vj�\Z \�T;A�\'ի x��5\�\�\���\�\�����K\�J01\��(�\�J�\\�G?�E�n�=\�é\�ϧ���-���&�V\�\�Mm\��\��\�KG�`�j�N ]]@\� ?�<v\�S26��`Q\n@\� \r\�CYU6�J�Bٞw��{�C�$r��(�Q�sua��\�aBqB�D[n\�8r\�x�\��\�S���\�w�7ˆ)*YR\Zk�\� -M\'d\�`��\�#Ww0ੋ5�\�f\�\�\�\�3�\�=��\�0in�G@=+G�f�yb���{���\�ɜ\�n������+\�R�\�Dg\�[=H����2�hΝ��v(L��xzf\�\�ʧ\�\�bǤ\0*2\�5f�P����\�7퇂�\�\�\�UÛ;��kЉc�\�V\�.|]+_2�if���Xi��@)�٨t7KGc�\�j.\rV\�c\��$h-+a�^�\\|\� wQ4\�\�MEn.\�:c\�8[ʜ|�4�\�V7�\'\�V�$&s���0�ƀ\�\�\��d-�B&�\"`�!��%\�S��ޕ`f#?\"?\��l��+#M�\�|?Ǜ@�A��\�̲�}@\�v��I(#L�Aeq6\�\�A��\�l\�F?)\�Μ\0�\�\�\�sZCѝ��T�\�zV\�4�X���B0�SSQ�Mw�FM��id�\�\�G��)�\�\�\�! ݐ&ZO \�\�\�?i{�\�\�9a4�{�)A��d�\�>Л\�<CQ�\�r\�r\�Qm>\�{�\�Z�u]JiI��新}ʂã\�Y\�\nw\�]�SڶQ�\�v�/\n,�h�%\�#\�%\�	\�*�b�̀)\���\�M\'�Z\�c\��\�\�6\�t:m���~4��\�\�wl�%K�!�\�\"\n\�6\�\���z�)�24u�+>��f�kw�pR�լ�*\�Р��Za{������j�{�\n8\�N�}\�CC[\n�H\�P�\�\�Χ�b(\niۙ(f%�Ba\"\�S�}a�ӜY�\��\�u\�ֳ\�ֺ��ȋSPU\�ӗDZ�E��i�.K1�L\�נMC^�Ԯt�4=;WÚ�\��\��?֫l��刾�+\�\�Q\�`�^\�F�7���DY�(J�\�%O����\�\�\�6\�6(rz��k=u�\��T靄^6\�!9K\�V`�\�V0��zu�Z�I5(Xm\�\�S�\�9#�\���\�У�\�\��FT�$\�\\P�\�5\�b\�\�\���|}����\�`bYm��\�\\m.�\0 O{\"�m��&C�}�N�fٳ�x}��<9��\�ѿ��ِ$�ǟ\\!��!*�\�\�Tk�4P��T\�i��=\�H��_^#;1�\�w]\�	\�Y�tf�3B5@��n\�hjZ\��j\�s}F\�\�e�j}B\�Ғi=��g��O<.5��m�ŗR�\Z�\�ޥ)1��\�V�\�[n;�P\�N�6�(��<\��ڴ@.�\�\��b$�/�h�\�\�p|AT# �\��\�\�\�\�KG��\�3M\�\�uz��$\�\�Tgys|v�]\�U�9L#c�\�\�\�ǈ�i�\"=�\��\�����\��\���v�L�S�3-k7=�i��\�L�ZM?ϐna�\Zt�VS\�\��\�n2�v�N�6\�{\n\�u��fzF�rDg�E\�\�ogsD9N�9Ԗ\�\�ѰA\�\\k���\�Q�\�3\�t8L�y\�_��y\�`��o(�zrS\"\�JAl�0SQ>���I\rk}�ƫ\�ܰ�gsM�=�Y\nfm��\�p}�YIO];�[�X�<��i�\�E��5���e�W\0h��\�\�\�\�\�m�D[�/�y۫���Y��q��b\��\�M���L������n�^F�%\��v�_\��IR�ᗠ���\�ީDvRl$L���O�MV@�)\�.\�it�Z��A\"f\�M�\�\�,SH3����\��:�k��\�*}\�b\��4�$:y�p\r�\�HSϪ\�`g-����\�åcS)�\n�㎕yL�?L���\"���7A\�9�j=���\��XOn�X=Ʒ����\�س�\�\�\�r\�Lw]�J!{!\�#ch�n\��4�\�\�j\�֔\\��b\�\�\�J\ZJ�\�h�4�$���x�XU\�\�\�@\�T��\�\�%p��؛.����+�[}�L����+i]{WyxS��\�K\�N\�.�\�V\�\��\�ߋ\�J�:Dq�\�;g�i\��t:\�^\�*���\��_ދ\��\���2�\�\�\�u���T�q����&j�i#\�kĆw�ll$����\�\���r����o\�[�\�\�\�\���\�\�C!�{�\�E����j\�q1��o#p�#X��\�	�1\�\�;\�r&�7u���ʣ)���\'\'DN�іǫ\�\�\� �λ_�w�o@,�X�;kLߧʹ\�\rݩ?�SHӎ1&Q�\�\�\�\�h\r�N�^V\�^�tV����p	Y$�/��^f���	�����]~8�\�H\�^3է\�Fy�\�\�U\n\�J�E\0Т*�\�5�#@\�8\�,\�\0�o�w3\�\nPE\�4N\�\"\0/[ͤe\�&\��\�9�Q�>Ki��9�xI,\�5\�<)���cJ\0�P\��a%|��g%DsI{�}Y�7�\�*)�+w�T\�\�Z@C�3\�\�\�`��d\�\0Ƶy@��o��Qa\�c�ʪV\�\����I0E�\�<\�[pu�w �-$�\�yi:\�\�\�\�_\0�EW��@�\�%7H��\��)eX��y>kW4��o�\�\�u)M\�^&N\��L?�\���4\r\�Ӣ!�\�\�\�?\��\�rz����1�/\�&B�\�^�\�%��u�\"�a`4Ǻ��]\�\'��Fj�t}\�b�jl�yN��E~L\���p\��\�I9<vjkG��پ���llzK>u\�+.[[\n�q\n�c�\�4G!�@҆2<\�`[KΈ3Ă�~�\�߫\���\�+Ì��s���	���Pk/pPG\\98��Pikj�l�-Tm()\�O:7\�p$:o\�\�l\�G\�S\r\'\�Q�\�?�K{\�\�=0\r\�V\r�XD>��:ڡ\�)`���\�H{�S\����\�[\�\�f��F\'�pcB���:�����K$�#G�\�\�^\\: \�\"m�K�Ѽ�\���;fy\�3pM$������:*!8�C頶T|�\�/\�z��:�J-HK�b�;��\��R\Z.��\�,X|\�/g�����I\�\�}��ѤC�W�⿻1��yo�BH{\rH\�\�0\���C�\��\�\�|h\�{z \���9�V|\'�����\�\�;)\�w�\�\�(\�-h\� h位��`E�5\�Q<ܸ0\��=!\nO�z�&\\w��\�{��D1`�G�V࿣y�YÑ�9�SN�yy\�\�n-�ٴ\�[\�.\'>c\r������a�T�D�(��\�@� <D�\��G:�т�]O4hM��֙}�S\�4!Vha�k\�s\Z��a�\Z\n\�ۅ�\�\�@�A��\��[�h�A�v.\�\r\�\r�U�	�/}m��;�\�\ZhT\��\�\�\�\��k\�\�ν�9\�Ƶ\�>��F:\�|p1ILm\�R�e���)b|*	&6��\�x_B7���\��g�,\�_5H4�\n-� �E}���Mg��>6I2R\�J\�l\�m\��\"\�ebΙJ�?�Z\�#vN�eɣ�%\�)͉@\�A�sJ�����%\�J�KIA�@E\�F���\�Kni�=\�L\�	$k\�tJ�\�|��t>���<,2�����jjޢ�\n�!\�t�\�EӐ�7��_I��*N5����v/�Bz)\�c\�˴�Ģ���ش0\�\�V�K\�b&����U	�1�2߇�\�\�\�\���w��u��P��П���Jz\����9�O{�@�\Z	�LѠ7NI\���\�\����\��\�wTנ\�w�\�����y~OA�^/�������\�\�\�D�b�����Ф\�Z^4�\�\�d�Qh��\�\�\�c�\��(|d�-f�/�\��ԑ�Z�\�A��\n��\r\�=��\�H�dhTup6�L�P\��\n�(ٜ��?�xXP�\�\\ \�%�>\�\�\�\�Ӥ�\��\r��a]�,@\�@��,��C�~�\����>\�d�f�\\����\�F������C�j́*�\�Q8\�\��܄��\�=F5f�`�K�n.\�\�(�|aΧ�G\�&}\� �ʺ��4o6�\�\�\�\�6+~�HZ	\n�;�\"����t�Q\�i!9؜�n����kN�f\�\�h�wJ��^\��;7�o8E_I\�z+\��L\���T $I\�\�+#\�숦��\�&���s��O\n�Q��\���\�~p\���K��G�V�\�R&:0\��3_m�mQ�ݿbe�\�3g\�`qc�\Z\n1\�C�#�+�\����\��;gF�]\�R\�}Hci�;g\��;\�\�\�џ0Պo�/(*�\�ؗ\�\�s�\0?��}4	#��\����h\�\�D	\�.#\�.\�.~VL��;\�U��X �c���u\�S,3p\�R�\�\�|?�\�Q\�����f��AE\�<SP\n\Z4��lK)�׹bi3�7)n���\�மf�D�/ʩ�\�`J`]\\<&r\Z\Z-��\�\��d:&\�\�\�#\��H<\�HfC!�\Z��yL;ֆ�Dsg\�OQ��\�]\�v?#Ó \�=2@=�@)ْ$\�IBN\���\�5�\�qJ�Os*MI\�\�\�\�W7\�\�G��W/�_�\�\�\�\�QO\�\�\�D��F\�D��\086J�\�Ԉ�/\�>�lq�\�V׏wK&�Noo\�\�\�Ӳ+oO)a�a\�q�\���\�\�*�v.\n��\�M�S�%��f���،\�a����\��w��\�ۻ\�9�\�?\�~�\�R��]�N\�~���G4&W8\�;g�	�J��.\��\�\�pU8\�\��E�#�Q�\�\�\�*T�I&�3�\0�7�\0�K��i�\�\��a����/\�>,p/�\�>ƜH�.FS(G/�U�,u\��#<f�S�)�-\�`mK�w��\�\r\�B\�o\�HB\�a2�s���oG\�B\�,\�p\r:�|R4�\�ƑT}j)V6��\�\�\�W��?I�vֹ\�5\�^m���\�\�e\�򳽶�\�H�}/���o���\\1����\'�\'�\�\�e\��E\�q�}�Ǎ�Zܸ\��x7[\�\Z;��^J#n{��ޑr�\�ѧH\�\03s�0]\�\�\��%V�X/�.�^\Z3�^c@�p��\�X^)@j�\�%��%�eѧ]G\�G\"Okl[<\\�\�W\�?\�\�vZ��\0��K�#�\�q�\�\\��\�?]g�رB|.�+��\�s��|�\��Z	�-�/6I�&-�%�,!\r\�B���	qР~Ӑ\r�p\�H�;\�0Km�\Zn]~�Y\��;6\�\nY�-�9L�\�s�2�\�1��\�\�-ŋ�b�d�j\�0k�?�\�#hj�\���A��\'��-\�\�\Z`N��դ�\n�$�\�Bc�9p^\�2x�,\�I �\� \�\r:n&\���o\�0n�Xh\�,B�qҢ�\�\Z\�b��,>��n`RDb&�Ŗ8�Y^�n8\ZHtc/4X�4~|<�T/�\�r�E\��K\�:��PW>#\�\��$�!\�+�RHe��͔xc�d@p�T�3�<��:\\X/�#!��\�\��F��\�\'B\�vI\��\�TA*ꗪ��)�*�f�*Hy\nY�*L\�E\Z5�.07;QKQ`� ���B؃�)cfN\�d�D��̌|��`0Z\�)\�w?\�)Hiq\n-��:�u͕E(�T� Us�b�4Y\�C4\�Kf�*3�\�Ms\�bi�.�6O�K���\'�ԋ��\�\Z<\n�\'��O\�p�{\�x��;8%1�4j\�or���x		\�].)\�\��_\08\�h�i�p؍�\�+\�\�\0�\�W�\�\�w���?\0%dS\�\r\nendstream\rendobj\r23 0 obj\r<</Filter/FlateDecode/Length 4893/Subtype/Type1C>>stream\r\nH�lT{Tg�!\�\�\0\��Mt�E\�\r�\n*E[\\ �HxH��\"\��P+\nҪ]��h|4@���,�E��Ud]�ZYw�\�Z��\�U\��K\�\�	��{\�\��\�=�\�s�~�☳�\�D�jMt\�\�Ȃb�\�`N*\�;�?\�\�\�3tj�\\:��\0��i�Fϒ`\�8\�\�]Ր_Pd\�Z��W�o\\� ��Tf6n\�-R���\�0T5�AS�`\nN\�\�)\\2�!�T� e�� ˠL*+,2l)T�\�\�.0�\n̙E}�2\"/O9�Pi6\Z\�%��w\�&i\�Le�Ro\��0\\�0\n\�\\il&��cX\0���a�\",\�[�a+��$Wl=��ax\r��\�c�X6��\�\�x)�)މ\��q\�dp�s��(^�Kt\�9ݹ\�y�\�\'�\�m\�%\�Cf�\�j.U@�P�\\\�.�\n׭�-��\�(�:�\'\�*�F�q�\�I�1O_\�<\�~χ\�q�x\�K\�e�\��\��~\�\�\�\�#���D�@:[Z$=T\�\�?\�\�{{y�^Q�/_;o�%�\r\�\�8@������`\�O\�\��Swx	2\�_�7\�\�\�*n�X\�\�JƸ}��SZ\�_�\�7e\�v9�I\�[�,�$3w$��̈́�D\�Ǜ��ɬ�\���\�\�m̱ª_w4U���hh6�\�U\�\�\��Q5#\�Q&T/Γ%t�\�\�\�\�:iy{\Z!\�����5�����=g�(\�s&+p�q\">kr\Z�%W!<\���Y\�P�`\�G\��	�\�@|\�Ǿ	\�g�&N7�F�H�y�\0g�dK\n\�7�\�$�!�H\�\���O�A\0̒�\�%��\�7D�vޏ.���S�A I\�C�(\���(��������\�.r:��	1$�8XYi�!^�\�Q�P<�\�Ј\�j�K�\���&Ű�\�AwD|l�9tGC����J`D�\���l\�fӦ-��]_��<È�\�\��S^%\�&�\�:��\�zO	!t�/�9s\�\"$�.\�j뇙+�-\��\�\�\�\�!捪��.5y�\�+es��LXq�!o�\�\�л��r4�-4\�=Y\�T]\�\�\�+\�\np\�\�-�5u��A\�\"�\��τ\"����\��\�(�=�\�P\�A\�3P�@B�)`�\�,��1��D�NP\n\�Ǉ=_�\�Z\�o�<\�熷�\����4EK�\�n����e;j*>�`�6-�\�Z��P\�o�Vq�\'V\���\�\�\'\�� �~\�f<�H_\�Zl��e�w�\�y�\�*\�vDˣ㋌Ɋ\�\�\�\�W\�\�ڒSӲ㔊Z\�aR:\�\�Z��EѾ�\��l�\�u�	k��ә\n]GQ8t���|�M\n�\��^\�\�@v�/7�\�87`������`U\"\'��o�\�Ud�\�R���B#�8�\�k!��~�|\�\�\�rH�nM�Aʶ�8{����|����Tkgĩ�-\Z\�N\rQ:tcۈ\�σˈB\\\��n4�g,�kb��\�+���@��z�1U��\�Ȑ�ԏ\�\�Ww��a,�rZ�\��\r��|��\�E\�[l��\�\�m�\�+���4X�p�~����u�]Dk�1�\�NU\�T7\�j�=\�r\�z\�ܰ���l\�	\����\�\"�\�R\�7q�����z� =h@\�ٿC�R\�M\�)�\�S?\��K^�z>d7�\�\�������n\�\�\�H��7w��C6�=�d~\�$�ŵd^43җ\�U\�f\�\�\\>��{�uoL!}	:6%3Ҹ�\�Ӊ���.\�\�ft�\r3\�\�\�z��\�G��\�Zň+`u?4uwe\�P�F�\�l�p�i۔~8]�D+�\�W\r�\�\�־ӊ]h\�\�X�\�\���M5��T\�\�#OI!\�\�>�Ħ\0�\�q� ^�d�s*\�\�\��:\�\�m����{��x]C���\��\�1��@!\�=\�\Z}��\�\�a\\7�6�\��\�T�;�B\'���F�\�[�\�iJ�璑�N���\�cD|Շ4G�\�0��\�\�3QF�����\�G8�\�Q��Gh(>�h\��u\�!�\\\��6I5\�B<�\��|9-��|�\�4\�G�{��\\NE�	H�\��$\�֐�C�\�H\��\�	\�-�;X�F?\�%T��{}r�\�=9�\�y\n ��ݽ~%O׭XʂQ���%��k%\�Q����(�;�[������c� ��\r���\�}ͭ\��\�;}!I������+9X��@����ڡM\� \�^�y`\�Z�!\�r`ڎ�S��/\�g\�\�P�\�>2 +F9��u����0�hm\�\�*�\��Gu�Eqea�\���e�2��8�\�q-5\Z\��\Z@�i\n>��\"�(�ʊ\�U	(2(\��A���(\"��F��`\\K��\�*���M\�V���{\�=�;\��\�w\�	���}ωDȆ:��t\�^�zU��x\�b��̗\r�\�0\�2DU����U�\�d=^��O\�4F�l�\n�M|g�\�\�99S��4=E\�\"h#\�QC�e�\�lT+Z�Jl\�ٕ\�k�*݋0�FΜ��\�1�Eӽ8�\�\�:dg �\�\�\��=L��\�Y�^\�x���)n\�\�x�eg\�ϋ_��Gć��H\�&���\�nm3�����.\\ЋN\�\'m\���\�\��n�*ȧ�+����-�����V\�m|\�\��6\�\�\�ۄ��0��\�Y#�I�#lY�\\ё\�5�\�<�w�R\�\��g4ˊ�N^\�\�h��KCcJl\�V\�L�`^0C�$0���C99w\�.�.\�h�\�X�9uS\��\�$\'\�\�/9wNQ\���O(b\0a\�*&��#����~�\�\�o�\��S>;��\�\� \�r\0#	�\�~:� t�\r\���u�\�[���R�\�Z��-\�f\�\�\�\�SW�\�;���,\�h��\���\�N�a|��4G�_W5m��\�-Ƴ\���\�\�\�\�\"�Kl�So4\�\�\�>k\�8��ޖX��cU\�	&�?�)k��GjX@�\�~ׯފ�j�!\�!�\�(?�n�_1\�doU1j�5Kew\�K�\�b���������8@׬\�\�Wlw\���B�[w\�\�\�|pn�\�`o\�6��Hl�lr\"S �)\�q*��?����;7\�\�7A�1XUXz�\�W^��rZ8���Z\�\�F-ɥ�\�2y����f�~\�^\�Hx6\�f\'�ӱ��\"�r�/�+9x�\�(���v\�s�3�W2���#Ѿ����&�t0U�F�X4/i\�8\\\�f\�4�\�C�\�kjgR���\�`\�\n�Ө�~\�^�8<i{\��Sy���6\�\�!�\��t�n=Q�O��\�\�\�hP��\�\�uS\�\�U5�?\�ΔF�\n\�\�\��N\�\��n2h{o�\�]��4�\�S�z\�D<\�v\\$\�0�bZ�\�:\�!\�:u\�t �ۭg�\�S(�3\�A�b��\���\�\�\�ۻ^\�߁+\�/(�zКm�7�:5ˮ\�65����S\"���\�_!�:� 5\��\�	h�\�p\�W\�qp;ځ_gwIE+�u�Z}5\�j�8\�KG\'Y����p\��\�f;���o]\�j߼n%\�\�\"d�\�Z�Q:���c�(\���\�0����\�yP�#��ta��4O5YF�g	�D�C�\�@��a\�\� \�\\\\@�\'�\�=Q\�2\�ާ0\�\��\�:2\�pȬ\�EB��`\�ֆ\�)\�8>4Ӫ\�.t�\"\�unށcFM�\��짖>��\�sѪWV�m�^�c�T��\�\\O�����W.\r\���\��05�\�.�r]��EӦXś^�l��:�\'�)8\�@�-�h�>�ƈ\��V3���\\�,\�\�?n\��_��\�;\�\�g�:��7Eȷh��]IY�y���\�m\�\�\�\�8!#D�~�6\�ĕ�\�\���>y�K�[	x:�>��	\�\�b\�\�}4�Y^o�����	+�+ث�(�qWɺ\�o70M\�*v�ju��i�F�0S�ς�\�;����\\\\/\�4���w�h������}<�\���H(\��\�jZ~�\�OIٳ�[�j�P�9�<��JX��V`;k?,oI]\'�\�\�\�\�k��{��U�\�w\����m%\\~��\�}Bٷ�V.\�\�9\�̔\"�QJ\�v\�w��\�c\�\�\�\�N���\�\�9���\�0����ÿ\�\��G\�@SW}�\�\ZWc\�\�/`�R@ꓩmi �0z\�+T�.�?�H�\�G�q$}�9T���\�̋;uc<}Q�\�\�睽w�\�\�V���\n{	�z���\��̫�\�ʌʴR�\�\��97�s[�*b%\��\�X\niZ5\�8\\\�Ĕ\�3\��_G��砝�\�)�o<k\��й\�A�\�\r�\�	[)�\�t\�\�YE\�4\'R\�\�\�\\\����\�\Z��r\�Q��H��|6�e\r܉c�q�kk{I�R<a{\�p\�u/<\�ó�9�ّ�5i�Ӌ��-OjٔX\�\�\'\�\��dip�W�qK\�M<�Ih\�\�{/S\��\\\�j\�-Y�\�پ;5S2V\�W��WE�Fj�oM���8���\�5�J����\\\�eJ�\r�_\�\�\�\�\�5&\nk\n3*J��N\�\�.u3\�\�X�Ps`�\�p\��\�\��.S\0\�*���a�⹦І��y-f1�cB�\�p�k�/L�n��\�\�\�_\�\�\�&�ߔ�\��_��/�\�(\ngvw�hn9c寤\�҇°�\�\�D\�Q�\�s��6\�٦`���/1�\�H\�\����\����2(�\r�\�Ca�X\�\�,\�I��\��\��\�\�(����;\�^\�w\��Λ���OÑӚ�r��%[��\�\�p�Yh1�\'�P\�C\�`T�\�(�\�\��6%0\�\���QI�4\�\�	Ѓ\nu3A-d!A\�\�r�$�$=N�	s\�3�D��R\\1t�>�;)q�P��P\'�oA�&�D�\�H\�\0&�Y�( \�+؂�\�J9ֲ�y�O4[h�bbPǅ\�;2\�P\�Z��UT!�Tc.��21\��H���-S,ƠPe�|\�X\�>Kp�\�\�5���+�S<�N���~�s�h!�]D/�|#�txni�Q!\�\rR#*_\'W\�\�q�\�b�U\�SD�\�\�YӁ��~\Z\�\��@4���6\�YqɜZz+{\�,�n��٦\�a<;\�Mr\r\r7�\�13\�\\\�n�쵬�zU��Lų�\� -�wLC�R\�s�\�\'�*�-�*FW��]f�P\���H�l�\��lѡ���]UN�\��\�\�7�r�\\�sq:d�N��Bwbh�AV\�d%+\�3fZ�\�[m�)\�\�\�W^���	LSv\�̪�i݇��\�\�\�rf��b\�4*\�\�x�\Z\�%�\�/H��;�&e���<�	z�H\�s	�aےƗ�\�\�Xہt�\nwx�2��3�)��\�G����\�M2eB\��:�\�\�Vn�\�\�\�B?\\\Z��fP1\r\��S~�U���`\0\�.��\r\nendstream\rendobj\r24 0 obj\r<</Filter/FlateDecode/Length 537>>stream\r\nH�\\�ۊ�@E\���z\�~h�T\�9	��\��0&3`��&*\�<\�臨�\��\�ڮ�I�n��c\�\�&�>\r\�)\�\�\��\�\�\�cj�9�k\�\'yaڮ�?Ζ\�\�V�I\Z���9܎�eH\�Ҥ?\�\��<=\�˦\�\�5I�Mm���j^~mO�&==\��O��~6��*ӆK�R�_\�[0\�\�\�\�\�\�\��|�k�\���9S,\�9e��\r��n\�T�א�Y<*S\�Q%�o��.+.;_�\�����>\�\\�U�\�|]D.�e~/�,\�y^�\�\�\ry~\'���\�-xGށ�\�=�@�¥\�s-�ksr.\�p��l��\���\��t�p�JV0�-�-�-�-�-�-�-�-�-�-�-�\�\�}|�\��,ǵnY\�\�fw�\�av\�\�=f�\��\���\�cF\�|�|\�=f��\�cF\�L�L���Sء�Ca� _�/\�\����|a� _8�`.a���\n:v(\�Pء�Ca��=z:��=(zP:+��\�\ng��\�Y\�pV:+��\�\ng��\�Y\�pV:+��\�\ng��\�s��b��\�\r��s��\��|\�\�\�1Mq\�.��e�b�v}�|��\�h\�*|��\0\�\rr\r\nendstream\rendobj\r25 0 obj\r<</Length 4735/Subtype/XML/Type/Metadata>>stream\r\n<?xpacket begin=\"﻿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?>\n<x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 5.3-c011 66.145661, 2012/02/06-14:56:27        \">\n   <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">\n      <rdf:Description rdf:about=\"\"\n            xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\">\n         <xmp:CreatorTool>Adobe Illustrator CS6 (Macintosh)</xmp:CreatorTool>\n         <xmp:CreateDate>2013-11-19T15:13:33-05:00</xmp:CreateDate>\n         <xmp:ModifyDate>2013-12-05T13:42:32-05:00</xmp:ModifyDate>\n         <xmp:MetadataDate>2013-12-05T13:42:32-05:00</xmp:MetadataDate>\n      </rdf:Description>\n      <rdf:Description rdf:about=\"\"\n            xmlns:xmpTPg=\"http://ns.adobe.com/xap/1.0/t/pg/\"\n            xmlns:stDim=\"http://ns.adobe.com/xap/1.0/sType/Dimensions#\"\n            xmlns:stFnt=\"http://ns.adobe.com/xap/1.0/sType/Font#\"\n            xmlns:xmpG=\"http://ns.adobe.com/xap/1.0/g/\">\n         <xmpTPg:NPages>1</xmpTPg:NPages>\n         <xmpTPg:HasVisibleTransparency>False</xmpTPg:HasVisibleTransparency>\n         <xmpTPg:HasVisibleOverprint>False</xmpTPg:HasVisibleOverprint>\n         <xmpTPg:MaxPageSize rdf:parseType=\"Resource\">\n            <stDim:w>11.000000</stDim:w>\n            <stDim:h>8.500000</stDim:h>\n            <stDim:unit>Inches</stDim:unit>\n         </xmpTPg:MaxPageSize>\n         <xmpTPg:Fonts>\n            <rdf:Bag>\n               <rdf:li rdf:parseType=\"Resource\">\n                  <stFnt:fontName>Flama-Book</stFnt:fontName>\n                  <stFnt:fontFamily>Flama</stFnt:fontFamily>\n                  <stFnt:fontFace>Book</stFnt:fontFace>\n                  <stFnt:fontType>Open Type</stFnt:fontType>\n                  <stFnt:versionString>2.001</stFnt:versionString>\n                  <stFnt:composite>False</stFnt:composite>\n                  <stFnt:fontFileName>Flama-Book.otf</stFnt:fontFileName>\n               </rdf:li>\n            </rdf:Bag>\n         </xmpTPg:Fonts>\n         <xmpTPg:PlateNames>\n            <rdf:Seq>\n               <rdf:li>Cyan</rdf:li>\n               <rdf:li>Magenta</rdf:li>\n               <rdf:li>Yellow</rdf:li>\n               <rdf:li>Black</rdf:li>\n            </rdf:Seq>\n         </xmpTPg:PlateNames>\n         <xmpTPg:SwatchGroups>\n            <rdf:Seq>\n               <rdf:li rdf:parseType=\"Resource\">\n                  <xmpG:groupName>Default Swatch Group</xmpG:groupName>\n                  <xmpG:groupType>0</xmpG:groupType>\n               </rdf:li>\n            </rdf:Seq>\n         </xmpTPg:SwatchGroups>\n      </rdf:Description>\n      <rdf:Description rdf:about=\"\"\n            xmlns:illustrator=\"http://ns.adobe.com/illustrator/1.0/\">\n         <illustrator:Type>Document</illustrator:Type>\n      </rdf:Description>\n      <rdf:Description rdf:about=\"\"\n            xmlns:dc=\"http://purl.org/dc/elements/1.1/\">\n         <dc:format>application/pdf</dc:format>\n         <dc:title>\n            <rdf:Alt>\n               <rdf:li xml:lang=\"x-default\">Fig4</rdf:li>\n            </rdf:Alt>\n         </dc:title>\n      </rdf:Description>\n      <rdf:Description rdf:about=\"\"\n            xmlns:xmpMM=\"http://ns.adobe.com/xap/1.0/mm/\">\n         <xmpMM:RenditionClass>proof:pdf</xmpMM:RenditionClass>\n         <xmpMM:DocumentID>uuid:d53cabbb-70a0-0b4f-9df7-517e96fb08b0</xmpMM:DocumentID>\n         <xmpMM:InstanceID>uuid:301f13a3-08c1-e04a-84d1-2255cbe3a818</xmpMM:InstanceID>\n      </rdf:Description>\n      <rdf:Description rdf:about=\"\"\n            xmlns:pdf=\"http://ns.adobe.com/pdf/1.3/\">\n         <pdf:Producer>Adobe PDF library 10.01</pdf:Producer>\n      </rdf:Description>\n      <rdf:Description rdf:about=\"\"\n            xmlns:ExtensisFontSense=\"http://www.extensis.com/meta/FontSense/\">\n         <ExtensisFontSense:slug>\n            <rdf:Bag>\n               <rdf:li rdf:parseType=\"Resource\">\n                  <ExtensisFontSense:Family>Flama</ExtensisFontSense:Family>\n                  <ExtensisFontSense:Version>2.001</ExtensisFontSense:Version>\n                  <ExtensisFontSense:OutlineFileSize>0</ExtensisFontSense:OutlineFileSize>\n                  <ExtensisFontSense:KerningChecksum>0</ExtensisFontSense:KerningChecksum>\n                  <ExtensisFontSense:Foundry>--</ExtensisFontSense:Foundry>\n                  <ExtensisFontSense:FontKind>OpenType - PS</ExtensisFontSense:FontKind>\n                  <ExtensisFontSense:Checksum>2560462249</ExtensisFontSense:Checksum>\n                  <ExtensisFontSense:PostScriptName>Flama-Book</ExtensisFontSense:PostScriptName>\n                  <ExtensisFontSense:FontSense_1.2_Checksum>2560462249</ExtensisFontSense:FontSense_1.2_Checksum>\n               </rdf:li>\n            </rdf:Bag>\n         </ExtensisFontSense:slug>\n      </rdf:Description>\n   </rdf:RDF>\n</x:xmpmeta>\n<?xpacket end=\"r\"?>\r\nendstream\rendobj\r26 0 obj\r<</Filter/FlateDecode/First 25/Length 529/N 4/Type/ObjStm>>stream\r\nhތR]O1��~Uh\�#����\"��$ʃs�\�|�\�v \�\�w\�.��}苵\�]�gg&OD$�T���a��<�8gg�JO���2,����\�\�\�zM�LA�)�`l�_[��5*�O�g\�\�\�g�x\��&� \�(\�1�\��MD���U\�-(�5��A\�\r9/M�F�֡�\\;\�rʿ�\�[�\�ֵD�o*2\�wʖ�Z�\n\�,�!�w�P9\"�\�\�a�\�^\�\�\�\�t�`7V[\�\�Z��&\�\�#�`�\\\�s\�\�\�\��d\�%�-�c\�X�@	�TPx�+4jX4p�\�\�\r\�\�\�\�=>�r�r�b�+�֪�\�\�zO�,¥�/\�.�	ө\�=�dî$���e��+]\�Z\��ь�U\�\�\"�\�}^iJE���w���	�o�W���nn\�J�\�(\�\�ռ�Z$�\"\\�U11M\"\�\"P� �ao����\�T�\�\�A�A:\�l�\�6�;\�:�v�\n&\�3�-��\�]}\n\�\�y\�+ުݪ>e\�;�+\"Y�\�`�;\\�8ɱ\��b\��L�[�v�0B-b6\�˿�}CA�2H�d-�\��o\0D\Z\�\r\nendstream\rendobj\r27 0 obj\r<</ArtBox[0.0 0.0 585.0 783.0]/BleedBox[0.0 0.0 585.0 783.0]/Contents 28 0 R/CropBox[0.0 0.0 585.0 783.0]/MediaBox[0.0 0.0 585.0 783.0]/Parent 101 0 R/Resources<</ExtGState<</GS0 131 0 R/GS1 130 0 R>>/Font<</T1_0 82 0 R/T1_1 134 0 R/T1_2 137 0 R/T1_3 145 0 R/T1_4 84 0 R/T1_5 148 0 R>>/ProcSet[/PDF/Text]/XObject<</Fm0 45 0 R>>>>/Rotate 0/TrimBox[0.0 0.0 585.0 783.0]/Type/Page>>\rendobj\r28 0 obj\r<</Filter/FlateDecode/Length 3866>>stream\r\nH��Wko\�\���_1�@�I��`��ϻN��>#�\�.�#r$�̇�٫C~|�\�AR�\�E,��eNOOuuu\��<xlی�n�}�F��\ZyL�s\�=wo��{\�g�\�h깞�U\�̇W\�j\r��~�X�8�\�%B��ѣ��\��\�\�O\�\�1�\�\�G���w�\�.�\�\�s}���\�H�J\�Y0s��7g�\�F:��\�x�\�\�\�a\�\���y\��J|�n?\�\�z\�\�\�\�\�?�>\�0�\�����\�h\�\�;|\���\� q��e(p�\�\\zt��>B\�\�\\:<\��(�E��G�s�\�����9�\��3�c����s�\�eQ����{\�\�]��@����;\��G\�~D��\��O&�,t�\�i\"�@0��ssw��O\�\�\�\��\��\��\�Uqx�2v綪Ϊ\����\�Y��C��\�߾ov\�V=x���]�Ϲ�S��\�t�j<�v6Ou\�Ծ���g4[�\�~�\�cav���-\�rz��р�YyhD\�8k\n�\��U�\�\�\�9�~r^wY�c�\�!Ou�3��Ǧ���i\�UM�����Z0\n%w���v˷�B\�\�\�b9X�Ϋ䙥\���L\�\�\�Xsl�(�\�v�\�\\����h\� �Gg+\�\�,v^�U�\"jI�̝L\�/�RV�׏Fr�%���\r/r\�\�̏i�՟FNQ�\�%w\\��7�(��\�ꜧ:gs\� �\�51�l[ry�\��\��_nY�\�hl>D[��m�\ZP1�P\�%G\�dUҩ؋�(\"Q�JE�Ǒ	XaGQJ�!�0\�U�`{\njp�\�~rvR\��|uUa\�B�u�z�46(7\\Q� m��\��\�#wx�\�e)\�q\�:�\�2R�a���\�M}_n\�gkQs)�j܀}8R�naH맃\0��|_Wۚ�½\�5\�y��*F6&��\0a7�2�Y\�3yD\�G�����E\�4��/�F�n\�P��r�l���n�y��lPB\'=��\0gk�\������,����\�\�,�\�\�E�\�0�6�\�.M��b_5M�\�AO\�$\�K\�\� z\�<�d\�K`i$�\�ڟ��\�\������N(�E��\�Xh��X<\�&�\�ؠ\�5�\�\��,E�\�&\�E�����T9q�\�]�:���X3E`�\\ݶ�!�\"p��^˖\�+�\�1¶�\�l(�\0C�;t$z*LL�`���DY\�_T�R��>�ުK�9@���:+�\�g�õ�\"l�M��E�;��]���\n���\�؟;�dm\�\\\�\�73|�/\0�f�=�-/v\�\�R7�\�˹�>\�M\'�\"ա��l\�\'Z2Q( ��\�d5h�O�\����o\"��\�\�ib�����`�gPk���`��O@�D\�T[��F�Rl_m6\�n\��k-4[Q*\�jN\��aw\Z%\�\"9HŤ�8\\o��&%nknM������&.:ABV>Lby\�Sݧ\�\�\�\�[Q�bbS\��B8�\�\�\�<)6[׼\�\�\�T�\�ZVxk�\"\�х�4�\�\r�МA�6�5�;\�Rh���)��a͞\'\�=\�{��\��}Z����	�9A^����\�s(��jjk#\�M\�V5�\��h\�\�o����\�9d�i�}\�RoO�A�\�x�:>\�n��Ó\�v�9f\�H\�	{AI�\�[�����\�\'j��pM�RH����\�fC\n\�l���ļd5\�i��j!��l�\�\nTe\���[A3 ��\rT�^b�l�6������\�Ə\�u�����3b��-�Չ��\�������\�hശiu�\�|��t#H�7]Χ \Z\"�h!A}\��3�\�ye`A�`b`I,��\�\�ka�~7-jdo@�GG\�6\�.�B�Z���g%�\�A�f\�)zc�Y�ƈ�,/贆��\n���\�\�\��\�1Bζ�^�\�M�<G�9P\�k5L\�\�$T\�u���\�+�!w�\�)�sb�)\�\�I�W�G2Ȃ\�Kk*�\Z=%�ru=��ꄽ \�\0���NC��\0\�\"\��\�n�o\��եy\�z^�\��\r#��Z1�\���� Y�5\�\�Zj�k�_\�	�\r�RW�~CIK�&��[�Y7��8\r\�Ŭ��q\"��@\�+�v\�Ѵ��\�ܒ\�)D�R�\�Q�\\�Q+�c��\r\�\\�G�_��=qפ�\\�So\r�)�\�ƢA\�z\�Y9w\"���\��\�\�W�\�\�\�\���\�\��!���\�<��Y�j���\�\�$R��\�ȣe8\�y\�^_{�X\�=\�:\�u\��BM�\�^p)С!\�L�Xe>�c\��,�\�C��gd�CF4�\��U�\�\��\�\n�N�h̅�\"�R���ڝ��r��J����᾵��\�\�\�p����؛A	�Ū9�̺�@����\�s�1>�c[���\�X��\�\r���J2 \Z\�<۠(\�$W�\�L֐+k�MYM�\�w\����\�[w��Ζ\�Ͻ\�Iӹ\�Kn\�\�s5k���+lO�������=\�]�\�޸\�^�\'��3\�|�\�\�룲�@��NF����J\��άa\Z\�rS\��\��5CK�\�`طN\\\ZJ@\�{OKu�f/����Lf���A\�7\"W�\�\�K\�TU4g2=�˴iO\���^��\�w\�\�\�l�A�bU�\��`��:/���q7\�\��\�Vrҙ�^]�!&��T��\�Y\�L����b<<\�>H\���\�/cڸ\�d�Uo\�[+\\\"�\�\�\�m\�C@<l��ۚʋM�N\"�j\��<.\�Ci��\�7\�>�u&�0�)�{\r\�U\�<^n|\�ك�\Z\\\�\�\��L�c8\"?��;\\�3PY,�\'��f^ZëU�4)Ԛ\�\�,�d:�Ob�WG\�E\�~Ť_]6е��/����1En!1����z�J��o\�Nu]�����v�A&\r�\�\�{M�1�\�tW5_#j�^Z5 ��\�\�\�wZ�4h0��#_�\�w3�Fd\�P�,\�gP96Y\�^E�Ky����\��2�r��_@�\�&{(��H\���,3����H֦\�_�\��B��\"�c�򐜙\�1�s�Ӕ�<˩�@\�9P (L/׈��JV���:�%�A��\�3�>��~cf\�Ӆw|kb�(I|I\�\��\n���\�-��4Q�;Ɋ��\��/�6(AC!s/\�+0h\�qx�#+�tG�Q���x��\0F\�\��U�^a�(�����\��7^\�\�P��mNg��\�y@\�ͩ\Z\�\�3)��>\�fh[\�s��e-�\�\�4I�\�^\'�fm��<3l� \�\� %��QCؚ��\�Ձ\�L�\��!�BfXbѳ\����\�]�5G\�rw�\�\0i\�\�c�s�?\�&Wo�1�\�\'�8�Ŷ͋�LUMٯ��\�\�(K�\n�@\�#�=�u!�\r���F?rʺ�׾�7\�\�\n��\�\�]�%\�?��BJ�eU\�]\�3\�\�\"��(Л�\\�r��+�l��u$\�\'�\�wX��\�ǖ�\�܆Ö\�z�k\�\��%\'\�6\�)\r0���i�!�8\�]�`S�A\�\Z|���?��,X\�S�\�\��=�J�m �\��-Z\�vH2��\���>ۡK6 �y��e8Ln�A\� �i��Z��\�\�tw|�\�}�\�9�p\�\�-��iԢ�M�g��\�D��5Bg%�:j\�t!�y��_��5JWC��\r���O�zI�\�,qћ#w\�4�\��%\����\�u\rh��q]d0��\ZeI\�\Z����:\�ti4{N6r֎�]�\�@��yP\�SP�qq\�Q��\r�����\�Y-��G+����\�\"s蚓s{Pܐ\'|\"�C�P �F~\�\�F�vGtF/��?\�\�V;\�$\�\��i�z��;M/\�\�&k\��~�\�!#��\��\�����H|\�F��T܋\�+�Q\�\'\�h�^-\�*\�`r\\��\�\�k�\\���(&�\�W�z�Ɠ�����\'|>\�\�N�%�Gs\n�\�\�\\��\�61TcE���ŚVU�\��3Lb��N�ϏtW~�\\���=[�<uL��mt�Pg�\�\�O��ˊG0\��\�\�\�\�|�\�\�\�܈\�_�po�杗K��\�r|���\�3\��\�4L�r��fmh��v��C�j-46��L?N�ƣqh\�\�Q�\n�\�,P�d$�Z�a��Q�4�Bk�㍘\�\�Y\�\�\�0	���x:۸{rɖlF�_�\�\'?�\��xUh\�\�q\�\�\�\�Xܒ2}���\�cĒ	al��\��\n�\�\�e�׿\�^VD�qӔ�xS��7\�,+�\�?\0�s\�\r\nendstream\rendobj\r29 0 obj\r<</ArtBox[0.0 0.0 585.0 783.0]/BleedBox[0.0 0.0 585.0 783.0]/Contents 30 0 R/CropBox[0.0 0.0 585.0 783.0]/MediaBox[0.0 0.0 585.0 783.0]/Parent 101 0 R/Resources<</ExtGState<</GS0 131 0 R/GS1 130 0 R/GS2 76 0 R>>/Font<</T1_0 82 0 R/T1_1 137 0 R/T1_2 134 0 R/T1_3 145 0 R/T1_4 148 0 R/T1_5 84 0 R/T1_6 95 0 R>>/ProcSet[/PDF/Text]>>/Rotate 0/TrimBox[0.0 0.0 585.0 783.0]/Type/Page>>\rendobj\r30 0 obj\r<</Filter/FlateDecode/Length 5357>>stream\r\nH��W\�n\�H}�W�#��\�DʳA\0ǉw\�q�V�]8�E�jK=\�E\�$%k0�����\Z���D��\�r\�ԩ��3�\��n2c?\�^�\�\�c\�\�\�\�\���\�|�x8�z�\�\�\�\"e�͞��>�?v\�Kf�{���\�\�٪I0wxZO��\�\�TL���ho�\�~{�o��a}�Լٳĝ\�\�\�k��wgƼ\�\'�\��\�����\�s3{�^��;��hx�\�_{��\�\�\�su{s����\�ݖ�_��L\�g�X��~}\�y�ś7o\�\�wW\�\��@\�|Co�.�=�DG\'箟\�\�\�ՙ�X�}�\�$\�\�\�O�\�k�\�\���Ew\�\���=���su�K4N���b�\�\�d��?�?lS\�n�6Z\�>>�^?\�;w}7�\"{��s�\��$~��Ç�\��w.�9	\"\�\�:h�\����3})\�\��\�a{c\�&�ܹ�\�Y�}���\� \�\��|\�}\�σB\�N��\�2�+sx\\f��:^\�\�\�p�$]�\�\�U�/\�\�;�d\�<��?�*Df\��be\�\�H\�\�\��\�>VO�\�t�Ǧ���\�ݙS\�\\f\\��eS�z#�,\�\�/�S)���R%Ķ\�Ӻ4\�A��#+\�\'^��,z�5\�\��d!k\�3��\�\�Ɇved\�\�i*��Ֆ�\���\�f2\�,�\�5��4J][7�\�dp�3�)�M���|u ?`{7ё��죌�!,˲�\\v4\�\�\��\��:�<��T�Eg\r\�\�;��Q�Q�$,Q�\�0��,\�\�QG8�pXZ\�[�	ŶȈJ�lI\�\�,L�@2t\���[�\�\�o\�L��*׊\�\�֨�:�?&\�ք�m���fI\��\�^<\�X��\�T,�]�\�\�ZO�t����bC{1��˵\0\�$�\�\n����q\�H&�(�T\�\�qvj\�ӑZ�iA�I�Cg�\�\n���5�U-�_p��:`�\'�tS\�\��Rd�(�](:%\���z\�\�*�a:��\��i��ͬ\�\�\'6�\�|db%v�\�l�\�N(�\�B�$[<��TLT\�o(�\�F\�!B\�\�JE\�\\\n�\�-~�\��\�$\�m�d@1,��00\�\�zc��q&?~X\0��5U=�Ŕ,��XXk�zm\Z�\��a\��Pd]�\�k|Z~\ZW�\�鱧s3kQ�4�-$�Ɍi��!6�\�;ahj\�9o[R�bQq�#3��ȏ������U��&\�ʦ�\�O\�x\Z2#�\�5�If�%X\\��lT*Zr\��\�)a`�&�N@�R1^\�<�\��\0rv\�-5/\�#�J7Ld��rYQ.O�*e�i�d}`K\�\\�\�z�0\�9�ދ¹���釶�Ñ�\�G��\"bQ���\�XU�\�HE�I�\�\'4MfN[\�\�P\�t\��yI��\�s�\�\�cj���Q/׍v\�n(�wz@�\�\�Tq\�`U�v\�\�\�,0�M�\�H\�<\�/\\c�h8�\�\�$<�P}\�`��\���\��٧ɢ\�U$t\�s\�s�鞢\�k\�\��A��dLm��A�?M�RQ�?U\�l]ve�{1���\�$\���{#k�,\�uX%�T����(;��29x�\�҂\0�T�HM�\�g�:\�M�8�qa�qR�D~t\�ģ4\�4&�F\�.\�\Z\�\�~\��_\�=�D.�[#AՓ�I�\�\�9�����UM@s\0�k�sx}r\"���\���;\�\��\�FO�\"\���\�V�\�Є9��us\0\�v��\�g\�it����\�j�!�\�\��ީr�ŗ_>�\�\�@e���k��P\��a��0҉h\�`��\�k\�J\� ۚhn^tb\�hB\��A(�jƋu��b�)\�\��ˡ��if�\�O1�� \�3\������Q[B4�7�^\�\�\��̎6�\�b~JԂ55\�![\�\�Ba[��/1�	\"p\�q�n3[lڡ\�䎩l�6PX\'\���P�6zѱ�F��]\�5\�/4�d�V\�$\�8�Pq�\�#1{D2\��V��d$d\�#p�g�(v�f�\���c��\���ߨGZv�\��\��*\�Uvm�\�h.xAL�exNY\�\�i�YМB\�POJ\�5��tNk�\�=*TU�U�\�.a�Wc�>�\��̬xZ�@�\0?&#6ت\�<|\Zt��_��kl�o\�޵q\�\�\�\�~\�\'R2VE;~�*���U\n�\'�4[�r_ߡ~8\�\�f�=%�;B\�]\�\�O�RTP�+		@\�\�k�����\r=b�b\�q�M*Z\'\�\r/\Z\�|�v�c\�:��z\�H4\�\nd�Rc�V8\�{\�q��\�?\�@-\\I0\nUS\�h�!\�M�\�\�^\�\�,�5� �\�Aܧ\���p`��|�G�ۏ�1W]kS<\�f�$I\�Ҩ�m	\\��ɗ4�;<��<_����>K|���D\0�%�Y�5/�\�\'���;@~V��\�\r��\�����f\�A \0\�AB�\� ߖ��\�\�\�[aAmq�{�}�mdv�\�ԉ!\�\���$҂\�\\K+�U%\�4\�\��\�N9 �?$�\�<\�\�JB�o	=\��X/\r�(8=n\�\�vM�1K	\Z����`|4�\�\��\�(��쐵G�Gh\�\"[��K\n\�:<9����T�_Ů\�vm\�j<�\n\�QwN��$��\�M�\�\�ƭP���\�&>�:��\�\�0\�|hw��ݶ��+�n�8\��{I�O�ѡ\�\n\�\n����5\�&��(��2���\�N��Ya�J��1ۂ3�\�G�.ʌ��2SJ\�d�)\�cd�\�;Z\�\���0\�Ɋ<�$\���&�w�y0�ǄB�\0���]霼!&д�\�\�6`�\�c	a�n\�\��\��MS�~����+\"	��ź����Ev��\nO\�\�\�&�g+gS-!�m\�!ZR�\�B�\'\� �u&�\�Fa\�6I\�_N-�\�	m\�.�\�y�-��\�w}\�<��\"\�\�S.Wٲ�q\�\�:�m������$�\0)\���9=\0\�\���\�r����\�\��$G��ؠ�U��]�y\�ם\'�cZ\�乤\�G�\�\�$\�\�5���\Z��=\�\��\Z\\V��\�.9�(\�{�g�y9��o\�\�f��\�d1\\-e\�]�\�d�(&\�\�ۮ\�q��\�\�v6��K\0 ��\�W�S\\Oգ\\g\����\��y~��:��\�+\�\ZI|\"����\�F�F<¼C	�\�n�x\�a{\�\�\�BF\�&~�C2\�y�.�tF>�\nœ\�\�8T3\n\�wD9\�֛U^\�M7\�A�w�9-�(�>0�(ɰ\�\�\�2\�ZĤc\�Ia�� T\�4 3@l\�Q[K���d1+\�\�b\�ˌzn�pz<�p����\�\�G�\�\�\�,i{#\�\�\��SC�ܢU\�mMN�.sP\"ёv�jB�\�^O�!1\��B�\�s\�w��\�.�F\�K������\�\�\�!h�i\�\�h�\�~��*�\�\�3ZLO|\�\\\�\���Q�s\�i\�\�\�$CtL\�Jׅ^T�%j}���3\�\0\�]�?\���M�hV�ۚ�\�oJ\�!\�\�o\�l\�֋��!�\n�֩en\�\�n\r.7J�\�<e�\��%���;}_����]Z\�L\�~�>�H\�KZ\�\�4�[�\�$:W\����\�n�\�R��=O\�#\�ݗ0�,1j�*�\�\�{\r�+2��sii��	,Aqh������L\�\�c	�R\�+\�v\�٥\�TuB��\�U�\����Kl�V�\rۀCG�\�\n6Xf\��\�c�>�`v\�\��	?6�&7�\�\Z;\r�\�y��z�gJ�/�\�|�^�6���\�>�\�\��˖tG\"�DL�1\Z�Ο\�\�a!��\�:\���s0\�Q�\�h\�\Z2��\��XZ\\�$�\�\"\�Ԙ��lӸcX\�=\���*MC�Jw~`�p�\Z��\\���\ZW\�y\�K­��YHmZ�`5nF\�|\��y�\�CAN�T�ZVs�(��\�\�j��\��Sa\�\��(g?\���g\��AH\�o#�,�����\�(���EFyY�(\�y�IͲy�2Ȫ��;�7M�i�+�~Ci�\�����B�D\��{\'C�vr��	(Pm�\\ޙ\��Z(;�#yG+��� \�;m�\�\�Č�KY;� -U��\�\�\��\Z�Q\�{�K��`tyeO��\�uD�YH�֐\��E%�*rUS!�;P\r3\\�+��\"�	C\r��6){\�$����\�>�\�\�d\�M�w@��\��}a\�H_�϶\�{\��@�!\�u>��?\�]L�\�\�7Ec/\�g7\�\�O\���^�H$r�̖r9�\�&�=..n/�\�Y-�^\�j�ѬF\�Z����Ǟ.&�\�N\�C}\�B\�&\�� v!\�Z\�\�\�/Hۄ��\"l�B/J\\�kh�\�n�ֽ7M\�Xh#\�f�}/���\�%�\�\\\�(��\�r�v�\�t�\�\�\�]�٦�;\��\�\�װ��\�۷\���+vἓ���ǯ\�z]��ŒD\�0\n\r��pG�Rxf�\�f4\�\��X3\�����sc�\�=�3���\��{�ݹ\�tW�]�L[\�9@�w��+v?�Ϩ��p�G�����\�J���8#�D5�G��mu�x\�\0�����:8\�\�\�e��x\�\�?�gS��Ar\�z]\�{��D\n\�Y����:i9aA\���,0֦4��\'8h]!�g��6\r�9m=���n(\�<8֦8��,��<�\�\�tΉ\�	N̩\�΄cm\Z�s\�z�&Te�yp�Mp��\�V�� �R\�\�dm\Z�t\�z�\�Tj\�yp�Mp��ߚ\0�ĜH�#��\�L\�޾\"V)����A{H��\rH�\�H�{>):��V�&O�\�P{X\�v�q\�\�ק�\�s\�v�\'a\�w\�\�\�L$���	\�(T\Z\�^\�\�ӈ5�\�N\�R!\\��8xL_q_\Z;�\�t\0I�b\��f\�pGD\nL\�\�\"�\'3���y15׆Q�ڞ#7�ƿZ4\�y�\�F\�ˊ\�\�Mw�(hȘ�\�N\�z�\�m14V#̋��5��&���j��9�U\�H�?��\�Q\�r2(tAE�\�p(|\�Сw#\�9W_&���c��d_\��D:L~��٢\�~\�\��wK`\'\�\�m	\�\�}1϶w�-i.S�� \�����\\n҅�\�֫\��MU\�\�Gݿ�*O\�rd��4�F\0�DL0�PX\�K�{3�\�1��[C��=5��;�.׋|��6)\rej\0E\"�\�\n:�\�\���G \�S޳	\"�=\��d	�݃�\�\�\�g�D\�[�\'\�\�\�4�\�]�64?p�\�?\�rh֦ah=�A�ph\�\�<4k\�0��{��	4d\�\�B4k\�0��{��MAh�\�lf�Y����\�3\0-�:\�Cf\�\�s\�\0.\�\�;��gW\�-��,\�-���38q�\�\�=�\�zn\�7\�z�~4�\�:cMܡ\"T\��V�HQ$\�Җz4�֬�郶\�\�7�VRT=\�Z	Q\�M�ȍ\�XH���o\n\�E�A�4TK�\�X�����)\naEy�܏��w�gD_d�#{&mㅞbl:r\�{\��w�#_]��\�Vp�<�a$\�}�)\���\�%�����O�\�&GB�\��\����YU\�\�<�\�Gx\�\�2�?�0;u1�I�\0x�a�b��h/sSy`\�\'�*٠�WvF\�ռ|�\�7!�u��\�\���\�b_��\���\�60]��Aئ��\��\�\�>,0�\"7�c騜�亊�\�\�\�4:�I��/�ʢ\�:n���<a~�\�\�ޏ\�\�\�\�y\��խ\�\�\0��\�{�y�]��\�*\�Ï\�A��\�\�ϑ+Z{�i?\�BFUg\\M�c}\�&\��7}N�¾d��|\��\�0���_;<~��N0;/:X��ڋ��o����\�r-[\�Œ\�\�=G\�M�c���C��~>Ri?�U��\�m�\�j�ʔ\���D�\��HܹZ\�\�O��?\�{\�k��}|	7�\�aV�)�\��^N��=�Gd�dz�\�\��c��\0\0�\�\r\nendstream\rendobj\r31 0 obj\r<</Filter/FlateDecode/First 5/Length 97/N 1/Type/ObjStm>>stream\r\nh\�27S0P��\�w�VHK\�)N\�w�\��\�/\�M\�\�wvT0\�3\��P()*MҾ\n����Pu���\�\�@�y��!����%\��%�%��ɉ`}�`}vv\0\0�\��\r\nendstream\rendobj\r32 0 obj\r<</ArtBox[0.0 0.0 585.0 783.0]/BleedBox[0.0 0.0 585.0 783.0]/Contents 33 0 R/CropBox[0.0 0.0 585.0 783.0]/MediaBox[0.0 0.0 585.0 783.0]/Parent 101 0 R/Resources<</ExtGState<</GS0 131 0 R/GS1 130 0 R>>/Font<</T1_0 82 0 R/T1_1 134 0 R/T1_2 137 0 R/T1_3 145 0 R/T1_4 148 0 R/T1_5 100 0 R/T1_6 99 0 R/T1_7 95 0 R>>/ProcSet[/PDF/Text]/XObject<</Fm0 38 0 R>>>>/Rotate 0/TrimBox[0.0 0.0 585.0 783.0]/Type/Page>>\rendobj\r33 0 obj\r<</Filter/FlateDecode/Length 8676>>stream\r\nH��Wَ\�8}�W�Q�U�Y=A�\�\�kuuw9\�TZ�m��5)�\�`>~\�%�ZN�AP�-�w9w9�-���w\�^-�\�\�yS.~_�\�,��\�Q@�_l\�;\�%�\�b\�؎�MB\�7G\����n`�\�zM� �c0�\�V%�tm��^��k��/����u\�\Z/n\�\�5^\�\�.\�|`���\�Qώ\�K�kƾ�\�r�iq}_�\�ŋ뛤nX�\�\�\�޾{\�8�o_�|I^�yM�pR��.��_�\�\�[xl�����\�_\��6�Cc\����cI}\�:/c�P� h�Ct��\�Y��\�\�&\�\�\�\�<�a鮭�_lD`w@�7\�k\�������5��`\�-i`\�`���\�H|;XO����^\�\�޾���P�\�X?�}}�\�ȟ��찫��Y�{\�w\�\r�\�S\�\�\���F�pn3����\�fI\����w<\�\�\��\�.�\�\�\�\\u?�\���\���\� p\�x|¸�\�M]�\��=��>%�Ӟd��=/�dYv\"�RnE���l�B{3\�\��9d\�\�\�7o K�#�\\<#y�6�;YBY��QW�</\�i\�f\�\�;�c%e^��K\�sQ�\��Tq¥,%;��\�\�\�\�\���<��EM�2\�D(\�(p�\�\���\r$\�u<�\��m����L�G\�\�\�v\�\�4�M}�<x�\�)4\�]}��냐\�b�>��\�,\�L\�\�LN?��Q\'\�\�Y�[}�\�.l�� ���\�̋�Șl?Բ����\�|\�\�c�\�Wܺ�;+\0#j�7Ɂp�&U�c)IS��\�V|#f���l\�\�\�q\nl�_\0z��\�U\�\�H�X��h\��\��Z��=O\�me��̏\�R\�?.����Rۦ��>�\�\�e\r_��\�5�\�硨�\�\�b��\�y��V�\��L|Yϻ��ʛ��\�0��TP\�B�B5`(ۗRԇ\���\�g�9p�\�F&|���b5`\r ���G5C_��X8\r�>5�&��\�A	3�&1�F�00��#�	B	��4\�>`�\�Ǳ	\�l�3,�����\�B\�J�\�\�YU��ä(\�t�ز\�q\�!&�����y�Z�\�\�Fv��\�#I�x<`\�ܱ�\�\�{�;IAV\������\��/�\�m\n|\��Yz�km?�\�f�5��M���(`�e�͔����\��K\�դ`1rXKiGŠ\�\�\0��[;~$\'\�$�\�>�\���\�\r�T\\X��sޣA�j^�U\0H�7\�\�\\�\Z�gU�\�s��h2\�8+V*c5�����\n+C6(�\�Z�=1\�+Kʣ�A\�q}\Z��U\'U�\\@\� f��\r���\�)�����\�\�\�2\�[�Jߺ�\Z\�B/F6\�\'Ȋ둃1y��k��ק~O���I�T��n=\�\�lx\�j/ǉ5]޷Ju`���+��\�ݨ��)\�!���v,/\�T�\����B�r2,�S�<\�HƊ}���J��n	�\�;\�sw\�-4\�,p\�q3\\!��lrW�\�\�FG�bἷ%VO�\��+rw��\\��kzalG]�\�\�Ǵ^ �}�n/{��Ag\�=�\\�/B����?�\�Q;�8������0��0\"P\�>0�C\�T�|�L\0��-\�\�;��yf@V�Le\�N)�\�\�U���\�\�y�\�R\��y+�^\�\�U�Q\�n6�,��\�9Z��;G��E6r\�K3\�y45�M��$��\�\�Ou�\��w\r<j� \r�\Z\�Hv\�J�\�uD�����\�Ȇa��\�+\��\�k�<�\�\�\�-15e\�؏&\�((R�S)�\"=�0\�D�eb�\�����g(inf��U)qH\���\�䁳\�1\�o^��\�]�\�r���R\���Q[e�	�\�\Z�\�\���,:V\�P\�1|,!5hg6�F3�x}\r?\�\�1�d\�4!�V\ZtTrZ��:L\�\�.\�F�4��TU$���[�\�B��P��^��id�\�ݬ�\na\�C\�\�\�\�\�n�\nzu*�.�E\�D�z�dL}���2\�\�,�\�Q4��\�\'�z��\�ї�2e-�AА\�\��o\�jg�����y��dO\Z��7\�`E�߉��\�\'-�b\ZV51��΃���r~\�+��&n\r\�N��\�\�-\�\�\0\�/��*�\"z$vpC\�C�@�-c;���\�\n�\���xj���W*%P@�!\����\�@�g��JX�W���w�\09���4���*��i�`F\��.h	�sǶ\�ߌhpa��;MG�ER��J\\K��ne\'�4A���l�\�V�\�PYfp/4R~Ҙ\�L	`\�\n\�\�\�F�#7\���#�E��P��a�\�$�\"O �-\�\�3\�9]����Q�,�x�,4�\\u\\\�~e釮�F�^�w~\����	�����<\�	\��\"�;](�Y(�\�㍲�eNn��%*g��0z\"�0ݫ�\�,�ޔ.q+\�ͅIi%\�X�)46\�\�]	\�1\�{j��\��착\"F;\\�#�\�\�\�\�\�\�\rD!&.����ȑ,���w\�^-�\��+\n�RJ�FJ�>\��7�f��\�\�W<\�\�\�\��P�\�w4Qo�|\�a\�\rW�\�r�\�Zy\n\0\r�;	+�Y\��VY����fӑ��\nl3;p֔D�?(E<���q�h\r#�fKF`PD\�\�\�\�q\'�]M#Ѧ�ZQ\'T\�8&9\�TZJ�F\�{A�_֫m�m䈾�+\��\"A\�\�q��d\���䋤\�ٲ�R8�\0 ���>�g\0!R�\�lm�\�&1�\�\�\�\�\�h\�:\���\�*�\�o\07\0q\�\0���Xǜ\0\�\�\�:C�|;�z=�dݾ.\�\��LҊ,0k�\�T\�\�Wp��^A�V�t\r�b7H�\r\�ftr�J�W�&S<�\�WУ�NONOAA�\�ׯ\�ћc��\�\���v<%W\'\��\�J\��\�\�VM��%\�\�z@]\�J19�ӾOf\n�	xyu+{\�b_aY�\n+\�Y\�L\�@l��\�\��\�G.V�\�Ѥ%�\�ReE�E\� �\�\�!����ap\�\��\\\�UX\�=���\�-\�\��\Z��N^d\�\"�f\��2Y�p�\\��\���\�\�[r[$Y%G\�W�0��mfy\��ۣ\�\�\�\�A̩\\\�%$\�Q�W\�\�% �Ђ\�_X�(8;\n�lxj�n����\�\�\�\�L��E�}!��S�\�]l/4K�\0�\�q�\�)\�\�\�d�#�3D�X\��\�P��st���\�M�ީYII쯝\�*\�\n;b�k��@��و�ǚ>�u�\�Q\�G|`u����c\�\��\�\���\�Y	�5\Z��\��ʹx!\�\�k��5��Z\�˒Pp�-ɋ6�9�t�}!O\�M|�h�J� �\�f\�;�\��а���\�28\0\���;\"\�\n�a��F)w\�\r@DO!gn���&GL\����=T:\Z�=,\�>	���Ҟ\�*��\�84��]�\'���k_\��>,�5F\"K�|�\�7.\�\�\�/�\���v�.\�V�R�\�\n��/d�^��wV\�\��\�$\�\�!O\�\�\�\'�-�S�\�<#:s_\�	w�e\���\"o�[\�ܜ� 9\�r�\na�T)z�:�l\�Ia��7�j��OCױ&o���1\�6�2�\r�\�B�B�W\�\\�\�����^|\"E7e\�\�9��d\�YS��j\�K)t\�cJ\�Y\���\��U\�^`�S�\�Ӌ3�t\n!s:\����L\�\�YrSVɺ�\�p\�I��Q��)\�%\�\Z)�(�P���\�^�WC�V�x��L>`��� 6�Zm���DL�ޙ{MF�=0A��xDVh�WR��J�\�12#\�<rG\���\Z\�\0\��HhםL��B+�PP\�;��2�x�F\�SӋ\�9EE;���ɤ2\���#�0�0\Zi-+��p��OzKM�@fi�V_\�\�DޡJ���N\�\�\�\�T	qʓA�m\n\�`{�$\�N\�,O��\�+)i��Mr�\'�\�L�r%��recR�\�A栶-j|\�\�H�Ya#�J\�\�Bj\�0]�7\�mN{%�\�=�$��@OrD\'n9�\�Z^\�(8�f¾��+9��P�\��#���\�\n��ww@.���7\�\�v(<щ&�܋�D�\�3m���\�!�^D$��bށ2\��\�H�3qN@��ͣ0�=��\\\����\�\�o��:\�KhS���\�d�o�\�3\�`ҿ昶BΌ\�mG�L\�\�\�\�\�BaM_ӣ_�H_�\0�0�h#�h��ӂL�Gu���?���ɮ�1�p\���P\�H\�!�#�Ve\\��0`���0\"\�5֟\��9�Ц�?�7O\n�(\�\�ڿ:{[�*���$N�\�P�0\�O\�^�\Z�\�}}N�\�����~�ۄ��C\�1�;�嫲r2Y*aט*/��\�a\��C�͟t�@g|F��\�<uB\��vSy�����\�\0N�\��\�\����C�7�\�X��\�~���\�~\��s��K;�oU��8x�\�Ҷ�N �s�\�	))^?� �F�J;�\�Z�jm|vx`>�Ƒ�Kk�\�>EfDT\�x�\�\�\nmTSm��wEc\�\��8P�\�>/�_�K�\�~\�\�\���-\r\n\�X8�-Hm�\�(�	�\�c�Po\�kUj\�<4���>�o\�Ӻ9�5\�J�GW�\����[]\��� &��Tv���R_-�q��$����!@`�3��Z\�ˬ\r�\�Q�6c u�\�z\�;m\�\�P�K\��Fz=^\�|>~v\�xQ�c޵;\�%�\\�(6\�V���umEA?\\�c[�\�Vwl_N\� �=t%�\�\�BEބ���.\�\�Ҕ�\�Q\�\�\�<D/\n���,]$2\�Z}�rf����T\�%�v���^\�COX�^\�&3	~�\�\�|��l�w\�f�\�\�NE�6�ăN*h<-\'�\�\"\�TqP\�[J���\�\�ω`A�܋8�hR\��\�$\�\�l\�Ά� ��bCߟ(F\�\r}\�6C\���\'2�	ఒZ��4��ݐf[/�rs�x\n\�_-��\'$u��+\'�ɧ�{\�a�C�]\�,�d~Gvb.\�iz�d\�e���e�.�C�\�\Z��M����E�!}lf�:|�\�nd=U*�e\�D�|&�ٱDo�_0�#׉~�\�\�\�d�+�RV\�Q\r\\\�؅��qW�8p\\� \"}��l�\�`ĸ:ϊ�n��@38QT��|���F\"\�gl�ɂ\�\�\�6�\���\�AO\�h�x�?\�{ML\��\�6�ɺ�LA��:�{�bR-�K<X-��#�\�\�\�0��t\�z$\'\�\"Y�اaL#PBX\�6c�����\�\�<��1�\��vY\�/�ӎ\�x\��S��\�\0@4R�a\�`��\�:�{\�h\\\�!p�u�\�GrB,Ř��4���\�$\�\�\0\�y\�\"`ӡp�\�sZ?��]�\�:\�,iC��\�]��T�c\�h\�_-}J�,\�\�H�U�zwj�պ��\�\�\�ぇ4\n\�Z�`\�\�Z|\�#+��,�N\�{�\�Qo�Q�1y]븫����Y��ٳ��\�\r�kJ�\�\�t�����;T\��o���6\�z���;-��\�\�q��\�A(ƽ�\��퓲�\�(�\0�\��D\�����V���\��\�]\�\��/%�kU4h{��\�ao�bY\�I��,٬�\�g*b��\�\�\�0g\r}?\�)57��y\Z�-a�ϲ��\�-�\� c����hX�U\�\��#�ʚ\�\�\����+t)fb\n�5\�U�:���\�4=\�t���1FK\��ןW�E\�`(i�WM�\�g%g4@�Na\�\rH׽\Z\�x\���|\��R\\OY�JL~oQ\��u$\�9Fr\�A\����V�ԫvP\�$�\��\�\'t�.���G_4���9 \���\�?w,yY/\��\�F\�M\�F��,ތ\�\�l~n��M\�JF\�\�d��3V�<Z�nl�$/�&��e�����ZJ4�M\�H\0gO0�\�q3\���8�\�\�m\�M�JJ���}e\n~fy\Z>9l�퓢�.�\��THׁ���Nu\�y�e\�\��\r\Z�5F\��\�9�x���2\�h�\��:�\�tg�\��\�4�Y��\r6�,g�\��L0\\߾�&,�\��\�Ԏo.\�D���\�z%a��\�Bt\�s�H��\�hh�3��\�\�xMc�)1�U�2nDV\�\��\�\Z�\�^�\��i��~�et�g0d��n�U`���\"v#���\�0Uc��\�ֽzh�EM�\��8�\Z�\�\�w��\�\�,\�Z�l�N aJR�\rs\noI�xs�D�,E~�DaPJ\�\"�O��i�R��\"\�\�����{\Z\�+7uJb_�����A{��g\�s%J�4�sT2;@\�Ƅ\0\�\'\��\��\�\�`Xemj�m�\�\nK\�\�9���;�\�?\�4K���f Y\'\r\��\�6qs(�2\�u`�] \�\0��m!6\"	n\'g\0M:\�ذdYv\�{\�d�\�.<gJq��B\�8;�����(\�\�9�nv]eS\0}2!A\�\�A\�}�h�R@�_�\�	Ǘu\�\�\�\�\�\�yr\'�t\�n\�\�_�!��yy*\�W��b\��- \�\�(B�\�f[e*\�D_\�*�\�kf샔\�bW\'�<+�6{\�G�e^߹WP%֥\�\�\0?��h�\�Iv�B1\r�b\�\�\�A\r\��\�\�GZ�\�\�3�\����7\�1�\�t;��i*\�}\�)-�	�x٥�\�@�dZ@\�c�;\�2\�\��\���!��n�ec)��s+ �ba��Ԫ\�47q)i\�\\���2>\�\�\�?D�\�\�(���8-�	�8�q{����,\��\�M��/fa6\���(gs*&\�P\�[\nu��X<�/����\��u!�#AR�sGp��%4\�P��j�Xֵg�0.\�,\n\�h\�\�\'�\�@�XJs\�G�\�,$}�\��\�K�@V$	���\�,OÇ\"�k�/�<\�C\��뛗DJ�\�=\��\�r�DoA���|w4�\0\�J)��0\�i��\�\�\�D�b�\�\�K�ș6\��\�5T!\Z\�\r�g \�`\Z�x2�{���g@\'0�F�@�\�[�\�O\�z\�	\0È\n��\�81���c\�zeS��ǲu?Fu[u-����W��w\�\��\��m�\�W\�e�D\'~\�\�i?l;~F��O\�-�_#(\�^���\�\�]�+	\�#��ˈ��\�yi�,\�OH_�\�ݛ\�>ޡ\�\\_\�O�)�\� \�\���2\�k\'��>\�Z�9ѹ@\0\�\�a�3xN��\��[ksW\�8�_\�\�\�{ѳ\�);){��U�&\����V\�\�S\�w2̻\�r��Y��c�oX\n�Z>\�k\�	B�M��\0n��1eEV[\'\"V���\�x��\0m���\�SP�\�x�q��\�|�n���\�\�pW�K��\�O^�[�)�\�\����\�_S���*\�\�\�-K�՞��u}�zK��\�\�bXv�P��\�(\�zC\�Xj[t	����{E\�p�\�F�\��)FO�n�1�\��\�6|r	T7@*��Mo�Y���,-�G�\�߄\�ch��\�.���\�qK\�P��e��!���j�\�|\��\�[����G��1THg�9C%�xL\�\�`�\�iZoD�^��iʡ� \�^��6\�����\�\���;��\�H��~\�o\���)�\r\�JYt��:�\'\�]:\�\�eڭS-R,\�1��\n��̺\�y��[#\�\�\�lW5�\�JX�\�`�R-�ML\��td�\�\�\��{?\�\�iI��Z�\�:y���\�^���\�A�\�oq\�n\�\�P`��%�\\qt>4��\�+��[\�p��\�\�\�ɤ�\�>A�\�Z�@��\�&\�\�+\�ÜX(�\�^��铘2\�-l\�\�0�\�\�z2T~�rt\Z\��\�?w,y�u�1\��v\�uo]d�0�\�\�\�\�n���\�?�<%}à\�a<�	\�|�\�\�tUC3\rx\�\�xՃI\r����\�ѠHü�\�Rr�\�\� \�&s6\�\�c\Z\�^j�_�F;���z\�\"2��#�\0jk /G%�\�KYR�\\ǿ��.�9������4�\�2z7�sI/��\�\�n��+J0 �E��]�\�.|-ɓg{�TgT�Q	\�=�\n\�|\�;.$����lm\�Ҍ���.\�c\��\�k\�\'��8��\�\�j�����\�٪\�&2<I�N�\��\\\�\�\�6<I���#\�RI\�t<.�B\�K�=��!X�\�:>^�y�VEم�\�0\�\�\0�f^x\�QOȽ\"\�4EL\�\�]��p��Q��{\�\'���\��i2�rft\�6���\�S:/@A\�2�\0�ƅiR~\�\�\�\�\�\��cu��\�t�\�\�/+`�8���1\�ru�#�0\�9\'\r��\�v�\Z�v]9ڤ�H.\�\"K�n\�SY*��o��e\�\�\�{eg�c\�\�Z�\�Q�O��x\n^P��$o\�0�\�L��1�	D\�;��\�:v�\��\�[�_�\�JT�\�|\�\�\�\�ԍBnRIĮj$���qUq�\�d\�à����\�\�\�P\�\�jX=��B7@=�o\�\�3yEi�\�\�\��9\�$�\�\�I�{FÌ\��1QY�+߷+\�ad\�\�\�}k�٪�\�\�\�;�\�}�X�����4���H�`�UhW]�3q\�\����8^\�⹡o΍�,�\�\�$����i\�)���\�\�\�/?h�-\�)�\�F�\�{N\�,|��q?8e\�^\�Rb@DAd,��;A�\0	8�M�\�\�M;RK\�k4®T:B��X�\�b`�T[@sH��\�	�\"�%gT�\�\�\�-�\�Br.�}F���o�\�̀[\�*�	9�gS�\�k�=Veh�����\�Ԇ�`�_�\"�)\�\�|�>E�\�$3I���X`Md��>�\�O�A��s\�]Z��\��v�\��~@lo��?�\�}�ι����\�x�d\�h�\�c`7εt\�\�\�wY7�\�\�>\�xa��\�m�f0`�V\�YM\�x}\�5cz\��xC�ɤD0,\�_�\�\�\�u%sچknEN���f����l\�~�O��\�ˠU�\�U��&o7��٥��a\�e\r���\0��;I��\"*\�7e\0Y\�4\Z�\�\�B�\�DA+�,`��\��\�\'�\�>\�p\�ZF~\�\�\Z��\Z�2Fٚo~�=n\�T��t;Q\�\n!@>_!D�]\����j\�_w���*\�\�^�\ZgtзR*EV�\�\\[{�W\�m�=r�)H��\�	��]\�\Zז\�.��jՅ��̫E��������\'��j��@\Z���N\��I��d��\�?�\�h$}��\�z\�\�d\�K%�Fk�*�Fl!�y��m�\�HOw�=��I�\�q� \�cS /00��M\�Q\�U�:3\�(�	q%��\�.\��U�\�\�B�\�\�l�IW�,��q�\�\���J��\\9\��\�9��\��\�¶+�x��	\��#=�DvH���9 �2�\�]n\�\�\�\�p��.+䮈\�L�PLq�;@`�̋�q��\�\��� \�y�&�h6\�┐w\�Z~Dm\0u\'ێ0��t�fQ\�L\\�\�&���$e\�\���\���ۻ?\0\�F�:\r\nendstream\rendobj\r34 0 obj\r<</Filter/FlateDecode/Length 5276/Subtype/Type1C>>stream\r\nH�\\�	PW\Z\�{�\�\�a�f��AZ��\0J��P���\�rD\��\n�0�(� \�Q\ZX�I%k\�lRƍ��qUPPAAN��\n��b \"���E\�7\�\�\�6�\�\�\�z\�]_u�_�����OFX\�	�Lf�\"$�g�6I����3$$f&�w1O���,̿�\�#p�\��K>6�I�\�N�\�\��L�:<^�\�L�\Z�Դ��D\�\�\�\��\�\Z�!)1>Q���	\�I3h���)	\�935�<<<gI��5>II�	 C�n\�0��	��Sӓ�Is�k\'(M�aAȤEPaeC �Ш��\n |�X�H$�d9�%\�\�aRO\�Z\"�h�%\�Ur�y�����|��D:��\�Ar\�\"�\� eI}D�\�K\�\��\rz���b�\"Nq\�\�\�\�`��e�\�I�J��,V\�W�NZ8\�8\�ab\�d5`����?���~\�ڲ\�\�A��6q6-*Q�W\�S۫�\�\�\Z�K\�m�\�p+��\�C;�\�\�vw\�\���|%\�m\�`�ƾ\�a���C.\�\�i5?i�5�����Jt\�\�\�˱\�]/U\�K�\�A������ѣqo�\�ַSy��\'��)ɰ¼�e��l\�\rJ>K\���i ����� �\�A3�RQ28\'ԝ�\�bK�)\�zU�\�\�_�\�\�\�\���Aӄ��Q��hh;u>�1/L�\��*��5a\"�\�\�^\�\�\�YHɿm�\��\�[�e�gY��@\0+�r`=<\�ow�\�Ad����h7\�EXd\�ul\�B�,6\�8\\,�s�\�\���C)�1)��y��\'�\�\�q�+nx\�\�\�Gk�X\r3�\���\�CG�\�Nc�\�Y\�\�0���\�\����\�b��5;�BL�\�G�Հ�\�\n!@rP���\�\�\�\�E.�ݗo\Z��O\����ۛ�.�?��$}\�VG̃�\�=>����py7\��\��<ª\�\�\�#�\���Ş��\�\\\�m�z�\���}�\\��(�\�Bͩ\�\�k��\\���b�(\�U|q��\�\�Վ\�\"�\�\�T�!&S7�\�w\�\�LP�%k�\�\�\�_�\���g\�\�\�K\�\�\�\�L�xe\�~���mx-\�N�\0�-�>x\nP\��BZ\�\�q$<�\Z\�a�/	3&k\'\�! �!& !\�\�%�{a%�\���\n\�ؔ[&\�\�l	-�OBA-��ԇM��gc\�\"0\�,VN\�.\�\�����\�?��$\�&\�y%+�*_\�J�\�\�{�ۃ�c\���g\Z\�ɒ}�\��\r�G{�Y4�U\�k�ײ: I�\�\�A\rl\'��\�\��l\�!��ck<\�\��	�`P�\�\�ꯈ\���U\�uu��F��	I�F�\��QR\�&l\�Z{�A<m�\�@㼸}sa\�jl7�ð��ޘ߃��#�\�`\rQ pw;\�\��o��\��\�\�\�\'CG��?\�Xp\�j�\r���������!\�{{�>\�\\B�y/!\�\�K\�\��\��:X���)��ǉ�r�+;�j�i�\�],�2ܳ��+�����v�Z2e��W\�\�R\\ց�g\�R}�7��K5h\�\�;���b\�t�Ȣ\�\"����1n\�\�`6b�6A�K��\��SP��\�T\��rhi�\n�4\�E7�Sؕƅc��d���\�U����d��I !&sUP*	\�܅Y\�]T��_�6:?)}\rK(�\0�1\�4fd.Ut\�\�\�)\r�Ɂb<3}æի#O4 \��g���m6\�sz��\r��\�@\�\����n�\�N;���c�\0\��\n\��L�\�X3WJ/t^�L^#y�TE��\�X\�S�|1nc0?��\�\�\�X\�,V3]W+.]l\�@�c�/b\��̃��Iy8�`i\��^��\�P<ۂp��V`�?��`��!\�l��\0�0��\�\�\�M�bsmckh!�)<W]/\�\����]�d\�$\r�5��\�22��\�/�PxzBX�\�`n84h\�\�\����b9\�\�x���٤�6Fnա=p����M,c._:\�\�Ԙ�\�ꈭah\�J\�}\rE/d�A �d<�\� \�M\��aAr�X�y��{w\0m7�\�#l\��|u�S\�\���e�d\0 �3�G�\�0��U���kQ\��_�\�gV����[���u�S`i\��\��\�R\�\\\�7VB��Ż����!\�\�/u\��F\n8\Z6�`QC77?{\ZU�U]\�`Ғ.\�(�n�Fr,�\���\�j���p�\\l��BLڼ9;)\\\�\�_�#ؿԽ�/��<*��;2\��\�If�!\�\�{\Z�q�4Ѫm�VQ@hԺ�(�� F�D�K]�)U#��A4(�Ҋ,%�j��9\�\"��s\'=�o@cs�ǜy\�w\���\���߽\�Z3x\�k���զD4;)\�\�(\�\���A\�R\�6M��#\�<\�٫e4�\�O1�xX\r2��\��83p�[�R���ᖅ,�\�/8mF\�\�\0\�YN�IY���OZ�51\�4\�Vă�[\'�NJ���\�\�`H\�g���a�U�\�Rp�~\�3�\�\�K\�[J\�s\��\�\�9%{2�d|.Ʈ\�=w憹\�\�ưϬ�\�y:����U�f���p\�JH�f��xg�g^��\'s<\�\�P\�\��\�(`���X�,\0-i�\�\�H&������muFh\�\��\�������9C\�+��\'�U��\��P���\�\������5\\X��\�d�\03�C_2�)^?k\�ҕ��\�;4�(\�\�)�7��NVhW<�O\�A�E99&h\\@\��l�=<����1#%\�r�C\�F���\�0\'J�Y@?0��$�m8+q\�Q�_�z#ܧ9�G�(C�j�\��Q~��m1\�bo��!\�_\�ha\�ؘ�x�|�5\�\�~ȇ�\n\��\����R\�@/�K�\�\\L� _�>\�N]iRw3у\�%��	��\�b#q��\�\�\�.�ʤ\�\�8�(oc_���W�ǎ�S\���_�����\�	�\��\�\�c9xuEQ�\\\��p���2N����l7/_z\�K���3�\�㐚� \�K��JG�\�\"yڨvԢ$����q��D������5}ж\�\��пu\Z�Jb��⻢z\�\Z�\�V`3�QO+\� ��\�X�M�\�K�TT-/���\�\�J��\�^��P�Cu顬\�\�0\�nf6�S��L�:� �\�r�=��s���;�\��\�\Z�_Zo#\�\n�6F��o�����\r\\��uqV������0\�!�Uj\�$\"���pѪ��{R�\nK}\�-���cT\\@\�HQ�cs\�\'\n�T{\Z:\�.J2�<�\�\�BÍ\�qa\�\'\�b\�/<��g�	x����p��\�7?4�P\�uWmog^��|\�]~\��UF\�O�\�6ew48?�CR?�\�\�c2��X\���ǯ�*o\�זn�}B���\�\�\�t5S�s�H]C׸�5N��k\��mEq�M\�X7uBPAm,��H�n\�\�<�4�Y\�Cۀk`�\ZV\�ݛt���\09,\�bg�\�j�T�����h<�v�$+$a�aHDذA���%e\�\�8�?��\�}G\�\�ؒ�f\0#���E%���U�J�z+BEϲ0Z\�N=G\�E\�x\�w1\�\�a�je\�\�\�V\�ʨXi\�\�\�iOUo�J*Co.\�T��q\nX6��\�a\'*\�@;÷9\�y�\�9��6&���d08\�\Z\���J\0C\�\�,%�2\�!\�>��_�\�O�\�7*�T\n�N\�S�\�n��&�ٓ�8=\�i\�S��ݳ�qq��-(V�\�:�?�U��#�7���\Zb,�ꂽ��\�L��\�H\�\\��\�\�xʾ�\�\�&\�\���\�#���\�\'Л����#\�*\�n�\"\�[xg��w�\�\�}.\��W\�\�)��o\��-����\��x\�\�!	�j\Zvb�]_�T7�Y-\�2�\�9�j����-��p�ڏ~�OQ\�|u7�땹�\�\�4o\�4\�?W!��\�P~\�\�\�obfI�Bbi�\��li\�bh\�+=\r1��\�p��pM%x˟�\�g�>/0l]����<_E�\�8Qz\���@I�\��{�FV�N�\�^p����\����N%a\��:U_\�\�K�+���K�\'O\�8\\\�1+M\�_y2،|\�t�et\'\��x\Zh�<�a\�³\�BO\������,\':!`�\�\"�\�0χ�\�Ԩ��\�2x|?��ByD[\Z�(6\�4����>U�����M\'���;��nr%D\��lʥ\��o\�\�cpC7X�\�xl7ş\�[�[��\�\�[~\�H����[\�K6a�\�M�	f��>�S�\�b�?y\�\�6K�\�`-�P�:�\���\�\ZWYY�.��\�\�ӳ\�\��&y�d\�7Kr��Pajtd�\�+�]��12��\�}�\��(�QT\�ܲ\�8r\�{r�������kT�DQT��tQ\�\\��ȋ�$\���/��Q\n�C\�\"VJip�D$b3g\'<�j\�0T�\�\�]-Y+\Z0Ԧ��Kt��E\�k\�)%q^-k��k��E�%�lS\�ZI\�a�$##I$X���4_\��\��\�\�\"\�V�^=�D�\Z\�X^S�1�AN3\\|�����1V\�]\�\0���S�\�Q��}-\�4�.\�\�ʕ[��M;\�7��W%=.+u�^�\�\�n�E��P6�h�y�!\���\�}\��\��\�\�c\�(\�xIw\�E�]��k\\�;�,��M42\�f\��(`\�$���3ӌ�%Z�%@Q\�̠�lYda\��C\�&\�\�D\"\"\�}d\�ت\�x\�<M��kQ�\���{s\�=\��\��}<�\�\�\�I�68ɏ�B��\�$<M�7�\�O�Y����\�7$/\�\�Y\������=�\��\��-&�q\�=1\�\�\��}aߤ�N��ߡ�^�)lb6�Ok\Z\�D\"�G�����4\�`b\��	4���D�Y냤}0\�q7f;!�^���#\��WQhb1�\0�]S\n���\�7��g\�\\P]�u\�\�7=�,!�\�\�x^NB2�<�V1�U�BQ=\�w\�;FnM	��\�\nz\�Cr\�#`�nq%\r��!\�v#4p�����C	�\�\�M{ݍ{\��Y[�\�\�?��b�S��S4/\Z`#�zh�6F`\� $����wʙ\\q˖\�\�eǏ<y�ǽ# ]\�\�\�s?J�ycu~r\�\�\�\�\��h�\�ٶ�\��NI�\�H\�NiM�}�R�5��-�4FÐ\�J�Uk\�J�:8k��Mt˳|]y�w�Y��-W\�\'2�\\}�\���Fҗ�ae�`��\�>!	垹,�\�j�}\�\�]�=r+6R�\"2\�q^�o-\�\�7O�Kp�V~\�q\��s�K\�\�CN��|�\�#9\�(�>H��\�-���Ǟ�\�,�ȷ��[\�qj\0�=\"K\�9\�b�9\�¬t�\n�\�\�Ո�\�[\n:�:|��\��(<e@�\�l��B\n�\�d��֢mV\r#d�6\�\�\���_�2e�Ç�8�n1\�pP� Z\�\�\�\�k**v�\�u�\�\�W�u��6�\�Br\�4��pt��9�]: \�MEW�@=�\��#\'����O:�\�m�$\�~ꌽ���w�\�\�����Y����\��\�\�6\�\�ip�MKEX\Z(4\�\�*\\_)hR\�рaQ\�\�tL�e�:\�Z\�,\0.����B�ܵ(Th��3H\�s��yנ��\�\�\�8\�\�\�!�W5\�\��F\�(/GT\�\�c�f�\�\�^XBB�n�Χ:�P�\�\�J\���OT+\�ь;�Gw\�\r\�\�	~�\Z\�娗�Xٜ�\�	\�ǰ�@X\r�/���	����!u��P\�S�\�&_��\�^:�ģ\�m/~\0\�V.�`\0:�>�\r\nendstream\rendobj\r35 0 obj\r<</Filter/FlateDecode/Length 590>>stream\r\nH�\\\�͎\�@ໟb�������$�\�BV\��\����`[\�x�L�\�\�*H\�\Z\��\�|�\�\�\�ft�����qt����x\�nC\�1��6���n��^�ˡ\��y���kO]�\\��g:y��{Z\�\�1>g����CӞ\�\�\�\��\�\��[\����؎�p���\�)�\�\�C�\�p�.���\�\�t�\�/i\�\��\�}t崞Suu���*���e�+�|K�U\����s\�\��s�\�\�K��(T\�s�J뷏�\"�\�bZ�C\�\�,ȁ9 +�\"ϙ\�\�\�\�}^�_�7\���r˼E�%R�#����\�\�g\�3䒹D�\��N��\�\�\�\��pzc6d�=̞f�_3��\��pz\�<lB��&�	lB��&�	lB��&�	lB��&�	lB�\�&�	lB��&\�VЭ�[A�B��,�\�\�\n��?�h0�́\�\0s�9�h0�́\�\0s�9�h0\Z\�\��)\r\n�Ҡ0(\r\n�Ҡ0�>\�Wd\Z�ԛ\�0\�\�J� \�Mћ��\�?�\�Mћ~\�M�\r���z3�\r~�\�\�7�\r~�\�\�7�\r~�\�\�7�\r~�\�\�7�\r~�\�\�7\��>�,f�f\��]\�Pf?\r�\���H�̽ϟ\�6i�L\�n�9�6M\�\'b\��.\�\�3�\'�\0~�4c\r\nendstream\rendobj\r36 0 obj\r<</Filter/FlateDecode/Length 5564/Subtype/Type1C>>stream\r\nH�,T	P\�\�f\�fD���G�7���`�J@\�������P�aS��� �X?�\�$�,�+;�Ip�F\�\�|Ao\�\�\�oL\�V��U\��ι羇c\�F�\�S|V���X>W4\�+|WX̪����\�\�\�\�\Z�\�\�\�9(d�q\�G7�\�:\�,ʧNi�b\"_\��ܠT|���j\�>u�X�M��2T��W�A�/T�\�{0*$Zm�p��_8OX\�W,��P|PD��V��\��\�a�\\�e�	݉a����a��b2\�c+�`�8ցaτ}\�-H\�\�c~X����\�	�7x���\��,��\�MTc\�c�!\�V\�7r�\�|�&�b��D���\�8���㞚r�\�L������_l6\�,�\���Jb$U��\�x*\�\�\�|�y\��	9�\�.�#�,���e\�\�2\���ʉq�\�y�a�\n�\�Rn�\��\�ः�~�\0/\�M|~��\�$�D0��{,���k\���<X\�\�BȂ����@\n\�F��|�)�l�4�\������&zA���\Z\�b\�\�R^M�DP��a\�\�\�0\�[\�X\�d\��\�̬<1��\�\�^�\�Uws׏�W�fj3sw\�사��\��\��)ӕ��\�ݶ�\�\���.ȌA`\���ͭ���4��~�\n0\"\�}Ȟ�s\�\�Y\�)��\nv\�\��\�\�Kd��J�o�\�t\�I�8\��\��U+�����_\�\r��@\��2pfCHd����XfN	�T9�\�8\�ZQ�\0�N��|Z\�żS\���\r#\�;�Y8�A\�\�H�&�\�,\���\�k���\��\�E�����p\�~NР\'�w�\'�\��x�ey����:�5�L2\�M\��l��b-\r �aj\�\0�DNaVA�~I2F$^��E��\�Z�k��8]��Id�7�1�7ж�տ\����	�\�Q\��\�\�\�\�Ԍ��n\�%\�<\\�˩�̪�X��%��x��I0q T$\����]F\�\�G�\"�ݙ7GL�q>�At͒�&�7	ԝC�5L&`X�I?,fެ�o�L�nDx�KNONO\�!��o=��\��y��_8 ܆C\�(��4Z�߀\�\�\�\�[\Z\�(� [\��յ\�G	�m\"{F窆f�\�5##df�zf,��\�\�e\�\�\n{�{\"o��{9\"���\�<\�ԯ�vR\�׾��E�\�ҹ+�\�9E\���/�KHS\�3Ν�`��3*�\�^A�e�o$�\�t\� �B���\�h!\���\�Q�\�\��-ԓT��>U���\�\0\�[D�(K��`\�y\�X��+�\�]o-\\�)!ȃ퀫4��Z\r��hϡ/\�n\�#Uߤ\�\�/Vԟ��w\�Y�?m\�\�\�ꀋ\���\����\�ܓ۴8]��Y��Op�\�i\r��45ҟ�ᗦ�zy\�\�\�@Hʸ2�f\�\�3��U�J\�(�\r\�E��\�?(�\r�l�L\�HI;\�Ց9%9\�E\�o\�6��\�\�c\�D�](,\�K�K\�\�j�no�ؓ\�1�\�\�\��\�=.l|(��ͭ�\���\�\'8r�Z\�yrj\�\�Ȭ:�-�\�F\����*\'�� �\��\'��Hp��Ayb*Y[\�7�\� ml\�7��IW\'�A�ه6��\�]\�-*d~\n�X[\����\�z�Q,��w9�b3\�x\�\�\n�|�\� {$<] �\�f5\�Z\�q�l\�HJbl�n}\�\�k\�>?t�\�)<v�{]���G.}\�\�\�\�\�\�-:\�\�@\�C�J��O]\�����;岏�\Z\"��\�ɩ۸%\Z\�\0w9��X\r�<Q#m�Oh��&\�\0�&\nM�\�˸�֫�\�&\�>�Up�\\ތ0D\�^�$*V�\�2SS���O<�\�q��Fֺ�Z�E����`�s\����������N���c��ٛ\�M\�\���=)\�\�(�\�)h�+��\�Oy\�p\�\�\�c�,\�er*sJ��\n\�V���0�5PJ��%\�c�Hx\�0��\��E��]\�m�h��P{mJ\�\�\�f �>�\�VցhB{tq�\�.\�\�\�\����iy���r��\�\n�5��\�;�C4�\�(���\Z�g�\��0�:�\n?��H,�|/\��\0�\���JYG���\��\�v.����\�er��y����@F0�Ȅ�\�G����@�h�=\�tl\�El&\�\�:R֓ԑ\�ui�\�~�/�r�H�Ӥk\�\�I�$\�\�V\�w;\��ְ9��2)Ζ�\"a\"8�\�~D\�`\nC�\�-G�\�\�P�GR�\�$N0��ܖ{��v\�u\�\��9�Ҡ��4j��7-\�s\��aү�_�\�E\�\�KtF쉀���F\�Q\�hT�\�\�\r��fq��D\�bbD���\�\�[�Ƙh\\f��}\�{=�M\�{`����3�o���\�9\��\�wnAvQ�6��ȭb�\�+BCݢ`t�\���~(�O\n;\\\��Cě%]�\"M\Z�O�B��x\�@ٟ\�s\�D\�t3$1\�\�Y8a�\���\�\\�w�Y�\�Z(��]��\��S\�6��\�\r\�j�GY{kY��ڟ7\�	��\�uׂ���\�\�\�\"{��j\�M`U?�԰d{�O\�@�����;�V�\Z��8,\�\�D�\�u��b\�~�N�.+3S\�7q\�_XG�w\�\�\�\�E9E\�a\�;�w@	dW\�\�\�YhqL�>35m�XO�\�)/\�<��|X\���e\�\�lr���\�ʌ�̔d\r\��d<t\�r��\��B�\��BlE\��;\�k�x��\�~�\�)5�\�@ǁ\r\�Z����\�NzA`*m�O\rY�%ٰN�?�l\�Je@҈���}YV��B�UQ\�#M�G���f�$p�u^�P\�%DR��I�4,O�\�\��N4�&N�7:qc�:�n\�Q\�\��\�p���i�6�[\�ڃ\�郞X�d�tc�h��	H\n\�a��kE\�L���W\rs��7� ou4�H\�\"MK��uC޺���\�`o\�-ٰ&y{:\�Z8�q�\\	xcu@3�\Z����Bw4	�Q\�E<=.\\p\�Y6\�M!pG��t\�A��\�aA�BjOw\�\�߯�g�?\�\�T�c\�W��\�hS~Mw�\�#�]\�\'t�\'�_¼߅�W\�\�\�I[�y\�RM�kQ�H<�����\�IO��T�I��H#e�F\�e8JFQ\�8��\nJ\n@E�P.#\�\���\�H�V�9�\�_�;�k�X�O=m��aX��\'5j�A����\�)��pʜ1P\"\�\�<\�\�\�\�g\�((�_\�\�_y~%�R�cPޘK\0}��@v��7\�pV�uz�����S\�W���\�-\�+W\�M�H���\�@\��b�>\�*MJ_��L�|Iz\r\�_�C\�v\�;\��\�\"c��\�>��\�ݾh��u�v�3R3S2d�Fa�?U2\�������}�\�\�οbVH�\�\�p\�Z��1S��.�!��\�+\�[d[h�G\�\��|\�\�\��iÙ�S�\\Kh�\��`H�~��f\������?�<z�Fr\�`\��\�a\'�O8�Sm����\r��	\�ng\�(��0*���\�н\�V3�4\��a�ֲT�\�\�ş��B\�\�\�b2>(��\"w8\�\�\�,\n\�\�\n\�^h�=~�4�?�YךY�VM\�]����\�t����ȃŃ��\�\�P�\nn��bDx��\�ya�^�\�z���\�\�\�5��;xo2\�\�*P7~V���A\��#�\�*\�\n�q���\�\�\"70�Y�!����\\<\')v\�\�+#臞�uN�0`䉖bciN�xK�\�\Z\�I$���I\Z�����}e�\�9!Wp�J�\�ʮ�\�\�\�\�\�(��o�\�\�F��x�\\��\ZU}\��Zn��x,�2J\�@g�\�q�\��.\�I�\�\�T\�\�K�\�\�N-`�4���,��b<�\":\n����\rh̯̊<i�l�*m��E�Vd\�\�h<S\�\�\�gx6{\�\��5)�Ҽj\�I��(L\��u?�^+\�H]�臙ஔF�h� Ҩ;!��3�jqӠ��(3R3SS5\�C\�\�\�\�\�\�\�?V�={;>:B(�S\�r	�31�8^2R\�$?\�+)(l��-\�W���\�\��\���q��JN�ϛ\�U�\�n9��R~\rj~�b	\n7.Fk�6�#��z-S��&��\�\�C�eJ�lՄB\�|��S͇E}{cGV��@,}BZLwW��Uq�M��27�K\�H2(\�18Ճ1I��Vw@�/X�\�_6T�Z�?J�-�1w�04\�\�\�[O�<o�j/=n��)s}F�h����Ņ�\�\�L5\�\�*\�y\�\�W.Ĝ7텖[��S�����#���h]�V�\r/�LauX\����_\�\�F��o�\�HQ\Zڈ���\�1��I\�e�Xk+�������\�\'V����m��o�ZZk�&�\�\"���L��Td4�\�\�ѐx�\�\�\�\�:c\�\�&����\��^��\\\�N��[S\�\�b��f\�\�9:|en�+r,�\r�w{W�\�\�\n;ǟ)�wP�С�\r\�MM���\��\�\'�\��\�&q[5\�KJ\�^+��\"b��b\�#|T�\�S0�J\�[�@��P\�C��߃z�xO2\�xI�껚:�|�\�\'(�u�\�0nK�ϐbЯׄ\�ͺ\�u�U�I0\�߀�V�M��\�~\�ԙ�ǖ��\�H��\�F���\��\�Y\��C�x\�䪼(��/\nޔ�!\�Wd\�O\�L�jw�4����\�8��\���)���\�囂\�\�g\�[\��\�D�#�l;ca��P\�0\�6h\�G�\�f�������\�;\�}i\�sr}N��\�\�PL\"%��\�\��#�@I�LY~�K\"�쒊���1�,�d\�@�1Ć\Z�\r�M:�\�\�\�ye���?�\�\�\�}\�{\�=\��=Gm0��W�N,�\�zݪU�\�\\)\�QS,\�\�\�Lɫc4��7�VL��ݶ\�V\�gq\0�b����\�ߵ-��L��\�\�\�\�\�R2g�\�>�\�=j!_���w^�wa=N�*�$\�&��\�\�+\��\�Ҧ\�N�x�}.\�U\�\�5�9.��\�>MQ&�������\�tH�B��\�Ġ3\�\�T���b\�\�+\�\�\r�.ҁ\�rL�\�\�$�p6&v\�&\�k\�/�󎹕0\\\�e�\�\�\�˖K�K,\�و�^�r�O�z I�]\��u�\�zCj(4�9�ř|e\�*4�\�Fޚ-q��\�s.������x�P}u�\\\�\�\n\�\�\�\�\�\���\�,WC.\�^Q�q_�j�V�\�N\�\�Ķ!�h1��\��\�JŹ�\��\�SI�X�EyB:\�gΦ��<�J�2\�u�\�{F!9\\\�H\�\�e\">\�2�\�\�߾逥�B�J�f+\��d)S���}nӫ;6Ʃ�\�U\�8,r&r\"l\�3[$�\�!SU\�^\�/~�=Hoğ�F}\�9�q8�\�\�3 j˗i3c4�\�a`�\�x�٫0ʉ\��\r��\�N��##&_��7z�g��nu��\�5��g�GLGp.¼\"W�_\�.�\�}�8!\��%Ҹe��HCC�\�rz��H\���m���\�P)�\��y�|>pM������Fa�ѝ_;��f�\��\�q������~�^-Bh��\�6�\�\�\���̌FuSi\�\ZR\�\���\�:ޛ\�&�\�Ӟ�z\�g�Ơ��\�du\�;$�uX{	w���K�\�\0/�\�\Z\���\�G\�%G�$\�jvj�xM\�I<��Tp�unLi�n\�\�\��a\�E��;S��L2��1\�����\�\�jv��+;C<�]\�ߏ\n�\�FF[F:e�\�� v�\�\�\Z�W59?���Dy\�3\�\�-�\\;d)�7�}�-��lVg\�թڣP��f��M\�%J;�1O�8(��\�N�p\�H�\'��6���&��\07#�MB�\�Cf�ӗ�1P���04\�郄}0yh.�h|-�a��9�\�]v��@H�y4\r�\'+`\�\'���\�\��\�\�COX�\�5\�U�\�D\�1X�\��ū��\�\�h\�[\\�~qfG��Mһ�v���,a9\�Pm�\�٧�m\�r�¼LT0Gm��30#z j\�4SK����s%a\�P> 3HR��\�\�èD:��?cV91\�\�S�#�N\�Cr��\�Ʋ>彇�5\��g�*\'���s\��\��Y�\�bh\�p\�R\��$����C��\�.\�0k�n\�\n��x�\�敋�\�Wq���۬��k\�%��\�H^*�\��`\0�;`a\r\nendstream\rendobj\r37 0 obj\r<</Filter/FlateDecode/Length 571>>stream\r\nH�\\\�\�n�@\�=_\�\�d񪮊%d\��C�b\Zg>\0Cۃ4\����~�r�D\ZK�ۆ��KM�\��f\�w�K�\�\�&w\��v�\�\�\�w\�O�µ]3=F�ws��$���\�.��tM�ʥ�\�\�\�4\�\�Ӫ�\�s��\�0v�\�=�^�]z���\��\�en�tm8\�}��\��%�t���o\��n��\�9_w�߇\��y�\�\\\�p\�&�uI�\�\�\�U��Y&�o��n\�i\�S��*\�ƛ�L5\�e\�Ƌ8.�yO1+�\"�2�\"/�\��\�\�xV�a\� �N<%U\�g�xf�3\�\�s�\\2�\�\�,Ȟ\�#\�S\�S\Z�!\�V\�V\�V\�V��W\����TB��#�<B��#�<B��#�<B��#�<B��#�<B��#o\�o\�졠�\�\nz(졠�B��\�\���{�=��~��\�\�\�\���{�=��~��\�\�\�i�0{�=\�\�Z�Z\�Z�Z\�Z�Z\�Z�Z\�Z�Z��u�\�Z�Z\�^)z��;�Ce]�\�W�^){5�]e��\�ǺF����\�+c��2�\r~�\�\�7�\r~�\�\�7�\r~�\�\�7�\r~�\�\�7�\r~�\�\�_�V�\��}\�{�\�;��x�xC�\nǝ\�}\�\�\�8ƭaގ\�=�Aׇ\�k�.\��`\0g{!�\r\nendstream\rendobj\r38 0 obj\r<</BBox[0.0 783.0 585.0 0.0]/Filter/FlateDecode/Length 87/Matrix[1.0 0.0 0.0 1.0 0.0 0.0]/Resources<</ExtGState<</GS0 130 0 R>>>>/Subtype/Form>>stream\r\nH�2P0\0BCo.=#S�r_�@{)p\�(�sU@\�[)�Y\���*$\�r�A�������BW0W �j#K��\0o\'\r\nendstream\rendobj\r39 0 obj\r<</Filter/FlateDecode/First 12/Length 517/N 2/Type/ObjStm>>stream\r\nhޜ�oO\�0\�?\�!/AS��i\�?�T\n]Pe�6�\�$\�ƛ��SZ>�gH�T�m\�\��\�\�\�\�~��\�{��uC\��Sn�^\�Đc\��\�x\�\�0ejJ\�3��.XLH�L� Uu�e6\�,OP0E����#U]�B�\Z�\�2�t]��W�\\&Ђ\���$dN0/&UD�\�R\�ז\�Wд�=n$\�\�\�RH�X�L`Q�6\���\0\'\�g\�#\�8\�\'\\\�W�\�\Z7�\�w��{<\�_�\re�\�\�c�ψ����9Rp�\�/d\�!�tP`\r�K�`�5^�t̹\�\"!;�4T�؅ɳpN�j��\�~��T;\��F�͵\�\n0��99��\�(p�\�l\�j-?�6b\�C[�1\�^fG����Vh�z\��&g\�\��Wި˝85�L�b\"Uf=�R�\�ۑ�s\���\\�\�cj(���A��uA���]�\�H�\�?�D͠\�\�\�(���w�\�\�\��\��/�|\�\"�\�d?�\�\�\��X\\\ZB��R��\���@�@�\�$\�|Ю�\���s�^\�\�=���\�� \�\�B\�ދB\�\����\0��tp\r\nendstream\rendobj\r40 0 obj\r<</Filter/FlateDecode/Length 5240/Subtype/Type1C>>stream\r\nH�|U{TS��\�\�F��@�I�^\�qj+�muU�LP��Q��c Ix$$ ������P���H\�V�Qg�G\�\�\�tm�\�m\��\�\���\�s�VO\�qݽ�\�\�\����s9DP\0�\�p\"wl�۹%faL��lI\�\�%O\�\��_\�s�A\�Y�|�w��꿾#g,\��\n�a�i�ଙ;É\0g\����\nMA�4�(jA\�\�Q;��h�\�eK�,[#�GM�\n$���$k\�\�M��-QK��$	�þ7�	 1��\"�9�\�r��y�`�8�0H b���&��\�\�N<���e�怂�S�\�Y�w�\��=!���\�/�\n]�\�Sn\0�whJ\�Ӕ\�&N�\n\�r�}�=8?�\�\�!<.\�\0�3tk\�HX`\�\�ç��\�O�`\"�\"DFF�D��\���}�_\�\�\�\�\�?�.\�c��\�d\�\�?�C4�\�.ɐ\�SR\�\�=t�\��)\�\�\��&�柦b��P0�(P܅�\�\�\�c.����8\nW/����m>pa1T3PP��0�iu�.��\�v\n+�\��bh\���uw<��\�n�=͏�O�jj6�\�qT|(�� \�*珞ysx(\�t�Yzڙ\�K\��X\�\r�Սd�\�\�\�\"�^\�M%�⍯YE��ߞ#]�XTf0\�j\�\�$\����\05��\�\�\�梍+H}�\�R.Ɖ\�\�%�?��\� �\�&�\�M+�u�r��\�A��\��\�\��ց�o�W㐔k\�\�x:��.u9�u�{��Z>�\�\�<r�\�Ƈ����7g]<&\��?\�\�R\�\�\�$Y\Z:��ܪ�\�Q�m\�v��\�p\����M�ml�`\�C\�sA�T�S�\�]A7X�/��=(\�A�י����߽�ջBIUV�P\�ĸʷ�T�iUl�a\�n3��`#\��8�\�)v\\\�r��B!r�\r�(�`�^\�X�=yG�I�\�aQ	^h\�\���\�c\'����M��Jގ�Z\�=c�}�j\���X!�}z\�\Zæg��\\8�\�X2R��\�Ѡ�b[O��\�J_\��?�\r���?D�֚�Q�\�}���\�\�gW�}��\�܄7�\Z�ԒE��r�(�S{v��\�\�	�\�\�\Z\�\�\�ùq/I�b\���,�>�;��Or�If���G\�=�\0=h���\�\�X\������h0ک��R[��Ld\\�P\���\�U\�$\�2\�mr\r\�R\�C�\�XaJ�$lem\0�\�\n��\��}���\�ڱ\�&f\������nųi��\rW�F�M\'�i(�\�Vh�\�+H(�1>���Mu\�\�6�\�pފX�\�h���u\Z�����S\��S_[��}\�\�oH�����\�>�\'�QijNl���)R�v���\n\��+0\"o�R���\��\�Z$\�TrR�J�dGRb�>1\�\��1�ᵀ�\"\�cWoa5|�\�\0���\�.<(�\�\�9�\�\r�\�2�O��\�f���ީe��T\�\�\��v��^�C𖸗q \�{�G൲7�H*P�$��\�\"nI�]���;�b\\��^uw\�\�n;�\�\�$\�۟�\�.�2\�8n�\�F\��\�:���M)�\r$����\�|�/�\'l\�uv\�\��\��um\"\�~L�k:\Ze\��(P�� EUʢ������fq3�8�\�v2\�z���\�X�bJ��I\�P�_��(i,\n��r*�����\�\�\�&a\�nh8l��\�\�\�)�\�֑\�f�Y#¯R�\�\n}�x\�:�xX�|51�Ժ��\�\�uGS�Oȥ\�nǄ\��2��\�=lDQ�d#�����4Y쬱��@�X�%)[�ҟU�\Z�\�n\�j�ϻ\�~<.�.<3�\�VH�Z��Nz\��\��\"�Vb�Y���me\�حM\�\�\�O\�m\�\�)�\'q\r�2^ϳy�eSll��\�=\nGd4\�۴�\�\�)\ne)�\�X��\�CH@Y\r\�փ��B\�0�ݭ��\���&k$԰�\�l�\�W�Z�d�\�\�k��\�b�:���f�\�ܕݥ\��v?3�\�!V�~!W�ԏR��\'��9!�V�>\�eO�\�\�:�Z�Q	�\�\�^�	�\�\�\��wP-Ng���\�Dz�\���d�^|\�pxж#�v�\�\�Z:̓\"d��T҉@\�]M\�o��\��z?5I\�\�\'�����#vz���\�K\�<�wyik�\�e\�fj�Պ|\\*Üi.�-��ƼC?���\�*�w�I\�c�\�\�n��\�>\�4s\0\�J��\�Ns��N-��\���p�\��8W�n��[\�4�:*˒Q��-\�Z�ƼK?3j=\��&��\�an�ݖ�0^\�QwQ�7&�\�Xa\r\�\�=�(&8ص\0Gn�	!a�6�\�^{�\����w�\�}ٻf}�|��\�vP�b����BjD�6\�4�\�1I���*\�O\�o\��}�\�7\�h8	0	\"|)\�\\\�&\n֠C(G�5hJ��!\�q}a�*\�d:\�jH�%�\Z1���X��L`\�\���N�jL^\Zn\�v\�W�\�!p�\��ϡ;�\�*!��\�ijfL\����\�p\Z���O\�tQa\��\�4\�\�\r�\�NQ ������\�<k\�qYcU\'�u=\�Z\�P������\�\�4[q1,�◻�	��n��8\�!o��Y��\�\�U}�\�V�\�O\��k>e\�\�Ƿ\�^ym�Kn#v�vLO��:=R|��m,iJ�e��J��]��ќ+v�ǠH��4/\�\��`/w���\�Xg\�v����\��Z�ٲ`\�U\�\��\\���y�&\'\\p.��3\�\�O\�\�=\�c����%\�~ <����L�.ef_\"s�me���N\�1\�|�9\��N��0�YY�\�Q�{���7�㤑��#�����\�`t�\�F,͂,pK��Ϩ��\�e��(��͙�/��\Z�\Zy���r\�h �\�V�Q�o�\�\�׳�{P_#�MBE\�\�e��LT�\r_��lpV\�\��:��Bѳ�Ѳ\�\"�\�hq���۳A�®\�\�M\nJZ\rKj�wH��\�\�\�U�.X\Z\�6��\Z�\�ۅ�>�A�,�\�˳\����7;yjpϑ\rZ�Ic���KQ\�E�E\Z�\�\���w�+=j^m\�\�k#an��\�\�n�Pp>|��ޱ\�ye���p��I\�ךn\n�\�8\\Ev�Մ�tځG��\�V�t:�ZAE�h|{b5�/�[�r[�\Z�ʬ�໨\�!�����TCe���\�Hxs�\�ڬ1\�\"\�P\�c�\�m�<50����M\r�ZU-�\0*\�OK�\�\�\�\r\���\��\n�ڬ�\�Q�mt�@;A�\� U��\�<l�G����\��fr\�}\�\��\�\�d�\�\�q���N���|��&x2\�\�exۋ��\�[Φv�Ȥ���S�uM\������\�D\�J	[PNW\�\�\��^\�Ш�s�IѬ���&\�\�j�y�\�ѲX.l,\'^�\\��*�����\�\�\�\�c�\�\�><>\�\�\�lzȪK+����\�n�\�Sā\��\"��/lD+ﾴ\��@	\��e�\�e�(9�8Z\�.�Is��\��:������������4T��\�\���{�E\�lۦ\�\�\���\�\�\�\�\\����Ic�Ew��Go�;tp�D�L]YMgwI�:��{Kz˛ؖ���]Z�2\Z�EQ�G��\�\�\�w�BX\�F@���:tF7��	\�%spn���D1\�#k,\�\\\Z-\�e*�\"�\�\�\n���x�ܵ�S\'\\\�>^�;\�C�H���w\�\�\�\�7qhT\�\�ڣ� \Z�1��^\�\�\�D\�\�|\�Nf}���8�\�l�a��0��v\r\�:�Q/�E\�y�3~�.fބ7��\�����$�\�jTU�\0�vE¡^�}7Qd5X�\�>�\��\���w-��\�dgJL[�\�fc\ZZ�6�\�Ġr1��$kԚ\�:�˶���@\�d���\�\�9��E\��|\�\�\�k��w>��5�Ac�\�a=Մ��V�2=m\�\'���\�\���j�	��0nGԺ餇r.�:�0�>\�#��f�YgiO�O\�x��\��Vt.�U(��q�����	\�ηbj\�R9\�\�\"a��l��\�\�\�\�91��Ug\�9�}q�ࣶHh\�%+,�%f	A�;\�3\�\\t$�qz�\�\\\�PT;w�h\���ء��4��♕\��n\�ea\�3\n\�-\nS~�;�\\\� y @5�Ќpr�gx8�W$\�(\�\�)�\�\�\�\�\��(q�\�\�w�-sH\�Z\�RKitȕ:\�F\Z�\�g�\��~Z_}��a��\'�F\�.����\��<_��f��\�\�Lfiqv\�i\�\'p\�9\��I��(���>:T�k�/\�\�\�����?s���1_\�u4�\�T��\�@%%8��\�\nY5�ʲ����J\r%&�Fc\�x��ʠ�E,iMk-h��\�=\�G�\�W\r6D�DJa�^ߣ7\�9�����\rO\��;����\��\�\�\�\\Z�\�R7F�{:\�\�J��-}��\�OWŤ����J�J�\����͢�\�E\�\�\�\�`h�\�\�-�eM�+���[=�O��Dm]Xm�mɢ�\��Q\�ݨ�i�{%\�\��a�gzx`\0�B��0��\�|�\�Q�z4���D�xn(,���Fό���Ztfr:\'�z!\�%���E�\�\�6��*�\�\�r\�eZ�\�Y�۫��\�\�-���D��g&�.[�ql�\�:��\\\�`t\�\��\�Cz\�m\�Җ��R(�c�FcآfFfH�\��I3M�\�SsH�t�m�\�~=\'y\�s��\�\��?���>ӤN\�ʁ\�\'\�;\��\�n\�M�N�W	���hb}�^�\�C��%\�\�\�\�3&L��\�\�֪�y\�%�d��3��^�\���Ô�7P\�Vs���p\�	o\�%!�Ӓ̢\�m;��1\�[G\�`q���\�b�#�E�+�7��2}�A\�\�\�.K��\�_6NW;T\�jX�\�y>;\�\�\rу1�=�\�\\\�\��\�\�\�\n/�\r�\�0U�6G\���\�CSɔͦ\Z|�`�ʝ������R�*�\'w\�]�d\\h\�WLT\�}�����\��n�\�o4\�Ö/�Tn5�\�G�¡�v�\�\\�w�6[���+��_\�A��E��7�\�S��g���œ{l_`Jf\�6\��\�rL\����\�\�\\V6f�{E�\�>�\�Y\����G\"�\�d\Z\�u\r\��Εy\n�etE5\�\���Y\�tPc.$	z��\�G��z퓱�S\�S�<�6��\�^�*��Ly��L�\'\�n�\�\�\�\�\�!\�Q�(\�c�+	L��_R\\��\�\�\��;tk�\�\�^\�20A\�\�\�+!�\�}�R�W�Z\�\�C$�)Q;��%\n\�!Iv\�v6����\���@Ta\�gq\���_��|ͬ��\\�&\�>�Px���\�x�\�P<��BE�v{�|�X��	\r�Qm4]*0Sb\�\�\�\nlYa)<\�\Z\�\��%X����w\�D���0�(�܎om\�\�jY��\�n�Nt�\�\�\�\�1�2����<�؈B*����\�\��\�\�Q\0\��	��yB^��p`��\�H\�\')\�\�]��\Z2r\�Ϙ-\�\�Zy\�\�L\�\�]]7\�\�Ex+咤�v\�9\Z��mTt�c�\"\�B�\�/!�R~9\�ݢq\��NJ�B�=>N�LB�\�\�z;\�L\\q4�x��\�\����:���\�ۗhؼt�j8\���Ըl��\�ē\��:U�w\�\"\��\��H�2���\�x�>Q[+5u	\��+�&dMH\�\�l��ymK$S>|hцX����k6���N�4\Z(�i�\�c�q\�\0+�f�\r\nendstream\rendobj\r41 0 obj\r<</Filter/FlateDecode/Length 463>>stream\r\nH�\\��n\�0D\��\n�C K\"wc@0P\�	\�Cڢn>@�hW@,	�|�ߗ�	R�l=�\�\�̂�o���\�\�&�\��\�gs\�.�\�x�7G(M׷�\�\��\�^�)\�\�\�\��:�\�~8�Y]��W\\�\�\�n�u\�\�?f��\��\�g��=<��p���\�lVf�1�?E��f�\�\\�ɗcO�.����)���\��}�\\��i\�\�_����\�>�W�٘�5>�\�\�\�\��\��\��iBV�ؼZ\�W\����E\�{*\�\nr.\�%�\"W`K�`Gv`!X\�\n~&?�\�\�ud˺u-\�ZԵ�%�e�/з\�\�[\��-�����\�o��\�\�;0�`\�\�>�\��W�\�уc^E^G?\n?�~�8\�u�+\�\"\�\"\�hJ�K�)Д$�$%\�(IFI2\n3\n2\n3\n2\n3\n2J�Q\�sE\�5ɫI^M�j�W\�M\�M\�M\�M\�M\�M\�M\�M\�M\�m�Z\�X/���v\��\�)3_�\�\�B�c��\�2��~�_\�:�����\��\n0\0�\�\n\r\nendstream\rendobj\r42 0 obj\r<</Filter/FlateDecode/Length 3713/Subtype/Type1C>>stream\r\nH�dTPW\�f���\0�0\�h\����\��|% ]@	\nD($(ʊ��|�U�T������E%�1ُ� ����̌��uQ\�l���\�;\�\����J��\��޻\�\��νﱌ҉aY\�+5iͺ�\����\�y�bJKߞ\\�#���L�<\�M�ߜ�|�\"��H\�>\rvz��9-ӋQ�\������)�!�t瞲\�mE�~����\��\����=;\r�w�\�	4,\r^��~B�KJS�rCYayaYEa�\�\�Ҳ\�y%A�\�S�`CA\�V�a\�`\\XF`O\'F\�ļ\�0>3ǉY�d9f��	c�&ݙ\�N\�\r̫�hL:����\�d�\�#6�\�g�w�qjR�)25��\�e��N���\�VrE\\�Gn�\�\��\�\�<I��\�I��\Z\�\�\�v�L�F��M���s�g��\\\�\\]Gݖ�}\�\�\�\�\�����NA%�*Tǅ���{\�\�v�Z�<ڮ�jPi er`ʥK��\�Χ\�\�V>���94`�ƞm\�2�ͷO\�\�\�c�c�8&\�1��x���5*`�״�Q0��C�\�/��\0����B���p����\����GnŷS\�G\�z��V��A�?\�\�\�o��Et\�t�\��h�M����\�~\r\Z8f\�c�P.�dSHZ���B}U���.��\rڬ\n��J8��NCĹ}�FOT\�\�,-EpJ\0O�[\�\�m\�\�-bm\���6R\�A�!\�_\�k\�\��)\��!\�wZyi�\�\�\�cQ\�X�%\�a�k�rd\'uy]\�Oo��\�Zy�;\�x\���{N#OA\�oA�X�y���D}Y�\�<8ڜ�\�\��U\"f\�N����:\�M4\�A�\�B\�\�N?\�\�#38��\�h�7q+x<\�\�\�R\�:���\�\�$���ͽp̦�S��\�\'�D\�B@\�wsqZVU\��0�\��U\�����;\�g/��\�s˘\�/#8#�0NT?�M8gҟ�\�FV�V�<Q���t݆�\�N�6�V\�\�+\Z\��Q/zp&\�]^�}\�7�\"���?\��^}3VT��v\��)��\�\�\��\�\"\�&(���V<ԭY�e\�\�w�{#\�\�0\�X\".$	\�A�PZ\�M\�p\�&\�)�Z\�3���@�o\"��퉿{>���UWw��\�Z�ͻ�\nd禠�XDR/�\�זg��\�t�{hĺ\�\�\Zԟ\'w\�M�q�h�XBBSs\�\�zפD�\�7��ޯ�&�8B\�J\"\�\�&��\��\����z�\r�i�\r\�\"\��\�ɕ\�i���|Z�~\�\�\��x\��\�/s$k�s�\r\��1\'\\�5��^\�o�\�@��k_gS�d\�\�9�\�\�HV\�Q}Q?��h\�ЁKD;N�K\�6��@�o,X��e��aD�!��e\�͢�����p�\���\Zb\�^VY9�.��T�9\�d�\�\�{��h@\\\�\\T��#\�>���\��\0Q]R6t��tT\��9�d�XG0\�WB�(�5\�a	ޓX�Ma\�\�[\�8}��{��\�\�\�\�T�;|�\r\�@�������xa�\�{\�\�R�ݔ���\�J\��I���c\����k���\�x�P#�\�\rS�A�f�epO��J\�\0&^��x\�f\�	\���Z�յ�l�X\�fS�ۧk �a8\�[\�@\���Û�}Qaϭ�\�Ajx��\�ϡ\��\�(��Ϡ��\��	]�U\�D��5۵?�\�\��]K3�N\Z&�.\�\�ӝa����B\�B���\�\0�\�a\Z�\���X\�H\��KN\��x\�\�\�\�e\�!\n�-��L\�b\�]\����,q4��*�<ffi�\���ܟ\�\�cV衚@0�=�@�\�i\"bͤN\�Vҗ٬�\��\0;\�\Z\�yĚ���tY�L/�I*\�9\\\�r\�:%\�9�w h\�	��6hE=~\�\��\�\Z�ad�g\�b�\�6!�Z(��Z~�m_r������-�\�׿ׁ\�\�a�)\�!\Z5\��\�yo��or62z\�jI~\�˚�0hQ�\�j\r�\�.}չ����\�\�\�\\\�\�\�uց�~ۍ\�ԯľ3\�íA\�\�\�\Z\�hTͿ��C�|\n�\�\�+%���ȜEc�XK\�\�*\�>[Z\�0U{���O���h���\�q)��\�Xu�\�P\��\�d\���3K\�\�\�G1��aM\":�V��Z/o\rw\�\"�1 �\����<���\�Xy��\�q+y\�\��q�Я\�?ҙP��?>Վ�Z![�1��tWkPW\Z\�,vߘ2c2m�Į\�F��Y8�1Qg�\�c`Q�H4�I\"CJbxK�v1L⮻h$>\�\�$��\�\���\�э�\")D]�M�_[wRٯ��+����n}�{\��KU�\�cd\�2z�F�Qf![\�8��+so/��\�F |�\�\�R\��\�ϵ�\�2�\�\�0\�&ձܻ������GG\�ʃ\�\�fC\�\�\�߇-x�y�d\�I�cݞ&�\�^-�J�%\���.|d�-頛���x�^�O�\���\�\�y�>\�\�\�+T\�|�\�0���ס\r\�O�5Ն2\r��\�\�m+\�k3˕���╽�\�Hi\�\�\�\�}�\�rnT��ܖ\���\�Ȉ��D%�i�>F�0X�\�ch�\�\�[� ��\��H�D\�B\�JݲaiD\���\"<N�\�\�~�-==�Xn �[\�Gq�D��ψt\Z��7V\�`\�\�}\�\�\�^�\�?|�`\�%��\�\�c\ZF%�\��\�\�UI�wX[��� \�pl��c\�z���W6�� �|\�\�\�\�]g\��1i	�>\�ფNXܣÖ� p:xY>4\�R�1۶g\�%�R\�\\�:a\�[��pH=���\�\�\��0S�t�\�\�\�Y\�\�\�\\)+\�|LV��\nU��\�`:�tz��Z�uSv�=\�r\�\��}\�N��\�\�	�26.��\"\�\�$��\����\�\rg.A��\�ZA�\�\�0]RK��\�N_A\�\�S�\�-�G����X`�޿��ȴT㆜��\�c�V%O��\���\�4\�Ѿ\�ޡ�MFqy\�UB����\�d/R�\�4�@;\�\�}i�-\'R��\�\�i\�!\�[	\Z1:ͬ���U\�v\�A�eZ�ZmfA7M��|�f�̚Z7\�$���t\�L�\�\�\�\�\�!ܸ)\�Ů�祉\�dyqmm�d!\�vV7�.\�:�_�\�%ؘ֕��c��:1Pӵ0��\�D�t�aT�	a?�\��\�9�N�A��Б�?�E\�&U\�Wڅ\�E�[%�GS\��| 涨����#\�x\�\Z���g\'��{\�\�\�\�\�D�(\�M�\�yz�\�\��\���O\�Z��W%\�Zr\�j�\\Q�k��:魄�R\�u�F����M��\�\�]���\�%b��e.�\�\��!\�u\��f̌�Q;쭋�3	p\��e��O�4�P\�fr\�7-2\�,\�ާɍ3\�\�\\i{�!�2��ة�\�񏾲���\�]\�+px/�\�\�\�\�\�O	?\\�@HZ\���\\���ע	l\r��*��H�\��Y��F�{\�C�\�l<c\�p�\�0\�熆�\�,<R�\\�\Z\Zk*�\�0�+s\�:�S�\�9\Z2\�\'1f\�+���t\�(�{J�;�]�S6�27J�F&v��\��\�\�m_x�O\�|��x\�$\�z}\�g+��I4Fw\�KJ�!G\�\�\�\�k���ƒ\��U��!�I�ƿ㚠��v�D\�\r�3\�s\�P��o�j\�\�G$��\��*\nn2�\�\�\��\�A�F�i�q\�(�I�\�o����ҁu\�\�T�a\��\n\��K��\�/�[5�)2\�Ht\�NB\�SLqY\'o� �\�=��vE\��!\n\�ZU�E�eV�tn L�\ZƼ�Yb\�\�oVO}3SK,\�,`�-\n+��T{�\���f铁P��15\��!S�\�9�o� �\rj\�k�\�%P\�,f�Hg@\"NXB?`���^-\��Hm�\�\�<\�\"A�:�u&\�h�<�\��\�ǶH\�]�\�l\�{?*DQ~�ysU#\��dM�:ӫ�2X�\�C��\�	�c�AV8D\���\�\�]�I����\�v:\�\���9y\�\0�\�\Z ��\nw\nA&����\r�\�\rj�>\�\���\Z���)�^\��e\�txg��/��\0L�\r\�\r\nendstream\rendobj\r43 0 obj\r<</Filter/FlateDecode/Length 540>>stream\r\nH�\\�݊\�@�\��}9s1\�\�\�*� 8:��ú�\01i\����/|�\�#��B\�/��\�\�C:\���;t\�\�\�\�c_\�\�\�m׌\�\�\�\�:�S��]��i\�\�y7�\�\�jHҸ���M\�z\�\�}R�.�ަ�\�^6M\n�I�ml\�\�v��k{|u\��>\�5t�\�\�z\�p���T\�\�\�\Z\\:/{;4�y;=\�\�3~>�\���>�L\�7\�6Tu�\��2���+��NB\���\\�\\v:׿�1)�}��e��Z���\�\��8D^��\�y��%o�;��A���\�g�C\�\\�\�X\��dސ7\�w�;��qHJa}A}a}A}a}A}a}A}a}A}Q���l`\�W�_\�~��|�>a��9r\� \�A\�,p�\�\�#[OggOggOggOggOggOggOggOgge>�|������������T�\���������\�wF��\"e>�|��(�Q\�\�G��\"}�\�ǘ�!���\�\�o�7�������\�\�o�7�������\�\�o�_�o�嘳*Ș�g\�8\�P=O�W�\n�ϳ[\�\�1\��S1�W�Զ�_��\\\\�+�+�\0�/\r�\r\nendstream\rendobj\r44 0 obj\r<</Filter/FlateDecode/Length 3252/Subtype/Type1C>>stream\r\nH��WmPT\��\�r\�1+\Z.\�b�m�F�jm6\�*P�ZY�X4A\�.�-��H�{A\�\�ŏ\0\�E\�$��P\�hǯK\�n2\Z�\�Ԥ\�Lg�~��\�\�\�鹻w5\�0\Z\�\��r\�s�\�9\�y\�\ZB�T*ݯ׬Z��2?\�RQj,�N/3KͿ_�m*�(\�/�#\�\��8#T�5�#�E\'�$�\'Tz�\�\�\�\��*�N��鿚F��TGO��l�.3[��\n\��9\�&�\�\\d�旔T\�M��ɨߜ_Pl.5\�\�L�\���KLzK��D^0\�[����2��2����\\Z��bk�Sa~��\\_b.0��c\n�E_m�Л\�����:oE\��\�\�\�W�oW�w*�\�3-�FK\�\"}JI�\�]�\�\�Me[M\�E	i���O\�M��\�o*���DP?UQ�)jn(�PM�<�ZJQ�aTV(e`�7)�z5Ĉ��L��\\ũ��zC�!\�z�/t*=��\�f�5\�X؋a�\��� <%�<|\�\�I�oFTE|!N����\�\�\�P\ZϔeS\Z\"7F�E�#rdj\�\�o��<?�����EY�.F�p/q�z\�\�G�\�1�*�6���l\�^����*vp��\��\�}�Ր����jX-���E~\�ڛx�\�m\�ܿ\�\���\�\�~@�A-\�*P\r�\�\�\�$V�<s�\�J��\�\�sٌ�d\�z�Ѵ\�IAuC��ZtA8\'�b=�κ\�\�ctGݶ]�1d%S����.v\�F��\�Q[��V�U�ڎ:\�1\\\�\�j쎁�Lw׮��\�c��\�\�\�\�\ZZ9\�v;\�\�ϧy\�\�l�!��\�\�\�\�c��h޹\�\�Ҋ+X\��ө\�룝NW�;R���w\��\�\�N~�á�B�\n>F|\�h�ĉ��%3ID�Bn\�\�qg`��awA\�\�r��\�\��i�E�~\�kqm\"nii���\�\'DAf����IGN-�λ�\�-\�(ׅ�\�*q��\�g=v�FёÇQ��.�\�g�\�:�;P\�\� �\r�P	��0��=.v\�y�\�Bڄm\�@6���\�\�$19�%��d\�\0^�-@6k8\�\�@�B\�tO�+�A8d�\Zٽ?��	r�\�.��\�QjF�ό�Ay�ѻ\�\�\\څeSH�5ӕ<994�\'4\���RJz�\�a��\���`\nn�$v��\��(q\'�D\�bI��g�t�\��:n@!�=`�V֭}H���jw�_�\��zE��J\�le\�6\�\�pqq1.\�j+�$��r״׏\�\��\��c�\�-r�L� \�5\nGS�\��Oc)5�\�R%(yzz�yV+yzL�4\0\�\���Y$�13LW\�p\�M\�\�jJ�\�[�,	n\�\�1s#3��s?᠃e�p@��*\\`�0,�}��\��(\�nv�N�Cw8Z1\�\�\�h\��XBB�v3o\�J���w�:�9]ͮq� �1T���\n.6�\�Z1�u�\�b_�\�䊁�\�\�S�@�î%c\�\��\�b�44\��������v�[6��\��T�{\�$F���9���\�dd(XH\�\n\�t6�cF��Չ���v`\�ڃ%�ъ. \�8G�,hz:&\�Q\�\�=͇�\�Q\�_�.?�C�=Oa\Z�\�~\�(\�Y0�U��\�\�\�K�\�\�6�@{�K`�\�\�\�eb�\��ɑ^�Қ�-^�S�\�W-^\r�\��\'\�\�\�{\�a�;Ju�tN��\�J��\��Ͻ-��\r�0��\�fC&\'\��\rM8\�V��p(Y6�\�)���\r\r�\�\�\��l^<\\\�\'\�^2\nv�?l�!-K`55 <�\���\�Ug��^�\�� �\Z�� \�\r/�B�ڷ ��FC#iς\�\�JO\�$2)Hq\�SP�>J�V�X�_c<�2\�\�\�/К[\�@���\�\�\�h_B9�\�d��\�(A$7\��T���:�OB�@�4@�t�D፿�\��B�#Y�:�\\k�j\�VLL�\�H���s�0�ާa\�wc\Z�,~�4���\�ܖ�\��4�d$\�(KΉ��G8\'�Қ;Ak��1q$,\�`��غ�I\n���)t�UZ=4�����ӗ/v\��:qey\�\�\�\�)/�d�\�F�\�\��\�\�\�Ƃ\'N\"�l�mǡm�����,�)\�f\�\�Mvg,d�\�(.\�&\�\��ix\���\���\�\�8ᚫm�ڄ\�ڄ�G���ة���\�\�Ѹ{����n\�\��\�\�\Z��Em>\�\�\�\�\\z\��\�\r\�i\�)6\�fަ\�fO��&]A�Z�՝\�當dA�4\�GX\�%\�K�G^C\�\�,�\��B/?\�\Z�-K\��X��=V�l�V_��/���1���\"_8�\�@9�I7M	\�\�\�\��\�+�KΒ\rp�Ne�&�\�\������~+�ZP	�p�;p�r�\�P>�?b=���v]\�\0�կe&SYkG-\�z����?�{��{�Qq\�\��Dǋ/ �RdT���\�>;2Z\�\�\�m\�\��\�u�:��x#--\�x\�r1�*��V:\�\��\�\�h6\�#�\�{;��M~\�4�\�9B\�u5n\�=S���u4̖��5�\�\��5VV����z`@\�\�ӭ\�މ�\Z�\�4]�0�\\NQ��\�\�+l�r\���ͬ\0��\�ʇ��O�6\�����^u!M�a8��\�u��Lr)\Z�\�Dw1�Y�?͟\�h�7�[��E�2��PSA��4��HHț�`3�\� L!%\�*�\��\�w�޳���\��!\�\�a\�w\��\��\��~2���xNE�!l\�\�\�\�\�,J�8\�\�\Z	\�\�M;�\Z�\�-UB\�S��}�![f:ɚ\�C=�\�\��l\�\����xge\�Ϗ\�.�M&<��E�5r�0\�*\'0�\��\����\��K}8}/�6\�\�\�xK\�qJ^\\<f\�x�\�����9:Mt^��&��\��\n\��^�]��#_�\��\�n\�9��BXu>�c�&\�Γ\����\�\�Q\�!S`�CC/\�N�gT��\�b\r�\�vx��d<���fz���d��a���zo\nj\�T\�	Kۉ�\�\�\���,�@\�����\�2p\�q\�I��w3�\�\'b\�\�7\�\�\�O�4_�%�b�\�C��	�\��t2K\�\�b9�\�j���\�욜Xmm��\"�2�:\��\�1c�|_+�=\�.�8p�¾�G�y\��NhTt�S!3\���R!��\�+^k\�l0\��8fm[������|x��g\�pS5���\��xu\�G�d�z!���\Z��h�Ŗ^\�rY�\�W��\��,�3w���>�����H��+Gzo|9[�\�(/�\�j�\�T\�\\\�\\�0\�\�Lcb\�Lre���\�e�*\�v�d*##�n��\�S@�\�tNr�5�7��4\�a��-ւb�Lp9��\��\���%\�5C]{H\�\�\�\��a�\��-!`;\�\�BF�f\�r�\"O\�߸�\�\�9b��\�*x�\�b	\�&%L\���\�FΗ\����^�(#\�dR\�\� �\�1	\�N��?N\"UX%V�#GQ�jj�\�؀0\�jh\�\��a���i�\�܈5�2\��S�R��I�H&S�\�\�\�p\\��_�o\"��\�\�vwX\�\�\"V\\�\n.6�\�rݣJ���\��?�P�\���\'T�\�\�T�O�\0\�\0�\r\nendstream\rendobj\r45 0 obj\r<</BBox[0.0 783.0 585.0 0.0]/Filter/FlateDecode/Length 81/Matrix[1.0 0.0 0.0 1.0 0.0 0.0]/Resources<</ExtGState<</GS0 130 0 R>>>>/Subtype/Form>>stream\r\nH�2P0\0BCo.=#S�r_�@{)p\�(�sU@\�X*�Y\���*$\�r�A�������BW0W @�\0�UJ\r\nendstream\rendobj\r46 0 obj\r<</Filter/FlateDecode/Length 285/Subtype/Type1C>>stream\r\nH�bd`ab`dd��v��p\��\�I,\�\�N\�u\�\�I�\���a�!\��C�G���a���6�~7\��n!��{�3##�Od~Q^����r\�/�,\�L\�(Q\�H\�T0200QH�T(\�ON-.V�,HUp\�/\�K)�\�Sp\�\�Q\0�-V(J-N-*KM\�\�w+2QHIMc\0F\�v�-\�?�t\��qz/\�=?X�0_���S\�O\Z\�\�H\�?�\�����5?Y���?�Y?g\���\��\�\�Բ\���h�3��Ǆ\�X�\Z�����h\�w��S\��Ν\��]�\�\n�w��	<<\�U�{yx{x�\0\0�\�l\�\r\nendstream\rendobj\r47 0 obj\r<</Filter/FlateDecode/Length 235>>stream\r\nH�\\�\�j\� \�\�>\�w�ƳeK ���i�\�$\Zcy���\��>�_�\�!��=G;b�\��q�{�.>�N��ܻv\�\�$\�	��\�:�92�����|�\�\�\�	ό�e�هN_\��|\�S��CZ�Ù���jVް\�\�H�\��\��<�l}wc�\�-�ل�T\ZTO��O�7j�\��\�Lu=y�\�fJVNz*ww\�	�Qxĳ{Δ�m�E�a|�\�\�RL@T=\�W�\0�q�\r\nendstream\rendobj\r48 0 obj\r<</Filter/FlateDecode/Length 614>>stream\r\nH�\\\�\�n\�0\�}�\�\�vQ\�\������(���\�\�y\0HiQH���\�\�\Z$\�1�\�\�D\�|�}\��\�d�\�م\���\���16�©볲2m\�L�\��ڜ�C�\�ͻ\�u\n\�m�d��\�œ\�i���U{9�\�,�1�a\���y��\�=�|�1\�9��)\�ri\�p��m?|ߟ�\�\�mO\�6�\�\�S\��u\��m��\�%1ͥ\r\�a߄qߟB�(\�cio�\�B\��w�v\�v86�c�(_\�\�E�*�1o\�,�k�߾\�u\\Wż�pm\��g�\�\�,\�\�\�\�\�5��9/\�/\�kf|_EK<\�LK<\�LG<dK����\�%r\�\\![f�L��\�\�i\�tZ8�2+2\�fK��ٮ�W\��[�-\�fK��\�\�\�\�tt\n��N�\�\�)p::NG��\�\�� \�)p::NG\�|��NG��\�سCώf�\�\�\�9zv��\r��\�\�\�\���{�~O�\�\�\�W�=�\n��\�\�\�\���{�=��~�\�\�\�\���xx$\�P�%\�P���A�%\�P�%\�Ph$\�P\�\��ߐ�CI:��Ce���~�_�5\�P�5\�P\�W��~�_\�W�5\�P\�W��~�_iV�kx��\�޺b\�\�\�2\�7֎y�^�ᬕ\��w��k\�5�e�k6|?0�\��)NP�9���q�#o��Ô\���9��\�`\�.<�\0�\�L�\r\nendstream\rendobj\r49 0 obj\r<</Filter/FlateDecode/Length 5739/Subtype/Type1C>>stream\r\nH�l�iTWǫh����n��\�y\��\r��FTdSl�L\�\Z1*\n�؀\r(J3E��qs�\�\����E4�\�\"\r4þ\�\�\�GD�QO�\�>�L�f>̹\�T\�S\��\��\�W\��H\�҂ IR��\�5����ڸ�8�\�&i�N~v\�f�\�o,9d\�\�\���7\�!\��a�ӥҽ\"$��c�3R��@�2J)��!_��++}��\�=~�\\��M�O�KM�Ge\�J�+\�2R��gy\�)K��\�\��@�V>쑧\'\�IH\�%l_�>-=%N�P9E)\�\�v\�!v�\"�t\"`�� �\"ł\�$�/	\�2A\\#��\�$ȣ<!\'��c�\���L����goq\�\�hq\�\�\�[��`�\���\�\�\�2ٲU�D��QQ\�N*�*�\�ҏ��V���]�}�7[\�X�\�X٬�\�\�\�\�ܰyh\�k�\�v\�n�\�	�b�1{{{��A�B��;��\�4888\�t�w�p\�\����\�q\�\�\�i��\�\�\�G�\�K�<�\�6gkgOg��ߝ�\�Z�\Z��5KT�k�z\�sɯ.g]z�m�f�\�_e��\'&�\�č�plXPMV��V�\�\��l2�,T\�s!�\� ּ\��nez7�\�p#Oh?d\�rt?UsG�G2ɡ��J7\�X\n[��\�\�G�*���}\�eVIۛKںi\�ߣ�|m��\�\�בm�\��G֪>��.�y�����pت\�3\�\�`\�Z�z�wĵ�t�\�w\�}z6���+a�J\�\��Ź�P]�E�Ȥ_=H*�O/>]\�\�af��\�d0�+Y��رa\�\�7��J٨�+\�e0�\�\�4j�g\�\�M$\�\�	w��\�\�\�Z�F�a	��^\��\\%7Z|�����\�X�#a7Z�\�a��n\"d\'[Iq�ͩ\�X����:�o������׋\rP{��_\�\� \�Y ���E�n�nv\��\�-�\�=�8\Z4\�\�W���b\Z/ܺ08�,�!�\��yA�Tl�/\07t�`�)\�d\�I+mI����U7ԷhW/^�\�C��&عA\��]���B�\�\�Cc�}�3�wNI�d_�\��\�Q��B�2\�\�;����+to?\�$\�\n ����\�\�a�H!Z\�m��4�\'�\��J<K�\�2�Î\�$x\�\nnL�c\�p��\�,\r(烌\'o\�Yz\�\�h)��ǋ��19�:\�U��GO\�p��Ճ�Vའ�\�:��Dədo�`\0\�����*\�\�/9N֑8\��o|�br_O.땴����Dg\�$O񔁂o\�\���:�\�,�&M-0\�\"�\�l\�_����ip�ۃ\�\�A\�\�4������@\�5,���pKϫqS\�\n��\�Â\��2��Y�\�\�j$�\�\r�ҬH�pl\�ױ�\�p\�\r��\�\�Z�e\rY\�E��	\�^���(``��%\�w��M\�\�m��c\�\�x�\�o\�\�{z=\�\�Ex�-F8k�Lrv54\�BQ����7�\�\�\�\�p��A�����m�;+;N��\�swoK\�nz�ݱx\�ZO���o�\�\�\���^\�ψ\�\�Њ\����7.��Y��po?ߒAم���_�/\�F̱|l�\�\��h��Ưl}U=\�ЍB��Gh(\�\�\�`\n�M\�7A\�$f\�\0W�FQSSJ\\k���6\�>X$+�A\�\�\��1[�N\�Y!4�*cB\�pXXXj�\�8�~W&e�4�\��\�\���W�e\�\�\��v_������k ��ln�\�f\\䫋F;�NV�\�\�[ݕI�����\�/������\�\�~-\�;y`\'�Ghl��78�oj\�9���\�:\�\�Qcw���h6�zc�;b\"�u\�\�Fv\n`���:\�TXQV��\"a�\�n\�\����bR�\r\�p�����Cu��\����e%��H��,\�\�׷4I��}�+۹�0��\��\�%Ҫ\nUo&R\��$\�_��\�\�G�.\��.�5$+�߭\�\�\�\�RiEȧ�\�W��\r�6\�o\�P\��\����HC/�ۤD̾�\�[Ñ��jy�Yp|zD2xD�Ͳ�3+V�}1I{�<\��\�_�p�,r��Gᕃ\�\���~8��0Ȯ�-y*�{k;��R�*\0)i�\"b\r\�mg�\�ip\�r\�pKtܞ\��ǧ\�N-ȁ\�rp/\'K!�\��O��\��}\�l\�}\�u\�v\�S#85	�\�g�U\�ˋ\�J��\�\����	\�r�\r\�\Z\�2ҏ\�]j\Z2\�z�\Z��\�5��X}��\�\�\�\�e�!�Z����0#\�sA�&\�x�\�\�{}���A��f�,D�)\ZS�i\�P)\"fUy��F[\�q5\Z	iaF�#\�\�*jT�F�\�\�3k_Mψ]�\��׬s\�\�g�o\�ogo�R�q	u�ؑ�g\�M\�0�\"�꼦-�n\� ��g߉6��b.C?\�<\�\�>ߟ,\�r��w�|��\�a6�\�E�\���]�\�K��I��C4�Ymۣ�㴾�(\�TT\�l\�\�ꐛ��5\�5�b\�݆�S׫�\�DS��\�͝\'�����0\�\�ux��_\�ٸF�\Z|V8dT�~V�����\��)8�k��W�\�\�5Utk�M\�fn\�۞�%gq�\�,\�\n7X��^��i�\�\�frR9�%71��,��\�b\�%R���c\�#\�kN(˯��\�h��\�Z֜[Ӫy\�\�\��^���_\�=�H\�\�k~�}�B�uW\�\�6�������g!�\�Y\�95,i����H�����O���|}B\�\�Bc��FB~�I\�j�\�f\�y\�g�\���h\�K\�y]x:�0�$\�\���N/8���h�������ar?��/ڻ���{ٝ�A\�%	}�F��Q\�g�\Z�=}��D��t2\�\�A7\�6�Ix�!}O�\�\�r\�Z\�w�1��\Z1���?\�g�\�v��ˌ\�8F��ۡ���JRYN\Z�\�\�3@S6Au2*QD��i�B�ٌa��\�M�>�\�z=�1�9X�\�.l	�\�1�A��\�]1�\�MMgm4o1�\����N�3�\rОfc\�2�b��\�ٺ*\Z\�h�&\�\�|}lR�o\����~\�c�N&����ߤ8�`[�uz���n\�,�Y�\�2͋V��A�ٓQ�r��T�D\�\�A+	�\��\��ž��$ح�p\���\�0�p!DQ)\�9:>��\��\�o�\�(�\�dug\�`#;f{\�LZ؛f�l7�Tŗ�a?ԏ+P�Z��\�\�P\"�<�\�iL�\��{#K,k�\�B���k�&\�(C�Dq�C+���F+oR1�y1j6�y�\��!\�N��\�}�BOt\�!�Gw\�r\��q$S^3i\�\�\�;w�1卽���<\n3\�#��/X�K롣�q�\'\�i(�9|\�=�w`l�]�e\�!f\�A�\�]]\�v�z-�C\r��\r�x�\�jqL/\�ZQ\�9\�����|��}_I�2��C<\� V]\��φ!V�t뱊\�$�\�8Pn���+�L��$\�fx\�E�@\0|\�J7T-J�.dq�Wu3�-�P\�$��\r�A[xBƉe�\�\�M���}�7�\�-�Z�?\�=�e�ىZT{�\�H��\�Ce��\�Y\�]��\�n�5w6Iq\�N?�g�p�}W�a눳\�\�lPʖ\�\"n3ZY\�c�?c����\'W��K�͌�(h\�n�	&\���he��@�`����!�u-\�W�e�fyֵL�MRY�lJ��{\�g�-�\�OS���\�D`)��&\�\�V�m\�\�\�`+�c+�>�\�#\�\�\�b��\�\"�;\�C2r�y%΁Jn>a�>�	�\����+������:�\'�/�k�\��\'�?\'lb�6T�*v�\�\�xB�\�?�je\�t��W�\�СT�#iN��\�\�\�׶^~�1\�d��\�S\�aPqȯq\'�gUn5@V,�VW7�\�\�\�FM�\���^+��ƐQ�X�.]\"9ǳ�O�ѣ\�\�ot\�|S<�����e\�񖞺\��R��\�n)8ҷ;\�|�R��+�\��P��\�\�̕�S%!!�\���V��{.Aq{\�d�\�1u�\�\���m�\�n��A\�S\�d�Z\��-kV/,>v%�U��F�h~,?\���\�\�Ԭ�0���H^,	^�5t\�UM3�`s\�nV\�:,O\�\��t~EJ��Gr\�=	\���*-ߝ�Y)�����av�8\�\rAQB\��\�6�|�Y�n�kj )M]\�ōeZ�\�\�q�\�\�lI\��4Ycє\�_6D�=J\�\�]e�\�pN�\Z�R:T+&Է\�0�\�^\�z�m��\�\�Oy?��E�X{��\�\� -�d�3EK�QK���$�a�\�_Ei��\�ˍ𨋇qAmh��\� \�JҎ\�	��@�\��\�/������>fS\�\�c���Eu*P�S\�Η��*����/ʥc�y;\�u���-�\�&&�˾މ�l\��\�j���\�mi\�&8mbT&�0��8\�tg�?�y\��\����k��ƠZF\�\�#̗Ov�H8�����\�\'-�D\����=c\�ܡ�3\�mI�\���^�ڣ���y�������\'\�\�\Z\���\�̭�n�q�\�Mg|U\�)Z�Q�*\�CqAPE���\�\'\�RQP����V����Je}\0\"�Й�@��h�6TMD\�\�G\��۴g�4j\�&M�\�޽��{\�\��\�;ag a,A�ܾ���R\�q텺�\��]Z\'\�r\'���$\�a1\\B��k\�\�b�j��(�\0:u��\�&m�Ʋ��\��}5򍅧\�\�y����NY�&--A!�_ZS3���.��S�umv��N\�8d�`=�\��[UM��\�~�T�H3e�S}\�R�6�(@\r~On��}bI��M6\�g�>h�G{��\�����<\�S1�\�e\�%ᇻuo�`\����\�X��\�8(J ��\�՗n\�kN\Z\�DZ\'�Kr/\�\�\0O\�	�TVZV6J?\�g\�H1�\�N?�FZ�hv )G\�n�5�^�\�H͊T3o\�\�R\r�\r_��B\�/O�yL5��\�Po\�M�:B�o�b��vp�-\�l�#�NW<x\\4g[=4;d0\"�zƀz,3�B�Q-�\�K�}:\�S��R\�p߁\�˽\',i�\�ֽi\�\�\�fD?\�{~CFL#�Ǵ`�\�y�kv �0&Oѩޛ�\�\�ɣ\�\�\0T\�w�*�f����}�\�C:_\�K��s�\�U\�\�r�&��\�F}F��\�l��lN�O3\�=��\�US~�E \��4�R<�5�)ث\�\����g�6먗U��2�Z\�\�>�++<zY>�\�`;\�\�\"�^z\�n�\�\�^g\�\�]#������X��o��\�\�\�ǌ¼E\��\�Luz-]�tVq)7�3��q\r�\�\�K�\�XF6F���\�sOB�g�\��/�N\�f�n��\r�!E_�a\�3�jE;Wː#��^m櫯\�\�䫝+vP����\�eܔ�\�\�\Z�3\�\�2�炶\�71J22QX\n/�\�$3�\�\�Uz맸3�R�h9\�\�8\�]�\�#g\�\�jZ���\�Zp�\�\�\�c\�Ue,3���p�]ݮ�\����b��t<d�pHd�ќΠ<\�@��a4�ѺPciSO�\�6�Z>��!O��\�5��H�\�\�Uqc�X�\�-��\�-^1W�:}�I!���Svaf�7�(}K4\����f�Hqa�(�\�aB\�-�E�l/�\n�a`yrU���\�d�Y�޼q�UT�\�D���,!�\�\�\�\�[���\�\�m\�2<ܱ�:�ˢ\�T&˓\�#7���/2\�E\�\�]\�\�\�\�\�\�G 0���?⸀-\�\�wJT���̬�-\�q�=)�;B�}u�\0��j\���kEz�Dd�\�M�IԺ�ύ:��\�m�$\\=���+�4X�d\�Mt={��K�T\0Fk�� �L֜��%��5�p���:y�~;b�\��Hk\'�YJ�[�hm�\�(���\�>\�YW{(�\�Wm5F?�M[ݧ�թ`-\�+�ڃ[^�HsM}�M|�a6\�1\�|{\�AQL\�i�\�BZ�qSJ\�\�)�V\�L>�\�P�[�\��I!��s\�q��Y\�C\�ʇ\�\�\�\�$,\�\�>*@$?\�j�<\��)�<��<�t�v��\�=��@{\�_�\��T\�\���\nVQ7𣛐DFR?��&B?\�	\�\�-Gx\ZN����\��{B�;\�\�$\ZK�\��4TlC�* \��I4�y��\�<\��{�1\�ŶUvR�C\�퐡��\"s�	xq\���\�+�o�r��\r�zO\�@\�\�W��L��졣�\��\�Xw��%²�mBY�M��Q��\�\�\"�*\���\0\�N \r\nendstream\rendobj\r50 0 obj\r<</Filter/FlateDecode/First 171/Length 2658/N 22/Type/ObjStm>>stream\r\nh\�\�Z\�r\�\�}��\��L�\�\��.0�Ɍd[q\Z\�I�$N��LBj��Iб��=�.H� @Qn2S�\�]\�ǹ\�{W1JdJh�E�����(2+�ɍȜЙ\n\"�\�x�\�A�\�3�*VG4΄�h�\�\�fA�\\	�\�(\�\�Y�p^+�[\�\�I\�\�]�\�+��C�(B�\�\�3�\�=1G�F�,�\�W_\��bU^ԋF��\�\�\�\��z1+\�ţ\�\��M#�.&��Z\\�7L饼���\��M�\�0%5zR�&\�궩�\"X��\�ո\\�i\�nK��h�ˍ\�j\�ܬ~�ѿ��\�\�!�\��\�o�bVM:\�нqh\��\�㠕\�B\�C��a\�\�WHV\�Fz΄\�6\�SܭC6�\�v\�[��.\�\�l5)\rv\�\�\�\����\�U�%\r\�l���\�bR\�\�rY\�S�����\\ֲ^�����\�Ͳ,\�U�^ʫ\�})W\��*ߗɝ\�E��E#\�\�c�T^\�o\�3��|.��/\�򥼔?ɟ\�/򟲐o\�DN%z�\��FVr&\�r!ky+�r%��\�\�\�򃼓o��|��?���<�\�Il\��\n�\�e<?�?���\�w@��4\�\���W��/.\��b��\�,�\�z+^�\�\�Y��2թf%�\�\�֢\�E1/�XH-ۆ�چ\\\��Y�\�\�F����b\�E�\��:�d�\�\�\�zV\n%/�r���a��;\�\�_\�mq1\�qxTG��Ū\�~\�\�3\���\�.��Y���\�S)\\�{h8�lm\�Co��\"\0��\\ݶL�>\n\��/�k� \r`nS=@V���b]j\"�\�\�<�`B;J�\�\�}\�A�D}|���\�3�ЄT\�`�EeT�ޣ\�\�\r\�.~\�r\"\�\0�\���ٮ�:��\��Q��T���8��\�\��(��$OT�g�� ;�!:��@TD\�\�t��(\'\�bʲ`{�!�:QV�\�5\�l.���Di\�1�C^J?`��?��>�0�޳y����^\\�p�\\ܔ�G\�b\��\0��^\�V\�A�9f\�v\�Ѓ2¨�\�t���/�2�;OFڿ6\��n[Sf 06-^�1E�/\"\��,�?(=�pBE\�a\�t�92E8�J\'�F��\�\"\'�¸��\�v(j�5�w�4��%�S��\�lI!y�0=\�4>\Z�J�+�$���vy\������pDR.��\�\�s�`�@f��cw�� ����\��|��\\\�J)��,�8�9u6<E\�\�ܥss�KH\\E\\�8,r_ĕh�\'� n;2^h\'�\�\���@�n+�~숤_[�4�g���RYW\�^I~�#�tsw{V\��ȷ[!E�\�V\�\�r1+���\�j��Hh��c\�װ\�\�ɮ���:r˨\�ʭ�\�a\�D��\�\�-\�\�=ie��\��&�\�q9[?\�\�\�i��\�賾_=�T�?�DY��\�\�S߳H�Le>���Z�\�w\�-��%�#�2.\�	�\n�4����]Y�m���\�~�z>/6j�1&�W\�JO\�\�媩� ��꿏���=���н�\����)\�\�\��+�\�Zu��g .�h�\�!R#͈��\�\�^\��\�\�^\� ^�|�q\�\�#�\��E\0><0\"�}%��i$�X�+2�\')=M\�\�G�r\n^\�=��&UH,�Y\�,Xs�Z�=����o�\\\�}�7�%v�զ�Ր�\n�\�<���\�\�͊�\�\�b0���ݶ��Ϧ�\�w\�o�����\���\��\�\�^\��gAr\�\�l3.�\�\�˰�j\�\�G\�\�\'\�\�\�p1)\�N\�nj\��l\�\��\�\�\�\�d��\�k?<\�C��\�\�@n?]8�&���#����LL�\�ľ1IUا#�M9:\�\�+�.�\�ã\�h\�\�\r�\�(\�a��]JV�\�m�GRR��(O��C]\��2�#O�C�bif�\�xFRc\�;U����Y\�>�(LI��t+\�t��\�9`�lF�鞍#��Rz�Wm}+\��\�\�=�k\�y\'�\�6\�\��ܢ\�\"\��\�LI\�\��N\�=�|�`,f��Ny��h���\�)|�w�iT��\�\�=\�|x\n�W��@j��\�ig�C\�#+8\�\�\�\�F�m�\�A�Y\�Ք\"\�\��rFY0���wr����4bx!\�9\�=Ga(��,`��\�Ҏ\���T\��\��C����r;\n��K�r�\�\�\�+O\r4����\���8I[��S26��_-�\���\�uB~�d/:Sc\�\�zQ)u�\�\�l\'����ҬP\�\�Zs<��\�t$���W���SS\�}\�]�[Ctl\�7g܏\�\�(�a�S\�bR/ˎ��_N\�o�X�<?�\��t~���\�\��%�*SZ�rηI}{�ʟ�u��m��,�`/�C\�!&���j�χ�x�:�/?�&<����\�\�\�˳\�����t:8\">�\�{˾���\�fp�\�&K��3�9�ȕ��e�OF���\'\���*&�O��E~��\�A:\�s�X�ͤWF�/{]\�#�u\Z��6\��\�q�uj\�G?k�:.�N`��c\�\�;\�G<�qc�\�tuf�6�����\�\�(�Z���ǎ��5\�p�\�\��\�f�\�w?�\�\�#A;	rD0�\�iUǖ\��b�vt�b\�U<I�m���kO\�\�\�,+)0\��\�@\�ER`�U`nP����~\��H\��UX\�z\�K�\�w�ψY}ٶm��X%mԗn՗۪���Lwm>��\�I\�\��<�9ٓ����j\�#	��iV:�\�4\�\�dD\�9�\��1m9S��\�t.DfB�?�#bbz��I�����)���\�9\�K�5��`��_\�F@\�\�B\�0��\�SF�M\�\�\�tI�]6� y��\�A:����t�ې�\09~��K)h�A\�9\�L�hC��`��9\r\�۴5���N]S\Z\�\�\�\\LA\�\�M\���`6lH_�N\0\�\0q\�/f\r\nendstream\rendobj\r51 0 obj\r<</Length 3179/Subtype/XML/Type/Metadata>>stream\r\n<?xpacket begin=\"﻿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?>\n<x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 5.4-c005 78.147326, 2012/08/23-13:03:03        \">\n   <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">\n      <rdf:Description rdf:about=\"\"\n            xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\"\n            xmlns:dc=\"http://purl.org/dc/elements/1.1/\"\n            xmlns:xmpMM=\"http://ns.adobe.com/xap/1.0/mm/\"\n            xmlns:pdf=\"http://ns.adobe.com/pdf/1.3/\">\n         <xmp:ModifyDate>2013-12-12T10:41:22-05:00</xmp:ModifyDate>\n         <xmp:CreateDate>2013-12-12T10:41:15-05:00</xmp:CreateDate>\n         <xmp:MetadataDate>2013-12-12T10:41:22-05:00</xmp:MetadataDate>\n         <xmp:CreatorTool>Adobe InDesign CS6 (Macintosh)</xmp:CreatorTool>\n         <dc:format>application/pdf</dc:format>\n         <xmpMM:DocumentID>uuid:d94e741d-9758-4579-b1ac-2a652ed29cfe</xmpMM:DocumentID>\n         <xmpMM:InstanceID>uuid:9ac83013-6b45-4bf4-9c1f-3a32a2092216</xmpMM:InstanceID>\n         <pdf:Producer>Adobe PDF Library 10.0.1</pdf:Producer>\n      </rdf:Description>\n   </rdf:RDF>\n</x:xmpmeta>\n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                           \n<?xpacket end=\"w\"?>\r\nendstream\rendobj\r52 0 obj\r<</Filter/FlateDecode/First 6/Length 75/N 1/Type/ObjStm>>stream\r\nh\�240T0P��\�w\�/\�+Q�\��\�L)�640�)BHe�\���D\�ʳS\�`%��!����\�\�vv\0\05�K\r\nendstream\rendobj\r53 0 obj\r<</Filter/FlateDecode/First 6/Length 133/N 1/Type/ObjStm>>stream\r\nh\�240R0P��\�w.JM,\�\�\�sI,I\�p�220464BCCS]SuuM���\"\rǔ��T\�<�\�\�\��<\�`3�\r\�\�\�̼��\�MM}\��,F��\n(\�O)MN��\�\�\���T�XT�`h�g�g�ig`\0�\�,\r\nendstream\rendobj\r54 0 obj\r<</DecodeParms<</Columns 5/Predictor 12>>/Filter/FlateDecode/ID[<0565BD43540AE847BB0B61F5A4179D99><F03BA8BF399B8044B98F9592C86CF3C0>]/Info 102 0 R/Length 232/Root 104 0 R/Size 103/Type/XRef/W[1 3 1]>>stream\r\nhެ�?a\0\�\��\�p�\��9)�d3)\�\"F\�B�l\��v6_�@�ɢ�,b`��6f\�y7X�~==��\�};E\�Q�8��\�L@\�v(��܂\�;X,�\�	\�j|;\0C;.As\nzu6:\���\Z�O�_�	.G{l\�8=�g\�<%\��d��n\�	�ɱ��#0f\�\�1�m�΁\�\�晹	�4=ll\�<\�\\[�Ɔ\�3:\�>\�*!�I\�\�\\\�\�\�w\��\0u�i���_�\\A)\�\0\�;$\r\nendstream\rendobj\rstartxref\r\n116\r\n%%EOF\r\n','2014-cacm-unikernels',NULL,'2017-08-12 22:30:58','pdf',NULL,'upload/files/20170812223058bORBmhx9.pdf','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20170812223058bORBmhx9.swf',NULL,NULL,NULL),('ff8081815dd6d4bf015dd6db3ba80008','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0�\0\0\02\0\0\0\'nD\0\0\0sRGB\0�\�\�\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0\�\0\0\�\�o�d\0\0)#IDATx^흇�#��_^��RQ\"\�c㸀\���$\�h\�.�\��i\�\�TK\����>g|<�|��\��?�\�\���\�\�>�����z\�\����n����1�W��G<����\�����H\�-���\�i���d#�5�{}��{}>\�5\���J��h�\'�8���\�\�\�R ;;k\�\��%�_������\\���᎟Ɵ�)B�e��>	e\'8\'�\�\�\�:�~\�&5�,����\�9r\�\�\"\�\�=޲�4\�O�͒=k\�e\Zm�lА�� �˕�	\\\�Hs�i\�ITz�<n�\�\"~�\�)V�R��k�\�\�bq\�\�Ġ��U|\�+\�r�~e^kC-�źaV<���*���\�m\�_C\�P\�\�5�-�\�����u��N(�%x\�s�3\�aa�=]\��6zX����\�w\�bm2��e�N�\�\�\Z��u�\�bŷ\�\�\�j����.ֲص�\�\\\�\�\� dۅ�^\�Z+\�tm�2�+n6n��c(�J�@�\�u�Np�%��\�S�X̵�y/���6����%<*P�?�1ٻ\�݋��\�l.\�ޓMq����\�YC\�U\�ȧ�8���\�vg#�A�\�\�&4�\�5\����\�9�}7\�A\\�9X�6ޏs�D��r01�5i\��ona\�`\�B�Ix6��\"D>�5ꡱ0�1\�l\�!�_�\���ͅ � �{�77�_l� ���G>�	� �o��jό����6~���cO\"����˿\�\��F}<��\�}t.>�\ZAA?\��eЁ\�;\�||���\�R�N}�\�|S]\�o�7\�\�=�\�9\��P�%��\�e\�O�\�\�|\���\�\�Gq�\�(x<�\�\�\�\�>� � ��o\�;�\��:H\��_����\�BtmF�C=<\�\�O�\�\�8��ⰺw8��O\0��z\�\�c:��6\��J\��2� � ~-��\�8~�\�a\�MK��t:��r�t�|>�C\��,\�a\��2�\���|(�v\0\�C�^���/Smɲ\�qq�� � �\nl�\��Ӯ;�6\�q�̇�\�PF��ᰈ�X�E=�\��ŲRx�\"6�����]/1V�aӞj�\Z\���lY\�5O6\�!��n��=����#?ǡOc���\� \�!��\���\�\�7c�\�\�?%\�\�}d�~r݌�\�\�ϣ�0\��rpJ���xl:\�O�6��\�\�ޠ\�r�F2_>X&\�vh{�>^�\�\�i\�\�\���~\�ڑ\�ے^\�\�\�\r�̻�q%\�\�\�c?eיއ�g\'7\�\�o[�wR}x\�\r$ٺ\���\�_͕�Y\�\�\�/��\��8:\�\�s֟�ǣ\��`Hs�9�3��\�f~\�\rl���\�`�\�\n��\�\�\�(s}\�:\�e�\\��:��>E,	��4�١\r�����\�!\��`\�pHr�6>�����\�}T�\�w,=N\�\�k<�\�GV\�\�f\\l�/\�Pg\�䆺���0vh��[�7\�GA�˸\�8X�W����o`�W��\�\�dc\�z�b2�\�_�\�wbn\��#\�֧oĮe\�@1a���/�\�ō��A\��7>gl�b5Qߠ�2#;�1\�Ը�Ԋ�1�\����\\�@�/j\�창�/W\�\�ٜ9;�ru�l���\�]�{�\�-s��\����\���׆\\[\�\��V���\�:y\�f%\������S\�F�\Z\�m\�\��\0O2	D\n4�\�pB�\�9�z�\�u9OK Ky\��\��to@�o&\�\r��\�A\�Se�\�I_\��#\�\�݌�<\�k\�\�6[\�2\�\�m��n\�\�\�k�[\�\�J\'/��},\�d/O֯\�\�rlh�\�o��\�pǗY\�\�q`6�\�D\\\�\�N��\���\�Ԡ���C���\��\�S\0\�d��!�ub9�>���9\�\�|\�>st\"g�5\�\�1>��}ev�p����\�\�X�\Z�:~4\�7\�_\�\����\��O�^�\��\�\��9�OO1\r \�\�U�R\"�\�u����V�\�&�\�|\�d�	Mr��\�xbi�i�X�A\�71\Z�?���nהk�\�\�\�v<�;����i}C�\\����>�\�@�!b\�\�.\�\���2\�\�\�;\�\�7�\�/�_�P��\ZǙ�d_�>����O�ɺS;ū\�\�۫\�{Ȟf�^+�m�mЮI�=|\���\�s�yX9�+����\�^��X(\�>\�_�i���2q���]\�Y��m O�5�Q6\�\'k+	�/\�}#ۅ�u\�\�\�\�\�h\�:F\���}\0h\�L�\�\�6��rd�Z\�f�G�\�Hߊι���G\�/�9	\�\�B2��R\�zlǏ�C^K\�e��&���Ǹ�P�+ȾS�H��\�\�؜{�y�~\���)�Jے-��E_\�$w�\�\��h�)�\�\�\�|�\���\�.�����\�%��i��3?�b\�\��Y�m� @Ͳ�����\�9��AC�	:�G�NO�lr:;Y\'\'�\�Fw.�\�$	-~��x\�\n�H\n�9\���e.\�V��pz�,s��]�\�\�M\�Rק�H�?�&�}\�\�\�\� \�v�q\�>I�6G��F�{2\�⏮բ!���[�\�\�\�`\�Vdч�?>@�K>�_�_؈�\�T���={|��Ř*��]���5?\�\�\�i@�a=�-\�xȱ\��ޏ\Zǲ?��ҏ\�:R�\�+�C~�}�l®�\�\�\�\��yk*ي.V\�\�$xl\�\�#�k�	E\�;�\�lm;\�\�A��+MΩ\�g�C\�\r�\�\�W�\�\�1�Xɟ\�\Zcj�yƏ�\�L��Ԛ\��Sƫ9R[[��\�z\�ě\�CĮ�\n\����P\�_}\"mL}��ߨg�i����\�G\�\�mA�4{��!�5Ǝ_?\'8cYw\�cq͓]��=.�<w?��<�0\�\�)\�����1\��\�x\�\�\�l\�\��\r\�vU���\�\�,��8��\n9\�k\�\�\�X��~u�\�P\�\�b:Њ\�\�\\�@���n\�f\�Z\�-\�w8�\�\�\�f�\�z3�\��75��������1��ރe��m\�d�uy\�E\�\�U\�uP�\�X鲑/���p\��\�Vf��p�4�f7GFf�\�\�&�l\�s����$�\�?\r���\�.�!b?t�|Y�U\�WrLl�\�\�z�\�\�1���m�Y\�}\�x�/`����5�K\�]\�\'�\'ut\�#}T?\��)t�&��v\�y\�\�z�c��Ư\�1�Xɏ�9y\��\'�\'m0c;~P��\�a��cr�\�m�+Ó�e���H{�y.�\�B:�>\�\��\�ؖۄp�`�ѯ\�l�g����\�\�9�%�,\�g�Dm\�G\�g�C\�\��\�\�\�:�؇&\�?Ew�Um9\�\�W��\�Op\�x����\�̉$R�-���CMz��i3X�\"M2��\�+} �x\�zT;���[\�\�\\����L�4R_���g����dL���ʁ�e���|��?)\�(3nL�y��y���\�Yxc�z�)�m�\�9��\��Y\���Ob\�=\�[�\�s˹�\�ȶ\�cK$?�\�<~��8����5}LRđc�J\�	?�\���\��&\�b|5���Kͫe��\�~\0�\�ϣ�f��N6��&כ��|Nm�7ڐI�+Y���2v|\�2�\\4 }v\��1��gx��k0�v���]~�\�~|6\�g\�O?\�\��\�5������m��\������8^ķ\�$N=9g�k\�\�\�֤�e\�M`�7��5$�o��Ɯ\�q��\�̿=\�\ZH�U�	��8T\\��)�P2x\�\\t#\�\������\�\���\��$�>#�G6;�\�r\�i\��i�\�K<)\�\�,\��:%}�#�\�?\�\���m\Z��x��Qh�|1\�p�_.�JFT,�\�\�Yc��Ү<�hש\�x= ���\�\�K���\�\Z[z\�6u�}M}v}	u\�(��|���5\�\\n\�zkl\���_�5Ղ2�}��m�\�Ŕ׾\�\�~V.\�7\�~\\\����\�\�\�\�-�V�5\�\��\0\�\�O$�]g}\��ݪ�\0\�Zw�g�/&�N۶M\�\�\�m��w\�\�\�\����\�\�u�\����\�\�\���\�9��:\�A��ᢜg\��U\�;gn\�+�\�\�0�\�n4%5p0%\Z\�W\�\�;ŏ7�!��v��If�8f;�I�\'V6�qc�\\\�i}^�lt�Cq\��\�s\�X�x\�z\�1�m�7��L����9\�\��ñ\�+����\�hv\�6�F�\�b\�\�a\�&\�]�X��/\�\�\n\�kmX`��\��k���\�$�\�ǟ�\�\�>_c\�j\�}{NԱzM+\��\�\�ͷQw\Z�\�\n\�\�u\�\'�����k�l�\�����g_3N�lm�\��\'�\�\'\��!fy��ZV�[{\�\�\�n��\�nbAa׬�䰹Suo:\�ʏ\�i%�\�e}3ښdb\��+�Y���1ԮA�,��|+qg\�1\�g%�WmxM~�\�\�䡶!�7��Z\�\�\\�G\�ϳGf7��\\p-w�\\͞�EL��9\�|��k�W(ǫ\�|t\�L^��\�F-\�^B\�\rC���E\�൯�1��J�-����\�\�qZ���H��Q��\��sy��(yu��\'�\�\'�5�\�WO\�\�v\�Sf�i+ۉ����lpN`c\�ؚu0��\r\�\�B�f^\�\�\�6\�mE��=�m\��:�\�`�d\�چ�g��x��2\�fV�t�\�[��lJ\�\�~��!\�zB^�C1\�\�\�\�N�?�r.k��P\�\�\�\0y�cׂ\��ڌuw\�6\�z2x^kC��%���\�X\�v@>b�lV��F���&\�%\\3iM�W�\�|\�J^�ɟ��t��˙�AqX��i\�u\�\�6FL}ْg+� =m��^\�Q>��Wˬ�;���U�\�ծۿ+\�\�܂\�?���͕��|⺌�C�\�jK\���d��qN@&�\�\�o��\�uH\�ͫEC���/l���r.�\�n�\�\�5Z{�\�1O�����@�	.7\���\�\n4��u���\�V�uk=@b.nǛ�.~2R�W\�%Y\�M\�%Ŗz}S0�\�m9<\�9,N�q`QC\�t ����\�F�V\"~\�u\�\��\�=\�=D�7�_�\Z��\�}�\�?j\�_խ�\�6\�%�\�\r\�x\�*��\�\�9�LƗ��l~`�\�9zE��-7B�)labv����\�&\�7BA\�7,�M�t߀�M\������\�~?���@\0� n=\���7T� ~�i���?>�E����c��|\�\��}~�7���˨\�\"{��\�\r\�\�1�Q�O�-|�X�Ͳ\�S\� � � �q�\�/�ޡ\�\�ô׏q*\�\�\�}\�xg�7\�\���\�9��\�9h�\\Ȓ��mx7(�z\�����Co<J��Z\�lAA�ہ�7��.SV	��+�\�zg7\���D0�g�Ή�\�\�!�{�3����g�>�\�?�{��AB\�\�8XAA��6~\�C:l�\�`	��N@�A�T.��\�\�p(<\�Ճe=\�\r?Ƴ�e�|(�v\0\�C�^���/Smɲ\�qq�� � �\nl�\��Ӯ;�6\�q�̇�\�PF��ᰈ�X�E=�\��ŲRx�\"N�z\�x�����\��x��\���T\�װ��d\�:�y�Y��u�|\�\�w�܏� ��9}\Z\�H=�=\�\0y������ �ƻr3~	��<\�	�m/�t0{ُǦ�\��tpks\�;l\�\�\"��õ[��ǳڞ��ןڽ\�Ӵ\�9��e����#��%��ݗ7;e\�훢$��x\�\�\�\�:\��\���\�\�\�\r<�\�߶~\���\�M�l]u�\�\�p%~V��z\��\�\�h\�\�8\�s��\�<\�\�C�\�\�\����h�6�o�Y�\��h�@�H���]�z��5g\�\��\��\�x\ZN(��цU\�\�\���d�f8$�L�\�\�F��\�}T�\�w,=NF����Ȫ]\�ڌ�%�\�#\�l�\�Pw6\�v�b���n}^�ay�\�2n6�C����\�\�\�\�\�\�\�\'�6\�X�7lR�y=�\�ܾsc\���>}#v-k�	믝|\�P/n��\r\Z\�\�?ck�����\�э1�\�\�V��	-��\�\'\�5\0�|Q[f7���r���͙�\�*Wǟ�\�\�iJ\�5��\�2���\��%\�ͩ\�e\�\����k{Y\�E1�\�ܜ-ד\\$㕜��O�LN*ҢHqB�׶X\�u9�\�\�\�I\�\�ӽ�n����q\�x\�T\�\�u\���Hz��\�];���b�؎H��n\�\�\�k�[\�\�J\'/��}�)\'{y�^��\�%ǆ֩\��6\�8w|y�ż\�F�e;;\�\�~jy��55(~p\�,\�a����7\�>o��a�XN�\�$�l\�����!�\�\��șm�ss� \�l_ٸ�Z\�\�\�w�{�Y?���9u��\�P�Z�Q�\�\�!��r\�j�\��A4`\�)�E���\�p(�K��\�\"��\�\0>f�	T�\�M�\�Js\��\�\�\�\�61.\�\�\�ـ��qu\�k\�5V��u����L^Kɴ\�T�\�6��\�ǟ(6D\�\0���q�\�\���2ݨxs\��\�y�\��\�\��%n�J|�\�L\\��^�O\�O\�\'\�dݩ�\�U��\�U\�=dO3F��Ѷ\�6hפ\r\��o{\���\�<,��G��\�~Wڏa/~z,��K\�ִ�NX��\�`�.\�\�\�6��Ú\�(�򓵕Η龑\�B\�:o\�csn�a�uG��\�>\0�q&\��b�IyG9�]�l�h�\�Hߊι���G\�/�9	\�\�B2��R\�zlǏ�C^K\�e��&���Ǹ�P�+ȾS�H��\�V\�5��\��26^毴-]S���s�R~Xhݫ�M�b�1\�E���\�\����=��F��\�\���>\�\� �!�\�,�%]���N��dԶ�\�T�9�\��\�\�kW��ɜ����2\�\�S7r=���o�r\�f3(7!lo�Om�\�\�\r%����\�A2~4�\�\'\�\�\�P�\�\�\�8�?�V���\���!y\�xn37)��nE�?\�x\�\\\�M���\�/l\���6\"�׳g�OվSeն˾�q�\�\'\�=9\r\�7���\�9V=\���C\�Xv\�\�^��\\VG�\�Pz\�u\�O�o�M\�ؙ��6oM%[\�\�ʻ�ρ\�\�|\�~M5�\�b}\'כ�m\�\�8;�q�\�\�9\��r������*��<\�u\0+��\\cL�>\���Op�IߔZs:~\�x5Gjk\�\�u[�x�y�ؕ_�}־<�k�K���7\�}\��T���qVo�\�\�\�c�K6\��^\�K?nq�~�c��\�\�\�د?^\�\�o6��hV����$�\�A\�\�k\�pR.�M�:\n�aP!Vԍ`�q�|�D}I�j�g+�t\�;\��r\�j��\�#7)\��75��������1��ރe��mϔM����KX�*�\�,8V�l\�\�f\�\�eṭ\�`#D\�l#72[�My�[Ȍl\�s����$�\�?\r���\�.�!b?t�|Y�U\�WrLl�\�\�z�\�\�1���m�Y\�}\�x�/`����5�K\�]\�\'�\'ut\�#}T?\��)t�&��v\�y\�\�z�c��Ư\�1�Xɏ�9y\��\'�\'m0c;~P��\�a��cr�\�m�+Ó�e���t{o\�a\�?\�ק\�\�\\��k��u���\�&���m�o�{d�9w�\�\\\�q.p���[|9�� IY�\'J+d�\�2ɩH\�\�M���\�N�#�SR냕>U\�;�;T;���[,\���_��\n�ԗ7X��߉\�\�m\�\�zL\������\�C>[ş�s�\�\�\�\�\�\�덗lo<|3`�:SL\�Mh\�p\�\�gu��>�Q�,o�+\�-\�B�; ۲_�-��\�\'���~\��J�\�\��1IG�*=\'�����k㛬��\�\�fr.5�b��\��X>?�\�\�W�:\�\�ƛ\\o�6�9�]�I�Ŀ�E\�:\�!c\��-3\�E\�w`W~	3��Ǚ��o\�\�*\�\�u\�\�\�Ƿ`S~��4�\�[2m\�oej[�\�\�\'X\�\�c\��x\�y!g^-X\�˔�8�\�/n�\�\�xۊ� �y�\�Cp��n\n���$�\�A\�\�w\�&N72{�s	���\�\���\��$�>#�w��-G��> �&[�ē\�}]���lA�\�\�\�\�Hk�8c9�=e�\�\�o�\�6n��|�7;�,\�6Bt�2\�\�\�/\�\�s�v�ڎ\�����\��\�;���\'�aS\�\�\�\�gחP��\�\�7\�9YS\�\�Ƭ�\�f|\��eYS-(�\�ת\�\�z^Ly\�[L\�g\�b}�\�\��|Zh\�n}\�\�k%?�iP#ܾ�>��Dr(\�u\�w\�߭Z���u7\�Ќ-;l\�oe:\�d��\�\�>c[�\�59\�=\�\�\�\�\��.\�_\�6\�\�\�}\��\n�o66r\"�\�l\'$>P)q\�X��\�^w6ť\�v\�`\��L�}\�\�9�X\�\���!�\�\��\�\�@�97]\�<W�%�7��\�\�VzS�\�\�\�ƿ�sֳ7$�c?�W��=�\�\�o\Z�H�Y�\�y;,�c]�X��/\�\�\n\�kmX`��\��k�\�٦�\r\�k�\�OI�e�/��v�rɾ=\'\�X�&���N|ns\�\�ۨ;�\�v�c\�\�\�\�\�P\�5{6\��z�\�\����\'^��6\�rU�Z�\�i��<@}-+�����\�\�q7\�Om7���k\�xr\�ܩ�7�v\�G�\�e\�U�ek\�\�h�Rṗ�g4�\�F;d\�!\�l\�yd��9��\�\�*���\�<\�s\�\���(\�ˏ\�#~��Q���^��E�%�׾�\�\�b\�#І�\���E��s\�8-\�\�W��Q�RXe�)\��b;Q��m\0\�z�{}RY7o�\�\�3�]��eZ\�\�\�vbl\�J68\'�1\�l\�:�~͆bc$X3/�\�sd\�\"\�\�ݶ\�{�u�Y�gmC��L~<Z}k3�C�\�\�-�D6%l�q�Y�u=!�ơjvhr\'�F9���\��m��H�Gy�cׂ\��ڌuw\�6\�z2x^kC��%���\�X\�v@>b�lV��F���&\�%\\3iM�W�\�|\�J^�ɟ��t��˙�AqX��i\�u\�\�6FL}ْg+���9��\��\�\�2TGQ�\�\�\�&�\�m]h��mA��q.VOWGo6�_O������\���-�^/�]e<$W�<`\�&9IP\�PR:E\'(`%��\�S���ۯ%���T\\ہ����\nT\��\�Rl�\�7E\�\�\��ږó�\�\�܌\�8���U\�t ��\�l����\�p\��7��\�\r{\�{���w��� �R`\��8K\�x\�*��\�\�9�LƗ�8{˷Rd�\�rq#�x��\\؁�,+d��	�\�ЍlJ� ���g���� ��\� �[@O�c\�\r� ��Ok\�\�\�\�\�6~�q�\�O\"��\�&\�S��N��g\�oy�AA�`\�AO3�\�\�Ǉi��}�\��n\�{>vw�p�x\�_��x�F\�\�\�.�\���|\0\�\�c�\�|��l�d��}=�Mg\��\�Q\��x:�\�\�\���\�kq�� � �l�\�з\�\�Gh�7 �L���Y\�;�\�H�\�\�F�V\�7�l\�c�/h<�2�\�\�C̩�GI�\�\�+�]���\��0�Q�L�п�\�^Wf�\� � � �\��e�Qk\��\��k>�>��\���r�n>z6۶\�pX<z�a��H��?~B�\�AAAp3���\�i\�q\�\�\�;��\�<�����i��5�^\�G6,W6ɲO񊬗�h\�\�ԟ���>��m���x�Cxk\�\��9\�\�\�~��\�Q/\�M�\��+�u]0�\�\'\�\�\�7��	�o\��\�8�\"��2����{��\�\�\�\�p�͆)^�/��\�t��?��L\�pv���\�Ԓ�J\�g:\�\�\0��\�\�+d���\�c�y�n\�Z������G�\�{b�����h�\�\�\�ˇMχ$\�g:���\��2\��\�8\�c/����\�<X�mo^ԏ\��]Ս7p�f��\��\�{\�\�\�^Y���\��\�oxo^�+\�]\�#�`~\���P�\�̗,ͽ\�\�|�7fs=ߚ\�&=\�Ϲ�\�?P\�`\�i�f%�<����æ�)\�5%�\�\r�\�\���?pc�\���Ek�\�0\"u�|xz=\�\�`?4��?�2؅\�VB��l\�b$��$YN,u\�\�5�\r�\�\��\�n\�C�\�\�\�	9\�)\�\�_\�H����b\�P|��ڍ`!\�Ε�RN\�b?�7c��m�?w\�;ask?z-\�Cu\�\��3\��W7��s5%\�\�\�|R֦��P�\r^���p���\�\��J�����\\��\��vϱw\�\��.\���ԽVJ�9�\'\�Z%jI�ogb�׸�#��9rn\\\��[\��\'��\'\�\07-r�p;\�4�.\�q7����<�L��i,�#���U�\���5��y\\M�W:���E^N���&?rKsI��\�P�yv<�\�=���9W\�h�X���\�$�\�� W���\�BAk�\�M�\�LڲƎo��U_\�\�E��0�(P��C�=u�%׉\�\�\�Ց\�]\���`k>�v\�\�o\�5��p�g&V8_9f5tv�p����\�k6=�\�%�:�g\�W���\�=}���\�u7\� \��So�\�7Ԑ\�l<\�4�8����Td���|�h�@z��\��n>:(��S�\��N2\n�\�Nyl��#,�\�\rc����W=�\�C/a\�\�n\�\�Y/��Q\�&?�b��g\�4n���a7\�\�Ƨ�\�g/�\�Xb\�r����\�Ϩ���~3���\�ґO����\r���`\��bSB\��;�M�aY\�K��u�\�m2v_[y\�뺆�A���\�\����}�\��Hy�2��#�\"\�	\�i\��J�r�\�Y�\�S�>>����.X[\�7��\�|\��	\�f�CH?3\�Wn�{\��\r^{\\�\�P\�\��98D��`\�_\�\�p\�>g�\�[�c����\n\�ge+�Bs�.f��N\�\�\�L�燌�\�l]�\����m�\�b�\��\��r��kB��\�&u��9�qbR���c�,\�>>\�&r�j��\�Lm\�zf�\�Z\�r�k�<2qFr���x���4�8\�]\'�\��\�6����*��^r\�ʾg!_\�<>���l�\�J6�K^\�i�Yf\�\�3\�\�w�,��]�F~��YAשd46�NbꯒB��\0!gs�K��]�\�\�\\�cJ\�oB ��nd����\�B�{?P��I\�SpɃ\�8Ԉ\��Z\�e�X�&��v\�\'\�\0�\� \�˛\�8�\�.\�I}\�v�\�\���e��\\�-چC�\Z�\Z+�8�M\�PZ[ɗ�:o6E#]�?�Aؽ�Im\���\Zټ\�km�\�y\���r\�:\�aڶ���\�M�c��\�e\��,��I�Z�s\�b��d\�vsh\�\�Zl!uo��k�~����\�׵N9\�u\�:�+\�`#\��\�*s�:U~\�\�HN\�\��׉�]h��\�L��\�\�ʟ`\�98>�=\Z(\0`\�\\~a�Ҟc\�X\�1�q&Ǖ�O\�O��ϑ\�\��H7(\�$n\Z\��k�\����\\d ԓ��k�\r��\�,~��lW ��?\�\�\�\�.h,�S�����=!?�W^Kc�L<�\��V�S�|�<Wb*�E~�k�ϓ\�\��3UNtM\���\�\�/�-\����\��g\�J��س\0\0\0\0IEND�B`�','95926933',NULL,'2017-08-12 22:31:18','jpg',NULL,'upload/files/20170812223118YzU26Fxs.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20170812223118YzU26Fxs.swf',NULL,NULL,NULL);
INSERT INTO `t_s_attachment` VALUES ('ff8081815ddb071f015ddb3430c50006','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\�\0\0w\0\0\0~\r��\0\0\0sRGB\0�\�\�\0\0\0PLTE\0\0\0\0�\06CD�\0\0\Z�IDATx\�\�]]l#\�u�3�/74ugV5\�z��3;�\��(hD�\�Y\�(1/�MQ��\�\0���R\�匽�D�M����<�-��O%�\�j\�k7(�<e\�ݗ\"\�\"����\�;���\��Pv\�\�+\��t\�̽\�|\�|s�PHݟ����N\"2\'�=�\�H`)\�����\�\�p\�h��\�(Ɉ�\�]D.�F	aZ`a-�Zͩ\�f�F\�\�5��\� Y\�j��r�\�L\n.�\�>��[�\�z%Ӂ) �v[>�BhޕM�\Z\�\�6�&ѼO1qg,O6�Pz\�[�Qڰ%�&�\�ȦSEȓ\�\�\���*�ʌ\�\�:K�\�\�s�7�E\�\��\���AP$��\�\�W�ml_f�S��86\�\�y4M�²�T$�B�`�H\'\n�uUv%xg^\'[�N�(�\"2�\r\��]�҈\�\�̥Y�/\�%\�gh\�u\�\ZA�m\�K�8�\�\�5�\�Mɾ \��үA\"s�靫�\��ˑo���ȟ�>z\�~s\�%�\�P�~�Z�oj� �\�3����jI�7n�����`\�o��*ƝCĦ\�\�ثYX&He���w��]y\�#=]\"Y]5�J\����*Ǟ\�?�^�)L\�S��܋\n5\�T\r\�\�,]5\�TF\�\�0#�-� _ey�c�<\"��r\��u>n�\"\�d\�p��2B\�sN\�`\�ms^���lB�E��_sn�\�\����Itۓ��P�=+\�mø-	\�\����x3>\�Y�\�/����~�c[�]]\�`�q\�\�b\�\ngT��\�`\�o\�%������5\�\�\���%���\�c2UW��\�y\�/�\�\��\�pvqlvN9�cc8\�\�\�VMK\�s\�9|\�\�9�\�ޜ\�\ZN�l�Ѻ�Y\\)\�5*Ix\�Jl��e?YoUf2\�B��v��w[N\�gW��\�33h��-[ث\�\�h\��\\&\�[\��g��\�J\�X\�o\�\���jK\�̜�\�\�vw\�\��nO�j_�H\��-[Ɛ,�l�]A��\�Ӱ�\�P2=&�\�m�\'�\�N��S*=1l��䄠�>��m|Bت���|B\�ߜ�yR\�\�N\�mrbs\�\�y�\�\�\�\'��\�1�\�ZH�\�R=�\�:�#\�\�Ħ�HP����P	I\��\\@�]�e\�%a^CV%	��j��i�\�zE\��&\�\�E�2�0\�\"�{�l�\�L�u(\\/�t(\\\�s\� sFR�弍\��\"˓\�\�5\�\� p�硺\��CYb\�0}�\�\�sDU*��D:m#�\�H�#	%\�%�\�ӡ�k\"\�9�~ے\�F�I9�:HL)\�n\\L��-����A9vG�\n\�	<m�CA�\�ur-�C�<�6��ڄ2��\nUZq]\�frnB*\�\�N\�\���)5�\�%Z�8�\�ǵ�*]��\�v-�MU\Z Kg.\�G*�\�\'k�\�I\�S\�B:Լ�(C��8�Œ�5�(7�\�ra��\�y\�v�k6��\�WV\�:ǖT\�\��R}\�<\�ؒ�]�2�J\'aX_�U=�C\'ݐ=\�	�,d�ē@��	�aT�\�\�f8G\�\�\�U1\�!۝9�\�\�R}/\�lۨ��I1\�c����B\�\�\r\�P�\�.�\Z\�.\�$��m����\�u�m�N춱�f{\�\�I\�Q�Ǟ\�6\�\�(��I\'!�:�C�mС	\�M(O�mXp^ГE�\�\�0[ws�:N>�}V�\r�\r\�9��*5\��yk\�F�s�k\�\��ܡ9�\Za��\�Pv��\�\�@y&5����\'���o/fW\�V%	:\�\�f�m$*\���?�[\�R\r]�\�|b#�E�~��B+��\�����_\�~_\�)���H�D(�2��\�5\��k\�\�i#�\\iN�\����v.k�\�c\'7f�(\�&*��\�\�T\r;ey�ؓIv)e%\�O`\�R���&\�\�o�bu�ga\�G~�K���\�����!Q93z9*�za~�\�p\�ǯy�56{�P\�l3�\�\\\���j�pəxw1{w��˽z苊y^�T\���gxU�\���ݸ7s�z��\�R�z����K�[�\�pl\�Z�W\�՝\�\�H�P8V?tM\�\��)\�%\�ff�\�b�R���6 E���ce:�\�N�7H\�t\��^\\\�p=\�\�%)R=���\�T1\� �@yƿ�1B�P��_�\"\�C�df\�\�Z{�q\�f���fQ�T��9\�\���\�v\\li�\�!�؈T�I��7����g�\n\�\�r���;��\�Z\�\�r�u�w�p��\��ݫ\�۩�F���8A v~}C��\�0z\�\�\��r�+��\��u���I�,���\�B+;v՘��p=�K�^.�\�l\"G\�P�\�)\�do�S-���~\�r#\�0zXԽ^.�\�/nʑ8\�\�x�v۞\"I5\�\�\�\�Qf�k��{~�\�{�����\�eyH*\n�\�w=EKA�V\�;\�H1ɰ�\�0\�xwF}\�̶͡�r$u;�\"f\�[\�0�Ou�d\�\����è/v�C\�����q�\���V���g[\�Q��V-�\�g\�p\�\\\�r(�ĜG\�P�\�)�kE���e\�\�s\�`wF_\�!m�*8\n�J����q5\�ޖ�\Z)\�\�B jQ�U\�\�\�:�>��\�8\�q\":�`\�v�\�C�\�h��^:��|���!t��\�\�nE��\n-h\�/+\�%5m���_�2��C=\�\�h�P�-\�\"-\�\�i�}j\��fO����+J�z�Сiz��J�i\'��MW�\��uh�Ci~\��*t�L\���y>\�R5[�2+̡6�G��\n*_��\�\�J⏻ǡph5R=T\�P�v{A`\�\Z,�\rq�k�qG��\n\n�\r��\�y�lɆ[��9�\084�*t��]�ߨ\�L}\�\�+I\��X��\�7���5\�\�\�,F\�Pi�\�)j�\�z�@�\nO\\\��\�[쐧���+�<E�{��T)��bX�94/s���^\�SDݶ�\�:\�)Uʿ{b\0v��0�\��\�8\�k{�n��=E\�\\�u=E�J��蔼\�w\�υ8��韎ġ�r\�)j��=En�<E�J��(�\�<\�\�\��\\��H\�=E\�m{��2	y�@�\nO�Bpd\�?�)E\�P�\�)�n\�Sd�i\�S�Tx�jG\�\�<+��8\�m{�\�z\�S\�B�\"P�\�S�0;2�\�\�\�D\�P�v\�S���*\r<E�\�O\�6�qr\��:�\��8�WMT\�d��\\Õq6�\�Xg \�\�Q��֓x����}��P=ԫ��h\�Si]Qm\�iM�\�eմ��\�\��\�^\�>K��3\�j=m���\�\\�C��C�T�\"1\�\�3\�\�4.��C�ͳ�a]\�I\�	\�\�\��b�Cw�R$�R\�O>=\�\�rWUs\�\��\�˳d�X�\�_�}E��\��&��82\�R\�>\�Χ\�\�\�U�����ؗ\�e�\\mI5�ص*\�R;\�0\�\\Ǔ\�K�fV���Q�CYG\�\�*\�snؘ�N��o�tg\Z�i���\�ĵm6�ˡf�D\�\�\"Jn��g\0\� U OKv4�V$�^\�v��9\��\���y\Z�C�\0�plsI\�<_K�\�v]>綮rl��q�]�}\�w)̡�ҙH\�p�\�F�\�M\�2\�\�\�\�\�쁛��E�\n5�\�\�\���e�\�O\�6�q�.�[9toKlOQVx��e?\�u\�ޖ؞\"\�WE�d+m��\�\�\�\�rA�\�)r�\�X��\�կ�84�bp\Z\�Sd}\�\��Sd�\�\�f{�l�\�:4��(�ع�Sd\�l�9\�x�h�\�#�=EF\�)��p\�m\�)8��\�ncW\�!\��-�8�\��9�x�pl\�\�:�\�Z\'��hs�\�)ʌ=E\��<D�>Erh2��\� �\��\�ݞ�(С��KF\�E\�\�\"9��sh*���\�X=OQ�Cg�Q\�-�p�،[�ȡȼ@\��)b:\�]OQ�C\�W�S\rL-�͹}\�OaOQj���h$\�\n<Ḛ�z�\"O\�Pg\�[^�\�x��\�g�6[�\�P\�?\�S\��v\�S\�	\�l�>\�ν���\�{)̡��D\�Э�S\�l;\�)��)L\��JE�H?l+ġԘR\�x�\�����\�:tm��6��\��;ϗ\�!5%%���Yv\�S\�	J�\�2D�T�����\�ml\��Y���H\�P-�\'��I3���\�\�\�1��\�\�\�a-\r\�)�\�z�t\��.)�=E��\�0�\"\�;ġy%��HdІ�\�\�\�[�!<EtXO�\�9�liO\�S4\�9T\�y\\O\�S��\�\�\0;���\�)b^X�\n츞\":����{(�;��ck�;�sR�CAA�9�C�\��\�F��\���6�<�V65��\�\�.әH\�\�C�=7�z�\nr\�A\�\�\�t(0jv��Q�Hk�\�Xd�\�f\�s]�;��\�Too\�M��\�\�\�zP���X\Z`ߐ��#\"و	��c:��i�j\�\\*\�/W��>{D�\�c�\�V�\�����c\�ʱ\�Z�؜M�ә\�\��r\�\\Fk{�\0v�C��\�Y�zD�\�\�/����f_׋\�\'��9��U}kҩ\�\�u&�rӢo��\�\�\�9�W}�ǦU|P�z\�/\�]z\��\n��\�o\�\�?l�����\�L$�\��&>+ߜ\�\�y�>ի�մ�\�P�\�/�l\r;ՔHQ��\��66�1���\�t;\�Æ5\�ӡUC��:�C�c�\����s�m\�>�\�<�\�\�q���F��_�*Ʒ֯u9t�.8��]�\�/wCӲ\�\������4a}\��\�\���\�\�D\Zo��\�]X\��\�\�\�Q\�k\�\�DA�\\\�F�͆;�r�1�|�\�\�O[?\�\�\r�\���y\�Qc\'8\�\'8n\�~>\��\\\�\�\�g0\�\�\rr\�綴�\�\���\�@�~��]�{�5�x>W\�,�\����\�E\rҡj�|mp.7С)\�p�QM�f|Ϋ�v=t�;eA�\�J9ҡ4\�\���\�@�J�A.6f��\�\��P\�\�\�/W\�M�t(�\���s��С\�SӤ�>y/�\�o؞x���\�����D\�+\�H/�{}�|�<8�{Z\�\�|F�\�s\�6\�)�\�N=��\�^�ފ\�/\�n/��ꇞW�\�}S\�мb(�\��1��w�*�롔��w�7��\�M\�I/�KhE`\�\��l�\��\��ک��p5�b�~�(��e.\��\�\�:�c+��s���ҩ�R߰�\�(�rQ+\�)ګw#\�r5�CKp����p��w3�zhv�\�t��r\�k\�~�\�8��\��\���_\�\�\���_\�8\��\�\\��-�\�.�T\��\�r��[\�hm\�\�ո�F��-/�\�Z�z(\�whƪ�\�:\\��)f�q��\\��-2�n���*����\�J��eV*\�֒�\�\�\�4�\�\�:�T�\"�F߳@��-�k\�4\�b\';�P\��̴ʑ\�\�S\�p��:m�-�v*&#`1\�B�\�\�uƎ��;�*<E몮<ұ\�b;�Ca\�\�θ\�C����\�ӧ��7��C:\�X��h�?����lI\�Xp{9��\�ӡ\�J�\\�(�ж��w❎7;\Z\�8\�qra\r��C\�.66�p��x�V�����Z�$��\�dv3Q\Z\�\�Е\\�\�)��y\�\��M�e��\��M�}\�\�\��l�D\�P����ȗu��E��nfW\�l�F�A>�á\�\�7NE\�P�\�)\��\"EO<�E��Nf�\��\�\�\\�\�g�%��\�F$\�o{�\�)���C׉\�S\�\�잋Ј\�&C\�;\�F\�P7��J��\�OhU�>E�̮�}��B\�\�q�y�ܶ��\nOQJ��vu3�Q\Z\�\�\�>evDO�x�����Y\�U	k\�y�ٍ҈��\�\�B+\Z��{[��hOx��|E�v��vfw��\�\�\�\�1�Q\��b�\�<;�r\�C\�:��\�X\�\�\�8$*�qc\�|����\��\����u��\�\�\"\�\�S\��9.�\�r({\�r�\"\�C\�:T\��.(\�S\�%ek��Cu#\�~;R=��C}\���\�\r�xs(l��Cu\�\�)�\�mz�����!\�~;\�˕�aZy)R=��C_�1gԯꔸC`\'nu}�0\�V\�V\"\�C\�:���Q;9̸�-�8��*�\�mZ5�Q�!\r�}�q-̡��\�m�WF\�\\i7C\�{\�8>\�S�\�ա��v�\r\�P�COQ�\�)\�B��J2\�{�o�\\��n�\�}�\"{���<���\��\�R\�\�\�%RW�2tI6�g�\r\�P﨧\�{���~�\�\�\�\�u\�ѡ���ɟ}�C���\�w���iJ��\"\�[��\��\�N\�R�C\rT\�6��H�\��=\��i�v=E�u,<E�\�/\�(��}&K�j^�ơn\�Sdv=Ee]O\�RU<�L�`\��\Z\�j~E�ġ\�q�\"�\�)��4\�;\0��8Ɲ�ơ\�q�\"�\�)ZVX\�/�/�\�\�\�qhV\\�F\�P�C�z�����\�b\�)\�\�u_\�8�\"��C\�\�d$�US�zW\�\�JPF�To�aպ\"ϛ\�6�����9�,�#q�O�\�7��鸢,\�)\�<}\�䭷]�絗\�Ҟ)�\�\�9�9T\'\�th�JD6l�>`���\'ɔ�ϛ��\�m7/�+҇c\�\��\�\�[�8�J�)yz�\�iQݜLS�\�%�-��\��\�7)��s�\�\�	]q����C\�7%Rֲ��\�Ŵ(���\�V��y\�\�\�0�\�3ǧ\�ù�\�\�\��OV#qhI�l؆.���#�6�%c\�y\�\��?\�aw9TG\�HZD0n\�֛�x�Ҥ�\�#\�j�</�\\��\�wܡz(�;�C\�\�̰�k6�75�\rW̹j8>\�\�>#}�C���nD�\�\�v��`X���WҢ,\�w�Z��\�<�S�\�-�\��g�i����\�\�\�1�QE�C��Ꙙ�\" \�l\�)��3�\Z\�Тb�+1=E@�\�)6�b\�\�C:���+JLO�����\�q�뤧C\�5�TLO�\'<E��z�ǡ�i=��\�)!��(���P=4�\�\�o����g\�)\Z;ġ��\��7�S\�f��h\�P=����\�)\�%��S;\�\�O[)\�Տ>�{��(ɟ�4��\��C�)jUB\�j#q�t\�њ]O\\%&���\�=x�wk}\�w�_.\�1��\�SZ�\�)�^�Ӫ\��˿z2m�\�װ\�Pj�܈}�l.GO\�SJ��SE�\�\�_-\��\�5\'ġ4\�OF\�Э�\�T:�\"�\��y!�ͺ\�~c���[ꏝ`^�C��,\��=wG\�x�\0\��Y N)ˡ�蝄�0n=\�\�\�xI�ġ[�\���V��8e�\�o�ABJݣ=\��x�@kv<E�mk�8�\�\�\�m�t�O\�9%��\�񥮧\�kϹ�\�\��\���\�\��6\�\�7bx�\n����\"�_��ӽƦ;�?\�;���\�\�\�1�QE�t�C7\���H�s\�::O���(ġvN�\�)�\�<E�|:ġ��\�S49��(�J\����p\\OQqhOQ�\nZ��\�Þ�\�О\"ِQ�C\�X��\�О\"ٔ\�a\�\��<Eա=Er(�\�\�S4�\�V��T�\�\�����?�w����z���G�m�_rM�\�\�_��ąQb˯��˱ˠ��\���\�\�\�9�߶�uY`O�r\�\�\���\�+_\�\��\����G��\�ˏ\�/��$M ý�\�wN�8�6\�\�\rئ}]5�a�\�(\�w\�\nZ{����vJ{6Q�;\�9�Y[yyEi\0\0\0\0IEND�B`�','924893285',NULL,'2017-08-13 18:46:56','jpg',NULL,'upload/files/20170813184656qVThPVgI.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20170813184656qVThPVgI.swf',NULL,NULL,NULL);
/*!40000 ALTER TABLE `t_s_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_base_user`
--

DROP TABLE IF EXISTS `t_s_base_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_base_user` (
  `ID` varchar(32) NOT NULL,
  `activitiSync` smallint(6) DEFAULT NULL,
  `browser` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `realname` varchar(50) DEFAULT NULL,
  `signature` blob,
  `status` smallint(6) DEFAULT NULL,
  `userkey` varchar(200) DEFAULT NULL,
  `username` varchar(10) NOT NULL,
  `departid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_15jh1g4iem1857546ggor42et` (`departid`),
  CONSTRAINT `FK_15jh1g4iem1857546ggor42et` FOREIGN KEY (`departid`) REFERENCES `t_s_depart` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_base_user`
--

LOCK TABLES `t_s_base_user` WRITE;
/*!40000 ALTER TABLE `t_s_base_user` DISABLE KEYS */;
INSERT INTO `t_s_base_user` VALUES ('4028d881436d514601436d5215ac0043',NULL,NULL,'c44b01947c9e6e3f','管理员',NULL,1,NULL,'admin','4028d881436d514601436d5214ef0016');
/*!40000 ALTER TABLE `t_s_base_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_config`
--

DROP TABLE IF EXISTS `t_s_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_config` (
  `ID` varchar(32) NOT NULL,
  `code` varchar(100) DEFAULT NULL,
  `content` longtext,
  `name` varchar(100) NOT NULL,
  `note` longtext,
  `userid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_m3q8r50ror4fl7fjkvd82tqgn` (`userid`),
  CONSTRAINT `FK_m3q8r50ror4fl7fjkvd82tqgn` FOREIGN KEY (`userid`) REFERENCES `t_s_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_config`
--

LOCK TABLES `t_s_config` WRITE;
/*!40000 ALTER TABLE `t_s_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_s_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_demo`
--

DROP TABLE IF EXISTS `t_s_demo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_demo` (
  `ID` varchar(32) NOT NULL,
  `democode` longtext,
  `demoorder` smallint(6) DEFAULT NULL,
  `demotitle` varchar(200) DEFAULT NULL,
  `demourl` varchar(200) DEFAULT NULL,
  `demopid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_fni8e3v88wcf2sahhlv57u4nm` (`demopid`),
  CONSTRAINT `FK_fni8e3v88wcf2sahhlv57u4nm` FOREIGN KEY (`demopid`) REFERENCES `t_s_demo` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_demo`
--

LOCK TABLES `t_s_demo` WRITE;
/*!40000 ALTER TABLE `t_s_demo` DISABLE KEYS */;
INSERT INTO `t_s_demo` VALUES ('4028d881436d514601436d52186900c4','<div class=\"form\">\r\n   <label class=\"Validform_label\">\r\n     非空验证：\r\n    </label>\r\n    <input name=\"demotitle\" id=\"demotitle\" datatype=\"*\" errormsg=\"该字段不为空\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     URL验证：\r\n    </label>\r\n    <input name=\"demourl\" id=\"demourl\" datatype=\"url\" errormsg=\"必须是URL\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     至少选择2项：\r\n    </label>\r\n    <input name=\"shoppingsite1\" class=\"rt2\" id=\"shoppingsite21\" type=\"checkbox\" value=\"1\" datatype=\"need2\" nullmsg=\"请选择您的爱好！\" />\r\n  \r\n     阅读\r\n  \r\n    <input name=\"shoppingsite1\" class=\"rt2\" id=\"shoppingsite22\" type=\"checkbox\" value=\"2\" />\r\n    \r\n     音乐\r\n  \r\n    <input name=\"shoppingsite1\" class=\"rt2\" id=\"shoppingsite23\" type=\"checkbox\" value=\"3\" />\r\n  \r\n     运动\r\n   \r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     邮箱：\r\n    </label>\r\n    <input name=\"demoorder\" id=\"demoorder\" datatype=\"e\" errormsg=\"邮箱非法\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     手机号：\r\n    </label>\r\n    <input name=\"phone\" id=\"phone\" datatype=\"m\" errormsg=\"手机号非法\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     金额：\r\n    </label>\r\n    <input name=\"money\" id=\"money\" datatype=\"d\" errormsg=\"金额非法\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     日期：\r\n    </label>\r\n    <input name=\"date\" id=\"date\" class=\"easyui-datebox\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     时间：\r\n    </label>\r\n    <input name=\"time\" id=\"time\" class=\"easyui-datetimebox\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>',NULL,'表单验证',NULL,NULL);
/*!40000 ALTER TABLE `t_s_demo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_depart`
--

DROP TABLE IF EXISTS `t_s_depart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_depart` (
  `ID` varchar(32) NOT NULL,
  `departname` varchar(100) NOT NULL,
  `description` longtext,
  `parentdepartid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_knnm3wb0bembwvm0il7tf6686` (`parentdepartid`),
  CONSTRAINT `FK_knnm3wb0bembwvm0il7tf6686` FOREIGN KEY (`parentdepartid`) REFERENCES `t_s_depart` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_depart`
--

LOCK TABLES `t_s_depart` WRITE;
/*!40000 ALTER TABLE `t_s_depart` DISABLE KEYS */;
INSERT INTO `t_s_depart` VALUES ('4028d881436d514601436d5214d70015','信息部','12',NULL),('4028d881436d514601436d5214ef0016','设计部',NULL,NULL),('4028d881436d514601436d5214f30017','研发室','研发技术难题','4028d881436d514601436d5214ef0016');
/*!40000 ALTER TABLE `t_s_depart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_document`
--

DROP TABLE IF EXISTS `t_s_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_document` (
  `documentstate` smallint(6) DEFAULT NULL,
  `documenttitle` varchar(100) DEFAULT NULL,
  `pictureindex` blob,
  `showhome` smallint(6) DEFAULT NULL,
  `id` varchar(32) NOT NULL,
  `typeid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_qr3qlmgkflj35m5ci1xv0vvg3` (`typeid`),
  KEY `FK_f2mc12eu0umghp2i70apmtxjl` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_document`
--

LOCK TABLES `t_s_document` WRITE;
/*!40000 ALTER TABLE `t_s_document` DISABLE KEYS */;
INSERT INTO `t_s_document` VALUES (NULL,NULL,NULL,NULL,'297e7eb6469a4a8901469a5d96ea000d','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'297e7eb6469a4a8901469a5ebac20010','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'297e7eb6469a9a0f01469a9b59d30001','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'297e7eb6469a9a0f01469a9bc74b0003','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402880e6477d04e001477d0a31040002','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402880e6477d04e001477d0a53150005','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402880e6477d04e001477d0dfcd80009','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402880e6477d04e001477d0e143d000a','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402880e6477d04e001477d0e1d31000d','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402880e6477d5c2601477d5d81de0001','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881865907db74015908069bf6000c','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e446394419014639453ce90002','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e4463cc88701463ccef5340001','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e44643207c01464333b1f9000c','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e4464381350146438691940002','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e44643813501464389b02a000b','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e44643a1cd014643a510060003','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e44643a1cd014643a55d6f0006','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e44695183a014695210478000f','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e44695183a0146952144320012','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e44695183a0146952187bc0015','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e44695183a01469522f1ed0018','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e44695183a01469523431e001b','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e44695183a01469523eb7f001e','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e44695183a0146952422130021','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e446955c7c014695970aeb0014','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e446955c7c01469597394f0016','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e446955c7c0146959757810018','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e446955c7c014695977560001a','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e446955c7c014695a1de0a001d','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e446955c7c014695a38b470020','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e446955c7c014695a3cdea0022','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e446955c7c014695a4383a0024','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e446955c7c014695a4913b0026','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e446955c7c014695a4dda10027','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e446955c7c014695a726df0028','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e446955c7c014695a7705a002b','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e446955c7c014695a7b814002e','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e446955c7c014695a7ecf10031','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e446955c7c014695a831d70034','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e44695ebe3014695ed3bdc0001','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e44695ebe3014695ed79fa0003','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e44695ebe3014695ef476c0005','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e44695ebe3014695f2c6280007','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e44695ebe3014695f3176d0009','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e44695ebe3014695f339a7000b','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e44695ebe3014695f3a3b3000d','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e44695ebe3014695f3f89f000f','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e44695ebe3014695f443990011','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e44695ebe3014695f45e1a0013','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e44695ebe3014695f494290015','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e44695ebe3014695f4d5570017','4028d881436d514601436d5216190053'),(NULL,'11111',NULL,NULL,'402881e845d1723e0145d18fef940019','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e946ddea480146ddf061b50001','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e946ddea480146ddf730350003','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e946ddea480146ddf991610005','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e946ddea480146de02f8ba0008','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e946ddea480146de0522e3000a','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e946ddea480146de09f959000e','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e946ddea480146de0f340b0010','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e947015a7001470160f9290001','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e947015a70014701619f490004','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e947015a700147016449650007','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e94701df96014701eb22d30006','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e94701df96014701f3f7160007','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e94701df960147020b82d1000d','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e9470273d20147028adf830019','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e9470273d20147028afde6001a','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402881e94702c764014702ceee2e0004','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889ed472e852301472eaee6f80009','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889ed472e852301472eb0270b000d','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889ed472ec2a801472ec3997c0001','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889ed472ee23401472ee59ccf0001','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f346dc66c30146dc7c11630001','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f346dc66c30146dc7ccb410005','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f346dc66c30146dc7cf66b0008','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f346dc8a220146dc933f720007','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f64747048401474709372d0009','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f6474704840147470a1ca7000e','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f6474704840147470d48ab000f','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f6474704840147470d62570012','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f6474704840147470e7b920014','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f64747048401474710097e0017','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f647470484014747108feb001a','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f647470484014747129c15001d','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f647470484014747133201001f','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f647470484014747137f230022','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f64747182f01474718ed750001','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f64747182f01474719193e0004','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f64747182f01474719c42b0007','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f64747182f01474720ef4c000c','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f64747182f014747211b11000f','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f6474722ad01474723d3400001','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f6474722ad01474723f78e0004','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f6474722ad014747248d0f0007','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f6474722ad01474724bdc2000a','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f847666ae40147666df6eb0002','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f847666ae40147666e16ff0003','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f847666ae40147671e80cf0017','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f847666ae401476729806f0018','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f847666ae401476729c6df001b','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f847666ae401476730b187001e','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f847666ae401476730f1240021','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f84767413b0147674352d30001','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f8477ad29d01477ad8e51b0004','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f8477b0c1f01477b0e31e30003','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f8477b0c1f01477b0e44790006','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f8477b5b5b01477b5cb2c40002','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f8477b5b5b01477b5cc3e50003','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f8477b5b5b01477b5d02730006','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f8477b5b5b01477b5ef0a90009','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f8477b5b5b01477b5efd31000c','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f8477b681801477b69179c0002','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f8477b681801477b692d7b0005','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f8477b6c5401477b6d39dc0002','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f8477b6c5401477b6d4ee40005','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f8477b6e4e01477b6efba10001','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f8477b6e4e01477b6f0ae10004','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f8477b70aa01477b71e16e0003','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f8477b70aa01477b71ee4a0006','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f8477b70aa01477b75b3200009','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f8477b70aa01477b75c54a000c','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f8477c283701477c29665c0002','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f8477c283701477c298a7e0005','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f8477c283701477c2a71d10007','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f8477c283701477c2a81de000a','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f8477c283701477c2b8bb4000b','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f8477c283701477c2b9bfd000e','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f8477c283701477c2e96f50012','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'402889f8477c283701477c2eb1300015','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'40289481515cf0fe01515cf8bb930017','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'40289481515cf0fe01515cf98a0c0018','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'40289481515cf0fe01515cfabbd1001a','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'4028bc064763571d0147635828440003','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'4028d881472f0d8101472f14e0010002','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'4028d881472f0d8101472f1ff82a0005','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'4028d881472f0d8101472f218b350008','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'4028d881472f356e01472f3695840002','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'4028d881472f356e01472f3f428e0006','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'4028d881472f356e01472f4256e00007','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'4028d881472f356e01472f42fcc40009','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'4028d881472f451c01472f481df30001','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'4028d881472f451c01472f4cd0dc0003','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'4028d881472f451c01472f4d0a920004','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'4028d8814734ee0d0147351e604e0001','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'4028d88147359f51014735a006fc0001','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'ff8081815dd6d4bf015dd6daed900007','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'ff8081815dd6d4bf015dd6db3ba80008','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'ff8081815ddb071f015ddb30aad70002','4028d881436d514601436d5216190053'),(NULL,NULL,NULL,NULL,'ff8081815ddb071f015ddb3430c50006','4028d881436d514601436d5216190053');
/*!40000 ALTER TABLE `t_s_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_fileno`
--

DROP TABLE IF EXISTS `t_s_fileno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_fileno` (
  `ID` varchar(32) NOT NULL,
  `filenobefore` varchar(32) DEFAULT NULL,
  `filenonum` int(11) DEFAULT NULL,
  `filenotype` varchar(32) DEFAULT NULL,
  `filenoYear` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_fileno`
--

LOCK TABLES `t_s_fileno` WRITE;
/*!40000 ALTER TABLE `t_s_fileno` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_s_fileno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_function`
--

DROP TABLE IF EXISTS `t_s_function`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_function` (
  `ID` varchar(32) NOT NULL,
  `functioniframe` smallint(6) DEFAULT NULL,
  `functionlevel` smallint(6) DEFAULT NULL,
  `functionname` varchar(50) NOT NULL,
  `functionorder` varchar(255) DEFAULT NULL,
  `functionurl` varchar(100) DEFAULT NULL,
  `parentfunctionid` varchar(32) DEFAULT NULL,
  `iconid` varchar(32) DEFAULT NULL,
  `desk_iconid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_brd7b3keorj8pmxcv8bpahnxp` (`parentfunctionid`),
  KEY `FK_q5tqo3v4ltsp1pehdxd59rccx` (`iconid`),
  KEY `FK_gbdacaoju6d5u53rp4jo4rbs9` (`desk_iconid`),
  CONSTRAINT `FK_brd7b3keorj8pmxcv8bpahnxp` FOREIGN KEY (`parentfunctionid`) REFERENCES `t_s_function` (`ID`),
  CONSTRAINT `FK_gbdacaoju6d5u53rp4jo4rbs9` FOREIGN KEY (`desk_iconid`) REFERENCES `t_s_icon` (`ID`),
  CONSTRAINT `FK_q5tqo3v4ltsp1pehdxd59rccx` FOREIGN KEY (`iconid`) REFERENCES `t_s_icon` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_function`
--

LOCK TABLES `t_s_function` WRITE;
/*!40000 ALTER TABLE `t_s_function` DISABLE KEYS */;
INSERT INTO `t_s_function` VALUES ('297e7eb6469a4a8901469a54eff60006',NULL,2,'文章管理','3','cmsArticleController.do?cmsArticle','402881e44695183a0146951af2b70004','4028d881436d514601436d5214b30002',NULL),('402880e6477d61da01477d71430f001a',NULL,1,'JqueryFile示例','10','fileUploadController.do?fileUploadSample','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),('402880f25906117601590614ca94000a',NULL,0,'支付窗平台','3','',NULL,'4028d881436d514601436d5214b30002',NULL),('402880f2590623420159062581630001',NULL,1,'基础设置','1','','402880f25906117601590614ca94000a','4028d881436d514601436d5214ba0007',NULL),('402880f25906234201590626596e0004',NULL,1,'消息素材','2','','402880f25906117601590614ca94000a','4028d881436d514601436d5214ba0007',NULL),('402880f2590623420159062692fc0006',NULL,1,'用户管理','3','','402880f25906117601590614ca94000a','4028d881436d514601436d5214ba0007',NULL),('402880f25906234201590626c28e0008',NULL,1,'群发管理','4','','402880f25906117601590614ca94000a','4028d881436d514601436d5214ba0007',NULL),('402880f2590623420159062783c4000a',NULL,2,'支付窗账号管理','1','alipay/alipayAccount.do?list','402880f2590623420159062581630001','4028d881436d514601436d5214b30002',NULL),('402880f25906234201590627ef06000c',NULL,2,'支付窗关键字管理','2','alipay/alipayAutoresponse.do?list','402880f2590623420159062581630001','4028d881436d514601436d5214b30002',NULL),('402880f259062342015906288369000f',NULL,2,'支付窗菜单管理','3','alipay/alipayMenu.do?list','402880f2590623420159062581630001','4028d881436d514601436d5214b30002',NULL),('402880f25906234201590628d62c0011',NULL,2,'支付窗关注回复','4','alipay/alipayGzentity.do?list','402880f2590623420159062581630001','4028d881436d514601436d5214b30002',NULL),('402880f2590623420159062d921c0013',NULL,2,'支付窗文本消息','1','alipay/alipayTexttemplate.do?list','402880f25906234201590626596e0004','4028d881436d514601436d5214b30002',NULL),('402880f2590623420159062df7fe0016',NULL,2,'支付窗图文消息','2','alipay/alipayNewstemplate.do?list','402880f25906234201590626596e0004','4028d881436d514601436d5214b30002',NULL),('402880f2590623420159062ea59f0018',NULL,2,'支付窗用户管理','1','alipay/alipayGzuserinfo.do?list','402880f2590623420159062692fc0006','4028d881436d514601436d5214b30002',NULL),('402880f2590623420159062f3b4a001a',NULL,2,'支付窗用户消息','2','alipay/alipayReceivetext.do?list','402880f2590623420159062692fc0006','4028d881436d514601436d5214b30002',NULL),('402880f25906234201590630a5cc001c',NULL,2,'支付窗消息群发','1','alipay/groupMsg.do?toGroupMsgSend','402880f25906234201590626c28e0008','4028d881436d514601436d5214b30002',NULL),('402880f259062342015906312d27001f',NULL,2,'支付窗群发消息记录','2','alipay/alipayMessagelog.do?list','402880f25906234201590626c28e0008','4028d881436d514601436d5214b30002',NULL),('40288186590896200159089bc6510002',NULL,2,'用户地理位置','4','qywx/qywxLocation.do?list','4028ef8156b0c68f0156b0ca9d800015','4028d881436d514601436d5214b30002',NULL),('40288186590896200159089c30620004',NULL,1,'高级功能','5','','4028ef8156b0c68f0156b0c88eb10001','4028d881436d514601436d5214ba0007',NULL),('40288186590896200159089c8a360006',NULL,2,'企业号消息群发','1','qywx/groupMsg.do?toGroupMsgSend','40288186590896200159089c30620004','4028d881436d514601436d5214b30002',NULL),('40288186590896200159089ccf5b0008',NULL,2,'企业号群发日志','2','qywx/qywxMessagelog.do?list','40288186590896200159089c30620004','4028d881436d514601436d5214b30002',NULL),('402881e446677b700146677d7b600001',NULL,2,'扩展接口','09','weixinExpandconfigController.do?weixinExpandconfig','4028d881436d514601436d5449330189','4028d881436d514601436d5214b30002',NULL),('402881e44695183a0146951af2b70004',NULL,1,'微信网站','4','','4028ef8156b0c68f0156b0d4cf390045','4028d881436d514601436d5214ba0007',NULL),('402881e44695183a0146951b66050006',NULL,2,'广告管理','0','adController.do?ad','402881e44695183a0146951af2b70004','4028d881436d514601436d5214b30002',NULL),('402881e44695183a0146951ed79e0008',NULL,2,'栏目管理','1','cmsMenuController.do?menu','402881e44695183a0146951af2b70004','4028d881436d514601436d5214b30002',NULL),('402881e545f5dd1a0145f5de9bb60001',NULL,1,'消息素材','2','','4028ef8156b0c68f0156b0d4cf390045','4028d881436d514601436d5214ba0007',NULL),('402881e545f5dd1a0145f5f32cf00005',NULL,2,'文本消息','1','textTemplateController.do?list','402881e545f5dd1a0145f5de9bb60001','4028d881436d514601436d5214b30002',NULL),('402881e545f5f4780145f61198810004',NULL,2,'图文消息','2','newsTemplateController.do?list','402881e545f5dd1a0145f5de9bb60001','4028d881436d514601436d5214b30002',NULL),('402881e8460d7e5301460d81c7a60001',NULL,2,'关键字管理','3','autoResponseController.do?list','4028d881436d514601436d52c2fb0181','4028d881436d514601436d5214b30002',NULL),('402889f64747048401474706d2a50001',NULL,2,'网站信息','5','weixinCmsSiteController.do?weixinCmsSite','402881e44695183a0146951af2b70004','4028d881436d514601436d5214b30002',NULL),('4028948151d756d80151d758c25e0001',NULL,2,'素材链接','6','weixinLinksucaiController.do?privateList','402881e545f5dd1a0145f5de9bb60001','4028d881436d514601436d5214b30002',NULL),('4028948151dc6b1f0151dc6fdf05000c',NULL,2,'用户消息','08','receiveTextController.do?list','4028d881436d514601436d5449330189','4028d881436d514601436d5214b30002',NULL),('4028d881436d514601436d5215070018',NULL,0,'Online 开发','12','',NULL,'4028d881436d514601436d5214ba0007',NULL),('4028d881436d514601436d52150a0019',NULL,0,'系统管理','11','',NULL,'4028d881436d514601436d5214b80005',NULL),('4028d881436d514601436d52150b001a',NULL,0,'统计查询','5','',NULL,'4028d881436d514601436d5214ba0007',NULL),('4028d881436d514601436d52150d001b',NULL,0,'常用示例','8','',NULL,'4028d881436d514601436d5214b30002',NULL),('4028d881436d514601436d52150f001c',NULL,0,'系统监控','7','',NULL,'4028d881436d514601436d5214b30002',NULL),('4028d881436d514601436d521513001d',NULL,1,'用户管理','5','userController.do?user','4028d881436d514601436d52150a0019','4028d881436d514601436d5214b30002',NULL),('4028d881436d514601436d521516001e',NULL,1,'角色管理','6','roleController.do?role','4028d881436d514601436d52150a0019','4028d881436d514601436d5214b30002',NULL),('4028d881436d514601436d52151a001f',NULL,1,'菜单管理','7','functionController.do?function','4028d881436d514601436d52150a0019','4028d881436d514601436d5214b30002',NULL),('4028d881436d514601436d52151f0020',NULL,1,'数据字典','200','systemController.do?typeGroupList','4028d881436d514601436d52150a0019','4028d881436d514601436d5214b30002',NULL),('4028d881436d514601436d5215220021',NULL,1,'图标管理','201','iconController.do?icon','4028d881436d514601436d52150a0019','4028d881436d514601436d5214b30002',NULL),('4028d881436d514601436d5215260023',NULL,1,'部门管理','22','departController.do?depart','4028d881436d514601436d52150a0019','4028d881436d514601436d5214b30002',NULL),('4028d881436d514601436d52152c0025',NULL,1,'用户分析','17','logController.do?statisticTabs&isIframe','4028d881436d514601436d52150b001a','4028d881436d514601436d5214b10001',NULL),('4028d881436d514601436d5215300026',NULL,1,'表单配置','1','cgFormHeadController.do?cgFormHeadList','4028d881436d514601436d5215070018','4028d881436d514601436d5214b30002',NULL),('4028d881436d514601436d5215340027',NULL,1,'动态报表配置','2','cgreportConfigHeadController.do?cgreportConfigHead','4028d881436d514601436d5215070018','4028d881436d514601436d5214b30002',NULL),('4028d881436d514601436d5215380028',NULL,1,'数据监控','11','dataSourceController.do?goDruid&isIframe','4028d881436d514601436d52150f001c','4028d881436d514601436d5214b30002',NULL),('4028d881436d514601436d52153b0029',NULL,1,'系统日志','21','logController.do?log','4028d881436d514601436d52150f001c','4028d881436d514601436d5214b30002',NULL),('4028d881436d514601436d521540002a',NULL,1,'定时任务','21','timeTaskController.do?timeTask','4028d881436d514601436d52150f001c','4028d881436d514601436d5214b30002',NULL),('4028d881436d514601436d521545002b',NULL,1,'表单验证','1','demoController.do?formTabs','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),('4028d881436d514601436d521549002c',NULL,1,'Demo示例','2','jeecgDemoController.do?jeecgDemo','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),('4028d881436d514601436d52154d002d',NULL,1,'单表模型','3','jeecgNoteController.do?jeecgNote','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),('4028d881436d514601436d521552002e',NULL,1,'一对多模型','4','jeecgOrderMainController.do?jeecgOrderMain','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),('4028d881436d514601436d521557002f',NULL,1,'Excel导入导出','5','courseController.do?course','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),('4028d881436d514601436d52155a0030',NULL,1,'上传下载','6','commonController.do?listTurn&turn=system/document/filesList','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),('4028d881436d514601436d52155f0031',NULL,1,'无分页列表','7','userNoPageController.do?user','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),('4028d881436d514601436d5215640032',NULL,1,'jdbc示例','8','jeecgJdbcController.do?jeecgJdbc','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),('4028d881436d514601436d5215670033',NULL,1,'SQL分离','9','jeecgJdbcController.do?dictParameter','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),('4028d881436d514601436d52156b0034',NULL,1,'字典标签','10','demoController.do?dictSelect','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),('4028d881436d514601436d52156f0035',NULL,1,'表单弹出风格','11','demoController.do?demoList','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),('4028d881436d514601436d5215730036',NULL,1,'特殊布局','12','demoController.do?demoIframe','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),('4028d881436d514601436d5215770037',NULL,1,'单表例子(无Tag)','13','jeecgEasyUIController.do?jeecgEasyUI','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),('4028d881436d514601436d52157a0038',NULL,1,'一对多例子(无Tag)','14','jeecgOrderMainNoTagController.do?jeecgOrderMainNoTag','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),('4028d881436d514601436d52157e0039',NULL,1,'HTML编辑器','15','jeecgDemoController.do?ckeditor&isIframe','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),('4028d881436d514601436d521581003a',NULL,1,'在线word(IE)','16','webOfficeController.do?webOffice','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),('4028d881436d514601436d521584003b',NULL,1,'WebOffice官方例子','17','webOfficeController.do?webOfficeSample&isIframe','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),('4028d881436d514601436d521587003c',NULL,1,'多附件管理','18','tFinanceController.do?tFinance','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),('4028d881436d514601436d52158a003d',NULL,1,'Datagrid手工Html','19','userController.do?userDemo','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),('4028d881436d514601436d52158f003e',NULL,1,'物料Bom','20','jeecgMatterBomController.do?goList','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),('4028d881436d514601436d521593003f',NULL,1,'报表示例','21','reportDemoController.do?studentStatisticTabs&isIframe','4028d881436d514601436d52150b001a','4028d881436d514601436d5214b10001',NULL),('4028d881436d514601436d5215990040',NULL,1,'ckfinder例子','100','jeecgDemoCkfinderController.do?jeecgDemoCkfinder','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),('4028d881436d514601436d52c2fb0181',NULL,1,'基础设置','1','','4028ef8156b0c68f0156b0d4cf390045','4028d881436d514601436d5214ba0007',NULL),('4028d881436d514601436d5449330189',NULL,1,'微活动','3','','4028ef8156b0c68f0156b0d4cf390045','4028d881436d514601436d5214ba0007',NULL),('4028d881436d514601436d5618400191',NULL,2,'关注欢迎语','2','subscribeController.do?list','4028d881436d514601436d52c2fb0181','4028d881436d514601436d5214b30002',NULL),('4028d881436d514601436d5884be019d',NULL,2,'自定义菜单','4','menuManagerController.do?list','4028d881436d514601436d52c2fb0181','4028d881436d514601436d5214b30002',NULL),('4028d881436d514601436d5af95501b1',NULL,2,'公众帐号管理','1','weixinAccountController.do?weixinAccount','4028d881436d514601436d52c2fb0181','4028d881436d514601436d5214b30002',NULL),('4028ef8156b07fa50156b082a1100005',NULL,0,'插件演示','6','',NULL,'4028d881436d514601436d5214b30002',NULL),('4028ef8156b07fa50156b082d9310007',NULL,1,'普通列表','1','p3/wxActInvite.do?list','4028ef8156b07fa50156b082a1100005','4028d881436d514601436d5214b30002',NULL),('4028ef8156b07fa50156b08315c20009',NULL,1,'树列表','2','p3/auth.do?list','4028ef8156b07fa50156b082a1100005','4028d881436d514601436d5214b30002',NULL),('4028ef8156b0c68f0156b0c88eb10001',NULL,0,'微信企业号平台','2','',NULL,'4028d881436d514601436d5214b30002',NULL),('4028ef8156b0c68f0156b0c8c0c60003',NULL,1,'账号管理','1','','4028ef8156b0c68f0156b0c88eb10001','4028d881436d514601436d5214ba0007',NULL),('4028ef8156b0c68f0156b0c920440005',NULL,2,'企业号管理','1','qywx/qywxAccount.do?list','4028ef8156b0c68f0156b0c8c0c60003','4028d881436d514601436d5214b30002',NULL),('4028ef8156b0c68f0156b0c956120007',NULL,2,'应用管理','2','qywx/qywxAgent.do?list','4028ef8156b0c68f0156b0c8c0c60003','4028d881436d514601436d5214b30002',NULL),('4028ef8156b0c68f0156b0ca47730011',NULL,1,'基础管理','2','','4028ef8156b0c68f0156b0c88eb10001','4028d881436d514601436d5214ba0007',NULL),('4028ef8156b0c68f0156b0ca69760013',NULL,1,'微信素材','3','','4028ef8156b0c68f0156b0c88eb10001','4028d881436d514601436d5214ba0007',NULL),('4028ef8156b0c68f0156b0ca9d800015',NULL,1,'消息管理','4','','4028ef8156b0c68f0156b0c88eb10001','4028d881436d514601436d5214ba0007',NULL),('4028ef8156b0c68f0156b0cadace0017',NULL,2,'企业号关键字管理','1','qywx/qywxAutoresponse.do?list','4028ef8156b0c68f0156b0ca47730011','4028d881436d514601436d5214b30002',NULL),('4028ef8156b0c68f0156b0cb1d7c0019',NULL,2,'企业号关注回复','2','qywx/qywxGzentity.do?list','4028ef8156b0c68f0156b0ca47730011','4028d881436d514601436d5214b30002',NULL),('4028ef8156b0c68f0156b0cb5675001b',NULL,2,'企业号菜单管理','3','qywx/qywxMenu.do?list','4028ef8156b0c68f0156b0ca47730011','4028d881436d514601436d5214b30002',NULL),('4028ef8156b0c68f0156b0cbdb2f001d',NULL,2,'企业号文本消息','1','qywx/qywxTexttemplate.do?list','4028ef8156b0c68f0156b0ca69760013','4028d881436d514601436d5214b30002',NULL),('4028ef8156b0c68f0156b0cc0dc7001f',NULL,2,'企业号图文消息','2','qywx/qywxNewstemplate.do?list','4028ef8156b0c68f0156b0ca69760013','4028d881436d514601436d5214b30002',NULL),('4028ef8156b0c68f0156b0cc5c280021',NULL,2,'企业号用户消息','1','qywx/qywxReceivetext.do?list','4028ef8156b0c68f0156b0ca9d800015','4028d881436d514601436d5214b30002',NULL),('4028ef8156b0c68f0156b0ccab2e0023',NULL,2,'企业号关注用户','2','qywx/qywxGzuserinfo.do?list','4028ef8156b0c68f0156b0ca9d800015','4028d881436d514601436d5214b30002',NULL),('4028ef8156b0c68f0156b0ccefde0025',NULL,2,'企业号通讯录','3','qywx/qywxGroup.do?list','4028ef8156b0c68f0156b0ca9d800015','4028d881436d514601436d5214b30002',NULL),('4028ef8156b0c68f0156b0d4cf390045',NULL,0,'微信公众平台','1','',NULL,'4028d881436d514601436d5214b30002',NULL);
/*!40000 ALTER TABLE `t_s_function` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_icon`
--

DROP TABLE IF EXISTS `t_s_icon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_icon` (
  `ID` varchar(32) NOT NULL,
  `extend` varchar(255) DEFAULT NULL,
  `iconclas` varchar(200) DEFAULT NULL,
  `content` blob,
  `name` varchar(100) NOT NULL,
  `path` longtext,
  `type` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_icon`
--

LOCK TABLES `t_s_icon` WRITE;
/*!40000 ALTER TABLE `t_s_icon` DISABLE KEYS */;
INSERT INTO `t_s_icon` VALUES ('4028d881436d514601436d5214650000','png','back',NULL,'返回','plug-in/accordion/images/back.png',1),('4028d881436d514601436d5214b10001','png','pie',NULL,'饼图','plug-in/accordion/images/pie.png',1),('4028d881436d514601436d5214b30002','png','pictures',NULL,'图片','plug-in/accordion/images/pictures.png',1),('4028d881436d514601436d5214b40003','png','pencil',NULL,'笔','plug-in/accordion/images/pencil.png',1),('4028d881436d514601436d5214b50004','png','map',NULL,'地图','plug-in/accordion/images/map.png',1),('4028d881436d514601436d5214b80005','png','group_add',NULL,'组','plug-in/accordion/images/group_add.png',1),('4028d881436d514601436d5214b90006','png','calculator',NULL,'计算器','plug-in/accordion/images/calculator.png',1),('4028d881436d514601436d5214ba0007','png','folder',NULL,'文件夹','plug-in/accordion/images/folder.png',1);
/*!40000 ALTER TABLE `t_s_icon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_log`
--

DROP TABLE IF EXISTS `t_s_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_log` (
  `ID` varchar(32) NOT NULL,
  `broswer` varchar(100) DEFAULT NULL,
  `logcontent` longtext NOT NULL,
  `loglevel` smallint(6) DEFAULT NULL,
  `note` longtext,
  `operatetime` datetime NOT NULL,
  `operatetype` smallint(6) DEFAULT NULL,
  `userid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_oe64k4852uylhyc5a00rfwtay` (`userid`),
  CONSTRAINT `FK_oe64k4852uylhyc5a00rfwtay` FOREIGN KEY (`userid`) REFERENCES `t_s_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_log`
--

LOCK TABLES `t_s_log` WRITE;
/*!40000 ALTER TABLE `t_s_log` DISABLE KEYS */;
INSERT INTO `t_s_log` VALUES ('402880f158f1393c0158f13b298d0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.113','2016-12-12 12:12:16',1,'4028d881436d514601436d5215ac0043'),('402880f158f609210158f6097fce0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.113','2016-12-13 10:36:07',1,'4028d881436d514601436d5215ac0043'),('402880f158f60d6f0158f6118e370000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.113','2016-12-13 10:44:55',1,'4028d881436d514601436d5215ac0043'),('402880f158f60d6f0158f6b516240001','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.113','2016-12-13 13:43:32',1,'4028d881436d514601436d5215ac0043'),('402880f258fb12550158fb13a8d50000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.114','2016-12-14 10:05:19',1,'4028d881436d514601436d5215ac0043'),('402880f258fb3e7f0158fb3ee72f0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.114','2016-12-14 10:52:33',1,'4028d881436d514601436d5215ac0043'),('402880f258fb3e7f0158fb3f2fb80001','Chrome','更新开源项目1的菜单信息信息成功！',5,'192.168.0.114','2016-12-14 10:52:52',1,'4028d881436d514601436d5215ac0043'),('402880f258fb3e7f0158fb3f41550002','Chrome','更新Jeewx微信管家的菜单信息信息成功！',5,'192.168.0.114','2016-12-14 10:52:56',1,'4028d881436d514601436d5215ac0043'),('402880f258fb3e7f0158fb3f53fa0003','Chrome','更新Jeewx微信管家1的菜单信息信息成功！',5,'192.168.0.114','2016-12-14 10:53:01',1,'4028d881436d514601436d5215ac0043'),('402880f258fb3e7f0158fb3f60d50004','Chrome','更新开源项目11的菜单信息信息成功！',5,'192.168.0.114','2016-12-14 10:53:04',1,'4028d881436d514601436d5215ac0043'),('402880f258fb402b0158fb4076800000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.114','2016-12-14 10:54:15',1,'4028d881436d514601436d5215ac0043'),('402880f258fb402b0158fb40a0b90001','Chrome','更新开源项目的菜单信息信息成功！',5,'192.168.0.114','2016-12-14 10:54:26',1,'4028d881436d514601436d5215ac0043'),('402880f258fb402b0158fb40b0870002','Chrome','更新开源项目1的菜单信息信息成功！',5,'192.168.0.114','2016-12-14 10:54:30',1,'4028d881436d514601436d5215ac0043'),('402880f2590125720159012603180000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.114','2016-12-15 14:23:05',1,'4028d881436d514601436d5215ac0043'),('402880f25906090d01590609698a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.114','2016-12-16 13:09:57',1,'4028d881436d514601436d5215ac0043'),('402880f25906090d0159060c3a060001','Chrome','权限: 微信公众号被更新成功',5,'192.168.0.114','2016-12-16 13:13:01',1,'4028d881436d514601436d5215ac0043'),('402880f25906090d0159060dd39e0002','Chrome','权限: 微信企业号被更新成功',5,'192.168.0.114','2016-12-16 13:14:46',1,'4028d881436d514601436d5215ac0043'),('402880f25906090d0159060df4090003','Chrome','用户admin已退出',2,'192.168.0.114','2016-12-16 13:14:54',1,'4028d881436d514601436d5215ac0043'),('402880f25906090d0159060e18490004','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.114','2016-12-16 13:15:04',1,'4028d881436d514601436d5215ac0043'),('402880f25906090d0159060eb4a60005','Chrome','用户admin已退出',2,'192.168.0.114','2016-12-16 13:15:44',1,'4028d881436d514601436d5215ac0043'),('402880f25906090d0159060ee0230006','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.114','2016-12-16 13:15:55',1,'4028d881436d514601436d5215ac0043'),('402880f25906090d0159060f4cd50007','Chrome','用户admin已退出',2,'192.168.0.114','2016-12-16 13:16:23',1,'4028d881436d514601436d5215ac0043'),('402880f25906090d0159060f64ff0008','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.114','2016-12-16 13:16:29',1,'4028d881436d514601436d5215ac0043'),('402880f25906117601590611f03d0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.114','2016-12-16 13:19:16',1,'4028d881436d514601436d5215ac0043'),('402880f25906117601590612666e0001','Chrome','用户admin已退出',2,'192.168.0.114','2016-12-16 13:19:46',1,'4028d881436d514601436d5215ac0043'),('402880f2590611760159061282380002','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.114','2016-12-16 13:19:53',1,'4028d881436d514601436d5215ac0043'),('402880f259061176015906132f680003','Chrome','用户admin已退出',2,'192.168.0.114','2016-12-16 13:20:37',1,'4028d881436d514601436d5215ac0043'),('402880f259061176015906134ff30004','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.114','2016-12-16 13:20:46',1,'4028d881436d514601436d5215ac0043'),('402880f259061176015906142e5d0006','Chrome','权限: 支付窗平台被添加成功',3,'192.168.0.114','2016-12-16 13:21:43',1,'4028d881436d514601436d5215ac0043'),('402880f2590611760159061464550007','Chrome','权限: 支付窗平台被删除成功',4,'192.168.0.114','2016-12-16 13:21:56',1,'4028d881436d514601436d5215ac0043'),('402880f25906117601590614911b0008','Chrome','权限: 微信公众平台被更新成功',5,'192.168.0.114','2016-12-16 13:22:08',1,'4028d881436d514601436d5215ac0043'),('402880f25906117601590614af4a0009','Chrome','权限: 微信企业号平台被更新成功',5,'192.168.0.114','2016-12-16 13:22:16',1,'4028d881436d514601436d5215ac0043'),('402880f25906117601590614ca9d000b','Chrome','权限: 支付窗平台被添加成功',3,'192.168.0.114','2016-12-16 13:22:23',1,'4028d881436d514601436d5215ac0043'),('402880f259061d6e0159061df0520000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.114','2016-12-16 13:32:22',1,'4028d881436d514601436d5215ac0043'),('402880f25906234201590624ae000000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.114','2016-12-16 13:39:44',1,'4028d881436d514601436d5215ac0043'),('402880f2590623420159062581750002','Chrome','权限: 账号管理被添加成功',3,'192.168.0.114','2016-12-16 13:40:38',1,'4028d881436d514601436d5215ac0043'),('402880f25906234201590625d8890003','Chrome','权限: 基础设置被更新成功',5,'192.168.0.114','2016-12-16 13:41:00',1,'4028d881436d514601436d5215ac0043'),('402880f2590623420159062659790005','Chrome','权限: 消息素材被添加成功',3,'192.168.0.114','2016-12-16 13:41:33',1,'4028d881436d514601436d5215ac0043'),('402880f2590623420159062693070007','Chrome','权限: 用户管理被添加成功',3,'192.168.0.114','2016-12-16 13:41:48',1,'4028d881436d514601436d5215ac0043'),('402880f25906234201590626c2990009','Chrome','权限: 群发管理被添加成功',3,'192.168.0.114','2016-12-16 13:42:00',1,'4028d881436d514601436d5215ac0043'),('402880f2590623420159062783ce000b','Chrome','权限: 支付窗账号管理被添加成功',3,'192.168.0.114','2016-12-16 13:42:50',1,'4028d881436d514601436d5215ac0043'),('402880f25906234201590627ef10000d','Chrome','权限: 关键字管理被添加成功',3,'192.168.0.114','2016-12-16 13:43:17',1,'4028d881436d514601436d5215ac0043'),('402880f259062342015906281271000e','Chrome','权限: 支付窗关键字管理被更新成功',5,'192.168.0.114','2016-12-16 13:43:26',1,'4028d881436d514601436d5215ac0043'),('402880f2590623420159062883740010','Chrome','权限: 支付窗菜单管理被添加成功',3,'192.168.0.114','2016-12-16 13:43:55',1,'4028d881436d514601436d5215ac0043'),('402880f25906234201590628d6350012','Chrome','权限: 支付窗关注回复被添加成功',3,'192.168.0.114','2016-12-16 13:44:16',1,'4028d881436d514601436d5215ac0043'),('402880f2590623420159062d92230014','Chrome','权限: 文本消息被添加成功',3,'192.168.0.114','2016-12-16 13:49:26',1,'4028d881436d514601436d5215ac0043'),('402880f2590623420159062dbd560015','Chrome','权限: 支付窗文本消息被更新成功',5,'192.168.0.114','2016-12-16 13:49:38',1,'4028d881436d514601436d5215ac0043'),('402880f2590623420159062df8060017','Chrome','权限: 支付窗图文消息被添加成功',3,'192.168.0.114','2016-12-16 13:49:53',1,'4028d881436d514601436d5215ac0043'),('402880f2590623420159062ea5ab0019','Chrome','权限: 支付窗用户管理被添加成功',3,'192.168.0.114','2016-12-16 13:50:37',1,'4028d881436d514601436d5215ac0043'),('402880f2590623420159062f3b53001b','Chrome','权限: 支付窗用户消息被添加成功',3,'192.168.0.114','2016-12-16 13:51:15',1,'4028d881436d514601436d5215ac0043'),('402880f25906234201590630a5e0001d','Chrome','权限: 消息群发被添加成功',3,'192.168.0.114','2016-12-16 13:52:48',1,'4028d881436d514601436d5215ac0043'),('402880f25906234201590630e2b6001e','Chrome','权限: 支付窗消息群发被更新成功',5,'192.168.0.114','2016-12-16 13:53:04',1,'4028d881436d514601436d5215ac0043'),('402880f259062342015906312d320020','Chrome','权限: 支付窗群发消息记录被添加成功',3,'192.168.0.114','2016-12-16 13:53:23',1,'4028d881436d514601436d5215ac0043'),('402880f259062342015906319cfa0030','Chrome','用户admin已退出',2,'192.168.0.114','2016-12-16 13:53:51',1,'4028d881436d514601436d5215ac0043'),('402880f25906234201590631ba2e0031','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.114','2016-12-16 13:53:59',1,'4028d881436d514601436d5215ac0043'),('402880f25906234201590632cfe00032','Chrome','用户admin已退出',2,'192.168.0.114','2016-12-16 13:55:10',1,'4028d881436d514601436d5215ac0043'),('402880f25906234201590632e98b0033','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.114','2016-12-16 13:55:17',1,'4028d881436d514601436d5215ac0043'),('402880f25906234201590633418f0034','Chrome','权限: 统计查询被更新成功',5,'192.168.0.114','2016-12-16 13:55:39',1,'4028d881436d514601436d5215ac0043'),('402880f2590623420159063362ab0035','Chrome','权限: 插件演示被更新成功',5,'192.168.0.114','2016-12-16 13:55:48',1,'4028d881436d514601436d5215ac0043'),('402880f25906234201590633789b0036','Chrome','权限: 系统监控被更新成功',5,'192.168.0.114','2016-12-16 13:55:53',1,'4028d881436d514601436d5215ac0043'),('402880f25906234201590633a4f20037','Chrome','权限: 系统管理被更新成功',5,'192.168.0.114','2016-12-16 13:56:04',1,'4028d881436d514601436d5215ac0043'),('402880f25906234201590633b0a70038','Chrome','权限: Online 开发被更新成功',5,'192.168.0.114','2016-12-16 13:56:07',1,'4028d881436d514601436d5215ac0043'),('402880f25906234201590633ddcb0039','Chrome','用户admin已退出',2,'192.168.0.114','2016-12-16 13:56:19',1,'4028d881436d514601436d5215ac0043'),('402880f25906234201590633f74b003a','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.114','2016-12-16 13:56:26',1,'4028d881436d514601436d5215ac0043'),('402880f25906234201590638b9e1003b','Chrome','用户admin已退出',2,'192.168.0.114','2016-12-16 14:01:38',1,'4028d881436d514601436d5215ac0043'),('402880f2590673d70159067425320000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.114','2016-12-16 15:06:32',1,'4028d881436d514601436d5215ac0043'),('402880f25906ae47015906aed3e10000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.114','2016-12-16 16:10:37',1,'4028d881436d514601436d5215ac0043'),('402880f25906b6ce015906b76c510000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.114','2016-12-16 16:20:01',1,'4028d881436d514601436d5215ac0043'),('402880f25906ba42015906bbea5f0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.114','2016-12-16 16:24:55',1,'4028d881436d514601436d5215ac0043'),('402880f25906c4b1015906c50a280000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.114','2016-12-16 16:34:53',1,'4028d881436d514601436d5215ac0043'),('402880f25906d097015906d0f7df0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.114','2016-12-16 16:47:55',1,'4028d881436d514601436d5215ac0043'),('402880f25906d097015906d2a4140001','Chrome','微信公众帐号信息更新成功',5,'192.168.0.114','2016-12-16 16:49:44',1,'4028d881436d514601436d5215ac0043'),('402880f25906d48f015906e41e900000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.114','2016-12-16 17:08:50',1,'4028d881436d514601436d5215ac0043'),('402880f259073c360159074493bc0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.114','2016-12-16 18:54:11',1,'4028d881436d514601436d5215ac0043'),('402880f259073c3601590746b1950001','Chrome','修改关文本模板成功！',5,'192.168.0.114','2016-12-16 18:56:30',1,'4028d881436d514601436d5215ac0043'),('402880f259073c36015907483a720002','Chrome','修改关文本模板成功！',5,'192.168.0.114','2016-12-16 18:58:11',1,'4028d881436d514601436d5215ac0043'),('402880f2590749060159074a2ab70000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.114','2016-12-16 19:00:18',1,'4028d881436d514601436d5215ac0043'),('402880f2590749060159074a8c430001','Chrome','修改关文本模板成功！',5,'192.168.0.114','2016-12-16 19:00:43',1,'4028d881436d514601436d5215ac0043'),('402880f2590749060159074aef1c0002','Chrome','修改关文本模板成功！',5,'192.168.0.114','2016-12-16 19:01:08',1,'4028d881436d514601436d5215ac0043'),('402880f2590749060159074b13370003','Chrome','同步菜单信息数据成功！',4,'192.168.0.114','2016-12-16 19:01:17',1,'4028d881436d514601436d5215ac0043'),('402880f2590749060159074bc5ed0005','Chrome','修改关文本模板成功！',5,'192.168.0.114','2016-12-16 19:02:03',1,'4028d881436d514601436d5215ac0043'),('402880f2590749060159074e1b3b0008','Chrome','更新微商城的菜单信息信息成功！',5,'192.168.0.114','2016-12-16 19:04:36',1,'4028d881436d514601436d5215ac0043'),('402880f2590749060159074eb9c9000a','Chrome','添加微相册的信息成功！',3,'192.168.0.114','2016-12-16 19:05:17',1,'4028d881436d514601436d5215ac0043'),('402880f2590749060159074ef324000b','Chrome','同步菜单信息数据成功！',4,'192.168.0.114','2016-12-16 19:05:31',1,'4028d881436d514601436d5215ac0043'),('402880f2590749060159074f42a2000c','Chrome','同步菜单信息数据成功！',4,'192.168.0.114','2016-12-16 19:05:52',1,'4028d881436d514601436d5215ac0043'),('402880f25907490601590753b9da000e','Chrome','微相册更新成功',5,'192.168.0.114','2016-12-16 19:10:44',1,'4028d881436d514601436d5215ac0043'),('402880f25907490601590753f99c0010','Chrome','微相册添加成功',3,'192.168.0.114','2016-12-16 19:11:01',1,'4028d881436d514601436d5215ac0043'),('402880f259074906015907542edc0012','Chrome','添加成功',3,'192.168.0.114','2016-12-16 19:11:14',1,'4028d881436d514601436d5215ac0043'),('402880f259074906015907555b2b0017','Chrome','活动更新成功',5,'192.168.0.114','2016-12-16 19:12:31',1,'4028d881436d514601436d5215ac0043'),('402880f25907490601590757811e001a','Chrome','添加触发图文的信息成功！',3,'192.168.0.114','2016-12-16 19:14:52',1,'4028d881436d514601436d5215ac0043'),('402880f25907490601590757f34e001b','Chrome','更新关于我们的菜单信息信息成功！',5,'192.168.0.114','2016-12-16 19:15:21',1,'4028d881436d514601436d5215ac0043'),('402880f259074906015907586847001c','Chrome','更新社区培训的菜单信息信息成功！',5,'192.168.0.114','2016-12-16 19:15:51',1,'4028d881436d514601436d5215ac0043'),('402880f25907490601590758e1f6001d','Chrome','更新联系我们的菜单信息信息成功！',5,'192.168.0.114','2016-12-16 19:16:22',1,'4028d881436d514601436d5215ac0043'),('402880f259074906015907593698001f','Chrome','添加联系我们的信息成功！',3,'192.168.0.114','2016-12-16 19:16:44',1,'4028d881436d514601436d5215ac0043'),('402880f25907490601590759a05b0020','Chrome','同步菜单信息数据成功！',4,'192.168.0.114','2016-12-16 19:17:11',1,'4028d881436d514601436d5215ac0043'),('402880f3591a355e01591a361c4a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.115','2016-12-20 11:11:10',1,'4028d881436d514601436d5215ac0043'),('402880f3591a58f101591a5a0fb40000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.115','2016-12-20 11:50:26',1,'4028d881436d514601436d5215ac0043'),('402880f3591a5be201591a72f8020000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.115','2016-12-20 12:17:39',1,'4028d881436d514601436d5215ac0043'),('402880f3591a770001591a77423c0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.115','2016-12-20 12:22:20',1,'4028d881436d514601436d5215ac0043'),('402880f3591a8ef001591a8f61c80000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.115','2016-12-20 12:48:41',1,'4028d881436d514601436d5215ac0043'),('402880f3591a8ef001591a93d5170001','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.115','2016-12-20 12:53:33',1,'4028d881436d514601436d5215ac0043'),('402880f3591a8ef001591abeef620002','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.115','2016-12-20 13:40:37',1,'4028d881436d514601436d5215ac0043'),('402880f3591b2a3001591b2ace540000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.115','2016-12-20 15:38:27',1,'4028d881436d514601436d5215ac0043'),('402880f3591b2a3001591b40b08a0002','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.115','2016-12-20 16:02:21',1,'4028d881436d514601436d5215ac0043'),('402880f3591ba19b01591ba1ed970000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.115','2016-12-20 17:48:34',1,'4028d881436d514601436d5215ac0043'),('402880f3591bc49901591bc5c6440000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.115','2016-12-20 18:27:43',1,'4028d881436d514601436d5215ac0043'),('402880f3591bf0d301591bf135bb0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.115','2016-12-20 19:15:09',1,'4028d881436d514601436d5215ac0043'),('402880f3591bf0d301591bf1fec60001','Chrome','用户admin已退出',2,'192.168.0.115','2016-12-20 19:16:01',1,'4028d881436d514601436d5215ac0043'),('402880f3591bf0d301591bf2bbcb0002','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.115','2016-12-20 19:16:49',1,'4028d881436d514601436d5215ac0043'),('402881865907db74015907e281b30000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.6','2016-12-16 21:46:41',1,'4028d881436d514601436d5215ac0043'),('402881865907db74015907edcd160001','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.6','2016-12-16 21:59:02',1,'4028d881436d514601436d5215ac0043'),('402881865907db74015907f004250002','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.6','2016-12-16 22:01:27',1,'4028d881436d514601436d5215ac0043'),('402881865907db74015907f39ddd0003','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.6','2016-12-16 22:05:23',1,'4028d881436d514601436d5215ac0043'),('402881865907db74015907fd21b30004','Chrome','用户: admin[信息部]登录成功',1,'127.0.0.1','2016-12-16 22:15:46',1,'4028d881436d514601436d5215ac0043'),('402881865907db7401590805ee18000b','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.6','2016-12-16 22:25:23',1,'4028d881436d514601436d5215ac0043'),('402881865907db7401590806c52e000e','Chrome','微信单图消息添加成功',3,'192.168.1.6','2016-12-16 22:26:18',1,'4028d881436d514601436d5215ac0043'),('40288186590834a30159083731a30000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.6','2016-12-16 23:19:12',1,'4028d881436d514601436d5215ac0043'),('4028818659083e2a0159083ece250000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.6','2016-12-16 23:27:30',1,'4028d881436d514601436d5215ac0043'),('4028818659085f530159085fe20f0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.6','2016-12-17 00:03:38',1,'4028d881436d514601436d5215ac0043'),('40288186590878be0159087987e70000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.6','2016-12-17 00:31:39',1,'4028d881436d514601436d5215ac0043'),('40288186590880a70159088142fc0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.6','2016-12-17 00:40:06',1,'4028d881436d514601436d5215ac0043'),('40288186590887bc0159088826100000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.6','2016-12-17 00:47:37',1,'4028d881436d514601436d5215ac0043'),('4028818659089620015908967ced0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.6','2016-12-17 01:03:17',1,'4028d881436d514601436d5215ac0043'),('4028818659089620015908986d790001','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.6','2016-12-17 01:05:24',1,'4028d881436d514601436d5215ac0043'),('40288186590896200159089bc6610003','Chrome','权限: 用户地理位置被添加成功',3,'192.168.1.6','2016-12-17 01:09:03',1,'4028d881436d514601436d5215ac0043'),('40288186590896200159089c306e0005','Chrome','权限: 高级功能被添加成功',3,'192.168.1.6','2016-12-17 01:09:30',1,'4028d881436d514601436d5215ac0043'),('40288186590896200159089c8a460007','Chrome','权限: 企业号消息群发被添加成功',3,'192.168.1.6','2016-12-17 01:09:53',1,'4028d881436d514601436d5215ac0043'),('40288186590896200159089ccf6f0009','Chrome','权限: 企业号群发日志被添加成功',3,'192.168.1.6','2016-12-17 01:10:11',1,'4028d881436d514601436d5215ac0043'),('40288186590896200159089cfa5c000d','Chrome','用户admin已退出',2,'192.168.1.6','2016-12-17 01:10:22',1,'4028d881436d514601436d5215ac0043'),('40288186590896200159089d2b0e000e','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.6','2016-12-17 01:10:35',1,'4028d881436d514601436d5215ac0043'),('40288186590896200159089d9017000f','Chrome','权限: 高级功能被更新成功',5,'192.168.1.6','2016-12-17 01:11:00',1,'4028d881436d514601436d5215ac0043'),('40288186590896200159089e98610010','Chrome','用户admin已退出',2,'192.168.1.6','2016-12-17 01:12:08',1,'4028d881436d514601436d5215ac0043'),('40288186590896200159089eb41a0011','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.6','2016-12-17 01:12:15',1,'4028d881436d514601436d5215ac0043'),('40288186590896200159089efbfe0013','Chrome','用户admin已退出',2,'192.168.1.6','2016-12-17 01:12:34',1,'4028d881436d514601436d5215ac0043'),('40288186590896200159089f16000014','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.6','2016-12-17 01:12:40',1,'4028d881436d514601436d5215ac0043'),('402881865908ad73015908adcceb0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.6','2016-12-17 01:28:45',1,'4028d881436d514601436d5215ac0043'),('40288186590ac45401590ac509c80000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.6','2016-12-17 11:13:22',1,'4028d881436d514601436d5215ac0043'),('40288186590ac45401590ac62c310001','Chrome','权限: 基础设置被更新成功',5,'192.168.1.6','2016-12-17 11:14:36',1,'4028d881436d514601436d5215ac0043'),('40288186590ac45401590ac643080002','Chrome','权限: 消息素材被更新成功',5,'192.168.1.6','2016-12-17 11:14:42',1,'4028d881436d514601436d5215ac0043'),('40288186590ac45401590ac65c880003','Chrome','权限: 用户管理被更新成功',5,'192.168.1.6','2016-12-17 11:14:49',1,'4028d881436d514601436d5215ac0043'),('40288186590ac45401590ac673930004','Chrome','权限: 群发管理被更新成功',5,'192.168.1.6','2016-12-17 11:14:54',1,'4028d881436d514601436d5215ac0043'),('40288186590ac45401590ac681460005','Chrome','用户admin已退出',2,'192.168.1.6','2016-12-17 11:14:58',1,'4028d881436d514601436d5215ac0043'),('40288186590ac45401590ac699860006','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.6','2016-12-17 11:15:04',1,'4028d881436d514601436d5215ac0043'),('40288186590b0be801590b0f02600000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.6','2016-12-17 12:34:10',1,'4028d881436d514601436d5215ac0043'),('40288186590b208c01590b2156310000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.6','2016-12-17 12:54:11',1,'4028d881436d514601436d5215ac0043'),('40288186591caa1001591caaf2bf0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.6','2016-12-20 22:38:02',1,'4028d881436d514601436d5215ac0043'),('40288186591caa1001591cc6a3650001','Chrome','微信公众帐号信息更新成功',5,'192.168.1.6','2016-12-20 23:08:17',1,'4028d881436d514601436d5215ac0043'),('40288186591caa1001591cc6b31f0002','Chrome','微信公众帐号信息更新成功',5,'192.168.1.6','2016-12-20 23:08:21',1,'4028d881436d514601436d5215ac0043'),('40288186591caa1001591cc774de0004','Chrome','用户: scott更新成功',5,'192.168.1.6','2016-12-20 23:09:10',1,'4028d881436d514601436d5215ac0043'),('40288186591caa1001591cc793650006','Chrome','用户: scott更新成功',5,'192.168.1.6','2016-12-20 23:09:18',1,'4028d881436d514601436d5215ac0043'),('40288186591caa1001591cc7c4990008','Chrome','用户: scott更新成功',5,'192.168.1.6','2016-12-20 23:09:31',1,'4028d881436d514601436d5215ac0043'),('4028948151d85f5c0151d86164480000','Chrome','用户: admin[信息部]登录成功',1,'192.168.20.1','2015-12-25 17:04:00',1,'4028d881436d514601436d5215ac0043'),('4028948151dc628d0151dc643c080000','Chrome','用户: admin[信息部]登录成功',1,'192.168.20.1','2015-12-26 11:45:35',1,'4028d881436d514601436d5215ac0043'),('4028948151dc6b1f0151dc6dfe7b0005','Chrome','用户: admin[信息部]登录成功',1,'192.168.20.1','2015-12-26 11:56:14',1,'4028d881436d514601436d5215ac0043'),('4028948151dc6b1f0151dc6f1ff70008','Chrome','权限: 高级功能被添加成功',3,'192.168.20.1','2015-12-26 11:57:28',1,'4028d881436d514601436d5215ac0043'),('4028948151dc6b1f0151dc6f51990009','Chrome','权限: 高级功能被删除成功',4,'192.168.20.1','2015-12-26 11:57:41',1,'4028d881436d514601436d5215ac0043'),('4028948151dc6b1f0151dc6f7002000b','Chrome','权限: 高级功能被添加成功',3,'192.168.20.1','2015-12-26 11:57:49',1,'4028d881436d514601436d5215ac0043'),('4028948151dc6b1f0151dc6fdf55000d','Chrome','权限: 接受消息管理被添加成功',3,'192.168.20.1','2015-12-26 11:58:17',1,'4028d881436d514601436d5215ac0043'),('4028948151dc6b1f0151dc701bc10010','Chrome','用户admin已退出',2,'192.168.20.1','2015-12-26 11:58:33',1,'4028d881436d514601436d5215ac0043'),('4028948151dc6b1f0151dc7035020011','Chrome','用户: admin[信息部]登录成功',1,'192.168.20.1','2015-12-26 11:58:39',1,'4028d881436d514601436d5215ac0043'),('4028948151dc6b1f0151dc70fc890012','Chrome','回复信息成功！',5,'192.168.20.1','2015-12-26 11:59:30',1,'4028d881436d514601436d5215ac0043'),('4028948151dc6b1f0151dc7123180013','Chrome','删除信息数据成功！',4,'192.168.20.1','2015-12-26 11:59:40',1,'4028d881436d514601436d5215ac0043'),('4028948151dc6b1f0151dc72aee00014','Chrome','权限: 扩展接口被更新成功',5,'192.168.20.1','2015-12-26 12:01:22',1,'4028d881436d514601436d5215ac0043'),('4028948151dc6b1f0151dc72c03f0015','Chrome','用户admin已退出',2,'192.168.20.1','2015-12-26 12:01:26',1,'4028d881436d514601436d5215ac0043'),('4028948151dc6b1f0151dc72d98e0016','Chrome','用户: admin[信息部]登录成功',1,'192.168.20.1','2015-12-26 12:01:33',1,'4028d881436d514601436d5215ac0043'),('4028948151dc6b1f0151dc7368030017','Chrome','权限: 接受消息被更新成功',5,'192.168.20.1','2015-12-26 12:02:09',1,'4028d881436d514601436d5215ac0043'),('4028948151dc6b1f0151dc7397430018','Chrome','用户admin已退出',2,'192.168.20.1','2015-12-26 12:02:21',1,'4028d881436d514601436d5215ac0043'),('4028948151dc6b1f0151dc73bbd90019','Chrome','用户: admin[信息部]登录成功',1,'192.168.20.1','2015-12-26 12:02:31',1,'4028d881436d514601436d5215ac0043'),('4028948151dc770f0151dc7783fd0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.20.1','2015-12-26 12:06:38',1,'4028d881436d514601436d5215ac0043'),('4028948151dc770f0151dc7d6f5e0002','Chrome','微相册添加成功',3,'192.168.20.1','2015-12-26 12:13:06',1,'4028d881436d514601436d5215ac0043'),('4028948151dc770f0151dc7e8b5c0004','Chrome','添加成功',3,'192.168.20.1','2015-12-26 12:14:19',1,'4028d881436d514601436d5215ac0043'),('4028948151dc770f0151dc817a4d000a','Chrome','同步菜单信息数据成功！',4,'192.168.20.1','2015-12-26 12:17:31',1,'4028d881436d514601436d5215ac0043'),('4028948151dcf9c20151dcfb621a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.20.1','2015-12-26 14:30:40',1,'4028d881436d514601436d5215ac0043'),('4028948151dd0a7f0151dd0c39c50000','Chrome','用户: admin[信息部]登录成功',1,'192.168.20.1','2015-12-26 14:49:04',1,'4028d881436d514601436d5215ac0043'),('4028948151dd17b50151dd196a870000','Chrome','用户: admin[信息部]登录成功',1,'192.168.20.1','2015-12-26 15:03:29',1,'4028d881436d514601436d5215ac0043'),('4028948151dd17b50151dd19b3be0001','Chrome','活动更新成功',5,'192.168.20.1','2015-12-26 15:03:47',1,'4028d881436d514601436d5215ac0043'),('4028948151dd17b50151dd19d6f40002','Chrome','活动更新成功',5,'192.168.20.1','2015-12-26 15:03:56',1,'4028d881436d514601436d5215ac0043'),('4028948151dd17b50151dd19f9f50003','Chrome','活动更新成功',5,'192.168.20.1','2015-12-26 15:04:05',1,'4028d881436d514601436d5215ac0043'),('4028948151dd17b50151dd1a27ba0004','Chrome','活动更新成功',5,'192.168.20.1','2015-12-26 15:04:17',1,'4028d881436d514601436d5215ac0043'),('4028948151dd17b50151dd1a42380005','Chrome','活动更新成功',5,'192.168.20.1','2015-12-26 15:04:24',1,'4028d881436d514601436d5215ac0043'),('4028948151dd17b50151dd1bd8710006','Chrome','更新开源项目的菜单信息信息成功！',5,'192.168.20.1','2015-12-26 15:06:08',1,'4028d881436d514601436d5215ac0043'),('4028948151dd17b50151dd1de3660007','Chrome','更新开源项目的菜单信息信息成功！',5,'192.168.20.1','2015-12-26 15:08:22',1,'4028d881436d514601436d5215ac0043'),('4028948151dd1f1d0151dd1fa71a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.20.1','2015-12-26 15:10:17',1,'4028d881436d514601436d5215ac0043'),('4028948151dd1f1d0151dd202d4d0001','Chrome','更新开源项目的菜单信息信息成功！',5,'192.168.20.1','2015-12-26 15:10:52',1,'4028d881436d514601436d5215ac0043'),('4028948151dd1f1d0151dd203c730002','Chrome','更新开源项目的菜单信息信息成功！',5,'192.168.20.1','2015-12-26 15:10:56',1,'4028d881436d514601436d5215ac0043'),('4028948151de698b0151de6a00f50000','Chrome','用户: admin[信息部]登录成功',1,'192.168.20.1','2015-12-26 21:11:07',1,'4028d881436d514601436d5215ac0043'),('4028948151e769b20151e76a901c0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.20.1','2015-12-28 15:08:19',1,'4028d881436d514601436d5215ac0043'),('4028ef81537fd2f001537fd3ae850000','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-03-16 22:28:12',1,'4028d881436d514601436d5215ac0043'),('4028ef81537fd2f001537fd4297a0001','Chrome','微信公众帐号信息更新成功',5,'192.168.111.1','2016-03-16 22:28:44',1,'4028d881436d514601436d5215ac0043'),('4028ef81537fd2f001537fd464820002','Chrome','同步菜单信息数据成功！',4,'192.168.111.1','2016-03-16 22:28:59',1,'4028d881436d514601436d5215ac0043'),('4028ef81537fd2f001537fd55e210005','Chrome','用户admin已退出',2,'192.168.111.1','2016-03-16 22:30:03',1,'4028d881436d514601436d5215ac0043'),('4028ef81537fd2f001537fd57bb40006','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-03-16 22:30:10',1,'4028d881436d514601436d5215ac0043'),('4028ef81537fd2f001537fd9fd8e0007','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-03-16 22:35:05',1,'4028d881436d514601436d5215ac0043'),('4028ef8153a1f1400153a1f595040000','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-03-23 13:32:19',1,'4028d881436d514601436d5215ac0043'),('4028ef8153a207100153a21506370000','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-03-23 14:06:40',1,'4028d881436d514601436d5215ac0043'),('4028ef8153a207100153a22978960001','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-03-23 14:29:00',1,'4028d881436d514601436d5215ac0043'),('4028ef8153a253ef0153a254a10e0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-03-23 15:16:08',1,'4028d881436d514601436d5215ac0043'),('4028ef8153ad63b70153ad642e540000','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-03-25 18:48:57',1,'4028d881436d514601436d5215ac0043'),('4028ef8153c7ae960153c7af88270000','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-03-30 21:21:22',1,'4028d881436d514601436d5215ac0043'),('4028ef8153c7ae960153c7b06e880001','Chrome','修改图文模板成功！',5,'192.168.111.1','2016-03-30 21:22:21',1,'4028d881436d514601436d5215ac0043'),('4028ef8153c7ae960153c7b09c900002','Chrome','修改关文本模板成功！',5,'192.168.111.1','2016-03-30 21:22:33',1,'4028d881436d514601436d5215ac0043'),('4028ef8153eb2aba0153eb2b6eff0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-04-06 18:43:25',1,'4028d881436d514601436d5215ac0043'),('4028ef8153eb35cb0153eb3637c10000','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-04-06 18:55:12',1,'4028d881436d514601436d5215ac0043'),('4028ef8153eb38710153eb390b4b0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-04-06 18:58:17',1,'4028d881436d514601436d5215ac0043'),('4028ef8153eb3c530153eb3cc8190000','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-04-06 19:02:22',1,'4028d881436d514601436d5215ac0043'),('4028ef8153f0672f0153f06794ad0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-04-07 19:07:13',1,'4028d881436d514601436d5215ac0043'),('4028ef8153f0672f0153f0749fd50001','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-04-07 19:21:28',1,'4028d881436d514601436d5215ac0043'),('4028ef8153f4151f0153f4158e620000','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-04-08 12:16:06',1,'4028d881436d514601436d5215ac0043'),('4028ef8153f4151f0153f41625430001','Chrome','用户admin已退出',2,'192.168.111.1','2016-04-08 12:16:45',1,'4028d881436d514601436d5215ac0043'),('4028ef8153f4151f0153f416406e0002','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-04-08 12:16:52',1,'4028d881436d514601436d5215ac0043'),('4028ef8153f4151f0153f4181bbc0003','Chrome','用户admin已退出',2,'192.168.111.1','2016-04-08 12:18:54',1,'4028d881436d514601436d5215ac0043'),('4028ef8153f4151f0153f41866200004','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-04-08 12:19:13',1,'4028d881436d514601436d5215ac0043'),('4028ef8153f4151f0153f41879000005','Chrome','用户admin已退出',2,'192.168.111.1','2016-04-08 12:19:17',1,'4028d881436d514601436d5215ac0043'),('4028ef8153f4151f0153f418a12a0006','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-04-08 12:19:28',1,'4028d881436d514601436d5215ac0043'),('4028ef8153f4151f0153f418b0650007','Chrome','用户admin已退出',2,'192.168.111.1','2016-04-08 12:19:32',1,'4028d881436d514601436d5215ac0043'),('4028ef8153f4151f0153f4196e6e0008','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-04-08 12:20:20',1,'4028d881436d514601436d5215ac0043'),('4028ef8153f4151f0153f421fd9d0009','Chrome','用户admin已退出',2,'192.168.111.1','2016-04-08 12:29:41',1,'4028d881436d514601436d5215ac0043'),('4028ef8153f4151f0153f42350c8000a','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-04-08 12:31:08',1,'4028d881436d514601436d5215ac0043'),('4028ef8153f4151f0153f423b252000c','Chrome','用户: admin更新成功',5,'192.168.111.1','2016-04-08 12:31:33',1,'4028d881436d514601436d5215ac0043'),('4028ef8153f4151f0153f423bac3000d','Chrome','用户admin已退出',2,'192.168.111.1','2016-04-08 12:31:35',1,'4028d881436d514601436d5215ac0043'),('4028ef8153f4151f0153f423ef08000e','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-04-08 12:31:48',1,'4028d881436d514601436d5215ac0043'),('4028ef8153f4151f0153f42e0dc2000f','Chrome','用户admin已退出',2,'192.168.111.1','2016-04-08 12:42:52',1,'4028d881436d514601436d5215ac0043'),('4028ef815408341701540834a6440000','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-04-12 10:02:28',1,'4028d881436d514601436d5215ac0043'),('4028ef81540834170154083bd5020003','Chrome','用户admin已退出',2,'192.168.111.1','2016-04-12 10:10:19',1,'4028d881436d514601436d5215ac0043'),('4028ef815408341701540847bd430004','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-04-12 10:23:19',1,'4028d881436d514601436d5215ac0043'),('4028ef81545764900154576557df0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-04-27 19:05:40',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b060180156b0609e950000','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-08-22 11:52:17',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b060180156b060a6170001','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-08-22 11:52:19',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b061e10156b063ccdd0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-08-22 11:55:45',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b061e10156b0648cc50001','Chrome','用户admin已退出',2,'192.168.111.1','2016-08-22 11:56:34',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b061e10156b065df370002','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-08-22 11:58:01',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b061e10156b06717670003','Chrome','权限: 用户消息被更新成功',5,'192.168.111.1','2016-08-22 11:59:21',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b061e10156b0673c9f0004','Chrome','权限: 扩展接口被更新成功',5,'192.168.111.1','2016-08-22 11:59:30',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b061e10156b067751a0005','Chrome','权限: 用户消息被更新成功',5,'192.168.111.1','2016-08-22 11:59:45',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b061e10156b067954f0006','Chrome','权限: 扩展接口被更新成功',5,'192.168.111.1','2016-08-22 11:59:53',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b061e10156b067b2c50007','Chrome','权限: 微相册被更新成功',5,'192.168.111.1','2016-08-22 12:00:01',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b061e10156b067bed30008','Chrome','权限: 高级功能被删除成功',4,'192.168.111.1','2016-08-22 12:00:04',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b061e10156b067cb110009','Chrome','用户admin已退出',2,'192.168.111.1','2016-08-22 12:00:07',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b061e10156b067ed3d000a','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-08-22 12:00:16',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b061e10156b06a939e000b','Chrome','用户admin已退出',2,'192.168.111.1','2016-08-22 12:03:09',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b061e10156b06ac77b000c','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-08-22 12:03:23',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b07fa50156b08059c00000','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-08-22 12:26:56',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b07fa50156b081371a0001','Chrome','权限: 消息素材被更新成功',5,'192.168.111.1','2016-08-22 12:27:53',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b07fa50156b082369b0003','Chrome','权限: 插件demo被添加成功',3,'192.168.111.1','2016-08-22 12:28:58',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b07fa50156b082744a0004','Chrome','权限: 插件demo被删除成功',4,'192.168.111.1','2016-08-22 12:29:14',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b07fa50156b082a1660006','Chrome','权限: 插件演示被添加成功',3,'192.168.111.1','2016-08-22 12:29:26',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b07fa50156b082d9850008','Chrome','权限: 普通列表被添加成功',3,'192.168.111.1','2016-08-22 12:29:40',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b07fa50156b083173f000a','Chrome','权限: 树列表被添加成功',3,'192.168.111.1','2016-08-22 12:29:56',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b07fa50156b0833f00000e','Chrome','用户admin已退出',2,'192.168.111.1','2016-08-22 12:30:06',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b07fa50156b08363e9000f','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-08-22 12:30:16',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b099ed0156b09ab7cd0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-08-22 12:55:44',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0a0560156b0a0d8660000','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-08-22 13:02:26',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0bc690156b0bcc34b0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-08-22 13:32:56',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0bc690156b0be12a90001','Chrome','用户admin已退出',2,'192.168.111.1','2016-08-22 13:34:21',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0bc690156b0beb6440002','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-08-22 13:35:03',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0c8421c0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-08-22 13:45:29',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0c88efd0002','Chrome','权限: 企业号平台被添加成功',3,'192.168.111.1','2016-08-22 13:45:49',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0c8c10e0004','Chrome','权限: 账号管理被添加成功',3,'192.168.111.1','2016-08-22 13:46:01',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0c920860006','Chrome','权限: 企业号管理被添加成功',3,'192.168.111.1','2016-08-22 13:46:26',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0c956a20008','Chrome','权限: 应用管理被添加成功',3,'192.168.111.1','2016-08-22 13:46:40',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0c961c90009','Chrome','用户admin已退出',2,'192.168.111.1','2016-08-22 13:46:43',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0c98582000a','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-08-22 13:46:52',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0c9b3c3000f','Chrome','用户admin已退出',2,'192.168.111.1','2016-08-22 13:47:04',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0c9cd820010','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-08-22 13:47:10',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0ca47ad0012','Chrome','权限: 基础管理被添加成功',3,'192.168.111.1','2016-08-22 13:47:41',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0ca6aa00014','Chrome','权限: 微信素材被添加成功',3,'192.168.111.1','2016-08-22 13:47:50',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0ca9dcf0016','Chrome','权限: 消息管理被添加成功',3,'192.168.111.1','2016-08-22 13:48:03',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0cadbec0018','Chrome','权限: 关键字管理被添加成功',3,'192.168.111.1','2016-08-22 13:48:19',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0cb1db7001a','Chrome','权限: 关注回复被添加成功',3,'192.168.111.1','2016-08-22 13:48:36',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0cb56ac001c','Chrome','权限: 菜单管理被添加成功',3,'192.168.111.1','2016-08-22 13:48:51',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0cbdb77001e','Chrome','权限: 文本消息被添加成功',3,'192.168.111.1','2016-08-22 13:49:25',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0cc0e0a0020','Chrome','权限: 图文消息被添加成功',3,'192.168.111.1','2016-08-22 13:49:38',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0cc5c680022','Chrome','权限: 用户消息被添加成功',3,'192.168.111.1','2016-08-22 13:49:58',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0ccab5e0024','Chrome','权限: 关注用户被添加成功',3,'192.168.111.1','2016-08-22 13:50:18',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0ccf0200026','Chrome','权限: 通讯录被添加成功',3,'192.168.111.1','2016-08-22 13:50:36',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0cd8b6c0027','Chrome','权限: 文本消息被更新成功',5,'192.168.111.1','2016-08-22 13:51:15',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0ce0ddb0033','Chrome','用户admin已退出',2,'192.168.111.1','2016-08-22 13:51:49',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0ce2c5d0034','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-08-22 13:51:57',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0cfa2040035','Chrome','权限: 账号管理被更新成功',5,'192.168.111.1','2016-08-22 13:53:32',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0cfc6d60036','Chrome','权限: 基础管理被更新成功',5,'192.168.111.1','2016-08-22 13:53:42',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0cfdd2e0037','Chrome','权限: 微信素材被更新成功',5,'192.168.111.1','2016-08-22 13:53:47',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0cff3980038','Chrome','权限: 消息管理被更新成功',5,'192.168.111.1','2016-08-22 13:53:53',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0cffbf30039','Chrome','用户admin已退出',2,'192.168.111.1','2016-08-22 13:53:55',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0d02f2c003a','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-08-22 13:54:08',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0d0bdb3003b','Chrome','权限: 企业号关键字管理被更新成功',5,'192.168.111.1','2016-08-22 13:54:45',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0d0dcc4003c','Chrome','权限: 企业号关注回复被更新成功',5,'192.168.111.1','2016-08-22 13:54:53',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0d0fd59003d','Chrome','权限: 企业号菜单管理被更新成功',5,'192.168.111.1','2016-08-22 13:55:01',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0d1157c003e','Chrome','权限: 企业号文本消息被更新成功',5,'192.168.111.1','2016-08-22 13:55:07',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0d13179003f','Chrome','权限: 企业号图文消息被更新成功',5,'192.168.111.1','2016-08-22 13:55:14',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0d15ce60040','Chrome','权限: 企业号用户消息被更新成功',5,'192.168.111.1','2016-08-22 13:55:26',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0d1768d0041','Chrome','权限: 企业号关注用户被更新成功',5,'192.168.111.1','2016-08-22 13:55:32',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0d198bd0042','Chrome','权限: 企业号通讯录被更新成功',5,'192.168.111.1','2016-08-22 13:55:41',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0d1a23b0043','Chrome','用户admin已退出',2,'192.168.111.1','2016-08-22 13:55:43',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0d1bda80044','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-08-22 13:55:50',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0d4cf820046','Chrome','权限: 公众号平台被添加成功',3,'192.168.111.1','2016-08-22 13:59:12',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0d4fe780047','Chrome','权限: 基础设置被更新成功',5,'192.168.111.1','2016-08-22 13:59:24',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0d5233a0048','Chrome','权限: 消息素材被更新成功',5,'192.168.111.1','2016-08-22 13:59:33',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0d53f380049','Chrome','权限: 微活动被更新成功',5,'192.168.111.1','2016-08-22 13:59:40',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0d55de4004a','Chrome','权限: 微信网站被更新成功',5,'192.168.111.1','2016-08-22 13:59:48',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0d59765004b','Chrome','权限: 微信公众号平台被更新成功',5,'192.168.111.1','2016-08-22 14:00:03',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0d5b8f5004c','Chrome','权限: 基础设置被更新成功',5,'192.168.111.1','2016-08-22 14:00:11',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0d5cf2c004d','Chrome','权限: 消息素材被更新成功',5,'192.168.111.1','2016-08-22 14:00:17',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0d5e57e004e','Chrome','权限: 微活动被更新成功',5,'192.168.111.1','2016-08-22 14:00:23',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0d5fad8004f','Chrome','权限: 微信网站被更新成功',5,'192.168.111.1','2016-08-22 14:00:28',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0d627650052','Chrome','用户admin已退出',2,'192.168.111.1','2016-08-22 14:00:40',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0d650dc0053','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-08-22 14:00:50',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0d6c2cf0054','Chrome','权限: 公众号平台被更新成功',5,'192.168.111.1','2016-08-22 14:01:19',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0d6fde40055','Chrome','用户admin已退出',2,'192.168.111.1','2016-08-22 14:01:34',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0d728c20056','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-08-22 14:01:45',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0d769e6006d','Chrome','用户admin已退出',2,'192.168.111.1','2016-08-22 14:02:02',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0c68f0156b0d781b0006e','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-08-22 14:02:08',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0d8e00156b0d944ec0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-08-22 14:04:04',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0d8e00156b0d9d2740001','Chrome','权限: 公众帐号管理被更新成功',5,'192.168.111.1','2016-08-22 14:04:40',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0d8e00156b0d9f0d80002','Chrome','权限: 关注欢迎语被更新成功',5,'192.168.111.1','2016-08-22 14:04:48',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0d8e00156b0d9f9c20003','Chrome','用户admin已退出',2,'192.168.111.1','2016-08-22 14:04:50',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0d8e00156b0da1ca70004','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-08-22 14:04:59',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0d8e00156b0da4fca0005','Chrome','权限: 关键字管理被更新成功',5,'192.168.111.1','2016-08-22 14:05:12',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0d8e00156b0da6f5b0006','Chrome','权限: 自定义菜单被更新成功',5,'192.168.111.1','2016-08-22 14:05:20',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0d8e00156b0da83ba0007','Chrome','权限: 文本消息被更新成功',5,'192.168.111.1','2016-08-22 14:05:25',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0d8e00156b0da97400008','Chrome','权限: 图文消息被更新成功',5,'192.168.111.1','2016-08-22 14:05:30',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0d8e00156b0daaa6f0009','Chrome','权限: 素材链接被更新成功',5,'192.168.111.1','2016-08-22 14:05:35',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0d8e00156b0dabdc3000a','Chrome','权限: 大转盘被更新成功',5,'192.168.111.1','2016-08-22 14:05:40',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0d8e00156b0dad102000b','Chrome','权限: 刮刮乐被更新成功',5,'192.168.111.1','2016-08-22 14:05:45',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0d8e00156b0dae386000c','Chrome','权限: 微相册被更新成功',5,'192.168.111.1','2016-08-22 14:05:50',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0d8e00156b0daf911000d','Chrome','权限: 用户消息被更新成功',5,'192.168.111.1','2016-08-22 14:05:55',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0d8e00156b0db10cd000e','Chrome','权限: 扩展接口被更新成功',5,'192.168.111.1','2016-08-22 14:06:01',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0d8e00156b0db2715000f','Chrome','权限: 广告管理被更新成功',5,'192.168.111.1','2016-08-22 14:06:07',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0d8e00156b0db3c270010','Chrome','权限: 栏目管理被更新成功',5,'192.168.111.1','2016-08-22 14:06:13',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0d8e00156b0db4fd00011','Chrome','权限: 文章管理被更新成功',5,'192.168.111.1','2016-08-22 14:06:18',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0d8e00156b0db62400012','Chrome','权限: 网站信息被更新成功',5,'192.168.111.1','2016-08-22 14:06:22',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0d8e00156b0db79920013','Chrome','权限: 网站模板被更新成功',5,'192.168.111.1','2016-08-22 14:06:28',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0d8e00156b0db83760014','Chrome','用户admin已退出',2,'192.168.111.1','2016-08-22 14:06:31',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0d8e00156b0db9fed0015','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-08-22 14:06:38',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0d8e00156b0dc504c0016','Chrome','权限: 企业号平台被更新成功',5,'192.168.111.1','2016-08-22 14:07:23',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0d8e00156b0dc746a0017','Chrome','权限: 统计查询被更新成功',5,'192.168.111.1','2016-08-22 14:07:32',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0d8e00156b0dc892d0018','Chrome','权限: 插件演示被更新成功',5,'192.168.111.1','2016-08-22 14:07:38',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0d8e00156b0dcaf760019','Chrome','权限: 系统监控被更新成功',5,'192.168.111.1','2016-08-22 14:07:48',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0d8e00156b0dce3ed0021','Chrome','用户admin已退出',2,'192.168.111.1','2016-08-22 14:08:01',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0d8e00156b0dd05a40022','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-08-22 14:08:10',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0d8e00156b0fb9e100023','Chrome','权限: 网站模板被删除成功',4,'192.168.111.1','2016-08-22 14:41:35',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0d8e00156b0fbe9970024','Chrome','用户admin已退出',2,'192.168.111.1','2016-08-22 14:41:54',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0d8e00156b0fc108a0025','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-08-22 14:42:04',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0d8e00156b1002b2b0027','Chrome','定时任务管理添加成功',3,'192.168.111.1','2016-08-22 14:46:33',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0d8e00156b10066af0028','Chrome','定时任务管理更新成功',5,'192.168.111.1','2016-08-22 14:46:48',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0d8e00156b100960e0029','Chrome','定时任务管理删除成功',4,'192.168.111.1','2016-08-22 14:47:00',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0d8e00156b10119f0002a','Chrome','定时任务管理更新成功',5,'192.168.111.1','2016-08-22 14:47:34',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0d8e00156b101fa24002b','Chrome','停止任务autoResetWeixinTokenCronTrigger',5,'192.168.111.1','2016-08-22 14:48:32',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0d8e00156b1020d94002c','Chrome','开启任务autoResetWeixinTokenCronTrigger',5,'192.168.111.1','2016-08-22 14:48:37',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b0d8e00156b10338d5002d','Chrome','停止任务autoResetWeixinTokenCronTrigger',5,'192.168.111.1','2016-08-22 14:49:53',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b12ab90156b12f9cab0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-08-22 15:38:22',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b12ab90156b1332a480001','Chrome','用户admin已退出',2,'192.168.111.1','2016-08-22 15:42:15',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b12ab90156b13521d90002','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-08-22 15:44:24',1,'4028d881436d514601436d5215ac0043'),('4028ef8156b143e40156b1446e0c0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.111.1','2016-08-22 16:01:07',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd5da2d015dd5daff650000','Firefox','用户: admin[信息部]登录成功',1,'127.0.1.1','2017-08-12 17:51:25',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd5da2d015dd5deaed80001','Firefox','微信公众帐号信息更新成功',5,'127.0.1.1','2017-08-12 17:55:27',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd5da2d015dd5e0945e0002','Firefox','权限: 大转盘被删除成功',4,'127.0.1.1','2017-08-12 17:57:31',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd5da2d015dd5e0c1850003','Firefox','权限: 刮刮乐被删除成功',4,'127.0.1.1','2017-08-12 17:57:42',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd5da2d015dd5e10dfd0004','Firefox','权限: 微相册被删除成功',4,'127.0.1.1','2017-08-12 17:58:02',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd5e751015dd5e922480000','Firefox','用户: admin[信息部]登录成功',1,'127.0.1.1','2017-08-12 18:06:51',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd61110015dd6117b0a0000','Firefox','用户: admin[信息部]登录成功',1,'127.0.1.1','2017-08-12 18:50:56',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd61110015dd611d54a0001','Firefox','微信公众帐号信息更新成功',5,'127.0.1.1','2017-08-12 18:51:19',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd61ed1015dd61f42c70000','Firefox','用户: admin[信息部]登录成功',1,'127.0.1.1','2017-08-12 19:05:59',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd61ed1015dd621076a0001','Firefox','微信公众帐号信息更新成功',5,'127.0.1.1','2017-08-12 19:07:55',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd61ed1015dd623f6a20002','Firefox','微信公众帐号信息更新成功',5,'127.0.1.1','2017-08-12 19:11:07',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd6c1a5015dd6c1d7d60000','Firefox','用户: admin[信息部]登录成功',1,'127.0.1.1','2017-08-12 22:03:34',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd6c1a5015dd6c25f220001','Firefox','修改关文本模板成功！',5,'127.0.1.1','2017-08-12 22:04:08',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd6c1a5015dd6c2997f0002','Firefox','修改关文本模板成功！',5,'127.0.1.1','2017-08-12 22:04:23',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd6c1a5015dd6c379640003','Firefox','微信公众帐号信息更新成功',5,'127.0.1.1','2017-08-12 22:05:21',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd6ccd4015dd6d3885b0000','Firefox','用户: admin[信息部]登录成功',1,'127.0.1.1','2017-08-12 22:22:53',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd6d4bf015dd6d5d5150000','Firefox','用户: admin[信息部]登录成功',1,'127.0.1.1','2017-08-12 22:25:24',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd6d4bf015dd6d82b200001','Firefox','删除信息数据成功',4,'127.0.1.1','2017-08-12 22:27:57',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd6d4bf015dd6d82b8c0002','Firefox','删除信息数据成功',4,'127.0.1.1','2017-08-12 22:27:57',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd6d4bf015dd6d82bfa0003','Firefox','删除信息数据成功',4,'127.0.1.1','2017-08-12 22:27:57',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd6d4bf015dd6d82c4c0004','Firefox','删除信息数据成功',4,'127.0.1.1','2017-08-12 22:27:57',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd6d4bf015dd6d82c990005','Firefox','删除信息数据成功',4,'127.0.1.1','2017-08-12 22:27:57',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd6d4bf015dd6d9a6fa0006','Firefox','微信单图消息删除成功',4,'127.0.1.1','2017-08-12 22:29:34',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd6d4bf015dd6db4fb1000a','Firefox','微信单图消息添加成功',3,'127.0.1.1','2017-08-12 22:31:23',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd6e285015dd6e2d0680000','Firefox','用户: admin[信息部]登录成功',1,'127.0.1.1','2017-08-12 22:39:35',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd6e285015dd6e62145001e','Firefox','用户：scott删除成功',4,'127.0.1.1','2017-08-12 22:43:12',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd6e285015dd6e62b55001f','Firefox','用户：cgy删除成功',4,'127.0.1.1','2017-08-12 22:43:14',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd6e285015dd6e638340020','Firefox','用户：cgspy删除成功',4,'127.0.1.1','2017-08-12 22:43:18',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd6e285015dd6e6478b0021','Firefox','用户：ceshi删除成功',4,'127.0.1.1','2017-08-12 22:43:22',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd6e285015dd6e64fe50022','Firefox','用户：tingfeng删除成功',4,'127.0.1.1','2017-08-12 22:43:24',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd6e285015dd6e69a8c0024','Firefox','用户: admin更新成功',5,'127.0.1.1','2017-08-12 22:43:43',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd6e285015dd71cfaa10025','Firefox','用户: admin[设计部]登录成功',1,'127.0.1.1','2017-08-12 23:43:06',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd6e285015dd71d348b0026','Firefox','修改关文本模板成功！',5,'127.0.1.1','2017-08-12 23:43:21',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd724f5015dd72a588f0000','Firefox','用户: admin[设计部]登录成功',1,'127.0.1.1','2017-08-12 23:57:42',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd724f5015dd72ace2f0001','Firefox','修改关文本模板成功！',5,'127.0.1.1','2017-08-12 23:58:13',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd72da7015dd72e1ced0000','Firefox','用户: admin[设计部]登录成功',1,'127.0.1.1','2017-08-13 00:01:49',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd72da7015dd72e48aa0001','Firefox','修改关文本模板成功！',5,'127.0.1.1','2017-08-13 00:02:01',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd73c21015dd73ed6440000','Firefox','用户: admin[设计部]登录成功',1,'127.0.1.1','2017-08-13 00:20:05',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd73c21015dd73f6cbe0001','Firefox','微信单图消息更新成功',5,'127.0.1.1','2017-08-13 00:20:44',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd7425a015dd74471d30000','Firefox','用户: admin[设计部]登录成功',1,'127.0.1.1','2017-08-13 00:26:13',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd99b08015dd99b3f930000','Firefox','用户: admin[设计部]登录成功',1,'127.0.1.1','2017-08-13 11:20:16',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd99b08015dd99ee8710001','Firefox','修改图文模板成功！',5,'127.0.1.1','2017-08-13 11:24:16',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd99b08015dd99fa9bf0002','Firefox','微信单图消息更新成功',5,'127.0.1.1','2017-08-13 11:25:05',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd99b08015dd99fd1750003','Firefox','微信单图消息更新成功',5,'127.0.1.1','2017-08-13 11:25:16',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd99b08015dd9e5981f0004','Firefox','用户: admin[设计部]登录成功',1,'127.0.1.1','2017-08-13 12:41:28',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd99b08015dd9e8093c0006','Firefox','修改关键字回复成功！',5,'127.0.1.1','2017-08-13 12:44:08',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd9eb55015dd9ecb12c0001','Firefox','用户: admin[设计部]登录成功',1,'127.0.1.1','2017-08-13 12:49:14',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd9eb55015dd9ed232c0002','Firefox','修改关键字回复成功！',5,'127.0.1.1','2017-08-13 12:49:43',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd9ee5e015dd9ef38390000','Firefox','用户: admin[设计部]登录成功',1,'127.0.1.1','2017-08-13 12:51:59',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd9ee5e015dd9ef8f8a0001','Firefox','修改关键字回复成功！',5,'127.0.1.1','2017-08-13 12:52:22',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd9ee5e015dd9f007680002','Firefox','删除信息数据成功！',4,'127.0.1.1','2017-08-13 12:52:52',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd9fac2015dd9fb786d0000','Firefox','用户: admin[设计部]登录成功',1,'127.0.1.1','2017-08-13 13:05:22',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd9fac2015dd9fbd7900001','Firefox','回复消息成功',5,'127.0.1.1','2017-08-13 13:05:46',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd9fac2015dd9fdc3de0002','Firefox','回复消息成功',5,'127.0.1.1','2017-08-13 13:07:52',1,'4028d881436d514601436d5215ac0043'),('ff8081815dd9fac2015dd9ffa7bc0003','Firefox','修改关键字回复成功！',5,'127.0.1.1','2017-08-13 13:09:56',1,'4028d881436d514601436d5215ac0043'),('ff8081815dda0428015dda052ba90002','Firefox','用户: admin[设计部]登录成功',1,'127.0.1.1','2017-08-13 13:15:58',1,'4028d881436d514601436d5215ac0043'),('ff8081815dda0428015dda0581af0003','Firefox','删除信息数据成功！',4,'127.0.1.1','2017-08-13 13:16:20',1,'4028d881436d514601436d5215ac0043'),('ff8081815dda0428015dda058b6e0004','Firefox','删除信息数据成功！',4,'127.0.1.1','2017-08-13 13:16:22',1,'4028d881436d514601436d5215ac0043'),('ff8081815dda0428015dda05956f0005','Firefox','删除信息数据成功！',4,'127.0.1.1','2017-08-13 13:16:25',1,'4028d881436d514601436d5215ac0043'),('ff8081815dda0428015dda05c2b50006','Firefox','删除信息数据成功！',4,'127.0.1.1','2017-08-13 13:16:36',1,'4028d881436d514601436d5215ac0043'),('ff8081815dda0428015dda0783920008','Firefox','修改关键字回复成功！',5,'127.0.1.1','2017-08-13 13:18:31',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddacbf8015ddacd38110000','Firefox','用户: admin[设计部]登录成功',1,'127.0.1.1','2017-08-13 16:54:28',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddacbf8015ddacdc3170001','Firefox','更新触发图文的菜单信息信息成功！',5,'127.0.1.1','2017-08-13 16:55:04',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddacbf8015ddace003a0002','Firefox','更新触发文本的菜单信息信息成功！',5,'127.0.1.1','2017-08-13 16:55:19',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddacbf8015ddace0e620003','Firefox','同步菜单信息数据失败!',4,'127.0.1.1','2017-08-13 16:55:23',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddadc98015ddadcfe840000','Firefox','用户: admin[设计部]登录成功',1,'127.0.1.1','2017-08-13 17:11:42',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddae14a015ddae2a5ee0000','Firefox','用户: admin[设计部]登录成功',1,'127.0.1.1','2017-08-13 17:17:53',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddae14a015ddae4a1b30001','Firefox','更新营销工具的菜单信息信息成功！',5,'127.0.1.1','2017-08-13 17:20:02',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddae14a015ddae5f8130002','Firefox','更新营销工具的菜单信息信息成功！',5,'127.0.1.1','2017-08-13 17:21:30',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddaeac4015ddaeb59e80000','Firefox','用户: admin[设计部]登录成功',1,'127.0.1.1','2017-08-13 17:27:23',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddb071f015ddb0de7f80000','Firefox','用户: admin[设计部]登录成功',1,'127.0.1.1','2017-08-13 18:05:07',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddb071f015ddb2fc61f0001','Chrome','用户: admin[设计部]登录成功',1,'127.0.1.1','2017-08-13 18:42:07',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddb071f015ddb30ba3f0004','Chrome','首页广告添加成功',3,'127.0.1.1','2017-08-13 18:43:10',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddb071f015ddb3476ee0008','Chrome','微信单图消息添加成功',3,'127.0.1.1','2017-08-13 18:47:14',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddb071f015ddb350b820009','Chrome','更新大转盘的菜单信息信息成功！',5,'127.0.1.1','2017-08-13 18:47:52',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddb071f015ddb47359b001e','Chrome','创建成功',3,'127.0.1.1','2017-08-13 19:07:43',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddb071f015ddb4a7a7a0020','Chrome','添加成功',3,'127.0.1.1','2017-08-13 19:11:17',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddb071f015ddb4b2db20022','Chrome','添加成功',3,'127.0.1.1','2017-08-13 19:12:03',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddb071f015ddb4c5dfa0024','Chrome','添加成功',3,'127.0.1.1','2017-08-13 19:13:21',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddb071f015ddb4cdeb20025','Chrome','更新成功',5,'127.0.1.1','2017-08-13 19:13:54',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddb071f015ddb4cf1230026','Chrome','更新成功',5,'127.0.1.1','2017-08-13 19:13:59',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddb071f015ddb4dbc400028','Chrome','添加成功',3,'127.0.1.1','2017-08-13 19:14:51',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddb071f015ddb4e20f3002a','Chrome','添加成功',3,'127.0.1.1','2017-08-13 19:15:16',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddb071f015ddb525a200036','Chrome','创建成功',3,'127.0.1.1','2017-08-13 19:19:53',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddb071f015ddb5437030038','Chrome','修改成功',5,'127.0.1.1','2017-08-13 19:21:55',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddb071f015ddb5520e40039','Chrome','修改成功',5,'127.0.1.1','2017-08-13 19:22:55',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddb071f015ddb57e38e003a','Chrome','修改成功',5,'127.0.1.1','2017-08-13 19:25:56',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddb071f015ddb58af66003c','Chrome','类型分组: 订单状态被添加成功',3,'127.0.1.1','2017-08-13 19:26:48',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddb071f015ddb58f753003e','Chrome','类型: 1被添加成功',3,'127.0.1.1','2017-08-13 19:27:07',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddb071f015ddb5997790040','Chrome','类型: 2被添加成功',3,'127.0.1.1','2017-08-13 19:27:48',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddb071f015ddb59d1c20041','Chrome','类型: 1被更新成功',5,'127.0.1.1','2017-08-13 19:28:03',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddb071f015ddb5a24920043','Chrome','类型: 3被添加成功',3,'127.0.1.1','2017-08-13 19:28:24',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddb071f015ddb5a853d0045','Chrome','类型: 4被添加成功',3,'127.0.1.1','2017-08-13 19:28:48',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddb071f015ddb5af3540047','Chrome','类型: 9被添加成功',3,'127.0.1.1','2017-08-13 19:29:17',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddb071f015ddb5b431b0049','Chrome','类型: 8被添加成功',3,'127.0.1.1','2017-08-13 19:29:37',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddb071f015ddb5b71ae004b','Chrome','类型: 10被添加成功',3,'127.0.1.1','2017-08-13 19:29:49',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddb071f015ddb5cafcb004c','Chrome','修改成功',5,'127.0.1.1','2017-08-13 19:31:10',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddbe807015ddbe8ab430000','Chrome','用户: admin[设计部]登录成功',1,'127.0.1.1','2017-08-13 22:04:04',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddbf045015ddbf0b1560000','Chrome','用户: admin[设计部]登录成功',1,'127.0.1.1','2017-08-13 22:12:50',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddbf5ba015ddbf621d90000','Chrome','用户: admin[设计部]登录成功',1,'127.0.1.1','2017-08-13 22:18:47',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddbfdb7015ddbfe280a0000','Chrome','用户: admin[设计部]登录成功',1,'127.0.1.1','2017-08-13 22:27:33',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddc0110015ddc01b21a0000','Chrome','用户: admin[设计部]登录成功',1,'127.0.1.1','2017-08-13 22:31:24',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddc1373015ddc1426910000','Chrome','用户: admin[设计部]登录成功',1,'127.0.1.1','2017-08-13 22:51:34',1,'4028d881436d514601436d5215ac0043'),('ff8081815ddc1373015ddc28dd320001','Chrome','删除成功',4,'127.0.1.1','2017-08-13 23:14:11',1,'4028d881436d514601436d5215ac0043');
/*!40000 ALTER TABLE `t_s_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_operation`
--

DROP TABLE IF EXISTS `t_s_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_operation` (
  `ID` varchar(32) NOT NULL,
  `operationcode` varchar(50) DEFAULT NULL,
  `operationicon` varchar(100) DEFAULT NULL,
  `operationname` varchar(50) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `functionid` varchar(32) DEFAULT NULL,
  `iconid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_pceuy41wr2fjbcilyc7mk3m1f` (`functionid`),
  KEY `FK_ny5de7922l39ta2pkhyspd5f` (`iconid`),
  CONSTRAINT `FK_ny5de7922l39ta2pkhyspd5f` FOREIGN KEY (`iconid`) REFERENCES `t_s_icon` (`ID`),
  CONSTRAINT `FK_pceuy41wr2fjbcilyc7mk3m1f` FOREIGN KEY (`functionid`) REFERENCES `t_s_function` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_operation`
--

LOCK TABLES `t_s_operation` WRITE;
/*!40000 ALTER TABLE `t_s_operation` DISABLE KEYS */;
INSERT INTO `t_s_operation` VALUES ('402881e44648134a0146482093940049','add',NULL,'新增',NULL,'4028d881436d514601436d52154d002d','4028d881436d514601436d5214650000'),('402881e44648134a0146482152c2004b','edit',NULL,'编辑',NULL,'4028d881436d514601436d52154d002d','4028d881436d514601436d5214650000'),('4028d881436d514601436d5216730069','add',NULL,'录入',NULL,'4028d881436d514601436d521549002c','4028d881436d514601436d5214650000'),('4028d881436d514601436d521678006a','edit',NULL,'编辑',NULL,'4028d881436d514601436d521549002c','4028d881436d514601436d5214650000'),('4028d881436d514601436d52167c006b','del',NULL,'删除',NULL,'4028d881436d514601436d521549002c','4028d881436d514601436d5214650000'),('4028d881436d514601436d52167f006c','szqm',NULL,'审核',NULL,'4028d881436d514601436d521549002c','4028d881436d514601436d5214650000');
/*!40000 ALTER TABLE `t_s_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_opintemplate`
--

DROP TABLE IF EXISTS `t_s_opintemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_opintemplate` (
  `ID` varchar(32) NOT NULL,
  `descript` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_opintemplate`
--

LOCK TABLES `t_s_opintemplate` WRITE;
/*!40000 ALTER TABLE `t_s_opintemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_s_opintemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_role`
--

DROP TABLE IF EXISTS `t_s_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_role` (
  `ID` varchar(32) NOT NULL,
  `rolecode` varchar(10) DEFAULT NULL,
  `rolename` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_role`
--

LOCK TABLES `t_s_role` WRITE;
/*!40000 ALTER TABLE `t_s_role` DISABLE KEYS */;
INSERT INTO `t_s_role` VALUES ('402881e44648134a014648163a6d0001','ceshi','测试角色'),('4028d881436d514601436d52159c0041','admin','管理员'),('4028d881436d514601436d5215a00042','manager','普通用户');
/*!40000 ALTER TABLE `t_s_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_role_function`
--

DROP TABLE IF EXISTS `t_s_role_function`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_role_function` (
  `ID` varchar(32) NOT NULL,
  `operation` varchar(100) DEFAULT NULL,
  `functionid` varchar(32) DEFAULT NULL,
  `roleid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_fvsillj2cxyk5thnuu625urab` (`functionid`),
  KEY `FK_9dww3p4w8jwvlrgwhpitsbfif` (`roleid`),
  CONSTRAINT `FK_9dww3p4w8jwvlrgwhpitsbfif` FOREIGN KEY (`roleid`) REFERENCES `t_s_role` (`ID`),
  CONSTRAINT `FK_fvsillj2cxyk5thnuu625urab` FOREIGN KEY (`functionid`) REFERENCES `t_s_function` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_role_function`
--

LOCK TABLES `t_s_role_function` WRITE;
/*!40000 ALTER TABLE `t_s_role_function` DISABLE KEYS */;
INSERT INTO `t_s_role_function` VALUES ('402880f259062342015906318a660021',NULL,'402880f2590623420159062ea59f0018','4028d881436d514601436d52159c0041'),('402880f259062342015906318a690022',NULL,'402880f25906234201590626c28e0008','4028d881436d514601436d52159c0041'),('402880f259062342015906318a690023',NULL,'402880f25906234201590626596e0004','4028d881436d514601436d52159c0041'),('402880f259062342015906318a690024',NULL,'402880f259062342015906312d27001f','4028d881436d514601436d52159c0041'),('402880f259062342015906318a690025',NULL,'402880f259062342015906288369000f','4028d881436d514601436d52159c0041'),('402880f259062342015906318a690026',NULL,'402880f2590623420159062f3b4a001a','4028d881436d514601436d52159c0041'),('402880f259062342015906318a690027',NULL,'402880f2590623420159062581630001','4028d881436d514601436d52159c0041'),('402880f259062342015906318a690028',NULL,'402880f25906234201590630a5cc001c','4028d881436d514601436d52159c0041'),('402880f259062342015906318a690029',NULL,'402880f25906234201590627ef06000c','4028d881436d514601436d52159c0041'),('402880f259062342015906318a69002a',NULL,'402880f25906234201590628d62c0011','4028d881436d514601436d52159c0041'),('402880f259062342015906318a6a002b',NULL,'402880f2590623420159062692fc0006','4028d881436d514601436d52159c0041'),('402880f259062342015906318a6a002c',NULL,'402880f2590623420159062783c4000a','4028d881436d514601436d52159c0041'),('402880f259062342015906318a6a002e',NULL,'402880f2590623420159062d921c0013','4028d881436d514601436d52159c0041'),('402880f259062342015906318a6a002f',NULL,'402880f2590623420159062df7fe0016','4028d881436d514601436d52159c0041'),('40288186590896200159089cf152000a',NULL,'40288186590896200159089c30620004','4028d881436d514601436d52159c0041'),('40288186590896200159089cf155000b',NULL,'40288186590896200159089c8a360006','4028d881436d514601436d52159c0041'),('40288186590896200159089cf155000c',NULL,'40288186590896200159089bc6510002','4028d881436d514601436d52159c0041'),('40288186590896200159089ef47e0012',NULL,'40288186590896200159089ccf5b0008','4028d881436d514601436d52159c0041'),('402889ff4728a293014728b3fab70021',NULL,'4028d881436d514601436d52151f0020','4028d881436d514601436d52159c0041'),('4028d881436d514601436d521699006f',NULL,'4028d881436d514601436d52150a0019','4028d881436d514601436d52159c0041'),('4028d881436d514601436d52169e0070',NULL,'4028d881436d514601436d52150a0019','4028d881436d514601436d5215a00042'),('4028d881436d514601436d5216bb0077',NULL,'4028d881436d514601436d521513001d','4028d881436d514601436d52159c0041'),('4028d881436d514601436d5216bf0078',NULL,'4028d881436d514601436d521513001d','4028d881436d514601436d5215a00042'),('4028d881436d514601436d5216c30079',NULL,'4028d881436d514601436d521516001e','4028d881436d514601436d52159c0041'),('4028d881436d514601436d5216c7007a',NULL,'4028d881436d514601436d521516001e','4028d881436d514601436d5215a00042'),('4028d881436d514601436d5216ca007b',NULL,'4028d881436d514601436d52151a001f','4028d881436d514601436d52159c0041'),('4028d881436d514601436d5216cc007c',NULL,'4028d881436d514601436d52151a001f','4028d881436d514601436d5215a00042'),('4028d881436d514601436d5216d4007e',NULL,'4028d881436d514601436d52151f0020','4028d881436d514601436d5215a00042'),('4028d881436d514601436d5216d7007f',NULL,'4028d881436d514601436d5215220021','4028d881436d514601436d52159c0041'),('4028d881436d514601436d5216dc0080',NULL,'4028d881436d514601436d5215220021','4028d881436d514601436d5215a00042'),('4028d881436d514601436d5216eb0084',NULL,'4028d881436d514601436d5215260023','4028d881436d514601436d5215a00042'),('4028d881474489d7014744985904000d',NULL,'4028d881436d514601436d5884be019d','402881e44648134a014648163a6d0001'),('4028d881474489d70147449859040011',NULL,'402881e446677b700146677d7b600001','402881e44648134a014648163a6d0001'),('4028d881474489d70147449859040012',NULL,'297e7eb6469a4a8901469a54eff60006','402881e44648134a014648163a6d0001'),('4028d881474489d70147449859040013',NULL,'4028d881436d514601436d5618400191','402881e44648134a014648163a6d0001'),('4028d881474489d70147449859040014',NULL,'402881e545f5dd1a0145f5f32cf00005','402881e44648134a014648163a6d0001'),('4028d881474489d70147449859040015',NULL,'402881e545f5f4780145f61198810004','402881e44648134a014648163a6d0001'),('4028d881474489d70147449859040017',NULL,'402881e44695183a0146951ed79e0008','402881e44648134a014648163a6d0001'),('4028d881474489d70147449859040018',NULL,'402881e8460d7e5301460d81c7a60001','402881e44648134a014648163a6d0001'),('4028d881474489d7014744985904001b',NULL,'4028d881436d514601436d52c2fb0181','402881e44648134a014648163a6d0001'),('4028d881474489d7014744985904001c',NULL,'4028d881436d514601436d5af95501b1','402881e44648134a014648163a6d0001'),('4028d881474489d7014744985904001d',NULL,'402881e545f5dd1a0145f5de9bb60001','402881e44648134a014648163a6d0001'),('4028d881474489d7014744985904001f',NULL,'402881e44695183a0146951af2b70004','402881e44648134a014648163a6d0001'),('4028d881474489d70147449859140021',NULL,'402881e44695183a0146951b66050006','402881e44648134a014648163a6d0001'),('4028ef8156b0c68f0156b0c9ace8000b',NULL,'4028ef8156b0c68f0156b0c920440005','4028d881436d514601436d52159c0041'),('4028ef8156b0c68f0156b0c9acec000d',NULL,'4028ef8156b0c68f0156b0c8c0c60003','4028d881436d514601436d52159c0041'),('4028ef8156b0c68f0156b0c9acec000e',NULL,'4028ef8156b0c68f0156b0c956120007','4028d881436d514601436d52159c0041'),('4028ef8156b0c68f0156b0ce03920028',NULL,'4028ef8156b0c68f0156b0ca47730011','4028d881436d514601436d52159c0041'),('4028ef8156b0c68f0156b0ce03940029',NULL,'4028ef8156b0c68f0156b0cc5c280021','4028d881436d514601436d52159c0041'),('4028ef8156b0c68f0156b0ce0394002a',NULL,'4028ef8156b0c68f0156b0cc0dc7001f','4028d881436d514601436d52159c0041'),('4028ef8156b0c68f0156b0ce0394002b',NULL,'4028ef8156b0c68f0156b0ca69760013','4028d881436d514601436d52159c0041'),('4028ef8156b0c68f0156b0ce0394002c',NULL,'4028ef8156b0c68f0156b0ccab2e0023','4028d881436d514601436d52159c0041'),('4028ef8156b0c68f0156b0ce0394002d',NULL,'4028ef8156b0c68f0156b0cbdb2f001d','4028d881436d514601436d52159c0041'),('4028ef8156b0c68f0156b0ce0394002e',NULL,'4028ef8156b0c68f0156b0ccefde0025','4028d881436d514601436d52159c0041'),('4028ef8156b0c68f0156b0ce0394002f',NULL,'4028ef8156b0c68f0156b0ca9d800015','4028d881436d514601436d52159c0041'),('4028ef8156b0c68f0156b0ce03950030',NULL,'4028ef8156b0c68f0156b0cb5675001b','4028d881436d514601436d52159c0041'),('4028ef8156b0c68f0156b0ce03950031',NULL,'4028ef8156b0c68f0156b0cb1d7c0019','4028d881436d514601436d52159c0041'),('4028ef8156b0c68f0156b0ce03950032',NULL,'4028ef8156b0c68f0156b0cadace0017','4028d881436d514601436d52159c0041'),('4028ef8156b0c68f0156b0d75fc90057',NULL,'4028948151dc6b1f0151dc6fdf05000c','4028d881436d514601436d52159c0041'),('4028ef8156b0c68f0156b0d75fcb0059',NULL,'4028d881436d514601436d5618400191','4028d881436d514601436d52159c0041'),('4028ef8156b0c68f0156b0d75fcb005a',NULL,'402881e545f5dd1a0145f5f32cf00005','4028d881436d514601436d52159c0041'),('4028ef8156b0c68f0156b0d75fcb005b',NULL,'402881e8460d7e5301460d81c7a60001','4028d881436d514601436d52159c0041'),('4028ef8156b0c68f0156b0d75fcb005c',NULL,'4028d881436d514601436d52c2fb0181','4028d881436d514601436d52159c0041'),('4028ef8156b0c68f0156b0d75fcc005d',NULL,'4028d881436d514601436d5af95501b1','4028d881436d514601436d52159c0041'),('4028ef8156b0c68f0156b0d75fcc005e',NULL,'4028ef8156b0c68f0156b0d4cf390045','4028d881436d514601436d52159c0041'),('4028ef8156b0c68f0156b0d75fcc005f',NULL,'402881e44695183a0146951b66050006','4028d881436d514601436d52159c0041'),('4028ef8156b0c68f0156b0d75fcc0061',NULL,'4028948151d756d80151d758c25e0001','4028d881436d514601436d52159c0041'),('4028ef8156b0c68f0156b0d75fcc0062',NULL,'4028d881436d514601436d5884be019d','4028d881436d514601436d52159c0041'),('4028ef8156b0c68f0156b0d75fcc0065',NULL,'402881e446677b700146677d7b600001','4028d881436d514601436d52159c0041'),('4028ef8156b0c68f0156b0d75fcc0066',NULL,'297e7eb6469a4a8901469a54eff60006','4028d881436d514601436d52159c0041'),('4028ef8156b0c68f0156b0d75fcc0067',NULL,'402889f64747048401474706d2a50001','4028d881436d514601436d52159c0041'),('4028ef8156b0c68f0156b0d75fcd0068',NULL,'402881e545f5f4780145f61198810004','4028d881436d514601436d52159c0041'),('4028ef8156b0c68f0156b0d75fcd006a',NULL,'402881e44695183a0146951ed79e0008','4028d881436d514601436d52159c0041'),('4028ef8156b0c68f0156b0d75fcd006b',NULL,'402881e545f5dd1a0145f5de9bb60001','4028d881436d514601436d52159c0041'),('4028ef8156b0c68f0156b0d75fde006c',NULL,'402881e44695183a0146951af2b70004','4028d881436d514601436d52159c0041'),('4028ef8156b0d8e00156b0dcdd6e001a',NULL,'4028d881436d514601436d52153b0029','4028d881436d514601436d52159c0041'),('4028ef8156b0d8e00156b0dcdd71001b',NULL,'4028d881436d514601436d52150f001c','4028d881436d514601436d52159c0041'),('4028ef8156b0d8e00156b0dcdd71001c',NULL,'4028d881436d514601436d5215380028','4028d881436d514601436d52159c0041'),('4028ef8156b0d8e00156b0dcdd71001d',NULL,'4028d881436d514601436d521540002a','4028d881436d514601436d52159c0041'),('4028ef8156b0d8e00156b0dcdd71001e',NULL,'4028d881436d514601436d521593003f','4028d881436d514601436d52159c0041'),('4028ef8156b0d8e00156b0dcdd72001f',NULL,'4028d881436d514601436d52152c0025','4028d881436d514601436d52159c0041'),('4028ef8156b0d8e00156b0dcdd720020',NULL,'4028d881436d514601436d52150b001a','4028d881436d514601436d52159c0041'),('ff8081815dd6e285015dd6e5b8f30001',NULL,'4028d881436d514601436d52155a0030','4028d881436d514601436d52159c0041'),('ff8081815dd6e285015dd6e5b8f70002',NULL,'4028d881436d514601436d5215730036','4028d881436d514601436d52159c0041'),('ff8081815dd6e285015dd6e5b8f80003',NULL,'4028d881436d514601436d521587003c','4028d881436d514601436d52159c0041'),('ff8081815dd6e285015dd6e5b8f80004',NULL,'4028d881436d514601436d521552002e','4028d881436d514601436d52159c0041'),('ff8081815dd6e285015dd6e5b8f80005',NULL,'4028ef8156b0c68f0156b0c88eb10001','4028d881436d514601436d52159c0041'),('ff8081815dd6e285015dd6e5b8f80006',NULL,'4028d881436d514601436d521545002b','4028d881436d514601436d52159c0041'),('ff8081815dd6e285015dd6e5b8f80007',NULL,'4028d881436d514601436d5215340027','4028d881436d514601436d52159c0041'),('ff8081815dd6e285015dd6e5b8f80008',NULL,'4028d881436d514601436d521557002f','4028d881436d514601436d52159c0041'),('ff8081815dd6e285015dd6e5b8f80009',NULL,'4028d881436d514601436d52150d001b','4028d881436d514601436d52159c0041'),('ff8081815dd6e285015dd6e5b8f8000a',NULL,'4028d881436d514601436d52158f003e','4028d881436d514601436d52159c0041'),('ff8081815dd6e285015dd6e5b8f8000b',NULL,'4028d881436d514601436d5449330189','4028d881436d514601436d52159c0041'),('ff8081815dd6e285015dd6e5b8f8000c',NULL,'4028d881436d514601436d521584003b','4028d881436d514601436d52159c0041'),('ff8081815dd6e285015dd6e5b8f9000d',NULL,'4028d881436d514601436d5215990040','4028d881436d514601436d52159c0041'),('ff8081815dd6e285015dd6e5b8f9000e',NULL,'4028d881436d514601436d521549002c','4028d881436d514601436d52159c0041'),('ff8081815dd6e285015dd6e5b8f9000f',NULL,'4028d881436d514601436d52154d002d','4028d881436d514601436d52159c0041'),('ff8081815dd6e285015dd6e5b8f90010',NULL,'4028d881436d514601436d5215300026','4028d881436d514601436d52159c0041'),('ff8081815dd6e285015dd6e5b8f90011',NULL,'4028d881436d514601436d52157e0039','4028d881436d514601436d52159c0041'),('ff8081815dd6e285015dd6e5b8f90012',NULL,'4028d881436d514601436d52156b0034','4028d881436d514601436d52159c0041'),('ff8081815dd6e285015dd6e5b8f90013',NULL,'4028d881436d514601436d521581003a','4028d881436d514601436d52159c0041'),('ff8081815dd6e285015dd6e5b8f90014',NULL,'402880e6477d61da01477d71430f001a','4028d881436d514601436d52159c0041'),('ff8081815dd6e285015dd6e5b8f90015',NULL,'4028d881436d514601436d52158a003d','4028d881436d514601436d52159c0041'),('ff8081815dd6e285015dd6e5b9620016',NULL,'4028d881436d514601436d52155f0031','4028d881436d514601436d52159c0041'),('ff8081815dd6e285015dd6e5b9620017',NULL,'402880f25906117601590614ca94000a','4028d881436d514601436d52159c0041'),('ff8081815dd6e285015dd6e5b9620018',NULL,'4028d881436d514601436d52156f0035','4028d881436d514601436d52159c0041'),('ff8081815dd6e285015dd6e5b9620019',NULL,'4028d881436d514601436d5215770037','4028d881436d514601436d52159c0041'),('ff8081815dd6e285015dd6e5b962001a',NULL,'4028d881436d514601436d5215670033','4028d881436d514601436d52159c0041'),('ff8081815dd6e285015dd6e5b962001b',NULL,'4028d881436d514601436d5215070018','4028d881436d514601436d52159c0041'),('ff8081815dd6e285015dd6e5b962001c',NULL,'4028d881436d514601436d5215640032','4028d881436d514601436d52159c0041'),('ff8081815dd6e285015dd6e5b962001d',NULL,'4028d881436d514601436d52157a0038','4028d881436d514601436d52159c0041');
/*!40000 ALTER TABLE `t_s_role_function` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_role_user`
--

DROP TABLE IF EXISTS `t_s_role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_role_user` (
  `ID` varchar(32) NOT NULL,
  `roleid` varchar(32) DEFAULT NULL,
  `userid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_n2ucxeorvpjy7qhnmuem01kbx` (`roleid`),
  KEY `FK_d4qb5xld2pfb0bkjx9iwtolda` (`userid`),
  CONSTRAINT `FK_d4qb5xld2pfb0bkjx9iwtolda` FOREIGN KEY (`userid`) REFERENCES `t_s_user` (`id`),
  CONSTRAINT `FK_n2ucxeorvpjy7qhnmuem01kbx` FOREIGN KEY (`roleid`) REFERENCES `t_s_role` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_role_user`
--

LOCK TABLES `t_s_role_user` WRITE;
/*!40000 ALTER TABLE `t_s_role_user` DISABLE KEYS */;
INSERT INTO `t_s_role_user` VALUES ('ff8081815dd6e285015dd6e69a4b0023','4028d881436d514601436d52159c0041','4028d881436d514601436d5215ac0043');
/*!40000 ALTER TABLE `t_s_role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_student`
--

DROP TABLE IF EXISTS `t_s_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_student` (
  `ID` varchar(32) NOT NULL,
  `classname` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_student`
--

LOCK TABLES `t_s_student` WRITE;
/*!40000 ALTER TABLE `t_s_student` DISABLE KEYS */;
INSERT INTO `t_s_student` VALUES ('4028d881436d514601436d521ae80165','1班','张三','f'),('4028d881436d514601436d521aea0166','1班','李四','f'),('4028d881436d514601436d521aeb0167','1班','王五','m'),('4028d881436d514601436d521aec0168','1班','赵六','f'),('4028d881436d514601436d521aec0169','2班','张三','f'),('4028d881436d514601436d521aee016a','2班','李四','f'),('4028d881436d514601436d521af0016b','2班','王五','m'),('4028d881436d514601436d521af1016c','2班','赵六','f'),('4028d881436d514601436d521af3016d','3班','张三','f'),('4028d881436d514601436d521af4016e','3班','李四','f'),('4028d881436d514601436d521af7016f','3班','王五','m'),('4028d881436d514601436d521afa0170','3班','李四','f'),('4028d881436d514601436d521afe0171','3班','王五','m'),('4028d881436d514601436d521aff0172','3班','赵六','f'),('4028d881436d514601436d521b000173','4班','张三','f'),('4028d881436d514601436d521b010174','4班','李四','f'),('4028d881436d514601436d521b030175','4班','王五','m'),('4028d881436d514601436d521b040176','4班','赵六','f'),('4028d881436d514601436d521b040177','5班','张三','m'),('4028d881436d514601436d521b050178','5班','李四','f'),('4028d881436d514601436d521b060179','5班','王五','m'),('4028d881436d514601436d521b07017a','5班','赵六','m'),('4028d881436d514601436d521b08017b','5班','赵六','m'),('4028d881436d514601436d521b09017c','5班','李四','f'),('4028d881436d514601436d521b0a017d','5班','王五','m'),('4028d881436d514601436d521b0b017e','5班','赵六','m'),('4028d881436d514601436d521b0c017f','5班','赵六','m');
/*!40000 ALTER TABLE `t_s_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_territory`
--

DROP TABLE IF EXISTS `t_s_territory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_territory` (
  `ID` varchar(32) NOT NULL,
  `territorycode` varchar(10) NOT NULL,
  `territorylevel` smallint(6) NOT NULL,
  `territoryname` varchar(50) NOT NULL,
  `territory_pinyin` varchar(40) DEFAULT NULL,
  `territorysort` varchar(3) NOT NULL,
  `x_wgs84` double NOT NULL,
  `y_wgs84` double NOT NULL,
  `territoryparentid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_territory`
--

LOCK TABLES `t_s_territory` WRITE;
/*!40000 ALTER TABLE `t_s_territory` DISABLE KEYS */;
INSERT INTO `t_s_territory` VALUES ('1','100',1,'全国','qg','0',106.258754,38.471318,'0'),('10','00000016',2,'河南省','HNS','0',113.687228,34.76819,'1'),('100','371300',3,'临沂市','LYS','0',118.356448,35.104672,'18'),('1000','370903',4,'岱岳区','DYQ','0',117.041582,36.18799,'96'),('1001','370921',4,'宁阳县','NYX','0',116.805797,35.758787,'96'),('1002','370923',4,'东平县','DPX','0',116.470304,35.937102,'96'),('1003','370982',4,'新泰市','XTS','0',117.767953,35.909032,'96'),('1004','370983',4,'肥城市','FCS','0',116.768358,36.182571,'96'),('1005','371002',4,'环翠区','HCQ','0',122.123444,37.501991,'97'),('1006','371081',4,'文登市','WDS','0',122.058128,37.1939129,'97'),('1007','371082',4,'荣成市','RCS','0',122.486676,37.165249,'97'),('1008','371083',4,'乳山市','RSS','0',121.539764,36.919816,'97'),('1009','371102',4,'东港区','DGQ','0',119.462228,35.425475,'98'),('101','371400',3,'德州市','DZS','0',116.357465,37.434093,'18'),('1010','371103',4,'岚山区','LSQ','0',119.318813,35.121816,'98'),('1011','371121',4,'五莲县','WLX','0',119.208744,35.750095,'98'),('1012','371122',4,'莒县','JX','0',118.837131,35.579868,'98'),('1013','371202',4,'莱城区','LCQ','0',117.659864,36.203208,'99'),('1014','371203',4,'钢城区','GCQ','0',117.811355,36.058572,'99'),('1015','371302',4,'兰山区','LSQ','0',118.347707,35.051729,'100'),('1016','371311',4,'罗庄区','LZQ','0',118.284786,34.996741,'100'),('1017','371312',4,'河东区','HDQ','0',118.402893,35.089917,'100'),('1018','371321',4,'沂南县','YNX','0',118.465213,35.549976,'100'),('1019','371322',4,'郯城县','TCX','0',118.367263,34.613557,'100'),('102','371500',3,'聊城市','LCS','0',115.985371,36.4567039,'18'),('1020','371323',4,'沂水县','YSX','0',118.627918,35.79045,'100'),('1021','371324',4,'苍山县','CSX','0',118.07065,34.857149,'100'),('1022','371325',4,'费县','FX','0',117.977868,35.26634,'100'),('1023','371326',4,'平邑县','PYX','0',117.640352,35.5059429,'100'),('1024','371327',4,'莒南县','JNX','0',118.835163,35.174846,'100'),('1025','371328',4,'蒙阴县','MYX','0',117.945085,35.710032,'100'),('1026','371329',4,'临沭县','LSX','0',118.650782,34.919852,'100'),('1027','371402',4,'德城区','DCQ','0',116.299434,37.451272,'101'),('1028','371421',4,'陵县','LX','0',116.576176,37.33579,'101'),('1029','371422',4,'宁津县','NJX','0',116.800324,37.652329,'101'),('103','371600',3,'滨州市','BZS','0',117.970703,37.38199,'18'),('1030','371423',4,'庆云县','QYX','0',117.385123,37.77539,'101'),('1031','371424',4,'临邑县','LYX','0',116.86665,37.189864,'101'),('1032','371425',4,'齐河县','QHX','0',116.758917,36.795011,'101'),('1033','371426',4,'平原县','PYX','0',116.434187,37.165419,'101'),('1034','371427',4,'夏津县','XJX','0',116.001726,36.948371,'101'),('1035','371428',4,'武城县','WCX','0',116.069302,37.213311,'101'),('1036','371481',4,'乐陵市','LLS','0',117.231935,37.729907,'101'),('1037','371482',4,'禹城市','YCS','0',116.638387,36.934259,'101'),('1038','371502',4,'东昌府区','DCFQ','0',115.988484,36.434697,'102'),('1039','371521',4,'阳谷县','YGX','0',115.79182,36.114392,'102'),('104','371700',3,'菏泽市','HZS','0',115.480656,35.23375,'18'),('1040','371522',4,'莘县','SX','0',115.671191,36.233599,'102'),('1041','371523',4,'茌平县','CPX','0',116.255282,36.5807639,'102'),('1042','371524',4,'东阿县','DAX','0',116.24758,36.334917,'102'),('1043','371525',4,'冠县','GX','0',115.44274,36.484009,'102'),('1044','371526',4,'高唐县','GTX','0',116.231478,36.866062,'102'),('1045','371581',4,'临清市','LQS','0',115.704881,36.838277,'102'),('1046','371602',4,'滨城区','BCQ','0',118.019146,37.43206,'103'),('1047','371621',4,'惠民县','HMX','0',117.510451,37.489769,'103'),('1048','371622',4,'阳信县','YXX','0',117.578262,37.641106,'103'),('1049','371623',4,'无棣县','WDX','0',117.625696,37.770261,'103'),('1050','371624',4,'沾化县','ZHX','0',118.132199,37.698281,'103'),('1051','371625',4,'博兴县','BXX','0',118.131815,37.150226,'103'),('1052','371626',4,'邹平县','ZPX','0',117.743109,36.862989,'103'),('1053','371702',4,'牡丹区','MDQ','0',115.417827,35.252512,'104'),('1054','371721',4,'曹县','CX','0',115.542328,34.825508,'104'),('1055','371722',4,'单县','DX','0',116.107428,34.778808,'104'),('1056','371723',4,'成武县','CWX','0',115.889765,34.952459,'104'),('1057','371724',4,'巨野县','JYX','0',116.094674,35.396261,'104'),('1058','371725',4,'郓城县','YCX','0',115.943613,35.599758,'104'),('1059','371726',4,'鄄城县','JCX','0',115.510193,35.563408,'104'),('1060','371727',4,'定陶县','DTX','0',115.573094,35.071,'104'),('1061','371728',4,'东明县','DMX','0',115.089905,35.289368,'104'),('11','00000008',2,'黑龙江省','HLJS','0',126.662507,45.7421699,'1'),('12','20000000',2,'上海市','SHS','0',121.473704,31.230393,'1'),('13','00000010',2,'江苏省','JSS','0',118.763232,32.061707,'1'),('14','00000011',2,'浙江省','ZJS','0',120.153676,30.26586,'1'),('15','00000012',2,'安徽省','AHS','0',117.284923,31.861184,'1'),('16','00000013',2,'福建省','FJS','0',119.296506,26.099933,'1'),('17','00000014',2,'江西省','JXS','0',115.909175,28.674424,'1'),('1739','360102',4,'东湖区','DHQ','0',115.89901,28.6849159,'184'),('1740','360103',4,'西湖区','XHQ','0',115.877287,28.656887,'184'),('1741','360104',4,'青云谱区','QYPQ','0',115.925749,28.621169,'184'),('1742','360105',4,'湾里区','WLQ','0',115.730994,28.714869,'184'),('1743','360111',4,'青山湖区','QSHQ','0',115.962144,28.682985,'184'),('1744','360121',4,'南昌县','NCX','0',115.944162,28.545459,'184'),('1745','360122',4,'新建县','XJX','0',115.815233,28.692437,'184'),('1746','360123',4,'安义县','AYX','0',115.549199,28.844429,'184'),('1747','360124',4,'进贤县','JXX','0',116.240924,28.376918,'184'),('1748','360202',4,'昌江区','CJQ','0',117.183688,29.27342,'185'),('1749','360203',4,'珠山区','ZSQ','0',117.202336,29.301272,'185'),('1750','360222',4,'浮梁县','FLX','0',117.215061,29.351739,'185'),('1751','360281',4,'乐平市','LPS','0',117.129169,28.961902,'185'),('1752','360302',4,'安源区','AYQ','0',113.87073,27.615202,'186'),('1753','360313',4,'湘东区','XDQ','0',113.733059,27.640075,'186'),('1754','360321',4,'莲花县','LHX','0',113.961465,27.127669,'186'),('1755','360322',4,'上栗县','SLX','0',113.795219,27.880567,'186'),('1756','360323',4,'芦溪县','LXX','0',114.029595,27.631145,'186'),('1757','360402',4,'庐山区','LSQ','0',115.989212,29.671775,'187'),('1758','360403',4,'浔阳区','XYQ','0',115.990399,29.72746,'187'),('1759','360421',4,'九江县','JJX','0',115.911314,29.608456,'187'),('1760','360423',4,'武宁县','WNX','0',115.100579,29.256323,'187'),('1761','360424',4,'修水县','XSX','0',114.547356,29.025707,'187'),('1762','360425',4,'永修县','YXX','0',115.809111,29.021824,'187'),('1763','360426',4,'德安县','DAX','0',115.756883,29.314348,'187'),('1764','360427',4,'星子县','XZX','0',116.044893,29.448037,'187'),('1765','360428',4,'都昌县','DCX','0',116.204099,29.273194,'187'),('1766','360429',4,'湖口县','HKX','0',116.220266,29.73944,'187'),('1767','360430',4,'彭泽县','PZX','0',116.549359,29.896061,'187'),('1768','360481',4,'瑞昌市','RCS','0',115.681504,29.673795,'187'),('1769','360499',4,'共青城','GQC','0',115.774,29.2417,'187'),('1770','360502',4,'渝水区','YSQ','0',114.944574,27.80038,'188'),('1771','360521',4,'分宜县','FYX','0',114.692039,27.814628,'188'),('1772','360602',4,'月湖区','YHQ','0',117.036676,28.238797,'189'),('1773','360622',4,'余江县','YJX','0',116.818871,28.204174,'189'),('1774','360681',4,'贵溪市','GXS','0',117.245497,28.292519,'189'),('1775','360702',4,'章贡区','ZGQ','0',114.941826,25.862827,'190'),('1776','360721',4,'赣县','GX','0',115.011561,25.860691,'190'),('1777','360722',4,'信丰县','XFX','0',114.922963,25.386278,'190'),('1778','360723',4,'大余县','DYX','0',114.362094,25.401283,'190'),('1779','360724',4,'上犹县','SYX','0',114.551371,25.784978,'190'),('1780','360725',4,'崇义县','CYX','0',114.308273,25.681879,'190'),('1781','360726',4,'安远县','AYX','0',115.393922,25.136925,'190'),('1782','360727',4,'龙南县','LNX','0',114.789811,24.911107,'190'),('1783','360728',4,'定南县','DNX','0',115.027845,24.78441,'190'),('1784','360729',4,'全南县','QNX','0',114.530125,24.742401,'190'),('1785','360730',4,'宁都县','NDX','0',116.009472,26.470116,'190'),('1786','360731',4,'于都县','YDX','0',115.41551,25.952066,'190'),('1787','360732',4,'兴国县','XGX','0',115.36319,26.337937,'190'),('1788','360733',4,'会昌县','HCX','0',115.786057,25.600272,'190'),('1789','360734',4,'寻乌县','YWX','0',115.646525,24.963322,'190'),('1790','360735',4,'石城县','SCX','0',116.354201,26.32686,'190'),('1791','360781',4,'瑞金市','RJS','0',116.02713,25.885561,'190'),('1792','360782',4,'南康市','NKS','0',114.765238,25.661356,'190'),('1793','360802',4,'吉州区','JZQ','0',114.994307,27.129975,'191'),('1794','360803',4,'青原区','QYQ','0',115.01424,27.081719,'191'),('1795','360821',4,'吉安县','JAX','0',114.907659,27.040142,'191'),('1796','360822',4,'吉水县','JSX','0',115.135507,27.229632,'191'),('1797','360823',4,'峡江县','XJX','0',115.316566,27.582901,'191'),('1798','360824',4,'新干县','XGX','0',115.393043,27.740809,'191'),('1799','360825',4,'永丰县','YFX','0',115.441477,27.317869,'191'),('18','00000015',2,'山东省','SDS','0',117.020411,36.668627,'1'),('1800','360826',4,'泰和县','THX','0',114.908861,26.790231,'191'),('1801','360827',4,'遂川县','SCX','0',114.52098,26.311894,'191'),('1802','360828',4,'万安县','WAX','0',114.786256,26.458257,'191'),('1803','360829',4,'安福县','AFX','0',114.619893,27.392874,'191'),('1804','360830',4,'永新县','YXX','0',114.242675,26.945233,'191'),('1805','360881',4,'井冈山市','JGSS','0',114.289182,26.748186,'191'),('1806','360902',4,'袁州区','YZQ','0',114.424657,27.798846,'192'),('1807','360921',4,'奉新县','FXX','0',115.384904,28.700806,'192'),('1808','360922',4,'万载县','WZX','0',114.447551,28.10455,'192'),('1809','360923',4,'上高县','SGX','0',114.924494,28.232827,'192'),('1810','360924',4,'宜丰县','YFX','0',114.803542,28.393613,'192'),('1811','360925',4,'靖安县','JAX','0',115.362629,28.861475,'192'),('1812','360926',4,'铜鼓县','TGX','0',114.37098,28.520747,'192'),('1813','360981',4,'丰城市','FCS','0',115.771195,28.159325,'192'),('1814','360982',4,'樟树市','ZSS','0',115.546063,28.055796,'192'),('1815','360983',4,'高安市','GAS','0',115.375618,28.417261,'192'),('1816','361002',4,'临川区','LCQ','0',116.31136,27.934529,'193'),('1817','361021',4,'南城县','NCX','0',116.644658,27.552748,'193'),('1818','361022',4,'黎川县','LCX','0',116.907508,27.282382,'193'),('1819','361023',4,'南丰县','NFX','0',116.525725,27.218445,'193'),('1820','361024',4,'崇仁县','CRX','0',116.061164,27.764681,'193'),('1821','361025',4,'乐安县','LAX','0',115.837895,27.420441,'193'),('1822','361026',4,'宜黄县','YHX','0',116.222128,27.546146,'193'),('1823','361027',4,'金溪县','JXX','0',116.775435,27.908337,'193'),('1824','361028',4,'资溪县','ZXX','0',117.060264,27.706102,'193'),('1825','361029',4,'东乡县','DXX','0',116.590465,28.236118,'193'),('1826','361030',4,'广昌县','GCX','0',116.325757,26.837267,'193'),('1827','361102',4,'信州区','XZQ','0',117.966823,28.43121,'194'),('1828','361121',4,'上饶县','SRX','0',117.90785,28.448983,'194'),('1829','361122',4,'广丰县','GFX','0',118.19124,28.436286,'194'),('1830','361123',4,'玉山县','YSX','0',118.245124,28.682055,'194'),('1831','361124',4,'铅山县','QSX','0',117.709451,28.315217,'194'),('1832','361125',4,'横峰县','HFX','0',117.596452,28.407118,'194'),('1833','361126',4,'弋阳县','YYX','0',117.449588,28.378044,'194'),('1834','361127',4,'余干县','YGX','0',116.695647,28.702302,'194'),('1835','361128',4,'鄱阳县','PYX','0',116.699746,29.011699,'194'),('1836','361129',4,'万年县','WNX','0',117.058445,28.694582,'194'),('1837','361130',4,'婺源县','WYX','0',117.861911,29.2480249,'194'),('1838','361181',4,'德兴市','DXS','0',117.578713,28.946464,'194'),('1839','370102',4,'历下区','LXQ','0',117.07653,36.666344,'195'),('184','360100',3,'南昌市','NCS','0',115.858089,28.68316,'17'),('1840','370103',4,'市中区','SZQ','0',116.997475,36.6511749,'195'),('1841','370104',4,'槐荫区','HYQ','0',116.90113,36.651301,'195'),('1842','370105',4,'天桥区','TQQ','0',116.987492,36.678016,'195'),('1843','370112',4,'历城区','LCQ','0',117.065222,36.680171,'195'),('185','360200',3,'景德镇市','JDZS','0',117.17842,29.268836,'17'),('186','360300',3,'萍乡市','PXS','0',113.854676,27.622865,'17'),('187','360400',3,'九江市','JJS','0',116.001951,29.705103,'17'),('188','360500',3,'新余市','XYS','0',114.91741,27.817819,'17'),('189','360600',3,'鹰潭市','YTS','0',117.069202,28.260189,'17'),('19','00000017',2,'湖北省','HBS','0',114.341921,30.545861,'1'),('190','360700',3,'赣州市','GZS','0',114.935025,25.831925,'17'),('191','360800',3,'吉安市','JAS','0',114.992912,27.113039,'17'),('192','360900',3,'宜春市','YCS','0',114.416778,27.815619,'17'),('193','361000',3,'抚州市','FZS','0',116.358176,27.9492,'17'),('194','361100',3,'上饶市','SRS','0',117.943433,28.454863,'17'),('195','370100',3,'济南市','JNS','0',116.994917,36.665282,'18'),('20','00000018',2,'湖南省','HNS','0',112.98381,28.112444,'1'),('21','40000000',2,'重庆市','ZQS','0',106.551557,29.56301,'1'),('22','00000022',2,'四川省','SCS','0',104.075931,30.651652,'1'),('23','00000019',2,'广东省','GDS','0',113.266531,23.132191,'1'),('24','00000020',2,'广西壮族自治区','GXZZZZQ','0',108.327546,22.815478,'1'),('25','00000021',2,'海南省','HNS','0',110.349229,20.017378,'1'),('26','810000',2,'香港特别行政区','XGTBXZQ','0',114.109497,22.396428,'1'),('27','820000',2,'澳门特别行政区','AMTBXZQ','0',113.543873,22.198745,'1'),('28','00000023',2,'贵州省','GZS','0',106.707116,26.598026,'1'),('29','00000024',2,'云南省','YNS','0',102.709812,25.045359,'1'),('3','00000006',2,'辽宁省','LNS','0',123.42944,41.835441,'1'),('30','00000025',2,'西藏自治区','XCZZQ','0',91.1170059,29.647951,'1'),('31','00000026',2,'陕西省','SXS','0',108.954239,34.265472,'1'),('32','00000027',2,'甘肃省','GSS','0',103.826308,36.059421,'1'),('33','00000028',2,'青海省','QHS','0',101.780199,36.620901,'1'),('34','00000029',2,'宁夏回族自治区','NXHZZZQ','0',106.258754,38.471318,'1'),('35','00000030',2,'新疆维吾尔自治区','XJWWEZZQ','0',87.6278119,43.793028,'1'),('4','00000007',2,'吉林省','JLS','0',125.326065,43.896082,'1'),('5','10000000',2,'北京市','BJS','0',116.407413,39.904214,'1'),('6','30000000',2,'天津市','TJS','0',117.200983,39.084158,'1'),('7','00000003',2,'河北省','HBS','0',114.468665,38.037057,'1'),('8','00000004',2,'山西省','SXS','0',112.562569,37.873376,'1'),('89','370200',3,'青岛市','QDS','0',120.382504,36.06722,'18'),('9','00000005',2,'内蒙古自治区','NMGZZQ','0',111.765618,40.817498,'1'),('90','370300',3,'淄博市','ZBS','0',118.055007,36.813497,'18'),('91','370400',3,'枣庄市','ZZS','0',117.323725,34.810488,'18'),('92','370500',3,'东营市','DYS','0',118.674767,37.434751,'18'),('926','370113',4,'长清区','CQQ','0',116.751959,36.553691,'195'),('927','370124',4,'平阴县','PYX','0',116.456187,36.289265,'195'),('928','370125',4,'济阳县','JYX','0',117.173529,36.978547,'195'),('929','370126',4,'商河县','SHX','0',117.157183,37.309045,'195'),('93','370600',3,'烟台市','YTS','0',121.447926,37.463819,'18'),('930','370181',4,'章丘市','ZQS','0',117.534326,36.714015,'195'),('931','370202',4,'市南区','SNQ','0',120.412392,36.075651,'89'),('932','370203',4,'市北区','SBQ','0',120.374801,36.087661,'89'),('933','370205',4,'四方区','SFQ','0',120.366454,36.103993,'89'),('934','370211',4,'黄岛区','HDQ','0',120.198054,35.960935,'89'),('935','370212',4,'崂山区','LSQ','0',120.468956,36.107538,'89'),('936','370213',4,'李沧区','LCQ','0',120.432864,36.145476,'89'),('937','370214',4,'城阳区','CYQ','0',120.396529,36.307061,'89'),('938','370281',4,'胶州市','JZS','0',120.033345,36.264664,'89'),('939','370282',4,'即墨市','JMS','0',120.447162,36.389401,'89'),('94','370700',3,'潍坊市','WFS','0',119.16193,36.706691,'18'),('940','370283',4,'平度市','PDS','0',119.960014,36.7867,'89'),('941','370284',4,'胶南市','JNS','0',120.04643,35.8725,'89'),('942','370285',4,'莱西市','LXS','0',120.51769,36.889084,'89'),('943','370302',4,'淄川区','ZCQ','0',117.966842,36.643449,'90'),('944','370303',4,'张店区','ZDQ','0',118.017656,36.806773,'90'),('945','370304',4,'博山区','BSQ','0',117.861698,36.494752,'90'),('946','370305',4,'临淄区','LZQ','0',118.308977,36.827343,'90'),('947','370306',4,'周村区','ZCQ','0',117.869877,36.803109,'90'),('948','370321',4,'桓台县','HTX','0',118.097955,36.959623,'90'),('949','370322',4,'高青县','GQX','0',117.826916,37.171063,'90'),('95','370800',3,'济宁市','JNS','0',116.587099,35.414921,'18'),('950','370323',4,'沂源县','YYX','0',118.170979,36.184827,'90'),('951','370402',4,'市中区','SZQ','0',117.556124,34.864114,'91'),('952','370403',4,'薛城区','YCQ','0',117.263157,34.795206,'91'),('953','370404',4,'峄城区','YCQ','0',117.590819,34.772236,'91'),('954','370405',4,'台儿庄区','TEZQ','0',117.733832,34.562528,'91'),('955','370406',4,'山亭区','STQ','0',117.461343,35.099549,'91'),('956','370481',4,'滕州市','TZS','0',117.164388,35.084021,'91'),('957','370502',4,'东营区','DYQ','0',118.582184,37.448964,'92'),('958','370503',4,'河口区','HKQ','0',118.525579,37.886138,'92'),('959','370521',4,'垦利县','KLX','0',118.547627,37.58754,'92'),('960','370522',4,'利津县','LJX','0',118.255273,37.49026,'92'),('961','370523',4,'广饶县','GRX','0',118.407045,37.0537,'92'),('962','370602',4,'芝罘区','ZFQ','0',121.400031,37.540687,'93'),('963','370611',4,'福山区','FSQ','0',121.267697,37.498051,'93'),('964','370612',4,'牟平区','MPQ','0',121.600512,37.386901,'93'),('965','370613',4,'莱山区','LSQ','0',121.445304,37.511305,'93'),('966','370614',4,'开发区','KFQ','0',121.251001,37.554683,'93'),('967','370634',4,'长岛县','CDX','0',120.736584,37.921417,'93'),('968','370681',4,'龙口市','LKS','0',120.477836,37.646064,'93'),('969','370682',4,'莱阳市','LYS','0',120.711607,36.97891,'93'),('970','370683',4,'莱州市','LZS','0',119.942327,37.177017,'93'),('971','370684',4,'蓬莱市','PLS','0',120.758848,37.810661,'93'),('972','370685',4,'招远市','ZYS','0',120.434072,37.355469,'93'),('973','370686',4,'栖霞市','QXS','0',120.849675,37.335123,'93'),('974','370687',4,'海阳市','HYS','0',121.158477,36.776425,'93'),('975','370702',4,'潍城区','WCQ','0',119.024836,36.7281,'94'),('976','370703',4,'寒亭区','HTQ','0',119.219734,36.775491,'94'),('977','370704',4,'坊子区','FZQ','0',119.166485,36.654448,'94'),('978','370705',4,'奎文区','KWQ','0',119.132486,36.707676,'94'),('979','370724',4,'临朐县','LQX','0',118.542982,36.5125059,'94'),('980','370725',4,'昌乐县','CLX','0',118.829914,36.706945,'94'),('981','370781',4,'青州市','QZS','0',118.479622,36.684528,'94'),('982','370782',4,'诸城市','ZCS','0',119.410103,35.995654,'94'),('983','370783',4,'寿光市','SGS','0',118.790652,36.85548,'94'),('984','370784',4,'安丘市','AQS','0',119.218978,36.478494,'94'),('985','370785',4,'高密市','GMS','0',119.755597,36.3825949,'94'),('986','370786',4,'昌邑市','CYS','0',119.398525,36.85882,'94'),('987','370802',4,'市中区','SZQ','0',116.596614,35.40819,'95'),('988','370811',4,'任城区','RCQ','0',116.628562,35.433727,'95'),('989','370826',4,'微山县','WSX','0',117.128946,34.8071,'95'),('990','370827',4,'鱼台县','YTX','0',116.650608,35.012749,'95'),('991','370828',4,'金乡县','JXX','0',116.311532,35.06662,'95'),('992','370829',4,'嘉祥县','JXX','0',116.342442,35.407829,'95'),('993','370830',4,'汶上县','WSX','0',116.489043,35.732799,'95'),('994','370831',4,'泗水县','SSX','0',117.251195,35.664323,'95'),('995','370832',4,'梁山县','LSX','0',116.096044,35.802306,'95'),('996','370881',4,'曲阜市','QFS','0',116.986532,35.581137,'95'),('997','370882',4,'兖州市','YZS','0',116.783834,35.553144,'95'),('998','370883',4,'邹城市','ZCS','0',117.003743,35.405185,'95'),('999','370902',4,'泰山区','TSQ','0',117.135354,36.192084,'96');
/*!40000 ALTER TABLE `t_s_territory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_timetask`
--

DROP TABLE IF EXISTS `t_s_timetask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_timetask` (
  `ID` varchar(32) NOT NULL,
  `CREATE_BY` varchar(32) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_NAME` varchar(32) DEFAULT NULL,
  `CRON_EXPRESSION` varchar(100) NOT NULL,
  `IS_EFFECT` varchar(1) NOT NULL,
  `IS_START` varchar(1) NOT NULL,
  `TASK_DESCRIBE` varchar(50) NOT NULL,
  `TASK_ID` varchar(100) NOT NULL,
  `UPDATE_BY` varchar(32) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `UPDATE_NAME` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_timetask`
--

LOCK TABLES `t_s_timetask` WRITE;
/*!40000 ALTER TABLE `t_s_timetask` DISABLE KEYS */;
INSERT INTO `t_s_timetask` VALUES ('4028ef8156b0d8e00156b1002aea0026','4028d881436d514601436d5215ac0043','2016-08-22 14:46:33','admin','0 0/6 * * * ?','1','0','重置微信超过2小时失效Token','autoResetWeixinTokenCronTrigger','4028d881436d514601436d5215ac0043','2016-08-22 14:49:53','admin');
/*!40000 ALTER TABLE `t_s_timetask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_type`
--

DROP TABLE IF EXISTS `t_s_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_type` (
  `ID` varchar(32) NOT NULL,
  `typecode` varchar(50) DEFAULT NULL,
  `typename` varchar(50) DEFAULT NULL,
  `typepid` varchar(32) DEFAULT NULL,
  `typegroupid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_nw2b22gy7plh7pqows186odmq` (`typepid`),
  KEY `FK_3q40mr4ebtd0cvx79matl39x1` (`typegroupid`),
  CONSTRAINT `FK_3q40mr4ebtd0cvx79matl39x1` FOREIGN KEY (`typegroupid`) REFERENCES `t_s_typegroup` (`ID`),
  CONSTRAINT `FK_nw2b22gy7plh7pqows186odmq` FOREIGN KEY (`typepid`) REFERENCES `t_s_type` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_type`
--

LOCK TABLES `t_s_type` WRITE;
/*!40000 ALTER TABLE `t_s_type` DISABLE KEYS */;
INSERT INTO `t_s_type` VALUES ('402889f8476650de01476666acbf0005','01','多文章',NULL,'402889f8476650de01476665dfe70002'),('402889f8476650de01476666d5c30007','02','单文章',NULL,'402889f8476650de01476665dfe70002'),('402889ff4728f2370147290a0f82001d','1','服务号',NULL,'402889ff4728f2370147290995f80018'),('402889ff4728f2370147290a2d63001f','2','订阅号',NULL,'402889ff4728f2370147290995f80018'),('4028d881436d514601436d5216130051','2','菜单图标',NULL,'4028d881436d514601436d5215c30047'),('4028d881436d514601436d5216160052','1','系统图标',NULL,'4028d881436d514601436d5215c30047'),('4028d881436d514601436d5216190053','files','附件',NULL,'4028d881436d514601436d5215e4004f'),('4028d881436d514601436d52161c0054','1','优质订单',NULL,'4028d881436d514601436d5215c90048'),('4028d881436d514601436d52161f0055','2','普通订单',NULL,'4028d881436d514601436d5215c90048'),('4028d881436d514601436d5216220056','1','签约客户',NULL,'4028d881436d514601436d5215cc0049'),('4028d881436d514601436d5216250057','2','普通客户',NULL,'4028d881436d514601436d5215cc0049'),('4028d881436d514601436d5216290058','1','特殊服务',NULL,'4028d881436d514601436d5215cf004a'),('4028d881436d514601436d52162e0059','2','普通服务',NULL,'4028d881436d514601436d5215cf004a'),('4028d881436d514601436d521633005a','single','单条件查询',NULL,'4028d881436d514601436d5215d4004b'),('4028d881436d514601436d521638005b','group','范围查询',NULL,'4028d881436d514601436d5215d4004b'),('4028d881436d514601436d52163d005c','Y','是',NULL,'4028d881436d514601436d5215d7004c'),('4028d881436d514601436d521640005d','N','否',NULL,'4028d881436d514601436d5215d7004c'),('4028d881436d514601436d521643005e','Integer','Integer',NULL,'4028d881436d514601436d5215db004d'),('4028d881436d514601436d521646005f','Date','Date',NULL,'4028d881436d514601436d5215db004d'),('4028d881436d514601436d52164b0060','String','String',NULL,'4028d881436d514601436d5215db004d'),('4028d881436d514601436d52164f0061','Long','Long',NULL,'4028d881436d514601436d5215db004d'),('4028d881436d514601436d5216530062','act','工作流引擎表',NULL,'4028d881436d514601436d5215df004e'),('4028d881436d514601436d5216570063','t_s','系统基础表',NULL,'4028d881436d514601436d5215df004e'),('4028d881436d514601436d52165c0064','t_b','业务表',NULL,'4028d881436d514601436d5215df004e'),('4028d881436d514601436d5216600065','t_p','自定义引擎表',NULL,'4028d881436d514601436d5215df004e'),('4028d881436d514601436d5216640066','news','新闻',NULL,'4028d881436d514601436d5215e4004f'),('4028d881436d514601436d5216670067','0','男性',NULL,'4028d881436d514601436d5215e90050'),('4028d881436d514601436d52166a0068','1','女性',NULL,'4028d881436d514601436d5215e90050'),('ff8081815ddb071f015ddb58f716003d','仓库待收件','1',NULL,'ff8081815ddb071f015ddb58af0b003b'),('ff8081815ddb071f015ddb599736003f','待付款订单','2',NULL,'ff8081815ddb071f015ddb58af0b003b'),('ff8081815ddb071f015ddb5a24620042','运输途中','3',NULL,'ff8081815ddb071f015ddb58af0b003b'),('ff8081815ddb071f015ddb5a84fd0044','订单已签收','4',NULL,'ff8081815ddb071f015ddb58af0b003b'),('ff8081815ddb071f015ddb5af3110046','存疑问题单','9',NULL,'ff8081815ddb071f015ddb58af0b003b'),('ff8081815ddb071f015ddb5b42e00048','已取消订单','8',NULL,'ff8081815ddb071f015ddb58af0b003b'),('ff8081815ddb071f015ddb5b715f004a','过期取消','10',NULL,'ff8081815ddb071f015ddb58af0b003b');
/*!40000 ALTER TABLE `t_s_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_typegroup`
--

DROP TABLE IF EXISTS `t_s_typegroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_typegroup` (
  `ID` varchar(32) NOT NULL,
  `typegroupcode` varchar(50) DEFAULT NULL,
  `typegroupname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_typegroup`
--

LOCK TABLES `t_s_typegroup` WRITE;
/*!40000 ALTER TABLE `t_s_typegroup` DISABLE KEYS */;
INSERT INTO `t_s_typegroup` VALUES ('402889f8476650de01476665dfe70002','cms_menu','CMS菜单类型'),('402889ff4728f2370147290995f80018','weixintype','微信公众账号类型'),('4028d881436d514601436d5215c30047','icontype','图标类型'),('4028d881436d514601436d5215c90048','order','订单类型'),('4028d881436d514601436d5215cc0049','custom','客户类型'),('4028d881436d514601436d5215cf004a','service','服务项目类型'),('4028d881436d514601436d5215d4004b','searchmode','查询模式'),('4028d881436d514601436d5215d7004c','yesorno','逻辑条件'),('4028d881436d514601436d5215db004d','fieldtype','字段类型'),('4028d881436d514601436d5215df004e','database','数据表'),('4028d881436d514601436d5215e4004f','fieltype','文档分类'),('4028d881436d514601436d5215e90050','sex','性别类'),('ff8081815ddb071f015ddb58af0b003b','ord_stat','订单状态');
/*!40000 ALTER TABLE `t_s_typegroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_user`
--

DROP TABLE IF EXISTS `t_s_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_user` (
  `email` varchar(50) DEFAULT NULL,
  `mobilePhone` varchar(30) DEFAULT NULL,
  `officePhone` varchar(20) DEFAULT NULL,
  `signatureFile` varchar(100) DEFAULT NULL,
  `id` varchar(32) NOT NULL,
  `accountid` varchar(36) DEFAULT NULL,
  `type` varchar(2) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `FK_2cuji5h6yorrxgsr8ojndlmal` (`id`),
  CONSTRAINT `FK_2cuji5h6yorrxgsr8ojndlmal` FOREIGN KEY (`id`) REFERENCES `t_s_base_user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_user`
--

LOCK TABLES `t_s_user` WRITE;
/*!40000 ALTER TABLE `t_s_user` DISABLE KEYS */;
INSERT INTO `t_s_user` VALUES ('','','','images/renfang/qm/licf.gif','4028d881436d514601436d5215ac0043','',NULL);
/*!40000 ALTER TABLE `t_s_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_version`
--

DROP TABLE IF EXISTS `t_s_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_version` (
  `ID` varchar(32) NOT NULL,
  `loginpage` varchar(100) DEFAULT NULL,
  `versioncode` varchar(50) DEFAULT NULL,
  `versionname` varchar(30) DEFAULT NULL,
  `versionnum` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_version`
--

LOCK TABLES `t_s_version` WRITE;
/*!40000 ALTER TABLE `t_s_version` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_s_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixin_accesstoken`
--

DROP TABLE IF EXISTS `weixin_accesstoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_accesstoken` (
  `ID` varchar(32) NOT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `expires_ib` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixin_accesstoken`
--

LOCK TABLES `weixin_accesstoken` WRITE;
/*!40000 ALTER TABLE `weixin_accesstoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `weixin_accesstoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixin_account`
--

DROP TABLE IF EXISTS `weixin_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_account` (
  `id` varchar(36) NOT NULL COMMENT '??',
  `accountname` varchar(200) DEFAULT NULL COMMENT '??????',
  `accounttoken` varchar(200) DEFAULT NULL COMMENT '????TOKEN',
  `accountnumber` varchar(200) DEFAULT NULL COMMENT '?????',
  `accounttype` varchar(50) DEFAULT NULL COMMENT '?????',
  `accountemail` varchar(200) DEFAULT NULL COMMENT '????',
  `accountdesc` varchar(500) DEFAULT NULL COMMENT '??????',
  `accountaccesstoken` varchar(1000) DEFAULT NULL COMMENT 'ACCESS_TOKEN',
  `accountappid` varchar(200) DEFAULT NULL COMMENT '????APPID',
  `accountappsecret` varchar(500) DEFAULT NULL COMMENT '????APPSECRET',
  `ADDTOEKNTIME` datetime DEFAULT NULL,
  `USERNAME` varchar(50) DEFAULT NULL,
  `WEIXIN_ACCOUNTID` varchar(100) DEFAULT NULL,
  `apiticket` varchar(200) DEFAULT NULL,
  `apiticketttime` datetime DEFAULT NULL,
  `jsapiticket` varchar(200) DEFAULT NULL,
  `jsapitickettime` datetime DEFAULT NULL,
  `accountaeskey` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixin_account`
--

LOCK TABLES `weixin_account` WRITE;
/*!40000 ALTER TABLE `weixin_account` DISABLE KEYS */;
INSERT INTO `weixin_account` VALUES ('402881e8461795c201461795c2e90000','lion测试号','shanggl','shanggl','2','shanggl@wo.cn','测试','UudfmlPWU-fSHa5vl1KBt1hMnhQLQL53UxTjcZj_6h0zK3Ar_8QMArQAnypjMq-OMelg69XwZ1RPpCY3la6aM_q3s9w25LjsVq2R3Nj9rPO12TqrNtfYkpv0YhjjITkfIBWfCGAXQL','wx11db1156deda715d','6e9123cba845a9ded2eb3a19ef38001a','2016-12-20 23:08:22','admin','gh_00535552d0e7','IpK_1T69hDhZkLQTlwsAXyjkZaTEYbX_kE6IkQ8b5Waw7uX8zbeFp34lurpnPaSKLMQZZ1RsvceEiMn6_ft3cA','2016-08-22 14:48:38','kgt8ON7yVITDhtdwci0qeeC2RWfOAQ1Sc_HMdjrzSlpbgBEpB7t7JQlTHnS-4WyK2Jnp3m5UbeKswqZoKKNDBw','2016-12-20 23:08:22','anew key');
/*!40000 ALTER TABLE `weixin_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixin_autoresponse`
--

DROP TABLE IF EXISTS `weixin_autoresponse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_autoresponse` (
  `ID` varchar(32) NOT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `msgtype` varchar(255) DEFAULT NULL,
  `rescontent` varchar(255) DEFAULT NULL,
  `templatename` varchar(255) DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixin_autoresponse`
--

LOCK TABLES `weixin_autoresponse` WRITE;
/*!40000 ALTER TABLE `weixin_autoresponse` DISABLE KEYS */;
INSERT INTO `weixin_autoresponse` VALUES ('402889ff4728a293014728b155c8001c','2014-07-12 11:50:16','你好','text','4028d8814734ee0d0147356b4c730010','你好','402881e8461795c201461795c2e90000'),('f7a8a3a946e249c20146e26a10ca0019','2014-06-28 20:19:00','?','text','ff8081815dda0428015dda075f8b0007','系统菜单','402881e8461795c201461795c2e90000'),('ff8081815dd99b08015dd9e5f9010005','2017-08-13 12:41:53','hello','news','4028d881472f356e01472f36461b0001','默认关注图文','402881e8461795c201461795c2e90000');
/*!40000 ALTER TABLE `weixin_autoresponse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixin_cms_ad`
--

DROP TABLE IF EXISTS `weixin_cms_ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_cms_ad` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(100) DEFAULT NULL,
  `CREATE_BY` varchar(255) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_NAME` varchar(255) DEFAULT NULL,
  `IMAGE_HREF` varchar(255) DEFAULT NULL,
  `IMAGE_NAME` varchar(255) DEFAULT NULL,
  `TITLE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixin_cms_ad`
--

LOCK TABLES `weixin_cms_ad` WRITE;
/*!40000 ALTER TABLE `weixin_cms_ad` DISABLE KEYS */;
INSERT INTO `weixin_cms_ad` VALUES ('402881e44695183a014695214a510013','402881e8461795c201461795c2e90000','admin','2014-06-13 20:08:45','管理员','upload/files/20140627233502FEzyc38j.jpg','19300001024098134717639977056.jpg','IPHONE7'),('402881e44695183a014695219fe70016','402881e8461795c201461795c2e90000','admin','2014-06-13 20:09:07','管理员','upload/files/20140627232736z3SvfVEj.jpg','634490825089531250.jpg','IPHONE'),('402881e946ddea480146de053265000b','402881e8461795c201461795c2e90000','4028d881436d514601436d5215ac0043','2014-06-27 23:50:21','admin','upload/files/20140627235534VJM1pkx3.jpg','Img305735292.jpg','黑莓'),('402881e946ddea480146de0f3a810011','402881e8461795c201461795c2e90000','4028d881436d514601436d5215ac0043','2014-06-28 00:01:18','admin','upload/files/20140628000116OF07rm7E.jpg','30_1i$1JxIOB.jpg','Lumia930 王者归来'),('ff8081815ddb071f015ddb30ba130003','402881e8461795c201461795c2e90000','4028d881436d514601436d5215ac0043','2017-08-13 18:43:10','admin','upload/files/20170813184306IrnMiMrB.png','30MinPython.png','python永远是最好');
/*!40000 ALTER TABLE `weixin_cms_ad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixin_cms_article`
--

DROP TABLE IF EXISTS `weixin_cms_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_cms_article` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `image_name` varchar(255) DEFAULT NULL COMMENT '图片名称',
  `image_href` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `summary` varchar(255) DEFAULT NULL,
  `content` varchar(20000) DEFAULT NULL COMMENT '内容',
  `column_id` varchar(36) DEFAULT NULL COMMENT '栏目id',
  `accountid` varchar(100) DEFAULT NULL COMMENT '微信账户',
  `create_name` varchar(255) DEFAULT NULL COMMENT '创建人',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建人id',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixin_cms_article`
--

LOCK TABLES `weixin_cms_article` WRITE;
/*!40000 ALTER TABLE `weixin_cms_article` DISABLE KEYS */;
INSERT INTO `weixin_cms_article` VALUES ('297e7eb6469a4a8901469a5e58c0000e','测试一个小黄人的图片','19343396_845725.jpg','upload/files/20140613235146eEgyESpy.jpg','你看看这个小黄人美不美？','<p><strong>我的小黄人是不是很好看啊</strong></p><p><strong><br/></strong></p><p><strong><br/></strong></p><p><span style=\"background-color: rgb(255, 255, 0);\"><strong>这个颜色怎么样啊。</strong></span></p>','402881e44695183a01469522f7d20019','402881e8461795c201461795c2e90000','管理员','admin','2014-06-14 20:33:33'),('297e7eb6469a4a8901469a5ef95c0011','这个杀手帅不帅？','1384480985636.jpg','upload/files/20140613235146eEgyESpy.jpg','这个杀手帅不帅？','<p><strong><em>这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？</em></strong></p><p><strong><em>这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？</em></strong></p>','402881e44695183a01469522f7d20019','402881e8461795c201461795c2e90000','管理员','admin','2014-06-14 20:34:14');
/*!40000 ALTER TABLE `weixin_cms_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixin_cms_menu`
--

DROP TABLE IF EXISTS `weixin_cms_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_cms_menu` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(100) DEFAULT NULL,
  `CREATE_BY` varchar(255) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_NAME` varchar(255) DEFAULT NULL,
  `IMAGE_HREF` varchar(255) DEFAULT NULL,
  `IMAGE_NAME` varchar(255) DEFAULT NULL,
  `NAME` varchar(20) DEFAULT NULL,
  `TYPE` varchar(20) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixin_cms_menu`
--

LOCK TABLES `weixin_cms_menu` WRITE;
/*!40000 ALTER TABLE `weixin_cms_menu` DISABLE KEYS */;
INSERT INTO `weixin_cms_menu` VALUES ('402881e44695183a01469522f7d20019','402881e8461795c201461795c2e90000','admin','2014-06-13 20:10:35','管理员','upload/files/201406132357343zuaHgX4.jpg','537f1f63dd1c9.jpg','关于JEECG','01'),('402881e44695183a014695234880001c','402881e8461795c201461795c2e90000','admin','2014-06-13 20:10:56','管理员','upload/files/20140613235754hLRC87rF.jpg','537f1f86602b3.jpg','渠道代理','01'),('402881e44695183a01469523f03a001f','402881e8461795c201461795c2e90000','admin','2014-06-13 20:11:39','管理员','upload/files/201406132358039IpFSyet.jpg','537f1f74d031c.jpg','功能说明','01'),('402881e44695183a0146952426ce0022','402881e8461795c201461795c2e90000','admin','2014-06-13 20:11:53','管理员','upload/files/20140613235830M96wj4Lr.jpg','537f1f98d6f42.jpg','企业文化','01'),('402881e446955c7c014695a72a610029','402881e8461795c201461795c2e90000','admin','2014-06-13 22:34:59','管理员','upload/files/20140613235852gBTueAWO.jpg','537f1faf595dd.jpg','案例分享','01'),('402881e446955c7c014695a774f9002c','402881e8461795c201461795c2e90000','admin','2014-06-13 22:35:18','管理员','upload/files/20140613235911chsAs0Md.jpg','537f1ca3cd562.jpg','联系我们','01'),('402881e446955c7c014695a7bc45002f','402881e8461795c201461795c2e90000','admin','2014-06-13 22:35:36','管理员','upload/files/20140613235918OA8vt546.jpg','537f1cb75c597.jpg','轻松一刻','01'),('402881e446955c7c014695a7f08b0032','402881e8461795c201461795c2e90000','admin','2014-06-13 22:35:50','管理员','upload/files/20140613235932htqZFtCs.jpg','537f1fc8d750b.jpg','互动推广','01');
/*!40000 ALTER TABLE `weixin_cms_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixin_cms_site`
--

DROP TABLE IF EXISTS `weixin_cms_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_cms_site` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(32) DEFAULT NULL,
  `COMPANY_TEL` varchar(50) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_NAME` varchar(50) DEFAULT NULL,
  `SITE_LOGO` varchar(200) DEFAULT NULL,
  `SITE_NAME` varchar(100) DEFAULT NULL,
  `SITE_TEMPLATE_STYLE` varchar(50) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `UPDATE_NAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixin_cms_site`
--

LOCK TABLES `weixin_cms_site` WRITE;
/*!40000 ALTER TABLE `weixin_cms_site` DISABLE KEYS */;
/*!40000 ALTER TABLE `weixin_cms_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixin_cms_style`
--

DROP TABLE IF EXISTS `weixin_cms_style`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_cms_style` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(50) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_NAME` varchar(50) DEFAULT NULL,
  `REVIEW_IMG_URL` varchar(100) DEFAULT NULL,
  `TEMPLATE_NAME` varchar(100) DEFAULT NULL,
  `TEMPLATE_URL` varchar(200) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `UPDATE_NAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixin_cms_style`
--

LOCK TABLES `weixin_cms_style` WRITE;
/*!40000 ALTER TABLE `weixin_cms_style` DISABLE KEYS */;
/*!40000 ALTER TABLE `weixin_cms_style` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixin_expandconfig`
--

DROP TABLE IF EXISTS `weixin_expandconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_expandconfig` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(200) DEFAULT NULL,
  `CLASSNAME` varchar(100) NOT NULL,
  `CONTENT` longtext,
  `KEYWORD` varchar(100) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixin_expandconfig`
--

LOCK TABLES `weixin_expandconfig` WRITE;
/*!40000 ALTER TABLE `weixin_expandconfig` DISABLE KEYS */;
INSERT INTO `weixin_expandconfig` VALUES ('402881e44667912a0146679390450001','402881e8461795c201461795c2e90000','weixin.idea.extend.function.impl.FanYiKeyService','翻译','翻译','翻译'),('402881e44667912a014667947a3a0003','402881e8461795c201461795c2e90000','weixin.idea.extend.function.impl.TianQiKeyService','天气预报','天气','天气预报'),('402881e446950f86014695120f810001','402881e8461795c201461795c2e90000','weixin.idea.extend.function.impl.DaZhuanPanService','大转盘','大转盘','大转盘'),('402881e446950f8601469513ec670003','402881e8461795c201461795c2e90000','weixin.idea.extend.function.impl.CmsService','CMS','cms','CMS,cms'),('402881e4469ffe7a0146a000090d0001','402881e8461795c201461795c2e90000','weixin.idea.extend.function.impl.GuagualeService','刮刮乐','刮刮乐','刮刮乐'),('402881e747baf1ea0147bb79d2330007','402881e8461795c201461795c2e90000','weixin.idea.extend.function.impl.WeixinPhotoService','微相册','微相册,相册','微相册');
/*!40000 ALTER TABLE `weixin_expandconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixin_hdrecord`
--

DROP TABLE IF EXISTS `weixin_hdrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_hdrecord` (
  `ID` varchar(100) NOT NULL,
  `ADDTIME` datetime DEFAULT NULL,
  `HDID` varchar(100) DEFAULT NULL,
  `NICKNAME` varchar(200) DEFAULT NULL,
  `OPENDID` varchar(100) DEFAULT NULL,
  `TOTAL` int(11) DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixin_hdrecord`
--

LOCK TABLES `weixin_hdrecord` WRITE;
/*!40000 ALTER TABLE `weixin_hdrecord` DISABLE KEYS */;
INSERT INTO `weixin_hdrecord` VALUES ('402881865907db7401590826e3d00030','2016-12-16 23:01:23','402881e6469a13b901469a1e9e420001','','o94BGv4wkjYm7GV6tnh1IHC_F0Z4',3,'402881e8461795c201461795c2e90000'),('402881865907db7401590828ca6b0031','2016-12-16 23:03:28','402881e6469a13b901469a1e9e420001','','o94BGv4wkjYm7GV6tnh1IHC_F0Z4',1,NULL),('402881865907db74015908295ef70032','2016-12-16 23:04:06','402881e6469a13b901469a1e9e420001','','o94BGv4wkjYm7GV6tnh1IHC_F0Z4',1,NULL);
/*!40000 ALTER TABLE `weixin_hdrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixin_huodong`
--

DROP TABLE IF EXISTS `weixin_huodong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_huodong` (
  `id` varchar(100) NOT NULL COMMENT '键主',
  `title` varchar(400) DEFAULT NULL COMMENT '活动名称',
  `description` text COMMENT '活动描述',
  `priceone` varchar(400) DEFAULT NULL COMMENT '一等奖奖品',
  `onetotal` int(4) DEFAULT NULL COMMENT '一等奖数量',
  `pricetwo` varchar(400) DEFAULT NULL COMMENT '二等奖奖品',
  `twototal` int(4) DEFAULT NULL COMMENT '二等奖数量',
  `pricethree` varchar(400) DEFAULT NULL COMMENT '三等奖奖品',
  `threetotal` int(4) DEFAULT NULL COMMENT '三等奖数量',
  `starttime` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `endtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '结束时间',
  `type` varchar(100) DEFAULT NULL COMMENT '活动类型',
  `gl` varchar(100) DEFAULT NULL,
  `count` varchar(10) DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixin_huodong`
--

LOCK TABLES `weixin_huodong` WRITE;
/*!40000 ALTER TABLE `weixin_huodong` DISABLE KEYS */;
INSERT INTO `weixin_huodong` VALUES ('402880a9468a0bef01468a0e72840001','国庆乐欢天','活动期间参加抽奖，就有计划获得精美礼品一份！','联想Thinkpad',1,'苹果6',1,'捷安特自行车',5,'2014-06-10 04:32:00','2018-07-28 02:59:51','1','90/100','5','402881e8461795c201461795c2e90000'),('402881e6469a13b901469a1e9e420001','微信大转盘摇奖','活动期间参与摇奖，就送好礼！','500万',1,'200万',2,'300万',3,'2014-06-14 07:23:36','2018-07-12 02:59:49','2','90/100','3','402881e8461795c201461795c2e90000');
/*!40000 ALTER TABLE `weixin_huodong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixin_linksucai`
--

DROP TABLE IF EXISTS `weixin_linksucai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_linksucai` (
  `id` varchar(36) NOT NULL,
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '修改人名称',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `name` varchar(100) DEFAULT NULL COMMENT '链接名称',
  `outer_link` longtext COMMENT '外部链接',
  `content` longtext COMMENT '功能描述',
  `inner_link` longtext COMMENT '内部链接',
  `transfer_sign` int(11) DEFAULT NULL COMMENT '转换标志',
  `accountid` varchar(100) DEFAULT NULL COMMENT '微信账户id',
  `post_code` varchar(200) DEFAULT NULL COMMENT '账号邮编',
  `share_status` varchar(10) DEFAULT 'N' COMMENT '分享状态',
  `is_encrypt` int(2) DEFAULT '0' COMMENT '是否加密（0：不加密，1：加密）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixin_linksucai`
--

LOCK TABLES `weixin_linksucai` WRITE;
/*!40000 ALTER TABLE `weixin_linksucai` DISABLE KEYS */;
INSERT INTO `weixin_linksucai` VALUES ('4028948151d769f20151d76c11e10002','admin','2015-12-25 12:36:02','admin','2017-08-13 00:26:31','九宫格','http://www.h5huodong.com/jiugongge/toIndex.do?openid=${openid}&subscribe=${subscribe}&appid=${appid}','九宫格','http://ec9a966c.ngrok.io/lionwx/weixinLinksucaiController.do?link&id=4028948151d769f20151d76c11e10002',NULL,'402881e8461795c201461795c2e90000',NULL,NULL,NULL);
/*!40000 ALTER TABLE `weixin_linksucai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixin_menuentity`
--

DROP TABLE IF EXISTS `weixin_menuentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_menuentity` (
  `ID` varchar(32) NOT NULL,
  `menukey` varchar(255) DEFAULT NULL,
  `msgtype` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `orders` varchar(11) DEFAULT NULL,
  `templateid` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `fatherid` varchar(32) DEFAULT NULL,
  `accountid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_astulwpsla864at9igbas3eic` (`fatherid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixin_menuentity`
--

LOCK TABLES `weixin_menuentity` WRITE;
/*!40000 ALTER TABLE `weixin_menuentity` DISABLE KEYS */;
INSERT INTO `weixin_menuentity` VALUES ('402880f2590749060159074eb9ab0009','c05','expand','微相册','5','402881e747baf1ea0147bb79d2330007','click','','402881e4464d026901464d05ab600001','402881e8461795c201461795c2e90000'),('402880f25907490601590757810f0019','d01','news','触发图文','1','4028d881472f356e01472f36461b0001','click','','402889ff4728a293014728bc62250036','402881e8461795c201461795c2e90000'),('402880f259074906015907593688001e','a01','text','联系我们','4','f7a8a3a946e55a940146e5c317f6005f','click','','402889ff4728f237014728f2d39f0001','402881e8461795c201461795c2e90000'),('402881e4464d026901464d05ab600001','c02','text','微活动','2','f7a8a3a946e249c20146e25c4dc7000c','click',NULL,NULL,'402881e8461795c201461795c2e90000'),('402881e4464df45f01464df707760004','c0202','news','大转盘','0','ff8081815ddb071f015ddb3388790005','click','http://123.165.130.173/jeecg-weixin-steward/webpage/weixin/guanjia/other/dazhuanpan/index.html','402881e4464d026901464d05ab600001','402881e8461795c201461795c2e90000'),('402881e446a4f9400146a50183620008','c0203','expand','微网站','1','402881e446950f8601469513ec670003','click',NULL,'402881e4464d026901464d05ab600001','402881e8461795c201461795c2e90000'),('402889ff4728a293014728bc62250036','c03','text','触发功能','3','f7a8a3a946e55a940146e5c317f6005f','click','',NULL,'402881e8461795c201461795c2e90000'),('402889ff4728a293014728bcb3020038','c0302','text','访问链接','1','f7a8a3a946e55a940146e5c317f6005f','view','http://www.jeewx.com','402889ff4728a293014728bc62250036','402881e8461795c201461795c2e90000'),('402889ff4728f237014728f2d39f0001','c01',NULL,'开源项目','1',NULL,'click','',NULL,'402881e8461795c201461795c2e90000'),('402889ff4728f237014728f52c0b0008','c0102',NULL,'Jeecg快速开发平台','2',NULL,'view','http://mp.weixin.qq.com/s?__biz=MjM5NjA2OTkxMg==&mid=200275454&idx=2&sn=a4a4bd237aff404b8044e59105b74c69#rd','402889ff4728f237014728f2d39f0001','402881e8461795c201461795c2e90000'),('402889ff4728f237014728f60f0f000b','c0301','text','触发文本','1','ff8081815dda0428015dda075f8b0007','click','http://mp.weixin.qq.com/s?__biz=MjM5NjA2OTkxMg==&mid=200211928&idx=1&sn=18baf4ad4076f2f42c7db938c1277b08#rd','402889ff4728a293014728bc62250036','402881e8461795c201461795c2e90000'),('402889ff4728f237014729029d940010','c0204','expand','刮刮乐','1','402881e4469ffe7a0146a000090d0001','click',NULL,'402881e4464d026901464d05ab600001','402881e8461795c201461795c2e90000'),('402889ff4728f237014729039c7c0014','c0201','text','营销工具','1','f7a8a3a946e249c20146e25c4dc7000c','click','','402881e4464d026901464d05ab600001','402881e8461795c201461795c2e90000'),('40289481515d5e1201515d6009020005','jeewx',NULL,'Jeewx微信管家','1',NULL,'view','http://mp.weixin.qq.com/s?__biz=MjM5NjA2OTkxMg==&mid=201250688&idx=4&sn=6aa38b2e0a3cd1bc770e6fca732cf04f#rd','402889ff4728f237014728f2d39f0001','402881e8461795c201461795c2e90000');
/*!40000 ALTER TABLE `weixin_menuentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixin_newsitem`
--

DROP TABLE IF EXISTS `weixin_newsitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_newsitem` (
  `ID` varchar(32) NOT NULL,
  `new_type` varchar(255) DEFAULT NULL COMMENT '图文类型：图文还是外部url',
  `author` varchar(255) DEFAULT NULL,
  `content` text,
  `description` varchar(255) DEFAULT NULL,
  `imagepath` varchar(255) DEFAULT NULL,
  `orders` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `templateid` varchar(32) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL COMMENT '外部URL',
  `create_date` date DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_m8qs8ufeqkk5cx17budto66r0` (`templateid`),
  CONSTRAINT `FK_m8qs8ufeqkk5cx17budto66r0` FOREIGN KEY (`templateid`) REFERENCES `weixin_newstemplate` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixin_newsitem`
--

LOCK TABLES `weixin_newsitem` WRITE;
/*!40000 ALTER TABLE `weixin_newsitem` DISABLE KEYS */;
INSERT INTO `weixin_newsitem` VALUES ('402881865907db7401590806c526000d',NULL,'shanggl','<p><img src=\"http://127.0.0.1:8080/lionwx/plug-in/ueditor/jsp//upload1/20161216/4211481898373334.jpg\"/></p><p><br/></p><p>您的关注是我们最大的动力！<br/></p>','感谢您的关注，这是个例子','upload/files/20161216222607YvbDnX3S.jpg','1','感谢关注','4028d881472f356e01472f36461b0001','','2016-12-16','402881e8461795c201461795c2e90000'),('40289481515cf0fe01515cfb24c5001b',NULL,'jeecg','','Jeewx商业版本介绍','upload/files/20151201175834RttNvMaW.jpg','2','Jeewx商业版本介绍','4028d881472f356e01472f36461b0001','http://mp.weixin.qq.com/s?__biz=MjM5NjA2OTkxMg==&mid=201250688&idx=4&sn=6aa38b2e0a3cd1bc770e6fca732cf04f#rd','2015-12-01','402881e8461795c201461795c2e90000'),('ff8081815dd6d4bf015dd6db4f510009',NULL,'shanggl','<p><img src=\"http://127.0.0.1:8080/lionwx/plug-in/ueditor/jsp//upload1/20161216/4211481898373334.jpg\"/></p>','contect','upload/files/20170812223118YzU26Fxs.jpg','３','下一步：联系我们','4028d881472f356e01472f36461b0001','www.baidu.com','2017-08-12','402881e8461795c201461795c2e90000'),('ff8081815ddb071f015ddb3476ad0007',NULL,'测试','<p>测试图文</p>','测试','upload/files/20170813184656qVThPVgI.jpg','２','测试','ff8081815ddb071f015ddb3388790005','http://www.qq.com','2017-08-13','402881e8461795c201461795c2e90000');
/*!40000 ALTER TABLE `weixin_newsitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixin_newstemplate`
--

DROP TABLE IF EXISTS `weixin_newstemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_newstemplate` (
  `ID` varchar(32) NOT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `tempatename` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixin_newstemplate`
--

LOCK TABLES `weixin_newstemplate` WRITE;
/*!40000 ALTER TABLE `weixin_newstemplate` DISABLE KEYS */;
INSERT INTO `weixin_newstemplate` VALUES ('4028d881472f356e01472f36461b0001','2014-07-13 18:13:11','默认关注图文','common','402881e8461795c201461795c2e90000'),('ff8081815ddb071f015ddb3388790005','2017-08-13 18:46:13','测试图文','cl','402881e8461795c201461795c2e90000');
/*!40000 ALTER TABLE `weixin_newstemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixin_open_account`
--

DROP TABLE IF EXISTS `weixin_open_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_open_account` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `appid` varchar(200) DEFAULT NULL,
  `ticket` varchar(200) DEFAULT NULL COMMENT '第三方平台推送 : ticket',
  `get_ticket_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixin_open_account`
--

LOCK TABLES `weixin_open_account` WRITE;
/*!40000 ALTER TABLE `weixin_open_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `weixin_open_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixin_photo`
--

DROP TABLE IF EXISTS `weixin_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_photo` (
  `ID` varchar(32) NOT NULL,
  `PHOTO_ALBUM_ID` varchar(32) DEFAULT NULL COMMENT '对应相册',
  `CONTENT` varchar(255) DEFAULT NULL COMMENT '相片描述',
  `CREATE_BY` varchar(32) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL COMMENT '相片名字',
  `UPDATE_BY` varchar(32) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixin_photo`
--

LOCK TABLES `weixin_photo` WRITE;
/*!40000 ALTER TABLE `weixin_photo` DISABLE KEYS */;
INSERT INTO `weixin_photo` VALUES ('402880f2590749060159075431330013','402880f25907490601590753f98c000f',NULL,'4028d881436d514601436d5215ac0043','2016-12-16 19:11:15','未命名','4028d881436d514601436d5215ac0043','2016-12-16 19:11:15'),('402880f25907490601590754343a0014','402880f25907490601590753f98c000f',NULL,'4028d881436d514601436d5215ac0043','2016-12-16 19:11:16','未命名','4028d881436d514601436d5215ac0043','2016-12-16 19:11:16'),('402880f2590749060159075436400015','402880f25907490601590753f98c000f',NULL,'4028d881436d514601436d5215ac0043','2016-12-16 19:11:16','未命名','4028d881436d514601436d5215ac0043','2016-12-16 19:11:16'),('402880f2590749060159075438570016','402880f25907490601590753f98c000f',NULL,'4028d881436d514601436d5215ac0043','2016-12-16 19:11:17','未命名','4028d881436d514601436d5215ac0043','2016-12-16 19:11:17'),('4028948151dc770f0151dc7e8c5a0005','4028948151dc770f0151dc7d6f0f0001',NULL,'4028d881436d514601436d5215ac0043','2015-12-26 12:14:19','未命名','4028d881436d514601436d5215ac0043','2015-12-26 12:14:19'),('4028948151dc770f0151dc7e8d050006','4028948151dc770f0151dc7d6f0f0001',NULL,'4028d881436d514601436d5215ac0043','2015-12-26 12:14:19','未命名','4028d881436d514601436d5215ac0043','2015-12-26 12:14:19'),('4028948151dc770f0151dc7e8d7e0007','4028948151dc770f0151dc7d6f0f0001',NULL,'4028d881436d514601436d5215ac0043','2015-12-26 12:14:20','未命名','4028d881436d514601436d5215ac0043','2015-12-26 12:14:20'),('4028948151dc770f0151dc7e8e020008','4028948151dc770f0151dc7d6f0f0001',NULL,'4028d881436d514601436d5215ac0043','2015-12-26 12:14:20','未命名','4028d881436d514601436d5215ac0043','2015-12-26 12:14:20'),('4028948151dc770f0151dc7e8e8b0009','4028948151dc770f0151dc7d6f0f0001',NULL,'4028d881436d514601436d5215ac0043','2015-12-26 12:14:20','未命名','4028d881436d514601436d5215ac0043','2015-12-26 12:14:20');
/*!40000 ALTER TABLE `weixin_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixin_photo_album`
--

DROP TABLE IF EXISTS `weixin_photo_album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_photo_album` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL COMMENT '相册名称',
  `CONTENT` varchar(255) DEFAULT NULL COMMENT '相册描述',
  `ACCOUNTID` varchar(100) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `CREATE_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '修改时间',
  `UPDATE_BY` varchar(32) DEFAULT NULL COMMENT '修改人',
  `PHOTO_ID` varchar(32) DEFAULT NULL COMMENT '封面相片',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixin_photo_album`
--

LOCK TABLES `weixin_photo_album` WRITE;
/*!40000 ALTER TABLE `weixin_photo_album` DISABLE KEYS */;
INSERT INTO `weixin_photo_album` VALUES ('402880f25907490601590753f98c000f','相册2','相册2','402881e8461795c201461795c2e90000','2016-12-16 19:11:01','4028d881436d514601436d5215ac0043','2016-12-16 19:11:36','4028d881436d514601436d5215ac0043','402880f2590749060159075438570016'),('4028948151dc770f0151dc7d6f0f0001','相册one','相册one','402881e8461795c201461795c2e90000','2015-12-26 12:13:06','4028d881436d514601436d5215ac0043','2016-12-16 19:10:44','4028d881436d514601436d5215ac0043','4028948151dc770f0151dc7e8e020008');
/*!40000 ALTER TABLE `weixin_photo_album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixin_prizerecord`
--

DROP TABLE IF EXISTS `weixin_prizerecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_prizerecord` (
  `ID` varchar(100) NOT NULL,
  `ADDTIME` datetime DEFAULT NULL,
  `HDID` varchar(100) DEFAULT NULL,
  `MOBILE` varchar(100) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `PRIZE` varchar(100) DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixin_prizerecord`
--

LOCK TABLES `weixin_prizerecord` WRITE;
/*!40000 ALTER TABLE `weixin_prizerecord` DISABLE KEYS */;
INSERT INTO `weixin_prizerecord` VALUES ('402881865907db740159082a0e690033','2016-12-16 23:04:51','402881e6469a13b901469a1e9e420001','18677877878','o94BGv4wkjYm7GV6tnh1IHC_F0Z4','2','402881e8461795c201461795c2e90000');
/*!40000 ALTER TABLE `weixin_prizerecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixin_receivetext`
--

DROP TABLE IF EXISTS `weixin_receivetext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_receivetext` (
  `ID` varchar(32) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `fromusername` varchar(255) DEFAULT NULL,
  `msgid` varchar(255) DEFAULT NULL,
  `msgtype` varchar(255) DEFAULT NULL,
  `rescontent` varchar(255) DEFAULT NULL,
  `response` varchar(255) DEFAULT NULL,
  `tousername` varchar(255) DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL,
  `nickname` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixin_receivetext`
--

LOCK TABLES `weixin_receivetext` WRITE;
/*!40000 ALTER TABLE `weixin_receivetext` DISABLE KEYS */;
INSERT INTO `weixin_receivetext` VALUES ('402880f2590749060159074b49580004','01','2016-12-16 19:01:31','o94BGv4wkjYm7GV6tnh1IHC_F0Z4','6364652314832334913','text',NULL,'0','gh_20419b74f848','gh_20419b74f848',NULL),('402880f2590749060159074be5b40006','你好','2016-12-16 19:02:11','o94BGv4wkjYm7GV6tnh1IHC_F0Z4','6364652486631026762','text',NULL,'0','gh_20419b74f848','gh_20419b74f848',NULL),('402880f2590749060159074d69490007','大转盘','2016-12-16 19:03:50','o94BGv4wkjYm7GV6tnh1IHC_F0Z4','6364652911832789078','text',NULL,'0','gh_20419b74f848','gh_20419b74f848',NULL),('402880f3591b2a3001591b32e7c50001','你好','2016-12-20 15:47:18','o94BGv4wkjYm7GV6tnh1IHC_F0Z4','6366086537556470254','text',NULL,'0','gh_20419b74f848','gh_20419b74f848',NULL),('402880f3591bc49901591bc76e220001','你好','2016-12-20 18:29:31','o94BGv4wkjYm7GV6tnh1IHC_F0Z4','6366128383422835970','text',NULL,'0','gh_20419b74f848','gh_20419b74f848',NULL),('ff8081815dd9eb55015dd9ebbca20000','hello','2017-08-13 12:48:11','oThMJv8Rsfn9OtsaGdqX_9SFGRMc','6453616528029464345','text','oo','1','gh_00535552d0e7','gh_00535552d0e7',NULL),('ff8081815dd9eb55015dd9ed84ed0004','hello','2017-08-13 12:50:08','oThMJv8Rsfn9OtsaGdqX_9SFGRMc','6453617030540638023','text',NULL,'0','gh_00535552d0e7','gh_00535552d0e7',NULL),('ff8081815dda0428015dda04680d0000','he','2017-08-13 13:15:08','oThMJv8Rsfn9OtsaGdqX_9SFGRMc','6453623472991582484','text',NULL,'0','gh_00535552d0e7','gh_00535552d0e7',NULL),('ff8081815dda0428015dda0489150001','咨询','2017-08-13 13:15:16','oThMJv8Rsfn9OtsaGdqX_9SFGRMc','6453623507351320854','text',NULL,'0','gh_00535552d0e7','gh_00535552d0e7',NULL),('ff8081815dda0428015dda07e80f0009','yu','2017-08-13 13:18:57','oThMJv8Rsfn9OtsaGdqX_9SFGRMc','6453624456539093352','text',NULL,'0','gh_00535552d0e7','gh_00535552d0e7',NULL);
/*!40000 ALTER TABLE `weixin_receivetext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixin_subscribe`
--

DROP TABLE IF EXISTS `weixin_subscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_subscribe` (
  `ID` varchar(32) CHARACTER SET utf8 NOT NULL,
  `accountid` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `addTime` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `msgType` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `templateId` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `templateName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixin_subscribe`
--

LOCK TABLES `weixin_subscribe` WRITE;
/*!40000 ALTER TABLE `weixin_subscribe` DISABLE KEYS */;
INSERT INTO `weixin_subscribe` VALUES ('402889ff472978290147297b54350004','402881e8461795c201461795c2e90000','2014-07-12 15:30:54','news','4028d881472f356e01472f36461b0001','欢迎关注语');
/*!40000 ALTER TABLE `weixin_subscribe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixin_texttemplate`
--

DROP TABLE IF EXISTS `weixin_texttemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_texttemplate` (
  `ID` varchar(32) NOT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `templatename` varchar(255) DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixin_texttemplate`
--

LOCK TABLES `weixin_texttemplate` WRITE;
/*!40000 ALTER TABLE `weixin_texttemplate` DISABLE KEYS */;
INSERT INTO `weixin_texttemplate` VALUES ('4028d8814734ee0d0147356b4c730010','2014-07-14 23:08:50','你好，我是Jeewx捷微管家系统，如果想了解更多功能，请关注公众号“jeecg”','你好','402881e8461795c201461795c2e90000'),('f7a8a3a946e249c20146e25c4dc7000c','2014-06-28 20:03:58','欢迎关注ｓｈａｎｇｇｌ的微信公众号','欢迎关注语','402881e8461795c201461795c2e90000'),('f7a8a3a946e55a940146e5c317f6005f','2014-06-29 11:55:06','官方网站：www.jeewx.com\r\n商务购买联系QQ: 418799587','联系我们','402881e8461795c201461795c2e90000'),('ff8081815dda0428015dda075f8b0007','2017-08-13 13:18:22','发送　\"?\" 获取关键字菜单\r\n发送　\"下单\"　开始下单\r\n发送　\"查单\"    获取您的订单列表','系统菜单','402881e8461795c201461795c2e90000');
/*!40000 ALTER TABLE `weixin_texttemplate` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-13 23:24:03