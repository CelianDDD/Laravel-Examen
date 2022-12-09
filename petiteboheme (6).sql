-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 09 déc. 2022 à 13:37
-- Version du serveur : 8.0.27
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `petiteboheme`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Hauts', 'hauts', '2022-12-08 19:31:19', '2022-12-08 19:31:19'),
(2, 'Bas', 'bas', '2022-12-08 19:31:19', '2022-12-08 19:31:19'),
(3, 'Robes', 'robes', '2022-12-08 19:31:19', '2022-12-08 19:31:19'),
(4, 'Ensembles', 'ensembles', '2022-12-08 19:31:19', '2022-12-08 19:31:19'),
(5, 'Accessoires', 'accessoires', '2022-12-08 19:31:19', '2022-12-08 19:31:19'),
(6, 'Nouveautés', 'nouveautes', '2022-12-08 19:31:19', '2022-12-08 19:31:19');

-- --------------------------------------------------------

--
-- Structure de la table `category_product`
--

DROP TABLE IF EXISTS `category_product`;
CREATE TABLE IF NOT EXISTS `category_product` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_product_category_id_foreign` (`category_id`),
  KEY `category_product_product_id_foreign` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `category_product`
--

INSERT INTO `category_product` (`id`, `category_id`, `product_id`, `created_at`, `updated_at`) VALUES
(8, 2, 3, NULL, NULL),
(19, 4, 7, NULL, NULL),
(24, 4, 8, NULL, NULL),
(29, 4, 10, NULL, NULL),
(32, 4, 11, NULL, NULL),
(34, 3, 12, NULL, NULL),
(41, 3, 14, NULL, NULL),
(45, 3, 15, NULL, NULL),
(51, 1, 17, NULL, NULL),
(52, 1, 18, NULL, NULL),
(61, 6, 21, NULL, NULL),
(65, 6, 22, NULL, NULL),
(73, 5, 25, NULL, NULL),
(74, 5, 25, NULL, NULL),
(76, 2, 4, NULL, NULL),
(77, 2, 6, NULL, NULL),
(78, 4, 9, NULL, NULL),
(79, 3, 13, NULL, NULL),
(80, 3, 16, NULL, NULL),
(81, 1, 19, NULL, NULL),
(82, 1, 5, NULL, NULL),
(83, 6, 20, NULL, NULL),
(84, 5, 23, NULL, NULL),
(85, 5, 24, NULL, NULL),
(86, 5, 1, NULL, NULL),
(87, 5, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE IF NOT EXISTS `data_rows` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_type_id` int UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8_unicode_ci,
  `order` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 5, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(24, 5, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 3),
(25, 5, 'subtitle', 'text', 'Subtitle', 1, 1, 1, 1, 1, 1, '{}', 4),
(26, 5, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, '{}', 5),
(27, 5, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{}', 6),
(28, 5, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 7),
(29, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(30, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(31, 5, 'product_belongstomany_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Category\",\"table\":\"categories\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"category_product\",\"pivot\":\"1\",\"taggable\":\"0\"}', 10),
(32, 7, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(33, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(34, 7, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 3),
(35, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(36, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
CREATE TABLE IF NOT EXISTS `data_types` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint NOT NULL DEFAULT '0',
  `details` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2022-12-08 19:33:00', '2022-12-08 19:33:00'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-12-08 19:33:00', '2022-12-08 19:33:00'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-12-08 19:33:00', '2022-12-08 19:33:00'),
(5, 'products', 'products', 'Product', 'Products', 'voyager-rocket', 'App\\Models\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-12-08 19:48:52', '2022-12-08 19:52:45'),
(7, 'categories', 'categories', 'Category', 'Categories', 'voyager-tag', 'App\\Models\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-12-08 19:55:23', '2022-12-08 19:55:23');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-12-08 19:33:00', '2022-12-08 19:33:00');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2022-12-08 19:33:00', '2022-12-08 19:53:25', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 6, '2022-12-08 19:33:00', '2022-12-08 19:55:48', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 5, '2022-12-08 19:33:00', '2022-12-08 19:55:48', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 4, '2022-12-08 19:33:00', '2022-12-08 19:55:48', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 7, '2022-12-08 19:33:00', '2022-12-08 19:55:48', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2022-12-08 19:33:00', '2022-12-08 19:53:09', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2022-12-08 19:33:00', '2022-12-08 19:53:09', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2022-12-08 19:33:00', '2022-12-08 19:53:09', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2022-12-08 19:33:00', '2022-12-08 19:53:09', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 8, '2022-12-08 19:33:00', '2022-12-08 19:55:48', 'voyager.settings.index', NULL),
(11, 1, 'Products', '', '_self', 'voyager-rocket', NULL, NULL, 2, '2022-12-08 19:48:52', '2022-12-08 19:53:25', 'voyager.products.index', NULL),
(12, 1, 'Categories', '', '_self', 'voyager-tag', NULL, NULL, 3, '2022-12-08 19:55:23', '2022-12-08 19:55:48', 'voyager.categories.index', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2022_11_27_172547_create_products_table', 1),
(26, '2022_12_05_170120_create_categories_table', 1),
(27, '2022_12_05_170414_create_category_product_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `table_name` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-12-08 19:33:00', '2022-12-08 19:33:00'),
(2, 'browse_bread', NULL, '2022-12-08 19:33:00', '2022-12-08 19:33:00'),
(3, 'browse_database', NULL, '2022-12-08 19:33:00', '2022-12-08 19:33:00'),
(4, 'browse_media', NULL, '2022-12-08 19:33:00', '2022-12-08 19:33:00'),
(5, 'browse_compass', NULL, '2022-12-08 19:33:00', '2022-12-08 19:33:00'),
(6, 'browse_menus', 'menus', '2022-12-08 19:33:00', '2022-12-08 19:33:00'),
(7, 'read_menus', 'menus', '2022-12-08 19:33:00', '2022-12-08 19:33:00'),
(8, 'edit_menus', 'menus', '2022-12-08 19:33:00', '2022-12-08 19:33:00'),
(9, 'add_menus', 'menus', '2022-12-08 19:33:00', '2022-12-08 19:33:00'),
(10, 'delete_menus', 'menus', '2022-12-08 19:33:00', '2022-12-08 19:33:00'),
(11, 'browse_roles', 'roles', '2022-12-08 19:33:00', '2022-12-08 19:33:00'),
(12, 'read_roles', 'roles', '2022-12-08 19:33:00', '2022-12-08 19:33:00'),
(13, 'edit_roles', 'roles', '2022-12-08 19:33:00', '2022-12-08 19:33:00'),
(14, 'add_roles', 'roles', '2022-12-08 19:33:00', '2022-12-08 19:33:00'),
(15, 'delete_roles', 'roles', '2022-12-08 19:33:00', '2022-12-08 19:33:00'),
(16, 'browse_users', 'users', '2022-12-08 19:33:00', '2022-12-08 19:33:00'),
(17, 'read_users', 'users', '2022-12-08 19:33:00', '2022-12-08 19:33:00'),
(18, 'edit_users', 'users', '2022-12-08 19:33:00', '2022-12-08 19:33:00'),
(19, 'add_users', 'users', '2022-12-08 19:33:00', '2022-12-08 19:33:00'),
(20, 'delete_users', 'users', '2022-12-08 19:33:00', '2022-12-08 19:33:00'),
(21, 'browse_settings', 'settings', '2022-12-08 19:33:00', '2022-12-08 19:33:00'),
(22, 'read_settings', 'settings', '2022-12-08 19:33:00', '2022-12-08 19:33:00'),
(23, 'edit_settings', 'settings', '2022-12-08 19:33:00', '2022-12-08 19:33:00'),
(24, 'add_settings', 'settings', '2022-12-08 19:33:00', '2022-12-08 19:33:00'),
(25, 'delete_settings', 'settings', '2022-12-08 19:33:00', '2022-12-08 19:33:00'),
(26, 'browse_products', 'products', '2022-12-08 19:48:52', '2022-12-08 19:48:52'),
(27, 'read_products', 'products', '2022-12-08 19:48:52', '2022-12-08 19:48:52'),
(28, 'edit_products', 'products', '2022-12-08 19:48:52', '2022-12-08 19:48:52'),
(29, 'add_products', 'products', '2022-12-08 19:48:52', '2022-12-08 19:48:52'),
(30, 'delete_products', 'products', '2022-12-08 19:48:52', '2022-12-08 19:48:52'),
(31, 'browse_categories', 'categories', '2022-12-08 19:55:23', '2022-12-08 19:55:23'),
(32, 'read_categories', 'categories', '2022-12-08 19:55:23', '2022-12-08 19:55:23'),
(33, 'edit_categories', 'categories', '2022-12-08 19:55:23', '2022-12-08 19:55:23'),
(34, 'add_categories', 'categories', '2022-12-08 19:55:23', '2022-12-08 19:55:23'),
(35, 'delete_categories', 'categories', '2022-12-08 19:55:23', '2022-12-08 19:55:23');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1);

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `image` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_title_unique` (`title`),
  UNIQUE KEY `products_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `subtitle`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Bague multicolore', 'non-eius-ratione-et-eum-consequatur-et-recusandae', 'Est eveniet occaecati facilis cumque in delectus voluptas quibusdam animi labore autem a cumque.', '<p>Sit magnam dolorem voluptas cupiditate est veniam sed. Sint voluptate nulla et perferendis. Error ut fuga et quia iste incidunt. Odio tempore dignissimos voluptatem dignissimos.</p>', 11100, 'products\\December2022\\2LZtr1mHl0Q5eKIII3Gp.png', '2022-12-08 19:31:00', '2022-12-09 10:55:17'),
(2, 'Bague en métale', 'velit-est-similique-occaecati-cumque', 'Ut quis et officia alias libero rerum eligendi atque nesciunt ut quaerat.', '<p>Soluta quaerat cum culpa ut dolores repellendus voluptatem. Minima non consequatur dicta pariatur velit praesentium. Voluptate tempore nihil velit.</p>', 20800, 'products\\December2022\\py7zn4fAtpTtIJzBb3sk.png', '2022-12-08 19:31:00', '2022-12-09 10:55:34'),
(3, 'Jean Levis', 'consequatur-incidunt-beatae-magni-officia-et-velit-voluptas-et', 'Reiciendis ut dolor explicabo pariatur aliquid rerum corporis odio iusto mollitia.', '<p>Praesentium aut repellendus et temporibus soluta velit ut magni. Reiciendis quos dicta aut facere. Consequatur repellendus dolorum animi reiciendis.</p>', 14500, 'products\\December2022\\MLDrkGlZy6yZU8lxrU8z.png', '2022-12-08 19:31:00', '2022-12-09 10:58:16'),
(4, 'Pantalon Bleu', 'quis-exercitationem-dolor-ut-officia-delectus', 'Accusamus ut vitae dolores nulla qui laudantium iusto.', '<p>Delectus dolor ut eligendi unde laudantium. Magnam quidem eos magnam aperiam. Nam soluta ad quaerat reprehenderit dolore rerum sunt alias.</p>', 16200, 'products\\December2022\\HSsVJ4JP1fuxh0I7e63e.png', '2022-12-08 19:31:00', '2022-12-09 10:58:30'),
(5, 'Haut noir', 'expedita-deserunt-modi-sint-eum', 'Laboriosam dolorem mollitia aperiam possimus dolores doloribus.', '<p>Dicta quas voluptas eos non iste. Fugiat rerum vel sit. Nihil omnis id accusantium.</p>', 10900, 'products\\December2022\\2j7b460SdHabFcm6sV4n.png', '2022-12-08 19:31:00', '2022-12-09 10:56:54'),
(6, 'Pantalon bleu marine', 'repudiandae-velit-et-odit-fugit-ut-inventore', 'Voluptas in nesciunt nisi asperiores quibusdam voluptatibus optio alias et quas est quis nobis.', '<p>Sapiente ut dolorem cupiditate sed cumque recusandae. Alias iste quae facilis voluptas voluptatibus soluta. Molestiae cum laborum fuga distinctio.</p>', 4500, 'products\\December2022\\KaPfEUfrQyAx2tVCpFeB.png', '2022-12-08 19:31:00', '2022-12-09 10:58:39'),
(7, 'Ensemble Noir et Marron', 'similique-voluptatem-non-molestiae-aut-earum-ut-assumenda', 'Officia provident sint illo inventore maxime voluptatem cum nostrum cumque.', '<p>Velit aperiam maxime dolorem perspiciatis molestiae aut in. Dolorum mollitia enim eligendi nulla dolor. Incidunt ea voluptates in. Ut aperiam ut consequatur animi eaque consequatur.</p>', 25100, 'products\\December2022\\McXgVRmmImSHrZmyuahV.png', '2022-12-08 19:31:00', '2022-12-09 12:22:57'),
(8, 'Ensemble noir et blanc', 'ut-odio-qui-eos-ea-quia', 'Illum distinctio eum similique harum nobis exercitationem occaecati iusto quibusdam eos sapiente ab.', '<p>Impedit adipisci magnam ut explicabo sunt libero ut. Beatae molestiae magni qui. Exercitationem facilis voluptatem consequatur ab. Voluptas quaerat ea laudantium perferendis qui doloremque libero.</p>', 21700, 'products\\December2022\\JTuaxThC6MQhkkvnXxwx.png', '2022-12-08 19:31:00', '2022-12-09 12:23:15'),
(9, 'Ensemble Rouge', 'eligendi-consequatur-consequatur-dolores-et-esse-dolore-id', 'Voluptatum laborum voluptas repellat dolores aut dolores non molestiae iste unde laborum voluptas.', '<p>Necessitatibus error qui eos enim. Ullam earum vero animi. Impedit omnis consequatur voluptatum quibusdam corporis.</p>', 29400, 'products\\December2022\\KVLppTheIIr4Lvn0ChB1.png', '2022-12-08 19:31:00', '2022-12-09 12:23:25'),
(10, 'Ensemble beige et noir', 'soluta-eius-rerum-voluptatem-voluptatem', 'Ipsam et recusandae tempora eveniet libero aut optio omnis debitis ducimus.', '<p>Eaque quod aliquid ea. Perspiciatis distinctio ea et nostrum eum ea provident. Et rerum harum assumenda cupiditate placeat tempore porro. Sunt quam cumque voluptatem adipisci voluptatem minima.</p>', 26400, 'products\\December2022\\Gjae4OAaRnTP5F0O2sen.png', '2022-12-08 19:31:00', '2022-12-09 12:23:37'),
(11, 'Ensemble rouge et noir', 'consequatur-voluptas-asperiores-excepturi-sed-sint-deserunt-voluptates', 'Ut aut qui aut mollitia sit sed qui.', '<p>Mollitia alias facere alias doloremque sit. Odio aut aliquid optio asperiores illo. Nobis rerum minima eum voluptatem veritatis deleniti. Qui vero necessitatibus dolor aut nam et omnis.</p>', 27100, 'products\\December2022\\lvWknYpggQxtqzTqKrCM.png', '2022-12-08 19:31:00', '2022-12-09 12:23:47'),
(12, 'Robe jaune', 'consequatur-dolorum-optio-non-aut-optio', 'Sit voluptatum facere numquam deleniti sapiente dolorem.', '<p>Fuga quam qui reiciendis eos. Et occaecati et maiores itaque dolorem. Nihil distinctio occaecati blanditiis ea nihil velit. Nam sapiente earum voluptatibus rerum fuga.</p>', 6400, 'products\\December2022\\uh3vFOvirFe3FdCcgh7r.png', '2022-12-08 19:31:00', '2022-12-09 12:12:33'),
(13, 'Robe rouge', 'culpa-totam-sed-enim-fuga-sapiente-commodi', 'Praesentium enim quisquam vero maxime iure ut reprehenderit ex quo ratione.', '<p>Facere velit dicta beatae voluptas quos. Ipsam rem quia quia et accusamus perferendis.</p>', 20300, 'products\\December2022\\pg405TvyfXpB7pY2NdA3.png', '2022-12-08 19:31:00', '2022-12-09 12:12:44'),
(14, 'Robe verte', 'nostrum-quo-quia-sequi', 'Dolorum architecto quos earum et corrupti aut.', '<p>Rerum quos laborum velit. Laborum labore dolores hic repellat voluptas. Eveniet qui qui consequatur est ut labore enim laborum. Et eum voluptas neque omnis quia.</p>', 10900, 'products\\December2022\\YJvrXtDR3TFPDp2R5Ip2.png', '2022-12-08 19:31:00', '2022-12-09 12:12:56'),
(15, 'Robe rouge chic', 'quidem-officia-fugiat-corporis-tempore-qui-tempore-laudantium', 'Repellat nesciunt corrupti autem porro consectetur quia eum placeat.', '<p>Vel provident consectetur corrupti hic aut. Porro voluptate placeat modi expedita suscipit voluptas. Ullam id accusantium odio voluptas.</p>', 28400, 'products\\December2022\\gi9XDnUguJvJ0hO03lC1.png', '2022-12-08 19:31:00', '2022-12-09 12:13:06'),
(16, 'Robe rouge soirée', 'optio-fugit-qui-non-non-adipisci', 'Quis molestiae incidunt aliquam quibusdam molestias in fugit et enim totam sint.', '<p>Sed sit est id ut voluptas non voluptates. Sint voluptatem voluptatum nulla expedita aut dolores. Eum voluptas beatae sit et magnam magni. Adipisci consequatur natus optio.</p>', 23100, 'products\\December2022\\iWw1pAiWsympPMOGsoJC.png', '2022-12-08 19:31:00', '2022-12-09 12:13:32'),
(17, 'Débardeur noir', 'ipsam-voluptatem-facere-labore-et', 'Mollitia ut voluptatum quibusdam maiores molestias magnam ut.', '<p>Cum exercitationem magni sequi nam. Culpa quos nesciunt cupiditate eum commodi est excepturi. Totam et nihil dolor aut. Quas distinctio et sunt nam quia facilis.</p>', 13200, 'products\\December2022\\KwleqC9vTMGecaSKdpTu.png', '2022-12-08 19:31:00', '2022-12-09 10:57:02'),
(18, 'Débardeur noire', 'quo-voluptas-dolorum-quisquam-in-error-dolorem-a', 'Architecto natus magnam blanditiis eligendi ratione quibusdam provident qui illum molestiae quo.', '<p>Rerum est minima facere est. Praesentium voluptas aut cum id est. Dolorem pariatur sed repellat ea eos laboriosam a.</p>', 2500, 'products\\December2022\\e4WCEQkNmcKTzUKKEajR.png', '2022-12-08 19:31:00', '2022-12-09 10:57:20'),
(19, 'Haut blanc', 'quod-placeat-quia-rerum-non-aut-alias', 'Consequuntur temporibus ut quia quam et dolores a minus quos hic consequatur et quo.', '<p>Voluptas qui commodi reprehenderit sint iusto. Aspernatur est hic debitis harum. Sunt odit aut dolores.</p>', 14400, 'products\\December2022\\3b1PBjB1GaZgyBhbMKfk.png', '2022-12-08 19:31:00', '2022-12-09 10:57:29'),
(20, 'Collier Coeur', 'ipsam-sapiente-quia-vel-tenetur-provident-exercitationem', 'Nesciunt in aspernatur quam in sequi recusandae qui.', '<p>Tempore assumenda sed culpa ut. Minus id at omnis facilis. Nihil nisi consequatur cumque maiores doloremque. Distinctio omnis ex beatae sed ratione.</p>', 13800, 'products\\December2022\\crlvqfn6JtK7fvAI3lop.png', '2022-12-08 19:31:00', '2022-12-09 12:24:41'),
(21, 'Collier Papillon', 'voluptatibus-eos-suscipit-voluptates-aperiam', 'Quisquam numquam ad dolorum quia tempora iste totam accusantium.', '<p>Omnis vel est cupiditate iste. Iure quas quis et officia. Praesentium culpa rerum explicabo voluptatibus veniam quis asperiores. Exercitationem nesciunt rerum qui consequatur ea.</p>', 26100, 'products\\December2022\\fUzgx3bYizLbJrKCBmaN.png', '2022-12-08 19:31:00', '2022-12-09 12:24:50'),
(22, 'Collier Perle', 'id-iure-quia-fugit-nihil-atque', 'Amet rem beatae ad cupiditate est distinctio at veritatis sapiente doloremque dolorem minus enim et.', '<p>Molestias ex tempore iste nemo ea ea. Et omnis rem nihil dolor rerum sint sed nihil.</p>', 7600, 'products\\December2022\\RydxZY6Q4HCbj8RP103X.png', '2022-12-08 19:31:00', '2022-12-09 12:25:56'),
(23, 'Bague Etoile', 'quis-aut-quod-porro-accusamus', 'Vel temporibus dicta vel odio libero dicta quam ad ut.', '<p>Velit eos ut possimus dolorum. Aut est tenetur sed placeat. Sunt ipsam culpa nesciunt quam nihil. Omnis quas nobis consequatur.</p>', 17000, 'products\\December2022\\T9kgH50eCtHzRJA3525m.png', '2022-12-08 19:31:00', '2022-12-09 10:55:54'),
(24, 'Bague en diamant', 'magnam-officia-autem-dolore-et-dolor-a-voluptatem', 'Optio fugit est voluptatum veritatis earum sequi fugit rerum minima et.', '<p>Autem odio omnis esse necessitatibus eaque autem consectetur. Doloribus harum est nulla qui quis nam magni illum. Omnis sint veniam ut voluptates nisi.</p>', 25200, 'products\\December2022\\wYfXR2iAtbVMIrDDPQdX.png', '2022-12-08 19:31:00', '2022-12-09 10:56:06'),
(25, 'Bague en forme de coeur', 'sunt-laudantium-molestiae-autem-quam-accusamus-qui', 'Omnis quis distinctio officiis aspernatur eum quae velit aspernatur animi ab quidem est culpa.', '<p>Autem non architecto enim et nemo quasi necessitatibus. Aut enim aliquam minima sit vero officia corrupti. Itaque cum illo fugiat ut. Sed doloremque et ea assumenda maxime.</p>', 2600, 'products\\December2022\\9hzFuxSMLDzdjFgr3Z9A.png', '2022-12-08 19:31:00', '2022-12-09 10:56:18');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2022-12-08 19:33:00', '2022-12-08 19:33:00'),
(2, 'user', 'Normal User', '2022-12-08 19:33:00', '2022-12-08 19:33:00');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `details` text COLLATE utf8_unicode_ci,
  `type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE IF NOT EXISTS `translations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin@admin.com', 'users\\December2022\\M9SlAafiV0tPZQg3HuMr.jpg', NULL, '$2y$10$Bo/sl3D6YIllfN3uvS35SeFGd8yQ71Xq02M81Gls2x/tqgeG6HoEy', NULL, '{\"locale\":\"en\"}', '2022-12-08 19:35:39', '2022-12-09 09:36:27');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
