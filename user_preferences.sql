-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: mysql:3306
-- Generation Time: May 22, 2026 at 11:39 AM
-- Server version: 8.4.8
-- PHP Version: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `devugo`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_preferences`
--

CREATE TABLE `user_preferences` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `job_titles` json DEFAULT NULL,
  `salary_min` int UNSIGNED DEFAULT NULL,
  `salary_max` int UNSIGNED DEFAULT NULL,
  `locations` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience_level` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cv_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `matched_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_preferences`
--

INSERT INTO `user_preferences` (`id`, `user_id`, `job_titles`, `salary_min`, `salary_max`, `locations`, `experience_level`, `cv_path`, `matched_at`, `created_at`, `updated_at`) VALUES
(1, 1, '[\"Security Engineer\", \"Cloud Architect\", \"Full Stack Developer\"]', 93626, 141432, 'remote', 'medior', 'cvs/f9ffd11a-b1cf-3d27-bb71-48745954460c.pdf', '2026-05-14 05:08:59', '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(2, 2, '[\"Machine Learning Engineer\", \"Software Engineer\"]', 88611, 140010, 'hybrid', 'medior', 'cvs/aac03960-dbe5-3e8b-9c13-fe60f950fa06.pdf', NULL, '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(3, 3, '[\"QA Engineer\", \"Site Reliability Engineer\"]', 68301, 81982, 'hybrid', 'junior', 'cvs/cd920a5d-c447-38ee-be49-62fb4cda4fca.pdf', '2026-05-09 18:09:26', '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(4, 4, '[\"Site Reliability Engineer\"]', 40460, 55134, 'remote', 'medior', NULL, '2026-04-29 12:20:45', '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(5, 5, '[\"Frontend Developer\", \"Site Reliability Engineer\", \"Mobile Developer\"]', 31312, 53834, 'onsite', 'medior', 'cvs/51c01f31-9d8a-302f-85d0-3c7703c100f1.pdf', NULL, '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(6, 6, '[\"Security Engineer\", \"Mobile Developer\", \"Backend Developer\"]', 88496, 144928, 'onsite', 'junior', 'cvs/c309d11b-a16a-328c-85be-01a7be48021b.pdf', NULL, '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(7, 7, '[\"QA Engineer\"]', 44991, 73952, 'remote', 'senior', NULL, NULL, '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(8, 8, '[\"Data Scientist\"]', 30937, 71164, 'onsite', 'principal', 'cvs/5094ca48-fefa-3a48-bfee-3c7414efe782.pdf', '2026-05-13 01:07:44', '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(9, 9, '[\"Backend Developer\"]', 52179, 94776, 'hybrid', 'principal', 'cvs/2e6131d7-b559-384d-89a4-3ac9c67562dd.pdf', '2026-05-04 00:09:11', '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(10, 10, '[\"Machine Learning Engineer\", \"Cloud Architect\", \"Software Engineer\"]', 47121, 98463, 'onsite', 'medior', 'cvs/e21fac98-23a2-3f6d-a278-54782c9087fe.pdf', NULL, '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(11, 11, '[\"Mobile Developer\", \"Data Scientist\"]', 78191, 117191, 'onsite', 'medior', NULL, '2026-04-30 20:50:20', '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(12, 12, '[\"Software Engineer\"]', 49337, 73865, 'remote', 'medior', 'cvs/3aa0f652-b9f7-3fa4-9e9e-1bb22d2bcaf8.pdf', NULL, '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(13, 13, '[\"Full Stack Developer\", \"Backend Developer\"]', 97745, 118847, 'remote', 'principal', 'cvs/82553334-befa-34c5-9e36-0c3a931f17f9.pdf', NULL, '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(14, 14, '[\"DevOps Engineer\", \"Site Reliability Engineer\", \"Cloud Architect\"]', 47471, 60524, 'onsite', 'principal', 'cvs/385a96ce-a103-312c-a711-33a63c8667d0.pdf', '2026-04-30 11:36:12', '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(15, 15, '[\"DevOps Engineer\", \"Frontend Developer\", \"Cloud Architect\"]', 40437, 80522, 'remote', 'medior', NULL, NULL, '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(16, 16, '[\"Security Engineer\"]', 48506, 71106, 'remote', 'medior', 'cvs/7682b60f-38c9-3b40-b972-1b0a3acaf70e.pdf', '2026-04-23 00:52:35', '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(17, 17, '[\"Full Stack Developer\", \"Mobile Developer\", \"DevOps Engineer\"]', 50547, 67091, 'hybrid', 'medior', NULL, '2026-04-28 02:49:59', '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(18, 18, '[\"Data Scientist\", \"Cloud Architect\", \"Frontend Developer\"]', 60683, 79011, 'remote', 'principal', NULL, '2026-04-27 20:12:26', '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(19, 19, '[\"Site Reliability Engineer\", \"Machine Learning Engineer\"]', 73837, 105015, 'remote', 'senior', 'cvs/e9d21ea2-4bea-34d1-bab6-a770a9f54dbf.pdf', '2026-05-01 15:03:12', '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(20, 20, '[\"Software Engineer\"]', 62550, 84171, 'onsite', 'junior', NULL, NULL, '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(21, 21, '[\"Security Engineer\", \"Software Engineer\", \"Cloud Architect\"]', 33486, 55094, 'hybrid', 'medior', NULL, '2026-04-22 12:13:18', '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(22, 22, '[\"Site Reliability Engineer\", \"Security Engineer\", \"Mobile Developer\"]', 31117, 59800, 'remote', 'principal', 'cvs/7131c9a0-5d7e-3733-ba77-e5f19c69a88f.pdf', NULL, '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(23, 23, '[\"DevOps Engineer\", \"Backend Developer\"]', 95603, 129951, 'onsite', 'principal', 'cvs/77817275-2a82-3fa2-8ec3-8085f154e10f.pdf', NULL, '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(24, 24, '[\"Frontend Developer\", \"Cloud Architect\", \"Mobile Developer\"]', 68127, 85448, 'onsite', 'senior', 'cvs/b4d35e2d-8307-3b82-8ade-639883cdce7e.pdf', NULL, '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(25, 25, '[\"Site Reliability Engineer\", \"Full Stack Developer\"]', 37250, 82075, 'remote', 'senior', NULL, NULL, '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(26, 26, '[\"DevOps Engineer\", \"Site Reliability Engineer\"]', 39591, 54457, 'remote', 'junior', NULL, NULL, '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(27, 27, '[\"DevOps Engineer\"]', 38920, 78606, 'remote', 'junior', NULL, '2026-05-14 23:45:51', '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(28, 28, '[\"Site Reliability Engineer\", \"Data Scientist\"]', 37282, 56501, 'hybrid', 'principal', NULL, '2026-05-12 11:00:38', '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(29, 29, '[\"Software Engineer\"]', 54596, 75272, 'remote', 'junior', 'cvs/e5681502-42d9-36d9-a260-60cebc38fb47.pdf', '2026-05-10 11:58:32', '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(30, 30, '[\"Full Stack Developer\", \"Software Engineer\", \"Security Engineer\"]', 78764, 103285, 'hybrid', 'junior', 'cvs/d7d0208c-1292-3d68-a009-c065c5722547.pdf', NULL, '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(31, 31, '[\"DevOps Engineer\", \"Site Reliability Engineer\"]', 94684, 133926, 'remote', 'principal', 'cvs/8d09db9e-f907-3da5-a049-05749f34367c.pdf', NULL, '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(32, 32, '[\"Cloud Architect\", \"Full Stack Developer\", \"Frontend Developer\"]', 86063, 132767, 'hybrid', 'medior', NULL, NULL, '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(33, 33, '[\"Frontend Developer\", \"Backend Developer\", \"Full Stack Developer\"]', 97260, 119061, 'onsite', 'principal', NULL, '2026-05-12 07:32:41', '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(34, 34, '[\"Data Scientist\"]', 35774, 79956, 'remote', 'principal', 'cvs/a21cbd96-ad5a-3b21-9d0c-fc72819f615e.pdf', NULL, '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(35, 35, '[\"DevOps Engineer\"]', 44933, 76690, 'remote', 'medior', 'cvs/ac0c99da-465c-3c4c-ab30-801f5b660849.pdf', NULL, '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(36, 36, '[\"Frontend Developer\"]', 40850, 74134, 'onsite', 'medior', 'cvs/707a7cb4-ee72-3242-b649-9c5a423a2532.pdf', '2026-04-27 05:17:08', '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(37, 37, '[\"Cloud Architect\", \"Frontend Developer\"]', 50097, 96628, 'hybrid', 'medior', 'cvs/1b817888-8d58-3e08-a1cb-41b6d6af3a68.pdf', '2026-05-06 20:03:25', '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(38, 38, '[\"Backend Developer\"]', 52683, 77648, 'remote', 'senior', 'cvs/bf38c1ef-abcd-39a4-bfd9-262766b52e36.pdf', NULL, '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(39, 39, '[\"Full Stack Developer\"]', 88400, 127255, 'hybrid', 'senior', 'cvs/c33a5222-dbe9-3fa9-a103-fc986e3044e5.pdf', NULL, '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(40, 40, '[\"Backend Developer\"]', 50245, 69119, 'onsite', 'medior', 'cvs/8a6abc92-684a-33a1-9c5c-7b9c35a48307.pdf', '2026-04-27 12:29:45', '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(41, 41, '[\"Mobile Developer\"]', 92969, 129177, 'hybrid', 'principal', NULL, '2026-05-11 16:23:04', '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(42, 42, '[\"Machine Learning Engineer\"]', 74360, 118411, 'hybrid', 'junior', NULL, NULL, '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(43, 43, '[\"Mobile Developer\", \"Site Reliability Engineer\"]', 98366, 129876, 'remote', 'senior', 'cvs/6d20c1a1-8267-3b8f-b7f0-3f5cb28113dd.pdf', '2026-04-27 08:22:23', '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(44, 44, '[\"Software Engineer\", \"QA Engineer\"]', 36646, 51639, 'onsite', 'senior', NULL, '2026-05-12 16:00:18', '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(45, 45, '[\"Frontend Developer\", \"Mobile Developer\", \"Machine Learning Engineer\"]', 32447, 44575, 'onsite', 'senior', 'cvs/6396b237-3628-3634-aa51-319f2b41e0c8.pdf', '2026-05-13 19:56:07', '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(46, 46, '[\"Cloud Architect\", \"Frontend Developer\"]', 71002, 120576, 'remote', 'principal', 'cvs/ead1dc3d-e6f7-3ef7-be6e-41c279468b4e.pdf', NULL, '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(47, 47, '[\"Mobile Developer\", \"Frontend Developer\"]', 86494, 98520, 'onsite', 'senior', NULL, NULL, '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(48, 48, '[\"Full Stack Developer\"]', 76657, 102697, 'onsite', 'senior', 'cvs/5a570bd4-e118-3282-b4db-4759e287b7c8.pdf', NULL, '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(49, 49, '[\"QA Engineer\", \"Site Reliability Engineer\", \"Full Stack Developer\"]', 94665, 129707, 'hybrid', 'senior', 'cvs/bab1dc06-356d-3245-a3f0-82e6599c70b2.pdf', '2026-05-21 01:56:06', '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(50, 50, '[\"Backend Developer\", \"Frontend Developer\", \"Data Scientist\"]', 90675, 102027, 'hybrid', 'medior', NULL, NULL, '2026-05-22 11:37:46', '2026-05-22 11:37:46'),
(51, 51, '[\"QA Engineer\", \"Mobile Developer\", \"Software Engineer\"]', 44114, 83878, 'onsite', 'senior', 'cvs/3eb56174-e0b8-3d01-9285-9d7d1988c30f.pdf', NULL, '2026-05-22 11:37:46', '2026-05-22 11:37:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_preferences`
--
ALTER TABLE `user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_preferences_user_id_unique` (`user_id`),
  ADD KEY `user_preferences_experience_level_index` (`experience_level`),
  ADD KEY `user_preferences_locations_index` (`locations`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_preferences`
--
ALTER TABLE `user_preferences`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_preferences`
--
# ALTER TABLE `user_preferences`
#   ADD CONSTRAINT `user_preferences_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
