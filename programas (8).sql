-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 03-Nov-2019 às 21:49
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
(1, 39, '2019-10-28 20:15:18', 84, 87, 87, 87, 'a:2:{s:10:\"2019-10-28\";i:3;s:10:\"2019-11-03\";i:84;}'),
(2, 23, '2019-10-28 20:19:34', 7, 11, 11, 11, 'a:4:{s:10:\"2019-10-28\";i:1;s:10:\"2019-11-01\";i:1;s:10:\"2019-11-02\";i:2;s:10:\"2019-11-03\";i:7;}'),
(3, 16, '2019-10-28 20:19:34', 4, 9, 9, 9, 'a:3:{s:10:\"2019-10-28\";i:1;s:10:\"2019-11-02\";i:4;s:10:\"2019-11-03\";i:4;}'),
(4, 14, '2019-10-28 20:19:35', 1, 3, 3, 3, 'a:3:{s:10:\"2019-10-28\";i:1;s:10:\"2019-10-31\";i:1;s:10:\"2019-11-03\";i:1;}'),
(5, 12, '2019-10-28 20:19:37', 1, 3, 3, 3, 'a:3:{s:10:\"2019-10-28\";i:1;s:10:\"2019-11-01\";i:1;s:10:\"2019-11-03\";i:1;}'),
(6, 7, '2019-10-28 20:19:37', 1, 2, 2, 2, 'a:2:{s:10:\"2019-10-28\";i:1;s:10:\"2019-11-02\";i:1;}'),
(7, 1, '2019-10-28 20:19:38', 2, 3, 3, 3, 'a:2:{s:10:\"2019-10-28\";i:1;s:10:\"2019-10-29\";i:2;}'),
(8, 103, '2019-10-29 23:43:31', 19, 22, 22, 22, 'a:2:{s:10:\"2019-10-30\";i:3;s:10:\"2019-11-03\";i:19;}'),
(9, 105, '2019-10-31 21:38:59', 24, 227, 227, 227, 'a:3:{s:10:\"2019-11-01\";i:191;s:10:\"2019-11-02\";i:12;s:10:\"2019-11-03\";i:24;}'),
(10, 83, '2019-11-01 00:31:09', 4, 6, 6, 6, 'a:2:{s:10:\"2019-11-01\";i:2;s:10:\"2019-11-02\";i:4;}'),
(11, 108, '2019-11-01 00:31:48', 1, 2, 2, 2, 'a:2:{s:10:\"2019-11-01\";i:1;s:10:\"2019-11-03\";i:1;}'),
(12, 122, '2019-11-02 08:44:06', 11, 201, 201, 201, 'a:2:{s:10:\"2019-11-02\";i:190;s:10:\"2019-11-03\";i:11;}'),
(13, 119, '2019-11-02 10:40:25', 2, 2, 2, 2, 'a:1:{s:10:\"2019-11-02\";i:2;}'),
(14, 3, '2019-11-02 15:19:09', 1, 1, 1, 1, 'a:1:{s:10:\"2019-11-02\";i:1;}'),
(15, 111, '2019-11-02 17:29:14', 1, 1, 1, 1, 'a:1:{s:10:\"2019-11-02\";i:1;}'),
(16, 173, '2019-11-02 17:53:01', 25, 44, 44, 44, 'a:2:{s:10:\"2019-11-02\";i:19;s:10:\"2019-11-03\";i:25;}'),
(17, 181, '2019-11-03 12:16:46', 141, 141, 141, 141, 'a:1:{s:10:\"2019-11-03\";i:141;}'),
(18, 183, '2019-11-03 12:26:17', 40, 40, 40, 40, 'a:1:{s:10:\"2019-11-03\";i:40;}'),
(19, 193, '2019-11-03 14:00:15', 17, 17, 17, 17, 'a:1:{s:10:\"2019-11-03\";i:17;}'),
(20, 189, '2019-11-03 14:00:21', 8, 8, 8, 8, 'a:1:{s:10:\"2019-11-03\";i:8;}'),
(21, 238, '2019-11-03 15:00:50', 5, 5, 5, 5, 'a:1:{s:10:\"2019-11-03\";i:5;}'),
(22, 212, '2019-11-03 15:22:44', 1, 1, 1, 1, 'a:1:{s:10:\"2019-11-03\";i:1;}'),
(23, 241, '2019-11-03 16:21:10', 70, 70, 70, 70, 'a:1:{s:10:\"2019-11-03\";i:70;}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_nf3_actions`
--

CREATE TABLE `wp_nf3_actions` (
  `id` int(11) NOT NULL,
  `title` longtext,
  `key` longtext,
  `type` longtext,
  `active` tinyint(1) DEFAULT '1',
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `label` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `wp_nf3_actions`
--

INSERT INTO `wp_nf3_actions` (`id`, `title`, `key`, `type`, `active`, `parent_id`, `created_at`, `updated_at`, `label`) VALUES
(1, '', '', 'save', 1, 1, '2019-11-03 19:15:35', '2019-11-03 17:15:35', 'Store Submission'),
(2, '', '', 'email', 1, 1, '2019-11-03 19:15:37', '2019-11-03 17:15:37', 'Email Confirmation'),
(3, '', '', 'email', 1, 1, '2019-11-03 19:15:40', '2019-11-03 17:15:39', 'Email Notification'),
(4, '', '', 'successmessage', 1, 1, '2019-11-03 19:15:42', '2019-11-03 17:15:42', 'Success Message'),
(5, '', '', 'save', 1, 2, '2016-08-24 19:39:20', NULL, 'Store Submission'),
(6, '', '', 'email', 1, 2, '2016-08-24 19:39:20', NULL, 'Email Confirmation'),
(7, '', '', 'email', 1, 2, '2016-08-24 19:47:39', NULL, 'Email Notification'),
(8, '', '', 'successmessage', 1, 2, '2016-08-24 19:39:20', NULL, 'Success Message');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_nf3_action_meta`
--

CREATE TABLE `wp_nf3_action_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext,
  `meta_key` longtext,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `wp_nf3_action_meta`
--

INSERT INTO `wp_nf3_action_meta` (`id`, `parent_id`, `key`, `value`, `meta_key`, `meta_value`) VALUES
(1, 1, 'objectType', 'Action', 'objectType', 'Action'),
(2, 1, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(3, 1, 'editActive', '', 'editActive', ''),
(4, 1, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}', 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(5, 1, 'payment_gateways', '', 'payment_gateways', ''),
(6, 1, 'payment_total', '', 'payment_total', ''),
(7, 1, 'tag', '', 'tag', ''),
(8, 1, 'to', '', 'to', ''),
(9, 1, 'email_subject', '', 'email_subject', ''),
(10, 1, 'email_message', '', 'email_message', ''),
(11, 1, 'from_name', '', 'from_name', ''),
(12, 1, 'from_address', '', 'from_address', ''),
(13, 1, 'reply_to', '', 'reply_to', ''),
(14, 1, 'email_format', 'html', 'email_format', 'html'),
(15, 1, 'cc', '', 'cc', ''),
(16, 1, 'bcc', '', 'bcc', ''),
(17, 1, 'attach_csv', '', 'attach_csv', ''),
(18, 1, 'redirect_url', '', 'redirect_url', ''),
(19, 1, 'email_message_plain', '', 'email_message_plain', ''),
(20, 2, 'to', '{field:email}', 'to', '{field:email}'),
(21, 2, 'subject', 'This is an email action.', 'subject', 'This is an email action.'),
(22, 2, 'message', 'Hello, Ninja Forms!', 'message', 'Hello, Ninja Forms!'),
(23, 2, 'objectType', 'Action', 'objectType', 'Action'),
(24, 2, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(25, 2, 'editActive', '', 'editActive', ''),
(26, 2, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}', 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(27, 2, 'payment_gateways', '', 'payment_gateways', ''),
(28, 2, 'payment_total', '', 'payment_total', ''),
(29, 2, 'tag', '', 'tag', ''),
(30, 2, 'email_subject', 'Submission Confirmation ', 'email_subject', 'Submission Confirmation '),
(31, 2, 'email_message', '<p>{all_fields_table}<br></p>', 'email_message', '<p>{all_fields_table}<br></p>'),
(32, 2, 'from_name', '', 'from_name', ''),
(33, 2, 'from_address', '', 'from_address', ''),
(34, 2, 'reply_to', '', 'reply_to', ''),
(35, 2, 'email_format', 'html', 'email_format', 'html'),
(36, 2, 'cc', '', 'cc', ''),
(37, 2, 'bcc', '', 'bcc', ''),
(38, 2, 'attach_csv', '', 'attach_csv', ''),
(39, 2, 'email_message_plain', '', 'email_message_plain', ''),
(40, 3, 'objectType', 'Action', 'objectType', 'Action'),
(41, 3, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(42, 3, 'editActive', '', 'editActive', ''),
(43, 3, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}', 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(44, 3, 'payment_gateways', '', 'payment_gateways', ''),
(45, 3, 'payment_total', '', 'payment_total', ''),
(46, 3, 'tag', '', 'tag', ''),
(47, 3, 'to', '{system:admin_email}', 'to', '{system:admin_email}'),
(48, 3, 'email_subject', 'New message from {field:name}', 'email_subject', 'New message from {field:name}'),
(49, 3, 'email_message', '<p>{field:message}</p><p>-{field:name} ( {field:email} )</p>', 'email_message', '<p>{field:message}</p><p>-{field:name} ( {field:email} )</p>'),
(50, 3, 'from_name', '', 'from_name', ''),
(51, 3, 'from_address', '', 'from_address', ''),
(52, 3, 'reply_to', '{field:email}', 'reply_to', '{field:email}'),
(53, 3, 'email_format', 'html', 'email_format', 'html'),
(54, 3, 'cc', '', 'cc', ''),
(55, 3, 'bcc', '', 'bcc', ''),
(56, 3, 'attach_csv', '0', 'attach_csv', '0'),
(57, 3, 'email_message_plain', '', 'email_message_plain', ''),
(58, 4, 'message', 'Thank you {field:name} for filling out my form!', 'message', 'Thank you {field:name} for filling out my form!'),
(59, 4, 'objectType', 'Action', 'objectType', 'Action'),
(60, 4, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(61, 4, 'editActive', '', 'editActive', ''),
(62, 4, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}', 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(63, 4, 'payment_gateways', '', 'payment_gateways', ''),
(64, 4, 'payment_total', '', 'payment_total', ''),
(65, 4, 'tag', '', 'tag', ''),
(66, 4, 'to', '', 'to', ''),
(67, 4, 'email_subject', '', 'email_subject', ''),
(68, 4, 'email_message', '', 'email_message', ''),
(69, 4, 'from_name', '', 'from_name', ''),
(70, 5, 'title', '', 'title', ''),
(71, 5, 'key', '', 'key', ''),
(72, 5, 'type', 'save', 'type', 'save'),
(73, 5, 'active', '1', 'active', '1'),
(74, 5, 'created_at', '2016-08-24 16:39:20', 'created_at', '2016-08-24 16:39:20'),
(75, 5, 'label', 'Store Submission', 'label', 'Store Submission'),
(76, 5, 'objectType', 'Action', 'objectType', 'Action'),
(77, 5, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(78, 5, 'editActive', '', 'editActive', ''),
(79, 5, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}', 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(80, 5, 'payment_gateways', '', 'payment_gateways', ''),
(81, 5, 'payment_total', '0', 'payment_total', '0'),
(82, 5, 'tag', '', 'tag', ''),
(83, 5, 'to', '{wp:admin_email}', 'to', '{wp:admin_email}'),
(84, 5, 'email_subject', 'Envio de Ninja Forms', 'email_subject', 'Envio de Ninja Forms'),
(85, 5, 'email_message', '{fields_table}', 'email_message', '{fields_table}'),
(86, 5, 'from_name', '', 'from_name', ''),
(87, 5, 'from_address', '', 'from_address', ''),
(88, 5, 'reply_to', '', 'reply_to', ''),
(89, 5, 'email_format', 'html', 'email_format', 'html'),
(90, 5, 'cc', '', 'cc', ''),
(91, 5, 'bcc', '', 'bcc', ''),
(92, 5, 'attach_csv', '', 'attach_csv', ''),
(93, 5, 'redirect_url', '', 'redirect_url', ''),
(94, 5, 'email_message_plain', '', 'email_message_plain', ''),
(95, 5, 'parent_id', '2', 'parent_id', '2'),
(96, 6, 'title', '', 'title', ''),
(97, 6, 'key', '', 'key', ''),
(98, 6, 'type', 'email', 'type', 'email'),
(99, 6, 'active', '1', 'active', '1'),
(100, 6, 'created_at', '2016-08-24 16:39:20', 'created_at', '2016-08-24 16:39:20'),
(101, 6, 'label', 'Email Confirmation', 'label', 'Email Confirmation'),
(102, 6, 'to', '{field:email}', 'to', '{field:email}'),
(103, 6, 'subject', 'This is an email action.', 'subject', 'This is an email action.'),
(104, 6, 'message', 'Hello, Ninja Forms!', 'message', 'Hello, Ninja Forms!'),
(105, 6, 'objectType', 'Action', 'objectType', 'Action'),
(106, 6, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(107, 6, 'editActive', '', 'editActive', ''),
(108, 6, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}', 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(109, 6, 'payment_gateways', '', 'payment_gateways', ''),
(110, 6, 'payment_total', '0', 'payment_total', '0'),
(111, 6, 'tag', '', 'tag', ''),
(112, 6, 'email_subject', 'Submission Confirmation ', 'email_subject', 'Submission Confirmation '),
(113, 6, 'email_message', '<p>{all_fields_table}<br></p>', 'email_message', '<p>{all_fields_table}<br></p>'),
(114, 6, 'from_name', '', 'from_name', ''),
(115, 6, 'from_address', '', 'from_address', ''),
(116, 6, 'reply_to', '', 'reply_to', ''),
(117, 6, 'email_format', 'html', 'email_format', 'html'),
(118, 6, 'cc', '', 'cc', ''),
(119, 6, 'bcc', '', 'bcc', ''),
(120, 6, 'attach_csv', '', 'attach_csv', ''),
(121, 6, 'email_message_plain', '', 'email_message_plain', ''),
(122, 6, 'parent_id', '2', 'parent_id', '2'),
(123, 7, 'title', '', 'title', ''),
(124, 7, 'key', '', 'key', ''),
(125, 7, 'type', 'email', 'type', 'email'),
(126, 7, 'active', '1', 'active', '1'),
(127, 7, 'created_at', '2016-08-24 16:47:39', 'created_at', '2016-08-24 16:47:39'),
(128, 7, 'objectType', 'Action', 'objectType', 'Action'),
(129, 7, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(130, 7, 'editActive', '', 'editActive', ''),
(131, 7, 'label', 'Email Notification', 'label', 'Email Notification'),
(132, 7, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}', 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(133, 7, 'payment_gateways', '', 'payment_gateways', ''),
(134, 7, 'payment_total', '0', 'payment_total', '0'),
(135, 7, 'tag', '', 'tag', ''),
(136, 7, 'to', '{system:admin_email}', 'to', '{system:admin_email}'),
(137, 7, 'email_subject', 'New message from {field:nome_completo_1572809957205}', 'email_subject', 'New message from {field:nome_completo_1572809957205}'),
(138, 7, 'email_message', '<p>{field:message}</p><p>-{field:nome_completo_1572809957205} ( {field:email} )</p>', 'email_message', '<p>{field:message}</p><p>-{field:nome_completo_1572809957205} ( {field:email} )</p>'),
(139, 7, 'from_name', '', 'from_name', ''),
(140, 7, 'from_address', '', 'from_address', ''),
(141, 7, 'reply_to', '{field:email}', 'reply_to', '{field:email}'),
(142, 7, 'email_format', 'html', 'email_format', 'html'),
(143, 7, 'cc', '', 'cc', ''),
(144, 7, 'bcc', '', 'bcc', ''),
(145, 7, 'attach_csv', '0', 'attach_csv', '0'),
(146, 7, 'email_message_plain', '', 'email_message_plain', ''),
(147, 7, 'parent_id', '2', 'parent_id', '2'),
(148, 8, 'title', '', 'title', ''),
(149, 8, 'key', '', 'key', ''),
(150, 8, 'type', 'successmessage', 'type', 'successmessage'),
(151, 8, 'active', '1', 'active', '1'),
(152, 8, 'created_at', '2016-08-24 16:39:20', 'created_at', '2016-08-24 16:39:20'),
(153, 8, 'label', 'Success Message', 'label', 'Success Message'),
(154, 8, 'message', 'Thank you {field:nome_completo_1572809957205} for filling out my form!', 'message', 'Thank you {field:nome_completo_1572809957205} for filling out my form!'),
(155, 8, 'objectType', 'Action', 'objectType', 'Action'),
(156, 8, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(157, 8, 'editActive', '', 'editActive', ''),
(158, 8, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}', 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(159, 8, 'payment_gateways', '', 'payment_gateways', ''),
(160, 8, 'payment_total', '0', 'payment_total', '0'),
(161, 8, 'tag', '', 'tag', ''),
(162, 8, 'to', '{wp:admin_email}', 'to', '{wp:admin_email}'),
(163, 8, 'email_subject', 'Envio de Ninja Forms', 'email_subject', 'Envio de Ninja Forms'),
(164, 8, 'email_message', '{fields_table}', 'email_message', '{fields_table}'),
(165, 8, 'from_name', '', 'from_name', ''),
(166, 8, 'from_address', '', 'from_address', ''),
(167, 8, 'reply_to', '', 'reply_to', ''),
(168, 8, 'email_format', 'html', 'email_format', 'html'),
(169, 8, 'cc', '', 'cc', ''),
(170, 8, 'bcc', '', 'bcc', ''),
(171, 8, 'attach_csv', '', 'attach_csv', ''),
(172, 8, 'redirect_url', '', 'redirect_url', ''),
(173, 8, 'success_msg', '<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>', 'success_msg', '<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>'),
(174, 8, 'email_message_plain', '', 'email_message_plain', ''),
(175, 8, 'parent_id', '2', 'parent_id', '2'),
(176, 5, 'message', 'This action adds users to WordPress\' personal data export tool, allowing admins to comply with the GDPR and other privacy regulations from the site\'s front end.', 'message', 'This action adds users to WordPress\' personal data export tool, allowing admins to comply with the GDPR and other privacy regulations from the site\'s front end.'),
(177, 5, 'submitter_email', '', 'submitter_email', ''),
(178, 5, 'fields-save-toggle', 'save_all', 'fields-save-toggle', 'save_all'),
(179, 5, 'exception_fields', 'a:0:{}', 'exception_fields', 'a:0:{}'),
(180, 5, 'set_subs_to_expire', '0', 'set_subs_to_expire', '0'),
(181, 5, 'subs_expire_time', '90', 'subs_expire_time', '90'),
(182, 7, 'message', 'This action adds users to WordPress\' personal data delete tool, allowing admins to comply with the GDPR and other privacy regulations from the site\'s front end.', 'message', 'This action adds users to WordPress\' personal data delete tool, allowing admins to comply with the GDPR and other privacy regulations from the site\'s front end.'),
(183, 8, 'submitter_email', '', 'submitter_email', ''),
(184, 8, 'fields-save-toggle', 'save_all', 'fields-save-toggle', 'save_all'),
(185, 8, 'exception_fields', 'a:0:{}', 'exception_fields', 'a:0:{}'),
(186, 8, 'set_subs_to_expire', '0', 'set_subs_to_expire', '0'),
(187, 8, 'subs_expire_time', '90', 'subs_expire_time', '90');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_nf3_chunks`
--

CREATE TABLE `wp_nf3_chunks` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_nf3_fields`
--

CREATE TABLE `wp_nf3_fields` (
  `id` int(11) NOT NULL,
  `label` longtext,
  `key` longtext,
  `type` longtext,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `field_label` longtext,
  `field_key` longtext,
  `order` int(11) DEFAULT NULL,
  `required` bit(1) DEFAULT NULL,
  `default_value` longtext,
  `label_pos` varchar(15) DEFAULT NULL,
  `personally_identifiable` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `wp_nf3_fields`
--

INSERT INTO `wp_nf3_fields` (`id`, `label`, `key`, `type`, `parent_id`, `created_at`, `updated_at`, `field_label`, `field_key`, `order`, `required`, `default_value`, `label_pos`, `personally_identifiable`) VALUES
(1, 'Name', 'name', 'textbox', 1, '2019-11-03 20:15:22', '2019-11-03 17:15:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Email', 'email', 'email', 1, '2019-11-03 20:15:25', '2019-11-03 17:15:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Message', 'message', 'textarea', 1, '2019-11-03 20:15:27', '2019-11-03 17:15:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Submit', 'submit', 'submit', 1, '2019-11-03 20:15:31', '2019-11-03 17:15:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Nome Completo', 'nome_completo_1572810028877', 'textbox', 2, '2019-11-03 19:42:11', NULL, 'Nome Completo', 'nome_completo_1572810028877', 1, b'1', '', 'above', b'0'),
(6, 'Email', 'email', 'email', 2, '2019-11-03 19:17:04', NULL, 'Email', 'email', 2, b'1', '', 'above', b'1'),
(7, 'Message', 'message', 'textarea', 2, '2019-11-03 19:17:04', NULL, 'Message', 'message', 3, b'1', '', 'above', b'0'),
(8, 'Enviar', 'enviar_1572808615243', 'submit', 2, '2019-11-03 19:17:04', NULL, 'Enviar', 'enviar_1572808615243', 5, b'0', '', '', b'0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_nf3_field_meta`
--

CREATE TABLE `wp_nf3_field_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext,
  `meta_key` longtext,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `wp_nf3_field_meta`
--

INSERT INTO `wp_nf3_field_meta` (`id`, `parent_id`, `key`, `value`, `meta_key`, `meta_value`) VALUES
(1, 1, 'label_pos', 'above', 'label_pos', 'above'),
(2, 1, 'required', '1', 'required', '1'),
(3, 1, 'order', '1', 'order', '1'),
(4, 1, 'placeholder', '', 'placeholder', ''),
(5, 1, 'default', '', 'default', ''),
(6, 1, 'wrapper_class', '', 'wrapper_class', ''),
(7, 1, 'element_class', '', 'element_class', ''),
(8, 1, 'objectType', 'Field', 'objectType', 'Field'),
(9, 1, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(10, 1, 'editActive', '', 'editActive', ''),
(11, 1, 'container_class', '', 'container_class', ''),
(12, 1, 'input_limit', '', 'input_limit', ''),
(13, 1, 'input_limit_type', 'characters', 'input_limit_type', 'characters'),
(14, 1, 'input_limit_msg', 'Character(s) left', 'input_limit_msg', 'Character(s) left'),
(15, 1, 'manual_key', '', 'manual_key', ''),
(16, 1, 'disable_input', '', 'disable_input', ''),
(17, 1, 'admin_label', '', 'admin_label', ''),
(18, 1, 'help_text', '', 'help_text', ''),
(19, 1, 'desc_text', '', 'desc_text', ''),
(20, 1, 'disable_browser_autocomplete', '', 'disable_browser_autocomplete', ''),
(21, 1, 'mask', '', 'mask', ''),
(22, 1, 'custom_mask', '', 'custom_mask', ''),
(23, 1, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(24, 1, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(25, 1, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(26, 1, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(27, 1, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(28, 1, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(29, 1, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(30, 1, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(31, 1, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(32, 1, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(33, 1, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(34, 1, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(35, 1, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(36, 1, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(37, 1, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(38, 1, 'label_styles_border', '', 'label_styles_border', ''),
(39, 1, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(40, 1, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(41, 1, 'label_styles_color', '', 'label_styles_color', ''),
(42, 1, 'label_styles_height', '', 'label_styles_height', ''),
(43, 1, 'label_styles_width', '', 'label_styles_width', ''),
(44, 1, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(45, 1, 'label_styles_margin', '', 'label_styles_margin', ''),
(46, 1, 'label_styles_padding', '', 'label_styles_padding', ''),
(47, 1, 'label_styles_display', '', 'label_styles_display', ''),
(48, 1, 'label_styles_float', '', 'label_styles_float', ''),
(49, 1, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(50, 1, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(51, 1, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(52, 1, 'element_styles_border', '', 'element_styles_border', ''),
(53, 1, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(54, 1, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(55, 1, 'element_styles_color', '', 'element_styles_color', ''),
(56, 1, 'element_styles_height', '', 'element_styles_height', ''),
(57, 1, 'element_styles_width', '', 'element_styles_width', ''),
(58, 1, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(59, 1, 'element_styles_margin', '', 'element_styles_margin', ''),
(60, 1, 'element_styles_padding', '', 'element_styles_padding', ''),
(61, 1, 'element_styles_display', '', 'element_styles_display', ''),
(62, 1, 'element_styles_float', '', 'element_styles_float', ''),
(63, 1, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(64, 1, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(65, 1, 'cellcid', 'c3277', 'cellcid', 'c3277'),
(66, 2, 'label_pos', 'above', 'label_pos', 'above'),
(67, 2, 'required', '1', 'required', '1'),
(68, 2, 'order', '2', 'order', '2'),
(69, 2, 'placeholder', '', 'placeholder', ''),
(70, 2, 'default', '', 'default', ''),
(71, 2, 'wrapper_class', '', 'wrapper_class', ''),
(72, 2, 'element_class', '', 'element_class', ''),
(73, 2, 'objectType', 'Field', 'objectType', 'Field'),
(74, 2, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(75, 2, 'editActive', '', 'editActive', ''),
(76, 2, 'container_class', '', 'container_class', ''),
(77, 2, 'admin_label', '', 'admin_label', ''),
(78, 2, 'help_text', '', 'help_text', ''),
(79, 2, 'desc_text', '', 'desc_text', ''),
(80, 2, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(81, 2, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(82, 2, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(83, 2, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(84, 2, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(85, 2, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(86, 2, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(87, 2, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(88, 2, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(89, 2, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(90, 2, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(91, 2, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(92, 2, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(93, 2, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(94, 2, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(95, 2, 'label_styles_border', '', 'label_styles_border', ''),
(96, 2, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(97, 2, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(98, 2, 'label_styles_color', '', 'label_styles_color', ''),
(99, 2, 'label_styles_height', '', 'label_styles_height', ''),
(100, 2, 'label_styles_width', '', 'label_styles_width', ''),
(101, 2, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(102, 2, 'label_styles_margin', '', 'label_styles_margin', ''),
(103, 2, 'label_styles_padding', '', 'label_styles_padding', ''),
(104, 2, 'label_styles_display', '', 'label_styles_display', ''),
(105, 2, 'label_styles_float', '', 'label_styles_float', ''),
(106, 2, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(107, 2, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(108, 2, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(109, 2, 'element_styles_border', '', 'element_styles_border', ''),
(110, 2, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(111, 2, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(112, 2, 'element_styles_color', '', 'element_styles_color', ''),
(113, 2, 'element_styles_height', '', 'element_styles_height', ''),
(114, 2, 'element_styles_width', '', 'element_styles_width', ''),
(115, 2, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(116, 2, 'element_styles_margin', '', 'element_styles_margin', ''),
(117, 2, 'element_styles_padding', '', 'element_styles_padding', ''),
(118, 2, 'element_styles_display', '', 'element_styles_display', ''),
(119, 2, 'element_styles_float', '', 'element_styles_float', ''),
(120, 2, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(121, 2, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(122, 2, 'cellcid', 'c3281', 'cellcid', 'c3281'),
(123, 3, 'label_pos', 'above', 'label_pos', 'above'),
(124, 3, 'required', '1', 'required', '1'),
(125, 3, 'order', '3', 'order', '3'),
(126, 3, 'placeholder', '', 'placeholder', ''),
(127, 3, 'default', '', 'default', ''),
(128, 3, 'wrapper_class', '', 'wrapper_class', ''),
(129, 3, 'element_class', '', 'element_class', ''),
(130, 3, 'objectType', 'Field', 'objectType', 'Field'),
(131, 3, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(132, 3, 'editActive', '', 'editActive', ''),
(133, 3, 'container_class', '', 'container_class', ''),
(134, 3, 'input_limit', '', 'input_limit', ''),
(135, 3, 'input_limit_type', 'characters', 'input_limit_type', 'characters'),
(136, 3, 'input_limit_msg', 'Character(s) left', 'input_limit_msg', 'Character(s) left'),
(137, 3, 'manual_key', '', 'manual_key', ''),
(138, 3, 'disable_input', '', 'disable_input', ''),
(139, 3, 'admin_label', '', 'admin_label', ''),
(140, 3, 'help_text', '', 'help_text', ''),
(141, 3, 'desc_text', '', 'desc_text', ''),
(142, 3, 'disable_browser_autocomplete', '', 'disable_browser_autocomplete', ''),
(143, 3, 'textarea_rte', '', 'textarea_rte', ''),
(144, 3, 'disable_rte_mobile', '', 'disable_rte_mobile', ''),
(145, 3, 'textarea_media', '', 'textarea_media', ''),
(146, 3, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(147, 3, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(148, 3, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(149, 3, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(150, 3, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(151, 3, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(152, 3, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(153, 3, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(154, 3, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(155, 3, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(156, 3, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(157, 3, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(158, 3, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(159, 3, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(160, 3, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(161, 3, 'label_styles_border', '', 'label_styles_border', ''),
(162, 3, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(163, 3, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(164, 3, 'label_styles_color', '', 'label_styles_color', ''),
(165, 3, 'label_styles_height', '', 'label_styles_height', ''),
(166, 3, 'label_styles_width', '', 'label_styles_width', ''),
(167, 3, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(168, 3, 'label_styles_margin', '', 'label_styles_margin', ''),
(169, 3, 'label_styles_padding', '', 'label_styles_padding', ''),
(170, 3, 'label_styles_display', '', 'label_styles_display', ''),
(171, 3, 'label_styles_float', '', 'label_styles_float', ''),
(172, 3, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(173, 3, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(174, 3, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(175, 3, 'element_styles_border', '', 'element_styles_border', ''),
(176, 3, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(177, 3, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(178, 3, 'element_styles_color', '', 'element_styles_color', ''),
(179, 3, 'element_styles_height', '', 'element_styles_height', ''),
(180, 3, 'element_styles_width', '', 'element_styles_width', ''),
(181, 3, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(182, 3, 'element_styles_margin', '', 'element_styles_margin', ''),
(183, 3, 'element_styles_padding', '', 'element_styles_padding', ''),
(184, 3, 'element_styles_display', '', 'element_styles_display', ''),
(185, 3, 'element_styles_float', '', 'element_styles_float', ''),
(186, 3, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(187, 3, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(188, 3, 'cellcid', 'c3284', 'cellcid', 'c3284'),
(189, 4, 'processing_label', 'Processing', 'processing_label', 'Processing'),
(190, 4, 'order', '5', 'order', '5'),
(191, 4, 'objectType', 'Field', 'objectType', 'Field'),
(192, 4, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(193, 4, 'editActive', '', 'editActive', ''),
(194, 4, 'container_class', '', 'container_class', ''),
(195, 4, 'element_class', '', 'element_class', ''),
(196, 4, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(197, 4, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(198, 4, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(199, 4, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(200, 4, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(201, 4, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(202, 4, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(203, 4, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(204, 4, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(205, 4, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(206, 4, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(207, 4, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(208, 4, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(209, 4, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(210, 4, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(211, 4, 'label_styles_border', '', 'label_styles_border', ''),
(212, 4, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(213, 4, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(214, 4, 'label_styles_color', '', 'label_styles_color', ''),
(215, 4, 'label_styles_height', '', 'label_styles_height', ''),
(216, 4, 'label_styles_width', '', 'label_styles_width', ''),
(217, 4, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(218, 4, 'label_styles_margin', '', 'label_styles_margin', ''),
(219, 4, 'label_styles_padding', '', 'label_styles_padding', ''),
(220, 4, 'label_styles_display', '', 'label_styles_display', ''),
(221, 4, 'label_styles_float', '', 'label_styles_float', ''),
(222, 4, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(223, 4, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(224, 4, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(225, 4, 'element_styles_border', '', 'element_styles_border', ''),
(226, 4, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(227, 4, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(228, 4, 'element_styles_color', '', 'element_styles_color', ''),
(229, 4, 'element_styles_height', '', 'element_styles_height', ''),
(230, 4, 'element_styles_width', '', 'element_styles_width', ''),
(231, 4, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(232, 4, 'element_styles_margin', '', 'element_styles_margin', ''),
(233, 4, 'element_styles_padding', '', 'element_styles_padding', ''),
(234, 4, 'element_styles_display', '', 'element_styles_display', ''),
(235, 4, 'element_styles_float', '', 'element_styles_float', ''),
(236, 4, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(237, 4, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(238, 4, 'submit_element_hover_styles_background-color', '', 'submit_element_hover_styles_background-color', ''),
(239, 4, 'submit_element_hover_styles_border', '', 'submit_element_hover_styles_border', ''),
(240, 4, 'submit_element_hover_styles_border-style', '', 'submit_element_hover_styles_border-style', ''),
(241, 4, 'submit_element_hover_styles_border-color', '', 'submit_element_hover_styles_border-color', ''),
(242, 4, 'submit_element_hover_styles_color', '', 'submit_element_hover_styles_color', ''),
(243, 4, 'submit_element_hover_styles_height', '', 'submit_element_hover_styles_height', ''),
(244, 4, 'submit_element_hover_styles_width', '', 'submit_element_hover_styles_width', ''),
(245, 4, 'submit_element_hover_styles_font-size', '', 'submit_element_hover_styles_font-size', ''),
(246, 4, 'submit_element_hover_styles_margin', '', 'submit_element_hover_styles_margin', ''),
(247, 4, 'submit_element_hover_styles_padding', '', 'submit_element_hover_styles_padding', ''),
(248, 4, 'submit_element_hover_styles_display', '', 'submit_element_hover_styles_display', ''),
(249, 4, 'submit_element_hover_styles_float', '', 'submit_element_hover_styles_float', ''),
(250, 4, 'submit_element_hover_styles_show_advanced_css', '0', 'submit_element_hover_styles_show_advanced_css', '0'),
(251, 4, 'submit_element_hover_styles_advanced', '', 'submit_element_hover_styles_advanced', ''),
(252, 4, 'cellcid', 'c3287', 'cellcid', 'c3287'),
(253, 1, 'field_label', 'Name', 'field_label', 'Name'),
(254, 1, 'field_key', 'name', 'field_key', 'name'),
(255, 5, 'label', 'Nome Completo', 'label', 'Nome Completo'),
(256, 5, 'key', 'nome_completo_1572810028877', 'key', 'nome_completo_1572810028877'),
(257, 5, 'parent_id', '2', 'parent_id', '2'),
(258, 5, 'type', 'textbox', 'type', 'textbox'),
(259, 5, 'created_at', '2016-08-24 16:39:20', 'created_at', '2016-08-24 16:39:20'),
(260, 5, 'label_pos', 'above', 'label_pos', 'above'),
(261, 5, 'required', '1', 'required', '1'),
(262, 5, 'order', '1', 'order', '1'),
(263, 5, 'placeholder', 'Nome Completo', 'placeholder', 'Nome Completo'),
(264, 5, 'default', '', 'default', ''),
(265, 5, 'wrapper_class', '', 'wrapper_class', ''),
(266, 5, 'element_class', '', 'element_class', ''),
(267, 5, 'objectType', 'Field', 'objectType', 'Field'),
(268, 5, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(269, 5, 'editActive', '', 'editActive', ''),
(270, 5, 'container_class', '', 'container_class', ''),
(271, 5, 'input_limit', '', 'input_limit', ''),
(272, 5, 'input_limit_type', 'characters', 'input_limit_type', 'characters'),
(273, 5, 'input_limit_msg', 'Character(s) left', 'input_limit_msg', 'Character(s) left'),
(274, 5, 'manual_key', '', 'manual_key', ''),
(275, 5, 'disable_input', '', 'disable_input', ''),
(276, 5, 'admin_label', '', 'admin_label', ''),
(277, 5, 'help_text', '', 'help_text', ''),
(278, 5, 'desc_text', '', 'desc_text', ''),
(279, 5, 'disable_browser_autocomplete', '', 'disable_browser_autocomplete', ''),
(280, 5, 'mask', '', 'mask', ''),
(281, 5, 'custom_mask', '', 'custom_mask', ''),
(282, 5, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(283, 5, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(284, 5, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(285, 5, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(286, 5, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(287, 5, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(288, 5, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(289, 5, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(290, 5, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(291, 5, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(292, 5, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(293, 5, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(294, 5, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(295, 5, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(296, 5, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(297, 5, 'label_styles_border', '', 'label_styles_border', ''),
(298, 5, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(299, 5, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(300, 5, 'label_styles_color', '', 'label_styles_color', ''),
(301, 5, 'label_styles_height', '', 'label_styles_height', ''),
(302, 5, 'label_styles_width', '', 'label_styles_width', ''),
(303, 5, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(304, 5, 'label_styles_margin', '', 'label_styles_margin', ''),
(305, 5, 'label_styles_padding', '', 'label_styles_padding', ''),
(306, 5, 'label_styles_display', '', 'label_styles_display', ''),
(307, 5, 'label_styles_float', '', 'label_styles_float', ''),
(308, 5, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(309, 5, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(310, 5, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(311, 5, 'element_styles_border', '', 'element_styles_border', ''),
(312, 5, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(313, 5, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(314, 5, 'element_styles_color', '', 'element_styles_color', ''),
(315, 5, 'element_styles_height', '', 'element_styles_height', ''),
(316, 5, 'element_styles_width', '', 'element_styles_width', ''),
(317, 5, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(318, 5, 'element_styles_margin', '', 'element_styles_margin', ''),
(319, 5, 'element_styles_padding', '', 'element_styles_padding', ''),
(320, 5, 'element_styles_display', '', 'element_styles_display', ''),
(321, 5, 'element_styles_float', '', 'element_styles_float', ''),
(322, 5, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(323, 5, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(324, 5, 'cellcid', 'c3277', 'cellcid', 'c3277'),
(325, 6, 'label', 'Email', 'label', 'Email'),
(326, 6, 'key', 'email', 'key', 'email'),
(327, 6, 'parent_id', '2', 'parent_id', '2'),
(328, 6, 'type', 'email', 'type', 'email'),
(329, 6, 'created_at', '2016-08-24 16:39:20', 'created_at', '2016-08-24 16:39:20'),
(330, 6, 'label_pos', 'above', 'label_pos', 'above'),
(331, 6, 'required', '1', 'required', '1'),
(332, 6, 'order', '2', 'order', '2'),
(333, 6, 'placeholder', 'exemplo@dominio.com.br', 'placeholder', 'exemplo@dominio.com.br'),
(334, 6, 'default', '', 'default', ''),
(335, 6, 'wrapper_class', '', 'wrapper_class', ''),
(336, 6, 'element_class', '', 'element_class', ''),
(337, 6, 'objectType', 'Field', 'objectType', 'Field'),
(338, 6, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(339, 6, 'editActive', '', 'editActive', ''),
(340, 6, 'container_class', '', 'container_class', ''),
(341, 6, 'admin_label', '', 'admin_label', ''),
(342, 6, 'help_text', '', 'help_text', ''),
(343, 6, 'desc_text', '', 'desc_text', ''),
(344, 6, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(345, 6, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(346, 6, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(347, 6, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(348, 6, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(349, 6, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(350, 6, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(351, 6, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(352, 6, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(353, 6, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(354, 6, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(355, 6, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(356, 6, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(357, 6, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(358, 6, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(359, 6, 'label_styles_border', '', 'label_styles_border', ''),
(360, 6, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(361, 6, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(362, 6, 'label_styles_color', '', 'label_styles_color', ''),
(363, 6, 'label_styles_height', '', 'label_styles_height', ''),
(364, 6, 'label_styles_width', '', 'label_styles_width', ''),
(365, 6, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(366, 6, 'label_styles_margin', '', 'label_styles_margin', ''),
(367, 6, 'label_styles_padding', '', 'label_styles_padding', ''),
(368, 6, 'label_styles_display', '', 'label_styles_display', ''),
(369, 6, 'label_styles_float', '', 'label_styles_float', ''),
(370, 6, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(371, 6, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(372, 6, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(373, 6, 'element_styles_border', '', 'element_styles_border', ''),
(374, 6, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(375, 6, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(376, 6, 'element_styles_color', '', 'element_styles_color', ''),
(377, 6, 'element_styles_height', '', 'element_styles_height', ''),
(378, 6, 'element_styles_width', '', 'element_styles_width', ''),
(379, 6, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(380, 6, 'element_styles_margin', '', 'element_styles_margin', ''),
(381, 6, 'element_styles_padding', '', 'element_styles_padding', ''),
(382, 6, 'element_styles_display', '', 'element_styles_display', ''),
(383, 6, 'element_styles_float', '', 'element_styles_float', ''),
(384, 6, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(385, 6, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(386, 6, 'cellcid', 'c3281', 'cellcid', 'c3281'),
(387, 7, 'label', 'Message', 'label', 'Message'),
(388, 7, 'key', 'message', 'key', 'message'),
(389, 7, 'parent_id', '2', 'parent_id', '2'),
(390, 7, 'type', 'textarea', 'type', 'textarea'),
(391, 7, 'created_at', '2016-08-24 16:39:20', 'created_at', '2016-08-24 16:39:20'),
(392, 7, 'label_pos', 'above', 'label_pos', 'above'),
(393, 7, 'required', '1', 'required', '1'),
(394, 7, 'order', '3', 'order', '3'),
(395, 7, 'placeholder', 'Sua pergunta', 'placeholder', 'Sua pergunta'),
(396, 7, 'default', '', 'default', ''),
(397, 7, 'wrapper_class', '', 'wrapper_class', ''),
(398, 7, 'element_class', '', 'element_class', ''),
(399, 7, 'objectType', 'Field', 'objectType', 'Field'),
(400, 7, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(401, 7, 'editActive', '', 'editActive', ''),
(402, 7, 'container_class', '', 'container_class', ''),
(403, 7, 'input_limit', '', 'input_limit', ''),
(404, 7, 'input_limit_type', 'characters', 'input_limit_type', 'characters'),
(405, 7, 'input_limit_msg', 'Character(s) left', 'input_limit_msg', 'Character(s) left'),
(406, 7, 'manual_key', '', 'manual_key', ''),
(407, 7, 'disable_input', '', 'disable_input', ''),
(408, 7, 'admin_label', '', 'admin_label', ''),
(409, 7, 'help_text', '', 'help_text', ''),
(410, 7, 'desc_text', '', 'desc_text', ''),
(411, 7, 'disable_browser_autocomplete', '', 'disable_browser_autocomplete', ''),
(412, 7, 'textarea_rte', '', 'textarea_rte', ''),
(413, 7, 'disable_rte_mobile', '', 'disable_rte_mobile', ''),
(414, 7, 'textarea_media', '', 'textarea_media', ''),
(415, 7, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(416, 7, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(417, 7, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(418, 7, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(419, 7, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(420, 7, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(421, 7, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(422, 7, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(423, 7, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(424, 7, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(425, 7, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(426, 7, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(427, 7, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(428, 7, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(429, 7, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(430, 7, 'label_styles_border', '', 'label_styles_border', ''),
(431, 7, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(432, 7, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(433, 7, 'label_styles_color', '', 'label_styles_color', ''),
(434, 7, 'label_styles_height', '', 'label_styles_height', ''),
(435, 7, 'label_styles_width', '', 'label_styles_width', ''),
(436, 7, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(437, 7, 'label_styles_margin', '', 'label_styles_margin', ''),
(438, 7, 'label_styles_padding', '', 'label_styles_padding', ''),
(439, 7, 'label_styles_display', '', 'label_styles_display', ''),
(440, 7, 'label_styles_float', '', 'label_styles_float', ''),
(441, 7, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(442, 7, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(443, 7, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(444, 7, 'element_styles_border', '', 'element_styles_border', ''),
(445, 7, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(446, 7, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(447, 7, 'element_styles_color', '', 'element_styles_color', ''),
(448, 7, 'element_styles_height', '', 'element_styles_height', ''),
(449, 7, 'element_styles_width', '', 'element_styles_width', ''),
(450, 7, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(451, 7, 'element_styles_margin', '', 'element_styles_margin', ''),
(452, 7, 'element_styles_padding', '', 'element_styles_padding', ''),
(453, 7, 'element_styles_display', '', 'element_styles_display', ''),
(454, 7, 'element_styles_float', '', 'element_styles_float', ''),
(455, 7, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(456, 7, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(457, 7, 'cellcid', 'c3284', 'cellcid', 'c3284'),
(458, 8, 'label', 'Enviar', 'label', 'Enviar'),
(459, 8, 'key', 'enviar_1572808615243', 'key', 'enviar_1572808615243'),
(460, 8, 'parent_id', '2', 'parent_id', '2'),
(461, 8, 'type', 'submit', 'type', 'submit'),
(462, 8, 'created_at', '2016-08-24 16:39:20', 'created_at', '2016-08-24 16:39:20'),
(463, 8, 'processing_label', 'Processing', 'processing_label', 'Processing'),
(464, 8, 'order', '5', 'order', '5'),
(465, 8, 'objectType', 'Field', 'objectType', 'Field'),
(466, 8, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(467, 8, 'editActive', '', 'editActive', ''),
(468, 8, 'container_class', '', 'container_class', ''),
(469, 8, 'element_class', '', 'element_class', ''),
(470, 8, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(471, 8, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(472, 8, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(473, 8, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(474, 8, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(475, 8, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(476, 8, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(477, 8, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(478, 8, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(479, 8, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(480, 8, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(481, 8, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(482, 8, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(483, 8, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(484, 8, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(485, 8, 'label_styles_border', '', 'label_styles_border', ''),
(486, 8, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(487, 8, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(488, 8, 'label_styles_color', '', 'label_styles_color', ''),
(489, 8, 'label_styles_height', '', 'label_styles_height', ''),
(490, 8, 'label_styles_width', '', 'label_styles_width', ''),
(491, 8, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(492, 8, 'label_styles_margin', '', 'label_styles_margin', ''),
(493, 8, 'label_styles_padding', '', 'label_styles_padding', ''),
(494, 8, 'label_styles_display', '', 'label_styles_display', ''),
(495, 8, 'label_styles_float', '', 'label_styles_float', ''),
(496, 8, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(497, 8, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(498, 8, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(499, 8, 'element_styles_border', '', 'element_styles_border', ''),
(500, 8, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(501, 8, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(502, 8, 'element_styles_color', '', 'element_styles_color', ''),
(503, 8, 'element_styles_height', '', 'element_styles_height', ''),
(504, 8, 'element_styles_width', '', 'element_styles_width', ''),
(505, 8, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(506, 8, 'element_styles_margin', '', 'element_styles_margin', ''),
(507, 8, 'element_styles_padding', '', 'element_styles_padding', ''),
(508, 8, 'element_styles_display', '', 'element_styles_display', ''),
(509, 8, 'element_styles_float', '', 'element_styles_float', ''),
(510, 8, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(511, 8, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(512, 8, 'submit_element_hover_styles_background-color', '', 'submit_element_hover_styles_background-color', ''),
(513, 8, 'submit_element_hover_styles_border', '', 'submit_element_hover_styles_border', ''),
(514, 8, 'submit_element_hover_styles_border-style', '', 'submit_element_hover_styles_border-style', ''),
(515, 8, 'submit_element_hover_styles_border-color', '', 'submit_element_hover_styles_border-color', ''),
(516, 8, 'submit_element_hover_styles_color', '', 'submit_element_hover_styles_color', ''),
(517, 8, 'submit_element_hover_styles_height', '', 'submit_element_hover_styles_height', ''),
(518, 8, 'submit_element_hover_styles_width', '', 'submit_element_hover_styles_width', ''),
(519, 8, 'submit_element_hover_styles_font-size', '', 'submit_element_hover_styles_font-size', ''),
(520, 8, 'submit_element_hover_styles_margin', '', 'submit_element_hover_styles_margin', ''),
(521, 8, 'submit_element_hover_styles_padding', '', 'submit_element_hover_styles_padding', ''),
(522, 8, 'submit_element_hover_styles_display', '', 'submit_element_hover_styles_display', ''),
(523, 8, 'submit_element_hover_styles_float', '', 'submit_element_hover_styles_float', ''),
(524, 8, 'submit_element_hover_styles_show_advanced_css', '0', 'submit_element_hover_styles_show_advanced_css', '0'),
(525, 8, 'submit_element_hover_styles_advanced', '', 'submit_element_hover_styles_advanced', ''),
(526, 8, 'cellcid', 'c3287', 'cellcid', 'c3287'),
(527, 2, 'field_label', 'Email', 'field_label', 'Email'),
(528, 2, 'field_key', 'email', 'field_key', 'email'),
(529, 3, 'field_label', 'Message', 'field_label', 'Message'),
(530, 3, 'field_key', 'message', 'field_key', 'message'),
(531, 4, 'field_label', 'Submit', 'field_label', 'Submit'),
(532, 4, 'field_key', 'submit', 'field_key', 'submit'),
(533, 5, 'field_label', 'Name', 'field_label', 'Name'),
(534, 5, 'field_key', 'name', 'field_key', 'name'),
(535, 5, 'custom_name_attribute', '', 'custom_name_attribute', ''),
(536, 5, 'personally_identifiable', '', 'personally_identifiable', ''),
(537, 5, 'value', '', 'value', ''),
(538, 5, 'drawerDisabled', '', 'drawerDisabled', ''),
(539, 6, 'field_label', 'Email', 'field_label', 'Email'),
(540, 6, 'field_key', 'email', 'field_key', 'email'),
(541, 6, 'custom_name_attribute', 'email', 'custom_name_attribute', 'email'),
(542, 6, 'personally_identifiable', '1', 'personally_identifiable', '1'),
(543, 6, 'value', '', 'value', ''),
(544, 6, 'drawerDisabled', '', 'drawerDisabled', ''),
(545, 7, 'field_label', 'Message', 'field_label', 'Message'),
(546, 7, 'field_key', 'message', 'field_key', 'message'),
(547, 7, 'value', '', 'value', ''),
(548, 7, 'drawerDisabled', '', 'drawerDisabled', ''),
(549, 8, 'field_label', 'Submit', 'field_label', 'Submit'),
(550, 8, 'field_key', 'submit', 'field_key', 'submit'),
(551, 8, 'drawerDisabled', '', 'drawerDisabled', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_nf3_forms`
--

CREATE TABLE `wp_nf3_forms` (
  `id` int(11) NOT NULL,
  `title` longtext,
  `key` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `subs` int(11) DEFAULT NULL,
  `form_title` longtext,
  `default_label_pos` varchar(15) DEFAULT NULL,
  `show_title` bit(1) DEFAULT NULL,
  `clear_complete` bit(1) DEFAULT NULL,
  `hide_complete` bit(1) DEFAULT NULL,
  `logged_in` bit(1) DEFAULT NULL,
  `seq_num` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `wp_nf3_forms`
--

INSERT INTO `wp_nf3_forms` (`id`, `title`, `key`, `created_at`, `updated_at`, `views`, `subs`, `form_title`, `default_label_pos`, `show_title`, `clear_complete`, `hide_complete`, `logged_in`, `seq_num`) VALUES
(1, 'Contact Me', NULL, '2019-11-03 19:15:19', '2019-11-03 17:15:18', NULL, NULL, 'Contact Me', 'above', b'1', b'1', b'1', b'0', NULL),
(2, 'Contato', NULL, '2016-08-24 19:39:20', NULL, NULL, NULL, 'Contato', 'hidden', b'0', b'1', b'1', b'0', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_nf3_form_meta`
--

CREATE TABLE `wp_nf3_form_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext,
  `meta_key` longtext,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `wp_nf3_form_meta`
--

INSERT INTO `wp_nf3_form_meta` (`id`, `parent_id`, `key`, `value`, `meta_key`, `meta_value`) VALUES
(1, 1, 'key', '', 'key', ''),
(2, 1, 'created_at', '2019-11-03 17:15:18', 'created_at', '2019-11-03 17:15:18'),
(3, 1, 'default_label_pos', 'above', 'default_label_pos', 'above'),
(4, 1, 'conditions', 'a:0:{}', 'conditions', 'a:0:{}'),
(5, 1, 'objectType', 'Form Setting', 'objectType', 'Form Setting'),
(6, 1, 'editActive', '', 'editActive', ''),
(7, 1, 'show_title', '1', 'show_title', '1'),
(8, 1, 'clear_complete', '1', 'clear_complete', '1'),
(9, 1, 'hide_complete', '1', 'hide_complete', '1'),
(10, 1, 'wrapper_class', '', 'wrapper_class', ''),
(11, 1, 'element_class', '', 'element_class', ''),
(12, 1, 'add_submit', '1', 'add_submit', '1'),
(13, 1, 'logged_in', '', 'logged_in', ''),
(14, 1, 'not_logged_in_msg', '', 'not_logged_in_msg', ''),
(15, 1, 'sub_limit_number', '', 'sub_limit_number', ''),
(16, 1, 'sub_limit_msg', '', 'sub_limit_msg', ''),
(17, 1, 'calculations', 'a:0:{}', 'calculations', 'a:0:{}'),
(18, 1, 'formContentData', 'a:4:{i:0;a:2:{s:5:\"order\";s:1:\"0\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:4:\"name\";}s:5:\"width\";s:3:\"100\";}}}i:1;a:2:{s:5:\"order\";s:1:\"1\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:5:\"email\";}s:5:\"width\";s:3:\"100\";}}}i:2;a:2:{s:5:\"order\";s:1:\"2\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:7:\"message\";}s:5:\"width\";s:3:\"100\";}}}i:3;a:2:{s:5:\"order\";s:1:\"3\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:6:\"submit\";}s:5:\"width\";s:3:\"100\";}}}}', 'formContentData', 'a:4:{i:0;a:2:{s:5:\"order\";s:1:\"0\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:4:\"name\";}s:5:\"width\";s:3:\"100\";}}}i:1;a:2:{s:5:\"order\";s:1:\"1\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:5:\"email\";}s:5:\"width\";s:3:\"100\";}}}i:2;a:2:{s:5:\"order\";s:1:\"2\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:7:\"message\";}s:5:\"width\";s:3:\"100\";}}}i:3;a:2:{s:5:\"order\";s:1:\"3\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:6:\"submit\";}s:5:\"width\";s:3:\"100\";}}}}'),
(19, 1, 'container_styles_background-color', '', 'container_styles_background-color', ''),
(20, 1, 'container_styles_border', '', 'container_styles_border', ''),
(21, 1, 'container_styles_border-style', '', 'container_styles_border-style', ''),
(22, 1, 'container_styles_border-color', '', 'container_styles_border-color', ''),
(23, 1, 'container_styles_color', '', 'container_styles_color', ''),
(24, 1, 'container_styles_height', '', 'container_styles_height', ''),
(25, 1, 'container_styles_width', '', 'container_styles_width', ''),
(26, 1, 'container_styles_font-size', '', 'container_styles_font-size', ''),
(27, 1, 'container_styles_margin', '', 'container_styles_margin', ''),
(28, 1, 'container_styles_padding', '', 'container_styles_padding', ''),
(29, 1, 'container_styles_display', '', 'container_styles_display', ''),
(30, 1, 'container_styles_float', '', 'container_styles_float', ''),
(31, 1, 'container_styles_show_advanced_css', '0', 'container_styles_show_advanced_css', '0'),
(32, 1, 'container_styles_advanced', '', 'container_styles_advanced', ''),
(33, 1, 'title_styles_background-color', '', 'title_styles_background-color', ''),
(34, 1, 'title_styles_border', '', 'title_styles_border', ''),
(35, 1, 'title_styles_border-style', '', 'title_styles_border-style', ''),
(36, 1, 'title_styles_border-color', '', 'title_styles_border-color', ''),
(37, 1, 'title_styles_color', '', 'title_styles_color', ''),
(38, 1, 'title_styles_height', '', 'title_styles_height', ''),
(39, 1, 'title_styles_width', '', 'title_styles_width', ''),
(40, 1, 'title_styles_font-size', '', 'title_styles_font-size', ''),
(41, 1, 'title_styles_margin', '', 'title_styles_margin', ''),
(42, 1, 'title_styles_padding', '', 'title_styles_padding', ''),
(43, 1, 'title_styles_display', '', 'title_styles_display', ''),
(44, 1, 'title_styles_float', '', 'title_styles_float', ''),
(45, 1, 'title_styles_show_advanced_css', '0', 'title_styles_show_advanced_css', '0'),
(46, 1, 'title_styles_advanced', '', 'title_styles_advanced', ''),
(47, 1, 'row_styles_background-color', '', 'row_styles_background-color', ''),
(48, 1, 'row_styles_border', '', 'row_styles_border', ''),
(49, 1, 'row_styles_border-style', '', 'row_styles_border-style', ''),
(50, 1, 'row_styles_border-color', '', 'row_styles_border-color', ''),
(51, 1, 'row_styles_color', '', 'row_styles_color', ''),
(52, 1, 'row_styles_height', '', 'row_styles_height', ''),
(53, 1, 'row_styles_width', '', 'row_styles_width', ''),
(54, 1, 'row_styles_font-size', '', 'row_styles_font-size', ''),
(55, 1, 'row_styles_margin', '', 'row_styles_margin', ''),
(56, 1, 'row_styles_padding', '', 'row_styles_padding', ''),
(57, 1, 'row_styles_display', '', 'row_styles_display', ''),
(58, 1, 'row_styles_show_advanced_css', '0', 'row_styles_show_advanced_css', '0'),
(59, 1, 'row_styles_advanced', '', 'row_styles_advanced', ''),
(60, 1, 'row-odd_styles_background-color', '', 'row-odd_styles_background-color', ''),
(61, 1, 'row-odd_styles_border', '', 'row-odd_styles_border', ''),
(62, 1, 'row-odd_styles_border-style', '', 'row-odd_styles_border-style', ''),
(63, 1, 'row-odd_styles_border-color', '', 'row-odd_styles_border-color', ''),
(64, 1, 'row-odd_styles_color', '', 'row-odd_styles_color', ''),
(65, 1, 'row-odd_styles_height', '', 'row-odd_styles_height', ''),
(66, 1, 'row-odd_styles_width', '', 'row-odd_styles_width', ''),
(67, 1, 'row-odd_styles_font-size', '', 'row-odd_styles_font-size', ''),
(68, 1, 'row-odd_styles_margin', '', 'row-odd_styles_margin', ''),
(69, 1, 'row-odd_styles_padding', '', 'row-odd_styles_padding', ''),
(70, 1, 'row-odd_styles_display', '', 'row-odd_styles_display', ''),
(71, 1, 'row-odd_styles_show_advanced_css', '0', 'row-odd_styles_show_advanced_css', '0'),
(72, 1, 'row-odd_styles_advanced', '', 'row-odd_styles_advanced', ''),
(73, 1, 'success-msg_styles_background-color', '', 'success-msg_styles_background-color', ''),
(74, 1, 'success-msg_styles_border', '', 'success-msg_styles_border', ''),
(75, 1, 'success-msg_styles_border-style', '', 'success-msg_styles_border-style', ''),
(76, 1, 'success-msg_styles_border-color', '', 'success-msg_styles_border-color', ''),
(77, 1, 'success-msg_styles_color', '', 'success-msg_styles_color', ''),
(78, 1, 'success-msg_styles_height', '', 'success-msg_styles_height', ''),
(79, 1, 'success-msg_styles_width', '', 'success-msg_styles_width', ''),
(80, 1, 'success-msg_styles_font-size', '', 'success-msg_styles_font-size', ''),
(81, 1, 'success-msg_styles_margin', '', 'success-msg_styles_margin', ''),
(82, 1, 'success-msg_styles_padding', '', 'success-msg_styles_padding', ''),
(83, 1, 'success-msg_styles_display', '', 'success-msg_styles_display', ''),
(84, 1, 'success-msg_styles_show_advanced_css', '0', 'success-msg_styles_show_advanced_css', '0'),
(85, 1, 'success-msg_styles_advanced', '', 'success-msg_styles_advanced', ''),
(86, 1, 'error_msg_styles_background-color', '', 'error_msg_styles_background-color', ''),
(87, 1, 'error_msg_styles_border', '', 'error_msg_styles_border', ''),
(88, 1, 'error_msg_styles_border-style', '', 'error_msg_styles_border-style', ''),
(89, 1, 'error_msg_styles_border-color', '', 'error_msg_styles_border-color', ''),
(90, 1, 'error_msg_styles_color', '', 'error_msg_styles_color', ''),
(91, 1, 'error_msg_styles_height', '', 'error_msg_styles_height', ''),
(92, 1, 'error_msg_styles_width', '', 'error_msg_styles_width', ''),
(93, 1, 'error_msg_styles_font-size', '', 'error_msg_styles_font-size', ''),
(94, 1, 'error_msg_styles_margin', '', 'error_msg_styles_margin', ''),
(95, 1, 'error_msg_styles_padding', '', 'error_msg_styles_padding', ''),
(96, 1, 'error_msg_styles_display', '', 'error_msg_styles_display', ''),
(97, 1, 'error_msg_styles_show_advanced_css', '0', 'error_msg_styles_show_advanced_css', '0'),
(98, 1, 'error_msg_styles_advanced', '', 'error_msg_styles_advanced', ''),
(99, 2, 'title', 'Contact Me', 'title', 'Contact Me'),
(100, 2, 'key', '', 'key', ''),
(101, 2, 'created_at', '2016-08-24 16:39:20', 'created_at', '2016-08-24 16:39:20'),
(102, 2, 'default_label_pos', 'hidden', 'default_label_pos', 'hidden'),
(103, 2, 'conditions', 'a:0:{}', 'conditions', 'a:0:{}'),
(104, 2, 'objectType', 'Form Setting', 'objectType', 'Form Setting'),
(105, 2, 'editActive', '1', 'editActive', '1'),
(106, 2, 'show_title', '0', 'show_title', '0'),
(107, 2, 'clear_complete', '1', 'clear_complete', '1'),
(108, 2, 'hide_complete', '1', 'hide_complete', '1'),
(109, 2, 'wrapper_class', '', 'wrapper_class', ''),
(110, 2, 'element_class', '', 'element_class', ''),
(111, 2, 'add_submit', '1', 'add_submit', '1'),
(112, 2, 'logged_in', '0', 'logged_in', '0'),
(113, 2, 'not_logged_in_msg', '', 'not_logged_in_msg', ''),
(114, 2, 'sub_limit_number', '', 'sub_limit_number', ''),
(115, 2, 'sub_limit_msg', '', 'sub_limit_msg', ''),
(116, 2, 'calculations', 'a:0:{}', 'calculations', 'a:0:{}'),
(117, 2, 'formContentData', 'a:4:{i:0;s:27:\"nome_completo_1572810028877\";i:1;s:5:\"email\";i:2;s:7:\"message\";i:3;s:20:\"enviar_1572808615243\";}', 'formContentData', 'a:4:{i:0;s:27:\"nome_completo_1572810028877\";i:1;s:5:\"email\";i:2;s:7:\"message\";i:3;s:20:\"enviar_1572808615243\";}'),
(118, 2, 'container_styles_background-color', '', 'container_styles_background-color', ''),
(119, 2, 'container_styles_border', '', 'container_styles_border', ''),
(120, 2, 'container_styles_border-style', '', 'container_styles_border-style', ''),
(121, 2, 'container_styles_border-color', '', 'container_styles_border-color', ''),
(122, 2, 'container_styles_color', '', 'container_styles_color', ''),
(123, 2, 'container_styles_height', '', 'container_styles_height', ''),
(124, 2, 'container_styles_width', '', 'container_styles_width', ''),
(125, 2, 'container_styles_font-size', '', 'container_styles_font-size', ''),
(126, 2, 'container_styles_margin', '', 'container_styles_margin', ''),
(127, 2, 'container_styles_padding', '', 'container_styles_padding', ''),
(128, 2, 'container_styles_display', '', 'container_styles_display', ''),
(129, 2, 'container_styles_float', '', 'container_styles_float', ''),
(130, 2, 'container_styles_show_advanced_css', '0', 'container_styles_show_advanced_css', '0'),
(131, 2, 'container_styles_advanced', '', 'container_styles_advanced', ''),
(132, 2, 'title_styles_background-color', '', 'title_styles_background-color', ''),
(133, 2, 'title_styles_border', '', 'title_styles_border', ''),
(134, 2, 'title_styles_border-style', '', 'title_styles_border-style', ''),
(135, 2, 'title_styles_border-color', '', 'title_styles_border-color', ''),
(136, 2, 'title_styles_color', '', 'title_styles_color', ''),
(137, 2, 'title_styles_height', '', 'title_styles_height', ''),
(138, 2, 'title_styles_width', '', 'title_styles_width', ''),
(139, 2, 'title_styles_font-size', '', 'title_styles_font-size', ''),
(140, 2, 'title_styles_margin', '', 'title_styles_margin', ''),
(141, 2, 'title_styles_padding', '', 'title_styles_padding', ''),
(142, 2, 'title_styles_display', '', 'title_styles_display', ''),
(143, 2, 'title_styles_float', '', 'title_styles_float', ''),
(144, 2, 'title_styles_show_advanced_css', '0', 'title_styles_show_advanced_css', '0'),
(145, 2, 'title_styles_advanced', '', 'title_styles_advanced', ''),
(146, 2, 'row_styles_background-color', '', 'row_styles_background-color', ''),
(147, 2, 'row_styles_border', '', 'row_styles_border', ''),
(148, 2, 'row_styles_border-style', '', 'row_styles_border-style', ''),
(149, 2, 'row_styles_border-color', '', 'row_styles_border-color', ''),
(150, 2, 'row_styles_color', '', 'row_styles_color', ''),
(151, 2, 'row_styles_height', '', 'row_styles_height', ''),
(152, 2, 'row_styles_width', '', 'row_styles_width', ''),
(153, 2, 'row_styles_font-size', '', 'row_styles_font-size', ''),
(154, 2, 'row_styles_margin', '', 'row_styles_margin', ''),
(155, 2, 'row_styles_padding', '', 'row_styles_padding', ''),
(156, 2, 'row_styles_display', '', 'row_styles_display', ''),
(157, 2, 'row_styles_show_advanced_css', '0', 'row_styles_show_advanced_css', '0'),
(158, 2, 'row_styles_advanced', '', 'row_styles_advanced', ''),
(159, 2, 'row-odd_styles_background-color', '', 'row-odd_styles_background-color', ''),
(160, 2, 'row-odd_styles_border', '', 'row-odd_styles_border', ''),
(161, 2, 'row-odd_styles_border-style', '', 'row-odd_styles_border-style', ''),
(162, 2, 'row-odd_styles_border-color', '', 'row-odd_styles_border-color', ''),
(163, 2, 'row-odd_styles_color', '', 'row-odd_styles_color', ''),
(164, 2, 'row-odd_styles_height', '', 'row-odd_styles_height', ''),
(165, 2, 'row-odd_styles_width', '', 'row-odd_styles_width', ''),
(166, 2, 'row-odd_styles_font-size', '', 'row-odd_styles_font-size', ''),
(167, 2, 'row-odd_styles_margin', '', 'row-odd_styles_margin', ''),
(168, 2, 'row-odd_styles_padding', '', 'row-odd_styles_padding', ''),
(169, 2, 'row-odd_styles_display', '', 'row-odd_styles_display', ''),
(170, 2, 'row-odd_styles_show_advanced_css', '0', 'row-odd_styles_show_advanced_css', '0'),
(171, 2, 'row-odd_styles_advanced', '', 'row-odd_styles_advanced', ''),
(172, 2, 'success-msg_styles_background-color', '', 'success-msg_styles_background-color', ''),
(173, 2, 'success-msg_styles_border', '', 'success-msg_styles_border', ''),
(174, 2, 'success-msg_styles_border-style', '', 'success-msg_styles_border-style', ''),
(175, 2, 'success-msg_styles_border-color', '', 'success-msg_styles_border-color', ''),
(176, 2, 'success-msg_styles_color', '', 'success-msg_styles_color', ''),
(177, 2, 'success-msg_styles_height', '', 'success-msg_styles_height', ''),
(178, 2, 'success-msg_styles_width', '', 'success-msg_styles_width', ''),
(179, 2, 'success-msg_styles_font-size', '', 'success-msg_styles_font-size', ''),
(180, 2, 'success-msg_styles_margin', '', 'success-msg_styles_margin', ''),
(181, 2, 'success-msg_styles_padding', '', 'success-msg_styles_padding', ''),
(182, 2, 'success-msg_styles_display', '', 'success-msg_styles_display', ''),
(183, 2, 'success-msg_styles_show_advanced_css', '0', 'success-msg_styles_show_advanced_css', '0'),
(184, 2, 'success-msg_styles_advanced', '', 'success-msg_styles_advanced', ''),
(185, 2, 'error_msg_styles_background-color', '', 'error_msg_styles_background-color', ''),
(186, 2, 'error_msg_styles_border', '', 'error_msg_styles_border', ''),
(187, 2, 'error_msg_styles_border-style', '', 'error_msg_styles_border-style', ''),
(188, 2, 'error_msg_styles_border-color', '', 'error_msg_styles_border-color', ''),
(189, 2, 'error_msg_styles_color', '', 'error_msg_styles_color', ''),
(190, 2, 'error_msg_styles_height', '', 'error_msg_styles_height', ''),
(191, 2, 'error_msg_styles_width', '', 'error_msg_styles_width', ''),
(192, 2, 'error_msg_styles_font-size', '', 'error_msg_styles_font-size', ''),
(193, 2, 'error_msg_styles_margin', '', 'error_msg_styles_margin', ''),
(194, 2, 'error_msg_styles_padding', '', 'error_msg_styles_padding', ''),
(195, 2, 'error_msg_styles_display', '', 'error_msg_styles_display', ''),
(196, 2, 'error_msg_styles_show_advanced_css', '0', 'error_msg_styles_show_advanced_css', '0'),
(197, 2, 'error_msg_styles_advanced', '', 'error_msg_styles_advanced', ''),
(198, 2, 'seq_num', NULL, 'seq_num', NULL),
(199, 2, 'allow_public_link', '0', 'allow_public_link', '0'),
(200, 2, 'embed_form', '', 'embed_form', ''),
(201, 2, 'currency', 'GBP', 'currency', 'GBP'),
(202, 2, 'unique_field_error', 'A form with this value has already been submitted.', 'unique_field_error', 'A form with this value has already been submitted.'),
(203, 2, 'changeEmailErrorMsg', '', 'changeEmailErrorMsg', ''),
(204, 2, 'changeDateErrorMsg', '', 'changeDateErrorMsg', ''),
(205, 2, 'confirmFieldErrorMsg', '', 'confirmFieldErrorMsg', ''),
(206, 2, 'fieldNumberNumMinError', '', 'fieldNumberNumMinError', ''),
(207, 2, 'fieldNumberNumMaxError', '', 'fieldNumberNumMaxError', ''),
(208, 2, 'fieldNumberIncrementBy', '', 'fieldNumberIncrementBy', ''),
(209, 2, 'formErrorsCorrectErrors', '', 'formErrorsCorrectErrors', ''),
(210, 2, 'validateRequiredField', '', 'validateRequiredField', ''),
(211, 2, 'honeypotHoneypotError', '', 'honeypotHoneypotError', ''),
(212, 2, 'fieldsMarkedRequired', '', 'fieldsMarkedRequired', ''),
(213, 2, 'drawerDisabled', '', 'drawerDisabled', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_nf3_objects`
--

CREATE TABLE `wp_nf3_objects` (
  `id` int(11) NOT NULL,
  `type` longtext,
  `title` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `object_title` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_nf3_object_meta`
--

CREATE TABLE `wp_nf3_object_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext,
  `meta_key` longtext,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_nf3_relationships`
--

CREATE TABLE `wp_nf3_relationships` (
  `id` int(11) NOT NULL,
  `child_id` int(11) NOT NULL,
  `child_type` longtext NOT NULL,
  `parent_id` int(11) NOT NULL,
  `parent_type` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_nf3_upgrades`
--

CREATE TABLE `wp_nf3_upgrades` (
  `id` int(11) NOT NULL,
  `cache` longtext,
  `stage` int(11) NOT NULL DEFAULT '0',
  `maintenance` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `wp_nf3_upgrades`
--

INSERT INTO `wp_nf3_upgrades` (`id`, `cache`, `stage`, `maintenance`) VALUES
(2, 'a:7:{s:2:\"id\";i:2;s:20:\"show_publish_options\";b:0;s:6:\"fields\";a:4:{i:0;a:2:{s:8:\"settings\";a:75:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";s:1:\"1\";s:5:\"label\";s:13:\"Nome Completo\";s:3:\"key\";s:27:\"nome_completo_1572810028877\";s:4:\"type\";s:7:\"textbox\";s:10:\"created_at\";s:19:\"2016-08-24 16:39:20\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:11:\"placeholder\";s:13:\"Nome Completo\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3277\";s:11:\"field_label\";s:4:\"Name\";s:9:\"field_key\";s:4:\"name\";s:21:\"custom_name_attribute\";s:0:\"\";s:23:\"personally_identifiable\";s:0:\"\";s:5:\"value\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";i:5;}i:1;a:2:{s:8:\"settings\";a:67:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";s:1:\"2\";s:5:\"label\";s:5:\"Email\";s:3:\"key\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:10:\"created_at\";s:19:\"2016-08-24 16:39:20\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:11:\"placeholder\";s:22:\"exemplo@dominio.com.br\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3281\";s:11:\"field_label\";s:5:\"Email\";s:9:\"field_key\";s:5:\"email\";s:21:\"custom_name_attribute\";s:5:\"email\";s:23:\"personally_identifiable\";s:1:\"1\";s:5:\"value\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";i:6;}i:2;a:2:{s:8:\"settings\";a:74:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";s:1:\"3\";s:5:\"label\";s:7:\"Message\";s:3:\"key\";s:7:\"message\";s:4:\"type\";s:8:\"textarea\";s:10:\"created_at\";s:19:\"2016-08-24 16:39:20\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:11:\"placeholder\";s:12:\"Sua pergunta\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:12:\"textarea_rte\";s:0:\"\";s:18:\"disable_rte_mobile\";s:0:\"\";s:14:\"textarea_media\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3284\";s:11:\"field_label\";s:7:\"Message\";s:9:\"field_key\";s:7:\"message\";s:5:\"value\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";i:7;}i:3;a:2:{s:8:\"settings\";a:71:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";s:1:\"5\";s:5:\"label\";s:6:\"Enviar\";s:3:\"key\";s:20:\"enviar_1572808615243\";s:4:\"type\";s:6:\"submit\";s:10:\"created_at\";s:19:\"2016-08-24 16:39:20\";s:16:\"processing_label\";s:10:\"Processing\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:44:\"submit_element_hover_styles_background-color\";s:0:\"\";s:34:\"submit_element_hover_styles_border\";s:0:\"\";s:40:\"submit_element_hover_styles_border-style\";s:0:\"\";s:40:\"submit_element_hover_styles_border-color\";s:0:\"\";s:33:\"submit_element_hover_styles_color\";s:0:\"\";s:34:\"submit_element_hover_styles_height\";s:0:\"\";s:33:\"submit_element_hover_styles_width\";s:0:\"\";s:37:\"submit_element_hover_styles_font-size\";s:0:\"\";s:34:\"submit_element_hover_styles_margin\";s:0:\"\";s:35:\"submit_element_hover_styles_padding\";s:0:\"\";s:35:\"submit_element_hover_styles_display\";s:0:\"\";s:33:\"submit_element_hover_styles_float\";s:0:\"\";s:45:\"submit_element_hover_styles_show_advanced_css\";s:1:\"0\";s:36:\"submit_element_hover_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3287\";s:11:\"field_label\";s:6:\"Submit\";s:9:\"field_key\";s:6:\"submit\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";i:8;}}s:7:\"actions\";a:4:{i:0;a:2:{s:8:\"settings\";a:30:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:4:\"save\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2016-08-24 16:39:20\";s:5:\"label\";s:16:\"Store Submission\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:13:\"email_subject\";s:20:\"Envio de Ninja Forms\";s:13:\"email_message\";s:14:\"{fields_table}\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:19:\"email_message_plain\";s:0:\"\";s:7:\"message\";s:160:\"This action adds users to WordPress\' personal data export tool, allowing admins to comply with the GDPR and other privacy regulations from the site\'s front end.\";s:15:\"submitter_email\";s:0:\"\";s:18:\"fields-save-toggle\";s:8:\"save_all\";s:16:\"exception_fields\";a:0:{}s:18:\"set_subs_to_expire\";s:1:\"0\";s:16:\"subs_expire_time\";s:2:\"90\";}s:2:\"id\";i:5;}i:1;a:2:{s:8:\"settings\";a:25:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2016-08-24 16:39:20\";s:5:\"label\";s:18:\"Email Confirmation\";s:2:\"to\";s:13:\"{field:email}\";s:7:\"subject\";s:24:\"This is an email action.\";s:7:\"message\";s:19:\"Hello, Ninja Forms!\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:13:\"email_subject\";s:24:\"Submission Confirmation \";s:13:\"email_message\";s:29:\"<p>{all_fields_table}<br></p>\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:19:\"email_message_plain\";s:0:\"\";}s:2:\"id\";i:6;}i:2;a:2:{s:8:\"settings\";a:25:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2016-08-24 16:47:39\";s:5:\"label\";s:18:\"Email Notification\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:20:\"{system:admin_email}\";s:13:\"email_subject\";s:52:\"New message from {field:nome_completo_1572809957205}\";s:13:\"email_message\";s:83:\"<p>{field:message}</p><p>-{field:nome_completo_1572809957205} ( {field:email} )</p>\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:13:\"{field:email}\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:10:\"attach_csv\";s:1:\"0\";s:19:\"email_message_plain\";s:0:\"\";s:7:\"message\";s:160:\"This action adds users to WordPress\' personal data delete tool, allowing admins to comply with the GDPR and other privacy regulations from the site\'s front end.\";}s:2:\"id\";i:7;}i:3;a:2:{s:8:\"settings\";a:31:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:14:\"successmessage\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2016-08-24 16:39:20\";s:5:\"label\";s:15:\"Success Message\";s:7:\"message\";s:70:\"Thank you {field:nome_completo_1572809957205} for filling out my form!\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:13:\"email_subject\";s:20:\"Envio de Ninja Forms\";s:13:\"email_message\";s:14:\"{fields_table}\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:11:\"success_msg\";s:89:\"<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>\";s:19:\"email_message_plain\";s:0:\"\";s:15:\"submitter_email\";s:0:\"\";s:18:\"fields-save-toggle\";s:8:\"save_all\";s:16:\"exception_fields\";a:0:{}s:18:\"set_subs_to_expire\";s:1:\"0\";s:16:\"subs_expire_time\";s:2:\"90\";}s:2:\"id\";i:8;}}s:8:\"settings\";a:115:{s:10:\"objectType\";s:12:\"Form Setting\";s:10:\"editActive\";b:1;s:5:\"title\";s:7:\"Contato\";s:10:\"created_at\";s:19:\"2016-08-24 16:39:20\";s:10:\"form_title\";s:10:\"Contact Me\";s:17:\"default_label_pos\";s:6:\"hidden\";s:10:\"show_title\";i:0;s:14:\"clear_complete\";s:1:\"1\";s:13:\"hide_complete\";s:1:\"1\";s:9:\"logged_in\";s:1:\"0\";s:3:\"key\";s:0:\"\";s:10:\"conditions\";a:0:{}s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"add_submit\";s:1:\"1\";s:17:\"not_logged_in_msg\";s:0:\"\";s:16:\"sub_limit_number\";s:0:\"\";s:13:\"sub_limit_msg\";s:0:\"\";s:12:\"calculations\";a:0:{}s:15:\"formContentData\";a:4:{i:0;s:27:\"nome_completo_1572810028877\";i:1;s:5:\"email\";i:2;s:7:\"message\";i:3;s:20:\"enviar_1572808615243\";}s:33:\"container_styles_background-color\";s:0:\"\";s:23:\"container_styles_border\";s:0:\"\";s:29:\"container_styles_border-style\";s:0:\"\";s:29:\"container_styles_border-color\";s:0:\"\";s:22:\"container_styles_color\";s:0:\"\";s:23:\"container_styles_height\";s:0:\"\";s:22:\"container_styles_width\";s:0:\"\";s:26:\"container_styles_font-size\";s:0:\"\";s:23:\"container_styles_margin\";s:0:\"\";s:24:\"container_styles_padding\";s:0:\"\";s:24:\"container_styles_display\";s:0:\"\";s:22:\"container_styles_float\";s:0:\"\";s:34:\"container_styles_show_advanced_css\";s:1:\"0\";s:25:\"container_styles_advanced\";s:0:\"\";s:29:\"title_styles_background-color\";s:0:\"\";s:19:\"title_styles_border\";s:0:\"\";s:25:\"title_styles_border-style\";s:0:\"\";s:25:\"title_styles_border-color\";s:0:\"\";s:18:\"title_styles_color\";s:0:\"\";s:19:\"title_styles_height\";s:0:\"\";s:18:\"title_styles_width\";s:0:\"\";s:22:\"title_styles_font-size\";s:0:\"\";s:19:\"title_styles_margin\";s:0:\"\";s:20:\"title_styles_padding\";s:0:\"\";s:20:\"title_styles_display\";s:0:\"\";s:18:\"title_styles_float\";s:0:\"\";s:30:\"title_styles_show_advanced_css\";s:1:\"0\";s:21:\"title_styles_advanced\";s:0:\"\";s:27:\"row_styles_background-color\";s:0:\"\";s:17:\"row_styles_border\";s:0:\"\";s:23:\"row_styles_border-style\";s:0:\"\";s:23:\"row_styles_border-color\";s:0:\"\";s:16:\"row_styles_color\";s:0:\"\";s:17:\"row_styles_height\";s:0:\"\";s:16:\"row_styles_width\";s:0:\"\";s:20:\"row_styles_font-size\";s:0:\"\";s:17:\"row_styles_margin\";s:0:\"\";s:18:\"row_styles_padding\";s:0:\"\";s:18:\"row_styles_display\";s:0:\"\";s:28:\"row_styles_show_advanced_css\";s:1:\"0\";s:19:\"row_styles_advanced\";s:0:\"\";s:31:\"row-odd_styles_background-color\";s:0:\"\";s:21:\"row-odd_styles_border\";s:0:\"\";s:27:\"row-odd_styles_border-style\";s:0:\"\";s:27:\"row-odd_styles_border-color\";s:0:\"\";s:20:\"row-odd_styles_color\";s:0:\"\";s:21:\"row-odd_styles_height\";s:0:\"\";s:20:\"row-odd_styles_width\";s:0:\"\";s:24:\"row-odd_styles_font-size\";s:0:\"\";s:21:\"row-odd_styles_margin\";s:0:\"\";s:22:\"row-odd_styles_padding\";s:0:\"\";s:22:\"row-odd_styles_display\";s:0:\"\";s:32:\"row-odd_styles_show_advanced_css\";s:1:\"0\";s:23:\"row-odd_styles_advanced\";s:0:\"\";s:35:\"success-msg_styles_background-color\";s:0:\"\";s:25:\"success-msg_styles_border\";s:0:\"\";s:31:\"success-msg_styles_border-style\";s:0:\"\";s:31:\"success-msg_styles_border-color\";s:0:\"\";s:24:\"success-msg_styles_color\";s:0:\"\";s:25:\"success-msg_styles_height\";s:0:\"\";s:24:\"success-msg_styles_width\";s:0:\"\";s:28:\"success-msg_styles_font-size\";s:0:\"\";s:25:\"success-msg_styles_margin\";s:0:\"\";s:26:\"success-msg_styles_padding\";s:0:\"\";s:26:\"success-msg_styles_display\";s:0:\"\";s:36:\"success-msg_styles_show_advanced_css\";s:1:\"0\";s:27:\"success-msg_styles_advanced\";s:0:\"\";s:33:\"error_msg_styles_background-color\";s:0:\"\";s:23:\"error_msg_styles_border\";s:0:\"\";s:29:\"error_msg_styles_border-style\";s:0:\"\";s:29:\"error_msg_styles_border-color\";s:0:\"\";s:22:\"error_msg_styles_color\";s:0:\"\";s:23:\"error_msg_styles_height\";s:0:\"\";s:22:\"error_msg_styles_width\";s:0:\"\";s:26:\"error_msg_styles_font-size\";s:0:\"\";s:23:\"error_msg_styles_margin\";s:0:\"\";s:24:\"error_msg_styles_padding\";s:0:\"\";s:24:\"error_msg_styles_display\";s:0:\"\";s:34:\"error_msg_styles_show_advanced_css\";s:1:\"0\";s:25:\"error_msg_styles_advanced\";s:0:\"\";s:17:\"allow_public_link\";i:0;s:10:\"embed_form\";s:0:\"\";s:8:\"currency\";s:3:\"GBP\";s:18:\"unique_field_error\";s:50:\"A form with this value has already been submitted.\";s:19:\"changeEmailErrorMsg\";s:0:\"\";s:18:\"changeDateErrorMsg\";s:0:\"\";s:20:\"confirmFieldErrorMsg\";s:0:\"\";s:22:\"fieldNumberNumMinError\";s:0:\"\";s:22:\"fieldNumberNumMaxError\";s:0:\"\";s:22:\"fieldNumberIncrementBy\";s:0:\"\";s:23:\"formErrorsCorrectErrors\";s:0:\"\";s:21:\"validateRequiredField\";s:0:\"\";s:21:\"honeypotHoneypotError\";s:0:\"\";s:20:\"fieldsMarkedRequired\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}s:14:\"deleted_fields\";a:0:{}s:15:\"deleted_actions\";a:0:{}}', 4, b'0');

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
(33, 'active_plugins', 'a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:27:\"ninja-forms/ninja-forms.php\";i:2;s:35:\"wp-most-popular/wp-most-popular.php\";}', 'yes'),
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
(81, 'uninstall_plugins', 'a:1:{s:27:\"ninja-forms/ninja-forms.php\";s:21:\"ninja_forms_uninstall\";}', 'no'),
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
(764, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.2.4.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.2.4.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.4\";s:7:\"version\";s:5:\"5.2.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1572808500;s:15:\"version_checked\";s:5:\"5.2.4\";s:12:\"translations\";a:0:{}}', 'no'),
(765, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1572808510;s:7:\"checked\";a:4:{s:5:\"canal\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(603, '_site_transient_browser_289d30a4d23579d26a05a8aa808752b5', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"77.0.3865.120\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(813, '_site_transient_timeout_theme_roots', '1572810309', 'no'),
(814, '_site_transient_theme_roots', 'a:4:{s:5:\"canal\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(305, 'acf_version', '5.8.6', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'cron', 'a:11:{i:1572815208;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1572836803;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1572836809;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1572836810;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1572836867;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1572836875;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1573406189;a:1:{s:26:\"nf_weekly_promotion_update\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:9:\"nf-weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1573406281;a:1:{s:22:\"nf_marketing_feed_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:9:\"nf-weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1573406368;a:1:{s:23:\"nf_email_telemetry_push\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:9:\"nf-weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1575479881;a:1:{s:13:\"nf_optin_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"nf-monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2678400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(808, '_transient_timeout_plugin_slugs', '1572894920', 'no'),
(809, '_transient_plugin_slugs', 'a:7:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:9:\"hello.php\";i:3;s:27:\"ninja-forms/ninja-forms.php\";i:4;s:27:\"sample-data/sample-data.php\";i:5;s:35:\"taxonomy-images/taxonomy-images.php\";i:6;s:35:\"wp-most-popular/wp-most-popular.php\";}', 'no'),
(811, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4637;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:3725;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2646;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2520;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1942;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1770;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1756;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1473;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1453;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1452;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1438;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1389;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1365;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1296;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1159;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1140;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1111;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1077;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1058;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:960;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:863;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:850;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:847;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:821;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:761;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:754;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:740;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:737;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:737;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:710;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:706;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:690;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:683;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:678;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:670;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:657;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:637;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:633;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:625;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:623;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:614;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:602;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:578;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:577;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:566;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:564;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:560;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:547;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:539;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:537;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:530;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:526;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:525;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:523;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:521;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:517;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:507;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:486;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:485;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:482;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:482;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:480;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:462;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:460;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:455;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:452;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:431;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:424;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:419;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:419;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:418;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:417;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:414;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:410;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:404;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:404;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:400;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:393;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:387;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:387;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:383;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:380;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:371;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:369;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:366;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:363;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:360;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:359;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:352;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:348;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:348;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:339;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:330;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:329;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:328;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:327;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:321;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:319;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:317;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:316;}}', 'no'),
(810, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1572819271', 'no'),
(478, 'widget_wpp', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(143, 'can_compress_scripts', '1', 'no'),
(602, '_site_transient_timeout_browser_289d30a4d23579d26a05a8aa808752b5', '1573173062', 'no'),
(156, 'recently_activated', 'a:1:{s:51:\"wordpress-popular-posts/wordpress-popular-posts.php\";i:1572304408;}', 'yes'),
(159, 'ftp_credentials', 'a:3:{s:8:\"hostname\";s:12:\"65.19.141.67\";s:8:\"username\";s:6:\"moises\";s:15:\"connection_type\";s:3:\"ftp\";}', 'yes'),
(160, 'current_theme', '', 'yes'),
(161, 'theme_mods_canal', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(162, 'theme_switched', '', 'yes'),
(204, 'taxonomy_image_plugin_settings', 'a:1:{s:10:\"taxonomies\";a:2:{i:0;s:8:\"category\";i:1;s:13:\"link_category\";}}', 'yes'),
(207, 'taxonomy_image_plugin', 'a:2:{i:4;i:19;i:5;i:18;}', 'yes'),
(604, '_site_transient_timeout_php_check_5ef9b0d4e2ff0a2eb7df4e41a2af1661', '1573173062', 'no'),
(605, '_site_transient_php_check_5ef9b0d4e2ff0a2eb7df4e41a2af1661', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(768, 'category_children', 'a:1:{i:13;a:8:{i:0;i:15;i:1;i:16;i:2;i:17;i:3;i:18;i:4;i:19;i:5;i:20;i:6;i:21;i:7;i:23;}}', 'yes'),
(815, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1572808515;s:7:\"checked\";a:7:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.6\";s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:9:\"hello.php\";s:5:\"1.7.2\";s:27:\"ninja-forms/ninja-forms.php\";s:6:\"3.4.20\";s:27:\"sample-data/sample-data.php\";s:5:\"1.1.0\";s:35:\"taxonomy-images/taxonomy-images.php\";s:3:\"1.0\";s:35:\"wp-most-popular/wp-most-popular.php\";s:5:\"0.3.1\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.4\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:2:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"hello-dolly\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"1.7.2\";s:7:\"updated\";s:19:\"2019-08-13 18:09:11\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.7.2/pt_BR.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"ninja-forms\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:6:\"3.4.20\";s:7:\"updated\";s:19:\"2019-09-03 10:49:55\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/plugin/ninja-forms/3.4.20/pt_BR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:6:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.6\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"ninja-forms/ninja-forms.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/ninja-forms\";s:4:\"slug\";s:11:\"ninja-forms\";s:6:\"plugin\";s:27:\"ninja-forms/ninja-forms.php\";s:11:\"new_version\";s:6:\"3.4.20\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/ninja-forms/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/ninja-forms.3.4.20.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/ninja-forms/assets/icon-256x256.png?rev=1649747\";s:2:\"1x\";s:64:\"https://ps.w.org/ninja-forms/assets/icon-128x128.png?rev=1649747\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/ninja-forms/assets/banner-1544x500.png?rev=2069024\";s:2:\"1x\";s:66:\"https://ps.w.org/ninja-forms/assets/banner-772x250.png?rev=2069024\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"sample-data/sample-data.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/sample-data\";s:4:\"slug\";s:11:\"sample-data\";s:6:\"plugin\";s:27:\"sample-data/sample-data.php\";s:11:\"new_version\";s:5:\"1.1.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/sample-data/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/sample-data.1.1.0.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:64:\"https://ps.w.org/sample-data/assets/icon-128x128.jpg?rev=1923678\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/sample-data/assets/banner-772x250.jpg?rev=1923678\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"taxonomy-images/taxonomy-images.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/taxonomy-images\";s:4:\"slug\";s:15:\"taxonomy-images\";s:6:\"plugin\";s:35:\"taxonomy-images/taxonomy-images.php\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/taxonomy-images/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/taxonomy-images.1.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/taxonomy-images/assets/icon-256x256.png?rev=1283547\";s:2:\"1x\";s:68:\"https://ps.w.org/taxonomy-images/assets/icon-128x128.png?rev=1283547\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/taxonomy-images/assets/banner-1544x500.png?rev=1288553\";s:2:\"1x\";s:70:\"https://ps.w.org/taxonomy-images/assets/banner-772x250.png?rev=1288553\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"wp-most-popular/wp-most-popular.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/wp-most-popular\";s:4:\"slug\";s:15:\"wp-most-popular\";s:6:\"plugin\";s:35:\"wp-most-popular/wp-most-popular.php\";s:11:\"new_version\";s:5:\"0.3.1\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/wp-most-popular/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/wp-most-popular.0.3.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-most-popular/assets/icon-256x256.png?rev=1861383\";s:2:\"1x\";s:60:\"https://ps.w.org/wp-most-popular/assets/icon.svg?rev=1861383\";s:3:\"svg\";s:60:\"https://ps.w.org/wp-most-popular/assets/icon.svg?rev=1861383\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/wp-most-popular/assets/banner-1544x500.png?rev=1920990\";s:2:\"1x\";s:70:\"https://ps.w.org/wp-most-popular/assets/banner-772x250.png?rev=1920990\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(816, 'ninja_forms_oauth_client_secret', '922j1DZLFYvByy2Sb8XVpbCCgRq9Lbk6YAssauYt', 'yes'),
(817, 'ninja_forms_version', '3.4.20', 'yes'),
(818, 'ninja_forms_db_version', '1.4', 'no'),
(819, 'ninja_forms_required_updates', 'a:6:{s:19:\"CacheCollateActions\";s:19:\"2019-11-03 19:15:16\";s:17:\"CacheCollateForms\";s:19:\"2019-11-03 19:15:16\";s:18:\"CacheCollateFields\";s:19:\"2019-11-03 19:15:16\";s:19:\"CacheCollateObjects\";s:19:\"2019-11-03 19:15:16\";s:19:\"CacheCollateCleanup\";s:19:\"2019-11-03 19:15:16\";s:25:\"CacheFieldReconcilliation\";s:19:\"2019-11-03 19:15:16\";}', 'yes'),
(820, 'ninja_forms_settings', 'a:8:{s:11:\"date_format\";s:5:\"m/d/A\";s:8:\"currency\";s:3:\"USD\";s:18:\"recaptcha_site_key\";s:0:\"\";s:20:\"recaptcha_secret_key\";s:0:\"\";s:14:\"recaptcha_lang\";s:0:\"\";s:19:\"delete_on_uninstall\";i:0;s:21:\"disable_admin_notices\";i:0;s:16:\"builder_dev_mode\";i:1;}', 'yes'),
(821, 'ninja_forms_zuul', '35', 'no'),
(822, 'widget_ninja_forms_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(823, 'ninja_forms_needs_updates', '0', 'yes'),
(824, 'nf_admin_notice', 'a:1:{s:16:\"one_week_support\";a:2:{s:5:\"start\";s:10:\"11/10/2019\";s:3:\"int\";i:7;}}', 'yes'),
(827, 'nf_form_tel_data', '1,2', 'no'),
(828, 'ninja_forms_do_not_allow_tracking', '1', 'yes'),
(826, 'nf_active_promotions', '{\"dashboard\":[{\"id\":\"personal-20\",\"location\":\"dashboard\",\"type\":\"personal\",\"content\":\"<a href=\\\"https:\\/\\/ninjaforms.com\\/personal-membership\\/?utm_source=ninja-forms-plugin&utm_medium=dashboard-banner-ad&utm_campaign=personal-banner-ad&utm_content=personal-20\\\" target=\\\"_blank\\\" class=\\\"nf-remove-promo-styling\\\"><img src=\\\"http:\\/\\/localhost\\/programas\\/wp-content\\/plugins\\/ninja-forms\\/assets\\/img\\/promotions\\/dashboard-banner-personal-20.png\\\"><\\/a>\",\"script\":\"\"},{\"id\":\"personal-50\",\"location\":\"dashboard\",\"type\":\"personal\",\"content\":\"<a href=\\\"https:\\/\\/ninjaforms.com\\/personal-membership\\/?utm_source=ninja-forms-plugin&utm_medium=dashboard-banner-ad&utm_campaign=personal-banner-ad&utm_content=personal-50\\\" target=\\\"_blank\\\" class=\\\"nf-remove-promo-styling\\\"><img src=\\\"http:\\/\\/localhost\\/programas\\/wp-content\\/plugins\\/ninja-forms\\/assets\\/img\\/promotions\\/dashboard-banner-personal-50.png\\\"><\\/a>\",\"script\":\"\"},{\"id\":\"sendwp-banner\",\"location\":\"dashboard\",\"content\":\"<span aria-label=\\\"SendWP. Getting WordPress email into an inbox shouldn\'t be that hard! Never miss another receipt, form submission, or any WordPress email ever again.\\\" style=\\\"cursor:pointer;width:800px;height:83px;border-radius:4px;-moz-border-radius:4px;-webkit-border-radius:4px;background-image:url(\'http:\\/\\/localhost\\/programas\\/wp-content\\/plugins\\/ninja-forms\\/assets\\/img\\/promotions\\/dashboard-banner-sendwp.png\');display:block;\\\"><\\/span>\",\"type\":\"sendwp\",\"script\":\"\\n      setTimeout(function(){ \\/* Wait for services to init. *\\/\\n        var data = {\\n          width: 450,\\n          closeOnClick: \'body\',\\n          closeOnEsc: true,\\n          content: \'<p><h2>Frustrated that WordPress email isn\\u2019t being received?<\\/h2><p>Form submission notifications not hitting your inbox? Some of your visitors getting form feedback via email, others not? By default, your WordPress site sends emails through your web host, which can be unreliable. Your host has spent lots of time and money optimizing to serve your pages, not send your emails.<\\/p><h3>Sign up for SendWP today, and never deal with WordPress email issues again!<\\/h3><p>SendWP is an email service that removes your web host from the email equation.<\\/p><ul style=&quot;list-style-type:initial;margin-left: 20px;&quot;><li>Sends email through dedicated email service, increasing email deliverability.<\\/li><li>Keeps form submission emails out of spam by using a trusted email provider.<\\/li><li>On a shared web host? Don\\u2019t worry about emails being rejected because of blocked IP addresses.<\\/li><li><strong>$1 for the first month. $9\\/month after. Cancel anytime!<\\/strong><\\/li><\\/ul><\\/p><br \\/>\',\\n          btnPrimary: {\\n            text: \'Sign me up!\',\\n            callback: function() {\\n              var spinner = document.createElement(\'span\');\\n              spinner.classList.add(\'dashicons\', \'dashicons-update\', \'dashicons-update-spin\');\\n              var w = this.offsetWidth;\\n              this.innerHTML = spinner.outerHTML;\\n              this.style.width = w+\'px\';\\n              ninja_forms_sendwp_remote_install();\\n            }\\n          },\\n          btnSecondary: {\\n            text: \'Cancel\',\\n            callback: function() {\\n              sendwpModal.toggleModal(false);\\n            }\\n          }\\n        }\\n        var sendwpModal = new NinjaModal(data);\\n      }, 500);\\n    \"}]}', 'no'),
(829, 'ninja_forms_optin_reported', '1', 'yes'),
(836, 'nf_sub_expiration', 'a:0:{}', 'yes'),
(839, 'nf_form_tel_sent', 'true', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(838, 'ninja_forms_addons_feed', '[{\"title\":\"Conditional Logic\",\"image\":\"assets\\/img\\/add-ons\\/conditional-logic.png\",\"content\":\"Build smart, dynamic, interactive WordPress forms that tailor themselves to what a user needs as they fill out the form.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/conditional-logic\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Conditional+Logic\",\"plugin\":\"ninja-forms-conditionals\\/conditionals.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/conditional-logic\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Conditional+Logic+Docs\",\"version\":\"3.0.26\",\"categories\":[{\"name\":\"Look &amp; Feel\",\"slug\":\"look-feel\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Form Function and Design\",\"slug\":\"form-function-design\"}]},{\"title\":\"Multi-Part Forms\",\"image\":\"assets\\/img\\/add-ons\\/multi-part-forms.png\",\"content\":\"Easily break long forms into multiple pages for a huge user experience upgrade!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/multi-part-forms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Multi-Part+Forms\",\"plugin\":\"ninja-forms-multi-part\\/multi-part.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/multi-part-forms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Multi-Part+Forms+Docs\",\"version\":\"3.0.26\",\"categories\":[{\"name\":\"Look &amp; Feel\",\"slug\":\"look-feel\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Form Function and Design\",\"slug\":\"form-function-design\"}]},{\"title\":\"Front-End Posting\",\"image\":\"assets\\/img\\/add-ons\\/front-end-posting.png\",\"content\":\"Allow users to create their own public posts and pages without ever seeing the Dashboard!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/post-creation\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Front-End+Posting\",\"plugin\":\"ninja-forms-post-creation\\/ninja-forms-post-creation.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/post-creation\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Front-End+Posting+Docs\",\"version\":\"3.0.9\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"User Management\",\"slug\":\"user-management\"}]},{\"title\":\"File Uploads\",\"image\":\"assets\\/img\\/add-ons\\/file-uploads.png\",\"content\":\"Allow users to upload files and save them to your server, media library, or even Dropbox, Amazon S3, and Google Drive!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/file-uploads\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=File+Uploads\",\"plugin\":\"ninja-forms-uploads\\/file-uploads.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/file-uploads\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=File+Uploads+Docs\",\"version\":\"3.1.2\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Form Function and Design\",\"slug\":\"form-function-design\"}]},{\"title\":\"Layout and Styles\",\"image\":\"assets\\/img\\/add-ons\\/layout-styles.png\",\"content\":\"Easily create multi-column form layouts and beautifully styled WordPress forms without mastering CSS.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/layouts-and-styles\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Layout+and+Styles\",\"plugin\":\"ninja-forms-style\\/ninja-forms-style.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/layouts-and-styles\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Layout+and+Styles+Docs\",\"version\":\"3.0.28\",\"categories\":[{\"name\":\"Look &amp; Feel\",\"slug\":\"look-feel\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Form Function and Design\",\"slug\":\"form-function-design\"}]},{\"title\":\"MailChimp\",\"image\":\"assets\\/img\\/add-ons\\/mail-chimp.png\",\"content\":\"Integrate MailChimp and WordPress with easy-to-create, fully customizable signup forms!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/mailchimp\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=MailChimp\",\"plugin\":\"ninja-forms-mail-chimp\\/ninja-forms-mail-chimp.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/mailchimp\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=MailChimp+Docs\",\"version\":\"3.1.11\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Campaign Monitor\",\"image\":\"assets\\/img\\/add-ons\\/campaign-monitor.png\",\"content\":\"Connect your website directly with Campaign Monitor using any of your WordPress forms!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/campaign-monitor\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Campaign+Monitor\",\"plugin\":\"ninja-forms-campaign-monitor\\/ninja-forms-campaign-monitor.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/campaign-monitor\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Campaign+Monitor+Docs\",\"version\":\"3.0.5\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"User Analytics\",\"image\":\"assets\\/img\\/add-ons\\/user-analytics.png\",\"content\":\"Collect valuable user data on form submission without the hassle of integrating with other services!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/user-analytics\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Analytics\",\"plugin\":\"ninja-forms-user-analytics\\/ninja-forms-user-analytics.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/user-analytics\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Analytics+Docs\",\"version\":\"3.0.0\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"User Management\",\"slug\":\"user-management\"}]},{\"title\":\"Constant Contact\",\"image\":\"assets\\/img\\/add-ons\\/constant-contact.png\",\"content\":\"Turn any WordPress form into a beautiful, fully customizable Constant Contact signup form in minutes!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/constant-contact\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Constant+Contact\",\"plugin\":\"ninja-forms-constant-contact\\/ninja-forms-constant-contact.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/constant-contact\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Constant+Contact+Docs\",\"version\":\"3.0.4\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"AWeber\",\"image\":\"assets\\/img\\/add-ons\\/aweber.png\",\"content\":\"Integrate AWeber and WordPress for fully automated email marketing in minutes!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/aweber\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=AWeber\",\"plugin\":\"ninja-forms-aweber\\/ninja-forms-aweber.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/aweber\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=AWeber+Docs\",\"version\":\"3.1.1\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"PayPal Express\",\"image\":\"assets\\/img\\/add-ons\\/paypal-express.png\",\"content\":\"Connect WordPress with PayPal Express & start collecting payments with your WordPress forms!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/paypal-express\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PayPal+Express\",\"plugin\":\"ninja-forms-paypal-express\\/ninja-forms-paypal-express.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/paypal-express\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PayPal+Express+Docs\",\"version\":\"3.0.15\",\"categories\":[{\"name\":\"Payment Gateways\",\"slug\":\"payment-gateways\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"MailPoet\",\"image\":\"assets\\/img\\/add-ons\\/mailpoet.png\",\"content\":\"Supercharge your MailPoet newsletter campaigns with easy to integrate and fully customizable WordPress signup forms!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/mailpoet\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=MailPoet\",\"plugin\":\"ninja-forms-mailpoet\\/nf-mailpoet.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/mailpoet\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=MailPoet+Docs\",\"version\":\"3.0.0\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Zoho CRM\",\"image\":\"assets\\/img\\/add-ons\\/zoho-crm.png\",\"content\":\"Sell smarter, better, and faster with total integration between Zoho CRM and WordPress\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/zoho-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zoho+CRM\",\"plugin\":\"ninja-forms-zoho-crm\\/ninja-forms-zoho-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/zoho-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zoho+CRM+Docs\",\"version\":\"3.4\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Capsule CRM\",\"image\":\"assets\\/img\\/add-ons\\/capsule-crm.png\",\"content\":\"Save time to focus on sales with direct, flawless integration with your Capsule CRM account\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/capsule-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Capsule+CRM\",\"plugin\":\"ninja-forms-capsule-crm\\/ninja-forms-capsule-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/capsule-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Capsule+CRM+Docs\",\"version\":\"3.4.0\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Stripe\",\"image\":\"assets\\/img\\/add-ons\\/stripe.png\",\"content\":\"Accept credit cards payments securely and efficiently from your WordPress forms\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/stripe\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Stripe\",\"plugin\":\"ninja-forms-stripe\\/ninja-forms-stripe.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/stripe\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Stripe+Docs\",\"version\":\"3.1.3\",\"categories\":[{\"name\":\"Payment Gateways\",\"slug\":\"payment-gateways\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Insightly CRM\",\"image\":\"assets\\/img\\/add-ons\\/insightly-crm.png\",\"content\":\"Connect your WordPress forms and Insightly CRM to build better customer relationships and accelerate sales\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/insightly-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Insightly+CRM\",\"plugin\":\"ninja-forms-insightly-crm\\/ninja-forms-insightly-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/insightly-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Insightly+CRM+Docs\",\"version\":\"3.2.0\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"PDF Form Submission\",\"image\":\"assets\\/img\\/add-ons\\/pdf-form-submission.png\",\"content\":\"Easily create standardized PDF copies of any form submission to export or email\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/pdf\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PDF+Form+Submission\",\"plugin\":\"ninja-forms-pdf-submissions\\/nf-pdf-submissions.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/pdf\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PDF+Form+Submission+Docs\",\"version\":\"3.0.5\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"File Management\",\"slug\":\"file-management\"}]},{\"title\":\"Trello\",\"image\":\"assets\\/img\\/add-ons\\/trello.png\",\"content\":\"Create Trello cards from your Ninja Forms submissions.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/trello\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Trello\",\"plugin\":\"ninja-forms-trello\\/ninja-forms-trello.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/trello\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Trello+Docs\",\"version\":\"3.0.3\",\"categories\":[{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Notification and Workflow\",\"slug\":\"notification-workflow\"}]},{\"title\":\"Elavon\",\"image\":\"assets\\/img\\/add-ons\\/elavon.png\",\"content\":\"Connect WordPress to Elavon to collect payments from any of your WordPress forms. Pass payment, customer, and invoice info from any field securely.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/elavon\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Elavon\",\"plugin\":\"ninja-forms-elavon-payment-gateway\\/ninja-forms-elavon-payment-gateway.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/elavon\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Elavon+Docs\",\"version\":\"3.1.0\",\"categories\":[{\"name\":\"Payment Gateways\",\"slug\":\"payment-gateways\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Zapier\",\"image\":\"assets\\/img\\/add-ons\\/zapier.png\",\"content\":\"Don\'t see an add-on integration for a service you love? Don\'t worry! Connect WordPress to more than 1,500 different services through Zapier, no code required!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/zapier\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zapier\",\"plugin\":\"ninja-forms-zapier\\/ninja-forms-zapier.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/zapier\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zapier+Docs\",\"version\":\"3.0.8\",\"categories\":[{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"File Management\",\"slug\":\"file-management\"},{\"name\":\"Notification and Workflow\",\"slug\":\"notification-workflow\"},{\"name\":\"Custom Integrations\",\"slug\":\"custom-integrations\"}]},{\"title\":\"Salesforce CRM\",\"image\":\"assets\\/img\\/add-ons\\/salesforce-crm.png\",\"content\":\"Easily map any form field to any Salesforce Object or Field. A better connection to your customers begins with a better WordPress form builder!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/salesforce-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Salesforce+CRM\",\"plugin\":\"ninja-forms-salesforce-crm\\/ninja-forms-salesforce-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/salesforce-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Salesforce+CRM+Docs\",\"version\":\"3.2.0\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Slack\",\"image\":\"assets\\/img\\/add-ons\\/slack.png\",\"content\":\"Get realtime Slack notifications in the workspace and channel of your choice with any new WordPress form submission. @Mention any team member!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/slack\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Slack\",\"plugin\":\"ninja-forms-slack\\/ninja-forms-slack.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/slack\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Slack+Docs\",\"version\":\"3.0.3\",\"categories\":[{\"name\":\"Notifications\",\"slug\":\"notifications\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Notification and Workflow\",\"slug\":\"notification-workflow\"}]},{\"title\":\"CleverReach\",\"image\":\"assets\\/img\\/add-ons\\/cleverreach.png\",\"content\":\"Grow the reach of your email marketing with better CleverReach signup forms. Tailor your forms to your audience with this easy to set up integration!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/cleverreach\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=CleverReach\",\"plugin\":\"ninja-forms-cleverreach\\/ninja-forms-cleverreach.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/cleverreach\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=CleverReach+Docs\",\"version\":\"3.1.3\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Webhooks\",\"image\":\"assets\\/img\\/add-ons\\/webhooks.png\",\"content\":\"Can\'t find a WordPress integration for the service you love? Send WordPress forms data to any external URL using a simple GET or POST request!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/webhooks\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Webhooks\",\"plugin\":\"ninja-forms-webhooks\\/ninja-forms-webhooks.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/webhooks\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Webhooks+Docs\",\"version\":\"3.0.5\",\"categories\":[{\"name\":\"Notifications\",\"slug\":\"notifications\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Custom Integrations\",\"slug\":\"custom-integrations\"}]},{\"title\":\"Excel Export\",\"image\":\"assets\\/img\\/add-ons\\/excel-export.png\",\"content\":\"Export any form\'s submissions as a Microsoft Excel spreadsheet. Choose a date range, the fields you want to include, and export to Excel! \",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/excel-export\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Excel+Export\",\"plugin\":\"ninja-forms-excel-export\\/ninja-forms-excel-export.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/excel-export\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Excel+Export+Docs\",\"version\":\"3.3.1\",\"categories\":[{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"File Management\",\"slug\":\"file-management\"}]},{\"title\":\"WebMerge\",\"image\":\"assets\\/img\\/add-ons\\/webmerge.png\",\"content\":\"Create specifically formatted templates from an uploaded PDF or Word document, then auto-fill them from any WordPress form submission!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/webmerge\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=WebMerge\",\"plugin\":\"ninja-forms-webmerge\\/ninja-forms-webmerge.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/webmerge\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=WebMerge+Docs\",\"version\":\"3.0.3\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"File Management\",\"slug\":\"file-management\"}]},{\"title\":\"Help Scout\",\"image\":\"assets\\/img\\/add-ons\\/help-scout.png\",\"content\":\"Offering great support is hard. Tailor your WordPress forms to match your customers\' needs with this Help Scout integration for WordPress.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/help-scout\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Help+Scout\",\"plugin\":null,\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/help-scout\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Help+Scout+Docs\",\"version\":\"3.0.0\",\"categories\":[{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"User Management\",\"slug\":\"user-management\"}]},{\"title\":\"Emma\",\"image\":\"assets\\/img\\/add-ons\\/emma.png\",\"content\":\"Take your email marketing further with handcrafted, easy to build signup forms that connect directly into your Emma account! \",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/emma\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Emma\",\"plugin\":\"ninja-forms-emma\\/ninja-forms-emma.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/emma\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Emma+Docs\",\"version\":\"3.0.4\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"ClickSend SMS\",\"image\":\"assets\\/img\\/add-ons\\/clicksend-sms.png\",\"content\":\"Get instant SMS notifications with every new WordPress form submission. Respond to leads faster and make more personal connections!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/clicksend-sms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ClickSend+SMS\",\"plugin\":\"ninja-forms-clicksend\\/ninja-forms-clicksend.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/clicksend-sms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ClickSend+SMS+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Notification and Workflow\",\"slug\":\"notification-workflow\"}]},{\"title\":\"Twilio SMS\",\"image\":\"assets\\/img\\/add-ons\\/twilio-sms.png\",\"content\":\"Get instant SMS notifications with every new WordPress form submission. Respond to leads faster and make more personal connections!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/twilio\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Twilio+SMS\",\"plugin\":\"ninja-forms-twilio\\/ninja-forms-twilio.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/twilio\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Twilio+SMS+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Notification and Workflow\",\"slug\":\"notification-workflow\"}]},{\"title\":\"Recurly\",\"image\":\"assets\\/img\\/add-ons\\/recurly.png\",\"content\":\"Subscription plans a part of your business model? Let your users subscribe from any WordPress form & make management easier with Recurly!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/recurly\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Recurly\",\"plugin\":\"ninja-forms-recurly\\/ninja-forms-recurly.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/recurly\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Recurly+Docs\",\"version\":\"3.0.4\",\"categories\":[{\"name\":\"Payment Gateways\",\"slug\":\"payment-gateways\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"User Management\",\"image\":\"assets\\/img\\/add-ons\\/user-management.png\",\"content\":\"Allow your users to register, login, and manage their own profiles on your website. Customizable template forms for each, or design your own!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/user-management\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Management\",\"plugin\":\"ninja-forms-user-management\\/ninja-forms-user-management.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/user-management\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Management+Docs\",\"version\":\"3.0.12\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"User Management\",\"slug\":\"user-management\"}]},{\"title\":\"Save Progress\",\"image\":\"assets\\/img\\/add-ons\\/save-progress.png\",\"content\":\"Let your users save their work and reload it all when they have time to return. Don\'t lose out on valuable submissions for longer forms!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/save-progress\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Save+Progress\",\"plugin\":\"ninja-forms-save-progress\\/ninja-forms-save-progress.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/save-progress\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Save+Progress+Docs\",\"version\":\"3.0.23\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Form Function and Design\",\"slug\":\"form-function-design\"}]},{\"title\":\"EmailOctopus\",\"image\":\"assets\\/img\\/add-ons\\/emailoctopus.png\",\"content\":\"Pair WordPress\' best drag and drop form builder with your EmailOctopus account for incredibly effective signup forms. Easy, complete integration.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/emailoctopus\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=EmailOctopus\",\"plugin\":\"ninja-forms-emailoctopus\\/ninja-forms-emailoctopus.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/emailoctopus\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=EmailOctopus+Docs\",\"version\":\"3.0.0\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"PipelineDeals CRM\",\"image\":\"assets\\/img\\/add-ons\\/pipelinedeals-crm.png\",\"content\":\"Complete, effortless integration with PipelineDeals CRM. Increase the flow of leads into your sales pipeline with upgraded lead generation forms!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/pipelinedeals-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PipelineDeals+CRM\",\"plugin\":\"ninja-forms-zoho-crm\\/zoho-integration.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/pipelinedeals-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PipelineDeals+CRM+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Highrise CRM\",\"image\":\"assets\\/img\\/add-ons\\/highrise-crm.png\",\"content\":\"Get more out of the functional simplicity of Highrise CRM with forms that can be designed from the ground up to maximize conversion. \",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/highrise-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Highrise+CRM\",\"plugin\":\"ninja-forms-highrise-crm\\/ninja-forms-highrise-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/highrise-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Highrise+CRM+Docs\",\"version\":\"3.0.0\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"ConvertKit\",\"image\":\"assets\\/img\\/add-ons\\/convertkit.png\",\"content\":\"Connect WordPress to your ConvertKit account with completely customizable opt-in forms. Watch your audience & sales grow like never before!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/convertkit\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ConvertKit\",\"plugin\":\"ninja-forms-convertkit\\/ninja-forms-convertkit.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/convertkit\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ConvertKit+Docs\",\"version\":\"3.0.2\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"OnePageCRM\",\"image\":\"assets\\/img\\/add-ons\\/onepage-crm.png\",\"content\":\"Integrate WordPress with OnePage CRM seamlessly through highly customizable WordPress forms. Make better conversions <em>your<\\/em> Next Action!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/onepage-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=OnePageCRM\",\"plugin\":\"ninja-forms-onepage-crm\\/ninja-forms-onepage-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/onepage-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=OnePageCRM+Docs\",\"version\":\"3.0.0\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Active Campaign\",\"image\":\"assets\\/img\\/add-ons\\/active-campaign.png\",\"content\":\"Design custom forms that link perfectly to your Active Campaign account for the ultimate in marketing automation. Better leads begin here!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/activecampaign\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Active+Campaign\",\"plugin\":\"ninja-forms-active-campaign\\/ninja-forms-active-campaign.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/activecampaign\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Active+Campaign+Docs\",\"version\":\"3.0.4\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]}]', 'no'),
(841, 'nf_email_send_count', '0', 'yes'),
(842, 'nf_email_with_attachment_count', '0', 'yes'),
(843, 'nf_email_to_count', '0', 'yes'),
(844, 'nf_email_to_max', '0', 'yes'),
(845, 'nf_email_cc_count', '0', 'yes'),
(846, 'nf_email_cc_max', '0', 'yes'),
(847, 'nf_email_bcc_count', '0', 'yes'),
(848, 'nf_email_bcc_max', '0', 'yes'),
(849, 'nf_email_recipient_max', '0', 'yes'),
(850, 'nf_email_attachment_count', '0', 'yes'),
(851, 'nf_email_attachment_filesize_count', '0', 'yes'),
(852, 'nf_email_attachment_filesize_max', '0', 'yes'),
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
(6, 1, '_edit_lock', '1572793364:1'),
(9, 7, '_edit_lock', '1572582207:1'),
(13, 10, '_edit_lock', '1571800799:1'),
(751, 105, '_edit_lock', '1572568593:1'),
(14, 7, '_edit_last', '1'),
(20, 14, '_edit_lock', '1572405285:1'),
(17, 12, '_edit_lock', '1572807210:1'),
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
(49, 21, '_edit_lock', '1572696450:1'),
(50, 23, '_edit_lock', '1572805472:1'),
(57, 23, '_edit_last', '1'),
(83, 37, '_edit_last', '1'),
(62, 14, '_edit_last', '1'),
(84, 37, '_edit_lock', '1572704045:1'),
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
(347, 12, 'miniatura_do_episodio', '142'),
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
(362, 7, 'miniatura_do_episodio', '153'),
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
(462, 12, 'indicacacao_de_episodio', 'T01 - E01'),
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
(512, 83, '_edit_lock', '1572578443:1'),
(520, 83, '_edit_last', '1'),
(515, 83, '_thumbnail_id', '53'),
(523, 83, 'tipo_da_midia', 'video'),
(524, 83, '_tipo_da_midia', 'field_5db452001d0f1'),
(525, 83, 'icone_do_episodio', '59'),
(526, 83, '_icone_do_episodio', 'field_5db5040e2120d'),
(527, 83, 'miniatura_do_episodio', '20'),
(528, 83, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(529, 83, 'indicacacao_de_episodio', 'T01 E01'),
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
(844, 119, '_edit_last', '1'),
(740, 102, '_tipo_da_midia', 'field_5db452001d0f1'),
(741, 102, 'icone_do_episodio', '59'),
(742, 102, '_icone_do_episodio', 'field_5db5040e2120d'),
(743, 102, 'miniatura_do_episodio', '65'),
(744, 102, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(745, 102, 'indicacacao_de_episodio', 'TP01 - EP04'),
(746, 102, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(747, 103, '_edit_lock', '1572802822:1'),
(752, 108, '_edit_lock', '1572578408:1'),
(750, 103, '_thumbnail_id', '206'),
(755, 108, '_thumbnail_id', '53'),
(758, 108, '_edit_last', '1'),
(783, 111, '_edit_last', '1'),
(761, 108, 'tipo_da_midia', 'video'),
(762, 108, '_tipo_da_midia', 'field_5db452001d0f1'),
(763, 108, 'icone_do_episodio', '59'),
(764, 108, '_icone_do_episodio', 'field_5db5040e2120d'),
(765, 108, 'miniatura_do_episodio', '20'),
(766, 108, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(767, 108, 'indicacacao_de_episodio', 'T01 E03'),
(768, 108, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(769, 110, 'tipo_da_midia', 'video'),
(770, 110, '_tipo_da_midia', 'field_5db452001d0f1'),
(771, 110, 'icone_do_episodio', '59'),
(772, 110, '_icone_do_episodio', 'field_5db5040e2120d'),
(773, 110, 'miniatura_do_episodio', '20'),
(774, 110, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(775, 110, 'indicacacao_de_episodio', 'T01 E03'),
(776, 110, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(777, 111, '_edit_lock', '1572578359:1'),
(806, 115, 'tipo_da_midia', 'video'),
(780, 111, '_thumbnail_id', '53'),
(786, 111, 'tipo_da_midia', 'video'),
(787, 111, '_tipo_da_midia', 'field_5db452001d0f1'),
(788, 111, 'icone_do_episodio', '59'),
(789, 111, '_icone_do_episodio', 'field_5db5040e2120d'),
(790, 111, 'miniatura_do_episodio', '20'),
(791, 111, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(792, 111, 'indicacacao_de_episodio', 'T01 E03'),
(793, 111, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(794, 114, 'tipo_da_midia', 'video'),
(795, 114, '_tipo_da_midia', 'field_5db452001d0f1'),
(796, 114, 'icone_do_episodio', '59'),
(797, 114, '_icone_do_episodio', 'field_5db5040e2120d'),
(798, 114, 'miniatura_do_episodio', '20'),
(799, 114, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(800, 114, 'indicacacao_de_episodio', 'T01 E03'),
(801, 114, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(807, 115, '_tipo_da_midia', 'field_5db452001d0f1'),
(808, 115, 'icone_do_episodio', '59'),
(809, 115, '_icone_do_episodio', 'field_5db5040e2120d'),
(810, 115, 'miniatura_do_episodio', '20'),
(811, 115, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(812, 115, 'indicacacao_de_episodio', 'T01 E03'),
(813, 115, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(818, 116, 'tipo_da_midia', 'video'),
(830, 118, 'tipo_da_midia', 'video'),
(819, 116, '_tipo_da_midia', 'field_5db452001d0f1'),
(820, 116, 'icone_do_episodio', '59'),
(821, 116, '_icone_do_episodio', 'field_5db5040e2120d'),
(822, 116, 'miniatura_do_episodio', '20'),
(823, 116, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(824, 116, 'indicacacao_de_episodio', 'T01 E03'),
(825, 116, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(869, 122, '_edit_last', '1'),
(831, 118, '_tipo_da_midia', 'field_5db452001d0f1'),
(832, 118, 'icone_do_episodio', '59'),
(833, 118, '_icone_do_episodio', 'field_5db5040e2120d'),
(834, 118, 'miniatura_do_episodio', '20'),
(835, 118, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(836, 118, 'indicacacao_de_episodio', 'T01 E01'),
(837, 118, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(838, 119, '_edit_lock', '1572578422:1'),
(894, 126, '_edit_last', '1'),
(841, 119, '_thumbnail_id', '53'),
(847, 119, 'tipo_da_midia', 'video'),
(848, 119, '_tipo_da_midia', 'field_5db452001d0f1'),
(849, 119, 'icone_do_episodio', '59'),
(850, 119, '_icone_do_episodio', 'field_5db5040e2120d'),
(851, 119, 'miniatura_do_episodio', '20'),
(852, 119, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(853, 119, 'indicacacao_de_episodio', 'T01 E04'),
(854, 119, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(855, 121, 'tipo_da_midia', 'video'),
(856, 121, '_tipo_da_midia', 'field_5db452001d0f1'),
(857, 121, 'icone_do_episodio', '59'),
(858, 121, '_icone_do_episodio', 'field_5db5040e2120d'),
(859, 121, 'miniatura_do_episodio', '20'),
(860, 121, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(861, 121, 'indicacacao_de_episodio', 'T01 E04'),
(862, 121, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(863, 122, '_edit_lock', '1572789928:1'),
(872, 122, 'tipo_da_midia', 'video'),
(961, 134, 'tipo_da_midia', 'video'),
(866, 122, '_thumbnail_id', '168'),
(873, 122, '_tipo_da_midia', 'field_5db452001d0f1'),
(874, 122, 'icone_do_episodio', '59'),
(875, 122, '_icone_do_episodio', 'field_5db5040e2120d'),
(876, 122, 'miniatura_do_episodio', '169'),
(877, 122, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(878, 122, 'indicacacao_de_episodio', 'T01 E05'),
(879, 122, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(880, 125, 'tipo_da_midia', 'video'),
(881, 125, '_tipo_da_midia', 'field_5db452001d0f1'),
(882, 125, 'icone_do_episodio', '59'),
(883, 125, '_icone_do_episodio', 'field_5db5040e2120d'),
(884, 125, 'miniatura_do_episodio', '20'),
(885, 125, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(886, 125, 'indicacacao_de_episodio', 'T01 E05'),
(887, 125, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(888, 126, '_edit_lock', '1572580733:1'),
(917, 129, 'tipo_da_midia', 'video'),
(891, 126, '_thumbnail_id', '53'),
(897, 126, 'tipo_da_midia', 'video'),
(898, 126, '_tipo_da_midia', 'field_5db452001d0f1'),
(899, 126, 'icone_do_episodio', '59'),
(900, 126, '_icone_do_episodio', 'field_5db5040e2120d'),
(901, 126, 'miniatura_do_episodio', '65'),
(902, 126, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(903, 126, 'indicacacao_de_episodio', 'T1 E02'),
(904, 126, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(905, 128, 'tipo_da_midia', 'video'),
(906, 128, '_tipo_da_midia', 'field_5db452001d0f1'),
(907, 128, 'icone_do_episodio', '59'),
(908, 128, '_icone_do_episodio', 'field_5db5040e2120d'),
(909, 128, 'miniatura_do_episodio', '65'),
(910, 128, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(911, 128, 'indicacacao_de_episodio', ''),
(912, 128, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(958, 134, '_edit_last', '1'),
(918, 129, '_tipo_da_midia', 'field_5db452001d0f1'),
(919, 129, 'icone_do_episodio', '59'),
(920, 129, '_icone_do_episodio', 'field_5db5040e2120d'),
(921, 129, 'miniatura_do_episodio', '65'),
(922, 129, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(923, 129, 'indicacacao_de_episodio', 'T1 E02'),
(924, 129, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(925, 130, '_edit_lock', '1572580867:1'),
(933, 130, '_edit_last', '1'),
(928, 130, '_thumbnail_id', '53'),
(936, 130, 'tipo_da_midia', 'video'),
(937, 130, '_tipo_da_midia', 'field_5db452001d0f1'),
(938, 130, 'icone_do_episodio', '59'),
(939, 130, '_icone_do_episodio', 'field_5db5040e2120d'),
(940, 130, 'miniatura_do_episodio', '65'),
(941, 130, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(942, 130, 'indicacacao_de_episodio', 'T01 E03'),
(943, 130, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(944, 133, 'tipo_da_midia', 'video'),
(945, 133, '_tipo_da_midia', 'field_5db452001d0f1'),
(946, 133, 'icone_do_episodio', '59'),
(947, 133, '_icone_do_episodio', 'field_5db5040e2120d'),
(948, 133, 'miniatura_do_episodio', '65'),
(949, 133, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(950, 133, 'indicacacao_de_episodio', 'T01 E03'),
(951, 133, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(952, 134, '_edit_lock', '1572581429:1'),
(983, 137, '_edit_last', '1'),
(955, 134, '_thumbnail_id', '53'),
(962, 134, '_tipo_da_midia', 'field_5db452001d0f1'),
(963, 134, 'icone_do_episodio', '59'),
(964, 134, '_icone_do_episodio', 'field_5db5040e2120d'),
(965, 134, 'miniatura_do_episodio', '65'),
(966, 134, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(967, 134, 'indicacacao_de_episodio', 'T01 E04'),
(968, 134, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(969, 136, 'tipo_da_midia', 'video'),
(970, 136, '_tipo_da_midia', 'field_5db452001d0f1'),
(971, 136, 'icone_do_episodio', '59'),
(972, 136, '_icone_do_episodio', 'field_5db5040e2120d'),
(973, 136, 'miniatura_do_episodio', '65'),
(974, 136, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(975, 136, 'indicacacao_de_episodio', 'T01 E04'),
(976, 136, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(977, 137, '_edit_lock', '1572581595:1'),
(1008, 142, '_wp_attached_file', '2019/11/Sem-Título-7.png'),
(980, 137, '_thumbnail_id', '53'),
(986, 137, 'tipo_da_midia', 'video'),
(987, 137, '_tipo_da_midia', 'field_5db452001d0f1'),
(988, 137, 'icone_do_episodio', '59'),
(989, 137, '_icone_do_episodio', 'field_5db5040e2120d'),
(990, 137, 'miniatura_do_episodio', '65'),
(991, 137, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(992, 137, 'indicacacao_de_episodio', 'T01 E05'),
(993, 137, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(994, 139, 'tipo_da_midia', 'video'),
(995, 139, '_tipo_da_midia', 'field_5db452001d0f1'),
(996, 139, 'icone_do_episodio', '59'),
(997, 139, '_icone_do_episodio', 'field_5db5040e2120d'),
(998, 139, 'miniatura_do_episodio', '65'),
(999, 139, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(1000, 139, 'indicacacao_de_episodio', 'T01 E05'),
(1001, 139, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(1002, 140, '_edit_lock', '1572581846:1'),
(1009, 142, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:796;s:4:\"file\";s:25:\"2019/11/Sem-Título-7.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Sem-Título-7-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"Sem-Título-7-188x300.png\";s:5:\"width\";i:188;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1005, 140, '_thumbnail_id', '53'),
(1012, 140, '_edit_last', '1'),
(1049, 145, '_edit_last', '1'),
(1015, 140, 'tipo_da_midia', 'video'),
(1016, 140, '_tipo_da_midia', 'field_5db452001d0f1'),
(1017, 140, 'icone_do_episodio', '59'),
(1018, 140, '_icone_do_episodio', 'field_5db5040e2120d'),
(1019, 140, 'miniatura_do_episodio', '142'),
(1020, 140, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(1021, 140, 'indicacacao_de_episodio', 'T01 E02'),
(1022, 140, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(1023, 143, 'tipo_da_midia', 'video'),
(1024, 143, '_tipo_da_midia', 'field_5db452001d0f1'),
(1025, 143, 'icone_do_episodio', '59'),
(1026, 143, '_icone_do_episodio', 'field_5db5040e2120d'),
(1027, 143, 'miniatura_do_episodio', '142'),
(1028, 143, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(1029, 143, 'indicacacao_de_episodio', 'T01 E02'),
(1030, 143, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(1035, 144, 'tipo_da_midia', 'video'),
(1074, 148, '_edit_last', '1'),
(1036, 144, '_tipo_da_midia', 'field_5db452001d0f1'),
(1037, 144, 'icone_do_episodio', '59'),
(1038, 144, '_icone_do_episodio', 'field_5db5040e2120d'),
(1039, 144, 'miniatura_do_episodio', '142'),
(1040, 144, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(1041, 144, 'indicacacao_de_episodio', 'T01 - E01'),
(1042, 144, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(1043, 145, '_edit_lock', '1572581958:1'),
(1046, 145, '_thumbnail_id', '53'),
(1052, 145, 'tipo_da_midia', 'video'),
(1053, 145, '_tipo_da_midia', 'field_5db452001d0f1'),
(1054, 145, 'icone_do_episodio', '59'),
(1055, 145, '_icone_do_episodio', 'field_5db5040e2120d'),
(1056, 145, 'miniatura_do_episodio', '142'),
(1057, 145, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(1058, 145, 'indicacacao_de_episodio', 'T01 E03'),
(1059, 145, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(1060, 147, 'tipo_da_midia', 'video'),
(1061, 147, '_tipo_da_midia', 'field_5db452001d0f1'),
(1062, 147, 'icone_do_episodio', '59'),
(1063, 147, '_icone_do_episodio', 'field_5db5040e2120d'),
(1064, 147, 'miniatura_do_episodio', '142'),
(1065, 147, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(1066, 147, 'indicacacao_de_episodio', 'T01 E03'),
(1067, 147, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(1068, 148, '_edit_lock', '1572790006:1'),
(1077, 148, 'tipo_da_midia', 'video'),
(1071, 148, '_thumbnail_id', '53'),
(1078, 148, '_tipo_da_midia', 'field_5db452001d0f1'),
(1079, 148, 'icone_do_episodio', '59'),
(1080, 148, '_icone_do_episodio', 'field_5db5040e2120d'),
(1081, 148, 'miniatura_do_episodio', '142'),
(1082, 148, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(1083, 148, 'indicacacao_de_episodio', 'T01 E04'),
(1084, 148, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(1085, 150, 'tipo_da_midia', 'video'),
(1086, 150, '_tipo_da_midia', 'field_5db452001d0f1'),
(1087, 150, 'icone_do_episodio', '59'),
(1088, 150, '_icone_do_episodio', 'field_5db5040e2120d'),
(1089, 150, 'miniatura_do_episodio', '142'),
(1090, 150, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(1091, 150, 'indicacacao_de_episodio', 'T01 E04'),
(1092, 150, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(1093, 151, '_edit_lock', '1572582198:1'),
(1098, 153, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:795;s:4:\"file\";s:25:\"2019/11/Sem-Título-8.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Sem-Título-8-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"Sem-Título-8-189x300.png\";s:5:\"width\";i:189;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1097, 153, '_wp_attached_file', '2019/11/Sem-Título-8.png'),
(1096, 151, '_thumbnail_id', '53'),
(1101, 151, '_edit_last', '1'),
(1330, 181, '_edit_lock', '1572794531:1'),
(1104, 151, 'tipo_da_midia', 'video'),
(1105, 151, '_tipo_da_midia', 'field_5db452001d0f1'),
(1106, 151, 'icone_do_episodio', '59'),
(1107, 151, '_icone_do_episodio', 'field_5db5040e2120d'),
(1108, 151, 'miniatura_do_episodio', '153'),
(1109, 151, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(1110, 151, 'indicacacao_de_episodio', 'T01 E02'),
(1111, 151, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(1112, 154, 'tipo_da_midia', 'video'),
(1113, 154, '_tipo_da_midia', 'field_5db452001d0f1'),
(1114, 154, 'icone_do_episodio', '59'),
(1115, 154, '_icone_do_episodio', 'field_5db5040e2120d'),
(1116, 154, 'miniatura_do_episodio', '153'),
(1117, 154, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(1118, 154, 'indicacacao_de_episodio', 'T01 E02'),
(1119, 154, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(1124, 155, 'tipo_da_midia', 'video'),
(1125, 155, '_tipo_da_midia', 'field_5db452001d0f1'),
(1126, 155, 'icone_do_episodio', '59'),
(1127, 155, '_icone_do_episodio', 'field_5db5040e2120d'),
(1128, 155, 'miniatura_do_episodio', '153'),
(1129, 155, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(1130, 155, 'indicacacao_de_episodio', 'TP07 - EP09'),
(1131, 155, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(1136, 158, 'tipo_da_midia', 'video'),
(1137, 158, '_tipo_da_midia', 'field_5db452001d0f1'),
(1138, 158, 'icone_do_episodio', '59'),
(1139, 158, '_icone_do_episodio', 'field_5db5040e2120d'),
(1140, 158, 'miniatura_do_episodio', '20'),
(1141, 158, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(1142, 158, 'indicacacao_de_episodio', 'T01 E05'),
(1143, 158, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(1152, 122, 'informacoes_de_autoria', 'Vídeo de Borel FabLab, Recife, 2016'),
(1153, 122, '_informacoes_de_autoria', 'field_5dbd892827ba5'),
(1154, 122, '_', 'field_5dbd893b27ba6'),
(1155, 161, 'tipo_da_midia', 'video'),
(1156, 161, '_tipo_da_midia', 'field_5db452001d0f1'),
(1157, 161, 'icone_do_episodio', '59'),
(1158, 161, '_icone_do_episodio', 'field_5db5040e2120d'),
(1159, 161, 'miniatura_do_episodio', '20'),
(1160, 161, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(1161, 161, 'indicacacao_de_episodio', 'T01 E05'),
(1162, 161, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(1163, 161, 'informacoes_de_autoria', 'Vídeo de Borel FabLab, Recife, 2016'),
(1164, 161, '_informacoes_de_autoria', 'field_5dbd892827ba5'),
(1169, 122, 'informacoes_de_tempo', '2019 18 2h 19min - PORTUGUÊS - DIY'),
(1170, 122, '_informacoes_de_tempo', 'field_5dbd8a259de21'),
(1171, 163, 'tipo_da_midia', 'video'),
(1172, 163, '_tipo_da_midia', 'field_5db452001d0f1'),
(1173, 163, 'icone_do_episodio', '59'),
(1174, 163, '_icone_do_episodio', 'field_5db5040e2120d'),
(1175, 163, 'miniatura_do_episodio', '20'),
(1176, 163, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(1177, 163, 'indicacacao_de_episodio', 'T01 E05'),
(1178, 163, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(1179, 163, 'informacoes_de_autoria', 'Vídeo de Borel FabLab, Recife, 2016'),
(1180, 163, '_informacoes_de_autoria', 'field_5dbd892827ba5'),
(1181, 163, 'informacoes_de_tempo', '2019 18 2h 19min - PORTUGUÊS - DIY'),
(1182, 163, '_informacoes_de_tempo', 'field_5dbd8a259de21'),
(1187, 122, 'trailer_do_episodio', 'wikggYythyE'),
(1188, 122, '_trailer_do_episodio', 'field_5dbd8ecd779f7'),
(1189, 165, 'tipo_da_midia', 'video'),
(1190, 165, '_tipo_da_midia', 'field_5db452001d0f1'),
(1191, 165, 'icone_do_episodio', '59'),
(1192, 165, '_icone_do_episodio', 'field_5db5040e2120d'),
(1193, 165, 'miniatura_do_episodio', '20'),
(1194, 165, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(1195, 165, 'indicacacao_de_episodio', 'T01 E05'),
(1196, 165, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(1197, 165, 'informacoes_de_autoria', 'Vídeo de Borel FabLab, Recife, 2016'),
(1198, 165, '_informacoes_de_autoria', 'field_5dbd892827ba5'),
(1199, 165, 'informacoes_de_tempo', '2019 18 2h 19min - PORTUGUÊS - DIY'),
(1200, 165, '_informacoes_de_tempo', 'field_5dbd8a259de21'),
(1201, 165, 'trailer_do_episodio', 'wikggYythyE'),
(1202, 165, '_trailer_do_episodio', 'field_5dbd8ecd779f7'),
(1207, 122, 'video_do_episodio', 'g43XbKNDJy8'),
(1208, 122, '_video_do_episodio', 'field_5dbd8f9e4f6a0'),
(1209, 167, 'tipo_da_midia', 'video'),
(1210, 167, '_tipo_da_midia', 'field_5db452001d0f1'),
(1211, 167, 'icone_do_episodio', '59'),
(1212, 167, '_icone_do_episodio', 'field_5db5040e2120d'),
(1213, 167, 'miniatura_do_episodio', '20'),
(1214, 167, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(1215, 167, 'indicacacao_de_episodio', 'T01 E05'),
(1216, 167, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(1217, 167, 'informacoes_de_autoria', 'Vídeo de Borel FabLab, Recife, 2016'),
(1218, 167, '_informacoes_de_autoria', 'field_5dbd892827ba5'),
(1219, 167, 'informacoes_de_tempo', '2019 18 2h 19min - PORTUGUÊS - DIY'),
(1220, 167, '_informacoes_de_tempo', 'field_5dbd8a259de21'),
(1221, 167, 'trailer_do_episodio', 'wikggYythyE'),
(1222, 167, '_trailer_do_episodio', 'field_5dbd8ecd779f7'),
(1223, 167, 'video_do_episodio', 'g43XbKNDJy8'),
(1224, 167, '_video_do_episodio', 'field_5dbd8f9e4f6a0'),
(1225, 168, '_wp_attached_file', '2019/11/temporaria.jpg'),
(1226, 168, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1964;s:6:\"height\";i:1030;s:4:\"file\";s:22:\"2019/11/temporaria.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"temporaria-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"temporaria-300x157.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"temporaria-768x403.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:403;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"temporaria-1024x537.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:537;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1231, 169, '_wp_attached_file', '2019/11/Sem-Título-1.jpg'),
(1232, 169, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:645;s:6:\"height\";i:1030;s:4:\"file\";s:25:\"2019/11/Sem-Título-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Sem-Título-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"Sem-Título-1-188x300.jpg\";s:5:\"width\";i:188;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"Sem-Título-1-641x1024.jpg\";s:5:\"width\";i:641;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1237, 170, 'tipo_da_midia', 'video'),
(1290, 179, 'tipo_da_midia', 'video'),
(1238, 170, '_tipo_da_midia', 'field_5db452001d0f1'),
(1239, 170, 'icone_do_episodio', '59'),
(1240, 170, '_icone_do_episodio', 'field_5db5040e2120d'),
(1241, 170, 'miniatura_do_episodio', '169'),
(1242, 170, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(1243, 170, 'indicacacao_de_episodio', 'T01 E05'),
(1244, 170, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(1245, 170, 'informacoes_de_autoria', 'Vídeo de Borel FabLab, Recife, 2016'),
(1246, 170, '_informacoes_de_autoria', 'field_5dbd892827ba5'),
(1247, 170, 'informacoes_de_tempo', '2019 18 2h 19min - PORTUGUÊS - DIY'),
(1248, 170, '_informacoes_de_tempo', 'field_5dbd8a259de21'),
(1249, 170, 'trailer_do_episodio', 'wikggYythyE'),
(1250, 170, '_trailer_do_episodio', 'field_5dbd8ecd779f7'),
(1251, 170, 'video_do_episodio', 'g43XbKNDJy8'),
(1252, 170, '_video_do_episodio', 'field_5dbd8f9e4f6a0'),
(1253, 3, '_edit_lock', '1572718678:1'),
(1254, 172, '_edit_lock', '1572719865:1'),
(1255, 173, '_edit_lock', '1572785606:1'),
(1256, 176, '_wp_attached_file', '2019/11/sobre.jpg'),
(1257, 176, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1084;s:6:\"height\";i:387;s:4:\"file\";s:17:\"2019/11/sobre.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"sobre-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"sobre-300x107.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:107;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"sobre-768x274.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:274;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"sobre-1024x366.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:366;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1262, 1, 'informacoes_de_autoria', 'Professor Marcus Camember'),
(1263, 1, '_informacoes_de_autoria', 'field_5dbd892827ba5'),
(1264, 1, 'informacoes_de_tempo', '01:20 | 2019'),
(1265, 1, '_informacoes_de_tempo', 'field_5dbd8a259de21'),
(1266, 1, 'trailer_do_episodio', ''),
(1267, 1, '_trailer_do_episodio', 'field_5dbd8ecd779f7'),
(1268, 1, 'video_do_episodio', '3945757'),
(1269, 1, '_video_do_episodio', 'field_5dbd8f9e4f6a0'),
(1270, 178, 'tipo_da_midia', 'video'),
(1271, 178, '_tipo_da_midia', 'field_5db452001d0f1'),
(1272, 178, 'icone_do_episodio', '59'),
(1273, 178, '_icone_do_episodio', 'field_5db5040e2120d'),
(1274, 178, 'miniatura_do_episodio', '65'),
(1275, 178, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(1276, 178, 'indicacacao_de_episodio', 'TP08 - EP09'),
(1277, 178, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(1278, 178, 'informacoes_de_autoria', ''),
(1279, 178, '_informacoes_de_autoria', 'field_5dbd892827ba5'),
(1280, 178, 'informacoes_de_tempo', ''),
(1281, 178, '_informacoes_de_tempo', 'field_5dbd8a259de21'),
(1282, 178, 'trailer_do_episodio', ''),
(1283, 178, '_trailer_do_episodio', 'field_5dbd8ecd779f7'),
(1284, 178, 'video_do_episodio', '3945757'),
(1285, 178, '_video_do_episodio', 'field_5dbd8f9e4f6a0'),
(1310, 180, 'tipo_da_midia', 'video'),
(1291, 179, '_tipo_da_midia', 'field_5db452001d0f1'),
(1292, 179, 'icone_do_episodio', '59'),
(1293, 179, '_icone_do_episodio', 'field_5db5040e2120d'),
(1294, 179, 'miniatura_do_episodio', '65'),
(1295, 179, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(1296, 179, 'indicacacao_de_episodio', 'TP08 - EP09'),
(1297, 179, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(1298, 179, 'informacoes_de_autoria', 'Professor Marcus Camember'),
(1299, 179, '_informacoes_de_autoria', 'field_5dbd892827ba5'),
(1300, 179, 'informacoes_de_tempo', ''),
(1301, 179, '_informacoes_de_tempo', 'field_5dbd8a259de21'),
(1302, 179, 'trailer_do_episodio', ''),
(1303, 179, '_trailer_do_episodio', 'field_5dbd8ecd779f7'),
(1304, 179, 'video_do_episodio', '3945757'),
(1305, 179, '_video_do_episodio', 'field_5dbd8f9e4f6a0'),
(1311, 180, '_tipo_da_midia', 'field_5db452001d0f1'),
(1312, 180, 'icone_do_episodio', '59'),
(1313, 180, '_icone_do_episodio', 'field_5db5040e2120d'),
(1314, 180, 'miniatura_do_episodio', '65'),
(1315, 180, '_miniatura_do_episodio', 'field_5db7707fbe4f5'),
(1316, 180, 'indicacacao_de_episodio', 'TP08 - EP09'),
(1317, 180, '_indicacacao_de_episodio', 'field_5db788e919b7f'),
(1318, 180, 'informacoes_de_autoria', 'Professor Marcus Camember'),
(1319, 180, '_informacoes_de_autoria', 'field_5dbd892827ba5'),
(1320, 180, 'informacoes_de_tempo', '01:20 | 2019'),
(1321, 180, '_informacoes_de_tempo', 'field_5dbd8a259de21'),
(1322, 180, 'trailer_do_episodio', ''),
(1323, 180, '_trailer_do_episodio', 'field_5dbd8ecd779f7'),
(1324, 180, 'video_do_episodio', '3945757'),
(1325, 180, '_video_do_episodio', 'field_5dbd8f9e4f6a0'),
(1331, 183, '_edit_lock', '1572802331:1');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1341, 189, '_edit_lock', '1572803459:1'),
(1334, 183, '_thumbnail_id', '204'),
(1345, 191, '_wp_attached_file', '2019/11/sobre-1.jpg'),
(1344, 189, '_thumbnail_id', '224'),
(1346, 191, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1084;s:6:\"height\";i:387;s:4:\"file\";s:19:\"2019/11/sobre-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"sobre-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"sobre-1-300x107.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:107;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"sobre-1-768x274.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:274;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"sobre-1-1024x366.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:366;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"miniatura-listagem\";a:4:{s:4:\"file\";s:19:\"sobre-1-300x107.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:107;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1349, 192, '_wp_attached_file', '2019/11/sobre-2.jpg'),
(1350, 192, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1084;s:6:\"height\";i:387;s:4:\"file\";s:19:\"2019/11/sobre-2.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"sobre-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"sobre-2-300x107.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:107;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"sobre-2-768x274.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:274;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"sobre-2-1024x366.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:366;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"miniatura-listagem\";a:4:{s:4:\"file\";s:19:\"sobre-2-300x157.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1353, 193, '_edit_lock', '1572802310:1'),
(1354, 194, '_wp_attached_file', '2019/11/temporaria-1.jpg'),
(1355, 194, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1964;s:6:\"height\";i:1030;s:4:\"file\";s:24:\"2019/11/temporaria-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"temporaria-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"temporaria-1-300x157.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"temporaria-1-768x403.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:403;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"temporaria-1-1024x537.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:537;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"miniatura-listagem\";a:4:{s:4:\"file\";s:24:\"temporaria-1-300x157.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1368, 200, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1964;s:6:\"height\";i:1030;s:4:\"file\";s:24:\"2019/11/temporaria-2.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"temporaria-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"temporaria-2-300x157.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"temporaria-2-768x403.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:403;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"temporaria-2-1024x537.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:537;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"miniatura-listagem\";a:4:{s:4:\"file\";s:24:\"temporaria-2-550x228.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:228;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1358, 193, '_thumbnail_id', '203'),
(1367, 200, '_wp_attached_file', '2019/11/temporaria-2.jpg'),
(1371, 201, '_wp_attached_file', '2019/11/sobre-3.jpg'),
(1372, 201, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1084;s:6:\"height\";i:387;s:4:\"file\";s:19:\"2019/11/sobre-3.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"sobre-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"sobre-3-300x107.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:107;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"sobre-3-768x274.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:274;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"sobre-3-1024x366.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:366;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"miniatura-listagem\";a:4:{s:4:\"file\";s:19:\"sobre-3-550x228.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:228;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1375, 202, '_wp_attached_file', '2019/11/floresta-cpt.jpg'),
(1376, 202, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:637;s:6:\"height\";i:375;s:4:\"file\";s:24:\"2019/11/floresta-cpt.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"floresta-cpt-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"floresta-cpt-300x177.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:177;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"miniatura-listagem\";a:4:{s:4:\"file\";s:24:\"floresta-cpt-550x228.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:228;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"11\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"PENTAX K10D\";s:7:\"caption\";s:41:\"Sunlight in the green forest, spring time\";s:17:\"created_timestamp\";s:10:\"1251811947\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"24\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:3:\"0.8\";s:5:\"title\";s:6:\"Forest\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:18:{i:0;s:6:\"Forest\";i:1;s:12:\"Lush Foliage\";i:2;s:4:\"Tree\";i:3;s:4:\"Leaf\";i:4;s:7:\"Morning\";i:5;s:6:\"Hiking\";i:6;s:13:\"Boreal Forest\";i:7;s:8:\"Outdoors\";i:8;s:6:\"Nature\";i:9;s:15:\"Lumber Industry\";i:10;s:15:\"Wilderness Area\";i:11;s:5:\"Plant\";i:12;s:5:\"Woods\";i:13;s:10:\"Tree Trunk\";i:14;s:4:\"Root\";i:15;s:6:\"Growth\";i:16;s:14:\"Nature Reserve\";i:17;s:7:\"Fantasy\";}}}'),
(1379, 203, '_wp_attached_file', '2019/11/floresta-cpt-1.jpg'),
(1380, 203, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:637;s:6:\"height\";i:375;s:4:\"file\";s:26:\"2019/11/floresta-cpt-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"floresta-cpt-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"floresta-cpt-1-300x177.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:177;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"miniatura-listagem\";a:4:{s:4:\"file\";s:26:\"floresta-cpt-1-550x325.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:325;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"11\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"PENTAX K10D\";s:7:\"caption\";s:41:\"Sunlight in the green forest, spring time\";s:17:\"created_timestamp\";s:10:\"1251811947\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"24\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:3:\"0.8\";s:5:\"title\";s:6:\"Forest\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:18:{i:0;s:6:\"Forest\";i:1;s:12:\"Lush Foliage\";i:2;s:4:\"Tree\";i:3;s:4:\"Leaf\";i:4;s:7:\"Morning\";i:5;s:6:\"Hiking\";i:6;s:13:\"Boreal Forest\";i:7;s:8:\"Outdoors\";i:8;s:6:\"Nature\";i:9;s:15:\"Lumber Industry\";i:10;s:15:\"Wilderness Area\";i:11;s:5:\"Plant\";i:12;s:5:\"Woods\";i:13;s:10:\"Tree Trunk\";i:14;s:4:\"Root\";i:15;s:6:\"Growth\";i:16;s:14:\"Nature Reserve\";i:17;s:7:\"Fantasy\";}}}'),
(1383, 204, '_wp_attached_file', '2019/11/temporaria-3.jpg'),
(1384, 204, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1964;s:6:\"height\";i:1030;s:4:\"file\";s:24:\"2019/11/temporaria-3.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"temporaria-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"temporaria-3-300x157.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"temporaria-3-768x403.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:403;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"temporaria-3-1024x537.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:537;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"miniatura-listagem\";a:4:{s:4:\"file\";s:24:\"temporaria-3-550x325.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:325;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1387, 206, '_wp_attached_file', '2019/10/sobre.jpg'),
(1388, 206, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1084;s:6:\"height\";i:387;s:4:\"file\";s:17:\"2019/10/sobre.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"sobre-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"sobre-300x107.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:107;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"sobre-768x274.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:274;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"sobre-1024x366.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:366;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"miniatura-listagem\";a:4:{s:4:\"file\";s:17:\"sobre-550x325.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:325;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1391, 208, '_edit_lock', '1572802920:1'),
(1392, 209, '_wp_attached_file', '2019/11/3132955553_ee923da025_b.jpg'),
(1393, 209, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:768;s:4:\"file\";s:35:\"2019/11/3132955553_ee923da025_b.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"3132955553_ee923da025_b-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"3132955553_ee923da025_b-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"3132955553_ee923da025_b-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"3132955553_ee923da025_b-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"miniatura-listagem\";a:4:{s:4:\"file\";s:35:\"3132955553_ee923da025_b-550x325.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:325;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:21:\"Canon PowerShot S5 IS\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1229852384\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"8.3\";s:3:\"iso\";s:3:\"250\";s:13:\"shutter_speed\";s:4:\"0.04\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1396, 208, '_thumbnail_id', '209'),
(1399, 212, '_edit_lock', '1572803012:1'),
(1400, 213, '_wp_attached_file', '2019/11/banco-banquinho-banqueta-madeira-artesanato-rustico-pequeno-bancomadeira.jpg'),
(1401, 213, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:84:\"2019/11/banco-banquinho-banqueta-madeira-artesanato-rustico-pequeno-bancomadeira.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:84:\"banco-banquinho-banqueta-madeira-artesanato-rustico-pequeno-bancomadeira-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:84:\"banco-banquinho-banqueta-madeira-artesanato-rustico-pequeno-bancomadeira-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:84:\"banco-banquinho-banqueta-madeira-artesanato-rustico-pequeno-bancomadeira-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:86:\"banco-banquinho-banqueta-madeira-artesanato-rustico-pequeno-bancomadeira-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"miniatura-listagem\";a:4:{s:4:\"file\";s:84:\"banco-banquinho-banqueta-madeira-artesanato-rustico-pequeno-bancomadeira-550x325.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:325;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1405, 215, '_edit_lock', '1572803218:1'),
(1404, 212, '_thumbnail_id', '213'),
(1406, 216, '_wp_attached_file', '2019/11/basto-de-madeira-para-artesanato-e-baners-075m-16mm-58-D_NQ_NP_978163-MLB25716377790_062017-F.jpg'),
(1407, 216, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:900;s:4:\"file\";s:105:\"2019/11/basto-de-madeira-para-artesanato-e-baners-075m-16mm-58-D_NQ_NP_978163-MLB25716377790_062017-F.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:105:\"basto-de-madeira-para-artesanato-e-baners-075m-16mm-58-D_NQ_NP_978163-MLB25716377790_062017-F-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:105:\"basto-de-madeira-para-artesanato-e-baners-075m-16mm-58-D_NQ_NP_978163-MLB25716377790_062017-F-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:105:\"basto-de-madeira-para-artesanato-e-baners-075m-16mm-58-D_NQ_NP_978163-MLB25716377790_062017-F-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:106:\"basto-de-madeira-para-artesanato-e-baners-075m-16mm-58-D_NQ_NP_978163-MLB25716377790_062017-F-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"miniatura-listagem\";a:4:{s:4:\"file\";s:105:\"basto-de-madeira-para-artesanato-e-baners-075m-16mm-58-D_NQ_NP_978163-MLB25716377790_062017-F-550x325.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:325;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1411, 218, '_edit_lock', '1572803158:1'),
(1410, 215, '_thumbnail_id', '216'),
(1412, 219, '_wp_attached_file', '2019/11/HTB12IMJGXXXXXaIXXXXq6xXFXXXL.jpg'),
(1413, 219, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:656;s:4:\"file\";s:41:\"2019/11/HTB12IMJGXXXXXaIXXXXq6xXFXXXL.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"HTB12IMJGXXXXXaIXXXXq6xXFXXXL-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"HTB12IMJGXXXXXaIXXXXq6xXFXXXL-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"HTB12IMJGXXXXXaIXXXXq6xXFXXXL-768x504.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:504;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"miniatura-listagem\";a:4:{s:4:\"file\";s:41:\"HTB12IMJGXXXXXaIXXXXq6xXFXXXL-550x325.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:325;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1417, 221, '_edit_lock', '1572803253:1'),
(1416, 218, '_thumbnail_id', '219'),
(1418, 222, '_wp_attached_file', '2019/11/relogio_de_madeira_artesanal_feito_em_marchetaria_birch_100306_1_20190112085248.jpg'),
(1419, 222, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:91:\"2019/11/relogio_de_madeira_artesanal_feito_em_marchetaria_birch_100306_1_20190112085248.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:91:\"relogio_de_madeira_artesanal_feito_em_marchetaria_birch_100306_1_20190112085248-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:91:\"relogio_de_madeira_artesanal_feito_em_marchetaria_birch_100306_1_20190112085248-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:91:\"relogio_de_madeira_artesanal_feito_em_marchetaria_birch_100306_1_20190112085248-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"miniatura-listagem\";a:4:{s:4:\"file\";s:91:\"relogio_de_madeira_artesanal_feito_em_marchetaria_birch_100306_1_20190112085248-550x325.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:325;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1423, 224, '_wp_attached_file', '2019/11/sobre-4.jpg'),
(1422, 221, '_thumbnail_id', '222'),
(1424, 224, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1084;s:6:\"height\";i:387;s:4:\"file\";s:19:\"2019/11/sobre-4.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"sobre-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"sobre-4-300x107.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:107;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"sobre-4-768x274.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:274;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"sobre-4-1024x366.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:366;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"miniatura-listagem\";a:4:{s:4:\"file\";s:19:\"sobre-4-550x325.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:325;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1427, 225, '_edit_lock', '1572803545:1'),
(1428, 226, '_wp_attached_file', '2019/11/maxresdefault.jpg'),
(1429, 226, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:25:\"2019/11/maxresdefault.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"maxresdefault-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"maxresdefault-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"maxresdefault-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"maxresdefault-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"miniatura-listagem\";a:4:{s:4:\"file\";s:25:\"maxresdefault-550x325.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:325;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1432, 225, '_thumbnail_id', '226'),
(1435, 229, '_edit_lock', '1572803650:1'),
(1436, 230, '_wp_attached_file', '2019/11/6-bolachas-de-madeira-rustica-artesanato-terrarium-D_NQ_NP_781838-MLB29120857563_012019-F.jpg'),
(1437, 230, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:675;s:4:\"file\";s:101:\"2019/11/6-bolachas-de-madeira-rustica-artesanato-terrarium-D_NQ_NP_781838-MLB29120857563_012019-F.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:101:\"6-bolachas-de-madeira-rustica-artesanato-terrarium-D_NQ_NP_781838-MLB29120857563_012019-F-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:101:\"6-bolachas-de-madeira-rustica-artesanato-terrarium-D_NQ_NP_781838-MLB29120857563_012019-F-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:101:\"6-bolachas-de-madeira-rustica-artesanato-terrarium-D_NQ_NP_781838-MLB29120857563_012019-F-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:102:\"6-bolachas-de-madeira-rustica-artesanato-terrarium-D_NQ_NP_781838-MLB29120857563_012019-F-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"miniatura-listagem\";a:4:{s:4:\"file\";s:101:\"6-bolachas-de-madeira-rustica-artesanato-terrarium-D_NQ_NP_781838-MLB29120857563_012019-F-550x325.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:325;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1440, 229, '_thumbnail_id', '230'),
(1443, 233, '_edit_lock', '1572803741:1'),
(1444, 234, '_wp_attached_file', '2019/11/ilhabela-artesanato-madeira-traineira-255-bx.jpg'),
(1445, 234, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3499;s:6:\"height\";i:2333;s:4:\"file\";s:56:\"2019/11/ilhabela-artesanato-madeira-traineira-255-bx.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:56:\"ilhabela-artesanato-madeira-traineira-255-bx-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:56:\"ilhabela-artesanato-madeira-traineira-255-bx-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:56:\"ilhabela-artesanato-madeira-traineira-255-bx-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:57:\"ilhabela-artesanato-madeira-traineira-255-bx-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"miniatura-listagem\";a:4:{s:4:\"file\";s:56:\"ilhabela-artesanato-madeira-traineira-255-bx-550x325.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:325;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1448, 233, '_thumbnail_id', '234'),
(1454, 239, '_wp_attached_file', '2019/11/elisangela-088.jpg'),
(1453, 238, '_edit_lock', '1572804771:1'),
(1455, 239, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1200;s:4:\"file\";s:26:\"2019/11/elisangela-088.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"elisangela-088-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"elisangela-088-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"elisangela-088-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"elisangela-088-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"miniatura-listagem\";a:4:{s:4:\"file\";s:26:\"elisangela-088-550x325.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:325;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1463, 12, '_encloseme', '1'),
(1458, 238, '_thumbnail_id', '239'),
(1462, 12, '_pingme', '1'),
(1461, 12, '_thumbnail_id', '230'),
(1464, 12, 'informacoes_de_autoria', ''),
(1465, 12, '_informacoes_de_autoria', 'field_5dbd892827ba5'),
(1466, 12, 'informacoes_de_tempo', ''),
(1467, 12, '_informacoes_de_tempo', 'field_5dbd8a259de21'),
(1468, 12, 'trailer_do_episodio', ''),
(1469, 12, '_trailer_do_episodio', 'field_5dbd8ecd779f7'),
(1470, 12, 'video_do_episodio', ''),
(1471, 12, '_video_do_episodio', 'field_5dbd8f9e4f6a0'),
(1472, 144, 'informacoes_de_autoria', ''),
(1473, 144, '_informacoes_de_autoria', 'field_5dbd892827ba5'),
(1474, 144, 'informacoes_de_tempo', ''),
(1475, 144, '_informacoes_de_tempo', 'field_5dbd8a259de21'),
(1476, 144, 'trailer_do_episodio', ''),
(1477, 144, '_trailer_do_episodio', 'field_5dbd8ecd779f7'),
(1478, 144, 'video_do_episodio', ''),
(1479, 144, '_video_do_episodio', 'field_5dbd8f9e4f6a0'),
(1480, 241, '_edit_lock', '1572809634:1'),
(1481, 241, '_edit_last', '1');

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
(1, 1, '2019-10-22 00:06:24', '2019-10-22 03:06:24', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Episódio  vídeo Not ipsum dolore aunte deme', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2019-11-03 12:14:10', '2019-11-03 14:14:10', '', 0, 'http://localhost/programas/?p=1', 0, 'post', '', 1),
(2, 1, '2019-10-22 00:06:24', '2019-10-22 03:06:24', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/programas/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'publish', 'closed', 'open', '', 'pagina-exemplo', '', '', '2019-10-22 00:06:24', '2019-10-22 03:06:24', '', 0, 'http://localhost/programas/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-10-22 00:06:24', '2019-10-22 03:06:24', '<!-- wp:heading -->\n<h2>Quem somos</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>O endereço do nosso site é: http://localhost/programas.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Quais dados pessoais coletamos e porque</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Comentários</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Mídia</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Formulários de contato</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Cookies</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar \"Lembrar-me\", seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Mídia incorporada de outros sites</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Análises</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Com quem partilhamos seus dados</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Por quanto tempo mantemos os seus dados</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Quais os seus direitos sobre seus dados</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Para onde enviamos seus dados</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Suas informações de contato</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Informações adicionais</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Como protegemos seus dados</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Quais são nossos procedimentos contra violação de dados</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>De quais terceiros nós recebemos dados</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Quais tomadas de decisão ou análises de perfil automatizadas fazemos com os dados de usuários</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Requisitos obrigatórios de divulgação para sua categoria profissional</h3>\n<!-- /wp:heading -->', 'Política de privacidade', '', 'publish', 'closed', 'open', '', 'politica-de-privacidade', '', '', '2019-11-02 15:19:07', '2019-11-02 18:19:07', '', 0, 'http://localhost/programas/?page_id=3', 0, 'page', '', 0),
(91, 1, '2019-10-29 21:24:21', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-10-29 21:24:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/programas/?p=91', 0, 'post', '', 0),
(5, 1, '2019-10-23 00:13:00', '2019-10-23 03:13:00', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-10-23 00:13:00', '2019-10-23 03:13:00', '', 1, 'http://localhost/programas/?p=5', 0, 'revision', '', 0),
(6, 1, '2019-10-23 00:17:59', '2019-10-23 03:17:59', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Not ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-10-23 00:17:59', '2019-10-23 03:17:59', '', 1, 'http://localhost/programas/?p=6', 0, 'revision', '', 0),
(7, 1, '2019-10-23 00:19:00', '2019-10-23 03:19:00', '', 'Episódio  vídeo Not 2 ipsum dolore aunte demecnitus dostre', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'publish', 'open', 'open', '', 'not-2-ipsum-dolore-aunte-demecnitus-dostre', '', '', '2019-11-01 01:23:46', '2019-11-01 04:23:46', '', 0, 'http://localhost/programas/?p=7', 0, 'post', '', 0),
(8, 1, '2019-10-23 00:19:00', '2019-10-23 03:19:00', '', 'Not 2 ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-10-23 00:19:00', '2019-10-23 03:19:00', '', 7, 'http://localhost/programas/?p=8', 0, 'revision', '', 0),
(105, 1, '2019-10-31 21:38:54', '2019-11-01 00:38:54', '<!-- wp:paragraph -->\n<p>Teste</p>\n<!-- /wp:paragraph -->', 'Programas', '', 'publish', 'closed', 'closed', '', 'programas', '', '', '2019-10-31 21:38:54', '2019-11-01 00:38:54', '', 0, 'http://localhost/programas/?page_id=105', 0, 'page', '', 0),
(10, 1, '2019-10-23 00:22:11', '2019-10-23 03:22:11', '', 'Página principal', '', 'publish', 'closed', 'closed', '', 'pagina-principal', '', '', '2019-10-23 00:22:11', '2019-10-23 03:22:11', '', 0, 'http://localhost/programas/?page_id=10', 0, 'page', '', 0),
(11, 1, '2019-10-23 00:22:11', '2019-10-23 03:22:11', '', 'Página principal', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-10-23 00:22:11', '2019-10-23 03:22:11', '', 10, 'http://localhost/programas/?p=11', 0, 'revision', '', 0),
(12, 1, '2019-10-23 00:25:47', '2019-10-23 03:25:47', '', 'Episódio  vídeo Not 3 ipsum dolore aunte demecnitus dostre', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'publish', 'open', 'open', '', 'not-3-ipsum-dolore-aunte-demecnitus-dostre', '', '', '2019-11-03 16:27:18', '2019-11-03 18:27:18', '', 0, 'http://localhost/programas/?p=12', 0, 'post', '', 0),
(13, 1, '2019-10-23 00:25:47', '2019-10-23 03:25:47', '', 'Not 3 ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-10-23 00:25:47', '2019-10-23 03:25:47', '', 12, 'http://localhost/programas/?p=13', 0, 'revision', '', 0),
(14, 1, '2019-10-23 00:27:12', '2019-10-23 03:27:12', '', 'Episódio  vídeo Not 4 ipsum dolore aunte demecnitus dostre', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'publish', 'open', 'open', '', 'not-4-ipsum-dolore-aunte-demecnitus-dostre', '', '', '2019-10-29 21:48:10', '2019-10-30 00:48:10', '', 0, 'http://localhost/programas/?p=14', 0, 'post', '', 0),
(15, 1, '2019-10-23 00:27:12', '2019-10-23 03:27:12', '', 'Not 4 ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-10-23 00:27:12', '2019-10-23 03:27:12', '', 14, 'http://localhost/programas/?p=15', 0, 'revision', '', 0),
(16, 1, '2019-10-23 00:28:04', '2019-10-23 03:28:04', '', 'Episódio  vídeo Not 5 ipsum dolore aunte deme cnitus', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'publish', 'open', 'open', '', 'not-5-ipsum-dolore-aunte-demecnitus-dostre', '', '', '2019-10-29 21:48:28', '2019-10-30 00:48:28', '', 0, 'http://localhost/programas/?p=16', 0, 'post', '', 0),
(17, 1, '2019-10-23 00:28:04', '2019-10-23 03:28:04', '', 'Not 5 ipsum dolore aunte demecnitus dostre', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-10-23 00:28:04', '2019-10-23 03:28:04', '', 16, 'http://localhost/programas/?p=17', 0, 'revision', '', 0),
(18, 1, '2019-10-23 00:49:11', '2019-10-23 03:49:11', '', 'salao', '', 'inherit', 'open', 'closed', '', 'salao', '', '', '2019-10-23 00:52:28', '2019-10-23 03:52:28', '', 0, 'http://localhost/programas/wp-content/uploads/2019/10/salao.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2019-10-24 13:53:57', '2019-10-24 16:53:57', '', '4bb73015afcdba9e587c6fe5454aad46a1c28ebe3592b726c6b1749ccf632da2', '', 'inherit', 'open', 'closed', '', '4bb73015afcdba9e587c6fe5454aad46a1c28ebe3592b726c6b1749ccf632da2', '', '', '2019-10-24 13:53:57', '2019-10-24 16:53:57', '', 0, 'http://localhost/programas/wp-content/uploads/2019/10/4bb73015afcdba9e587c6fe5454aad46a1c28ebe3592b726c6b1749ccf632da2.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2019-10-24 22:19:52', '2019-10-25 01:19:52', '', 'Sem-Título-1', '', 'inherit', 'open', 'closed', '', 'sem-titulo-1', '', '', '2019-10-29 00:01:41', '2019-10-29 03:01:41', '', 83, 'http://localhost/programas/wp-content/uploads/2019/10/Sem-Título-1.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2019-10-25 00:17:05', '2019-10-25 03:17:05', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"category\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Categoria', 'categoria', 'publish', 'closed', 'closed', '', 'group_5db269135c2f6', '', '', '2019-11-02 09:09:50', '2019-11-02 12:09:50', '', 0, 'http://localhost/programas/?post_type=acf-field-group&#038;p=21', 0, 'acf-field-group', '', 0),
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
(37, 1, '2019-10-26 11:05:06', '2019-10-26 14:05:06', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"category:programa\";}}}s:8:\"position\";s:4:\"side\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"field\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Opções do Episódio', 'opcoes-do-episodio', 'publish', 'closed', 'closed', '', 'group_5db451fa6ec2f', '', '', '2019-11-02 11:16:21', '2019-11-02 14:16:21', '', 0, 'http://localhost/programas/?post_type=acf-field-group&#038;p=37', 1, 'acf-field-group', '', 0),
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
(83, 1, '2019-10-28 23:56:58', '2019-10-29 02:56:58', '', 'Episódio 1', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'publish', 'open', 'open', '', 'post-sem-popular', '', '', '2019-11-01 00:20:43', '2019-11-01 03:20:43', '', 0, 'http://localhost/programas/?p=83', 0, 'post', '', 0),
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
(103, 1, '2019-10-29 23:30:43', '2019-10-30 02:30:43', '<!-- wp:paragraph -->\n<p> Sed ut perspiciatis unde om nis iste natus error sit voluptatem accus antium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&nbsp; </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Sed ut perspiciatis unde omnis iste natus error sit voluptatem acc usan tium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab il lo inventore veritatis et quasi architecto beatae vitae di cta sunt expli cabo.&nbsp; </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&nbsp; </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&nbsp;\n\n</p>\n<!-- /wp:paragraph -->', 'Título de notícia de teste', 'As asdf asd fasf  asf asd fasdf asdf asdf asdf a As asdf asd fasf  asf asd fasdf', 'publish', 'open', 'open', '', 'titulo-de-noticia-de-teste', '', '', '2019-11-03 15:35:12', '2019-11-03 17:35:12', '', 0, 'http://localhost/programas/?p=103', 0, 'post', '', 0),
(104, 1, '2019-10-29 23:30:43', '2019-10-30 02:30:43', '<!-- wp:paragraph -->\n<p>As asdf asd fasf  asf asd fasdf asdf asdf asdf a As asdf asd fasf  asf asd fasdf asdf asdf asdf a  As asdf asd fasf  asf asd fasdf asdf asdf asdf a  As asdf asd fasf  asf asd fasdf asdf asdf asdf a  As asdf asd fasf  asf asd fasdf asdf asdf asdf a  As asdf asd fasf  asf asd fasdf asdf asdf asdf a  As asdf asd fasf  asf asd fasdf asdf asdf asdf a  As asdf asd fasf  asf asd fasdf asdf asdf asdf a  As asdf asd fasf  asf asd fasdf asdf asdf asdf a  As asdf asd fasf  asf asd fasdf asdf asdf asdf a </p>\n<!-- /wp:paragraph -->', 'Título de notícia de teste', 'As asdf asd fasf  asf asd fasdf asdf asdf asdf a As asdf asd fasf  asf asd fasdf', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2019-10-29 23:30:43', '2019-10-30 02:30:43', '', 103, 'http://localhost/programas/103-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2019-10-31 21:38:54', '2019-11-01 00:38:54', '<!-- wp:paragraph -->\n<p>Teste</p>\n<!-- /wp:paragraph -->', 'Programas', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2019-10-31 21:38:54', '2019-11-01 00:38:54', '', 105, 'http://localhost/programas/105-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2019-10-31 22:24:23', '2019-11-01 01:24:23', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem do topo', 'imagem_do_topo', 'publish', 'closed', 'closed', '', 'field_5dbb8937dcd3a', '', '', '2019-10-31 22:24:23', '2019-11-01 01:24:23', '', 21, 'http://localhost/programas/?post_type=acf-field&p=107', 1, 'acf-field', '', 0),
(108, 1, '2019-11-01 00:04:59', '2019-11-01 03:04:59', '', 'Episodio 2', 'Ut id eros at tortor condimentum faucibus ut at felis', 'publish', 'open', 'open', '', 'episodio-2', '', '', '2019-11-01 00:20:08', '2019-11-01 03:20:08', '', 0, 'http://localhost/programas/?p=108', 0, 'post', '', 0),
(109, 1, '2019-11-01 00:04:59', '2019-11-01 03:04:59', '', 'Episodio 2', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2019-11-01 00:04:59', '2019-11-01 03:04:59', '', 108, 'http://localhost/programas/108-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2019-11-01 00:05:48', '2019-11-01 03:05:48', '', 'Episodio 2', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2019-11-01 00:05:48', '2019-11-01 03:05:48', '', 108, 'http://localhost/programas/108-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2019-11-01 00:16:42', '2019-11-01 03:16:42', '', 'Episódio 3', 'Aqui vai o resumo do post ipsum dolore', 'publish', 'open', 'open', '', 'episodio-3', '', '', '2019-11-01 00:19:18', '2019-11-01 03:19:18', '', 0, 'http://localhost/programas/?p=111', 0, 'post', '', 0),
(112, 1, '2019-11-01 00:16:42', '2019-11-01 03:16:42', '', 'Episódio 3', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2019-11-01 00:16:42', '2019-11-01 03:16:42', '', 111, 'http://localhost/programas/111-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2019-11-01 00:19:17', '2019-11-01 03:19:17', '', 'Episódio 3', 'Aqui vai o resumo do post ipsum dolore', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2019-11-01 00:19:17', '2019-11-01 03:19:17', '', 111, 'http://localhost/programas/111-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2019-11-01 00:19:18', '2019-11-01 03:19:18', '', 'Episódio 3', 'Aqui vai o resumo do post ipsum dolore', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2019-11-01 00:19:18', '2019-11-01 03:19:18', '', 111, 'http://localhost/programas/111-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(115, 1, '2019-11-01 00:19:52', '2019-11-01 03:19:52', '', 'Episodio 2', 'rgba(248, 249, 250, 0.25882352941176473);', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2019-11-01 00:19:52', '2019-11-01 03:19:52', '', 108, 'http://localhost/programas/108-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2019-11-01 00:20:07', '2019-11-01 03:20:07', '', 'Episodio 2', 'Ut id eros at tortor condimentum faucibus ut at felis', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2019-11-01 00:20:07', '2019-11-01 03:20:07', '', 108, 'http://localhost/programas/108-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2019-11-01 00:20:42', '2019-11-01 03:20:42', '', 'Episódio 1', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2019-11-01 00:20:42', '2019-11-01 03:20:42', '', 83, 'http://localhost/programas/83-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2019-11-01 00:20:43', '2019-11-01 03:20:43', '', 'Episódio 1', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2019-11-01 00:20:43', '2019-11-01 03:20:43', '', 83, 'http://localhost/programas/83-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2019-11-01 00:21:41', '2019-11-01 03:21:41', '', 'Episódio 4', '', 'publish', 'open', 'open', '', 'episodio-4', '', '', '2019-11-01 00:22:11', '2019-11-01 03:22:11', '', 0, 'http://localhost/programas/?p=119', 0, 'post', '', 0),
(120, 1, '2019-11-01 00:21:41', '2019-11-01 03:21:41', '', 'Episódio 4', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2019-11-01 00:21:41', '2019-11-01 03:21:41', '', 119, 'http://localhost/programas/119-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2019-11-01 00:22:11', '2019-11-01 03:22:11', '', 'Episódio 4', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2019-11-01 00:22:11', '2019-11-01 03:22:11', '', 119, 'http://localhost/programas/119-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2019-11-01 00:23:13', '2019-11-01 03:23:13', '', 'Entendendo os conceitos básico. Seu primeiro protótipo', 'Ut id eros at tortor condimentum faucibus ut at felis', 'publish', 'open', 'open', '', 'episodio-5', '', '', '2019-11-02 13:37:04', '2019-11-02 16:37:04', '', 0, 'http://localhost/programas/?p=122', 0, 'post', '', 0),
(123, 1, '2019-11-01 00:23:13', '2019-11-01 03:23:13', '', 'Episódio 5', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2019-11-01 00:23:13', '2019-11-01 03:23:13', '', 122, 'http://localhost/programas/122-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2019-11-01 00:23:46', '2019-11-01 03:23:46', '', 'Episódio 5', 'Ut id eros at tortor condimentum faucibus ut at felis', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2019-11-01 00:23:46', '2019-11-01 03:23:46', '', 122, 'http://localhost/programas/122-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2019-11-01 00:23:47', '2019-11-01 03:23:47', '', 'Episódio 5', 'Ut id eros at tortor condimentum faucibus ut at felis', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2019-11-01 00:23:47', '2019-11-01 03:23:47', '', 122, 'http://localhost/programas/122-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2019-11-01 01:00:01', '2019-11-01 04:00:01', '', 'Episodio 2', 'Ur id eros at tonor condimentum faubisticus ut at felis.', 'publish', 'open', 'open', '', 'episodio-2-2', '', '', '2019-11-01 01:00:51', '2019-11-01 04:00:51', '', 0, 'http://localhost/programas/?p=126', 0, 'post', '', 0),
(127, 1, '2019-11-01 01:00:01', '2019-11-01 04:00:01', '', 'Episodio 2', 'Ur id eros at tonor condimentum faubisticus ut at felis.', 'inherit', 'closed', 'closed', '', '126-revision-v1', '', '', '2019-11-01 01:00:01', '2019-11-01 04:00:01', '', 126, 'http://localhost/programas/126-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2019-11-01 01:00:26', '2019-11-01 04:00:26', '', 'Episodio 2', 'Ur id eros at tonor condimentum faubisticus ut at felis.', 'inherit', 'closed', 'closed', '', '126-revision-v1', '', '', '2019-11-01 01:00:26', '2019-11-01 04:00:26', '', 126, 'http://localhost/programas/126-revision-v1/', 0, 'revision', '', 0),
(129, 1, '2019-11-01 01:00:51', '2019-11-01 04:00:51', '', 'Episodio 2', 'Ur id eros at tonor condimentum faubisticus ut at felis.', 'inherit', 'closed', 'closed', '', '126-revision-v1', '', '', '2019-11-01 01:00:51', '2019-11-01 04:00:51', '', 126, 'http://localhost/programas/126-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2019-11-01 01:01:37', '2019-11-01 04:01:37', '', 'Episodio 3', 'Ur id eros at tonor condimentum faubisticus ut at felis.', 'publish', 'open', 'open', '', 'episodio-3-2', '', '', '2019-11-01 01:02:07', '2019-11-01 04:02:07', '', 0, 'http://localhost/programas/?p=130', 0, 'post', '', 0),
(131, 1, '2019-11-01 01:01:37', '2019-11-01 04:01:37', '', 'Episodio 3', '', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2019-11-01 01:01:37', '2019-11-01 04:01:37', '', 130, 'http://localhost/programas/130-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2019-11-01 01:01:45', '2019-11-01 04:01:45', '', 'Episodio 3', 'Ur id eros at tonor condimentum faubisticus ut at felis.', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2019-11-01 01:01:45', '2019-11-01 04:01:45', '', 130, 'http://localhost/programas/130-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2019-11-01 01:02:07', '2019-11-01 04:02:07', '', 'Episodio 3', 'Ur id eros at tonor condimentum faubisticus ut at felis.', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2019-11-01 01:02:07', '2019-11-01 04:02:07', '', 130, 'http://localhost/programas/130-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2019-11-01 01:03:48', '2019-11-01 04:03:48', '', 'Episodio 4', 'Ur id eros at tonor condimentum faubisticus ut at felis.', 'publish', 'open', 'open', '', 'episodio-4-2', '', '', '2019-11-01 01:04:15', '2019-11-01 04:04:15', '', 0, 'http://localhost/programas/?p=134', 0, 'post', '', 0),
(135, 1, '2019-11-01 01:03:48', '2019-11-01 04:03:48', '', 'Episodio 4', 'Ur id eros at tonor condimentum faubisticus ut at felis.', 'inherit', 'closed', 'closed', '', '134-revision-v1', '', '', '2019-11-01 01:03:48', '2019-11-01 04:03:48', '', 134, 'http://localhost/programas/134-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2019-11-01 01:04:15', '2019-11-01 04:04:15', '', 'Episodio 4', 'Ur id eros at tonor condimentum faubisticus ut at felis.', 'inherit', 'closed', 'closed', '', '134-revision-v1', '', '', '2019-11-01 01:04:15', '2019-11-01 04:04:15', '', 134, 'http://localhost/programas/134-revision-v1/', 0, 'revision', '', 0),
(137, 1, '2019-11-01 01:13:15', '2019-11-01 04:13:15', '', 'Episodio 5', 'Ur id eros at tonor condimentum faubisticus ut at felis.', 'publish', 'open', 'open', '', 'episodio-5-2', '', '', '2019-11-01 01:13:51', '2019-11-01 04:13:51', '', 0, 'http://localhost/programas/?p=137', 0, 'post', '', 0),
(138, 1, '2019-11-01 01:13:15', '2019-11-01 04:13:15', '', 'Episodio 5', 'Ur id eros at tonor condimentum faubisticus ut at felis.', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2019-11-01 01:13:15', '2019-11-01 04:13:15', '', 137, 'http://localhost/programas/137-revision-v1/', 0, 'revision', '', 0),
(139, 1, '2019-11-01 01:13:51', '2019-11-01 04:13:51', '', 'Episodio 5', 'Ur id eros at tonor condimentum faubisticus ut at felis.', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2019-11-01 01:13:51', '2019-11-01 04:13:51', '', 137, 'http://localhost/programas/137-revision-v1/', 0, 'revision', '', 0),
(140, 1, '2019-11-01 01:16:24', '2019-11-01 04:16:24', '', 'Episodio 2', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'publish', 'open', 'open', '', 'episodio-2-3', '', '', '2019-11-01 01:17:26', '2019-11-01 04:17:26', '', 0, 'http://localhost/programas/?p=140', 0, 'post', '', 0),
(141, 1, '2019-11-01 01:16:24', '2019-11-01 04:16:24', '', 'Episodio 2', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2019-11-01 01:16:24', '2019-11-01 04:16:24', '', 140, 'http://localhost/programas/140-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2019-11-01 01:17:12', '2019-11-01 04:17:12', '', 'Sem-Título-7', '', 'inherit', 'open', 'closed', '', 'sem-titulo-7', '', '', '2019-11-01 01:17:12', '2019-11-01 04:17:12', '', 140, 'http://localhost/programas/wp-content/uploads/2019/11/Sem-Título-7.png', 0, 'attachment', 'image/png', 0),
(143, 1, '2019-11-01 01:17:26', '2019-11-01 04:17:26', '', 'Episodio 2', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2019-11-01 01:17:26', '2019-11-01 04:17:26', '', 140, 'http://localhost/programas/140-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2019-11-01 01:18:13', '2019-11-01 04:18:13', '', 'Episódio  vídeo Not 3 ipsum dolore aunte demecnitus dostre', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-11-01 01:18:13', '2019-11-01 04:18:13', '', 12, 'http://localhost/programas/12-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2019-11-01 01:18:47', '2019-11-01 04:18:47', '', 'Episodio 3', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'publish', 'open', 'open', '', 'episodio-3-3', '', '', '2019-11-01 01:19:18', '2019-11-01 04:19:18', '', 0, 'http://localhost/programas/?p=145', 0, 'post', '', 0),
(146, 1, '2019-11-01 01:18:47', '2019-11-01 04:18:47', '', 'Episodio 3', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2019-11-01 01:18:47', '2019-11-01 04:18:47', '', 145, 'http://localhost/programas/145-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2019-11-01 01:19:18', '2019-11-01 04:19:18', '', 'Episodio 3', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2019-11-01 01:19:18', '2019-11-01 04:19:18', '', 145, 'http://localhost/programas/145-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2019-11-01 01:19:46', '2019-11-01 04:19:46', '', 'Episódio 04', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'publish', 'open', 'open', '', 'episodio-04', '', '', '2019-11-01 01:20:08', '2019-11-01 04:20:08', '', 0, 'http://localhost/programas/?p=148', 0, 'post', '', 0),
(149, 1, '2019-11-01 01:19:46', '2019-11-01 04:19:46', '', 'Episódio 04', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'inherit', 'closed', 'closed', '', '148-revision-v1', '', '', '2019-11-01 01:19:46', '2019-11-01 04:19:46', '', 148, 'http://localhost/programas/148-revision-v1/', 0, 'revision', '', 0),
(150, 1, '2019-11-01 01:20:08', '2019-11-01 04:20:08', '', 'Episódio 04', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'inherit', 'closed', 'closed', '', '148-revision-v1', '', '', '2019-11-01 01:20:08', '2019-11-01 04:20:08', '', 148, 'http://localhost/programas/148-revision-v1/', 0, 'revision', '', 0),
(151, 1, '2019-11-01 01:22:50', '2019-11-01 04:22:50', '', 'Episodio 2', '', 'publish', 'open', 'open', '', 'episodio-2-4', '', '', '2019-11-01 01:23:18', '2019-11-01 04:23:18', '', 0, 'http://localhost/programas/?p=151', 0, 'post', '', 0),
(152, 1, '2019-11-01 01:22:50', '2019-11-01 04:22:50', '', 'Episodio 2', '', 'inherit', 'closed', 'closed', '', '151-revision-v1', '', '', '2019-11-01 01:22:50', '2019-11-01 04:22:50', '', 151, 'http://localhost/programas/151-revision-v1/', 0, 'revision', '', 0),
(153, 1, '2019-11-01 01:23:04', '2019-11-01 04:23:04', '', 'Sem-Título-8', '', 'inherit', 'open', 'closed', '', 'sem-titulo-8', '', '', '2019-11-01 01:23:04', '2019-11-01 04:23:04', '', 151, 'http://localhost/programas/wp-content/uploads/2019/11/Sem-Título-8.png', 0, 'attachment', 'image/png', 0),
(154, 1, '2019-11-01 01:23:18', '2019-11-01 04:23:18', '', 'Episodio 2', '', 'inherit', 'closed', 'closed', '', '151-revision-v1', '', '', '2019-11-01 01:23:18', '2019-11-01 04:23:18', '', 151, 'http://localhost/programas/151-revision-v1/', 0, 'revision', '', 0),
(155, 1, '2019-11-01 01:23:46', '2019-11-01 04:23:46', '', 'Episódio  vídeo Not 2 ipsum dolore aunte demecnitus dostre', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-11-01 01:23:46', '2019-11-01 04:23:46', '', 7, 'http://localhost/programas/7-revision-v1/', 0, 'revision', '', 0),
(156, 1, '2019-11-02 09:09:50', '2019-11-02 12:09:50', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo do Programa', 'logo_do_programa', 'publish', 'closed', 'closed', '', 'field_5dbd71f3fb7cf', '', '', '2019-11-02 09:09:50', '2019-11-02 12:09:50', '', 21, 'http://localhost/programas/?post_type=acf-field&p=156', 2, 'acf-field', '', 0),
(157, 1, '2019-11-02 10:29:19', '2019-11-02 13:29:19', '<!-- wp:paragraph -->\n<p> </p>\n<!-- /wp:paragraph -->', 'Episódio 04', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'inherit', 'closed', 'closed', '', '148-autosave-v1', '', '', '2019-11-02 10:29:19', '2019-11-02 13:29:19', '', 148, 'http://localhost/programas/148-autosave-v1/', 0, 'revision', '', 0),
(158, 1, '2019-11-02 10:39:31', '2019-11-02 13:39:31', '', 'Entendendo os conceitos básico. Seu primeiro protótipo', 'Ut id eros at tortor condimentum faucibus ut at felis', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2019-11-02 10:39:31', '2019-11-02 13:39:31', '', 122, 'http://localhost/programas/122-revision-v1/', 0, 'revision', '', 0),
(159, 1, '2019-11-02 10:49:35', '2019-11-02 13:49:35', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Informações de autoria', 'informacoes_de_autoria', 'publish', 'closed', 'closed', '', 'field_5dbd892827ba5', '', '', '2019-11-02 10:49:35', '2019-11-02 13:49:35', '', 37, 'http://localhost/programas/?post_type=acf-field&p=159', 4, 'acf-field', '', 0),
(163, 1, '2019-11-02 10:53:25', '2019-11-02 13:53:25', '', 'Entendendo os conceitos básico. Seu primeiro protótipo', 'Ut id eros at tortor condimentum faucibus ut at felis', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2019-11-02 10:53:25', '2019-11-02 13:53:25', '', 122, 'http://localhost/programas/122-revision-v1/', 0, 'revision', '', 0),
(164, 1, '2019-11-02 11:13:27', '2019-11-02 14:13:27', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:47:\"Preencha apenas o código  do veidio no youtube\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'trailer do episodio', 'trailer_do_episodio', 'publish', 'closed', 'closed', '', 'field_5dbd8ecd779f7', '', '', '2019-11-02 11:13:27', '2019-11-02 14:13:27', '', 37, 'http://localhost/programas/?post_type=acf-field&p=164', 6, 'acf-field', '', 0),
(161, 1, '2019-11-02 10:51:13', '2019-11-02 13:51:13', '', 'Entendendo os conceitos básico. Seu primeiro protótipo', 'Ut id eros at tortor condimentum faucibus ut at felis', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2019-11-02 10:51:13', '2019-11-02 13:51:13', '', 122, 'http://localhost/programas/122-revision-v1/', 0, 'revision', '', 0),
(162, 1, '2019-11-02 10:52:45', '2019-11-02 13:52:45', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Informações de tempo', 'informacoes_de_tempo', 'publish', 'closed', 'closed', '', 'field_5dbd8a259de21', '', '', '2019-11-02 10:52:45', '2019-11-02 13:52:45', '', 37, 'http://localhost/programas/?post_type=acf-field&p=162', 5, 'acf-field', '', 0),
(165, 1, '2019-11-02 11:13:52', '2019-11-02 14:13:52', '', 'Entendendo os conceitos básico. Seu primeiro protótipo', 'Ut id eros at tortor condimentum faucibus ut at felis', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2019-11-02 11:13:52', '2019-11-02 14:13:52', '', 122, 'http://localhost/programas/122-revision-v1/', 0, 'revision', '', 0),
(166, 1, '2019-11-02 11:16:21', '2019-11-02 14:16:21', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:44:\"Insira apenas o código do vídeo no youtube\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Video do episodio', 'video_do_episodio', 'publish', 'closed', 'closed', '', 'field_5dbd8f9e4f6a0', '', '', '2019-11-02 11:16:21', '2019-11-02 14:16:21', '', 37, 'http://localhost/programas/?post_type=acf-field&p=166', 7, 'acf-field', '', 0),
(167, 1, '2019-11-02 11:16:40', '2019-11-02 14:16:40', '', 'Entendendo os conceitos básico. Seu primeiro protótipo', 'Ut id eros at tortor condimentum faucibus ut at felis', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2019-11-02 11:16:40', '2019-11-02 14:16:40', '', 122, 'http://localhost/programas/122-revision-v1/', 0, 'revision', '', 0),
(168, 1, '2019-11-02 13:28:21', '2019-11-02 16:28:21', '', 'temporaria', '', 'inherit', 'open', 'closed', '', 'temporaria', '', '', '2019-11-02 13:28:21', '2019-11-02 16:28:21', '', 122, 'http://localhost/programas/wp-content/uploads/2019/11/temporaria.jpg', 0, 'attachment', 'image/jpeg', 0),
(169, 1, '2019-11-02 13:37:00', '2019-11-02 16:37:00', '', 'Sem-Título-1', '', 'inherit', 'open', 'closed', '', 'sem-titulo-1-2', '', '', '2019-11-02 13:37:00', '2019-11-02 16:37:00', '', 122, 'http://localhost/programas/wp-content/uploads/2019/11/Sem-Título-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(170, 1, '2019-11-02 13:37:04', '2019-11-02 16:37:04', '', 'Entendendo os conceitos básico. Seu primeiro protótipo', 'Ut id eros at tortor condimentum faucibus ut at felis', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2019-11-02 13:37:04', '2019-11-02 16:37:04', '', 122, 'http://localhost/programas/122-revision-v1/', 0, 'revision', '', 0),
(171, 1, '2019-11-02 15:19:07', '2019-11-02 18:19:07', '<!-- wp:heading -->\n<h2>Quem somos</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>O endereço do nosso site é: http://localhost/programas.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Quais dados pessoais coletamos e porque</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Comentários</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Mídia</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Formulários de contato</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Cookies</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar \"Lembrar-me\", seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Mídia incorporada de outros sites</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Análises</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Com quem partilhamos seus dados</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Por quanto tempo mantemos os seus dados</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Quais os seus direitos sobre seus dados</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Para onde enviamos seus dados</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Suas informações de contato</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Informações adicionais</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Como protegemos seus dados</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Quais são nossos procedimentos contra violação de dados</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>De quais terceiros nós recebemos dados</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Quais tomadas de decisão ou análises de perfil automatizadas fazemos com os dados de usuários</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Requisitos obrigatórios de divulgação para sua categoria profissional</h3>\n<!-- /wp:heading -->', 'Política de privacidade', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2019-11-02 15:19:07', '2019-11-02 18:19:07', '', 3, 'http://localhost/programas/3-revision-v1/', 0, 'revision', '', 0),
(172, 1, '2019-11-02 15:21:28', '0000-00-00 00:00:00', '', 'Termos de Serviço', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-11-02 15:21:28', '2019-11-02 18:21:28', '', 0, 'http://localhost/programas/?page_id=172', 0, 'page', '', 0),
(173, 1, '2019-11-02 17:52:22', '2019-11-02 20:52:22', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Etiam vitae sem id eros venenatis tincidunt aliquam eu est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer lobortis consequat velit nec dictum. Duis fermentum lectus eget mauris tincidunt malesuada. In mollis ipsum sit amet purus ultrices, ut rutrum ligula tristique. Donec accumsan augue quis ante dignissim, sit amet efficitur orci semper. Suspendisse potenti.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":176} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/programas/wp-content/uploads/2019/11/sobre-1024x366.jpg\" alt=\"\" class=\"wp-image-176\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Etiam vitae sem id eros venenatis tincidunt aliquam eu est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer lobortis consequat velit nec dictum. Duis fermentum lectus eget mauris tincidunt malesuada. In mollis ipsum sit amet purus ultrices, ut rutrum ligula tristique. Donec accumsan augue quis ante dignissim, sit amet efficitur orci semper. Suspendisse potenti.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Etiam vitae sem id eros venenatis tincidunt aliquam eu est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer lobortis consequat velit nec dictum. Duis fermentum lectus eget mauris tincidunt malesuada. In mollis ipsum sit amet purus ultrices, ut rutrum ligula tristique. Donec accumsan augue quis ante dignissim, sit amet efficitur orci semper. Suspendisse potenti.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Etiam vitae sem id eros venenatis tincidunt aliquam eu est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer lobortis consequat velit nec dictum. Duis fermentum lectus eget mauris tincidunt malesuada. In mollis ipsum sit amet purus ultrices, ut rutrum ligula tristique. Donec accumsan augue quis ante dignissim, sit amet efficitur orci semper. Suspendisse potenti.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Etiam vitae sem id eros venenatis tincidunt aliquam eu est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer lobortis consequat velit nec dictum. Duis fermentum lectus eget mauris tincidunt malesuada. In mollis ipsum sit amet purus ultrices, ut rutrum ligula tristique. Donec accumsan augue quis ante dignissim, sit amet efficitur orci semper. Suspendisse potenti.</p>\n<!-- /wp:paragraph -->', 'Sobre Canal Maker', '', 'publish', 'closed', 'closed', '', 'canal-maker', '', '', '2019-11-02 18:09:17', '2019-11-02 21:09:17', '', 0, 'http://localhost/programas/?page_id=173', 0, 'page', '', 0),
(174, 1, '2019-11-02 17:52:22', '2019-11-02 20:52:22', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Etiam vitae sem id eros venenatis tincidunt aliquam eu est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer lobortis consequat velit nec dictum. Duis fermentum lectus eget mauris tincidunt malesuada. In mollis ipsum sit amet purus ultrices, ut rutrum ligula tristique. Donec accumsan augue quis ante dignissim, sit amet efficitur orci semper. Suspendisse potenti.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Etiam vitae sem id eros venenatis tincidunt aliquam eu est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer lobortis consequat velit nec dictum. Duis fermentum lectus eget mauris tincidunt malesuada. In mollis ipsum sit amet purus ultrices, ut rutrum ligula tristique. Donec accumsan augue quis ante dignissim, sit amet efficitur orci semper. Suspendisse potenti.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Etiam vitae sem id eros venenatis tincidunt aliquam eu est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer lobortis consequat velit nec dictum. Duis fermentum lectus eget mauris tincidunt malesuada. In mollis ipsum sit amet purus ultrices, ut rutrum ligula tristique. Donec accumsan augue quis ante dignissim, sit amet efficitur orci semper. Suspendisse potenti.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Etiam vitae sem id eros venenatis tincidunt aliquam eu est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer lobortis consequat velit nec dictum. Duis fermentum lectus eget mauris tincidunt malesuada. In mollis ipsum sit amet purus ultrices, ut rutrum ligula tristique. Donec accumsan augue quis ante dignissim, sit amet efficitur orci semper. Suspendisse potenti.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Etiam vitae sem id eros venenatis tincidunt aliquam eu est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer lobortis consequat velit nec dictum. Duis fermentum lectus eget mauris tincidunt malesuada. In mollis ipsum sit amet purus ultrices, ut rutrum ligula tristique. Donec accumsan augue quis ante dignissim, sit amet efficitur orci semper. Suspendisse potenti.</p>\n<!-- /wp:paragraph -->', 'Canal Maker', '', 'inherit', 'closed', 'closed', '', '173-revision-v1', '', '', '2019-11-02 17:52:22', '2019-11-02 20:52:22', '', 173, 'http://localhost/programas/173-revision-v1/', 0, 'revision', '', 0),
(175, 1, '2019-11-02 17:57:21', '2019-11-02 20:57:21', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Etiam vitae sem id eros venenatis tincidunt aliquam eu est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer lobortis consequat velit nec dictum. Duis fermentum lectus eget mauris tincidunt malesuada. In mollis ipsum sit amet purus ultrices, ut rutrum ligula tristique. Donec accumsan augue quis ante dignissim, sit amet efficitur orci semper. Suspendisse potenti.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Etiam vitae sem id eros venenatis tincidunt aliquam eu est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer lobortis consequat velit nec dictum. Duis fermentum lectus eget mauris tincidunt malesuada. In mollis ipsum sit amet purus ultrices, ut rutrum ligula tristique. Donec accumsan augue quis ante dignissim, sit amet efficitur orci semper. Suspendisse potenti.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Etiam vitae sem id eros venenatis tincidunt aliquam eu est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer lobortis consequat velit nec dictum. Duis fermentum lectus eget mauris tincidunt malesuada. In mollis ipsum sit amet purus ultrices, ut rutrum ligula tristique. Donec accumsan augue quis ante dignissim, sit amet efficitur orci semper. Suspendisse potenti.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Etiam vitae sem id eros venenatis tincidunt aliquam eu est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer lobortis consequat velit nec dictum. Duis fermentum lectus eget mauris tincidunt malesuada. In mollis ipsum sit amet purus ultrices, ut rutrum ligula tristique. Donec accumsan augue quis ante dignissim, sit amet efficitur orci semper. Suspendisse potenti.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Etiam vitae sem id eros venenatis tincidunt aliquam eu est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer lobortis consequat velit nec dictum. Duis fermentum lectus eget mauris tincidunt malesuada. In mollis ipsum sit amet purus ultrices, ut rutrum ligula tristique. Donec accumsan augue quis ante dignissim, sit amet efficitur orci semper. Suspendisse potenti.</p>\n<!-- /wp:paragraph -->', 'Sobre Canal Maker', '', 'inherit', 'closed', 'closed', '', '173-revision-v1', '', '', '2019-11-02 17:57:21', '2019-11-02 20:57:21', '', 173, 'http://localhost/programas/173-revision-v1/', 0, 'revision', '', 0),
(176, 1, '2019-11-02 18:09:11', '2019-11-02 21:09:11', '', 'sobre', '', 'inherit', 'open', 'closed', '', 'sobre', '', '', '2019-11-02 18:09:11', '2019-11-02 21:09:11', '', 173, 'http://localhost/programas/wp-content/uploads/2019/11/sobre.jpg', 0, 'attachment', 'image/jpeg', 0),
(177, 1, '2019-11-02 18:09:17', '2019-11-02 21:09:17', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Etiam vitae sem id eros venenatis tincidunt aliquam eu est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer lobortis consequat velit nec dictum. Duis fermentum lectus eget mauris tincidunt malesuada. In mollis ipsum sit amet purus ultrices, ut rutrum ligula tristique. Donec accumsan augue quis ante dignissim, sit amet efficitur orci semper. Suspendisse potenti.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":176} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/programas/wp-content/uploads/2019/11/sobre-1024x366.jpg\" alt=\"\" class=\"wp-image-176\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Etiam vitae sem id eros venenatis tincidunt aliquam eu est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer lobortis consequat velit nec dictum. Duis fermentum lectus eget mauris tincidunt malesuada. In mollis ipsum sit amet purus ultrices, ut rutrum ligula tristique. Donec accumsan augue quis ante dignissim, sit amet efficitur orci semper. Suspendisse potenti.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Etiam vitae sem id eros venenatis tincidunt aliquam eu est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer lobortis consequat velit nec dictum. Duis fermentum lectus eget mauris tincidunt malesuada. In mollis ipsum sit amet purus ultrices, ut rutrum ligula tristique. Donec accumsan augue quis ante dignissim, sit amet efficitur orci semper. Suspendisse potenti.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Etiam vitae sem id eros venenatis tincidunt aliquam eu est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer lobortis consequat velit nec dictum. Duis fermentum lectus eget mauris tincidunt malesuada. In mollis ipsum sit amet purus ultrices, ut rutrum ligula tristique. Donec accumsan augue quis ante dignissim, sit amet efficitur orci semper. Suspendisse potenti.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Etiam vitae sem id eros venenatis tincidunt aliquam eu est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer lobortis consequat velit nec dictum. Duis fermentum lectus eget mauris tincidunt malesuada. In mollis ipsum sit amet purus ultrices, ut rutrum ligula tristique. Donec accumsan augue quis ante dignissim, sit amet efficitur orci semper. Suspendisse potenti.</p>\n<!-- /wp:paragraph -->', 'Sobre Canal Maker', '', 'inherit', 'closed', 'closed', '', '173-revision-v1', '', '', '2019-11-02 18:09:17', '2019-11-02 21:09:17', '', 173, 'http://localhost/programas/173-revision-v1/', 0, 'revision', '', 0),
(178, 1, '2019-11-03 12:09:36', '2019-11-03 14:09:36', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Episódio  vídeo Not ipsum dolore aunte deme', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-11-03 12:09:36', '2019-11-03 14:09:36', '', 1, 'http://localhost/programas/1-revision-v1/', 0, 'revision', '', 0),
(179, 1, '2019-11-03 12:10:10', '2019-11-03 14:10:10', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Episódio  vídeo Not ipsum dolore aunte deme', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-11-03 12:10:10', '2019-11-03 14:10:10', '', 1, 'http://localhost/programas/1-revision-v1/', 0, 'revision', '', 0),
(180, 1, '2019-11-03 12:14:10', '2019-11-03 14:14:10', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Episódio  vídeo Not ipsum dolore aunte deme', 'Ipsum dolore domenics delauntre comnstur consequectuer', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-11-03 12:14:10', '2019-11-03 14:14:10', '', 1, 'http://localhost/programas/1-revision-v1/', 0, 'revision', '', 0),
(181, 1, '2019-11-03 13:16:43', '2019-11-03 15:16:43', '', 'Novidades', '', 'publish', 'closed', 'closed', '', 'novidades', '', '', '2019-11-03 13:16:43', '2019-11-03 15:16:43', '', 0, 'http://localhost/programas/?page_id=181', 0, 'page', '', 0),
(182, 1, '2019-11-03 13:16:43', '2019-11-03 15:16:43', '', 'Novidades', '', 'inherit', 'closed', 'closed', '', '181-revision-v1', '', '', '2019-11-03 13:16:43', '2019-11-03 15:16:43', '', 181, 'http://localhost/programas/181-revision-v1/', 0, 'revision', '', 0),
(183, 1, '2019-11-03 13:25:58', '2019-11-03 15:25:58', '<!-- wp:paragraph -->\n<p>  Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&nbsp; </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&nbsp; </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&nbsp;\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&nbsp; </p>\n<!-- /wp:paragraph -->', 'Oficina de Luthier à distância', 'asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf ', 'publish', 'open', 'open', '', 'oficina-de-luthier-a-distancia', '', '', '2019-11-03 15:34:32', '2019-11-03 17:34:32', '', 0, 'http://localhost/programas/?p=183', 0, 'post', '', 0),
(184, 1, '2019-11-03 13:24:59', '2019-11-03 15:24:59', '', 'Outra novidade', '', 'inherit', 'closed', 'closed', '', '183-revision-v1', '', '', '2019-11-03 13:24:59', '2019-11-03 15:24:59', '', 183, 'http://localhost/programas/183-revision-v1/', 0, 'revision', '', 0),
(185, 1, '2019-11-03 13:25:58', '2019-11-03 15:25:58', '<!-- wp:paragraph -->\n<p> asdf asdf asdf   asdf asdf asdf   asdf asdf asdf   asdf asdf asdf   asdf asdf asdf   asdf asdf asdf   asdf asdf asdf   asdf asdf asdf   asdf asdf asdf   asdf asdf asdf   asdf asdf asdf   asdf asdf asdf   asdf asdf asdf   asdf asdf asdf   asdf asdf asdf   asdf asdf asdf   asdf asdf asdf   asdf asdf asdf   asdf asdf asdf   asdf asdf asdf   asdf asdf asdf   asdf asdf asdf   asdf asdf asdf   asdf asdf asdf   asdf asdf asdf   asdf asdf asdf   asdf asdf asdf   asdf asdf asdf  </p>\n<!-- /wp:paragraph -->', 'Oficina de Luthier à distância', 'asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf ', 'inherit', 'closed', 'closed', '', '183-revision-v1', '', '', '2019-11-03 13:25:58', '2019-11-03 15:25:58', '', 183, 'http://localhost/programas/183-revision-v1/', 0, 'revision', '', 0),
(186, 1, '2019-11-03 14:35:06', '2019-11-03 16:35:06', '<!-- wp:paragraph -->\n<p>  Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.  </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.  </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&nbsp;\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.  </p>\n<!-- /wp:paragraph -->', 'Oficina de Luthier à distância', 'asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf ', 'inherit', 'closed', 'closed', '', '183-revision-v1', '', '', '2019-11-03 14:35:06', '2019-11-03 16:35:06', '', 183, 'http://localhost/programas/183-revision-v1/', 0, 'revision', '', 0),
(187, 1, '2019-11-03 14:36:57', '2019-11-03 16:36:57', '<!-- wp:paragraph -->\n<p> Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.  </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&nbsp;\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.  </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&nbsp;\n\n</p>\n<!-- /wp:paragraph -->', 'Título de notícia de teste', 'As asdf asd fasf  asf asd fasdf asdf asdf asdf a As asdf asd fasf  asf asd fasdf', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2019-11-03 14:36:57', '2019-11-03 16:36:57', '', 103, 'http://localhost/programas/103-revision-v1/', 0, 'revision', '', 0),
(188, 1, '2019-11-03 14:37:23', '2019-11-03 16:37:23', '<!-- wp:paragraph -->\n<p> Sed ut perspiciatis unde om nis iste natus error sit voluptatem accus antium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.  </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Sed ut perspiciatis unde omnis iste natus error sit voluptatem acc usan tium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab il lo inventore veritatis et quasi architecto beatae vitae di cta sunt expli cabo.  </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.  </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&nbsp;\n\n</p>\n<!-- /wp:paragraph -->', 'Título de notícia de teste', 'As asdf asd fasf  asf asd fasdf asdf asdf asdf a As asdf asd fasf  asf asd fasdf', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2019-11-03 14:37:23', '2019-11-03 16:37:23', '', 103, 'http://localhost/programas/103-revision-v1/', 0, 'revision', '', 0),
(189, 1, '2019-11-03 14:40:42', '2019-11-03 16:40:42', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->', 'Lorem ipsum dolor sit amet, consectetur', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit', '', '', '2019-11-03 15:50:28', '2019-11-03 17:50:28', '', 0, 'http://localhost/programas/?p=189', 0, 'post', '', 0),
(190, 1, '2019-11-03 14:40:42', '2019-11-03 16:40:42', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '', 'inherit', 'closed', 'closed', '', '189-revision-v1', '', '', '2019-11-03 14:40:42', '2019-11-03 16:40:42', '', 189, 'http://localhost/programas/189-revision-v1/', 0, 'revision', '', 0),
(191, 1, '2019-11-03 14:43:45', '2019-11-03 16:43:45', '', 'sobre', '', 'inherit', 'open', 'closed', '', 'sobre-2', '', '', '2019-11-03 14:43:45', '2019-11-03 16:43:45', '', 189, 'http://localhost/programas/wp-content/uploads/2019/11/sobre-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(192, 1, '2019-11-03 14:50:03', '2019-11-03 16:50:03', '', 'sobre', '', 'inherit', 'open', 'closed', '', 'sobre-3', '', '', '2019-11-03 14:50:03', '2019-11-03 16:50:03', '', 189, 'http://localhost/programas/wp-content/uploads/2019/11/sobre-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(193, 1, '2019-11-03 14:55:21', '2019-11-03 16:55:21', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. \n\n</p>\n<!-- /wp:paragraph -->', 'Duis aute irure dolor in reprehenderit in voluptate', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, ', 'publish', 'open', 'open', '', 'duis-aute-irure-dolor-in-reprehenderit-in-voluptate', '', '', '2019-11-03 15:34:04', '2019-11-03 17:34:04', '', 0, 'http://localhost/programas/?p=193', 0, 'post', '', 0),
(194, 1, '2019-11-03 14:55:02', '2019-11-03 16:55:02', '', 'temporaria', '', 'inherit', 'open', 'closed', '', 'temporaria-2', '', '', '2019-11-03 14:55:02', '2019-11-03 16:55:02', '', 193, 'http://localhost/programas/wp-content/uploads/2019/11/temporaria-1.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(195, 1, '2019-11-03 14:55:21', '2019-11-03 16:55:21', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. \n\n</p>\n<!-- /wp:paragraph -->', 'Duis aute irure dolor in reprehenderit in voluptate', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut', 'inherit', 'closed', 'closed', '', '193-revision-v1', '', '', '2019-11-03 14:55:21', '2019-11-03 16:55:21', '', 193, 'http://localhost/programas/193-revision-v1/', 0, 'revision', '', 0),
(196, 1, '2019-11-03 14:55:53', '2019-11-03 16:55:53', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut', 'inherit', 'closed', 'closed', '', '189-revision-v1', '', '', '2019-11-03 14:55:53', '2019-11-03 16:55:53', '', 189, 'http://localhost/programas/189-revision-v1/', 0, 'revision', '', 0),
(197, 1, '2019-11-03 14:56:50', '2019-11-03 16:56:50', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do', 'inherit', 'closed', 'closed', '', '189-revision-v1', '', '', '2019-11-03 14:56:50', '2019-11-03 16:56:50', '', 189, 'http://localhost/programas/189-revision-v1/', 0, 'revision', '', 0),
(198, 1, '2019-11-03 14:57:04', '2019-11-03 16:57:04', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->', 'Lorem ipsum dolor sit amet, consectetur', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do', 'inherit', 'closed', 'closed', '', '189-revision-v1', '', '', '2019-11-03 14:57:04', '2019-11-03 16:57:04', '', 189, 'http://localhost/programas/189-revision-v1/', 0, 'revision', '', 0),
(199, 1, '2019-11-03 14:57:25', '2019-11-03 16:57:25', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. \n\n</p>\n<!-- /wp:paragraph -->', 'Duis aute irure dolor in reprehenderit in voluptate', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, ', 'inherit', 'closed', 'closed', '', '193-revision-v1', '', '', '2019-11-03 14:57:25', '2019-11-03 16:57:25', '', 193, 'http://localhost/programas/193-revision-v1/', 0, 'revision', '', 0),
(200, 1, '2019-11-03 15:22:39', '2019-11-03 17:22:39', '', 'temporaria', '', 'inherit', 'open', 'closed', '', 'temporaria-3', '', '', '2019-11-03 15:22:39', '2019-11-03 17:22:39', '', 193, 'http://localhost/programas/wp-content/uploads/2019/11/temporaria-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(201, 1, '2019-11-03 15:24:33', '2019-11-03 17:24:33', '', 'sobre', '', 'inherit', 'open', 'closed', '', 'sobre-4', '', '', '2019-11-03 15:24:33', '2019-11-03 17:24:33', '', 193, 'http://localhost/programas/wp-content/uploads/2019/11/sobre-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(202, 1, '2019-11-03 15:26:47', '2019-11-03 17:26:47', '', 'Forest', 'Sunlight in the green forest, spring time', 'inherit', 'open', 'closed', '', 'forest', '', '', '2019-11-03 15:26:47', '2019-11-03 17:26:47', '', 193, 'http://localhost/programas/wp-content/uploads/2019/11/floresta-cpt.jpg', 0, 'attachment', 'image/jpeg', 0),
(203, 1, '2019-11-03 15:34:00', '2019-11-03 17:34:00', '', 'Forest', 'Sunlight in the green forest, spring time', 'inherit', 'open', 'closed', '', 'forest-2', '', '', '2019-11-03 15:34:00', '2019-11-03 17:34:00', '', 193, 'http://localhost/programas/wp-content/uploads/2019/11/floresta-cpt-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(204, 1, '2019-11-03 15:34:29', '2019-11-03 17:34:29', '', 'temporaria', '', 'inherit', 'open', 'closed', '', 'temporaria-4', '', '', '2019-11-03 15:34:29', '2019-11-03 17:34:29', '', 183, 'http://localhost/programas/wp-content/uploads/2019/11/temporaria-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(205, 1, '2019-11-03 15:34:32', '2019-11-03 17:34:32', '<!-- wp:paragraph -->\n<p>  Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&nbsp; </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&nbsp; </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&nbsp;\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&nbsp; </p>\n<!-- /wp:paragraph -->', 'Oficina de Luthier à distância', 'asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf ', 'inherit', 'closed', 'closed', '', '183-revision-v1', '', '', '2019-11-03 15:34:32', '2019-11-03 17:34:32', '', 183, 'http://localhost/programas/183-revision-v1/', 0, 'revision', '', 0),
(206, 1, '2019-11-03 15:35:06', '2019-11-03 17:35:06', '', 'sobre', '', 'inherit', 'open', 'closed', '', 'sobre-5', '', '', '2019-11-03 15:35:06', '2019-11-03 17:35:06', '', 103, 'http://localhost/programas/wp-content/uploads/2019/10/sobre.jpg', 0, 'attachment', 'image/jpeg', 0),
(207, 1, '2019-11-03 15:35:12', '2019-11-03 17:35:12', '<!-- wp:paragraph -->\n<p> Sed ut perspiciatis unde om nis iste natus error sit voluptatem accus antium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&nbsp; </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Sed ut perspiciatis unde omnis iste natus error sit voluptatem acc usan tium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab il lo inventore veritatis et quasi architecto beatae vitae di cta sunt expli cabo.&nbsp; </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&nbsp; </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&nbsp;\n\n</p>\n<!-- /wp:paragraph -->', 'Título de notícia de teste', 'As asdf asd fasf  asf asd fasdf asdf asdf asdf a As asdf asd fasf  asf asd fasdf', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2019-11-03 15:35:12', '2019-11-03 17:35:12', '', 103, 'http://localhost/programas/103-revision-v1/', 0, 'revision', '', 0),
(208, 1, '2019-11-03 15:43:27', '2019-11-03 17:43:27', '<p><br>\n<br>\n<!--StartFragment--></p>\n\n<!-- wp:paragraph -->\n<p> Sed ut perspiciatis unde om nis iste natus error sit voluptatem accus antium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&nbsp; </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Sed ut perspiciatis unde omnis iste natus error sit voluptatem acc usan tium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab il lo inventore veritatis et quasi architecto beatae vitae di cta sunt expli cabo.&nbsp; </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&nbsp; </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&nbsp;\n\n</p>\n<!-- /wp:paragraph -->\n\n<p><!--EndFragment--><br /><br /></p>', 'Sed ut perspiciatis unde om nis iste natus error', 'Sed ut perspiciatis unde om nis iste natus error Sed ut perspiciatis unde', 'publish', 'open', 'open', '', 'sed-ut-perspiciatis-unde-om-nis-iste-natus-error', '', '', '2019-11-03 15:44:06', '2019-11-03 17:44:06', '', 0, 'http://localhost/programas/?p=208', 0, 'post', '', 0),
(209, 1, '2019-11-03 15:43:03', '2019-11-03 17:43:03', '', '3132955553_ee923da025_b', '', 'inherit', 'open', 'closed', '', '3132955553_ee923da025_b', '', '', '2019-11-03 15:43:03', '2019-11-03 17:43:03', '', 208, 'http://localhost/programas/wp-content/uploads/2019/11/3132955553_ee923da025_b.jpg', 0, 'attachment', 'image/jpeg', 0),
(210, 1, '2019-11-03 15:43:27', '2019-11-03 17:43:27', '<p><br>\n<br>\n<!--StartFragment--></p>\n\n<!-- wp:paragraph -->\n<p> Sed ut perspiciatis unde om nis iste natus error sit voluptatem accus antium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&nbsp; </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Sed ut perspiciatis unde omnis iste natus error sit voluptatem acc usan tium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab il lo inventore veritatis et quasi architecto beatae vitae di cta sunt expli cabo.&nbsp; </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&nbsp; </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&nbsp;\n\n</p>\n<!-- /wp:paragraph -->\n\n<p><!--EndFragment--><br /><br /></p>', 'Sed ut perspiciatis unde om nis iste natus error', '', 'inherit', 'closed', 'closed', '', '208-revision-v1', '', '', '2019-11-03 15:43:27', '2019-11-03 17:43:27', '', 208, 'http://localhost/programas/208-revision-v1/', 0, 'revision', '', 0),
(211, 1, '2019-11-03 15:44:06', '2019-11-03 17:44:06', '<p><br>\n<br>\n<!--StartFragment--></p>\n\n<!-- wp:paragraph -->\n<p> Sed ut perspiciatis unde om nis iste natus error sit voluptatem accus antium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&nbsp; </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Sed ut perspiciatis unde omnis iste natus error sit voluptatem acc usan tium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab il lo inventore veritatis et quasi architecto beatae vitae di cta sunt expli cabo.&nbsp; </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&nbsp; </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&nbsp;\n\n</p>\n<!-- /wp:paragraph -->\n\n<p><!--EndFragment--><br /><br /></p>', 'Sed ut perspiciatis unde om nis iste natus error', 'Sed ut perspiciatis unde om nis iste natus error Sed ut perspiciatis unde', 'inherit', 'closed', 'closed', '', '208-revision-v1', '', '', '2019-11-03 15:44:06', '2019-11-03 17:44:06', '', 208, 'http://localhost/programas/208-revision-v1/', 0, 'revision', '', 0),
(212, 1, '2019-11-03 15:45:28', '2019-11-03 17:45:28', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->', 'Sed ut perspiciatis unde om nis iste natus error', 'Sed ut perspiciatis unde om nis iste natus errorSed ut perspiciatis unde om nis iste natus error', 'publish', 'open', 'open', '', 'sed-ut-perspiciatis-unde-om-nis-iste-natus-error-2', '', '', '2019-11-03 15:45:28', '2019-11-03 17:45:28', '', 0, 'http://localhost/programas/?p=212', 0, 'post', '', 0),
(213, 1, '2019-11-03 15:45:22', '2019-11-03 17:45:22', '', 'banco-banquinho-banqueta-madeira-artesanato-rustico-pequeno-bancomadeira', '', 'inherit', 'open', 'closed', '', 'banco-banquinho-banqueta-madeira-artesanato-rustico-pequeno-bancomadeira', '', '', '2019-11-03 15:45:22', '2019-11-03 17:45:22', '', 212, 'http://localhost/programas/wp-content/uploads/2019/11/banco-banquinho-banqueta-madeira-artesanato-rustico-pequeno-bancomadeira.jpg', 0, 'attachment', 'image/jpeg', 0),
(214, 1, '2019-11-03 15:45:28', '2019-11-03 17:45:28', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->', 'Sed ut perspiciatis unde om nis iste natus error', 'Sed ut perspiciatis unde om nis iste natus errorSed ut perspiciatis unde om nis iste natus error', 'inherit', 'closed', 'closed', '', '212-revision-v1', '', '', '2019-11-03 15:45:28', '2019-11-03 17:45:28', '', 212, 'http://localhost/programas/212-revision-v1/', 0, 'revision', '', 0),
(215, 1, '2019-11-03 15:46:34', '2019-11-03 17:46:34', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. \n\n</p>\n<!-- /wp:paragraph -->', 'Duis aute irure dolor in reprehenderit in voluptate', 'Duis aute irure dolor in reprehe nderit in voluptate Duis aute irure dolor in reprehenderit ', 'publish', 'open', 'open', '', 'duis-aute-irure-dolor-in-reprehenderit-in-voluptate-2', '', '', '2019-11-03 15:46:34', '2019-11-03 17:46:34', '', 0, 'http://localhost/programas/?p=215', 0, 'post', '', 0),
(216, 1, '2019-11-03 15:46:23', '2019-11-03 17:46:23', '', 'basto-de-madeira-para-artesanato-e-baners-075m-16mm-58-D_NQ_NP_978163-MLB25716377790_062017-F', '', 'inherit', 'open', 'closed', '', 'basto-de-madeira-para-artesanato-e-baners-075m-16mm-58-d_nq_np_978163-mlb25716377790_062017-f', '', '', '2019-11-03 15:46:23', '2019-11-03 17:46:23', '', 215, 'http://localhost/programas/wp-content/uploads/2019/11/basto-de-madeira-para-artesanato-e-baners-075m-16mm-58-D_NQ_NP_978163-MLB25716377790_062017-F.jpg', 0, 'attachment', 'image/jpeg', 0),
(217, 1, '2019-11-03 15:46:34', '2019-11-03 17:46:34', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. \n\n</p>\n<!-- /wp:paragraph -->', 'Duis aute irure dolor in reprehenderit in voluptate', 'Duis aute irure dolor in reprehe nderit in voluptate Duis aute irure dolor in reprehenderit ', 'inherit', 'closed', 'closed', '', '215-revision-v1', '', '', '2019-11-03 15:46:34', '2019-11-03 17:46:34', '', 215, 'http://localhost/programas/215-revision-v1/', 0, 'revision', '', 0),
(218, 1, '2019-11-03 15:47:36', '2019-11-03 17:47:36', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.  \n\n</p>\n<!-- /wp:paragraph -->', 'Excepteur sint occaecat cupidatat non proident', 'Excepteur sint occaecat cupidatat non proident Exce pteur sint occaecat cupidatat non proident', 'publish', 'open', 'open', '', 'excepteur-sint-occaecat-cupidatat-non-proident', '', '', '2019-11-03 15:47:36', '2019-11-03 17:47:36', '', 0, 'http://localhost/programas/?p=218', 0, 'post', '', 0),
(219, 1, '2019-11-03 15:47:29', '2019-11-03 17:47:29', '', 'HTB12IMJGXXXXXaIXXXXq6xXFXXXL', '', 'inherit', 'open', 'closed', '', 'htb12imjgxxxxxaixxxxq6xxfxxxl', '', '', '2019-11-03 15:47:29', '2019-11-03 17:47:29', '', 218, 'http://localhost/programas/wp-content/uploads/2019/11/HTB12IMJGXXXXXaIXXXXq6xXFXXXL.jpg', 0, 'attachment', 'image/jpeg', 0),
(220, 1, '2019-11-03 15:47:36', '2019-11-03 17:47:36', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.  \n\n</p>\n<!-- /wp:paragraph -->', 'Excepteur sint occaecat cupidatat non proident', 'Excepteur sint occaecat cupidatat non proident Exce pteur sint occaecat cupidatat non proident', 'inherit', 'closed', 'closed', '', '218-revision-v1', '', '', '2019-11-03 15:47:36', '2019-11-03 17:47:36', '', 218, 'http://localhost/programas/218-revision-v1/', 0, 'revision', '', 0),
(221, 1, '2019-11-03 15:49:18', '2019-11-03 17:49:18', '<!-- wp:paragraph -->\n<p>  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->', 'Officia deserunt mollit anim id est laborum', 'Officia deserunt mollit anim id est laborum Officia deserunt mollit anim id est laborum', 'publish', 'open', 'open', '', 'officia-deserunt-mollit-anim-id-est-laborum', '', '', '2019-11-03 15:49:18', '2019-11-03 17:49:18', '', 0, 'http://localhost/programas/?p=221', 0, 'post', '', 0),
(222, 1, '2019-11-03 15:49:05', '2019-11-03 17:49:05', '', 'relogio_de_madeira_artesanal_feito_em_marchetaria_birch_100306_1_20190112085248', '', 'inherit', 'open', 'closed', '', 'relogio_de_madeira_artesanal_feito_em_marchetaria_birch_100306_1_20190112085248', '', '', '2019-11-03 15:49:05', '2019-11-03 17:49:05', '', 221, 'http://localhost/programas/wp-content/uploads/2019/11/relogio_de_madeira_artesanal_feito_em_marchetaria_birch_100306_1_20190112085248.jpg', 0, 'attachment', 'image/jpeg', 0),
(223, 1, '2019-11-03 15:49:18', '2019-11-03 17:49:18', '<!-- wp:paragraph -->\n<p>  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->', 'Officia deserunt mollit anim id est laborum', 'Officia deserunt mollit anim id est laborum Officia deserunt mollit anim id est laborum', 'inherit', 'closed', 'closed', '', '221-revision-v1', '', '', '2019-11-03 15:49:18', '2019-11-03 17:49:18', '', 221, 'http://localhost/programas/221-revision-v1/', 0, 'revision', '', 0),
(224, 1, '2019-11-03 15:50:24', '2019-11-03 17:50:24', '', 'sobre', '', 'inherit', 'open', 'closed', '', 'sobre-6', '', '', '2019-11-03 15:50:24', '2019-11-03 17:50:24', '', 189, 'http://localhost/programas/wp-content/uploads/2019/11/sobre-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(225, 1, '2019-11-03 15:54:20', '2019-11-03 17:54:20', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.   Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->', 'Sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Sunt in culpa qui officia deserunt mollit anim id est laborum Sunt in culpa qui officia deserunt mollit', 'publish', 'open', 'open', '', 'sunt-in-culpa-qui-officia-deserunt-mollit-anim-id-est-laborum', '', '', '2019-11-03 15:54:39', '2019-11-03 17:54:39', '', 0, 'http://localhost/programas/?p=225', 0, 'post', '', 0),
(226, 1, '2019-11-03 15:54:10', '2019-11-03 17:54:10', '', 'maxresdefault', '', 'inherit', 'open', 'closed', '', 'maxresdefault', '', '', '2019-11-03 15:54:10', '2019-11-03 17:54:10', '', 225, 'http://localhost/programas/wp-content/uploads/2019/11/maxresdefault.jpg', 0, 'attachment', 'image/jpeg', 0),
(227, 1, '2019-11-03 15:54:20', '2019-11-03 17:54:20', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.   Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->', 'Sunt in culpa qui officia deserunt mollit anim id est laborum.', '', 'inherit', 'closed', 'closed', '', '225-revision-v1', '', '', '2019-11-03 15:54:20', '2019-11-03 17:54:20', '', 225, 'http://localhost/programas/225-revision-v1/', 0, 'revision', '', 0),
(228, 1, '2019-11-03 15:54:39', '2019-11-03 17:54:39', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.   Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->', 'Sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Sunt in culpa qui officia deserunt mollit anim id est laborum Sunt in culpa qui officia deserunt mollit', 'inherit', 'closed', 'closed', '', '225-revision-v1', '', '', '2019-11-03 15:54:39', '2019-11-03 17:54:39', '', 225, 'http://localhost/programas/225-revision-v1/', 0, 'revision', '', 0),
(229, 1, '2019-11-03 15:55:30', '2019-11-03 17:55:30', '<!-- wp:paragraph -->\n<p>Sunt in culpa qui officia deserunt mollit anim id est  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->', 'Sunt in culpa qui officia deserunt mollit anim id est', 'Sunt in culpa qui officia deserunt mollit anim id est laborum Sunt in culpa qui officia dese', 'publish', 'open', 'open', '', 'sunt-in-culpa-qui-officia-deserunt-mollit-anim-id-est', '', '', '2019-11-03 15:55:59', '2019-11-03 17:55:59', '', 0, 'http://localhost/programas/?p=229', 0, 'post', '', 0),
(230, 1, '2019-11-03 15:55:24', '2019-11-03 17:55:24', '', '6-bolachas-de-madeira-rustica-artesanato-terrarium-D_NQ_NP_781838-MLB29120857563_012019-F', '', 'inherit', 'open', 'closed', '', '6-bolachas-de-madeira-rustica-artesanato-terrarium-d_nq_np_781838-mlb29120857563_012019-f', '', '', '2019-11-03 15:55:24', '2019-11-03 17:55:24', '', 229, 'http://localhost/programas/wp-content/uploads/2019/11/6-bolachas-de-madeira-rustica-artesanato-terrarium-D_NQ_NP_781838-MLB29120857563_012019-F.jpg', 0, 'attachment', 'image/jpeg', 0),
(231, 1, '2019-11-03 15:55:30', '2019-11-03 17:55:30', '<!-- wp:paragraph -->\n<p>Sunt in culpa qui officia deserunt mollit anim id est laborum</p>\n<!-- /wp:paragraph -->', 'Sunt in culpa qui officia deserunt mollit anim id est', 'Sunt in culpa qui officia deserunt mollit anim id est laborum Sunt in culpa qui officia dese', 'inherit', 'closed', 'closed', '', '229-revision-v1', '', '', '2019-11-03 15:55:30', '2019-11-03 17:55:30', '', 229, 'http://localhost/programas/229-revision-v1/', 0, 'revision', '', 0),
(232, 1, '2019-11-03 15:55:59', '2019-11-03 17:55:59', '<!-- wp:paragraph -->\n<p>Sunt in culpa qui officia deserunt mollit anim id est  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->', 'Sunt in culpa qui officia deserunt mollit anim id est', 'Sunt in culpa qui officia deserunt mollit anim id est laborum Sunt in culpa qui officia dese', 'inherit', 'closed', 'closed', '', '229-revision-v1', '', '', '2019-11-03 15:55:59', '2019-11-03 17:55:59', '', 229, 'http://localhost/programas/229-revision-v1/', 0, 'revision', '', 0),
(233, 1, '2019-11-03 15:57:12', '2019-11-03 17:57:12', '<!-- wp:paragraph -->\n<p> Sunt in culpa qui officia deserunt mollit anim id est  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.  </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nSunt in culpa qui officia deserunt mollit anim id est  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. \n\n</p>\n<!-- /wp:paragraph -->', 'elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 'elit, sed do eiusmod tempor incididunt ut labore et dolore magna', 'publish', 'open', 'open', '', 'elit-sed-do-eiusmod-tempor-incididunt-ut-labore-et-dolore-magna-aliqua-ut-enim-ad-minim-veniam', '', '', '2019-11-03 15:57:41', '2019-11-03 17:57:41', '', 0, 'http://localhost/programas/?p=233', 0, 'post', '', 0),
(234, 1, '2019-11-03 15:57:06', '2019-11-03 17:57:06', '', 'ilhabela-artesanato-madeira-traineira-255-bx', '', 'inherit', 'open', 'closed', '', 'ilhabela-artesanato-madeira-traineira-255-bx', '', '', '2019-11-03 15:57:06', '2019-11-03 17:57:06', '', 233, 'http://localhost/programas/wp-content/uploads/2019/11/ilhabela-artesanato-madeira-traineira-255-bx.jpg', 0, 'attachment', 'image/jpeg', 0),
(237, 1, '2019-11-03 15:57:41', '2019-11-03 17:57:41', '<!-- wp:paragraph -->\n<p> Sunt in culpa qui officia deserunt mollit anim id est  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.  </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nSunt in culpa qui officia deserunt mollit anim id est  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. \n\n</p>\n<!-- /wp:paragraph -->', 'elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 'elit, sed do eiusmod tempor incididunt ut labore et dolore magna', 'inherit', 'closed', 'closed', '', '233-revision-v1', '', '', '2019-11-03 15:57:41', '2019-11-03 17:57:41', '', 233, 'http://localhost/programas/233-revision-v1/', 0, 'revision', '', 0),
(235, 1, '2019-11-03 15:57:12', '2019-11-03 17:57:12', '<!-- wp:paragraph -->\n<p> Sunt in culpa qui officia deserunt mollit anim id est  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.  </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nSunt in culpa qui officia deserunt mollit anim id est  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. \n\n</p>\n<!-- /wp:paragraph -->', 'elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'inherit', 'closed', 'closed', '', '233-revision-v1', '', '', '2019-11-03 15:57:12', '2019-11-03 17:57:12', '', 233, 'http://localhost/programas/233-revision-v1/', 0, 'revision', '', 0),
(236, 1, '2019-11-03 15:57:26', '2019-11-03 17:57:26', '<!-- wp:paragraph -->\n<p> Sunt in culpa qui officia deserunt mollit anim id est  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.  </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nSunt in culpa qui officia deserunt mollit anim id est  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. \n\n</p>\n<!-- /wp:paragraph -->', 'elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 'elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'inherit', 'closed', 'closed', '', '233-revision-v1', '', '', '2019-11-03 15:57:26', '2019-11-03 17:57:26', '', 233, 'http://localhost/programas/233-revision-v1/', 0, 'revision', '', 0),
(238, 1, '2019-11-03 15:58:48', '2019-11-03 17:58:48', '<!-- wp:paragraph -->\n<p>\n\nSunt in culpa qui officia deserunt mollit anim id est  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.  \n\n</p>\n<!-- /wp:paragraph -->', 'Eiusmod tempor incididunt ut labore et dolore magna', ' eiusmod tempor incididunt ut labore et dolore magna  eiusmod tempor incididunt ut labore et', 'publish', 'open', 'open', '', 'eiusmod-tempor-incididunt-ut-labore-et-dolore-magna', '', '', '2019-11-03 15:58:48', '2019-11-03 17:58:48', '', 0, 'http://localhost/programas/?p=238', 0, 'post', '', 0),
(239, 1, '2019-11-03 15:58:26', '2019-11-03 17:58:26', '', 'elisangela 088', '', 'inherit', 'open', 'closed', '', 'elisangela-088', '', '', '2019-11-03 15:58:26', '2019-11-03 17:58:26', '', 238, 'http://localhost/programas/wp-content/uploads/2019/11/elisangela-088.jpg', 0, 'attachment', 'image/jpeg', 0),
(240, 1, '2019-11-03 15:58:48', '2019-11-03 17:58:48', '<!-- wp:paragraph -->\n<p>\n\nSunt in culpa qui officia deserunt mollit anim id est  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.  \n\n</p>\n<!-- /wp:paragraph -->', 'Eiusmod tempor incididunt ut labore et dolore magna', ' eiusmod tempor incididunt ut labore et dolore magna  eiusmod tempor incididunt ut labore et', 'inherit', 'closed', 'closed', '', '238-revision-v1', '', '', '2019-11-03 15:58:48', '2019-11-03 17:58:48', '', 238, 'http://localhost/programas/238-revision-v1/', 0, 'revision', '', 0),
(241, 1, '2019-11-03 17:14:15', '2019-11-03 19:14:15', '<!-- wp:paragraph -->\n<p>\n\n[ninja_form id=2]\n\n</p>\n<!-- /wp:paragraph -->', 'Como podemos ajudá-lo?', '', 'publish', 'closed', 'closed', '', 'contato', '', '', '2019-11-03 17:33:54', '2019-11-03 19:33:54', '', 0, 'http://localhost/programas/?page_id=241', 0, 'page', '', 0),
(242, 1, '2019-11-03 17:14:15', '2019-11-03 19:14:15', '', 'contato', '', 'inherit', 'closed', 'closed', '', '241-revision-v1', '', '', '2019-11-03 17:14:15', '2019-11-03 19:14:15', '', 241, 'http://localhost/programas/241-revision-v1/', 0, 'revision', '', 0),
(243, 1, '2019-11-03 17:21:27', '2019-11-03 19:21:27', '<!-- wp:paragraph -->\n<p>\n\n[ninja_form id=2]\n\n</p>\n<!-- /wp:paragraph -->', 'contato', '', 'inherit', 'closed', 'closed', '', '241-revision-v1', '', '', '2019-11-03 17:21:27', '2019-11-03 19:21:27', '', 241, 'http://localhost/programas/241-revision-v1/', 0, 'revision', '', 0),
(244, 1, '2019-11-03 17:33:53', '2019-11-03 19:33:53', '<!-- wp:paragraph -->\n<p>\n\n[ninja_form id=2]\n\n</p>\n<!-- /wp:paragraph -->', 'Como podemos ajudá-lo?', '', 'inherit', 'closed', 'closed', '', '241-revision-v1', '', '', '2019-11-03 17:33:53', '2019-11-03 19:33:53', '', 241, 'http://localhost/programas/241-revision-v1/', 0, 'revision', '', 0);

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
(18, 20, '_imagem_miniatura', 'field_5db269264b82d'),
(21, 23, 'imagem_do_topo', '53'),
(22, 23, '_imagem_do_topo', 'field_5dbb8937dcd3a'),
(23, 15, 'imagem_do_topo', '53'),
(24, 15, '_imagem_do_topo', 'field_5dbb8937dcd3a'),
(25, 16, 'imagem_do_topo', '53'),
(26, 16, '_imagem_do_topo', 'field_5dbb8937dcd3a'),
(27, 17, 'imagem_do_topo', '53'),
(28, 17, '_imagem_do_topo', 'field_5dbb8937dcd3a'),
(29, 18, 'imagem_do_topo', '53'),
(30, 18, '_imagem_do_topo', 'field_5dbb8937dcd3a'),
(31, 19, 'imagem_do_topo', '53'),
(32, 19, '_imagem_do_topo', 'field_5dbb8937dcd3a'),
(33, 20, 'imagem_do_topo', '53'),
(34, 20, '_imagem_do_topo', 'field_5dbb8937dcd3a'),
(35, 21, 'imagem_do_topo', '53'),
(36, 21, '_imagem_do_topo', 'field_5dbb8937dcd3a'),
(37, 1, 'imagem_miniatura', ''),
(38, 1, '_imagem_miniatura', 'field_5db269264b82d'),
(39, 1, 'imagem_do_topo', ''),
(40, 1, '_imagem_do_topo', 'field_5dbb8937dcd3a'),
(41, 23, 'logo_do_programa', '59'),
(42, 23, '_logo_do_programa', 'field_5dbd71f3fb7cf');

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
(15, 'Papo Wu', 'program2', 0),
(16, 'Program3', 'program3', 0),
(17, 'Program4', 'program4', 0),
(18, 'Program5', 'program5', 0),
(19, 'Program6', 'program6', 0),
(20, 'Program7', 'program7', 0),
(21, 'Program8', 'program8', 0),
(22, 'Destaque', 'destaque', 0),
(24, 'novidades', 'novidades', 0);

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
(183, 1, 0),
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
(83, 23, 0),
(140, 13, 0),
(108, 13, 0),
(108, 23, 0),
(111, 13, 0),
(111, 23, 0),
(119, 13, 0),
(119, 23, 0),
(122, 13, 0),
(122, 23, 0),
(126, 13, 0),
(126, 15, 0),
(130, 13, 0),
(130, 15, 0),
(134, 13, 0),
(134, 15, 0),
(137, 13, 0),
(137, 15, 0),
(103, 24, 0),
(140, 16, 0),
(145, 13, 0),
(145, 16, 0),
(148, 13, 0),
(148, 16, 0),
(151, 13, 0),
(151, 17, 0),
(183, 24, 0),
(189, 24, 0),
(193, 24, 0),
(208, 24, 0),
(212, 24, 0),
(215, 24, 0),
(218, 24, 0),
(221, 24, 0),
(225, 24, 0),
(229, 24, 0),
(233, 24, 0),
(238, 24, 0);

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
(1, 1, 'category', 'Ut id eros at tortor condimentum faucibus ut at felis. Sed facilisis mi dui, quis accumsan sem lacinia ut.', 0, 5),
(13, 13, 'category', '', 0, 20),
(16, 16, 'category', 'Ut id eros at tortor condimentum faucibus ut at felis. Sed facilisis mi dui, quis accumsan sem lacinia ut.', 13, 4),
(15, 15, 'category', 'Ut id eros at tortor condimentum faucibus ut at felis. Sed facilisis mi dui, quis accumsan sem lacinia ut.', 13, 5),
(17, 17, 'category', 'Ut id eros at tortor condimentum faucibus ut at felis. Sed facilisis mi dui, quis accumsan sem lacinia ut.', 13, 2),
(18, 18, 'category', 'Ut id eros at tortor condimentum faucibus ut at felis. Sed facilisis mi dui, quis accumsan sem lacinia ut.', 13, 1),
(19, 19, 'category', 'Ut id eros at tortor condimentum faucibus ut at felis. Sed facilisis mi dui, quis accumsan sem lacinia ut.', 13, 0),
(20, 20, 'category', 'Ut id eros at tortor condimentum faucibus ut at felis. Sed facilisis mi dui, quis accumsan sem lacinia ut.', 13, 0),
(21, 21, 'category', 'Ut id eros at tortor condimentum faucibus ut at felis. Sed facilisis mi dui, quis accumsan sem lacinia ut.', 13, 1),
(22, 22, 'category', '', 0, 5),
(23, 23, 'category', 'Ut id eros at tortor condimentum faucibus ut at felis. Sed facilisis mi dui, quis accumsan sem lacinia ut.', 13, 5),
(24, 24, 'category', '', 0, 13);

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
(16, 1, 'session_tokens', 'a:3:{s:64:\"23f14f2f27dc84c43cebb2557deddf89d76f93dc94c05c24abd18ab54fc640f7\";a:4:{s:10:\"expiration\";i:1572869314;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36\";s:5:\"login\";i:1572696514;}s:64:\"23d8c195c121eacfeb4543d1280c68c38cc11dc50795b96178ef397274e7e4f8\";a:4:{s:10:\"expiration\";i:1572900682;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36\";s:5:\"login\";i:1572727882;}s:64:\"fa034d5543801f1e3e653741e4771c9834a56f1b5990c576c863204f9799f2c4\";a:4:{s:10:\"expiration\";i:1572981243;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36\";s:5:\"login\";i:1572808443;}}'),
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
-- Indexes for table `wp_nf3_actions`
--
ALTER TABLE `wp_nf3_actions`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_action_meta`
--
ALTER TABLE `wp_nf3_action_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_chunks`
--
ALTER TABLE `wp_nf3_chunks`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_fields`
--
ALTER TABLE `wp_nf3_fields`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_field_meta`
--
ALTER TABLE `wp_nf3_field_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_forms`
--
ALTER TABLE `wp_nf3_forms`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_form_meta`
--
ALTER TABLE `wp_nf3_form_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_objects`
--
ALTER TABLE `wp_nf3_objects`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_object_meta`
--
ALTER TABLE `wp_nf3_object_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_relationships`
--
ALTER TABLE `wp_nf3_relationships`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_upgrades`
--
ALTER TABLE `wp_nf3_upgrades`
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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_nf3_actions`
--
ALTER TABLE `wp_nf3_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_nf3_action_meta`
--
ALTER TABLE `wp_nf3_action_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `wp_nf3_chunks`
--
ALTER TABLE `wp_nf3_chunks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nf3_fields`
--
ALTER TABLE `wp_nf3_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_nf3_field_meta`
--
ALTER TABLE `wp_nf3_field_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=552;

--
-- AUTO_INCREMENT for table `wp_nf3_forms`
--
ALTER TABLE `wp_nf3_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_nf3_form_meta`
--
ALTER TABLE `wp_nf3_form_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `wp_nf3_objects`
--
ALTER TABLE `wp_nf3_objects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nf3_object_meta`
--
ALTER TABLE `wp_nf3_object_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nf3_relationships`
--
ALTER TABLE `wp_nf3_relationships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=854;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1482;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
