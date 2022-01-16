-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2020 at 12:07 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spkpadi`
--

-- --------------------------------------------------------

--
-- Table structure for table `aturan`
--

CREATE TABLE `aturan` (
  `penyakit_id` int(10) UNSIGNED NOT NULL,
  `gejala_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `aturan`
--

INSERT INTO `aturan` (`penyakit_id`, `gejala_id`) VALUES
(1, 2),
(1, 24),
(1, 25),
(2, 3),
(2, 5),
(2, 6),
(2, 12),
(2, 18),
(3, 7),
(3, 9),
(3, 10),
(3, 12),
(3, 14),
(4, 3),
(4, 7),
(4, 8);

-- --------------------------------------------------------

--
-- Table structure for table `diagnosa`
--

CREATE TABLE `diagnosa` (
  `id` int(10) UNSIGNED NOT NULL,
  `pasien_id` int(10) UNSIGNED NOT NULL,
  `penyakit_id` int(10) UNSIGNED NOT NULL,
  `persentase` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Akar tanaman lebih sedikit', '2020-01-26 16:00:49', '2020-01-26 16:00:49'),
(2, 'Anakan berkurang / sedikit', '2020-01-26 16:00:49', '2020-01-26 16:00:49'),
(3, 'Anakan bertambah banyak', '2020-01-26 16:00:49', '2020-01-26 16:00:49'),
(4, 'Anakan tumbuh lemas', '2020-01-26 16:00:49', '2020-01-26 16:00:49'),
(5, 'Anakan tumbuh tegak', '2020-01-26 16:00:49', '2020-01-26 16:00:49'),
(6, 'Bercak-bercak berwarna coklat', '2020-01-26 16:00:49', '2020-01-26 16:00:49'),
(7, 'Bercak berbentuk oval/elips', '2020-01-26 16:00:49', '2020-01-26 16:00:49'),
(8, 'Bercak berwarna abu-abu kehijauan / hijau keabu-abuan', '2020-01-26 16:00:49', '2020-01-26 16:00:49'),
(9, 'Bercak berwarna kelabu / keputihan', '2020-01-26 16:00:49', '2020-01-26 16:00:49'),
(10, 'Bercak dilingkari warna coklat / merah kecoklatan', '2020-01-26 16:00:49', '2020-01-26 16:00:49'),
(11, 'Bercak hitam / coklat pada kulit gabah', '2020-01-26 16:00:49', '2020-01-26 16:00:49'),
(12, 'Bercak menyerang daun', '2020-01-26 16:00:49', '2020-01-26 16:00:49'),
(13, 'Bercak pada bagian pelepah daun bagian bawah', '2020-01-26 16:00:49', '2020-01-26 16:00:49'),
(14, 'Daerah dekat leher paniket berwarna coklat', '2020-01-26 16:00:49', '2020-01-26 16:00:49'),
(15, 'Daun bendera robek-robek / berombak sepanjang pembulu', '2020-01-26 16:00:49', '2020-01-26 16:00:49'),
(16, 'Daun berwarna abu-abu keputih-putihan', '2020-01-26 16:00:49', '2020-01-26 16:00:49'),
(17, 'Daun berwarna hijau pucak / kekuning-kuningan', '2020-01-26 16:00:49', '2020-01-26 16:00:49'),
(18, 'Daun berwarna hijau pucat / kuning pucat', '2020-01-26 16:00:49', '2020-01-26 16:00:49'),
(19, 'Daunt berwarna hijau tua', '2020-01-26 16:00:49', '2020-01-26 16:00:49'),
(20, 'Daun berwarna  jingga', '2020-01-26 16:00:49', '2020-01-26 16:00:49'),
(21, 'Daun keriput dan layuseperti tersiram air panas', '2020-01-26 16:00:49', '2020-01-26 16:00:49'),
(22, 'Daun melingkar seperti terpilin', '2020-01-26 16:00:49', '2020-01-26 16:00:49'),
(23, 'Daun menggulung dan mengering', '2020-01-26 16:00:49', '2020-01-26 16:00:49'),
(24, 'Daun menguning sampai jingga dari pucuk ke pangkal', '2020-01-26 16:00:49', '2020-01-26 16:00:49'),
(25, 'Daun muda terlihat seperti mottle', '2020-01-26 16:00:49', '2020-01-26 16:00:49');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_07_01_195049_create_gejala_table', 1),
(4, '2017_07_01_195148_create_penyakit_table', 1),
(5, '2017_07_02_031810_create_gejala_penyakit_table', 1),
(6, '2017_07_02_062333_create_pasien_table', 1),
(7, '2017_07_02_085613_create_tmp_diagnosa_table', 1),
(8, '2017_07_09_081816_create_diagnosa_table', 1),
(9, '2017_07_09_111229_create_tmp_gejala_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lokasi` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `definisi` text COLLATE utf8_unicode_ci,
  `penyebab` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`id`, `nama`, `definisi`, `penyebab`, `created_at`, `updated_at`) VALUES
(1, 'Tungro', '', 'virus', '2020-01-26 16:00:49', '2020-01-26 16:04:11'),
(2, 'Kerdil Rumput', NULL, 'virus', '2020-01-26 16:00:49', '2020-01-26 16:00:49'),
(3, 'Blast', NULL, 'virus', '2020-01-26 16:00:49', '2020-01-26 16:00:49'),
(4, 'Hawar Pelepah', NULL, 'virus', '2020-01-26 16:00:49', '2020-01-26 16:00:49'),
(5, 'Hawar Bakteri', NULL, 'virus', '2020-01-26 16:00:49', '2020-01-26 16:00:49');

-- --------------------------------------------------------

--
-- Table structure for table `tmp_diagnosa`
--

CREATE TABLE `tmp_diagnosa` (
  `pasien_id` int(10) UNSIGNED DEFAULT NULL,
  `penyakit_id` int(10) UNSIGNED DEFAULT NULL,
  `gejala` int(10) UNSIGNED DEFAULT NULL,
  `gejala_terpenuhi` int(10) UNSIGNED DEFAULT NULL,
  `persen` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tmp_gejala`
--

CREATE TABLE `tmp_gejala` (
  `pasien_id` int(10) UNSIGNED NOT NULL,
  `gejala_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@pakarpadi', '$2y$10$mmB0QxqgKVRFliAnd5opueBng/zk.2Lh0.DUt7HLLHuWzx2Lcb9kW', '2Gzi1Ozo0MDqlMbpqvmnzhdok3cF4cihYuIHVtbsWpgm98J5sZwBVHBnX7Yp', '2020-01-26 16:00:49', '2020-01-26 16:05:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aturan`
--
ALTER TABLE `aturan`
  ADD PRIMARY KEY (`penyakit_id`,`gejala_id`);

--
-- Indexes for table `diagnosa`
--
ALTER TABLE `diagnosa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diagnosa_pasien_id_foreign` (`pasien_id`),
  ADD KEY `diagnosa_penyakit_id_foreign` (`penyakit_id`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tmp_diagnosa`
--
ALTER TABLE `tmp_diagnosa`
  ADD KEY `tmp_diagnosa_pasien_id_foreign` (`pasien_id`),
  ADD KEY `tmp_diagnosa_penyakit_id_foreign` (`penyakit_id`);

--
-- Indexes for table `tmp_gejala`
--
ALTER TABLE `tmp_gejala`
  ADD PRIMARY KEY (`pasien_id`,`gejala_id`);

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
-- AUTO_INCREMENT for table `diagnosa`
--
ALTER TABLE `diagnosa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diagnosa`
--
ALTER TABLE `diagnosa`
  ADD CONSTRAINT `diagnosa_pasien_id_foreign` FOREIGN KEY (`pasien_id`) REFERENCES `pasien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `diagnosa_penyakit_id_foreign` FOREIGN KEY (`penyakit_id`) REFERENCES `penyakit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tmp_diagnosa`
--
ALTER TABLE `tmp_diagnosa`
  ADD CONSTRAINT `tmp_diagnosa_pasien_id_foreign` FOREIGN KEY (`pasien_id`) REFERENCES `pasien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tmp_diagnosa_penyakit_id_foreign` FOREIGN KEY (`penyakit_id`) REFERENCES `penyakit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
