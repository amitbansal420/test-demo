-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2020 at 02:54 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_09_17_082905_create_users_details_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `contact`, `profile_image`, `remember_token`, `user_token`, `created_at`, `updated_at`) VALUES
(1, 'Amit', 'amit@yopmail.com', '$2y$10$BJlVa3.RsD6tLmJ795ucKernW6OKlUIGiRT6Agx66TWkpL609HY1C', '8556008484', 'default.png', NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xMjcuMC4wLjE6NTAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTYwMDMzNzg5MCwiZXhwIjoxNjAwMzQxNDkwLCJuYmYiOjE2MDAzMzc4OTAsImp0aSI6Ijd5M0p6czlBVEJaUE9wM04iLCJzdWIiOjEsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.HI38vW6nYrSPJ6EjjZuaGafEeOTahAst-9Hw1ihYt3Y', '2020-09-17 08:36:44', '2020-09-17 04:48:10'),
(2, 'sfnmds', 'mkjasnd@kjnskj.cinkd', 'askjnas', '66515135135', '1600343957_C:\\xampp\\tmp\\php3C.tmp', NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xMjcuMC4wLjE6NTAwMFwvYXBpXC9yZWdpc3RlciIsImlhdCI6MTYwMDM0Mzk1NywiZXhwIjoxNjAwMzQ3NTU3LCJuYmYiOjE2MDAzNDM5NTcsImp0aSI6IlcxNzh6U1M0VmtOY2F6Q24iLCJzdWIiOjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.iger9DA4ySEyVqnRJsOrKWPXFHfNeOvAbMbf408Tlos', '2020-09-17 06:29:17', '2020-09-17 06:29:17'),
(3, 'm, ,m', 'aaak@gmail.com', '123456789', '35153153', '1600345051_C:\\xampp\\tmp\\phpB017.tmp', NULL, NULL, '2020-09-17 06:47:31', '2020-09-17 06:47:31'),
(5, 'm, ,m', 'm, ,m', '123456789', '35153153', 'm, ,m', NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xMjcuMC4wLjE6NTAwMFwvYXBpXC9yZWdpc3RlciIsImlhdCI6MTYwMDM0NTA5MywiZXhwIjoxNjAwMzQ4NjkzLCJuYmYiOjE2MDAzNDUwOTMsImp0aSI6Im1KSER6UUd4UTRvajBuRFoiLCJzdWIiOjUsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.YUFnMUurznB7uTFLCTAYnWXKFHFJaeTeQBcA55Vf4b8', '2020-09-17 06:48:13', '2020-09-17 07:03:27'),
(6, 'jknkjn', 'njk', '123456789', '6515165156', '1600346564_C:\\xampp\\tmp\\phpC76C.tmp', NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xMjcuMC4wLjE6NTAwMFwvYXBpXC9yZWdpc3RlciIsImlhdCI6MTYwMDM0NjU2NSwiZXhwIjoxNjAwMzUwMTY1LCJuYmYiOjE2MDAzNDY1NjUsImp0aSI6IlY2ZnoxODVUOUl0ZjZsN1EiLCJzdWIiOjYsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.f3mWxARcHOSjk1yyRRsedxlzZUpYGj91FdKSPQjO_kI', '2020-09-17 07:12:45', '2020-09-17 07:12:45'),
(7, 'asdasdas', 'ssdf@hsjd.com', '123', '5313513', NULL, NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xMjcuMC4wLjE6NTAwMFwvYXBpXC9yZWdpc3RlciIsImlhdCI6MTYwMDM0NjcxNywiZXhwIjoxNjAwMzUwMzE3LCJuYmYiOjE2MDAzNDY3MTcsImp0aSI6Ik92aFNCcjRPRDdqNDgyZmwiLCJzdWIiOjcsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.X5FNehgyHeI2FQwaCBGcdpwl0uVWeWlVMhf26Lalwpo', '2020-09-17 07:15:17', '2020-09-17 07:17:37');

-- --------------------------------------------------------

--
-- Table structure for table `users_details`
--

CREATE TABLE `users_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wife` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `child` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_details`
--

INSERT INTO `users_details` (`id`, `user_id`, `father_name`, `mother_name`, `wife`, `child`, `address`, `country`, `city`, `state`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 5, 'asDADASDAS', 'njk', 'njknadasdasd', 'jn', 'jk', 'njkn', 'knjk', 'kjnjkn', 'njk', '2020-09-17 12:18:13', '2020-09-17 12:35:13'),
(2, 6, 'klmmklm', 'lkkm', 'lkm', 'lkm', 'km', 'm', 'klmk', 'm', 'lk', '2020-09-17 12:42:45', '2020-09-17 12:42:45'),
(3, 7, 'lmlkmkm', 'lkm', 'lkm', 'klm', 'klm', 'm', 'lml', 'k', 'lkm', '2020-09-17 12:45:17', '2020-09-17 12:47:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_details`
--
ALTER TABLE `users_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users_details`
--
ALTER TABLE `users_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_details`
--
ALTER TABLE `users_details`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
