-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2023 at 01:25 PM
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
-- Table structure for table `assign_class_teacher`
--

CREATE TABLE `assign_class_teacher` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:active,1:Inactive',
  `is_delete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:not,1:yes',
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assign_class_teacher`
--

INSERT INTO `assign_class_teacher` (`id`, `class_id`, `teacher_id`, `status`, `is_delete`, `created_by`, `created_at`, `updated_at`) VALUES
(9, 3, 2, 0, 0, 1, '2023-10-04 04:17:30', '2023-10-04 04:35:23'),
(10, 3, 13, 1, 0, 1, '2023-10-04 04:17:30', '2023-10-04 04:54:27'),
(11, 3, 12, 0, 0, 1, '2023-10-04 04:17:30', '2023-10-04 05:00:10'),
(16, 2, 14, 0, 0, 1, '2023-10-04 04:18:24', '2023-10-04 09:08:15'),
(17, 2, 13, 0, 0, 1, '2023-10-04 04:18:24', '2023-10-04 04:18:24'),
(18, 2, 2, 0, 0, 1, '2023-10-04 04:18:24', '2023-10-04 04:35:05'),
(30, 4, 12, 0, 0, 1, '2023-10-04 04:54:13', '2023-10-04 04:54:13'),
(31, 4, 3, 0, 0, 1, '2023-10-04 04:54:13', '2023-10-04 04:54:13'),
(32, 1, 12, 0, 0, 1, '2023-10-04 04:54:54', '2023-10-04 04:54:54'),
(33, 2, 3, 0, 0, 1, '2023-10-04 04:54:54', '2023-10-04 09:01:35');

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
(1, 'ABC', 0, 0, 1, '2023-09-27 11:30:44', '2023-10-04 04:37:01'),
(2, 'XYZ', 0, 0, 1, '2023-09-28 04:54:14', '2023-09-28 05:23:05'),
(3, 'SS1', 0, 0, 1, '2023-09-28 09:06:45', '2023-09-28 09:06:45'),
(4, 'S8 CSE', 0, 0, 1, '2023-10-04 04:36:48', '2023-10-04 04:36:48');

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
(29, 3, 6, 1, 0, 0, '2023-09-28 10:20:31', '2023-09-28 10:45:27'),
(30, 3, 5, 1, 0, 0, '2023-10-03 09:42:06', '2023-10-03 09:42:06'),
(31, 2, 5, 1, 0, 0, '2023-10-04 04:17:55', '2023-10-04 04:17:55'),
(32, 2, 6, 1, 0, 0, '2023-10-04 04:17:55', '2023-10-04 04:17:55'),
(33, 4, 7, 1, 0, 0, '2023-10-04 04:37:44', '2023-10-04 04:37:44');

-- --------------------------------------------------------

--
-- Table structure for table `class_subject_timetable`
--

CREATE TABLE `class_subject_timetable` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `week_id` int(11) DEFAULT NULL,
  `start_time` varchar(25) DEFAULT NULL,
  `end_time` varchar(25) DEFAULT NULL,
  `room_number` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class_subject_timetable`
--

INSERT INTO `class_subject_timetable` (`id`, `class_id`, `subject_id`, `week_id`, `start_time`, `end_time`, `room_number`, `created_at`, `updated_at`) VALUES
(12, 2, 3, 1, '16:46', '17:46', '125', '2023-10-05 09:16:52', '2023-10-05 09:16:52'),
(13, 2, 3, 5, '16:46', '19:46', '369', '2023-10-05 09:16:52', '2023-10-05 09:16:52'),
(14, 2, 4, 3, '16:47', '18:47', '8965', '2023-10-05 09:17:16', '2023-10-05 09:17:16'),
(15, 4, 7, 6, '20:48', '22:48', 'A34', '2023-10-05 09:18:53', '2023-10-05 09:18:53'),
(21, 3, 5, 1, '09:30', '17:30', '014', '2023-10-05 10:58:03', '2023-10-05 10:58:03'),
(22, 3, 5, 2, '19:30', '14:36', '235', '2023-10-05 10:58:03', '2023-10-05 10:58:03'),
(23, 3, 5, 3, '18:45', '19:45', '104', '2023-10-05 10:58:03', '2023-10-05 10:58:03'),
(24, 3, 5, 5, '18:25', '19:25', '5659', '2023-10-05 10:58:03', '2023-10-05 10:58:03'),
(25, 3, 5, 6, '20:45', '22:45', '147', '2023-10-05 10:58:03', '2023-10-05 10:58:03');

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
(6, 'Zoology', 'Theory', 1, 0, 0, '2023-09-28 10:43:47', '2023-09-28 10:43:47'),
(7, 'Computer Networks', 'Theory', 1, 0, 0, '2023-10-04 04:37:22', '2023-10-04 04:37:22');

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
  `marital_status` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `permanent_address` text DEFAULT NULL,
  `qualification` text DEFAULT NULL,
  `work_experience` text DEFAULT NULL,
  `note` text DEFAULT NULL,
  `user_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1:Admin,2:Teacher,3:Student,4:Parent',
  `is_delete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:not deleted,1:deleted\r\n',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:active,1:inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `parent_id`, `name`, `last_name`, `email`, `email_verified_at`, `password`, `remember_token`, `admission_number`, `roll_number`, `class_id`, `gender`, `date_of_birth`, `caste`, `religion`, `mobile_number`, `admission_date`, `profile_pic`, `blood_group`, `height`, `weight`, `occupation`, `marital_status`, `address`, `permanent_address`, `qualification`, `work_experience`, `note`, `user_type`, `is_delete`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Admin', NULL, 'admin@gmail.com', NULL, '$2y$10$Tp1PJem05r5ATuqfgWmozuiOxpuH/Au6CEqykiQMpBcko9ZFuzQG.', 'Qg7Df10O7TaRAUPALumGBKQCxG6LIV3CHwMttnbSOpSOpX1OBxmTCYP6RWxM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, '2023-09-25 07:07:09', '2023-10-03 00:30:38'),
(3, NULL, 'Teacher', 'Anny', 'teacher@gmail.com', NULL, '$2y$10$uEBlKcFk/EkG7JchH8M71O1ks9QYoRBQO6aIoNrMJ3Zuw2sBNxfMq', 'cnUoDVqZsjRmMvqOuT7rhD4xRpAf3YzJE619CBTm1Iq5dEIl0TktCi8ZuuA8', NULL, NULL, NULL, 'Female', '2023-09-27', NULL, NULL, '7845120369', '2023-10-01', NULL, NULL, NULL, NULL, NULL, '', 'Kochi', '', '', '', '', 2, 0, 0, '2023-09-26 07:21:02', '2023-10-02 12:04:15'),
(4, NULL, 'Parent', 'Dolly', 'parent@gmail.com', NULL, '$2y$10$uslMdsmjNWolxPkO7nHFBesP3ahXACrZu1tp5J6agqB/6XRZ7gNQm', 'rb2CmLg3xeyrzH8OKxdf3uioiUx0GHyTGe7came2fC7ism0NARp0siv1sUWX', NULL, NULL, NULL, 'Female', NULL, NULL, NULL, '8281857938', NULL, '20231002065750jrltvosdpjoioqz2bt6d.jfif', NULL, NULL, NULL, '', NULL, 'Mandaram', NULL, NULL, NULL, NULL, 4, 0, 0, '2023-09-26 07:21:02', '2023-10-02 01:29:54'),
(5, 11, 'Evan', 'Libu', 'evan@gmail.com', NULL, '$2y$10$caWtWw..30RrQs91CV23EOTaGWdPB.yHu3wEb/zR.UyJHpDP1vNse', 'f2TToXkr2sSLopeNig7qjSyhxOFfWTKNuyBs6XkWcREMWbny13IG6sZZsrKh', '2132', '76', 2, 'Male', '2023-08-05', 'No caste', 'no religion', '7356217922', '2023-09-28', NULL, 'A', '100', '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, '2023-09-26 07:21:02', '2023-10-04 03:36:47'),
(6, NULL, 'John Doe', NULL, 'JohnDoe@gmail', NULL, '$2y$10$XvJeMAotzEUQp0CjjTGarOpJTbhOvcNUcFAwiDPJapHDT8Ko5qdSW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, '2023-09-27 01:09:41', '2023-09-27 03:31:40'),
(7, NULL, 'Abiya Libu', NULL, 'abiya@gmail.com', NULL, '$2y$10$WHOZKim/1y2DAuqe/MuZ/eJiNSPAuEY5lhvNYSWIndr0bA/xRh.3.', 'PbhDUPIxVDwDee4w4lvQtmgFxboOKDopnAFqxIdeFCDyTZPYJkolmful6RYM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, '2023-09-27 01:24:37', '2023-09-27 03:21:22'),
(8, NULL, 'admin', NULL, 'admin123@gmail.com', NULL, '$2y$10$rK5IfZRWzaJ3g/mU2emakue3BsV9QKWORDEp0Q6z9.zqtCCS9vHB2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, '2023-09-27 03:45:37', '2023-09-27 05:02:20'),
(9, 4, 'John Doe', 'd', 'john@gmail.com', NULL, '$2y$10$tGUZCDbc8HhbCIDc.T.cVOK4k412eaog8oJ6dDS8aPo8y78MA2dzG', NULL, '342', '155', 2, 'Male', '2023-09-28', 'fds', 'dsfew', '34657554', '2023-10-01', '20231001054907dugey0ebd04junphkrbx.jpg', 'f', '12', '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, '2023-10-01 12:19:07', '2023-10-04 03:32:03'),
(10, 11, 'Abiyaaa', 'Sam', 'abiya123@gmail.com', NULL, '$2y$10$1DOUi9ylZGY1P87scxMF3.YdEkpyLNKjBbn2wIGcpV7KyE6AIJthy', 'YBRa0WQzBTsfkDtgjpGqXqYgVkK7CUvSt9KWUh3nFRUH9k1sbe7XsArsSXRD', '1545', '548', 3, 'Female', '2023-09-28', '', '', '151545959', '2023-09-25', '20231002042118rxgqgyad63uzyzgrejrm.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, '2023-10-01 22:50:57', '2023-10-02 23:52:09'),
(11, NULL, 'George', 'M', 'george@gmail.com', NULL, '$2y$10$0OrzDow26r0qtVHYTnpahOz9IUWRfoGU55Z9eW8BzUelG8MO3iBkC', 'B4J5HPlZDI86GNzjWrqOXco1yShP2KPZKg5pPWId7XlwkjFjFomrJraeaMDL', NULL, NULL, NULL, 'Male', NULL, NULL, NULL, '7356217922', NULL, '20231003054103dhlov2llyseqhfiqhjrv.jfif', NULL, NULL, NULL, 'Agriculture', NULL, 'Kollam India', NULL, NULL, NULL, NULL, 4, 0, 0, '2023-10-02 01:07:22', '2023-10-03 00:11:03'),
(12, NULL, 'Beena', 'A Philipose', 'beena123@gmail.com', NULL, '$2y$10$yF/oAcHFS/rEczjEfrSBpeVdd5iM0JLjgectMwh590Y2JwILAd8su', 'I5QwXpgize7KxTnbZF7xoWnMECYWI5wLUNenAHdyD8Z3yIyZAN7nA6noNQhz', NULL, NULL, NULL, 'Female', '2023-06-03', NULL, NULL, '9863251478', '2023-10-03', '20231002050942zv1bfylfuvhuxyahl8ug.jpg', NULL, NULL, NULL, NULL, 'Married', 'Swargam', 'Tvm', 'MTech', '2 Years', 'nothing', 2, 0, 0, '2023-10-02 11:39:42', '2023-10-02 23:19:30'),
(13, NULL, 'Aneesha', 'A', 'aneesha@gmail.com', NULL, '$2y$10$bmGusTThrDlojvQUiW5a2uNj9ZFHth6uSf.dcMVXc7HpH/xZuOwbu', NULL, NULL, NULL, NULL, 'Female', '2023-06-02', NULL, NULL, '9863252586', '2023-03-18', NULL, NULL, NULL, NULL, NULL, '', 'Kochi', '', '', '', '', 2, 0, 0, '2023-10-03 05:22:29', '2023-10-03 05:22:29'),
(14, NULL, 'Nivin', 'VIncent', 'nivin@gmail.com', NULL, '$2y$10$DuumRBayjBm2Zy27Xro7UuBrQ9RNLrAJcX1gsAjfwzX5RRYYdTMUS', '9MWezlXUDBAJ2JJQaovIeovj7IFpR1k15uw4BmYMEYGaXuOalHoOoXnWQtyd', NULL, NULL, NULL, 'Male', '2023-06-30', NULL, NULL, '', '2023-05-19', NULL, NULL, NULL, NULL, NULL, '', 'kochi', '', '', '', '', 2, 0, 0, '2023-10-03 05:25:34', '2023-10-03 05:25:34');

-- --------------------------------------------------------

--
-- Table structure for table `week`
--

CREATE TABLE `week` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `week`
--

INSERT INTO `week` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Monday', NULL, NULL),
(2, 'Tuesday', NULL, NULL),
(3, 'Wednesday', NULL, NULL),
(4, 'Thursday', NULL, NULL),
(5, 'Friday', NULL, NULL),
(6, 'Saturday', NULL, NULL),
(7, 'Sunday', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assign_class_teacher`
--
ALTER TABLE `assign_class_teacher`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `class_subject_timetable`
--
ALTER TABLE `class_subject_timetable`
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
-- Indexes for table `week`
--
ALTER TABLE `week`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assign_class_teacher`
--
ALTER TABLE `assign_class_teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `class_subject`
--
ALTER TABLE `class_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `class_subject_timetable`
--
ALTER TABLE `class_subject_timetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `week`
--
ALTER TABLE `week`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
