-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2023 at 01:10 PM
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
-- Database: `school.com`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:active,1:inactive',
  `is_delete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:not,1:yes',
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `name`, `status`, `is_delete`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'ABC', 1, 0, 1, '2023-09-27 11:30:44', '2023-09-28 05:23:01'),
(2, 'XYZ', 0, 0, 1, '2023-09-28 04:54:14', '2023-09-28 05:23:05'),
(3, 'SS1', 0, 0, 1, '2023-09-28 09:06:45', '2023-09-28 09:06:45');

-- --------------------------------------------------------

--
-- Table structure for table `class_subject`
--

CREATE TABLE `class_subject` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `is_delete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:not,1:yes',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:active,1:inactive',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class_subject`
--

INSERT INTO `class_subject` (`id`, `class_id`, `subject_id`, `created_by`, `is_delete`, `status`, `created_at`, `updated_at`) VALUES
(22, 2, 1, 1, 0, 0, '2023-09-28 10:20:23', '2023-09-28 10:20:23'),
(23, 2, 4, 1, 0, 0, '2023-09-28 10:20:23', '2023-09-28 10:20:23'),
(24, 2, 2, 1, 0, 0, '2023-09-28 10:20:23', '2023-09-28 10:20:23'),
(25, 2, 3, 1, 0, 0, '2023-09-28 10:20:23', '2023-09-28 10:20:23'),
(26, 3, 1, 1, 0, 0, '2023-09-28 10:20:31', '2023-09-28 10:20:31'),
(27, 3, 4, 1, 0, 0, '2023-09-28 10:20:31', '2023-09-28 10:20:31'),
(28, 3, 2, 1, 0, 0, '2023-09-28 10:20:31', '2023-09-28 10:20:31'),
(29, 3, 6, 1, 0, 0, '2023-09-28 10:20:31', '2023-09-28 10:45:27');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL COMMENT '0:active,1:inactive',
  `is_delete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:not,1:yes',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `name`, `type`, `created_by`, `status`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'English', 'Theory', 1, 0, 0, '2023-09-28 06:16:38', '2023-09-28 06:35:37'),
(2, 'Science', 'Practical', 1, 0, 0, '2023-09-27 06:32:58', '2023-09-28 06:35:40'),
(3, 'Science', 'Theory', 1, 0, 0, '2023-09-28 06:33:25', '2023-09-28 06:33:33'),
(4, 'Hindi', 'Theory', 1, 0, 0, '2023-09-28 09:07:03', '2023-09-28 09:07:03'),
(5, 'Biology', 'Practical', 1, 0, 0, '2023-09-28 09:07:15', '2023-09-28 09:07:15'),
(6, 'Zoology', 'Theory', 1, 0, 0, '2023-09-28 10:43:47', '2023-09-28 10:43:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `admission_number` varchar(255) DEFAULT NULL,
  `roll_number` varchar(50) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `caste` varchar(50) DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `mobile_number` varchar(15) DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `profile_pic` varchar(100) DEFAULT NULL,
  `blood_group` varchar(10) DEFAULT NULL,
  `height` varchar(10) DEFAULT NULL,
  `weight` varchar(10) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `user_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1:Admin,2:Teacher,3:Student,4:Parent',
  `is_delete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:not deleted,1:deleted\r\n',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:active,1:inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `parent_id`, `name`, `last_name`, `email`, `email_verified_at`, `password`, `remember_token`, `admission_number`, `roll_number`, `class_id`, `gender`, `date_of_birth`, `caste`, `religion`, `mobile_number`, `admission_date`, `profile_pic`, `blood_group`, `height`, `weight`, `occupation`, `address`, `user_type`, `is_delete`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Admin', NULL, 'admin@gmail.com', NULL, '$2y$10$Tp1PJem05r5ATuqfgWmozuiOxpuH/Au6CEqykiQMpBcko9ZFuzQG.', 'pxqmoXOQvO9TtMuGCnOkVjLN7LCC5p30kglulAX4yuKjy0MECSTIJqbWZW4a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, '2023-09-25 07:07:09', '2023-09-27 03:23:05'),
(3, NULL, 'Teacher', NULL, 'teacher@gmail.com', NULL, '$2y$10$uslMdsmjNWolxPkO7nHFBesP3ahXACrZu1tp5J6agqB/6XRZ7gNQm', 'cnUoDVqZsjRmMvqOuT7rhD4xRpAf3YzJE619CBTm1Iq5dEIl0TktCi8ZuuA8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, '2023-09-26 07:21:02', '2023-09-26 07:21:02'),
(4, NULL, 'Parent', 'Dolly', 'parent@gmail.com', NULL, '$2y$10$uslMdsmjNWolxPkO7nHFBesP3ahXACrZu1tp5J6agqB/6XRZ7gNQm', 'rb2CmLg3xeyrzH8OKxdf3uioiUx0GHyTGe7came2fC7ism0NARp0siv1sUWX', NULL, NULL, NULL, 'Female', NULL, NULL, NULL, '8281857938', NULL, '20231002065750jrltvosdpjoioqz2bt6d.jfif', NULL, NULL, NULL, '', 'Mandaram', 4, 0, 0, '2023-09-26 07:21:02', '2023-10-02 01:29:54'),
(5, NULL, 'Student', NULL, 'student@gmail.com', NULL, '$2y$10$CAn/r2/qmdsu4Pp.x.ASZeOPJK3IevDgTvviOr5H14pYKO2MUXfgi', 'vLR4Pruv8AewnoOoKpPMXTyn1awmv2HyVrcXr686gODRu2X1MyDRsghetwyf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, '2023-09-26 07:21:02', '2023-09-27 00:05:47'),
(6, NULL, 'John Doe', NULL, 'JohnDoe@gmail', NULL, '$2y$10$XvJeMAotzEUQp0CjjTGarOpJTbhOvcNUcFAwiDPJapHDT8Ko5qdSW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, '2023-09-27 01:09:41', '2023-09-27 03:31:40'),
(7, NULL, 'Abiya Libu', NULL, 'abiya@gmail.com', NULL, '$2y$10$WHOZKim/1y2DAuqe/MuZ/eJiNSPAuEY5lhvNYSWIndr0bA/xRh.3.', 'PbhDUPIxVDwDee4w4lvQtmgFxboOKDopnAFqxIdeFCDyTZPYJkolmful6RYM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, '2023-09-27 01:24:37', '2023-09-27 03:21:22'),
(8, NULL, 'admin', NULL, 'admin123@gmail.com', NULL, '$2y$10$rK5IfZRWzaJ3g/mU2emakue3BsV9QKWORDEp0Q6z9.zqtCCS9vHB2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, '2023-09-27 03:45:37', '2023-09-27 05:02:20'),
(9, 4, 'John Doe', 'd', 'john@gmail.com', NULL, '$2y$10$tGUZCDbc8HhbCIDc.T.cVOK4k412eaog8oJ6dDS8aPo8y78MA2dzG', NULL, '342', '155', 3, 'Male', '2023-09-28', 'fds', 'dsfew', '34657554', '2023-10-01', '20231001054907dugey0ebd04junphkrbx.jpg', 'f', '12', '12', NULL, NULL, 3, 0, 0, '2023-10-01 12:19:07', '2023-10-02 05:00:38'),
(10, 11, 'Abiya', 'Sam', 'abiya123@gmail.com', NULL, '$2y$10$Qjw5NyfAKfUsKw99.gsSFuMMVcqfdgXTPTt67/n8g2fpVcXLzxy/K', NULL, '1545', '548', 3, 'Female', '2023-09-28', '', '', '151545959', '2023-09-25', '20231002042118rxgqgyad63uzyzgrejrm.png', '', '', '', NULL, NULL, 3, 0, 0, '2023-10-01 22:50:57', '2023-10-02 04:29:35'),
(11, NULL, 'George', 'M', 'george@gmail.com', NULL, '$2y$10$VR3DCu7OzrXKoAWPBS1HNelY7LXttDTD9U.FRoKlL7YMjBDgUnFAa', NULL, NULL, NULL, NULL, 'Male', NULL, NULL, NULL, '7356217922', NULL, '20231002063722wmoxp46j8wwq9fcenqgu.png', NULL, NULL, NULL, 'Agriculture', 'Kollam India', 4, 0, 0, '2023-10-02 01:07:22', '2023-10-02 01:27:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_subject`
--
ALTER TABLE `class_subject`
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
-- Indexes for table `subject`
--
ALTER TABLE `subject`
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
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `class_subject`
--
ALTER TABLE `class_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

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
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
