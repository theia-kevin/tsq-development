-- mysqldump-php https://github.com/ifsnop/mysqldump-php
--
-- Host: localhost	Database: tsq_development
-- ------------------------------------------------------
-- Date: Mon, 18 Jan 2021 00:27:06 +0000

/* # site_url: http://tsq-development.test */;
/* # home_url: http://tsq-development.test */;
/* # content_url: http://tsq-development.test/wp-content */;
/* # upload_url: http://tsq-development.test/wp-content/uploads */;
/* # table_prefix: wp_ */;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '1999-01-01 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '1999-01-01 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2021-01-11 22:15:54','2021-01-11 22:15:54','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '1999-01-01 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=432 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://tsq-development.test','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://tsq-development.test','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','TSQ Development','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Established 2019','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','kevin@theia.co.nz','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','j F Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:119:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:17:"^wp-sitemap\\.xml$";s:23:"index.php?sitemap=index";s:17:"^wp-sitemap\\.xsl$";s:36:"index.php?sitemap-stylesheet=sitemap";s:23:"^wp-sitemap-index\\.xsl$";s:34:"index.php?sitemap-stylesheet=index";s:48:"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$";s:75:"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]";s:34:"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$";s:47:"index.php?sitemap=$matches[1]&paged=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:"service/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?service=$matches[1]&feed=$matches[2]";s:43:"service/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?service=$matches[1]&feed=$matches[2]";s:24:"service/([^/]+)/embed/?$";s:40:"index.php?service=$matches[1]&embed=true";s:36:"service/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?service=$matches[1]&paged=$matches[2]";s:18:"service/([^/]+)/?$";s:29:"index.php?service=$matches[1]";s:35:"project/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"project/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"project/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"project/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"project/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"project/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"project/([^/]+)/embed/?$";s:40:"index.php?project=$matches[1]&embed=true";s:28:"project/([^/]+)/trackback/?$";s:34:"index.php?project=$matches[1]&tb=1";s:36:"project/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?project=$matches[1]&paged=$matches[2]";s:43:"project/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?project=$matches[1]&cpage=$matches[2]";s:32:"project/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?project=$matches[1]&page=$matches[2]";s:24:"project/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"project/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"project/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"project/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"project/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"project/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:13:"favicon\\.ico$";s:19:"index.php?favicon=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=6&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:5:{i:1;s:34:"advanced-custom-fields-pro/acf.php";i:4;s:33:"classic-editor/classic-editor.php";i:5;s:36:"contact-form-7/wp-contact-form-7.php";i:6;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:11;s:47:"wpvivid-backuprestore/wpvivid-backuprestore.php";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','a:2:{i:0;s:90:"C:\\laragon\\www-experiments-2020\\tsq-development/wp-content/themes/tsqdevelopment/style.css";i:1;s:0:"";}','no');
INSERT INTO `wp_options` VALUES (40,'template','tsqdevelopment','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','tsqdevelopment','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','49752','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:2:{s:53:"advanced-database-cleaner-pro/advanced-db-cleaner.php";a:2:{i:0;s:28:"ADBC_Advanced_DB_Cleaner_Pro";i:1;s:14:"aDBc_uninstall";}s:49:"advanced-database-cleaner/advanced-db-cleaner.php";a:2:{i:0;s:24:"ADBC_Advanced_DB_Cleaner";i:1;s:14:"aDBc_uninstall";}}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','2','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','6','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','175','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1625955354','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'initial_db_version','49752','yes');
INSERT INTO `wp_options` VALUES (99,'wp_user_roles','a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:10:"copy_posts";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:10:"copy_posts";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (100,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (101,'WPLANG','en_NZ','yes');
INSERT INTO `wp_options` VALUES (102,'widget_search','a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'widget_recent-posts','a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_recent-comments','a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_archives','a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_meta','a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'sidebars_widgets','a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}','yes');
INSERT INTO `wp_options` VALUES (108,'cron','a:11:{i:1610929746;a:1:{s:26:"wpvivid_task_monitor_event";a:1:{s:32:"0497dd1d46f2ad78a26065af114e6dc1";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;s:21:"wpvivid-6004d5d9b63ee";}}}}i:1610930234;a:1:{s:33:"wpvivid_clean_backup_record_event";a:1:{s:32:"a8cf63fecab3eb3edf6760bc02f258a6";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;b:0;}}}}i:1610930844;a:1:{s:33:"wpvivid_clean_backup_record_event";a:1:{s:32:"a8cf63fecab3eb3edf6760bc02f258a6";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;b:0;}}}}i:1610932555;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1610952859;a:1:{s:21:"ai1wm_storage_cleanup";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1610964955;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1611008154;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1611009318;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1611009319;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1611094555;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}s:7:"version";i:2;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_pages','a:1:{s:12:"_multiwidget";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_calendar','a:1:{s:12:"_multiwidget";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_audio','a:1:{s:12:"_multiwidget";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_image','a:1:{s:12:"_multiwidget";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_media_gallery','a:1:{s:12:"_multiwidget";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_media_video','a:1:{s:12:"_multiwidget";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'widget_tag_cloud','a:1:{s:12:"_multiwidget";i:1;}','yes');
INSERT INTO `wp_options` VALUES (116,'widget_nav_menu','a:1:{s:12:"_multiwidget";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_custom_html','a:1:{s:12:"_multiwidget";i:1;}','yes');
INSERT INTO `wp_options` VALUES (119,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (121,'theme_mods_twentytwentyone','a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1610406190;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";}s:9:"sidebar-2";a:3:{i:0;s:10:"archives-2";i:1;s:12:"categories-2";i:2;s:6:"meta-2";}}}}','yes');
INSERT INTO `wp_options` VALUES (129,'_site_transient_timeout_browser_94fb6483abf307a4bafac80827dcc22a','1611009318','no');
INSERT INTO `wp_options` VALUES (130,'_site_transient_browser_94fb6483abf307a4bafac80827dcc22a','a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"87.0.4280.141";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}','no');
INSERT INTO `wp_options` VALUES (131,'_site_transient_timeout_php_check_f03419f679b2e071a92e69acf99160bf','1611009319','no');
INSERT INTO `wp_options` VALUES (132,'_site_transient_php_check_f03419f679b2e071a92e69acf99160bf','a:5:{s:19:"recommended_version";s:3:"7.4";s:15:"minimum_version";s:6:"5.6.20";s:12:"is_supported";b:1;s:9:"is_secure";b:1;s:13:"is_acceptable";b:1;}','no');
INSERT INTO `wp_options` VALUES (136,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (149,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (150,'recently_activated','a:15:{s:25:"show-hooks/show-hooks.php";i:1610929465;s:47:"show-current-template/show-current-template.php";i:1610929463;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";i:1610929460;s:53:"advanced-database-cleaner-pro/advanced-db-cleaner.php";i:1610929454;s:51:"all-in-one-wp-migration/all-in-one-wp-migration.php";i:1610929450;s:41:"acf-to-rest-api/class-acf-to-rest-api.php";i:1610683465;s:31:"kint-debugger/kint-debugger.php";i:1610683060;s:49:"advanced-database-cleaner/advanced-db-cleaner.php";i:1610672115;s:31:"query-monitor/query-monitor.php";i:1610672086;s:27:"the-preloader/preloader.php";i:1610669302;s:33:"preloader-plus/preloader-plus.php";i:1610667835;s:23:"debug-bar/debug-bar.php";i:1610492240;s:33:"duplicate-post/duplicate-post.php";i:1610446353;s:13:"cmb2/init.php";i:1610434341;s:57:"woocommerce-template-hints/woocommerce-template-hints.php";i:1610409138;}','yes');
INSERT INTO `wp_options` VALUES (158,'acf_version','5.9.3','yes');
INSERT INTO `wp_options` VALUES (159,'wpcf7','a:2:{s:7:"version";s:5:"5.3.2";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1610406134;s:7:"version";s:5:"5.3.2";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}','yes');
INSERT INTO `wp_options` VALUES (162,'cptui_new_install','false','yes');
INSERT INTO `wp_options` VALUES (163,'current_theme','TSQ Development','yes');
INSERT INTO `wp_options` VALUES (164,'theme_mods_tsqdevelopment','a:4:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:6:"menu-1";i:5;}s:18:"custom_css_post_id";i:-1;s:11:"custom_logo";i:175;}','yes');
INSERT INTO `wp_options` VALUES (165,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (170,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (177,'cptui_post_types','a:1:{s:7:"project";a:30:{s:4:"name";s:7:"project";s:5:"label";s:8:"Projects";s:14:"singular_label";s:7:"Project";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:16:"delete_with_user";s:5:"false";s:12:"show_in_rest";s:4:"true";s:9:"rest_base";s:0:"";s:21:"rest_controller_class";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:21:"dashicons-post-status";s:8:"supports";a:2:{i:0;s:5:"title";i:1;s:9:"thumbnail";}s:10:"taxonomies";a:0:{}s:6:"labels";a:29:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:10:"view_items";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:10:"attributes";s:0:"";s:14:"name_admin_bar";s:0:"";s:14:"item_published";s:0:"";s:24:"item_published_privately";s:0:"";s:22:"item_reverted_to_draft";s:0:"";s:14:"item_scheduled";s:0:"";s:12:"item_updated";s:0:"";}s:15:"custom_supports";s:0:"";}}','yes');
INSERT INTO `wp_options` VALUES (189,'cptui_taxonomies','a:1:{s:7:"service";a:25:{s:4:"name";s:7:"service";s:5:"label";s:8:"Services";s:14:"singular_label";s:7:"Service";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:12:"hierarchical";s:4:"true";s:7:"show_ui";s:4:"true";s:12:"show_in_menu";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:1:"1";s:20:"rewrite_hierarchical";s:1:"0";s:17:"show_admin_column";s:4:"true";s:12:"show_in_rest";s:4:"true";s:18:"show_in_quick_edit";s:0:"";s:9:"rest_base";s:0:"";s:21:"rest_controller_class";s:0:"";s:6:"labels";a:19:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:9:"edit_item";s:0:"";s:9:"view_item";s:0:"";s:11:"update_item";s:0:"";s:12:"add_new_item";s:0:"";s:13:"new_item_name";s:0:"";s:11:"parent_item";s:0:"";s:17:"parent_item_colon";s:0:"";s:12:"search_items";s:0:"";s:13:"popular_items";s:0:"";s:26:"separate_items_with_commas";s:0:"";s:19:"add_or_remove_items";s:0:"";s:21:"choose_from_most_used";s:0:"";s:9:"not_found";s:0:"";s:8:"no_terms";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:13:"back_to_items";s:0:"";}s:11:"meta_box_cb";s:0:"";s:12:"default_term";s:0:"";s:12:"object_types";a:1:{i:0;s:7:"project";}}}','yes');
INSERT INTO `wp_options` VALUES (213,'nav_menu_options','a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (219,'ai1wm_secret_key','Su0BTOIi34QJ','yes');
INSERT INTO `wp_options` VALUES (220,'ai1wm_status','a:2:{s:4:"type";s:8:"download";s:7:"message";s:332:"<a href="http://tsqdevelopment.test/wp-content/ai1wm-backups/tsqdevelopment.test-20210112-065538-mj76t1.wpress" class="ai1wm-button-green ai1wm-emphasize ai1wm-button-download" title="tsqdevelopment.test" download="tsqdevelopment.test-20210112-065538-mj76t1.wpress"><span>Download tsqdevelopment.test</span><em>Size: 510 MB</em></a>";}','yes');
INSERT INTO `wp_options` VALUES (222,'_site_transient_timeout_php_check_e26e33de4a278e301580d402dcb3d659','1611043054','no');
INSERT INTO `wp_options` VALUES (223,'_site_transient_php_check_e26e33de4a278e301580d402dcb3d659','a:5:{s:19:"recommended_version";s:3:"7.4";s:15:"minimum_version";s:6:"5.6.20";s:12:"is_supported";b:1;s:9:"is_secure";b:1;s:13:"is_acceptable";b:1;}','no');
INSERT INTO `wp_options` VALUES (226,'ai1wm_updater','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (231,'options_telephone','090000000','no');
INSERT INTO `wp_options` VALUES (232,'_options_telephone','field_5ffd6b02a4058','no');
INSERT INTO `wp_options` VALUES (233,'options_email','info@tsqarchitecture.co.nz','no');
INSERT INTO `wp_options` VALUES (234,'_options_email','field_5ffd6b30a405a','no');
INSERT INTO `wp_options` VALUES (235,'options_facebook','http://tsqarchitecture.co.nz/','no');
INSERT INTO `wp_options` VALUES (236,'_options_facebook','field_5ffd6b0ba4059','no');
INSERT INTO `wp_options` VALUES (237,'options_loading_screen','0','no');
INSERT INTO `wp_options` VALUES (238,'_options_loading_screen','field_5ffd72f047bff','no');
INSERT INTO `wp_options` VALUES (242,'duplicate_post_copytitle','1','yes');
INSERT INTO `wp_options` VALUES (243,'duplicate_post_copydate','0','yes');
INSERT INTO `wp_options` VALUES (244,'duplicate_post_copystatus','0','yes');
INSERT INTO `wp_options` VALUES (245,'duplicate_post_copyslug','0','yes');
INSERT INTO `wp_options` VALUES (246,'duplicate_post_copyexcerpt','1','yes');
INSERT INTO `wp_options` VALUES (247,'duplicate_post_copycontent','1','yes');
INSERT INTO `wp_options` VALUES (248,'duplicate_post_copythumbnail','1','yes');
INSERT INTO `wp_options` VALUES (249,'duplicate_post_copytemplate','1','yes');
INSERT INTO `wp_options` VALUES (250,'duplicate_post_copyformat','1','yes');
INSERT INTO `wp_options` VALUES (251,'duplicate_post_copyauthor','0','yes');
INSERT INTO `wp_options` VALUES (252,'duplicate_post_copypassword','0','yes');
INSERT INTO `wp_options` VALUES (253,'duplicate_post_copyattachments','0','yes');
INSERT INTO `wp_options` VALUES (254,'duplicate_post_copychildren','0','yes');
INSERT INTO `wp_options` VALUES (255,'duplicate_post_copycomments','0','yes');
INSERT INTO `wp_options` VALUES (256,'duplicate_post_copymenuorder','1','yes');
INSERT INTO `wp_options` VALUES (257,'duplicate_post_taxonomies_blacklist','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (258,'duplicate_post_blacklist','','yes');
INSERT INTO `wp_options` VALUES (259,'duplicate_post_types_enabled','a:2:{i:0;s:4:"post";i:1;s:4:"page";}','yes');
INSERT INTO `wp_options` VALUES (260,'duplicate_post_show_row','1','yes');
INSERT INTO `wp_options` VALUES (261,'duplicate_post_show_adminbar','1','yes');
INSERT INTO `wp_options` VALUES (262,'duplicate_post_show_submitbox','1','yes');
INSERT INTO `wp_options` VALUES (263,'duplicate_post_show_bulkactions','1','yes');
INSERT INTO `wp_options` VALUES (264,'duplicate_post_show_original_column','0','yes');
INSERT INTO `wp_options` VALUES (265,'duplicate_post_show_original_in_post_states','0','yes');
INSERT INTO `wp_options` VALUES (266,'duplicate_post_show_original_meta_box','0','yes');
INSERT INTO `wp_options` VALUES (267,'duplicate_post_show_notice','1','no');
INSERT INTO `wp_options` VALUES (268,'duplicate_post_version','3.2.6','yes');
INSERT INTO `wp_options` VALUES (273,'_site_transient_update_core','O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:63:"https://downloads.wordpress.org/release/en_NZ/wordpress-5.6.zip";s:6:"locale";s:5:"en_NZ";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:63:"https://downloads.wordpress.org/release/en_NZ/wordpress-5.6.zip";s:10:"no_content";s:0:"";s:11:"new_bundled";s:0:"";s:7:"partial";s:0:"";s:8:"rollback";s:0:"";}s:7:"current";s:3:"5.6";s:7:"version";s:3:"5.6";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.6";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1610921758;s:15:"version_checked";s:3:"5.6";s:12:"translations";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (275,'_site_transient_update_themes','O:8:"stdClass":5:{s:12:"last_checked";i:1610921760;s:7:"checked";a:4:{s:14:"tsqdevelopment";s:0:"";s:14:"twentynineteen";s:3:"1.9";s:12:"twentytwenty";s:3:"1.6";s:15:"twentytwentyone";s:3:"1.1";}s:8:"response";a:0:{}s:9:"no_update";a:3:{s:14:"twentynineteen";a:6:{s:5:"theme";s:14:"twentynineteen";s:11:"new_version";s:3:"1.9";s:3:"url";s:44:"https://wordpress.org/themes/twentynineteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentynineteen.1.9.zip";s:8:"requires";s:5:"4.9.6";s:12:"requires_php";s:5:"5.2.4";}s:12:"twentytwenty";a:6:{s:5:"theme";s:12:"twentytwenty";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/themes/twentytwenty/";s:7:"package";s:58:"https://downloads.wordpress.org/theme/twentytwenty.1.6.zip";s:8:"requires";s:3:"4.7";s:12:"requires_php";s:5:"5.2.4";}s:15:"twentytwentyone";a:6:{s:5:"theme";s:15:"twentytwentyone";s:11:"new_version";s:3:"1.1";s:3:"url";s:45:"https://wordpress.org/themes/twentytwentyone/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentytwentyone.1.1.zip";s:8:"requires";s:3:"5.3";s:12:"requires_php";s:3:"5.6";}}s:12:"translations";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (278,'recovery_mode_email_last_sent','1610447889','yes');
INSERT INTO `wp_options` VALUES (285,'options_header_image_1','175','no');
INSERT INTO `wp_options` VALUES (286,'_options_header_image_1','field_5ffe11db37dad','no');
INSERT INTO `wp_options` VALUES (287,'options_header_image_2','177','no');
INSERT INTO `wp_options` VALUES (288,'_options_header_image_2','field_5ffe120537dae','no');
INSERT INTO `wp_options` VALUES (289,'options_background_image','202','no');
INSERT INTO `wp_options` VALUES (290,'_options_background_image','field_5ffe12378ed97','no');
INSERT INTO `wp_options` VALUES (291,'options_loading_image','194','no');
INSERT INTO `wp_options` VALUES (292,'_options_loading_image','field_5ffe12248ed96','no');
INSERT INTO `wp_options` VALUES (296,'_transient_health-check-site-status-result','{"good":"13","recommended":"7","critical":"0"}','yes');
INSERT INTO `wp_options` VALUES (302,'aDBc_settings','a:5:{s:9:"left_menu";s:1:"1";s:16:"menu_under_tools";s:1:"1";s:14:"plugin_version";s:5:"3.1.6";s:12:"installed_on";s:10:"2021/01/13";s:9:"keep_last";a:1:{s:8:"revision";i:0;}}','no');
INSERT INTO `wp_options` VALUES (306,'service_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (313,'options_sub_logo_image','177','no');
INSERT INTO `wp_options` VALUES (314,'_options_sub_logo_image','field_5ffe120537dae','no');
INSERT INTO `wp_options` VALUES (330,'wpvivid_email_setting','a:3:{s:7:"send_to";a:0:{}s:6:"always";b:1;s:12:"email_enable";b:0;}','no');
INSERT INTO `wp_options` VALUES (331,'wpvivid_compress_setting','a:7:{s:13:"compress_type";s:3:"zip";s:13:"max_file_size";i:200;s:11:"no_compress";b:1;s:13:"use_temp_file";i:1;s:13:"use_temp_size";i:16;s:17:"exclude_file_size";i:0;s:24:"subpackage_plugin_upload";b:0;}','no');
INSERT INTO `wp_options` VALUES (332,'wpvivid_local_setting','a:2:{s:4:"path";s:14:"wpvividbackups";s:10:"save_local";i:1;}','no');
INSERT INTO `wp_options` VALUES (333,'wpvivid_upload_setting','a:1:{s:15:"remote_selected";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (334,'wpvivid_common_setting','a:10:{s:18:"max_execution_time";i:900;s:17:"log_save_location";s:26:"wpvividbackups\\wpvivid_log";s:16:"max_backup_count";i:3;s:14:"show_admin_bar";b:1;s:14:"domain_include";b:1;s:15:"estimate_backup";b:1;s:16:"max_resume_count";i:6;s:12:"memory_limit";s:4:"256M";s:20:"restore_memory_limit";s:4:"256M";s:12:"migrate_size";s:4:"2048";}','no');
INSERT INTO `wp_options` VALUES (335,'wpvivid_init','init','no');
INSERT INTO `wp_options` VALUES (336,'wpvivid_backup_list','a:0:{}','no');
INSERT INTO `wp_options` VALUES (337,'wpvivid_remote_init','init','no');
INSERT INTO `wp_options` VALUES (339,'wpvivid_need_review','not','no');
INSERT INTO `wp_options` VALUES (341,'scan_unused_files_task','a:5:{s:10:"start_time";i:1610577944;s:12:"running_time";i:1610577945;s:6:"status";s:8:"finished";s:8:"progress";i:100;s:6:"offset";i:60;}','yes');
INSERT INTO `wp_options` VALUES (342,'unused_uploads_task','a:6:{s:10:"start_time";i:1610577945;s:12:"running_time";i:1610577946;s:6:"status";s:8:"finished";s:8:"progress";i:100;s:4:"size";i:16224497;s:6:"folder";a:2:{s:7:"2021\\01";a:3:{s:8:"finished";i:1;s:6:"offset";i:0;s:5:"total";i:99;}s:1:".";a:3:{s:8:"finished";i:1;s:6:"offset";i:0;s:5:"total";i:0;}}}','yes');
INSERT INTO `wp_options` VALUES (344,'secret_key','j||E+uIDU3M,bu{u[Q@3SwYP6[/R:d~axk:j6gf3Qi/ziMh 2fK9L4c=`qHtcww1','no');
INSERT INTO `wp_options` VALUES (349,'options_copyright','© Copyright 2021 TSQ Architectural Design Group','no');
INSERT INTO `wp_options` VALUES (350,'_options_copyright','field_5fffa0782bee4','no');
INSERT INTO `wp_options` VALUES (353,'clean_task','a:1:{i:0;b:0;}','no');
INSERT INTO `wp_options` VALUES (354,'wpvivid_backup_report','backup_db,backup_merge,','no');
INSERT INTO `wp_options` VALUES (356,'wpvivid_last_msg','a:6:{s:2:"id";s:21:"wpvivid-6004d5ccf3fee";s:6:"action";s:6:"backup";s:4:"type";s:6:"Manual";s:6:"status";a:5:{s:10:"start_time";i:1610929613;s:8:"run_time";i:1610929613;s:7:"timeout";i:1610929613;s:3:"str";s:9:"completed";s:12:"resume_count";i:0;}s:7:"options";a:7:{s:14:"remote_options";b:0;s:10:"save_local";i:1;s:4:"lock";s:1:"0";s:13:"backup_prefix";s:20:"tsq-development.test";s:11:"file_prefix";s:59:"tsq-development.test_wpvivid-6004d5ccf3fee_2021-01-18-00-26";s:14:"backup_options";a:5:{s:7:"ismerge";i:1;s:6:"prefix";s:59:"tsq-development.test_wpvivid-6004d5ccf3fee_2021-01-18-00-26";s:8:"compress";a:7:{s:13:"compress_type";s:3:"zip";s:13:"max_file_size";i:200;s:11:"no_compress";b:1;s:13:"use_temp_file";i:1;s:13:"use_temp_size";i:16;s:17:"exclude_file_size";i:0;s:24:"subpackage_plugin_upload";b:0;}s:3:"dir";s:14:"wpvividbackups";s:6:"backup";a:2:{s:9:"backup_db";a:10:{s:3:"key";s:9:"backup_db";s:6:"result";a:2:{s:6:"result";s:7:"success";s:5:"files";a:1:{i:0;a:2:{s:9:"file_name";s:73:"tsq-development.test_wpvivid-6004d5ccf3fee_2021-01-18-00-26_backup_db.zip";s:4:"size";i:228235;}}}s:8:"compress";a:7:{s:13:"compress_type";s:3:"zip";s:13:"max_file_size";i:200;s:11:"no_compress";b:1;s:13:"use_temp_file";i:1;s:13:"use_temp_size";i:16;s:17:"exclude_file_size";i:0;s:24:"subpackage_plugin_upload";b:0;}s:8:"finished";i:1;s:4:"path";s:57:"C:\\laragon\\www\\tsq-development/wp-content\\wpvividbackups\\";s:9:"root_flag";s:6:"custom";s:7:"dump_db";i:1;s:13:"sql_file_name";s:130:"C:\\laragon\\www\\tsq-development/wp-content\\wpvividbackups\\tsq-development.test_wpvivid-6004d5ccf3fee_2021-01-18-00-26_backup_db.sql";s:9:"json_info";a:3:{s:7:"dump_db";i:1;s:8:"home_url";s:27:"http://tsq-development.test";s:9:"file_type";s:9:"databases";}s:6:"prefix";s:69:"tsq-development.test_wpvivid-6004d5ccf3fee_2021-01-18-00-26_backup_db";}s:12:"backup_merge";a:10:{s:3:"key";s:12:"backup_merge";s:6:"result";a:3:{s:6:"result";s:7:"success";s:5:"error";s:10:"test error";s:5:"files";a:1:{i:0;a:2:{s:9:"file_name";s:74:"tsq-development.test_wpvivid-6004d5ccf3fee_2021-01-18-00-26_backup_all.zip";s:4:"size";i:228806;}}}s:8:"compress";a:7:{s:13:"compress_type";s:3:"zip";s:13:"max_file_size";i:200;s:11:"no_compress";b:1;s:13:"use_temp_file";i:1;s:13:"use_temp_size";i:16;s:17:"exclude_file_size";i:0;s:24:"subpackage_plugin_upload";b:0;}s:8:"finished";i:1;s:4:"path";s:57:"C:\\laragon\\www\\tsq-development/wp-content\\wpvividbackups\\";s:9:"root_flag";s:6:"custom";s:6:"prefix";s:70:"tsq-development.test_wpvivid-6004d5ccf3fee_2021-01-18-00-26_backup_all";s:5:"files";a:1:{i:0;s:130:"C:\\laragon\\www\\tsq-development/wp-content\\wpvividbackups\\tsq-development.test_wpvivid-6004d5ccf3fee_2021-01-18-00-26_backup_db.zip";}s:9:"json_info";a:2:{s:9:"has_child";i:1;s:8:"home_url";s:27:"http://tsq-development.test";}s:15:"resume_packages";i:1;}}}s:13:"log_file_name";s:28:"wpvivid-6004d5ccf3fee_backup";}s:4:"data";a:3:{s:5:"doing";s:6:"backup";s:6:"backup";a:7:{s:5:"doing";s:12:"backup_merge";s:8:"finished";i:0;s:8:"progress";i:100;s:8:"job_data";a:0:{}s:7:"sub_job";a:2:{s:9:"backup_db";a:4:{s:8:"finished";i:1;s:8:"progress";s:30:"Backing up backup_db finished.";s:8:"job_data";a:0:{}s:11:"upload_data";a:0:{}}s:12:"backup_merge";a:3:{s:8:"finished";i:1;s:8:"progress";s:33:"Backing up backup_merge finished.";s:8:"job_data";a:2:{s:74:"tsq-development.test_wpvivid-6004d5ccf3fee_2021-01-18-00-26_backup_all.zip";a:4:{s:4:"json";a:5:{s:9:"has_child";i:1;s:8:"home_url";s:27:"http://tsq-development.test";s:10:"child_file";a:1:{s:73:"tsq-development.test_wpvivid-6004d5ccf3fee_2021-01-18-00-26_backup_db.zip";a:7:{s:7:"dump_db";i:1;s:8:"home_url";s:27:"http://tsq-development.test";s:9:"file_type";s:9:"databases";s:9:"root_flag";s:6:"custom";s:4:"file";s:73:"tsq-development.test_wpvivid-6004d5ccf3fee_2021-01-18-00-26_backup_db.zip";s:11:"php_version";s:6:"7.4.13";s:13:"mysql_version";s:6:"5.7.24";}}s:9:"root_flag";s:6:"custom";s:4:"file";s:74:"tsq-development.test_wpvivid-6004d5ccf3fee_2021-01-18-00-26_backup_all.zip";}s:4:"path";s:131:"C:\\laragon\\www\\tsq-development/wp-content\\wpvividbackups\\tsq-development.test_wpvivid-6004d5ccf3fee_2021-01-18-00-26_backup_all.zip";s:5:"files";a:1:{i:0;s:130:"C:\\laragon\\www\\tsq-development/wp-content\\wpvividbackups\\tsq-development.test_wpvivid-6004d5ccf3fee_2021-01-18-00-26_backup_db.zip";}s:6:"backup";b:1;}s:5:"files";a:1:{i:0;a:2:{s:9:"file_name";s:74:"tsq-development.test_wpvivid-6004d5ccf3fee_2021-01-18-00-26_backup_all.zip";s:4:"size";i:228806;}}}}}s:7:"db_size";s:9:"912.00 KB";s:10:"files_size";b:0;}s:6:"upload";a:5:{s:5:"doing";s:0:"";s:8:"finished";i:0;s:8:"progress";i:0;s:8:"job_data";a:0:{}s:7:"sub_job";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (376,'_transient_preloader_plus_rate_reminder','2021-01-14','yes');
INSERT INTO `wp_options` VALUES (388,'aDBc_security_folder_code','x8uomi41b39r','no');
INSERT INTO `wp_options` VALUES (405,'edd_sl_3b37c9ae34f8ba623775dd0a9f2dfaba','a:2:{s:7:"timeout";i:1610940243;s:5:"value";s:22924:"{"new_version":"3.1.6","stable_version":"3.1.6","name":"WordPress Advanced Database Cleaner","slug":"advanced-db-cleaner","url":"https:\\/\\/sigmaplugin.com\\/downloads\\/wordpress-advanced-database-cleaner\\/?changelog=1","last_updated":"2020-10-06 01:05:56","homepage":"https:\\/\\/sigmaplugin.com\\/downloads\\/wordpress-advanced-database-cleaner\\/","sections":{"description":"<p>Do you know that even after deleting a plugin\\/theme from your WordPress website, some of its leftovers may remain in your database? Such as orphan options, orphan tables and orphan cron tasks. As you may know, not all plugins\\/themes care about the housekeeping of your WordPress database. As long as you are removing plugins\\/themes, leftovers will be accumulated in your database and will influence your website performance. The Pro version of Advanced Database Cleaner will help you remove all those leftovers and perform a deep database clean up. In the pro version you can:<\\/p>\\n<p>* Classify options according to their \\"creator\\". They can be either: plugins options, themes options or WP core options<br \\/>\\n* Detect and delete orphan options.<br \\/>\\n* Classify tables according to their \\"creator\\". They can be either: plugins tables, themes tables or WP core tables<br \\/>\\n* Detect and delete orphan tables.<br \\/>\\n* Classify all cron tasks according to their \\"creator\\". They can be either: plugins cron tasks, themes cron tasks or WP core tasks<br \\/>\\n* Detect and delete orphan cron tasks.<br \\/>\\n* Search & filter options, tables and cron tasks based on several criteria such as the \\"name\\", \\"creator\\", \\"value\\", etc.<br \\/>\\n* Get premium support: we will provide a quick support as well as any technical answers to help you cleanup your database efficiently<\\/p>\\n","changelog":"<p><strong>= 3.1.6 - 06\\/10\\/2020 =<\\/strong><br \\/>\\n- Tweak: Cleaning the code by deleting unused blocks of code<br \\/>\\n- Tweak: Enhancing the security of the plugin<\\/p>\\n<p><strong>= 3.1.5 - 04\\/09\\/2020 =<\\/strong><br \\/>\\n- Fix: an issue of timeout that occurs when scanning items is now fixed<br \\/>\\n- Fix: some calls in JS file has been corrected<br \\/>\\n- Fix: fixing an issue in the general cleanup tab preventing users from deleting orphaned items on WP 5.5<br \\/>\\n- Fix: the warning \\"Deprecated: array_key_exists()\\" is now solved<br \\/>\\n- Tweak: deleting two scan files generated by the plugin to enhance security<br \\/>\\n- Tweak: we are now using SweetAlert for all popup boxes<br \\/>\\n- Tweak: enhancing the JavaScript code<br \\/>\\n- Tweak: enhancing some blocks of code<br \\/>\\n- Tweak: enhancing the security of the plugin<br \\/>\\n- New: you can now scan individual items besides scanning all items<br \\/>\\n- New: you can now edit the categorization of items and correct it manually if needed<br \\/>\\n- New great features are coming very soon!<br \\/>\\n- Tested with WordPress 5.5<br \\/>\\n- (Note: When upgrading to this new version, please make sure to clear your browser cache)<\\/p>\\n<p><strong>= 3.1.0 - 04\\/12\\/2019 =<\\/strong><br \\/>\\n- Fix: In some previous versions, tables were not shown for some users. This has been fixed<br \\/>\\n- Fix: The plugin is not ready to optimize InnoDB tables, this feature has been deleted temporarily<br \\/>\\n- SECURITY (PRO): Add security level to the folder containing scan results<br \\/>\\n- SECURITY (PRO): Hide the license key after deactivating it<\\/p>\\n<p>=<strong> 3.0.0 - 04\\/11\\/2019 =<\\/strong><br \\/>\\n* IMPORTANT NOTICE FOR PRO USERS: After you upgrade to 3.0.0 from an old version, you will notice that WordPress has deactivated the plugin due to an error: \'Plugin file does not exist\'. This is because we have renamed the pro plugin folder name from \\"advanced-db-cleaner\\" to \\"advanced-database-cleaner-pro\\", causing the WordPress to not being able to find the old one and therefore deactivating the plugin. Just activate it again. It doesn\\u2019t break anything. Once you activate the plugin again it will continue working normally without any issues. You will also probably lose the pro version after this upgrade (This is due to a conflict between the free and pro versions which is now solved). If it is the case, please follow these steps to restore your pro version with all new features: (https:\\/\\/sigmaplugin.com\\/blog\\/restore-pro-version-after-upgrade-to-3-0-0)<\\/p>\\n<p>* COMPATIBILITY: The plugin is tested with WordPress 5.3<br \\/>\\n* CHANGE: Some changes to readme.txt file<br \\/>\\n* REMOVE: Drafts are not cleaned anymore in 3.0.0 since many users have reported that drafts are useful for them<br \\/>\\n* New: You can now clean up new items: pingbacks, trackbacks, orphaned user meta, orphaned term meta, expired transients<br \\/>\\n* New: The plugin icon in the left side menu has been changed to white color<br \\/>\\n* New: Change text-domain to \'advanced-database-cleaner\'<br \\/>\\n* New: Enhancements to the look and feel of the plugin<br \\/>\\n* New: The sidebar has been changed for the free version and deleted in the pro version<br \\/>\\n* New: For options, we have added the option size column and two new actions: Set autoload to no \\/ yes<br \\/>\\n* New: For tables, we have added two actions: Empty tables and repair tables<br \\/>\\n* New: InnoDB tables can be optimized now as well<br \\/>\\n* New: You can now order and sort all items<br \\/>\\n* New: You can change the number of items per page<br \\/>\\n* New: You can keep last x days\' data from being cleaned and clean only data older than the number of days you have specified<br \\/>\\n* New: You can specify elements to cleanup in a scheduled task. You can also create as many scheduled tasks as you need<br \\/>\\n* New: Add information to each line of unused data in \'General clean-up\' tab to let users know more about each item they will clean<br \\/>\\n* New: Display\\/view items before cleaning them (in \'General cleanup\' tab) is now in the free version<br \\/>\\n* New: Add a new setting to hide the \\"premium\\" tab in the free version<br \\/>\\n* Fix: Repair some strings with correct text domain<br \\/>\\n* Fix: Some tasks with arguments can\'t be cleaned. This is fixed now<br \\/>\\n* Fix: Some tasks with the same hook name and different arguments were not displayed. This is fixed now<br \\/>\\n* PERFORMANCE: All images used by the plugin are now in SVG format<br \\/>\\n* PERFORMANCE: Restructuring the whole code for better performance<br \\/>\\n* SECURITY: add some _wpnonce to forms<br \\/>\\n* New (PRO): Add \\"Pro\\" to the title of the pro version to distinguish between the free and the pro versions<br \\/>\\n* New (PRO): You can now search and filter all elements: options, tables, tasks, etc. based on several criteria<br \\/>\\n* New (PRO): Add progress bar when searching for orphan items to show remaining items to process<br \\/>\\n* New (PRO): Add a category called \\"uncategorized\\" to let users see items that have not been categorized yet<br \\/>\\n* Fix (PRO): The activation issue is now fixed<br \\/>\\n* Fix (PRO): The scan of orphaned items generated timeout errors for big databases, we use now ajax to solve this<br \\/>\\n* Fix (PRO): A conflict between the free and the pro versions is now solved<br \\/>\\n* PERFORMANCE (PRO): We are now using an enhanced new update class provided by EDD plugin<br \\/>\\n* PERFORMANCE (PRO): Set autoload to no in all options used by the plugin<br \\/>\\n* PERFORMANCE (PRO): The plugin does not store scan results in DB anymore. We use files instead<br \\/>\\n* SECURITY (PRO): The license is now hidden after activation for security reasons<br \\/>\\n* WEBSITE (PRO): You can now view your purchase history, downloads, generate an invoice, upgrade your license, etc. [Read more](https:\\/\\/sigmaplugin.com\\/blog\\/how-to-get-access-to-my-account-and-downloads)<br \\/>\\n* WEBSITE (PRO): Enhancements of the [plugin premium page](https:\\/\\/sigmaplugin.com\\/downloads\\/wordpress-advanced-database-cleaner)<\\/p>\\n<p><strong>= 2.0.0 =<\\/strong><br \\/>\\n* Some changes to readme.txt file<br \\/>\\n* Changing the way the plugin can be translated<br \\/>\\n* Correcting __() to some texts<br \\/>\\n* Correcting some displaying texts<br \\/>\\n* Big change in styles<br \\/>\\n* Restructuring the whole code for better performance<br \\/>\\n* Creation of the plugin main page: (https:\\/\\/sigmaplugin.com\\/downloads\\/wordpress-advanced-database-cleaner)<br \\/>\\n* Adding language translation support<br \\/>\\n* Correct the time zone offset for the scheduled tasks<br \\/>\\n* Skipping InnoDB tables while optimizing<br \\/>\\n* Change size of lost tables data from \'o\' to \'KB\'<br \\/>\\n* Main menu is now under \'Tools\' not \'settings\'<br \\/>\\n* Adding separate left menu (can be disabled)<br \\/>\\n* Adding overview page with some useful information<br \\/>\\n* Adding settings page<br \\/>\\n* \\"Reset database\\" is now in a separate plugin (please view our plugins page)<br \\/>\\n* Multisite: now only the main site can clean the network<br \\/>\\n* New feature: Display\\/view items before cleaning them (Pro)<br \\/>\\n* New feature: view and clean options<br \\/>\\n* New feature: Detect orphan options, plugins options, themes options and WP options (Pro)<br \\/>\\n* New feature: view and clean cron (scheduled tasks)<br \\/>\\n* New feature: Detect orphan tasks, plugins tasks, themes tasks and WP tasks (Pro)<br \\/>\\n* New feature: view and clean database tables<br \\/>\\n* New feature: Detect orphan tables, plugins tables, themes tables and WP tables (Pro)<\\/p>\\n<p><strong>= 1.3.7 =<\\/strong><br \\/>\\n* Adding \\"clean trash-posts\\"<br \\/>\\n* Updating FAQ<br \\/>\\n* Updating readme file<br \\/>\\n* Tested up to: 4.4<\\/p>\\n<p><strong>= 1.3.6 =<\\/strong><br \\/>\\n* Fixing a problem in donate button<br \\/>\\n* Using _e() and __() for all texts in the plugin<\\/p>\\n<p><strong>= 1.3.5 =<\\/strong><br \\/>\\n* New feature: Adding \\"Clean Cron\\". You can now clean unnecessary scheduled tasks.<br \\/>\\n* Updating FAQ<\\/p>\\n<p><strong>= 1.3.1 =<\\/strong><br \\/>\\n* Adding FAQ<\\/p>\\n<p><strong>= 1.3.0 =<\\/strong><br \\/>\\n* Some code optimizations<br \\/>\\n* New feature: Support multisite. You can now clean and optimize your database in multisite installation.<\\/p>\\n<p><strong>= 1.2.3 =<\\/strong><br \\/>\\n* Some optimizations and style modifications<br \\/>\\n* New feature: Adding the scheduler. You can now schedule the clean-up and optimization of your database.<\\/p>\\n<p><strong>= 1.2.2 =<\\/strong><br \\/>\\n* Some optimizations and style modifications<\\/p>\\n<p><strong>= 1.2.1 =<\\/strong><br \\/>\\n* Some optimizations and style modifications<br \\/>\\n* \\"Clean database\\" tab shows now only elements that should be cleaned instead of listing all elements.<br \\/>\\n* \\"Clean database\\" tab shows now an icon that indicates the state of your database.<br \\/>\\n* \\"Optimize database\\" tab shows now only tables that should be optimized instead of listing all tables.<br \\/>\\n* \\"Optimize database\\" tab shows now an icon that indicates the state of your tables.<br \\/>\\n* \\"Reset database\\" shows now a warning before resetting the database.<\\/p>\\n<p><strong>= 1.2.0 =<\\/strong><br \\/>\\n* Some optimizations and style modifications<br \\/>\\n* New feature: Adding \\"Reset database\\"<\\/p>\\n<p><strong>= 1.1.1 =<\\/strong><br \\/>\\n* Some optimizations and style modifications<br \\/>\\n* Adding \\"Donate link\\"<\\/p>\\n<p><strong>= 1.1.0 =<\\/strong><br \\/>\\n* Some optimizations and style modifications<br \\/>\\n* New feature: Adding \\"Optimize Database\\"<\\/p>\\n<p><strong>= 1.0.0 =<\\/strong><br \\/>\\n* First release: Hello world!<\\/p>\\n"},"banners":{"high":"","low":""},"icons":{"1x":"https:\\/\\/sigmaplugin.com\\/wp-content\\/uploads\\/edd\\/2017\\/01\\/wordpress-advanced-database-cleaner-plugin.jpg","2x":"https:\\/\\/sigmaplugin.com\\/wp-content\\/uploads\\/edd\\/2017\\/01\\/wordpress-advanced-database-cleaner-plugin.jpg"},"stable_tag":"3.1.6","donate_link":"https:\\/\\/www.sigmaplugin.com\\/donation","license":"GPLv2 or later","description":["<p>Do you know that even after deleting a plugin\\/theme from your WordPress website, some of its leftovers may remain in your database? Such as orphan options, orphan tables and orphan cron tasks. As you may know, not all plugins\\/themes care about the housekeeping of your WordPress database. As long as you are removing plugins\\/themes, leftovers will be accumulated in your database and will influence your website performance. The Pro version of Advanced Database Cleaner will help you remove all those leftovers and perform a deep database clean up. In the pro version you can:<\\/p>\\n<p>* Classify options according to their \\"creator\\". They can be either: plugins options, themes options or WP core options<br \\/>\\n* Detect and delete orphan options.<br \\/>\\n* Classify tables according to their \\"creator\\". They can be either: plugins tables, themes tables or WP core tables<br \\/>\\n* Detect and delete orphan tables.<br \\/>\\n* Classify all cron tasks according to their \\"creator\\". They can be either: plugins cron tasks, themes cron tasks or WP core tasks<br \\/>\\n* Detect and delete orphan cron tasks.<br \\/>\\n* Search & filter options, tables and cron tasks based on several criteria such as the \\"name\\", \\"creator\\", \\"value\\", etc.<br \\/>\\n* Get premium support: we will provide a quick support as well as any technical answers to help you cleanup your database efficiently<\\/p>\\n"],"changelog":["<p><strong>= 3.1.6 - 06\\/10\\/2020 =<\\/strong><br \\/>\\n- Tweak: Cleaning the code by deleting unused blocks of code<br \\/>\\n- Tweak: Enhancing the security of the plugin<\\/p>\\n<p><strong>= 3.1.5 - 04\\/09\\/2020 =<\\/strong><br \\/>\\n- Fix: an issue of timeout that occurs when scanning items is now fixed<br \\/>\\n- Fix: some calls in JS file has been corrected<br \\/>\\n- Fix: fixing an issue in the general cleanup tab preventing users from deleting orphaned items on WP 5.5<br \\/>\\n- Fix: the warning \\"Deprecated: array_key_exists()\\" is now solved<br \\/>\\n- Tweak: deleting two scan files generated by the plugin to enhance security<br \\/>\\n- Tweak: we are now using SweetAlert for all popup boxes<br \\/>\\n- Tweak: enhancing the JavaScript code<br \\/>\\n- Tweak: enhancing some blocks of code<br \\/>\\n- Tweak: enhancing the security of the plugin<br \\/>\\n- New: you can now scan individual items besides scanning all items<br \\/>\\n- New: you can now edit the categorization of items and correct it manually if needed<br \\/>\\n- New great features are coming very soon!<br \\/>\\n- Tested with WordPress 5.5<br \\/>\\n- (Note: When upgrading to this new version, please make sure to clear your browser cache)<\\/p>\\n<p><strong>= 3.1.0 - 04\\/12\\/2019 =<\\/strong><br \\/>\\n- Fix: In some previous versions, tables were not shown for some users. This has been fixed<br \\/>\\n- Fix: The plugin is not ready to optimize InnoDB tables, this feature has been deleted temporarily<br \\/>\\n- SECURITY (PRO): Add security level to the folder containing scan results<br \\/>\\n- SECURITY (PRO): Hide the license key after deactivating it<\\/p>\\n<p>=<strong> 3.0.0 - 04\\/11\\/2019 =<\\/strong><br \\/>\\n* IMPORTANT NOTICE FOR PRO USERS: After you upgrade to 3.0.0 from an old version, you will notice that WordPress has deactivated the plugin due to an error: \'Plugin file does not exist\'. This is because we have renamed the pro plugin folder name from \\"advanced-db-cleaner\\" to \\"advanced-database-cleaner-pro\\", causing the WordPress to not being able to find the old one and therefore deactivating the plugin. Just activate it again. It doesn\\u2019t break anything. Once you activate the plugin again it will continue working normally without any issues. You will also probably lose the pro version after this upgrade (This is due to a conflict between the free and pro versions which is now solved). If it is the case, please follow these steps to restore your pro version with all new features: (https:\\/\\/sigmaplugin.com\\/blog\\/restore-pro-version-after-upgrade-to-3-0-0)<\\/p>\\n<p>* COMPATIBILITY: The plugin is tested with WordPress 5.3<br \\/>\\n* CHANGE: Some changes to readme.txt file<br \\/>\\n* REMOVE: Drafts are not cleaned anymore in 3.0.0 since many users have reported that drafts are useful for them<br \\/>\\n* New: You can now clean up new items: pingbacks, trackbacks, orphaned user meta, orphaned term meta, expired transients<br \\/>\\n* New: The plugin icon in the left side menu has been changed to white color<br \\/>\\n* New: Change text-domain to \'advanced-database-cleaner\'<br \\/>\\n* New: Enhancements to the look and feel of the plugin<br \\/>\\n* New: The sidebar has been changed for the free version and deleted in the pro version<br \\/>\\n* New: For options, we have added the option size column and two new actions: Set autoload to no \\/ yes<br \\/>\\n* New: For tables, we have added two actions: Empty tables and repair tables<br \\/>\\n* New: InnoDB tables can be optimized now as well<br \\/>\\n* New: You can now order and sort all items<br \\/>\\n* New: You can change the number of items per page<br \\/>\\n* New: You can keep last x days\' data from being cleaned and clean only data older than the number of days you have specified<br \\/>\\n* New: You can specify elements to cleanup in a scheduled task. You can also create as many scheduled tasks as you need<br \\/>\\n* New: Add information to each line of unused data in \'General clean-up\' tab to let users know more about each item they will clean<br \\/>\\n* New: Display\\/view items before cleaning them (in \'General cleanup\' tab) is now in the free version<br \\/>\\n* New: Add a new setting to hide the \\"premium\\" tab in the free version<br \\/>\\n* Fix: Repair some strings with correct text domain<br \\/>\\n* Fix: Some tasks with arguments can\'t be cleaned. This is fixed now<br \\/>\\n* Fix: Some tasks with the same hook name and different arguments were not displayed. This is fixed now<br \\/>\\n* PERFORMANCE: All images used by the plugin are now in SVG format<br \\/>\\n* PERFORMANCE: Restructuring the whole code for better performance<br \\/>\\n* SECURITY: add some _wpnonce to forms<br \\/>\\n* New (PRO): Add \\"Pro\\" to the title of the pro version to distinguish between the free and the pro versions<br \\/>\\n* New (PRO): You can now search and filter all elements: options, tables, tasks, etc. based on several criteria<br \\/>\\n* New (PRO): Add progress bar when searching for orphan items to show remaining items to process<br \\/>\\n* New (PRO): Add a category called \\"uncategorized\\" to let users see items that have not been categorized yet<br \\/>\\n* Fix (PRO): The activation issue is now fixed<br \\/>\\n* Fix (PRO): The scan of orphaned items generated timeout errors for big databases, we use now ajax to solve this<br \\/>\\n* Fix (PRO): A conflict between the free and the pro versions is now solved<br \\/>\\n* PERFORMANCE (PRO): We are now using an enhanced new update class provided by EDD plugin<br \\/>\\n* PERFORMANCE (PRO): Set autoload to no in all options used by the plugin<br \\/>\\n* PERFORMANCE (PRO): The plugin does not store scan results in DB anymore. We use files instead<br \\/>\\n* SECURITY (PRO): The license is now hidden after activation for security reasons<br \\/>\\n* WEBSITE (PRO): You can now view your purchase history, downloads, generate an invoice, upgrade your license, etc. [Read more](https:\\/\\/sigmaplugin.com\\/blog\\/how-to-get-access-to-my-account-and-downloads)<br \\/>\\n* WEBSITE (PRO): Enhancements of the [plugin premium page](https:\\/\\/sigmaplugin.com\\/downloads\\/wordpress-advanced-database-cleaner)<\\/p>\\n<p><strong>= 2.0.0 =<\\/strong><br \\/>\\n* Some changes to readme.txt file<br \\/>\\n* Changing the way the plugin can be translated<br \\/>\\n* Correcting __() to some texts<br \\/>\\n* Correcting some displaying texts<br \\/>\\n* Big change in styles<br \\/>\\n* Restructuring the whole code for better performance<br \\/>\\n* Creation of the plugin main page: (https:\\/\\/sigmaplugin.com\\/downloads\\/wordpress-advanced-database-cleaner)<br \\/>\\n* Adding language translation support<br \\/>\\n* Correct the time zone offset for the scheduled tasks<br \\/>\\n* Skipping InnoDB tables while optimizing<br \\/>\\n* Change size of lost tables data from \'o\' to \'KB\'<br \\/>\\n* Main menu is now under \'Tools\' not \'settings\'<br \\/>\\n* Adding separate left menu (can be disabled)<br \\/>\\n* Adding overview page with some useful information<br \\/>\\n* Adding settings page<br \\/>\\n* \\"Reset database\\" is now in a separate plugin (please view our plugins page)<br \\/>\\n* Multisite: now only the main site can clean the network<br \\/>\\n* New feature: Display\\/view items before cleaning them (Pro)<br \\/>\\n* New feature: view and clean options<br \\/>\\n* New feature: Detect orphan options, plugins options, themes options and WP options (Pro)<br \\/>\\n* New feature: view and clean cron (scheduled tasks)<br \\/>\\n* New feature: Detect orphan tasks, plugins tasks, themes tasks and WP tasks (Pro)<br \\/>\\n* New feature: view and clean database tables<br \\/>\\n* New feature: Detect orphan tables, plugins tables, themes tables and WP tables (Pro)<\\/p>\\n<p><strong>= 1.3.7 =<\\/strong><br \\/>\\n* Adding \\"clean trash-posts\\"<br \\/>\\n* Updating FAQ<br \\/>\\n* Updating readme file<br \\/>\\n* Tested up to: 4.4<\\/p>\\n<p><strong>= 1.3.6 =<\\/strong><br \\/>\\n* Fixing a problem in donate button<br \\/>\\n* Using _e() and __() for all texts in the plugin<\\/p>\\n<p><strong>= 1.3.5 =<\\/strong><br \\/>\\n* New feature: Adding \\"Clean Cron\\". You can now clean unnecessary scheduled tasks.<br \\/>\\n* Updating FAQ<\\/p>\\n<p><strong>= 1.3.1 =<\\/strong><br \\/>\\n* Adding FAQ<\\/p>\\n<p><strong>= 1.3.0 =<\\/strong><br \\/>\\n* Some code optimizations<br \\/>\\n* New feature: Support multisite. You can now clean and optimize your database in multisite installation.<\\/p>\\n<p><strong>= 1.2.3 =<\\/strong><br \\/>\\n* Some optimizations and style modifications<br \\/>\\n* New feature: Adding the scheduler. You can now schedule the clean-up and optimization of your database.<\\/p>\\n<p><strong>= 1.2.2 =<\\/strong><br \\/>\\n* Some optimizations and style modifications<\\/p>\\n<p><strong>= 1.2.1 =<\\/strong><br \\/>\\n* Some optimizations and style modifications<br \\/>\\n* \\"Clean database\\" tab shows now only elements that should be cleaned instead of listing all elements.<br \\/>\\n* \\"Clean database\\" tab shows now an icon that indicates the state of your database.<br \\/>\\n* \\"Optimize database\\" tab shows now only tables that should be optimized instead of listing all tables.<br \\/>\\n* \\"Optimize database\\" tab shows now an icon that indicates the state of your tables.<br \\/>\\n* \\"Reset database\\" shows now a warning before resetting the database.<\\/p>\\n<p><strong>= 1.2.0 =<\\/strong><br \\/>\\n* Some optimizations and style modifications<br \\/>\\n* New feature: Adding \\"Reset database\\"<\\/p>\\n<p><strong>= 1.1.1 =<\\/strong><br \\/>\\n* Some optimizations and style modifications<br \\/>\\n* Adding \\"Donate link\\"<\\/p>\\n<p><strong>= 1.1.0 =<\\/strong><br \\/>\\n* Some optimizations and style modifications<br \\/>\\n* New feature: Adding \\"Optimize Database\\"<\\/p>\\n<p><strong>= 1.0.0 =<\\/strong><br \\/>\\n* First release: Hello world!<\\/p>\\n"]}";}','no');
INSERT INTO `wp_options` VALUES (412,'_transient_timeout_acf_plugin_updates','1611084836','no');
INSERT INTO `wp_options` VALUES (413,'_transient_acf_plugin_updates','a:4:{s:7:"plugins";a:1:{s:34:"advanced-custom-fields-pro/acf.php";a:8:{s:4:"slug";s:26:"advanced-custom-fields-pro";s:6:"plugin";s:34:"advanced-custom-fields-pro/acf.php";s:11:"new_version";s:5:"5.9.4";s:3:"url";s:36:"https://www.advancedcustomfields.com";s:6:"tested";s:3:"5.6";s:7:"package";s:0:"";s:5:"icons";a:1:{s:7:"default";s:63:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png";}s:7:"banners";a:2:{s:3:"low";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";s:4:"high";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";}}}s:10:"expiration";i:172800;s:6:"status";i:1;s:7:"checked";a:1:{s:34:"advanced-custom-fields-pro/acf.php";s:5:"5.9.3";}}','no');
INSERT INTO `wp_options` VALUES (423,'_site_transient_update_plugins','O:8:"stdClass":5:{s:12:"last_checked";i:1610929450;s:7:"checked";a:15:{s:41:"acf-to-rest-api/class-acf-to-rest-api.php";s:5:"3.3.2";s:34:"advanced-custom-fields-pro/acf.php";s:5:"5.9.3";s:53:"advanced-database-cleaner-pro/advanced-db-cleaner.php";s:5:"3.1.6";s:51:"all-in-one-wp-migration/all-in-one-wp-migration.php";s:4:"7.32";s:33:"classic-editor/classic-editor.php";s:3:"1.6";s:13:"cmb2/init.php";s:5:"2.7.0";s:36:"contact-form-7/wp-contact-form-7.php";s:5:"5.3.2";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:5:"1.8.2";s:23:"debug-bar/debug-bar.php";s:5:"1.1.2";s:31:"kint-debugger/kint-debugger.php";s:3:"1.2";s:31:"query-monitor/query-monitor.php";s:5:"3.6.6";s:47:"regenerate-thumbnails/regenerate-thumbnails.php";s:5:"3.1.4";s:47:"show-current-template/show-current-template.php";s:5:"0.3.4";s:25:"show-hooks/show-hooks.php";s:5:"0.1.3";s:47:"wpvivid-backuprestore/wpvivid-backuprestore.php";s:6:"0.9.49";}s:8:"response";a:2:{s:47:"show-current-template/show-current-template.php";O:8:"stdClass":12:{s:2:"id";s:35:"w.org/plugins/show-current-template";s:4:"slug";s:21:"show-current-template";s:6:"plugin";s:47:"show-current-template/show-current-template.php";s:11:"new_version";s:5:"0.4.2";s:3:"url";s:52:"https://wordpress.org/plugins/show-current-template/";s:7:"package";s:70:"https://downloads.wordpress.org/plugin/show-current-template.0.4.2.zip";s:5:"icons";a:3:{s:2:"2x";s:73:"https://ps.w.org/show-current-template/assets/icon-256x256.png?rev=976031";s:2:"1x";s:65:"https://ps.w.org/show-current-template/assets/icon.svg?rev=976031";s:3:"svg";s:65:"https://ps.w.org/show-current-template/assets/icon.svg?rev=976031";}s:7:"banners";a:0:{}s:11:"banners_rtl";a:0:{}s:6:"tested";s:3:"5.6";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:34:"advanced-custom-fields-pro/acf.php";O:8:"stdClass":8:{s:4:"slug";s:26:"advanced-custom-fields-pro";s:6:"plugin";s:34:"advanced-custom-fields-pro/acf.php";s:11:"new_version";s:5:"5.9.4";s:3:"url";s:36:"https://www.advancedcustomfields.com";s:6:"tested";s:3:"5.6";s:7:"package";s:0:"";s:5:"icons";a:1:{s:7:"default";s:63:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png";}s:7:"banners";a:2:{s:3:"low";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";s:4:"high";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";}}}s:12:"translations";a:0:{}s:9:"no_update";a:12:{s:41:"acf-to-rest-api/class-acf-to-rest-api.php";O:8:"stdClass":9:{s:2:"id";s:29:"w.org/plugins/acf-to-rest-api";s:4:"slug";s:15:"acf-to-rest-api";s:6:"plugin";s:41:"acf-to-rest-api/class-acf-to-rest-api.php";s:11:"new_version";s:5:"3.3.2";s:3:"url";s:46:"https://wordpress.org/plugins/acf-to-rest-api/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/acf-to-rest-api.3.3.2.zip";s:5:"icons";a:2:{s:2:"2x";s:68:"https://ps.w.org/acf-to-rest-api/assets/icon-256x256.jpg?rev=1752896";s:2:"1x";s:68:"https://ps.w.org/acf-to-rest-api/assets/icon-128x128.jpg?rev=1752896";}s:7:"banners";a:2:{s:2:"2x";s:71:"https://ps.w.org/acf-to-rest-api/assets/banner-1544x500.jpg?rev=1752896";s:2:"1x";s:70:"https://ps.w.org/acf-to-rest-api/assets/banner-772x250.jpg?rev=1752896";}s:11:"banners_rtl";a:0:{}}s:51:"all-in-one-wp-migration/all-in-one-wp-migration.php";O:8:"stdClass":9:{s:2:"id";s:37:"w.org/plugins/all-in-one-wp-migration";s:4:"slug";s:23:"all-in-one-wp-migration";s:6:"plugin";s:51:"all-in-one-wp-migration/all-in-one-wp-migration.php";s:11:"new_version";s:4:"7.32";s:3:"url";s:54:"https://wordpress.org/plugins/all-in-one-wp-migration/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.7.32.zip";s:5:"icons";a:2:{s:2:"2x";s:76:"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2427458";s:2:"1x";s:76:"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2427458";}s:7:"banners";a:2:{s:2:"2x";s:79:"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=2427458";s:2:"1x";s:78:"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=2427458";}s:11:"banners_rtl";a:0:{}}s:33:"classic-editor/classic-editor.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/classic-editor";s:4:"slug";s:14:"classic-editor";s:6:"plugin";s:33:"classic-editor/classic-editor.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:45:"https://wordpress.org/plugins/classic-editor/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/classic-editor.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:67:"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671";s:2:"1x";s:67:"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671";}s:7:"banners";a:2:{s:2:"2x";s:70:"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671";s:2:"1x";s:69:"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676";}s:11:"banners_rtl";a:0:{}}s:13:"cmb2/init.php";O:8:"stdClass":9:{s:2:"id";s:18:"w.org/plugins/cmb2";s:4:"slug";s:4:"cmb2";s:6:"plugin";s:13:"cmb2/init.php";s:11:"new_version";s:5:"2.7.0";s:3:"url";s:35:"https://wordpress.org/plugins/cmb2/";s:7:"package";s:47:"https://downloads.wordpress.org/plugin/cmb2.zip";s:5:"icons";a:2:{s:2:"2x";s:57:"https://ps.w.org/cmb2/assets/icon-256x256.png?rev=1081087";s:2:"1x";s:57:"https://ps.w.org/cmb2/assets/icon-128x128.png?rev=1081087";}s:7:"banners";a:2:{s:2:"2x";s:60:"https://ps.w.org/cmb2/assets/banner-1544x500.png?rev=1081087";s:2:"1x";s:59:"https://ps.w.org/cmb2/assets/banner-772x250.png?rev=1081087";}s:11:"banners_rtl";a:0:{}}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"5.3.2";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.5.3.2.zip";s:5:"icons";a:3:{s:2:"2x";s:67:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696";s:2:"1x";s:59:"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255";s:3:"svg";s:59:"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255";}s:7:"banners";a:2:{s:2:"2x";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";s:2:"1x";s:68:"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427";}s:11:"banners_rtl";a:0:{}}s:43:"custom-post-type-ui/custom-post-type-ui.php";O:8:"stdClass":9:{s:2:"id";s:33:"w.org/plugins/custom-post-type-ui";s:4:"slug";s:19:"custom-post-type-ui";s:6:"plugin";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:11:"new_version";s:5:"1.8.2";s:3:"url";s:50:"https://wordpress.org/plugins/custom-post-type-ui/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.8.2.zip";s:5:"icons";a:2:{s:2:"2x";s:72:"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557";s:2:"1x";s:72:"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557";}s:7:"banners";a:2:{s:2:"2x";s:75:"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557";s:2:"1x";s:74:"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557";}s:11:"banners_rtl";a:0:{}}s:23:"debug-bar/debug-bar.php";O:8:"stdClass":9:{s:2:"id";s:23:"w.org/plugins/debug-bar";s:4:"slug";s:9:"debug-bar";s:6:"plugin";s:23:"debug-bar/debug-bar.php";s:11:"new_version";s:5:"1.1.2";s:3:"url";s:40:"https://wordpress.org/plugins/debug-bar/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/debug-bar.1.1.2.zip";s:5:"icons";a:3:{s:2:"2x";s:62:"https://ps.w.org/debug-bar/assets/icon-256x256.png?rev=1908362";s:2:"1x";s:54:"https://ps.w.org/debug-bar/assets/icon.svg?rev=1908362";s:3:"svg";s:54:"https://ps.w.org/debug-bar/assets/icon.svg?rev=1908362";}s:7:"banners";a:2:{s:2:"2x";s:65:"https://ps.w.org/debug-bar/assets/banner-1544x500.png?rev=1365496";s:2:"1x";s:64:"https://ps.w.org/debug-bar/assets/banner-772x250.png?rev=1365496";}s:11:"banners_rtl";a:0:{}}s:31:"kint-debugger/kint-debugger.php";O:8:"stdClass":9:{s:2:"id";s:27:"w.org/plugins/kint-debugger";s:4:"slug";s:13:"kint-debugger";s:6:"plugin";s:31:"kint-debugger/kint-debugger.php";s:11:"new_version";s:3:"1.2";s:3:"url";s:44:"https://wordpress.org/plugins/kint-debugger/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/kint-debugger.1.2.zip";s:5:"icons";a:2:{s:2:"2x";s:66:"https://ps.w.org/kint-debugger/assets/icon-256x256.png?rev=1562765";s:2:"1x";s:66:"https://ps.w.org/kint-debugger/assets/icon-256x256.png?rev=1562765";}s:7:"banners";a:1:{s:2:"1x";s:68:"https://ps.w.org/kint-debugger/assets/banner-772x250.png?rev=1562765";}s:11:"banners_rtl";a:0:{}}s:31:"query-monitor/query-monitor.php";O:8:"stdClass":9:{s:2:"id";s:27:"w.org/plugins/query-monitor";s:4:"slug";s:13:"query-monitor";s:6:"plugin";s:31:"query-monitor/query-monitor.php";s:11:"new_version";s:5:"3.6.6";s:3:"url";s:44:"https://wordpress.org/plugins/query-monitor/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/query-monitor.3.6.6.zip";s:5:"icons";a:3:{s:2:"2x";s:66:"https://ps.w.org/query-monitor/assets/icon-256x256.png?rev=2301273";s:2:"1x";s:58:"https://ps.w.org/query-monitor/assets/icon.svg?rev=2056073";s:3:"svg";s:58:"https://ps.w.org/query-monitor/assets/icon.svg?rev=2056073";}s:7:"banners";a:2:{s:2:"2x";s:69:"https://ps.w.org/query-monitor/assets/banner-1544x500.png?rev=2457098";s:2:"1x";s:68:"https://ps.w.org/query-monitor/assets/banner-772x250.png?rev=2457098";}s:11:"banners_rtl";a:0:{}}s:47:"regenerate-thumbnails/regenerate-thumbnails.php";O:8:"stdClass":9:{s:2:"id";s:35:"w.org/plugins/regenerate-thumbnails";s:4:"slug";s:21:"regenerate-thumbnails";s:6:"plugin";s:47:"regenerate-thumbnails/regenerate-thumbnails.php";s:11:"new_version";s:5:"3.1.4";s:3:"url";s:52:"https://wordpress.org/plugins/regenerate-thumbnails/";s:7:"package";s:70:"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.4.zip";s:5:"icons";a:1:{s:2:"1x";s:74:"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390";}s:7:"banners";a:2:{s:2:"2x";s:77:"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390";s:2:"1x";s:76:"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390";}s:11:"banners_rtl";a:0:{}}s:25:"show-hooks/show-hooks.php";O:8:"stdClass":9:{s:2:"id";s:24:"w.org/plugins/show-hooks";s:4:"slug";s:10:"show-hooks";s:6:"plugin";s:25:"show-hooks/show-hooks.php";s:11:"new_version";s:5:"0.1.3";s:3:"url";s:41:"https://wordpress.org/plugins/show-hooks/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/show-hooks.0.1.3.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/show-hooks/assets/icon-256x256.png?rev=2327503";s:2:"1x";s:63:"https://ps.w.org/show-hooks/assets/icon-128x128.png?rev=2327565";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/show-hooks/assets/banner-772x250.png?rev=2327503";}s:11:"banners_rtl";a:0:{}}s:47:"wpvivid-backuprestore/wpvivid-backuprestore.php";O:8:"stdClass":9:{s:2:"id";s:35:"w.org/plugins/wpvivid-backuprestore";s:4:"slug";s:21:"wpvivid-backuprestore";s:6:"plugin";s:47:"wpvivid-backuprestore/wpvivid-backuprestore.php";s:11:"new_version";s:6:"0.9.49";s:3:"url";s:52:"https://wordpress.org/plugins/wpvivid-backuprestore/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/wpvivid-backuprestore.0.9.49.zip";s:5:"icons";a:2:{s:2:"2x";s:74:"https://ps.w.org/wpvivid-backuprestore/assets/icon-256x256.png?rev=2086438";s:2:"1x";s:74:"https://ps.w.org/wpvivid-backuprestore/assets/icon-128x128.png?rev=2086438";}s:7:"banners";a:2:{s:2:"2x";s:77:"https://ps.w.org/wpvivid-backuprestore/assets/banner-1544x500.png?rev=2086438";s:2:"1x";s:76:"https://ps.w.org/wpvivid-backuprestore/assets/banner-772x250.png?rev=2086438";}s:11:"banners_rtl";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (427,'_site_transient_timeout_theme_roots','1610931299','no');
INSERT INTO `wp_options` VALUES (428,'_site_transient_theme_roots','a:4:{s:14:"tsqdevelopment";s:7:"/themes";s:14:"twentynineteen";s:7:"/themes";s:12:"twentytwenty";s:7:"/themes";s:15:"twentytwentyone";s:7:"/themes";}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=698 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_form','<div class="grid grid-cols-8">\n<div class="col-span-2 pb-4">\n<label class="text-sm text-grey-01 font-light pb-2"> Name*</label>\n</div>\n<div class="col-span-6 pb-4">\n[text* your-name]\n</div>\n<div class="col-span-2 pb-4">\n<label class="text-sm text-grey-01 font-light pb-2"> Phone* </label>\n</div>\n<div class="col-span-6 pb-4">\n[tel* your-phone]\n</div>\n<div class="col-span-2 pb-4">\n<label class="text-sm text-grey-01 font-light pb-2"> Email* </label>\n</div>\n<div class="col-span-6 pb-4">\n[email* your-email]\n</div>\n<div class="col-span-2 pb-4">\n<label class="text-sm text-grey-01 font-light pb-2"> Message* </label>\n</div>\n<div class="col-span-6 pb-4">\n[textarea your-message]\n</div>\n<div class="col-span-8 pb-4 text-grey-01 text-right">\n[submit "Send"]\n</div>\n</div>');
INSERT INTO `wp_postmeta` VALUES (4,5,'_mail','a:9:{s:6:"active";b:1;s:7:"subject";s:30:"[_site_title] "[your-subject]"";s:6:"sender";s:45:"[_site_title] <wordpress@tsqdevelopment.test>";s:9:"recipient";s:19:"[_site_admin_email]";s:4:"body";s:162:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis email was sent from a contact form on [_site_title] ([_site_url])";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}');
INSERT INTO `wp_postmeta` VALUES (5,5,'_mail_2','a:9:{s:6:"active";b:0;s:7:"subject";s:30:"[_site_title] "[your-subject]"";s:6:"sender";s:45:"[_site_title] <wordpress@tsqdevelopment.test>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:104:"Message Body:\n[your-message]\n\n-- \nThis email was sent from a contact form on [_site_title] ([_site_url])";s:18:"additional_headers";s:29:"Reply-To: [_site_admin_email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}');
INSERT INTO `wp_postmeta` VALUES (6,5,'_messages','a:22:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:13:"invalid_email";s:37:"The email address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}');
INSERT INTO `wp_postmeta` VALUES (7,5,'_additional_settings','');
INSERT INTO `wp_postmeta` VALUES (8,5,'_locale','en_NZ');
INSERT INTO `wp_postmeta` VALUES (9,2,'_edit_lock','1610421533:1');
INSERT INTO `wp_postmeta` VALUES (10,6,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (11,6,'_edit_lock','1610421633:1');
INSERT INTO `wp_postmeta` VALUES (12,3,'_edit_lock','1610421408:1');
INSERT INTO `wp_postmeta` VALUES (13,3,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (14,9,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (15,9,'_edit_lock','1610683900:1');
INSERT INTO `wp_postmeta` VALUES (17,17,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (18,17,'_edit_lock','1610684181:1');
INSERT INTO `wp_postmeta` VALUES (19,2,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (27,34,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (28,34,'_edit_lock','1610594495:1');
INSERT INTO `wp_postmeta` VALUES (29,39,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (30,39,'_edit_lock','1610500515:1');
INSERT INTO `wp_postmeta` VALUES (31,41,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (32,41,'_edit_lock','1610498249:1');
INSERT INTO `wp_postmeta` VALUES (33,43,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (34,43,'_edit_lock','1610409330:1');
INSERT INTO `wp_postmeta` VALUES (35,45,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (36,45,'_edit_lock','1610409321:1');
INSERT INTO `wp_postmeta` VALUES (37,48,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (38,48,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (39,48,'_menu_item_object_id','6');
INSERT INTO `wp_postmeta` VALUES (40,48,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (41,48,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (42,48,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES (43,48,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (44,48,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (64,51,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (65,51,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (66,51,'_menu_item_object_id','34');
INSERT INTO `wp_postmeta` VALUES (67,51,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (68,51,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (69,51,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES (70,51,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (71,51,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (73,52,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (74,52,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (75,52,'_menu_item_object_id','39');
INSERT INTO `wp_postmeta` VALUES (76,52,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (77,52,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (78,52,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES (79,52,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (80,52,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (111,58,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (112,58,'_edit_lock','1610446785:1');
INSERT INTO `wp_postmeta` VALUES (113,60,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (114,60,'_edit_lock','1610500100:1');
INSERT INTO `wp_postmeta` VALUES (115,62,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (116,62,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (117,62,'_menu_item_object_id','58');
INSERT INTO `wp_postmeta` VALUES (118,62,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (119,62,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (120,62,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES (121,62,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (122,62,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (124,64,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (125,64,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (126,64,'_menu_item_object_id','60');
INSERT INTO `wp_postmeta` VALUES (127,64,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (128,64,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (129,64,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES (130,64,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (131,64,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (142,1,'_edit_lock','1610441915:1');
INSERT INTO `wp_postmeta` VALUES (143,86,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (144,86,'_edit_lock','1610492207:1');
INSERT INTO `wp_postmeta` VALUES (145,88,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (146,88,'_edit_lock','1610588223:1');
INSERT INTO `wp_postmeta` VALUES (147,93,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (148,93,'_edit_lock','1610490045:1');
INSERT INTO `wp_postmeta` VALUES (149,104,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (150,104,'_edit_lock','1610594279:1');
INSERT INTO `wp_postmeta` VALUES (153,34,'about_title','DESIGNING A BETTER, MORE BEAUTIFUL WORLD.');
INSERT INTO `wp_postmeta` VALUES (154,34,'_about_title','field_5ffd6e2783be5');
INSERT INTO `wp_postmeta` VALUES (155,34,'about_description','vLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod');
INSERT INTO `wp_postmeta` VALUES (156,34,'_about_description','field_5ffd6e4683be6');
INSERT INTO `wp_postmeta` VALUES (157,34,'philosophy_0_philosophy_title','Customer-focused');
INSERT INTO `wp_postmeta` VALUES (158,34,'_philosophy_0_philosophy_title','field_5ffd6ec37714f');
INSERT INTO `wp_postmeta` VALUES (159,34,'philosophy_0_philosophy_description','Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Vivamus suscipit tortor eget felis porttitor volutpat. Curabitur aliquet quam id dui posuere blandit. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Nulla quis lorem ut libero malesuada feugiat.');
INSERT INTO `wp_postmeta` VALUES (160,34,'_philosophy_0_philosophy_description','field_5ffd6ed677150');
INSERT INTO `wp_postmeta` VALUES (161,34,'philosophy_1_philosophy_title','Teamwork');
INSERT INTO `wp_postmeta` VALUES (162,34,'_philosophy_1_philosophy_title','field_5ffd6ec37714f');
INSERT INTO `wp_postmeta` VALUES (163,34,'philosophy_1_philosophy_description','Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Vivamus suscipit tortor eget felis porttitor volutpat. Curabitur aliquet quam id dui posuere blandit. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Nulla quis lorem ut libero malesuada feugiat.');
INSERT INTO `wp_postmeta` VALUES (164,34,'_philosophy_1_philosophy_description','field_5ffd6ed677150');
INSERT INTO `wp_postmeta` VALUES (165,34,'philosophy','3');
INSERT INTO `wp_postmeta` VALUES (166,34,'_philosophy','field_5ffd6e9a7714e');
INSERT INTO `wp_postmeta` VALUES (167,34,'team_0_team_image','205');
INSERT INTO `wp_postmeta` VALUES (168,34,'_team_0_team_image','field_5ffd6f573f7db');
INSERT INTO `wp_postmeta` VALUES (169,34,'team_0_team_name','Tom Wang');
INSERT INTO `wp_postmeta` VALUES (170,34,'_team_0_team_name','field_5ffd6f633f7dc');
INSERT INTO `wp_postmeta` VALUES (171,34,'team_0_team_position','Title/Position here');
INSERT INTO `wp_postmeta` VALUES (172,34,'_team_0_team_position','field_5ffd6f703f7dd');
INSERT INTO `wp_postmeta` VALUES (173,34,'team_1_team_image','205');
INSERT INTO `wp_postmeta` VALUES (174,34,'_team_1_team_image','field_5ffd6f573f7db');
INSERT INTO `wp_postmeta` VALUES (175,34,'team_1_team_name','Vincent Dai');
INSERT INTO `wp_postmeta` VALUES (176,34,'_team_1_team_name','field_5ffd6f633f7dc');
INSERT INTO `wp_postmeta` VALUES (177,34,'team_1_team_position','Title/Position here');
INSERT INTO `wp_postmeta` VALUES (178,34,'_team_1_team_position','field_5ffd6f703f7dd');
INSERT INTO `wp_postmeta` VALUES (179,34,'team','8');
INSERT INTO `wp_postmeta` VALUES (180,34,'_team','field_5ffd6f393f7da');
INSERT INTO `wp_postmeta` VALUES (209,117,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (210,117,'_edit_lock','1610521398:1');
INSERT INTO `wp_postmeta` VALUES (211,60,'office_0_address_line_1','New Zealand Head Office');
INSERT INTO `wp_postmeta` VALUES (212,60,'_office_0_address_line_1','field_5ffd6be7a23dd');
INSERT INTO `wp_postmeta` VALUES (213,60,'office_0_address_line_2','2-4 Goodman Place');
INSERT INTO `wp_postmeta` VALUES (214,60,'_office_0_address_line_2','field_5ffd6c07a23e1');
INSERT INTO `wp_postmeta` VALUES (215,60,'office_0_address_line_3','Penrose');
INSERT INTO `wp_postmeta` VALUES (216,60,'_office_0_address_line_3','field_5ffd6c09a23e2');
INSERT INTO `wp_postmeta` VALUES (217,60,'office_0_address_line_4','Auckland 1061');
INSERT INTO `wp_postmeta` VALUES (218,60,'_office_0_address_line_4','field_5ffd6c0aa23e3');
INSERT INTO `wp_postmeta` VALUES (219,60,'office_0_email','info@tsqarchitecture.co.nz');
INSERT INTO `wp_postmeta` VALUES (220,60,'_office_0_email','field_5ffd6c0ea23e4');
INSERT INTO `wp_postmeta` VALUES (221,60,'office_0_telephone','090000000');
INSERT INTO `wp_postmeta` VALUES (222,60,'_office_0_telephone','field_5ffd6c20a23e5');
INSERT INTO `wp_postmeta` VALUES (223,60,'office_1_address_line_1','China Branch');
INSERT INTO `wp_postmeta` VALUES (224,60,'_office_1_address_line_1','field_5ffd6be7a23dd');
INSERT INTO `wp_postmeta` VALUES (225,60,'office_1_address_line_2','188 Huahuang Rd ');
INSERT INTO `wp_postmeta` VALUES (226,60,'_office_1_address_line_2','field_5ffd6c07a23e1');
INSERT INTO `wp_postmeta` VALUES (227,60,'office_1_address_line_3','Xhangdian District');
INSERT INTO `wp_postmeta` VALUES (228,60,'_office_1_address_line_3','field_5ffd6c09a23e2');
INSERT INTO `wp_postmeta` VALUES (229,60,'office_1_address_line_4','Zibo Shandong');
INSERT INTO `wp_postmeta` VALUES (230,60,'_office_1_address_line_4','field_5ffd6c0aa23e3');
INSERT INTO `wp_postmeta` VALUES (231,60,'office_1_email','info@tsqarchitecture.co.nz');
INSERT INTO `wp_postmeta` VALUES (232,60,'_office_1_email','field_5ffd6c0ea23e4');
INSERT INTO `wp_postmeta` VALUES (233,60,'office_1_telephone','090000000');
INSERT INTO `wp_postmeta` VALUES (234,60,'_office_1_telephone','field_5ffd6c20a23e5');
INSERT INTO `wp_postmeta` VALUES (235,60,'office','2');
INSERT INTO `wp_postmeta` VALUES (236,60,'_office','field_5ffd6bcca23dc');
INSERT INTO `wp_postmeta` VALUES (266,17,'location','Project Landscaping 1 Location');
INSERT INTO `wp_postmeta` VALUES (267,17,'_location','field_5ffcde4b19933');
INSERT INTO `wp_postmeta` VALUES (268,17,'feature_image','176');
INSERT INTO `wp_postmeta` VALUES (269,17,'_feature_image','field_5ffce865abccf');
INSERT INTO `wp_postmeta` VALUES (270,17,'is_featured','1');
INSERT INTO `wp_postmeta` VALUES (271,17,'_is_featured','field_5ffce81ead37e');
INSERT INTO `wp_postmeta` VALUES (272,17,'description_short','Project Landscaping 1 Short Description');
INSERT INTO `wp_postmeta` VALUES (273,17,'_description_short','field_5ffcde2f19932');
INSERT INTO `wp_postmeta` VALUES (274,17,'description_long','Project Landscaping 1 Long Description');
INSERT INTO `wp_postmeta` VALUES (275,17,'_description_long','field_5ffcde6219934');
INSERT INTO `wp_postmeta` VALUES (276,17,'year','2021');
INSERT INTO `wp_postmeta` VALUES (277,17,'_year','field_5ffcdf41b1f42');
INSERT INTO `wp_postmeta` VALUES (278,17,'status','in_development');
INSERT INTO `wp_postmeta` VALUES (279,17,'_status','field_5ffcdf9db1f43');
INSERT INTO `wp_postmeta` VALUES (280,17,'client','Project Landscaping 1 Client');
INSERT INTO `wp_postmeta` VALUES (281,17,'_client','field_5ffce08a6a5b3');
INSERT INTO `wp_postmeta` VALUES (282,17,'design_team','Project Landscaping 1 Design Team');
INSERT INTO `wp_postmeta` VALUES (283,17,'_design_team','field_5ffce0936a5b4');
INSERT INTO `wp_postmeta` VALUES (284,17,'gallery','a:1:{i:0;s:3:"195";}');
INSERT INTO `wp_postmeta` VALUES (285,17,'_gallery','field_5ffce0a16a5b5');
INSERT INTO `wp_postmeta` VALUES (286,123,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (287,123,'_edit_lock','1610514435:1');
INSERT INTO `wp_postmeta` VALUES (290,123,'location','Project Landscaping 2 Location');
INSERT INTO `wp_postmeta` VALUES (291,123,'_location','field_5ffcde4b19933');
INSERT INTO `wp_postmeta` VALUES (292,123,'feature_image','195');
INSERT INTO `wp_postmeta` VALUES (293,123,'_feature_image','field_5ffce865abccf');
INSERT INTO `wp_postmeta` VALUES (294,123,'is_featured','1');
INSERT INTO `wp_postmeta` VALUES (295,123,'_is_featured','field_5ffce81ead37e');
INSERT INTO `wp_postmeta` VALUES (296,123,'description_short','Project Landscaping 2 Short Description');
INSERT INTO `wp_postmeta` VALUES (297,123,'_description_short','field_5ffcde2f19932');
INSERT INTO `wp_postmeta` VALUES (298,123,'description_long','Project Landscaping 2 Long Description');
INSERT INTO `wp_postmeta` VALUES (299,123,'_description_long','field_5ffcde6219934');
INSERT INTO `wp_postmeta` VALUES (300,123,'year','2021');
INSERT INTO `wp_postmeta` VALUES (301,123,'_year','field_5ffcdf41b1f42');
INSERT INTO `wp_postmeta` VALUES (302,123,'status','completed');
INSERT INTO `wp_postmeta` VALUES (303,123,'_status','field_5ffcdf9db1f43');
INSERT INTO `wp_postmeta` VALUES (304,123,'client','Project Landscaping 2 Client');
INSERT INTO `wp_postmeta` VALUES (305,123,'_client','field_5ffce08a6a5b3');
INSERT INTO `wp_postmeta` VALUES (306,123,'design_team','Project Landscaping 2 Design Team');
INSERT INTO `wp_postmeta` VALUES (307,123,'_design_team','field_5ffce0936a5b4');
INSERT INTO `wp_postmeta` VALUES (308,123,'gallery','a:2:{i:0;s:3:"195";i:1;s:3:"184";}');
INSERT INTO `wp_postmeta` VALUES (309,123,'_gallery','field_5ffce0a16a5b5');
INSERT INTO `wp_postmeta` VALUES (310,125,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (311,125,'_edit_lock','1610514388:1');
INSERT INTO `wp_postmeta` VALUES (312,125,'location','Project Residential 1 Location');
INSERT INTO `wp_postmeta` VALUES (313,125,'_location','field_5ffcde4b19933');
INSERT INTO `wp_postmeta` VALUES (314,125,'feature_image','176');
INSERT INTO `wp_postmeta` VALUES (315,125,'_feature_image','field_5ffce865abccf');
INSERT INTO `wp_postmeta` VALUES (316,125,'is_featured','1');
INSERT INTO `wp_postmeta` VALUES (317,125,'_is_featured','field_5ffce81ead37e');
INSERT INTO `wp_postmeta` VALUES (318,125,'description_short','Project Residential 1 Short Description');
INSERT INTO `wp_postmeta` VALUES (319,125,'_description_short','field_5ffcde2f19932');
INSERT INTO `wp_postmeta` VALUES (320,125,'description_long','Project Residential 1 Long Description');
INSERT INTO `wp_postmeta` VALUES (321,125,'_description_long','field_5ffcde6219934');
INSERT INTO `wp_postmeta` VALUES (322,125,'year','2021');
INSERT INTO `wp_postmeta` VALUES (323,125,'_year','field_5ffcdf41b1f42');
INSERT INTO `wp_postmeta` VALUES (324,125,'status','in_development');
INSERT INTO `wp_postmeta` VALUES (325,125,'_status','field_5ffcdf9db1f43');
INSERT INTO `wp_postmeta` VALUES (326,125,'client','Project Residential 1 Client');
INSERT INTO `wp_postmeta` VALUES (327,125,'_client','field_5ffce08a6a5b3');
INSERT INTO `wp_postmeta` VALUES (328,125,'design_team','Project Residential 1 Design Team');
INSERT INTO `wp_postmeta` VALUES (329,125,'_design_team','field_5ffce0936a5b4');
INSERT INTO `wp_postmeta` VALUES (330,125,'gallery','a:2:{i:0;s:3:"176";i:1;s:3:"185";}');
INSERT INTO `wp_postmeta` VALUES (331,125,'_gallery','field_5ffce0a16a5b5');
INSERT INTO `wp_postmeta` VALUES (332,126,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (333,126,'_edit_lock','1610514440:1');
INSERT INTO `wp_postmeta` VALUES (334,126,'location','Project Residential 2 Location');
INSERT INTO `wp_postmeta` VALUES (335,126,'_location','field_5ffcde4b19933');
INSERT INTO `wp_postmeta` VALUES (336,126,'feature_image','195');
INSERT INTO `wp_postmeta` VALUES (337,126,'_feature_image','field_5ffce865abccf');
INSERT INTO `wp_postmeta` VALUES (338,126,'is_featured','1');
INSERT INTO `wp_postmeta` VALUES (339,126,'_is_featured','field_5ffce81ead37e');
INSERT INTO `wp_postmeta` VALUES (340,126,'description_short','Project Residential 2 Short Description');
INSERT INTO `wp_postmeta` VALUES (341,126,'_description_short','field_5ffcde2f19932');
INSERT INTO `wp_postmeta` VALUES (342,126,'description_long','Project Residential 2 Long Description');
INSERT INTO `wp_postmeta` VALUES (343,126,'_description_long','field_5ffcde6219934');
INSERT INTO `wp_postmeta` VALUES (344,126,'year','2021');
INSERT INTO `wp_postmeta` VALUES (345,126,'_year','field_5ffcdf41b1f42');
INSERT INTO `wp_postmeta` VALUES (346,126,'status','completed');
INSERT INTO `wp_postmeta` VALUES (347,126,'_status','field_5ffcdf9db1f43');
INSERT INTO `wp_postmeta` VALUES (348,126,'client','Project Residential 2 Client');
INSERT INTO `wp_postmeta` VALUES (349,126,'_client','field_5ffce08a6a5b3');
INSERT INTO `wp_postmeta` VALUES (350,126,'design_team','Project Residential 2 Design Team');
INSERT INTO `wp_postmeta` VALUES (351,126,'_design_team','field_5ffce0936a5b4');
INSERT INTO `wp_postmeta` VALUES (352,126,'gallery','a:2:{i:0;s:3:"195";i:1;s:3:"184";}');
INSERT INTO `wp_postmeta` VALUES (353,126,'_gallery','field_5ffce0a16a5b5');
INSERT INTO `wp_postmeta` VALUES (354,127,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (355,127,'_edit_lock','1610500568:1');
INSERT INTO `wp_postmeta` VALUES (356,127,'location','Project Subdivision 1 Location');
INSERT INTO `wp_postmeta` VALUES (357,127,'_location','field_5ffcde4b19933');
INSERT INTO `wp_postmeta` VALUES (358,127,'feature_image','176');
INSERT INTO `wp_postmeta` VALUES (359,127,'_feature_image','field_5ffce865abccf');
INSERT INTO `wp_postmeta` VALUES (360,127,'is_featured','1');
INSERT INTO `wp_postmeta` VALUES (361,127,'_is_featured','field_5ffce81ead37e');
INSERT INTO `wp_postmeta` VALUES (362,127,'description_short','Project Subdivision 1 Short Description');
INSERT INTO `wp_postmeta` VALUES (363,127,'_description_short','field_5ffcde2f19932');
INSERT INTO `wp_postmeta` VALUES (364,127,'description_long','Project Subdivision 1 Long Description');
INSERT INTO `wp_postmeta` VALUES (365,127,'_description_long','field_5ffcde6219934');
INSERT INTO `wp_postmeta` VALUES (366,127,'year','2021');
INSERT INTO `wp_postmeta` VALUES (367,127,'_year','field_5ffcdf41b1f42');
INSERT INTO `wp_postmeta` VALUES (368,127,'status','in_development');
INSERT INTO `wp_postmeta` VALUES (369,127,'_status','field_5ffcdf9db1f43');
INSERT INTO `wp_postmeta` VALUES (370,127,'client','Project Subdivision 1 Client');
INSERT INTO `wp_postmeta` VALUES (371,127,'_client','field_5ffce08a6a5b3');
INSERT INTO `wp_postmeta` VALUES (372,127,'design_team','Project Subdivision 1 Design Team');
INSERT INTO `wp_postmeta` VALUES (373,127,'_design_team','field_5ffce0936a5b4');
INSERT INTO `wp_postmeta` VALUES (374,127,'gallery','a:2:{i:0;s:3:"176";i:1;s:3:"185";}');
INSERT INTO `wp_postmeta` VALUES (375,127,'_gallery','field_5ffce0a16a5b5');
INSERT INTO `wp_postmeta` VALUES (376,128,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (377,128,'_edit_lock','1610514479:1');
INSERT INTO `wp_postmeta` VALUES (378,128,'location','Project Subdivision 2 Location');
INSERT INTO `wp_postmeta` VALUES (379,128,'_location','field_5ffcde4b19933');
INSERT INTO `wp_postmeta` VALUES (380,128,'feature_image','195');
INSERT INTO `wp_postmeta` VALUES (381,128,'_feature_image','field_5ffce865abccf');
INSERT INTO `wp_postmeta` VALUES (382,128,'is_featured','1');
INSERT INTO `wp_postmeta` VALUES (383,128,'_is_featured','field_5ffce81ead37e');
INSERT INTO `wp_postmeta` VALUES (384,128,'description_short','Project Subdivision 2 Short Description');
INSERT INTO `wp_postmeta` VALUES (385,128,'_description_short','field_5ffcde2f19932');
INSERT INTO `wp_postmeta` VALUES (386,128,'description_long','Project Subdivision 2 Long Description');
INSERT INTO `wp_postmeta` VALUES (387,128,'_description_long','field_5ffcde6219934');
INSERT INTO `wp_postmeta` VALUES (388,128,'year','2021');
INSERT INTO `wp_postmeta` VALUES (389,128,'_year','field_5ffcdf41b1f42');
INSERT INTO `wp_postmeta` VALUES (390,128,'status','completed');
INSERT INTO `wp_postmeta` VALUES (391,128,'_status','field_5ffcdf9db1f43');
INSERT INTO `wp_postmeta` VALUES (392,128,'client','Project Subdivision 2 Client');
INSERT INTO `wp_postmeta` VALUES (393,128,'_client','field_5ffce08a6a5b3');
INSERT INTO `wp_postmeta` VALUES (394,128,'design_team','Project Subdivision 2 Design Team');
INSERT INTO `wp_postmeta` VALUES (395,128,'_design_team','field_5ffce0936a5b4');
INSERT INTO `wp_postmeta` VALUES (396,128,'gallery','a:2:{i:0;s:3:"195";i:1;s:3:"184";}');
INSERT INTO `wp_postmeta` VALUES (397,128,'_gallery','field_5ffce0a16a5b5');
INSERT INTO `wp_postmeta` VALUES (398,34,'philosophy_2_philosophy_title','Pursing Quality');
INSERT INTO `wp_postmeta` VALUES (399,34,'_philosophy_2_philosophy_title','field_5ffd6ec37714f');
INSERT INTO `wp_postmeta` VALUES (400,34,'philosophy_2_philosophy_description','Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Vivamus suscipit tortor eget felis porttitor volutpat. Curabitur aliquet quam id dui posuere blandit. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Nulla quis lorem ut libero malesuada feugiat.');
INSERT INTO `wp_postmeta` VALUES (401,34,'_philosophy_2_philosophy_description','field_5ffd6ed677150');
INSERT INTO `wp_postmeta` VALUES (402,34,'team_2_team_image','205');
INSERT INTO `wp_postmeta` VALUES (403,34,'_team_2_team_image','field_5ffd6f573f7db');
INSERT INTO `wp_postmeta` VALUES (404,34,'team_2_team_name','James Xu');
INSERT INTO `wp_postmeta` VALUES (405,34,'_team_2_team_name','field_5ffd6f633f7dc');
INSERT INTO `wp_postmeta` VALUES (406,34,'team_2_team_position','Title/Position here');
INSERT INTO `wp_postmeta` VALUES (407,34,'_team_2_team_position','field_5ffd6f703f7dd');
INSERT INTO `wp_postmeta` VALUES (408,34,'team_3_team_image','205');
INSERT INTO `wp_postmeta` VALUES (409,34,'_team_3_team_image','field_5ffd6f573f7db');
INSERT INTO `wp_postmeta` VALUES (410,34,'team_3_team_name','Eric Li');
INSERT INTO `wp_postmeta` VALUES (411,34,'_team_3_team_name','field_5ffd6f633f7dc');
INSERT INTO `wp_postmeta` VALUES (412,34,'team_3_team_position','Title/Position here');
INSERT INTO `wp_postmeta` VALUES (413,34,'_team_3_team_position','field_5ffd6f703f7dd');
INSERT INTO `wp_postmeta` VALUES (414,34,'team_4_team_image','205');
INSERT INTO `wp_postmeta` VALUES (415,34,'_team_4_team_image','field_5ffd6f573f7db');
INSERT INTO `wp_postmeta` VALUES (416,34,'team_4_team_name','Helen Zhang');
INSERT INTO `wp_postmeta` VALUES (417,34,'_team_4_team_name','field_5ffd6f633f7dc');
INSERT INTO `wp_postmeta` VALUES (418,34,'team_4_team_position','Title/Position here');
INSERT INTO `wp_postmeta` VALUES (419,34,'_team_4_team_position','field_5ffd6f703f7dd');
INSERT INTO `wp_postmeta` VALUES (420,34,'team_5_team_image','205');
INSERT INTO `wp_postmeta` VALUES (421,34,'_team_5_team_image','field_5ffd6f573f7db');
INSERT INTO `wp_postmeta` VALUES (422,34,'team_5_team_name','Lisa Zheng');
INSERT INTO `wp_postmeta` VALUES (423,34,'_team_5_team_name','field_5ffd6f633f7dc');
INSERT INTO `wp_postmeta` VALUES (424,34,'team_5_team_position','Title/Position here');
INSERT INTO `wp_postmeta` VALUES (425,34,'_team_5_team_position','field_5ffd6f703f7dd');
INSERT INTO `wp_postmeta` VALUES (426,34,'team_6_team_image','205');
INSERT INTO `wp_postmeta` VALUES (427,34,'_team_6_team_image','field_5ffd6f573f7db');
INSERT INTO `wp_postmeta` VALUES (428,34,'team_6_team_name','Jessi Sun');
INSERT INTO `wp_postmeta` VALUES (429,34,'_team_6_team_name','field_5ffd6f633f7dc');
INSERT INTO `wp_postmeta` VALUES (430,34,'team_6_team_position','Title/Position here');
INSERT INTO `wp_postmeta` VALUES (431,34,'_team_6_team_position','field_5ffd6f703f7dd');
INSERT INTO `wp_postmeta` VALUES (432,34,'team_7_team_image','205');
INSERT INTO `wp_postmeta` VALUES (433,34,'_team_7_team_image','field_5ffd6f573f7db');
INSERT INTO `wp_postmeta` VALUES (434,34,'team_7_team_name','Vicky Xia');
INSERT INTO `wp_postmeta` VALUES (435,34,'_team_7_team_name','field_5ffd6f633f7dc');
INSERT INTO `wp_postmeta` VALUES (436,34,'team_7_team_position','Title/Position here');
INSERT INTO `wp_postmeta` VALUES (437,34,'_team_7_team_position','field_5ffd6f703f7dd');
INSERT INTO `wp_postmeta` VALUES (515,17,'service','a:1:{i:0;s:1:"4";}');
INSERT INTO `wp_postmeta` VALUES (516,17,'_service','field_5ffe1beacc82a');
INSERT INTO `wp_postmeta` VALUES (578,172,'_wp_attached_file','2021/01/0pdDzj.png');
INSERT INTO `wp_postmeta` VALUES (579,172,'_wp_attachment_metadata','a:5:{s:5:"width";i:664;s:6:"height";i:470;s:4:"file";s:18:"2021/01/0pdDzj.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:18:"0pdDzj-300x212.png";s:5:"width";i:300;s:6:"height";i:212;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:18:"0pdDzj-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (580,173,'_wp_attached_file','2021/01/b091y6.png');
INSERT INTO `wp_postmeta` VALUES (581,173,'_wp_attachment_metadata','a:5:{s:5:"width";i:580;s:6:"height";i:406;s:4:"file";s:18:"2021/01/b091y6.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:18:"b091y6-300x210.png";s:5:"width";i:300;s:6:"height";i:210;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:18:"b091y6-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (582,174,'_wp_attached_file','2021/01/ehqCcw.png');
INSERT INTO `wp_postmeta` VALUES (583,174,'_wp_attachment_metadata','a:5:{s:5:"width";i:665;s:6:"height";i:470;s:4:"file";s:18:"2021/01/ehqCcw.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:18:"ehqCcw-300x212.png";s:5:"width";i:300;s:6:"height";i:212;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:18:"ehqCcw-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (584,175,'_wp_attached_file','2021/01/Group-6.png');
INSERT INTO `wp_postmeta` VALUES (585,175,'_wp_attachment_metadata','a:5:{s:5:"width";i:80;s:6:"height";i:78;s:4:"file";s:19:"2021/01/Group-6.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (586,176,'_wp_attached_file','2021/01/Group-8.png');
INSERT INTO `wp_postmeta` VALUES (587,176,'_wp_attachment_metadata','a:5:{s:5:"width";i:1377;s:6:"height";i:758;s:4:"file";s:19:"2021/01/Group-8.png";s:5:"sizes";a:4:{s:6:"medium";a:4:{s:4:"file";s:19:"Group-8-300x165.png";s:5:"width";i:300;s:6:"height";i:165;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:20:"Group-8-1024x564.png";s:5:"width";i:1024;s:6:"height";i:564;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:19:"Group-8-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:19:"Group-8-768x423.png";s:5:"width";i:768;s:6:"height";i:423;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (588,177,'_wp_attached_file','2021/01/Group-11.png');
INSERT INTO `wp_postmeta` VALUES (589,177,'_wp_attachment_metadata','a:5:{s:5:"width";i:190;s:6:"height";i:29;s:4:"file";s:20:"2021/01/Group-11.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"Group-11-150x29.png";s:5:"width";i:150;s:6:"height";i:29;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (590,178,'_wp_attached_file','2021/01/Group-70.png');
INSERT INTO `wp_postmeta` VALUES (591,178,'_wp_attachment_metadata','a:5:{s:5:"width";i:916;s:6:"height";i:462;s:4:"file";s:20:"2021/01/Group-70.png";s:5:"sizes";a:3:{s:6:"medium";a:4:{s:4:"file";s:20:"Group-70-300x151.png";s:5:"width";i:300;s:6:"height";i:151;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:20:"Group-70-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:20:"Group-70-768x387.png";s:5:"width";i:768;s:6:"height";i:387;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (592,179,'_wp_attached_file','2021/01/Group-88.png');
INSERT INTO `wp_postmeta` VALUES (593,179,'_wp_attachment_metadata','a:5:{s:5:"width";i:747;s:6:"height";i:683;s:4:"file";s:20:"2021/01/Group-88.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:20:"Group-88-300x274.png";s:5:"width";i:300;s:6:"height";i:274;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:20:"Group-88-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (594,180,'_wp_attached_file','2021/01/Group-97.png');
INSERT INTO `wp_postmeta` VALUES (595,180,'_wp_attachment_metadata','a:5:{s:5:"width";i:384;s:6:"height";i:521;s:4:"file";s:20:"2021/01/Group-97.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:20:"Group-97-221x300.png";s:5:"width";i:221;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:20:"Group-97-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (596,181,'_wp_attached_file','2021/01/Group-101.png');
INSERT INTO `wp_postmeta` VALUES (597,181,'_wp_attachment_metadata','a:5:{s:5:"width";i:384;s:6:"height";i:521;s:4:"file";s:21:"2021/01/Group-101.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:21:"Group-101-221x300.png";s:5:"width";i:221;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:21:"Group-101-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (598,182,'_wp_attached_file','2021/01/Group-103.png');
INSERT INTO `wp_postmeta` VALUES (599,182,'_wp_attachment_metadata','a:5:{s:5:"width";i:384;s:6:"height";i:521;s:4:"file";s:21:"2021/01/Group-103.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:21:"Group-103-221x300.png";s:5:"width";i:221;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:21:"Group-103-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (600,183,'_wp_attached_file','2021/01/Group-105.png');
INSERT INTO `wp_postmeta` VALUES (601,183,'_wp_attachment_metadata','a:5:{s:5:"width";i:663;s:6:"height";i:371;s:4:"file";s:21:"2021/01/Group-105.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:21:"Group-105-300x168.png";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:21:"Group-105-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (602,184,'_wp_attached_file','2021/01/Group-111.png');
INSERT INTO `wp_postmeta` VALUES (603,184,'_wp_attachment_metadata','a:5:{s:5:"width";i:663;s:6:"height";i:371;s:4:"file";s:21:"2021/01/Group-111.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:21:"Group-111-300x168.png";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:21:"Group-111-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (604,185,'_wp_attached_file','2021/01/Group-113.png');
INSERT INTO `wp_postmeta` VALUES (605,185,'_wp_attachment_metadata','a:5:{s:5:"width";i:668;s:6:"height";i:368;s:4:"file";s:21:"2021/01/Group-113.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:21:"Group-113-300x165.png";s:5:"width";i:300;s:6:"height";i:165;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:21:"Group-113-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (606,186,'_wp_attached_file','2021/01/Group-115.png');
INSERT INTO `wp_postmeta` VALUES (607,186,'_wp_attachment_metadata','a:5:{s:5:"width";i:663;s:6:"height";i:371;s:4:"file";s:21:"2021/01/Group-115.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:21:"Group-115-300x168.png";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:21:"Group-115-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (608,187,'_wp_attached_file','2021/01/Group-125.png');
INSERT INTO `wp_postmeta` VALUES (609,187,'_wp_attachment_metadata','a:5:{s:5:"width";i:663;s:6:"height";i:371;s:4:"file";s:21:"2021/01/Group-125.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:21:"Group-125-300x168.png";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:21:"Group-125-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (610,188,'_wp_attached_file','2021/01/Group-127.png');
INSERT INTO `wp_postmeta` VALUES (611,188,'_wp_attachment_metadata','a:5:{s:5:"width";i:660;s:6:"height";i:371;s:4:"file";s:21:"2021/01/Group-127.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:21:"Group-127-300x169.png";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:21:"Group-127-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (612,189,'_wp_attached_file','2021/01/Group-129.png');
INSERT INTO `wp_postmeta` VALUES (613,189,'_wp_attachment_metadata','a:5:{s:5:"width";i:668;s:6:"height";i:368;s:4:"file";s:21:"2021/01/Group-129.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:21:"Group-129-300x165.png";s:5:"width";i:300;s:6:"height";i:165;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:21:"Group-129-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (614,190,'_wp_attached_file','2021/01/Group-131.png');
INSERT INTO `wp_postmeta` VALUES (615,190,'_wp_attachment_metadata','a:5:{s:5:"width";i:669;s:6:"height";i:368;s:4:"file";s:21:"2021/01/Group-131.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:21:"Group-131-300x165.png";s:5:"width";i:300;s:6:"height";i:165;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:21:"Group-131-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (616,191,'_wp_attached_file','2021/01/Group-133.png');
INSERT INTO `wp_postmeta` VALUES (617,191,'_wp_attachment_metadata','a:5:{s:5:"width";i:663;s:6:"height";i:371;s:4:"file";s:21:"2021/01/Group-133.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:21:"Group-133-300x168.png";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:21:"Group-133-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (618,192,'_wp_attached_file','2021/01/jJcs8T.png');
INSERT INTO `wp_postmeta` VALUES (619,192,'_wp_attachment_metadata','a:5:{s:5:"width";i:667;s:6:"height";i:367;s:4:"file";s:18:"2021/01/jJcs8T.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:18:"jJcs8T-300x165.png";s:5:"width";i:300;s:6:"height";i:165;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:18:"jJcs8T-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (620,193,'_wp_attached_file','2021/01/kJUekt.png');
INSERT INTO `wp_postmeta` VALUES (621,193,'_wp_attachment_metadata','a:5:{s:5:"width";i:663;s:6:"height";i:373;s:4:"file";s:18:"2021/01/kJUekt.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:18:"kJUekt-300x169.png";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:18:"kJUekt-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (622,194,'_wp_attached_file','2021/01/Layer-1.png');
INSERT INTO `wp_postmeta` VALUES (623,194,'_wp_attachment_metadata','a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:19:"2021/01/Layer-1.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:19:"Layer-1-300x169.png";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:20:"Layer-1-1024x576.png";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:19:"Layer-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:19:"Layer-1-768x432.png";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:20:"Layer-1-1536x864.png";s:5:"width";i:1536;s:6:"height";i:864;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (624,195,'_wp_attached_file','2021/01/LmBu4L.png');
INSERT INTO `wp_postmeta` VALUES (625,195,'_wp_attachment_metadata','a:5:{s:5:"width";i:1379;s:6:"height";i:701;s:4:"file";s:18:"2021/01/LmBu4L.png";s:5:"sizes";a:4:{s:6:"medium";a:4:{s:4:"file";s:18:"LmBu4L-300x153.png";s:5:"width";i:300;s:6:"height";i:153;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:19:"LmBu4L-1024x521.png";s:5:"width";i:1024;s:6:"height";i:521;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:18:"LmBu4L-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:18:"LmBu4L-768x390.png";s:5:"width";i:768;s:6:"height";i:390;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (626,196,'_wp_attached_file','2021/01/qO5Zo7.png');
INSERT INTO `wp_postmeta` VALUES (627,196,'_wp_attachment_metadata','a:5:{s:5:"width";i:663;s:6:"height";i:441;s:4:"file";s:18:"2021/01/qO5Zo7.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:18:"qO5Zo7-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:18:"qO5Zo7-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (630,198,'_wp_attached_file','2021/01/Rectangle-65.png');
INSERT INTO `wp_postmeta` VALUES (631,198,'_wp_attachment_metadata','a:5:{s:5:"width";i:679;s:6:"height";i:403;s:4:"file";s:24:"2021/01/Rectangle-65.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:24:"Rectangle-65-300x178.png";s:5:"width";i:300;s:6:"height";i:178;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:24:"Rectangle-65-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (632,199,'_wp_attached_file','2021/01/VeR19G.png');
INSERT INTO `wp_postmeta` VALUES (633,199,'_wp_attachment_metadata','a:5:{s:5:"width";i:527;s:6:"height";i:372;s:4:"file";s:18:"2021/01/VeR19G.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:18:"VeR19G-300x212.png";s:5:"width";i:300;s:6:"height";i:212;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:18:"VeR19G-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (634,200,'_wp_attached_file','2021/01/xCjG29.png');
INSERT INTO `wp_postmeta` VALUES (635,200,'_wp_attachment_metadata','a:5:{s:5:"width";i:666;s:6:"height";i:398;s:4:"file";s:18:"2021/01/xCjG29.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:18:"xCjG29-300x179.png";s:5:"width";i:300;s:6:"height";i:179;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:18:"xCjG29-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (636,201,'_wp_attached_file','2021/01/zWujjD.png');
INSERT INTO `wp_postmeta` VALUES (637,201,'_wp_attachment_metadata','a:5:{s:5:"width";i:621;s:6:"height";i:372;s:4:"file";s:18:"2021/01/zWujjD.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:18:"zWujjD-300x180.png";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:18:"zWujjD-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (638,202,'_wp_attached_file','2021/01/Group-3.png');
INSERT INTO `wp_postmeta` VALUES (639,202,'_wp_attachment_metadata','a:5:{s:5:"width";i:881;s:6:"height";i:677;s:4:"file";s:19:"2021/01/Group-3.png";s:5:"sizes";a:3:{s:6:"medium";a:4:{s:4:"file";s:19:"Group-3-300x231.png";s:5:"width";i:300;s:6:"height";i:231;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:19:"Group-3-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:19:"Group-3-768x590.png";s:5:"width";i:768;s:6:"height";i:590;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (640,60,'_thumbnail_id','178');
INSERT INTO `wp_postmeta` VALUES (667,34,'_thumbnail_id','179');
INSERT INTO `wp_postmeta` VALUES (695,205,'_wp_attached_file','2021/01/570x370.png');
INSERT INTO `wp_postmeta` VALUES (696,205,'_wp_attachment_metadata','a:5:{s:5:"width";i:570;s:6:"height";i:370;s:4:"file";s:19:"2021/01/570x370.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:19:"570x370-300x195.png";s:5:"width";i:300;s:6:"height";i:195;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:19:"570x370-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (697,5,'_config_errors','a:1:{s:11:"mail.sender";a:1:{i:0;a:2:{s:4:"code";i:103;s:4:"args";a:3:{s:7:"message";s:0:"";s:6:"params";a:0:{}s:4:"link";s:70:"https://contactform7.com/configuration-errors/email-not-in-site-domain";}}}}');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '1999-01-01 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '1999-01-01 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '1999-01-01 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '1999-01-01 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2021-01-11 22:15:54','2021-01-11 22:15:54','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2021-01-11 22:15:54','2021-01-11 22:15:54','',0,'http://tsqdevelopment.test/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2021-01-11 22:15:54','2021-01-11 22:15:54','','Posts','','publish','closed','closed','','posts','','','2021-01-12 03:18:53','2021-01-12 03:18:53','',0,'http://tsqdevelopment.test/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2021-01-11 22:15:54','2021-01-11 22:15:54','<!-- wp:heading -->\r\n<h2>Who we are</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Our website address is: http://tsqdevelopment.test.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>What personal data we collect and why we collect it</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {"level":3} -->\r\n<h3>Comments</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>An anonymised string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading {"level":3} -->\r\n<h3>Media</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading {"level":3} -->\r\n<h3>Contact forms</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {"level":3} -->\r\n<h3>Cookies</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select "Remember Me", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading {"level":3} -->\r\n<h3>Embedded content from other websites</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading {"level":3} -->\r\n<h3>Analytics</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Who we share your data with</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>If you request a password reset, your IP address will be included in the reset email.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>How long we retain your data</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognise and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>What rights you have over your data</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Where we send your data</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Visitor comments may be checked through an automated spam detection service.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Your contact information</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Additional information</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {"level":3} -->\r\n<h3>How we protect your data</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {"level":3} -->\r\n<h3>What data breach procedures we have in place</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {"level":3} -->\r\n<h3>What third parties we receive data from</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {"level":3} -->\r\n<h3>What automated decision making and/or profiling we do with user data</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {"level":3} -->\r\n<h3>Industry regulatory disclosure requirements</h3>\r\n<!-- /wp:heading -->','Privacy Policy','','publish','closed','open','','privacy-policy','','','2021-01-12 03:19:10','2021-01-12 03:19:10','',0,'http://tsqdevelopment.test/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2021-01-11 23:02:14','2021-01-11 23:02:14','<div class="grid grid-cols-8">\r\n<div class="col-span-2 pb-4">\r\n<label class="text-sm text-grey-01 font-light pb-2"> Name*</label>\r\n</div>\r\n<div class="col-span-6 pb-4">\r\n[text* your-name]\r\n</div>\r\n<div class="col-span-2 pb-4">\r\n<label class="text-sm text-grey-01 font-light pb-2"> Phone* </label>\r\n</div>\r\n<div class="col-span-6 pb-4">\r\n[tel* your-phone]\r\n</div>\r\n<div class="col-span-2 pb-4">\r\n<label class="text-sm text-grey-01 font-light pb-2"> Email* </label>\r\n</div>\r\n<div class="col-span-6 pb-4">\r\n[email* your-email]\r\n</div>\r\n<div class="col-span-2 pb-4">\r\n<label class="text-sm text-grey-01 font-light pb-2"> Message* </label>\r\n</div>\r\n<div class="col-span-6 pb-4">\r\n[textarea your-message]\r\n</div>\r\n<div class="col-span-8 pb-4 text-grey-01 text-right">\r\n[submit "Send"]\r\n</div>\r\n</div>\n1\n[_site_title] "[your-subject]"\n[_site_title] <wordpress@tsqdevelopment.test>\n[_site_admin_email]\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis email was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] "[your-subject]"\n[_site_title] <wordpress@tsqdevelopment.test>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis email was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe email address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.','Contact form 1','','publish','closed','closed','','contact-form-1','','','2021-01-14 22:45:46','2021-01-14 22:45:46','',0,'http://tsqdevelopment.test/?post_type=wpcf7_contact_form&#038;p=5',0,'wpcf7_contact_form','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2021-01-11 23:05:34','2021-01-11 23:05:34','','Home','','publish','closed','closed','','home-page','','','2021-01-11 23:55:57','2021-01-11 23:55:57','',0,'http://tsqdevelopment.test/?page_id=6',0,'page','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2021-01-11 23:09:08','2021-01-11 23:09:08','a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:7:"project";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:1:{i:0;s:14:"featured_image";}s:11:"description";s:0:"";}','Project Details','project-details','publish','closed','closed','','group_5ffcda7720444','','','2021-01-13 01:17:30','2021-01-13 01:17:30','',0,'http://tsqdevelopment.test/?post_type=acf-field-group&#038;p=9',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2021-01-11 23:20:13','2021-01-11 23:20:13','','Project Landscaping 1','','publish','closed','closed','','project-landscaping-1','','','2021-01-15 04:16:31','2021-01-15 04:16:31','',0,'http://tsqdevelopment.test/?post_type=project&#038;p=17',0,'project','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2021-01-11 23:25:53','2021-01-11 23:25:53','a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}','Short Description','description_short','publish','closed','closed','','field_5ffcde2f19932','','','2021-01-12 00:09:52','2021-01-12 00:09:52','',9,'http://tsqdevelopment.test/?post_type=acf-field&#038;p=21',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2021-01-11 23:25:53','2021-01-11 23:25:53','a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}','Location','location','publish','closed','closed','','field_5ffcde4b19933','','','2021-01-11 23:27:45','2021-01-11 23:27:45','',9,'http://tsqdevelopment.test/?post_type=acf-field&#038;p=22',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2021-01-11 23:25:53','2021-01-11 23:25:53','a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";i:8;s:9:"new_lines";s:2:"br";}','Long Description','description_long','publish','closed','closed','','field_5ffcde6219934','','','2021-01-12 09:31:00','2021-01-12 09:31:00','',9,'http://tsqdevelopment.test/?post_type=acf-field&#038;p=23',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2021-01-11 23:31:49','2021-01-11 23:31:49','a:13:{s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"choices";a:3:{i:2021;s:4:"2021";i:2020;s:4:"2020";i:2010;s:4:"2010";}s:13:"default_value";b:0;s:10:"allow_null";i:0;s:8:"multiple";i:0;s:2:"ui";i:0;s:13:"return_format";s:5:"value";s:4:"ajax";i:0;s:11:"placeholder";s:0:"";}','Year','year','publish','closed','closed','','field_5ffcdf41b1f42','','','2021-01-12 00:09:52','2021-01-12 00:09:52','',9,'http://tsqdevelopment.test/?post_type=acf-field&#038;p=24',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2021-01-11 23:31:49','2021-01-11 23:31:49','a:13:{s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"choices";a:2:{s:14:"in_development";s:14:"In Development";s:9:"completed";s:9:"Completed";}s:13:"default_value";b:0;s:10:"allow_null";i:0;s:8:"multiple";i:0;s:2:"ui";i:0;s:13:"return_format";s:5:"value";s:4:"ajax";i:0;s:11:"placeholder";s:0:"";}','Status','status','publish','closed','closed','','field_5ffcdf9db1f43','','','2021-01-12 00:09:52','2021-01-12 00:09:52','',9,'http://tsqdevelopment.test/?post_type=acf-field&#038;p=25',6,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2021-01-11 23:35:45','2021-01-11 23:35:45','a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}','Client','client','publish','closed','closed','','field_5ffce08a6a5b3','','','2021-01-12 00:09:52','2021-01-12 00:09:52','',9,'http://tsqdevelopment.test/?post_type=acf-field&#038;p=27',7,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2021-01-11 23:35:45','2021-01-11 23:35:45','a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}','Design Team','design_team','publish','closed','closed','','field_5ffce0936a5b4','','','2021-01-12 00:09:52','2021-01-12 00:09:52','',9,'http://tsqdevelopment.test/?post_type=acf-field&#038;p=28',8,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2021-01-11 23:35:45','2021-01-11 23:35:45','a:18:{s:4:"type";s:7:"gallery";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:6:"medium";s:6:"insert";s:6:"append";s:7:"library";s:3:"all";s:3:"min";s:0:"";s:3:"max";s:0:"";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}','Gallery','gallery','publish','closed','closed','','field_5ffce0a16a5b5','','','2021-01-12 00:09:52','2021-01-12 00:09:52','',9,'http://tsqdevelopment.test/?post_type=acf-field&#038;p=29',9,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2021-01-11 23:56:08','2021-01-11 23:56:08','','About','','publish','closed','closed','','about','','','2021-01-14 03:21:26','2021-01-14 03:21:26','',0,'http://tsqdevelopment.test/?page_id=34',0,'page','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2021-01-11 23:56:33','2021-01-11 23:56:33','','Projects','','publish','closed','closed','','projects','','','2021-01-12 01:12:21','2021-01-12 01:12:21','',0,'http://tsqdevelopment.test/?page_id=39',0,'page','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2021-01-11 23:56:50','2021-01-11 23:56:50','','Residential','','publish','closed','closed','','residential','','','2021-01-11 23:56:50','2021-01-11 23:56:50','',39,'http://tsqdevelopment.test/?page_id=41',0,'page','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2021-01-11 23:57:02','2021-01-11 23:57:02','1','Subdivision','','publish','closed','closed','','subdivision','','','2021-01-11 23:57:52','2021-01-11 23:57:52','',39,'http://tsqdevelopment.test/?page_id=43',1,'page','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2021-01-11 23:57:26','2021-01-11 23:57:26','','Landscaping','','publish','closed','closed','','landscaping','','','2021-01-11 23:57:42','2021-01-11 23:57:42','',39,'http://tsqdevelopment.test/?page_id=45',2,'page','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2021-01-11 23:58:28','2021-01-11 23:58:28',' ','','','publish','closed','closed','','48','','','2021-01-12 00:01:15','2021-01-12 00:01:15','',0,'http://tsqdevelopment.test/?p=48',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2021-01-11 23:58:28','2021-01-11 23:58:28',' ','','','publish','closed','closed','','51','','','2021-01-12 00:01:15','2021-01-12 00:01:15','',0,'http://tsqdevelopment.test/?p=51',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2021-01-11 23:58:28','2021-01-11 23:58:28',' ','','','publish','closed','closed','','52','','','2021-01-12 00:01:15','2021-01-12 00:01:15','',0,'http://tsqdevelopment.test/?p=52',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2021-01-11 23:59:59','2021-01-11 23:59:59','Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at','Services','','publish','closed','closed','','services','','','2021-01-12 10:07:09','2021-01-12 10:07:09','',0,'http://tsqdevelopment.test/?page_id=58',0,'page','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2021-01-12 00:00:11','2021-01-12 00:00:11','','Contact','','publish','closed','closed','','contact','','','2021-01-13 01:10:19','2021-01-13 01:10:19','',0,'http://tsqdevelopment.test/?page_id=60',0,'page','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2021-01-12 00:00:34','2021-01-12 00:00:34',' ','','','publish','closed','closed','','62','','','2021-01-12 00:01:15','2021-01-12 00:01:15','',0,'http://tsqdevelopment.test/?p=62',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2021-01-12 00:01:15','2021-01-12 00:01:15',' ','','','publish','closed','closed','','64','','','2021-01-12 00:01:15','2021-01-12 00:01:15','',0,'http://tsqdevelopment.test/?p=64',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2021-01-12 00:07:38','2021-01-12 00:07:38','a:10:{s:4:"type";s:10:"true_false";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"message";s:0:"";s:13:"default_value";i:0;s:2:"ui";i:0;s:10:"ui_on_text";s:0:"";s:11:"ui_off_text";s:0:"";}','Feature on Home','is_featured','publish','closed','closed','','field_5ffce81ead37e','','','2021-01-12 22:58:44','2021-01-12 22:58:44','',9,'http://tsqdevelopment.test/?post_type=acf-field&#038;p=65',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2021-01-12 00:08:37','2021-01-12 00:08:37','a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}','Feature Image','feature_image','publish','closed','closed','','field_5ffce865abccf','','','2021-01-12 00:10:05','2021-01-12 00:10:05','',9,'http://tsqdevelopment.test/?post_type=acf-field&#038;p=66',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2021-01-12 09:17:06','2021-01-12 09:17:06','a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:8:"taxonomy";s:8:"operator";s:2:"==";s:5:"value";s:7:"service";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}','Service Information','service-information','publish','closed','closed','','group_5ffd690bafc66','','','2021-01-12 09:38:17','2021-01-12 09:38:17','',0,'http://tsq-development.test/?post_type=acf-field-group&#038;p=86',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2021-01-12 09:17:58','2021-01-12 09:17:58','a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}','Image','image','publish','closed','closed','','field_5ffd69185f8cd','','','2021-01-12 09:19:03','2021-01-12 09:19:03','',86,'http://tsq-development.test/?post_type=acf-field&#038;p=87',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2021-01-12 09:19:41','2021-01-12 09:19:41','a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:12:"options_page";s:8:"operator";s:2:"==";s:5:"value";s:14:"footer-options";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}','Footer Options','footer-options','publish','closed','closed','','group_5ffd69a7a272c','','','2021-01-14 01:38:19','2021-01-14 01:38:19','',0,'http://tsq-development.test/?post_type=acf-field-group&#038;p=88',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2021-01-12 09:26:28','2021-01-12 09:26:28','a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}','Telephone','telephone','publish','closed','closed','','field_5ffd6b02a4058','','','2021-01-12 10:09:02','2021-01-12 10:09:02','',88,'http://tsq-development.test/?post_type=acf-field&#038;p=90',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2021-01-12 09:26:28','2021-01-12 09:26:28','a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}','Facebook','facebook','publish','closed','closed','','field_5ffd6b0ba4059','','','2021-01-12 09:26:36','2021-01-12 09:26:36','',88,'http://tsq-development.test/?post_type=acf-field&#038;p=91',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2021-01-12 09:26:28','2021-01-12 09:26:28','a:9:{s:4:"type";s:5:"email";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}','Email','email','publish','closed','closed','','field_5ffd6b30a405a','','','2021-01-12 09:26:36','2021-01-12 09:26:36','',88,'http://tsq-development.test/?post_type=acf-field&#038;p=92',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2021-01-12 09:28:33','2021-01-12 09:28:33','a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"60";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:1:{i:0;s:11:"the_content";}s:11:"description";s:0:"";}','Contact Information','contact-information','publish','closed','closed','','group_5ffd6bb8c2f61','','','2021-01-12 10:08:48','2021-01-12 10:08:48','',0,'http://tsq-development.test/?post_type=acf-field-group&#038;p=93',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2021-01-12 09:30:28','2021-01-12 09:30:28','a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:0:"";}','Office','office','publish','closed','closed','','field_5ffd6bcca23dc','','','2021-01-12 09:30:28','2021-01-12 09:30:28','',93,'http://tsq-development.test/?post_type=acf-field&p=94',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2021-01-12 09:30:28','2021-01-12 09:30:28','a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}','Address Line 1','address_line_1','publish','closed','closed','','field_5ffd6be7a23dd','','','2021-01-12 09:30:28','2021-01-12 09:30:28','',94,'http://tsq-development.test/?post_type=acf-field&p=95',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2021-01-12 09:30:28','2021-01-12 09:30:28','a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}','Address Line 2','address_line_2','publish','closed','closed','','field_5ffd6c07a23e1','','','2021-01-12 09:30:28','2021-01-12 09:30:28','',94,'http://tsq-development.test/?post_type=acf-field&p=96',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (97,1,'2021-01-12 09:30:28','2021-01-12 09:30:28','a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}','Address Line 3','address_line_3','publish','closed','closed','','field_5ffd6c09a23e2','','','2021-01-12 09:30:28','2021-01-12 09:30:28','',94,'http://tsq-development.test/?post_type=acf-field&p=97',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2021-01-12 09:30:28','2021-01-12 09:30:28','a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}','Address Line 4','address_line_4','publish','closed','closed','','field_5ffd6c0aa23e3','','','2021-01-12 09:30:28','2021-01-12 09:30:28','',94,'http://tsq-development.test/?post_type=acf-field&p=98',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (99,1,'2021-01-12 09:30:28','2021-01-12 09:30:28','a:9:{s:4:"type";s:5:"email";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}','Email','email','publish','closed','closed','','field_5ffd6c0ea23e4','','','2021-01-12 09:30:28','2021-01-12 09:30:28','',94,'http://tsq-development.test/?post_type=acf-field&p=99',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (100,1,'2021-01-12 09:30:29','2021-01-12 09:30:29','a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}','Telephone','telephone','publish','closed','closed','','field_5ffd6c20a23e5','','','2021-01-12 10:08:48','2021-01-12 10:08:48','',94,'http://tsq-development.test/?post_type=acf-field&#038;p=100',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (102,1,'2021-01-12 09:34:51','2021-01-12 09:34:51','a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}','Subtitle','subtitle','publish','closed','closed','','field_5ffd6d2b40d1b','','','2021-01-12 09:34:51','2021-01-12 09:34:51','',86,'http://tsq-development.test/?post_type=acf-field&p=102',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (104,1,'2021-01-12 09:38:37','2021-01-12 09:38:37','a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"34";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:1:{i:0;s:11:"the_content";}s:11:"description";s:0:"";}','About Information','about-information','publish','closed','closed','','group_5ffd6e0cb8b95','','','2021-01-12 09:45:41','2021-01-12 09:45:41','',0,'http://tsq-development.test/?post_type=acf-field-group&#038;p=104',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (106,1,'2021-01-12 09:39:41','2021-01-12 09:39:41','a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}','About Title','about_title','publish','closed','closed','','field_5ffd6e2783be5','','','2021-01-12 09:39:41','2021-01-12 09:39:41','',104,'http://tsq-development.test/?post_type=acf-field&p=106',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (107,1,'2021-01-12 09:39:41','2021-01-12 09:39:41','a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:2:"br";}','About Description','about_description','publish','closed','closed','','field_5ffd6e4683be6','','','2021-01-12 09:39:41','2021-01-12 09:39:41','',104,'http://tsq-development.test/?post_type=acf-field&p=107',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (108,1,'2021-01-12 09:41:58','2021-01-12 09:41:58','a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:0:"";}','Philosophy','philosophy','publish','closed','closed','','field_5ffd6e9a7714e','','','2021-01-12 09:41:58','2021-01-12 09:41:58','',104,'http://tsq-development.test/?post_type=acf-field&p=108',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (109,1,'2021-01-12 09:41:58','2021-01-12 09:41:58','a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}','Philosophy Title','philosophy_title','publish','closed','closed','','field_5ffd6ec37714f','','','2021-01-12 09:41:58','2021-01-12 09:41:58','',108,'http://tsq-development.test/?post_type=acf-field&p=109',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (110,1,'2021-01-12 09:41:58','2021-01-12 09:41:58','a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:2:"br";}','Philosophy Description','philosophy_description','publish','closed','closed','','field_5ffd6ed677150','','','2021-01-12 09:41:58','2021-01-12 09:41:58','',108,'http://tsq-development.test/?post_type=acf-field&p=110',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (111,1,'2021-01-12 09:44:26','2021-01-12 09:44:26','a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:0:"";}','Team','team','publish','closed','closed','','field_5ffd6f393f7da','','','2021-01-12 09:44:26','2021-01-12 09:44:26','',104,'http://tsq-development.test/?post_type=acf-field&p=111',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (112,1,'2021-01-12 09:44:26','2021-01-12 09:44:26','a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}','Team Image','team_image','publish','closed','closed','','field_5ffd6f573f7db','','','2021-01-12 09:44:26','2021-01-12 09:44:26','',111,'http://tsq-development.test/?post_type=acf-field&p=112',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (113,1,'2021-01-12 09:44:26','2021-01-12 09:44:26','a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}','Team Name','team_name','publish','closed','closed','','field_5ffd6f633f7dc','','','2021-01-12 09:44:26','2021-01-12 09:44:26','',111,'http://tsq-development.test/?post_type=acf-field&p=113',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (114,1,'2021-01-12 09:44:26','2021-01-12 09:44:26','a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}','Team Position','team_position','publish','closed','closed','','field_5ffd6f703f7dd','','','2021-01-12 09:44:26','2021-01-12 09:44:26','',111,'http://tsq-development.test/?post_type=acf-field&p=114',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (117,1,'2021-01-12 09:59:59','2021-01-12 09:59:59','a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:12:"options_page";s:8:"operator";s:2:"==";s:5:"value";s:12:"home-options";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}','Home Options','home-options','publish','closed','closed','','group_5ffd72eae6bac','','','2021-01-13 07:05:38','2021-01-13 07:05:38','',0,'http://tsq-development.test/?post_type=acf-field-group&#038;p=117',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (118,1,'2021-01-12 09:59:59','2021-01-12 09:59:59','a:10:{s:4:"type";s:10:"true_false";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"message";s:0:"";s:13:"default_value";i:0;s:2:"ui";i:0;s:10:"ui_on_text";s:0:"";s:11:"ui_off_text";s:0:"";}','Loading Screen','loading_screen','publish','closed','closed','','field_5ffd72f047bff','','','2021-01-13 07:05:38','2021-01-13 07:05:38','',117,'http://tsq-development.test/?post_type=acf-field&#038;p=118',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (123,1,'2021-01-12 10:15:47','2021-01-12 10:15:47','','Project Landscaping 2','','publish','closed','closed','','project-landscaping-2','','','2021-01-13 05:09:38','2021-01-13 05:09:38','',0,'http://tsq-development.test/?post_type=project&#038;p=123',0,'project','',0);
INSERT INTO `wp_posts` VALUES (125,1,'2021-01-12 10:17:16','2021-01-12 10:17:16','','Project Residential 1','','publish','closed','closed','','project-residential-1','','','2021-01-13 01:17:11','2021-01-13 01:17:11','',0,'http://tsq-development.test/?post_type=project&#038;p=125',0,'project','',0);
INSERT INTO `wp_posts` VALUES (126,1,'2021-01-12 10:18:05','2021-01-12 10:18:05','','Project Residential 2','','publish','closed','closed','','project-residential-2','','','2021-01-13 05:09:44','2021-01-13 05:09:44','',0,'http://tsq-development.test/?post_type=project&#038;p=126',0,'project','',0);
INSERT INTO `wp_posts` VALUES (127,1,'2021-01-12 10:19:13','2021-01-12 10:19:13','','Project Subdivision 1','','publish','closed','closed','','project-subdivision-1','','','2021-01-13 01:18:31','2021-01-13 01:18:31','',0,'http://tsq-development.test/?post_type=project&#038;p=127',0,'project','',0);
INSERT INTO `wp_posts` VALUES (128,1,'2021-01-12 10:20:09','2021-01-12 10:20:09','','Project Subdivision 2','','publish','closed','closed','','project-subdivision-2','','','2021-01-13 05:09:48','2021-01-13 05:09:48','',0,'http://tsq-development.test/?post_type=project&#038;p=128',0,'project','',0);
INSERT INTO `wp_posts` VALUES (133,1,'2021-01-12 21:18:07','2021-01-12 21:18:07','a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}','Sub Logo Image','sub_logo_image','publish','closed','closed','','field_5ffe120537dae','','','2021-01-13 07:05:38','2021-01-13 07:05:38','',117,'http://tsq-development.test/?post_type=acf-field&#038;p=133',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (134,1,'2021-01-12 21:19:05','2021-01-12 21:19:05','a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}','Loading Image','loading_image','publish','closed','closed','','field_5ffe12248ed96','','','2021-01-13 07:05:38','2021-01-13 07:05:38','',117,'http://tsq-development.test/?post_type=acf-field&#038;p=134',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (135,1,'2021-01-12 21:19:05','2021-01-12 21:19:05','a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}','Background Image','background_image','publish','closed','closed','','field_5ffe12378ed97','','','2021-01-13 07:05:38','2021-01-13 07:05:38','',117,'http://tsq-development.test/?post_type=acf-field&#038;p=135',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (172,1,'2021-01-13 01:07:14','2021-01-13 01:07:14','','0pdDzj','','inherit','open','closed','','0pddzj','','','2021-01-13 01:07:14','2021-01-13 01:07:14','',0,'http://tsq-development.test/wp-content/uploads/2021/01/0pdDzj.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (173,1,'2021-01-13 01:07:15','2021-01-13 01:07:15','','b091y6','','inherit','open','closed','','b091y6','','','2021-01-13 01:07:15','2021-01-13 01:07:15','',0,'http://tsq-development.test/wp-content/uploads/2021/01/b091y6.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (174,1,'2021-01-13 01:07:16','2021-01-13 01:07:16','','ehqCcw','','inherit','open','closed','','ehqccw','','','2021-01-13 01:07:16','2021-01-13 01:07:16','',0,'http://tsq-development.test/wp-content/uploads/2021/01/ehqCcw.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (175,1,'2021-01-13 01:07:16','2021-01-13 01:07:16','','Group 6','','inherit','open','closed','','group-6','','','2021-01-13 01:07:16','2021-01-13 01:07:16','',0,'http://tsq-development.test/wp-content/uploads/2021/01/Group-6.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (176,1,'2021-01-13 01:07:17','2021-01-13 01:07:17','','Group 8','','inherit','open','closed','','group-8','','','2021-01-13 01:16:28','2021-01-13 01:16:28','',17,'http://tsq-development.test/wp-content/uploads/2021/01/Group-8.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (177,1,'2021-01-13 01:07:18','2021-01-13 01:07:18','','Group 11','','inherit','open','closed','','group-11','','','2021-01-13 01:07:18','2021-01-13 01:07:18','',0,'http://tsq-development.test/wp-content/uploads/2021/01/Group-11.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (178,1,'2021-01-13 01:07:18','2021-01-13 01:07:18','','Group 70','','inherit','open','closed','','group-70','','','2021-01-13 01:07:18','2021-01-13 01:07:18','',0,'http://tsq-development.test/wp-content/uploads/2021/01/Group-70.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (179,1,'2021-01-13 01:07:19','2021-01-13 01:07:19','','Group 88','','inherit','open','closed','','group-88','','','2021-01-13 01:07:19','2021-01-13 01:07:19','',0,'http://tsq-development.test/wp-content/uploads/2021/01/Group-88.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (180,1,'2021-01-13 01:07:20','2021-01-13 01:07:20','','Group 97','','inherit','open','closed','','group-97','','','2021-01-13 01:07:20','2021-01-13 01:07:20','',0,'http://tsq-development.test/wp-content/uploads/2021/01/Group-97.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (181,1,'2021-01-13 01:07:20','2021-01-13 01:07:20','','Group 101','','inherit','open','closed','','group-101','','','2021-01-13 01:07:20','2021-01-13 01:07:20','',0,'http://tsq-development.test/wp-content/uploads/2021/01/Group-101.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (182,1,'2021-01-13 01:07:21','2021-01-13 01:07:21','','Group 103','','inherit','open','closed','','group-103','','','2021-01-13 01:07:21','2021-01-13 01:07:21','',0,'http://tsq-development.test/wp-content/uploads/2021/01/Group-103.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (183,1,'2021-01-13 01:07:21','2021-01-13 01:07:21','','Group 105','','inherit','open','closed','','group-105','','','2021-01-13 01:07:21','2021-01-13 01:07:21','',0,'http://tsq-development.test/wp-content/uploads/2021/01/Group-105.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (184,1,'2021-01-13 01:07:22','2021-01-13 01:07:22','','Group 111','','inherit','open','closed','','group-111','','','2021-01-13 01:18:46','2021-01-13 01:18:46','',0,'http://tsq-development.test/wp-content/uploads/2021/01/Group-111.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (185,1,'2021-01-13 01:07:23','2021-01-13 01:07:23','','Group 113','','inherit','open','closed','','group-113','','','2021-01-15 04:16:02','2021-01-15 04:16:02','',17,'http://tsq-development.test/wp-content/uploads/2021/01/Group-113.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (186,1,'2021-01-13 01:07:23','2021-01-13 01:07:23','','Group 115','','inherit','open','closed','','group-115','','','2021-01-13 01:07:23','2021-01-13 01:07:23','',0,'http://tsq-development.test/wp-content/uploads/2021/01/Group-115.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (187,1,'2021-01-13 01:07:24','2021-01-13 01:07:24','','Group 125','','inherit','open','closed','','group-125','','','2021-01-13 01:07:24','2021-01-13 01:07:24','',0,'http://tsq-development.test/wp-content/uploads/2021/01/Group-125.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (188,1,'2021-01-13 01:07:24','2021-01-13 01:07:24','','Group 127','','inherit','open','closed','','group-127','','','2021-01-13 01:07:24','2021-01-13 01:07:24','',0,'http://tsq-development.test/wp-content/uploads/2021/01/Group-127.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (189,1,'2021-01-13 01:07:25','2021-01-13 01:07:25','','Group 129','','inherit','open','closed','','group-129','','','2021-01-13 01:07:25','2021-01-13 01:07:25','',0,'http://tsq-development.test/wp-content/uploads/2021/01/Group-129.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (190,1,'2021-01-13 01:07:25','2021-01-13 01:07:25','','Group 131','','inherit','open','closed','','group-131','','','2021-01-13 01:07:25','2021-01-13 01:07:25','',0,'http://tsq-development.test/wp-content/uploads/2021/01/Group-131.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (191,1,'2021-01-13 01:07:26','2021-01-13 01:07:26','','Group 133','','inherit','open','closed','','group-133','','','2021-01-13 01:07:26','2021-01-13 01:07:26','',0,'http://tsq-development.test/wp-content/uploads/2021/01/Group-133.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (192,1,'2021-01-13 01:07:26','2021-01-13 01:07:26','','jJcs8T','','inherit','open','closed','','jjcs8t','','','2021-01-13 01:07:26','2021-01-13 01:07:26','',0,'http://tsq-development.test/wp-content/uploads/2021/01/jJcs8T.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (193,1,'2021-01-13 01:07:27','2021-01-13 01:07:27','','kJUekt','','inherit','open','closed','','kjuekt','','','2021-01-13 01:07:27','2021-01-13 01:07:27','',0,'http://tsq-development.test/wp-content/uploads/2021/01/kJUekt.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (194,1,'2021-01-13 01:07:27','2021-01-13 01:07:27','','Layer 1','','inherit','open','closed','','layer-1','','','2021-01-13 01:07:27','2021-01-13 01:07:27','',0,'http://tsq-development.test/wp-content/uploads/2021/01/Layer-1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (195,1,'2021-01-13 01:07:29','2021-01-13 01:07:29','','LmBu4L','','inherit','open','closed','','lmbu4l','','','2021-01-15 04:15:53','2021-01-15 04:15:53','',123,'http://tsq-development.test/wp-content/uploads/2021/01/LmBu4L.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (196,1,'2021-01-13 01:07:30','2021-01-13 01:07:30','','qO5Zo7','','inherit','open','closed','','qo5zo7','','','2021-01-13 01:07:30','2021-01-13 01:07:30','',0,'http://tsq-development.test/wp-content/uploads/2021/01/qO5Zo7.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (198,1,'2021-01-13 01:07:31','2021-01-13 01:07:31','','Rectangle 65','','inherit','open','closed','','rectangle-65','','','2021-01-13 01:07:31','2021-01-13 01:07:31','',0,'http://tsq-development.test/wp-content/uploads/2021/01/Rectangle-65.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (199,1,'2021-01-13 01:07:31','2021-01-13 01:07:31','','VeR19G','','inherit','open','closed','','ver19g','','','2021-01-13 01:07:31','2021-01-13 01:07:31','',0,'http://tsq-development.test/wp-content/uploads/2021/01/VeR19G.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (200,1,'2021-01-13 01:07:32','2021-01-13 01:07:32','','xCjG29','','inherit','open','closed','','xcjg29','','','2021-01-13 01:07:32','2021-01-13 01:07:32','',0,'http://tsq-development.test/wp-content/uploads/2021/01/xCjG29.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (201,1,'2021-01-13 01:07:32','2021-01-13 01:07:32','','zWujjD','','inherit','open','closed','','zwujjd','','','2021-01-13 01:07:32','2021-01-13 01:07:32','',0,'http://tsq-development.test/wp-content/uploads/2021/01/zWujjD.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (202,1,'2021-01-13 01:09:00','2021-01-13 01:09:00','','Group 3','','inherit','open','closed','','group-3','','','2021-01-13 01:09:00','2021-01-13 01:09:00','',0,'http://tsq-development.test/wp-content/uploads/2021/01/Group-3.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (204,1,'2021-01-14 01:38:11','2021-01-14 01:38:11','a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}','Copyright','copyright','publish','closed','closed','','field_5fffa0782bee4','','','2021-01-14 01:38:19','2021-01-14 01:38:19','',88,'http://tsq-development.test/?post_type=acf-field&#038;p=204',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (205,1,'2021-01-14 03:20:50','2021-01-14 03:20:50','','570x370','','inherit','open','closed','','570x370','','','2021-01-14 03:21:26','2021-01-14 03:21:26','',34,'http://tsq-development.test/wp-content/uploads/2021/01/570x370.png',0,'attachment','image/png',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (17,4,0);
INSERT INTO `wp_term_relationships` VALUES (48,5,0);
INSERT INTO `wp_term_relationships` VALUES (51,5,0);
INSERT INTO `wp_term_relationships` VALUES (52,5,0);
INSERT INTO `wp_term_relationships` VALUES (62,5,0);
INSERT INTO `wp_term_relationships` VALUES (64,5,0);
INSERT INTO `wp_term_relationships` VALUES (123,4,0);
INSERT INTO `wp_term_relationships` VALUES (125,2,0);
INSERT INTO `wp_term_relationships` VALUES (126,2,0);
INSERT INTO `wp_term_relationships` VALUES (127,3,0);
INSERT INTO `wp_term_relationships` VALUES (128,3,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'service','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'service','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'service','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'nav_menu','',0,5);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
INSERT INTO `wp_termmeta` VALUES (1,4,'image','182');
INSERT INTO `wp_termmeta` VALUES (2,4,'_image','field_5ffd69185f8cd');
INSERT INTO `wp_termmeta` VALUES (3,4,'subtitle','Landscaping');
INSERT INTO `wp_termmeta` VALUES (4,4,'_subtitle','field_5ffd6d2b40d1b');
INSERT INTO `wp_termmeta` VALUES (5,2,'image','180');
INSERT INTO `wp_termmeta` VALUES (6,2,'_image','field_5ffd69185f8cd');
INSERT INTO `wp_termmeta` VALUES (7,2,'subtitle','Residential Architectural Design');
INSERT INTO `wp_termmeta` VALUES (8,2,'_subtitle','field_5ffd6d2b40d1b');
INSERT INTO `wp_termmeta` VALUES (9,3,'image','181');
INSERT INTO `wp_termmeta` VALUES (10,3,'_image','field_5ffd69185f8cd');
INSERT INTO `wp_termmeta` VALUES (11,3,'subtitle','Subdivision');
INSERT INTO `wp_termmeta` VALUES (12,3,'_subtitle','field_5ffd6d2b40d1b');
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorised','uncategorised',0);
INSERT INTO `wp_terms` VALUES (2,'Residential','residential',0);
INSERT INTO `wp_terms` VALUES (3,'Subdivision','subdivision',0);
INSERT INTO `wp_terms` VALUES (4,'Landscaping','landscaping',0);
INSERT INTO `wp_terms` VALUES (5,'Menu 1','menu-1',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:"administrator";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','0');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:5:{s:64:"9de091f7cb88bfb845826ae5a0600be6703a78c9f9e7ae310019d1df9ecb261e";a:4:{s:10:"expiration";i:1611614117;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36";s:5:"login";i:1610404517;}s:64:"1bd12862f7b1373031c7e37a1a77e164234794386d128ed70e254df4fa2a6851";a:4:{s:10:"expiration";i:1611724121;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36";s:5:"login";i:1610514521;}s:64:"0a5599eaa000682cd9cf6f695d8ade93384c3ebeef9dfdd38d6c72cc94796607";a:4:{s:10:"expiration";i:1611730793;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36";s:5:"login";i:1610521193;}s:64:"7ca4a75fc47d9c8a7c781bd63f51db17ed91ea17f4761cf5ed747026e38c668d";a:4:{s:10:"expiration";i:1611786821;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36";s:5:"login";i:1610577221;}s:64:"3bbcd60bf27f8de6e01eb994ccc5724a1f256e7ad714dd2cf984e064726b45b6";a:4:{s:10:"expiration";i:1612138675;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36";s:5:"login";i:1610929075;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','208');
INSERT INTO `wp_usermeta` VALUES (18,1,'community-events-location','a:1:{s:2:"ip";s:9:"127.0.0.0";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'closedpostboxes_project','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (20,1,'metaboxhidden_project','a:1:{i:0;s:7:"slugdiv";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'acf_to_rest_api_donation_version','3.3.2');
INSERT INTO `wp_usermeta` VALUES (22,1,'edit_project_per_page','20');
INSERT INTO `wp_usermeta` VALUES (23,1,'wp_user-settings','posts_list_mode=list&libraryContent=browse&editor=tinymce');
INSERT INTO `wp_usermeta` VALUES (24,1,'wp_user-settings-time','1610446025');
INSERT INTO `wp_usermeta` VALUES (25,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}');
INSERT INTO `wp_usermeta` VALUES (26,1,'metaboxhidden_nav-menus','a:3:{i:0;s:21:"add-post-type-project";i:1;s:12:"add-post_tag";i:2;s:11:"add-service";}');
INSERT INTO `wp_usermeta` VALUES (27,1,'nav_menu_recently_edited','5');
INSERT INTO `wp_usermeta` VALUES (28,1,'closedpostboxes_dashboard','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (29,1,'metaboxhidden_dashboard','a:5:{i:0;s:21:"dashboard_site_health";i:1;s:19:"dashboard_right_now";i:2;s:18:"dashboard_activity";i:3;s:21:"dashboard_quick_press";i:4;s:17:"dashboard_primary";}');
INSERT INTO `wp_usermeta` VALUES (30,1,'closedpostboxes_toplevel_page_home-options','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (31,1,'metaboxhidden_toplevel_page_home-options','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (32,1,'closedpostboxes_page','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (33,1,'metaboxhidden_page','a:4:{i:0;s:16:"commentstatusdiv";i:1;s:11:"commentsdiv";i:2;s:7:"slugdiv";i:3;s:9:"authordiv";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '1999-01-01 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'kevin','$P$BON05JGU02xNK1O5sTDx5aBiLh2a6H.','kevin','kevin@theia.co.nz','http://kevinlim.net','2021-01-11 22:15:54','',0,'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpvivid_scan_result`
--

DROP TABLE IF EXISTS `wp_wpvivid_scan_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wpvivid_scan_result` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `path` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `from_post` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpvivid_scan_result`
--

LOCK TABLES `wp_wpvivid_scan_result` WRITE;
/*!40000 ALTER TABLE `wp_wpvivid_scan_result` DISABLE KEYS */;
INSERT INTO `wp_wpvivid_scan_result` VALUES (1,'2021/01/Group-88-300x274.png',34);
INSERT INTO `wp_wpvivid_scan_result` VALUES (2,'2021/01/Group-88-150x150.png',34);
INSERT INTO `wp_wpvivid_scan_result` VALUES (3,'2021/01/Group-88.png',34);
INSERT INTO `wp_wpvivid_scan_result` VALUES (4,'2021/01/Group-70-300x151.png',60);
INSERT INTO `wp_wpvivid_scan_result` VALUES (5,'2021/01/Group-70-150x150.png',60);
INSERT INTO `wp_wpvivid_scan_result` VALUES (6,'2021/01/Group-70-768x387.png',60);
INSERT INTO `wp_wpvivid_scan_result` VALUES (7,'2021/01/Group-70.png',60);
/*!40000 ALTER TABLE `wp_wpvivid_scan_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpvivid_unused_uploads_files`
--

DROP TABLE IF EXISTS `wp_wpvivid_unused_uploads_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wpvivid_unused_uploads_files` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `path` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `folder` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpvivid_unused_uploads_files`
--

LOCK TABLES `wp_wpvivid_unused_uploads_files` WRITE;
/*!40000 ALTER TABLE `wp_wpvivid_unused_uploads_files` DISABLE KEYS */;
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (1,'2021\\01\\0pdDzj-150x150.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (2,'2021\\01\\0pdDzj-300x212.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (3,'2021\\01\\0pdDzj.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (4,'2021\\01\\b091y6-150x150.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (5,'2021\\01\\b091y6-300x210.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (6,'2021\\01\\b091y6.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (7,'2021\\01\\ehqCcw-150x150.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (8,'2021\\01\\ehqCcw-300x212.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (9,'2021\\01\\ehqCcw.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (10,'2021\\01\\Group-101-150x150.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (11,'2021\\01\\Group-101-221x300.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (12,'2021\\01\\Group-101.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (13,'2021\\01\\Group-103-150x150.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (14,'2021\\01\\Group-103-221x300.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (15,'2021\\01\\Group-103.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (16,'2021\\01\\Group-105-150x150.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (17,'2021\\01\\Group-105-300x168.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (18,'2021\\01\\Group-105.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (19,'2021\\01\\Group-11-150x29.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (20,'2021\\01\\Group-11.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (21,'2021\\01\\Group-111-150x150.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (22,'2021\\01\\Group-111-300x168.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (23,'2021\\01\\Group-111.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (24,'2021\\01\\Group-113-150x150.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (25,'2021\\01\\Group-113-300x165.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (26,'2021\\01\\Group-113.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (27,'2021\\01\\Group-115-150x150.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (28,'2021\\01\\Group-115-300x168.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (29,'2021\\01\\Group-115.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (30,'2021\\01\\Group-125-150x150.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (31,'2021\\01\\Group-125-300x168.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (32,'2021\\01\\Group-125.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (33,'2021\\01\\Group-127-150x150.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (34,'2021\\01\\Group-127-300x169.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (35,'2021\\01\\Group-127.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (36,'2021\\01\\Group-129-150x150.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (37,'2021\\01\\Group-129-300x165.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (38,'2021\\01\\Group-129.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (39,'2021\\01\\Group-131-150x150.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (40,'2021\\01\\Group-131-300x165.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (41,'2021\\01\\Group-131.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (42,'2021\\01\\Group-133-150x150.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (43,'2021\\01\\Group-133-300x168.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (44,'2021\\01\\Group-133.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (45,'2021\\01\\Group-3-150x150.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (46,'2021\\01\\Group-3-300x231.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (47,'2021\\01\\Group-3-768x590.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (48,'2021\\01\\Group-3.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (49,'2021\\01\\Group-6.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (50,'2021\\01\\Group-8-1024x564.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (51,'2021\\01\\Group-8-150x150.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (52,'2021\\01\\Group-8-300x165.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (53,'2021\\01\\Group-8-768x423.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (54,'2021\\01\\Group-8.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (55,'2021\\01\\Group-97-150x150.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (56,'2021\\01\\Group-97-221x300.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (57,'2021\\01\\Group-97.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (58,'2021\\01\\jJcs8T-150x150.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (59,'2021\\01\\jJcs8T-300x165.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (60,'2021\\01\\jJcs8T.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (61,'2021\\01\\kJUekt-150x150.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (62,'2021\\01\\kJUekt-300x169.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (63,'2021\\01\\kJUekt.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (64,'2021\\01\\Layer-1-1024x576.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (65,'2021\\01\\Layer-1-150x150.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (66,'2021\\01\\Layer-1-1536x864.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (67,'2021\\01\\Layer-1-300x169.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (68,'2021\\01\\Layer-1-768x432.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (69,'2021\\01\\Layer-1.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (70,'2021\\01\\LmBu4L-1024x521.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (71,'2021\\01\\LmBu4L-150x150.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (72,'2021\\01\\LmBu4L-300x153.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (73,'2021\\01\\LmBu4L-768x390.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (74,'2021\\01\\LmBu4L.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (75,'2021\\01\\qO5Zo7-150x150.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (76,'2021\\01\\qO5Zo7-300x200.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (77,'2021\\01\\qO5Zo7.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (78,'2021\\01\\Rectangle-52-150x150.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (79,'2021\\01\\Rectangle-52-264x300.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (80,'2021\\01\\Rectangle-52.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (81,'2021\\01\\Rectangle-65-150x150.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (82,'2021\\01\\Rectangle-65-300x178.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (83,'2021\\01\\Rectangle-65.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (84,'2021\\01\\VeR19G-150x150.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (85,'2021\\01\\VeR19G-300x212.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (86,'2021\\01\\VeR19G.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (87,'2021\\01\\xCjG29-150x150.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (88,'2021\\01\\xCjG29-300x179.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (89,'2021\\01\\xCjG29.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (90,'2021\\01\\zWujjD-150x150.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (91,'2021\\01\\zWujjD-300x180.png','2021\\01');
INSERT INTO `wp_wpvivid_unused_uploads_files` VALUES (92,'2021\\01\\zWujjD.png','2021\\01');
/*!40000 ALTER TABLE `wp_wpvivid_unused_uploads_files` ENABLE KEYS */;
UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on: Mon, 18 Jan 2021 00:27:06 +0000
