-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 13 2020 г., 00:56
-- Версия сервера: 5.6.38
-- Версия PHP: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `A-WORDPRESS5`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-01-11 22:32:58', '2020-01-11 19:32:58', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 34, 'WooCommerce', '', '', '', '2020-01-12 16:35:28', '2020-01-12 13:35:28', 'Оплата по факту доставки. Статус заказа изменен с В ожидании оплаты на Обработка.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(3, 35, 'WooCommerce', '', '', '', '2020-01-12 20:16:16', '2020-01-12 17:16:16', 'Оплата по факту доставки. Статус заказа изменен с В ожидании оплаты на Обработка.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(4, 36, 'WooCommerce', '', '', '', '2020-01-12 22:25:11', '2020-01-12 19:25:11', 'Оплата по факту доставки. Статус заказа изменен с В ожидании оплаты на Обработка.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(5, 37, 'WooCommerce', '', '', '', '2020-01-12 23:33:22', '2020-01-12 20:33:22', 'Оплата по факту доставки. Статус заказа изменен с В ожидании оплаты на Обработка.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(6, 38, 'WooCommerce', '', '', '', '2020-01-12 23:34:44', '2020-01-12 20:34:44', 'Оплата по факту доставки. Статус заказа изменен с В ожидании оплаты на Обработка.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(7, 39, 'WooCommerce', '', '', '', '2020-01-12 23:39:08', '2020-01-12 20:39:08', 'Оплата по факту доставки. Статус заказа изменен с В ожидании оплаты на Обработка.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(8, 40, 'WooCommerce', '', '', '', '2020-01-13 00:41:12', '2020-01-12 21:41:12', 'Оплата по факту доставки. Статус заказа изменен с В ожидании оплаты на Обработка.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(9, 41, 'WooCommerce', '', '', '', '2020-01-13 00:41:55', '2020-01-12 21:41:55', 'Оплата по факту доставки. Статус заказа изменен с В ожидании оплаты на Обработка.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(10, 42, 'WooCommerce', '', '', '', '2020-01-13 00:55:15', '2020-01-12 21:55:15', 'Оплата по факту доставки. Статус заказа изменен с В ожидании оплаты на Обработка.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://a-wordpress5', 'yes'),
(2, 'home', 'http://a-wordpress5', 'yes'),
(3, 'blogname', 'WORDPRESS-SHOP', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'webdesign-x@bk.ru', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:167:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:46:\"brend/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pa_brend=$matches[1]&feed=$matches[2]\";s:41:\"brend/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pa_brend=$matches[1]&feed=$matches[2]\";s:22:\"brend/([^/]+)/embed/?$\";s:41:\"index.php?pa_brend=$matches[1]&embed=true\";s:34:\"brend/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pa_brend=$matches[1]&paged=$matches[2]\";s:16:\"brend/([^/]+)/?$\";s:30:\"index.php?pa_brend=$matches[1]\";s:46:\"czvet/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pa_czvet=$matches[1]&feed=$matches[2]\";s:41:\"czvet/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pa_czvet=$matches[1]&feed=$matches[2]\";s:22:\"czvet/([^/]+)/embed/?$\";s:41:\"index.php?pa_czvet=$matches[1]&embed=true\";s:34:\"czvet/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pa_czvet=$matches[1]&paged=$matches[2]\";s:16:\"czvet/([^/]+)/?$\";s:30:\"index.php?pa_czvet=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:41:\"advanced-custom-fields-pro-master/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:22:\"cyr2lat/cyr-to-lat.php\";i:3;s:21:\"imsanity/imsanity.php\";i:4;s:38:\"woocommerce-begateway/bt-begateway.php\";i:5;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'e-shop-grodno', 'yes'),
(41, 'stylesheet', 'e-shop-grodno', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
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
(66, 'image_default_link_type', 'file', 'yes'),
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
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1594323178', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'ru_RU', 'yes'),
(98, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"true_side\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:14:{i:1578866144;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1578866977;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1578868379;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1578868483;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1578879283;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1578900779;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1578943978;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1578943986;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1578943989;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1578944083;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1578944093;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1578949200;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1580774400;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:1:{s:22:\"gJCompd01P9HmvjBKCgOBW\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BRS0iBGdeLqpYZ6eWA2g.5P6CRY9OE1\";s:10:\"created_at\";i:1578773535;}}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"background_color\";s:3:\"fff\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1578771361;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(126, '_site_transient_timeout_browser_237aa6249591b6a7ad6962bc73492c77', '1579375988', 'no'),
(127, '_site_transient_browser_237aa6249591b6a7ad6962bc73492c77', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"79.0.3945.88\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(128, '_site_transient_timeout_php_check_7322ac3ae994a535cf43c2a90d17ee79', '1579375989', 'no'),
(129, '_site_transient_php_check_7322ac3ae994a535cf43c2a90d17ee79', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:1;}', 'no'),
(133, 'can_compress_scripts', '1', 'no'),
(144, '_transient_timeout_plugin_slugs', '1578943622', 'no'),
(145, '_transient_plugin_slugs', 'a:9:{i:0;s:41:\"advanced-custom-fields-pro-master/acf.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:33:\"classic-editor/classic-editor.php\";i:3;s:22:\"cyr2lat/cyr-to-lat.php\";i:4;s:9:\"hello.php\";i:5;s:21:\"imsanity/imsanity.php\";i:6;s:27:\"woocommerce/woocommerce.php\";i:7;s:38:\"woocommerce-begateway/bt-begateway.php\";i:8;s:37:\"woocommerce-products-filter/index.php\";}', 'no'),
(146, 'recently_activated', 'a:1:{s:37:\"woocommerce-products-filter/index.php\";i:1578828899;}', 'yes'),
(155, 'woocommerce_store_address', 'ул. Карла Маркса', 'yes'),
(156, 'woocommerce_store_address_2', 'ул. Карла Маркса', 'yes'),
(157, 'woocommerce_store_city', 'Гродно', 'yes'),
(158, 'woocommerce_default_country', 'BY', 'yes'),
(159, 'woocommerce_store_postcode', '230023', 'yes'),
(160, 'woocommerce_allowed_countries', 'all', 'yes'),
(161, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(162, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(163, 'woocommerce_ship_to_countries', 'all', 'yes'),
(164, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(165, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(166, 'woocommerce_calc_taxes', 'no', 'yes'),
(167, 'woocommerce_enable_coupons', 'yes', 'yes'),
(168, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(169, 'woocommerce_currency', 'BYN', 'yes'),
(170, 'woocommerce_currency_pos', 'right_space', 'yes'),
(171, 'woocommerce_price_thousand_sep', ',', 'yes'),
(172, 'woocommerce_price_decimal_sep', '.', 'yes'),
(173, 'woocommerce_price_num_decimals', '2', 'yes'),
(174, 'woocommerce_shop_page_id', '7', 'yes'),
(175, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(176, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(177, 'woocommerce_placeholder_image', '5', 'yes'),
(178, 'woocommerce_weight_unit', 'kg', 'yes'),
(179, 'woocommerce_dimension_unit', 'cm', 'yes'),
(180, 'woocommerce_enable_reviews', 'yes', 'yes'),
(181, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(182, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(183, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(184, 'woocommerce_review_rating_required', 'yes', 'no'),
(185, 'woocommerce_manage_stock', 'yes', 'yes'),
(186, 'woocommerce_hold_stock_minutes', '60', 'no'),
(187, 'woocommerce_notify_low_stock', 'yes', 'no'),
(188, 'woocommerce_notify_no_stock', 'yes', 'no'),
(189, 'woocommerce_stock_email_recipient', 'webdesign-x@bk.ru', 'no'),
(190, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(191, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(192, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(193, 'woocommerce_stock_format', '', 'yes'),
(194, 'woocommerce_file_download_method', 'force', 'no'),
(195, 'woocommerce_downloads_require_login', 'no', 'no'),
(196, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(197, 'woocommerce_prices_include_tax', 'no', 'yes'),
(198, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(199, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(200, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(201, 'woocommerce_tax_classes', '', 'yes'),
(202, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(203, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(204, 'woocommerce_price_display_suffix', '', 'yes'),
(205, 'woocommerce_tax_total_display', 'itemized', 'no'),
(206, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(207, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(208, 'woocommerce_ship_to_destination', 'billing_only', 'no'),
(209, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(210, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(211, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(212, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(213, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(214, 'woocommerce_registration_generate_username', 'yes', 'no'),
(215, 'woocommerce_registration_generate_password', 'yes', 'no'),
(216, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(217, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(218, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(219, 'woocommerce_registration_privacy_policy_text', 'Ваши личные данные будут использоваться для упрощения вашей работы с сайтом, управления доступом к вашей учётной записи и для других целей, описанных в нашей [privacy_policy].', 'yes'),
(220, 'woocommerce_checkout_privacy_policy_text', 'Ваши личные данные будут использоваться для обработки ваших заказов, упрощения вашей работы с сайтом и для других целей, описанных в нашей [privacy_policy].', 'yes'),
(221, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(222, 'woocommerce_trash_pending_orders', '', 'no'),
(223, 'woocommerce_trash_failed_orders', '', 'no'),
(224, 'woocommerce_trash_cancelled_orders', '', 'no'),
(225, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(226, 'woocommerce_email_from_name', 'WORDPRESS-SHOP', 'no'),
(227, 'woocommerce_email_from_address', 'webdesign-x@bk.ru', 'no'),
(228, 'woocommerce_email_header_image', '', 'no'),
(229, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(230, 'woocommerce_email_base_color', '#96588a', 'no'),
(231, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(232, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(233, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(234, 'woocommerce_cart_page_id', '8', 'no'),
(235, 'woocommerce_checkout_page_id', '9', 'no'),
(236, 'woocommerce_myaccount_page_id', '10', 'no'),
(237, 'woocommerce_terms_page_id', '', 'no'),
(238, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(239, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(240, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(241, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(242, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(243, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(244, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(245, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(246, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(247, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(248, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(249, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(250, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(251, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(252, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(253, 'woocommerce_api_enabled', 'no', 'yes'),
(254, 'woocommerce_allow_tracking', 'no', 'no'),
(255, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(256, 'woocommerce_single_image_width', '600', 'yes'),
(257, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(258, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(259, 'woocommerce_demo_store', 'no', 'no'),
(260, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(261, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(262, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(265, 'default_product_cat', '15', 'yes'),
(268, 'woocommerce_version', '3.8.1', 'yes'),
(269, 'woocommerce_db_version', '3.8.1', 'yes'),
(270, 'woocommerce_admin_notices', 'a:2:{i:0;s:20:\"no_secure_connection\";i:1;s:8:\"wc_admin\";}', 'yes'),
(271, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(272, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(273, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(274, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(275, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(276, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(277, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(278, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(279, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(280, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(281, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(282, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(283, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(288, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(289, '_transient_timeout_external_ip_address_127.0.0.1', '1579376085', 'no'),
(290, '_transient_external_ip_address_127.0.0.1', '37.212.51.15', 'no'),
(306, 'acf_version', '5.8.3', 'yes'),
(307, 'imsanity_max_width', '1920', 'no'),
(308, 'imsanity_max_height', '1920', 'no'),
(309, 'imsanity_max_width_library', '1920', 'no'),
(310, 'imsanity_max_height_library', '1920', 'no'),
(311, 'imsanity_max_width_other', '1920', 'no'),
(312, 'imsanity_max_height_other', '1920', 'no'),
(313, 'imsanity_png_to_jpg', '0', 'no'),
(314, 'imsanity_bmp_to_jpg', '1', 'no'),
(315, 'imsanity_quality', '82', 'no'),
(316, 'imsanity_deep_scan', '', 'no'),
(317, 'imsanity_version', '2.5.0', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(318, 'wp_installer_settings', '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', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(319, 'widget_woof_widget', 'a:2:{i:2;a:8:{s:5:\"title\";s:14:\"ФИЛЬТРЫ\";s:22:\"additional_text_before\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:24:\"woof_start_filtering_btn\";s:1:\"0\";s:11:\"ajax_redraw\";s:1:\"0\";s:12:\"btn_position\";s:1:\"b\";s:15:\"dynamic_recount\";s:2:\"-1\";s:10:\"autosubmit\";s:2:\"-1\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(320, 'woof_first_init', '1', 'yes'),
(321, 'woof_set_automatically', '0', 'yes'),
(322, 'woof_autosubmit', '1', 'yes'),
(323, 'woof_show_count', '1', 'yes'),
(324, 'woof_show_count_dynamic', '0', 'yes'),
(325, 'woof_hide_dynamic_empty_pos', '0', 'yes'),
(326, 'woof_try_ajax', '0', 'yes'),
(327, 'woof_checkboxes_slide', '1', 'yes'),
(328, 'woof_hide_red_top_panel', '0', 'yes'),
(329, 'woof_sort_terms_checked', '0', 'yes'),
(330, 'woof_filter_btn_txt', 'ПОИСК', 'yes'),
(331, 'woof_reset_btn_txt', 'CБРОС', 'yes'),
(332, 'woof_settings', 'a:54:{s:11:\"items_order\";s:0:\"\";s:8:\"tax_type\";a:5:{s:18:\"product_visibility\";s:5:\"radio\";s:11:\"product_cat\";s:5:\"radio\";s:11:\"product_tag\";s:5:\"radio\";s:8:\"pa_brend\";s:8:\"checkbox\";s:8:\"pa_czvet\";s:5:\"color\";}s:14:\"excluded_terms\";a:5:{s:18:\"product_visibility\";s:0:\"\";s:11:\"product_cat\";s:0:\"\";s:11:\"product_tag\";s:0:\"\";s:8:\"pa_brend\";s:0:\"\";s:8:\"pa_czvet\";s:0:\"\";}s:16:\"tax_block_height\";a:5:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:8:\"pa_brend\";s:1:\"0\";s:8:\"pa_czvet\";s:1:\"0\";}s:16:\"show_title_label\";a:5:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:8:\"pa_brend\";s:1:\"0\";s:8:\"pa_czvet\";s:1:\"0\";}s:18:\"show_toggle_button\";a:5:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:8:\"pa_brend\";s:1:\"0\";s:8:\"pa_czvet\";s:1:\"0\";}s:12:\"tooltip_text\";a:5:{s:18:\"product_visibility\";s:0:\"\";s:11:\"product_cat\";s:0:\"\";s:11:\"product_tag\";s:0:\"\";s:8:\"pa_brend\";s:0:\"\";s:8:\"pa_czvet\";s:0:\"\";}s:13:\"dispay_in_row\";a:5:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:8:\"pa_brend\";s:1:\"0\";s:8:\"pa_czvet\";s:1:\"0\";}s:7:\"orderby\";a:5:{s:18:\"product_visibility\";s:2:\"-1\";s:11:\"product_cat\";s:2:\"-1\";s:11:\"product_tag\";s:2:\"-1\";s:8:\"pa_brend\";s:2:\"-1\";s:8:\"pa_czvet\";s:2:\"-1\";}s:5:\"order\";a:5:{s:18:\"product_visibility\";s:3:\"ASC\";s:11:\"product_cat\";s:3:\"ASC\";s:11:\"product_tag\";s:3:\"ASC\";s:8:\"pa_brend\";s:3:\"ASC\";s:8:\"pa_czvet\";s:3:\"ASC\";}s:16:\"comparison_logic\";a:5:{s:18:\"product_visibility\";s:2:\"OR\";s:11:\"product_cat\";s:2:\"OR\";s:11:\"product_tag\";s:2:\"OR\";s:8:\"pa_brend\";s:2:\"OR\";s:8:\"pa_czvet\";s:2:\"OR\";}s:16:\"custom_tax_label\";a:5:{s:18:\"product_visibility\";s:0:\"\";s:11:\"product_cat\";s:0:\"\";s:11:\"product_tag\";s:0:\"\";s:8:\"pa_brend\";s:0:\"\";s:8:\"pa_czvet\";s:0:\"\";}s:23:\"not_toggled_terms_count\";a:5:{s:18:\"product_visibility\";s:0:\"\";s:11:\"product_cat\";s:0:\"\";s:11:\"product_tag\";s:0:\"\";s:8:\"pa_brend\";s:0:\"\";s:8:\"pa_czvet\";s:0:\"\";}s:12:\"show_tooltip\";a:5:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:8:\"pa_brend\";s:1:\"0\";s:8:\"pa_czvet\";s:1:\"0\";}s:10:\"show_title\";a:5:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:8:\"pa_brend\";s:1:\"0\";s:8:\"pa_czvet\";s:1:\"0\";}s:3:\"tax\";a:2:{s:8:\"pa_brend\";s:1:\"1\";s:8:\"pa_czvet\";s:1:\"1\";}s:5:\"color\";a:1:{s:8:\"pa_czvet\";a:1:{s:8:\"bezhevyj\";s:7:\"#ddba85\";}}s:9:\"color_img\";a:1:{s:8:\"pa_czvet\";a:1:{s:8:\"bezhevyj\";s:0:\"\";}}s:11:\"icheck_skin\";s:4:\"none\";s:12:\"overlay_skin\";s:7:\"default\";s:19:\"overlay_skin_bg_img\";s:0:\"\";s:18:\"plainoverlay_color\";s:0:\"\";s:25:\"default_overlay_skin_word\";s:0:\"\";s:10:\"use_chosen\";s:1:\"1\";s:17:\"use_beauty_scroll\";s:1:\"0\";s:15:\"ion_slider_skin\";s:8:\"skinNice\";s:11:\"use_tooltip\";s:1:\"1\";s:16:\"woof_tooltip_img\";s:0:\"\";s:25:\"woof_auto_hide_button_img\";s:0:\"\";s:25:\"woof_auto_hide_button_txt\";s:0:\"\";s:26:\"woof_auto_subcats_plus_img\";s:0:\"\";s:27:\"woof_auto_subcats_minus_img\";s:0:\"\";s:11:\"toggle_type\";s:4:\"text\";s:18:\"toggle_opened_text\";s:0:\"\";s:18:\"toggle_closed_text\";s:0:\"\";s:19:\"toggle_opened_image\";s:0:\"\";s:19:\"toggle_closed_image\";s:0:\"\";s:16:\"custom_front_css\";s:0:\"\";s:15:\"custom_css_code\";s:0:\"\";s:18:\"js_after_ajax_done\";s:0:\"\";s:20:\"init_only_on_reverse\";s:1:\"0\";s:12:\"init_only_on\";s:0:\"\";s:17:\"swoof_search_slug\";s:0:\"\";s:8:\"per_page\";s:2:\"-1\";s:17:\"optimize_js_files\";s:1:\"0\";s:20:\"override_no_products\";s:0:\"\";s:20:\"hide_terms_count_txt\";s:1:\"0\";s:25:\"listen_catalog_visibility\";s:1:\"0\";s:23:\"disable_swoof_influence\";s:1:\"0\";s:16:\"cache_count_data\";s:1:\"0\";s:11:\"cache_terms\";s:1:\"0\";s:19:\"show_woof_edit_view\";s:1:\"1\";s:22:\"custom_extensions_path\";s:0:\"\";s:20:\"activated_extensions\";a:1:{i:0;s:32:\"6b0a82f884ecf9931408549de66a147c\";}}', 'yes'),
(333, 'woof_version', '2.2.3', 'yes'),
(334, 'woof_alert', 'a:2:{s:29:\"woocommerce_currency_switcher\";s:0:\"\";s:23:\"woocommerce_bulk_editor\";s:0:\"\";}', 'no'),
(335, 'woof_alert_rev', '1578771316', 'yes'),
(336, 'installer_repositories_with_theme', 'a:1:{i:0;s:7:\"toolset\";}', 'yes'),
(337, 'current_theme', '', 'yes'),
(338, 'theme_mods_e-shop-grodno', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:6:\"bottom\";i:19;s:3:\"top\";i:16;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1578835488;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"true_side\";a:0:{}}}}', 'yes'),
(339, 'theme_switched', '', 'yes'),
(340, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(345, '_transient_timeout_fe8b639dd43747ac1f741ce4ed1a47b3', '1578915102', 'no'),
(346, '_transient_fe8b639dd43747ac1f741ce4ed1a47b3', 'a:1:{s:24:\"woof_last_search_request\";a:2:{s:5:\"swoof\";s:1:\"1\";s:7:\"orderby\";s:6:\"rating\";}}', 'no'),
(347, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(349, 'woocommerce_product_type', 'both', 'yes'),
(350, 'woocommerce_sell_in_person', '1', 'yes'),
(351, 'woocommerce_cheque_settings', 'a:4:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:29:\"Чековые платежи\";s:11:\"description\";s:215:\"Пожалуйста, отправьте ваш чек, указав данные магазина: название, улицу, город, область / район, страну, почтовый индекс.\";s:12:\"instructions\";s:0:\"\";}', 'yes'),
(352, 'woocommerce_bacs_settings', 'a:10:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:48:\"Прямой банковский перевод\";s:11:\"description\";s:324:\"Оплату нужно направлять напрямую на наш банковский счет. Используйте идентификатор заказа в качестве кода платежа. Заказ будет отправлен после поступления средств на наш счет.\";s:12:\"instructions\";s:0:\"\";s:12:\"account_name\";s:0:\"\";s:14:\"account_number\";s:0:\"\";s:9:\"sort_code\";s:0:\"\";s:9:\"bank_name\";s:0:\"\";s:4:\"iban\";s:0:\"\";s:3:\"bic\";s:0:\"\";}', 'yes'),
(353, 'woocommerce_cod_settings', 'a:6:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:36:\"Оплата при доставке\";s:11:\"description\";s:69:\"Оплата наличными при доставке заказа.\";s:12:\"instructions\";s:69:\"Оплата наличными при доставке заказа.\";s:18:\"enable_for_methods\";a:2:{i:0;s:11:\"flat_rate:3\";i:1;s:11:\"flat_rate:4\";}s:18:\"enable_for_virtual\";s:2:\"no\";}', 'yes'),
(354, '_transient_shipping-transient-version', '1578855960', 'yes'),
(358, '_transient_product_query-transient-version', '1578825108', 'yes'),
(362, '_transient_timeout_acf_plugin_updates', '1578944523', 'no'),
(363, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:41:\"advanced-custom-fields-pro-master/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.3.0\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";s:5:\"5.8.3\";}}', 'no'),
(365, 'product_cat_children', 'a:1:{i:17;a:1:{i:0;i:18;}}', 'yes'),
(370, '_transient_product-transient-version', '1578777030', 'yes'),
(377, '_transient_timeout_wc_shipping_method_count_legacy', '1581447961', 'no'),
(378, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:\"version\";s:10:\"1578855960\";s:5:\"value\";i:2;}', 'no'),
(398, 'category_children', 'a:0:{}', 'yes'),
(400, '_transient_wc_attribute_taxonomies', 'a:2:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:5:\"brend\";s:15:\"attribute_label\";s:10:\"Бренд\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"1\";}i:1;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"2\";s:14:\"attribute_name\";s:5:\"czvet\";s:15:\"attribute_label\";s:8:\"Цвет\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"1\";}}', 'yes'),
(415, 'recovery_mode_email_last_sent', '1578773535', 'yes'),
(420, '_transient_timeout_wc_related_20', '1578860843', 'no'),
(421, '_transient_wc_related_20', 'a:2:{s:50:\"limit=3&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=20\";a:1:{i:0;s:2:\"22\";}s:50:\"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=20\";a:1:{i:0;s:2:\"22\";}}', 'no'),
(433, 'theme_mods_freesia-empire', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:16;}s:27:\"freesiaempire_theme_options\";a:46:{s:24:\"freesiaempire_responsive\";s:2:\"on\";s:25:\"freesiaempire_animate_css\";s:2:\"on\";s:27:\"freesiaempire_design_layout\";s:11:\"wide-layout\";s:36:\"freesiaempire_sidebar_layout_options\";s:5:\"right\";s:30:\"freesiaempire_blog_layout_temp\";s:19:\"large_image_display\";s:27:\"freesiaempire_enable_slider\";s:9:\"frontpage\";s:31:\"freesiaempire_transition_effect\";s:4:\"fade\";s:30:\"freesiaempire_transition_delay\";s:1:\"4\";s:33:\"freesiaempire_transition_duration\";s:1:\"1\";s:34:\"freesiaempire_search_custom_header\";i:0;s:36:\"freesiaempire-img-upload-header-logo\";s:0:\"\";s:28:\"freesiaempire_header_display\";s:11:\"header_text\";s:24:\"freesiaempire_categories\";a:0:{}s:24:\"freesiaempire_custom_css\";s:0:\"\";s:20:\"freesiaempire_scroll\";i:0;s:35:\"freesiaempire_custom_header_options\";s:8:\"homepage\";s:25:\"freesiaempire_slider_link\";i:0;s:22:\"freesiaempire_tag_text\";s:9:\"Read More\";s:28:\"freesiaempire_excerpt_length\";s:2:\"65\";s:31:\"freesiaempire_single_post_image\";s:3:\"off\";s:23:\"freesiaempire_reset_all\";i:0;s:24:\"freesiaempire_stick_menu\";i:0;s:29:\"freesiaempire_blog_post_image\";s:2:\"on\";s:31:\"freesiaempire_entry_format_blog\";s:4:\"show\";s:25:\"freesiaempire_search_text\";s:15:\"Search &hellip;\";s:25:\"freesiaempire_slider_type\";s:14:\"default_slider\";s:33:\"freesiaempire_slider_textposition\";s:5:\"right\";s:23:\"freesiaempire_slider_no\";s:1:\"4\";s:27:\"freesiaempire_slider_button\";i:0;s:28:\"freesiaempire_total_features\";s:1:\"3\";s:28:\"freesiaempire_features_title\";s:0:\"\";s:34:\"freesiaempire_features_description\";s:0:\"\";s:30:\"freesiaempire_disable_features\";i:0;s:34:\"freesiaempire_display_header_image\";s:3:\"top\";s:40:\"freesiaempire_disable_features_alterpage\";i:0;s:35:\"freesiaempire_footer_column_section\";s:1:\"4\";s:29:\"freesiaempire_entry_meta_blog\";s:9:\"show-meta\";s:28:\"freesiaempire_slider_content\";s:2:\"on\";s:30:\"freesiaempire_top_social_icons\";i:0;s:33:\"freesiaempire_buttom_social_icons\";i:0;s:27:\"freesiaempire_menu_position\";s:6:\"middle\";s:26:\"freesiaempire_logo_display\";s:4:\"left\";s:33:\"freesiaempire_blog_content_layout\";s:0:\"\";s:33:\"freesiaempire_blog_header_display\";s:4:\"show\";s:41:\"freesiaempire_display_page_featured_image\";i:0;s:33:\"freesiaempire_crop_excerpt_length\";i:1;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1578836098;s:4:\"data\";a:11:{s:19:\"wp_inactive_widgets\";a:0:{}s:26:\"freesiaempire_main_sidebar\";a:0:{}s:25:\"freesiaempire_header_info\";a:0:{}s:36:\"freesiaempire_corporate_page_sidebar\";a:0:{}s:34:\"freesiaempire_contact_page_sidebar\";a:0:{}s:35:\"freesiaempire_form_for_contact_page\";a:0:{}s:22:\"freesiaempire_footer_1\";a:0:{}s:22:\"freesiaempire_footer_2\";a:0:{}s:22:\"freesiaempire_footer_3\";a:0:{}s:22:\"freesiaempire_footer_4\";a:0:{}s:33:\"freesiaempire_woocommerce_sidebar\";a:0:{}}}}', 'yes'),
(434, 'widget_freesiaempire_contact_widgets', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(435, 'widget_freesiaempire_post_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(436, 'widget_freesiaempire_testimonial', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(437, 'widget_freesiaempire_portfolio_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(447, '_transient_timeout_wc_related_22', '1578861444', 'no'),
(448, '_transient_wc_related_22', 'a:1:{s:50:\"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=22\";a:1:{i:0;s:2:\"20\";}}', 'no'),
(489, '_transient_timeout_wc_term_counts', '1581369032', 'no'),
(490, '_transient_wc_term_counts', 'a:2:{i:17;s:1:\"3\";i:18;s:1:\"3\";}', 'no'),
(585, '_transient_timeout__woocommerce_helper_updates', '1578863173', 'no'),
(586, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1578819973;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(588, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1578857586;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(589, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1578857588;s:7:\"checked\";a:5:{s:13:\"e-shop-grodno\";s:0:\"\";s:14:\"freesia-empire\";s:7:\"1.3.0.5\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(648, '_transient_timeout_wc_shipping_method_count', '1581441299', 'no'),
(649, '_transient_wc_shipping_method_count', 'a:2:{s:7:\"version\";s:10:\"1578836431\";s:5:\"value\";i:2;}', 'no'),
(782, 'woocommerce_flat_rate_3_settings', 'a:3:{s:5:\"title\";s:33:\"Доставка курьером\";s:10:\"tax_status\";s:4:\"none\";s:4:\"cost\";s:1:\"0\";}', 'yes'),
(783, 'woocommerce_flat_rate_4_settings', 'a:3:{s:5:\"title\";s:37:\"Наложенным платежом\";s:10:\"tax_status\";s:4:\"none\";s:4:\"cost\";s:2:\"30\";}', 'yes'),
(822, 'woocommerce_gateway_order', 'a:5:{s:4:\"bacs\";i:0;s:6:\"cheque\";i:1;s:3:\"cod\";i:2;s:6:\"paypal\";i:3;s:9:\"begateway\";i:4;}', 'yes'),
(824, 'woocommerce_paypal_settings', 'a:23:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:205:\"Оплата через PayPal; вы сможете произвести оплату с помощью банковской карты, если у вас нет аккаунта в системе PayPal.\";s:5:\"email\";s:17:\"webdesign-x@bk.ru\";s:8:\"advanced\";s:0:\"\";s:8:\"testmode\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:16:\"ipn_notification\";s:3:\"yes\";s:14:\"receiver_email\";s:17:\"webdesign-x@bk.ru\";s:14:\"identity_token\";s:0:\"\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:13:\"send_shipping\";s:3:\"yes\";s:16:\"address_override\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:10:\"page_style\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";}', 'yes'),
(836, '_transient_orders-transient-version', '1578866116', 'yes'),
(837, '_transient_timeout_wc_order_34_needs_processing', '1578922526', 'no'),
(838, '_transient_wc_order_34_needs_processing', '1', 'no'),
(945, '_transient_timeout_wc_order_35_needs_processing', '1578935775', 'no'),
(946, '_transient_wc_order_35_needs_processing', '1', 'no'),
(1054, '_transient_timeout_wc_order_36_needs_processing', '1578943511', 'no'),
(1055, '_transient_wc_order_36_needs_processing', '1', 'no'),
(1061, '_site_transient_timeout_theme_roots', '1578858975', 'no'),
(1062, '_site_transient_theme_roots', 'a:5:{s:13:\"e-shop-grodno\";s:7:\"/themes\";s:14:\"freesia-empire\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(1071, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1578857589;s:7:\"checked\";a:9:{s:41:\"advanced-custom-fields-pro-master/acf.php\";s:5:\"5.8.3\";s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:22:\"cyr2lat/cyr-to-lat.php\";s:5:\"4.3.2\";s:9:\"hello.php\";s:5:\"1.7.2\";s:21:\"imsanity/imsanity.php\";s:5:\"2.5.0\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.8.1\";s:38:\"woocommerce-begateway/bt-begateway.php\";s:5:\"1.3.7\";s:37:\"woocommerce-products-filter/index.php\";s:5:\"2.2.3\";}s:8:\"response\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:41:\"advanced-custom-fields-pro-master/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.3.0\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:22:\"cyr2lat/cyr-to-lat.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/cyr2lat\";s:4:\"slug\";s:7:\"cyr2lat\";s:6:\"plugin\";s:22:\"cyr2lat/cyr-to-lat.php\";s:11:\"new_version\";s:5:\"4.3.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/cyr2lat/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/cyr2lat.4.3.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/cyr2lat/assets/icon-256x256.jpg?rev=2022835\";s:2:\"1x\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2022835\";s:3:\"svg\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2022835\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/cyr2lat/assets/banner-1544x500.png?rev=2022835\";s:2:\"1x\";s:62:\"https://ps.w.org/cyr2lat/assets/banner-772x250.png?rev=2022835\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:21:\"imsanity/imsanity.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:22:\"w.org/plugins/imsanity\";s:4:\"slug\";s:8:\"imsanity\";s:6:\"plugin\";s:21:\"imsanity/imsanity.php\";s:11:\"new_version\";s:5:\"2.5.0\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/imsanity/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/imsanity.2.5.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:61:\"https://ps.w.org/imsanity/assets/icon-256x256.png?rev=1094749\";s:2:\"1x\";s:61:\"https://ps.w.org/imsanity/assets/icon-128x128.png?rev=1170755\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:62:\"https://ps.w.org/imsanity/assets/banner-772x250.png?rev=900541\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.8.1\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.8.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"woocommerce-products-filter/index.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:41:\"w.org/plugins/woocommerce-products-filter\";s:4:\"slug\";s:27:\"woocommerce-products-filter\";s:6:\"plugin\";s:37:\"woocommerce-products-filter/index.php\";s:11:\"new_version\";s:5:\"1.2.3\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/woocommerce-products-filter/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/woocommerce-products-filter.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/woocommerce-products-filter/assets/icon-256x256.png?rev=1208073\";s:2:\"1x\";s:80:\"https://ps.w.org/woocommerce-products-filter/assets/icon-128x128.png?rev=1208072\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:82:\"https://ps.w.org/woocommerce-products-filter/assets/banner-772x250.png?rev=2071519\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(1096, 'woocommerce_begateway_settings', 'a:17:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:31:\"Банковская карта\";s:11:\"admin_title\";s:32:\"BePaid Онлайн платеж\";s:11:\"description\";s:16:\"VISA, MasterCard\";s:7:\"shop-id\";s:3:\"361\";s:10:\"secret-key\";s:64:\"b8647b68898b084b836474ed8d61ffe117c9a01168d867f24953b776ddcb134d\";s:14:\"domain-gateway\";s:26:\"demo-gateway.begateway.com\";s:15:\"domain-checkout\";s:22:\"checkout.begateway.com\";s:16:\"transaction_type\";s:7:\"payment\";s:15:\"enable_bankcard\";s:3:\"yes\";s:21:\"enable_bankcard_halva\";s:2:\"no\";s:11:\"enable_erip\";s:2:\"no\";s:15:\"erip_service_no\";s:8:\"99999999\";s:13:\"payment_valid\";s:2:\"60\";s:22:\"show-transaction-table\";s:3:\"yes\";s:4:\"mode\";s:4:\"test\";s:5:\"debug\";s:2:\"no\";}', 'yes'),
(1115, '_transient_timeout_wc_order_37_needs_processing', '1578947601', 'no'),
(1116, '_transient_wc_order_37_needs_processing', '1', 'no'),
(1118, '_transient_timeout_wc_order_38_needs_processing', '1578947684', 'no'),
(1119, '_transient_wc_order_38_needs_processing', '1', 'no'),
(1125, '_transient_timeout_wc_order_39_needs_processing', '1578947948', 'no'),
(1126, '_transient_wc_order_39_needs_processing', '1', 'no'),
(1177, '_transient_timeout_wc_order_40_needs_processing', '1578951672', 'no'),
(1178, '_transient_wc_order_40_needs_processing', '1', 'no'),
(1180, '_transient_timeout_wc_order_41_needs_processing', '1578951715', 'no'),
(1181, '_transient_wc_order_41_needs_processing', '1', 'no'),
(1184, '_transient_timeout_wc_order_42_needs_processing', '1578952515', 'no'),
(1185, '_transient_wc_order_42_needs_processing', '1', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', 'woocommerce-placeholder.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 6, '_menu_item_type', 'custom'),
(6, 6, '_menu_item_menu_item_parent', '0'),
(7, 6, '_menu_item_object_id', '6'),
(8, 6, '_menu_item_object', 'custom'),
(9, 6, '_menu_item_target', ''),
(10, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(11, 6, '_menu_item_xfn', ''),
(12, 6, '_menu_item_url', 'http://a-wordpress5/'),
(13, 6, '_menu_item_orphaned', '1578771428'),
(14, 11, '_menu_item_type', 'post_type'),
(15, 11, '_menu_item_menu_item_parent', '0'),
(16, 11, '_menu_item_object_id', '8'),
(17, 11, '_menu_item_object', 'page'),
(18, 11, '_menu_item_target', ''),
(19, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(20, 11, '_menu_item_xfn', ''),
(21, 11, '_menu_item_url', ''),
(23, 12, '_menu_item_type', 'post_type'),
(24, 12, '_menu_item_menu_item_parent', '0'),
(25, 12, '_menu_item_object_id', '7'),
(26, 12, '_menu_item_object', 'page'),
(27, 12, '_menu_item_target', ''),
(28, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(29, 12, '_menu_item_xfn', ''),
(30, 12, '_menu_item_url', ''),
(32, 3, '_wp_trash_meta_status', 'draft'),
(33, 3, '_wp_trash_meta_time', '1578771564'),
(34, 3, '_wp_desired_post_slug', 'privacy-policy'),
(35, 2, '_wp_trash_meta_status', 'publish'),
(36, 2, '_wp_trash_meta_time', '1578771565'),
(37, 2, '_wp_desired_post_slug', 'sample-page'),
(38, 15, '_edit_last', '1'),
(39, 15, '_edit_lock', '1578771440:1'),
(40, 15, '_wp_page_template', 'home.php'),
(41, 17, '_menu_item_type', 'post_type'),
(42, 17, '_menu_item_menu_item_parent', '0'),
(43, 17, '_menu_item_object_id', '15'),
(44, 17, '_menu_item_object', 'page'),
(45, 17, '_menu_item_target', ''),
(46, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(47, 17, '_menu_item_xfn', ''),
(48, 17, '_menu_item_url', ''),
(50, 18, '_menu_item_type', 'taxonomy'),
(51, 18, '_menu_item_menu_item_parent', '0'),
(52, 18, '_menu_item_object_id', '17'),
(53, 18, '_menu_item_object', 'product_cat'),
(54, 18, '_menu_item_target', ''),
(55, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(56, 18, '_menu_item_xfn', ''),
(57, 18, '_menu_item_url', ''),
(59, 19, '_menu_item_type', 'taxonomy'),
(60, 19, '_menu_item_menu_item_parent', '18'),
(61, 19, '_menu_item_object_id', '18'),
(62, 19, '_menu_item_object', 'product_cat'),
(63, 19, '_menu_item_target', ''),
(64, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(65, 19, '_menu_item_xfn', ''),
(66, 19, '_menu_item_url', ''),
(68, 20, '_edit_last', '1'),
(69, 20, '_edit_lock', '1578772440:1'),
(70, 21, '_wp_attached_file', '2020/01/db45a3059e-1.jpg'),
(71, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:1080;s:4:\"file\";s:24:\"2020/01/db45a3059e-1.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"db45a3059e-1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"db45a3059e-1-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"db45a3059e-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"db45a3059e-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"db45a3059e-1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"db45a3059e-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"db45a3059e-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"db45a3059e-1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"db45a3059e-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(72, 20, '_thumbnail_id', '21'),
(73, 20, '_wp_page_template', 'default'),
(74, 20, '_regular_price', '100'),
(75, 20, '_sale_price', '33'),
(76, 20, 'total_sales', '2'),
(77, 20, '_tax_status', 'taxable'),
(78, 20, '_tax_class', ''),
(79, 20, '_manage_stock', 'no'),
(80, 20, '_backorders', 'no'),
(81, 20, '_sold_individually', 'no'),
(82, 20, '_virtual', 'no'),
(83, 20, '_downloadable', 'no'),
(84, 20, '_download_limit', '-1'),
(85, 20, '_download_expiry', '-1'),
(86, 20, '_stock', NULL),
(87, 20, '_stock_status', 'instock'),
(88, 20, '_wc_average_rating', '0'),
(89, 20, '_wc_review_count', '0'),
(90, 20, '_product_version', '3.8.1'),
(91, 20, '_price', '33'),
(92, 20, '_product_image_gallery', '21'),
(93, 22, '_edit_last', '1'),
(94, 22, '_edit_lock', '1578772307:1'),
(95, 23, '_wp_attached_file', '2020/01/bbc74612c5-1.jpg'),
(96, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:1080;s:4:\"file\";s:24:\"2020/01/bbc74612c5-1.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"bbc74612c5-1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"bbc74612c5-1-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"bbc74612c5-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"bbc74612c5-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"bbc74612c5-1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"bbc74612c5-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"bbc74612c5-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"bbc74612c5-1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"bbc74612c5-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(97, 24, '_wp_attached_file', '2020/01/e30d310e6f-4.jpg'),
(98, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:1080;s:4:\"file\";s:24:\"2020/01/e30d310e6f-4.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"e30d310e6f-4-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"e30d310e6f-4-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"e30d310e6f-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"e30d310e6f-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"e30d310e6f-4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"e30d310e6f-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"e30d310e6f-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"e30d310e6f-4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"e30d310e6f-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(99, 22, '_thumbnail_id', '24'),
(100, 22, '_wp_page_template', 'default'),
(101, 22, '_regular_price', '300'),
(102, 22, '_sale_price', '277'),
(103, 22, 'total_sales', '0'),
(104, 22, '_tax_status', 'taxable'),
(105, 22, '_tax_class', ''),
(106, 22, '_manage_stock', 'no'),
(107, 22, '_backorders', 'no'),
(108, 22, '_sold_individually', 'no'),
(109, 22, '_virtual', 'no'),
(110, 22, '_downloadable', 'no'),
(111, 22, '_download_limit', '-1'),
(112, 22, '_download_expiry', '-1'),
(113, 22, '_stock', NULL),
(114, 22, '_stock_status', 'instock'),
(115, 22, '_wc_average_rating', '0'),
(116, 22, '_wc_review_count', '0'),
(117, 22, '_product_version', '3.8.1'),
(118, 22, '_price', '277'),
(119, 22, '_product_image_gallery', '24,23'),
(120, 8, '_edit_lock', '1578824397:1'),
(121, 8, '_edit_last', '1'),
(122, 8, '_wp_page_template', 'templates/cart.php'),
(123, 22, '_product_attributes', 'a:2:{s:8:\"pa_brend\";a:6:{s:4:\"name\";s:8:\"pa_brend\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:8:\"pa_czvet\";a:6:{s:4:\"name\";s:8:\"pa_czvet\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(124, 26, '_edit_last', '1'),
(125, 26, '_edit_lock', '1578772290:1'),
(126, 22, 'populyarnyj', '1'),
(127, 22, '_populyarnyj', 'field_5e1a277d872d7'),
(128, 20, 'populyarnyj', '1'),
(129, 20, '_populyarnyj', 'field_5e1a277d872d7'),
(130, 28, '_edit_last', '1'),
(131, 28, '_edit_lock', '1578777019:1'),
(132, 28, '_wp_page_template', 'default'),
(133, 28, '_regular_price', '78'),
(134, 28, 'total_sales', '17'),
(135, 28, '_tax_status', 'taxable'),
(136, 28, '_tax_class', ''),
(137, 28, '_manage_stock', 'no'),
(138, 28, '_backorders', 'no'),
(139, 28, '_sold_individually', 'no'),
(140, 28, '_virtual', 'no'),
(141, 28, '_downloadable', 'no'),
(142, 28, '_download_limit', '-1'),
(143, 28, '_download_expiry', '-1'),
(144, 28, '_stock', NULL),
(145, 28, '_stock_status', 'instock'),
(146, 28, '_wc_average_rating', '0'),
(147, 28, '_wc_review_count', '0'),
(148, 28, '_product_version', '3.8.1'),
(149, 28, '_price', '78'),
(150, 28, 'populyarnyj', '0'),
(151, 28, '_populyarnyj', 'field_5e1a277d872d7'),
(152, 28, '_thumbnail_id', '21'),
(153, 9, '_edit_lock', '1578828750:1'),
(154, 9, '_edit_last', '1'),
(155, 9, '_wp_page_template', 'templates/checkout.php'),
(156, 30, '_edit_last', '1'),
(157, 30, '_wp_page_template', 'default'),
(158, 30, '_edit_lock', '1578825706:1'),
(159, 32, '_menu_item_type', 'post_type'),
(160, 32, '_menu_item_menu_item_parent', '0'),
(161, 32, '_menu_item_object_id', '30'),
(162, 32, '_menu_item_object', 'page'),
(163, 32, '_menu_item_target', ''),
(164, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(165, 32, '_menu_item_xfn', ''),
(166, 32, '_menu_item_url', ''),
(168, 34, '_order_key', 'wc_order_15MAYHkaEQl0b'),
(169, 34, '_customer_user', '1'),
(170, 34, '_payment_method', 'cod'),
(171, 34, '_payment_method_title', 'Оплата при доставке'),
(172, 34, '_customer_ip_address', '127.0.0.1'),
(173, 34, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36'),
(174, 34, '_created_via', 'checkout'),
(175, 34, '_cart_hash', 'cfb913f4cbc90ebbcb829a9e8db80c80'),
(176, 34, '_billing_state', '*'),
(177, 34, '_billing_country', 'BY'),
(178, 34, '_billing_email', 'webdesign-x@bk.ru'),
(179, 34, '_billing_phone', '4325435432525'),
(180, 34, '_shipping_state', '*'),
(181, 34, '_shipping_country', 'BY'),
(182, 34, '_order_currency', 'BYN'),
(183, 34, '_cart_discount', '0'),
(184, 34, '_cart_discount_tax', '0'),
(185, 34, '_order_shipping', '30.00'),
(186, 34, '_order_shipping_tax', '0'),
(187, 34, '_order_tax', '0'),
(188, 34, '_order_total', '564.00'),
(189, 34, '_order_version', '3.8.1'),
(190, 34, '_prices_include_tax', 'no'),
(191, 34, '_billing_address_index', '      *  BY webdesign-x@bk.ru 4325435432525'),
(192, 34, '_shipping_address_index', '      *  BY'),
(193, 34, 'is_vat_exempt', 'no'),
(194, 34, '_download_permissions_granted', 'yes'),
(195, 34, '_recorded_sales', 'yes'),
(196, 34, '_recorded_coupon_usage_counts', 'yes'),
(197, 34, '_order_stock_reduced', 'yes'),
(198, 35, '_order_key', 'wc_order_mGdwDVYXnvLvc'),
(199, 35, '_customer_user', '1'),
(200, 35, '_payment_method', 'cod'),
(201, 35, '_payment_method_title', 'Оплата при доставке'),
(202, 35, '_customer_ip_address', '127.0.0.1'),
(203, 35, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36'),
(204, 35, '_created_via', 'checkout'),
(205, 35, '_cart_hash', 'e90eda7ac45797ee90a0b1b2fdfb194e'),
(206, 35, '_billing_email', 'dsf@gh.jk'),
(207, 35, '_billing_phone', '325345325'),
(208, 35, '_order_currency', 'BYN'),
(209, 35, '_cart_discount', '0'),
(210, 35, '_cart_discount_tax', '0'),
(211, 35, '_order_shipping', '30.00'),
(212, 35, '_order_shipping_tax', '0'),
(213, 35, '_order_tax', '0'),
(214, 35, '_order_total', '108.00'),
(215, 35, '_order_version', '3.8.1'),
(216, 35, '_prices_include_tax', 'no'),
(217, 35, '_billing_address_index', '         dsf@gh.jk 325345325'),
(218, 35, '_shipping_address_index', '        '),
(219, 35, 'is_vat_exempt', 'no'),
(220, 35, '_download_permissions_granted', 'yes'),
(221, 35, '_recorded_sales', 'yes'),
(222, 35, '_recorded_coupon_usage_counts', 'yes'),
(223, 35, '_order_stock_reduced', 'yes'),
(224, 36, '_order_key', 'wc_order_7jlYXRB3uiP4G'),
(225, 36, '_customer_user', '1'),
(226, 36, '_payment_method', 'cod'),
(227, 36, '_payment_method_title', 'Оплата при доставке'),
(228, 36, '_customer_ip_address', '127.0.0.1'),
(229, 36, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36'),
(230, 36, '_created_via', 'checkout'),
(231, 36, '_cart_hash', 'ff8f14f25978fd0d6c509050c898dd83'),
(232, 36, '_billing_email', 'dsf@gh.jk'),
(233, 36, '_billing_phone', '54643564356'),
(234, 36, '_order_currency', 'BYN'),
(235, 36, '_cart_discount', '0'),
(236, 36, '_cart_discount_tax', '0'),
(237, 36, '_order_shipping', '0.00'),
(238, 36, '_order_shipping_tax', '0'),
(239, 36, '_order_tax', '0'),
(240, 36, '_order_total', '78.00'),
(241, 36, '_order_version', '3.8.1'),
(242, 36, '_prices_include_tax', 'no'),
(243, 36, '_billing_address_index', '         dsf@gh.jk 54643564356'),
(244, 36, '_shipping_address_index', '        '),
(245, 36, 'is_vat_exempt', 'no'),
(246, 36, '_download_permissions_granted', 'yes'),
(247, 36, '_recorded_sales', 'yes'),
(248, 36, '_recorded_coupon_usage_counts', 'yes'),
(249, 36, '_order_stock_reduced', 'yes'),
(250, 37, '_order_key', 'wc_order_cqBAX9hgxDbFp'),
(251, 37, '_customer_user', '1'),
(252, 37, '_payment_method', 'cod'),
(253, 37, '_payment_method_title', 'Оплата при доставке'),
(254, 37, '_customer_ip_address', '127.0.0.1'),
(255, 37, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36'),
(256, 37, '_created_via', 'checkout'),
(257, 37, '_cart_hash', 'ff8f14f25978fd0d6c509050c898dd83'),
(258, 37, '_billing_email', 'dsf@gh.jk'),
(259, 37, '_billing_phone', '432543252'),
(260, 37, '_order_currency', 'BYN'),
(261, 37, '_cart_discount', '0'),
(262, 37, '_cart_discount_tax', '0'),
(263, 37, '_order_shipping', '0.00'),
(264, 37, '_order_shipping_tax', '0'),
(265, 37, '_order_tax', '0'),
(266, 37, '_order_total', '78.00'),
(267, 37, '_order_version', '3.8.1'),
(268, 37, '_prices_include_tax', 'no'),
(269, 37, '_billing_address_index', '   dasfasdf      dsf@gh.jk 432543252'),
(270, 37, '_shipping_address_index', '   dasfasdf     '),
(271, 37, 'is_vat_exempt', 'no'),
(272, 37, 'is_vat_exempt', 'no'),
(273, 37, '_billing_address_1', 'dasfasdf'),
(274, 37, '_shipping_address_1', 'dasfasdf'),
(275, 37, '_download_permissions_granted', 'yes'),
(276, 37, '_recorded_sales', 'yes'),
(277, 37, '_recorded_coupon_usage_counts', 'yes'),
(278, 37, '_order_stock_reduced', 'yes'),
(279, 38, '_order_key', 'wc_order_ihLIZKMiWvk0Q'),
(280, 38, '_customer_user', '1'),
(281, 38, '_payment_method', 'cod'),
(282, 38, '_payment_method_title', 'Оплата при доставке'),
(283, 38, '_customer_ip_address', '127.0.0.1'),
(284, 38, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36'),
(285, 38, '_created_via', 'checkout'),
(286, 38, '_cart_hash', 'ff8f14f25978fd0d6c509050c898dd83'),
(287, 38, '_billing_email', 'dsf@gh.jk'),
(288, 38, '_billing_phone', '435'),
(289, 38, '_order_currency', 'BYN'),
(290, 38, '_cart_discount', '0'),
(291, 38, '_cart_discount_tax', '0'),
(292, 38, '_order_shipping', '0.00'),
(293, 38, '_order_shipping_tax', '0'),
(294, 38, '_order_tax', '0'),
(295, 38, '_order_total', '78.00'),
(296, 38, '_order_version', '3.8.1'),
(297, 38, '_prices_include_tax', 'no'),
(298, 38, '_billing_address_index', '         dsf@gh.jk 435'),
(299, 38, '_shipping_address_index', '        '),
(300, 38, 'is_vat_exempt', 'no'),
(301, 38, '_download_permissions_granted', 'yes'),
(302, 38, '_recorded_sales', 'yes'),
(303, 38, '_recorded_coupon_usage_counts', 'yes'),
(304, 38, '_order_stock_reduced', 'yes'),
(305, 39, '_order_key', 'wc_order_UAAIMTUUoBw4U'),
(306, 39, '_customer_user', '1'),
(307, 39, '_payment_method', 'cod'),
(308, 39, '_payment_method_title', 'Оплата при доставке'),
(309, 39, '_customer_ip_address', '127.0.0.1'),
(310, 39, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36'),
(311, 39, '_created_via', 'checkout'),
(312, 39, '_cart_hash', 'ff8f14f25978fd0d6c509050c898dd83'),
(313, 39, '_billing_email', 'dsf@gh.jk'),
(314, 39, '_billing_phone', '524353245'),
(315, 39, '_order_currency', 'BYN'),
(316, 39, '_cart_discount', '0'),
(317, 39, '_cart_discount_tax', '0'),
(318, 39, '_order_shipping', '0.00'),
(319, 39, '_order_shipping_tax', '0'),
(320, 39, '_order_tax', '0'),
(321, 39, '_order_total', '78.00'),
(322, 39, '_order_version', '3.8.1'),
(323, 39, '_prices_include_tax', 'no'),
(324, 39, '_billing_address_index', '         dsf@gh.jk 524353245'),
(325, 39, '_shipping_address_index', '        '),
(326, 39, 'is_vat_exempt', 'no'),
(327, 39, '_download_permissions_granted', 'yes'),
(328, 39, '_recorded_sales', 'yes'),
(329, 39, '_recorded_coupon_usage_counts', 'yes'),
(330, 39, '_order_stock_reduced', 'yes'),
(331, 40, '_order_key', 'wc_order_PIlsY0gAyB7pn'),
(332, 40, '_customer_user', '1'),
(333, 40, '_payment_method', 'cod'),
(334, 40, '_payment_method_title', 'Оплата при доставке'),
(335, 40, '_customer_ip_address', '127.0.0.1'),
(336, 40, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36'),
(337, 40, '_created_via', 'checkout'),
(338, 40, '_cart_hash', 'ff8f14f25978fd0d6c509050c898dd83'),
(339, 40, '_billing_email', 'dsf@gh.jk'),
(340, 40, '_billing_phone', '123453252435'),
(341, 40, '_order_currency', 'BYN'),
(342, 40, '_cart_discount', '0'),
(343, 40, '_cart_discount_tax', '0'),
(344, 40, '_order_shipping', '0.00'),
(345, 40, '_order_shipping_tax', '0'),
(346, 40, '_order_tax', '0'),
(347, 40, '_order_total', '78.00'),
(348, 40, '_order_version', '3.8.1'),
(349, 40, '_prices_include_tax', 'no'),
(350, 40, '_billing_address_index', '         dsf@gh.jk 123453252435'),
(351, 40, '_shipping_address_index', '        '),
(352, 40, 'is_vat_exempt', 'no'),
(353, 40, 'is_vat_exempt', 'no'),
(354, 40, '_download_permissions_granted', 'yes'),
(355, 40, '_recorded_sales', 'yes'),
(356, 40, '_recorded_coupon_usage_counts', 'yes'),
(357, 40, '_order_stock_reduced', 'yes'),
(358, 41, '_order_key', 'wc_order_oR2phpckMyztA'),
(359, 41, '_customer_user', '1'),
(360, 41, '_payment_method', 'cod'),
(361, 41, '_payment_method_title', 'Оплата при доставке'),
(362, 41, '_customer_ip_address', '127.0.0.1'),
(363, 41, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36'),
(364, 41, '_created_via', 'checkout'),
(365, 41, '_cart_hash', '0eb015143bfd74a937db0edd2ac119c6'),
(366, 41, '_billing_first_name', 'Александр'),
(367, 41, '_billing_address_1', 'ул. Карла Маркса'),
(368, 41, '_billing_email', 'dsf@gh.jk'),
(369, 41, '_billing_phone', '4356532643563456'),
(370, 41, '_shipping_first_name', 'Александр'),
(371, 41, '_shipping_address_1', 'ул. Карла Маркса'),
(372, 41, '_order_currency', 'BYN'),
(373, 41, '_cart_discount', '0'),
(374, 41, '_cart_discount_tax', '0'),
(375, 41, '_order_shipping', '30.00'),
(376, 41, '_order_shipping_tax', '0'),
(377, 41, '_order_tax', '0'),
(378, 41, '_order_total', '264.00'),
(379, 41, '_order_version', '3.8.1'),
(380, 41, '_prices_include_tax', 'no'),
(381, 41, '_billing_address_index', 'Александр   ул. Карла Маркса      dsf@gh.jk 4356532643563456'),
(382, 41, '_shipping_address_index', 'Александр   ул. Карла Маркса     '),
(383, 41, 'is_vat_exempt', 'no'),
(384, 41, '_download_permissions_granted', 'yes'),
(385, 41, '_recorded_sales', 'yes'),
(386, 41, '_recorded_coupon_usage_counts', 'yes'),
(387, 41, '_order_stock_reduced', 'yes'),
(388, 42, '_order_key', 'wc_order_laCn1jytRLAm5'),
(389, 42, '_customer_user', '1'),
(390, 42, '_payment_method', 'cod'),
(391, 42, '_payment_method_title', 'Оплата при доставке'),
(392, 42, '_customer_ip_address', '127.0.0.1'),
(393, 42, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36'),
(394, 42, '_created_via', 'checkout'),
(395, 42, '_cart_hash', '50b6cd38eecc27be556a71c5ae3f267a'),
(396, 42, '_billing_first_name', 'Александр'),
(397, 42, '_billing_address_1', 'ул. Карла Маркса'),
(398, 42, '_billing_email', 'dsf@gh.jk'),
(399, 42, '_billing_phone', '43523453245325'),
(400, 42, '_shipping_first_name', 'Александр'),
(401, 42, '_shipping_address_1', 'ул. Карла Маркса'),
(402, 42, '_order_currency', 'BYN'),
(403, 42, '_cart_discount', '0'),
(404, 42, '_cart_discount_tax', '0'),
(405, 42, '_order_shipping', '30.00'),
(406, 42, '_order_shipping_tax', '0'),
(407, 42, '_order_tax', '0'),
(408, 42, '_order_total', '186.00'),
(409, 42, '_order_version', '3.8.1'),
(410, 42, '_prices_include_tax', 'no'),
(411, 42, '_billing_address_index', 'Александр   ул. Карла Маркса      dsf@gh.jk 43523453245325'),
(412, 42, '_shipping_address_index', 'Александр   ул. Карла Маркса     '),
(413, 42, 'is_vat_exempt', 'no'),
(414, 42, '_download_permissions_granted', 'yes'),
(415, 42, '_recorded_sales', 'yes'),
(416, 42, '_recorded_coupon_usage_counts', 'yes'),
(417, 42, '_order_stock_reduced', 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-01-11 22:32:58', '2020-01-11 19:32:58', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2020-01-11 22:32:58', '2020-01-11 19:32:58', '', 0, 'http://a-wordpress5/?p=1', 0, 'post', '', 1),
(2, 1, '2020-01-11 22:32:58', '2020-01-11 19:32:58', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://a-wordpress5/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2020-01-11 22:39:25', '2020-01-11 19:39:25', '', 0, 'http://a-wordpress5/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-01-11 22:32:58', '2020-01-11 19:32:58', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Наш адрес сайта: http://a-wordpress5.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие персональные данные мы собираем и с какой целью</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Комментарии</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Медиафайлы</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Формы контактов</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Куки</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Встраиваемое содержимое других вебсайтов</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Веб-аналитика</h3><!-- /wp:heading --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ваша контактная информация</h2><!-- /wp:heading --><!-- wp:heading --><h2>Дополнительная информация</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Как мы защищаем ваши данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие принимаются процедуры против взлома данных</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>От каких третьих сторон мы получаем данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Требования к раскрытию отраслевых нормативных требований</h3><!-- /wp:heading -->', 'Политика конфиденциальности', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2020-01-11 22:39:24', '2020-01-11 19:39:24', '', 0, 'http://a-wordpress5/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-01-11 22:33:09', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-01-11 22:33:09', '0000-00-00 00:00:00', '', 0, 'http://a-wordpress5/?p=4', 0, 'post', '', 0),
(5, 1, '2020-01-11 22:34:43', '2020-01-11 19:34:43', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2020-01-11 22:34:43', '2020-01-11 19:34:43', '', 0, 'http://a-wordpress5/wp-content/uploads/2020/01/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2020-01-11 22:37:08', '0000-00-00 00:00:00', '', 'Главная', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-01-11 22:37:08', '0000-00-00 00:00:00', '', 0, 'http://a-wordpress5/?p=6', 1, 'nav_menu_item', '', 0),
(7, 1, '2020-01-11 22:37:54', '2020-01-11 19:37:54', '', 'Магазин', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2020-01-11 22:37:54', '2020-01-11 19:37:54', '', 0, 'http://a-wordpress5/shop/', 0, 'page', '', 0),
(8, 1, '2020-01-11 22:37:54', '2020-01-11 19:37:54', '<!-- wp:shortcode -->\r\n<p>[woocommerce_cart]</p>\r\n<!-- /wp:shortcode -->', 'Корзина', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2020-01-12 13:21:02', '2020-01-12 10:21:02', '', 0, 'http://a-wordpress5/cart/', 0, 'page', '', 0),
(9, 1, '2020-01-11 22:37:54', '2020-01-11 19:37:54', '<!-- wp:shortcode -->\r\n<p>[woocommerce_checkout]</p>\r\n<!-- /wp:shortcode -->', 'Оформление заказа', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2020-01-12 13:45:09', '2020-01-12 10:45:09', '', 0, 'http://a-wordpress5/checkout/', 0, 'page', '', 0),
(10, 1, '2020-01-11 22:37:54', '2020-01-11 19:37:54', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'Мой аккаунт', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2020-01-11 22:37:54', '2020-01-11 19:37:54', '', 0, 'http://a-wordpress5/my-account/', 0, 'page', '', 0),
(11, 1, '2020-01-11 22:39:03', '2020-01-11 19:39:03', ' ', '', '', 'publish', 'closed', 'closed', '', '11', '', '', '2020-01-12 13:31:48', '2020-01-12 10:31:48', '', 0, 'http://a-wordpress5/?p=11', 3, 'nav_menu_item', '', 0),
(12, 1, '2020-01-11 22:39:03', '2020-01-11 19:39:03', ' ', '', '', 'publish', 'closed', 'closed', '', '12', '', '', '2020-01-12 13:31:48', '2020-01-12 10:31:48', '', 0, 'http://a-wordpress5/?p=12', 2, 'nav_menu_item', '', 0),
(13, 1, '2020-01-11 22:39:24', '2020-01-11 19:39:24', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Наш адрес сайта: http://a-wordpress5.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие персональные данные мы собираем и с какой целью</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Комментарии</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Медиафайлы</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Формы контактов</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Куки</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Встраиваемое содержимое других вебсайтов</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Веб-аналитика</h3><!-- /wp:heading --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ваша контактная информация</h2><!-- /wp:heading --><!-- wp:heading --><h2>Дополнительная информация</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Как мы защищаем ваши данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие принимаются процедуры против взлома данных</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>От каких третьих сторон мы получаем данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Требования к раскрытию отраслевых нормативных требований</h3><!-- /wp:heading -->', 'Политика конфиденциальности', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2020-01-11 22:39:24', '2020-01-11 19:39:24', '', 3, 'http://a-wordpress5/2020/01/11/3-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2020-01-11 22:39:25', '2020-01-11 19:39:25', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://a-wordpress5/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-01-11 22:39:25', '2020-01-11 19:39:25', '', 2, 'http://a-wordpress5/2020/01/11/2-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2020-01-11 22:39:36', '2020-01-11 19:39:36', '', 'Главная', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f', '', '', '2020-01-11 22:39:36', '2020-01-11 19:39:36', '', 0, 'http://a-wordpress5/?page_id=15', 0, 'page', '', 0),
(16, 1, '2020-01-11 22:39:36', '2020-01-11 19:39:36', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-01-11 22:39:36', '2020-01-11 19:39:36', '', 15, 'http://a-wordpress5/2020/01/11/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2020-01-11 22:39:58', '2020-01-11 19:39:58', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2020-01-12 13:31:48', '2020-01-12 10:31:48', '', 0, 'http://a-wordpress5/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2020-01-11 22:44:38', '2020-01-11 19:44:38', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2020-01-11 22:44:38', '2020-01-11 19:44:38', '', 0, 'http://a-wordpress5/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2020-01-11 22:44:38', '2020-01-11 19:44:38', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2020-01-11 22:44:38', '2020-01-11 19:44:38', '', 17, 'http://a-wordpress5/?p=19', 2, 'nav_menu_item', '', 0),
(20, 1, '2020-01-11 22:46:38', '2020-01-11 19:46:38', '', 'Тестовый 1', '', 'publish', 'open', 'closed', '', 'testovyj-1', '', '', '2020-01-11 22:54:18', '2020-01-11 19:54:18', '', 0, 'http://a-wordpress5/?post_type=product&#038;p=20', 0, 'product', '', 0),
(21, 1, '2020-01-11 22:46:21', '2020-01-11 19:46:21', '', 'db45a3059e-1', '', 'inherit', 'open', 'closed', '', 'db45a3059e-1', '', '', '2020-01-11 22:46:21', '2020-01-11 19:46:21', '', 20, 'http://a-wordpress5/wp-content/uploads/2020/01/db45a3059e-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2020-01-11 22:47:40', '2020-01-11 19:47:40', '', 'Тестовый 2', '', 'publish', 'open', 'closed', '', 'testovyj-2', '', '', '2020-01-11 22:54:02', '2020-01-11 19:54:02', '', 0, 'http://a-wordpress5/?post_type=product&#038;p=22', 0, 'product', '', 0),
(23, 1, '2020-01-11 22:47:19', '2020-01-11 19:47:19', '', 'bbc74612c5-1', '', 'inherit', 'open', 'closed', '', 'bbc74612c5-1', '', '', '2020-01-11 22:47:19', '2020-01-11 19:47:19', '', 22, 'http://a-wordpress5/wp-content/uploads/2020/01/bbc74612c5-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2020-01-11 22:47:20', '2020-01-11 19:47:20', '', 'e30d310e6f-4', '', 'inherit', 'open', 'closed', '', 'e30d310e6f-4', '', '', '2020-01-11 22:47:20', '2020-01-11 19:47:20', '', 22, 'http://a-wordpress5/wp-content/uploads/2020/01/e30d310e6f-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2020-01-11 22:48:46', '2020-01-11 19:48:46', '<!-- wp:shortcode -->\r\n<p>[woocommerce_cart]</p>\r\n<!-- /wp:shortcode -->', 'Корзина', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-01-11 22:48:46', '2020-01-11 19:48:46', '', 8, 'http://a-wordpress5/2020/01/11/8-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2020-01-11 22:53:02', '2020-01-11 19:53:02', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"product\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Для товаров', 'dlya-tovarov', 'publish', 'closed', 'closed', '', 'group_5e1a2771bbafd', '', '', '2020-01-11 22:53:52', '2020-01-11 19:53:52', '', 0, 'http://a-wordpress5/?post_type=acf-field-group&#038;p=26', 0, 'acf-field-group', '', 0),
(27, 1, '2020-01-11 22:53:02', '2020-01-11 19:53:02', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Популярный', 'populyarnyj', 'publish', 'closed', 'closed', '', 'field_5e1a277d872d7', '', '', '2020-01-11 22:53:02', '2020-01-11 19:53:02', '', 26, 'http://a-wordpress5/?post_type=acf-field&p=27', 0, 'acf-field', '', 0),
(28, 1, '2020-01-12 00:10:04', '2020-01-11 21:10:04', '', 'dasfdasf', '', 'publish', 'open', 'closed', '', 'dasfdasf', '', '', '2020-01-12 00:10:30', '2020-01-11 21:10:30', '', 0, 'http://a-wordpress5/?post_type=product&#038;p=28', 0, 'product', '', 0),
(29, 1, '2020-01-12 13:19:45', '2020-01-12 10:19:45', '<!-- wp:shortcode -->\r\n<p>[woocommerce_checkout]</p>\r\n<!-- /wp:shortcode -->', 'Оформление заказа', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-01-12 13:19:45', '2020-01-12 10:19:45', '', 9, 'http://a-wordpress5/2020/01/12/9-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2020-01-12 13:31:30', '2020-01-12 10:31:30', 'фвыафывафыафывафыав', 'Тестовая', '', 'publish', 'closed', 'closed', '', 'testovaya', '', '', '2020-01-12 13:32:05', '2020-01-12 10:32:05', '', 0, 'http://a-wordpress5/?page_id=30', 0, 'page', '', 0),
(31, 1, '2020-01-12 13:31:30', '2020-01-12 10:31:30', '', 'Тестовая', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2020-01-12 13:31:30', '2020-01-12 10:31:30', '', 30, 'http://a-wordpress5/2020/01/12/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2020-01-12 13:31:48', '2020-01-12 10:31:48', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2020-01-12 13:31:48', '2020-01-12 10:31:48', '', 0, 'http://a-wordpress5/?p=32', 4, 'nav_menu_item', '', 0),
(33, 1, '2020-01-12 13:32:05', '2020-01-12 10:32:05', 'фвыафывафыафывафыав', 'Тестовая', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2020-01-12 13:32:05', '2020-01-12 10:32:05', '', 30, 'http://a-wordpress5/2020/01/12/30-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2020-01-12 16:35:26', '2020-01-12 13:35:26', '', 'Order &ndash; Январь 12, 2020 @ 04:35 ПП', '', 'wc-processing', 'open', 'closed', 'wc_order_ryOVD0dhNemu4', 'zakaz-12-jan-2020-v-1335', '', '', '2020-01-12 16:35:26', '2020-01-12 13:35:26', '', 0, 'http://a-wordpress5/?post_type=shop_order&#038;p=34', 0, 'shop_order', '', 1),
(35, 1, '2020-01-12 20:16:15', '2020-01-12 17:16:15', '', 'Order &ndash; Январь 12, 2020 @ 08:16 ПП', '', 'wc-processing', 'open', 'closed', 'wc_order_JJEEeaVXpNTg8', 'zakaz-12-jan-2020-v-1716', '', '', '2020-01-12 20:16:15', '2020-01-12 17:16:15', '', 0, 'http://a-wordpress5/?post_type=shop_order&#038;p=35', 0, 'shop_order', '', 1),
(36, 1, '2020-01-12 22:25:11', '2020-01-12 19:25:11', '', 'Order &ndash; Январь 12, 2020 @ 10:25 ПП', '', 'wc-processing', 'open', 'closed', 'wc_order_Hth7mFt0F2Bz8', 'zakaz-12-jan-2020-v-1925', '', '', '2020-01-12 22:25:11', '2020-01-12 19:25:11', '', 0, 'http://a-wordpress5/?post_type=shop_order&#038;p=36', 0, 'shop_order', '', 1),
(37, 1, '2020-01-12 22:27:41', '2020-01-12 19:27:41', '', 'Order &ndash; Январь 12, 2020 @ 10:27 ПП', '', 'wc-processing', 'open', 'closed', 'wc_order_VfnUmoFQi6w6q', 'zakaz-12-jan-2020-v-1927', '', '', '2020-01-12 23:33:21', '2020-01-12 20:33:21', '', 0, 'http://a-wordpress5/?post_type=shop_order&#038;p=37', 0, 'shop_order', '', 1),
(38, 1, '2020-01-12 23:34:43', '2020-01-12 20:34:43', '', 'Order &ndash; Январь 12, 2020 @ 11:34 ПП', '', 'wc-processing', 'open', 'closed', 'wc_order_Joh4fntMwHFLb', 'zakaz-12-jan-2020-v-2034', '', '', '2020-01-12 23:34:44', '2020-01-12 20:34:44', '', 0, 'http://a-wordpress5/?post_type=shop_order&#038;p=38', 0, 'shop_order', '', 1),
(39, 1, '2020-01-12 23:39:07', '2020-01-12 20:39:07', '', 'Order &ndash; Январь 12, 2020 @ 11:39 ПП', '', 'wc-processing', 'open', 'closed', 'wc_order_5fXuHhmnsBC4B', 'zakaz-12-jan-2020-v-2039', '', '', '2020-01-12 23:39:08', '2020-01-12 20:39:08', '', 0, 'http://a-wordpress5/?post_type=shop_order&#038;p=39', 0, 'shop_order', '', 1),
(40, 1, '2020-01-13 00:40:55', '2020-01-12 21:40:55', '', 'Order &ndash; Январь 13, 2020 @ 12:40 ДП', '', 'wc-processing', 'open', 'closed', 'wc_order_iNY9C4CGQsqrz', 'zakaz-12-jan-2020-v-2140', '', '', '2020-01-13 00:41:12', '2020-01-12 21:41:12', '', 0, 'http://a-wordpress5/?post_type=shop_order&#038;p=40', 0, 'shop_order', '', 1),
(41, 1, '2020-01-13 00:41:55', '2020-01-12 21:41:55', '', 'Order &ndash; Январь 13, 2020 @ 12:41 ДП', '', 'wc-processing', 'open', 'closed', 'wc_order_Cy5pVZ3fmiYIe', 'zakaz-12-jan-2020-v-2141', '', '', '2020-01-13 00:41:55', '2020-01-12 21:41:55', '', 0, 'http://a-wordpress5/?post_type=shop_order&#038;p=41', 0, 'shop_order', '', 1),
(42, 1, '2020-01-13 00:55:14', '2020-01-12 21:55:14', '', 'Order &ndash; Январь 13, 2020 @ 12:55 ДП', '', 'wc-processing', 'open', 'closed', 'wc_order_KcZBomv0fmdzb', 'zakaz-12-jan-2020-v-2155', '', '', '2020-01-13 00:55:15', '2020-01-12 21:55:15', '', 0, 'http://a-wordpress5/?post_type=shop_order&#038;p=42', 0, 'shop_order', '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 17, 'order', '0'),
(2, 17, 'display_type', ''),
(3, 17, 'thumbnail_id', '0'),
(4, 18, 'order', '0'),
(5, 18, 'display_type', ''),
(6, 18, 'thumbnail_id', '0'),
(7, 17, 'product_count_product_cat', '3'),
(8, 18, 'product_count_product_cat', '3'),
(9, 20, 'order_pa_brend', '0'),
(10, 21, 'order_pa_czvet', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0),
(16, 'Основное меню', 'osnovnoe-menyu', 0),
(17, 'Для женщин', 'dlya-zhenshhin', 0),
(18, 'Платья', 'platya', 0),
(19, 'Меню каталога', 'menyu-kataloga', 0),
(20, 'АДИДАС', 'adidas', 0),
(21, 'БЕЖЕВЫЙ', 'bezhevyj', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(11, 16, 0),
(12, 16, 0),
(17, 16, 0),
(18, 19, 0),
(19, 19, 0),
(20, 2, 0),
(20, 17, 0),
(20, 18, 0),
(22, 2, 0),
(22, 17, 0),
(22, 18, 0),
(22, 20, 0),
(22, 21, 0),
(28, 2, 0),
(28, 17, 0),
(28, 18, 0),
(32, 16, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 3),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'nav_menu', '', 0, 4),
(17, 17, 'product_cat', '', 0, 3),
(18, 18, 'product_cat', '', 17, 3),
(19, 19, 'nav_menu', '', 0, 2),
(20, 20, 'pa_brend', '', 0, 1),
(21, 21, 'pa_czvet', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', 'Александр'),
(3, 1, 'last_name', ''),
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
(16, 1, 'session_tokens', 'a:1:{s:64:\"f240371c442fd7e3d8c1d29c0fab6cb95850ab6d9e8cab20cb02251b00eee71c\";a:4:{s:10:\"expiration\";i:1578943986;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36\";s:5:\"login\";i:1578771186;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, '_woocommerce_tracks_anon_id', 'woo:jVJSROoW20qMSGMBy8XORaaz'),
(20, 1, 'wc_last_active', '1578787200'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-product_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '16'),
(24, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(25, 1, 'wp_user-settings', 'libraryContent=browse'),
(26, 1, 'wp_user-settings-time', '1578771994'),
(33, 1, 'last_update', '1578866114'),
(34, 1, 'billing_state', ''),
(35, 1, 'billing_country', 'BY'),
(36, 1, 'billing_email', 'dsf@gh.jk'),
(37, 1, 'billing_phone', '43523453245325'),
(38, 1, 'shipping_state', ''),
(39, 1, 'shipping_country', 'BY'),
(40, 1, 'shipping_method', 'a:1:{i:0;s:11:\"flat_rate:4\";}'),
(45, 1, 'billing_address_1', 'ул. Карла Маркса'),
(46, 1, 'shipping_address_1', 'ул. Карла Маркса'),
(51, 1, 'billing_first_name', 'Александр'),
(52, 1, 'shipping_first_name', 'Александр');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BFLzy1RmcYs/dC42RQ4x5OJXfJ4HDb1', 'admin', 'webdesign-x@bk.ru', '', '2020-01-11 19:32:58', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(10,2) DEFAULT NULL,
  `max_price` decimal(10,2) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`) VALUES
(20, '', 0, 0, '33.00', '33.00', 1, NULL, 'instock', 0, '0.00', 2),
(22, '', 0, 0, '277.00', '277.00', 1, NULL, 'instock', 0, '0.00', 0),
(28, '', 0, 0, '78.00', '78.00', 0, NULL, 'instock', 0, '0.00', 17);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_tax_rate_classes`
--

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Пониженная ставка', '%d0%bf%d0%be%d0%bd%d0%b8%d0%b6%d0%b5%d0%bd%d0%bd%d0%b0%d1%8f-%d1%81%d1%82%d0%b0%d0%b2%d0%ba%d0%b0'),
(2, 'Нулевая ставка', '%d0%bd%d1%83%d0%bb%d0%b5%d0%b2%d0%b0%d1%8f-%d1%81%d1%82%d0%b0%d0%b2%d0%ba%d0%b0');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_attribute_taxonomies`
--

INSERT INTO `wp_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'brend', 'Бренд', 'select', 'menu_order', 1),
(2, 'czvet', 'Цвет', 'select', 'menu_order', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '20'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '2'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '66'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '66'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(10, 2, '_product_id', '28'),
(11, 2, '_variation_id', '0'),
(12, 2, '_qty', '6'),
(13, 2, '_tax_class', ''),
(14, 2, '_line_subtotal', '468'),
(15, 2, '_line_subtotal_tax', '0'),
(16, 2, '_line_total', '468'),
(17, 2, '_line_tax', '0'),
(18, 2, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(19, 3, 'method_id', 'flat_rate'),
(20, 3, 'instance_id', '4'),
(21, 3, 'cost', '30.00'),
(22, 3, 'total_tax', '0'),
(23, 3, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(24, 3, 'Позиции', 'Тестовый 1 &times; 2, dasfdasf &times; 6'),
(25, 4, '_product_id', '28'),
(26, 4, '_variation_id', '0'),
(27, 4, '_qty', '1'),
(28, 4, '_tax_class', ''),
(29, 4, '_line_subtotal', '78'),
(30, 4, '_line_subtotal_tax', '0'),
(31, 4, '_line_total', '78'),
(32, 4, '_line_tax', '0'),
(33, 4, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(34, 5, 'method_id', 'flat_rate'),
(35, 5, 'instance_id', '4'),
(36, 5, 'cost', '30.00'),
(37, 5, 'total_tax', '0'),
(38, 5, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(39, 5, 'Позиции', 'dasfdasf &times; 1'),
(40, 6, '_product_id', '28'),
(41, 6, '_variation_id', '0'),
(42, 6, '_qty', '1'),
(43, 6, '_tax_class', ''),
(44, 6, '_line_subtotal', '78'),
(45, 6, '_line_subtotal_tax', '0'),
(46, 6, '_line_total', '78'),
(47, 6, '_line_tax', '0'),
(48, 6, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(49, 7, 'method_id', 'flat_rate'),
(50, 7, 'instance_id', '3'),
(51, 7, 'cost', '0.00'),
(52, 7, 'total_tax', '0'),
(53, 7, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(54, 7, 'Позиции', 'dasfdasf &times; 1'),
(70, 10, '_product_id', '28'),
(71, 10, '_variation_id', '0'),
(72, 10, '_qty', '1'),
(73, 10, '_tax_class', ''),
(74, 10, '_line_subtotal', '78'),
(75, 10, '_line_subtotal_tax', '0'),
(76, 10, '_line_total', '78'),
(77, 10, '_line_tax', '0'),
(78, 10, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(79, 11, 'method_id', 'flat_rate'),
(80, 11, 'instance_id', '3'),
(81, 11, 'cost', '0.00'),
(82, 11, 'total_tax', '0'),
(83, 11, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(84, 11, 'Позиции', 'dasfdasf &times; 1'),
(85, 12, '_product_id', '28'),
(86, 12, '_variation_id', '0'),
(87, 12, '_qty', '1'),
(88, 12, '_tax_class', ''),
(89, 12, '_line_subtotal', '78'),
(90, 12, '_line_subtotal_tax', '0'),
(91, 12, '_line_total', '78'),
(92, 12, '_line_tax', '0'),
(93, 12, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(94, 13, 'method_id', 'flat_rate'),
(95, 13, 'instance_id', '3'),
(96, 13, 'cost', '0.00'),
(97, 13, 'total_tax', '0'),
(98, 13, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(99, 13, 'Позиции', 'dasfdasf &times; 1'),
(100, 14, '_product_id', '28'),
(101, 14, '_variation_id', '0'),
(102, 14, '_qty', '1'),
(103, 14, '_tax_class', ''),
(104, 14, '_line_subtotal', '78'),
(105, 14, '_line_subtotal_tax', '0'),
(106, 14, '_line_total', '78'),
(107, 14, '_line_tax', '0'),
(108, 14, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(109, 15, 'method_id', 'flat_rate'),
(110, 15, 'instance_id', '3'),
(111, 15, 'cost', '0.00'),
(112, 15, 'total_tax', '0'),
(113, 15, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(114, 15, 'Позиции', 'dasfdasf &times; 1'),
(130, 18, '_product_id', '28'),
(131, 18, '_variation_id', '0'),
(132, 18, '_qty', '1'),
(133, 18, '_tax_class', ''),
(134, 18, '_line_subtotal', '78'),
(135, 18, '_line_subtotal_tax', '0'),
(136, 18, '_line_total', '78'),
(137, 18, '_line_tax', '0'),
(138, 18, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(139, 19, 'method_id', 'flat_rate'),
(140, 19, 'instance_id', '3'),
(141, 19, 'cost', '0.00'),
(142, 19, 'total_tax', '0'),
(143, 19, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(144, 19, 'Позиции', 'dasfdasf &times; 1'),
(145, 20, '_product_id', '28'),
(146, 20, '_variation_id', '0'),
(147, 20, '_qty', '3'),
(148, 20, '_tax_class', ''),
(149, 20, '_line_subtotal', '234'),
(150, 20, '_line_subtotal_tax', '0'),
(151, 20, '_line_total', '234'),
(152, 20, '_line_tax', '0'),
(153, 20, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(154, 21, 'method_id', 'flat_rate'),
(155, 21, 'instance_id', '4'),
(156, 21, 'cost', '30.00'),
(157, 21, 'total_tax', '0'),
(158, 21, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(159, 21, 'Позиции', 'dasfdasf &times; 3'),
(160, 22, '_product_id', '28'),
(161, 22, '_variation_id', '0'),
(162, 22, '_qty', '2'),
(163, 22, '_tax_class', ''),
(164, 22, '_line_subtotal', '156'),
(165, 22, '_line_subtotal_tax', '0'),
(166, 22, '_line_total', '156'),
(167, 22, '_line_tax', '0'),
(168, 22, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(169, 23, 'method_id', 'flat_rate'),
(170, 23, 'instance_id', '4'),
(171, 23, 'cost', '30.00'),
(172, 23, 'total_tax', '0'),
(173, 23, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(174, 23, 'Позиции', 'dasfdasf &times; 2');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Тестовый 1', 'line_item', 34),
(2, 'dasfdasf', 'line_item', 34),
(3, 'Наложенным платежом', 'shipping', 34),
(4, 'dasfdasf', 'line_item', 35),
(5, 'Наложенным платежом', 'shipping', 35),
(6, 'dasfdasf', 'line_item', 36),
(7, 'Доставка курьером', 'shipping', 36),
(10, 'dasfdasf', 'line_item', 37),
(11, 'Доставка курьером', 'shipping', 37),
(12, 'dasfdasf', 'line_item', 38),
(13, 'Доставка курьером', 'shipping', 38),
(14, 'dasfdasf', 'line_item', 39),
(15, 'Доставка курьером', 'shipping', 39),
(18, 'dasfdasf', 'line_item', 40),
(19, 'Доставка курьером', 'shipping', 40),
(20, 'dasfdasf', 'line_item', 41),
(21, 'Наложенным платежом', 'shipping', 41),
(22, 'dasfdasf', 'line_item', 42),
(23, 'Наложенным платежом', 'shipping', 42);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(1, '1', 'a:14:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:895:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2020-01-12T21:55:14+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:29:\"ул. Карла Маркса\";s:7:\"address\";s:29:\"ул. Карла Маркса\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"BY\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:29:\"ул. Карла Маркса\";s:16:\"shipping_address\";s:29:\"ул. Карла Маркса\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"BY\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:18:\"Александр\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:14:\"43523453245325\";s:5:\"email\";s:9:\"dsf@gh.jk\";s:19:\"shipping_first_name\";s:18:\"Александр\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";s:22:\"shipping_for_package_0\";s:731:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_3353092a6966f492070f77011f8fffb6\";s:5:\"rates\";a:2:{s:11:\"flat_rate:3\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:11:\"flat_rate:3\";s:9:\"method_id\";s:9:\"flat_rate\";s:11:\"instance_id\";i:3;s:5:\"label\";s:33:\"Доставка курьером\";s:4:\"cost\";s:4:\"0.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:14:\"Позиции\";s:18:\"dasfdasf &times; 2\";}}s:11:\"flat_rate:4\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:11:\"flat_rate:4\";s:9:\"method_id\";s:9:\"flat_rate\";s:11:\"instance_id\";i:4;s:5:\"label\";s:37:\"Наложенным платежом\";s:4:\"cost\";s:5:\"30.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:14:\"Позиции\";s:18:\"dasfdasf &times; 2\";}}}}\";s:25:\"previous_shipping_methods\";s:62:\"a:1:{i:0;a:2:{i:0;s:11:\"flat_rate:3\";i:1;s:11:\"flat_rate:4\";}}\";s:23:\"chosen_shipping_methods\";s:125:\"a:3:{i:0;s:11:\"flat_rate:4\";s:11:\"flat_rate:3\";s:21:\"flat_rate:flat_rate:3\";s:11:\"flat_rate:4\";s:21:\"flat_rate:flat_rate:4\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:2;}\";s:10:\"wc_notices\";N;s:21:\"chosen_payment_method\";s:3:\"cod\";s:22:\"order_awaiting_payment\";N;}', 1578944870);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(0, 3, 'flat_rate', 1, 1),
(0, 4, 'flat_rate', 2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woof_query_cache`
--

CREATE TABLE `wp_woof_query_cache` (
  `mkey` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `mvalue` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Индексы таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Индексы таблицы `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Индексы таблицы `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Индексы таблицы `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Индексы таблицы `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Индексы таблицы `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Индексы таблицы `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Индексы таблицы `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Индексы таблицы `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Индексы таблицы `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Индексы таблицы `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Индексы таблицы `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Индексы таблицы `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Индексы таблицы `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Индексы таблицы `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Индексы таблицы `wp_woof_query_cache`
--
ALTER TABLE `wp_woof_query_cache`
  ADD KEY `mkey` (`mkey`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1186;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=418;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
