-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2019 at 09:31 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Aiden Nienow', '2019-06-27 08:12:49', '2019-06-27 08:12:49'),
(2, 'Dr. Raphaelle Ortiz I', '2019-06-27 08:12:49', '2019-06-27 08:12:49'),
(3, 'Napoleon Breitenberg', '2019-06-27 08:12:49', '2019-06-27 08:12:49'),
(4, 'Bonita Fahey', '2019-06-27 08:12:49', '2019-06-27 08:12:49'),
(5, 'Myrtle Kuhlman DDS', '2019-06-27 08:12:49', '2019-06-27 08:12:49'),
(6, 'Dr. Cornell Krajcik', '2019-06-27 08:12:49', '2019-06-27 08:12:49'),
(7, 'Leola Sanford', '2019-06-27 08:12:49', '2019-06-27 08:12:49'),
(8, 'Cesar Murphy', '2019-06-27 08:12:49', '2019-06-27 08:12:49'),
(9, 'Mr. Fern Jacobson', '2019-06-27 08:12:49', '2019-06-27 08:12:49'),
(10, 'Estevan Hoeger', '2019-06-27 08:12:50', '2019-06-27 08:12:50'),
(11, 'Jess Will Jr.', '2019-07-01 03:58:22', '2019-07-01 03:58:22'),
(12, 'Oliver Fisher', '2019-07-01 04:00:07', '2019-07-01 04:00:07'),
(13, 'Alysson Gerlach', '2019-07-01 04:16:20', '2019-07-01 04:16:20'),
(14, 'Caleigh Medhurst', '2019-07-01 04:19:45', '2019-07-01 04:19:45'),
(15, 'Miss Coralie Bergnaum', '2019-07-01 04:21:24', '2019-07-01 04:21:24'),
(16, 'Moriah Dickinson', '2019-07-01 04:23:09', '2019-07-01 04:23:09'),
(17, 'Marc Purdy IV', '2019-07-01 04:28:00', '2019-07-01 04:28:00'),
(18, 'Destiney Gibson V', '2019-07-01 04:28:41', '2019-07-01 04:28:41'),
(19, 'Jakayla Medhurst DVM', '2019-07-01 04:30:13', '2019-07-01 04:30:13'),
(20, 'Kacie Schimmel', '2019-07-01 04:38:17', '2019-07-01 04:38:17'),
(21, 'Brendon Roob', '2019-07-01 06:18:18', '2019-07-01 06:18:18'),
(22, 'Alfredo DuBuque Jr.', '2019-07-01 06:18:20', '2019-07-01 06:18:20'),
(23, 'Reyna Ebert', '2019-07-01 06:20:21', '2019-07-01 06:20:21'),
(24, 'Dr. Liam Gutmann', '2019-07-01 06:23:08', '2019-07-01 06:23:08'),
(25, 'Dr. Verona Wilkinson II', '2019-07-01 06:25:20', '2019-07-01 06:25:20'),
(26, 'Eunice Cremin DVM', '2019-07-01 06:28:32', '2019-07-01 06:28:32'),
(27, 'Hallie Hagenes', '2019-07-01 23:52:36', '2019-07-01 23:52:36'),
(28, 'Dr. Rene Mertz', '2019-07-01 23:55:41', '2019-07-01 23:55:41'),
(29, 'Mrs. Thora Dietrich V', '2019-07-02 00:13:06', '2019-07-02 00:13:06'),
(30, 'Geo Watsica', '2019-07-02 00:13:38', '2019-07-02 00:13:38'),
(31, 'Miss Greta Hand', '2019-07-02 00:14:11', '2019-07-02 00:14:11'),
(32, 'Maximo Mueller', '2019-07-02 00:15:15', '2019-07-02 00:15:15'),
(33, 'Aron Nikolaus', '2019-07-02 00:15:57', '2019-07-02 00:15:57'),
(34, 'Liliana Zboncak IV', '2019-07-02 00:16:31', '2019-07-02 00:16:31'),
(35, 'Chandler Glover', '2019-07-02 00:17:41', '2019-07-02 00:17:41'),
(36, 'Esmeralda Wolff', '2019-07-02 00:18:00', '2019-07-02 00:18:00'),
(37, 'Eden Schaden', '2019-07-02 00:20:09', '2019-07-02 00:20:09'),
(38, 'Lester Renner', '2019-07-02 00:20:23', '2019-07-02 00:20:23'),
(39, 'Liza Larkin Jr.', '2019-07-02 00:21:16', '2019-07-02 00:21:16'),
(40, 'Curt Bednar', '2019-07-02 00:23:08', '2019-07-02 00:23:08'),
(41, 'Mr. London Kreiger MD', '2019-07-02 00:24:47', '2019-07-02 00:24:47'),
(42, 'Luna Howe', '2019-07-02 00:25:25', '2019-07-02 00:25:25'),
(43, 'Demo Laravel', '2019-07-02 00:31:26', '2019-07-02 00:31:26'),
(44, 'fdsfs', '2019-07-02 01:38:26', '2019-07-02 01:38:26'),
(45, 'Vernice Cruickshank', '2019-07-02 01:40:45', '2019-07-02 01:40:45'),
(46, 'Taylor Runte', '2019-07-02 01:43:18', '2019-07-02 01:43:18');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_02_06_175142_create_posts_table', 1),
('2016_03_20_162017_add_slug_to_users', 1),
('2016_04_28_021908_create_categories_table', 1),
('2016_04_28_022255_add_category_id_to_posts', 1),
('2016_05_30_153615_create_tags_table', 1),
('2016_05_30_155417_create_post_tag_table', 1),
('2016_07_16_173641_create_comments_table', 1),
('2016_08_15_000718_add_image_col_to_posts', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('prashant.boraste@nitorinfotech.com', '47f75d51eadad6f3baea6e57418f977064ed7ae74550f8662d04ce463331587a', '2019-07-01 23:38:39');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `slug`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Ms. Elyse Heller III', 'Carolyn Collier', 'ab-commodi-numquam-deleniti-molestiae', 'https://lorempixel.com/640/480/?89570', 6, '2019-06-28 00:53:42', '2019-06-28 00:53:42'),
(2, 'Prof. Albertha Blick', 'Miss Andreane Witting', 'eum-amet-quae-mollitia-deserunt', 'https://lorempixel.com/640/480/?31829', 9, '2019-06-28 00:53:42', '2019-06-28 00:53:42'),
(3, 'Doyle Wunsch', 'Dr. Elisa Koss', 'quia-sint-expedita-reiciendis-perferendis-sed-et', 'https://lorempixel.com/640/480/?63559', 2, '2019-06-28 00:53:42', '2019-06-28 00:53:42'),
(4, 'Dr. Travis Boehm V', 'Arvid Robel', 'labore-laborum-debitis-quasi-quia', 'https://lorempixel.com/640/480/?48625', 2, '2019-06-28 00:53:42', '2019-06-28 00:53:42'),
(5, 'Marvin Funk', 'Miss Caleigh Boyer', 'rem-labore-explicabo-quae-eligendi-repellendus-aut-sed', 'https://lorempixel.com/640/480/?90298', 1, '2019-06-28 00:53:42', '2019-06-28 00:53:42'),
(6, 'Craig Osinski', 'Leif Bradtke', 'non-velit-esse-quos-sint-cupiditate-et-consequatur', 'https://lorempixel.com/640/480/?17833', 5, '2019-06-28 00:53:42', '2019-06-28 00:53:42'),
(7, 'Lysanne Rath', 'Newell Hackett', 'aut-maxime-aut-quia-eius', 'https://lorempixel.com/640/480/?10535', 6, '2019-06-28 00:53:42', '2019-06-28 00:53:42'),
(8, 'Hadley Rath DDS', 'Franz Conn', 'officia-qui-eligendi-exercitationem-reiciendis-id-ea-voluptatem', 'https://lorempixel.com/640/480/?73097', 6, '2019-06-28 00:53:43', '2019-06-28 00:53:43'),
(9, 'Ettie Kshlerin', 'Maximilian Cassin', 'quae-laudantium-numquam-impedit', 'https://lorempixel.com/640/480/?98993', 2, '2019-06-28 00:53:43', '2019-06-28 00:53:43'),
(10, 'Abbey Bernier', 'Lazaro Lang', 'quis-laborum-reprehenderit-aperiam-corrupti', 'https://lorempixel.com/640/480/?56654', 1, '2019-06-28 00:53:43', '2019-06-28 00:53:43'),
(11, 'Some subject!', 'Some description', 'voluptas-quia-qui-est-cum', NULL, 8, '2019-06-28 03:42:25', '2019-06-28 03:42:25'),
(12, 'Quaerat impedit accusantium quia et est est quo.', 'Corporis repudiandae exercitationem quam quod. Voluptas exercitationem esse quam odio amet dicta. Sequi dolores reprehenderit aut ea cum non.', 'enim-quae-reprehenderit-illo-aut-officia-aut-atque', NULL, 9, '2019-07-01 03:38:40', '2019-07-01 03:38:40'),
(13, 'Velit rerum quia corrupti provident rerum temporibus qui.', 'Corporis ducimus nesciunt est non optio. Omnis ducimus dolores quidem. Ducimus quia nisi a fuga libero dolores ut autem. Velit officiis vero iure distinctio.', 'nemo-dolorum-iure-voluptatem-fugit-magnam', NULL, 3, '2019-07-01 03:40:08', '2019-07-01 03:40:08'),
(15, 'Habbit', 'Habbit@gmail.com', '', NULL, 12, '2019-07-01 04:00:07', '2019-07-01 04:00:07'),
(23, 'Habbit Demo Purposedasdsd', '<p>This post is generated regarding Habbit Demo Purpose </p>', 'nwOJmAuUUV', NULL, 17, '2019-07-01 04:38:17', '2019-07-02 01:38:11'),
(24, 'Sit dolore voluptatum et natus saepe earum.', 'Assumenda et optio nesciunt quidem. Facilis est atque et mollitia est sunt iusto.', 'dignissimos-placeat-est-excepturi-perferendis-dicta-dolore-sint', NULL, 2, '2019-07-02 01:45:38', '2019-07-02 01:45:38'),
(25, 'Sequi pariatur cum voluptatum consequuntur.', 'Accusamus necessitatibus similique rerum et ut blanditiis. Voluptatem cum consequatur laudantium ducimus sapiente quidem aut.', 'mollitia-quis-aut-fugiat-velit-pariatur-distinctio-qui-numquam', NULL, 6, '2019-07-02 01:45:38', '2019-07-02 01:45:38'),
(26, 'Commodi dolor accusamus magnam ut nam aperiam.', 'Est doloribus dolor distinctio. Et unde ut nesciunt rerum nisi. Nihil saepe consequuntur et sint officia occaecati commodi.', 'et-ratione-reiciendis-rerum-qui-sed-voluptas-rem-nam', NULL, 4, '2019-07-02 01:45:38', '2019-07-02 01:45:38'),
(27, 'Inventore illo ut voluptate ducimus molestias consequatur.', 'Porro enim quod neque praesentium. Sed nam rerum itaque ut. Nostrum reiciendis nihil in distinctio ad pariatur et. Voluptatem doloribus dolorum fugiat doloribus odit.', 'illo-ea-fuga-sunt-asperiores-ut-deleniti-et', NULL, 7, '2019-07-02 01:45:38', '2019-07-02 01:45:38'),
(28, 'Ut iusto aut et voluptatem minus similique alias ut.', 'Explicabo atque et quibusdam dolores et eos. Aut sunt qui excepturi dolorem officiis dolorem. Hic quo molestias rem cupiditate molestiae.', 'similique-quaerat-fuga-ipsam-ut-aut-ea', NULL, 9, '2019-07-02 01:45:38', '2019-07-02 01:45:38'),
(29, 'Quam totam molestiae laudantium consectetur aut.', 'Earum eaque eum voluptatem laboriosam et quia. Enim corporis earum illo tenetur est et. Alias optio modi voluptas mollitia. Pariatur hic aut veritatis inventore sit dicta.', 'temporibus-perspiciatis-omnis-velit-iure-sint-quas-aliquam', NULL, 4, '2019-07-02 01:45:38', '2019-07-02 01:45:38'),
(30, 'Sunt deserunt nisi occaecati sit possimus doloribus.', 'Consequatur at saepe sit ut et officiis asperiores. Laborum sed recusandae qui dolor fugiat aut adipisci ullam. Qui dolorum at eius aut cum ea dolore. Cum iure blanditiis consequatur aut est qui.', 'enim-quasi-quas-aut-autem-hic-atque-numquam', NULL, 3, '2019-07-02 01:45:38', '2019-07-02 01:45:38'),
(31, 'Quis corporis ullam in ducimus.', 'Quibusdam ut possimus dolorem et blanditiis enim aperiam. Ab sed aut tenetur sapiente tempore deserunt magnam. Sint et atque et aut temporibus sint.', 'modi-voluptate-porro-voluptas-quasi', NULL, 6, '2019-07-02 01:45:38', '2019-07-02 01:45:38'),
(32, 'Quam aperiam accusantium amet voluptas quis commodi.', 'Rerum commodi est ratione ipsam enim error expedita. Provident molestiae omnis temporibus reiciendis mollitia. Et consectetur amet sint vitae. Necessitatibus molestiae voluptates ut consectetur laudantium id.', 'doloribus-et-repudiandae-laudantium-qui-quia-provident-aperiam-quos', NULL, 5, '2019-07-02 01:45:38', '2019-07-02 01:45:38'),
(33, 'Voluptate iure et placeat vitae in ab.', 'Omnis accusamus qui inventore itaque nostrum ad deserunt occaecati. Deserunt culpa hic nihil inventore laborum. Et dolores qui dolores mollitia tempore alias.', 'aut-et-facere-ut-in-recusandae', NULL, 1, '2019-07-02 01:45:38', '2019-07-02 01:45:38'),
(34, 'Aut non tenetur sed porro.', 'Officia dolores iste labore quaerat. Dolore neque vero eveniet molestiae ipsam hic at. Sed enim nulla commodi beatae. Est est ut amet.', 'laboriosam-ex-ad-vitae-voluptatem-maiores-eaque-saepe', NULL, 7, '2019-07-02 01:45:57', '2019-07-02 01:45:57'),
(35, 'Aut libero dicta magnam ut doloribus nulla alias id.', 'Perspiciatis exercitationem deserunt ea consequatur laborum ut. Ipsa et velit laudantium impedit cum nobis beatae. Ipsa iusto cupiditate ullam qui. Error in sint dolores numquam doloremque accusantium officiis consequatur. Et et illum aut veniam quam suscipit.', 'eius-corrupti-aliquam-qui-consequatur', NULL, 9, '2019-07-02 01:45:58', '2019-07-02 01:45:58'),
(36, 'Aspernatur qui eligendi totam nam molestiae quas.', 'In commodi totam quae et. Delectus cumque omnis ullam excepturi atque rem nemo. Neque totam enim ipsa at quis.', 'odio-temporibus-sed-a-ducimus-voluptate-aut', NULL, 7, '2019-07-02 01:45:58', '2019-07-02 01:45:58'),
(37, 'Tenetur quidem ipsum voluptatem dolorum iusto.', 'Eos sit voluptatibus magni autem labore id corrupti. Accusamus fuga consequatur aliquam eos aut libero. Molestiae consequatur voluptatem ad qui quisquam assumenda et. Perferendis amet reiciendis dolorem officiis omnis et maxime quia.', 'commodi-velit-enim-est-impedit-quia-sit-quod', NULL, 2, '2019-07-02 01:45:58', '2019-07-02 01:45:58'),
(38, 'Veniam quo pariatur ipsum vitae velit exercitationem laboriosam.', 'Odit quos delectus nisi quis. Voluptatem voluptatem sunt voluptates rerum et dolor repellendus. Neque explicabo quia accusamus quos fugiat libero quia. Maiores sit voluptatem in libero.', 'repellendus-et-veritatis-ut-itaque-qui-dignissimos', NULL, 1, '2019-07-02 01:45:58', '2019-07-02 01:45:58'),
(39, 'Cumque consequatur dicta ut sit atque facere voluptatem.', 'Rerum aspernatur et quae cum. Et eius exercitationem autem quae voluptas odio sint. Animi et aut vel et officiis est non consequatur. Repudiandae minus aliquid occaecati aut ut tempora.', 'pariatur-cupiditate-necessitatibus-occaecati-voluptatem', NULL, 7, '2019-07-02 01:45:58', '2019-07-02 01:45:58'),
(40, 'Sint ut illum qui deleniti odio.', 'Quia rerum molestias aspernatur architecto corrupti. Qui minima veniam sunt voluptatum ea iste nam. Dolores soluta accusamus corporis dolores. Neque dolorem omnis vero voluptatum voluptas.', 'expedita-eos-et-voluptatem-itaque-id-omnis', NULL, 7, '2019-07-02 01:45:58', '2019-07-02 01:45:58'),
(41, 'Reiciendis mollitia quia provident nobis aut et.', 'Reprehenderit quam inventore libero. Dolorem ipsum reiciendis eum debitis qui. Velit dolorem minus qui eligendi aut quia. Et molestiae ut est sunt est id. Aut ut non ipsa autem ea.', 'eligendi-odio-provident-earum-harum', NULL, 9, '2019-07-02 01:45:58', '2019-07-02 01:45:58'),
(42, 'Sit harum nulla veniam praesentium explicabo.', 'Qui quia corrupti aut. Earum odit molestias aut culpa. Nihil voluptatum ut eum voluptatibus ducimus. Qui odit illum quam eum.', 'et-non-autem-facere-dignissimos-quo-odit-esse-sed', NULL, 2, '2019-07-02 01:45:58', '2019-07-02 01:45:58'),
(43, 'Adipisci eaque et sunt.', 'Aut magnam deleniti qui sed sunt. Omnis consequatur molestias explicabo cum qui. Sed asperiores doloribus quia ut necessitatibus consectetur impedit.', 'accusantium-velit-aperiam-consequatur-reiciendis-rem-laborum-debitis-aut', NULL, 1, '2019-07-02 01:45:58', '2019-07-02 01:45:58');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Charley Stroman', 'scaucejk@gmail.com', '$2y$10$yAs4tOGdBG/1Ej./Pz/z4uCVozE.eSJntLY/aNMJzNNAntmWqCNBW', '3H3YU9jpwR', '2019-06-27 07:48:46', '2019-06-27 07:48:46'),
(2, 'Mr. Cristina Harris DDS', 'spaucek@gmail.com', '$2y$10$PACeJtTczC1uEisX1Gj3GOMd06SRjcCi/1qWQdOtsvLhIsNgVeJru', 'JD49yZSjIq', '2019-06-27 07:48:46', '2019-06-27 07:48:46'),
(3, 'Eleonore Hauck', 'jeffery02@armstrong.org', '$2y$10$IMzV3KMuFTUv044JN6XZDeFtFQ1WWStuOV8bsEQ/u5ZAEYHuLZcPS', 'jgIWyvjDrI', '2019-06-27 07:48:46', '2019-06-27 07:48:46'),
(4, 'Dr. Toni Kautzer I', 'ebeer@hickle.com', '$2y$10$3u/ztgQfTgst/LDSSw8Te.bEbAKuWM5Q.eQvoBafCFjIBnNID9kjy', 'Y6c42XY97z', '2019-06-27 07:48:46', '2019-06-27 07:48:46'),
(5, 'Cristal Bernier', 'blick.frieda@yahoo.com', '$2y$10$f3mlKNDe.Ww.qY7RqR.n/u8aKuxtZF/TGUVWwtSYEu7xuhNQhhRCO', 'p5iqfJavHZ', '2019-06-27 07:48:46', '2019-06-27 07:48:46'),
(6, 'Sophia Bins', 'julian48@yahoo.com', '$2y$10$VvlKomqhLgpn4G7v0Y7hEOUkc76Gsy9lxjN5iimHj5u7hJysBEpKi', 'Zs7IgjjhhW', '2019-06-27 07:48:46', '2019-06-27 07:48:46'),
(7, 'Daren Kub IV', 'pschultz@yahoo.com', '$2y$10$alFZAGW8xUQmD0LKI7jJw.RpcW01/rytZJWWLFZenIFHIowkbZh.q', '0630PkfpwF', '2019-06-27 07:48:46', '2019-06-27 07:48:46'),
(8, 'Prof. Ernie Lehner III', 'nona.mayert@yahoo.com', '$2y$10$9eV8SLNQdCUMcYwsfqs7WOZKp.nds90WM0N95xLn8SoBUTQv4.cdW', 'waS03vODNu', '2019-06-27 07:48:47', '2019-06-27 07:48:47'),
(9, 'Brant Walsh', 'hoeger.itzel@smitham.info', '$2y$10$BYKs3n5rUr6bgPMrxhcOO.klm6cRc8HDiqh2yI9xN5oJcsVsahJfi', 'TQnhcuGIQ9', '2019-06-27 07:48:47', '2019-06-27 07:48:47'),
(10, 'Marquis Waters', 'alison84@donnelly.info', '$2y$10$KK94GkUQy3TJ2mwMcgAbY.ut3JMkbp/TuYSgP8RDk/6JKdN27uMkm', 'X3FlhFact9', '2019-06-27 07:48:47', '2019-06-27 07:48:47'),
(11, 'Brenda Gislason DVM', 'philpert@yahoo.com', '$2y$10$1ZICK6oRhECu60WG98DTiuA/zNpFQkkrN85VynGHZz9OP7mbAfe2m', 'aatcXuReix', '2019-06-28 08:22:27', '2019-06-28 08:22:27'),
(12, 'Dr. Austyn Quitzon', 'marjory.kilback@yahoo.com', '$2y$10$L/RQUDQuFYAdNeTV1dVvGOc.ma1.3KMy1BVlzEpOKRrxA0TgtvMQq', '1RDSLIQveO', '2019-06-28 08:25:00', '2019-06-28 08:25:00'),
(13, 'Ressie Jerde IV', 'ureinger@yahoo.com', '$2y$10$7ITO.f5YGBCyR70cXyZEq.uRWVfuVXPpqprdhp7BUlw8uOsTXDYzq', 'aZqKgnFqzm', '2019-06-28 08:28:20', '2019-06-28 08:28:20'),
(14, 'Miss Cathy Hintz', 'margarete.collins@gmail.com', '$2y$10$e2CHT2s9K898LKzXfWdrLutxu/wZQFgYbR.vHWRthxgKogNs.Nzfu', 'TpuxtV0Vc4', '2019-06-28 08:30:07', '2019-06-28 08:30:07'),
(15, 'Walton Hayes II', 'kenny.kirlin@dare.org', '$2y$10$OwQlWZDNASFip6t8JsmA9uc0jExVt8rt3zobkvFMIwUIHyPLl.NYy', '0aUhVjAC4b', '2019-06-28 08:33:16', '2019-06-28 08:33:16'),
(16, 'Leatha Reilly', 'andres85@hotmail.com', '$2y$10$5xuso8iH6hc6p7yRoCnZW.ZoiUYeU1/YR7otE.vwrnUti/lEYcTRW', 'Ax0l00fCuf', '2019-07-01 03:01:19', '2019-07-01 03:01:19'),
(17, 'Prof. Jessica Gottlieb Sr.', 'lonie.parisian@gmail.com', '$2y$10$xSsddY8CdGSPTv5eWI1yHe6tdPP/zS2ws59R.sWdYDNfEXz9JBHGq', 'hhBixZlhhq', '2019-07-01 03:01:20', '2019-07-01 03:01:20'),
(18, 'Megane Brekke', 'nicolas.kamren@hotmail.com', '$2y$10$0QW10whtKp4ypuD7lxmyP.AUzuFpP9E.i.Nh6fxG9foYAA2xI3sva', '1QuKfA8D37', '2019-07-01 03:01:20', '2019-07-01 03:01:20'),
(19, 'Abby Schulist PhD', 'gmoen@rohan.info', '$2y$10$P.r8yrK7D9Uo/bwkjBH10.AxXgaNhjsrDrmAYlTe8CUQVIj7c3w/y', 'CulP9brenK', '2019-07-01 03:01:20', '2019-07-01 03:01:20'),
(20, 'Dr. Carole Altenwerth', 'myrtle.robel@gmail.com', '$2y$10$zmH97sJusdwuZ44D4XtzKOEm///oU49kOxRVEkB96BWyPgASAI8K.', 'tMVv8r3ar1', '2019-07-01 03:01:20', '2019-07-01 03:01:20'),
(21, 'Reese Casper IV', 'skiles.maudie@yahoo.com', '$2y$10$toQurhcVFlAEZSKQWy8l.OKedfw3Xb5gPksos4ilounX8JsgvneoK', 'FuGgBRVYyr', '2019-07-01 03:10:25', '2019-07-01 03:10:25'),
(22, 'Leila Schamberger', 'ytreutel@gmail.com', '$2y$10$yvIyK.Jts1rE9inhhcshPuSLlnqImyszb4rY4.OPZcMt8Y0i6qmnu', 'L6I7UMxH5P', '2019-07-01 03:11:37', '2019-07-01 03:11:37'),
(23, 'Jaquelin Cronin', 'bartell.chyna@weissnat.com', '$2y$10$Fzhz.V1r6dnz.Y8HzkD8tu.qPhIc3gHmadyc4FoJWIe2L0JNRF4qO', 'wjhvX1veDu', '2019-07-01 03:15:30', '2019-07-01 03:15:30'),
(24, 'Mario Stroman', 'pearline.kirlin@marks.biz', '$2y$10$5S3DEwVHWgTBGZWMR1FQE.tN7dD80n1p8OLq6Xp8FPM9.OAnj4asm', 'n3zPBSZgZP', '2019-07-01 03:31:06', '2019-07-01 03:31:06'),
(25, 'Coby Conn', 'weber.mitchell@wyman.com', '$2y$10$7.aH7HVXxz/4kRFQj//54O/zoH6yS7ao48GyVdYIffILTtI3didn2', 'QUc6wjtzTN', '2019-07-01 03:43:28', '2019-07-01 03:43:28'),
(26, 'Karson Hirthe', 'wconnelly@parisian.com', '$2y$10$qYYUsJtiJkXImN/k9RkaZOk6/SbJOB.jBjCJ0b/eQy.V4UnITa.p.', 'SZ6lH7Eq8i', '2019-07-01 03:45:20', '2019-07-01 03:45:20'),
(27, 'Mara Smith', 'aaliyah.schultz@hotmail.com', '$2y$10$ux.98wbF695to7MvbRqoCeEaqIhSnXfpVJYj.XgF4hrzjVDUJsrcq', 'rVtJtSXB6q', '2019-07-01 03:48:03', '2019-07-01 03:48:03'),
(28, 'Myrl Nolan Jr.', 'gchristiansen@hotmail.com', '$2y$10$40qDy9IBPQyt.FBrI5YvLOtq/on5mZ/emWoX7WXkoWSVnyCLOkwuG', 'K2LIIJBI62', '2019-07-01 03:53:15', '2019-07-01 03:53:15'),
(29, 'Prof. Liam Bode PhD', 'kianna.schroeder@yahoo.com', '$2y$10$wLTVkm0UCJo84hC1muc0HOZ9EnT9pDauVgLy6Oreg1QC2N.oI9LQy', 'PjW4DQmgxM', '2019-07-01 03:54:21', '2019-07-01 03:54:21'),
(30, 'Fay Gleason', 'cummings.jack@veum.com', '$2y$10$iNApokdxj9Jdnz1Cmbc6ker4CwidbIciVIyFaYOuJ8FNrPTBiq4US', 'BIB0D2datu', '2019-07-01 23:52:37', '2019-07-01 23:52:37'),
(32, 'Van Trantow', 'green.teresa@hotmail.com', '$2y$10$l7T93pHB4sEW0IwSiJxRRu1Dxksmv7UyXlG9bzr2LVRMGOdwe1Bea', 'WHdQtXnoRb', '2019-07-01 23:55:42', '2019-07-01 23:55:42'),
(34, 'Virgie Flatley', 'awilderman@yahoo.com', '$2y$10$L8kLZhruz5zRPffhogxBseywGdXImi6LlfsQ1kp6QiIBE5LU1zpxe', 'gUworFyB5q', '2019-07-02 00:13:07', '2019-07-02 00:13:07'),
(35, 'Casandra Halvorson', 'alycia09@romaguera.org', '$2y$10$MCwEpmu4hXALm7s94V9doOSWaVrDlukh/kT9XhGLfXha6zM8UNY..', 'qrPjj8SIWu', '2019-07-02 00:13:38', '2019-07-02 00:13:38'),
(36, 'Wellington Schmitt', 'oran93@huel.net', '$2y$10$.WPfkSh2jAxEQgCCTMg7k.n4qoVX1QRrczYOwTwToOIxfFpDrPRxG', '2h46Ixgcae', '2019-07-02 00:14:12', '2019-07-02 00:14:12'),
(37, 'Tyler Bergstrom', 'ogerhold@wyman.com', '$2y$10$W1jOeMOAPQ0FeEyDrWHrietuW6o./nQAGCFX5WSkhH/RZA1ffXBLC', 'Vnolsh7FZp', '2019-07-02 00:25:25', '2019-07-02 00:25:25'),
(38, 'PrashantNitor', 'prashant.boraste@nitorinfotech.com', '$2y$10$r6czoSDRSnjTjXxyvb.qp.k.q3BmX8nV.KSN5zJUKpc/Y3PRp5.Y2', 'g4mWg4So6Y25MxbpYSmxR9BsDk6FEoR14mwnJAExPo4j4T7aYsoqR6CmIQbu', '2019-07-02 00:25:25', '2019-07-02 00:33:22'),
(39, 'Dr. Gabe Hilpert DDS', 'roberts.reanna@senger.com', '$2y$10$dwrYJaZjy18.4UfRXnCkreNV/zJYPXCn7namUTmbGqxODX7Bd/L4W', 'kPoRCeffML', '2019-07-02 01:40:46', '2019-07-02 01:40:46'),
(41, 'Micheal Dicki', 'uankunding@hotmail.com', '$2y$10$bWtGAyrbmlpaJ9gFuPWjiukY1VeVfP7osMzKvYRY4D3KjTgVcD5ke', 'n5iADAizCv', '2019-07-02 01:43:19', '2019-07-02 01:43:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_post_id_foreign` (`post_id`),
  ADD KEY `post_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
