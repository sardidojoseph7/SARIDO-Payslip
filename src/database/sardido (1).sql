-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2025 at 08:01 AM
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
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time_in` time DEFAULT NULL,
  `time_out` time DEFAULT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `employee_id`, `date`, `time_in`, `time_out`, `status`) VALUES
(1, 8, '2025-05-27', '07:00:00', '17:00:00', 'Present'),
(2, 8, '2025-05-28', '07:00:00', '16:00:00', 'Present'),
(3, 8, '2025-05-29', '07:00:00', '17:00:00', 'Late');

-- --------------------------------------------------------

--
-- Table structure for table `leave_requests`
--

CREATE TABLE `leave_requests` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `leave_type` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `reason` text DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Pending',
  `date_requested` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave_requests`
--

INSERT INTO `leave_requests` (`id`, `employee_id`, `leave_type`, `start_date`, `end_date`, `reason`, `status`, `date_requested`) VALUES
(1, 8, 'Sick Leave', '2025-05-28', '2025-06-10', 'I got to pee', 'Pending', '2025-05-27 17:59:02');

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
(68, 8, 'User Login: 8', '2025-05-14 14:21:12'),
(69, 16, 'User Login: 16', '2025-05-27 14:26:12'),
(70, 16, 'User Login: 16', '2025-05-27 14:31:48'),
(71, 16, 'User Login: 16', '2025-05-27 14:32:09'),
(72, 16, 'User Login: 16', '2025-05-27 14:32:30'),
(73, 16, 'User Login: 16', '2025-05-27 14:32:52'),
(74, 16, 'User Login: 16', '2025-05-27 14:33:59'),
(75, 16, 'Deleted user ID: 15', '2025-05-27 14:34:09'),
(76, 16, 'Deleted user ID: 15', '2025-05-27 14:34:20'),
(77, 16, 'Updated a user: administrator', '2025-05-27 14:34:57'),
(78, 16, 'User Login: 16', '2025-05-27 15:00:52'),
(79, 16, 'User Login: 16', '2025-05-27 15:04:37'),
(80, 16, 'User Login: 16', '2025-05-27 15:06:34'),
(81, 16, 'User Login: 16', '2025-05-27 15:47:43'),
(82, 16, 'User Login: 16', '2025-05-27 15:51:42'),
(83, 16, 'User Login: 16', '2025-05-27 15:53:58'),
(84, 16, 'User Login: 16', '2025-05-27 16:06:30'),
(85, 16, 'User Login: 16', '2025-05-27 16:09:02'),
(86, 16, 'User Login: 16', '2025-05-27 16:11:11'),
(87, 16, 'User Login: 16', '2025-05-27 16:15:34'),
(88, 16, 'User Login: 16', '2025-05-27 16:18:07'),
(89, 16, 'User Login: 16', '2025-05-27 16:19:11'),
(90, 16, 'User Login: 16', '2025-05-27 16:20:11'),
(91, 16, 'User Login: 16', '2025-05-27 16:32:51'),
(92, 16, 'User Login: 16', '2025-05-27 16:33:52'),
(93, 8, 'User Login: 8', '2025-05-27 16:43:53'),
(94, 8, 'User Login: 8', '2025-05-27 16:44:32'),
(95, 8, 'User Login: 8', '2025-05-27 16:46:20'),
(96, 8, 'User Login: 8', '2025-05-27 16:53:15'),
(97, 8, 'User Login: 8', '2025-05-27 16:54:25'),
(98, 8, 'User Login: 8', '2025-05-27 16:55:24'),
(99, 8, 'User Login: 8', '2025-05-27 16:55:40'),
(100, 8, 'User Login: 8', '2025-05-27 17:14:22'),
(101, 8, 'User Login: 8', '2025-05-27 17:15:00'),
(102, 8, 'User Login: 8', '2025-05-27 17:15:25'),
(103, 16, 'User Login: 16', '2025-05-27 17:16:08'),
(104, 16, 'User Login: 16', '2025-05-27 17:20:42'),
(105, 8, 'User Login: 8', '2025-05-27 17:22:40'),
(106, 8, 'User Login: 8', '2025-05-27 17:26:28'),
(107, 8, 'User Login: 8', '2025-05-27 17:45:12'),
(108, 8, 'User Login: 8', '2025-05-27 17:46:20'),
(109, 8, 'User Login: 8', '2025-05-27 17:50:06'),
(110, 8, 'User Login: 8', '2025-05-27 17:50:20'),
(111, 8, 'User Login: 8', '2025-05-27 17:51:19'),
(112, 8, 'User Login: 8', '2025-05-27 17:52:58'),
(113, 8, 'User Login: 8', '2025-05-27 17:53:24'),
(114, 8, 'User Login: 8', '2025-05-27 17:55:50'),
(115, 8, 'User Login: 8', '2025-05-27 17:56:49'),
(116, 8, 'User Login: 8', '2025-05-27 17:58:40'),
(117, 8, 'User Login: 8', '2025-05-28 04:59:43'),
(118, 8, 'User Login: 8', '2025-05-28 05:02:10'),
(119, 8, 'User Login: 8', '2025-05-28 05:04:30'),
(120, 16, 'User Login: 16', '2025-05-28 05:20:39'),
(121, 16, 'User Login: 16', '2025-05-28 05:23:42'),
(122, 8, 'User Login: 8', '2025-05-28 05:24:56'),
(123, 16, 'User Login: 16', '2025-05-28 05:25:35'),
(124, 16, 'User Login: 16', '2025-05-28 05:31:28'),
(125, 16, 'User Login: 16', '2025-05-28 05:45:54'),
(126, 16, 'User Logout: 16', '2025-05-28 05:47:02'),
(127, 8, 'User Login: 8', '2025-05-28 05:47:10'),
(128, 16, 'User Login: 16', '2025-05-28 05:57:44'),
(129, 16, 'User Logout: 16', '2025-05-28 05:58:04');

-- --------------------------------------------------------

--
-- Table structure for table `payslips`
--

CREATE TABLE `payslips` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `period_start` date NOT NULL,
  `period_end` date NOT NULL,
  `gross_pay` decimal(10,2) NOT NULL,
  `total_deduct` decimal(10,2) NOT NULL,
  `net_pay` decimal(10,2) NOT NULL,
  `date_generated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payslips`
--

INSERT INTO `payslips` (`id`, `employee_id`, `period_start`, `period_end`, `gross_pay`, `total_deduct`, `net_pay`, `date_generated`) VALUES
(1, 8, '2025-04-27', '2025-05-27', 9500.00, 1560.00, 7940.00, '2025-05-27 17:20:54'),
(2, 8, '2025-04-28', '2025-05-28', 8000.00, 962.50, 7037.50, '2025-05-28 05:32:35');

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
(8, 'Joseph', 'Sardido', '05/14/25', 'Male', 'Sarge', 'sarge@sarge.com', '092345678125', 'test', 'test', '5', '6046', 'IT', 'Teacher', 'Teacher', 'LINbqJZtkCEg+0UEA3+tNO/6S5Rh6YjkxNoHOtUNroI=', 'Active', 'What is your class section?', 'secret', ''),
(12, 'Lion', 'Kings', '05/06/25', 'Female', 'King', 'king@king.com', '12345678901', 'test', 'test', '023', '6046', 'Markteting', 'Teacher', 'Educator', 'k36NX7tIvUlJU2zWW401xCa4DS+DDFwwjizexCKuIkQ=', 'Active', '', '', ''),
(15, 'Simba', 'Lion', '05/26/25', 'Male', 'Simbas', 'simba@simba.com', '02315648972', 'test', 'test', '235', '6046', 'QIS', 'HRAssistant', 'Assistant', 'jcw2XCQt8jk5zt+5w14RXvM70/vbotL09PLXRsy4poc=', 'Active', '', '', ''),
(16, 'admin', 'hr', '2005-01-16', 'Male', 'administrator', 'admin@gmail.com', '092143343554', 'Minglanilla,Cebu', 'San Fernando, Cebu', '10', '6018', 'admin', 'HR', 'Admin', 'LINbqJZtkCEg+0UEA3+tNO/6S5Rh6YjkxNoHOtUNroI=', 'Active', '', '', 'src/userImages/3event.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `request_payslips`
--

CREATE TABLE `request_payslips` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `request_date` date NOT NULL DEFAULT curdate(),
  `status` varchar(50) NOT NULL DEFAULT 'Pending',
  `remarks` text DEFAULT NULL,
  `response_remarks` text DEFAULT NULL,
  `response_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `request_payslips`
--

INSERT INTO `request_payslips` (`id`, `user_id`, `request_date`, `status`, `remarks`, `response_remarks`, `response_date`) VALUES
(1, 8, '2025-05-28', 'Approved', 'I need my payslip now', '', '2025-05-28'),
(2, 8, '2025-05-28', 'Approved', 'I need my payslip today,if mi might, thank you.', 'Please wait for 1 to 2 days for your payslip to be generated, thankyou.', '2025-05-28');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `basic_salary` decimal(10,2) NOT NULL,
  `allowance` decimal(10,2) NOT NULL,
  `deduction` decimal(10,2) NOT NULL,
  `total_salary` decimal(10,2) NOT NULL,
  `salary_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `employee_id`, `basic_salary`, `allowance`, `deduction`, `total_salary`, `salary_date`) VALUES
(1, 8, 7500.00, 2000.00, 1560.00, 7940.00, '2025-05-27'),
(2, 8, 7500.00, 500.00, 962.50, 7037.50, '2025-05-28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `leave_requests`
--
ALTER TABLE `leave_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_userid` (`log_userid`);

--
-- Indexes for table `payslips`
--
ALTER TABLE `payslips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_payslips`
--
ALTER TABLE `request_payslips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `leave_requests`
--
ALTER TABLE `leave_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `payslips`
--
ALTER TABLE `payslips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `request_payslips`
--
ALTER TABLE `request_payslips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `register` (`id`);

--
-- Constraints for table `leave_requests`
--
ALTER TABLE `leave_requests`
  ADD CONSTRAINT `leave_requests_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `register` (`id`);

--
-- Constraints for table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_ibfk_1` FOREIGN KEY (`log_userid`) REFERENCES `register` (`id`);

--
-- Constraints for table `payslips`
--
ALTER TABLE `payslips`
  ADD CONSTRAINT `payslips_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `register` (`id`);

--
-- Constraints for table `request_payslips`
--
ALTER TABLE `request_payslips`
  ADD CONSTRAINT `request_payslips_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `register` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `register` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
