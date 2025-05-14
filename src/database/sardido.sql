-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2025 at 04:23 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sardido`
--

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `log_id` int(11) NOT NULL,
  `log_userid` int(11) NOT NULL,
  `log_action` varchar(200) NOT NULL,
  `log_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`log_id`, `log_userid`, `log_action`, `log_time`) VALUES
(29, 8, 'User Login: 8', '2025-05-14 13:03:53'),
(30, 8, 'User Logout: 8', '2025-05-14 13:04:38'),
(31, 8, 'User Login: 8', '2025-05-14 13:10:38'),
(32, 8, 'User Logout: 8', '2025-05-14 13:10:47'),
(33, 8, 'User Login: 8', '2025-05-14 13:12:42'),
(34, 8, 'User Logout: 8', '2025-05-14 13:13:03'),
(35, 8, 'User Login: 8', '2025-05-14 13:22:05'),
(36, 8, 'User Logout: 8', '2025-05-14 13:25:52'),
(37, 8, 'User Login: 8', '2025-05-14 13:38:37'),
(38, 8, 'User Logout: 8', '2025-05-14 13:41:04'),
(39, 8, 'User Login: 8', '2025-05-14 13:43:25'),
(40, 8, 'User Logout: 8', '2025-05-14 13:45:08'),
(41, 8, 'User Login: 8', '2025-05-14 13:46:58'),
(42, 8, 'Create a user: Kings', '2025-05-14 13:48:22'),
(43, 8, 'User Login: 8', '2025-05-14 13:52:21'),
(44, 8, 'Create a user: Simbas', '2025-05-14 13:54:46'),
(45, 8, 'Updated a user: Simbas', '2025-05-14 13:55:17'),
(46, 8, 'Updated a user: Kings', '2025-05-14 13:55:26'),
(47, 8, 'User Logout: 8', '2025-05-14 13:56:04'),
(48, 8, 'User Login: 8', '2025-05-14 14:01:55'),
(49, 8, 'Updated a user: test2', '2025-05-14 14:02:22'),
(50, 8, 'User Logout: 8', '2025-05-14 14:02:44'),
(51, 8, 'User Login: 8', '2025-05-14 14:03:35'),
(52, 8, 'User Logout: 8', '2025-05-14 14:03:49'),
(53, 8, 'User Login: 8', '2025-05-14 14:04:54'),
(54, 8, 'Updated a user: test2', '2025-05-14 14:05:07'),
(55, 8, 'User Logout: 8', '2025-05-14 14:05:10'),
(56, 12, 'User Login: 12', '2025-05-14 14:05:22'),
(57, 8, 'User Login: 8', '2025-05-14 14:09:02'),
(58, 8, 'User Logout: 8', '2025-05-14 14:09:41'),
(59, 8, 'User Login: 8', '2025-05-14 14:10:55'),
(60, 8, 'Updated a user: King', '2025-05-14 14:11:10'),
(61, 8, 'Deleted user ID: 14', '2025-05-14 14:12:11'),
(62, 8, 'User Logout: 8', '2025-05-14 14:12:42'),
(63, 12, 'User Login: 12', '2025-05-14 14:12:53'),
(64, 8, 'User Login: 8', '2025-05-14 14:13:10'),
(65, 8, 'Create a user: Simbas', '2025-05-14 14:14:30'),
(66, 8, 'User Logout: 8', '2025-05-14 14:14:36'),
(67, 15, 'User Login: 15', '2025-05-14 14:15:10'),
(68, 8, 'User Login: 8', '2025-05-14 14:21:12');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(20) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Contact` varchar(255) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `Hnum` varchar(255) NOT NULL,
  `post` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `jobtitle` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `question` varchar(200) NOT NULL,
  `answer` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `fname`, `surname`, `date`, `gender`, `Username`, `Email`, `Contact`, `address1`, `address2`, `Hnum`, `post`, `department`, `designation`, `jobtitle`, `password`, `Status`, `question`, `answer`, `image`) VALUES
(8, 'Joseph', 'Sardido', '05/14/25', 'Male', 'Sarge', 'sarge@sarge.com', '092345678125', 'test', 'test', '5', '6046', 'IT', 'HR', 'HR Manager', 'k36NX7tIvUlJU2zWW401xCa4DS+DDFwwjizexCKuIkQ=', 'Active', 'What is your class section?', 'secret', ''),
(12, 'Lion', 'Kings', '05/06/25', 'Female', 'King', 'king@king.com', '12345678901', 'test', 'test', '023', '6046', 'Markteting', 'Teacher', 'Educator', 'k36NX7tIvUlJU2zWW401xCa4DS+DDFwwjizexCKuIkQ=', 'Active', '', '', ''),
(15, 'Simba', 'Lion', '05/26/25', 'Male', 'Simbas', 'simba@simba.com', '02315648972', 'test', 'test', '235', '6046', 'QIS', 'HRAssistant', 'Assistant', 'jcw2XCQt8jk5zt+5w14RXvM70/vbotL09PLXRsy4poc=', 'Active', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_userid` (`log_userid`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_ibfk_1` FOREIGN KEY (`log_userid`) REFERENCES `register` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
