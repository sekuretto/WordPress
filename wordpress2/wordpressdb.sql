-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2020 at 11:20 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpressdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(88, 'action_scheduler/migration_hook', 'complete', '2020-09-13 19:10:41', '2020-09-13 22:10:41', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1600024241;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1600024241;}', 1, 1, '2020-09-13 19:11:24', '2020-09-13 22:11:24', 0, NULL),
(89, 'wpforms_process_entry_emails_meta_cleanup', 'complete', '2020-09-14 00:00:00', '2020-09-14 03:00:00', '{\"tasks_meta_id\":1}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1600041600;s:18:\"\0*\0first_timestamp\";i:1600041600;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1600041600;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2020-09-20 09:18:41', '2020-09-20 12:18:41', 0, NULL),
(90, 'wpforms_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '{\"tasks_meta_id\":2}', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2020-09-13 19:11:30', '2020-09-13 22:11:30', 0, NULL),
(91, 'wpforms_process_entry_emails_meta_cleanup', 'pending', '2020-09-21 09:18:41', '2020-09-21 12:18:41', '{\"tasks_meta_id\":1}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1600679921;s:18:\"\0*\0first_timestamp\";i:1600041600;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1600679921;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'wpforms');

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 88, 'action created', '2020-09-13 19:09:42', '2020-09-13 22:09:42'),
(2, 88, 'action started via Async Request', '2020-09-13 19:11:23', '2020-09-13 22:11:23'),
(3, 88, 'action complete via Async Request', '2020-09-13 19:11:24', '2020-09-13 22:11:24'),
(4, 89, 'action created', '2020-09-13 19:11:25', '2020-09-13 22:11:25'),
(5, 90, 'action created', '2020-09-13 19:11:25', '2020-09-13 22:11:25'),
(6, 90, 'action started via Async Request', '2020-09-13 19:11:30', '2020-09-13 22:11:30'),
(7, 90, 'action complete via Async Request', '2020-09-13 19:11:30', '2020-09-13 22:11:30'),
(8, 89, 'action started via WP Cron', '2020-09-20 09:18:40', '2020-09-20 12:18:40'),
(9, 89, 'action complete via WP Cron', '2020-09-20 09:18:41', '2020-09-20 12:18:41'),
(10, 91, 'action created', '2020-09-20 09:18:41', '2020-09-20 12:18:41');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-09-06 18:15:55', '2020-09-06 17:15:55', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0),
(2, 1, 'Marja', 'marja.jambeck@gmail.com', 'http://localhost/wordpress', '::1', '2020-09-06 18:37:14', '2020-09-06 17:37:14', 'Tästä alkaa WordPressin opettelu!', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', 'comment', 0, 1),
(3, 58, 'Anonyymi', 'joku@suomi.fi', '', '::1', '2020-09-13 11:19:50', '2020-09-13 10:19:50', 'Kissa saa tohtorin arvon?! Mihin tämä maailma on menossa...', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_db7_forms`
--

CREATE TABLE `wp_db7_forms` (
  `form_id` bigint(20) NOT NULL,
  `form_post_id` bigint(20) NOT NULL,
  `form_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_db7_forms`
--

INSERT INTO `wp_db7_forms` (`form_id`, `form_post_id`, `form_value`, `form_date`) VALUES
(3, 90, 'a:5:{s:12:\"cfdb7_status\";s:6:\"unread\";s:9:\"your-name\";s:5:\"Marja\";s:12:\"your-subject\";s:11:\"Testiviesti\";s:12:\"your-message\";s:64:\"Testaan Contact Form 7 -pluginin perustoiminnallisuutta...      \";s:4:\"vari\";a:1:{i:0;s:8:\"Punainen\";}}', '2020-09-13 22:51:40'),
(4, 90, 'a:5:{s:12:\"cfdb7_status\";s:6:\"unread\";s:9:\"your-name\";s:5:\"Marja\";s:12:\"your-subject\";s:8:\"wrwrwtwt\";s:12:\"your-message\";s:9:\"Testing  \";s:4:\"vari\";a:1:{i:0;s:9:\"Keltainen\";}}', '2020-09-13 22:51:58');

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'Marjan Wordpress', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'marja.jambeck@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:95:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=19&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1;s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";i:2;s:24:\"simple-history/index.php\";i:3;s:40:\"tag-list-widget/taxonomy-list-widget.php\";i:4;s:24:\"wpforms-lite/wpforms.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'wp-bootstrap-starter', 'yes'),
(41, 'stylesheet', 'material-design-wp', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:2:{i:0;i:58;i:1;i:69;}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:5:{i:2;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:7:\"Find US\";s:4:\"text\";s:159:\"<strong>Address</strong>\n123 Main Street\nLondon EC1 4UK\n\n<strong>Hours</strong>\nMonday&ndash;Friday: 09:00&ndash;17:00\nSaturday &amp; Sunday: 11:00&ndash;15:00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;i:4;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:7:\"Find US\";s:4:\"text\";s:159:\"<strong>Address</strong>\n123 Main Street\nLondon EC1 4UK\n\n<strong>Hours</strong>\nMonday&ndash;Friday: 09:00&ndash;17:00\nSaturday &amp; Sunday: 11:00&ndash;15:00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'Europe/Helsinki', 'yes'),
(81, 'page_for_posts', '22', 'yes'),
(82, 'page_on_front', '19', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '25', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1614964548', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:12:\"cfdb7_access\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'WPLANG', 'en_GB', 'yes'),
(99, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:6:{s:19:\"wp_inactive_widgets\";a:8:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:12:\"categories-2\";i:6;s:14:\"recent-posts-2\";i:7;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:4:{i:0;s:6:\"text-4\";i:1;s:10:\"nav_menu-2\";i:2;s:6:\"text-5\";i:3;s:22:\"taxonomy_list_widget-3\";}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:10:{i:1600593579;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1600596958;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1600622157;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600622158;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1600622176;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600622177;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600632057;a:1:{s:29:\"simple_history/maybe_purge_db\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600686000;a:1:{s:28:\"wpforms_email_summaries_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:30:\"wpforms_email_summaries_weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1600708557;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_nav_menu', 'a:2:{i:2;a:2:{s:5:\"title\";s:10:\"Navigation\";s:8:\"nav_menu\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'recovery_keys', 'a:0:{}', 'yes'),
(118, 'theme_mods_twentytwenty', 'a:6:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:5;s:6:\"social\";i:4;}s:11:\"custom_logo\";i:43;s:30:\"header_footer_background_color\";s:7:\"#7a0202\";s:24:\"accent_accessible_colors\";a:2:{s:7:\"content\";a:4:{s:4:\"text\";s:7:\"#000000\";s:6:\"accent\";s:7:\"#cd2653\";s:9:\"secondary\";s:7:\"#6d6d6d\";s:7:\"borders\";s:7:\"#dcd7ca\";}s:13:\"header-footer\";a:5:{s:4:\"text\";s:7:\"#ffffff\";s:6:\"accent\";s:7:\"#e886a0\";s:10:\"background\";s:7:\"#7a0202\";s:7:\"borders\";s:7:\"#a30000\";s:9:\"secondary\";s:7:\"#e0a7a7\";}}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1599471848;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:8:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:12:\"categories-2\";i:6;s:14:\"recent-posts-2\";i:7;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:3:{i:0;s:6:\"text-4\";i:1;s:10:\"nav_menu-2\";i:2;s:6:\"text-5\";}s:9:\"sidebar-2\";a:0:{}}}}', 'yes'),
(132, 'can_compress_scripts', '1', 'no'),
(147, 'finished_updating_comment_type', '1', 'yes'),
(158, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:1:{i:0;i:5;}}', 'yes'),
(159, 'recently_activated', 'a:1:{s:33:\"theme-my-login/theme-my-login.php\";i:1600023718;}', 'yes'),
(165, 'theme_mods_simple-bootstrap', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(170, 'theme_mods_materialis', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(179, 'theme_mods_new-blog-lite', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(204, 'current_theme', 'Material Design WP', 'yes'),
(205, 'theme_mods_wp-bootstrap-starter', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:5;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1599471795;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:8:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:12:\"categories-2\";i:6;s:14:\"recent-posts-2\";i:7;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:3:{i:0;s:6:\"text-4\";i:1;s:10:\"nav_menu-2\";i:2;s:6:\"text-5\";}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}}}}', 'yes'),
(206, 'theme_switched', '', 'yes'),
(207, 'triggered_welcomet', '1', 'yes'),
(210, 'theme_mods_material-design-wp', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:5;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1599989894;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:8:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:12:\"categories-2\";i:6;s:14:\"recent-posts-2\";i:7;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:3:{i:0;s:6:\"text-4\";i:1;s:10:\"nav_menu-2\";i:2;s:6:\"text-5\";}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}}}s:24:\"header_banner_visibility\";b:1;}', 'yes'),
(217, '_transient_health-check-site-status-result', '{\"good\":11,\"recommended\":9,\"critical\":0}', 'yes'),
(219, '_site_transient_timeout_browser_4243c5bad934d66f978f6ee6e569fdad', '1600594612', 'no'),
(220, '_site_transient_browser_4243c5bad934d66f978f6ee6e569fdad', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"85.0.4183.102\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(234, 'theme_mods_bootstrapfast', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:5;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1599989913;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:8:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:12:\"categories-2\";i:6;s:14:\"recent-posts-2\";i:7;s:17:\"recent-comments-2\";}s:14:\"main-sidebar-1\";a:3:{i:0;s:6:\"text-4\";i:1;s:10:\"nav_menu-2\";i:2;s:6:\"text-5\";}s:13:\"top-sidebar-1\";a:0:{}s:16:\"footer-sidebar-1\";a:0:{}s:16:\"footer-sidebar-2\";a:0:{}s:16:\"footer-sidebar-3\";a:0:{}s:16:\"footer-sidebar-4\";a:0:{}}}}', 'yes'),
(250, '_site_transient_timeout_browser_1a6593cf7e196038b66b0b12df2187fd', '1600598659', 'no'),
(251, '_site_transient_browser_1a6593cf7e196038b66b0b12df2187fd', 'a:10:{s:4:\"name\";s:7:\"unknown\";s:7:\"version\";s:0:\"\";s:8:\"platform\";s:0:\"\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(255, 'category_children', 'a:1:{i:9;a:2:{i:0;i:10;i:1;i:11;}}', 'yes'),
(295, 'new_admin_email', 'marja.jambeck@gmail.com', 'yes'),
(309, '_site_transient_timeout_php_check_e26e33de4a278e301580d402dcb3d659', '1600623591', 'no'),
(310, '_site_transient_php_check_e26e33de4a278e301580d402dcb3d659', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(319, 'widget_theme-my-login', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(320, '_tml_installed_at', '1600031521', 'no'),
(321, '_tml_updated_at', '1600031521', 'no'),
(322, '_tml_version', '7.1.1', 'no'),
(326, 'tml_ajax', '1', 'yes'),
(327, 'tml_login_type', 'default', 'yes'),
(328, 'tml_registration_type', 'default', 'yes'),
(329, 'tml_user_passwords', '', 'yes'),
(330, 'tml_auto_login', '', 'yes'),
(331, 'tml_dashboard_slug', 'dashboard', 'yes'),
(332, 'tml_login_slug', 'login', 'yes'),
(333, 'tml_logout_slug', 'logout', 'yes'),
(334, 'tml_register_slug', 'register', 'yes'),
(335, 'tml_lostpassword_slug', 'lostpassword', 'yes'),
(336, 'tml_resetpass_slug', 'resetpass', 'yes'),
(353, 'action_scheduler_hybrid_store_demarkation', '87', 'yes'),
(354, 'schema-ActionScheduler_StoreSchema', '3.0.1600024178', 'yes'),
(355, 'schema-ActionScheduler_LoggerSchema', '2.0.1600024179', 'yes'),
(356, 'wpforms_version', '1.6.2.3', 'yes'),
(357, 'wpforms_version_lite', '1.6.2.3', 'yes'),
(358, 'wpforms_activated', 'a:1:{s:4:\"lite\";i:1600024180;}', 'yes'),
(361, 'action_scheduler_lock_async-request-runner', '1600593613', 'yes'),
(362, 'widget_wpforms-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(366, 'wpforms_review', 'a:2:{s:4:\"time\";i:1600024183;s:9:\"dismissed\";b:0;}', 'yes'),
(367, 'wpforms_challenge', 'a:13:{s:6:\"status\";s:7:\"skipped\";s:4:\"step\";i:0;s:7:\"user_id\";i:1;s:7:\"form_id\";i:0;s:10:\"embed_page\";i:0;s:16:\"embed_page_title\";s:0:\"\";s:16:\"started_date_gmt\";s:19:\"2020-09-13 19:10:13\";s:17:\"finished_date_gmt\";s:19:\"2020-09-13 19:10:13\";s:13:\"seconds_spent\";i:0;s:12:\"seconds_left\";i:300;s:13:\"feedback_sent\";b:0;s:19:\"feedback_contact_me\";b:0;s:13:\"window_closed\";s:0:\"\";}', 'yes'),
(369, 'action_scheduler_migration_status', 'complete', 'yes'),
(370, 'wpforms_notifications', 'a:4:{s:6:\"update\";i:1600024290;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}', 'yes'),
(379, 'wpforms_crypto_secret_key', 'rHH3HXdPPzB+hW3WeC1ThNzErQOLaMohtJcM+p2hAHE=', 'yes'),
(394, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.2.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1600025383;s:7:\"version\";s:5:\"5.2.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(416, 'cfdb7_view_install_date', '2020-09-13 19:44:00', 'yes'),
(419, 'secret_key', 'Op~wqkd0W Bf#=SF);%tbd)U_(R1gXvty.cPU&;VRKlLP@NkpNxThzY/Utr1r0aF', 'no'),
(435, 'simple_history_db_version', '5', 'yes'),
(436, 'simple_history_show_as_page', '1', 'yes'),
(437, 'simple_history_show_on_dashboard', '1', 'yes'),
(438, 'simple_history_enable_rss_feed', '0', 'yes'),
(439, 'simple_history_rss_secret', 'cbqkoxxfipzbesgycgkv', 'yes'),
(474, 'widget_taxonomy_list_widget', 'a:2:{i:3;a:14:{s:8:\"taxonomy\";s:8:\"post_tag\";s:15:\"max_name_length\";i:0;s:6:\"cutoff\";s:3:\"…\";s:9:\"delimiter\";s:2:\"ul\";s:5:\"limit\";i:0;s:5:\"order\";s:3:\"ASC\";s:7:\"orderby\";s:4:\"name\";s:9:\"threshold\";i:0;s:6:\"incexc\";s:7:\"exclude\";s:10:\"incexc_ids\";a:0:{}s:10:\"hide_empty\";b:1;s:11:\"post_counts\";b:0;s:3:\"rel\";s:8:\"nofollow\";s:5:\"title\";s:4:\"Tags\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(484, '_transient_is_multi_author', '1', 'yes'),
(485, '_transient_wp_bootstrap_starter_categories', '2', 'yes'),
(488, '_site_transient_timeout_theme_roots', '1600595331', 'no'),
(489, '_site_transient_theme_roots', 'a:9:{s:13:\"bootstrapfast\";s:7:\"/themes\";s:18:\"material-design-wp\";s:7:\"/themes\";s:13:\"new-blog-lite\";s:7:\"/themes\";s:8:\"new-blog\";s:7:\"/themes\";s:16:\"simple-bootstrap\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:20:\"wp-bootstrap-starter\";s:7:\"/themes\";}', 'no'),
(490, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/en_GB/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"en_GB\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/en_GB/wordpress-5.5.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1600593537;s:15:\"version_checked\";s:5:\"5.5.1\";s:12:\"translations\";a:0:{}}', 'no'),
(491, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1600593538;s:7:\"checked\";a:9:{s:13:\"bootstrapfast\";s:5:\"1.0.6\";s:18:\"material-design-wp\";s:5:\"1.5.6\";s:13:\"new-blog-lite\";s:5:\"1.0.2\";s:8:\"new-blog\";s:5:\"1.2.8\";s:16:\"simple-bootstrap\";s:5:\"2.0.6\";s:14:\"twentynineteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"2.4\";s:12:\"twentytwenty\";s:3:\"1.5\";s:20:\"wp-bootstrap-starter\";s:5:\"3.3.3\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:9:{s:13:\"bootstrapfast\";a:6:{s:5:\"theme\";s:13:\"bootstrapfast\";s:11:\"new_version\";s:5:\"1.0.6\";s:3:\"url\";s:43:\"https://wordpress.org/themes/bootstrapfast/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/bootstrapfast.1.0.6.zip\";s:8:\"requires\";s:3:\"4.0\";s:12:\"requires_php\";b:0;}s:18:\"material-design-wp\";a:6:{s:5:\"theme\";s:18:\"material-design-wp\";s:11:\"new_version\";s:5:\"1.5.6\";s:3:\"url\";s:48:\"https://wordpress.org/themes/material-design-wp/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/theme/material-design-wp.1.5.6.zip\";s:8:\"requires\";s:3:\"4.0\";s:12:\"requires_php\";b:0;}s:13:\"new-blog-lite\";a:6:{s:5:\"theme\";s:13:\"new-blog-lite\";s:11:\"new_version\";s:5:\"1.0.2\";s:3:\"url\";s:43:\"https://wordpress.org/themes/new-blog-lite/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/new-blog-lite.1.0.2.zip\";s:8:\"requires\";s:3:\"4.5\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:8:\"new-blog\";a:6:{s:5:\"theme\";s:8:\"new-blog\";s:11:\"new_version\";s:5:\"1.2.8\";s:3:\"url\";s:38:\"https://wordpress.org/themes/new-blog/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/theme/new-blog.1.2.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:3:\"5.6\";}s:16:\"simple-bootstrap\";a:6:{s:5:\"theme\";s:16:\"simple-bootstrap\";s:11:\"new_version\";s:5:\"2.0.6\";s:3:\"url\";s:46:\"https://wordpress.org/themes/simple-bootstrap/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/theme/simple-bootstrap.2.0.6.zip\";s:8:\"requires\";s:3:\"5.0\";s:12:\"requires_php\";s:3:\"5.6\";}s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.7.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:20:\"wp-bootstrap-starter\";a:6:{s:5:\"theme\";s:20:\"wp-bootstrap-starter\";s:11:\"new_version\";s:5:\"3.3.3\";s:3:\"url\";s:50:\"https://wordpress.org/themes/wp-bootstrap-starter/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/theme/wp-bootstrap-starter.3.3.3.zip\";s:8:\"requires\";s:3:\"4.0\";s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}}', 'no'),
(492, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1600593539;s:7:\"checked\";a:7:{s:19:\"akismet/akismet.php\";s:5:\"4.1.6\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.2.2\";s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";s:8:\"1.2.4.11\";s:9:\"hello.php\";s:5:\"1.7.2\";s:24:\"simple-history/index.php\";s:6:\"2.37.2\";s:40:\"tag-list-widget/taxonomy-list-widget.php\";s:5:\"1.3.1\";s:24:\"wpforms-lite/wpforms.php\";s:7:\"1.6.2.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.2.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.2.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/contact-form-cfdb7\";s:4:\"slug\";s:18:\"contact-form-cfdb7\";s:6:\"plugin\";s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";s:11:\"new_version\";s:8:\"1.2.4.11\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/contact-form-cfdb7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-cfdb7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/contact-form-cfdb7/assets/icon-256x256.png?rev=1619878\";s:2:\"1x\";s:71:\"https://ps.w.org/contact-form-cfdb7/assets/icon-128x128.png?rev=1619878\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/contact-form-cfdb7/assets/banner-772x250.png?rev=1619902\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:24:\"simple-history/index.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/simple-history\";s:4:\"slug\";s:14:\"simple-history\";s:6:\"plugin\";s:24:\"simple-history/index.php\";s:11:\"new_version\";s:6:\"2.37.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/simple-history/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/simple-history.2.37.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/simple-history/assets/icon.svg?rev=1044051\";s:3:\"svg\";s:59:\"https://ps.w.org/simple-history/assets/icon.svg?rev=1044051\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/simple-history/assets/banner-772x250.png?rev=1045523\";}s:11:\"banners_rtl\";a:0:{}}s:40:\"tag-list-widget/taxonomy-list-widget.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/tag-list-widget\";s:4:\"slug\";s:15:\"tag-list-widget\";s:6:\"plugin\";s:40:\"tag-list-widget/taxonomy-list-widget.php\";s:11:\"new_version\";s:5:\"1.3.1\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/tag-list-widget/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/tag-list-widget.1.3.1.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:59:\"https://s.w.org/plugins/geopattern-icon/tag-list-widget.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:24:\"wpforms-lite/wpforms.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/wpforms-lite\";s:4:\"slug\";s:12:\"wpforms-lite\";s:6:\"plugin\";s:24:\"wpforms-lite/wpforms.php\";s:11:\"new_version\";s:7:\"1.6.2.3\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wpforms-lite/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wpforms-lite.1.6.2.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wpforms-lite/assets/icon-256x256.png?rev=1371112\";s:2:\"1x\";s:65:\"https://ps.w.org/wpforms-lite/assets/icon-128x128.png?rev=1371112\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wpforms-lite/assets/banner-1544x500.png?rev=1371112\";s:2:\"1x\";s:67:\"https://ps.w.org/wpforms-lite/assets/banner-772x250.png?rev=1371112\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(31, 18, '_wp_attached_file', '2020/09/2020-landscape-1-2.png'),
(32, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:769;s:4:\"file\";s:30:\"2020/09/2020-landscape-1-2.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"2020-landscape-1-2-300x192.png\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"2020-landscape-1-2-1024x656.png\";s:5:\"width\";i:1024;s:6:\"height\";i:656;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"2020-landscape-1-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"2020-landscape-1-2-768x492.png\";s:5:\"width\";i:768;s:6:\"height\";i:492;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(33, 18, '_starter_content_theme', 'twentytwenty'),
(35, 19, '_thumbnail_id', '18'),
(37, 19, '_customize_changeset_uuid', 'd1a3fc67-3540-4d65-9f96-44b2f86d9734'),
(39, 20, '_customize_changeset_uuid', 'd1a3fc67-3540-4d65-9f96-44b2f86d9734'),
(41, 21, '_customize_changeset_uuid', 'd1a3fc67-3540-4d65-9f96-44b2f86d9734'),
(43, 22, '_customize_changeset_uuid', 'd1a3fc67-3540-4d65-9f96-44b2f86d9734'),
(44, 24, '_wp_attached_file', '2020/09/IMG_20181108_213026.png'),
(45, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1080;s:6:\"height\";i:1080;s:4:\"file\";s:31:\"2020/09/IMG_20181108_213026.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"IMG_20181108_213026-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"IMG_20181108_213026-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"IMG_20181108_213026-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"IMG_20181108_213026-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(46, 25, '_wp_attached_file', '2020/09/cropped-IMG_20181108_213026.png'),
(47, 25, '_wp_attachment_context', 'site-icon'),
(48, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:39:\"2020/09/cropped-IMG_20181108_213026.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"cropped-IMG_20181108_213026-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"cropped-IMG_20181108_213026-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:39:\"cropped-IMG_20181108_213026-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:39:\"cropped-IMG_20181108_213026-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:39:\"cropped-IMG_20181108_213026-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:37:\"cropped-IMG_20181108_213026-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(49, 23, '_edit_lock', '1599416581:1'),
(50, 30, '_menu_item_type', 'custom'),
(51, 30, '_menu_item_menu_item_parent', '0'),
(52, 30, '_menu_item_object_id', '30'),
(53, 30, '_menu_item_object', 'custom'),
(54, 30, '_menu_item_target', ''),
(55, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(56, 30, '_menu_item_xfn', ''),
(57, 30, '_menu_item_url', 'http://localhost/wordpress/'),
(58, 31, '_menu_item_type', 'post_type'),
(59, 31, '_menu_item_menu_item_parent', '0'),
(60, 31, '_menu_item_object_id', '20'),
(61, 31, '_menu_item_object', 'page'),
(62, 31, '_menu_item_target', ''),
(63, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(64, 31, '_menu_item_xfn', ''),
(65, 31, '_menu_item_url', ''),
(66, 32, '_menu_item_type', 'post_type'),
(67, 32, '_menu_item_menu_item_parent', '0'),
(68, 32, '_menu_item_object_id', '22'),
(69, 32, '_menu_item_object', 'page'),
(70, 32, '_menu_item_target', ''),
(71, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(72, 32, '_menu_item_xfn', ''),
(73, 32, '_menu_item_url', ''),
(74, 33, '_menu_item_type', 'post_type'),
(75, 33, '_menu_item_menu_item_parent', '0'),
(76, 33, '_menu_item_object_id', '21'),
(77, 33, '_menu_item_object', 'page'),
(78, 33, '_menu_item_target', ''),
(79, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(80, 33, '_menu_item_xfn', ''),
(81, 33, '_menu_item_url', ''),
(82, 34, '_menu_item_type', 'custom'),
(83, 34, '_menu_item_menu_item_parent', '0'),
(84, 34, '_menu_item_object_id', '34'),
(85, 34, '_menu_item_object', 'custom'),
(86, 34, '_menu_item_target', ''),
(87, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(88, 34, '_menu_item_xfn', ''),
(89, 34, '_menu_item_url', 'http://localhost/wordpress/'),
(90, 35, '_menu_item_type', 'post_type'),
(91, 35, '_menu_item_menu_item_parent', '0'),
(92, 35, '_menu_item_object_id', '20'),
(93, 35, '_menu_item_object', 'page'),
(94, 35, '_menu_item_target', ''),
(95, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(96, 35, '_menu_item_xfn', ''),
(97, 35, '_menu_item_url', ''),
(98, 36, '_menu_item_type', 'post_type'),
(99, 36, '_menu_item_menu_item_parent', '0'),
(100, 36, '_menu_item_object_id', '22'),
(101, 36, '_menu_item_object', 'page'),
(102, 36, '_menu_item_target', ''),
(103, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(104, 36, '_menu_item_xfn', ''),
(105, 36, '_menu_item_url', ''),
(106, 37, '_menu_item_type', 'post_type'),
(107, 37, '_menu_item_menu_item_parent', '0'),
(108, 37, '_menu_item_object_id', '21'),
(109, 37, '_menu_item_object', 'page'),
(110, 37, '_menu_item_target', ''),
(111, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(112, 37, '_menu_item_xfn', ''),
(113, 37, '_menu_item_url', ''),
(114, 38, '_menu_item_type', 'custom'),
(115, 38, '_menu_item_menu_item_parent', '0'),
(116, 38, '_menu_item_object_id', '38'),
(117, 38, '_menu_item_object', 'custom'),
(118, 38, '_menu_item_target', ''),
(119, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(120, 38, '_menu_item_xfn', ''),
(121, 38, '_menu_item_url', 'https://www.yelp.com'),
(122, 39, '_menu_item_type', 'custom'),
(123, 39, '_menu_item_menu_item_parent', '0'),
(124, 39, '_menu_item_object_id', '39'),
(125, 39, '_menu_item_object', 'custom'),
(126, 39, '_menu_item_target', ''),
(127, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(128, 39, '_menu_item_xfn', ''),
(129, 39, '_menu_item_url', 'https://www.facebook.com/wordpress'),
(130, 40, '_menu_item_type', 'custom'),
(131, 40, '_menu_item_menu_item_parent', '0'),
(132, 40, '_menu_item_object_id', '40'),
(133, 40, '_menu_item_object', 'custom'),
(134, 40, '_menu_item_target', ''),
(135, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(136, 40, '_menu_item_xfn', ''),
(137, 40, '_menu_item_url', 'https://twitter.com/wordpress'),
(138, 41, '_menu_item_type', 'custom'),
(139, 41, '_menu_item_menu_item_parent', '0'),
(140, 41, '_menu_item_object_id', '41'),
(141, 41, '_menu_item_object', 'custom'),
(142, 41, '_menu_item_target', ''),
(143, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(144, 41, '_menu_item_xfn', ''),
(145, 41, '_menu_item_url', 'https://www.instagram.com/explore/tags/wordcamp/'),
(146, 42, '_menu_item_type', 'custom'),
(147, 42, '_menu_item_menu_item_parent', '0'),
(148, 42, '_menu_item_object_id', '42'),
(149, 42, '_menu_item_object', 'custom'),
(150, 42, '_menu_item_target', ''),
(151, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(152, 42, '_menu_item_xfn', ''),
(153, 42, '_menu_item_url', 'mailto:wordpress@example.com'),
(154, 23, '_wp_trash_meta_status', 'publish'),
(155, 23, '_wp_trash_meta_time', '1599416588'),
(156, 43, '_wp_attached_file', '2020/09/cropped-IMG_20181108_213026-1.png'),
(157, 43, '_wp_attachment_context', 'custom-logo'),
(158, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1080;s:6:\"height\";i:1014;s:4:\"file\";s:41:\"2020/09/cropped-IMG_20181108_213026-1.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"cropped-IMG_20181108_213026-1-300x282.png\";s:5:\"width\";i:300;s:6:\"height\";i:282;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"cropped-IMG_20181108_213026-1-1024x961.png\";s:5:\"width\";i:1024;s:6:\"height\";i:961;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"cropped-IMG_20181108_213026-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"cropped-IMG_20181108_213026-1-768x721.png\";s:5:\"width\";i:768;s:6:\"height\";i:721;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(159, 44, '_wp_trash_meta_status', 'publish'),
(160, 44, '_wp_trash_meta_time', '1599416641'),
(162, 45, '_wp_trash_meta_status', 'publish'),
(163, 45, '_wp_trash_meta_time', '1599418163'),
(164, 46, '_edit_lock', '1600027167:1'),
(165, 48, '_wp_attached_file', '2020/09/20191113_130240.png'),
(166, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:1440;s:4:\"file\";s:27:\"2020/09/20191113_130240.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"20191113_130240-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"20191113_130240-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"20191113_130240-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"20191113_130240-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:29:\"20191113_130240-1200x1200.png\";s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(167, 51, '_menu_item_type', 'post_type'),
(168, 51, '_menu_item_menu_item_parent', '0'),
(169, 51, '_menu_item_object_id', '46'),
(170, 51, '_menu_item_object', 'page'),
(171, 51, '_menu_item_target', ''),
(172, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(173, 51, '_menu_item_xfn', ''),
(174, 51, '_menu_item_url', ''),
(176, 52, '_menu_item_type', 'post_type'),
(177, 52, '_menu_item_menu_item_parent', '0'),
(178, 52, '_menu_item_object_id', '2'),
(179, 52, '_menu_item_object', 'page'),
(180, 52, '_menu_item_target', ''),
(181, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(182, 52, '_menu_item_xfn', ''),
(183, 52, '_menu_item_url', ''),
(185, 53, '_edit_lock', '1600025742:1'),
(186, 54, '_menu_item_type', 'post_type'),
(187, 54, '_menu_item_menu_item_parent', '0'),
(188, 54, '_menu_item_object_id', '53'),
(189, 54, '_menu_item_object', 'page'),
(190, 54, '_menu_item_target', ''),
(191, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(192, 54, '_menu_item_xfn', ''),
(193, 54, '_menu_item_url', ''),
(196, 57, '_wp_trash_meta_status', 'publish'),
(197, 57, '_wp_trash_meta_time', '1599990186'),
(198, 58, '_edit_lock', '1599992708:1'),
(201, 22, '_edit_lock', '1599992778:1'),
(202, 60, '_wp_trash_meta_status', 'publish'),
(203, 60, '_wp_trash_meta_time', '1599992909'),
(204, 61, '_edit_lock', '1599993289:1'),
(205, 61, '_wp_trash_meta_status', 'publish'),
(206, 61, '_wp_trash_meta_time', '1599993315'),
(207, 62, '_edit_lock', '1600028400:1'),
(209, 64, '_edit_lock', '1600023332:1'),
(211, 66, '_menu_item_type', 'taxonomy'),
(212, 66, '_menu_item_menu_item_parent', '0'),
(213, 66, '_menu_item_object_id', '9'),
(214, 66, '_menu_item_object', 'category'),
(215, 66, '_menu_item_target', ''),
(216, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(217, 66, '_menu_item_xfn', ''),
(218, 66, '_menu_item_url', ''),
(220, 67, '_menu_item_type', 'taxonomy'),
(221, 67, '_menu_item_menu_item_parent', '66'),
(222, 67, '_menu_item_object_id', '10'),
(223, 67, '_menu_item_object', 'category'),
(224, 67, '_menu_item_target', ''),
(225, 67, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(226, 67, '_menu_item_xfn', ''),
(227, 67, '_menu_item_url', ''),
(229, 68, '_menu_item_type', 'taxonomy'),
(230, 68, '_menu_item_menu_item_parent', '66'),
(231, 68, '_menu_item_object_id', '11'),
(232, 68, '_menu_item_object', 'category'),
(233, 68, '_menu_item_target', ''),
(234, 68, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(235, 68, '_menu_item_xfn', ''),
(236, 68, '_menu_item_url', ''),
(238, 69, '_edit_lock', '1600015525:1'),
(246, 78, '_menu_item_type', 'custom'),
(247, 78, '_menu_item_menu_item_parent', '0'),
(248, 78, '_menu_item_object_id', '78'),
(249, 78, '_menu_item_object', 'custom'),
(250, 78, '_menu_item_target', ''),
(251, 78, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(252, 78, '_menu_item_xfn', ''),
(253, 78, '_menu_item_url', 'http://localhost/wordpress/wp-login.php?action=login'),
(255, 79, '_menu_item_type', 'custom'),
(256, 79, '_menu_item_menu_item_parent', '0'),
(257, 79, '_menu_item_object_id', '79'),
(258, 79, '_menu_item_object', 'custom'),
(259, 79, '_menu_item_target', ''),
(260, 79, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(261, 79, '_menu_item_xfn', ''),
(262, 79, '_menu_item_url', 'http://localhost/wordpress/wp-login.php?action=logout'),
(264, 80, '_menu_item_type', 'custom'),
(265, 80, '_menu_item_menu_item_parent', '0'),
(266, 80, '_menu_item_object_id', '80'),
(267, 80, '_menu_item_object', 'custom'),
(268, 80, '_menu_item_target', ''),
(269, 80, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(270, 80, '_menu_item_xfn', ''),
(271, 80, '_menu_item_url', 'http://localhost/wordpress/wp-login.php?action=register'),
(273, 20, '_edit_lock', '1600022918:1'),
(275, 64, '_oembed_43a2ed637f924bbbda20656fc995e240', '{{unknown}}'),
(277, 88, 'wpforms_entries_count', '1'),
(278, 90, '_form', '<label> Your Name (required)\n    [text* your-name \"Marja\"] </label>\n\n<label> Subject\n    [text your-subject \"Testiviesti\"] </label>\n\n<label> Your Message\n    [textarea your-message \"Testaan Contact Form 7 -pluginin perustoiminnallisuutta...\"] </label>\n\n[select vari \"Punainen\" \"Keltainen\" \"Sininen\"]\n\n[submit \"Send\"]'),
(279, 90, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:33:\"Marjan Wordpress \"[your-subject]\"\";s:6:\"sender\";s:42:\"Marjan Wordpress <marja.jambeck@gmail.com>\";s:9:\"recipient\";s:23:\"marja.jambeck@gmail.com\";s:4:\"body\";s:181:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Marjan Wordpress (http://localhost/wordpress)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(280, 90, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:33:\"Marjan Wordpress \"[your-subject]\"\";s:6:\"sender\";s:42:\"Marjan Wordpress <marja.jambeck@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:123:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Marjan Wordpress (http://localhost/wordpress)\";s:18:\"additional_headers\";s:33:\"Reply-To: marja.jambeck@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(281, 90, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(282, 90, '_additional_settings', ''),
(283, 90, '_locale', 'en_GB'),
(285, 90, '_config_errors', 'a:1:{s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:51:\"Invalid mailbox syntax is used in the %name% field.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(286, 92, '_edit_lock', '1600027512:1'),
(287, 93, '_wp_attached_file', '2020/09/IMG_20170525_162251.png'),
(288, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1080;s:6:\"height\";i:1077;s:4:\"file\";s:31:\"2020/09/IMG_20170525_162251.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"IMG_20170525_162251-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"IMG_20170525_162251-1024x1021.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1021;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"IMG_20170525_162251-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"IMG_20170525_162251-768x766.png\";s:5:\"width\";i:768;s:6:\"height\";i:766;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(289, 94, '_wp_attached_file', '2020/09/IMG_20181014_131655.png'),
(290, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1080;s:6:\"height\";i:1076;s:4:\"file\";s:31:\"2020/09/IMG_20181014_131655.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"IMG_20181014_131655-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"IMG_20181014_131655-1024x1020.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1020;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"IMG_20181014_131655-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"IMG_20181014_131655-768x765.png\";s:5:\"width\";i:768;s:6:\"height\";i:765;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-09-06 18:15:55', '2020-09-06 17:15:55', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-09-06 18:15:55', '2020-09-06 17:15:55', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 2),
(2, 1, '2020-09-06 18:15:55', '2020-09-06 17:15:55', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-09-06 18:15:55', '2020-09-06 17:15:55', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-09-06 18:15:55', '2020-09-06 17:15:55', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymised string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service Privacy Policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognise and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-09-06 18:15:55', '2020-09-06 17:15:55', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(18, 1, '2020-09-06 19:22:57', '2020-09-06 18:22:57', '', 'The New UMoMA Opens its Doors', '', 'inherit', 'open', 'closed', '', 'the-new-umoma-opens-its-doors', '', '', '2020-09-06 19:22:57', '2020-09-06 18:22:57', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/09/2020-landscape-1-2.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2020-09-06 19:22:57', '2020-09-06 18:22:57', '<!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">The premier destination for modern art in Northern Sweden. Open from 10 AM to 6 PM every day during the summer months.</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:columns {\"align\":\"wide\"} --><div class=\"wp-block-columns alignwide\"><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-1.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Works and Days</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1 August - 1 December</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-3.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Theatre of Operations</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1 October - 1 December</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>The Life I Deserve</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1 August - 1 December</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-4.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>From Signac to Matisse</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1 October - 1 December</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --></div><!-- /wp:columns --><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-landscape-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\",\"textColor\":\"accent\"} --><h2 class=\"has-accent-color has-text-align-center\">\"Cyborgs, as the philosopher Donna Haraway established, are not reverent. They do not remember the cosmos\".</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:paragraph {\"dropCap\":true} --><p class=\"has-drop-cap\">With seven floors of striking architecture, UMoMA shows exhibitions of international contemporary art, sometimes along with art historical retrospectives. Existential, political and philosophical issues are intrinsic to our programme. As a visitor, you are invited to guided tours, artist talks, lectures, film screenings and other events with free admission.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>The exhibitions are produced by UMoMA in collaboration with artists and museums around the world and they often attract international attention. UMoMA has received a Special Commendation from the European Museum of the Year, and was among the top candidates for the Swedish Museum of the Year Award as well as for the Council of Europe Museum Prize.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p></p><!-- /wp:paragraph --><!-- wp:group {\"customBackgroundColor\":\"#ffffff\",\"align\":\"wide\"} --><div class=\"wp-block-group alignwide has-background\" style=\"background-color:#ffffff\"><div class=\"wp-block-group__inner-container\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">Become a Member and Get Exclusive Offers!</h2><!-- /wp:heading --><!-- wp:paragraph {\"align\":\"center\"} --><p class=\"has-text-align-center\">Members get access to exclusive exhibits and sales. Our memberships cost $99.99 and are billed annually.</p><!-- /wp:paragraph --><!-- wp:button {\"align\":\"center\"} --><div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Join the Club</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div></div><!-- /wp:group --><!-- wp:gallery {\"ids\":[39,38],\"align\":\"wide\"} --><figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" alt=\"\" data-id=\"39\" data-full-url=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" data-link=\"assets/images/2020-square-2/\" class=\"wp-image-39\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" alt=\"\" data-id=\"38\" data-full-url=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" data-link=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1/\" class=\"wp-image-38\"/></figure></li></ul></figure><!-- /wp:gallery -->', 'The new UMoMA opens its doors', '', 'publish', 'closed', 'closed', '', 'the-new-umoma-opens-its-doors-2', '', '', '2020-09-06 19:22:57', '2020-09-06 18:22:57', '', 0, 'http://localhost/wordpress/?page_id=19', 0, 'page', '', 0),
(20, 1, '2020-09-06 19:22:58', '2020-09-06 18:22:58', '<!-- wp:paragraph -->\n<p>You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.</p>\n<!-- /wp:paragraph -->', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2020-09-06 19:22:58', '2020-09-06 18:22:58', '', 0, 'http://localhost/wordpress/?page_id=20', 0, 'page', '', 0),
(21, 1, '2020-09-06 19:22:58', '2020-09-06 18:22:58', '<!-- wp:paragraph -->\n<p>This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2020-09-06 19:22:58', '2020-09-06 18:22:58', '', 0, 'http://localhost/wordpress/?page_id=21', 0, 'page', '', 0),
(22, 1, '2020-09-06 19:22:58', '2020-09-06 18:22:58', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2020-09-06 19:22:58', '2020-09-06 18:22:58', '', 0, 'http://localhost/wordpress/?page_id=22', 0, 'page', '', 0),
(23, 1, '2020-09-06 19:22:57', '2020-09-06 18:22:57', '{\n    \"widget_text[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"9ce9d8ada8b056610ba654e79b11014f\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-06 18:17:46\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-06 18:17:46\"\n    },\n    \"widget_text[5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVVMiO3M6NDoidGV4dCI7czoxNTk6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTG9uZG9uIEVDMSA0VUsKCjxzdHJvbmc+SG91cnM8L3N0cm9uZz4KTW9uZGF5Jm5kYXNoO0ZyaWRheTogMDk6MDAmbmRhc2g7MTc6MDAKU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMCZuZGFzaDsxNTowMCI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find US\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"9a09a5b6fe6d4b1a4e5b9c8159daa737\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-06 18:17:46\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-5\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-06 18:17:46\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            18,\n            19,\n            20,\n            21,\n            22\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-06 18:17:46\"\n    },\n    \"nav_menu[-1]\": {\n        \"value\": {\n            \"name\": \"Primary\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-06 18:22:57\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/wordpress/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-06 18:22:57\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"value\": {\n            \"object_id\": 20,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"About\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"About\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-06 18:22:57\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"value\": {\n            \"object_id\": 22,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Blog\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-06 18:22:57\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"value\": {\n            \"object_id\": 21,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Contact\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-06 18:22:57\"\n    },\n    \"twentytwenty::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-06 18:17:46\"\n    },\n    \"nav_menu[-5]\": {\n        \"value\": {\n            \"name\": \"Primary\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-06 18:22:57\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/wordpress/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-06 18:22:57\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"value\": {\n            \"object_id\": 20,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"About\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"About\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-06 18:22:57\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"value\": {\n            \"object_id\": 22,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Blog\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-06 18:22:57\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"value\": {\n            \"object_id\": 21,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Contact\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-06 18:22:57\"\n    },\n    \"twentytwenty::nav_menu_locations[expanded]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-06 18:17:46\"\n    },\n    \"nav_menu[-9]\": {\n        \"value\": {\n            \"name\": \"Social Links Menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-06 18:22:57\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-06 18:22:57\"\n    },\n    \"nav_menu_item[-10]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-06 18:22:57\"\n    },\n    \"nav_menu_item[-11]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-06 18:22:57\"\n    },\n    \"nav_menu_item[-12]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-06 18:22:57\"\n    },\n    \"nav_menu_item[-13]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"custom\",\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-06 18:22:57\"\n    },\n    \"twentytwenty::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-06 18:17:46\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-06 18:17:46\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 19,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-06 18:17:46\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 22,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-06 18:17:46\"\n    },\n    \"site_icon\": {\n        \"value\": 25,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-06 18:21:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd1a3fc67-3540-4d65-9f96-44b2f86d9734', '', '', '2020-09-06 19:22:57', '2020-09-06 18:22:57', '', 0, 'http://localhost/wordpress/?p=23', 0, 'customize_changeset', '', 0),
(24, 1, '2020-09-06 19:20:01', '2020-09-06 18:20:01', '', 'IMG_20181108_213026', '', 'inherit', 'open', 'closed', '', 'img_20181108_213026', '', '', '2020-09-06 19:20:01', '2020-09-06 18:20:01', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/09/IMG_20181108_213026.png', 0, 'attachment', 'image/png', 0),
(25, 1, '2020-09-06 19:20:24', '2020-09-06 18:20:24', 'http://localhost/wordpress/wp-content/uploads/2020/09/cropped-IMG_20181108_213026.png', 'cropped-IMG_20181108_213026.png', '', 'inherit', 'open', 'closed', '', 'cropped-img_20181108_213026-png', '', '', '2020-09-06 19:20:24', '2020-09-06 18:20:24', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/09/cropped-IMG_20181108_213026.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2020-09-06 19:22:57', '2020-09-06 18:22:57', '<!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">The premier destination for modern art in Northern Sweden. Open from 10 AM to 6 PM every day during the summer months.</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:columns {\"align\":\"wide\"} --><div class=\"wp-block-columns alignwide\"><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-1.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Works and Days</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1 August - 1 December</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-3.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Theatre of Operations</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1 October - 1 December</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>The Life I Deserve</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1 August - 1 December</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-4.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>From Signac to Matisse</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1 October - 1 December</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --></div><!-- /wp:columns --><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-landscape-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\",\"textColor\":\"accent\"} --><h2 class=\"has-accent-color has-text-align-center\">\"Cyborgs, as the philosopher Donna Haraway established, are not reverent. They do not remember the cosmos\".</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:paragraph {\"dropCap\":true} --><p class=\"has-drop-cap\">With seven floors of striking architecture, UMoMA shows exhibitions of international contemporary art, sometimes along with art historical retrospectives. Existential, political and philosophical issues are intrinsic to our programme. As a visitor, you are invited to guided tours, artist talks, lectures, film screenings and other events with free admission.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>The exhibitions are produced by UMoMA in collaboration with artists and museums around the world and they often attract international attention. UMoMA has received a Special Commendation from the European Museum of the Year, and was among the top candidates for the Swedish Museum of the Year Award as well as for the Council of Europe Museum Prize.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p></p><!-- /wp:paragraph --><!-- wp:group {\"customBackgroundColor\":\"#ffffff\",\"align\":\"wide\"} --><div class=\"wp-block-group alignwide has-background\" style=\"background-color:#ffffff\"><div class=\"wp-block-group__inner-container\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">Become a Member and Get Exclusive Offers!</h2><!-- /wp:heading --><!-- wp:paragraph {\"align\":\"center\"} --><p class=\"has-text-align-center\">Members get access to exclusive exhibits and sales. Our memberships cost $99.99 and are billed annually.</p><!-- /wp:paragraph --><!-- wp:button {\"align\":\"center\"} --><div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Join the Club</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div></div><!-- /wp:group --><!-- wp:gallery {\"ids\":[39,38],\"align\":\"wide\"} --><figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" alt=\"\" data-id=\"39\" data-full-url=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" data-link=\"assets/images/2020-square-2/\" class=\"wp-image-39\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" alt=\"\" data-id=\"38\" data-full-url=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" data-link=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1/\" class=\"wp-image-38\"/></figure></li></ul></figure><!-- /wp:gallery -->', 'The new UMoMA opens its doors', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-09-06 19:22:57', '2020-09-06 18:22:57', '', 19, 'http://localhost/wordpress/2020/09/06/19-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2020-09-06 19:22:58', '2020-09-06 18:22:58', '<!-- wp:paragraph -->\n<p>You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.</p>\n<!-- /wp:paragraph -->', 'About', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2020-09-06 19:22:58', '2020-09-06 18:22:58', '', 20, 'http://localhost/wordpress/2020/09/06/20-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2020-09-06 19:22:58', '2020-09-06 18:22:58', '<!-- wp:paragraph -->\n<p>This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2020-09-06 19:22:58', '2020-09-06 18:22:58', '', 21, 'http://localhost/wordpress/2020/09/06/21-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2020-09-06 19:22:58', '2020-09-06 18:22:58', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2020-09-06 19:22:58', '2020-09-06 18:22:58', '', 22, 'http://localhost/wordpress/2020/09/06/22-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2020-09-06 19:22:59', '2020-09-06 18:22:59', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-09-06 19:22:59', '2020-09-06 18:22:59', '', 0, 'http://localhost/wordpress/2020/09/06/home/', 0, 'nav_menu_item', '', 0),
(31, 1, '2020-09-06 19:23:00', '2020-09-06 18:23:00', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2020-09-06 19:23:00', '2020-09-06 18:23:00', '', 0, 'http://localhost/wordpress/2020/09/06/31/', 1, 'nav_menu_item', '', 0),
(32, 1, '2020-09-06 19:23:00', '2020-09-06 18:23:00', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2020-09-06 19:23:00', '2020-09-06 18:23:00', '', 0, 'http://localhost/wordpress/2020/09/06/32/', 2, 'nav_menu_item', '', 0),
(33, 1, '2020-09-06 19:23:01', '2020-09-06 18:23:01', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2020-09-06 19:23:01', '2020-09-06 18:23:01', '', 0, 'http://localhost/wordpress/2020/09/06/33/', 3, 'nav_menu_item', '', 0),
(34, 1, '2020-09-06 19:23:02', '2020-09-06 18:23:02', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home-2', '', '', '2020-09-06 19:23:02', '2020-09-06 18:23:02', '', 0, 'http://localhost/wordpress/2020/09/06/home-2/', 0, 'nav_menu_item', '', 0),
(35, 1, '2020-09-06 19:23:02', '2020-09-06 18:23:02', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2020-09-06 19:23:02', '2020-09-06 18:23:02', '', 0, 'http://localhost/wordpress/2020/09/06/35/', 1, 'nav_menu_item', '', 0),
(36, 1, '2020-09-06 19:23:03', '2020-09-06 18:23:03', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2020-09-06 19:23:03', '2020-09-06 18:23:03', '', 0, 'http://localhost/wordpress/2020/09/06/36/', 2, 'nav_menu_item', '', 0),
(37, 1, '2020-09-06 19:23:03', '2020-09-06 18:23:03', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2020-09-06 19:23:03', '2020-09-06 18:23:03', '', 0, 'http://localhost/wordpress/2020/09/06/37/', 3, 'nav_menu_item', '', 0),
(38, 1, '2020-09-06 19:23:05', '2020-09-06 18:23:05', '', 'Yelp', '', 'publish', 'closed', 'closed', '', 'yelp', '', '', '2020-09-06 19:23:05', '2020-09-06 18:23:05', '', 0, 'http://localhost/wordpress/2020/09/06/yelp/', 0, 'nav_menu_item', '', 0),
(39, 1, '2020-09-06 19:23:05', '2020-09-06 18:23:05', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2020-09-06 19:23:05', '2020-09-06 18:23:05', '', 0, 'http://localhost/wordpress/2020/09/06/facebook/', 1, 'nav_menu_item', '', 0),
(40, 1, '2020-09-06 19:23:06', '2020-09-06 18:23:06', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2020-09-06 19:23:06', '2020-09-06 18:23:06', '', 0, 'http://localhost/wordpress/2020/09/06/twitter/', 2, 'nav_menu_item', '', 0),
(41, 1, '2020-09-06 19:23:06', '2020-09-06 18:23:06', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2020-09-06 19:23:06', '2020-09-06 18:23:06', '', 0, 'http://localhost/wordpress/2020/09/06/instagram/', 3, 'nav_menu_item', '', 0),
(42, 1, '2020-09-06 19:23:07', '2020-09-06 18:23:07', '', 'Email', '', 'publish', 'closed', 'closed', '', 'email', '', '', '2020-09-06 19:23:07', '2020-09-06 18:23:07', '', 0, 'http://localhost/wordpress/2020/09/06/email/', 4, 'nav_menu_item', '', 0),
(43, 1, '2020-09-06 19:23:51', '2020-09-06 18:23:51', 'http://localhost/wordpress/wp-content/uploads/2020/09/cropped-IMG_20181108_213026-1.png', 'cropped-IMG_20181108_213026-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-img_20181108_213026-1-png', '', '', '2020-09-06 19:23:51', '2020-09-06 18:23:51', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/09/cropped-IMG_20181108_213026-1.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2020-09-06 19:24:01', '2020-09-06 18:24:01', '{\n    \"twentytwenty::custom_logo\": {\n        \"value\": 43,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-06 18:24:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '39e9fe89-894b-4c64-9e7b-b57e13e33cb7', '', '', '2020-09-06 19:24:01', '2020-09-06 18:24:01', '', 0, 'http://localhost/wordpress/2020/09/06/39e9fe89-894b-4c64-9e7b-b57e13e33cb7/', 0, 'customize_changeset', '', 0),
(45, 1, '2020-09-06 19:49:23', '2020-09-06 18:49:23', '{\n    \"twentytwenty::header_footer_background_color\": {\n        \"value\": \"#7a0202\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-06 18:49:23\"\n    },\n    \"twentytwenty::accent_accessible_colors\": {\n        \"value\": {\n            \"content\": {\n                \"text\": \"#000000\",\n                \"accent\": \"#cd2653\",\n                \"secondary\": \"#6d6d6d\",\n                \"borders\": \"#dcd7ca\"\n            },\n            \"header-footer\": {\n                \"text\": \"#ffffff\",\n                \"accent\": \"#e886a0\",\n                \"background\": \"#7a0202\",\n                \"borders\": \"#a30000\",\n                \"secondary\": \"#e0a7a7\"\n            }\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-06 18:49:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bd96d55b-3e13-4adc-ad0b-9f8ede1b2f07', '', '', '2020-09-06 19:49:23', '2020-09-06 18:49:23', '', 0, 'http://localhost/wordpress/2020/09/06/bd96d55b-3e13-4adc-ad0b-9f8ede1b2f07/', 0, 'customize_changeset', '', 0),
(46, 1, '2020-09-06 20:38:29', '2020-09-06 19:38:29', '<!-- wp:image {\"align\":\"center\",\"id\":48,\"width\":335,\"height\":335,\"sizeSlug\":\"large\",\"className\":\"is-style-rounded\"} -->\n<div class=\"wp-block-image is-style-rounded\"><figure class=\"aligncenter size-large is-resized\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/09/20191113_130240-1024x1024.png\" alt=\"\" class=\"wp-image-48\" width=\"335\" height=\"335\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Tästä käynnistyy WordPressin opettelu.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:wpforms/form-selector {\"formId\":\"88\"} /-->', 'Uusi sivu', '', 'publish', 'closed', 'closed', '', 'uusi-sivu', '', '', '2020-09-13 23:01:49', '2020-09-13 20:01:49', '', 0, 'http://localhost/wordpress/?page_id=46', 0, 'page', '', 0),
(47, 1, '2020-09-06 20:35:17', '2020-09-06 19:35:17', '<!-- wp:paragraph -->\n<p>Tästä käynnistyy WordPressin opettelu.</p>\n<!-- /wp:paragraph -->', 'Uusi sivu', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2020-09-06 20:35:17', '2020-09-06 19:35:17', '', 46, 'http://localhost/wordpress/2020/09/06/46-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2020-09-06 20:36:36', '2020-09-06 19:36:36', '', '20191113_130240', '', 'inherit', 'open', 'closed', '', '20191113_130240', '', '', '2020-09-06 20:36:36', '2020-09-06 19:36:36', '', 46, 'http://localhost/wordpress/wp-content/uploads/2020/09/20191113_130240.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(49, 1, '2020-09-06 20:38:29', '2020-09-06 19:38:29', '<!-- wp:image {\"id\":48,\"width\":335,\"height\":335,\"sizeSlug\":\"large\",\"className\":\"is-style-rounded\"} -->\n<figure class=\"wp-block-image size-large is-resized is-style-rounded\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/09/20191113_130240-1024x1024.png\" alt=\"\" class=\"wp-image-48\" width=\"335\" height=\"335\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Tästä käynnistyy WordPressin opettelu.</p>\n<!-- /wp:paragraph -->', 'Uusi sivu', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2020-09-06 20:38:29', '2020-09-06 19:38:29', '', 46, 'http://localhost/wordpress/2020/09/06/46-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2020-09-06 20:39:15', '2020-09-06 19:39:15', '<!-- wp:image {\"align\":\"center\",\"id\":48,\"width\":335,\"height\":335,\"sizeSlug\":\"large\",\"className\":\"is-style-rounded\"} -->\n<div class=\"wp-block-image is-style-rounded\"><figure class=\"aligncenter size-large is-resized\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/09/20191113_130240-1024x1024.png\" alt=\"\" class=\"wp-image-48\" width=\"335\" height=\"335\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Tästä käynnistyy WordPressin opettelu.</p>\n<!-- /wp:paragraph -->', 'Uusi sivu', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2020-09-06 20:39:15', '2020-09-06 19:39:15', '', 46, 'http://localhost/wordpress/2020/09/06/46-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2020-09-06 20:53:31', '2020-09-06 19:53:31', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2020-09-13 20:00:11', '2020-09-13 17:00:11', '', 0, 'http://localhost/wordpress/?p=51', 1, 'nav_menu_item', '', 0),
(52, 1, '2020-09-06 20:53:31', '2020-09-06 19:53:31', ' ', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2020-09-13 20:00:11', '2020-09-13 17:00:11', '', 0, 'http://localhost/wordpress/?p=52', 2, 'nav_menu_item', '', 0),
(53, 1, '2020-09-06 21:03:11', '2020-09-06 20:03:11', '<!-- wp:paragraph -->\n<p>Lisää sisältöä...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[contact-form-7 id=\"90\" title=\"Contact form 1\"]\n<!-- /wp:shortcode -->', 'Uudempi sivu', '', 'publish', 'closed', 'closed', '', 'uudempi-sivu', '', '', '2020-09-13 22:37:47', '2020-09-13 19:37:47', '', 0, 'http://localhost/wordpress/?page_id=53', 0, 'page', '', 0),
(54, 1, '2020-09-06 21:03:11', '2020-09-06 20:03:11', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2020-09-13 20:00:11', '2020-09-13 17:00:11', '', 0, 'http://localhost/wordpress/2020/09/06/54/', 3, 'nav_menu_item', '', 0),
(55, 1, '2020-09-06 21:03:11', '2020-09-06 20:03:11', '<!-- wp:paragraph -->\n<p>Lisää sisältöä...</p>\n<!-- /wp:paragraph -->', 'Uudempi sivu', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2020-09-06 21:03:11', '2020-09-06 20:03:11', '', 53, 'http://localhost/wordpress/2020/09/06/53-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2020-09-13 10:43:06', '2020-09-13 09:43:06', '{\n    \"material-design-wp::header_banner_visibility\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-13 09:43:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8a33bc58-91c5-4994-8b61-c1678d597da2', '', '', '2020-09-13 10:43:06', '2020-09-13 09:43:06', '', 0, 'http://localhost/wordpress/2020/09/13/8a33bc58-91c5-4994-8b61-c1678d597da2/', 0, 'customize_changeset', '', 0),
(58, 1, '2020-09-13 11:12:41', '2020-09-13 10:12:41', '<!-- wp:image {\"align\":\"left\",\"id\":48,\"width\":321,\"height\":321,\"sizeSlug\":\"large\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large is-resized\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/09/20191113_130240-1024x1024.png\" alt=\"\" class=\"wp-image-48\" width=\"321\" height=\"321\"/><figcaption>Tohtori-kissa</figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mauris risus, convallis eu dolor eget, pellentesque commodo arcu. Curabitur interdum dui quis metus consectetur, a condimentum tortor pellentesque. Nam quis finibus felis, vitae tincidunt neque. Aenean non velit sed augue vulputate tincidunt. Nunc quis nunc mollis, maximus tellus nec, venenatis libero. Vivamus luctus, nunc id lobortis scelerisque, lorem mauris pretium sapien, non mollis magna erat ac lorem. Ut eu tellus gravida, pharetra nulla et, ornare libero. Sed tempor dui scelerisque, ultrices justo at, consequat nunc. Pellentesque nunc massa, rutrum quis laoreet id, accumsan a ligula. Morbi rhoncus massa arcu, at porta dui convallis a. Aenean eu laoreet lorem. Morbi maximus dui non metus congue, eu fringilla leo facilisis. Vestibulum nisl felis, iaculis ac nunc ac, venenatis venenatis enim. Integer et semper tellus, tempor semper enim. Mauris accumsan mauris nisl, vel ultrices massa congue ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec ut neque iaculis, volutpat ipsum vitae, dapibus nibh. Etiam molestie purus id aliquam dignissim. Mauris facilisis lacinia eleifend. Vestibulum dui massa, fringilla vulputate condimentum vitae, tincidunt nec sapien. Etiam condimentum tincidunt est nec volutpat. Quisque a ultrices ex. Sed nunc libero, pharetra ut suscipit id, mollis at turpis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cras blandit rhoncus nisi, non iaculis lacus feugiat in. Duis facilisis porta libero laoreet consequat. Quisque quis justo lectus. Sed quis maximus ligula. Vestibulum pellentesque efficitur nisl, congue ultricies arcu efficitur ac. Curabitur sagittis, diam quis feugiat condimentum, lorem ligula interdum erat, a tristique est purus id felis. Morbi sed varius libero. In elementum metus sit amet euismod fermentum. Praesent sollicitudin ante lacus, nec auctor nunc cursus non.</p>\n<!-- /wp:paragraph -->', 'JAMKista eTohtoreita', '', 'publish', 'open', 'open', '', 'jamkista-etohtoreita', '', '', '2020-09-13 11:25:09', '2020-09-13 10:25:09', '', 0, 'http://localhost/wordpress/?p=58', 0, 'post', '', 1),
(59, 1, '2020-09-13 11:12:41', '2020-09-13 10:12:41', '<!-- wp:image {\"align\":\"left\",\"id\":48,\"width\":321,\"height\":321,\"sizeSlug\":\"large\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large is-resized\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/09/20191113_130240-1024x1024.png\" alt=\"\" class=\"wp-image-48\" width=\"321\" height=\"321\"/><figcaption>Tohtori-kissa</figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mauris risus, convallis eu dolor eget, pellentesque commodo arcu. Curabitur interdum dui quis metus consectetur, a condimentum tortor pellentesque. Nam quis finibus felis, vitae tincidunt neque. Aenean non velit sed augue vulputate tincidunt. Nunc quis nunc mollis, maximus tellus nec, venenatis libero. Vivamus luctus, nunc id lobortis scelerisque, lorem mauris pretium sapien, non mollis magna erat ac lorem. Ut eu tellus gravida, pharetra nulla et, ornare libero. Sed tempor dui scelerisque, ultrices justo at, consequat nunc. Pellentesque nunc massa, rutrum quis laoreet id, accumsan a ligula. Morbi rhoncus massa arcu, at porta dui convallis a. Aenean eu laoreet lorem. Morbi maximus dui non metus congue, eu fringilla leo facilisis. Vestibulum nisl felis, iaculis ac nunc ac, venenatis venenatis enim. Integer et semper tellus, tempor semper enim. Mauris accumsan mauris nisl, vel ultrices massa congue ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec ut neque iaculis, volutpat ipsum vitae, dapibus nibh. Etiam molestie purus id aliquam dignissim. Mauris facilisis lacinia eleifend. Vestibulum dui massa, fringilla vulputate condimentum vitae, tincidunt nec sapien. Etiam condimentum tincidunt est nec volutpat. Quisque a ultrices ex. Sed nunc libero, pharetra ut suscipit id, mollis at turpis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cras blandit rhoncus nisi, non iaculis lacus feugiat in. Duis facilisis porta libero laoreet consequat. Quisque quis justo lectus. Sed quis maximus ligula. Vestibulum pellentesque efficitur nisl, congue ultricies arcu efficitur ac. Curabitur sagittis, diam quis feugiat condimentum, lorem ligula interdum erat, a tristique est purus id felis. Morbi sed varius libero. In elementum metus sit amet euismod fermentum. Praesent sollicitudin ante lacus, nec auctor nunc cursus non.</p>\n<!-- /wp:paragraph -->', 'JAMKista eTohtoreita', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2020-09-13 11:12:41', '2020-09-13 10:12:41', '', 58, 'http://localhost/wordpress/2020/09/13/58-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2020-09-13 11:28:28', '2020-09-13 10:28:28', '{\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-13 10:28:28\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '504e6e68-7229-4fad-855c-47ec15cbc6d2', '', '', '2020-09-13 11:28:28', '2020-09-13 10:28:28', '', 0, 'http://localhost/wordpress/2020/09/13/504e6e68-7229-4fad-855c-47ec15cbc6d2/', 0, 'customize_changeset', '', 0),
(61, 1, '2020-09-13 11:35:15', '2020-09-13 10:35:15', '{\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-13 10:30:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0f3d27b4-adfc-43a7-aa90-dd0ace7d0711', '', '', '2020-09-13 11:35:15', '2020-09-13 10:35:15', '', 0, 'http://localhost/wordpress/?p=61', 0, 'customize_changeset', '', 0),
(62, 1, '2020-09-13 11:53:46', '2020-09-13 10:53:46', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mauris risus, convallis eu dolor eget, pellentesque commodo arcu. Curabitur interdum dui quis metus consectetur, a condimentum tortor pellentesque. Nam quis finibus felis, vitae tincidunt neque. Aenean non velit sed augue vulputate tincidunt. Nunc quis nunc mollis, maximus tellus nec, venenatis libero. Vivamus luctus, nunc id lobortis scelerisque, lorem mauris pretium sapien, non mollis magna erat ac lorem. Ut eu tellus gravida, pharetra nulla et, ornare libero. Sed tempor dui scelerisque, ultrices justo at, consequat nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[https://docs.thememylogin.com/article/91-using-the-shortcode]\n<!-- /wp:shortcode -->', 'Jyväskylässä sataa', '', 'publish', 'open', 'open', '', 'jyvaskylassa-sataa', '', '', '2020-09-13 23:21:31', '2020-09-13 20:21:31', '', 0, 'http://localhost/wordpress/?p=62', 0, 'post', '', 0),
(63, 1, '2020-09-13 11:53:46', '2020-09-13 10:53:46', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mauris risus, convallis eu dolor eget, pellentesque commodo arcu. Curabitur interdum dui quis metus consectetur, a condimentum tortor pellentesque. Nam quis finibus felis, vitae tincidunt neque. Aenean non velit sed augue vulputate tincidunt. Nunc quis nunc mollis, maximus tellus nec, venenatis libero. Vivamus luctus, nunc id lobortis scelerisque, lorem mauris pretium sapien, non mollis magna erat ac lorem. Ut eu tellus gravida, pharetra nulla et, ornare libero. Sed tempor dui scelerisque, ultrices justo at, consequat nunc.</p>\n<!-- /wp:paragraph -->', 'Jyväskylässä sataa', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2020-09-13 11:53:46', '2020-09-13 10:53:46', '', 62, 'http://localhost/wordpress/2020/09/13/62-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2020-09-13 11:55:02', '2020-09-13 10:55:02', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mauris risus, convallis eu dolor eget, pellentesque commodo arcu. Curabitur interdum dui quis metus consectetur, a condimentum tortor pellentesque. Nam quis finibus felis, vitae tincidunt neque. Aenean non velit sed augue vulputate tincidunt. Nunc quis nunc mollis, maximus tellus nec, venenatis libero. Vivamus luctus, nunc id lobortis scelerisque, lorem mauris pretium sapien, non mollis magna erat ac lorem. Ut eu tellus gravida, pharetra nulla et, ornare libero. Sed tempor dui scelerisque, ultrices justo at, consequat nunc.</p>\n<!-- /wp:paragraph -->', 'Tampereella paistaa aurinko', '', 'publish', 'open', 'open', '', 'tampereella-paistaa-aurinko', '', '', '2020-09-13 21:57:54', '2020-09-13 18:57:54', '', 0, 'http://localhost/wordpress/?p=64', 0, 'post', '', 0),
(65, 1, '2020-09-13 11:55:02', '2020-09-13 10:55:02', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mauris risus, convallis eu dolor eget, pellentesque commodo arcu. Curabitur interdum dui quis metus consectetur, a condimentum tortor pellentesque. Nam quis finibus felis, vitae tincidunt neque. Aenean non velit sed augue vulputate tincidunt. Nunc quis nunc mollis, maximus tellus nec, venenatis libero. Vivamus luctus, nunc id lobortis scelerisque, lorem mauris pretium sapien, non mollis magna erat ac lorem. Ut eu tellus gravida, pharetra nulla et, ornare libero. Sed tempor dui scelerisque, ultrices justo at, consequat nunc.</p>\n<!-- /wp:paragraph -->', 'Tampereella paistaa aurinko', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2020-09-13 11:55:02', '2020-09-13 10:55:02', '', 64, 'http://localhost/wordpress/2020/09/13/64-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2020-09-13 11:58:04', '2020-09-13 10:58:04', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2020-09-13 20:00:11', '2020-09-13 17:00:11', '', 0, 'http://localhost/wordpress/?p=66', 4, 'nav_menu_item', '', 0),
(67, 1, '2020-09-13 11:58:04', '2020-09-13 10:58:04', ' ', '', '', 'publish', 'closed', 'closed', '', '67', '', '', '2020-09-13 20:00:11', '2020-09-13 17:00:11', '', 9, 'http://localhost/wordpress/?p=67', 5, 'nav_menu_item', '', 0),
(68, 1, '2020-09-13 11:58:04', '2020-09-13 10:58:04', ' ', '', '', 'publish', 'closed', 'closed', '', '68', '', '', '2020-09-13 20:00:11', '2020-09-13 17:00:11', '', 9, 'http://localhost/wordpress/?p=68', 6, 'nav_menu_item', '', 0),
(69, 1, '2020-09-13 17:26:02', '2020-09-13 16:26:02', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis felis vel ligula laoreet hendrerit. Suspendisse mollis aliquam tincidunt. Vivamus suscipit dolor velit, at volutpat sem malesuada eget. Pellentesque ac aliquam turpis. In hac habitasse platea dictumst. Cras sed ligula non justo commodo accumsan. Nam vel ipsum et risus mollis mollis ut vitae tortor. Donec pellentesque id dolor ac dapibus. Nam sed vulputate tellus. In convallis ullamcorper eleifend. Proin congue turpis id posuere vestibulum. Duis tincidunt vehicula orci, a pretium nibh porttitor nec. Ut id convallis metus, efficitur fringilla risus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<h5 id=\"custom\" style=\"color:#DC143C; text-align:center\" onmouseover=\"Vari\">HTML</h5>\n<p>Ut et vehicula <strong>tortor</strong>, vel suscipit urna. Maecenas porta odio elit, in aliquet erat varius sed. Nulla ut hendrerit nulla. Proin eleifend massa eget augue mollis eleifend.</p>\n<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d15247.055227338447!2d23.907142049999997!3d61.465594900000006!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sfi!2sfi!4v1600014476898!5m2!1sfi!2sfi\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>\n<script>\ndocument.getElementById(\"custom\").addEventListener(\"mouseover\", Vari);\nfunction Vari() {\n  document.getElementById(\"custom\").style.color = \"blue\";\n}\n</script>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>Phasellus bibendum sodales pulvinar. Quisque pretium condimentum vestibulum. Fusce vel lorem quis tortor luctus fringilla eget id nisl. Donec accumsan ligula vel lectus scelerisque, eget lobortis orci lacinia. Maecenas est elit, tempor egestas libero vitae, molestie pellentesque sem.</p>\n<!-- /wp:paragraph -->', 'Kustomointia', '', 'publish', 'open', 'open', '', 'kustomointia', '', '', '2020-09-13 17:42:23', '2020-09-13 16:42:23', '', 0, 'http://localhost/wordpress/?p=69', 0, 'post', '', 0),
(70, 1, '2020-09-13 17:26:02', '2020-09-13 16:26:02', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis felis vel ligula laoreet hendrerit. Suspendisse mollis aliquam tincidunt. Vivamus suscipit dolor velit, at volutpat sem malesuada eget. Pellentesque ac aliquam turpis. In hac habitasse platea dictumst. Cras sed ligula non justo commodo accumsan. Nam vel ipsum et risus mollis mollis ut vitae tortor. Donec pellentesque id dolor ac dapibus. Nam sed vulputate tellus. In convallis ullamcorper eleifend. Proin congue turpis id posuere vestibulum. Duis tincidunt vehicula orci, a pretium nibh porttitor nec. Ut id convallis metus, efficitur fringilla risus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Phasellus bibendum sodales pulvinar. Quisque pretium condimentum vestibulum. Fusce vel lorem quis tortor luctus fringilla eget id nisl. Donec accumsan ligula vel lectus scelerisque, eget lobortis orci lacinia. Maecenas est elit, tempor egestas libero vitae, molestie pellentesque sem.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<h5 style=\"color:#DC143C, text-align:center\">HTML</h5>\n<p>Ut et vehicula tortor, vel suscipit urna. Maecenas porta odio elit, in aliquet erat varius sed. Nulla ut hendrerit nulla. Proin eleifend massa eget augue mollis eleifend.</p>\n<!-- /wp:html -->', 'Kustomointia', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2020-09-13 17:26:02', '2020-09-13 16:26:02', '', 69, 'http://localhost/wordpress/2020/09/13/69-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2020-09-13 17:26:56', '2020-09-13 16:26:56', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis felis vel ligula laoreet hendrerit. Suspendisse mollis aliquam tincidunt. Vivamus suscipit dolor velit, at volutpat sem malesuada eget. Pellentesque ac aliquam turpis. In hac habitasse platea dictumst. Cras sed ligula non justo commodo accumsan. Nam vel ipsum et risus mollis mollis ut vitae tortor. Donec pellentesque id dolor ac dapibus. Nam sed vulputate tellus. In convallis ullamcorper eleifend. Proin congue turpis id posuere vestibulum. Duis tincidunt vehicula orci, a pretium nibh porttitor nec. Ut id convallis metus, efficitur fringilla risus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Phasellus bibendum sodales pulvinar. Quisque pretium condimentum vestibulum. Fusce vel lorem quis tortor luctus fringilla eget id nisl. Donec accumsan ligula vel lectus scelerisque, eget lobortis orci lacinia. Maecenas est elit, tempor egestas libero vitae, molestie pellentesque sem.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<h5 style=\"color:#DC143C, text-align:center\">HTML</h5>\n<p>Ut et vehicula <strong>tortor</strong>, vel suscipit urna. Maecenas porta odio elit, in aliquet erat varius sed. Nulla ut hendrerit nulla. Proin eleifend massa eget augue mollis eleifend.</p>\n<!-- /wp:html -->', 'Kustomointia', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2020-09-13 17:26:56', '2020-09-13 16:26:56', '', 69, 'http://localhost/wordpress/2020/09/13/69-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2020-09-13 17:28:43', '2020-09-13 16:28:43', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis felis vel ligula laoreet hendrerit. Suspendisse mollis aliquam tincidunt. Vivamus suscipit dolor velit, at volutpat sem malesuada eget. Pellentesque ac aliquam turpis. In hac habitasse platea dictumst. Cras sed ligula non justo commodo accumsan. Nam vel ipsum et risus mollis mollis ut vitae tortor. Donec pellentesque id dolor ac dapibus. Nam sed vulputate tellus. In convallis ullamcorper eleifend. Proin congue turpis id posuere vestibulum. Duis tincidunt vehicula orci, a pretium nibh porttitor nec. Ut id convallis metus, efficitur fringilla risus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Phasellus bibendum sodales pulvinar. Quisque pretium condimentum vestibulum. Fusce vel lorem quis tortor luctus fringilla eget id nisl. Donec accumsan ligula vel lectus scelerisque, eget lobortis orci lacinia. Maecenas est elit, tempor egestas libero vitae, molestie pellentesque sem.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<h5 style=\"color:#DC143C; text-align:center\">HTML</h5>\n<p>Ut et vehicula <strong>tortor</strong>, vel suscipit urna. Maecenas porta odio elit, in aliquet erat varius sed. Nulla ut hendrerit nulla. Proin eleifend massa eget augue mollis eleifend.</p>\n<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d15247.055227338447!2d23.907142049999997!3d61.465594900000006!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sfi!2sfi!4v1600014476898!5m2!1sfi!2sfi\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>\n<!-- /wp:html -->', 'Kustomointia', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2020-09-13 17:28:43', '2020-09-13 16:28:43', '', 69, 'http://localhost/wordpress/2020/09/13/69-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2020-09-13 17:40:01', '2020-09-13 16:40:01', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis felis vel ligula laoreet hendrerit. Suspendisse mollis aliquam tincidunt. Vivamus suscipit dolor velit, at volutpat sem malesuada eget. Pellentesque ac aliquam turpis. In hac habitasse platea dictumst. Cras sed ligula non justo commodo accumsan. Nam vel ipsum et risus mollis mollis ut vitae tortor. Donec pellentesque id dolor ac dapibus. Nam sed vulputate tellus. In convallis ullamcorper eleifend. Proin congue turpis id posuere vestibulum. Duis tincidunt vehicula orci, a pretium nibh porttitor nec. Ut id convallis metus, efficitur fringilla risus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<h5 id=\"custom\" style=\"color:#DC143C; text-align:center\" onmouseover=\"Vari\">HTML</h5>\n<p>Ut et vehicula <strong>tortor</strong>, vel suscipit urna. Maecenas porta odio elit, in aliquet erat varius sed. Nulla ut hendrerit nulla. Proin eleifend massa eget augue mollis eleifend.</p>\n<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d15247.055227338447!2d23.907142049999997!3d61.465594900000006!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sfi!2sfi!4v1600014476898!5m2!1sfi!2sfi\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>\n<script>\ndocument.getElementById(\"custom\").addEventListener(\"mouseover\", Vari);\nfunction Vari() {\n  document.getElementById(\"custom\").style.color = \"blue\";\n}\n</script>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>Phasellus bibendum sodales pulvinar. Quisque pretium condimentum vestibulum. Fusce vel lorem quis tortor luctus fringilla eget id nisl. Donec accumsan ligula vel lectus scelerisque, eget lobortis orci lacinia. Maecenas est elit, tempor egestas libero vitae, molestie pellentesque sem.</p>\n<!-- /wp:paragraph -->', 'Kustomointia', '', 'inherit', 'closed', 'closed', '', '69-autosave-v1', '', '', '2020-09-13 17:40:01', '2020-09-13 16:40:01', '', 69, 'http://localhost/wordpress/2020/09/13/69-autosave-v1/', 0, 'revision', '', 0),
(74, 1, '2020-09-13 17:34:35', '2020-09-13 16:34:35', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis felis vel ligula laoreet hendrerit. Suspendisse mollis aliquam tincidunt. Vivamus suscipit dolor velit, at volutpat sem malesuada eget. Pellentesque ac aliquam turpis. In hac habitasse platea dictumst. Cras sed ligula non justo commodo accumsan. Nam vel ipsum et risus mollis mollis ut vitae tortor. Donec pellentesque id dolor ac dapibus. Nam sed vulputate tellus. In convallis ullamcorper eleifend. Proin congue turpis id posuere vestibulum. Duis tincidunt vehicula orci, a pretium nibh porttitor nec. Ut id convallis metus, efficitur fringilla risus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Phasellus bibendum sodales pulvinar. Quisque pretium condimentum vestibulum. Fusce vel lorem quis tortor luctus fringilla eget id nisl. Donec accumsan ligula vel lectus scelerisque, eget lobortis orci lacinia. Maecenas est elit, tempor egestas libero vitae, molestie pellentesque sem.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<h5 id=\"custom\" style=\"color:#DC143C; text-align:center\" onmouseover=\"Vari\">HTML</h5>\n<p>Ut et vehicula <strong>tortor</strong>, vel suscipit urna. Maecenas porta odio elit, in aliquet erat varius sed. Nulla ut hendrerit nulla. Proin eleifend massa eget augue mollis eleifend.</p>\n<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d15247.055227338447!2d23.907142049999997!3d61.465594900000006!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sfi!2sfi!4v1600014476898!5m2!1sfi!2sfi\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>\n\n<script>\ndocument.getElementById(\"custom\").addEventListener(\"mouseover\", Vari);\nfunction Vari() {\n  document.getElementById(\"custom\").style.color = \"blue\";\n}\n</script>\n<!-- /wp:html -->', 'Kustomointia', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2020-09-13 17:34:35', '2020-09-13 16:34:35', '', 69, 'http://localhost/wordpress/2020/09/13/69-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2020-09-13 17:36:09', '2020-09-13 16:36:09', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis felis vel ligula laoreet hendrerit. Suspendisse mollis aliquam tincidunt. Vivamus suscipit dolor velit, at volutpat sem malesuada eget. Pellentesque ac aliquam turpis. In hac habitasse platea dictumst. Cras sed ligula non justo commodo accumsan. Nam vel ipsum et risus mollis mollis ut vitae tortor. Donec pellentesque id dolor ac dapibus. Nam sed vulputate tellus. In convallis ullamcorper eleifend. Proin congue turpis id posuere vestibulum. Duis tincidunt vehicula orci, a pretium nibh porttitor nec. Ut id convallis metus, efficitur fringilla risus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Phasellus bibendum sodales pulvinar. Quisque pretium condimentum vestibulum. Fusce vel lorem quis tortor luctus fringilla eget id nisl. Donec accumsan ligula vel lectus scelerisque, eget lobortis orci lacinia. Maecenas est elit, tempor egestas libero vitae, molestie pellentesque sem.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<h5 id=\"custom\" style=\"color:#DC143C; text-align:center\" onmouseover=\"Vari\">HTML</h5>\n<p>Ut et vehicula <strong>tortor</strong>, vel suscipit urna. Maecenas porta odio elit, in aliquet erat varius sed. Nulla ut hendrerit nulla. Proin eleifend massa eget augue mollis eleifend.</p>\n<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d15247.055227338447!2d23.907142049999997!3d61.465594900000006!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sfi!2sfi!4v1600014476898!5m2!1sfi!2sfi\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>\n\n<script>\ndocument.getElementById(\"custom\").addEventListener(\"mousehover\", Vari);\nfunction Vari() {\n  document.getElementById(\"custom\").style.color = \"blue\";\n}\n</script>\n<!-- /wp:html -->', 'Kustomointia', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2020-09-13 17:36:09', '2020-09-13 16:36:09', '', 69, 'http://localhost/wordpress/2020/09/13/69-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2020-09-13 17:37:19', '2020-09-13 16:37:19', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis felis vel ligula laoreet hendrerit. Suspendisse mollis aliquam tincidunt. Vivamus suscipit dolor velit, at volutpat sem malesuada eget. Pellentesque ac aliquam turpis. In hac habitasse platea dictumst. Cras sed ligula non justo commodo accumsan. Nam vel ipsum et risus mollis mollis ut vitae tortor. Donec pellentesque id dolor ac dapibus. Nam sed vulputate tellus. In convallis ullamcorper eleifend. Proin congue turpis id posuere vestibulum. Duis tincidunt vehicula orci, a pretium nibh porttitor nec. Ut id convallis metus, efficitur fringilla risus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Phasellus bibendum sodales pulvinar. Quisque pretium condimentum vestibulum. Fusce vel lorem quis tortor luctus fringilla eget id nisl. Donec accumsan ligula vel lectus scelerisque, eget lobortis orci lacinia. Maecenas est elit, tempor egestas libero vitae, molestie pellentesque sem.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<h5 id=\"custom\" style=\"color:#DC143C; text-align:center\" onmouseover=\"Vari\">HTML</h5>\n<p>Ut et vehicula <strong>tortor</strong>, vel suscipit urna. Maecenas porta odio elit, in aliquet erat varius sed. Nulla ut hendrerit nulla. Proin eleifend massa eget augue mollis eleifend.</p>\n<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d15247.055227338447!2d23.907142049999997!3d61.465594900000006!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sfi!2sfi!4v1600014476898!5m2!1sfi!2sfi\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>\n\n<script>\ndocument.getElementById(\"custom\").addEventListener(\"mouseover\", Vari);\nfunction Vari() {\n  document.getElementById(\"custom\").style.color = \"blue\";\n}\n</script>\n<!-- /wp:html -->', 'Kustomointia', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2020-09-13 17:37:19', '2020-09-13 16:37:19', '', 69, 'http://localhost/wordpress/2020/09/13/69-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2020-09-13 17:42:23', '2020-09-13 16:42:23', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis felis vel ligula laoreet hendrerit. Suspendisse mollis aliquam tincidunt. Vivamus suscipit dolor velit, at volutpat sem malesuada eget. Pellentesque ac aliquam turpis. In hac habitasse platea dictumst. Cras sed ligula non justo commodo accumsan. Nam vel ipsum et risus mollis mollis ut vitae tortor. Donec pellentesque id dolor ac dapibus. Nam sed vulputate tellus. In convallis ullamcorper eleifend. Proin congue turpis id posuere vestibulum. Duis tincidunt vehicula orci, a pretium nibh porttitor nec. Ut id convallis metus, efficitur fringilla risus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<h5 id=\"custom\" style=\"color:#DC143C; text-align:center\" onmouseover=\"Vari\">HTML</h5>\n<p>Ut et vehicula <strong>tortor</strong>, vel suscipit urna. Maecenas porta odio elit, in aliquet erat varius sed. Nulla ut hendrerit nulla. Proin eleifend massa eget augue mollis eleifend.</p>\n<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d15247.055227338447!2d23.907142049999997!3d61.465594900000006!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sfi!2sfi!4v1600014476898!5m2!1sfi!2sfi\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>\n<script>\ndocument.getElementById(\"custom\").addEventListener(\"mouseover\", Vari);\nfunction Vari() {\n  document.getElementById(\"custom\").style.color = \"blue\";\n}\n</script>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>Phasellus bibendum sodales pulvinar. Quisque pretium condimentum vestibulum. Fusce vel lorem quis tortor luctus fringilla eget id nisl. Donec accumsan ligula vel lectus scelerisque, eget lobortis orci lacinia. Maecenas est elit, tempor egestas libero vitae, molestie pellentesque sem.</p>\n<!-- /wp:paragraph -->', 'Kustomointia', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2020-09-13 17:42:23', '2020-09-13 16:42:23', '', 69, 'http://localhost/wordpress/2020/09/13/69-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2020-09-13 20:00:11', '2020-09-13 17:00:11', '', 'Kirjaudu sisään', '', 'publish', 'closed', 'closed', '', 'kirjaudu-sisaan', '', '', '2020-09-13 20:00:11', '2020-09-13 17:00:11', '', 0, 'http://localhost/wordpress/?p=78', 7, 'nav_menu_item', '', 0),
(79, 1, '2020-09-13 20:00:11', '2020-09-13 17:00:11', '', 'Kirjaudu ulos', '', 'publish', 'closed', 'closed', '', 'kirjaudu-ulos', '', '', '2020-09-13 20:00:11', '2020-09-13 17:00:11', '', 0, 'http://localhost/wordpress/?p=79', 8, 'nav_menu_item', '', 0),
(80, 1, '2020-09-13 20:00:11', '2020-09-13 17:00:11', '', 'Rekisteröidy', '', 'publish', 'closed', 'closed', '', 'rekisteroidy', '', '', '2020-09-13 20:00:11', '2020-09-13 17:00:11', '', 0, 'http://localhost/wordpress/?p=80', 9, 'nav_menu_item', '', 0),
(81, 4, '2020-09-13 20:44:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-09-13 20:44:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=81', 0, 'post', '', 0),
(82, 3, '2020-09-13 20:51:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-09-13 20:51:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=82', 0, 'post', '', 0),
(83, 5, '2020-09-13 20:52:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-09-13 20:52:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=83', 0, 'post', '', 0),
(84, 1, '2020-09-13 20:56:41', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-09-13 20:56:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=84', 0, 'post', '', 0),
(85, 1, '2020-09-13 21:57:06', '2020-09-13 18:57:06', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mauris risus, convallis eu dolor eget, pellentesque commodo arcu. Curabitur interdum dui quis metus consectetur, a condimentum tortor pellentesque. Nam quis finibus felis, vitae tincidunt neque. Aenean non velit sed augue vulputate tincidunt. Nunc quis nunc mollis, maximus tellus nec, venenatis libero. Vivamus luctus, nunc id lobortis scelerisque, lorem mauris pretium sapien, non mollis magna erat ac lorem. Ut eu tellus gravida, pharetra nulla et, ornare libero. Sed tempor dui scelerisque, ultrices justo at, consequat nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\nhttps://docs.thememylogin.com/article/91-using-the-shortcode\n<!-- /wp:shortcode -->', 'Tampereella paistaa aurinko', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2020-09-13 21:57:06', '2020-09-13 18:57:06', '', 64, 'http://localhost/wordpress/2020/09/13/64-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2020-09-13 21:57:54', '2020-09-13 18:57:54', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mauris risus, convallis eu dolor eget, pellentesque commodo arcu. Curabitur interdum dui quis metus consectetur, a condimentum tortor pellentesque. Nam quis finibus felis, vitae tincidunt neque. Aenean non velit sed augue vulputate tincidunt. Nunc quis nunc mollis, maximus tellus nec, venenatis libero. Vivamus luctus, nunc id lobortis scelerisque, lorem mauris pretium sapien, non mollis magna erat ac lorem. Ut eu tellus gravida, pharetra nulla et, ornare libero. Sed tempor dui scelerisque, ultrices justo at, consequat nunc.</p>\n<!-- /wp:paragraph -->', 'Tampereella paistaa aurinko', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2020-09-13 21:57:54', '2020-09-13 18:57:54', '', 64, 'http://localhost/wordpress/2020/09/13/64-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2020-09-13 22:12:00', '2020-09-13 19:12:00', '<!-- wp:image {\"align\":\"center\",\"id\":48,\"width\":335,\"height\":335,\"sizeSlug\":\"large\",\"className\":\"is-style-rounded\"} -->\n<div class=\"wp-block-image is-style-rounded\"><figure class=\"aligncenter size-large is-resized\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/09/20191113_130240-1024x1024.png\" alt=\"\" class=\"wp-image-48\" width=\"335\" height=\"335\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Tästä käynnistyy WordPressin opettelu.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:wpforms/form-selector /-->', 'Uusi sivu', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2020-09-13 22:12:00', '2020-09-13 19:12:00', '', 46, 'http://localhost/wordpress/2020/09/13/46-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2020-09-13 22:12:28', '2020-09-13 19:12:28', '{\"id\":\"88\",\"field_id\":5,\"fields\":{\"1\":{\"id\":\"1\",\"type\":\"name\",\"label\":\"Nimi\",\"format\":\"first-last\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"\"},\"2\":{\"id\":\"2\",\"type\":\"select\",\"label\":\"Hauki on\",\"choices\":{\"1\":{\"label\":\"kala\",\"value\":\"\",\"image\":\"\"},\"2\":{\"label\":\"nis\\u00e4k\\u00e4s\",\"value\":\"\",\"image\":\"\"},\"3\":{\"label\":\"nilvi\\u00e4inen\",\"value\":\"\",\"image\":\"\"}},\"description\":\"\",\"required\":\"1\",\"style\":\"classic\",\"size\":\"medium\",\"placeholder\":\"\",\"css\":\"\",\"dynamic_choices\":\"\"},\"3\":{\"id\":\"3\",\"type\":\"radio\",\"label\":\"Punainen on\",\"choices\":{\"1\":{\"label\":\"punaista\",\"value\":\"\",\"image\":\"\"},\"2\":{\"label\":\"sinist\\u00e4\",\"value\":\"\",\"image\":\"\"},\"3\":{\"label\":\"keltaista\",\"value\":\"\",\"image\":\"\"}},\"description\":\"\",\"required\":\"1\",\"choices_images_style\":\"modern\",\"input_columns\":\"\",\"css\":\"\",\"dynamic_choices\":\"\"},\"4\":{\"id\":\"4\",\"type\":\"checkbox\",\"label\":\"Kilo\",\"choices\":{\"1\":{\"label\":\"gramma\",\"value\":\"\",\"image\":\"\"},\"2\":{\"label\":\"metri\",\"value\":\"\",\"image\":\"\"}},\"description\":\"\",\"required\":\"1\",\"choices_images_style\":\"modern\",\"input_columns\":\"\",\"choice_limit\":\"\",\"css\":\"\",\"dynamic_choices\":\"\"}},\"settings\":{\"form_title\":\"Tietokilpailu\",\"form_desc\":\"\",\"form_class\":\"\",\"submit_text\":\"Vastaa\",\"submit_text_processing\":\"Sending\\u2026\",\"submit_class\":\"\",\"antispam\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Tietokilpailu Entry\",\"sender_name\":\"Marjan Wordpress\",\"sender_address\":\"{admin_email}\",\"replyto\":\"\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"<p>Kiitos vastaamisesta! Tulette yll\\u00e4ttym\\u00e4\\u00e4n palkintojen suuruudesta!<\\/p>\",\"message_scroll\":\"1\",\"page\":\"20\",\"redirect\":\"\"}}},\"meta\":{\"template\":\"blank\"}}', 'Tietokilpailu', '', 'publish', 'closed', 'closed', '', 'tietokilpailu', '', '', '2020-09-13 22:23:57', '2020-09-13 19:23:57', '', 0, 'http://localhost/wordpress/?post_type=wpforms&#038;p=88', 0, 'wpforms', '', 0),
(89, 1, '2020-09-13 22:21:05', '2020-09-13 19:21:05', '<!-- wp:image {\"align\":\"center\",\"id\":48,\"width\":335,\"height\":335,\"sizeSlug\":\"large\",\"className\":\"is-style-rounded\"} -->\n<div class=\"wp-block-image is-style-rounded\"><figure class=\"aligncenter size-large is-resized\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/09/20191113_130240-1024x1024.png\" alt=\"\" class=\"wp-image-48\" width=\"335\" height=\"335\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Tästä käynnistyy WordPressin opettelu.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:wpforms/form-selector {\"formId\":\"88\"} /-->', 'Uusi sivu', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2020-09-13 22:21:05', '2020-09-13 19:21:05', '', 46, 'http://localhost/wordpress/2020/09/13/46-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2020-09-13 22:29:42', '2020-09-13 19:29:42', '<label> Your Name (required)\r\n    [text* your-name \"Marja\"] </label>\r\n\r\n<label> Subject\r\n    [text your-subject \"Testiviesti\"] </label>\r\n\r\n<label> Your Message\r\n    [textarea your-message \"Testaan Contact Form 7 -pluginin perustoiminnallisuutta...\"] </label>\r\n\r\n[select vari \"Punainen\" \"Keltainen\" \"Sininen\"]\r\n\r\n[submit \"Send\"]\n1\nMarjan Wordpress \"[your-subject]\"\nMarjan Wordpress <marja.jambeck@gmail.com>\nmarja.jambeck@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Marjan Wordpress (http://localhost/wordpress)\nReply-To: [your-email]\n\n\n\n\nMarjan Wordpress \"[your-subject]\"\nMarjan Wordpress <marja.jambeck@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Marjan Wordpress (http://localhost/wordpress)\nReply-To: marja.jambeck@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2020-09-13 22:39:17', '2020-09-13 19:39:17', '', 0, 'http://localhost/wordpress/?post_type=wpcf7_contact_form&#038;p=90', 0, 'wpcf7_contact_form', '', 0),
(91, 1, '2020-09-13 22:37:47', '2020-09-13 19:37:47', '<!-- wp:paragraph -->\n<p>Lisää sisältöä...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[contact-form-7 id=\"90\" title=\"Contact form 1\"]\n<!-- /wp:shortcode -->', 'Uudempi sivu', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2020-09-13 22:37:47', '2020-09-13 19:37:47', '', 53, 'http://localhost/wordpress/2020/09/13/53-revision-v1/', 0, 'revision', '', 0),
(92, 4, '2020-09-13 23:05:48', '2020-09-13 20:05:48', '<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>“Be who you are and say what you feel, because those who mind don\'t matter, and those who matter don\'t mind.”</p><p>― <strong>Bernard M. Baruch</strong></p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eget justo vestibulum, rutrum tortor a, molestie ligula. Duis vulputate nisl eget urna congue, ut venenatis turpis iaculis. Integer vitae metus nisi....</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {\"ids\":[93,94]} -->\n<figure class=\"wp-block-gallery columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/uploads/2020/09/IMG_20170525_162251-1024x1021.png\" alt=\"\" data-id=\"93\" data-link=\"http://localhost/wordpress/?attachment_id=93\" class=\"wp-image-93\" /></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/uploads/2020/09/IMG_20181014_131655-1024x1020.png\" alt=\"\" data-id=\"94\" data-full-url=\"http://localhost/wordpress/wp-content/uploads/2020/09/IMG_20181014_131655.png\" data-link=\"http://localhost/wordpress/?attachment_id=94\" class=\"wp-image-94\" /></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'Uutisia', '', 'publish', 'open', 'open', '', 'uutisia', '', '', '2020-09-13 23:05:48', '2020-09-13 20:05:48', '', 0, 'http://localhost/wordpress/?p=92', 0, 'post', '', 0),
(93, 4, '2020-09-13 23:05:04', '2020-09-13 20:05:04', '', 'IMG_20170525_162251', '', 'inherit', 'open', 'closed', '', 'img_20170525_162251', '', '', '2020-09-13 23:05:04', '2020-09-13 20:05:04', '', 92, 'http://localhost/wordpress/wp-content/uploads/2020/09/IMG_20170525_162251.png', 0, 'attachment', 'image/png', 0),
(94, 4, '2020-09-13 23:05:28', '2020-09-13 20:05:28', '', 'IMG_20181014_131655', '', 'inherit', 'open', 'closed', '', 'img_20181014_131655', '', '', '2020-09-13 23:05:28', '2020-09-13 20:05:28', '', 92, 'http://localhost/wordpress/wp-content/uploads/2020/09/IMG_20181014_131655.png', 0, 'attachment', 'image/png', 0),
(95, 4, '2020-09-13 23:05:48', '2020-09-13 20:05:48', '<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>“Be who you are and say what you feel, because those who mind don\'t matter, and those who matter don\'t mind.”</p><p>― <strong>Bernard M. Baruch</strong></p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eget justo vestibulum, rutrum tortor a, molestie ligula. Duis vulputate nisl eget urna congue, ut venenatis turpis iaculis. Integer vitae metus nisi....</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {\"ids\":[93,94]} -->\n<figure class=\"wp-block-gallery columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/uploads/2020/09/IMG_20170525_162251-1024x1021.png\" alt=\"\" data-id=\"93\" data-link=\"http://localhost/wordpress/?attachment_id=93\" class=\"wp-image-93\" /></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/uploads/2020/09/IMG_20181014_131655-1024x1020.png\" alt=\"\" data-id=\"94\" data-full-url=\"http://localhost/wordpress/wp-content/uploads/2020/09/IMG_20181014_131655.png\" data-link=\"http://localhost/wordpress/?attachment_id=94\" class=\"wp-image-94\" /></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'Uutisia', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2020-09-13 23:05:48', '2020-09-13 20:05:48', '', 92, 'http://localhost/wordpress/2020/09/13/92-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2020-09-13 23:21:31', '2020-09-13 20:21:31', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mauris risus, convallis eu dolor eget, pellentesque commodo arcu. Curabitur interdum dui quis metus consectetur, a condimentum tortor pellentesque. Nam quis finibus felis, vitae tincidunt neque. Aenean non velit sed augue vulputate tincidunt. Nunc quis nunc mollis, maximus tellus nec, venenatis libero. Vivamus luctus, nunc id lobortis scelerisque, lorem mauris pretium sapien, non mollis magna erat ac lorem. Ut eu tellus gravida, pharetra nulla et, ornare libero. Sed tempor dui scelerisque, ultrices justo at, consequat nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[https://docs.thememylogin.com/article/91-using-the-shortcode]\n<!-- /wp:shortcode -->', 'Jyväskylässä sataa', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2020-09-13 23:21:31', '2020-09-13 20:21:31', '', 62, 'http://localhost/wordpress/2020/09/13/62-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_simple_history`
--

CREATE TABLE `wp_simple_history` (
  `id` bigint(20) NOT NULL,
  `date` datetime NOT NULL,
  `logger` varchar(30) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `occasionsID` varchar(32) DEFAULT NULL,
  `initiator` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_simple_history`
--

INSERT INTO `wp_simple_history` (`id`, `date`, `logger`, `level`, `message`, `occasionsID`, `initiator`) VALUES
(1, '2020-09-13 20:00:55', 'SimplePluginLogger', 'info', 'Installed plugin \"{plugin_name}\"', 'a7a0646a96f93b104896ba9c643016a6', 'wp_user'),
(2, '2020-09-13 20:00:55', 'SimplePluginLogger', 'info', 'Activated plugin \"{plugin_name}\"', '7d8a4bfd2119a384b1fd1217e3f0b5fc', 'wp_user'),
(3, '2020-09-13 20:00:56', 'SimpleLogger', 'info', 'Because Simple History was only recently installed, this feed does not display many events yet. As long as the plugin remains activated you will soon see detailed information about page edits, plugin updates, users logging in, and much more.', '2ad0ab965d6728820180feeaab627fcf', 'wp'),
(4, '2020-09-13 20:00:57', 'SimpleLogger', 'info', 'Welcome to Simple History!\n\nThis is the main history feed. It will contain events that this plugin has logged.', '0c4babaacbe315745cbb536eaa41278c', 'wp'),
(5, '2020-09-13 20:00:58', 'SimplePluginLogger', 'info', 'Installed plugin \"{plugin_name}\"', 'a7a0646a96f93b104896ba9c643016a6', 'wp'),
(6, '2020-09-13 20:00:59', 'SimplePluginLogger', 'info', 'Activated plugin \"{plugin_name}\"', '7d8a4bfd2119a384b1fd1217e3f0b5fc', 'wp'),
(7, '2020-09-13 20:01:49', 'SimplePostLogger', 'info', 'Updated {post_type} \"{post_title}\"', '0461284478f670589396e120ca97e988', 'wp_user'),
(8, '2020-09-13 20:01:59', 'SimpleUserLogger', 'info', 'Logged out', 'ac2188e7deef77331cf0fd511384523c', 'wp_user'),
(9, '2020-09-13 20:02:06', 'SimpleUserLogger', 'info', 'Logged in', '7cb8ae2c73fb13c8b868892c12cbf820', 'wp_user'),
(10, '2020-09-13 20:05:05', 'SimplePostLogger', 'info', 'Updated {post_type} \"{post_title}\"', 'dc4d2b88cabbd1c96c2ed679fd6d9181', 'wp_user'),
(11, '2020-09-13 20:05:28', 'SimplePostLogger', 'info', 'Updated {post_type} \"{post_title}\"', 'd96d428fd5db657f11c7ac4c22ca7f1f', 'wp_user'),
(12, '2020-09-13 20:05:49', 'SimplePostLogger', 'info', 'Updated {post_type} \"{post_title}\"', '6c7dffb3c4fee4c696fbe7d8b414f2c9', 'wp_user'),
(13, '2020-09-13 20:06:28', 'SimpleUserLogger', 'info', 'Logged out', '81457b0c8197b8ed9c3e5c5f9b3bbc67', 'wp_user'),
(14, '2020-09-13 20:06:38', 'SimpleUserLogger', 'info', 'Logged in', '1f3a1900f25e23a3a714d53ddcea2a5e', 'wp_user'),
(15, '2020-09-13 20:10:39', 'SimplePluginLogger', 'info', 'Installed plugin \"{plugin_name}\"', '799e0964c2659ba962ca0d83fd3ec3a5', 'wp_user'),
(16, '2020-09-13 20:10:46', 'SimplePluginLogger', 'info', 'Activated plugin \"{plugin_name}\"', '3b6627d599c61ba1b6f372c06e07469a', 'wp_user'),
(17, '2020-09-13 20:11:48', 'SimpleThemeLogger', 'info', 'Added widget \"{widget_id_base}\" to sidebar \"{sidebar_id}\"', 'c40aea19d2cb63fd44f04922b457e7a8', 'wp_user'),
(18, '2020-09-13 20:14:53', 'SimpleThemeLogger', 'info', 'Removed widget \"{widget_id_base}\" from sidebar \"{sidebar_id}\"', 'f9bac81a08a4666889634fbc3adf4d03', 'wp_user'),
(19, '2020-09-13 20:15:00', 'SimpleThemeLogger', 'info', 'Added widget \"{widget_id_base}\" to sidebar \"{sidebar_id}\"', 'ff9bd2a4d48d4c98a7f4285356aa33fe', 'wp_user'),
(20, '2020-09-13 20:21:31', 'SimplePostLogger', 'info', 'Updated {post_type} \"{post_title}\"', '5ea2d6383e977e54d5e7d7cbd71bf994', 'wp_user'),
(21, '2020-09-20 09:18:56', 'SH_Translations_Logger', 'info', 'Updated translations for \"{name}\" ({language})', 'e372112b4c015874459bf6550c573df0', 'wp');

-- --------------------------------------------------------

--
-- Table structure for table `wp_simple_history_contexts`
--

CREATE TABLE `wp_simple_history_contexts` (
  `context_id` bigint(20) UNSIGNED NOT NULL,
  `history_id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_simple_history_contexts`
--

INSERT INTO `wp_simple_history_contexts` (`context_id`, `history_id`, `key`, `value`) VALUES
(1, 1, 'plugin_name', 'Simple History'),
(2, 1, 'plugin_description', 'Plugin that logs various things that occur in WordPress and then presents those events in a very nice GUI.'),
(3, 1, 'plugin_url', 'https://simple-history.com'),
(4, 1, 'plugin_version', '2.37.2'),
(5, 1, 'plugin_author', 'Pär Thernström'),
(6, 1, '_message_key', 'plugin_installed'),
(7, 1, '_user_id', '1'),
(8, 1, '_user_login', 'sekuretto'),
(9, 1, '_user_email', 'marja.jambeck@gmail.com'),
(10, 1, '_server_remote_addr', '::'),
(11, 1, '_server_http_referer', 'http://localhost/wordpress/wp-admin/plugin-install.php?s=Simple+History&tab=search&type=term'),
(12, 2, 'plugin_name', 'Simple History'),
(13, 2, 'plugin_description', 'Plugin that logs various things that occur in WordPress and then presents those events in a very nice GUI.'),
(14, 2, 'plugin_url', 'https://simple-history.com'),
(15, 2, 'plugin_version', '2.37.2'),
(16, 2, 'plugin_author', 'Pär Thernström'),
(17, 2, 'plugin_slug', 'simple-history'),
(18, 2, 'plugin_title', '<a href=\"https://simple-history.com/\">Simple History</a>'),
(19, 2, '_message_key', 'plugin_activated'),
(20, 2, '_user_id', '1'),
(21, 2, '_user_login', 'sekuretto'),
(22, 2, '_user_email', 'marja.jambeck@gmail.com'),
(23, 2, '_server_remote_addr', '::'),
(24, 2, '_server_http_referer', 'http://localhost/wordpress/wp-admin/plugin-install.php?s=Simple+History&tab=search&type=term'),
(25, 3, '_user_id', '1'),
(26, 3, '_user_login', 'sekuretto'),
(27, 3, '_user_email', 'marja.jambeck@gmail.com'),
(28, 3, '_server_remote_addr', '::'),
(29, 3, '_server_http_referer', 'http://localhost/wordpress/wp-admin/plugin-install.php?s=Simple+History&tab=search&type=term'),
(30, 4, '_user_id', '1'),
(31, 4, '_user_login', 'sekuretto'),
(32, 4, '_user_email', 'marja.jambeck@gmail.com'),
(33, 4, '_server_remote_addr', '::'),
(34, 4, '_server_http_referer', 'http://localhost/wordpress/wp-admin/plugin-install.php?s=Simple+History&tab=search&type=term'),
(35, 5, 'plugin_name', 'Simple History'),
(36, 5, 'plugin_description', 'Plugin that logs various things that occur in WordPress and then presents those events in a very nice GUI.'),
(37, 5, 'plugin_url', 'https://simple-history.com'),
(38, 5, 'plugin_version', '2.37.2'),
(39, 5, 'plugin_author', 'Pär Thernström'),
(40, 5, '_message_key', 'plugin_installed'),
(41, 5, '_wp_cron_running', 'true'),
(42, 5, '_wp_cron_current_filter', 'simple_history/loggers_loaded'),
(43, 5, '_server_remote_addr', '::'),
(44, 5, '_server_http_referer', 'http://localhost/wordpress/wp-cron.php?doing_wp_cron=1600027257.8367760181427001953125'),
(45, 6, 'plugin_name', 'Simple History'),
(46, 6, 'plugin_description', 'Plugin that logs various things that occur in WordPress and then presents those events in a very nice GUI.'),
(47, 6, 'plugin_url', 'https://simple-history.com'),
(48, 6, 'plugin_version', '2.37.2'),
(49, 6, 'plugin_author', 'Pär Thernström'),
(50, 6, 'plugin_slug', 'simple-history'),
(51, 6, 'plugin_title', '<a href=\"https://simple-history.com/\">Simple History</a>'),
(52, 6, '_message_key', 'plugin_activated'),
(53, 6, '_wp_cron_running', 'true'),
(54, 6, '_wp_cron_current_filter', 'simple_history/loggers_loaded'),
(55, 6, '_server_remote_addr', '::'),
(56, 6, '_server_http_referer', 'http://localhost/wordpress/wp-cron.php?doing_wp_cron=1600027257.8367760181427001953125'),
(57, 7, 'post_id', '46'),
(58, 7, 'post_type', 'page'),
(59, 7, 'post_title', 'Uusi sivu'),
(60, 7, '_message_key', 'post_updated'),
(61, 7, '_user_id', '1'),
(62, 7, '_user_login', 'sekuretto'),
(63, 7, '_user_email', 'marja.jambeck@gmail.com'),
(64, 7, '_rest_api_request', 'true'),
(65, 7, '_server_remote_addr', '::'),
(66, 7, '_server_http_referer', 'http://localhost/wordpress/wp-admin/post.php?post=46&action=edit'),
(67, 8, '_user_id', '1'),
(68, 8, '_user_login', 'sekuretto'),
(69, 8, '_user_email', 'marja.jambeck@gmail.com'),
(70, 8, '_message_key', 'user_logged_out'),
(71, 8, '_server_remote_addr', '::'),
(72, 8, '_server_http_referer', 'http://localhost/wordpress/wp-admin/edit.php?post_type=page'),
(73, 9, 'user_id', '4'),
(74, 9, 'user_email', 'aut1@jamk.fi'),
(75, 9, 'user_login', 'aut1'),
(76, 9, '_user_id', '4'),
(77, 9, '_user_login', 'aut1'),
(78, 9, '_user_email', 'aut1@jamk.fi'),
(79, 9, 'server_http_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(80, 9, '_message_key', 'user_logged_in'),
(81, 9, '_server_remote_addr', '::'),
(82, 9, '_server_http_referer', 'http://localhost/wordpress/wp-login.php?loggedout=true&wp_lang=en_GB'),
(83, 10, 'post_id', '93'),
(84, 10, 'post_type', 'attachment'),
(85, 10, 'post_title', 'IMG_20170525_162251'),
(86, 10, 'post_meta_added', '1'),
(87, 10, '_message_key', 'post_updated'),
(88, 10, '_user_id', '4'),
(89, 10, '_user_login', 'aut1'),
(90, 10, '_user_email', 'aut1@jamk.fi'),
(91, 10, '_rest_api_request', 'true'),
(92, 10, '_server_remote_addr', '::'),
(93, 10, '_server_http_referer', 'http://localhost/wordpress/wp-admin/post.php?post=92&action=edit'),
(94, 11, 'post_id', '94'),
(95, 11, 'post_type', 'attachment'),
(96, 11, 'post_title', 'IMG_20181014_131655'),
(97, 11, 'post_meta_added', '1'),
(98, 11, '_message_key', 'post_updated'),
(99, 11, '_user_id', '4'),
(100, 11, '_user_login', 'aut1'),
(101, 11, '_user_email', 'aut1@jamk.fi'),
(102, 11, '_rest_api_request', 'true'),
(103, 11, '_server_remote_addr', '::'),
(104, 11, '_server_http_referer', 'http://localhost/wordpress/wp-admin/post.php?post=92&action=edit'),
(105, 12, 'post_id', '92'),
(106, 12, 'post_type', 'post'),
(107, 12, 'post_title', 'Uutisia'),
(108, 12, 'post_prev_post_name', ''),
(109, 12, 'post_new_post_name', 'uutisia'),
(110, 12, 'post_prev_post_content', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eget justo vestibulum, rutrum tortor a, molestie ligula. Duis vulputate nisl eget urna congue, ut venenatis turpis iaculis. Integer vitae metus nisi....</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>“Be who you are and say what you feel, because those who mind don\'t matter, and those who matter don\'t mind.”</p><p>― <strong>Bernard M. Baruch</strong></p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:gallery -->\n<figure class=\"wp-block-gallery columns-0 is-cropped\"><ul class=\"blocks-gallery-grid\"></ul></figure>\n<!-- /wp:gallery -->'),
(111, 12, 'post_new_post_content', '<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>“Be who you are and say what you feel, because those who mind don\'t matter, and those who matter don\'t mind.”</p><p>― <strong>Bernard M. Baruch</strong></p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eget justo vestibulum, rutrum tortor a, molestie ligula. Duis vulputate nisl eget urna congue, ut venenatis turpis iaculis. Integer vitae metus nisi....</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {\"ids\":[93,94]} -->\n<figure class=\"wp-block-gallery columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/uploads/2020/09/IMG_20170525_162251-1024x1021.png\" alt=\"\" data-id=\"93\" data-link=\"http://localhost/wordpress/?attachment_id=93\" class=\"wp-image-93\" /></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/uploads/2020/09/IMG_20181014_131655-1024x1020.png\" alt=\"\" data-id=\"94\" data-full-url=\"http://localhost/wordpress/wp-content/uploads/2020/09/IMG_20181014_131655.png\" data-link=\"http://localhost/wordpress/?attachment_id=94\" class=\"wp-image-94\" /></figure></li></ul></figure>\n<!-- /wp:gallery -->'),
(112, 12, 'post_prev_post_status', 'draft'),
(113, 12, 'post_new_post_status', 'publish'),
(114, 12, 'post_prev_post_date', '2020-09-13 23:05:03'),
(115, 12, 'post_new_post_date', '2020-09-13 23:05:48'),
(116, 12, 'post_prev_post_date_gmt', '0000-00-00 00:00:00'),
(117, 12, 'post_new_post_date_gmt', '2020-09-13 20:05:48'),
(118, 12, 'post_meta_added', '1'),
(119, 12, '_message_key', 'post_updated'),
(120, 12, '_user_id', '4'),
(121, 12, '_user_login', 'aut1'),
(122, 12, '_user_email', 'aut1@jamk.fi'),
(123, 12, '_rest_api_request', 'true'),
(124, 12, '_server_remote_addr', '::'),
(125, 12, '_server_http_referer', 'http://localhost/wordpress/wp-admin/post.php?post=92&action=edit'),
(126, 13, '_user_id', '4'),
(127, 13, '_user_login', 'aut1'),
(128, 13, '_user_email', 'aut1@jamk.fi'),
(129, 13, '_message_key', 'user_logged_out'),
(130, 13, '_server_remote_addr', '::'),
(131, 13, '_server_http_referer', 'http://localhost/wordpress/wp-admin/edit.php?post_type=post'),
(132, 14, 'user_id', '1'),
(133, 14, 'user_email', 'marja.jambeck@gmail.com'),
(134, 14, 'user_login', 'sekuretto'),
(135, 14, '_user_id', '1'),
(136, 14, '_user_login', 'sekuretto'),
(137, 14, '_user_email', 'marja.jambeck@gmail.com'),
(138, 14, 'server_http_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(139, 14, '_message_key', 'user_logged_in'),
(140, 14, '_server_remote_addr', '::'),
(141, 14, '_server_http_referer', 'http://localhost/wordpress/wp-login.php?loggedout=true&wp_lang=en_GB'),
(142, 15, 'plugin_slug', 'tag-list-widget'),
(143, 15, 'plugin_name', 'Taxonomy List Widget'),
(144, 15, 'plugin_version', '1.3.1'),
(145, 15, 'plugin_author', 'Erick Hitter'),
(146, 15, 'plugin_last_updated', ''),
(147, 15, 'plugin_requires', ''),
(148, 15, 'plugin_tested', ''),
(149, 15, 'plugin_rating', ''),
(150, 15, 'plugin_num_ratings', ''),
(151, 15, 'plugin_downloaded', ''),
(152, 15, 'plugin_added', ''),
(153, 15, 'plugin_source_files', '[\n    \"languages\",\n    \"readme.txt\",\n    \"taxonomy-list-widget.php\"\n]'),
(154, 15, 'plugin_install_source', 'unknown'),
(155, 15, 'plugin_description', 'Creates a list of non-hierarchical taxonomies as an alternative to the term (tag) cloud. Widget provides numerous options to tailor the output to fit your site. List function can also be called directly for use outside of the widget. Formerly known as <strong><em>Tag List Widget</em></strong>. <cite>By <a href=\"https://ethitter.com/\">Erick Hitter</a>.</cite>'),
(156, 15, 'plugin_url', 'https://ethitter.com/plugins/taxonomy-list-widget/'),
(157, 15, '_message_key', 'plugin_installed'),
(158, 15, '_user_id', '1'),
(159, 15, '_user_login', 'sekuretto'),
(160, 15, '_user_email', 'marja.jambeck@gmail.com'),
(161, 15, '_server_remote_addr', '::'),
(162, 15, '_server_http_referer', 'http://localhost/wordpress/wp-admin/plugin-install.php?s=Taxonomy+List+&tab=search&type=term'),
(163, 16, 'plugin_name', 'Taxonomy List Widget'),
(164, 16, 'plugin_slug', 'tag-list-widget'),
(165, 16, 'plugin_title', '<a href=\"https://ethitter.com/plugins/taxonomy-list-widget/\">Taxonomy List Widget</a>'),
(166, 16, 'plugin_description', 'Creates a list of non-hierarchical taxonomies as an alternative to the term (tag) cloud. Widget provides numerous options to tailor the output to fit your site. List function can also be called directly for use outside of the widget. Formerly known as <strong><em>Tag List Widget</em></strong>. <cite>By <a href=\"https://ethitter.com/\">Erick Hitter</a>.</cite>'),
(167, 16, 'plugin_author', '<a href=\"https://ethitter.com/\">Erick Hitter</a>'),
(168, 16, 'plugin_version', '1.3.1'),
(169, 16, 'plugin_url', 'https://ethitter.com/plugins/taxonomy-list-widget/'),
(170, 16, '_message_key', 'plugin_activated'),
(171, 16, '_user_id', '1'),
(172, 16, '_user_login', 'sekuretto'),
(173, 16, '_user_email', 'marja.jambeck@gmail.com'),
(174, 16, '_server_remote_addr', '::'),
(175, 16, '_server_http_referer', 'http://localhost/wordpress/wp-admin/plugin-install.php?s=Taxonomy+List+&tab=search&type=term'),
(176, 17, 'widget_id_base', 'taxonomy_list_widget'),
(177, 17, 'widget_name_translated', 'Taxonomy List Widget'),
(178, 17, 'sidebar_id', 'footer-1'),
(179, 17, 'sidebar_name_translated', 'Footer 1'),
(180, 17, '_message_key', 'widget_added'),
(181, 17, '_user_id', '1'),
(182, 17, '_user_login', 'sekuretto'),
(183, 17, '_user_email', 'marja.jambeck@gmail.com'),
(184, 17, '_server_remote_addr', '::'),
(185, 17, '_server_http_referer', 'http://localhost/wordpress/wp-admin/widgets.php'),
(186, 18, 'widget_id_base', 'taxonomy_list_widget'),
(187, 18, 'widget_name_translated', 'Taxonomy List Widget'),
(188, 18, 'sidebar_id', 'footer-1'),
(189, 18, 'sidebar_name_translated', 'Footer 1'),
(190, 18, '_message_key', 'widget_removed'),
(191, 18, '_user_id', '1'),
(192, 18, '_user_login', 'sekuretto'),
(193, 18, '_user_email', 'marja.jambeck@gmail.com'),
(194, 18, '_server_remote_addr', '::'),
(195, 18, '_server_http_referer', 'http://localhost/wordpress/wp-admin/widgets.php'),
(196, 19, 'widget_id_base', 'taxonomy_list_widget'),
(197, 19, 'widget_name_translated', 'Taxonomy List Widget'),
(198, 19, 'sidebar_id', 'sidebar-1'),
(199, 19, 'sidebar_name_translated', 'Sidebar'),
(200, 19, '_message_key', 'widget_added'),
(201, 19, '_user_id', '1'),
(202, 19, '_user_login', 'sekuretto'),
(203, 19, '_user_email', 'marja.jambeck@gmail.com'),
(204, 19, '_server_remote_addr', '::'),
(205, 19, '_server_http_referer', 'http://localhost/wordpress/wp-admin/widgets.php'),
(206, 20, 'post_id', '62'),
(207, 20, 'post_type', 'post'),
(208, 20, 'post_title', 'Jyväskylässä sataa'),
(209, 20, 'post_prev_post_content', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mauris risus, convallis eu dolor eget, pellentesque commodo arcu. Curabitur interdum dui quis metus consectetur, a condimentum tortor pellentesque. Nam quis finibus felis, vitae tincidunt neque. Aenean non velit sed augue vulputate tincidunt. Nunc quis nunc mollis, maximus tellus nec, venenatis libero. Vivamus luctus, nunc id lobortis scelerisque, lorem mauris pretium sapien, non mollis magna erat ac lorem. Ut eu tellus gravida, pharetra nulla et, ornare libero. Sed tempor dui scelerisque, ultrices justo at, consequat nunc.</p>\n<!-- /wp:paragraph -->'),
(210, 20, 'post_new_post_content', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mauris risus, convallis eu dolor eget, pellentesque commodo arcu. Curabitur interdum dui quis metus consectetur, a condimentum tortor pellentesque. Nam quis finibus felis, vitae tincidunt neque. Aenean non velit sed augue vulputate tincidunt. Nunc quis nunc mollis, maximus tellus nec, venenatis libero. Vivamus luctus, nunc id lobortis scelerisque, lorem mauris pretium sapien, non mollis magna erat ac lorem. Ut eu tellus gravida, pharetra nulla et, ornare libero. Sed tempor dui scelerisque, ultrices justo at, consequat nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[https://docs.thememylogin.com/article/91-using-the-shortcode]\n<!-- /wp:shortcode -->'),
(211, 20, 'post_meta_added', '1'),
(212, 20, '_message_key', 'post_updated'),
(213, 20, '_user_id', '1'),
(214, 20, '_user_login', 'sekuretto'),
(215, 20, '_user_email', 'marja.jambeck@gmail.com'),
(216, 20, '_rest_api_request', 'true'),
(217, 20, '_server_remote_addr', '::'),
(218, 20, '_server_http_referer', 'http://localhost/wordpress/wp-admin/post.php?post=62&action=edit'),
(219, 21, 'name', 'New Blog'),
(220, 21, 'language', 'en_GB'),
(221, 21, 'translations', '{\n    \"language\": \"en_GB\",\n    \"type\": \"theme\",\n    \"slug\": \"new-blog\",\n    \"version\": \"1.2.8\"\n}'),
(222, 21, '_message_key', 'translations_updated'),
(223, 21, '_wp_cron_running', 'true'),
(224, 21, '_wp_cron_current_filter', 'upgrader_process_complete'),
(225, 21, '_server_remote_addr', '::'),
(226, 21, '_server_http_referer', 'http://localhost/wordpress/wp-cron.php?doing_wp_cron=1600593518.3708739280700683593750');

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorised', 'uncategorised', 0),
(2, 'Primary', 'primary', 0),
(3, 'Primary (2)', 'primary-2', 0),
(4, 'Social Links Menu', 'social-links-menu', 0),
(5, 'Top Top Menu', 'top-top-menu', 0),
(6, 'jamk', 'jamk', 0),
(7, 'tohtori', 'tohtori', 0),
(8, 'kissa', 'kissa', 0),
(9, 'Sää', 'saa', 0),
(10, 'Jkl sää', 'jkl-saa', 0),
(11, 'Tre sää', 'tre-saa', 0),
(12, 'sade', 'sade', 0),
(13, 'saa', 'saa', 0),
(14, 'jkl', 'jkl', 0),
(15, 'tre', 'tre', 0),
(16, 'pouta', 'pouta', 0),
(17, 'code', 'code', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(30, 2, 0),
(31, 2, 0),
(32, 2, 0),
(33, 2, 0),
(34, 3, 0),
(35, 3, 0),
(36, 3, 0),
(37, 3, 0),
(38, 4, 0),
(39, 4, 0),
(40, 4, 0),
(41, 4, 0),
(42, 4, 0),
(51, 5, 0),
(52, 5, 0),
(54, 5, 0),
(58, 1, 0),
(58, 6, 0),
(58, 7, 0),
(58, 8, 0),
(62, 9, 0),
(62, 10, 0),
(62, 12, 0),
(62, 13, 0),
(62, 14, 0),
(64, 9, 0),
(64, 11, 0),
(64, 13, 0),
(64, 15, 0),
(64, 16, 0),
(66, 5, 0),
(67, 5, 0),
(68, 5, 0),
(69, 1, 0),
(69, 17, 0),
(78, 5, 0),
(79, 5, 0),
(80, 5, 0),
(92, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'nav_menu', '', 0, 5),
(5, 5, 'nav_menu', '', 0, 9),
(6, 6, 'post_tag', '', 0, 1),
(7, 7, 'post_tag', '', 0, 1),
(8, 8, 'post_tag', '', 0, 1),
(9, 9, 'category', '', 0, 2),
(10, 10, 'category', '', 9, 1),
(11, 11, 'category', '', 9, 1),
(12, 12, 'post_tag', '', 0, 1),
(13, 13, 'post_tag', '', 0, 2),
(14, 14, 'post_tag', '', 0, 1),
(15, 15, 'post_tag', '', 0, 1),
(16, 16, 'post_tag', '', 0, 1),
(17, 17, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Marja'),
(2, 1, 'first_name', 'Marja'),
(3, 1, 'last_name', 'Jämbeck'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '84'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1599417647'),
(21, 1, 'nav_menu_recently_edited', '5'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(27, 2, 'nickname', 'sub1'),
(28, 2, 'first_name', ''),
(29, 2, 'last_name', ''),
(30, 2, 'description', ''),
(31, 2, 'rich_editing', 'true'),
(32, 2, 'syntax_highlighting', 'true'),
(33, 2, 'comment_shortcuts', 'false'),
(34, 2, 'admin_color', 'fresh'),
(35, 2, 'use_ssl', '0'),
(36, 2, 'show_admin_bar_front', 'true'),
(37, 2, 'locale', ''),
(38, 2, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(39, 2, 'wp_user_level', '0'),
(40, 2, 'default_password_nag', ''),
(41, 3, 'nickname', 'con1'),
(42, 3, 'first_name', ''),
(43, 3, 'last_name', ''),
(44, 3, 'description', ''),
(45, 3, 'rich_editing', 'true'),
(46, 3, 'syntax_highlighting', 'true'),
(47, 3, 'comment_shortcuts', 'false'),
(48, 3, 'admin_color', 'fresh'),
(49, 3, 'use_ssl', '0'),
(50, 3, 'show_admin_bar_front', 'true'),
(51, 3, 'locale', ''),
(52, 3, 'wp_capabilities', 'a:1:{s:11:\"contributor\";b:1;}'),
(53, 3, 'wp_user_level', '1'),
(54, 3, 'default_password_nag', ''),
(55, 4, 'nickname', 'aut1'),
(56, 4, 'first_name', ''),
(57, 4, 'last_name', ''),
(58, 4, 'description', ''),
(59, 4, 'rich_editing', 'true'),
(60, 4, 'syntax_highlighting', 'true'),
(61, 4, 'comment_shortcuts', 'false'),
(62, 4, 'admin_color', 'fresh'),
(63, 4, 'use_ssl', '0'),
(64, 4, 'show_admin_bar_front', 'true'),
(65, 4, 'locale', ''),
(66, 4, 'wp_capabilities', 'a:1:{s:6:\"author\";b:1;}'),
(67, 4, 'wp_user_level', '2'),
(68, 4, 'default_password_nag', ''),
(69, 5, 'nickname', 'edi1'),
(70, 5, 'first_name', ''),
(71, 5, 'last_name', ''),
(72, 5, 'description', ''),
(73, 5, 'rich_editing', 'true'),
(74, 5, 'syntax_highlighting', 'true'),
(75, 5, 'comment_shortcuts', 'false'),
(76, 5, 'admin_color', 'fresh'),
(77, 5, 'use_ssl', '0'),
(78, 5, 'show_admin_bar_front', 'true'),
(79, 5, 'locale', ''),
(80, 5, 'wp_capabilities', 'a:1:{s:6:\"editor\";b:1;}'),
(81, 5, 'wp_user_level', '7'),
(82, 5, 'default_password_nag', ''),
(85, 4, 'wp_dashboard_quick_press_last_post_id', '81'),
(89, 3, 'wp_dashboard_quick_press_last_post_id', '82'),
(91, 5, 'wp_dashboard_quick_press_last_post_id', '83'),
(95, 1, 'session_tokens', 'a:1:{s:64:\"9a68f06630781b3f00392130d70ce4e95bd50f42b15318eee3646c71ec6837d4\";a:4:{s:10:\"expiration\";i:1600200397;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36\";s:5:\"login\";i:1600027597;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'sekuretto', '$P$Bun1.A87Fm7d/DOa6SJSDqxWdBVbEV0', 'sekuretto', 'marja.jambeck@gmail.com', 'http://localhost/wordpress', '2020-09-06 17:15:54', '', 0, 'Marja'),
(2, 'sub1', '$P$Bq3tWzqPStO5Zi4E5edfo3jMy/9ruN/', 'sub1', 'sub1@jamk.fi', '', '2020-09-13 17:14:30', '', 0, 'sub1'),
(3, 'con1', '$P$BnvCXx5Ocy.bYnqWJCLdEFAzTX1rQ2/', 'con1', 'con1@jamk.fi', '', '2020-09-13 17:15:31', '', 0, 'con1'),
(4, 'aut1', '$P$Bcpx27FKO6wBIxPD0q6JOWq4/kafxA1', 'aut1', 'aut1@jamk.fi', '', '2020-09-13 17:15:59', '', 0, 'aut1'),
(5, 'edi1', '$P$BRKvLCV5oQrTbdCOvabOVQNC9Qgvqn.', 'edi1', 'edi1@jamk.fi', '', '2020-09-13 17:16:41', '', 0, 'edi1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpforms_tasks_meta`
--

CREATE TABLE `wp_wpforms_tasks_meta` (
  `id` bigint(20) NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wpforms_tasks_meta`
--

INSERT INTO `wp_wpforms_tasks_meta` (`id`, `action`, `data`, `date`) VALUES
(1, 'wpforms_process_entry_emails_meta_cleanup', 'Wzg2NDAwXQ==', '2020-09-13 19:11:25'),
(2, 'wpforms_admin_notifications_update', 'W10=', '2020-09-13 19:11:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`);

--
-- Indexes for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_db7_forms`
--
ALTER TABLE `wp_db7_forms`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_simple_history`
--
ALTER TABLE `wp_simple_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date` (`date`),
  ADD KEY `loggerdate` (`logger`,`date`);

--
-- Indexes for table `wp_simple_history_contexts`
--
ALTER TABLE `wp_simple_history_contexts`
  ADD PRIMARY KEY (`context_id`),
  ADD KEY `history_id` (`history_id`),
  ADD KEY `key` (`key`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wpforms_tasks_meta`
--
ALTER TABLE `wp_wpforms_tasks_meta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_db7_forms`
--
ALTER TABLE `wp_db7_forms`
  MODIFY `form_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=493;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `wp_simple_history`
--
ALTER TABLE `wp_simple_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `wp_simple_history_contexts`
--
ALTER TABLE `wp_simple_history_contexts`
  MODIFY `context_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_wpforms_tasks_meta`
--
ALTER TABLE `wp_wpforms_tasks_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
