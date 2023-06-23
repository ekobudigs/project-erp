-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 23, 2023 at 09:51 AM
-- Server version: 10.5.21-MariaDB-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ekoy1459_projecterp`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `entry_datex` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nama` varchar(100) NOT NULL,
  `rank` varchar(100) NOT NULL,
  `gender` char(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `entry_datex`, `nama`, `rank`, `gender`, `created_at`, `updated_at`) VALUES
(1, '2023-06-07 23:01:04', 'tes', 'Operator', 'L', '2023-06-21 08:20:21', '2023-06-21 08:20:21'),
(2, '2023-06-17 15:02:11', 'res', 'Operator', 'P', '2023-06-21 08:30:02', '2023-06-21 08:30:02'),
(3, '2023-06-22 17:00:00', 'Ahmad Husaini', 'Operator', 'L', '2023-06-22 18:58:18', '2023-06-22 18:58:18'),
(4, '2023-06-15 17:00:00', 'Maya Sofa Nata', 'Operator', 'P', '2023-06-22 18:58:39', '2023-06-22 18:58:39'),
(5, '2023-06-22 17:00:00', 'Rizal Ardiyansah Bintoro', 'Operator', 'L', '2023-06-22 18:59:01', '2023-06-22 18:59:01');

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
(5, '2023_06_21_143503_create_employees_table', 1),
(6, '2023_06_21_143535_create_products_table', 1),
(7, '2023_06_21_143552_create_spkos_table', 1),
(8, '2023_06_21_143609_create_spko_items_table', 1),
(9, '2023_06_22_120041_create_processes_table', 2);

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
-- Table structure for table `processes`
--

CREATE TABLE `processes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `processes`
--

INSERT INTO `processes` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Cor', '2023-06-22 05:02:20', '2023-06-22 05:02:20'),
(2, 'Brush', '2023-06-22 05:02:35', '2023-06-22 05:02:35'),
(3, 'Bombing', '2023-06-22 05:02:44', '2023-06-22 05:02:44'),
(4, 'Slep', '2023-06-22 05:02:52', '2023-06-22 05:02:52');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_category` varchar(20) NOT NULL,
  `serial_no` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `carat` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sub_category`, `serial_no`, `description`, `carat`, `created_at`, `updated_at`) VALUES
(1, 'calp1', 10043, 'tes', '20k-874', '2023-06-21 08:45:17', '2023-06-21 08:45:17'),
(2, 'ss', 23, 'lagi pr', 'sdd', '2023-06-22 07:49:11', '2023-06-22 07:49:11'),
(3, 'LT1', 10237, 'Lionting 1gr-10237-17k', '17k-750', '2023-06-22 18:59:45', '2023-06-22 18:59:45'),
(4, 'CWTMT', 10152, 'Cincin Wanita mata', '16k-700', '2023-06-22 19:00:21', '2023-06-22 19:00:21'),
(5, 'GPMA2', 10125, 'Gelang pipa mata anak', '08k-375p', '2023-06-22 19:01:04', '2023-06-22 19:01:04');

-- --------------------------------------------------------

--
-- Table structure for table `spkos`
--

CREATE TABLE `spkos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `remarks` text DEFAULT NULL,
  `employee` int(11) NOT NULL,
  `trans_date` date NOT NULL,
  `process` varchar(10) NOT NULL,
  `sw` varchar(25) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spkos`
--

INSERT INTO `spkos` (`id`, `remarks`, `employee`, `trans_date`, `process`, `sw`, `created_at`, `updated_at`) VALUES
(1, 'ss', 2, '2023-06-08', '1', 'sd', '2023-06-21 19:15:42', '2023-06-21 19:15:42'),
(2, 'tes', 2, '2023-06-17', '2', 'sw', '2023-06-21 21:28:51', '2023-06-21 21:40:46'),
(3, 'sd', 1, '2023-06-11', '4', 'SPKO001/06/23', '2023-06-21 22:08:29', '2023-06-21 22:08:29'),
(4, 'sda', 1, '2023-06-16', '2', 'SPKO06/23001', '2023-06-21 22:11:27', '2023-06-21 22:11:27'),
(5, 'sda', 2, '2023-06-11', '1', 'SPKO06/23001', '2023-06-21 22:13:10', '2023-06-21 22:13:10'),
(6, 'SD', 2, '2023-06-15', '3', 'SPKO0523001', '2023-06-21 22:17:18', '2023-06-21 22:17:18'),
(7, 'S', 2, '2023-06-16', '4', 'SPKO0523001', '2023-06-21 22:17:49', '2023-06-21 22:17:49'),
(8, 'sd', 2, '2023-06-10', '1', 'SPKO0170001', '2023-06-21 22:22:41', '2023-06-21 22:22:41'),
(9, 'd', 2, '2023-06-03', '1', 'SPKO0523001', '2023-06-21 22:23:34', '2023-06-21 22:23:34'),
(10, 'sda', 2, '2023-06-10', '4', 'SPKO0523001', '2023-06-21 22:25:55', '2023-06-22 05:05:42'),
(11, 'sd', 2, '2023-06-10', '3', 'SPKO2306001', '2023-06-21 22:35:40', '2023-06-21 22:35:40'),
(12, 'sd', 2, '2023-06-09', '3', 'SPKO2306002', '2023-06-21 22:47:12', '2023-06-21 22:47:12'),
(13, 'sd', 2, '2023-06-10', '3', 'SPKO2306003', '2023-06-21 22:47:38', '2023-06-21 22:47:38'),
(14, 'ds', 2, '2023-06-02', '3', 'SPKO2306004', '2023-06-21 23:03:56', '2023-06-21 23:03:56'),
(15, NULL, 2, '2023-06-21', '2', 'SPKO2306005', '2023-06-22 18:57:39', '2023-06-22 18:57:39'),
(16, NULL, 3, '2023-06-23', '2', 'SPKO2306006', '2023-06-22 19:20:03', '2023-06-22 19:20:03'),
(17, NULL, 5, '2023-06-16', '4', 'SPKO2306007', '2023-06-22 19:23:45', '2023-06-22 19:23:45');

-- --------------------------------------------------------

--
-- Table structure for table `spko_items`
--

CREATE TABLE `spko_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `oridnal` bigint(20) NOT NULL,
  `id_product` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spko_items`
--

INSERT INTO `spko_items` (`id`, `oridnal`, `id_product`, `qty`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 45, '2023-06-21 21:22:18', '2023-06-22 02:04:36'),
(3, 1, 1, 33, '2023-06-21 21:26:41', '2023-06-21 21:26:41'),
(4, 2, 1, 36, '2023-06-21 21:29:08', '2023-06-21 21:29:08'),
(5, 3, 2, 20, '2023-06-22 07:49:51', '2023-06-22 07:49:51'),
(6, 16, 5, 10, '2023-06-22 19:20:32', '2023-06-22 19:20:57'),
(8, 16, 5, 10, '2023-06-22 19:21:14', '2023-06-22 19:21:14'),
(9, 16, 2, 20, '2023-06-22 19:21:22', '2023-06-22 19:21:22'),
(10, 16, 5, 90, '2023-06-22 19:23:12', '2023-06-22 19:23:12'),
(11, 17, 1, 10, '2023-06-22 19:30:04', '2023-06-22 19:30:13'),
(12, 17, 5, 300, '2023-06-22 19:30:24', '2023-06-22 19:30:24');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$rRnQaQ3Jpy9V9kasiavv3eB8slit7aOYcx7/jVEkyca///roTGiJW', NULL, '2023-06-21 08:16:19', '2023-06-21 08:16:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `processes`
--
ALTER TABLE `processes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spkos`
--
ALTER TABLE `spkos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spko_items`
--
ALTER TABLE `spko_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `spkos_oridnal_foreign` (`oridnal`);

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
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `processes`
--
ALTER TABLE `processes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `spkos`
--
ALTER TABLE `spkos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `spko_items`
--
ALTER TABLE `spko_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
