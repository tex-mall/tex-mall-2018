# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.1.21-MariaDB)
# Database: tex-mall-2018
# Generation Time: 2018-05-24 08:18:07 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table acclogs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `acclogs`;

CREATE TABLE `acclogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态',
  `current` decimal(10,0) DEFAULT NULL COMMENT '当前值（充值）',
  `memo` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注（收入／支出）',
  `tid` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '订单ID',
  `balance` decimal(10,0) DEFAULT NULL COMMENT '余额',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL COMMENT '店铺ID',
  `review` tinyint(4) DEFAULT '0' COMMENT '0未审核，1审核通过',
  `bankname` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '汇款支付账号名',
  `bankimage` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '汇款凭证拍照',
  PRIMARY KEY (`id`),
  KEY `acclog_user_id_index` (`user_id`),
  KEY `acclog_shop_id_index` (`shop_id`),
  KEY `acclog_tid_index` (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `acclogs` WRITE;
/*!40000 ALTER TABLE `acclogs` DISABLE KEYS */;

INSERT INTO `acclogs` (`id`, `user_id`, `status`, `current`, `memo`, `tid`, `balance`, `created_at`, `updated_at`, `shop_id`, `review`, `bankname`, `bankimage`)
VALUES
	(1,4,0,1000,'汇款','100204044060',1000,'2018-03-28 15:44:37',NULL,1,1,NULL,NULL),
	(2,4,1,10,'订单支出','1522136677201803278236',990,'2018-03-27 15:44:37','2018-03-27 15:44:37',1,0,NULL,NULL),
	(3,4,0,110,'汇款','0',1100,'2018-04-10 14:46:02','2018-04-10 14:46:02',1,1,'中欧贸易有限公司','acclogs/April2018/l9gJcNW6hyD6eeBItDGq.png');

/*!40000 ALTER TABLE `acclogs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table banners
# ------------------------------------------------------------

DROP TABLE IF EXISTS `banners`;

CREATE TABLE `banners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '图片',
  `order` int(11) NOT NULL DEFAULT '1' COMMENT '排序值',
  `layout` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '位置',
  `show` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1显示，0隐藏',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '跳转链接',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;

INSERT INTO `banners` (`id`, `image`, `order`, `layout`, `show`, `created_at`, `updated_at`, `url`)
VALUES
	(1,'banners/January2018/977EtaDIda85gPdxvdwZ.png',1,'main',1,'2018-01-17 02:10:55','2018-01-17 02:10:55',NULL);

/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cartdels
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cartdels`;

CREATE TABLE `cartdels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `sku_id` int(11) NOT NULL COMMENT '商品ID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_id` int(11) NOT NULL COMMENT '店铺ID',
  PRIMARY KEY (`id`),
  KEY `cartdels_user_id_index` (`user_id`),
  KEY `cartdels_sku_id_index` (`sku_id`),
  KEY `cartdels_shop_id_index` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `cartdels` WRITE;
/*!40000 ALTER TABLE `cartdels` DISABLE KEYS */;

INSERT INTO `cartdels` (`id`, `user_id`, `sku_id`, `created_at`, `updated_at`, `shop_id`)
VALUES
	(1,4,2,'2018-01-17 06:46:58','2018-01-17 06:46:58',1),
	(3,4,4,'2018-03-27 15:37:53','2018-03-27 15:37:53',1);

/*!40000 ALTER TABLE `cartdels` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table carts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `carts`;

CREATE TABLE `carts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `sku_id` int(11) NOT NULL COMMENT '商品ID',
  `price` decimal(10,0) DEFAULT NULL COMMENT '价格',
  `num` int(11) DEFAULT NULL COMMENT '数量',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT ' 0待备货，1待支付',
  `image` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '图片',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '型号',
  `shop_id` int(11) NOT NULL COMMENT '店铺ID',
  PRIMARY KEY (`id`),
  KEY `carts_user_id_index` (`user_id`),
  KEY `carts_sku_id_index` (`sku_id`),
  KEY `carts_shop_id_index` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;

INSERT INTO `carts` (`id`, `user_id`, `sku_id`, `price`, `num`, `status`, `image`, `created_at`, `updated_at`, `title`, `shop_id`)
VALUES
	(1,4,4,15,12,1,NULL,'2018-04-18 11:52:18','2018-04-18 11:52:18',NULL,1),
	(3,4,2,15,10,0,NULL,'2018-04-20 14:09:56','2018-04-20 14:10:13',NULL,1),
	(6,4,6,NULL,NULL,0,NULL,'2018-05-03 15:08:31','2018-05-03 15:08:31',NULL,1),
	(7,4,7,NULL,NULL,0,NULL,'2018-05-03 15:08:31','2018-05-03 15:08:31',NULL,1);

/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`)
VALUES
	(1,NULL,1,'服务','servers','2018-01-15 05:25:41','2018-01-15 05:25:41');

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table contacts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `contacts`;

CREATE TABLE `contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '姓名',
  `phone` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '手机号码',
  `company` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '公司名称',
  `address` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '地址',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `status` tinyint(4) DEFAULT '0' COMMENT '状态 0未邀请 1已邀请 2 已注册.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `contacts_phone_unique` (`phone`),
  KEY `contacts_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;

INSERT INTO `contacts` (`id`, `name`, `phone`, `company`, `address`, `created_at`, `updated_at`, `user_id`, `status`)
VALUES
	(2,'蓝燕光','13588100379','中欧贸易有限公司','杭州市拱墅区星星街道130号 5-2010','2018-04-04 14:54:57','2018-04-04 14:55:09',4,1);

/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table data_rows
# ------------------------------------------------------------

DROP TABLE IF EXISTS `data_rows`;

CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`)
VALUES
	(1,1,'id','number','ID',1,0,0,0,0,0,'',1),
	(2,1,'author_id','text','Author',1,0,1,1,0,1,'',2),
	(3,1,'category_id','text','Category',1,0,1,1,1,0,'',3),
	(4,1,'title','text','Title',1,1,1,1,1,1,'',4),
	(5,1,'excerpt','text_area','excerpt',1,0,1,1,1,1,'',5),
	(6,1,'body','rich_text_box','Body',1,0,1,1,1,1,'',6),
	(7,1,'image','image','Post Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',7),
	(8,1,'slug','text','slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}',8),
	(9,1,'meta_description','text_area','meta_description',1,0,1,1,1,1,'',9),
	(10,1,'meta_keywords','text_area','meta_keywords',1,0,1,1,1,1,'',10),
	(11,1,'status','select_dropdown','status',1,1,1,1,1,1,'{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}',11),
	(12,1,'created_at','timestamp','created_at',0,1,1,0,0,0,'',12),
	(13,1,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',13),
	(14,2,'id','number','id',1,0,0,0,0,0,'',1),
	(15,2,'author_id','text','author_id',1,0,0,0,0,0,'',2),
	(16,2,'title','text','title',1,1,1,1,1,1,'',3),
	(17,2,'excerpt','text_area','excerpt',1,0,1,1,1,1,'',4),
	(18,2,'body','rich_text_box','body',1,0,1,1,1,1,'',5),
	(19,2,'slug','text','slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"}}',6),
	(20,2,'meta_description','text','meta_description',1,0,1,1,1,1,'',7),
	(21,2,'meta_keywords','text','meta_keywords',1,0,1,1,1,1,'',8),
	(22,2,'status','select_dropdown','status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',9),
	(23,2,'created_at','timestamp','created_at',1,1,1,0,0,0,'',10),
	(24,2,'updated_at','timestamp','updated_at',1,0,0,0,0,0,'',11),
	(25,2,'image','image','image',0,1,1,1,1,1,'',12),
	(26,3,'id','number','id',1,0,0,0,0,0,NULL,1),
	(27,3,'name','text','name',1,1,1,1,1,1,NULL,2),
	(28,3,'email','text','email',0,1,1,1,1,1,NULL,3),
	(29,3,'password','password','password',0,0,0,1,1,0,NULL,4),
	(30,3,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}',10),
	(31,3,'remember_token','text','remember_token',0,0,0,0,0,0,NULL,5),
	(32,3,'created_at','timestamp','created_at',0,1,1,0,0,0,NULL,6),
	(33,3,'updated_at','timestamp','updated_at',0,0,0,0,0,0,NULL,7),
	(34,3,'avatar','image','avatar',0,1,1,1,1,1,NULL,8),
	(35,5,'id','number','id',1,0,0,0,0,0,'',1),
	(36,5,'name','text','name',1,1,1,1,1,1,'',2),
	(37,5,'created_at','timestamp','created_at',0,0,0,0,0,0,'',3),
	(38,5,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',4),
	(39,4,'id','number','id',1,0,0,0,0,0,'',1),
	(40,4,'parent_id','select_dropdown','parent_id',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),
	(41,4,'order','text','order',1,1,1,1,1,1,'{\"default\":1}',3),
	(42,4,'name','text','name',1,1,1,1,1,1,'',4),
	(43,4,'slug','text','slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',5),
	(44,4,'created_at','timestamp','created_at',0,0,1,0,0,0,'',6),
	(45,4,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',7),
	(46,6,'id','number','id',1,0,0,0,0,0,'',1),
	(47,6,'name','text','Name',1,1,1,1,1,1,'',2),
	(48,6,'created_at','timestamp','created_at',0,0,0,0,0,0,'',3),
	(49,6,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',4),
	(50,6,'display_name','text','Display Name',1,1,1,1,1,1,'',5),
	(51,1,'seo_title','text','seo_title',0,1,1,1,1,1,'',14),
	(52,1,'featured','checkbox','featured',1,1,1,1,1,1,'',15),
	(53,3,'role_id','text','role_id',0,1,1,1,1,1,NULL,9),
	(54,8,'id','number','Id',1,0,0,0,0,0,NULL,1),
	(55,8,'parent_id','select_dropdown','Parent Id',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),
	(56,8,'order','text','Order',1,1,1,1,1,1,'{\"default\":1}',3),
	(57,8,'name','text','Name',1,1,1,1,1,1,NULL,4),
	(58,8,'slug','text','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',5),
	(59,8,'created_at','timestamp','Created At',0,0,1,0,0,0,NULL,6),
	(60,8,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),
	(61,9,'id','number','Id',1,0,0,0,0,0,NULL,1),
	(62,9,'parent_id','select_dropdown','分类',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),
	(63,9,'order','text','排序',1,1,1,1,1,1,'{\"default\":1}',3),
	(64,9,'name','text','名称',1,1,1,1,1,1,NULL,4),
	(65,9,'slug','text','简称',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',5),
	(66,9,'created_at','timestamp','创建时间',0,0,1,0,0,0,NULL,6),
	(67,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),
	(68,10,'id','number','Id',1,0,0,0,0,0,NULL,1),
	(69,10,'modcat_id','select_dropdown','分类',0,0,1,1,1,0,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),
	(70,10,'order','text','排序',1,1,1,1,1,1,'{\"default\":1}',3),
	(71,10,'image','image','小图',1,1,1,1,1,1,NULL,5),
	(72,10,'image_material','image','大图',1,1,1,1,1,1,NULL,6),
	(73,10,'created_at','timestamp','创建时间',0,0,1,0,0,0,NULL,7),
	(74,10,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,8),
	(75,10,'name','text','名称',1,1,1,1,1,1,NULL,4),
	(76,10,'recommend','checkbox','推荐',1,1,1,1,1,1,'{\"on\":\"推荐\",\"off\":\"不推荐\",\"checked\":\"true\"}',9),
	(86,12,'id','number','Id',1,0,0,0,0,0,NULL,1),
	(87,12,'name','text','Name',1,1,1,1,1,1,NULL,2),
	(88,12,'image','image','Image',1,1,1,1,1,1,NULL,3),
	(89,12,'hash','text','Hash',1,0,0,0,0,0,NULL,4),
	(90,12,'poster_id','text','Poster Id',1,0,1,0,0,1,NULL,5),
	(91,12,'created_at','timestamp','Created At',0,0,1,0,0,0,NULL,6),
	(92,12,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),
	(93,13,'id','number','Id',1,0,0,0,0,0,NULL,1),
	(94,13,'order','text','排序',1,1,1,1,1,1,'{\"default\":1}',2),
	(95,13,'name','text','名称',1,1,1,1,1,1,NULL,3),
	(96,13,'created_at','timestamp','创建时间',0,0,1,0,0,0,NULL,4),
	(97,13,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,5),
	(98,14,'id','number','Id',1,0,0,0,0,0,NULL,1),
	(99,14,'name','text','名称',1,1,1,1,1,1,NULL,3),
	(100,14,'cat_id','select_dropdown','分组',1,0,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',4),
	(101,14,'created_at','timestamp','创建时间',0,0,1,0,0,0,NULL,5),
	(102,14,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,6),
	(103,13,'slug','text','简称',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',4),
	(104,14,'order','text','排序',1,1,1,1,1,1,'{\"default\":1}',2),
	(105,15,'id','number','Id',1,0,0,0,0,0,NULL,1),
	(106,15,'sku','text','型号',1,1,1,1,1,1,NULL,2),
	(107,15,'image','image','图像',1,1,1,1,1,1,NULL,3),
	(108,15,'group','text','一花多色',1,1,1,1,1,1,NULL,4),
	(109,15,'material','text','材质',1,1,1,1,1,1,NULL,5),
	(110,15,'weight','text','平方克重',1,1,1,1,1,1,NULL,6),
	(111,15,'width','text','门幅',1,1,1,1,1,1,NULL,7),
	(112,15,'shrinkage','text','缩水率',1,1,1,1,1,1,NULL,8),
	(113,15,'created_at','timestamp','创建时间',0,0,1,0,0,0,NULL,14),
	(114,15,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,15),
	(116,15,'user_id','number','店铺',1,0,0,0,0,0,NULL,10),
	(117,15,'skus_belongstomany_tag_relationship','relationship','属性标签',0,0,1,1,1,1,'{\"model\":\"App\\\\Tag\",\"table\":\"tags\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"sku_tag\",\"pivot\":\"1\"}',11),
	(118,16,'id','number','Id',1,0,0,0,0,0,NULL,1),
	(119,16,'image','image','图像',1,1,1,1,1,1,NULL,3),
	(120,16,'order','text','排序',1,1,1,1,1,1,'{\"default\":1}',2),
	(121,16,'layout','text','位置',1,1,1,1,1,1,NULL,4),
	(122,16,'show','checkbox','显示',1,1,1,1,1,1,'{\"on\":\"显示\",\"off\":\"不显示\",\"checked\":\"true\"}',5),
	(123,16,'created_at','timestamp','创建时间',0,0,1,0,0,0,NULL,6),
	(124,16,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),
	(127,17,'id','number','Id',1,0,0,0,0,0,NULL,1),
	(128,17,'user_id','select_dropdown','用户',1,0,0,0,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),
	(129,17,'sku_id','select_dropdown','商品',1,0,0,0,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"sku\"}}',3),
	(130,17,'created_at','timestamp','Created At',0,0,1,0,0,0,NULL,4),
	(131,17,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,5),
	(132,17,'view_hasmany_user_relationship','relationship','用户',0,1,0,0,0,0,'{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"banners\",\"pivot\":\"0\"}',6),
	(133,17,'view_hasmany_skus_relationship','relationship','商品',0,1,0,0,0,0,'{\"model\":\"App\\\\Sku\",\"table\":\"skus\",\"type\":\"belongsTo\",\"column\":\"sku_id\",\"key\":\"id\",\"label\":\"sku\",\"pivot_table\":\"banners\",\"pivot\":\"0\"}',7),
	(134,18,'id','number','Id',1,0,0,0,0,0,NULL,1),
	(135,18,'user_id','select_dropdown','用户',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),
	(136,18,'keyword','text','关键字',1,1,1,1,1,1,NULL,3),
	(137,18,'created_at','timestamp','Created At',0,0,1,0,0,0,NULL,5),
	(138,18,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,6),
	(139,18,'search_belongsto_user_relationship','relationship','用户',0,1,0,0,0,0,'{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"banners\",\"pivot\":\"0\"}',4),
	(140,19,'id','number','Id',1,0,0,0,0,0,NULL,1),
	(141,19,'user_id','select_dropdown','用户',1,0,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),
	(143,19,'created_at','timestamp','创建时间',0,0,0,0,0,0,NULL,5),
	(144,19,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,6),
	(145,19,'search_belongsto_user_relationship_1','relationship','用户',0,1,0,0,0,0,'{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"banners\",\"pivot\":\"0\"}',3),
	(146,20,'id','number','Id',1,0,0,0,0,0,NULL,1),
	(147,20,'user_id','select_dropdown','用户',1,0,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),
	(148,20,'sku_id','select_dropdown','商品',1,0,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"sku\"}}',3),
	(149,20,'created_at','timestamp','Created At',0,0,1,0,0,0,NULL,6),
	(150,20,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),
	(151,20,'fav_belongsto_user_relationship','relationship','用户',0,1,0,0,0,0,'{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"favs\",\"pivot\":\"0\"}',4),
	(152,20,'fav_belongsto_skus_relationship','relationship','商品',0,1,0,0,0,0,'{\"model\":\"App\\\\Sku\",\"table\":\"skus\",\"type\":\"belongsTo\",\"column\":\"sku_id\",\"key\":\"id\",\"label\":\"sku\",\"pivot_table\":\"banners\",\"pivot\":\"0\"}',5),
	(153,21,'id','number','Id',1,0,0,0,0,0,NULL,1),
	(154,21,'user_id','select_dropdown','用户',1,0,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),
	(155,21,'sku_id','select_dropdown','商品',1,0,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"sku\"}}',3),
	(156,21,'price','text','价格',0,1,1,1,1,1,NULL,6),
	(157,21,'num','text','数量',0,1,1,1,1,1,NULL,7),
	(158,21,'status','select_dropdown','状态',1,1,1,1,1,1,'{\"default\":\"0\",\"options\":{\"0\":\"需求阶段\",\"1\":\"提交备货\",\"2\":\"备货完成\"}}',8),
	(159,21,'image','image','配货图像',0,1,1,1,1,1,NULL,9),
	(160,21,'created_at','timestamp','创建时间',0,0,1,0,0,0,NULL,10),
	(161,21,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,11),
	(162,21,'cart_belongsto_user_relationship','relationship','用户',0,1,0,0,0,0,'{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"banners\",\"pivot\":\"0\"}',4),
	(163,21,'cart_belongsto_skus_relationship','relationship','商品',0,1,0,0,0,0,'{\"model\":\"App\\\\Sku\",\"table\":\"skus\",\"type\":\"belongsTo\",\"column\":\"sku_id\",\"key\":\"id\",\"label\":\"sku\",\"pivot_table\":\"banners\",\"pivot\":\"0\"}',5),
	(164,22,'id','number','Id',1,0,0,0,0,0,NULL,1),
	(165,22,'user_id','select_dropdown','用户',1,0,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),
	(166,22,'sku_id','select_dropdown','商品',1,0,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"sku\"}}',3),
	(167,22,'created_at','timestamp','Created At',0,0,1,0,0,0,NULL,6),
	(168,22,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),
	(169,22,'cartdel_belongsto_user_relationship','relationship','用户',0,1,0,0,0,0,'{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"banners\",\"pivot\":\"0\"}',4),
	(170,22,'cartdel_belongsto_skus_relationship','relationship','商品',0,1,0,0,0,0,'{\"model\":\"App\\\\Sku\",\"table\":\"skus\",\"type\":\"belongsTo\",\"column\":\"sku_id\",\"key\":\"id\",\"label\":\"sku\",\"pivot_table\":\"banners\",\"pivot\":\"0\"}',5),
	(171,23,'id','number','Id',1,0,0,0,0,0,NULL,1),
	(172,23,'cart_id','select_dropdown','购物车',1,0,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"title\"}}',2),
	(173,23,'unit','text','规格',0,1,1,1,1,1,NULL,4),
	(174,23,'num','text','匹数',0,1,1,1,1,1,NULL,5),
	(175,23,'created_at','timestamp','创建时间',0,0,1,0,0,0,NULL,6),
	(176,23,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),
	(177,21,'title','text','购物车名称',0,1,1,1,1,1,NULL,10),
	(178,23,'stock_belongsto_cart_relationship','relationship','购物车',0,1,0,0,0,0,'{\"model\":\"App\\\\Cart\",\"table\":\"carts\",\"type\":\"belongsTo\",\"column\":\"cart_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"carts\",\"pivot\":\"0\"}',3),
	(179,24,'id','number','Id',1,0,0,0,0,0,NULL,1),
	(180,24,'name','text','支付方式',1,1,1,1,1,1,NULL,2),
	(181,24,'user','text','户名',0,1,1,1,1,1,NULL,3),
	(182,24,'bank','text','开户行',0,1,1,1,1,1,NULL,4),
	(183,24,'card','text','帐号',0,1,1,1,1,1,NULL,5),
	(184,24,'user_id','number','User Id',1,0,0,0,0,0,NULL,6),
	(185,24,'created_at','timestamp','Created At',0,0,1,0,0,0,NULL,7),
	(186,24,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,8),
	(187,25,'id','number','Id',1,0,0,0,0,0,NULL,1),
	(188,25,'name','text','支付方式',1,1,1,1,1,1,NULL,2),
	(189,25,'user','text','户名',0,1,1,1,1,1,NULL,3),
	(190,25,'bank','text','开户行',0,1,1,1,1,1,NULL,4),
	(191,25,'card','text','帐号',0,1,1,1,1,1,NULL,5),
	(192,25,'user_id','number','User Id',1,0,0,0,0,0,NULL,6),
	(193,25,'created_at','timestamp','创建时间',0,0,1,0,0,0,NULL,7),
	(194,25,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,8),
	(195,26,'id','number','Id',1,0,0,0,0,0,NULL,1),
	(196,26,'user','text','收货人',1,1,1,1,1,1,NULL,2),
	(197,26,'phone','text','手机号码',1,1,1,1,1,1,NULL,3),
	(198,26,'province','text','省份',1,1,1,1,1,1,NULL,4),
	(199,26,'city','text','城市',1,1,1,1,1,1,NULL,5),
	(200,26,'area','text','地区',1,1,1,1,1,1,NULL,6),
	(201,26,'street','text','街道',1,1,1,1,1,1,NULL,7),
	(202,26,'address','text','详细地址',0,1,1,1,1,1,NULL,8),
	(203,26,'addrcode','text','地区编号',0,1,1,1,1,1,NULL,9),
	(204,26,'user_id','number','User Id',1,0,0,0,0,0,NULL,10),
	(205,26,'created_at','timestamp','Created At',0,0,1,0,0,0,NULL,11),
	(206,26,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,12),
	(207,27,'id','number','Id',1,0,0,0,0,0,NULL,1),
	(208,27,'tid','text','订单号',1,1,1,0,0,0,NULL,2),
	(209,27,'payment','text','金额',1,1,1,1,1,1,NULL,3),
	(210,27,'paytime','timestamp','支付时间',1,0,1,1,1,1,NULL,4),
	(211,27,'shiptime','timestamp','发货时间',0,0,1,1,1,1,NULL,5),
	(212,27,'receivertime','timestamp','收货时间',0,0,1,1,1,1,NULL,6),
	(213,27,'endtime','timestamp','交易完成',0,0,1,1,1,1,NULL,7),
	(214,27,'user_id','select_dropdown','用户',1,0,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',8),
	(215,27,'receivername','text','收货人',0,0,1,1,1,1,NULL,10),
	(216,27,'recevierphone','text','收货人手机号码',0,0,1,1,1,1,NULL,11),
	(217,27,'recevierprovince','text','省',0,0,1,1,1,1,NULL,12),
	(218,27,'receviercity','text','市',0,0,1,1,1,1,NULL,13),
	(219,27,'recevierarea','text','区',0,0,1,1,1,1,NULL,14),
	(220,27,'recevierstreet','text','街道',0,0,1,1,1,1,NULL,15),
	(221,27,'receiveraddress','text','详细地址',0,0,1,1,1,1,NULL,16),
	(222,27,'paymethod','text','支付方式',0,1,1,1,1,1,NULL,17),
	(223,27,'shipmethod','text','物流方式',0,1,1,1,1,1,NULL,18),
	(224,27,'stockno','text','码单',0,0,1,1,1,1,NULL,19),
	(225,27,'shipno','text','托运单',0,0,1,1,1,1,NULL,20),
	(226,27,'stockimage','image','码单图像',0,0,1,1,1,1,NULL,21),
	(227,27,'shipimage','image','托运单图像',0,0,1,1,1,1,NULL,22),
	(228,27,'receiverimage','image','确认收货图像',0,0,1,1,1,1,NULL,23),
	(229,27,'status','select_dropdown','订单状态',1,1,1,1,1,1,'{\"default\":\"0\",\"options\":{\"0\":\"已付款待发货\",\"1\":\"已发货待收货\",\"2\":\"订单交易完成\"}}',24),
	(230,27,'created_at','timestamp','创建时间',0,0,1,0,0,0,NULL,25),
	(231,27,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,26),
	(232,27,'trade_belongsto_user_relationship','relationship','用户',0,1,0,0,0,0,'{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"banners\",\"pivot\":\"0\"}',9),
	(233,29,'id','number','Id',1,0,0,0,0,0,NULL,1),
	(234,29,'title','text','商品',0,1,1,1,1,1,NULL,3),
	(235,29,'price','text','价格',0,1,1,1,1,1,NULL,4),
	(236,29,'num','text','数量',0,1,1,1,1,1,NULL,5),
	(237,29,'tid','text','订单号',0,1,1,1,1,1,NULL,6),
	(238,29,'created_at','timestamp','创建时间',0,0,1,0,0,0,NULL,7),
	(239,29,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,8),
	(240,29,'image','image','图像',0,1,1,1,1,1,NULL,2),
	(241,30,'id','number','Id',1,0,0,0,0,0,NULL,1),
	(242,30,'title','text','标题',1,1,1,1,1,1,NULL,2),
	(243,30,'message','text_area','消息',1,1,1,1,1,1,NULL,3),
	(244,30,'type','select_dropdown','类型',1,1,1,1,1,1,'{\"default\":\"0\",\"options\":{\"0\":\"通知消息\",\"1\":\"产品消息\",\"2\":\"订单消息\",\"3\":\"账户消息\"}}',4),
	(245,30,'user_id','number','用户',1,0,0,0,0,0,NULL,5),
	(246,30,'readed','checkbox','标识',1,1,1,1,1,1,'{\"on\":\"已读\",\"off\":\"未读\"}',6),
	(247,30,'created_at','timestamp','创建时间',0,0,1,0,0,0,NULL,7),
	(248,30,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,8),
	(249,31,'id','number','Id',1,0,0,0,0,0,NULL,1),
	(250,31,'title','text','模版标题',1,1,1,1,1,1,NULL,2),
	(251,31,'content','text_area','模版内容',1,1,1,1,1,1,NULL,3),
	(252,31,'type','select_dropdown','默认类型',1,1,1,1,1,1,'{\"default\":\"0\",\"options\":{\"0\":\"通知消息\",\"1\":\"产品消息\",\"2\":\"订单消息\",\"3\":\"账户消息\"}}',4),
	(253,31,'created_at','timestamp','创建时间',0,0,1,0,0,0,NULL,5),
	(254,31,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,6),
	(255,27,'mid','number','码单',0,0,0,0,0,0,NULL,26),
	(256,29,'mid','text','码单',0,0,1,0,0,0,NULL,9),
	(257,29,'sid','text','托运单',0,0,1,0,1,0,NULL,10),
	(258,23,'mid','text','码单',0,0,0,0,0,0,NULL,7),
	(259,15,'status','checkbox','销售状态',1,1,1,1,1,1,'{\"on\":\"在售\",\"off\":\"仓库\",\"checked\":\"true\"}',12),
	(260,13,'parent_id','select_dropdown','Parent Id',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',7),
	(261,16,'url','text','跳转链接',0,1,1,1,1,1,NULL,8),
	(262,32,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),
	(263,32,'tid','text','订单号',1,1,1,0,0,0,NULL,2),
	(264,32,'user_id','select_dropdown','用户',1,0,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',3),
	(265,32,'shipno','text','托运单',0,0,1,1,1,1,NULL,4),
	(266,32,'status','select_dropdown','订单状态',1,1,1,1,1,1,'{\"default\":\"0\",\"options\":{\"0\":\"待发货\",\"1\":\"已发货\"}}',5),
	(267,32,'created_at','timestamp','创建时间',0,1,1,1,0,1,NULL,6),
	(268,32,'updated_at','timestamp','更新时间',0,0,0,0,0,0,NULL,7),
	(269,32,'receivername','text','收货人',0,1,1,1,1,0,NULL,8),
	(270,32,'receiverphone','text','联系电话',0,1,1,1,1,0,NULL,9),
	(271,32,'recevierprovince','text','省份',0,0,0,0,0,0,NULL,10),
	(272,32,'receviercity','text','城市',0,0,0,0,0,0,NULL,11),
	(273,32,'recevierarea','text','地区',0,0,0,0,0,0,NULL,12),
	(274,32,'recevierstreet','text','街道地址',0,0,0,0,0,0,NULL,13),
	(275,32,'receiveraddress','text','收货地址',0,1,1,0,1,0,NULL,14),
	(276,33,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),
	(277,33,'sid','text','托运单',0,0,1,0,1,0,NULL,2),
	(278,33,'tid','text','小样订单号',1,1,1,1,1,1,NULL,3),
	(279,33,'title','text','小样',1,1,1,1,1,1,NULL,4),
	(280,33,'image','image','图像',0,1,1,1,1,1,NULL,5),
	(281,33,'created_at','timestamp','创建时间',0,0,1,0,0,0,NULL,6),
	(282,33,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),
	(283,3,'phone','text','Phone',0,1,1,1,1,1,NULL,10),
	(284,3,'weixin_openid','text','Weixin Openid',0,0,0,0,0,0,NULL,11),
	(285,3,'weixin_unionid','text','Weixin Unionid',0,0,0,0,0,0,NULL,12),
	(286,3,'registration_id','checkbox','Registration Id',0,0,0,0,0,0,NULL,13),
	(287,34,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),
	(288,34,'name','text','店铺名称',1,1,1,1,1,1,NULL,2),
	(289,34,'user_id','select_dropdown','店铺ID',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',3),
	(290,34,'location','text','地域',1,1,1,1,1,1,NULL,4),
	(291,34,'image','image','店铺图片',0,1,1,1,1,1,NULL,5),
	(292,34,'intro','text','文字介绍',0,1,1,1,1,1,NULL,6),
	(293,34,'created_at','timestamp','创建时间',0,1,1,1,0,1,NULL,7),
	(294,34,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,8),
	(295,19,'tag','text','类型',1,1,1,1,1,1,NULL,3),
	(296,19,'tag_id','text','类型ID',1,1,1,1,1,1,NULL,6);

/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table data_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `data_types`;

CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`)
VALUES
	(1,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','TCG\\Voyager\\Policies\\PostPolicy','','',1,0,'2018-01-11 07:13:26','2018-01-11 07:13:26'),
	(2,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page',NULL,'','',1,0,'2018-01-11 07:13:26','2018-01-11 07:13:26'),
	(3,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy',NULL,NULL,1,0,'2018-01-11 07:13:26','2018-03-13 03:00:14'),
	(4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category',NULL,'','',1,0,'2018-01-11 07:13:26','2018-01-11 07:13:26'),
	(5,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,'2018-01-11 07:13:26','2018-01-11 07:13:26'),
	(6,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'','',1,0,'2018-01-11 07:13:26','2018-01-11 07:13:26'),
	(8,'modcat','modcat','Modcat','Modcats',NULL,'App\\Modcat',NULL,NULL,NULL,1,0,'2018-01-15 05:16:10','2018-01-15 05:16:10'),
	(9,'modcats','modcats','款式','款式分类','voyager-categories','App\\Modcat',NULL,NULL,NULL,1,0,'2018-01-15 05:24:14','2018-01-16 03:40:26'),
	(10,'mods','mods','模特','试衣模特','voyager-photo','App\\Mod',NULL,NULL,NULL,1,0,'2018-01-15 06:02:19','2018-01-16 03:40:36'),
	(12,'products','products','产品','产品库','voyager-archive','App\\Product',NULL,NULL,NULL,1,0,'2018-01-16 03:36:18','2018-01-16 03:40:06'),
	(13,'tagcats','tagcats','属性分组','属性分组','voyager-categories','App\\Tagcat',NULL,NULL,NULL,1,0,'2018-01-16 06:36:58','2018-01-16 06:36:58'),
	(14,'tags','tags','属性','属性','voyager-list','App\\Tag',NULL,NULL,NULL,1,0,'2018-01-16 06:39:30','2018-01-16 06:39:30'),
	(15,'skus','skus','商品','商品','voyager-diamond','App\\Sku',NULL,NULL,NULL,1,0,'2018-01-16 07:30:14','2018-01-16 12:17:40'),
	(16,'banners','banners','广告位','广告位','voyager-photo','App\\Banner',NULL,NULL,NULL,1,0,'2018-01-17 02:09:41','2018-01-17 02:10:33'),
	(17,'views','views','足迹','足迹','voyager-anchor','App\\View',NULL,NULL,NULL,1,0,'2018-01-17 03:01:21','2018-01-17 03:01:21'),
	(18,'searchs','searchs','搜索历史','搜索历史','voyager-activity','App\\Search',NULL,NULL,NULL,1,0,'2018-01-17 05:27:35','2018-01-17 05:27:35'),
	(19,'searches','searches','搜索历史','搜索历史','voyager-anchor','App\\Search',NULL,NULL,NULL,1,0,'2018-01-17 05:32:06','2018-01-17 05:32:06'),
	(20,'favs','favs','收藏','收藏','voyager-star','App\\Fav',NULL,NULL,NULL,1,0,'2018-01-17 05:42:44','2018-01-17 05:42:44'),
	(21,'carts','carts','购物车','购物车',NULL,'App\\Cart',NULL,NULL,NULL,1,0,'2018-01-17 06:18:50','2018-01-17 06:18:50'),
	(22,'cartdels','cartdels','购物车历史','购物车历史','voyager-x','App\\Cartdel',NULL,NULL,NULL,1,0,'2018-01-17 06:43:29','2018-01-17 06:43:29'),
	(23,'stocks','stocks','备货','备货','voyager-barbeque','App\\Stock',NULL,NULL,NULL,1,0,'2018-01-17 07:00:25','2018-01-17 07:00:25'),
	(24,'paymethod','paymethod','付款方式','付款方式','voyager-pie-chart','App\\Paymethod',NULL,NULL,NULL,1,0,'2018-01-17 07:39:12','2018-01-17 07:39:12'),
	(25,'paymethods','paymethods','付款方式','付款方式','voyager-pie-chart','App\\Paymethod',NULL,NULL,NULL,1,0,'2018-01-17 07:42:28','2018-01-17 07:43:48'),
	(26,'receivers','receivers','收获地址','收获地址','voyager-paper-plane','App\\Receiver',NULL,NULL,NULL,1,0,'2018-01-17 08:05:58','2018-01-17 08:05:58'),
	(27,'trades','trades','订单','订单','voyager-shop','App\\Trade',NULL,NULL,NULL,1,0,'2018-01-18 06:22:41','2018-01-18 06:22:41'),
	(29,'tradeskus','tradeskus','订单商品','订单商品','voyager-barbeque','App\\Tradesku',NULL,NULL,NULL,1,0,'2018-01-18 06:42:40','2018-01-18 06:42:40'),
	(30,'message','message','消息','消息','voyager-bell','App\\Message',NULL,NULL,NULL,1,0,'2018-01-20 06:40:12','2018-01-23 02:06:13'),
	(31,'msgtemplate','msgtemplate','消息模版','消息模版','voyager-bubble','App\\Msgtemplate',NULL,NULL,NULL,1,0,'2018-01-23 02:37:24','2018-01-23 02:37:24'),
	(32,'textures','textures','小样','小样','voyager-shop','App\\Texture',NULL,NULL,NULL,1,0,'2018-03-12 07:45:02','2018-03-12 07:45:02'),
	(33,'textureskus','textureskus','小样商品','小样商品','voyager-barbeque','App\\Texturesku',NULL,NULL,NULL,1,0,'2018-03-12 08:07:44','2018-03-12 08:11:41'),
	(34,'shops','shops','店铺','店铺','voyager-archive','App\\Shop',NULL,NULL,NULL,1,0,'2018-03-19 11:59:39','2018-03-19 11:59:39');

/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table favs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `favs`;

CREATE TABLE `favs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `sku_id` int(11) NOT NULL COMMENT '商品ID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `favs_user_id_index` (`user_id`),
  KEY `favs_sku_id_index` (`sku_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `favs` WRITE;
/*!40000 ALTER TABLE `favs` DISABLE KEYS */;

INSERT INTO `favs` (`id`, `user_id`, `sku_id`, `created_at`, `updated_at`)
VALUES
	(1,1,2,'2018-01-17 05:46:44','2018-01-17 05:46:44'),
	(5,4,6,'2018-04-20 11:27:57','2018-04-20 11:27:57');

/*!40000 ALTER TABLE `favs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table follows
# ------------------------------------------------------------

DROP TABLE IF EXISTS `follows`;

CREATE TABLE `follows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `user_id` int(11) DEFAULT NULL COMMENT '店铺ID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `follows_shop_id_index` (`shop_id`),
  KEY `follows_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `follows` WRITE;
/*!40000 ALTER TABLE `follows` DISABLE KEYS */;

INSERT INTO `follows` (`id`, `shop_id`, `user_id`, `created_at`, `updated_at`)
VALUES
	(2,1,4,'2018-04-10 14:48:23','2018-04-10 14:48:23');

/*!40000 ALTER TABLE `follows` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table footprints
# ------------------------------------------------------------

DROP TABLE IF EXISTS `footprints`;

CREATE TABLE `footprints` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `type` tinyint(4) DEFAULT '0' COMMENT '关联类型（	\n0 商品 1店铺）',
  `type_id` int(11) DEFAULT NULL COMMENT '关联值ID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `footprints_user_id_index` (`user_id`),
  KEY `footprints_type_id_index` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `footprints` WRITE;
/*!40000 ALTER TABLE `footprints` DISABLE KEYS */;

INSERT INTO `footprints` (`id`, `user_id`, `type`, `type_id`, `created_at`, `updated_at`)
VALUES
	(1,4,0,2,'2018-03-27 15:44:37',NULL),
	(2,4,1,1,'2018-03-27 15:44:37',NULL),
	(3,4,0,4,'2018-03-27 15:44:37',NULL);

/*!40000 ALTER TABLE `footprints` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menu_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menu_items`;

CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`)
VALUES
	(1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2018-01-11 07:13:26','2018-01-11 07:13:26','voyager.dashboard',NULL),
	(2,1,'Media','','_self','voyager-images',NULL,NULL,4,'2018-01-11 07:13:26','2018-01-15 06:17:32','voyager.media.index',NULL),
	(3,1,'Posts','','_self','voyager-news',NULL,NULL,5,'2018-01-11 07:13:26','2018-01-15 06:17:32','voyager.posts.index',NULL),
	(4,1,'Users','','_self','voyager-person',NULL,NULL,3,'2018-01-11 07:13:26','2018-01-11 07:13:26','voyager.users.index',NULL),
	(5,1,'Categories','','_self','voyager-categories',NULL,NULL,7,'2018-01-11 07:13:26','2018-01-15 06:17:32','voyager.categories.index',NULL),
	(6,1,'Pages','','_self','voyager-file-text',NULL,NULL,6,'2018-01-11 07:13:26','2018-01-15 06:17:32','voyager.pages.index',NULL),
	(7,1,'Roles','','_self','voyager-lock',NULL,NULL,2,'2018-01-11 07:13:26','2018-01-11 07:13:26','voyager.roles.index',NULL),
	(8,1,'Tools','','_self','voyager-tools',NULL,NULL,8,'2018-01-11 07:13:26','2018-01-15 06:17:32',NULL,NULL),
	(9,1,'Menu Builder','','_self','voyager-list',NULL,8,1,'2018-01-11 07:13:26','2018-01-15 06:17:32','voyager.menus.index',NULL),
	(10,1,'Database','','_self','voyager-data',NULL,8,2,'2018-01-11 07:13:26','2018-01-15 06:17:32','voyager.database.index',NULL),
	(11,1,'Compass','','_self','voyager-compass',NULL,8,3,'2018-01-11 07:13:26','2018-01-15 06:17:32','voyager.compass.index',NULL),
	(12,1,'Hooks','','_self','voyager-hook',NULL,8,4,'2018-01-11 07:13:26','2018-01-15 06:17:32','voyager.hooks',NULL),
	(13,1,'Settings','','_self','voyager-settings',NULL,NULL,9,'2018-01-11 07:13:26','2018-01-15 06:17:32','voyager.settings.index',NULL),
	(15,1,'款式分类','/admin/modcats','_self','voyager-categories','#000000',17,1,'2018-01-15 05:24:14','2018-01-15 06:20:50',NULL,''),
	(16,1,'试衣模特','/admin/mods','_self','voyager-photo','#000000',17,2,'2018-01-15 06:02:19','2018-01-15 06:18:23',NULL,''),
	(17,1,'3D试衣','','_self','voyager-images','#000000',NULL,12,'2018-01-15 06:17:25','2018-01-17 03:54:50',NULL,''),
	(18,1,'产品库','/admin/products','_self','voyager-archive','#000000',NULL,13,'2018-01-16 03:21:59','2018-01-17 03:54:45',NULL,''),
	(19,1,'属性分组','/admin/tagcats','_self','voyager-categories',NULL,21,1,'2018-01-16 06:36:58','2018-01-16 06:40:36',NULL,NULL),
	(20,1,'属性','/admin/tags','_self','voyager-list',NULL,21,2,'2018-01-16 06:39:30','2018-01-16 06:40:36',NULL,NULL),
	(21,1,'商品','','_self','voyager-shop','#000000',NULL,14,'2018-01-16 06:40:16','2018-01-17 03:54:45',NULL,''),
	(22,1,'商品','/admin/skus','_self','voyager-diamond',NULL,21,3,'2018-01-16 07:30:14','2018-01-16 07:38:22',NULL,NULL),
	(23,1,'广告位','/admin/banners','_self','voyager-photo','#000000',NULL,10,'2018-01-17 02:09:41','2018-01-17 03:54:42',NULL,''),
	(24,1,'足迹','/admin/views','_self','voyager-anchor',NULL,NULL,11,'2018-01-17 03:01:22','2018-01-17 03:54:50',NULL,NULL),
	(26,1,'搜索历史','/admin/searches','_self','voyager-anchor','#000000',NULL,16,'2018-01-17 05:32:06','2018-01-17 05:34:17',NULL,''),
	(27,1,'收藏','/admin/favs','_self','voyager-star',NULL,NULL,17,'2018-01-17 05:42:44','2018-01-17 05:42:44',NULL,NULL),
	(28,1,'购物车','/admin/carts','_self','voyager-basket','#000000',NULL,18,'2018-01-17 06:18:50','2018-01-17 06:49:27',NULL,''),
	(29,1,'购物车历史','/admin/cartdels','_self','voyager-trash','#000000',NULL,19,'2018-01-17 06:43:29','2018-01-17 06:53:30',NULL,''),
	(30,1,'备货','/admin/stocks','_self','voyager-barbeque',NULL,NULL,20,'2018-01-17 07:00:25','2018-01-17 07:00:25',NULL,NULL),
	(32,1,'付款方式','/admin/paymethods','_self','voyager-pie-chart','#000000',NULL,22,'2018-01-17 07:42:28','2018-01-17 07:42:59',NULL,''),
	(33,1,'收获地址','/admin/receivers','_self','voyager-paper-plane',NULL,NULL,23,'2018-01-17 08:05:58','2018-01-17 08:05:58',NULL,NULL),
	(34,1,'订单','/admin/trades','_self','voyager-shop',NULL,NULL,24,'2018-01-18 06:22:41','2018-01-18 06:22:41',NULL,NULL),
	(35,1,'订单商品','/admin/tradeskus','_self','voyager-barbeque',NULL,NULL,25,'2018-01-18 06:42:40','2018-01-18 06:42:40',NULL,NULL),
	(36,1,'消息','/admin/message','_self','voyager-bell','#000000',NULL,26,'2018-01-20 06:40:12','2018-01-23 02:07:29',NULL,''),
	(37,1,'消息模版','/admin/msgtemplate','_self','voyager-bubble',NULL,NULL,27,'2018-01-23 02:37:24','2018-01-23 02:37:24',NULL,NULL),
	(38,1,'小样','/admin/textures','_self','voyager-shop',NULL,NULL,28,'2018-03-12 07:45:02','2018-03-12 07:45:02',NULL,NULL),
	(39,1,'小样商品','/admin/textureskus','_self','voyager-barbeque',NULL,NULL,29,'2018-03-12 08:07:44','2018-03-12 08:07:44',NULL,NULL),
	(40,1,'店铺','/admin/shops','_self','voyager-archive',NULL,NULL,30,'2018-03-19 11:59:39','2018-03-19 11:59:39',NULL,NULL);

/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menus`;

CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'admin','2018-01-11 07:13:26','2018-01-11 07:13:26');

/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table message
# ------------------------------------------------------------

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '消息标题',
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '消息内容',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '类型(0通知 1产品 2订单 3账户)',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `readed` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1已读 ,0未读',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `message_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;

INSERT INTO `message` (`id`, `title`, `message`, `type`, `user_id`, `readed`, `created_at`, `updated_at`)
VALUES
	(2,'产品消息','产品消息内容',1,4,0,'2018-01-23 02:06:44','2018-04-04 12:08:42'),
	(3,'产品消息已读','产品消息内容已读',1,4,1,'2018-01-23 02:06:44','2018-01-23 02:06:44'),
	(4,'通知消息','通知消息内容',0,4,0,'2018-01-23 02:06:44','2018-01-23 02:06:44'),
	(5,'通知消息已读','通知消息内容已读',0,4,1,'2018-01-23 02:06:44','2018-01-23 02:06:44'),
	(6,'订单消息','订单消息内容',2,4,0,'2018-01-23 02:06:44','2018-01-23 02:06:44'),
	(7,'订单消息已读','订单消息内容已读',2,4,1,'2018-01-23 02:06:44','2018-01-23 02:06:44'),
	(8,'账户消息','账户消息内容',3,4,0,'2018-01-23 02:06:44','2018-01-23 02:06:44'),
	(9,'账户消息已读','账户消息内容已读',3,4,1,'2018-01-23 02:06:44','2018-01-23 02:06:44');

/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1),
	(3,'2016_01_01_000000_add_voyager_user_fields',1),
	(4,'2016_01_01_000000_create_data_types_table',1),
	(5,'2016_01_01_000000_create_pages_table',1),
	(6,'2016_01_01_000000_create_posts_table',1),
	(7,'2016_02_15_204651_create_categories_table',1),
	(8,'2016_05_19_173453_create_menu_table',1),
	(9,'2016_10_21_190000_create_roles_table',1),
	(10,'2016_10_21_190000_create_settings_table',1),
	(11,'2016_11_30_135954_create_permission_table',1),
	(12,'2016_11_30_141208_create_permission_role_table',1),
	(13,'2016_12_26_201236_data_types__add__server_side',1),
	(14,'2017_01_13_000000_add_route_to_menu_items_table',1),
	(15,'2017_01_14_005015_create_translations_table',1),
	(16,'2017_01_15_000000_add_permission_group_id_to_permissions_table',1),
	(17,'2017_01_15_000000_create_permission_groups_table',1),
	(18,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),
	(19,'2017_03_06_000000_add_controller_to_data_types_table',1),
	(20,'2017_04_11_000000_alter_post_nullable_fields_table',1),
	(21,'2017_04_21_000000_add_order_to_data_rows_table',1),
	(22,'2017_07_05_210000_add_policyname_to_data_types_table',1),
	(23,'2017_08_05_000000_add_group_to_settings_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modcats
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modcats`;

CREATE TABLE `modcats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT '父ID',
  `order` int(11) NOT NULL DEFAULT '1' COMMENT '排序值',
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '简称',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `modcat_parent_id_index` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `modcats` WRITE;
/*!40000 ALTER TABLE `modcats` DISABLE KEYS */;

INSERT INTO `modcats` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`)
VALUES
	(11,NULL,1,'男装','mens','2018-01-15 07:33:07','2018-01-15 07:33:07'),
	(12,NULL,2,'女装','women','2018-01-15 07:35:30','2018-01-15 07:35:39'),
	(13,NULL,3,'男童','boy','2018-01-15 07:36:00','2018-01-15 07:36:00'),
	(14,NULL,4,'女童','girls','2018-01-15 07:36:16','2018-01-15 07:36:16'),
	(15,NULL,1,'测试','test','2018-04-24 11:42:36','2018-04-24 11:42:36');

/*!40000 ALTER TABLE `modcats` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table mods
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mods`;

CREATE TABLE `mods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `modcat_id` int(11) DEFAULT NULL COMMENT '模特分类ID',
  `order` int(11) NOT NULL DEFAULT '1' COMMENT '排序值',
  `image` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '小图',
  `image_material` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '大图',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `recommend` tinyint(4) NOT NULL DEFAULT '0' COMMENT '推荐',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mods_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `mods` WRITE;
/*!40000 ALTER TABLE `mods` DISABLE KEYS */;

INSERT INTO `mods` (`id`, `modcat_id`, `order`, `image`, `image_material`, `created_at`, `updated_at`, `name`, `recommend`)
VALUES
	(6,15,1,'mods/April2018/c346IGdT1yUe0cBNtVw1.jpg','mods/April2018/4c2zokveqspdttoXqfuY.jpg','2018-04-24 11:45:14','2018-04-24 11:45:26','01',1),
	(7,15,2,'mods/April2018/8bJVYq1umGTwXD7zKoYc.jpg','mods/April2018/bdOjJhyE9yYk4PbtveuZ.jpg','2018-04-24 11:46:52','2018-04-24 11:46:52','02',1);

/*!40000 ALTER TABLE `mods` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table msgtemplate
# ------------------------------------------------------------

DROP TABLE IF EXISTS `msgtemplate`;

CREATE TABLE `msgtemplate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`)
VALUES
	(1,1,'111','11','<p>11</p>',NULL,'111','11','11','ACTIVE','2018-01-16 13:05:01','2018-01-16 13:05:01');

/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table paymethods
# ------------------------------------------------------------

DROP TABLE IF EXISTS `paymethods`;

CREATE TABLE `paymethods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付方法',
  `user` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '户名',
  `bank` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '银行',
  `card` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '卡号',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `paymethod_name_unique` (`name`),
  KEY `paymethod_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `paymethods` WRITE;
/*!40000 ALTER TABLE `paymethods` DISABLE KEYS */;

INSERT INTO `paymethods` (`id`, `name`, `user`, `bank`, `card`, `user_id`, `created_at`, `updated_at`)
VALUES
	(1,'公司转账','周周','中国建设银行股份有限公司嘉兴洪兴路支行','64338878237998',1,'2018-01-17 07:48:34','2018-01-17 07:51:07');

/*!40000 ALTER TABLE `paymethods` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table permission_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permission_groups`;

CREATE TABLE `permission_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permission_groups_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table permission_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permission_role`;

CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;

INSERT INTO `permission_role` (`permission_id`, `role_id`)
VALUES
	(1,1),
	(2,1),
	(3,1),
	(4,1),
	(5,1),
	(6,1),
	(7,1),
	(8,1),
	(9,1),
	(10,1),
	(11,1),
	(12,1),
	(13,1),
	(14,1),
	(15,1),
	(16,1),
	(17,1),
	(18,1),
	(19,1),
	(20,1),
	(21,1),
	(22,1),
	(23,1),
	(24,1),
	(25,1),
	(26,1),
	(27,1),
	(28,1),
	(29,1),
	(30,1),
	(31,1),
	(32,1),
	(33,1),
	(34,1),
	(35,1),
	(36,1),
	(37,1),
	(38,1),
	(39,1),
	(40,1),
	(41,1),
	(42,1),
	(43,1),
	(44,1),
	(45,1),
	(46,1),
	(47,1),
	(48,1),
	(49,1),
	(50,1),
	(51,1),
	(52,1),
	(53,1),
	(54,1),
	(55,1),
	(61,1),
	(62,1),
	(63,1),
	(64,1),
	(65,1),
	(66,1),
	(67,1),
	(68,1),
	(69,1),
	(70,1),
	(71,1),
	(72,1),
	(73,1),
	(74,1),
	(75,1),
	(76,1),
	(77,1),
	(78,1),
	(79,1),
	(80,1),
	(81,1),
	(82,1),
	(83,1),
	(84,1),
	(85,1),
	(86,1),
	(87,1),
	(88,1),
	(89,1),
	(90,1),
	(91,1),
	(92,1),
	(93,1),
	(94,1),
	(95,1),
	(96,1),
	(97,1),
	(98,1),
	(99,1),
	(100,1),
	(101,1),
	(102,1),
	(103,1),
	(104,1),
	(105,1),
	(106,1),
	(107,1),
	(108,1),
	(109,1),
	(110,1),
	(111,1),
	(112,1),
	(113,1),
	(114,1),
	(115,1),
	(116,1),
	(117,1),
	(118,1),
	(119,1),
	(120,1),
	(121,1),
	(122,1),
	(123,1),
	(124,1),
	(125,1),
	(126,1),
	(127,1),
	(128,1),
	(129,1),
	(130,1),
	(131,1),
	(132,1),
	(133,1),
	(134,1),
	(135,1),
	(136,1),
	(137,1),
	(138,1),
	(139,1),
	(140,1),
	(141,1),
	(142,1),
	(143,1),
	(144,1),
	(145,1),
	(146,1),
	(147,1),
	(148,1),
	(149,1),
	(150,1),
	(151,1),
	(152,1),
	(153,1),
	(154,1),
	(155,1),
	(156,1),
	(157,1),
	(158,1),
	(159,1),
	(160,1),
	(161,1),
	(162,1),
	(163,1),
	(164,1),
	(165,1),
	(166,1),
	(167,1),
	(168,1),
	(169,1),
	(170,1);

/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`)
VALUES
	(1,'browse_admin',NULL,'2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(2,'browse_database',NULL,'2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(3,'browse_media',NULL,'2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(4,'browse_compass',NULL,'2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(5,'browse_hooks',NULL,'2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(6,'browse_menus','menus','2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(7,'read_menus','menus','2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(8,'edit_menus','menus','2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(9,'add_menus','menus','2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(10,'delete_menus','menus','2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(11,'browse_pages','pages','2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(12,'read_pages','pages','2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(13,'edit_pages','pages','2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(14,'add_pages','pages','2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(15,'delete_pages','pages','2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(16,'browse_roles','roles','2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(17,'read_roles','roles','2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(18,'edit_roles','roles','2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(19,'add_roles','roles','2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(20,'delete_roles','roles','2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(21,'browse_users','users','2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(22,'read_users','users','2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(23,'edit_users','users','2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(24,'add_users','users','2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(25,'delete_users','users','2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(26,'browse_posts','posts','2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(27,'read_posts','posts','2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(28,'edit_posts','posts','2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(29,'add_posts','posts','2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(30,'delete_posts','posts','2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(31,'browse_categories','categories','2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(32,'read_categories','categories','2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(33,'edit_categories','categories','2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(34,'add_categories','categories','2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(35,'delete_categories','categories','2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(36,'browse_settings','settings','2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(37,'read_settings','settings','2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(38,'edit_settings','settings','2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(39,'add_settings','settings','2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(40,'delete_settings','settings','2018-01-11 07:13:26','2018-01-11 07:13:26',NULL),
	(41,'browse_modcat','modcat','2018-01-15 05:16:10','2018-01-15 05:16:10',NULL),
	(42,'read_modcat','modcat','2018-01-15 05:16:10','2018-01-15 05:16:10',NULL),
	(43,'edit_modcat','modcat','2018-01-15 05:16:10','2018-01-15 05:16:10',NULL),
	(44,'add_modcat','modcat','2018-01-15 05:16:10','2018-01-15 05:16:10',NULL),
	(45,'delete_modcat','modcat','2018-01-15 05:16:10','2018-01-15 05:16:10',NULL),
	(46,'browse_modcats','modcats','2018-01-15 05:24:14','2018-01-15 05:24:14',NULL),
	(47,'read_modcats','modcats','2018-01-15 05:24:14','2018-01-15 05:24:14',NULL),
	(48,'edit_modcats','modcats','2018-01-15 05:24:14','2018-01-15 05:24:14',NULL),
	(49,'add_modcats','modcats','2018-01-15 05:24:14','2018-01-15 05:24:14',NULL),
	(50,'delete_modcats','modcats','2018-01-15 05:24:14','2018-01-15 05:24:14',NULL),
	(51,'browse_mods','mods','2018-01-15 06:02:19','2018-01-15 06:02:19',NULL),
	(52,'read_mods','mods','2018-01-15 06:02:19','2018-01-15 06:02:19',NULL),
	(53,'edit_mods','mods','2018-01-15 06:02:19','2018-01-15 06:02:19',NULL),
	(54,'add_mods','mods','2018-01-15 06:02:19','2018-01-15 06:02:19',NULL),
	(55,'delete_mods','mods','2018-01-15 06:02:19','2018-01-15 06:02:19',NULL),
	(61,'browse_products','products','2018-01-16 03:36:18','2018-01-16 03:36:18',NULL),
	(62,'read_products','products','2018-01-16 03:36:18','2018-01-16 03:36:18',NULL),
	(63,'edit_products','products','2018-01-16 03:36:18','2018-01-16 03:36:18',NULL),
	(64,'add_products','products','2018-01-16 03:36:18','2018-01-16 03:36:18',NULL),
	(65,'delete_products','products','2018-01-16 03:36:18','2018-01-16 03:36:18',NULL),
	(66,'browse_tagcats','tagcats','2018-01-16 06:36:58','2018-01-16 06:36:58',NULL),
	(67,'read_tagcats','tagcats','2018-01-16 06:36:58','2018-01-16 06:36:58',NULL),
	(68,'edit_tagcats','tagcats','2018-01-16 06:36:58','2018-01-16 06:36:58',NULL),
	(69,'add_tagcats','tagcats','2018-01-16 06:36:58','2018-01-16 06:36:58',NULL),
	(70,'delete_tagcats','tagcats','2018-01-16 06:36:58','2018-01-16 06:36:58',NULL),
	(71,'browse_tags','tags','2018-01-16 06:39:30','2018-01-16 06:39:30',NULL),
	(72,'read_tags','tags','2018-01-16 06:39:30','2018-01-16 06:39:30',NULL),
	(73,'edit_tags','tags','2018-01-16 06:39:30','2018-01-16 06:39:30',NULL),
	(74,'add_tags','tags','2018-01-16 06:39:30','2018-01-16 06:39:30',NULL),
	(75,'delete_tags','tags','2018-01-16 06:39:30','2018-01-16 06:39:30',NULL),
	(76,'browse_skus','skus','2018-01-16 07:30:14','2018-01-16 07:30:14',NULL),
	(77,'read_skus','skus','2018-01-16 07:30:14','2018-01-16 07:30:14',NULL),
	(78,'edit_skus','skus','2018-01-16 07:30:14','2018-01-16 07:30:14',NULL),
	(79,'add_skus','skus','2018-01-16 07:30:14','2018-01-16 07:30:14',NULL),
	(80,'delete_skus','skus','2018-01-16 07:30:14','2018-01-16 07:30:14',NULL),
	(81,'browse_banners','banners','2018-01-17 02:09:41','2018-01-17 02:09:41',NULL),
	(82,'read_banners','banners','2018-01-17 02:09:41','2018-01-17 02:09:41',NULL),
	(83,'edit_banners','banners','2018-01-17 02:09:41','2018-01-17 02:09:41',NULL),
	(84,'add_banners','banners','2018-01-17 02:09:41','2018-01-17 02:09:41',NULL),
	(85,'delete_banners','banners','2018-01-17 02:09:41','2018-01-17 02:09:41',NULL),
	(86,'browse_views','views','2018-01-17 03:01:22','2018-01-17 03:01:22',NULL),
	(87,'read_views','views','2018-01-17 03:01:22','2018-01-17 03:01:22',NULL),
	(88,'edit_views','views','2018-01-17 03:01:22','2018-01-17 03:01:22',NULL),
	(89,'add_views','views','2018-01-17 03:01:22','2018-01-17 03:01:22',NULL),
	(90,'delete_views','views','2018-01-17 03:01:22','2018-01-17 03:01:22',NULL),
	(91,'browse_searchs','searchs','2018-01-17 05:27:35','2018-01-17 05:27:35',NULL),
	(92,'read_searchs','searchs','2018-01-17 05:27:35','2018-01-17 05:27:35',NULL),
	(93,'edit_searchs','searchs','2018-01-17 05:27:35','2018-01-17 05:27:35',NULL),
	(94,'add_searchs','searchs','2018-01-17 05:27:35','2018-01-17 05:27:35',NULL),
	(95,'delete_searchs','searchs','2018-01-17 05:27:35','2018-01-17 05:27:35',NULL),
	(96,'browse_searches','searches','2018-01-17 05:32:06','2018-01-17 05:32:06',NULL),
	(97,'read_searches','searches','2018-01-17 05:32:06','2018-01-17 05:32:06',NULL),
	(98,'edit_searches','searches','2018-01-17 05:32:06','2018-01-17 05:32:06',NULL),
	(99,'add_searches','searches','2018-01-17 05:32:06','2018-01-17 05:32:06',NULL),
	(100,'delete_searches','searches','2018-01-17 05:32:06','2018-01-17 05:32:06',NULL),
	(101,'browse_favs','favs','2018-01-17 05:42:44','2018-01-17 05:42:44',NULL),
	(102,'read_favs','favs','2018-01-17 05:42:44','2018-01-17 05:42:44',NULL),
	(103,'edit_favs','favs','2018-01-17 05:42:44','2018-01-17 05:42:44',NULL),
	(104,'add_favs','favs','2018-01-17 05:42:44','2018-01-17 05:42:44',NULL),
	(105,'delete_favs','favs','2018-01-17 05:42:44','2018-01-17 05:42:44',NULL),
	(106,'browse_carts','carts','2018-01-17 06:18:50','2018-01-17 06:18:50',NULL),
	(107,'read_carts','carts','2018-01-17 06:18:50','2018-01-17 06:18:50',NULL),
	(108,'edit_carts','carts','2018-01-17 06:18:50','2018-01-17 06:18:50',NULL),
	(109,'add_carts','carts','2018-01-17 06:18:50','2018-01-17 06:18:50',NULL),
	(110,'delete_carts','carts','2018-01-17 06:18:50','2018-01-17 06:18:50',NULL),
	(111,'browse_cartdels','cartdels','2018-01-17 06:43:29','2018-01-17 06:43:29',NULL),
	(112,'read_cartdels','cartdels','2018-01-17 06:43:29','2018-01-17 06:43:29',NULL),
	(113,'edit_cartdels','cartdels','2018-01-17 06:43:29','2018-01-17 06:43:29',NULL),
	(114,'add_cartdels','cartdels','2018-01-17 06:43:29','2018-01-17 06:43:29',NULL),
	(115,'delete_cartdels','cartdels','2018-01-17 06:43:29','2018-01-17 06:43:29',NULL),
	(116,'browse_stocks','stocks','2018-01-17 07:00:25','2018-01-17 07:00:25',NULL),
	(117,'read_stocks','stocks','2018-01-17 07:00:25','2018-01-17 07:00:25',NULL),
	(118,'edit_stocks','stocks','2018-01-17 07:00:25','2018-01-17 07:00:25',NULL),
	(119,'add_stocks','stocks','2018-01-17 07:00:25','2018-01-17 07:00:25',NULL),
	(120,'delete_stocks','stocks','2018-01-17 07:00:25','2018-01-17 07:00:25',NULL),
	(121,'browse_paymethod','paymethod','2018-01-17 07:39:12','2018-01-17 07:39:12',NULL),
	(122,'read_paymethod','paymethod','2018-01-17 07:39:12','2018-01-17 07:39:12',NULL),
	(123,'edit_paymethod','paymethod','2018-01-17 07:39:12','2018-01-17 07:39:12',NULL),
	(124,'add_paymethod','paymethod','2018-01-17 07:39:12','2018-01-17 07:39:12',NULL),
	(125,'delete_paymethod','paymethod','2018-01-17 07:39:12','2018-01-17 07:39:12',NULL),
	(126,'browse_paymethods','paymethods','2018-01-17 07:42:28','2018-01-17 07:42:28',NULL),
	(127,'read_paymethods','paymethods','2018-01-17 07:42:28','2018-01-17 07:42:28',NULL),
	(128,'edit_paymethods','paymethods','2018-01-17 07:42:28','2018-01-17 07:42:28',NULL),
	(129,'add_paymethods','paymethods','2018-01-17 07:42:28','2018-01-17 07:42:28',NULL),
	(130,'delete_paymethods','paymethods','2018-01-17 07:42:28','2018-01-17 07:42:28',NULL),
	(131,'browse_receivers','receivers','2018-01-17 08:05:58','2018-01-17 08:05:58',NULL),
	(132,'read_receivers','receivers','2018-01-17 08:05:58','2018-01-17 08:05:58',NULL),
	(133,'edit_receivers','receivers','2018-01-17 08:05:58','2018-01-17 08:05:58',NULL),
	(134,'add_receivers','receivers','2018-01-17 08:05:58','2018-01-17 08:05:58',NULL),
	(135,'delete_receivers','receivers','2018-01-17 08:05:58','2018-01-17 08:05:58',NULL),
	(136,'browse_trades','trades','2018-01-18 06:22:41','2018-01-18 06:22:41',NULL),
	(137,'read_trades','trades','2018-01-18 06:22:41','2018-01-18 06:22:41',NULL),
	(138,'edit_trades','trades','2018-01-18 06:22:41','2018-01-18 06:22:41',NULL),
	(139,'add_trades','trades','2018-01-18 06:22:41','2018-01-18 06:22:41',NULL),
	(140,'delete_trades','trades','2018-01-18 06:22:41','2018-01-18 06:22:41',NULL),
	(141,'browse_tradeskus','tradeskus','2018-01-18 06:42:40','2018-01-18 06:42:40',NULL),
	(142,'read_tradeskus','tradeskus','2018-01-18 06:42:40','2018-01-18 06:42:40',NULL),
	(143,'edit_tradeskus','tradeskus','2018-01-18 06:42:40','2018-01-18 06:42:40',NULL),
	(144,'add_tradeskus','tradeskus','2018-01-18 06:42:40','2018-01-18 06:42:40',NULL),
	(145,'delete_tradeskus','tradeskus','2018-01-18 06:42:40','2018-01-18 06:42:40',NULL),
	(146,'browse_message','message','2018-01-20 06:40:12','2018-01-20 06:40:12',NULL),
	(147,'read_message','message','2018-01-20 06:40:12','2018-01-20 06:40:12',NULL),
	(148,'edit_message','message','2018-01-20 06:40:12','2018-01-20 06:40:12',NULL),
	(149,'add_message','message','2018-01-20 06:40:12','2018-01-20 06:40:12',NULL),
	(150,'delete_message','message','2018-01-20 06:40:12','2018-01-20 06:40:12',NULL),
	(151,'browse_msgtemplate','msgtemplate','2018-01-23 02:37:24','2018-01-23 02:37:24',NULL),
	(152,'read_msgtemplate','msgtemplate','2018-01-23 02:37:24','2018-01-23 02:37:24',NULL),
	(153,'edit_msgtemplate','msgtemplate','2018-01-23 02:37:24','2018-01-23 02:37:24',NULL),
	(154,'add_msgtemplate','msgtemplate','2018-01-23 02:37:24','2018-01-23 02:37:24',NULL),
	(155,'delete_msgtemplate','msgtemplate','2018-01-23 02:37:24','2018-01-23 02:37:24',NULL),
	(156,'browse_textures','textures','2018-03-12 07:45:02','2018-03-12 07:45:02',NULL),
	(157,'read_textures','textures','2018-03-12 07:45:02','2018-03-12 07:45:02',NULL),
	(158,'edit_textures','textures','2018-03-12 07:45:02','2018-03-12 07:45:02',NULL),
	(159,'add_textures','textures','2018-03-12 07:45:02','2018-03-12 07:45:02',NULL),
	(160,'delete_textures','textures','2018-03-12 07:45:02','2018-03-12 07:45:02',NULL),
	(161,'browse_textureskus','textureskus','2018-03-12 08:07:44','2018-03-12 08:07:44',NULL),
	(162,'read_textureskus','textureskus','2018-03-12 08:07:44','2018-03-12 08:07:44',NULL),
	(163,'edit_textureskus','textureskus','2018-03-12 08:07:44','2018-03-12 08:07:44',NULL),
	(164,'add_textureskus','textureskus','2018-03-12 08:07:44','2018-03-12 08:07:44',NULL),
	(165,'delete_textureskus','textureskus','2018-03-12 08:07:44','2018-03-12 08:07:44',NULL),
	(166,'browse_shops','shops','2018-03-19 11:59:39','2018-03-19 11:59:39',NULL),
	(167,'read_shops','shops','2018-03-19 11:59:39','2018-03-19 11:59:39',NULL),
	(168,'edit_shops','shops','2018-03-19 11:59:39','2018-03-19 11:59:39',NULL),
	(169,'add_shops','shops','2018-03-19 11:59:39','2018-03-19 11:59:39',NULL),
	(170,'delete_shops','shops','2018-03-19 11:59:39','2018-03-19 11:59:39',NULL);

/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`)
VALUES
	(1,1,1,'my blog','blog','my blog','<p>my blog</p>',NULL,'my-blog','my blog','blog','PUBLISHED',1,'2018-01-15 07:53:34','2018-01-15 07:53:34');

/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `hash` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `poster_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_name_unique` (`name`),
  KEY `products_hash_index` (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

INSERT INTO `products` (`id`, `name`, `image`, `hash`, `poster_id`, `created_at`, `updated_at`)
VALUES
	(1,'211A','products/January2018/lWsjvZeRJftWTmZu8feV.jpg','',1,'2018-01-16 03:39:32','2018-01-16 03:39:32');

/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table receivers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `receivers`;

CREATE TABLE `receivers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '收货人',
  `phone` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '收货人手机号码',
  `province` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '收货人省份',
  `city` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '收货人城市',
  `area` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '收货人地区',
  `street` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '收货人街道',
  `address` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '收货人详细地址',
  `addrcode` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '邮政编码',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `def` tinyint(4) DEFAULT NULL COMMENT '标签',
  PRIMARY KEY (`id`),
  KEY `receivers_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `receivers` WRITE;
/*!40000 ALTER TABLE `receivers` DISABLE KEYS */;

INSERT INTO `receivers` (`id`, `user`, `phone`, `province`, `city`, `area`, `street`, `address`, `addrcode`, `user_id`, `created_at`, `updated_at`, `def`)
VALUES
	(1,'蓝燕光','+8613588100379','浙江省','杭州市','西湖区','白马尊邸13-2-1401',NULL,NULL,1,'2018-01-17 08:07:17','2018-01-17 08:07:17',0),
	(2,'蓝燕光','13588100379','浙江省','杭州市','拱墅区','祥福街道','个人',NULL,4,'2018-03-26 11:06:41','2018-03-26 11:15:15',0),
	(3,'蓝燕光','13588100379','浙江省','杭州市','拱墅区','星星街道130号 5-2010','公司',NULL,4,'2018-03-26 11:13:33','2018-03-26 11:15:15',0),
	(5,'蓝燕光','13588100379','浙江省','杭州市','拱墅区','星星街道130号 5-2010','公司',NULL,4,'2018-03-26 11:15:15','2018-03-26 11:15:15',1);

/*!40000 ALTER TABLE `receivers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`)
VALUES
	(1,'admin','Administrator','2018-01-11 07:13:26','2018-01-11 07:13:26'),
	(2,'user','Normal User','2018-01-11 07:13:26','2018-01-11 07:13:26');

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table searches
# ------------------------------------------------------------

DROP TABLE IF EXISTS `searches`;

CREATE TABLE `searches` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `tag` tinyint(3) unsigned NOT NULL COMMENT '搜索类型（产品1,店铺2，店铺浏览3）',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tag_id` int(10) unsigned NOT NULL COMMENT '搜索类型ID',
  PRIMARY KEY (`id`),
  KEY `searchs_user_id_index` (`user_id`),
  KEY `searches_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `searches` WRITE;
/*!40000 ALTER TABLE `searches` DISABLE KEYS */;

INSERT INTO `searches` (`id`, `user_id`, `tag`, `created_at`, `updated_at`, `tag_id`)
VALUES
	(1,4,1,'2018-03-22 22:21:09','2018-03-22 22:21:09',2),
	(2,4,1,'2018-03-22 22:21:18','2018-03-22 22:21:18',4),
	(3,4,2,'2018-03-22 22:21:26','2018-03-22 22:21:26',1),
	(4,4,3,'2018-03-22 22:21:34','2018-03-22 22:21:34',1);

/*!40000 ALTER TABLE `searches` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`)
VALUES
	(1,'site.title','Site Title','时尚工厂','','text',1,'Site'),
	(2,'site.description','Site Description','浙江恒盛纺织有限公司','','text',2,'Site'),
	(3,'site.logo','Site Logo','settings/January2018/bvGXUmTFRw2OMzhIdQmd.png','','image',3,'Site'),
	(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID','','','text',4,'Site'),
	(5,'admin.bg_image','Admin Background Image','settings/January2018/invOgahKCUqmxOsfuhDe.jpg','','image',5,'Admin'),
	(6,'admin.title','Admin Title','时尚工厂','','text',1,'Admin'),
	(7,'admin.description','Admin Description','浙江恒盛纺织有限公司','','text',2,'Admin'),
	(8,'admin.loader','Admin Loader','','','image',3,'Admin'),
	(9,'admin.icon_image','Admin Icon Image','settings/January2018/DDkBfVZNUEtJEvyde4y5.png','','image',4,'Admin'),
	(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)','','','text',1,'Admin');

/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table shops
# ------------------------------------------------------------

DROP TABLE IF EXISTS `shops`;

CREATE TABLE `shops` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '店铺名称',
  `user_id` int(11) NOT NULL COMMENT '管理员用户ID／店铺ID',
  `location` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '地区',
  `image` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '图片',
  `intro` text COLLATE utf8_unicode_ci COMMENT '介绍',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `shops_user_id_unique` (`user_id`),
  KEY `shops_name_index` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `shops` WRITE;
/*!40000 ALTER TABLE `shops` DISABLE KEYS */;

INSERT INTO `shops` (`id`, `name`, `user_id`, `location`, `image`, `intro`, `created_at`, `updated_at`)
VALUES
	(1,'恒盛纺织有限公司',1,'杭州',NULL,NULL,'2018-03-19 12:02:20','2018-03-19 12:02:20');

/*!40000 ALTER TABLE `shops` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table shopusers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `shopusers`;

CREATE TABLE `shopusers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL COMMENT '店铺ID',
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `status` tinyint(4) DEFAULT '0' COMMENT '状态（0邀请 1通过 2拒绝.）',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shopusers_shop_id_index` (`shop_id`),
  KEY `shopusers_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `shopusers` WRITE;
/*!40000 ALTER TABLE `shopusers` DISABLE KEYS */;

INSERT INTO `shopusers` (`id`, `shop_id`, `user_id`, `status`, `created_at`, `updated_at`)
VALUES
	(1,4,5,1,'2018-04-11 13:35:53','2018-04-11 13:35:53'),
	(4,4,6,2,'2018-04-11 13:42:08','2018-04-11 13:42:49'),
	(5,4,4,0,'2018-05-07 10:21:44','2018-05-07 10:21:44'),
	(6,4,5,0,'2018-05-07 10:21:57','2018-05-07 10:21:57');

/*!40000 ALTER TABLE `shopusers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sku_tag
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sku_tag`;

CREATE TABLE `sku_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sku_id` int(11) NOT NULL COMMENT '产品ID',
  `tag_id` int(11) NOT NULL COMMENT '标签ID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_tag_item_id_index` (`sku_id`),
  KEY `item_tag_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sku_tag` WRITE;
/*!40000 ALTER TABLE `sku_tag` DISABLE KEYS */;

INSERT INTO `sku_tag` (`id`, `sku_id`, `tag_id`, `created_at`, `updated_at`)
VALUES
	(1,2,1,NULL,NULL),
	(2,2,7,NULL,NULL),
	(3,2,12,NULL,NULL),
	(4,2,17,NULL,NULL),
	(5,3,1,NULL,NULL),
	(6,2,18,NULL,NULL),
	(7,2,19,NULL,NULL),
	(8,4,18,NULL,NULL),
	(9,4,19,NULL,NULL),
	(10,6,18,NULL,NULL),
	(11,6,19,NULL,NULL),
	(12,10,1,NULL,NULL),
	(13,11,19,NULL,NULL);

/*!40000 ALTER TABLE `sku_tag` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table skus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `skus`;

CREATE TABLE `skus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sku` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '型号',
  `image` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '图片',
  `group` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '分组',
  `material` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '成分',
  `weight` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '克重',
  `width` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '门幅',
  `shrinkage` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '缩水率',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL COMMENT '上传者ID',
  `status` tinyint(4) NOT NULL COMMENT '状态（0 下架 1上架）',
  PRIMARY KEY (`id`),
  UNIQUE KEY `skus_sku_unique` (`sku`),
  KEY `skus_user_id_index` (`user_id`),
  KEY `skus_created_at_index` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `skus` WRITE;
/*!40000 ALTER TABLE `skus` DISABLE KEYS */;

INSERT INTO `skus` (`id`, `sku`, `image`, `group`, `material`, `weight`, `width`, `shrinkage`, `created_at`, `updated_at`, `user_id`, `status`)
VALUES
	(2,'211A','skus/January2018/RTf7t5ztO4ExiW8NypGQ.jpg','211','棉','200g/m2','140','20%','2018-01-16 07:56:18','2018-03-12 06:55:52',1,1),
	(4,'211B','skus/January2018/RTf7t5ztO4ExiW8NypGQ.jpg','211','棉','200g/m2','140','20%','2018-01-16 07:56:18','2018-01-16 07:56:18',1,1),
	(6,'211C','skus/April2018/pFJIpqR5d9werzEMr36Y.png','211','麻','200/m2','20','20%','2018-01-16 07:56:18','2018-04-11 14:58:58',4,1),
	(7,'211D','skus/January2018/RTf7t5ztO4ExiW8NypGQ.jpg','211','棉','200g/m2','140','20%','2018-01-16 07:56:18','2018-03-12 06:55:52',4,1),
	(8,'211E','','211','棉','122/m2','100','20%','2018-04-11 14:42:19','2018-04-11 14:42:19',4,0),
	(9,'211F','skus/April2018/KmFUqhN0vYGH7Bxxq5Dx.png','211','棉','122/m2','100','20%','2018-04-11 14:43:26','2018-04-11 14:43:26',4,0),
	(10,'100-2A','skus/April2018/LAcQsJgzVAElOQU023Rg.JPG','100-2','100','200g/m2','140','20%','2018-04-24 12:17:11','2018-04-24 12:17:11',1,1),
	(11,'211O','','211','棉','122/m2','100','20%','2018-05-07 10:33:37','2018-05-07 10:33:37',4,0);

/*!40000 ALTER TABLE `skus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table stocks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `stocks`;

CREATE TABLE `stocks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cart_id` int(11) NOT NULL COMMENT '购物车ID',
  `unit` int(11) DEFAULT NULL COMMENT '匹单位',
  `num` int(11) DEFAULT NULL COMMENT '匹数量',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mid` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '码单',
  PRIMARY KEY (`id`),
  KEY `stocks_cart_id_index` (`cart_id`),
  KEY `stocks_mid_index` (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `stocks` WRITE;
/*!40000 ALTER TABLE `stocks` DISABLE KEYS */;

INSERT INTO `stocks` (`id`, `cart_id`, `unit`, `num`, `created_at`, `updated_at`, `mid`)
VALUES
	(1,1,188,1,'2018-01-17 07:05:48','2018-03-27 15:42:41','1'),
	(3,1,166,2,'2018-01-17 07:15:55','2018-03-27 15:42:41','1');

/*!40000 ALTER TABLE `stocks` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tagcats
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tagcats`;

CREATE TABLE `tagcats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order` int(11) NOT NULL DEFAULT '1' COMMENT '排序值',
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '简称',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT '父ID',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tagcats_slug_unique` (`slug`),
  KEY `tagcats_parent_id_index` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `tagcats` WRITE;
/*!40000 ALTER TABLE `tagcats` DISABLE KEYS */;

INSERT INTO `tagcats` (`id`, `order`, `name`, `slug`, `created_at`, `updated_at`, `parent_id`)
VALUES
	(1,1,'成分','material','2018-01-16 06:48:41','2018-01-16 06:48:41',NULL),
	(2,2,'格型','grid','2018-01-16 06:51:58','2018-01-16 06:51:58',NULL),
	(3,3,'风格','style','2018-01-16 06:53:45','2018-01-16 06:53:45',NULL),
	(4,4,'色系','color','2018-01-16 06:54:03','2018-01-16 06:54:03',NULL),
	(6,5,'推荐','recommend','2018-03-16 11:28:36','2018-03-16 11:31:25',NULL);

/*!40000 ALTER TABLE `tagcats` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tags`;

CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `cat_id` int(11) NOT NULL COMMENT '标签分类ID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1' COMMENT '排序值',
  PRIMARY KEY (`id`),
  KEY `tags_cat_id_index` (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;

INSERT INTO `tags` (`id`, `name`, `cat_id`, `created_at`, `updated_at`, `order`)
VALUES
	(1,'棉',1,'2018-01-16 07:10:06','2018-01-16 07:10:06',1),
	(2,'麻',1,'2018-01-16 07:14:23','2018-01-16 07:14:30',2),
	(3,'绒',1,'2018-01-16 07:14:40','2018-01-16 07:14:40',3),
	(4,'丝绸',1,'2018-01-16 07:14:53','2018-01-16 07:14:53',4),
	(5,'皮革',1,'2018-01-16 07:15:02','2018-01-16 07:15:02',5),
	(6,'化纤',1,'2018-01-16 07:15:53','2018-01-16 07:15:53',6),
	(7,'小格',2,'2018-01-16 07:16:31','2018-01-16 07:16:31',1),
	(8,'中格',2,'2018-01-16 07:16:45','2018-01-16 07:16:45',2),
	(9,'大格',2,'2018-01-16 07:17:01','2018-01-16 07:17:01',3),
	(10,'朝阳格',2,'2018-01-16 07:17:21','2018-01-16 07:17:21',4),
	(11,'千鸟格',2,'2018-01-16 07:17:41','2018-01-16 07:17:41',5),
	(12,'中国风',3,'2018-01-16 07:19:46','2018-01-16 07:19:46',1),
	(13,'日韩风',3,'2018-01-16 07:19:57','2018-01-16 07:19:57',2),
	(14,'欧美风',3,'2018-01-16 07:20:11','2018-01-16 07:20:11',3),
	(15,'红黑系',4,'2018-01-16 07:20:44','2018-01-16 07:21:30',1),
	(16,'红黄系',4,'2018-01-16 07:21:04','2018-01-16 07:21:04',2),
	(17,'蓝白系',4,'2018-01-16 07:21:21','2018-01-16 07:21:21',3),
	(18,'特价',6,'2018-03-16 11:33:28','2018-03-16 11:33:28',1),
	(19,'热销',6,'2018-03-16 11:33:48','2018-03-16 11:33:48',2);

/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table textures
# ------------------------------------------------------------

DROP TABLE IF EXISTS `textures`;

CREATE TABLE `textures` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '订单号',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户ID',
  `shipno` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '运单号',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单状态（0未提交 1已发货）',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `receivername` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '收货人',
  `receiverphone` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '收货人手机号码',
  `recevierprovince` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '收货人省份',
  `receviercity` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '收货人城市',
  `recevierarea` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '收货人地区',
  `recevierstreet` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '收货人街道',
  `receiveraddress` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '收货人详细地址',
  `shop_id` int(11) DEFAULT NULL COMMENT '店铺ID',
  PRIMARY KEY (`id`),
  UNIQUE KEY `texture_tid_unique` (`tid`),
  KEY `texture_user_id_index` (`user_id`),
  KEY `textures_shop_id_index` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `textures` WRITE;
/*!40000 ALTER TABLE `textures` DISABLE KEYS */;

INSERT INTO `textures` (`id`, `tid`, `user_id`, `shipno`, `status`, `created_at`, `updated_at`, `receivername`, `receiverphone`, `recevierprovince`, `receviercity`, `recevierarea`, `recevierstreet`, `receiveraddress`, `shop_id`)
VALUES
	(1,'1520841450201803123204',4,NULL,0,'2018-03-12 07:57:30','2018-03-12 07:57:30','蓝燕光','13588100379',NULL,NULL,NULL,NULL,'杭州市',1),
	(2,'1522302714201803295671',4,NULL,1,'2018-03-29 13:51:54','2018-03-29 13:51:54','蓝燕光','+8613588100379','浙江省','杭州市','西湖区','白马尊邸13-2-1401','',1),
	(3,'1522303785201803293738',4,NULL,1,'2018-03-29 14:09:45','2018-03-29 14:09:45','蓝燕光','+8613588100379','浙江省','杭州市','西湖区','白马尊邸13-2-1401','',1);

/*!40000 ALTER TABLE `textures` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table textureskus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `textureskus`;

CREATE TABLE `textureskus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sid` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '运单号',
  `tid` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '订单编号',
  `title` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '型号',
  `image` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '图片',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL COMMENT '店铺ID',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `material` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '成分',
  `weight` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '克重',
  PRIMARY KEY (`id`),
  KEY `textureskus_sid_index` (`sid`),
  KEY `textureskus_shop_id_index` (`shop_id`),
  KEY `textureskus_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `textureskus` WRITE;
/*!40000 ALTER TABLE `textureskus` DISABLE KEYS */;

INSERT INTO `textureskus` (`id`, `sid`, `tid`, `title`, `image`, `created_at`, `updated_at`, `shop_id`, `user_id`, `material`, `weight`)
VALUES
	(1,'2121211212','','tttttt','textureskus/March2018/O4wZpTLNrNPiOElfLA0I.png','2018-03-12 08:14:36','2018-03-29 13:51:54',1,4,NULL,NULL),
	(3,NULL,'1522303785201803293738','211A','skus/January2018/RTf7t5ztO4ExiW8NypGQ.jpg','2018-03-29 14:09:22','2018-03-29 14:09:45',1,4,'棉','200g/m2');

/*!40000 ALTER TABLE `textureskus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table trades
# ------------------------------------------------------------

DROP TABLE IF EXISTS `trades`;

CREATE TABLE `trades` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '订单编号',
  `payment` decimal(10,0) NOT NULL COMMENT '付款金额',
  `paytime` datetime NOT NULL COMMENT '付款时间',
  `shiptime` datetime DEFAULT NULL COMMENT '发货时间',
  `receivertime` datetime DEFAULT NULL COMMENT '收货时间',
  `endtime` datetime DEFAULT NULL COMMENT '完成时间',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `receivername` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '收货人',
  `recevierphone` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '收货人手机',
  `recevierprovince` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '收货人省份',
  `receviercity` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '收货人城市',
  `recevierarea` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '收货人地区',
  `recevierstreet` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '收货人街道',
  `receiveraddress` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '收货详细地址',
  `paymethod` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支付方式',
  `shipmethod` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '运送方式',
  `stockno` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '码单号',
  `shipno` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '运单号',
  `stockimage` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '码单拍照图片',
  `shipimage` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '运单拍照图片',
  `receiverimage` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '确认收货拍照图片',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单状态（0待发货，1已发货, 2已完成）',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL COMMENT '店铺ID',
  PRIMARY KEY (`id`),
  UNIQUE KEY `trades_tid_unique` (`tid`),
  KEY `trades_user_id_index` (`user_id`),
  KEY `trades_shop_id_index` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `trades` WRITE;
/*!40000 ALTER TABLE `trades` DISABLE KEYS */;

INSERT INTO `trades` (`id`, `tid`, `payment`, `paytime`, `shiptime`, `receivertime`, `endtime`, `user_id`, `receivername`, `recevierphone`, `recevierprovince`, `receviercity`, `recevierarea`, `recevierstreet`, `receiveraddress`, `paymethod`, `shipmethod`, `stockno`, `shipno`, `stockimage`, `shipimage`, `receiverimage`, `status`, `created_at`, `updated_at`, `shop_id`)
VALUES
	(1,'1522246664201803286548',10,'2018-03-27 15:44:37','2018-03-28 22:14:59','2018-03-28 22:17:44','2018-03-28 22:17:44',4,NULL,'13588100379','浙江省','杭州市','拱墅区','祥福街道','','',NULL,NULL,NULL,NULL,'orders/March2018/3wV4o3O65U6GDQ8nbiRO.png','textures/March2018/nDZNmVZWPcE49EKEHfFY.png',2,'2018-03-27 15:44:37','2018-03-28 22:17:44',1);

/*!40000 ALTER TABLE `trades` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tradeskus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tradeskus`;

CREATE TABLE `tradeskus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '型号',
  `price` decimal(10,0) DEFAULT NULL COMMENT '价格',
  `num` int(11) DEFAULT NULL COMMENT '数量',
  `tid` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '订单号',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(152) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '图片',
  `mid` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '码单号',
  `sid` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '运单号',
  `material` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '成分',
  `weight` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '克重',
  PRIMARY KEY (`id`),
  KEY `tradesku_tid_index` (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `tradeskus` WRITE;
/*!40000 ALTER TABLE `tradeskus` DISABLE KEYS */;

INSERT INTO `tradeskus` (`id`, `title`, `price`, `num`, `tid`, `created_at`, `updated_at`, `image`, `mid`, `sid`, `material`, `weight`)
VALUES
	(1,'211B',15,12,'1522246664201803286548','2018-03-27 15:44:37','2018-03-27 15:44:37','skus/January2018/RTf7t5ztO4ExiW8NypGQ.jpg',NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `tradeskus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `translations`;

CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png' COMMENT '头像',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号码',
  `weixin_openid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '微信登录',
  `weixin_unionid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '微信登录',
  `registration_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_phone_unique` (`phone`),
  UNIQUE KEY `users_weixin_openid_unique` (`weixin_openid`),
  UNIQUE KEY `users_weixin_unionid_unique` (`weixin_unionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`, `phone`, `weixin_openid`, `weixin_unionid`, `registration_id`)
VALUES
	(1,1,'tex-mall','admin@tex-mall.dev','users/default.png','$2y$10$Ib3Rw4GtVCQA63oywWd6DOsy61TnyN2ixq1192UYeKf9jMYzMzsOi','cpit2w7AbOmFmyyEqRIR1OSnK5kx1oWUzwTWl3by6T5tAPE6QtePDp0GyBpH','2018-01-11 07:15:29','2018-05-24 15:12:05',NULL,NULL,NULL,NULL),
	(4,2,'lan',NULL,'users/default.png','$2y$10$ytodd64syLbvjiAJyDKMSO6H/uB5WS2tibaKefiYi0Ul33uYXSrtG',NULL,'2018-03-15 10:03:52','2018-03-15 10:12:17','13588100379',NULL,NULL,NULL),
	(5,2,'蓝bob',NULL,'users/default.png','$2y$10$8M59eM0fwqNIeN/T0weLxeBX0z6cSYTSbbGX3h5nVSbP118l6a.Pa',NULL,'2018-04-11 13:35:53','2018-04-11 13:35:53','13588100378',NULL,NULL,NULL),
	(6,2,'蓝tot',NULL,'users/default.png','$2y$10$yQEg7ImyxiHYFiE6pZkUfOy2LOilOIcC6vjpMELoHVfOS89x.zVaC',NULL,'2018-04-11 13:37:50','2018-04-11 13:37:50','13588100377',NULL,NULL,NULL);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table views
# ------------------------------------------------------------

DROP TABLE IF EXISTS `views`;

CREATE TABLE `views` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `sku_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `sku_id` (`sku_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `views` WRITE;
/*!40000 ALTER TABLE `views` DISABLE KEYS */;

INSERT INTO `views` (`id`, `user_id`, `sku_id`, `created_at`, `updated_at`)
VALUES
	(4,1,4,'2018-01-17 03:53:25','2018-01-17 03:53:25'),
	(5,1,2,'2018-01-17 05:19:40','2018-01-17 05:19:40');

/*!40000 ALTER TABLE `views` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
