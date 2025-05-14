-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2025 at 08:18 PM
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
(1, 4, 'Create a user: test3', '2025-04-14 16:57:22'),
(2, 4, 'User Login: 4', '2025-04-14 17:05:45'),
(3, 4, 'Create a user: test3', '2025-04-14 17:06:11'),
(4, 4, 'User Logout: 4', '2025-04-14 17:06:41'),
(5, 4, 'User Login: 4', '2025-04-14 17:16:51'),
(6, 4, 'Deleted user ID: 6', '2025-04-14 17:17:00'),
(7, 4, 'Create a user: test3', '2025-04-14 17:17:34'),
(8, 4, 'User Logout: 4', '2025-04-14 17:17:45'),
(9, 4, 'User Login: 4', '2025-04-14 17:19:36'),
(10, 4, 'Updated a user: test3', '2025-04-14 17:19:51'),
(11, 4, 'User Login: 4', '2025-04-14 17:24:26'),
(12, 4, 'Updated a user: test3', '2025-04-14 17:24:42'),
(13, 4, 'Updated a user: test3', '2025-04-14 17:25:00'),
(14, 4, 'User Logout: 4', '2025-04-14 17:25:11'),
(15, 4, 'User Login: 4', '2025-04-14 17:26:49'),
(16, 4, 'User Login: 4', '2025-04-14 17:32:24'),
(17, 4, 'Updated a user: test3', '2025-04-14 17:32:36'),
(18, 4, 'Updated a user: test3', '2025-04-14 17:33:04'),
(19, 4, 'User Login: 4', '2025-04-14 17:34:23'),
(20, 4, 'Updated a user: test3', '2025-04-14 17:34:32'),
(21, 4, 'User Logout: 4', '2025-04-14 17:34:40'),
(22, 7, 'User Login: 7', '2025-04-14 17:52:01'),
(23, 7, 'User Login: 7', '2025-04-14 17:55:06'),
(24, 7, 'User Login: 7', '2025-04-14 17:58:28'),
(25, 7, 'User Login: 7', '2025-04-14 17:58:49'),
(26, 7, 'User Login: 7', '2025-04-14 18:09:51'),
(27, 7, 'User Login: 7', '2025-04-14 18:15:53'),
(28, 7, 'User Login: 7', '2025-04-14 18:16:31');

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
(3, 'test', 'test', 'test', 'Male', 'test', 'test@test.com', '1234567890', 'test', 'test', '201', '2026', 'test', 'HR', 'test', 'k36NX7tIvUlJU2zWW401xCa4DS+DDFwwjizexCKuIkQ=', 'Active', '', '', ''),
(4, 'test2', 'test2', 'test2', 'Male', 'test2', 'test2@test2.com', '1234567890', 'test2', 'test2', '203', '2036', 'test2', 'HR', 'test2', 'k36NX7tIvUlJU2zWW401xCa4DS+DDFwwjizexCKuIkQ=', 'Active', '', '', ''),
(5, 'test3', 'test3', 'test3', 'Male', 'test3', 'test3@test3.com', '01234567890', 'test3', 'test3', '2013', '2013', 'test3', 'Teacher', 'test3', 'ZKatKn7VYHclRHCqgiCfY+9NFk6ZbSdgMRaZC3y80iY=', 'Active', '', '', ''),
(7, 'last', 'last', 'last', 'Male', 'last12', 'last2@last.com', '10234567890', 'last', 'last', '203', '203', 'last', 'Teacher', 'last', '73l8gRjwLftklgfdXT+MdiMEjJwGPVMsyVxe16iYpk8=', 'Active', 'what is my fav sub?', 'programming', '');

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
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
