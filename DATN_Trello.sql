-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 11, 2020 at 01:57 PM
-- Server version: 5.7.30-0ubuntu0.18.04.1
-- PHP Version: 7.2.31-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `DATN_Trello`
--

-- --------------------------------------------------------

--
-- Table structure for table `attachment`
--

CREATE TABLE `attachment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) DEFAULT NULL,
  `taskId` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `board`
--

CREATE TABLE `board` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `imageUrl` text COLLATE utf8mb4_unicode_ci,
  `phaseOrder` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `board`
--

INSERT INTO `board` (`id`, `name`, `key`, `description`, `imageUrl`, `phaseOrder`, `created_at`, `updated_at`) VALUES
(1, 'Adnane Project', 'Key', 'board', 'images/board/20200417081520.png', '[\"f3105bcd-ed5f-4668-8b82-5456dcaeb4ab\",\"603111ad-0680-4800-b659-0bdb741a91c0\",\"688e4fa9-3608-434f-947b-eb3aa58e7a52\",\"2bec8947-19a2-47bc-ace7-4cccb04a864e\",\"d270a3b0-2a3b-4ffc-bcef-fe958a335193\",\"743a6184-d94d-4ef9-8cfc-4a93f4dbcee7\",\"636cc7d9-f1ca-42fd-802f-d445aa1695f3\",\"a9b6a820-b681-4867-9d1c-16ef7b4e7436\",\"6df86439-3de9-4c5c-b940-e90ea6a586ee\",\"a1df4941-fcee-4fc2-843d-b3ac596013c5\",\"9ddc0ad3-c8e5-496b-a442-4e56c8faf514\",\"4ecd94e0-3e3e-42f0-9a8d-b21c81b90519\"]', '2020-03-11 16:48:45', '2020-07-06 19:49:47'),
(9, 'HXRO', 'key', NULL, 'images/board/20200707024700.png', '[\"34a06eac-5cfe-45d3-ba51-a09b8289ac67\"]', '2020-07-06 19:47:03', '2020-07-06 19:47:21');

-- --------------------------------------------------------

--
-- Table structure for table `board_user`
--

CREATE TABLE `board_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` int(11) NOT NULL,
  `boardId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `board_user`
--

INSERT INTO `board_user` (`id`, `userId`, `boardId`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(4, 7, 1, '2020-03-23 17:33:03', '2020-03-23 17:33:03'),
(5, 6, 1, '2020-03-23 17:57:38', '2020-03-23 17:57:38'),
(8, 3, 3, '2020-03-23 18:22:20', '2020-03-23 18:22:20'),
(9, 1, 2, '2020-03-23 18:22:20', '2020-03-23 18:22:20'),
(10, 8, 1, '2020-05-23 20:16:40', '2020-05-23 20:16:40'),
(11, 3, 1, '2020-05-26 01:17:35', '2020-05-26 01:17:35'),
(12, 12, 1, '2020-05-26 01:25:35', '2020-05-26 01:25:35'),
(13, 2, 3, '2020-06-03 20:30:25', '2020-06-03 20:30:25'),
(14, 1, 4, '2020-06-08 01:55:17', '2020-06-08 01:55:17'),
(15, 3, 4, '2020-06-08 01:57:07', '2020-06-08 01:57:07'),
(16, 8, 4, '2020-06-08 01:57:12', '2020-06-08 01:57:12'),
(17, 13, 1, '2020-06-08 19:07:33', '2020-06-08 19:07:33'),
(18, 9, 1, '2020-06-19 17:42:36', '2020-06-19 17:42:36'),
(19, 2, 8, '2020-07-06 02:37:34', '2020-07-06 02:37:34'),
(20, 1, 8, '2020-07-06 02:37:37', '2020-07-06 02:37:37'),
(21, 8, 8, '2020-07-06 02:37:38', '2020-07-06 02:37:38'),
(22, 2, 9, '2020-07-06 19:47:26', '2020-07-06 19:47:26'),
(23, 7, 9, '2020-07-06 19:47:28', '2020-07-06 19:47:28'),
(24, 11, 9, '2020-07-06 19:47:30', '2020-07-06 19:47:30'),
(25, 3, 9, '2020-07-06 19:47:47', '2020-07-06 19:47:47'),
(26, 14, 9, '2020-07-06 19:47:50', '2020-07-06 19:47:50');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `roomId` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `message`, `userId`, `roomId`, `created_at`, `updated_at`) VALUES
(40, 'hi everyone!', 1, 1, NULL, NULL),
(41, 'hi all', 12, 1, NULL, NULL),
(42, 'good job~', 1, 1, NULL, NULL),
(43, 'ok', 12, 1, NULL, NULL),
(44, 'If do you want to ask have any question? ', 1, 1, NULL, NULL),
(45, 'Hello everyone!', 1, 6, NULL, NULL),
(46, 'Can you give me more detail for jobs?', 6, 1, NULL, NULL),
(47, 'Ok I can soon!', 1, 1, NULL, NULL),
(48, 'Do you want else?', 6, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `taskId` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `content`, `taskId`, `userId`, `created_at`, `updated_at`) VALUES
(1, 'I need to explain more so soon that I can understand what to do and I will create an estimate to send to you. After negotiating time, we will start work', '0ef433c7-7857-492d-ab65-e552f293954f', 2, '2020-03-11 18:57:20', '2020-03-11 18:57:20'),
(2, 'Can you give more description for that', '0ef433c7-7857-492d-ab65-e552f293954f', 2, '2020-03-11 18:59:13', '2020-03-11 19:00:04'),
(3, 'I need to explain more so soon that I can understand what to do and I will create an estimate to send to you. After negotiating time, we will start work', '0ef433c7-7857-492d-ab65-e552f293954f', 2, '2020-03-11 19:00:24', '2020-03-11 19:00:24'),
(4, 'Look good!', '1c2c3425-c7d5-44f9-9d95-a8c6b7495683', 1, '2020-07-03 23:10:47', '2020-07-03 23:10:47'),
(5, 'Can you give more details for git role?', 'd9549364-6f58-4722-a0f6-1b62d967e88f', 1, '2020-07-04 01:28:09', '2020-07-04 01:28:09'),
(6, 'tesst', '41058cba-922a-468e-94b6-d13754b9380f', 1, '2020-07-06 02:37:49', '2020-07-06 02:37:49'),
(7, 'can you explain', '4bc88d20-911e-4cd1-9b05-e868abcaee6d', 1, '2020-07-06 19:48:52', '2020-07-06 19:48:52');

-- --------------------------------------------------------

--
-- Table structure for table `label`
--

CREATE TABLE `label` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` text COLLATE utf8mb4_unicode_ci,
  `boardId` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `label`
--

INSERT INTO `label` (`id`, `name`, `color`, `boardId`, `created_at`, `updated_at`) VALUES
(4, 'LOW', '#7bdcb5', 1, '2020-04-28 23:47:11', '2020-05-26 01:11:48'),
(6, 'MEDIUM', '#FFD700', 1, '2020-04-28 23:54:15', '2020-05-26 01:12:13'),
(7, 'HIGH', '#FF8C00', 1, '2020-05-22 07:10:14', '2020-05-26 01:12:22'),
(8, 'BUGS', '#FF4500', 1, '2020-05-26 01:12:45', '2020-05-26 01:12:45'),
(9, 'FEATURE', '#0693e3', 1, '2020-05-26 01:19:51', '2020-05-26 01:19:51'),
(10, 'VERSION 1', '#00FF00', 1, '2020-05-26 01:32:53', '2020-05-26 01:32:53'),
(11, 'VERSION 2', '#f78da7', 1, '2020-06-03 20:31:15', '2020-06-03 20:31:15'),
(12, 'VERSION 3', '#000000', 1, '2020-07-06 18:55:29', '2020-07-06 18:55:29');

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
(96, '2020_03_02_024732_create_users_table', 1),
(97, '2020_03_02_031635_create_position_table', 1),
(98, '2020_03_02_032634_create_skill_table', 1),
(99, '2020_03_02_032959_create_user_skill_table', 1),
(100, '2020_03_02_033220_create_role_table', 1),
(101, '2020_03_02_033231_create_user_role_table', 1),
(102, '2020_03_02_033536_create_time_line_event_table', 1),
(103, '2020_03_02_033719_create_board_table', 1),
(104, '2020_03_02_033925_create_phase_table', 1),
(105, '2020_03_02_034111_create_board_user_table', 1),
(106, '2020_03_02_034253_create_task_table', 1),
(107, '2020_03_02_035523_create_attachment_table', 1),
(108, '2020_03_02_035811_create_to_do_table', 1),
(109, '2020_03_02_040425_create_label_table', 1),
(110, '2020_03_02_040549_create_task_label_table', 1),
(111, '2020_03_02_040841_create_work_log_table', 1),
(112, '2020_03_02_041045_create_comment_table', 1),
(113, '2020_03_02_041324_create_task_assignee_table', 1),
(114, '2020_03_02_041403_create_task_action_table', 1),
(115, '2020_06_08_082953_create_chats_table', 2),
(116, '2020_06_08_083012_create_room_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `phase`
--

CREATE TABLE `phase` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `taskOrder` text COLLATE utf8mb4_unicode_ci,
  `boardId` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phase`
--

INSERT INTO `phase` (`id`, `name`, `taskOrder`, `boardId`, `created_at`, `updated_at`) VALUES
('03037a96-124a-4975-bc67-2e59cbeddc7a', 'aaa', '[\"59574edd-8dad-4bb1-9df1-b43c1ac39d92\"]', 3, '2020-06-03 20:29:56', '2020-06-03 20:31:45'),
('19cc5ff7-a33a-4ff4-ab14-844265e46077', 'BackLog', '[\"cec531d3-7d96-4546-87f9-d4563b80fbbf\"]', 6, '2020-07-03 21:58:58', '2020-07-03 21:59:14'),
('2bec8947-19a2-47bc-ace7-4cccb04a864e', 'In progress', '[\"4c4dd503-7c83-4cb5-b8fa-237277452204\",\"60ec148f-5cfc-4e96-87ee-130884edae84\",\"f666169e-6ff6-4e05-985d-9658350645e6\",\"70270205-3780-42b6-aeb4-7c8f070d8d32\",\"0ef433c7-7857-492d-ab65-e552f293954f\"]', 1, '2020-05-22 07:17:37', '2020-07-10 20:39:43'),
('34a06eac-5cfe-45d3-ba51-a09b8289ac67', 'backlog', '[\"4bc88d20-911e-4cd1-9b05-e868abcaee6d\"]', 9, '2020-07-06 19:47:21', '2020-07-06 19:47:43'),
('420565d7-3b41-444e-b6ac-5734f908863d', 'dvvv', '[\"efe66d0c-4d73-4eee-9a59-1d1e4d233b7a\",\"203e3da5-0e3c-4cd2-a197-cd0f36ec0d16\"]', 3, '2020-06-03 20:31:35', '2020-06-03 20:31:45'),
('4ecd94e0-3e3e-42f0-9a8d-b21c81b90519', 'Deployed', '[\"6023f97d-d8c0-4b22-975f-dc200abc838c\"]', 1, '2020-07-06 19:49:47', '2020-07-06 19:49:57'),
('59e44e0f-0629-43c7-a29c-a43a4b021248', 'Todo', 'null', 8, '2020-07-06 02:38:03', '2020-07-06 02:38:03'),
('603111ad-0680-4800-b659-0bdb741a91c0', 'To Do', '[\"d9549364-6f58-4722-a0f6-1b62d967e88f\",\"fadb2e85-923c-4de7-977f-ad4f678764a7\",\"17185421-17f3-4ac1-a20e-04a2fbe75ee1\",\"579d33ee-e25e-49ec-bd18-d855f164597a\",\"6cef1efb-6678-475f-a106-9a063af0495e\",\"139d225c-2da3-4011-ad62-f58cb931eda6\",\"2d8c14f7-3e21-4cf5-b73c-0a641f56fe6d\",\"ef285941-8ecd-4e6c-9d44-81c164344cd6\"]', 1, '2020-04-28 21:12:18', '2020-07-10 20:39:55'),
('688e4fa9-3608-434f-947b-eb3aa58e7a52', 'Bugs', '[\"46c8243a-03d7-423c-8f12-4ff95aa87b99\",\"cce0221e-905b-4cc8-9495-f2663b46685d\",\"1c2c3425-c7d5-44f9-9d95-a8c6b7495683\"]', 1, '2020-05-26 01:05:32', '2020-07-10 20:39:44'),
('743a6184-d94d-4ef9-8cfc-4a93f4dbcee7', 'Testing', '[\"b2dbfdab-41d1-46a7-804f-912f41edb6e5\",\"886ce22a-1f04-4ece-a818-57f32e02880b\"]', 1, '2020-05-23 19:45:23', '2020-07-09 19:29:18'),
('7480b4f5-b268-4b21-a512-4486b36faadd', 'Bugs', 'null', 2, '2020-05-23 20:17:28', '2020-05-23 20:17:28'),
('b7f607fb-90f5-4aac-988c-850d27004678', 'ggggg', '[\"79203382-1154-46f9-bae6-7595c44c6282\"]', 7, '2020-07-05 19:15:43', '2020-07-05 19:15:55'),
('cd53271f-d814-4e73-82ec-a2cfeda990a4', 'Todo', 'null', 4, '2020-06-08 01:57:19', '2020-06-08 01:57:19'),
('d270a3b0-2a3b-4ffc-bcef-fe958a335193', 'Done', '[\"796eb57d-2670-47bd-98cf-67d5412b1f08\",\"7586a082-4aa5-443e-92c4-6f7c7147e7ec\",\"9e731046-1b3e-4162-a061-b02a77437fb3\"]', 1, '2020-05-26 01:05:38', '2020-07-09 19:29:14'),
('e31f74a9-0edd-4437-8cbd-c90d5ddca044', 'Backlogs', '[\"41058cba-922a-468e-94b6-d13754b9380f\"]', 8, '2020-07-06 02:37:05', '2020-07-06 02:37:12'),
('f3105bcd-ed5f-4668-8b82-5456dcaeb4ab', 'Backlogs', '[\"a67ffaaf-b8cd-40e1-895e-7893f7ece546\",\"75356b2e-19d0-4a4b-a872-f321cb052a79\",\"990d1b48-62e4-475d-b0a5-2576f63aca98\",\"cacd78e2-78af-4014-bdac-0339793dde51\"]', 1, '2020-04-28 21:12:33', '2020-07-10 20:39:55');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id`, `name`, `created_at`, `updated_at`) VALUES
(9, 'President', '2020-05-26 01:45:21', '2020-05-26 01:45:21'),
(10, 'Manage', '2020-05-26 01:46:37', '2020-05-26 01:46:37'),
(11, 'Employee', '2020-05-26 01:47:16', '2020-05-26 01:47:16'),
(12, 'CTO', '2020-05-26 01:47:22', '2020-05-26 01:47:22'),
(13, 'Assistant', '2020-05-26 01:47:36', '2020-05-26 01:47:36'),
(14, 'Tester', '2020-07-03 20:43:07', '2020-07-03 20:43:07'),
(15, 'HR', '2020-07-03 20:43:23', '2020-07-03 20:43:23'),
(16, 'TeamLead', '2020-07-03 20:43:35', '2020-07-03 20:43:35'),
(17, 'TechLead', '2020-07-03 20:43:42', '2020-07-03 20:43:42'),
(18, 'Support EL', '2020-07-03 20:47:04', '2020-07-03 20:47:04'),
(19, 'Intern', '2020-07-03 20:48:07', '2020-07-03 20:48:07');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Employee', NULL, NULL),
(3, 'Manager', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `boardId` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'PHP-Laravel', '2020-03-10 11:59:52', '2020-03-10 11:59:52'),
(3, 'Java', '2020-03-10 11:59:52', '2020-03-10 11:59:52'),
(4, 'Python', '2020-03-10 11:59:52', '2020-03-10 11:59:52'),
(5, '.NET', '2020-03-10 11:59:52', '2020-03-10 11:59:52'),
(6, 'NodeJs', '2020-03-16 19:38:39', '2020-03-16 19:38:39'),
(8, 'ReactJs', '2020-03-18 17:22:06', '2020-03-18 17:22:06'),
(9, 'AngularJs', '2020-03-18 17:29:41', '2020-03-18 17:29:41'),
(10, 'Mangeto', '2020-03-18 17:29:41', '2020-03-18 17:29:41'),
(11, 'AI', '2020-03-18 17:29:41', '2020-03-18 17:29:41'),
(12, 'Blockchain', '2020-03-18 17:29:41', '2020-03-18 17:29:41');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `startDate` datetime DEFAULT NULL,
  `dueDate` datetime DEFAULT NULL,
  `status` text COLLATE utf8mb4_unicode_ci,
  `estimation` text COLLATE utf8mb4_unicode_ci,
  `userId` int(11) DEFAULT NULL,
  `boardId` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `title`, `description`, `startDate`, `dueDate`, `status`, `estimation`, `userId`, `boardId`, `created_at`, `updated_at`) VALUES
('0ef433c7-7857-492d-ab65-e552f293954f', 'Add workflow from (menu) workflow', NULL, '2019-01-01 23:59:59', '2019-05-01 23:59:59', NULL, NULL, NULL, 1, '2020-05-26 01:40:47', '2020-05-26 01:40:47'),
('139d225c-2da3-4011-ad62-f58cb931eda6', 'Create Code Blocks tab (UI only)', 'Things to noted:\n- Code Blocks is cloned by Clauses\n- Please don\'t copy component without change name. EX: `ClausesTable` => `CodeBlocksTable`\n- Clone includes modals: Add, Edit, Delete modal\n- All data on the table should be `static` data\n\nREADME:\n1. Source code \'web-app\'\n2. Checkout to new branch from `apurav` branch\n3. Config git with your name:\n- `git config user.email linhduong.pscd@gmail.com`\n- `git config user.name linhduong.ta`', '2019-01-01 23:59:59', '2019-05-01 23:59:59', NULL, NULL, NULL, 1, '2020-05-26 01:35:37', '2020-05-26 01:35:58'),
('17185421-17f3-4ac1-a20e-04a2fbe75ee1', 'Call API edit when click save button on: Selectors, Fields and Clauses Modal', '🎯🎯🎯 GIT-RULES 🎯🎯🎯\n\nTa có 1 trello task về tính năng (feat) mới như sau: `c/ZKHg56ij/2-crud-api-glossaryselectors-glossaryfields-and-glossaryclauses` (Cái này copy từ link trello card)\n\nThì cách tạo branches để làm việc cho issue này:\n👉 git checkout -b feat/c/ZKHg56ij', '2019-01-01 23:59:59', '2019-05-01 23:59:59', NULL, NULL, NULL, 1, '2020-05-26 01:30:58', '2020-05-26 01:31:38'),
('1c2c3425-c7d5-44f9-9d95-a8c6b7495683', 'Chart screen disappears sometimes when going back from the orderbook or orders screen', NULL, '2019-01-01 23:59:59', '2019-05-01 23:59:59', NULL, NULL, NULL, 1, '2020-07-03 22:55:41', '2020-07-03 22:55:41'),
('203e3da5-0e3c-4cd2-a197-cd0f36ec0d16', 'dsadsadsadsa', 'dsdsadsa', '2019-01-01 23:59:59', '2019-05-01 23:59:59', NULL, '002:00:00', NULL, 3, '2020-06-03 20:30:00', '2020-06-03 20:30:20'),
('2d8c14f7-3e21-4cf5-b73c-0a641f56fe6d', 'Call API edit when click save button on: Selectors, Fields and Clauses Modal', NULL, '2019-01-01 23:59:59', '2019-05-01 23:59:59', NULL, NULL, NULL, 1, '2020-06-08 01:45:23', '2020-06-08 01:45:23'),
('41058cba-922a-468e-94b6-d13754b9380f', 'Test1', NULL, '2019-01-01 23:59:59', '2019-05-01 23:59:59', NULL, NULL, NULL, 8, '2020-07-06 02:37:12', '2020-07-06 02:37:12'),
('46c8243a-03d7-423c-8f12-4ff95aa87b99', 'On new user the confirm password is not visible when entering data', NULL, '2019-01-01 23:59:59', '2019-05-01 23:59:59', NULL, NULL, NULL, 1, '2020-07-03 22:54:02', '2020-07-03 22:54:02'),
('4bc88d20-911e-4cd1-9b05-e868abcaee6d', 'Fix UI for jobs', 'Can fix UI cua user', '2019-01-01 23:59:59', '2019-05-01 23:59:59', NULL, NULL, NULL, 9, '2020-07-06 19:47:43', '2020-07-06 19:48:38'),
('4c4dd503-7c83-4cb5-b8fa-237277452204', 'Check delete and view document steps', NULL, '2019-01-01 23:59:59', '2019-05-01 23:59:59', NULL, '02:00:00', NULL, 1, '2020-04-28 23:53:35', '2020-05-26 01:18:00'),
('579d33ee-e25e-49ec-bd18-d855f164597a', 'API convert document template to new syntax', 'Create API convert old document content to new syntax:\n- **[select.select_<id>]**\n- **[[field_<id>]]**\n- **[clause.clause_<id>]**\n\nAPI url: `http://localhost:8000/api/documents/convert-new-syntax`\n\n---\n\n### Things to note:\nUse `regex` in php match all document content\n\n\n**Branch**\n\n- git checkout dev\n- git pull origin dev\n- git checkout -b <new_branch>', '2019-01-01 23:59:59', '2019-05-01 23:59:59', NULL, NULL, NULL, 1, '2020-05-26 01:24:17', '2020-05-26 01:24:26'),
('59574edd-8dad-4bb1-9df1-b43c1ac39d92', 'aaaa', NULL, '2019-01-01 23:59:59', '2019-05-01 23:59:59', NULL, NULL, NULL, 3, '2020-06-03 20:31:41', '2020-06-03 20:31:41'),
('6023f97d-d8c0-4b22-975f-dc200abc838c', 'Register: Google Authenticator', 'The current 2fa setup screen has everything is put into one single screen and some people might get overwhelmed. So I think we should try to strech this screen out a bit (see figure below). Also, we should have a button in the 2fa input popup so that when tapped on, Google Auth will be started\n\n@linhduong25, the attached single screen diagram is the old system. Dan didnt have enough bandwidth to complete the actual markup so you may need to improvise. The uncompleted screen that he did have (one screen) that needs to be split is here: https://zpl.io/2GJnl5d', '2019-01-01 23:59:59', '2019-05-01 23:59:59', NULL, NULL, NULL, 1, '2020-07-03 22:54:48', '2020-07-03 22:55:00'),
('60ec148f-5cfc-4e96-87ee-130884edae84', 'Check delete and view doucments glossary items.', '🎯🎯🎯 GIT-RULES 🎯🎯🎯\n\nTa có 1 trello task về tính năng (feat) mới như sau: `c/ZKHg56ij/2-crud-api-glossaryselectors-glossaryfields-and-glossaryclauses` (Cái này copy từ link trello card)\n\nThì cách tạo branches để làm việc cho issue này:\n👉 git checkout -b feat/c/ZKHg56ij\nBranch này có 3 commits thì làm như sau:\n👉 git commit -am \"c/ZKHg56ij CRUD glossary_selectors\"\n👉 git commit -am \"c/ZKHg56ij Commit 2\"\n👉 git commit -am \"c/ZKHg56ij Commit 3\"\n\nNếu thể loại issue là sửa lỗi (fix-bug) thì:\n👉 git checkout -b fix-bug/c/ZKHg56ij\n\nNếu thể loại issue là test thì:\n👉 git checkout -b test/c/ZKHg56ij', '2019-01-01 23:59:59', '2019-05-01 23:59:59', NULL, NULL, NULL, 1, '2020-04-28 21:12:58', '2020-05-26 01:21:54'),
('6cef1efb-6678-475f-a106-9a063af0495e', 'BUG: Fix performances get glossaries list', 'This issue includes `front-end` and `back-end`\nWhen admin click on `glossaries` on sidebar and I see the API get a lot of stuff things. So please fix that by add more query on URL like `&expandItems=0`\nSo the response data should have fields in [image.png](https://trello-attachments.s3.amazonaws.com/5de45eec9e50b518bbd2e497/5def432a354bea131f89d73c/d4d5cd65a761e0a26676b24eea1b13ea/image.png) \n\nThings to note\n---\n- This task include search function: [image.png](https://trello-attachments.s3.amazonaws.com/5de45eec9e50b518bbd2e497/5def432a354bea131f89d73c/7cc78d2a90b78997b169a597b0918499/image.png)\n- Create new branch from **dev** for web-app and wep-server\n- Branch name: **fix-bug/6rH9nPKw/22-bug-fix-performances-glossaries-web-app**\n- Use this DB: [deb78600n2_dm.sql](https://trello-attachments.s3.amazonaws.com/5de45eec9e50b518bbd2e497/5def432a354bea131f89d73c/0eab357c9864e9711b0ced26ea972073/deb78600n2_dm.sql)', '2019-01-01 23:59:59', '2019-05-01 23:59:59', NULL, NULL, NULL, 1, '2020-05-26 01:29:54', '2020-05-26 01:30:04'),
('70270205-3780-42b6-aeb4-7c8f070d8d32', 'Change data type in clauses, selectors,fields,codeBlocks', NULL, '2019-01-01 23:59:59', '2019-05-01 23:59:59', NULL, NULL, NULL, 1, '2020-05-26 01:33:34', '2020-05-26 01:33:34'),
('75356b2e-19d0-4a4b-a872-f321cb052a79', 'Issues Client can not see. But we should to fix it =))', '1. Click delete button show delete glossary item model should not call any api\n\n2. use $regexCodeBlocks\n\n3. Bug edit document\nNếu thể loại issue là sửa lỗi (fix-bug) thì:\n👉 git checkout -b fix-bug/c/ZKHg56ij\n\nNếu thể loại issue là test thì:\n👉 git checkout -b test/c/ZKHg56ij', '2019-01-01 23:59:59', '2019-05-01 23:59:59', NULL, '02:00:00', NULL, 1, '2020-04-28 21:12:43', '2020-05-26 01:27:30'),
('7586a082-4aa5-443e-92c4-6f7c7147e7ec', 'Order details screen needs new look', NULL, '2019-01-01 23:59:59', '2019-05-01 23:59:59', NULL, NULL, NULL, 1, '2020-07-03 22:54:15', '2020-07-03 22:54:15'),
('79203382-1154-46f9-bae6-7595c44c6282', 'teg', NULL, '2019-01-01 23:59:59', '2019-05-01 23:59:59', NULL, NULL, NULL, 7, '2020-07-05 19:15:55', '2020-07-05 19:15:55'),
('796eb57d-2670-47bd-98cf-67d5412b1f08', '2 - import and export glossaries', NULL, '2019-01-01 23:59:59', '2019-05-01 23:59:59', NULL, NULL, NULL, 1, '2020-05-26 01:34:53', '2020-05-26 01:34:53'),
('886ce22a-1f04-4ece-a818-57f32e02880b', 'Remove Step in codeBlocks', NULL, '2019-01-01 23:59:59', '2019-05-01 23:59:59', NULL, NULL, NULL, 1, '2020-05-26 01:34:28', '2020-05-26 01:34:28'),
('990d1b48-62e4-475d-b0a5-2576f63aca98', 'set web-app and web-client', 'Notes versions:\nComposer version 1.9.1 2019-11-01 17:20:1\nLaravel Framework version 5.3.31\nPHP 7.1.23 (cli) (built: Feb 22 2019 22:19:32) ( NTS )\nCopyright (c) 1997-2018 The PHP Group\nZend Engine v3.1.0, Copyright (c) 1998-2018 Zend Technologies\n\nSetup:\n1. composer install\n2. php artisan migrate\n3. create .env file\n4. php artisan key:generate\n5. php artisan serve\nNếu thể loại issue là sửa lỗi (fix-bug) thì:\n👉 git checkout -b fix-bug/c/ZKHg56ij\n\nNếu thể loại issue là test thì:\n👉 git checkout -b test/c/ZKHg56ij', '2019-01-01 23:59:59', '2019-05-01 23:59:59', NULL, '02:00:00', NULL, 1, '2020-05-23 19:41:58', '2020-05-26 01:27:19'),
('9e731046-1b3e-4162-a061-b02a77437fb3', '2FA for new orders only until token expires', 'Right now, whenever a user enters an order into the orderbook (to buy or sell tokens/coins), they need to enter a 2FA code on EVERY new order. What should happen is for the token to be reused until it expires. For example, on the first order a 2FA code is needed. Then the token is reused until the token expires and then another 2FA code is requested.', '2019-01-01 23:59:59', '2019-05-01 23:59:59', NULL, NULL, NULL, 1, '2020-07-03 22:54:27', '2020-07-03 22:54:36'),
('a67ffaaf-b8cd-40e1-895e-7893f7ece546', 'Categories and child-option (unlimited)', NULL, '2019-01-01 23:59:59', '2019-05-01 23:59:59', NULL, NULL, NULL, 1, '2020-05-26 01:39:59', '2020-05-26 01:39:59'),
('b2dbfdab-41d1-46a7-804f-912f41edb6e5', 'Coins in wallets should show the right Decimal places', 'BTC should be Max 8dp for example. See screenshot\n\nUse the Market info Api with each coins subdivisibily rules. For example, BTC is subdivisibile 100000000 or 0.00000001 of a BTC. Use this to round all areas where the coin qty is shown in the mobile. Eg wallets etc', '2019-01-01 23:59:59', '2019-05-01 23:59:59', NULL, NULL, NULL, 1, '2020-07-03 22:56:01', '2020-07-03 22:56:16'),
('cacd78e2-78af-4014-bdac-0339793dde51', 'No open orders message', 'When there are no open orders, put a message that says “You have no open orders”.\nIt should look like the same as main menu “orders” for that string message (white text etc)', '2019-01-01 23:59:59', '2019-05-01 23:59:59', NULL, NULL, NULL, 1, '2020-07-04 01:31:11', '2020-07-04 01:31:29'),
('cce0221e-905b-4cc8-9495-f2663b46685d', 'Fix call API when submit add glossary items', '### Things to note:\n- git checkout dev\n- git pull origin dev\n- git checkout -b <new_branch>', '2019-01-01 23:59:59', '2019-05-01 23:59:59', NULL, '02:00:00', NULL, 1, '2020-05-23 19:45:29', '2020-05-26 01:22:24'),
('cec531d3-7d96-4546-87f9-d4563b80fbbf', 'tDsadsa', NULL, '2019-01-01 23:59:59', '2019-05-01 23:59:59', NULL, NULL, NULL, 6, '2020-07-03 21:59:13', '2020-07-03 21:59:13'),
('d9549364-6f58-4722-a0f6-1b62d967e88f', 'GIT rules for all Users', '🎯🎯🎯 GIT-RULES 🎯🎯🎯\n\nTa có 1 trello task về tính năng (feat) mới như sau: `c/ZKHg56ij/2-crud-api-glossaryselectors-glossaryfields-and-glossaryclauses` (Cái này copy từ link trello card)\n\nThì cách tạo branches để làm việc cho issue này:\n👉 git checkout -b feat/c/ZKHg56ij\nBranch này có 3 commits thì làm như sau:\n👉 git commit -am \"c/ZKHg56ij CRUD glossary_selectors\"\n👉 git commit -am \"c/ZKHg56ij Commit 2\"\n👉 git commit -am \"c/ZKHg56ij Commit 3\"\n\nNếu thể loại issue là sửa lỗi (fix-bug) thì:\n👉 git checkout -b fix-bug/c/ZKHg56ij\n\nNếu thể loại issue là test thì:\n👉 git checkout -b test/c/ZKHg56ij', '2019-01-01 23:59:59', '2019-05-01 23:59:59', NULL, '02:00:00', NULL, 1, '2020-05-22 07:08:03', '2020-05-26 01:21:35'),
('ef285941-8ecd-4e6c-9d44-81c164344cd6', 'Email confirmation template still looks broken on mobile phones (Android using gmail)', 'When adding the confirm password, the keyboard hides the entry field. The field needs to be visible as the user enters the confirm password.\n\nConsider adding more space at the bottom of the form so the app can scroll to the field entry. Not sure what can be added. somehow make it invisible or empty background colour space. At least that way the form can scroll so the field is visible.\n\nThis issue is shown on iOS.', '2019-01-01 23:59:59', '2019-05-01 23:59:59', NULL, '00:00:00', NULL, 1, '2020-07-03 22:53:25', '2020-07-04 01:30:36'),
('efe66d0c-4d73-4eee-9a59-1d1e4d233b7a', 'dsadsadsa', NULL, '2019-01-01 23:59:59', '2019-05-01 23:59:59', NULL, NULL, NULL, 3, '2020-06-03 20:31:38', '2020-06-03 20:31:38'),
('f666169e-6ff6-4e05-985d-9658350645e6', 'BUG: Undefined variable: query in Models/Document.php line 232', 'The error appear when I add new glossary_field with type is selector. And use it into the Document.\n\n---\n\nAPI get document: http://localhost:8000/api/documents/149?withRulesTree=true&expand=downloads&published=1\n\n---\n\n### Notes:\n- Pull `dev` branch to your local\n- Create new branch from `dev`', '2019-01-01 23:59:59', '2019-05-01 23:59:59', NULL, NULL, NULL, 1, '2020-05-26 01:31:55', '2020-05-26 01:32:05'),
('fadb2e85-923c-4de7-977f-ad4f678764a7', 'Fix glossaries and documents list performance with uploaded database', 'Import this database [original-converted.sql](https://trello-attachments.s3.amazonaws.com/5de45eec9e50b518bbd2e497/5df6dbfc96bd610b34bd9ff1/2563dd3b942bd3ccd16d900c86a99d11/original-converted.sql) and run web-app. The problem here is that glossaries and documents list take long time to finish get list. \n\n---\n\n### Things to note:\n- Branch dev is latest now', '2019-01-01 23:59:59', '2019-05-01 23:59:59', NULL, NULL, NULL, 1, '2020-05-26 01:25:19', '2020-05-26 01:25:56');

-- --------------------------------------------------------

--
-- Table structure for table `task_action`
--

CREATE TABLE `task_action` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `actionDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `taskId` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_action`
--

INSERT INTO `task_action` (`id`, `actionDescription`, `taskId`, `userId`, `created_at`, `updated_at`) VALUES
(1, 'assigned this task to `Tuấn Anh`', '072e346a-7e0a-4810-a611-1ee0af96bb2f', 1, '2020-04-17 01:30:51', '2020-04-17 01:30:51'),
(2, 'assigned this task to `Ngọc Phúc`', '072e346a-7e0a-4810-a611-1ee0af96bb2f', 1, '2020-04-17 01:31:00', '2020-04-17 01:31:00'),
(3, 'assigned this task to `Danh Triệu`', '072e346a-7e0a-4810-a611-1ee0af96bb2f', 1, '2020-04-17 01:38:41', '2020-04-17 01:38:41'),
(4, 'removed `Danh Triệu` from this task', '072e346a-7e0a-4810-a611-1ee0af96bb2f', 1, '2020-04-17 01:44:15', '2020-04-17 01:44:15'),
(5, 'removed `Tuấn Anh` from this task', '072e346a-7e0a-4810-a611-1ee0af96bb2f', 1, '2020-04-17 01:45:48', '2020-04-17 01:45:48'),
(6, 'removed `Danh Triệu` from this task', '072e346a-7e0a-4810-a611-1ee0af96bb2f', 1, '2020-04-17 01:48:28', '2020-04-17 01:48:28'),
(7, 'removed `Danh Triệu` from this task', '072e346a-7e0a-4810-a611-1ee0af96bb2f', 1, '2020-04-17 01:48:32', '2020-04-17 01:48:32'),
(8, 'assigned this task to `Tuấn Anh`', '072e346a-7e0a-4810-a611-1ee0af96bb2f', 1, '2020-04-17 01:49:24', '2020-04-17 01:49:24'),
(9, 'removed `Tuấn Anh` from this task', '072e346a-7e0a-4810-a611-1ee0af96bb2f', 1, '2020-04-17 01:49:33', '2020-04-17 01:49:33'),
(10, 'assigned this task to `Tuấn Anh`', '072e346a-7e0a-4810-a611-1ee0af96bb2f', 1, '2020-04-17 01:50:59', '2020-04-17 01:50:59'),
(11, 'removed `Tuấn Anh` from this task', '072e346a-7e0a-4810-a611-1ee0af96bb2f', 1, '2020-04-17 01:51:05', '2020-04-17 01:51:05'),
(12, 'assigned this task to `Danh Triệu`', '072e346a-7e0a-4810-a611-1ee0af96bb2f', 1, '2020-04-17 01:51:08', '2020-04-17 01:51:08'),
(13, 'created this task', 'a376ec84-19ea-4ca9-92b7-4ee3fa0614ee', 1, '2020-04-28 19:47:43', '2020-04-28 19:47:43'),
(14, 'created this task', 'e9ef5a09-ba4f-42a1-9bce-53d8681f7982', 1, '2020-04-28 19:50:56', '2020-04-28 19:50:56'),
(15, 'created this task', '8187a772-7c47-41e2-a664-c5cdc78cf249', 1, '2020-04-28 20:05:14', '2020-04-28 20:05:14'),
(16, 'assigned this task to `Danh Triệu`', '8187a772-7c47-41e2-a664-c5cdc78cf249', 1, '2020-04-28 20:06:53', '2020-04-28 20:06:53'),
(17, 'created this task', 'db60f3ec-7750-4433-bd9b-6284b91ae2e4', 1, '2020-04-28 20:09:21', '2020-04-28 20:09:21'),
(18, 'created this task', '218cbf7c-d704-46d4-8b64-c886a9c646ac', 1, '2020-04-28 20:13:59', '2020-04-28 20:13:59'),
(19, 'created this task', '650d4e1e-a021-4a04-9a16-cfc0be9932ce', 1, '2020-04-28 20:28:52', '2020-04-28 20:28:52'),
(20, 'created this task', '33f54dcc-18ec-4e3f-9f1c-deb17c551a05', 1, '2020-04-28 20:35:19', '2020-04-28 20:35:19'),
(21, 'created this task', '43f4f792-c171-4c54-948c-d82fdef015a5', 1, '2020-04-28 20:56:41', '2020-04-28 20:56:41'),
(22, 'created this task', '6225c246-51cc-4d0d-8637-1d4c14b9b8c6', 1, '2020-04-28 20:58:24', '2020-04-28 20:58:24'),
(23, 'created this task', '7c245bca-2a4d-4aca-947a-3411ec86bae2', 1, '2020-04-28 21:04:47', '2020-04-28 21:04:47'),
(24, 'created this task', '241bf1c9-f4b1-4aca-b7ce-0ac65135bce2', 1, '2020-04-28 21:05:58', '2020-04-28 21:05:58'),
(25, 'moved this task from `Deployed` to `Doing`', 'e7a78bcf-9071-4001-b335-b584f536d4f9', 1, '2020-04-28 21:06:45', '2020-04-28 21:06:45'),
(26, 'moved this task from `To Do` to `Done`', '072e346a-7e0a-4810-a611-1ee0af96bb2f', 1, '2020-04-28 21:07:40', '2020-04-28 21:07:40'),
(27, 'created this task', 'ceebaec3-5d03-41cd-9576-2a6b36cc803e', 1, '2020-04-28 21:08:04', '2020-04-28 21:08:04'),
(28, 'moved this task from `To Do` to `Doing`', 'ceebaec3-5d03-41cd-9576-2a6b36cc803e', 1, '2020-04-28 21:08:07', '2020-04-28 21:08:07'),
(29, 'moved this task from `Done` to `To Do`', '241bf1c9-f4b1-4aca-b7ce-0ac65135bce2', 1, '2020-04-28 21:08:27', '2020-04-28 21:08:27'),
(30, 'created this task', '82dbd875-0ca4-434e-b9c1-c912ca6f5426', 1, '2020-04-28 21:10:05', '2020-04-28 21:10:05'),
(31, 'moved this task from `To Do` to `Done`', '82dbd875-0ca4-434e-b9c1-c912ca6f5426', 1, '2020-04-28 21:10:21', '2020-04-28 21:10:21'),
(32, 'created this task', '75356b2e-19d0-4a4b-a872-f321cb052a79', 1, '2020-04-28 21:12:44', '2020-04-28 21:12:44'),
(33, 'created this task', '60ec148f-5cfc-4e96-87ee-130884edae84', 1, '2020-04-28 21:12:59', '2020-04-28 21:12:59'),
(34, 'moved this task from `To Do` to `Doing`', '75356b2e-19d0-4a4b-a872-f321cb052a79', 1, '2020-04-28 21:28:43', '2020-04-28 21:28:43'),
(35, 'moved this task from `To Do` to `Doing`', '60ec148f-5cfc-4e96-87ee-130884edae84', 1, '2020-04-28 21:29:07', '2020-04-28 21:29:07'),
(36, 'moved this task from `Doing` to `To Do`', '60ec148f-5cfc-4e96-87ee-130884edae84', 1, '2020-04-28 21:31:01', '2020-04-28 21:31:01'),
(37, 'moved this task from `Doing` to `To Do`', '75356b2e-19d0-4a4b-a872-f321cb052a79', 1, '2020-04-28 21:32:59', '2020-04-28 21:32:59'),
(38, 'assigned this task to `Tuấn Anh`', '75356b2e-19d0-4a4b-a872-f321cb052a79', 1, '2020-04-28 21:34:29', '2020-04-28 21:34:29'),
(39, 'assigned this task to `Ngọc Phúc`', '75356b2e-19d0-4a4b-a872-f321cb052a79', 1, '2020-04-28 21:34:31', '2020-04-28 21:34:31'),
(40, 'removed `Ngọc Phúc` from this task', '75356b2e-19d0-4a4b-a872-f321cb052a79', 1, '2020-04-28 21:34:34', '2020-04-28 21:34:34'),
(41, 'removed `Tuấn Anh` from this task', '75356b2e-19d0-4a4b-a872-f321cb052a79', 1, '2020-04-28 21:34:36', '2020-04-28 21:34:36'),
(42, 'assigned this task to `Tịnh Phan`', '75356b2e-19d0-4a4b-a872-f321cb052a79', 1, '2020-04-28 21:34:39', '2020-04-28 21:34:39'),
(43, 'created this task', '4c4dd503-7c83-4cb5-b8fa-237277452204', 1, '2020-04-28 23:53:35', '2020-04-28 23:53:35'),
(44, 'assigned this task to `Tuấn Anh`', '4c4dd503-7c83-4cb5-b8fa-237277452204', 1, '2020-04-28 23:54:27', '2020-04-28 23:54:27'),
(45, 'assigned this task to `Danh Triệu`', '4c4dd503-7c83-4cb5-b8fa-237277452204', 1, '2020-05-04 21:34:41', '2020-05-04 21:34:41'),
(46, 'assigned this task to `Tuấn Anh`', '60ec148f-5cfc-4e96-87ee-130884edae84', 1, '2020-05-07 00:15:01', '2020-05-07 00:15:01'),
(47, 'moved this task from `To Do` to `Doing`', '75356b2e-19d0-4a4b-a872-f321cb052a79', 1, '2020-05-14 19:59:29', '2020-05-14 19:59:29'),
(48, 'moved this task from `Doing` to `To Do`', '75356b2e-19d0-4a4b-a872-f321cb052a79', 1, '2020-05-14 20:09:07', '2020-05-14 20:09:07'),
(49, 'moved this task from `Doing` to `To Do`', '4c4dd503-7c83-4cb5-b8fa-237277452204', 1, '2020-05-14 20:14:38', '2020-05-14 20:14:38'),
(50, 'moved this task from `To Do` to `Doing`', '4c4dd503-7c83-4cb5-b8fa-237277452204', 1, '2020-05-14 20:14:41', '2020-05-14 20:14:41'),
(51, 'moved this task from `Doing` to `To Do`', '4c4dd503-7c83-4cb5-b8fa-237277452204', 1, '2020-05-14 20:14:43', '2020-05-14 20:14:43'),
(52, 'moved this task from `To Do` to `Doing`', '4c4dd503-7c83-4cb5-b8fa-237277452204', 1, '2020-05-14 20:14:46', '2020-05-14 20:14:46'),
(53, 'moved this task from `Doing` to `To Do`', '4c4dd503-7c83-4cb5-b8fa-237277452204', 1, '2020-05-14 20:14:48', '2020-05-14 20:14:48'),
(54, 'moved this task from `To Do` to `Doing`', '4c4dd503-7c83-4cb5-b8fa-237277452204', 1, '2020-05-14 20:14:50', '2020-05-14 20:14:50'),
(55, 'moved this task from `Doing` to `To Do`', '4c4dd503-7c83-4cb5-b8fa-237277452204', 1, '2020-05-14 20:14:52', '2020-05-14 20:14:52'),
(56, 'moved this task from `To Do` to `Doing`', '4c4dd503-7c83-4cb5-b8fa-237277452204', 1, '2020-05-14 20:14:55', '2020-05-14 20:14:55'),
(57, 'moved this task from `To Do` to `Doing`', '75356b2e-19d0-4a4b-a872-f321cb052a79', 1, '2020-05-14 20:15:01', '2020-05-14 20:15:01'),
(58, 'moved this task from `Doing` to `To Do`', '75356b2e-19d0-4a4b-a872-f321cb052a79', 1, '2020-05-14 20:15:05', '2020-05-14 20:15:05'),
(59, 'moved this task from `To Do` to `Doing`', '60ec148f-5cfc-4e96-87ee-130884edae84', 1, '2020-05-18 01:13:16', '2020-05-18 01:13:16'),
(60, 'moved this task from `Doing` to `To Do`', '60ec148f-5cfc-4e96-87ee-130884edae84', 1, '2020-05-22 06:56:05', '2020-05-22 06:56:05'),
(61, 'moved this task from `Doing` to `To Do`', '4c4dd503-7c83-4cb5-b8fa-237277452204', 1, '2020-05-22 07:06:01', '2020-05-22 07:06:01'),
(62, 'moved this task from `To Do` to `Doing`', '75356b2e-19d0-4a4b-a872-f321cb052a79', 1, '2020-05-22 07:06:06', '2020-05-22 07:06:06'),
(63, 'assigned this task to `Ngọc Phúc`', '4c4dd503-7c83-4cb5-b8fa-237277452204', 1, '2020-05-22 07:07:23', '2020-05-22 07:07:23'),
(64, 'created this task', 'd9549364-6f58-4722-a0f6-1b62d967e88f', 1, '2020-05-22 07:08:03', '2020-05-22 07:08:03'),
(65, 'created this task', '990d1b48-62e4-475d-b0a5-2576f63aca98', 1, '2020-05-23 19:41:59', '2020-05-23 19:41:59'),
(66, 'assigned this task to `Ngọc Phúc`', '990d1b48-62e4-475d-b0a5-2576f63aca98', 1, '2020-05-23 19:42:07', '2020-05-23 19:42:07'),
(67, 'moved this task from `Doing` to `To Do`', '75356b2e-19d0-4a4b-a872-f321cb052a79', 1, '2020-05-23 19:44:42', '2020-05-23 19:44:42'),
(68, 'moved this task from `Bugs` to `To Do`', '990d1b48-62e4-475d-b0a5-2576f63aca98', 1, '2020-05-23 19:44:53', '2020-05-23 19:44:53'),
(69, 'created this task', 'cce0221e-905b-4cc8-9495-f2663b46685d', 1, '2020-05-23 19:45:30', '2020-05-23 19:45:30'),
(70, 'assigned this task to `Khánh IT`', 'cce0221e-905b-4cc8-9495-f2663b46685d', 1, '2020-05-23 19:45:34', '2020-05-23 19:45:34'),
(71, 'moved this task from `To Do` to `Doing`', '990d1b48-62e4-475d-b0a5-2576f63aca98', 1, '2020-05-23 19:52:29', '2020-05-23 19:52:29'),
(72, 'moved this task from `To Do` to `Bugs`', '4c4dd503-7c83-4cb5-b8fa-237277452204', 1, '2020-05-23 20:16:02', '2020-05-23 20:16:02'),
(73, 'assigned this task to `Danh Triệu`', 'd9549364-6f58-4722-a0f6-1b62d967e88f', 1, '2020-05-23 20:16:09', '2020-05-23 20:16:09'),
(74, 'assigned this task to `Mai Hương`', '60ec148f-5cfc-4e96-87ee-130884edae84', 1, '2020-05-26 01:17:40', '2020-05-26 01:17:40'),
(75, 'moved this task from `Testing` to `In progress`', 'cce0221e-905b-4cc8-9495-f2663b46685d', 1, '2020-05-26 01:22:33', '2020-05-26 01:22:33'),
(76, 'created this task', '579d33ee-e25e-49ec-bd18-d855f164597a', 1, '2020-05-26 01:24:17', '2020-05-26 01:24:17'),
(77, 'assigned this task to `Tuấn Anh`', '579d33ee-e25e-49ec-bd18-d855f164597a', 1, '2020-05-26 01:24:21', '2020-05-26 01:24:21'),
(78, 'created this task', 'fadb2e85-923c-4de7-977f-ad4f678764a7', 1, '2020-05-26 01:25:19', '2020-05-26 01:25:19'),
(79, 'assigned this task to `Trí Nguyễn`', 'fadb2e85-923c-4de7-977f-ad4f678764a7', 1, '2020-05-26 01:25:48', '2020-05-26 01:25:48'),
(80, 'moved this task from `To Do` to `Backlogs`', '60ec148f-5cfc-4e96-87ee-130884edae84', 1, '2020-05-26 01:29:39', '2020-05-26 01:29:39'),
(81, 'created this task', '6cef1efb-6678-475f-a106-9a063af0495e', 1, '2020-05-26 01:29:54', '2020-05-26 01:29:54'),
(82, 'assigned this task to `Mai Hương`', '6cef1efb-6678-475f-a106-9a063af0495e', 1, '2020-05-26 01:29:58', '2020-05-26 01:29:58'),
(83, 'created this task', '17185421-17f3-4ac1-a20e-04a2fbe75ee1', 1, '2020-05-26 01:30:58', '2020-05-26 01:30:58'),
(84, 'assigned this task to `Ngọc Phúc`', '17185421-17f3-4ac1-a20e-04a2fbe75ee1', 1, '2020-05-26 01:31:11', '2020-05-26 01:31:11'),
(85, 'moved this task from `To Do` to `Backlogs`', '17185421-17f3-4ac1-a20e-04a2fbe75ee1', 1, '2020-05-26 01:31:20', '2020-05-26 01:31:20'),
(86, 'created this task', 'f666169e-6ff6-4e05-985d-9658350645e6', 1, '2020-05-26 01:31:55', '2020-05-26 01:31:55'),
(87, 'assigned this task to `Danh Triệu`', 'f666169e-6ff6-4e05-985d-9658350645e6', 1, '2020-05-26 01:32:08', '2020-05-26 01:32:08'),
(88, 'created this task', '70270205-3780-42b6-aeb4-7c8f070d8d32', 1, '2020-05-26 01:33:34', '2020-05-26 01:33:34'),
(89, 'assigned this task to `Tuấn Anh`', '70270205-3780-42b6-aeb4-7c8f070d8d32', 1, '2020-05-26 01:34:02', '2020-05-26 01:34:02'),
(90, 'created this task', '886ce22a-1f04-4ece-a818-57f32e02880b', 1, '2020-05-26 01:34:28', '2020-05-26 01:34:28'),
(91, 'assigned this task to `Tuấn Anh`', '886ce22a-1f04-4ece-a818-57f32e02880b', 1, '2020-05-26 01:34:36', '2020-05-26 01:34:36'),
(92, 'created this task', '796eb57d-2670-47bd-98cf-67d5412b1f08', 1, '2020-05-26 01:34:53', '2020-05-26 01:34:53'),
(93, 'assigned this task to `Tuấn Anh`', '796eb57d-2670-47bd-98cf-67d5412b1f08', 1, '2020-05-26 01:35:02', '2020-05-26 01:35:02'),
(94, 'created this task', '139d225c-2da3-4011-ad62-f58cb931eda6', 1, '2020-05-26 01:35:37', '2020-05-26 01:35:37'),
(95, 'assigned this task to `Ngọc Phúc`', '139d225c-2da3-4011-ad62-f58cb931eda6', 1, '2020-05-26 01:35:50', '2020-05-26 01:35:50'),
(96, 'created this task', 'a67ffaaf-b8cd-40e1-895e-7893f7ece546', 1, '2020-05-26 01:39:59', '2020-05-26 01:39:59'),
(97, 'assigned this task to `Tuấn Anh`', 'a67ffaaf-b8cd-40e1-895e-7893f7ece546', 1, '2020-05-26 01:40:10', '2020-05-26 01:40:10'),
(98, 'created this task', '0ef433c7-7857-492d-ab65-e552f293954f', 1, '2020-05-26 01:40:47', '2020-05-26 01:40:47'),
(99, 'assigned this task to `Mai Hương`', '0ef433c7-7857-492d-ab65-e552f293954f', 1, '2020-05-26 01:40:52', '2020-05-26 01:40:52'),
(100, 'assigned this task to `Ngọc Phúc`', '0ef433c7-7857-492d-ab65-e552f293954f', 1, '2020-05-26 01:40:54', '2020-05-26 01:40:54'),
(101, 'created this task', '203e3da5-0e3c-4cd2-a197-cd0f36ec0d16', 1, '2020-06-03 20:30:00', '2020-06-03 20:30:00'),
(102, 'assigned this task to `Mai Hương`', '203e3da5-0e3c-4cd2-a197-cd0f36ec0d16', 1, '2020-06-03 20:30:03', '2020-06-03 20:30:03'),
(103, 'removed `Mai Hương` from this task', '203e3da5-0e3c-4cd2-a197-cd0f36ec0d16', 1, '2020-06-03 20:30:07', '2020-06-03 20:30:07'),
(104, 'removed `Mai Hương` from this task', '203e3da5-0e3c-4cd2-a197-cd0f36ec0d16', 1, '2020-06-03 20:30:08', '2020-06-03 20:30:08'),
(105, 'created this task', 'efe66d0c-4d73-4eee-9a59-1d1e4d233b7a', 1, '2020-06-03 20:31:38', '2020-06-03 20:31:38'),
(106, 'created this task', '59574edd-8dad-4bb1-9df1-b43c1ac39d92', 1, '2020-06-03 20:31:41', '2020-06-03 20:31:41'),
(107, 'moved this task from `dvvv` to `aaa`', '59574edd-8dad-4bb1-9df1-b43c1ac39d92', 1, '2020-06-03 20:31:43', '2020-06-03 20:31:43'),
(108, 'moved this task from `aaa` to `dvvv`', '203e3da5-0e3c-4cd2-a197-cd0f36ec0d16', 1, '2020-06-03 20:31:45', '2020-06-03 20:31:45'),
(109, 'moved this task from `Backlogs` to `In progress`', 'd9549364-6f58-4722-a0f6-1b62d967e88f', 1, '2020-06-07 21:07:23', '2020-06-07 21:07:23'),
(110, 'moved this task from `In progress` to `Backlogs`', 'd9549364-6f58-4722-a0f6-1b62d967e88f', 1, '2020-06-07 21:07:24', '2020-06-07 21:07:24'),
(111, 'created this task', '2d8c14f7-3e21-4cf5-b73c-0a641f56fe6d', 1, '2020-06-08 01:45:24', '2020-06-08 01:45:24'),
(112, 'assigned this task to `Ngọc Phúc`', '2d8c14f7-3e21-4cf5-b73c-0a641f56fe6d', 1, '2020-06-08 01:45:32', '2020-06-08 01:45:32'),
(113, 'assigned this task to `Ninh Lê`', '75356b2e-19d0-4a4b-a872-f321cb052a79', 1, '2020-06-08 19:07:38', '2020-06-08 19:07:38'),
(114, 'assigned this task to `Tuấn Anh`', '2d8c14f7-3e21-4cf5-b73c-0a641f56fe6d', 1, '2020-06-08 19:07:50', '2020-06-08 19:07:50'),
(115, 'moved this task from `Backlogs` to `To Do`', 'd9549364-6f58-4722-a0f6-1b62d967e88f', 1, '2020-06-14 19:18:28', '2020-06-14 19:18:28'),
(116, 'assigned this task to `Nguyễn Đình Bình`', '6cef1efb-6678-475f-a106-9a063af0495e', 1, '2020-06-17 22:37:48', '2020-06-17 22:37:48'),
(117, 'moved this task from `Backlogs` to `Bugs`', '17185421-17f3-4ac1-a20e-04a2fbe75ee1', 1, '2020-06-17 22:39:31', '2020-06-17 22:39:31'),
(118, 'moved this task from `Backlogs` to `Bugs`', '990d1b48-62e4-475d-b0a5-2576f63aca98', 1, '2020-06-19 17:36:41', '2020-06-19 17:36:41'),
(119, 'assigned this task to `Mai Hương`', 'd9549364-6f58-4722-a0f6-1b62d967e88f', 1, '2020-06-19 17:43:14', '2020-06-19 17:43:14'),
(120, 'created this task', 'cec531d3-7d96-4546-87f9-d4563b80fbbf', 1, '2020-07-03 21:59:14', '2020-07-03 21:59:14'),
(121, 'created this task', 'ef285941-8ecd-4e6c-9d44-81c164344cd6', 1, '2020-07-03 22:53:26', '2020-07-03 22:53:26'),
(122, 'assigned this task to `Danh Triệu`', 'ef285941-8ecd-4e6c-9d44-81c164344cd6', 1, '2020-07-03 22:53:33', '2020-07-03 22:53:33'),
(123, 'assigned this task to `Tuấn Anh`', 'ef285941-8ecd-4e6c-9d44-81c164344cd6', 1, '2020-07-03 22:53:34', '2020-07-03 22:53:34'),
(124, 'created this task', '46c8243a-03d7-423c-8f12-4ff95aa87b99', 1, '2020-07-03 22:54:02', '2020-07-03 22:54:02'),
(125, 'created this task', '7586a082-4aa5-443e-92c4-6f7c7147e7ec', 1, '2020-07-03 22:54:15', '2020-07-03 22:54:15'),
(126, 'created this task', '9e731046-1b3e-4162-a061-b02a77437fb3', 1, '2020-07-03 22:54:27', '2020-07-03 22:54:27'),
(127, 'created this task', '6023f97d-d8c0-4b22-975f-dc200abc838c', 1, '2020-07-03 22:54:48', '2020-07-03 22:54:48'),
(128, 'assigned this task to `Ninh Lê`', '6023f97d-d8c0-4b22-975f-dc200abc838c', 1, '2020-07-03 22:55:03', '2020-07-03 22:55:03'),
(129, 'assigned this task to `Mai Hương`', '6023f97d-d8c0-4b22-975f-dc200abc838c', 1, '2020-07-03 22:55:04', '2020-07-03 22:55:04'),
(130, 'created this task', '1c2c3425-c7d5-44f9-9d95-a8c6b7495683', 1, '2020-07-03 22:55:41', '2020-07-03 22:55:41'),
(131, 'created this task', 'b2dbfdab-41d1-46a7-804f-912f41edb6e5', 1, '2020-07-03 22:56:01', '2020-07-03 22:56:01'),
(132, 'assigned this task to `Khánh IT`', 'b2dbfdab-41d1-46a7-804f-912f41edb6e5', 1, '2020-07-03 22:56:21', '2020-07-03 22:56:21'),
(133, 'assigned this task to `Danh Triệu`', 'b2dbfdab-41d1-46a7-804f-912f41edb6e5', 1, '2020-07-03 22:56:23', '2020-07-03 22:56:23'),
(134, 'assigned this task to `Tuấn Anh`', '1c2c3425-c7d5-44f9-9d95-a8c6b7495683', 1, '2020-07-03 23:10:29', '2020-07-03 23:10:29'),
(135, 'created this task', 'cacd78e2-78af-4014-bdac-0339793dde51', 1, '2020-07-04 01:31:11', '2020-07-04 01:31:11'),
(136, 'assigned this task to `Nguyễn Đình Bình`', 'cacd78e2-78af-4014-bdac-0339793dde51', 1, '2020-07-04 01:31:18', '2020-07-04 01:31:18'),
(137, 'assigned this task to `Khánh Hà`', '46c8243a-03d7-423c-8f12-4ff95aa87b99', 1, '2020-07-04 01:44:47', '2020-07-04 01:44:47'),
(138, 'assigned this task to `Khánh Hà`', '7586a082-4aa5-443e-92c4-6f7c7147e7ec', 1, '2020-07-04 01:44:57', '2020-07-04 01:44:57'),
(139, 'assigned this task to `Nguyễn Đình Bình`', '7586a082-4aa5-443e-92c4-6f7c7147e7ec', 1, '2020-07-04 01:45:04', '2020-07-04 01:45:04'),
(140, 'assigned this task to `Trí Nguyễn`', '9e731046-1b3e-4162-a061-b02a77437fb3', 1, '2020-07-04 01:45:10', '2020-07-04 01:45:10'),
(141, 'assigned this task to `Ninh Lê`', '9e731046-1b3e-4162-a061-b02a77437fb3', 1, '2020-07-04 01:45:12', '2020-07-04 01:45:12'),
(142, 'created this task', '79203382-1154-46f9-bae6-7595c44c6282', 1, '2020-07-05 19:15:55', '2020-07-05 19:15:55'),
(143, 'assigned this task to `Ngọc Phúc`', 'd9549364-6f58-4722-a0f6-1b62d967e88f', 1, '2020-07-05 19:16:14', '2020-07-05 19:16:14'),
(144, 'moved this task from `Bugs` to `To Do`', '579d33ee-e25e-49ec-bd18-d855f164597a', 1, '2020-07-05 19:16:52', '2020-07-05 19:16:52'),
(145, 'moved this task from `To Do` to `Backlogs`', '75356b2e-19d0-4a4b-a872-f321cb052a79', 1, '2020-07-06 02:00:03', '2020-07-06 02:00:03'),
(146, 'moved this task from `Bugs` to `Backlogs`', 'ef285941-8ecd-4e6c-9d44-81c164344cd6', 1, '2020-07-06 02:00:08', '2020-07-06 02:00:08'),
(147, 'created this task', '41058cba-922a-468e-94b6-d13754b9380f', 1, '2020-07-06 02:37:12', '2020-07-06 02:37:12'),
(148, 'assigned this task to `Danh Triệu`', '41058cba-922a-468e-94b6-d13754b9380f', 1, '2020-07-06 02:37:42', '2020-07-06 02:37:42'),
(149, 'moved this task from `Backlogs` to `To Do`', 'ef285941-8ecd-4e6c-9d44-81c164344cd6', 1, '2020-07-06 17:48:20', '2020-07-06 17:48:20'),
(150, 'created this task', '4bc88d20-911e-4cd1-9b05-e868abcaee6d', 1, '2020-07-06 19:47:43', '2020-07-06 19:47:43'),
(151, 'assigned this task to `Mai Hương`', '4bc88d20-911e-4cd1-9b05-e868abcaee6d', 1, '2020-07-06 19:48:12', '2020-07-06 19:48:12'),
(152, 'assigned this task to `Thành Uchiha`', '4bc88d20-911e-4cd1-9b05-e868abcaee6d', 1, '2020-07-06 19:48:15', '2020-07-06 19:48:15'),
(153, 'moved this task from `Backlogs` to `To Do`', '60ec148f-5cfc-4e96-87ee-130884edae84', 1, '2020-07-06 19:49:17', '2020-07-06 19:49:17'),
(154, 'moved this task from `To Do` to `In progress`', '60ec148f-5cfc-4e96-87ee-130884edae84', 1, '2020-07-06 19:49:24', '2020-07-06 19:49:24'),
(155, 'moved this task from `In progress` to `Done`', 'cce0221e-905b-4cc8-9495-f2663b46685d', 1, '2020-07-06 19:49:28', '2020-07-06 19:49:28'),
(156, 'moved this task from `Done` to `Bugs`', '46c8243a-03d7-423c-8f12-4ff95aa87b99', 1, '2020-07-06 19:49:34', '2020-07-06 19:49:34'),
(157, 'moved this task from `Testing` to `Deployed`', '6023f97d-d8c0-4b22-975f-dc200abc838c', 1, '2020-07-06 19:49:57', '2020-07-06 19:49:57'),
(158, 'moved this task from `Bugs` to `Backlogs`', '17185421-17f3-4ac1-a20e-04a2fbe75ee1', 6, '2020-07-07 18:30:58', '2020-07-07 18:30:58'),
(159, 'moved this task from `Backlogs` to `To Do`', '0ef433c7-7857-492d-ab65-e552f293954f', 6, '2020-07-07 18:31:00', '2020-07-07 18:31:00'),
(160, 'moved this task from `To Do` to `In progress`', '0ef433c7-7857-492d-ab65-e552f293954f', 6, '2020-07-07 18:31:03', '2020-07-07 18:31:03'),
(161, 'moved this task from `Bugs` to `To Do`', 'fadb2e85-923c-4de7-977f-ad4f678764a7', 1, '2020-07-09 19:29:12', '2020-07-09 19:29:12'),
(162, 'moved this task from `Done` to `In progress`', 'cce0221e-905b-4cc8-9495-f2663b46685d', 1, '2020-07-09 19:29:14', '2020-07-09 19:29:14'),
(163, 'moved this task from `Bugs` to `Backlogs`', '990d1b48-62e4-475d-b0a5-2576f63aca98', 1, '2020-07-10 20:39:39', '2020-07-10 20:39:39'),
(164, 'moved this task from `In progress` to `Bugs`', 'cce0221e-905b-4cc8-9495-f2663b46685d', 1, '2020-07-10 20:39:44', '2020-07-10 20:39:44'),
(165, 'moved this task from `Backlogs` to `To Do`', '17185421-17f3-4ac1-a20e-04a2fbe75ee1', 1, '2020-07-10 20:39:55', '2020-07-10 20:39:55');

-- --------------------------------------------------------

--
-- Table structure for table `task_assignee`
--

CREATE TABLE `task_assignee` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `taskId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_assignee`
--

INSERT INTO `task_assignee` (`id`, `taskId`, `userId`, `created_at`, `updated_at`) VALUES
(3, '072e346a-7e0a-4810-a611-1ee0af96bb2f', 6, '2020-04-17 01:31:00', '2020-04-17 01:31:00'),
(7, '072e346a-7e0a-4810-a611-1ee0af96bb2f', 2, '2020-04-17 01:51:08', '2020-04-17 01:51:08'),
(8, '8187a772-7c47-41e2-a664-c5cdc78cf249', 2, '2020-04-28 20:06:53', '2020-04-28 20:06:53'),
(11, '75356b2e-19d0-4a4b-a872-f321cb052a79', 9, '2020-04-28 21:34:39', '2020-04-28 21:34:39'),
(12, '4c4dd503-7c83-4cb5-b8fa-237277452204', 1, '2020-04-28 23:54:27', '2020-04-28 23:54:27'),
(13, '4c4dd503-7c83-4cb5-b8fa-237277452204', 2, '2020-05-04 21:34:41', '2020-05-04 21:34:41'),
(14, '60ec148f-5cfc-4e96-87ee-130884edae84', 1, '2020-05-07 00:15:01', '2020-05-07 00:15:01'),
(15, '4c4dd503-7c83-4cb5-b8fa-237277452204', 6, '2020-05-22 07:07:23', '2020-05-22 07:07:23'),
(16, '990d1b48-62e4-475d-b0a5-2576f63aca98', 6, '2020-05-23 19:42:07', '2020-05-23 19:42:07'),
(17, 'cce0221e-905b-4cc8-9495-f2663b46685d', 7, '2020-05-23 19:45:35', '2020-05-23 19:45:35'),
(18, 'd9549364-6f58-4722-a0f6-1b62d967e88f', 2, '2020-05-23 20:16:09', '2020-05-23 20:16:09'),
(19, '60ec148f-5cfc-4e96-87ee-130884edae84', 3, '2020-05-26 01:17:40', '2020-05-26 01:17:40'),
(20, '579d33ee-e25e-49ec-bd18-d855f164597a', 1, '2020-05-26 01:24:21', '2020-05-26 01:24:21'),
(21, 'fadb2e85-923c-4de7-977f-ad4f678764a7', 12, '2020-05-26 01:25:48', '2020-05-26 01:25:48'),
(22, '6cef1efb-6678-475f-a106-9a063af0495e', 3, '2020-05-26 01:29:58', '2020-05-26 01:29:58'),
(23, '17185421-17f3-4ac1-a20e-04a2fbe75ee1', 6, '2020-05-26 01:31:11', '2020-05-26 01:31:11'),
(24, 'f666169e-6ff6-4e05-985d-9658350645e6', 2, '2020-05-26 01:32:08', '2020-05-26 01:32:08'),
(25, '70270205-3780-42b6-aeb4-7c8f070d8d32', 1, '2020-05-26 01:34:01', '2020-05-26 01:34:01'),
(26, '886ce22a-1f04-4ece-a818-57f32e02880b', 1, '2020-05-26 01:34:35', '2020-05-26 01:34:35'),
(27, '796eb57d-2670-47bd-98cf-67d5412b1f08', 1, '2020-05-26 01:35:02', '2020-05-26 01:35:02'),
(28, '139d225c-2da3-4011-ad62-f58cb931eda6', 6, '2020-05-26 01:35:50', '2020-05-26 01:35:50'),
(29, 'a67ffaaf-b8cd-40e1-895e-7893f7ece546', 1, '2020-05-26 01:40:09', '2020-05-26 01:40:09'),
(30, '0ef433c7-7857-492d-ab65-e552f293954f', 3, '2020-05-26 01:40:52', '2020-05-26 01:40:52'),
(31, '0ef433c7-7857-492d-ab65-e552f293954f', 6, '2020-05-26 01:40:54', '2020-05-26 01:40:54'),
(33, '2d8c14f7-3e21-4cf5-b73c-0a641f56fe6d', 6, '2020-06-08 01:45:32', '2020-06-08 01:45:32'),
(34, '75356b2e-19d0-4a4b-a872-f321cb052a79', 13, '2020-06-08 19:07:38', '2020-06-08 19:07:38'),
(35, '2d8c14f7-3e21-4cf5-b73c-0a641f56fe6d', 1, '2020-06-08 19:07:50', '2020-06-08 19:07:50'),
(36, '6cef1efb-6678-475f-a106-9a063af0495e', 7, '2020-06-17 22:37:48', '2020-06-17 22:37:48'),
(37, 'd9549364-6f58-4722-a0f6-1b62d967e88f', 3, '2020-06-19 17:43:14', '2020-06-19 17:43:14'),
(38, 'ef285941-8ecd-4e6c-9d44-81c164344cd6', 2, '2020-07-03 22:53:33', '2020-07-03 22:53:33'),
(39, 'ef285941-8ecd-4e6c-9d44-81c164344cd6', 1, '2020-07-03 22:53:34', '2020-07-03 22:53:34'),
(40, '6023f97d-d8c0-4b22-975f-dc200abc838c', 13, '2020-07-03 22:55:02', '2020-07-03 22:55:02'),
(41, '6023f97d-d8c0-4b22-975f-dc200abc838c', 3, '2020-07-03 22:55:04', '2020-07-03 22:55:04'),
(42, 'b2dbfdab-41d1-46a7-804f-912f41edb6e5', 9, '2020-07-03 22:56:21', '2020-07-03 22:56:21'),
(43, 'b2dbfdab-41d1-46a7-804f-912f41edb6e5', 2, '2020-07-03 22:56:23', '2020-07-03 22:56:23'),
(44, '1c2c3425-c7d5-44f9-9d95-a8c6b7495683', 1, '2020-07-03 23:10:28', '2020-07-03 23:10:28'),
(45, 'cacd78e2-78af-4014-bdac-0339793dde51', 7, '2020-07-04 01:31:18', '2020-07-04 01:31:18'),
(46, '46c8243a-03d7-423c-8f12-4ff95aa87b99', 8, '2020-07-04 01:44:47', '2020-07-04 01:44:47'),
(47, '7586a082-4aa5-443e-92c4-6f7c7147e7ec', 8, '2020-07-04 01:44:57', '2020-07-04 01:44:57'),
(48, '7586a082-4aa5-443e-92c4-6f7c7147e7ec', 7, '2020-07-04 01:45:04', '2020-07-04 01:45:04'),
(49, '9e731046-1b3e-4162-a061-b02a77437fb3', 12, '2020-07-04 01:45:10', '2020-07-04 01:45:10'),
(50, '9e731046-1b3e-4162-a061-b02a77437fb3', 13, '2020-07-04 01:45:12', '2020-07-04 01:45:12'),
(51, 'd9549364-6f58-4722-a0f6-1b62d967e88f', 6, '2020-07-05 19:16:14', '2020-07-05 19:16:14'),
(52, '41058cba-922a-468e-94b6-d13754b9380f', 2, '2020-07-06 02:37:42', '2020-07-06 02:37:42'),
(53, '4bc88d20-911e-4cd1-9b05-e868abcaee6d', 3, '2020-07-06 19:48:12', '2020-07-06 19:48:12'),
(54, '4bc88d20-911e-4cd1-9b05-e868abcaee6d', 14, '2020-07-06 19:48:14', '2020-07-06 19:48:14');

-- --------------------------------------------------------

--
-- Table structure for table `task_label`
--

CREATE TABLE `task_label` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `taskId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `labelId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_label`
--

INSERT INTO `task_label` (`id`, `taskId`, `labelId`, `created_at`, `updated_at`) VALUES
(6, '072e346a-7e0a-4810-a611-1ee0af96bb2f', 1, '2020-04-17 01:55:09', '2020-04-17 01:55:09'),
(7, '8187a772-7c47-41e2-a664-c5cdc78cf249', 1, '2020-04-28 20:06:49', '2020-04-28 20:06:49'),
(8, '75356b2e-19d0-4a4b-a872-f321cb052a79', 1, '2020-04-28 21:34:23', '2020-04-28 21:34:23'),
(9, '75356b2e-19d0-4a4b-a872-f321cb052a79', 3, '2020-04-28 23:46:05', '2020-04-28 23:46:05'),
(10, '75356b2e-19d0-4a4b-a872-f321cb052a79', 2, '2020-04-28 23:48:38', '2020-04-28 23:48:38'),
(11, '75356b2e-19d0-4a4b-a872-f321cb052a79', 4, '2020-04-28 23:48:39', '2020-04-28 23:48:39'),
(12, '60ec148f-5cfc-4e96-87ee-130884edae84', 4, '2020-04-28 23:53:43', '2020-04-28 23:53:43'),
(15, '990d1b48-62e4-475d-b0a5-2576f63aca98', 7, '2020-05-23 19:42:03', '2020-05-23 19:42:03'),
(16, 'cce0221e-905b-4cc8-9495-f2663b46685d', 6, '2020-05-23 19:45:37', '2020-05-23 19:45:37'),
(17, 'd9549364-6f58-4722-a0f6-1b62d967e88f', 6, '2020-05-23 20:16:12', '2020-05-23 20:16:12'),
(18, '4c4dd503-7c83-4cb5-b8fa-237277452204', 4, '2020-05-26 01:18:24', '2020-05-26 01:18:24'),
(19, '4c4dd503-7c83-4cb5-b8fa-237277452204', 8, '2020-05-26 01:18:25', '2020-05-26 01:18:25'),
(20, '990d1b48-62e4-475d-b0a5-2576f63aca98', 9, '2020-05-26 01:19:58', '2020-05-26 01:19:58'),
(21, '579d33ee-e25e-49ec-bd18-d855f164597a', 9, '2020-05-26 01:24:31', '2020-05-26 01:24:31'),
(23, '579d33ee-e25e-49ec-bd18-d855f164597a', 6, '2020-05-26 01:24:47', '2020-05-26 01:24:47'),
(25, 'fadb2e85-923c-4de7-977f-ad4f678764a7', 7, '2020-05-26 01:26:09', '2020-05-26 01:26:09'),
(26, '6cef1efb-6678-475f-a106-9a063af0495e', 4, '2020-05-26 01:30:09', '2020-05-26 01:30:09'),
(27, '75356b2e-19d0-4a4b-a872-f321cb052a79', 6, '2020-05-26 01:30:15', '2020-05-26 01:30:15'),
(28, '17185421-17f3-4ac1-a20e-04a2fbe75ee1', 8, '2020-05-26 01:31:03', '2020-05-26 01:31:03'),
(29, 'f666169e-6ff6-4e05-985d-9658350645e6', 6, '2020-05-26 01:32:10', '2020-05-26 01:32:10'),
(30, '70270205-3780-42b6-aeb4-7c8f070d8d32', 10, '2020-05-26 01:33:57', '2020-05-26 01:33:57'),
(31, '886ce22a-1f04-4ece-a818-57f32e02880b', 9, '2020-05-26 01:34:31', '2020-05-26 01:34:31'),
(32, '796eb57d-2670-47bd-98cf-67d5412b1f08', 10, '2020-05-26 01:34:59', '2020-05-26 01:34:59'),
(34, '139d225c-2da3-4011-ad62-f58cb931eda6', 4, '2020-05-26 01:35:42', '2020-05-26 01:35:42'),
(35, 'd9549364-6f58-4722-a0f6-1b62d967e88f', 10, '2020-05-26 01:38:17', '2020-05-26 01:38:17'),
(36, 'a67ffaaf-b8cd-40e1-895e-7893f7ece546', 7, '2020-05-26 01:40:08', '2020-05-26 01:40:08'),
(37, '0ef433c7-7857-492d-ab65-e552f293954f', 8, '2020-05-26 01:40:57', '2020-05-26 01:40:57'),
(38, '0ef433c7-7857-492d-ab65-e552f293954f', 10, '2020-05-26 01:41:00', '2020-05-26 01:41:00'),
(39, '203e3da5-0e3c-4cd2-a197-cd0f36ec0d16', 6, '2020-06-03 20:30:13', '2020-06-03 20:30:13'),
(40, '203e3da5-0e3c-4cd2-a197-cd0f36ec0d16', 11, '2020-06-03 20:31:25', '2020-06-03 20:31:25'),
(41, '2d8c14f7-3e21-4cf5-b73c-0a641f56fe6d', 8, '2020-06-08 01:45:28', '2020-06-08 01:45:28'),
(42, 'ef285941-8ecd-4e6c-9d44-81c164344cd6', 6, '2020-07-03 22:53:30', '2020-07-03 22:53:30'),
(43, '6023f97d-d8c0-4b22-975f-dc200abc838c', 9, '2020-07-03 22:55:10', '2020-07-03 22:55:10'),
(44, '6023f97d-d8c0-4b22-975f-dc200abc838c', 11, '2020-07-03 22:55:11', '2020-07-03 22:55:11'),
(45, 'b2dbfdab-41d1-46a7-804f-912f41edb6e5', 7, '2020-07-03 22:56:18', '2020-07-03 22:56:18'),
(46, '1c2c3425-c7d5-44f9-9d95-a8c6b7495683', 6, '2020-07-03 23:10:25', '2020-07-03 23:10:25'),
(47, 'cacd78e2-78af-4014-bdac-0339793dde51', 8, '2020-07-04 01:31:15', '2020-07-04 01:31:15'),
(48, '46c8243a-03d7-423c-8f12-4ff95aa87b99', 7, '2020-07-04 01:44:50', '2020-07-04 01:44:50'),
(49, '7586a082-4aa5-443e-92c4-6f7c7147e7ec', 9, '2020-07-04 01:45:18', '2020-07-04 01:45:18'),
(50, '7586a082-4aa5-443e-92c4-6f7c7147e7ec', 10, '2020-07-04 01:45:19', '2020-07-04 01:45:19'),
(51, '9e731046-1b3e-4162-a061-b02a77437fb3', 9, '2020-07-04 01:45:24', '2020-07-04 01:45:24'),
(52, '41058cba-922a-468e-94b6-d13754b9380f', 6, '2020-07-06 02:37:27', '2020-07-06 02:37:27'),
(54, 'a67ffaaf-b8cd-40e1-895e-7893f7ece546', 10, '2020-07-06 18:56:07', '2020-07-06 18:56:07'),
(55, '4bc88d20-911e-4cd1-9b05-e868abcaee6d', 10, '2020-07-06 19:48:02', '2020-07-06 19:48:02');

-- --------------------------------------------------------

--
-- Table structure for table `time_line_event`
--

CREATE TABLE `time_line_event` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_line_event`
--

INSERT INTO `time_line_event` (`id`, `event`, `userId`, `created_at`, `updated_at`) VALUES
(1, 'time1', 15, '2020-07-03 21:32:20', '2020-07-03 21:32:20'),
(2, 'Time1', 13, '2020-07-06 02:35:50', '2020-07-06 02:35:50');

-- --------------------------------------------------------

--
-- Table structure for table `to_do`
--

CREATE TABLE `to_do` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished` tinyint(1) DEFAULT NULL,
  `taskId` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatarUrl` text COLLATE utf8mb4_unicode_ci,
  `fullName` text COLLATE utf8mb4_unicode_ci,
  `location` text COLLATE utf8mb4_unicode_ci,
  `address` text COLLATE utf8mb4_unicode_ci,
  `phone` text COLLATE utf8mb4_unicode_ci,
  `socialLink` text COLLATE utf8mb4_unicode_ci,
  `birthDate` datetime DEFAULT NULL,
  `gender` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `positionId` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `avatarUrl`, `fullName`, `location`, `address`, `phone`, `socialLink`, `birthDate`, `gender`, `description`, `positionId`, `created_at`, `updated_at`) VALUES
(1, 'anh@gmail.com', '$2y$10$rw3QXiSurtGn0UvqcWvwTOX7cPx2.pRDj2IbAkGLqcrfSSCOm8Z6C', 'images/user/20200319074315.jpg', 'Tuấn Anh', '1', '25-Nguyễn Chích', '0767846898', 'monahan.anh', '1996-11-08 00:00:00', 'Male', 'Sinh vien', 9, '2020-03-04 01:08:19', '2020-07-06 19:46:16'),
(2, 'danh@gmail.com', '$2y$10$KonMvq5bUwwYjszuEty6ZeIFNAcCjJck1khuzIuDZ/.SWzLG9oYOW', 'images/user/20200319074406.jpg', 'Danh Triệu', '1', 'K22-Lạc Long Quân', '0987654676', 'monahan.comaaaaa', '1997-02-09 00:00:00', 'male', 'Vel ullam sit voluptas cum corporis. Odio quia adipisci voluptates molestias.', 10, '2020-03-04 01:13:57', '2020-05-26 01:46:46'),
(3, 'huong@gmail.com', '$2y$10$xg3pMdu2h3eUDc6UxPjNFOkzoaqlNTiblZ8Qxik96b5xJ6VdAdhA.', 'images/user/20200319072831.jpg', 'Mai Hương', '1', 'k21-Điện Biên Phủ', '0876789087', 'https://www.facebook.com/maihuongsusi', '1997-02-08 00:00:00', 'male', 'Vel ullam sit voluptas cum corporis. Odio quia adipisci voluptates molestias.', 15, '2020-03-10 12:58:48', '2020-07-03 21:53:31'),
(6, 'phuc@gmail.com', '$2y$10$gmKiWwewCkhQMaZoiZPWdOtiBxEIs6xMTwmssW/2qBw6VFb5lgLnW', 'images/user/20200319073913.jpg', 'Ngọc Phúc', '1', '1acaaa', '098765443', 'monahan.comaaaaa', '1997-02-08 00:00:00', 'male', 'Vel ullam sit voluptas cum corporis. Odio quia adipisci voluptates molestias.', 12, '2020-03-04 02:25:10', '2020-05-26 01:48:04'),
(7, 'binh@gmail.com', '$2y$10$pix.cwhwWHFimqh2iT6OS.e0Cvteu407LIx5QS2jg1jwHnv/TMEVm', 'images/user/20200526084926.jpg', 'Nguyễn Đình Bình', '1', '282-Nam Cao', '0987697788', 'https://www.facebook.com/codee.tinhphan', '1997-02-08 00:00:00', 'male', 'Vel ullam sit voluptas cum corporis. Odio quia adipisci voluptates molestias.', 10, '2020-03-10 12:58:48', '2020-05-26 01:50:13'),
(8, 'ha@gmail.com', '$2y$10$kE9UsQ6zt/2eVpRE4fsZiuyTsZ9oAwuiWqUxyVcAs1Yk3BOWGSyu2', 'images/user/20200319073347.jpg', 'Khánh Hà', '1', 'Phạm Như Xương', '076789865', 'https://www.facebook.com/profile.php?id=100016514500865', '1997-02-08 00:00:00', 'male', 'Vel ullam sit voluptas cum corporis. Odio quia adipisci voluptates molestias.', 11, '2020-03-04 12:01:18', '2020-07-04 01:38:54'),
(9, 'luu@gmail.com', '$2y$10$bSkbkGUunAI3O19I5WwjFe90LOPrhDiM2ntVC.Q93w1yx966eVDEW', 'images/user/20200704083507.jpg', 'Phong Lưu', '1', 'Nguyễn Lương Bằng', '0987890987', 'monahan.comaaaaa', '1997-02-08 00:00:00', 'male', 'Vel ullam sit voluptas cum corporis. Odio quia adipisci voluptates molestias.', 14, '2020-03-04 11:54:43', '2020-07-04 01:35:11'),
(11, 'quoc@gmail.com', '$2y$10$ipO6k1P7..R691qAnTXaXuvDK6G/0vtsd6Wa/f3FNxDpsTgIQpEpu', 'images/user/20200319072636.jpg', 'Ngọc Quốc', '1', '82-Phan Đăng Lưu', '09020002992', 'https://www.facebook.com/Quoc.de.tien', '1997-02-08 00:00:00', 'male', 'Vel ullam sit voluptas cum corporis. Odio quia adipisci voluptates molestias.', 1, '2020-03-10 12:58:48', '2020-03-18 17:27:38'),
(12, 'tri@gmail.com', '$2y$10$CnwK2wenmodaPHC1hrBd3OaTPd5H1p2jI2ZkwwcPqGCoJ27fcJSXa', 'images/user/20200319074521.jpg', 'Trí Nguyễn', '1', 'K52-Lạc Long Quấn', '09002005232', 'https://www.facebook.com/ttd1997?ref=br_rs', '1997-03-16 00:00:00', 'Male', 'Vel ullam sit voluptas cum corporis. Odio quia adipisci voluptates molestias.', 12, '2020-03-18 14:51:17', '2020-05-26 02:06:59'),
(13, 'ninh@gmail.com', '$2y$10$TboVs0yZjC.n3MJi/ujY8O3d3T/b96ZjQkih3zrbVr5fGvBJf021G', 'images/user/20200324021358.jpg', 'Ninh Lê', '1', '25-Nguyễn Chích', '0767846898', 'https://www.facebook.com/anh.anh.3538', '1996-11-08 00:00:00', 'Male', 'Vel ullam sit voluptas cum corporis. Odio quia adipisci voluptates molestias.', 15, '2020-03-18 16:47:20', '2020-07-06 02:36:00'),
(14, 'thanh@gmail.com', '$2y$10$ioZLPXJsLFCrPYrT1RBD/eOejzUmqZdndCAseg8TSM7NtaR20.7du', 'images/user/20200704083712.jpg', 'Thành Uchiha', '1', '1231', '976.785.1232 x275', 'monahan.com', '1971-02-08 00:00:00', 'male', 'Vel ullam sit voluptas cum corporis. Odio quia adipisci voluptates molestias.', 19, '2020-05-23 22:31:05', '2020-07-04 01:37:39'),
(15, 'khanh@gmail.com123', '$2y$10$ysTagX.HUJC/N1X9KbHA7unmLSwGXyijBE07xKlaBo1T8XZN4rmKK', 'images/user/20200704084342.jpg', 'Khanh', '1', '1acaaa', '976.785.1232', 'monahan.comaaaaa', '2020-07-21 00:00:00', 'Male', 'Vel ullam sit voluptas cum corporis. Odio quia adipisci voluptates molestias.', 11, '2020-07-03 21:31:40', '2020-07-04 03:02:29'),
(16, 'chien@gmail.com123', '$2y$10$ysTagX.HUJC/N1X9KbHA7unmLSwGXyijBE07xKlaBo1T8XZN4rmKK', 'images/user/20200704100249.jpg', 'Chiến', '1', '1acaaa', '976.785.1232', 'monahan.comaaaaa', '2020-07-21 00:00:00', 'Male', 'Vel ullam sit voluptas cum corporis. Odio quia adipisci voluptates molestias.', 11, '2020-07-03 21:31:40', '2020-07-04 03:02:57'),
(17, 'hoang@gmail.com123', '$2y$10$ysTagX.HUJC/N1X9KbHA7unmLSwGXyijBE07xKlaBo1T8XZN4rmKK', 'images/user/20200704100337.jpg', 'Nguyễn Minh Hoàng', '1', '1acaaa', '976.785.1232', 'monahan.comaaaaa', '2020-07-21 00:00:00', 'Male', 'Vel ullam sit voluptas cum corporis. Odio quia adipisci voluptates molestias.', 19, '2020-07-03 21:31:40', '2020-07-04 03:03:38');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `userId`, `roleId`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 3, 3, '2020-03-09 13:54:44', '2020-03-09 13:54:44'),
(5, 1, 3, '2020-03-09 14:04:56', '2020-03-09 14:04:56');

-- --------------------------------------------------------

--
-- Table structure for table `user_skill`
--

CREATE TABLE `user_skill` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` int(11) NOT NULL,
  `skillId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_skill`
--

INSERT INTO `user_skill` (`id`, `userId`, `skillId`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-03-10 13:49:11', '2020-03-10 13:49:11'),
(5, 3, 3, '2020-03-10 13:55:14', '2020-03-10 13:55:14'),
(10, 2, 6, '2020-03-16 19:38:39', '2020-03-16 19:38:39'),
(12, 13, 3, '2020-03-18 17:21:43', '2020-03-18 17:21:43'),
(13, 13, 6, '2020-03-18 17:21:47', '2020-03-18 17:21:47'),
(14, 13, 8, '2020-03-18 17:22:06', '2020-03-18 17:22:06'),
(15, 12, 6, '2020-03-18 17:24:12', '2020-03-18 17:24:12'),
(16, 12, 1, '2020-03-18 17:25:30', '2020-03-18 17:25:30'),
(18, 12, 8, '2020-03-18 17:25:44', '2020-03-18 17:25:44'),
(19, 12, 4, '2020-03-18 17:25:52', '2020-03-18 17:25:52'),
(20, 11, 2, '2020-03-18 17:27:51', '2020-03-18 17:27:51'),
(21, 11, 8, '2020-03-18 17:27:58', '2020-03-18 17:27:58'),
(22, 10, 9, '2020-03-18 17:29:41', '2020-03-18 17:29:41'),
(23, 9, 6, '2020-03-18 17:30:49', '2020-03-18 17:30:49'),
(24, 9, 8, '2020-03-18 17:30:52', '2020-03-18 17:30:52'),
(25, 6, 2, '2020-03-18 17:39:28', '2020-03-18 17:39:28'),
(26, 1, 8, '2020-03-18 17:43:10', '2020-03-18 17:43:10'),
(27, 2, 4, '2020-03-18 17:45:46', '2020-03-18 17:45:46'),
(28, 2, 8, '2020-03-18 17:45:49', '2020-03-18 17:45:49'),
(29, 2, 1, '2020-03-18 17:45:54', '2020-03-18 17:45:54'),
(30, 7, 1, '2020-03-22 12:59:12', '2020-03-22 12:59:12'),
(31, 3, 9, '2020-06-08 20:23:32', '2020-06-08 20:23:32'),
(32, 15, 3, '2020-07-03 21:32:08', '2020-07-03 21:32:08'),
(33, 15, 9, '2020-07-03 21:32:10', '2020-07-03 21:32:10'),
(34, 14, 8, '2020-07-04 01:37:17', '2020-07-04 01:37:17'),
(35, 14, 10, '2020-07-04 01:37:26', '2020-07-04 01:37:26'),
(36, 8, 1, '2020-07-04 01:38:42', '2020-07-04 01:38:42'),
(37, 8, 6, '2020-07-04 01:38:46', '2020-07-04 01:38:46'),
(38, 8, 8, '2020-07-04 01:38:48', '2020-07-04 01:38:48'),
(39, 7, 5, '2020-07-04 01:39:01', '2020-07-04 01:39:01'),
(40, 7, 10, '2020-07-04 01:39:10', '2020-07-04 01:39:10'),
(41, 9, 5, '2020-07-04 01:39:24', '2020-07-04 01:39:24'),
(42, 11, 6, '2020-07-04 01:39:31', '2020-07-04 01:39:31'),
(43, 11, 5, '2020-07-04 01:39:34', '2020-07-04 01:39:34'),
(44, 11, 11, '2020-07-04 01:39:41', '2020-07-04 01:39:41'),
(45, 14, 11, '2020-07-04 01:39:57', '2020-07-04 01:39:57'),
(46, 14, 12, '2020-07-04 01:40:00', '2020-07-04 01:40:00'),
(47, 12, 12, '2020-07-04 01:44:18', '2020-07-04 01:44:18'),
(48, 16, 1, '2020-07-04 03:02:54', '2020-07-04 03:02:54'),
(49, 17, 3, '2020-07-04 03:03:26', '2020-07-04 03:03:26'),
(50, 13, 10, '2020-07-06 02:35:42', '2020-07-06 02:35:42');

-- --------------------------------------------------------

--
-- Table structure for table `work_log`
--

CREATE TABLE `work_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateLog` datetime DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `taskId` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_log`
--

INSERT INTO `work_log` (`id`, `amount`, `dateLog`, `description`, `taskId`, `userId`, `created_at`, `updated_at`) VALUES
(1, '10:00:00', '2020-04-01 23:59:59', 'The DATE type is used for values with a date part but no time part.', '4c4dd503-7c83-4cb5-b8fa-237277452204', 1, '2020-05-08 01:46:50', '2020-05-08 01:46:50'),
(2, '20:00:00', '2019-01-01 23:59:59', 'The DATE type is used for values with a date part but no time part.', '60ec148f-5cfc-4e96-87ee-130884edae84', 1, '2020-05-08 01:50:40', '2020-05-23 20:03:18'),
(3, '10:00:00', '2020-04-01 23:59:59', 'The DATE type is used for values with a date part but no time part.', '60ec148f-5cfc-4e96-87ee-130884edae84', 2, '2020-05-08 01:50:40', '2020-05-08 01:50:40'),
(4, '07:00:00', '2019-01-01 23:59:59', NULL, '579d33ee-e25e-49ec-bd18-d855f164597a', 1, '2020-05-26 01:28:00', '2020-05-26 01:28:17'),
(5, '05:00:00', '2019-01-01 23:59:59', NULL, '796eb57d-2670-47bd-98cf-67d5412b1f08', 1, '2020-05-31 20:25:15', '2020-05-31 20:25:15'),
(6, '02:00:00', '2019-01-01 23:59:59', NULL, '70270205-3780-42b6-aeb4-7c8f070d8d32', 1, '2020-05-31 20:25:44', '2020-05-31 20:25:44'),
(7, '03:00:00', '2019-01-01 23:59:59', NULL, '4c4dd503-7c83-4cb5-b8fa-237277452204', 1, '2020-06-08 19:08:27', '2020-06-08 19:08:27'),
(8, '03:00:00', '2019-01-01 23:59:59', NULL, '886ce22a-1f04-4ece-a818-57f32e02880b', 1, '2020-06-17 22:40:18', '2020-06-17 22:40:18'),
(9, '02:00:00', '2019-01-01 23:59:59', 'A', '1c2c3425-c7d5-44f9-9d95-a8c6b7495683', 1, '2020-07-06 19:55:55', '2020-07-06 19:55:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attachment`
--
ALTER TABLE `attachment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `board`
--
ALTER TABLE `board`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `board_user`
--
ALTER TABLE `board_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `label`
--
ALTER TABLE `label`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phase`
--
ALTER TABLE `phase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_action`
--
ALTER TABLE `task_action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_assignee`
--
ALTER TABLE `task_assignee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_label`
--
ALTER TABLE `task_label`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_line_event`
--
ALTER TABLE `time_line_event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `to_do`
--
ALTER TABLE `to_do`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_skill`
--
ALTER TABLE `user_skill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_log`
--
ALTER TABLE `work_log`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attachment`
--
ALTER TABLE `attachment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `board`
--
ALTER TABLE `board`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `board_user`
--
ALTER TABLE `board_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `label`
--
ALTER TABLE `label`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;
--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `skill`
--
ALTER TABLE `skill`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `task_action`
--
ALTER TABLE `task_action`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;
--
-- AUTO_INCREMENT for table `task_assignee`
--
ALTER TABLE `task_assignee`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `task_label`
--
ALTER TABLE `task_label`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `time_line_event`
--
ALTER TABLE `time_line_event`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `to_do`
--
ALTER TABLE `to_do`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user_skill`
--
ALTER TABLE `user_skill`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `work_log`
--
ALTER TABLE `work_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
