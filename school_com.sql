-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2023 at 12:46 PM
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
(33, 4, 7, 1, 0, 0, '2023-10-04 04:37:44', '2023-10-04 04:37:44'),
(34, 1, 1, 1, 0, 0, '2023-10-10 06:48:12', '2023-10-10 06:48:12'),
(35, 3, 8, 1, 0, 0, '2023-10-11 09:41:51', '2023-10-11 09:41:51');

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
(25, 3, 5, 6, '20:45', '22:45', '147', '2023-10-05 10:58:03', '2023-10-05 10:58:03'),
(26, 3, 6, 1, '17:14', '19:14', '150', '2023-10-10 10:44:37', '2023-10-10 10:44:37'),
(27, 3, 8, 1, '09:12', '11:12', '258', '2023-10-11 09:42:22', '2023-10-11 09:42:22');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `note` varchar(2000) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `is_delete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:not,1:yes',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`id`, `name`, `note`, `created_by`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'First Term', 'testing changed', 1, 0, '2023-10-06 05:15:30', '2023-10-06 08:49:32'),
(2, 'Model Exam 2023-2024', 'Checking', 1, 0, '2023-10-07 05:17:01', '2023-10-08 08:47:26'),
(3, 'Special', 'Exam', 1, 0, '2023-10-08 09:11:42', '2023-10-08 09:11:42'),
(4, 'MiddleTerm', 'Middle Term Exam', 1, 0, '2023-10-12 06:50:04', '2023-10-12 06:50:04');

-- --------------------------------------------------------

--
-- Table structure for table `exam_schedule`
--

CREATE TABLE `exam_schedule` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `exam_date` date DEFAULT NULL,
  `start_time` varchar(25) DEFAULT NULL,
  `end_time` varchar(25) DEFAULT NULL,
  `room_number` varchar(25) DEFAULT NULL,
  `full_marks` varchar(25) DEFAULT NULL,
  `passing_mark` varchar(25) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam_schedule`
--

INSERT INTO `exam_schedule` (`id`, `exam_id`, `class_id`, `subject_id`, `exam_date`, `start_time`, `end_time`, `room_number`, `full_marks`, `passing_mark`, `created_by`, `created_at`, `updated_at`) VALUES
(8, 2, 3, 5, '2023-10-20', '09:00', '11:00', 'Q12', '100', '45', 1, '2023-10-10 04:30:16', '2023-10-10 04:30:16'),
(9, 2, 3, 6, '2023-10-27', '13:00', '14:00', '3456', '50', '25', 1, '2023-10-10 04:30:16', '2023-10-10 04:30:16'),
(11, 2, 2, 6, '2023-10-26', '11:01', '12:00', 'PX963', '100', '30', 1, '2023-10-10 04:32:15', '2023-10-10 04:32:15'),
(12, 3, 4, 7, '2023-10-11', '17:16', '18:16', 'ZS2', '100', '45', 1, '2023-10-10 06:46:24', '2023-10-10 06:46:24'),
(13, 1, 1, 1, '2023-11-01', '08:00', '09:00', '230', '150', '75', 1, '2023-10-10 06:49:08', '2023-10-10 06:49:08'),
(18, 1, 3, 8, '2023-10-28', '23:12', '15:12', 'A34', '100', '60', 1, '2023-10-13 06:11:50', '2023-10-13 06:11:50'),
(19, 1, 3, 5, '2023-10-10', '10:32', '11:32', '568', '100', '45', 1, '2023-10-13 06:11:50', '2023-10-13 06:11:50'),
(20, 1, 3, 6, '2023-10-11', '11:32', '12:32', '0147', '100', '50', 1, '2023-10-13 06:11:50', '2023-10-13 06:11:50'),
(21, 1, 3, 2, '2023-10-20', '11:00', '12:00', 'S23', '100', '40', 1, '2023-10-13 06:11:50', '2023-10-13 06:11:50');

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
-- Table structure for table `marks_grade`
--

CREATE TABLE `marks_grade` (
  `id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `percent_from` int(11) NOT NULL DEFAULT 0,
  `percent_to` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `marks_grade`
--

INSERT INTO `marks_grade` (`id`, `name`, `percent_from`, `percent_to`, `created_by`, `created_at`, `updated_at`) VALUES
(2, 'A', 90, 100, 1, '2023-10-13 04:50:08', '2023-10-13 05:12:09'),
(4, 'B', 80, 89, 1, '2023-10-13 05:06:19', '2023-10-13 05:16:25'),
(5, 'C', 70, 79, 1, '2023-10-13 05:06:35', '2023-10-13 05:16:36'),
(6, 'D', 60, 69, 1, '2023-10-13 05:07:19', '2023-10-13 05:16:45'),
(7, 'E', 50, 59, 1, '2023-10-13 05:07:47', '2023-10-13 05:16:55'),
(8, 'F', 0, 58, 1, '2023-10-13 05:08:13', '2023-10-13 05:17:09');

-- --------------------------------------------------------

--
-- Table structure for table `marks_register`
--

CREATE TABLE `marks_register` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `class_work` int(11) NOT NULL DEFAULT 0,
  `home_work` int(11) NOT NULL DEFAULT 0,
  `test_work` int(11) NOT NULL DEFAULT 0,
  `exam` int(11) NOT NULL DEFAULT 0,
  `full_marks` int(11) NOT NULL DEFAULT 0,
  `passing_mark` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `marks_register`
--

INSERT INTO `marks_register` (`id`, `student_id`, `exam_id`, `class_id`, `subject_id`, `class_work`, `home_work`, `test_work`, `exam`, `full_marks`, `passing_mark`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 10, 1, 3, 8, 14, 10, 12, 25, 100, 60, 1, '2023-10-11 16:19:17', '2023-10-12 09:26:37'),
(2, 10, 1, 3, 5, 9, 9, 9, 19, 100, 45, 1, '2023-10-11 16:19:17', '2023-10-12 09:16:33'),
(3, 10, 1, 3, 6, 25, 25, 0, 0, 50, 25, 1, '2023-10-11 16:19:17', '2023-10-12 09:16:33'),
(4, 10, 1, 3, 2, 15, 10, 25, 14, 200, 100, 1, '2023-10-11 16:19:17', '2023-10-12 09:16:33'),
(5, 5, 1, 3, 8, 30, 12, 6, 35, 100, 60, 1, '2023-10-11 16:22:18', '2023-10-12 10:51:29'),
(6, 5, 1, 3, 5, 14, 1, 12, 50, 100, 45, 1, '2023-10-11 16:22:18', '2023-10-12 10:51:08'),
(7, 5, 1, 3, 6, 25, 10, 5, 5, 50, 25, 1, '2023-10-11 16:22:18', '2023-10-12 10:50:45'),
(8, 5, 1, 3, 2, 24, 18, 3, 30, 200, 100, 1, '2023-10-11 16:22:18', '2023-10-13 05:44:33'),
(9, 15, 3, 4, 7, 10, 22, 25, 12, 0, 0, 1, '2023-10-12 05:30:45', '2023-10-12 06:58:13'),
(10, 10, 2, 3, 5, 10, 2, 5, 70, 100, 45, 1, '2023-10-12 09:56:33', '2023-10-12 10:21:06'),
(11, 10, 2, 3, 6, 12, 4, 3, 8, 50, 25, 1, '2023-10-12 09:56:33', '2023-10-12 09:56:33'),
(12, 5, 2, 3, 5, 2, 12, 13, 15, 100, 45, 12, '2023-10-12 10:44:56', '2023-10-12 10:44:56'),
(13, 5, 2, 3, 6, 14, 25, 1, 2, 50, 25, 12, '2023-10-12 10:44:57', '2023-10-13 05:33:39');

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
-- Table structure for table `student_attendance`
--

CREATE TABLE `student_attendance` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `attendance_type` int(11) DEFAULT NULL COMMENT '1:Present,2:Late,3:Absent,4:Half Day',
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_attendance`
--

INSERT INTO `student_attendance` (`id`, `class_id`, `attendance_date`, `student_id`, `attendance_type`, `created_by`, `created_at`, `updated_at`) VALUES
(3, 3, '2023-10-06', 10, 1, 1, '2023-10-14 04:56:56', '2023-10-14 05:10:30'),
(4, 3, '2023-10-06', 5, 4, 1, '2023-10-14 04:57:17', '2023-10-14 04:57:27'),
(5, 3, '2023-10-14', 10, 1, 1, '2023-10-14 05:10:51', '2023-10-14 05:10:51'),
(6, 3, '2023-10-14', 5, 1, 1, '2023-10-14 05:10:54', '2023-10-14 05:10:54'),
(7, 4, '2023-10-06', 15, 4, 1, '2023-10-14 05:12:00', '2023-10-14 05:12:48'),
(8, 4, '2023-10-07', 15, 2, 1, '2023-10-14 05:12:25', '2023-10-14 05:12:25'),
(9, 4, '2023-10-14', 15, 4, 12, '2023-10-14 06:58:39', '2023-10-14 06:59:15'),
(10, 3, '2023-10-13', 10, 1, 12, '2023-10-14 06:59:04', '2023-10-14 06:59:04'),
(11, 3, '2023-10-12', 10, 2, 12, '2023-10-14 07:00:25', '2023-10-14 07:00:25'),
(12, 3, '2023-10-12', 5, 2, 12, '2023-10-14 07:00:33', '2023-10-14 07:00:33'),
(13, 3, '2023-10-04', 10, 1, 12, '2023-10-14 09:21:09', '2023-10-14 09:21:09');

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
(7, 'Computer Networks', 'Theory', 1, 0, 0, '2023-10-04 04:37:22', '2023-10-04 04:37:22'),
(8, 'Mechanics', 'Theory', 1, 0, 0, '2023-10-11 09:41:38', '2023-10-11 09:41:38');

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
(1, NULL, 'Admin', NULL, 'admin@gmail.com', NULL, '$2y$10$Tp1PJem05r5ATuqfgWmozuiOxpuH/Au6CEqykiQMpBcko9ZFuzQG.', 'GAhfBjvGJUxUsvyeB8as3I1EddyeVwpygva9bc7hTSb50oEcChX6b2PnTR7x', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, '2023-09-25 07:07:09', '2023-10-03 00:30:38'),
(3, NULL, 'Teacher', 'Anny', 'teacher@gmail.com', NULL, '$2y$10$uEBlKcFk/EkG7JchH8M71O1ks9QYoRBQO6aIoNrMJ3Zuw2sBNxfMq', 'cnUoDVqZsjRmMvqOuT7rhD4xRpAf3YzJE619CBTm1Iq5dEIl0TktCi8ZuuA8', NULL, NULL, NULL, 'Female', '2023-09-27', NULL, NULL, '7845120369', '2023-10-01', NULL, NULL, NULL, NULL, NULL, '', 'Kochi', '', '', '', '', 2, 0, 0, '2023-09-26 07:21:02', '2023-10-02 12:04:15'),
(4, NULL, 'Parent', 'Dolly', 'parent@gmail.com', NULL, '$2y$10$uslMdsmjNWolxPkO7nHFBesP3ahXACrZu1tp5J6agqB/6XRZ7gNQm', 'rb2CmLg3xeyrzH8OKxdf3uioiUx0GHyTGe7came2fC7ism0NARp0siv1sUWX', NULL, NULL, NULL, 'Female', NULL, NULL, NULL, '8281857938', NULL, '20231002065750jrltvosdpjoioqz2bt6d.jfif', NULL, NULL, NULL, '', NULL, 'Mandaram', NULL, NULL, NULL, NULL, 4, 0, 0, '2023-09-26 07:21:02', '2023-10-02 01:29:54'),
(5, 11, 'Evan', 'Libu', 'evan@gmail.com', NULL, '$2y$10$caWtWw..30RrQs91CV23EOTaGWdPB.yHu3wEb/zR.UyJHpDP1vNse', 'f2TToXkr2sSLopeNig7qjSyhxOFfWTKNuyBs6XkWcREMWbny13IG6sZZsrKh', '2132', '76', 3, 'Male', '2023-08-05', 'No caste', 'no religion', '7356217922', '2023-09-28', NULL, 'A', '100', '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, '2023-09-26 07:21:02', '2023-10-11 03:45:17'),
(6, NULL, 'John Doe', NULL, 'JohnDoe@gmail', NULL, '$2y$10$XvJeMAotzEUQp0CjjTGarOpJTbhOvcNUcFAwiDPJapHDT8Ko5qdSW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, '2023-09-27 01:09:41', '2023-09-27 03:31:40'),
(7, NULL, 'Abiya Libu', NULL, 'abiya@gmail.com', NULL, '$2y$10$WHOZKim/1y2DAuqe/MuZ/eJiNSPAuEY5lhvNYSWIndr0bA/xRh.3.', 'PbhDUPIxVDwDee4w4lvQtmgFxboOKDopnAFqxIdeFCDyTZPYJkolmful6RYM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, '2023-09-27 01:24:37', '2023-09-27 03:21:22'),
(8, NULL, 'admin', NULL, 'admin123@gmail.com', NULL, '$2y$10$rK5IfZRWzaJ3g/mU2emakue3BsV9QKWORDEp0Q6z9.zqtCCS9vHB2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, '2023-09-27 03:45:37', '2023-09-27 05:02:20'),
(9, 4, 'John Doe', 'd', 'john@gmail.com', NULL, '$2y$10$tGUZCDbc8HhbCIDc.T.cVOK4k412eaog8oJ6dDS8aPo8y78MA2dzG', NULL, '342', '155', 2, 'Male', '2023-09-28', 'fds', 'dsfew', '34657554', '2023-10-01', '20231001054907dugey0ebd04junphkrbx.jpg', 'f', '12', '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, '2023-10-01 12:19:07', '2023-10-04 03:32:03'),
(10, 11, 'Abiyaaa', 'Sam', 'abiya123@gmail.com', NULL, '$2y$10$1DOUi9ylZGY1P87scxMF3.YdEkpyLNKjBbn2wIGcpV7KyE6AIJthy', 'TJpuRtYrdsGm9IgyVV2oROigZKvz9yeDNdEVYTptlXzihgjLwf2daPT6Z7Dy', '1545', '548', 3, 'Female', '2023-09-28', '', '', '151545959', '2023-09-25', '20231002042118rxgqgyad63uzyzgrejrm.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, '2023-10-01 22:50:57', '2023-10-02 23:52:09'),
(11, NULL, 'George', 'M', 'george@gmail.com', NULL, '$2y$10$NZ56oxK.YNiTLJs3T53vL.0I56mT8Bb8aOHMmNyXxzEELy.oV/RQ.', 'u0QBkacXqlIq4bmTb6HFoSJHkNVhqFbMrCno0VRGkxqaUFr0DAzk3OUJPXWp', NULL, NULL, NULL, 'Male', NULL, NULL, NULL, '7356217922', NULL, '20231003054103dhlov2llyseqhfiqhjrv.jfif', NULL, NULL, NULL, 'Agriculture', NULL, 'Kollam India', NULL, NULL, NULL, NULL, 4, 0, 0, '2023-10-02 01:07:22', '2023-10-06 03:40:42'),
(12, NULL, 'Beena', 'A Philipose', 'beena123@gmail.com', NULL, '$2y$10$yF/oAcHFS/rEczjEfrSBpeVdd5iM0JLjgectMwh590Y2JwILAd8su', 'MmaudrLig7k5hcxbjxxamXRGDH5kE10D4pJ8u9iyXa984hlkqqtBZiHrd9XS', NULL, NULL, NULL, 'Female', '2023-06-03', NULL, NULL, '9863251478', '2023-10-03', '20231002050942zv1bfylfuvhuxyahl8ug.jpg', NULL, NULL, NULL, NULL, 'Married', 'Swargam', 'Tvm', 'MTech', '2 Years', 'nothing', 2, 0, 0, '2023-10-02 11:39:42', '2023-10-02 23:19:30'),
(13, NULL, 'Aneesha', 'A', 'aneesha@gmail.com', NULL, '$2y$10$bmGusTThrDlojvQUiW5a2uNj9ZFHth6uSf.dcMVXc7HpH/xZuOwbu', NULL, NULL, NULL, NULL, 'Female', '2023-06-02', NULL, NULL, '9863252586', '2023-03-18', NULL, NULL, NULL, NULL, NULL, '', 'Kochi', '', '', '', '', 2, 0, 0, '2023-10-03 05:22:29', '2023-10-03 05:22:29'),
(14, NULL, 'Nivin', 'VIncent', 'nivin@gmail.com', NULL, '$2y$10$DuumRBayjBm2Zy27Xro7UuBrQ9RNLrAJcX1gsAjfwzX5RRYYdTMUS', '9MWezlXUDBAJ2JJQaovIeovj7IFpR1k15uw4BmYMEYGaXuOalHoOoXnWQtyd', NULL, NULL, NULL, 'Male', '2023-06-30', NULL, NULL, '', '2023-05-19', NULL, NULL, NULL, NULL, NULL, '', 'kochi', '', '', '', '', 2, 0, 0, '2023-10-03 05:25:34', '2023-10-03 05:25:34'),
(15, NULL, 'Ammu', 'Prince', 'ammu@gmail.com', NULL, '$2y$10$sLLpUE0H17ubmUYDz/v5FuHcHhfisYUom5ONldIAfPve1fFz.ip8y', NULL, '12478', '', 4, 'Female', '2023-05-05', '', '', '7845103698', '2023-09-26', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, '2023-10-11 22:43:18', '2023-10-11 22:43:39');

-- --------------------------------------------------------

--
-- Table structure for table `week`
--

CREATE TABLE `week` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `fullcalender_day` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `week`
--

INSERT INTO `week` (`id`, `name`, `fullcalender_day`, `created_at`, `updated_at`) VALUES
(1, 'Monday', 1, NULL, NULL),
(2, 'Tuesday', 2, NULL, NULL),
(3, 'Wednesday', 3, NULL, NULL),
(4, 'Thursday', 4, NULL, NULL),
(5, 'Friday', 5, NULL, NULL),
(6, 'Saturday', 6, NULL, NULL),
(7, 'Sunday', 0, NULL, NULL);

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
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_schedule`
--
ALTER TABLE `exam_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `marks_grade`
--
ALTER TABLE `marks_grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marks_register`
--
ALTER TABLE `marks_register`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `student_attendance`
--
ALTER TABLE `student_attendance`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `class_subject_timetable`
--
ALTER TABLE `class_subject_timetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `exam_schedule`
--
ALTER TABLE `exam_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marks_grade`
--
ALTER TABLE `marks_grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `marks_register`
--
ALTER TABLE `marks_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
-- AUTO_INCREMENT for table `student_attendance`
--
ALTER TABLE `student_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `week`
--
ALTER TABLE `week`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
