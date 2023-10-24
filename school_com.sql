-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2023 at 12:47 PM
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
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:not read,1:read',
  `created_date` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `sender_id`, `receiver_id`, `message`, `file`, `status`, `created_date`, `created_at`, `updated_at`) VALUES
(1, 1, 7, 'hi ligi', NULL, 0, 1697994982, '2023-10-22 17:16:22', '2023-10-22 17:16:22'),
(2, 1, 14, 'hello nivin', NULL, 1, 1697995144, '2023-10-22 17:19:04', '2023-10-24 09:30:50'),
(3, 1, 15, 'good morning', NULL, 0, 1697995176, '2023-10-22 17:19:36', '2023-10-22 17:19:36'),
(4, 14, 1, 'hello ', NULL, 1, 1697995144, '2023-10-22 17:19:04', '2023-10-24 05:07:13'),
(5, 1, 14, 'did you submit report?', NULL, 1, 1698051584, '2023-10-23 08:59:44', '2023-10-24 09:30:50'),
(6, 1, 14, 'yes', NULL, 1, 1698051951, '2023-10-23 09:05:51', '2023-10-24 09:30:50'),
(7, 1, 14, 'i am in a meeting', NULL, 1, 1698052131, '2023-10-23 09:08:51', '2023-10-24 09:30:50'),
(8, 1, 14, 'Call me after one hour', NULL, 1, 1698052274, '2023-10-23 09:11:14', '2023-10-24 09:30:50'),
(9, 1, 14, 'I am going to outside', NULL, 1, 1698052580, '2023-10-23 09:16:20', '2023-10-24 09:30:50'),
(10, 1, 14, 'shall we?', NULL, 1, 1698052670, '2023-10-23 09:17:50', '2023-10-24 09:30:50'),
(11, 1, 14, 'hey', NULL, 1, 1698052685, '2023-10-23 09:18:05', '2023-10-24 09:30:50'),
(12, 1, 13, 'Are you free now?', NULL, 0, 1698052752, '2023-10-23 09:19:12', '2023-10-23 09:19:12'),
(13, 1, 14, 'come here', NULL, 1, 1698052788, '2023-10-23 09:19:48', '2023-10-24 09:30:50'),
(14, 1, 14, 'ok done', NULL, 1, 1698052955, '2023-10-23 09:22:35', '2023-10-24 09:30:50'),
(15, 1, 14, 'are you ok?', NULL, 1, 1698053090, '2023-10-23 09:24:50', '2023-10-24 09:30:50'),
(16, 1, 13, 'yes', NULL, 0, 1698123540, '2023-10-24 04:59:00', '2023-10-24 04:59:00'),
(17, 13, 1, 'yes am free now', NULL, 1, 1698123584, '2023-10-24 04:59:44', '2023-10-24 08:30:42'),
(18, 1, 4, 'hi dolly', NULL, 0, 1698124485, '2023-10-24 05:14:45', '2023-10-24 05:14:45'),
(19, 1, 7, 'hi', NULL, 0, 1698128995, '2023-10-24 06:29:55', '2023-10-24 06:29:55'),
(20, 1, 15, 'hello ammu', NULL, 0, 1698136398, '2023-10-24 08:33:18', '2023-10-24 08:33:18'),
(21, 1, 14, 'hi', NULL, 1, 1698140836, '2023-10-24 09:47:16', '2023-10-24 09:47:26'),
(22, 11, 10, 'hi abi', NULL, 1, 1698141996, '2023-10-24 10:06:36', '2023-10-24 10:09:02'),
(23, 10, 11, 'hi hello', NULL, 1, 1698142153, '2023-10-24 10:09:13', '2023-10-24 10:09:41');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:active,1:inactive',
  `is_delete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:not,1:yes',
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `name`, `amount`, `status`, `is_delete`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'ABC', 500, 0, 0, 1, '2023-09-27 11:30:44', '2023-10-18 06:35:40'),
(2, 'XYZ', 2500, 0, 0, 1, '2023-09-28 04:54:14', '2023-10-18 06:35:31'),
(3, 'SS1', 1000, 0, 0, 1, '2023-09-28 09:06:45', '2023-10-18 06:35:22'),
(4, 'S8 CSE', 80000, 0, 0, 1, '2023-10-04 04:36:48', '2023-10-18 06:34:59'),
(5, 'Semester 5', 50000, 0, 0, 1, '2023-10-18 06:34:50', '2023-10-18 06:34:50');

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
-- Table structure for table `homework`
--

CREATE TABLE `homework` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `homework_date` date DEFAULT NULL,
  `submission_date` date DEFAULT NULL,
  `document_file` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_delete` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `homework`
--

INSERT INTO `homework` (`id`, `class_id`, `subject_id`, `homework_date`, `submission_date`, `document_file`, `description`, `is_delete`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 3, 8, '2023-10-17', '2023-10-25', '20231017055428xkf9kstj6k5vipie8gqe.pdf', '<p>                    do it&nbsp; on time</p><p>Admin</p><p>\r\n                    </p>', 0, 1, '2023-10-17 05:03:07', '2023-10-17 05:58:46'),
(2, 3, 4, '2023-10-17', '2023-10-20', '202310170600557lxr0gzyc0xcu0o4x6vc.pdf', 'Describe about Environment', 0, 1, '2023-10-17 06:00:03', '2023-10-17 06:58:30'),
(3, 1, 1, '2023-10-12', '2023-10-29', '20231017065736x8zj7qwpiilfjayqaer9.jpg', 'Hello', 0, 12, '2023-10-17 06:38:44', '2023-10-17 06:57:52'),
(4, 2, 6, '2023-10-07', '2023-10-16', NULL, 'Draw Heart Bisect in detail', 0, 1, '2023-10-17 06:46:17', '2023-10-18 04:56:28');

-- --------------------------------------------------------

--
-- Table structure for table `homework_submit`
--

CREATE TABLE `homework_submit` (
  `id` int(11) NOT NULL,
  `homework_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `document_file` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `homework_submit`
--

INSERT INTO `homework_submit` (`id`, `homework_id`, `student_id`, `description`, `document_file`, `created_at`, `updated_at`) VALUES
(1, 2, 10, '<p>ewdew</p><p>gbbgffhc</p><p>&nbsp;bgfn</p>', '20231017094603wrpz7xedfzx68acgngc6.jpg', '2023-10-17 09:46:03', '2023-10-17 09:46:03'),
(2, 1, 10, 'submitted', '20231017095822djaghyoqewrqro4lie5d.jfif', '2023-10-17 09:58:22', '2023-10-17 09:58:22'),
(3, 4, 9, '<p>Completed the home work</p><p><br></p><p>john</p>', '20231018062247nq6nlt5izmgpoxfu1rwc.pdf', '2023-10-18 06:22:47', '2023-10-18 06:22:47');

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
-- Table structure for table `notice_board`
--

CREATE TABLE `notice_board` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `notice_date` date DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notice_board`
--

INSERT INTO `notice_board` (`id`, `title`, `notice_date`, `publish_date`, `message`, `created_by`, `created_at`, `updated_at`) VALUES
(4, 'Exam', '2023-10-11', '2023-10-16', '<span style=\"color: rgb(32, 33, 36); font-family: &quot;Google Sans&quot;, arial, sans-serif; font-size: 20px;\">An exam is&nbsp;</span><span style=\"background-color: rgba(80, 151, 255, 0.18); color: rgb(4, 12, 40); font-family: &quot;Google Sans&quot;, arial, sans-serif; font-size: 20px;\">a formal test that you take to show your knowledge or ability in a particular subject, or to obtain a qualification</span><span style=\"color: rgb(32, 33, 36); font-family: &quot;Google Sans&quot;, arial, sans-serif; font-size: 20px;\">. I don\'t want to take any more exams. Kate\'s exam results were excellent. 2.</span>', 1, '2023-10-16 04:34:11', '2023-10-16 06:54:29'),
(5, 'PTA Meeting', '2023-10-15', '2023-10-16', '<span style=\"background-color: rgba(80, 151, 255, 0.18); color: rgb(4, 12, 40); font-family: &quot;Google Sans&quot;, arial, sans-serif;\">Dear Parents &amp; Students,</span><span style=\"color: rgb(77, 81, 86); font-family: &quot;Google Sans&quot;, arial, sans-serif;\">&nbsp;</span><span style=\"background-color: rgba(80, 151, 255, 0.18); color: rgb(4, 12, 40); font-family: &quot;Google Sans&quot;, arial, sans-serif;\">We are pleased to inform you that the 4th Parents Teachers Meeting for Classes 6th-12th will be conducted on 27th March 2022.</span><span style=\"color: rgb(77, 81, 86); font-family: &quot;Google Sans&quot;, arial, sans-serif;\">&nbsp;This meeting will take place in the respective classrooms of the students starting from 9:30 am.</span>', 1, '2023-10-16 04:46:35', '2023-10-16 06:50:45'),
(6, 'Student message', '2023-10-16', '2023-10-15', '<p>                    A <b>school uniform</b>  is a <a href=\"https://simple.wikipedia.org/wiki/Uniform\" title=\"Uniform\">standard set</a> of clothes that students wear when they go to some <a href=\"https://simple.wikipedia.org/wiki/School\" title=\"School\">schools</a>. </p><p>It might have a particular color of <a href=\"https://simple.wikipedia.org/wiki/Trousers\" title=\"Trousers\">trousers</a> or <a href=\"https://simple.wikipedia.org/wiki/Skirt\" title=\"Skirt\">skirt</a>,  a matching <a href=\"https://simple.wikipedia.org/wiki/Shirt\" title=\"Shirt\">shirt</a> and sometimes a <a href=\"https://simple.wikipedia.org/wiki/Jacket\" class=\"mw-redirect\" title=\"Jacket\">jacket</a> or <a href=\"https://simple.wikipedia.org/wiki/Necktie\" title=\"Necktie\">necktie</a>, with matching <a href=\"https://simple.wikipedia.org/wiki/Shoes\" class=\"mw-redirect\" title=\"\">shoes</a>.</p>', 1, '2023-10-16 09:09:34', '2023-10-16 09:09:34');

-- --------------------------------------------------------

--
-- Table structure for table `notice_board_message`
--

CREATE TABLE `notice_board_message` (
  `id` int(11) NOT NULL,
  `notice_board_id` int(11) DEFAULT NULL,
  `message_to` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notice_board_message`
--

INSERT INTO `notice_board_message` (`id`, `notice_board_id`, `message_to`, `created_at`, `updated_at`) VALUES
(25, 5, 3, '2023-10-16 06:50:45', '2023-10-16 06:50:45'),
(26, 5, 4, '2023-10-16 06:50:45', '2023-10-16 06:50:45'),
(30, 4, 3, '2023-10-16 06:54:29', '2023-10-16 06:54:29'),
(31, 4, 4, '2023-10-16 06:54:29', '2023-10-16 06:54:29'),
(32, 4, 2, '2023-10-16 06:54:29', '2023-10-16 06:54:29'),
(34, 5, 2, '2023-10-16 06:50:45', '2023-10-16 06:50:45'),
(35, 6, 3, '2023-10-16 09:09:34', '2023-10-16 09:09:34');

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
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `paypal_email` varchar(255) DEFAULT NULL,
  `stripe_key` varchar(500) DEFAULT NULL,
  `stripe_secret` varchar(500) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicon_icon` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `paypal_email`, `stripe_key`, `stripe_secret`, `logo`, `favicon_icon`, `created_at`, `updated_at`) VALUES
(1, 'testing@gmail.com', 'pk_test_51O2phYSIsPogVZO1LQOH3A3EJjx1ucD3sEfT427mwjdQD6eSCz2eTaywjuolkEVVueFQ38NgJL24vjYpLUUxsHc400CWdkz1kL', 'sk_test_51O2phYSIsPogVZO1tBJRJyfZ5nxpNHxtTO6BCHYzGTqx0uzTv8Thl1sgYweBtaHsagdsju4CtOVU2JKdblcTHiZc00DVuPgPmc', '20231020065005k8ggasqp9frhhshm0pst.png', '20231020065130viatkk5kpzsnvqqj84vi.png', NULL, '2023-10-20 06:51:30');

-- --------------------------------------------------------

--
-- Table structure for table `student_add_fees`
--

CREATE TABLE `student_add_fees` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `total_amount` int(11) DEFAULT 0,
  `paid_amount` int(11) DEFAULT 0,
  `remaining_amount` int(11) DEFAULT 0,
  `payment_type` varchar(255) DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `is_payment` tinyint(4) NOT NULL DEFAULT 0,
  `stripe_session_id` varchar(255) DEFAULT NULL,
  `payment_data` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_add_fees`
--

INSERT INTO `student_add_fees` (`id`, `student_id`, `class_id`, `total_amount`, `paid_amount`, `remaining_amount`, `payment_type`, `remark`, `is_payment`, `stripe_session_id`, `payment_data`, `created_by`, `created_at`, `updated_at`) VALUES
(4, 5, 3, 1000, 200, 800, 'Cash', 'vsvs', 1, NULL, NULL, 1, '2023-10-17 10:50:50', '2023-10-19 10:50:50'),
(5, 5, 3, 800, 100, 700, 'Cheque', 'dds', 1, NULL, NULL, 1, '2023-10-18 10:51:06', '2023-10-18 10:51:06'),
(6, 5, 3, 700, 250, 450, 'Cash', 'sdcd', 1, NULL, NULL, 1, '2023-10-18 10:51:59', '2023-10-18 10:51:59'),
(8, 15, 4, 80000, 50, 79950, 'Cash', 'csdcdf', 1, NULL, NULL, 1, '2023-10-18 10:56:15', '2023-10-18 10:56:15'),
(9, 15, 4, 79950, 1050, 78900, 'Cheque', 'cdfggfhy hgjh', 1, NULL, NULL, 1, '2023-10-18 11:05:49', '2023-10-18 11:05:49'),
(13, 10, 3, 1000, 100, 900, 'Paypal', NULL, 1, NULL, NULL, 10, '2023-10-18 17:13:22', '2023-10-18 17:13:22'),
(22, 10, 3, 900, 100, 800, 'Paypal', NULL, 0, NULL, NULL, 10, '2023-10-18 05:09:14', '2023-10-19 05:09:14'),
(23, 10, 3, 900, 100, 800, 'Paypal', NULL, 0, NULL, NULL, 10, '2023-10-19 05:18:34', '2023-10-19 05:18:34'),
(24, 10, 3, 900, 1, 899, 'Paypal', NULL, 0, NULL, NULL, 10, '2023-10-19 05:28:17', '2023-10-19 05:28:17'),
(25, 10, 3, 900, 100, 800, 'Paypal', NULL, 0, NULL, NULL, 10, '2023-10-19 05:29:32', '2023-10-19 05:29:32'),
(26, 10, 3, 900, 100, 800, 'Paypal', NULL, 0, NULL, NULL, 10, '2023-10-19 05:30:35', '2023-10-19 05:30:35'),
(27, 10, 3, 900, 100, 800, 'Stripe', NULL, 0, NULL, NULL, 10, '2023-10-19 06:21:46', '2023-10-19 06:21:46'),
(28, 10, 3, 900, 100, 800, 'Stripe', NULL, 0, NULL, NULL, 10, '2023-10-19 06:32:25', '2023-10-19 06:32:25'),
(29, 10, 3, 900, 100, 800, 'Stripe', NULL, 0, NULL, NULL, 10, '2023-10-19 06:36:07', '2023-10-19 06:36:07'),
(30, 10, 3, 900, 100, 800, 'Stripe', NULL, 0, NULL, NULL, 10, '2023-10-19 06:38:06', '2023-10-19 06:38:06'),
(31, 10, 3, 900, 100, 800, 'Stripe', NULL, 0, NULL, NULL, 10, '2023-10-19 06:38:39', '2023-10-19 06:38:39'),
(32, 10, 3, 900, 100, 800, 'Stripe', NULL, 0, NULL, NULL, 10, '2023-10-19 06:39:27', '2023-10-19 06:39:27'),
(33, 10, 3, 900, 100, 800, 'Stripe', NULL, 0, 'cs_test_a1YBApfH8F4XcVn8Jtxpf89OdBTMfXCUusLxQ98ku6uBr8gM6BU2A6pIxg', NULL, 10, '2023-10-19 06:41:49', '2023-10-19 06:41:50'),
(34, 10, 3, 900, 100, 800, 'Stripe', NULL, 0, 'cs_test_a14vr2RJDMQzxQtaI45DJSeSrOHrwPCXzWeB1Du6M1Kqxikz0qdquX8maS', NULL, 10, '2023-10-19 06:50:04', '2023-10-19 06:50:05'),
(35, 10, 3, 900, 100, 800, 'Stripe', NULL, 0, 'cs_test_a1f85EMbvN1aiRZjAbdPqcAHs422rcMokfGAhopk5ESKTZSybbga3Kcxeu', NULL, 10, '2023-10-19 06:50:47', '2023-10-19 06:50:48'),
(36, 10, 3, 900, 100, 800, 'Stripe', NULL, 0, 'cs_test_a1mVVJzuT6aNcUcgdqKoYfQDX6zTOLYLrIDF1i3DTpJaQ0l4dGmRHz9Imo', NULL, 10, '2023-10-19 06:52:01', '2023-10-19 06:52:02'),
(37, 10, 3, 900, 100, 800, 'Stripe', NULL, 0, NULL, NULL, 10, '2023-10-19 06:53:57', '2023-10-19 06:53:57'),
(38, 10, 3, 900, 100, 800, 'Stripe', NULL, 0, 'cs_test_a15BgXU6pX7dgYeNxVIbkwHvqOYo8rqGZqMeFLMtaCVBnyBqVAVnkzWmAq', NULL, 10, '2023-10-19 06:54:25', '2023-10-19 06:54:26'),
(39, 10, 3, 900, 100, 800, 'Stripe', NULL, 0, 'cs_test_a1ysBnuWuk03KhchIqQcN0TzEDhEy16z820RwV1TG1qf8sa0spouusCXwC', NULL, 10, '2023-10-19 06:57:22', '2023-10-19 06:57:23'),
(40, 10, 3, 900, 100, 800, 'Stripe', NULL, 1, 'cs_test_a1AuxWTFcelMyEZHaJhUMJIMF5LWeZPeBKM3YjRRGxNTTGDjV9vHN0qhKm', '{\"id\":\"cs_test_a1AuxWTFcelMyEZHaJhUMJIMF5LWeZPeBKM3YjRRGxNTTGDjV9vHN0qhKm\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":10000,\"amount_total\":10000,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/localhost\\/Laravel%20Projects\\/School.com\\/student\\/stripe\\/payment-error\",\"client_reference_id\":null,\"client_secret\":null,\"consent\":null,\"consent_collection\":null,\"created\":1697698895,\"currency\":\"inr\",\"currency_conversion\":null,\"custom_fields\":[],\"custom_text\":{\"shipping_address\":null,\"submit\":null,\"terms_of_service_acceptance\":null},\"customer\":null,\"customer_creation\":\"if_required\",\"customer_details\":{\"address\":{\"city\":null,\"country\":\"IN\",\"line1\":null,\"line2\":null,\"postal_code\":null,\"state\":null},\"email\":\"abiya123@gmail.com\",\"name\":\"Abiya\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":\"abiya123@gmail.com\",\"expires_at\":1697785295,\"invoice\":null,\"invoice_creation\":{\"enabled\":false,\"invoice_data\":{\"account_tax_ids\":null,\"custom_fields\":null,\"description\":null,\"footer\":null,\"metadata\":[],\"rendering_options\":null}},\"livemode\":false,\"locale\":null,\"metadata\":[],\"mode\":\"payment\",\"payment_intent\":\"pi_3O2qEvSIsPogVZO11qmgUfAt\",\"payment_link\":null,\"payment_method_collection\":\"if_required\",\"payment_method_configuration_details\":null,\"payment_method_options\":[],\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping_address_collection\":null,\"shipping_cost\":null,\"shipping_details\":null,\"shipping_options\":[],\"status\":\"complete\",\"submit_type\":null,\"subscription\":null,\"success_url\":\"http:\\/\\/localhost\\/Laravel%20Projects\\/School.com\\/student\\/stripe\\/payment-success\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"ui_mode\":\"hosted\",\"url\":null}', 10, '2023-10-19 07:01:34', '2023-10-19 08:21:19'),
(41, 10, 3, 800, 300, 500, 'Stripe', 'Using Stripe', 1, 'cs_test_a1ggk7EO6XS9MUL8zNpNuYmQVLPQpdQjBih4wGmuEFyrPw4Uq37Og47laG', '{\"id\":\"cs_test_a1ggk7EO6XS9MUL8zNpNuYmQVLPQpdQjBih4wGmuEFyrPw4Uq37Og47laG\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":30000,\"amount_total\":30000,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/localhost\\/Laravel%20Projects\\/School.com\\/student\\/stripe\\/payment-error\",\"client_reference_id\":null,\"client_secret\":null,\"consent\":null,\"consent_collection\":null,\"created\":1697704084,\"currency\":\"inr\",\"currency_conversion\":null,\"custom_fields\":[],\"custom_text\":{\"shipping_address\":null,\"submit\":null,\"terms_of_service_acceptance\":null},\"customer\":null,\"customer_creation\":\"if_required\",\"customer_details\":{\"address\":{\"city\":null,\"country\":\"IN\",\"line1\":null,\"line2\":null,\"postal_code\":null,\"state\":null},\"email\":\"abiya123@gmail.com\",\"name\":\"Abiya\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":\"abiya123@gmail.com\",\"expires_at\":1697790484,\"invoice\":null,\"invoice_creation\":{\"enabled\":false,\"invoice_data\":{\"account_tax_ids\":null,\"custom_fields\":null,\"description\":null,\"footer\":null,\"metadata\":[],\"rendering_options\":null}},\"livemode\":false,\"locale\":null,\"metadata\":[],\"mode\":\"payment\",\"payment_intent\":\"pi_3O2ranSIsPogVZO11NZOUaVS\",\"payment_link\":null,\"payment_method_collection\":\"if_required\",\"payment_method_configuration_details\":null,\"payment_method_options\":[],\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping_address_collection\":null,\"shipping_cost\":null,\"shipping_details\":null,\"shipping_options\":[],\"status\":\"complete\",\"submit_type\":null,\"subscription\":null,\"success_url\":\"http:\\/\\/localhost\\/Laravel%20Projects\\/School.com\\/student\\/stripe\\/payment-success\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"ui_mode\":\"hosted\",\"url\":null}', 10, '2023-10-19 08:28:03', '2023-10-19 08:28:40'),
(42, 10, 3, 500, 100, 400, 'Paypal', 'testing parent paypal', 0, NULL, NULL, 11, '2023-10-19 09:03:23', '2023-10-19 09:03:23'),
(43, 10, 3, 500, 100, 400, 'Paypal', NULL, 0, NULL, NULL, 11, '2023-10-19 09:04:37', '2023-10-19 09:04:37'),
(44, 10, 3, 500, 100, 400, 'Paypal', NULL, 0, NULL, NULL, 11, '2023-10-19 09:08:11', '2023-10-19 09:08:11'),
(45, 10, 3, 500, 100, 400, 'Paypal', NULL, 0, NULL, NULL, 11, '2023-10-19 09:18:20', '2023-10-19 09:18:20'),
(46, 10, 3, 500, 100, 400, 'Paypal', NULL, 0, NULL, NULL, 11, '2023-10-19 09:25:32', '2023-10-19 09:25:32'),
(47, 10, 3, 500, 100, 400, 'Stripe', 'daewd', 0, 'cs_test_a1AEHf3O1l9bXgfWsbrDHeB4dRnHfdey2RqHnN90Hdc9VRDJowAO86MHVI', NULL, 11, '2023-10-19 09:36:11', '2023-10-19 09:36:12'),
(48, 10, 3, 500, 100, 400, 'Stripe', NULL, 0, 'cs_test_a173V5YyKGBQhrjuz60Sq46JjxmXl68RBCq371MPsuk9nbwrGeJBb3dJ1c', NULL, 11, '2023-10-19 09:38:25', '2023-10-19 09:38:26'),
(49, 10, 3, 500, 100, 400, 'Stripe', NULL, 0, 'cs_test_a1YGTT6pHpArgCs99cdpHCSwyvXxaBmmUQ7JyMtYezaLVAw0u6lRVyQzBY', NULL, 11, '2023-10-19 09:39:33', '2023-10-19 09:39:34'),
(50, 10, 3, 500, 100, 400, 'Stripe', NULL, 1, 'cs_test_a1INEXIhJ53mZ8W4SYhLdHHtmj2DJgr7WoZSQhY8QdRTbnpXtuDSafGaQQ', '{\"id\":\"cs_test_a1INEXIhJ53mZ8W4SYhLdHHtmj2DJgr7WoZSQhY8QdRTbnpXtuDSafGaQQ\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":10000,\"amount_total\":10000,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/localhost\\/Laravel%20Projects\\/School.com\\/student\\/stripe\\/payment-error\",\"client_reference_id\":null,\"client_secret\":null,\"consent\":null,\"consent_collection\":null,\"created\":1697708495,\"currency\":\"inr\",\"currency_conversion\":null,\"custom_fields\":[],\"custom_text\":{\"shipping_address\":null,\"submit\":null,\"terms_of_service_acceptance\":null},\"customer\":null,\"customer_creation\":\"if_required\",\"customer_details\":{\"address\":{\"city\":null,\"country\":\"IN\",\"line1\":null,\"line2\":null,\"postal_code\":null,\"state\":null},\"email\":\"abiya123@gmail.com\",\"name\":\"Abiya\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":\"abiya123@gmail.com\",\"expires_at\":1697794895,\"invoice\":null,\"invoice_creation\":{\"enabled\":false,\"invoice_data\":{\"account_tax_ids\":null,\"custom_fields\":null,\"description\":null,\"footer\":null,\"metadata\":[],\"rendering_options\":null}},\"livemode\":false,\"locale\":null,\"metadata\":[],\"mode\":\"payment\",\"payment_intent\":\"pi_3O2sjgSIsPogVZO118yFfola\",\"payment_link\":null,\"payment_method_collection\":\"if_required\",\"payment_method_configuration_details\":null,\"payment_method_options\":[],\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping_address_collection\":null,\"shipping_cost\":null,\"shipping_details\":null,\"shipping_options\":[],\"status\":\"complete\",\"submit_type\":null,\"subscription\":null,\"success_url\":\"http:\\/\\/localhost\\/Laravel%20Projects\\/School.com\\/student\\/stripe\\/payment-success\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"ui_mode\":\"hosted\",\"url\":null}', 10, '2023-10-19 09:41:34', '2023-10-19 09:41:55'),
(51, 10, 3, 400, 100, 300, 'Stripe', 'parent', 1, 'cs_test_a1tLEmd3Ne4GLJJIU3HmcWw2UhTq7Quu7mPRhbLpFo2CxyDTLBwarrxalG', '{\"id\":\"cs_test_a1tLEmd3Ne4GLJJIU3HmcWw2UhTq7Quu7mPRhbLpFo2CxyDTLBwarrxalG\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":10000,\"amount_total\":10000,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/localhost\\/Laravel%20Projects\\/School.com\\/parent\\/stripe\\/payment-error\\/10\",\"client_reference_id\":null,\"client_secret\":null,\"consent\":null,\"consent_collection\":null,\"created\":1697708755,\"currency\":\"inr\",\"currency_conversion\":null,\"custom_fields\":[],\"custom_text\":{\"shipping_address\":null,\"submit\":null,\"terms_of_service_acceptance\":null},\"customer\":null,\"customer_creation\":\"if_required\",\"customer_details\":{\"address\":{\"city\":null,\"country\":\"IN\",\"line1\":null,\"line2\":null,\"postal_code\":null,\"state\":null},\"email\":\"george@gmail.com\",\"name\":\"Abiya\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":\"george@gmail.com\",\"expires_at\":1697795155,\"invoice\":null,\"invoice_creation\":{\"enabled\":false,\"invoice_data\":{\"account_tax_ids\":null,\"custom_fields\":null,\"description\":null,\"footer\":null,\"metadata\":[],\"rendering_options\":null}},\"livemode\":false,\"locale\":null,\"metadata\":[],\"mode\":\"payment\",\"payment_intent\":\"pi_3O2snsSIsPogVZO10WdVfzE5\",\"payment_link\":null,\"payment_method_collection\":\"if_required\",\"payment_method_configuration_details\":null,\"payment_method_options\":[],\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping_address_collection\":null,\"shipping_cost\":null,\"shipping_details\":null,\"shipping_options\":[],\"status\":\"complete\",\"submit_type\":null,\"subscription\":null,\"success_url\":\"http:\\/\\/localhost\\/Laravel%20Projects\\/School.com\\/parent\\/stripe\\/payment-success\\/10\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"ui_mode\":\"hosted\",\"url\":null}', 11, '2023-10-19 09:45:54', '2023-10-19 09:46:15');

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
(1, NULL, 'Admin', NULL, 'admin@gmail.com', NULL, '$2y$10$IHpinDda2WguWwOghT/x8eV.KLFADOgRmEnLHAzKVCpg9OyhLHnxq', 'fiKD8Ibc9yiYDaDx0siL1GMqEUOpQdn7ymYbUtvMmqtIVWcOlco1rYizeOJt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20231020060830f88rk1gcg0mxdu7t6tbv.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, '2023-09-25 07:07:09', '2023-10-24 04:33:27'),
(3, NULL, 'Teacher', 'Anny', 'teacher@gmail.com', NULL, '$2y$10$uEBlKcFk/EkG7JchH8M71O1ks9QYoRBQO6aIoNrMJ3Zuw2sBNxfMq', 'cnUoDVqZsjRmMvqOuT7rhD4xRpAf3YzJE619CBTm1Iq5dEIl0TktCi8ZuuA8', NULL, NULL, NULL, 'Female', '2023-09-27', NULL, NULL, '7845120369', '2023-10-01', NULL, NULL, NULL, NULL, NULL, '', 'Kochi', '', '', '', '', 2, 0, 0, '2023-09-26 07:21:02', '2023-10-02 12:04:15'),
(4, NULL, 'Parent', 'Dolly', 'parent@gmail.com', NULL, '$2y$10$uslMdsmjNWolxPkO7nHFBesP3ahXACrZu1tp5J6agqB/6XRZ7gNQm', 'rb2CmLg3xeyrzH8OKxdf3uioiUx0GHyTGe7came2fC7ism0NARp0siv1sUWX', NULL, NULL, NULL, 'Female', NULL, NULL, NULL, '8281857938', NULL, '2023102006215357vqte1wvli1khdainhz.jpg', NULL, NULL, NULL, '', NULL, 'Mandaram', NULL, NULL, NULL, NULL, 4, 0, 0, '2023-09-26 07:21:02', '2023-10-20 00:51:53'),
(5, 11, 'Evan', 'Libu', 'evan@gmail.com', NULL, '$2y$10$ZQovMtnoF1.dJu4oEwDXS.whq2esuvHRxJbbDZJUlfauRMg/jKUxy', 'qMBy8SPIfJvfXCH7rDXGugl2m18QXnZDOmMg8LV4MJWg2GWJwb3S5eI9NsAD', '2132', '76', 3, 'Male', '2023-08-05', 'No caste', 'no religion', '7356217922', '2023-09-28', NULL, 'A', '100', '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, '2023-09-26 07:21:02', '2023-10-19 23:36:35'),
(6, NULL, 'John Doe', NULL, 'JohnDoe@gmail', NULL, '$2y$10$XvJeMAotzEUQp0CjjTGarOpJTbhOvcNUcFAwiDPJapHDT8Ko5qdSW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, '2023-09-27 01:09:41', '2023-09-27 03:31:40'),
(7, NULL, 'Abiya Libu', NULL, 'abiya@gmail.com', NULL, '$2y$10$WHOZKim/1y2DAuqe/MuZ/eJiNSPAuEY5lhvNYSWIndr0bA/xRh.3.', 'PbhDUPIxVDwDee4w4lvQtmgFxboOKDopnAFqxIdeFCDyTZPYJkolmful6RYM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, '2023-09-27 01:24:37', '2023-09-27 03:21:22'),
(8, NULL, 'admin', NULL, 'admin123@gmail.com', NULL, '$2y$10$WFe4gcv3IaNJcvalUZ1lO.VufGhA4Mdnmb2WCwgX5F5p5S73pe.OO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20231020061746mdigyynl2nv8zklwbnrl.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, '2023-09-27 03:45:37', '2023-10-20 00:47:46'),
(9, 4, 'John Doe', 'd', 'john@gmail.com', NULL, '$2y$10$0f42oAOdJRipUE5V2mZabug9MxLMovFQPwD.WQfCgCXQza0kuj1Ki', 'l7gTWkK957MyqWyPIwbEhpseOnr3a2Ix6WhYAISQHjNxP4j616iBc7dfQLTH', '342', '155', 2, 'Male', '2023-09-28', 'fds', 'dsfew', '34657554', '2023-10-01', '20231001054907dugey0ebd04junphkrbx.jpg', 'f', '12', '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, '2023-10-01 12:19:07', '2023-10-18 00:51:55'),
(10, 11, 'Abiyaaa', 'Sam', 'abiya123@gmail.com', NULL, '$2y$10$1DOUi9ylZGY1P87scxMF3.YdEkpyLNKjBbn2wIGcpV7KyE6AIJthy', 'qFAISFFkSUL7dNwhHRSzuDPMdlKpI8dLCHuFxaj2P1puZSyFxIzGW3rTLnqA', '1545', '548', 3, 'Female', '2023-09-28', '', '', '151545959', '2023-09-25', '20231020062952njryggqvjs18v8ivau5t.webp', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, '2023-10-01 22:50:57', '2023-10-24 04:51:58'),
(11, NULL, 'George', 'M', 'george@gmail.com', NULL, '$2y$10$NZ56oxK.YNiTLJs3T53vL.0I56mT8Bb8aOHMmNyXxzEELy.oV/RQ.', 'hA8uz4pbCwP94rEYYXgsgxbFj85V5pZbiZGUxfgvrZH78Q4Zj6c1MJm3Z5tQ', NULL, NULL, NULL, 'Male', NULL, NULL, NULL, '7356217922', NULL, '20231003054103dhlov2llyseqhfiqhjrv.jfif', NULL, NULL, NULL, 'Agriculture', NULL, 'Kollam India', NULL, NULL, NULL, NULL, 4, 0, 0, '2023-10-02 01:07:22', '2023-10-24 05:16:11'),
(12, NULL, 'Beena', 'A Philipose', 'beena123@gmail.com', NULL, '$2y$10$yF/oAcHFS/rEczjEfrSBpeVdd5iM0JLjgectMwh590Y2JwILAd8su', '64k3PiKMdp9ZH1kBeo5wpcLS3YkyVYgfWGIGvtHi6J4KBSy758jDn2w7XxWO', NULL, NULL, NULL, 'Female', '2023-06-03', NULL, NULL, '9863251478', '2023-10-03', '20231002050942zv1bfylfuvhuxyahl8ug.jpg', NULL, NULL, NULL, NULL, 'Married', 'Swargam', 'Tvm', 'MTech', '2 Years', 'nothing', 2, 0, 0, '2023-10-02 11:39:42', '2023-10-02 23:19:30'),
(13, NULL, 'Aneesha', 'A', 'aneesha@gmail.com', NULL, '$2y$10$bmGusTThrDlojvQUiW5a2uNj9ZFHth6uSf.dcMVXc7HpH/xZuOwbu', 'NSpm9sREOtuLThH5pmXfqzG8zq8A0s8tHMDwE4UaD2QmXVesfttLETJOi3tf', NULL, NULL, NULL, 'Female', '2023-06-02', NULL, NULL, '9863252586', '2023-03-18', NULL, NULL, NULL, NULL, NULL, '', 'Kochi', '', '', '', '', 2, 0, 0, '2023-10-03 05:22:29', '2023-10-03 05:22:29'),
(14, NULL, 'Nivin', 'VIncent', 'nivin@gmail.com', NULL, '$2y$10$DuumRBayjBm2Zy27Xro7UuBrQ9RNLrAJcX1gsAjfwzX5RRYYdTMUS', '9MWezlXUDBAJ2JJQaovIeovj7IFpR1k15uw4BmYMEYGaXuOalHoOoXnWQtyd', NULL, NULL, NULL, 'Male', '2023-06-30', NULL, NULL, '', '2023-05-19', NULL, NULL, NULL, NULL, NULL, '', 'kochi', '', '', '', '', 2, 0, 0, '2023-10-03 05:25:34', '2023-10-24 04:29:31'),
(15, NULL, 'Ammu', 'Prince', 'ammu@gmail.com', NULL, '$2y$10$sLLpUE0H17ubmUYDz/v5FuHcHhfisYUom5ONldIAfPve1fFz.ip8y', 'Ix0FjzELOr1bhbiNKfHSBoyUqZIQOH8Gm0GGFbYTR0R8wnhZroK3HUypu9D0', '12478', '', 4, 'Female', '2023-05-05', '', '', '7845103698', '2023-09-26', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, '2023-10-11 22:43:18', '2023-10-11 22:43:39');

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
-- Indexes for table `chat`
--
ALTER TABLE `chat`
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
-- Indexes for table `homework`
--
ALTER TABLE `homework`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homework_submit`
--
ALTER TABLE `homework_submit`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `notice_board`
--
ALTER TABLE `notice_board`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice_board_message`
--
ALTER TABLE `notice_board_message`
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
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_add_fees`
--
ALTER TABLE `student_add_fees`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- AUTO_INCREMENT for table `homework`
--
ALTER TABLE `homework`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `homework_submit`
--
ALTER TABLE `homework_submit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- AUTO_INCREMENT for table `notice_board`
--
ALTER TABLE `notice_board`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notice_board_message`
--
ALTER TABLE `notice_board_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_add_fees`
--
ALTER TABLE `student_add_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

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
