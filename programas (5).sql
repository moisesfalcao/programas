-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 31-Out-2019 às 04:57
-- Versão do servidor: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `programas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-10-22 00:06:24', '2019-10-22 03:06:24', 'Olá, isso é um comentário.\nPara começar a moderar, editar e excluir comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_most_popular`
--

CREATE TABLE `wp_most_popular` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `last_updated` datetime NOT NULL,
  `1_day_stats` mediumint(9) NOT NULL,
  `7_day_stats` mediumint(9) NOT NULL,
  `30_day_stats` mediumint(9) NOT NULL,
  `all_time_stats` bigint(20) NOT NULL,
  `raw_stats` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `wp_most_popular`
--

INSERT INTO `wp_most_popular` (`id`, `post_id`, `last_updated`, `1_day_stats`, `7_day_stats`, `30_day_stats`, `all_time_stats`, `raw_stats`) VALUES
(1, 39, '2019-10-28 20:15:18', 3, 3, 3, 3, 'a:1:{s:10:\"2019-10-28\";i:3;}'),
(2, 23, '2019-10-28 20:19:34', 1, 1, 1, 1, 'a:1:{s:10:\"2019-10-28\";i:1;}'),
(3, 16, '2019-10-28 20:19:34', 1, 1, 1, 1, 'a:1:{s:10:\"2019-10-28\";i:1;}'),
(4, 14, '2019-10-28 20:19:35', 1, 2, 2, 2, 'a:2:{s:10:\"2019-10-28\";i:1;s:10:\"2019-10-31\";i:1;}'),
(5, 12, '2019-10-28 20:19:37', 1, 1, 1, 1, 'a:1:{s:10:\"2019-10-28\";i:1;}'),
(6, 7, '2019-10-28 20:19:37', 1, 1, 1, 1, 'a:1:{s:10:\"2019-10-28\";i:1;}'),
(7, 1, '2019-10-28 20:19:38', 2, 3, 3, 3, 'a:2:{s:10:\"2019-10-28\";i:1;s:10:\"2019-10-29\";i:2;}'),
(8, 103, '2019-10-29 23:43:31', 3, 3, 3, 3, 'a:1:{s:10:\"2019-10-30\";i:3;}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/programas', 'yes'),
(2, 'home', 'http://localhost/programas', 'yes'),
(3, 'blogname', 'Canal Maker', 'yes'),
(4, 'blogdescription', 'Só mais um site WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'moisesfalcao@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:87:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=10&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:35:\"wp-most-popular/wp-most-popular.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'canal', 'yes'),
(41, 'stylesheet', 'canal', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '10', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'pt_BR', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(114, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1571714625;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(591, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.2.4.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.2.4.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.4\";s:7:\"version\";s:5:\"5.2.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1572491393;s:15:\"version_checked\";s:5:\"5.2.4\";s:12:\"translations\";a:0:{}}', 'no'),
(592, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1572491394;s:7:\"checked\";a:4:{s:5:\"canal\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(593, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1572491394;s:7:\"checked\";a:6:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.6\";s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:9:\"hello.php\";s:5:\"1.7.2\";s:27:\"sample-data/sample-data.php\";s:5:\"1.1.0\";s:35:\"taxonomy-images/taxonomy-images.php\";s:3:\"1.0\";s:35:\"wp-most-popular/wp-most-popular.php\";s:5:\"0.3.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"hello-dolly\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"1.7.2\";s:7:\"updated\";s:19:\"2019-08-13 18:09:11\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.7.2/pt_BR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:6:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.6\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"sample-data/sample-data.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/sample-data\";s:4:\"slug\";s:11:\"sample-data\";s:6:\"plugin\";s:27:\"sample-data/sample-data.php\";s:11:\"new_version\";s:5:\"1.1.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/sample-data/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/sample-data.1.1.0.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:64:\"https://ps.w.org/sample-data/assets/icon-128x128.jpg?rev=1923678\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/sample-data/assets/banner-772x250.jpg?rev=1923678\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"taxonomy-images/taxonomy-images.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/taxonomy-images\";s:4:\"slug\";s:15:\"taxonomy-images\";s:6:\"plugin\";s:35:\"taxonomy-images/taxonomy-images.php\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/taxonomy-images/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/taxonomy-images.1.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/taxonomy-images/assets/icon-256x256.png?rev=1283547\";s:2:\"1x\";s:68:\"https://ps.w.org/taxonomy-images/assets/icon-128x128.png?rev=1283547\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/taxonomy-images/assets/banner-1544x500.png?rev=1288553\";s:2:\"1x\";s:70:\"https://ps.w.org/taxonomy-images/assets/banner-772x250.png?rev=1288553\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"wp-most-popular/wp-most-popular.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/wp-most-popular\";s:4:\"slug\";s:15:\"wp-most-popular\";s:6:\"plugin\";s:35:\"wp-most-popular/wp-most-popular.php\";s:11:\"new_version\";s:5:\"0.3.1\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/wp-most-popular/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/wp-most-popular.0.3.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-most-popular/assets/icon-256x256.png?rev=1861383\";s:2:\"1x\";s:60:\"https://ps.w.org/wp-most-popular/assets/icon.svg?rev=1861383\";s:3:\"svg\";s:60:\"https://ps.w.org/wp-most-popular/assets/icon.svg?rev=1861383\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/wp-most-popular/assets/banner-1544x500.png?rev=1920990\";s:2:\"1x\";s:70:\"https://ps.w.org/wp-most-popular/assets/banner-772x250.png?rev=1920990\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(225, '_site_transient_browser_289d30a4d23579d26a05a8aa808752b5', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"77.0.3865.120\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(589, '_site_transient_timeout_theme_roots', '1572493190', 'no'),
(590, '_site_transient_theme_roots', 'a:4:{s:5:\"canal\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(305, 'acf_version', '5.8.6', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'cron', 'a:7:{i:1572494808;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1572534409;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1572534410;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1572577603;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1572577667;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1572577675;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(478, 'widget_wpp', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(143, 'can_compress_scripts', '1', 'no'),
(224, '_site_transient_timeout_browser_289d30a4d23579d26a05a8aa808752b5', '1572568033', 'no'),
(156, 'recently_activated', 'a:3:{s:51:\"wordpress-popular-posts/wordpress-popular-posts.php\";i:1572304408;s:35:\"taxonomy-images/taxonomy-images.php\";i:1572103522;s:27:\"sample-data/sample-data.php\";i:1572103517;}', 'yes'),
(159, 'ftp_credentials', 'a:3:{s:8:\"hostname\";s:12:\"65.19.141.67\";s:8:\"username\";s:6:\"moises\";s:15:\"connection_type\";s:3:\"ftp\";}', 'yes'),
(160, 'current_theme', '', 'yes'),
(161, 'theme_mods_canal', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(162, 'theme_switched', '', 'yes'),
(204, 'taxonomy_image_plugin_settings', 'a:1:{s:10:\"taxonomies\";a:2:{i:0;s:8:\"category\";i:1;s:13:\"link_category\";}}', 'yes'),
(207, 'taxonomy_image_plugin', 'a:2:{i:4;i:19;i:5;i:18;}', 'yes'),
(226, '_site_transient_timeout_php_check_5ef9b0d4e2ff0a2eb7df4e41a2af1661', '1572568035', 'no'),
(227, '_site_transient_php_check_5ef9b0d4e2ff0a2eb7df4e41a2af1661', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(511, 'category_children', 'a:1:{i:13;a:8:{i:0;i:15;i:1;i:16;i:2;i:17;i:3;i:18;i:4;i:19;i:5;i:20;i:6;i:21;i:7;i:23;}}', 'yes'),
(335, '_site_transient_timeout_browser_a525287c4d4a5afc2d0462817cb69643', '1572700752', 'no'),
(336, '_site_transient_browser_a525287c4d4a5afc2d0462817cb69643', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"77.0.3865.120\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(495, 'widget_wmp_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 1, '_edit_last', '1'),
(6, 1, '_edit_lock', '1572405283:1'),
(9, 7, '_edit_lock', '1572405284:1'),
(13, 10, '_edit_lock', '1571800799:1'),
(14, 7, '_edit_last', '1'),
(20, 14, '_edit_lock', '1572405285:1'),
(17, 12, '_edit_lock', '1572405285:1'),
(26, 18, '_wp_attached_file', '2019/10/salao.jpg'),
(23, 16, '_edit_lock', '1572405287:1'),
(27, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:17:\"2019/10/salao.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"salao-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"salao-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"salao-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"salao-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"detail\";a:4:{s:4:\"file\";s:17:\"salao-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(28, 18, '_edit_lock', '1571937643:1'),
(29, 18, '_edit_last', '1'),
(32, 19, '_wp_attached_file', '2019/10/4bb73015afcdba9e587c6fe5454aad46a1c28ebe3592b726c6b1749ccf632da2.jpg'),
(33, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1172;s:4:\"file\";s:76:\"2019/10/4bb73015afcdba9e587c6fe5454aad46a1c28ebe3592b726c6b1749ccf632da2.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:76:\"4bb73015afcdba9e587c6fe5454aad46a1c28ebe3592b726c6b1749ccf632da2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:76:\"4bb73015afcdba9e587c6fe5454aad46a1c28ebe3592b726c6b1749ccf632da2-300x183.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:183;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:76:\"4bb73015afcdba9e587c6fe5454aad46a1c28ebe3592b726c6b1749ccf632da2-768x469.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:469;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:77:\"4bb73015afcdba9e587c6fe5454aad46a1c28ebe3592b726c6b1749ccf632da2-1024x625.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:625;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"detail\";a:4:{s:4:\"file\";s:76:\"4bb73015afcdba9e587c6fe5454aad46a1c28ebe3592b726c6b1749ccf632da2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(34, 16, '_edit_last', '1'),
(39, 20, '_wp_attached_file', '2019/10/Sem-Título-1.png'),
(40, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:394;s:6:\"height\";i:630;s:4:\"file\";s:25:\"2019/10/Sem-Título-1.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Sem-Título-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"Sem-Título-1-188x300.png\";s:5:\"width\";i:188;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"detail\";a:4:{s:4:\"file\";s:25:\"Sem-Título-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(41, 12, '_edit_last', '1'),
(48, 21, '_edit_last', '1'),
(49, 21, '_edit_lock', '1572096935:1'),
(50, 23, '_edit_lock', '1572405597:1'),
(57, 23, '_edit_last', '1'),
(83, 37, '_edit_last', '1'),
(62, 14, '_edit_last', '1'),
(84, 37, '_edit_lock', '1572395336:1'),
(99, 42, 'tipo_da_midia', 'Podcast'),
(85, 39, '_edit_lock', '1572405597:1'),
(100, 42, '_tipo_da_midia', 'field_5db452001d0f1'),
(88, 39, '_edit_last', '1'),
(91, 39, 'tipo_da_midia', 'podcast'),
(92, 39, '_tipo_da_midia', 'field_5db452001d0f1'),
(93, 41, 'tipo_da_midia', 'Podcast'),
(94, 41, '_tipo_da_midia', 'field_5db452001d0f1'),
(105, 43, 'tipo_da_midia', 'Podcast'),
(106, 43, '_tipo_da_midia', 'field_5db452001d0f1'),
(113, 44, 'tipo_da_midia', 'Video'),
(114, 44, '_tipo_da_midia', 'field_5db452001d0f1'),
(119, 45, 'tipo_da_midia', 'Podcast'),
(120, 45, '_tipo_da_midia', 'field_5db452001d0f1'),
(127, 23, 'tipo_da_midia', 'video'),
(128, 23, '_tipo_da_midia', 'field_5db452001d0f1'),
(129, 46, 'tipo_da_midia', 'Video'),
(130, 46, '_tipo_da_midia', 'field_5db452001d0f1'),
(137, 16, 'tipo_da_midia', 'video'),
(138, 16, '_tipo_da_midia', 'field_5db452001d0f1'),
(139, 47, 'tipo_da_midia', 'Video'),
(140, 47, '_tipo_da_midia', 'field_5db452001d0f1'),
(159, 12, 'tipo_da_midia', 'video'),
(149, 14, 'tipo_da_midia', 'video'),
(150, 14, '_tipo_da_midia', 'field_5db452001d0f1'),
(151, 48, 'tipo_da_midia', 'Video'),
(152, 48, '_tipo_da_midia', 'field_5db452001d0f1'),
(160, 12, '_tipo_da_midia', 'field_5db452001d0f1'),
(161, 49, 'tipo_da_midia', 'Video'),
(162, 49, '_tipo_da_midia', 'field_5db452001d0f1'),
(167, 50, 'tipo_da_midia', 'Video'),
(168, 50, '_tipo_da_midia', 'field_5db452001d0f1'),
(175, 7, 'tipo_da_midia', 'video'),
(176, 7, '_tipo_da_midia', 'field_5db452001d0f1'),
(177, 51, 'tipo_da_midia', 'Video'),
(178, 51, '_tipo_da_midia', 'field_5db452001d0f1'),
(185, 1, 'tipo_da_midia', 'video'),
(543, 87, 'tipo_da_midia', 'Podcast'),
(186, 1, '_tipo_da_midia', 'field_5db452001d0f1'),
(187, 52, 'tipo_da_midia', 'Video'),
(188, 52, '_tipo_da_midia', 'field_5db452001d0f1'),
(222, 54, 'tipo_da_midia', 'Video'),
(193, 53, '_wp_attached_file', '2019/10/banner-teste-1.jpg'),
(194, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1004;s:4:\"file\";s:26:\"2019/10/banner-teste-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"banner-teste-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"banner-teste-1-300x157.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"banner-teste-1-768x402.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:402;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"banner-teste-1-1024x535.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:535;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(229, 55, '_tipo_da_midia', 'field_5db452001d0f1'),
(197, 23, '_thumbnail_id', '53'),
(223, 54, '_tipo_da_midia', 'field_5db452001d0f1'),
(210, 39, '_thumbnail_id', '53'),
(215, 16, '_thumbnail_id', '53'),
(228, 55, 'tipo_da_midia', 'Podcast'),
(257, 60, 'tipo_da_midia', 'Video'),
(238, 56, 'tipo_da_midia', 'Video'),
(239, 56, '_tipo_da_midia', 'field_5db452001d0f1'),
(245, 14, 'icone_do_episodio', '59'),
(242, 14, '_thumbnail_id', '53'),
(246, 14, '_icone_do_episodio', 'field_5db5040e2120d'),
(247, 58, 'tipo_da_midia', 'Video'),
(248, 58, '_tipo_da_midia', 'field_5db452001d0f1'),
(249, 58, 'icone_do_episodio', ''),
(250, 58, '_icone_do_episodio', 'field_5db5040e2120d'),
(251, 59, '_wp_attached_file', '2019/10/Sério-Original.png'),
(252, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:488;s:6:\"height\";i:284;s:4:\"file\";s:27:\"2019/10/Sério-Original.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Sério-Original-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Sério-Original-300x175.png\";s:5:\"width\";i:300;s:6:\"height\";i:175;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(258, 60, '_tipo_da_midia', 'field_5db452001d0f1'),
(259, 60, 'icone_do_episodio', '59'),
(260, 60, '_icone_do_episodio', 'field_5db5040e2120d'),
(265, 61, 'tipo_da_midia', 'Video'),
(266, 61, '_tipo_da_midia', 'field_5db452001d0f1'),
(267, 61, 'icone_do_episodio', '59'),
(268, 61, '_icone_do_episodio', 'field_5db5040e2120d'),
(273, 39, 'icone_do_episodio', '59'),
(274, 39, '_icone_do_episodio', 'field_5db5040e2120d'),
(275, 62, 'tipo_da_midia', 'Podcast'),
(276, 62, '_tipo_da_midia', 'field_5db452001d0f1'),
(277, 62, 'icone_do_episodio', '59'),
(278, 62, '_icone_do_episodio', 'field_5db5040e2120d'),
(283, 63, 'tipo_da_midia', 'Podcast'),
(284, 63, '_tipo_da_midia', 'field_5db452001d0f1'),
(285, 63, 'icone_do_episodio', '59'),
(286, 63, '_icone_do_episodio', 'field_5db5040e2120d'),
(287, 65, '_wp_attached_file', '2019/10/miniatura-episodio.jpg'),
(288, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:394;s:6:\"height\";i:630;s:4:\"file\";s:30:\"2019/10/miniatura-episodio.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"miniatura-episodio-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"miniatura-episodio-188x300.jpg\";s:5:\"width\";i:188;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(293, 39, 'miniatura_do_episodio', '65'),
(294, 39, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(295, 66, 'tipo_da_midia', 'Podcast'),
(296, 66, '_tipo_da_midia', 'field_5db452001d0f1'),
(297, 66, 'icone_do_episodio', '59'),
(298, 66, '_icone_do_episodio', 'field_5db5040e2120d'),
(299, 66, 'miniatura_do_episodio', '65'),
(300, 66, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(305, 23, 'icone_do_episodio', '59'),
(306, 23, '_icone_do_episodio', 'field_5db5040e2120d'),
(307, 23, 'miniatura_do_episodio', '65'),
(308, 23, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(309, 67, 'tipo_da_midia', 'Video'),
(310, 67, '_tipo_da_midia', 'field_5db452001d0f1'),
(311, 67, 'icone_do_episodio', ''),
(312, 67, '_icone_do_episodio', 'field_5db5040e2120d'),
(313, 67, 'miniatura_do_episodio', '65'),
(314, 67, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(319, 16, 'icone_do_episodio', '59'),
(320, 16, '_icone_do_episodio', 'field_5db5040e2120d'),
(321, 16, 'miniatura_do_episodio', '65'),
(322, 16, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(323, 68, 'tipo_da_midia', 'Video'),
(324, 68, '_tipo_da_midia', 'field_5db452001d0f1'),
(325, 68, 'icone_do_episodio', '59'),
(326, 68, '_icone_do_episodio', 'field_5db5040e2120d'),
(327, 68, 'miniatura_do_episodio', '65'),
(328, 68, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(333, 14, 'miniatura_do_episodio', '65'),
(334, 14, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(335, 69, 'tipo_da_midia', 'Video'),
(336, 69, '_tipo_da_midia', 'field_5db452001d0f1'),
(337, 69, 'icone_do_episodio', '59'),
(338, 69, '_icone_do_episodio', 'field_5db5040e2120d'),
(339, 69, 'miniatura_do_episodio', '65'),
(340, 69, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(345, 12, 'icone_do_episodio', '59'),
(346, 12, '_icone_do_episodio', 'field_5db5040e2120d'),
(347, 12, 'miniatura_do_episodio', '65'),
(348, 12, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(349, 70, 'tipo_da_midia', 'Video'),
(350, 70, '_tipo_da_midia', 'field_5db452001d0f1'),
(351, 70, 'icone_do_episodio', '59'),
(352, 70, '_icone_do_episodio', 'field_5db5040e2120d'),
(353, 70, 'miniatura_do_episodio', '65'),
(354, 70, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(360, 7, 'icone_do_episodio', '59'),
(357, 7, '_thumbnail_id', '53'),
(361, 7, '_icone_do_episodio', 'field_5db5040e2120d'),
(362, 7, 'miniatura_do_episodio', '65'),
(363, 7, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(364, 71, 'tipo_da_midia', 'Video'),
(365, 71, '_tipo_da_midia', 'field_5db452001d0f1'),
(366, 71, 'icone_do_episodio', '59'),
(367, 71, '_icone_do_episodio', 'field_5db5040e2120d'),
(368, 71, 'miniatura_do_episodio', '65'),
(369, 71, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(374, 1, 'icone_do_episodio', '59'),
(375, 1, '_icone_do_episodio', 'field_5db5040e2120d'),
(376, 1, 'miniatura_do_episodio', '65'),
(377, 1, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(378, 72, 'tipo_da_midia', 'Video'),
(379, 72, '_tipo_da_midia', 'field_5db452001d0f1'),
(380, 72, 'icone_do_episodio', '59'),
(381, 72, '_icone_do_episodio', 'field_5db5040e2120d'),
(382, 72, 'miniatura_do_episodio', '65'),
(383, 72, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(388, 73, 'tipo_da_midia', 'Video'),
(406, 39, 'indicacacao_de_episodio', 'TP01 - EP04'),
(389, 73, '_tipo_da_midia', 'field_5db452001d0f1'),
(390, 73, 'icone_do_episodio', '59'),
(391, 73, '_icone_do_episodio', 'field_5db5040e2120d'),
(392, 73, 'miniatura_do_episodio', '65'),
(393, 73, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(421, 23, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(420, 23, 'indicacacao_de_episodio', 'TP01 - EP05'),
(407, 39, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(408, 75, 'tipo_da_midia', 'Podcast'),
(409, 75, '_tipo_da_midia', 'field_5db452001d0f1'),
(410, 75, 'icone_do_episodio', '59'),
(411, 75, '_icone_do_episodio', 'field_5db5040e2120d'),
(412, 75, 'miniatura_do_episodio', '65'),
(413, 75, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(414, 75, 'indicacacao_de_episodio', 'TP01 - EP04'),
(415, 75, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(422, 76, 'tipo_da_midia', 'video'),
(423, 76, '_tipo_da_midia', 'field_5db452001d0f1'),
(424, 76, 'icone_do_episodio', '59'),
(425, 76, '_icone_do_episodio', 'field_5db5040e2120d'),
(426, 76, 'miniatura_do_episodio', '65'),
(427, 76, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(428, 76, 'indicacacao_de_episodio', 'TP01 - EP05'),
(429, 76, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(434, 16, 'indicacacao_de_episodio', 'TP05 - EP07'),
(435, 16, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(436, 77, 'tipo_da_midia', 'video'),
(437, 77, '_tipo_da_midia', 'field_5db452001d0f1'),
(438, 77, 'icone_do_episodio', '59'),
(439, 77, '_icone_do_episodio', 'field_5db5040e2120d'),
(440, 77, 'miniatura_do_episodio', '65'),
(441, 77, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(442, 77, 'indicacacao_de_episodio', 'TP05 - EP07'),
(443, 77, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(448, 14, 'indicacacao_de_episodio', 'TP01 - EP02'),
(449, 14, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(450, 78, 'tipo_da_midia', 'video'),
(451, 78, '_tipo_da_midia', 'field_5db452001d0f1'),
(452, 78, 'icone_do_episodio', '59'),
(453, 78, '_icone_do_episodio', 'field_5db5040e2120d'),
(454, 78, 'miniatura_do_episodio', '65'),
(455, 78, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(456, 78, 'indicacacao_de_episodio', 'TP01 - EP02'),
(457, 78, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(462, 12, 'indicacacao_de_episodio', 'TP05 - EP01'),
(463, 12, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(464, 79, 'tipo_da_midia', 'video'),
(465, 79, '_tipo_da_midia', 'field_5db452001d0f1'),
(466, 79, 'icone_do_episodio', '59'),
(467, 79, '_icone_do_episodio', 'field_5db5040e2120d'),
(468, 79, 'miniatura_do_episodio', '65'),
(469, 79, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(470, 79, 'indicacacao_de_episodio', 'TP05 - EP01'),
(471, 79, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(476, 7, 'indicacacao_de_episodio', 'TP07 - EP09'),
(477, 7, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(478, 80, 'tipo_da_midia', 'video'),
(479, 80, '_tipo_da_midia', 'field_5db452001d0f1'),
(480, 80, 'icone_do_episodio', '59'),
(481, 80, '_icone_do_episodio', 'field_5db5040e2120d'),
(482, 80, 'miniatura_do_episodio', '65'),
(483, 80, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(484, 80, 'indicacacao_de_episodio', 'TP07 - EP09'),
(485, 80, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(490, 1, 'indicacacao_de_episodio', 'TP08 - EP09'),
(491, 1, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(492, 81, 'tipo_da_midia', 'Video'),
(493, 81, '_tipo_da_midia', 'field_5db452001d0f1'),
(494, 81, 'icone_do_episodio', '59'),
(495, 81, '_icone_do_episodio', 'field_5db5040e2120d'),
(496, 81, 'miniatura_do_episodio', '65'),
(497, 81, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(498, 81, 'indicacacao_de_episodio', 'TP08 - EP09'),
(499, 81, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(504, 82, 'tipo_da_midia', 'Video'),
(611, 92, 'tipo_da_midia', 'video'),
(505, 82, '_tipo_da_midia', 'field_5db452001d0f1'),
(506, 82, 'icone_do_episodio', '59'),
(507, 82, '_icone_do_episodio', 'field_5db5040e2120d'),
(508, 82, 'miniatura_do_episodio', '65'),
(509, 82, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(510, 82, 'indicacacao_de_episodio', 'TP08 - EP09'),
(511, 82, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(512, 83, '_edit_lock', '1572405598:1'),
(520, 83, '_edit_last', '1'),
(515, 83, '_thumbnail_id', '53'),
(523, 83, 'tipo_da_midia', 'video'),
(524, 83, '_tipo_da_midia', 'field_5db452001d0f1'),
(525, 83, 'icone_do_episodio', '59'),
(526, 83, '_icone_do_episodio', 'field_5db5040e2120d'),
(527, 83, 'miniatura_do_episodio', '20'),
(528, 83, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(529, 83, 'indicacacao_de_episodio', ''),
(530, 83, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(531, 86, 'tipo_da_midia', 'Podcast'),
(532, 86, '_tipo_da_midia', 'field_5db452001d0f1'),
(533, 86, 'icone_do_episodio', ''),
(534, 86, '_icone_do_episodio', 'field_5db5040e2120d'),
(535, 86, 'miniatura_do_episodio', ''),
(536, 86, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(537, 86, 'indicacacao_de_episodio', ''),
(538, 86, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(544, 87, '_tipo_da_midia', 'field_5db452001d0f1'),
(545, 87, 'icone_do_episodio', '59'),
(546, 87, '_icone_do_episodio', 'field_5db5040e2120d'),
(547, 87, 'miniatura_do_episodio', '20'),
(548, 87, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(549, 87, 'indicacacao_de_episodio', ''),
(550, 87, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(555, 89, 'tipo_da_midia', 'Podcast'),
(556, 89, '_tipo_da_midia', 'field_5db452001d0f1'),
(557, 89, 'icone_do_episodio', '59'),
(558, 89, '_icone_do_episodio', 'field_5db5040e2120d'),
(559, 89, 'miniatura_do_episodio', '20'),
(560, 89, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(561, 89, 'indicacacao_de_episodio', ''),
(562, 89, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(567, 90, 'tipo_da_midia', 'Podcast'),
(612, 92, '_tipo_da_midia', 'field_5db452001d0f1'),
(568, 90, '_tipo_da_midia', 'field_5db452001d0f1'),
(569, 90, 'icone_do_episodio', '59'),
(570, 90, '_icone_do_episodio', 'field_5db5040e2120d'),
(571, 90, 'miniatura_do_episodio', '20'),
(572, 90, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(573, 90, 'indicacacao_de_episodio', ''),
(574, 90, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(667, 96, 'tipo_da_midia', 'video'),
(643, 94, 'tipo_da_midia', 'video'),
(613, 92, 'icone_do_episodio', '59'),
(614, 92, '_icone_do_episodio', 'field_5db5040e2120d'),
(615, 92, 'miniatura_do_episodio', '65'),
(616, 92, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(617, 92, 'indicacacao_de_episodio', 'TP01 - EP05'),
(618, 92, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(627, 93, 'tipo_da_midia', 'video'),
(628, 93, '_tipo_da_midia', 'field_5db452001d0f1'),
(629, 93, 'icone_do_episodio', '59'),
(630, 93, '_icone_do_episodio', 'field_5db5040e2120d'),
(631, 93, 'miniatura_do_episodio', '65'),
(632, 93, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(633, 93, 'indicacacao_de_episodio', 'TP05 - EP07'),
(634, 93, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(644, 94, '_tipo_da_midia', 'field_5db452001d0f1'),
(645, 94, 'icone_do_episodio', '59'),
(646, 94, '_icone_do_episodio', 'field_5db5040e2120d'),
(647, 94, 'miniatura_do_episodio', '65'),
(648, 94, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(649, 94, 'indicacacao_de_episodio', 'TP08 - EP09'),
(650, 94, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(655, 95, 'tipo_da_midia', 'video'),
(668, 96, '_tipo_da_midia', 'field_5db452001d0f1'),
(656, 95, '_tipo_da_midia', 'field_5db452001d0f1'),
(657, 95, 'icone_do_episodio', '59'),
(658, 95, '_icone_do_episodio', 'field_5db5040e2120d'),
(659, 95, 'miniatura_do_episodio', '65'),
(660, 95, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(661, 95, 'indicacacao_de_episodio', 'TP07 - EP09'),
(662, 95, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(669, 96, 'icone_do_episodio', '59'),
(670, 96, '_icone_do_episodio', 'field_5db5040e2120d'),
(671, 96, 'miniatura_do_episodio', '65'),
(672, 96, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(673, 96, 'indicacacao_de_episodio', 'TP05 - EP01'),
(674, 96, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(679, 97, 'tipo_da_midia', 'video'),
(680, 97, '_tipo_da_midia', 'field_5db452001d0f1'),
(681, 97, 'icone_do_episodio', '59'),
(682, 97, '_icone_do_episodio', 'field_5db5040e2120d'),
(683, 97, 'miniatura_do_episodio', '65'),
(684, 97, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(685, 97, 'indicacacao_de_episodio', 'TP01 - EP02'),
(686, 97, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(691, 98, 'tipo_da_midia', 'video'),
(692, 98, '_tipo_da_midia', 'field_5db452001d0f1'),
(693, 98, 'icone_do_episodio', '59'),
(694, 98, '_icone_do_episodio', 'field_5db5040e2120d'),
(695, 98, 'miniatura_do_episodio', '65'),
(696, 98, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(697, 98, 'indicacacao_de_episodio', 'TP05 - EP07'),
(698, 98, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(703, 99, 'tipo_da_midia', 'video'),
(704, 99, '_tipo_da_midia', 'field_5db452001d0f1'),
(705, 99, 'icone_do_episodio', '59'),
(706, 99, '_icone_do_episodio', 'field_5db5040e2120d'),
(707, 99, 'miniatura_do_episodio', '65'),
(708, 99, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(709, 99, 'indicacacao_de_episodio', 'TP01 - EP05'),
(710, 99, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(715, 100, 'tipo_da_midia', 'video'),
(716, 100, '_tipo_da_midia', 'field_5db452001d0f1'),
(717, 100, 'icone_do_episodio', '59'),
(718, 100, '_icone_do_episodio', 'field_5db5040e2120d'),
(719, 100, 'miniatura_do_episodio', '65'),
(720, 100, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(721, 100, 'indicacacao_de_episodio', 'TP01 - EP04'),
(722, 100, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(727, 101, 'tipo_da_midia', 'video'),
(728, 101, '_tipo_da_midia', 'field_5db452001d0f1'),
(729, 101, 'icone_do_episodio', '59'),
(730, 101, '_icone_do_episodio', 'field_5db5040e2120d'),
(731, 101, 'miniatura_do_episodio', '20'),
(732, 101, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(733, 101, 'indicacacao_de_episodio', ''),
(734, 101, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(739, 102, 'tipo_da_midia', 'podcast'),
(740, 102, '_tipo_da_midia', 'field_5db452001d0f1'),
(741, 102, 'icone_do_episodio', '59'),
(742, 102, '_icone_do_episodio', 'field_5db5040e2120d'),
(743, 102, 'miniatura_do_episodio', '65'),
(744, 102, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(745, 102, 'indicacacao_de_episodio', 'TP01 - EP04'),
(746, 102, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(747, 103, '_edit_lock', '1572405282:1'),
(750, 103, '_thumbnail_id', '53');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
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
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-10-22 00:06:24', '2019-10-22 03:06:24', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Episódio  vídeo Not ipsum dolore aunte deme', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2019-10-29 21:47:55', '2019-10-30 00:47:55', '', 0, 'http://localhost/programas/?p=1', 0, 'post', '', 1),
(2, 1, '2019-10-22 00:06:24', '2019-10-22 03:06:24', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/programas/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'publish', 'closed', 'open', '', 'pagina-exemplo', '', '', '2019-10-22 00:06:24', '2019-10-22 03:06:24', '', 0, 'http://localhost/programas/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-10-22 00:06:24', '2019-10-22 03:06:24', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>O endereço do nosso site é: http://localhost/programas.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais dados pessoais coletamos e porque</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentários</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Mídia</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulários de contato</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Mídia incorporada de outros sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Análises</h3><!-- /wp:heading --><!-- wp:heading --><h2>Com quem partilhamos seus dados</h2><!-- /wp:heading --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde enviamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Suas informações de contato</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informações adicionais</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Como protegemos seus dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Quais são nossos procedimentos contra violação de dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De quais terceiros nós recebemos dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Quais tomadas de decisão ou análises de perfil automatizadas fazemos com os dados de usuários</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Requisitos obrigatórios de divulgação para sua categoria profissional</h3><!-- /wp:heading -->', 'Política de privacidade', '', 'draft', 'closed', 'open', '', 'politica-de-privacidade', '', '', '2019-10-22 00:06:24', '2019-10-22 03:06:24', '', 0, 'http://localhost/programas/?page_id=3', 0, 'page', '', 0),
(91, 1, '2019-10-29 21:24:21', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-10-29 21:24:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/programas/?p=91', 0, 'post', '', 0),
(5, 1, '2019-10-23 00:13:00', '2019-10-23 03:13:00', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-10-23 00:13:00', '2019-10-23 03:13:00', '', 1, 'http://localhost/programas/?p=5', 0, 'revision', '', 0),
(6, 1, '2019-10-23 00:17:59', '2019-10-23 03:17:59', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Not ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-10-23 00:17:59', '2019-10-23 03:17:59', '', 1, 'http://localhost/programas/?p=6', 0, 'revision', '', 0),
(7, 1, '2019-10-23 00:19:00', '2019-10-23 03:19:00', '', 'Episódio  vídeo Not 2 ipsum dolore aunte demecnitus dostre', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'publish', 'open', 'open', '', 'not-2-ipsum-dolore-aunte-demecnitus-dostre', '', '', '2019-10-29 21:47:59', '2019-10-30 00:47:59', '', 0, 'http://localhost/programas/?p=7', 0, 'post', '', 0),
(8, 1, '2019-10-23 00:19:00', '2019-10-23 03:19:00', '', 'Not 2 ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-10-23 00:19:00', '2019-10-23 03:19:00', '', 7, 'http://localhost/programas/?p=8', 0, 'revision', '', 0),
(10, 1, '2019-10-23 00:22:11', '2019-10-23 03:22:11', '', 'Página principal', '', 'publish', 'closed', 'closed', '', 'pagina-principal', '', '', '2019-10-23 00:22:11', '2019-10-23 03:22:11', '', 0, 'http://localhost/programas/?page_id=10', 0, 'page', '', 0),
(11, 1, '2019-10-23 00:22:11', '2019-10-23 03:22:11', '', 'Página principal', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-10-23 00:22:11', '2019-10-23 03:22:11', '', 10, 'http://localhost/programas/?p=11', 0, 'revision', '', 0),
(12, 1, '2019-10-23 00:25:47', '2019-10-23 03:25:47', '', 'Episódio  vídeo Not 3 ipsum dolore aunte demecnitus dostre', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'publish', 'open', 'open', '', 'not-3-ipsum-dolore-aunte-demecnitus-dostre', '', '', '2019-10-29 21:48:04', '2019-10-30 00:48:04', '', 0, 'http://localhost/programas/?p=12', 0, 'post', '', 0),
(13, 1, '2019-10-23 00:25:47', '2019-10-23 03:25:47', '', 'Not 3 ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-10-23 00:25:47', '2019-10-23 03:25:47', '', 12, 'http://localhost/programas/?p=13', 0, 'revision', '', 0),
(14, 1, '2019-10-23 00:27:12', '2019-10-23 03:27:12', '', 'Episódio  vídeo Not 4 ipsum dolore aunte demecnitus dostre', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'publish', 'open', 'open', '', 'not-4-ipsum-dolore-aunte-demecnitus-dostre', '', '', '2019-10-29 21:48:10', '2019-10-30 00:48:10', '', 0, 'http://localhost/programas/?p=14', 0, 'post', '', 0),
(15, 1, '2019-10-23 00:27:12', '2019-10-23 03:27:12', '', 'Not 4 ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-10-23 00:27:12', '2019-10-23 03:27:12', '', 14, 'http://localhost/programas/?p=15', 0, 'revision', '', 0),
(16, 1, '2019-10-23 00:28:04', '2019-10-23 03:28:04', '', 'Episódio  vídeo Not 5 ipsum dolore aunte deme cnitus', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'publish', 'open', 'open', '', 'not-5-ipsum-dolore-aunte-demecnitus-dostre', '', '', '2019-10-29 21:48:28', '2019-10-30 00:48:28', '', 0, 'http://localhost/programas/?p=16', 0, 'post', '', 0),
(17, 1, '2019-10-23 00:28:04', '2019-10-23 03:28:04', '', 'Not 5 ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-10-23 00:28:04', '2019-10-23 03:28:04', '', 16, 'http://localhost/programas/?p=17', 0, 'revision', '', 0),
(18, 1, '2019-10-23 00:49:11', '2019-10-23 03:49:11', '', 'salao', '', 'inherit', 'open', 'closed', '', 'salao', '', '', '2019-10-23 00:52:28', '2019-10-23 03:52:28', '', 0, 'http://localhost/programas/wp-content/uploads/2019/10/salao.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2019-10-24 13:53:57', '2019-10-24 16:53:57', '', '4bb73015afcdba9e587c6fe5454aad46a1c28ebe3592b726c6b1749ccf632da2', '', 'inherit', 'open', 'closed', '', '4bb73015afcdba9e587c6fe5454aad46a1c28ebe3592b726c6b1749ccf632da2', '', '', '2019-10-24 13:53:57', '2019-10-24 16:53:57', '', 0, 'http://localhost/programas/wp-content/uploads/2019/10/4bb73015afcdba9e587c6fe5454aad46a1c28ebe3592b726c6b1749ccf632da2.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2019-10-24 22:19:52', '2019-10-25 01:19:52', '', 'Sem-Título-1', '', 'inherit', 'open', 'closed', '', 'sem-titulo-1', '', '', '2019-10-29 00:01:41', '2019-10-29 03:01:41', '', 83, 'http://localhost/programas/wp-content/uploads/2019/10/Sem-Título-1.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2019-10-25 00:17:05', '2019-10-25 03:17:05', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"category\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Categoria', 'categoria', 'publish', 'closed', 'closed', '', 'group_5db269135c2f6', '', '', '2019-10-26 10:37:49', '2019-10-26 13:37:49', '', 0, 'http://localhost/programas/?post_type=acf-field-group&#038;p=21', 0, 'acf-field-group', '', 0),
(22, 1, '2019-10-25 00:17:05', '2019-10-25 03:17:05', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'imagem miniatura', 'imagem_miniatura', 'publish', 'closed', 'closed', '', 'field_5db269264b82d', '', '', '2019-10-26 10:37:49', '2019-10-26 13:37:49', '', 21, 'http://localhost/programas/?post_type=acf-field&#038;p=22', 0, 'acf-field', '', 0),
(23, 1, '2019-10-25 00:19:06', '2019-10-25 03:19:06', '', 'Episódio vídeo Not 6 ipsum dolore aunte deme cnitus do', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'publish', 'open', 'open', '', 'not-6-ipsum-dolore-aunte-demecnitus-dostre', '', '', '2019-10-29 21:48:37', '2019-10-30 00:48:37', '', 0, 'http://localhost/programas/?p=23', 0, 'post', '', 0),
(24, 1, '2019-10-25 00:19:06', '2019-10-25 03:19:06', '', 'Not 6 ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-10-25 00:19:06', '2019-10-25 03:19:06', '', 23, 'http://localhost/programas/23-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2019-10-26 10:23:28', '2019-10-26 13:23:28', '', 'Episódio Not 6 ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-10-26 10:23:28', '2019-10-26 13:23:28', '', 23, 'http://localhost/programas/23-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2019-10-26 10:23:39', '2019-10-26 13:23:39', '', 'Episódio Not 5 ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-10-26 10:23:39', '2019-10-26 13:23:39', '', 16, 'http://localhost/programas/16-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2019-10-26 10:23:50', '2019-10-26 13:23:50', '', 'EpisódioNot 4 ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-10-26 10:23:50', '2019-10-26 13:23:50', '', 14, 'http://localhost/programas/14-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2019-10-26 10:24:04', '2019-10-26 13:24:04', '', 'Episódio Not 3 ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-10-26 10:24:04', '2019-10-26 13:24:04', '', 12, 'http://localhost/programas/12-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2019-10-26 10:24:22', '2019-10-26 13:24:22', '', 'Episódio Not 2 ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-10-26 10:24:22', '2019-10-26 13:24:22', '', 7, 'http://localhost/programas/7-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2019-10-26 10:24:35', '2019-10-26 13:24:35', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Episódio Not ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-10-26 10:24:35', '2019-10-26 13:24:35', '', 1, 'http://localhost/programas/1-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2019-10-26 10:25:18', '2019-10-26 13:25:18', '', 'Episódio vídeo Not 6 ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-10-26 10:25:18', '2019-10-26 13:25:18', '', 23, 'http://localhost/programas/23-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2019-10-26 10:25:25', '2019-10-26 13:25:25', '', 'Episódio  vídeo Not 5 ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-10-26 10:25:25', '2019-10-26 13:25:25', '', 16, 'http://localhost/programas/16-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2019-10-26 10:25:35', '2019-10-26 13:25:35', '', 'Episódio  vídeo Not 4 ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-10-26 10:25:35', '2019-10-26 13:25:35', '', 14, 'http://localhost/programas/14-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2019-10-26 10:25:43', '2019-10-26 13:25:43', '', 'Episódio  vídeo Not 3 ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-10-26 10:25:43', '2019-10-26 13:25:43', '', 12, 'http://localhost/programas/12-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2019-10-26 10:25:51', '2019-10-26 13:25:51', '', 'Episódio  vídeo Not 2 ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-10-26 10:25:51', '2019-10-26 13:25:51', '', 7, 'http://localhost/programas/7-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2019-10-26 10:26:00', '2019-10-26 13:26:00', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Episódio  vídeo Not ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-10-26 10:26:00', '2019-10-26 13:26:00', '', 1, 'http://localhost/programas/1-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2019-10-26 11:05:06', '2019-10-26 14:05:06', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"category:programa\";}}}s:8:\"position\";s:4:\"side\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"field\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Opções do Episódio', 'opcoes-do-episodio', 'publish', 'closed', 'closed', '', 'group_5db451fa6ec2f', '', '', '2019-10-29 21:30:57', '2019-10-30 00:30:57', '', 0, 'http://localhost/programas/?post_type=acf-field-group&#038;p=37', 1, 'acf-field-group', '', 0),
(38, 1, '2019-10-26 11:05:06', '2019-10-26 14:05:06', 'a:12:{s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:5:\"video\";s:5:\"video\";s:7:\"podcast\";s:7:\"podcast\";}s:10:\"allow_null\";i:0;s:12:\"other_choice\";i:0;s:13:\"default_value\";s:0:\"\";s:6:\"layout\";s:8:\"vertical\";s:13:\"return_format\";s:5:\"value\";s:17:\"save_other_choice\";i:0;}', 'Tipo da midia', 'tipo_da_midia', 'publish', 'closed', 'closed', '', 'field_5db452001d0f1', '', '', '2019-10-29 21:30:57', '2019-10-30 00:30:57', '', 37, 'http://localhost/programas/?post_type=acf-field&#038;p=38', 0, 'acf-field', '', 0),
(39, 1, '2019-10-26 11:06:02', '2019-10-26 14:06:02', '', 'Podcast Not 6 ipsum dolore aunte demecnitus dostre', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'publish', 'open', 'open', '', 'podcast-not-6-ipsum-dolore-aunte-demecnitus-dostre', '', '', '2019-10-29 22:41:57', '2019-10-30 01:41:57', '', 0, 'http://localhost/programas/?p=39', 0, 'post', '', 0),
(40, 1, '2019-10-26 11:06:02', '2019-10-26 14:06:02', '', 'Podcast Not 6 ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-10-26 11:06:02', '2019-10-26 14:06:02', '', 39, 'http://localhost/programas/39-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2019-10-26 11:06:05', '2019-10-26 14:06:05', '', 'Podcast Not 6 ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-10-26 11:06:05', '2019-10-26 14:06:05', '', 39, 'http://localhost/programas/39-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2019-10-26 11:07:44', '2019-10-26 14:07:44', '', 'Podcast Not 6 ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-10-26 11:07:44', '2019-10-26 14:07:44', '', 39, 'http://localhost/programas/39-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2019-10-26 11:08:40', '2019-10-26 14:08:40', '', 'Podcast Not 6 ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-10-26 11:08:40', '2019-10-26 14:08:40', '', 39, 'http://localhost/programas/39-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2019-10-26 11:23:27', '2019-10-26 14:23:27', '', 'Podcast Not 6 ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-10-26 11:23:27', '2019-10-26 14:23:27', '', 39, 'http://localhost/programas/39-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2019-10-26 11:23:50', '2019-10-26 14:23:50', '', 'Podcast Not 6 ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-10-26 11:23:50', '2019-10-26 14:23:50', '', 39, 'http://localhost/programas/39-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2019-10-26 11:25:21', '2019-10-26 14:25:21', '', 'Episódio vídeo Not 6 ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-10-26 11:25:21', '2019-10-26 14:25:21', '', 23, 'http://localhost/programas/23-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2019-10-26 11:25:48', '2019-10-26 14:25:48', '', 'Episódio  vídeo Not 5 ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-10-26 11:25:48', '2019-10-26 14:25:48', '', 16, 'http://localhost/programas/16-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2019-10-26 11:26:16', '2019-10-26 14:26:16', '', 'Episódio  vídeo Not 4 ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-10-26 11:26:16', '2019-10-26 14:26:16', '', 14, 'http://localhost/programas/14-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2019-10-26 11:26:41', '2019-10-26 14:26:41', '', 'Episódio  vídeo Not 3 ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-10-26 11:26:41', '2019-10-26 14:26:41', '', 12, 'http://localhost/programas/12-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2019-10-26 11:26:50', '2019-10-26 14:26:50', '', 'Episódio  vídeo Not 3 ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-10-26 11:26:50', '2019-10-26 14:26:50', '', 12, 'http://localhost/programas/12-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2019-10-26 11:27:09', '2019-10-26 14:27:09', '', 'Episódio  vídeo Not 2 ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-10-26 11:27:09', '2019-10-26 14:27:09', '', 7, 'http://localhost/programas/7-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2019-10-26 11:27:29', '2019-10-26 14:27:29', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Episódio  vídeo Not ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-10-26 11:27:29', '2019-10-26 14:27:29', '', 1, 'http://localhost/programas/1-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2019-10-26 19:38:19', '2019-10-26 22:38:19', '', 'banner-teste', '', 'inherit', 'open', 'closed', '', 'banner-teste', '', '', '2019-10-26 19:38:19', '2019-10-26 22:38:19', '', 23, 'http://localhost/programas/wp-content/uploads/2019/10/banner-teste-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2019-10-26 23:34:46', '2019-10-27 02:34:46', '', 'Episódio vídeo Not 6 ipsum dolore aunte demecnitus dostre', 'Ipsum dolore domenics delauntre comnstur consequectuer habilis demenier', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-10-26 23:34:46', '2019-10-27 02:34:46', '', 23, 'http://localhost/programas/23-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2019-10-26 23:36:19', '2019-10-27 02:36:19', '', 'Podcast Not 6 ipsum dolore aunte demecnitus dostre', 'Ipsum dolore domenics delauntre comnstur consequectuer habilis demenier', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-10-26 23:36:19', '2019-10-27 02:36:19', '', 39, 'http://localhost/programas/39-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2019-10-26 23:36:37', '2019-10-27 02:36:37', '', 'Episódio  vídeo Not 5 ipsum dolore aunte demecnitus dostre', 'Ipsum dolore domenics delauntre comnstur consequectuer habilis demenier', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-10-26 23:36:37', '2019-10-27 02:36:37', '', 16, 'http://localhost/programas/16-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2019-10-26 23:42:43', '2019-10-27 02:42:43', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'icone do episodio', 'icone_do_episodio', 'publish', 'closed', 'closed', '', 'field_5db5040e2120d', '', '', '2019-10-26 23:42:43', '2019-10-27 02:42:43', '', 37, 'http://localhost/programas/?post_type=acf-field&p=57', 1, 'acf-field', '', 0),
(58, 1, '2019-10-27 00:03:21', '2019-10-27 03:03:21', '', 'Episódio  vídeo Not 4 ipsum dolore aunte demecnitus dostre', 'Ipsum dolore domenics delauntre comnstur consequectuer habilis demenier', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-10-27 00:03:21', '2019-10-27 03:03:21', '', 14, 'http://localhost/programas/14-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2019-10-27 00:12:26', '2019-10-27 03:12:26', '', 'Sério Original', '', 'inherit', 'open', 'closed', '', 'serio-original', '', '', '2019-10-27 00:12:26', '2019-10-27 03:12:26', '', 14, 'http://localhost/programas/wp-content/uploads/2019/10/Sério-Original.png', 0, 'attachment', 'image/png', 0),
(60, 1, '2019-10-27 00:12:31', '2019-10-27 03:12:31', '', 'Episódio  vídeo Not 4 ipsum dolore aunte demecnitus dostre', 'Ipsum dolore domenics delauntre comnstur consequectuer habilis demenier', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-10-27 00:12:31', '2019-10-27 03:12:31', '', 14, 'http://localhost/programas/14-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2019-10-27 00:12:42', '2019-10-27 03:12:42', '', 'Episódio  vídeo Not 4 ipsum dolore aunte demecnitus dostre', 'Ipsum dolore domenics delauntre comnstur consequectuer habilis demenier', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-10-27 00:12:42', '2019-10-27 03:12:42', '', 14, 'http://localhost/programas/14-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2019-10-27 00:14:34', '2019-10-27 03:14:34', '', 'Podcast Not 6 ipsum dolore aunte demecnitus dostre', 'Ipsum dolore domenics delauntre comnstur consequectuer habilis demenier', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-10-27 00:14:34', '2019-10-27 03:14:34', '', 39, 'http://localhost/programas/39-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2019-10-27 00:14:38', '2019-10-27 03:14:38', '', 'Podcast Not 6 ipsum dolore aunte demecnitus dostre', 'Ipsum dolore domenics delauntre comnstur consequectuer habilis demenier', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-10-27 00:14:38', '2019-10-27 03:14:38', '', 39, 'http://localhost/programas/39-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2019-10-28 19:50:04', '2019-10-28 22:50:04', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Miniatura do episodio', 'miniatura_do_episodio', 'publish', 'closed', 'closed', '', 'field_5db7707fbe4f5', '', '', '2019-10-28 19:50:04', '2019-10-28 22:50:04', '', 37, 'http://localhost/programas/?post_type=acf-field&p=64', 2, 'acf-field', '', 0),
(65, 1, '2019-10-28 19:50:44', '2019-10-28 22:50:44', '', 'miniatura-episodio', '', 'inherit', 'open', 'closed', '', 'miniatura-episodio', '', '', '2019-10-28 19:50:44', '2019-10-28 22:50:44', '', 39, 'http://localhost/programas/wp-content/uploads/2019/10/miniatura-episodio.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2019-10-28 19:50:49', '2019-10-28 22:50:49', '', 'Podcast Not 6 ipsum dolore aunte demecnitus dostre', 'Ipsum dolore domenics delauntre comnstur consequectuer habilis demenier', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-10-28 19:50:49', '2019-10-28 22:50:49', '', 39, 'http://localhost/programas/39-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2019-10-28 19:51:11', '2019-10-28 22:51:11', '', 'Episódio vídeo Not 6 ipsum dolore aunte demecnitus dostre', 'Ipsum dolore domenics delauntre comnstur consequectuer habilis demenier', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-10-28 19:51:11', '2019-10-28 22:51:11', '', 23, 'http://localhost/programas/23-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2019-10-28 19:51:22', '2019-10-28 22:51:22', '', 'Episódio  vídeo Not 5 ipsum dolore aunte demecnitus dostre', 'Ipsum dolore domenics delauntre comnstur consequectuer habilis demenier', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-10-28 19:51:22', '2019-10-28 22:51:22', '', 16, 'http://localhost/programas/16-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2019-10-28 19:51:37', '2019-10-28 22:51:37', '', 'Episódio  vídeo Not 4 ipsum dolore aunte demecnitus dostre', 'Ipsum dolore domenics delauntre comnstur consequectuer habilis demenier', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-10-28 19:51:37', '2019-10-28 22:51:37', '', 14, 'http://localhost/programas/14-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2019-10-28 19:51:47', '2019-10-28 22:51:47', '', 'Episódio  vídeo Not 3 ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-10-28 19:51:47', '2019-10-28 22:51:47', '', 12, 'http://localhost/programas/12-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2019-10-28 19:52:05', '2019-10-28 22:52:05', '', 'Episódio  vídeo Not 2 ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-10-28 19:52:05', '2019-10-28 22:52:05', '', 7, 'http://localhost/programas/7-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2019-10-28 19:52:16', '2019-10-28 22:52:16', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Episódio  vídeo Not ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-10-28 19:52:16', '2019-10-28 22:52:16', '', 1, 'http://localhost/programas/1-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2019-10-28 19:52:56', '2019-10-28 22:52:56', '', 'Episódio vídeo Not 6 ipsum dolore aunte demecnitus dostre', 'Ipsum dolore domenics delauntre comnstur consequectuer habilis demenier', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-10-28 19:52:56', '2019-10-28 22:52:56', '', 23, 'http://localhost/programas/23-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2019-10-28 21:34:00', '2019-10-29 00:34:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Indicacacao de Episodio', 'indicacacao_de_episodio', 'publish', 'closed', 'closed', '', 'field_5db788e919b7f', '', '', '2019-10-28 21:34:00', '2019-10-29 00:34:00', '', 37, 'http://localhost/programas/?post_type=acf-field&p=74', 3, 'acf-field', '', 0),
(75, 1, '2019-10-28 21:34:58', '2019-10-29 00:34:58', '', 'Podcast Not 6 ipsum dolore aunte demecnitus dostre', 'Ipsum dolore domenics delauntre comnstur consequectuer habilis demenier', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-10-28 21:34:58', '2019-10-29 00:34:58', '', 39, 'http://localhost/programas/39-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2019-10-28 21:35:07', '2019-10-29 00:35:07', '', 'Episódio vídeo Not 6 ipsum dolore aunte demecnitus dostre', 'Ipsum dolore domenics delauntre comnstur consequectuer habilis demenier', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-10-28 21:35:07', '2019-10-29 00:35:07', '', 23, 'http://localhost/programas/23-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2019-10-28 21:35:19', '2019-10-29 00:35:19', '', 'Episódio  vídeo Not 5 ipsum dolore aunte demecnitus dostre', 'Ipsum dolore domenics delauntre comnstur consequectuer habilis demenier', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-10-28 21:35:19', '2019-10-29 00:35:19', '', 16, 'http://localhost/programas/16-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2019-10-28 21:35:28', '2019-10-29 00:35:28', '', 'Episódio  vídeo Not 4 ipsum dolore aunte demecnitus dostre', 'Ipsum dolore domenics delauntre comnstur consequectuer habilis demenier', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-10-28 21:35:28', '2019-10-29 00:35:28', '', 14, 'http://localhost/programas/14-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2019-10-28 21:35:39', '2019-10-29 00:35:39', '', 'Episódio  vídeo Not 3 ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-10-28 21:35:39', '2019-10-29 00:35:39', '', 12, 'http://localhost/programas/12-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2019-10-28 21:35:51', '2019-10-29 00:35:51', '', 'Episódio  vídeo Not 2 ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-10-28 21:35:51', '2019-10-29 00:35:51', '', 7, 'http://localhost/programas/7-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2019-10-28 21:36:03', '2019-10-29 00:36:03', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Episódio  vídeo Not ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-10-28 21:36:03', '2019-10-29 00:36:03', '', 1, 'http://localhost/programas/1-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2019-10-28 21:36:11', '2019-10-29 00:36:11', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Episódio  vídeo Not ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-10-28 21:36:11', '2019-10-29 00:36:11', '', 1, 'http://localhost/programas/1-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2019-10-28 23:56:58', '2019-10-29 02:56:58', '', 'Episódio sem popular', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'publish', 'open', 'open', '', 'post-sem-popular', '', '', '2019-10-29 21:48:57', '2019-10-30 00:48:57', '', 0, 'http://localhost/programas/?p=83', 0, 'post', '', 0),
(84, 1, '2019-10-28 23:56:58', '2019-10-29 02:56:58', '', 'Post sem popular', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2019-10-28 23:56:58', '2019-10-29 02:56:58', '', 83, 'http://localhost/programas/83-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2019-10-28 23:58:19', '2019-10-29 02:58:19', '', 'Post sem popularr', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2019-10-28 23:58:19', '2019-10-29 02:58:19', '', 83, 'http://localhost/programas/83-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2019-10-28 23:59:15', '2019-10-29 02:59:15', '', 'Post sem popularr', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2019-10-28 23:59:15', '2019-10-29 02:59:15', '', 83, 'http://localhost/programas/83-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2019-10-29 00:01:41', '2019-10-29 03:01:41', '', 'Post sem popularr', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2019-10-29 00:01:41', '2019-10-29 03:01:41', '', 83, 'http://localhost/programas/83-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2019-10-29 00:02:18', '2019-10-29 03:02:18', '', 'Episódio sem popular', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2019-10-29 00:02:18', '2019-10-29 03:02:18', '', 83, 'http://localhost/programas/83-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2019-10-29 00:02:19', '2019-10-29 03:02:19', '', 'Episódio sem popular', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2019-10-29 00:02:19', '2019-10-29 03:02:19', '', 83, 'http://localhost/programas/83-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2019-10-29 00:02:23', '2019-10-29 03:02:23', '', 'Episódio sem popular', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2019-10-29 00:02:23', '2019-10-29 03:02:23', '', 83, 'http://localhost/programas/83-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2019-10-29 21:45:34', '2019-10-30 00:45:34', '', 'Episódio vídeo Not 6 ipsum dolore aunte deme cnitus do', 'Ipsum dolore domenics delauntre comnstur consequectuer habilis demenier', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-10-29 21:45:34', '2019-10-30 00:45:34', '', 23, 'http://localhost/programas/23-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2019-10-29 21:46:22', '2019-10-30 00:46:22', '', 'Episódio  vídeo Not 5 ipsum dolore aunte deme cnitus', 'Ipsum dolore domenics delauntre comnstur consequectuer habilis demenier', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-10-29 21:46:22', '2019-10-30 00:46:22', '', 16, 'http://localhost/programas/16-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2019-10-29 21:47:54', '2019-10-30 00:47:54', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Episódio  vídeo Not ipsum dolore aunte deme', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-10-29 21:47:54', '2019-10-30 00:47:54', '', 1, 'http://localhost/programas/1-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2019-10-29 21:47:58', '2019-10-30 00:47:58', '', 'Episódio  vídeo Not 2 ipsum dolore aunte demecnitus dostre', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-10-29 21:47:58', '2019-10-30 00:47:58', '', 7, 'http://localhost/programas/7-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2019-10-29 21:48:03', '2019-10-30 00:48:03', '', 'Episódio  vídeo Not 3 ipsum dolore aunte demecnitus dostre', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-10-29 21:48:03', '2019-10-30 00:48:03', '', 12, 'http://localhost/programas/12-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2019-10-29 21:48:09', '2019-10-30 00:48:09', '', 'Episódio  vídeo Not 4 ipsum dolore aunte demecnitus dostre', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-10-29 21:48:09', '2019-10-30 00:48:09', '', 14, 'http://localhost/programas/14-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2019-10-29 21:48:27', '2019-10-30 00:48:27', '', 'Episódio  vídeo Not 5 ipsum dolore aunte deme cnitus', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-10-29 21:48:27', '2019-10-30 00:48:27', '', 16, 'http://localhost/programas/16-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2019-10-29 21:48:36', '2019-10-30 00:48:36', '', 'Episódio vídeo Not 6 ipsum dolore aunte deme cnitus do', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-10-29 21:48:36', '2019-10-30 00:48:36', '', 23, 'http://localhost/programas/23-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2019-10-29 21:48:51', '2019-10-30 00:48:51', '', 'Podcast Not 6 ipsum dolore aunte demecnitus dostre', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-10-29 21:48:51', '2019-10-30 00:48:51', '', 39, 'http://localhost/programas/39-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2019-10-29 21:48:56', '2019-10-30 00:48:56', '', 'Episódio sem popular', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2019-10-29 21:48:56', '2019-10-30 00:48:56', '', 83, 'http://localhost/programas/83-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2019-10-29 22:41:57', '2019-10-30 01:41:57', '', 'Podcast Not 6 ipsum dolore aunte demecnitus dostre', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-10-29 22:41:57', '2019-10-30 01:41:57', '', 39, 'http://localhost/programas/39-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2019-10-29 23:30:43', '2019-10-30 02:30:43', '<!-- wp:paragraph -->\n<p>As asdf asd fasf  asf asd fasdf asdf asdf asdf a As asdf asd fasf  asf asd fasdf asdf asdf asdf a  As asdf asd fasf  asf asd fasdf asdf asdf asdf a  As asdf asd fasf  asf asd fasdf asdf asdf asdf a  As asdf asd fasf  asf asd fasdf asdf asdf asdf a  As asdf asd fasf  asf asd fasdf asdf asdf asdf a  As asdf asd fasf  asf asd fasdf asdf asdf asdf a  As asdf asd fasf  asf asd fasdf asdf asdf asdf a  As asdf asd fasf  asf asd fasdf asdf asdf asdf a  As asdf asd fasf  asf asd fasdf asdf asdf asdf a </p>\n<!-- /wp:paragraph -->', 'Título de notícia de teste', 'As asdf asd fasf  asf asd fasdf asdf asdf asdf a As asdf asd fasf  asf asd fasdf', 'publish', 'open', 'open', '', 'titulo-de-noticia-de-teste', '', '', '2019-10-29 23:30:43', '2019-10-30 02:30:43', '', 0, 'http://localhost/programas/?p=103', 0, 'post', '', 0),
(104, 1, '2019-10-29 23:30:43', '2019-10-30 02:30:43', '<!-- wp:paragraph -->\n<p>As asdf asd fasf  asf asd fasdf asdf asdf asdf a As asdf asd fasf  asf asd fasdf asdf asdf asdf a  As asdf asd fasf  asf asd fasdf asdf asdf asdf a  As asdf asd fasf  asf asd fasdf asdf asdf asdf a  As asdf asd fasf  asf asd fasdf asdf asdf asdf a  As asdf asd fasf  asf asd fasdf asdf asdf asdf a  As asdf asd fasf  asf asd fasdf asdf asdf asdf a  As asdf asd fasf  asf asd fasdf asdf asdf asdf a  As asdf asd fasf  asf asd fasdf asdf asdf asdf a  As asdf asd fasf  asf asd fasdf asdf asdf asdf a </p>\n<!-- /wp:paragraph -->', 'Título de notícia de teste', 'As asdf asd fasf  asf asd fasdf asdf asdf asdf a As asdf asd fasf  asf asd fasdf', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2019-10-29 23:30:43', '2019-10-30 02:30:43', '', 103, 'http://localhost/programas/103-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 21, 'imagem_miniatura', '20'),
(2, 21, '_imagem_miniatura', 'field_5db269264b82d'),
(3, 22, 'imagem_miniatura', ''),
(4, 22, '_imagem_miniatura', 'field_5db269264b82d'),
(20, 23, '_imagem_miniatura', 'field_5db269264b82d'),
(19, 23, 'imagem_miniatura', '20'),
(7, 15, 'imagem_miniatura', '20'),
(8, 15, '_imagem_miniatura', 'field_5db269264b82d'),
(9, 16, 'imagem_miniatura', '20'),
(10, 16, '_imagem_miniatura', 'field_5db269264b82d'),
(11, 17, 'imagem_miniatura', '20'),
(12, 17, '_imagem_miniatura', 'field_5db269264b82d'),
(13, 18, 'imagem_miniatura', '20'),
(14, 18, '_imagem_miniatura', 'field_5db269264b82d'),
(15, 19, 'imagem_miniatura', '20'),
(16, 19, '_imagem_miniatura', 'field_5db269264b82d'),
(17, 20, 'imagem_miniatura', '20'),
(18, 20, '_imagem_miniatura', 'field_5db269264b82d');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(23, 'Fazedoras', 'fazedoras', 0),
(13, 'programa', 'programa', 0),
(15, 'program2', 'program2', 0),
(16, 'Program3', 'program3', 0),
(17, 'Program4', 'program4', 0),
(18, 'Program5', 'program5', 0),
(19, 'Program6', 'program6', 0),
(20, 'Program7', 'program7', 0),
(21, 'Program8', 'program8', 0),
(22, 'Destaque', 'destaque', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(7, 1, 0),
(12, 1, 0),
(14, 1, 0),
(39, 13, 0),
(1, 1, 0),
(83, 13, 0),
(14, 15, 0),
(12, 16, 0),
(7, 17, 0),
(1, 18, 0),
(23, 22, 0),
(23, 21, 0),
(103, 1, 0),
(23, 13, 0),
(16, 13, 0),
(12, 13, 0),
(14, 13, 0),
(7, 13, 0),
(1, 13, 0),
(16, 22, 0),
(39, 22, 0),
(14, 22, 0),
(12, 22, 0),
(83, 23, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 5),
(13, 13, 'category', '', 0, 8),
(16, 16, 'category', '', 13, 1),
(15, 15, 'category', '', 13, 1),
(17, 17, 'category', '', 13, 1),
(18, 18, 'category', '', 13, 1),
(19, 19, 'category', '', 13, 0),
(20, 20, 'category', '', 13, 0),
(21, 21, 'category', '', 13, 1),
(22, 22, 'category', '', 0, 5),
(23, 23, 'category', '', 13, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'moises'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:4:{s:64:\"631e8397482dc77a1edbe2981fa987c0138c07c87271ac59f4d85812f2b3a6b3\";a:4:{s:10:\"expiration\";i:1572475721;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36\";s:5:\"login\";i:1572302921;}s:64:\"1966f37d2c64200f4ed77e02acec7490b260aff50138be43b2be908af6f21c78\";a:4:{s:10:\"expiration\";i:1572475732;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36\";s:5:\"login\";i:1572302932;}s:64:\"c4d27e3551dc297a5cca264b2566c9a036553b2231e944f7ff936eca75acc9af\";a:4:{s:10:\"expiration\";i:1572567837;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36\";s:5:\"login\";i:1572395037;}s:64:\"327516d8bc2c0b1bd571f3fd8b008ac5ec26f0691cb2a37f8bed769b11d6715d\";a:4:{s:10:\"expiration\";i:1572567860;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36\";s:5:\"login\";i:1572395060;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '91'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1571802564'),
(20, 1, 'closedpostboxes_post', 'a:0:{}'),
(21, 1, 'metaboxhidden_post', 'a:0:{}'),
(22, 1, 'meta-box-order_post', 'a:4:{s:4:\"side\";s:23:\"acf-group_5db451fa6ec2f\";s:15:\"acf_after_title\";s:0:\"\";s:6:\"normal\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'moises', '$P$BaWGzCIZ7fNRH3gSqbOt4D/3xEyztr.', 'moises', 'moisesfalcao@gmail.com', '', '2019-10-22 03:06:14', '', 0, 'moises');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_most_popular`
--
ALTER TABLE `wp_most_popular`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_most_popular`
--
ALTER TABLE `wp_most_popular`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=594;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=751;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
