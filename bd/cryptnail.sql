-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 18 oct. 2022 à 00:42
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
-- Base de données : `cryptnail`
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
(10226825, 1, 2, '2022-09-11 18:09:12', '2022-09-11 18:09:12'),
(24526766, 8, 6, '2022-10-03 12:32:48', '2022-10-03 12:32:48');

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
(1676483841, 'user', 2, 1, 'salut', NULL, 0, '2022-10-17 06:49:20', '2022-10-17 06:49:20'),
(1685163841, 'user', 3, 1, 'oui salut ni sawa?', NULL, 1, '2022-09-11 20:00:46', '2022-09-11 20:00:47'),
(1707041303, 'user', 8, 6, 'Bonjour!', NULL, 1, '2022-10-01 11:25:24', '2022-10-01 11:26:31'),
(1710683619, 'user', 6, 8, 'ce comment?', NULL, 1, '2022-10-01 11:27:40', '2022-10-01 11:27:42'),
(1712287775, 'user', 1, 3, 'salut', NULL, 1, '2022-09-11 19:51:43', '2022-09-11 20:00:36'),
(1743141795, 'user', 1, 2, 'Sawa boss?', NULL, 1, '2022-09-11 18:08:19', '2022-09-29 13:54:52'),
(1783488660, 'user', 4, 3, 'salut boss', NULL, 0, '2022-09-11 20:18:19', '2022-09-11 20:18:19'),
(1797483449, 'user', 2, 8, 'ye oyo!', '{\"new_name\":\"46108cee-85b9-49c6-94c0-e8a993194b14.jpg\",\"old_name\":\"images00.jpg\"}', 1, '2022-10-01 11:22:39', '2022-10-01 11:22:42'),
(1820781190, 'user', 1, 2, 'jolie photo', NULL, 1, '2022-09-11 20:10:51', '2022-09-29 13:54:52'),
(1862302837, 'user', 8, 2, 'ndiyo sawa', NULL, 1, '2022-10-01 11:21:34', '2022-10-01 11:21:36'),
(1882441510, 'user', 1, 2, 'ni sawa?', '{\"new_name\":\"bb796174-4e7a-4a81-821b-e3488b37e7df.jpg\",\"old_name\":\"305839085_173125481919319_6454629331636632560_n.jpg\"}', 1, '2022-09-11 18:07:37', '2022-09-29 13:54:52'),
(1908170472, 'user', 1, 2, 'Bonsoir', NULL, 1, '2022-09-11 18:07:12', '2022-09-29 13:54:52'),
(1914155940, 'user', 3, 1, '', '{\"new_name\":\"9e67ba16-9ee8-4006-93da-28fbd6c132b9.jpg\",\"old_name\":\"182839677.jpg\"}', 1, '2022-09-11 20:09:30', '2022-09-11 20:16:11'),
(1942117245, 'user', 2, 4, 'salut', NULL, 0, '2022-09-29 13:55:29', '2022-09-29 13:55:29'),
(1951726258, 'user', 8, 6, 'oui bonsoir', NULL, 1, '2022-10-03 12:30:26', '2022-10-03 12:30:27'),
(1982872501, 'user', 6, 8, 'ni\r\n sawa?', NULL, 1, '2022-10-03 12:30:39', '2022-10-03 12:30:41'),
(2040915207, 'user', 8, 6, 'sawa boss', '{\"new_name\":\"bc76e889-1703-4038-9a8e-19ea6fff5364.jpg\",\"old_name\":\"rikolto.jpg\"}', 1, '2022-10-03 12:31:03', '2022-10-03 12:31:05'),
(2080843018, 'user', 3, 1, 'sawa!', NULL, 1, '2022-09-11 20:03:39', '2022-09-11 20:03:40'),
(2138092363, 'user', 9, 8, 'ok attends j&#039;appelle d&eacute;j&agrave; le docteur', NULL, 1, '2022-10-01 11:40:26', '2022-10-01 11:40:29'),
(2163874320, 'user', 6, 2, '&ccedil;a va?', NULL, 1, '2022-10-03 12:31:52', '2022-10-03 12:31:53'),
(2250662457, 'user', 1, 2, 'Amani festival', '{\"new_name\":\"440ad882-505f-4fef-8b99-6a0ff93045b3.jpg\",\"old_name\":\"43ca772c4b6ce3aa5c1988d96ecaac71.jpg\"}', 1, '2022-09-11 18:08:48', '2022-09-29 13:54:52'),
(2255061910, 'user', 1, 3, 'boss', NULL, 1, '2022-09-11 19:58:05', '2022-09-11 20:00:36'),
(2287197007, 'user', 8, 2, 'bonsoir', NULL, 0, '2022-10-03 12:32:32', '2022-10-03 12:32:32'),
(2308276060, 'user', 1, 3, 'ndiyo ni sawa!', '{\"new_name\":\"0f3a112f-a8b1-4f72-8258-ff72693683d3.jpg\",\"old_name\":\"510608700.jpg\"}', 1, '2022-09-11 20:01:26', '2022-09-11 20:01:28'),
(2335761872, 'user', 6, 8, 'bonsoir', NULL, 1, '2022-10-03 12:30:05', '2022-10-03 12:30:18'),
(2367573893, 'user', 2, 8, 'oui bonjour! ni sawa?', NULL, 1, '2022-10-01 11:21:17', '2022-10-01 11:21:19'),
(2369746477, 'user', 8, 9, 'bonjour je suis d&eacute;j&agrave; prete', NULL, 1, '2022-10-01 11:39:18', '2022-10-01 11:40:08'),
(2458152108, 'user', 2, 6, 'Bonsoir dr', NULL, 1, '2022-10-03 12:31:31', '2022-10-03 12:31:43'),
(2476128995, 'user', 2, 3, 'Bonjour', NULL, 0, '2022-09-29 13:55:44', '2022-09-29 13:55:44'),
(2528806224, 'user', 8, 6, 'https://meet.jit.si/brKxdYDURKPKUEZj2LVLHWP25DAABb', NULL, 1, '2022-10-01 11:28:11', '2022-10-01 11:28:14'),
(2571443945, 'user', 8, 2, 'sawa', NULL, 1, '2022-10-01 11:22:59', '2022-10-01 11:23:01'),
(2583840859, 'user', 8, 2, 'bonjour boss', NULL, 1, '2022-10-01 11:20:21', '2022-10-01 11:20:48'),
(2620760785, 'user', 6, 2, 'oui oui', NULL, 1, '2022-10-03 12:31:48', '2022-10-03 12:31:50');

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nonCours` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prerequis` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `objectif` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nbrHeure` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_debit` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL,
  `etat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cours`
--

INSERT INTO `cours` (`id`, `user_id`, `nonCours`, `description`, `image`, `file`, `prerequis`, `objectif`, `nbrHeure`, `created_at`, `updated_at`, `date_debit`, `date_fin`, `etat`) VALUES
(1, 1, 'React', '<h1 class=\"h1\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 42px; line-height: 1.2; font-family: Inter, sans-serif; vertical-align: baseline; min-width: 0px; color: #121c42;\">React</h1>\r\n<div class=\"formatted text-big\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 1.1em; line-height: inherit; font-family: Inter, sans-serif; vertical-align: baseline; min-width: 0px; color: #121c42;\">\r\n<p style=\"box-sizing: border-box; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.6; font-family: inherit; vertical-align: baseline; margin: 0px !important 0px 0px !important 0px;\">Une librairie JavaScript pour cr&eacute;er des interfaces utilisateurs. Cette librairie se repose sur le principe du virtual DOM afin de limiter au maximum les op&eacute;rations sur le vrai DOM (qui sont, elles, beaucoup plus lentes).</p>\r\n<p style=\"box-sizing: border-box; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.6; font-family: inherit; vertical-align: baseline; margin: 0px !important 0px 0px !important 0px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: open-sans, Arial, sans-serif, helvetica, arial, sans-serif; font-size: 14px;\">Durant cette formation React de 3 jours, vous apprendrez &agrave; ma&icirc;trisez les bases du framework&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\"><a style=\"box-sizing: border-box; color: #61c258; text-decoration-line: none; background-color: transparent; font-weight: 400;\" href=\"https://fr.reactjs.org/\" rel=\"nofollow noopener\">React</a></span>.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: open-sans, Arial, sans-serif, helvetica, arial, sans-serif; font-size: 14px;\">React a r&eacute;volutionn&eacute; le d&eacute;veloppement front-end depuis sa sortie en 2013. Il fait aujourd\'hui tourner un grand nombre d\'applications modernes. D&eacute;velopp&eacute; et maintenu par Facebook en open source, sa versatilit&eacute; et son &eacute;cosyst&egrave;me riche en font&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">un des outils les plus populaires du secteur</span>.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: open-sans, Arial, sans-serif, helvetica, arial, sans-serif; font-size: 14px;\">Cette&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">formation React</span>&nbsp;vous propose de comprendre les&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">grands principes</span>&nbsp;qui ont permis &agrave; React de s\'imposer comme la r&eacute;f&eacute;rence du d&eacute;veloppement front-end, et de les mettre en pratique au travers d\'un&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">projet fil rouge</span>.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: open-sans, Arial, sans-serif, helvetica, arial, sans-serif; font-size: 14px;\">Vous ressortirez de cette formation React en ayant compris son fonctionnement, ainsi qu\'en &eacute;tant&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">autonome sur l\'&eacute;criture de code React</span>,&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">version classes</span>&nbsp;ou&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">hooks</span>.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: open-sans, Arial, sans-serif, helvetica, arial, sans-serif; font-size: 14px;\">Cette formation est destin&eacute;e &agrave; des&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">d&eacute;veloppeurs et d&eacute;veloppeuses Javascript exp&eacute;riment&eacute;s</span>&nbsp;d&eacute;sirant acqu&eacute;rir la confiance n&eacute;cessaire pour se lancer dans le grand bain React.</p>\r\n<h2 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 300; line-height: 1.4; font-size: 1.875rem; font-family: brandon-grotesque, Arial, sans-serif; text-transform: uppercase; color: #212529;\">ENVIE D\'ALLER PLUS LOIN ?</h2>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: open-sans, Arial, sans-serif, helvetica, arial, sans-serif; font-size: 14px;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Si vous avez d&eacute;j&agrave; un peu d&rsquo;exp&eacute;rience avec React</span>&nbsp;et que&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">vous avez envie de d&eacute;couvrir des patterns avanc&eacute;s, l\'optimisation de performances ou encore les tests avec React</span>, jetez un oeil &agrave; notre formation React Avanc&eacute;.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: open-sans, Arial, sans-serif, helvetica, arial, sans-serif; font-size: 14px;\">Pour d&eacute;couvrir d\'autres&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">frameworks front-end</span>, jetez un oeil &agrave; l\'une de nos formations d&eacute;di&eacute;es :<br style=\"box-sizing: border-box;\" />-&nbsp;<a style=\"box-sizing: border-box; color: #61c258; text-decoration-line: none; background-color: transparent;\" href=\"https://www.humancoders.com/formations/vue-js\">Vue.js</a>,<br style=\"box-sizing: border-box;\" />-&nbsp;<a style=\"box-sizing: border-box; color: #61c258; text-decoration-line: none; background-color: transparent;\" href=\"https://www.humancoders.com/formations/svelte\">Svelte</a>,<br style=\"box-sizing: border-box;\" />- ou encore&nbsp;<a style=\"box-sizing: border-box; color: #61c258; text-decoration-line: none; background-color: transparent;\" href=\"https://www.humancoders.com/formations/angular\">Angular</a>.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: open-sans, Arial, sans-serif, helvetica, arial, sans-serif; font-size: 14px;\"><a style=\"box-sizing: border-box; color: #61c258; text-decoration-line: none; background-color: transparent;\" href=\"https://www.humancoders.com/pages/teleformation\">Covid-19: Nous restons ouverts. Cette formation est disponible &agrave; distance.</a><br style=\"box-sizing: border-box;\" /><span style=\"box-sizing: border-box; font-weight: bolder;\">🇺🇸 This training is also available in English</span></p>\r\n</div>', 'cours\\October2022\\XTPorDtBx9xzaLHkmglN.png', '[{\"download_link\":\"cours\\\\October2022\\\\7E3a4msbO8aJsY8eHXAi.pdf\",\"original_name\":\"30-days-of-react-ebook-fullstackio.pdf\"}]', '<ul type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"color: #212529; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: FR;\">1 an d\'exp&eacute;rience avec Javascript</span></li>\r\n<li class=\"MsoNormal\" style=\"color: #212529; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: FR;\">&Ecirc;tre familier avec la syntaxe ES6 (fonctions fl&egrave;ches, destructuration, &hellip;)</span></li>\r\n<li class=\"MsoNormal\" style=\"color: #212529; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: FR;\">Ma&icirc;triser la manipulation de tableaux (</span><span style=\"font-size: 9.0pt; font-family: Consolas; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Courier New\'; color: #e83e8c; mso-fareast-language: FR;\">forEach</span><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: FR;\">,&nbsp;</span><span style=\"font-size: 9.0pt; font-family: Consolas; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Courier New\'; color: #e83e8c; mso-fareast-language: FR;\">map</span><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: FR;\">)</span></li>\r\n<li class=\"MsoNormal\" style=\"color: #212529; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: FR;\">&Ecirc;tre capable de consommer des Promesses</span></li>\r\n<li class=\"MsoNormal\" style=\"color: #212529; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: FR;\">Ordinateur portable &agrave; apporter</span></li>\r\n</ul>', '<ul type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"color: #212529; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: FR;\">Comprendre les principes de React</span></li>\r\n<li class=\"MsoNormal\" style=\"color: #212529; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: FR;\">&Ecirc;tre autonome dans la lecture et l\'&eacute;criture de JSX</span></li>\r\n<li class=\"MsoNormal\" style=\"color: #212529; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: FR;\">Cr&eacute;er des composants classes et fonctionnels</span></li>\r\n<li class=\"MsoNormal\" style=\"color: #212529; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: FR;\">Utiliser les hooks principaux</span></li>\r\n<li class=\"MsoNormal\" style=\"color: #212529; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: FR;\">&Eacute;crire une application React compl&egrave;te</span></li>\r\n</ul>', 139, '2022-10-17 06:34:00', '2022-10-17 15:52:54', '2022-10-17', '2022-12-17', 'option1'),
(2, 1, 'HTML', '<h1 class=\"h1\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 42px; line-height: 1.2; font-family: Inter, sans-serif; vertical-align: baseline; min-width: 0px; color: #121c42;\">HTML</h1>\r\n<div class=\"formatted text-big\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 1.1em; line-height: inherit; font-family: Inter, sans-serif; vertical-align: baseline; min-width: 0px; color: #121c42;\">\r\n<p style=\"box-sizing: border-box; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.6; font-family: inherit; vertical-align: baseline; margin: 0px !important 0px 0px !important 0px;\">L\'HTML constitue la base de tous les sites internet. Ce langage de balisage permet de d&eacute;finir la structure d\'une page web et de d&eacute;finir les propri&eacute;t&eacute;s du document et de structurer le contenu &agrave; l\'aide d\'un syst&egrave;me de balise sensiblement identique au XML.</p>\r\n<p style=\"box-sizing: border-box; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.6; font-family: inherit; vertical-align: baseline; margin: 0px !important 0px 0px !important 0px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 14px; max-width: 118.4rem; color: #1c1d1f; font-family: \'udemy sans\', \'sf pro text\', -apple-system, BlinkMacSystemFont, Roboto, \'segoe ui\', Helvetica, Arial, sans-serif, \'apple color emoji\', \'segoe ui emoji\', \'segoe ui symbol\';\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Course: Learn HTML - For Beginners<br style=\"box-sizing: border-box; margin: 0px; padding: 0px;\" /></strong><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Lean how to create web pages using HTML</em></p>\r\n<p style=\"box-sizing: border-box; margin: 0.8rem 0px 0px; padding: 0px; font-size: 14px; max-width: 118.4rem; color: #1c1d1f; font-family: \'udemy sans\', \'sf pro text\', -apple-system, BlinkMacSystemFont, Roboto, \'segoe ui\', Helvetica, Arial, sans-serif, \'apple color emoji\', \'segoe ui emoji\', \'segoe ui symbol\';\">Students will learn how to create engaging web pages using HTML5, which is an integral part of the development process.</p>\r\n<p style=\"box-sizing: border-box; margin: 0.8rem 0px 0px; padding: 0px; font-size: 14px; max-width: 118.4rem; color: #1c1d1f; font-family: \'udemy sans\', \'sf pro text\', -apple-system, BlinkMacSystemFont, Roboto, \'segoe ui\', Helvetica, Arial, sans-serif, \'apple color emoji\', \'segoe ui emoji\', \'segoe ui symbol\';\">The material covers an intensive array of HTML5 elements including images, videos, lists, tables, forms, iframes and much more.</p>\r\n<p style=\"box-sizing: border-box; margin: 0.8rem 0px 0px; padding: 0px; font-size: 14px; max-width: 118.4rem; color: #1c1d1f; font-family: \'udemy sans\', \'sf pro text\', -apple-system, BlinkMacSystemFont, Roboto, \'segoe ui\', Helvetica, Arial, sans-serif, \'apple color emoji\', \'segoe ui emoji\', \'segoe ui symbol\';\">The course includes several hands-on projects to ensure comprehension of course materials.</p>\r\n<p style=\"box-sizing: border-box; margin: 0.8rem 0px 0px; padding: 0px; font-size: 14px; max-width: 118.4rem; color: #1c1d1f; font-family: \'udemy sans\', \'sf pro text\', -apple-system, BlinkMacSystemFont, Roboto, \'segoe ui\', Helvetica, Arial, sans-serif, \'apple color emoji\', \'segoe ui emoji\', \'segoe ui symbol\';\">By the end of the training, students will be proficient with coding in HTML and ready to tackle the more advanced scripting languages that follow.</p>\r\n<p style=\"box-sizing: border-box; margin: 0.8rem 0px 0px; padding: 0px; font-size: 14px; max-width: 118.4rem; color: #1c1d1f; font-family: \'udemy sans\', \'sf pro text\', -apple-system, BlinkMacSystemFont, Roboto, \'segoe ui\', Helvetica, Arial, sans-serif, \'apple color emoji\', \'segoe ui emoji\', \'segoe ui symbol\';\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">What you\'ll learn - Overview:</strong></p>\r\n</div>', 'cours\\October2022\\LtuCOiO4ksxd6TN8XK1h.png', '[{\"download_link\":\"cours\\\\October2022\\\\AhppdNwuTulBA049hukR.pdf\",\"original_name\":\"html_fr.pdf\"}]', '<ul class=\"unstyled-list udlite-block-list\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 16px; max-width: 118.4rem; list-style: none; color: #1c1d1f; font-family: \'udemy sans\', \'sf pro text\', -apple-system, BlinkMacSystemFont, Roboto, \'segoe ui\', Helvetica, Arial, sans-serif, \'apple color emoji\', \'segoe ui emoji\', \'segoe ui symbol\';\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n<div class=\"udlite-block-list-item udlite-block-list-item-small udlite-block-list-item-tight udlite-block-list-item-neutral udlite-text-sm\" style=\"box-sizing: border-box; margin: 0px; padding: 0.4rem 0px; line-height: 1.4; font-size: 1.4rem; display: flex; align-items: flex-start; width: 700px; height: auto;\">\r\n<div class=\"udlite-block-list-item-content\" style=\"box-sizing: border-box; margin: 0px 0px 0px 1.6rem; padding: 0px; flex: 1 1 0%; min-width: 1px; min-height: 1.96rem;\">\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; margin-bottom: .0001pt; text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #1c1d1f; mso-fareast-language: FR;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #1c1d1f; mso-fareast-language: FR;\">Basic Computer Skills</span></p>\r\n</div>\r\n</div>\r\n</li>\r\n</ul>', '<p class=\"MsoNormal\" style=\"margin: 0cm; margin-bottom: .0001pt; text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #1c1d1f; mso-fareast-language: FR;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #1c1d1f; mso-fareast-language: FR;\">How to Code in HTML</span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; margin-bottom: .0001pt; text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #1c1d1f; mso-fareast-language: FR;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #1c1d1f; mso-fareast-language: FR;\">Structure of an HTML Page</span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; margin-bottom: .0001pt; text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #1c1d1f; mso-fareast-language: FR;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #1c1d1f; mso-fareast-language: FR;\">Text Formatting in HTML</span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; margin-bottom: .0001pt; text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #1c1d1f; mso-fareast-language: FR;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #1c1d1f; mso-fareast-language: FR;\">Embedding Videos</span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; margin-bottom: .0001pt; text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #1c1d1f; mso-fareast-language: FR;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #1c1d1f; mso-fareast-language: FR;\">Creating Links</span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; margin-bottom: .0001pt; text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #1c1d1f; mso-fareast-language: FR;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #1c1d1f; mso-fareast-language: FR;\">Anchor Tags</span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; margin-bottom: .0001pt; text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #1c1d1f; mso-fareast-language: FR;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #1c1d1f; mso-fareast-language: FR;\">Tables &amp; Nested Tables</span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; margin-bottom: .0001pt; text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #1c1d1f; mso-fareast-language: FR;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #1c1d1f; mso-fareast-language: FR;\">Building Forms</span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; margin-bottom: .0001pt; text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #1c1d1f; mso-fareast-language: FR;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #1c1d1f; mso-fareast-language: FR;\">Embedding Iframes</span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; margin-bottom: .0001pt; text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #1c1d1f; mso-fareast-language: FR;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #1c1d1f; mso-fareast-language: FR;\">Inserting Images</span></p>', 50, '2022-10-17 06:47:00', '2022-10-17 15:53:18', '2022-11-17', '2022-12-11', 'option1'),
(3, 1, 'CSS', '<p id=\"r-7191557\" class=\"hoveredCourseElement\" style=\"outline-color: #7451eb; font-size: 16px; line-height: 1.625rem; color: #271a38; margin: 0px 0px 15px; box-sizing: border-box; font-family: Inter, sans-serif;\" data-claire-element-id=\"31506162\">Le&nbsp;<span style=\"outline-color: #7451eb; color: inherit; font-weight: bold;\">CSS</span>&nbsp;fournit tous les outils pour cr&eacute;er des pages web qui soient belles et responsives, c&rsquo;est-&agrave;-dire adapt&eacute;es &agrave; toutes les tailles d&rsquo;&eacute;crans. Mais c&rsquo;est aussi un langage r&eacute;put&eacute; pour &ecirc;tre difficile &agrave; organiser, avec peu de structure inh&eacute;rente. Avec toutes ses options de couleur, de mise en page et de typographie, un fichier .css peut rapidement devenir assez touffu et on peut s&rsquo;y perdre tr&egrave;s facilement, surtout lorsque la quantit&eacute; de code devient importante. Cela peut convenir pour des projets de petite taille, mais si vous voulez devenir un&nbsp;<span style=\"outline-color: #7451eb; color: inherit; font-weight: bold;\">d&eacute;veloppeur professionnel</span>, vous allez &ecirc;tre confront&eacute; aux probl&eacute;matiques suivantes :</p>\r\n<ul id=\"r-6595298\" class=\"\" style=\"outline-color: #7451eb; box-sizing: border-box; color: #271a38; font-family: Inter, sans-serif; font-size: 16px;\" data-claire-element-id=\"30000578\">\r\n<li id=\"r-6595293\" style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); box-sizing: border-box;\" data-claire-element-id=\"30000573\">\r\n<p id=\"r-6595292\" style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); margin: 0px 0px 3px; box-sizing: border-box;\" data-claire-element-id=\"30000572\">Comment &eacute;crire du CSS qui soit&nbsp;<span style=\"outline-color: #7451eb; color: inherit; font-weight: bold;\">propre, organis&eacute; et surtout bien structur&eacute;</span>&nbsp;?</p>\r\n</li>\r\n<li id=\"r-6595295\" style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); box-sizing: border-box;\" data-claire-element-id=\"30000575\">\r\n<p id=\"r-6595294\" style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); margin: 0px 0px 3px; box-sizing: border-box;\" data-claire-element-id=\"30000574\">Comment m&rsquo;assurer que mon code est&nbsp;<span style=\"outline-color: #7451eb; color: inherit; font-weight: bold;\">maintenable et modulable</span>&nbsp;?</p>\r\n</li>\r\n<li id=\"r-6595297\" style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); box-sizing: border-box;\" data-claire-element-id=\"30000577\">\r\n<p id=\"r-6595296\" style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); margin: 0px 0px 3px; box-sizing: border-box;\" data-claire-element-id=\"30000576\">Comment&nbsp;<span style=\"outline-color: #7451eb; color: inherit; font-weight: bold;\">coder plus vite et de mani&egrave;re plus efficace</span>&nbsp;?</p>\r\n</li>\r\n</ul>\r\n<p id=\"r-6595299\" class=\"\" style=\"outline-color: #7451eb; font-size: 16px; line-height: 1.625rem; color: #271a38; margin: 0px 0px 15px; box-sizing: border-box; font-family: Inter, sans-serif;\" data-claire-element-id=\"30078661\">Ce cours va vous montrer comment faire tout &ccedil;a, et plus encore ; et ce, en nous basant sur un portfolio !</p>', 'cours\\October2022\\8dRG8axa6aXwPMwsdCAq.png', '[{\"download_link\":\"cours\\\\October2022\\\\erJwSrPrk2i6nEXmrQxG.pdf\",\"original_name\":\"cours-css.pdf\"}]', '<p style=\"outline-color: #7451eb; font-size: 16px; line-height: 1.625rem; color: #271a38; margin: 0px 0px 15px; box-sizing: border-box; font-family: Inter, sans-serif;\">Une connaissance de base du HTML, ainsi que du CSS. Vous pouvez acqu&eacute;rir ces comp&eacute;tences en suivant les cours suivants :</p>\r\n<ul style=\"outline-color: #7451eb; box-sizing: border-box; color: #271a38; font-family: Inter, sans-serif; font-size: 16px;\">\r\n<li style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); box-sizing: border-box;\">\r\n<p style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); margin: 0px; box-sizing: border-box;\"><a style=\"outline-color: #7451eb; color: rgba(0, 0, 0, 0.85); box-sizing: border-box; font-weight: bold;\" href=\"https://openclassrooms.com/fr/courses/1603881-apprenez-a-creer-votre-site-web-avec-html5-et-css3\">Apprenez &agrave; cr&eacute;er votre site web avec HTML5 et CSS3</a></p>\r\n</li>\r\n<li style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); box-sizing: border-box;\"><a style=\"outline-color: #7451eb; color: rgba(0, 0, 0, 0.85); box-sizing: border-box; font-weight: bold;\" href=\"https://openclassrooms.com/fr/courses/7162856-gerez-du-code-avec-git-et-github/7165692-travaillez-a-partir-d-un-projet-existant\">Le chapitre du cours \"G&eacute;rez du code avec Git et GitHub\"&nbsp;</a>&nbsp;(pour r&eacute;cup&eacute;rer le code des corrig&eacute;s aux exercices)</li>\r\n</ul>\r\n<p style=\"outline-color: #7451eb; font-size: 16px; line-height: 1.625rem; color: #271a38; margin: 0px; box-sizing: border-box; font-family: Inter, sans-serif;\">&nbsp;<span style=\"outline-color: #7451eb; color: inherit; font-weight: bold;\">Outil n&eacute;cessaire</span> :&nbsp; un &eacute;diteur de code.&nbsp;</p>', '<p id=\"r-7191559\" style=\"outline-color: #7451eb; font-size: 16px; line-height: 1.625rem; color: #271a38; margin: 0px 0px 15px; box-sizing: border-box; font-family: Inter, sans-serif;\" data-claire-element-id=\"31506334\"><span style=\"outline-color: #7451eb; color: inherit; font-weight: bold;\">Objectifs p&eacute;dagogiques</span></p>\r\n<p id=\"r-6595304\" style=\"outline-color: #7451eb; font-size: 16px; line-height: 1.625rem; color: #271a38; margin: 0px; box-sizing: border-box; font-family: Inter, sans-serif;\" data-claire-element-id=\"31506167\">&Agrave; la fin de ce cours, vous serez capable de :</p>\r\n<ul id=\"r-6595311\" style=\"outline-color: #7451eb; box-sizing: border-box; color: #271a38; font-family: Inter, sans-serif; font-size: 16px;\" data-claire-element-id=\"31506516\">\r\n<li id=\"r-6595306\" style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); box-sizing: border-box;\" data-claire-element-id=\"30139975\">\r\n<p id=\"r-6595305\" style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); margin: 0px; box-sizing: border-box;\" data-claire-element-id=\"30139974\">structurer et organiser votre code ;</p>\r\n</li>\r\n<li id=\"r-6595310\" style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); box-sizing: border-box;\" data-claire-element-id=\"30139977\">\r\n<p id=\"r-6614142\" style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); margin: 0px; box-sizing: border-box;\" data-claire-element-id=\"30139976\">cr&eacute;er du code maintenable gr&acirc;ce aux techniques Sass interm&eacute;diaires ;</p>\r\n</li>\r\n<li id=\"r-6614143\" style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); box-sizing: border-box;\" data-claire-element-id=\"31506515\">\r\n<p id=\"r-6614147\" style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); margin: 0px; box-sizing: border-box;\" data-claire-element-id=\"31506514\">optimiser votre code en utilisant les techniques avanc&eacute;es de Sass.&nbsp;</p>\r\n</li>\r\n</ul>', 34, '2022-10-17 06:55:00', '2022-10-17 15:53:47', '2022-10-18', '2022-12-17', 'option1'),
(4, 1, 'Javascript', '<p id=\"r-5965252\" class=\"\" style=\"outline-color: #7451eb; font-size: 16px; line-height: 1.625rem; color: #271a38; margin: 0px 0px 15px; box-sizing: border-box; font-family: Inter, sans-serif;\" data-claire-element-id=\"28439442\">Vous venez d\'apprendre &agrave; programmer avec le langage&nbsp;<span style=\"outline-color: #7451eb; color: inherit; font-weight: bold;\">JavaScript</span>&nbsp;et vous voulez maintenant cr&eacute;er des&nbsp;<span style=\"outline-color: #7451eb; color: inherit; font-weight: bold;\">pages web dynamiques</span>&nbsp;?</p>\r\n<p id=\"r-5974892\" class=\"\" style=\"outline-color: #7451eb; font-size: 16px; line-height: 1.625rem; color: #271a38; margin: 0px 0px 15px; box-sizing: border-box; font-family: Inter, sans-serif;\" data-claire-element-id=\"28439443\">Avoir un site web c\'est bien, mais le rendre dynamique et interactif, c\'est encore mieux !</p>\r\n<p id=\"r-5974893\" class=\"\" style=\"outline-color: #7451eb; font-size: 16px; line-height: 1.625rem; color: #271a38; margin: 0px 0px 15px; box-sizing: border-box; font-family: Inter, sans-serif;\" data-claire-element-id=\"28450742\">Dans ce cours, vous apprendrez &agrave;&nbsp;<span style=\"outline-color: #7451eb; color: inherit; font-weight: bold;\">manipuler le DOM</span>&nbsp;pour r&eacute;cup&eacute;rer des &eacute;l&eacute;ments d\'une page et de modifier leur contenu, leurs classes, leurs styles etc. Cela rendra vos pages web plus dynamiques.</p>\r\n<p id=\"r-5974902\" class=\"\" style=\"outline-color: #7451eb; font-size: 16px; line-height: 1.625rem; color: #271a38; margin: 0px 0px 15px; box-sizing: border-box; font-family: Inter, sans-serif;\" data-claire-element-id=\"31504732\">Ce cours vous apprendra &eacute;galement &agrave; :</p>\r\n<ul id=\"r-7191348\" class=\"\" style=\"outline-color: #7451eb; box-sizing: border-box; color: #271a38; font-family: Inter, sans-serif; font-size: 16px;\" data-claire-element-id=\"31504739\">\r\n<li id=\"r-7191343\" style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); box-sizing: border-box;\" data-claire-element-id=\"31504734\">\r\n<p id=\"r-7191342\" style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); margin: 0px 0px 3px; box-sizing: border-box;\" data-claire-element-id=\"31504733\"><span style=\"outline-color: #7451eb; color: inherit; font-weight: bold;\">capter les interactions de vos utilisateurs</span>, que ce soit un clic de souris ou le remplissage d\'un formulaire, pour pouvoir r&eacute;agir &agrave; ces &eacute;v&eacute;nements ;</p>\r\n</li>\r\n<li id=\"r-7191345\" style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); box-sizing: border-box;\" data-claire-element-id=\"31504736\">\r\n<p id=\"r-7191344\" style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); margin: 0px 0px 3px; box-sizing: border-box;\" data-claire-element-id=\"31504735\">communiquer avec un site web pour r&eacute;cup&eacute;rer et lui envoyer des donn&eacute;es ;</p>\r\n</li>\r\n<li id=\"r-7191347\" style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); box-sizing: border-box;\" data-claire-element-id=\"31504738\">\r\n<p id=\"r-7191346\" style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); margin: 0px 0px 3px; box-sizing: border-box;\" data-claire-element-id=\"31504737\">cr&eacute;er du&nbsp;<span style=\"outline-color: #7451eb; color: inherit; font-weight: bold;\">code asynchrone en JavaScript</span>&nbsp;pour parall&eacute;liser des requ&ecirc;tes&nbsp;HTTP et d&eacute;layer l\'ex&eacute;cution d\'une fonction JavaScript.</p>\r\n</li>\r\n</ul>\r\n<p id=\"r-5974905\" class=\"hoveredCourseElement\" style=\"outline-color: #7451eb; font-size: 16px; line-height: 1.625rem; color: #271a38; margin: 0px 0px 15px; box-sizing: border-box; font-family: Inter, sans-serif;\" data-claire-element-id=\"31504740\">Enfin, vous d&eacute;couvrirez des&nbsp;<span style=\"outline-color: #7451eb; color: inherit; font-weight: bold;\">outils</span>&nbsp;permettant d\'<span style=\"outline-color: #7451eb; color: inherit; font-weight: bold;\">optimiser votre code</span>&nbsp;pour cr&eacute;er un environnement de travail optimis&eacute;.</p>', 'cours\\October2022\\uAXiGNPsrW4l35hHu11c.png', '[{\"download_link\":\"cours\\\\October2022\\\\GkoVBAsdI1MJsLpu2pVE.pdf\",\"original_name\":\"billiejoe_javascript_fiches.pdf\"}]', '<p style=\"outline-color: #7451eb; font-size: 16px; line-height: 1.625rem; color: #271a38; margin: 0px 0px 15px; box-sizing: border-box; font-family: Inter, sans-serif;\">Afin d\'&ecirc;tre capable de suivre ce cours jusqu\'au bout, vous devrez d&eacute;j&agrave; avoir des connaissances en&nbsp;<span style=\"outline-color: #7451eb; color: inherit; font-weight: bold;\">HTML</span>,&nbsp;<span style=\"outline-color: #7451eb; color: inherit; font-weight: bold;\">CSS</span>&nbsp;et&nbsp;<span style=\"outline-color: #7451eb; color: inherit; font-weight: bold;\">JavaScript</span>. Vous devez commencer par ces cours :</p>\r\n<ul style=\"outline-color: #7451eb; box-sizing: border-box; color: #271a38; font-family: Inter, sans-serif; font-size: 16px;\">\r\n<li style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); box-sizing: border-box;\">\r\n<p style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); margin: 0px; box-sizing: border-box;\"><a style=\"outline-color: #7451eb; color: rgba(0, 0, 0, 0.85); box-sizing: border-box; font-weight: bold;\" href=\"https://openclassrooms.com/fr/courses/1603881-apprenez-a-creer-votre-site-web-avec-html5-et-css3\">Apprenez &agrave; cr&eacute;er votre site web avec HTML5 et CSS3</a></p>\r\n</li>\r\n<li style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); box-sizing: border-box;\">\r\n<p style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); margin: 0px; box-sizing: border-box;\"><a style=\"outline-color: #7451eb; color: rgba(0, 0, 0, 0.85); box-sizing: border-box; font-weight: bold;\" href=\"https://openclassrooms.com/fr/courses/6175841-apprenez-a-programmer-avec-javascript\">Apprenez &agrave; programmer avec JavaScript</a></p>\r\n</li>\r\n</ul>\r\n<p style=\"outline-color: #7451eb; font-size: 16px; line-height: 1.625rem; color: #271a38; margin: 0px; box-sizing: border-box; font-family: Inter, sans-serif;\"><span style=\"outline-color: #7451eb; color: inherit; font-weight: bold;\">Outils n&eacute;cessaires :</span></p>\r\n<ul style=\"outline-color: #7451eb; box-sizing: border-box; color: #271a38; font-family: Inter, sans-serif; font-size: 16px;\">\r\n<li style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); box-sizing: border-box;\">\r\n<p style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); margin: 0px; box-sizing: border-box;\">Un &eacute;diteur de code ;</p>\r\n</li>\r\n<li style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); box-sizing: border-box;\">\r\n<p style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); margin: 0px; box-sizing: border-box;\">Node.js ;</p>\r\n</li>\r\n<li style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); box-sizing: border-box;\">\r\n<p style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); margin: 0px; box-sizing: border-box;\">Webpack.</p>\r\n</li>\r\n</ul>', '<p id=\"r-7172232\" style=\"outline-color: #7451eb; font-size: 16px; line-height: 1.625rem; color: #271a38; margin: 0px 0px 15px; box-sizing: border-box; font-family: Inter, sans-serif;\" data-claire-element-id=\"31465172\"><span style=\"outline-color: #7451eb; color: inherit; font-weight: bold;\">Objectifs p&eacute;dagogiques</span>&nbsp;</p>\r\n<p id=\"r-5842344\" style=\"outline-color: #7451eb; font-size: 16px; line-height: 1.625rem; color: #271a38; margin: 0px; box-sizing: border-box; font-family: Inter, sans-serif;\" data-claire-element-id=\"28423922\">&nbsp;&Agrave; l\'issue de ce cours, vous serez capable de :</p>\r\n<ul id=\"r-5842367\" style=\"outline-color: #7451eb; box-sizing: border-box; color: #271a38; font-family: Inter, sans-serif; font-size: 16px;\" data-claire-element-id=\"28299422\">\r\n<li id=\"r-5842346\" style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); box-sizing: border-box;\" data-claire-element-id=\"28299413\">\r\n<p id=\"r-5897941\" style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); margin: 0px; box-sizing: border-box;\" data-claire-element-id=\"28299412\">R&eacute;cup&eacute;rer et modifier des &eacute;l&eacute;ments du DOM ;</p>\r\n</li>\r\n<li id=\"r-5842350\" style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); box-sizing: border-box;\" data-claire-element-id=\"28299415\">\r\n<p id=\"r-5842349\" style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); margin: 0px; box-sizing: border-box;\" data-claire-element-id=\"28299414\">Capter les &eacute;v&eacute;nements du DOM ;</p>\r\n</li>\r\n<li id=\"r-5842352\" style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); box-sizing: border-box;\" data-claire-element-id=\"28299417\">\r\n<p id=\"r-5842351\" style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); margin: 0px; box-sizing: border-box;\" data-claire-element-id=\"28299416\">Communiquer avec un service web ;</p>\r\n</li>\r\n<li id=\"r-5873047\" style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); box-sizing: border-box;\" data-claire-element-id=\"28299419\">\r\n<p id=\"r-5873046\" style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); margin: 0px; box-sizing: border-box;\" data-claire-element-id=\"28299418\">Utiliser des m&eacute;thodes asynchrones ;</p>\r\n</li>\r\n<li id=\"r-5842362\" style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); box-sizing: border-box;\" data-claire-element-id=\"28299421\">\r\n<p id=\"r-5873166\" style=\"outline-color: #7451eb; font-size: 1rem; line-height: 1.625rem; color: var(--clf-text-on-main); margin: 0px; box-sizing: border-box;\" data-claire-element-id=\"28299420\">Utiliser un environnement de d&eacute;veloppement.</p>\r\n</li>\r\n</ul>', 128, '2022-10-17 07:01:00', '2022-10-17 15:54:11', '2022-10-17', '2023-01-17', 'option1');
INSERT INTO `cours` (`id`, `user_id`, `nonCours`, `description`, `image`, `file`, `prerequis`, `objectif`, `nbrHeure`, `created_at`, `updated_at`, `date_debit`, `date_fin`, `etat`) VALUES
(5, 1, 'Laravel', '<p>Vous pratiquez PHP et vous savez cr&eacute;er des sites ? Vous avez l&rsquo;impression de r&eacute;&eacute;crire</p>\r\n<p>souvent les m&ecirc;mes choses ? Vous vous posez des questions sur la meilleure</p>\r\n<p>fa&ccedil;on de traiter une t&acirc;che particuli&egrave;re comme cr&eacute;er des formulaires ou envoyer</p>\r\n<p>des courriels ? Vous aimeriez disposer d&rsquo;une bo&icirc;te &agrave; outils toute pr&ecirc;te pour tout</p>\r\n<p>le code laborieux ? Vous devez choisir une solution logicielle pour d&eacute;velopper un</p>\r\n<p>site dynamique ?</p>\r\n<p>Alors vous avez besoin d&rsquo;un framework PHP. Et Laravel constitue actuellement ce qui</p>\r\n<p>se fait de mieux en la mati&egrave;re.</p>\r\n<p>Laravel colle aux plus r&eacute;centes avanc&eacute;es de PHP et surtout &agrave; son approche objet.</p>\r\n<p>D&eacute;couvrir ce framework et plonger dans son code c&rsquo;est prendre un cours de programmation</p>\r\n<p>et d&rsquo;esth&eacute;tique. C&rsquo;est aussi disposer d&rsquo;une bo&icirc;te &agrave; outils simple et performante</p>\r\n<p>pour construire des applications web sans se soucier de l&rsquo;intendance habituelle.</p>\r\n<p>Laravel est un framework encore jeune qui conna&icirc;t un succ&egrave;s tr&egrave;s rapide, surtout aux</p>\r\n<p>&Eacute;tats-Unis o&ugrave; il est devenu le plus populaire. La documentation existant actuellement</p>\r\n<p>&eacute;tant essentiellement en langue anglaise, le pr&eacute;sent ouvrage a pour objectif de pr&eacute;senter</p>\r\n<p>ce framework tr&egrave;s prometteur au public fran&ccedil;ais. Il s&rsquo;adresse principalement aux</p>\r\n<p>d&eacute;veloppeurs et chefs de projets.</p>\r\n<p>Cet ouvrage a &eacute;t&eacute; con&ccedil;u en trois parties progressives qu&rsquo;il convient de lire dans l&rsquo;ordre.</p>\r\n<p>&bull; La premi&egrave;re partie, particuli&egrave;rement d&eacute;taill&eacute;e, est destin&eacute;e &agrave; vous habituer au</p>\r\n<p>framework et &agrave; sa philosophie. Elle vous pr&eacute;sente les notions essentielles.</p>\r\n<p>&bull; La deuxi&egrave;me partie est ax&eacute;e sur les bases de donn&eacute;es, qui constituent la cl&eacute; des applications</p>\r\n<p>dynamiques. Les autres notions seront &eacute;videmment d&eacute;velopp&eacute;es et compl&eacute;t&eacute;es</p>\r\n<p>au cours de cette partie qui vous demandera plus d&rsquo;attention et d&rsquo;exp&eacute;rimentation.</p>\r\n<p>&bull; La troisi&egrave;me partie consolide vos connaissances et d&eacute;taille quelques sp&eacute;cificit&eacute;s</p>\r\n<p>comme la mani&egrave;re d&rsquo;obtenir des vues &eacute;pur&eacute;es, l&rsquo;utilisation d&rsquo;Ajax et la localisation. Elle</p>\r\n<p>pr&eacute;sente la fa&ccedil;on de d&eacute;ployer une application Laravel selon le serveur de destination.</p>', 'cours\\October2022\\NDBzyUYq9uBMYjoeX1BZ.png', '[{\"download_link\":\"cours\\\\October2022\\\\ldYGb6nQV9hrebfxZJHW.pdf\",\"original_name\":\"laravel.pdf\"}]', '<p>Avant de pouvoir apprendre Laravel, il est important d\'avoir acquis les connaissances suivantes :</p>\r\n<p>MySQL</p>\r\n<p>Composer</p>\r\n<p>PHP</p>', '<p class=\"MsoNormal\" style=\"margin: 0cm; margin-bottom: .0001pt; text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #1c1d1f; mso-fareast-language: FR;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #1c1d1f; mso-fareast-language: FR;\">D&eacute;couvrir les bases de Laravel</span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; margin-bottom: .0001pt; text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #1c1d1f; mso-fareast-language: FR;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #1c1d1f; mso-fareast-language: FR;\">Comprendre le syst&egrave;me de routing</span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; margin-bottom: .0001pt; text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #1c1d1f; mso-fareast-language: FR;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #1c1d1f; mso-fareast-language: FR;\">G&eacute;rer les relations entre les mod&egrave;les</span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; margin-bottom: .0001pt; text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #1c1d1f; mso-fareast-language: FR;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #1c1d1f; mso-fareast-language: FR;\">Utilisation du moteur de template : Blade</span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; margin-bottom: .0001pt; text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #1c1d1f; mso-fareast-language: FR;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #1c1d1f; mso-fareast-language: FR;\">Communiquer avec une base de donn&eacute;e</span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; margin-bottom: .0001pt; text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #1c1d1f; mso-fareast-language: FR;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #1c1d1f; mso-fareast-language: FR;\">Utilisation d\'un ORM</span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; margin-bottom: .0001pt; text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #1c1d1f; mso-fareast-language: FR;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #1c1d1f; mso-fareast-language: FR;\">Utilisation de package externes</span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; margin-bottom: .0001pt; text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #1c1d1f; mso-fareast-language: FR;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #1c1d1f; mso-fareast-language: FR;\">Mettre en place des tests</span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; margin-bottom: .0001pt; text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #1c1d1f; mso-fareast-language: FR;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #1c1d1f; mso-fareast-language: FR;\">Impl&eacute;menter un syst&egrave;me d\'authentification</span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; margin-bottom: .0001pt; text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #1c1d1f; mso-fareast-language: FR;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #1c1d1f; mso-fareast-language: FR;\">Gestion des r&ocirc;les utilisateurs</span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; margin-bottom: .0001pt; text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #1c1d1f; mso-fareast-language: FR;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #1c1d1f; mso-fareast-language: FR;\">Interagir avec le cycle de vie des mod&egrave;les</span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; margin-bottom: .0001pt; text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #1c1d1f; mso-fareast-language: FR;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #1c1d1f; mso-fareast-language: FR;\">Surcharger le framework</span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; margin-bottom: .0001pt; text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #1c1d1f; mso-fareast-language: FR;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #1c1d1f; mso-fareast-language: FR;\">Gagner en r&eacute;activit&eacute; avec Laravel Livewire</span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; margin-bottom: .0001pt; text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #1c1d1f; mso-fareast-language: FR;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #1c1d1f; mso-fareast-language: FR;\">Administrer ses donn&eacute;es avec Voyager</span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; margin-bottom: .0001pt; text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #1c1d1f; mso-fareast-language: FR;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #1c1d1f; mso-fareast-language: FR;\">Authentification avec un service tiers</span></p>', 300, '2022-10-17 07:12:00', '2022-10-17 15:54:37', '2023-01-17', '2023-03-17', 'option1'),
(6, 1, 'Flutter', '<p><a style=\"box-sizing: border-box; border-top: 0px; border-right: 0px; border-left: 0px; border-image: initial; font-size: 18px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; background-color: transparent; text-decoration-line: none; color: #4a80ec; transition: all 0.2s linear 0s; text-shadow: none; font-family: Lato, sans-serif; border-bottom: none !important; box-shadow: none !important;\" href=\"https://flutter.dev/\" target=\"_blank\" rel=\"noreferrer noopener\">Flutter</a><span style=\"color: #3a3a3a; font-family: Lato, sans-serif; font-size: 18px;\">&trade; est une technologie moderne et cross-platform utilisant&nbsp;</span><a style=\"box-sizing: border-box; border-top: 0px; border-right: 0px; border-left: 0px; border-image: initial; font-size: 18px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; background-color: transparent; text-decoration-line: none; color: #4a80ec; transition: all 0.2s linear 0s; text-shadow: none; font-family: Lato, sans-serif; border-bottom: none !important; box-shadow: none !important;\" href=\"https://dart.dev/\" target=\"_blank\" rel=\"noreferrer noopener\" aria-label=\"undefined (s&rsquo;ouvre dans un nouvel onglet)\">le langage Dart</a><span style=\"color: #3a3a3a; font-family: Lato, sans-serif; font-size: 18px;\">&nbsp;permettant de r&eacute;duire le temps de d&eacute;veloppement d&rsquo;applications en utilisant un seul code source. Plus de&nbsp;</span><span style=\"box-sizing: border-box; border: 0px; font-size: 18px; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #3a3a3a; font-family: Lato, sans-serif;\">500 000</span><span style=\"color: #3a3a3a; font-family: Lato, sans-serif; font-size: 18px;\">&nbsp;d&eacute;veloppeurs l&rsquo;utilisent chaque mois avec une croissance de&nbsp;</span><span style=\"box-sizing: border-box; border: 0px; font-size: 18px; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #3a3a3a; font-family: Lato, sans-serif;\">10%</span><span style=\"color: #3a3a3a; font-family: Lato, sans-serif; font-size: 18px;\">&nbsp;de plus par mois.</span></p>\r\n<p><span style=\"color: #3a3a3a; font-family: Lato, sans-serif; font-size: 18px;\">Flutter est consid&eacute;r&eacute;e &agrave; la fois comme un Framework et un SDK, car elle poss&egrave;de un environnement riche en outils permettant de d&eacute;velopper, d&eacute;bugger et d&eacute;ployer des applications. Elle permet de d&eacute;velopper rapidement des applications Android et iOS avec une qualit&eacute; proche du native.</span></p>', 'cours\\October2022\\HEiRCjDqievjAZwGlpUd.png', '[{\"download_link\":\"cours\\\\October2022\\\\3Z8Zm05lmFhuLjqCCxyB.pdf\",\"original_name\":\"ebook-flutter-revolution.pdf\"}]', '<ol>\r\n<li>Une connexion internet</li>\r\n<li>Un ordinateur supportant la virtualisation</li>\r\n<li>Un syst&egrave;me d&rsquo;exploitation 64 bits</li>\r\n</ol>', '<ol style=\"margin-top: 0cm;\" start=\"1\" type=\"1\">\r\n<li class=\"MsoNormal\" style=\"color: #1c1d1f; margin-bottom: .0001pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: FR;\">A la fin de ce cours, vous saurez d&eacute;velopper des applications pour iOS et Android</span></li>\r\n<li class=\"MsoNormal\" style=\"color: #1c1d1f; margin-bottom: .0001pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: FR;\">Vous saurez maitriser Flutter</span></li>\r\n<li class=\"MsoNormal\" style=\"color: #1c1d1f; margin-bottom: .0001pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: FR;\">Le langage de programmation \'Dart\' n\'aura plus aucun secret pour vous</span></li>\r\n</ol>\r\n<p class=\"MsoNormal\">&nbsp;</p>', 400, '2022-10-17 07:27:00', '2022-10-17 15:55:18', '2023-03-17', '2023-04-17', 'option1');

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
(38, 8, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, '{}', 4),
(80, 17, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(81, 17, 'cours_id', 'text', 'Cours Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(82, 17, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(83, 17, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, '{}', 4),
(84, 17, 'fichier', 'file', 'Fichier', 0, 1, 1, 1, 1, 1, '{}', 5),
(85, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(86, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(87, 17, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 8),
(88, 17, 'lesson_belongsto_cour_relationship', 'relationship', 'cours', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Models\\\\Cours\",\"table\":\"cours\",\"type\":\"belongsTo\",\"column\":\"cours_id\",\"key\":\"id\",\"label\":\"noncours\",\"pivot_table\":\"ch_favorites\",\"pivot\":\"0\",\"taggable\":null}', 9),
(89, 19, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(90, 19, 'nomCat', 'text', 'NomCat', 1, 1, 1, 1, 1, 1, '{}', 2),
(91, 19, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(92, 19, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 1, 0, 1, '{}', 4),
(93, 20, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(94, 20, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(95, 20, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(96, 20, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(97, 20, 'cat_post_id', 'number', 'Cat Post Id', 1, 1, 1, 1, 1, 1, '{}', 5),
(98, 20, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(99, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(101, 20, 'post_news_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"cat_post_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"cat_posts\",\"pivot\":\"0\",\"taggable\":null}', 8),
(102, 22, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(103, 22, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(104, 22, 'nonCours', 'text', 'NonCours', 0, 1, 1, 1, 1, 1, '{}', 3),
(105, 22, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(106, 22, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 5),
(107, 22, 'file', 'file', 'File', 0, 1, 1, 1, 1, 1, '{}', 6),
(108, 22, 'prerequis', 'rich_text_box', 'Prerequis', 0, 1, 1, 1, 1, 1, '{}', 7),
(109, 22, 'objectif', 'rich_text_box', 'Objectif', 0, 1, 1, 1, 1, 1, '{}', 8),
(110, 22, 'nbrHeure', 'number', 'NbrHeure', 0, 1, 1, 1, 1, 1, '{}', 9),
(111, 22, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
(112, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(113, 22, 'module_cour_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"ch_favorites\",\"pivot\":\"0\",\"taggable\":null}', 12),
(115, 25, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(116, 25, 'cour_id', 'number', 'Cour Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(117, 25, 'date_debit', 'date', 'Date Debit', 0, 1, 1, 1, 1, 1, '{}', 3),
(118, 25, 'date_fin', 'date', 'Date Fin', 0, 1, 1, 1, 1, 1, '{}', 4),
(119, 25, 'etat', 'text', 'Etat', 0, 1, 1, 1, 1, 1, '{}', 5),
(120, 25, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(121, 25, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(122, 25, 'programme_formation_belongsto_module_cour_relationship', 'relationship', 'module_cours', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\moduleCours\",\"table\":\"module_cours\",\"type\":\"belongsTo\",\"column\":\"cour_id\",\"key\":\"id\",\"label\":\"noncours\",\"pivot_table\":\"ch_favorites\",\"pivot\":\"0\",\"taggable\":null}', 8),
(123, 27, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(124, 27, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(125, 27, 'nonCours', 'text', 'NonCours', 0, 1, 1, 1, 1, 1, '{}', 3),
(126, 27, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(127, 27, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 5),
(128, 27, 'file', 'file', 'File', 0, 1, 1, 1, 1, 1, '{}', 6),
(129, 27, 'prerequis', 'rich_text_box', 'Prerequis', 0, 1, 1, 1, 1, 1, '{}', 7),
(130, 27, 'objectif', 'rich_text_box', 'Objectif', 0, 1, 1, 1, 1, 1, '{}', 8),
(131, 27, 'nbrHeure', 'number', 'NbrHeure', 0, 1, 1, 1, 1, 1, '{}', 9),
(132, 27, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
(133, 27, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(134, 27, 'date_debit', 'date', 'Date Debit', 0, 1, 1, 1, 1, 1, '{}', 12),
(135, 27, 'date_fin', 'date', 'Date Fin', 0, 1, 1, 1, 1, 1, '{}', 13),
(136, 27, 'etat', 'select_dropdown', 'Etat', 0, 1, 1, 1, 1, 1, '{\"default\":\"option1\",\"options\":{\"option1\":\"En attente\",\"option2\":\"En cours\",\"option3\":\"Termin\\u00e9\"}}', 14),
(137, 27, 'cour_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"ch_favorites\",\"pivot\":\"0\",\"taggable\":null}', 15);

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
(8, 'events', 'events', 'Event', 'Events', 'fa-bookmark', 'App\\Models\\Event', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-09-29 16:46:18', '2022-09-29 17:41:01'),
(17, 'lessons', 'lessons', 'Lesson', 'Lessons', 'voyager-video', 'App\\Models\\Lesson', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-10-17 09:31:26', '2022-10-17 09:33:13'),
(19, 'cat_posts', 'cat-posts', 'Cat Post', 'Cat Posts', 'voyager-categories', 'App\\Models\\CatPost', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-10-17 09:55:11', '2022-10-17 09:56:44'),
(20, 'post_news', 'post-news', 'Post News', 'Post News', NULL, 'App\\Models\\PostNews', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-10-17 10:10:41', '2022-10-17 10:10:41'),
(22, 'module_cours', 'module-cours', 'Module Cour', 'Module Cours', NULL, 'App\\Models\\moduleCours', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-10-17 10:53:47', '2022-10-17 10:53:47'),
(25, 'programme_formations', 'programme-formations', 'Programme Formation', 'Programme Formations', NULL, 'App\\Models\\Models\\ProgrammeFormation', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-10-17 11:05:45', '2022-10-17 11:05:45'),
(27, 'cours', 'cours', 'Cour', 'Cours', 'voyager-book', 'App\\Models\\Models\\Cours', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-10-17 15:49:36', '2022-10-17 15:50:43');

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
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, 5, 7, '2022-09-11 17:35:57', '2022-10-17 15:58:15', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, 5, 2, '2022-09-11 17:35:57', '2022-09-11 21:17:25', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 5, 1, '2022-09-11 17:35:57', '2022-09-11 21:17:18', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', '#000000', NULL, 4, '2022-09-11 17:35:57', '2022-10-17 15:58:46', NULL, ''),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 3, '2022-09-11 17:35:57', '2022-09-11 21:17:28', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 4, '2022-09-11 17:35:57', '2022-09-11 21:17:28', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 5, '2022-09-11 17:35:57', '2022-09-11 21:17:28', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 6, '2022-09-11 17:35:57', '2022-09-11 21:17:28', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 5, '2022-09-11 17:35:57', '2022-10-17 15:58:46', 'voyager.settings.index', NULL),
(12, 1, 'Pdf liste', '/pdfData', '_self', 'voyager-download', '#000000', 16, 2, '2022-09-11 21:10:55', '2022-10-17 06:37:06', NULL, ''),
(14, 1, 'Events', '', '_self', 'voyager-anchor', '#000000', 16, 1, '2022-09-29 16:46:18', '2022-10-17 06:37:06', 'voyager.events.index', 'null'),
(15, 2, 'Notification', '/notification', '_self', 'voyager-bell', '#000000', NULL, 1, '2022-09-29 20:02:58', '2022-09-29 20:03:11', NULL, ''),
(16, 1, 'Opération', '', '_self', 'voyager-shop', '#000000', NULL, 3, '2022-09-29 20:04:07', '2022-10-17 15:58:46', NULL, ''),
(17, 1, 'Notification', '/notification', '_self', 'voyager-bell', '#000000', 16, 3, '2022-09-29 20:04:36', '2022-10-17 06:37:06', NULL, ''),
(23, 1, 'Cat Posts', '', '_self', 'voyager-categories', NULL, 24, 1, '2022-10-17 09:55:11', '2022-10-17 10:05:58', 'voyager.cat-posts.index', NULL),
(28, 1, 'Cours', '', '_self', 'voyager-book', NULL, NULL, 2, '2022-10-17 15:49:36', '2022-10-17 15:51:35', 'voyager.cours.index', NULL);

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
(32, '2022_09_11_225747_create_events_table', 3),
(34, '2022_10_17_073550_create_cours_table', 4),
(41, '2022_10_17_093018_create_programme_formations_table', 7);

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
(35, 'delete_events', 'events', '2022-09-29 16:46:18', '2022-09-29 16:46:18'),
(56, 'browse_lessons', 'lessons', '2022-10-17 09:31:26', '2022-10-17 09:31:26'),
(57, 'read_lessons', 'lessons', '2022-10-17 09:31:26', '2022-10-17 09:31:26'),
(58, 'edit_lessons', 'lessons', '2022-10-17 09:31:26', '2022-10-17 09:31:26'),
(59, 'add_lessons', 'lessons', '2022-10-17 09:31:26', '2022-10-17 09:31:26'),
(60, 'delete_lessons', 'lessons', '2022-10-17 09:31:26', '2022-10-17 09:31:26'),
(61, 'browse_cat_posts', 'cat_posts', '2022-10-17 09:55:11', '2022-10-17 09:55:11'),
(62, 'read_cat_posts', 'cat_posts', '2022-10-17 09:55:11', '2022-10-17 09:55:11'),
(63, 'edit_cat_posts', 'cat_posts', '2022-10-17 09:55:11', '2022-10-17 09:55:11'),
(64, 'add_cat_posts', 'cat_posts', '2022-10-17 09:55:11', '2022-10-17 09:55:11'),
(65, 'delete_cat_posts', 'cat_posts', '2022-10-17 09:55:11', '2022-10-17 09:55:11'),
(66, 'browse_post_news', 'post_news', '2022-10-17 10:10:41', '2022-10-17 10:10:41'),
(67, 'read_post_news', 'post_news', '2022-10-17 10:10:41', '2022-10-17 10:10:41'),
(68, 'edit_post_news', 'post_news', '2022-10-17 10:10:41', '2022-10-17 10:10:41'),
(69, 'add_post_news', 'post_news', '2022-10-17 10:10:41', '2022-10-17 10:10:41'),
(70, 'delete_post_news', 'post_news', '2022-10-17 10:10:41', '2022-10-17 10:10:41'),
(71, 'browse_module_cours', 'module_cours', '2022-10-17 10:53:47', '2022-10-17 10:53:47'),
(72, 'read_module_cours', 'module_cours', '2022-10-17 10:53:47', '2022-10-17 10:53:47'),
(73, 'edit_module_cours', 'module_cours', '2022-10-17 10:53:47', '2022-10-17 10:53:47'),
(74, 'add_module_cours', 'module_cours', '2022-10-17 10:53:47', '2022-10-17 10:53:47'),
(75, 'delete_module_cours', 'module_cours', '2022-10-17 10:53:47', '2022-10-17 10:53:47'),
(76, 'browse_programme_formations', 'programme_formations', '2022-10-17 11:05:46', '2022-10-17 11:05:46'),
(77, 'read_programme_formations', 'programme_formations', '2022-10-17 11:05:46', '2022-10-17 11:05:46'),
(78, 'edit_programme_formations', 'programme_formations', '2022-10-17 11:05:46', '2022-10-17 11:05:46'),
(79, 'add_programme_formations', 'programme_formations', '2022-10-17 11:05:46', '2022-10-17 11:05:46'),
(80, 'delete_programme_formations', 'programme_formations', '2022-10-17 11:05:46', '2022-10-17 11:05:46'),
(81, 'browse_cours', 'cours', '2022-10-17 15:49:36', '2022-10-17 15:49:36'),
(82, 'read_cours', 'cours', '2022-10-17 15:49:36', '2022-10-17 15:49:36'),
(83, 'edit_cours', 'cours', '2022-10-17 15:49:36', '2022-10-17 15:49:36'),
(84, 'add_cours', 'cours', '2022-10-17 15:49:36', '2022-10-17 15:49:36'),
(85, 'delete_cours', 'cours', '2022-10-17 15:49:36', '2022-10-17 15:49:36');

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
(1, 2),
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
(31, 2),
(31, 4),
(32, 1),
(32, 2),
(32, 4),
(33, 1),
(33, 2),
(33, 4),
(34, 1),
(34, 2),
(34, 4),
(35, 1),
(35, 2),
(35, 4),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(81, 4),
(82, 1),
(82, 4),
(83, 1),
(83, 4),
(84, 1),
(84, 4),
(85, 1),
(85, 4);

-- --------------------------------------------------------

--
-- Structure de la table `programme_formations`
--

CREATE TABLE `programme_formations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cour_id` int(11) NOT NULL,
  `date_debit` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_fin` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etat` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, 'assistant membre', 'assistant membre', '2022-09-11 17:35:57', '2022-10-17 20:08:33'),
(3, 'Apprenants', 'Apprenants', '2022-09-29 16:53:55', '2022-10-17 20:11:44'),
(4, 'Formateur', 'Formateur', '2022-09-29 16:54:24', '2022-10-17 20:11:31');

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
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\October2022\\i06dkTpnHfg2zPFYA5ga.png', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Cryptnail-academy', '', 'text', 1, 'Admin'),
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
(2, 1, 'Admin roger', 'admin@gmail.com', 'users/default.png', NULL, '$2y$10$zZ5X1YX/GiyluHOKo8dCZ.pdCm7xKYdGyoDLRdeXf.Q4jSsBSpvkK', 'Or2KMWK2qrFkSLY0PrmtqbOoWfkr2l3NpTKatMDEhusbPYUIsBZi4thJ2Jin', '{\"locale\":\"en\"}', '2022-09-11 17:41:08', '2022-10-17 05:28:29', 0, 0, '#2180f3'),
(3, 3, 'cubaka mulume alpha', 'cubakamulumealpha@gmail.com', 'users/default.png', NULL, '$2y$10$KgvTQiysZIZkjaMpIy/QCepBq8Yv/ToYo1KgvZ7pnYTPeBXzEwEae', NULL, '{\"locale\":\"en\"}', '2022-09-11 19:05:57', '2022-09-29 16:56:03', 1, 0, '#2180f3'),
(4, 3, 'Jérémie  mila', 'jeremie@gmail.com', 'users/default.png', NULL, '$2y$10$0VSiLkMIRpHXwL.Gvfrwy.TKq7/127Z.sJqY/e7QvcaGFlo2ZdKjm', NULL, '{\"locale\":\"en\"}', '2022-09-11 20:17:38', '2022-09-29 16:54:59', 0, 0, '#2180f3'),
(5, 4, 'pionde bin sefu', 'pionde@gmail.com', 'users/default.png', NULL, '$2y$10$n.UqF0/mko9fFShM/TQ1l.4whBxxqxI5XJg9cS.OMj2.LIiNd963C', NULL, '{\"locale\":\"en\"}', '2022-09-29 16:59:13', '2022-09-29 16:59:13', 0, 0, '#2180f3'),
(6, 4, 'kasumba kipindula', 'kasumba@gmail.com', 'users\\September2022\\W1yhXq5RCUClHpHId7Iz.JPG', NULL, '$2y$10$Hpm4aG6E2GzYlHqKHRUGle22Zfep7/CL6i05aGRWSdw5Kbd.Ueofq', NULL, '{\"locale\":\"en\"}', '2022-09-29 17:00:00', '2022-10-01 12:35:10', 0, 0, '#2180f3'),
(7, 3, 'Yuma kayanda', 'yuma@gmail.com', 'users\\September2022\\7hgGy18Xi7eCCKo4vVFr.JPG', NULL, '$2y$10$5SMmuxC.FqjIY9vfs0h/we9.fJap6KoifT/56O8KpRorRZqeS9wzq', NULL, '{\"locale\":\"en\"}', '2022-09-29 17:00:53', '2022-09-30 11:52:58', 0, 0, '#2180f3'),
(8, 3, 'ornerly lovoyo', 'orny@gmail.com', 'users\\October2022\\jrSCKTzFCFFzusvJWCkK.jpg', NULL, '$2y$10$D/nMsuzOCd26/M39IlrBJuXTl//rIRQezxFSOByZFvkhYKlpveIPG', NULL, '{\"locale\":\"en\"}', '2022-10-01 11:10:24', '2022-10-03 12:30:12', 1, 0, '#2180f3'),
(9, 2, 'albert tambwe', 'tambwe@gmail.com', 'users\\October2022\\NfzlIWLntCynx5EnIzUV.JPG', NULL, '$2y$10$FMpnHuVdqjmWzf3uvz3DaOqILb30kaNw8mjub1gFfZidYBs1rs5vi', NULL, '{\"locale\":\"en\"}', '2022-10-01 11:33:20', '2022-10-01 11:39:31', 1, 0, '#2180f3');

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
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cours_user_id_foreign` (`user_id`);

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
-- Index pour la table `programme_formations`
--
ALTER TABLE `programme_formations`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT pour la table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT pour la table `programme_formations`
--
ALTER TABLE `programme_formations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `cours`
--
ALTER TABLE `cours`
  ADD CONSTRAINT `cours_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

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
