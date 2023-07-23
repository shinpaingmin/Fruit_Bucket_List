-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jul 23, 2023 at 03:02 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todolistrev`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_07_17_103606_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(30) DEFAULT NULL,
  `price` varchar(255) NOT NULL DEFAULT '5000',
  `address` varchar(255) NOT NULL DEFAULT 'yangon',
  `rating` varchar(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `image`, `price`, `address`, `rating`, `created_at`, `updated_at`) VALUES
(1, 'Qui quia libero est voluptas sed commodi eum quia.', 'Autem fuga laudantium alias sed eum. Voluptates est porro ipsa et illo quis.', NULL, '15374', 'taungyi', '2', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(2, 'Iure voluptatem vel numquam cupiditate sint.', 'Dolores repellat architecto aut qui quis. Ducimus perspiciatis minus cupiditate deserunt labore.', NULL, '38043', 'taungyi', '4', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(3, 'Nam assumenda assumenda rerum aliquam commodi.', 'Provident aut et beatae. Quos quisquam qui veritatis ut voluptas atque.', NULL, '18502', 'new york', '1', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(4, 'Dolorem soluta nostrum assumenda et impedit doloribus nihil et.', 'Doloribus fugiat nulla cupiditate iure atque excepturi amet nisi. Occaecati omnis eius tempora.', NULL, '14705', 'yangon', '5', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(5, 'In consequatur maxime magnam qui voluptas in doloribus est aspernatur.', 'Voluptas ipsum dolores qui rem id. Enim laudantium aut praesentium cum totam qui.', NULL, '21556', 'yangon', '5', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(6, 'Aspernatur est ipsam autem in.', 'Et non culpa qui assumenda laborum facere et. Nostrum assumenda aut qui nihil.', NULL, '34321', 'mandalay', '3', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(7, 'Et ut quia cumque magni corrupti nemo.', 'Alias et molestiae qui saepe quia. Possimus et ut eveniet. Doloremque placeat recusandae illo.', NULL, '30377', 'tokyo', '2', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(8, 'Labore eum veritatis tempora quo sed delectus minus fugiat illum.', 'Eius fuga dolores qui incidunt aut. Praesentium sed assumenda nihil dolores dolores rerum.', NULL, '22170', 'taungyi', '1', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(9, 'Et officiis maiores sapiente qui ullam similique accusamus libero sunt deleniti.', 'Et dolor et ea dolores. Molestiae ut ad neque sed placeat. Eum ad architecto ducimus a.', NULL, '24154', 'taungyi', '1', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(10, 'At quam dolorum laborum adipisci qui excepturi vero.', 'Eligendi non sint sit deserunt. Quis officiis numquam id voluptatem eligendi.', NULL, '16663', 'mandalay', '5', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(11, 'Sunt eum occaecati voluptatem reiciendis iure unde.', 'Modi esse natus officia ipsam rem. Quasi cumque eligendi doloremque veniam.', NULL, '25437', 'yangon', '4', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(12, 'Ab possimus assumenda ab perspiciatis doloribus.', 'Aperiam exercitationem et officia voluptatem. Ullam molestias ut quis error quis est.', NULL, '16494', 'tokyo', '5', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(13, 'Quod amet qui officiis quia dolore qui placeat magni culpa enim.', 'Consequuntur et ipsam et excepturi sequi rem. Et ut odit accusantium nesciunt.', NULL, '44116', 'new york', '3', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(14, 'Neque illo voluptate beatae quia voluptates aliquam officiis dolor dolor.', 'Totam officia quae eum eum. Tenetur consequatur sit voluptatibus rerum.', NULL, '32684', 'yangon', '4', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(15, 'Dicta repellendus ea minus alias possimus omnis quis.', 'Illum eos eum repellat illum dolor totam omnis. Et rerum accusantium sequi. Sit quia ad eius ut.', NULL, '14620', 'mandalay', '1', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(16, 'Alias ut harum et aut sunt aperiam sapiente doloremque quia molestias.', 'Dolores quia quas quidem atque nisi perferendis fugiat quidem. Amet quaerat modi suscipit illum.', NULL, '11627', 'new york', '4', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(17, 'Ab laborum distinctio doloremque qui sit.', 'Expedita id est nihil. Neque impedit eveniet ab. Nisi ut officia nisi magnam quidem sit.', NULL, '17061', 'taungyi', '3', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(18, 'Ipsum ut consequatur saepe velit.', 'Qui cum voluptatem eum quisquam. Rem dolorem laudantium voluptatem. Unde sunt error quos natus.', NULL, '29934', 'mandalay', '2', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(19, 'In nulla vel suscipit error quia accusantium.', 'Ut minus a quod aperiam autem in. Amet non quasi dicta nisi provident sunt maiores nam.', NULL, '27256', 'yangon', '5', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(20, 'Cum est dolorum voluptatem asperiores cumque aut praesentium occaecati.', 'Quae error odio alias et. Temporibus vero illo veritatis ut optio. Aut iste culpa nesciunt.', NULL, '10766', 'new york', '5', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(21, 'Deleniti rerum pariatur corrupti esse nobis id omnis consectetur est voluptatum.', 'Iusto officiis maxime ut sit. Consequatur voluptatibus distinctio perferendis non dolore sapiente.', NULL, '10659', 'new york', '4', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(22, 'Voluptatibus nulla qui vel rerum aut et.', 'Quo rerum delectus eum atque. Repellat amet iusto minima recusandae.', NULL, '47179', 'new york', '2', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(23, 'Et maiores eum nihil animi architecto et est ut.', 'Corrupti est minus atque et. Enim saepe nostrum ratione quasi mollitia. Laborum ex cum ut quo.', NULL, '32795', 'yangon', '2', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(24, 'Non et ipsa rerum fugiat.', 'Voluptate unde voluptas unde rem. Qui ut sit quo nulla.', NULL, '20707', 'yangon', '5', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(25, 'Minima quam cum tenetur totam voluptatem consequuntur modi et.', 'Facilis recusandae consequatur itaque. Dolorem enim iure possimus et. Id natus voluptatum in.', NULL, '37691', 'taungyi', '3', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(26, 'Sed nemo porro voluptates delectus rem ipsa nulla dicta consequatur ut.', 'Voluptate neque sed sint laboriosam. Quas dignissimos ea sed. Dolor asperiores qui nihil qui.', NULL, '25822', 'new york', '3', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(27, 'Est voluptates qui odit tenetur dolores iste magnam.', 'Enim culpa aut ratione. Est voluptate non omnis earum.', NULL, '33043', 'tokyo', '1', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(28, 'Accusamus illo soluta dolore eum est corrupti.', 'Ipsum aut in molestias quidem et voluptates harum. Aut hic itaque sequi.', NULL, '20480', 'mandalay', '1', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(29, 'Aut eius ab assumenda aliquam nisi est aut perferendis.', 'Id suscipit inventore eos sit. Aut sapiente et sequi. At non et optio ut.', NULL, '32940', 'tokyo', '5', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(30, 'Ullam totam magnam qui sapiente non blanditiis sint facilis.', 'Omnis praesentium aut numquam sunt. Nemo laudantium est non.', NULL, '25943', 'new york', '5', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(31, 'Ducimus qui unde voluptatem dolorem ratione.', 'Ad dolor deleniti illum ut et. Non commodi temporibus soluta voluptatem minus.', NULL, '23356', 'taungyi', '1', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(32, 'Nostrum amet aperiam eaque voluptates sed et saepe nihil unde dolorem.', 'Expedita molestiae qui possimus ratione. Quia aut vel dolorum tempora molestiae.', NULL, '43903', 'taungyi', '5', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(33, 'Unde et molestias saepe autem minima.', 'Voluptate dolore repudiandae nemo et ipsum. Aliquid quis ea soluta voluptate est atque.', NULL, '11338', 'taungyi', '2', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(34, 'Earum enim corporis fugiat possimus minus reprehenderit.', 'Et sit iste quo maxime. Minima illo aut velit. Earum non iste et vel ratione.', NULL, '44068', 'yangon', '2', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(35, 'Officiis ut iste ut reprehenderit autem sapiente libero repudiandae ut dolores.', 'Et beatae beatae soluta blanditiis. Qui nihil et temporibus et.', NULL, '6557', 'yangon', '2', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(36, 'Sint voluptatem assumenda deserunt debitis.', 'Saepe similique impedit illo. Et quasi temporibus blanditiis natus fuga minus impedit hic.', NULL, '43326', 'taungyi', '3', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(37, 'Repudiandae vel molestias natus ut nemo ut fugit vero quidem.', 'Ut placeat eius ab quo. Et et magni est nihil. Similique enim quidem non fugit.', NULL, '6107', 'tokyo', '4', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(38, 'Eum ipsum assumenda ut in magnam sed doloremque.', 'Rerum nostrum et ex. Consectetur repellendus suscipit similique veritatis aut sunt.', NULL, '36843', 'new york', '1', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(39, 'Nostrum iusto voluptas veritatis veritatis mollitia.', 'Odio dolorem nam quo aut. Eos dicta aliquam perferendis ut neque ea eveniet.', NULL, '36116', 'yangon', '1', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(40, 'Eveniet rerum ea quia natus reprehenderit tempora eos debitis.', 'Ullam officia et et tempore odio molestias et tenetur. Voluptatem veniam nesciunt et non.', NULL, '9917', 'tokyo', '4', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(41, 'Eum ipsum aut aut corporis sint.', 'Ut accusantium sint nobis aut. Illum quos et sunt quia aut consequatur.', NULL, '34825', 'tokyo', '1', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(42, 'Voluptatem optio molestiae quidem maxime.', 'Est nihil saepe quibusdam minima fugiat. Omnis voluptatem magnam est ab.', NULL, '38934', 'new york', '3', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(43, 'Sit modi eum perferendis est ratione eos.', 'Soluta incidunt vel dolores eos nihil aliquid. Dignissimos consequuntur et id dolor et.', NULL, '14690', 'tokyo', '3', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(44, 'Quae atque nihil ut voluptatem quod maiores aliquam reiciendis voluptatibus reprehenderit.', 'Ipsam hic exercitationem non et aut rerum aliquam. Velit neque labore possimus et autem vel.', NULL, '43049', 'yangon', '2', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(45, 'Commodi nostrum velit quia et.', 'Et iure et officia natus neque qui nemo. Alias laudantium ipsam nemo nobis officia quod.', NULL, '21372', 'new york', '1', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(46, 'Rem adipisci exercitationem quo distinctio dicta sed.', 'Error eum non reiciendis sequi quia aut. Optio modi et perferendis velit incidunt voluptates.', NULL, '15130', 'new york', '2', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(47, 'Cumque quas est officiis quos voluptas doloremque laudantium et voluptatum.', 'Adipisci cumque non ut rerum. Eius aspernatur aliquam voluptatem rerum.', NULL, '41661', 'tokyo', '5', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(48, 'Est repellendus adipisci voluptas a incidunt laborum.', 'Nisi ex tenetur esse non. Iure magnam est placeat deserunt.', NULL, '29318', 'mandalay', '1', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(49, 'Sapiente aut voluptas sed quis consectetur.', 'Est incidunt aspernatur dolorem. Eum qui nobis illum ea. Saepe necessitatibus velit est magnam.', NULL, '24279', 'mandalay', '1', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(50, 'Ut id rerum doloribus vel neque cupiditate quaerat quibusdam.', 'Quo et vitae velit suscipit et. Et assumenda in modi consequatur quisquam voluptatem.', NULL, '38488', 'new york', '4', '2023-07-20 21:06:06', '2023-07-20 21:06:06'),
(57, 'Orange', 'Life is like an orange, a little sweet, a little sour.', '64bd22f8e694dOrange_Fruit.jpg', '1500', 'Egypt', '5', '2023-07-21 23:39:30', '2023-07-23 06:24:16'),
(58, 'Apple', 'An apple a day keeps the doctor away', '64bd22ee1d863Apple_Fruit.jpg', '1000', 'Pyin Oo Lwin', '4', '2023-07-21 23:40:29', '2023-07-23 06:24:06'),
(59, 'Strawberry', 'Sweet, juicy, and full of flavor – strawberries are a little piece of heaven', '64bd22d840f3aStrawberry.jpg', '2000', 'Pyin Oo Lwin', '5', '2023-07-21 23:43:30', '2023-07-23 06:23:44'),
(60, 'Cherry', 'Life is just a bowl of cherries. Don\'t take it serious; it\'s mysterious. Life is just a bowl of cherries, so live and laugh and laugh at love, love a laugh, laugh and love.', '64bd01dde3809Cherry_Fruit.jpg', '3000', 'United States of America', '4', '2023-07-22 01:27:25', '2023-07-23 04:03:01'),
(61, 'Coconut', 'A coconut is the edible fruit of the coconut palm (Cocos nucifera), a tree of the palm family', '64bd2275ede06Coconut_Fruit.jpg', '1500', 'Myanmar (Burma)', '5', '2023-07-22 01:29:13', '2023-07-23 06:22:05'),
(62, 'Olives', 'Much of the fat found in olives (and olive oil) comes from heart-healthy monounsaturated fat. Studies have found this fat to help fight inflammation.', '64bd22638ae44Olive_Fruit.jpg', '4000', 'Greece', '3', '2023-07-22 01:56:01', '2023-07-23 06:21:47'),
(65, 'New Item (Fruit)', 'Coming Soon!', NULL, '9999', '-----', '1', '2023-07-23 06:26:12', '2023-07-23 06:26:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
