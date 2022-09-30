-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 30 sep. 2022 à 16:54
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ornelylovoyo`
--

-- --------------------------------------------------------

--
-- Structure de la table `ch_favorites`
--

CREATE TABLE `ch_favorites` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `favorite_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ch_favorites`
--

INSERT INTO `ch_favorites` (`id`, `user_id`, `favorite_id`, `created_at`, `updated_at`) VALUES
(10226825, 1, 2, '2022-09-11 18:09:12', '2022-09-11 18:09:12');

-- --------------------------------------------------------

--
-- Structure de la table `ch_messages`
--

CREATE TABLE `ch_messages` (
  `id` bigint(20) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `to_id` bigint(20) NOT NULL,
  `body` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ch_messages`
--

INSERT INTO `ch_messages` (`id`, `type`, `from_id`, `to_id`, `body`, `attachment`, `seen`, `created_at`, `updated_at`) VALUES
(1675784938, 'user', 3, 1, 'ok', NULL, 1, '2022-09-11 20:11:38', '2022-09-11 20:16:11'),
(1685163841, 'user', 3, 1, 'oui salut ni sawa?', NULL, 1, '2022-09-11 20:00:46', '2022-09-11 20:00:47'),
(1712287775, 'user', 1, 3, 'salut', NULL, 1, '2022-09-11 19:51:43', '2022-09-11 20:00:36'),
(1743141795, 'user', 1, 2, 'Sawa boss?', NULL, 1, '2022-09-11 18:08:19', '2022-09-29 13:54:52'),
(1783488660, 'user', 4, 3, 'salut boss', NULL, 0, '2022-09-11 20:18:19', '2022-09-11 20:18:19'),
(1820781190, 'user', 1, 2, 'jolie photo', NULL, 1, '2022-09-11 20:10:51', '2022-09-29 13:54:52'),
(1882441510, 'user', 1, 2, 'ni sawa?', '{\"new_name\":\"bb796174-4e7a-4a81-821b-e3488b37e7df.jpg\",\"old_name\":\"305839085_173125481919319_6454629331636632560_n.jpg\"}', 1, '2022-09-11 18:07:37', '2022-09-29 13:54:52'),
(1908170472, 'user', 1, 2, 'Bonsoir', NULL, 1, '2022-09-11 18:07:12', '2022-09-29 13:54:52'),
(1914155940, 'user', 3, 1, '', '{\"new_name\":\"9e67ba16-9ee8-4006-93da-28fbd6c132b9.jpg\",\"old_name\":\"182839677.jpg\"}', 1, '2022-09-11 20:09:30', '2022-09-11 20:16:11'),
(1942117245, 'user', 2, 4, 'salut', NULL, 0, '2022-09-29 13:55:29', '2022-09-29 13:55:29'),
(2080843018, 'user', 3, 1, 'sawa!', NULL, 1, '2022-09-11 20:03:39', '2022-09-11 20:03:40'),
(2250662457, 'user', 1, 2, 'Amani festival', '{\"new_name\":\"440ad882-505f-4fef-8b99-6a0ff93045b3.jpg\",\"old_name\":\"43ca772c4b6ce3aa5c1988d96ecaac71.jpg\"}', 1, '2022-09-11 18:08:48', '2022-09-29 13:54:52'),
(2255061910, 'user', 1, 3, 'boss', NULL, 1, '2022-09-11 19:58:05', '2022-09-11 20:00:36'),
(2308276060, 'user', 1, 3, 'ndiyo ni sawa!', '{\"new_name\":\"0f3a112f-a8b1-4f72-8258-ff72693683d3.jpg\",\"old_name\":\"510608700.jpg\"}', 1, '2022-09-11 20:01:26', '2022-09-11 20:01:28'),
(2476128995, 'user', 2, 3, 'Bonjour', NULL, 0, '2022-09-29 13:55:44', '2022-09-29 13:55:44');

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
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
(29, 8, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 8, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(31, 8, 'start', 'date', 'Start', 1, 1, 1, 1, 1, 1, '{}', 4),
(32, 8, 'end', 'date', 'End', 1, 1, 1, 1, 1, 1, '{}', 5),
(33, 8, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(34, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(35, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(37, 8, 'event_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"ch_favorites\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(38, 8, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, '{}', 4);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2022-09-11 17:35:57', '2022-09-11 17:35:57'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-09-11 17:35:57', '2022-09-11 17:35:57'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-09-11 17:35:57', '2022-09-11 17:35:57'),
(8, 'events', 'events', 'Event', 'Events', 'fa-bookmark', 'App\\Models\\Event', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-09-29 16:46:18', '2022-09-29 17:41:01');

-- --------------------------------------------------------

--
-- Structure de la table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `events`
--

INSERT INTO `events` (`id`, `title`, `url`, `start`, `end`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Conférence 1', 'https://meet.jit.si/victory', '2022-09-23', '2022-09-23', 1, '2022-09-29 17:44:45', '2022-09-29 17:44:45'),
(2, 'Conférence 2', 'https://meet.jit.si/victory', '2022-09-25', '2022-09-25', 1, '2022-09-29 17:45:22', '2022-09-29 17:45:22'),
(3, 'Conférence Consultation', 'https://meet.jit.si/dreamofdrc', '2022-09-30', '2022-09-30', 5, '2022-09-29 17:46:00', '2022-09-29 17:46:51'),
(4, 'Conférence consultation', 'https://meet.jit.si/dreamofdrc', '2022-09-30', '2022-09-30', 1, '2022-09-29 17:47:31', '2022-09-29 17:47:31');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-09-11 17:35:57', '2022-09-11 17:35:57'),
(2, 'standard', '2022-09-29 19:45:50', '2022-09-29 19:45:50');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Messagerie', '/chatify', '_self', 'voyager-chat', '#000000', NULL, 1, '2022-09-11 17:35:57', '2022-09-30 12:15:09', NULL, ''),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 3, '2022-09-11 17:35:57', '2022-09-29 20:05:10', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, 5, 2, '2022-09-11 17:35:57', '2022-09-11 21:17:25', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 5, 1, '2022-09-11 17:35:57', '2022-09-11 21:17:18', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', '#000000', NULL, 4, '2022-09-11 17:35:57', '2022-09-29 20:05:10', NULL, ''),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 3, '2022-09-11 17:35:57', '2022-09-11 21:17:28', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 4, '2022-09-11 17:35:57', '2022-09-11 21:17:28', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 5, '2022-09-11 17:35:57', '2022-09-11 21:17:28', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 6, '2022-09-11 17:35:57', '2022-09-11 21:17:28', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 5, '2022-09-11 17:35:57', '2022-09-29 20:05:10', 'voyager.settings.index', NULL),
(12, 1, 'Conférence', '/notification/calendar', '_self', 'voyager-calendar', '#000000', 16, 1, '2022-09-11 21:10:55', '2022-09-29 20:07:47', NULL, ''),
(14, 1, 'Events', '', '_self', 'voyager-anchor', '#000000', NULL, 2, '2022-09-29 16:46:18', '2022-09-29 20:05:02', 'voyager.events.index', 'null'),
(15, 2, 'Notification', '/notification', '_self', 'voyager-bell', '#000000', NULL, 1, '2022-09-29 20:02:58', '2022-09-29 20:03:11', NULL, ''),
(16, 1, 'Opération', '', '_self', 'voyager-shop', '#000000', NULL, 6, '2022-09-29 20:04:07', '2022-09-29 20:06:24', NULL, ''),
(17, 1, 'Notification', '/notification', '_self', 'voyager-bell', '#000000', 16, 2, '2022-09-29 20:04:36', '2022-09-29 20:05:10', NULL, '');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(24, '2022_09_11_999999_add_active_status_to_users', 2),
(25, '2022_09_11_999999_add_avatar_to_users', 2),
(26, '2022_09_11_999999_add_dark_mode_to_users', 2),
(27, '2022_09_11_999999_add_messenger_color_to_users', 2),
(28, '2022_09_11_999999_create_favorites_table', 2),
(29, '2022_09_11_999999_create_messages_table', 2),
(32, '2022_09_11_225747_create_events_table', 3);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-09-11 17:35:57', '2022-09-11 17:35:57'),
(2, 'browse_bread', NULL, '2022-09-11 17:35:57', '2022-09-11 17:35:57'),
(3, 'browse_database', NULL, '2022-09-11 17:35:57', '2022-09-11 17:35:57'),
(4, 'browse_media', NULL, '2022-09-11 17:35:57', '2022-09-11 17:35:57'),
(5, 'browse_compass', NULL, '2022-09-11 17:35:57', '2022-09-11 17:35:57'),
(6, 'browse_menus', 'menus', '2022-09-11 17:35:57', '2022-09-11 17:35:57'),
(7, 'read_menus', 'menus', '2022-09-11 17:35:57', '2022-09-11 17:35:57'),
(8, 'edit_menus', 'menus', '2022-09-11 17:35:57', '2022-09-11 17:35:57'),
(9, 'add_menus', 'menus', '2022-09-11 17:35:57', '2022-09-11 17:35:57'),
(10, 'delete_menus', 'menus', '2022-09-11 17:35:57', '2022-09-11 17:35:57'),
(11, 'browse_roles', 'roles', '2022-09-11 17:35:57', '2022-09-11 17:35:57'),
(12, 'read_roles', 'roles', '2022-09-11 17:35:57', '2022-09-11 17:35:57'),
(13, 'edit_roles', 'roles', '2022-09-11 17:35:57', '2022-09-11 17:35:57'),
(14, 'add_roles', 'roles', '2022-09-11 17:35:57', '2022-09-11 17:35:57'),
(15, 'delete_roles', 'roles', '2022-09-11 17:35:57', '2022-09-11 17:35:57'),
(16, 'browse_users', 'users', '2022-09-11 17:35:57', '2022-09-11 17:35:57'),
(17, 'read_users', 'users', '2022-09-11 17:35:57', '2022-09-11 17:35:57'),
(18, 'edit_users', 'users', '2022-09-11 17:35:57', '2022-09-11 17:35:57'),
(19, 'add_users', 'users', '2022-09-11 17:35:57', '2022-09-11 17:35:57'),
(20, 'delete_users', 'users', '2022-09-11 17:35:57', '2022-09-11 17:35:57'),
(21, 'browse_settings', 'settings', '2022-09-11 17:35:57', '2022-09-11 17:35:57'),
(22, 'read_settings', 'settings', '2022-09-11 17:35:57', '2022-09-11 17:35:57'),
(23, 'edit_settings', 'settings', '2022-09-11 17:35:57', '2022-09-11 17:35:57'),
(24, 'add_settings', 'settings', '2022-09-11 17:35:57', '2022-09-11 17:35:57'),
(25, 'delete_settings', 'settings', '2022-09-11 17:35:57', '2022-09-11 17:35:57'),
(31, 'browse_events', 'events', '2022-09-29 16:46:18', '2022-09-29 16:46:18'),
(32, 'read_events', 'events', '2022-09-29 16:46:18', '2022-09-29 16:46:18'),
(33, 'edit_events', 'events', '2022-09-29 16:46:18', '2022-09-29 16:46:18'),
(34, 'add_events', 'events', '2022-09-29 16:46:18', '2022-09-29 16:46:18'),
(35, 'delete_events', 'events', '2022-09-29 16:46:18', '2022-09-29 16:46:18');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(1, 4),
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
(31, 1),
(31, 3),
(31, 4),
(32, 1),
(32, 3),
(32, 4),
(33, 1),
(33, 3),
(33, 4),
(34, 1),
(34, 3),
(34, 4),
(35, 1),
(35, 3),
(35, 4);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2022-09-11 17:35:57', '2022-09-11 17:35:57'),
(2, 'user', 'Normal User', '2022-09-11 17:35:57', '2022-09-11 17:35:57'),
(3, 'Malade', 'Malade', '2022-09-29 16:53:55', '2022-09-29 16:53:55'),
(4, 'Medecin/infirmier', 'docteur', '2022-09-29 16:54:24', '2022-09-29 16:54:24');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\September2022\\20yuqVBB9orV3jGzispe.png', '', 'image', 4, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 3, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Vsat system', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `dark_mode` tinyint(1) NOT NULL DEFAULT 0,
  `messenger_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#2180f3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `active_status`, `dark_mode`, `messenger_color`) VALUES
(1, 1, 'Roger Sumaili', 'admin@admin.com', 'users\\September2022\\GMnAyj379I5jo8Bpg43g.jpg', NULL, '$2y$10$wS5AEG9s5u3laEL1ZfHu.O7U.28aUZ44Xnpqw5TT84BLpYo04zz4O', NULL, '{\"locale\":\"en\"}', '2022-09-11 17:37:31', '2022-09-11 20:16:38', 0, 0, '#2180f3'),
(2, 1, 'Admin', 'admin@gmail.com', 'users/default.png', NULL, '$2y$10$1Y3nD4vnR9/QIn5qnJxldu1xvD8XHGFU1yQjO1rVawK2poz0Z2Try', NULL, '{\"locale\":\"en\"}', '2022-09-11 17:41:08', '2022-09-11 17:41:08', 0, 0, '#2180f3'),
(3, 3, 'cubaka mulume alpha', 'cubakamulumealpha@gmail.com', 'users/default.png', NULL, '$2y$10$KgvTQiysZIZkjaMpIy/QCepBq8Yv/ToYo1KgvZ7pnYTPeBXzEwEae', NULL, '{\"locale\":\"en\"}', '2022-09-11 19:05:57', '2022-09-29 16:56:03', 1, 0, '#2180f3'),
(4, 3, 'Jérémie  mila', 'jeremie@gmail.com', 'users/default.png', NULL, '$2y$10$0VSiLkMIRpHXwL.Gvfrwy.TKq7/127Z.sJqY/e7QvcaGFlo2ZdKjm', NULL, '{\"locale\":\"en\"}', '2022-09-11 20:17:38', '2022-09-29 16:54:59', 0, 0, '#2180f3'),
(5, 4, 'pionde bin sefu', 'pionde@gmail.com', 'users/default.png', NULL, '$2y$10$n.UqF0/mko9fFShM/TQ1l.4whBxxqxI5XJg9cS.OMj2.LIiNd963C', NULL, '{\"locale\":\"en\"}', '2022-09-29 16:59:13', '2022-09-29 16:59:13', 0, 0, '#2180f3'),
(6, 4, 'kasumba kipindula', 'kasumba@gmail.com', 'users\\September2022\\W1yhXq5RCUClHpHId7Iz.JPG', NULL, '$2y$10$Hpm4aG6E2GzYlHqKHRUGle22Zfep7/CL6i05aGRWSdw5Kbd.Ueofq', NULL, '{\"locale\":\"en\"}', '2022-09-29 17:00:00', '2022-09-30 11:53:16', 0, 0, '#2180f3'),
(7, 3, 'Yuma kayanda', 'yuma@gmail.com', 'users\\September2022\\7hgGy18Xi7eCCKo4vVFr.JPG', NULL, '$2y$10$5SMmuxC.FqjIY9vfs0h/we9.fJap6KoifT/56O8KpRorRZqeS9wzq', NULL, '{\"locale\":\"en\"}', '2022-09-29 17:00:53', '2022-09-30 11:52:58', 0, 0, '#2180f3');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(2, 1),
(3, 3),
(4, 3),
(5, 4),
(6, 2),
(7, 3);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ch_favorites`
--
ALTER TABLE `ch_favorites`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ch_messages`
--
ALTER TABLE `ch_messages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Index pour la table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Index pour la table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_user_id_foreign` (`user_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Index pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Index pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Index pour la table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

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
