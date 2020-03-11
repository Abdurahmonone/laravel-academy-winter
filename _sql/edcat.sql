-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2020 at 11:08 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edcat`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_100000_create_password_resets_table', 1),
(13, '2017_06_02_182856_create_posts_table', 1),
(14, '2017_06_03_144733_add_user_id_to_posts', 1),
(15, '2017_06_03_211549_add_cover_image_to_posts', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('a@a.a', '$2y$10$q/s5F8mO94ltQkF91i03dOBTa.ynum3/VWm/wvNBd3UpjY6tvCigK', '2020-03-03 16:30:53');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `user_id`, `cover_image`) VALUES
(6, 'Hello', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet,&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Laboriosam&nbsp;cum&nbsp;nisi&nbsp;molestias&nbsp;aliquam&nbsp;adipisci&nbsp;libero&nbsp;numquam&nbsp;accusantium&nbsp;rerum&nbsp;eligendi&nbsp;at,&nbsp;inventore&nbsp;voluptate&nbsp;facilis&nbsp;dignissimos&nbsp;quasi&nbsp;ea&nbsp;tempore&nbsp;modi&nbsp;culpa&nbsp;molestiae.</p>', '2020-03-05 07:50:18', '2020-03-05 07:50:18', 1, 'maxresdefault_1583412618.jpg'),
(7, 'Hello', '<p>asd sfg dfgsdfg df</p>', '2020-03-05 07:56:17', '2020-03-05 07:56:17', 1, 'maxresdefault_1583412977.jpg'),
(8, 'fsdfsdfs', 'dfsd bsdfbgf', '2020-03-07 04:04:35', '2020-03-07 04:04:35', 1, 'maxresdefault_1583571875.jpg'),
(9, 'Post one', 'body post one fasdf sga', '2020-03-07 05:42:54', '2020-03-07 05:42:54', 1, 'maxresdefault_1583577774.jpg'),
(10, 'Hello', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Est at molestiae nesciunt iusto ratione, nam molestias, quod in vel corporis expedita. Neque corrupti vitae aut rem porro, quasi quidem exercitationem.', '2020-03-07 05:43:23', '2020-03-07 06:02:17', 1, 'maxresdefault_1583577803.jpg'),
(11, 'Hello', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Est at molestiae nesciunt iusto ratione, nam molestias, quod in vel corporis expedita. Neque corrupti vitae aut rem porro, quasi quidem exercitationem.', '2020-03-07 06:17:30', '2020-03-07 06:17:30', 1, '1143548_1583579850.jpg'),
(12, 'Title Post', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Est at molestiae nesciunt iusto ratione, nam molestias, quod in vel corporis expedita. Neque corrupti vitae aut rem porro, quasi quidem exercitationem.', '2020-03-07 06:18:01', '2020-03-07 06:18:01', 1, 'maxresdefault_1583579881.jpg'),
(13, 'Забони барномасозӣ php', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Est at molestiae nesciunt iusto ratione, nam molestias, quod in vel corporis expedita. Neque corrupti vitae aut rem porro, quasi quidem exercitationem.', '2020-03-07 06:19:58', '2020-03-07 06:19:58', 1, 'php-ahmedabad_1583579998.png'),
(14, 'php', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Est at molestiae nesciunt iusto ratione, nam molestias, quod in vel corporis expedita. Neque corrupti vitae aut rem porro, quasi quidem exercitationem.', '2020-03-07 06:20:42', '2020-03-07 06:20:42', 1, 'maxresdefault (1)_1583580042.jpg'),
(15, 'backend', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Est at molestiae nesciunt iusto ratione, nam molestias, quod in vel corporis expedita. Neque corrupti vitae aut rem porro, quasi quidem exercitationem.', '2020-03-07 06:22:02', '2020-03-07 06:22:02', 1, '1409228061Untitled-1_trans_1583580122.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'a@a.a', '$2y$10$poCfYaUWKOdVltHEI8JY0e0ZtckhSCzah/JHhjpp1N/YFa6MiEniS', 'BHySZjnz31p9DP0jtYtx8mrXlOwgrqK7ZgIBEmsUKHzHltLAcvFCZDbGvsEg', '2020-03-03 15:57:23', '2020-03-03 15:57:23'),
(2, 'ad', 'admin@admin.com', '$2y$10$Lm4I1aa5fKdlA94zuymXLejgMbiFc/NGLaUhPO050hKKldK1EE5lK', 'GHTX79njRk02DYJzhhWrpfeDGw6qo6VxWC7FHwoBzC2054x7UAP1RkayY5Hn', '2020-03-04 16:24:27', '2020-03-04 16:24:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
