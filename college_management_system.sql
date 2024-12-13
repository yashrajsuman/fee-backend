-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2024 at 07:51 AM
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
-- Database: `college_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `fee_details`
--

CREATE TABLE `fee_details` (
  `id` int(11) NOT NULL,
  `usn` varchar(15) NOT NULL,
  `total_fee` decimal(10,2) NOT NULL,
  `amount_paid` decimal(10,2) DEFAULT 0.00,
  `remaining_balance` decimal(10,2) GENERATED ALWAYS AS (`total_fee` - `amount_paid`) STORED,
  `last_payment_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fee_details`
--

INSERT INTO `fee_details` (`id`, `usn`, `total_fee`, `amount_paid`, `last_payment_date`) VALUES
(1, '1AT22IS064', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(2, '1AT22IS066', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(3, '1AT22IS067', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(4, '1AT22IS068', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(5, '1AT22IS069', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(6, '1AT22IS070', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(7, '1AT22IS071', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(8, '1AT22IS072', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(9, '1AT22IS073', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(10, '1AT22IS074', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(11, '1AT22IS075', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(12, '1AT22IS076', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(13, '1AT22IS077', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(14, '1AT22IS078', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(15, '1AT22IS079', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(16, '1AT22IS080', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(17, '1AT22IS081', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(18, '1AT22IS082', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(19, '1AT22IS083', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(20, '1AT22IS084', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(21, '1AT22IS085', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(22, '1AT22IS086', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(23, '1AT22IS087', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(24, '1AT22IS088', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(25, '1AT22IS089', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(26, '1AT22IS090', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(27, '1AT22IS091', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(28, '1AT22IS092', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(29, '1AT22IS093', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(30, '1AT22IS094', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(31, '1AT22IS095', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(32, '1AT22IS096', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(33, '1AT22IS097', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(34, '1AT22IS098', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(35, '1AT22IS099', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(36, '1AT22IS100', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(37, '1AT22IS101', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(38, '1AT22IS102', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(39, '1AT22IS103', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(40, '1AT22IS104', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(41, '1AT22IS105', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(42, '1AT22IS106', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(43, '1AT22IS107', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(44, '1AT22IS108', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(45, '1AT22IS109', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(46, '1AT22IS110', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(47, '1AT22IS111', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(48, '1AT22IS112', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(49, '1AT22IS113', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(50, '1AT22IS114', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(51, '1AT22IS115', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(52, '1AT22IS116', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(53, '1AT22IS117', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(54, '1AT22IS118', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(55, '1AT22IS119', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(56, '1AT22IS120', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(57, '1AT22IS121', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(58, '1AT22IS122', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(59, '1AT22IS123', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(60, '1AT22IS124', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(61, '1AT22IS125', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(62, '1AT22IS126', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(63, '1AT22IS127', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(64, '1AT23IS402', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(65, '1AT23IS403', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(66, '1AT23IS405', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(67, '1AT23IS407', 80000.00, 20000.00, '2024-12-11 00:00:00'),
(68, '1AT23IS408', 80000.00, 20000.00, '2024-12-11 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `usn` varchar(15) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `usn`, `username`, `password_hash`, `created_at`, `name`) VALUES
(1, '1AT22IS064', '1AT22IS064@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'MOHAMMED EMADULLA'),
(2, '1AT22IS066', '1AT22IS066@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'MOUNIKA V'),
(3, '1AT22IS067', '1AT22IS067@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'NAMITHA S N'),
(4, '1AT22IS068', '1AT22IS068@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'NAVEENKUMAR G N'),
(5, '1AT22IS069', '1AT22IS069@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'OOKOTI SRI CHARITHA'),
(6, '1AT22IS070', '1AT22IS070@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'P PAVAN'),
(7, '1AT22IS071', '1AT22IS071@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'PAVAN NARAYAN L'),
(8, '1AT22IS072', '1AT22IS072@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'PAVANI C V'),
(9, '1AT22IS073', '1AT22IS073@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'PRANAV KUMAR MISHRA'),
(10, '1AT22IS074', '1AT22IS074@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'PRAVEEN HALINGALI'),
(11, '1AT22IS075', '1AT22IS075@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'PRIYANKA V C'),
(12, '1AT22IS076', '1AT22IS076@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'PRUTHVI DEEPAM L A'),
(13, '1AT22IS077', '1AT22IS077@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'PUNIT SUDARSHAN ALAGOUDAR'),
(14, '1AT22IS078', '1AT22IS078@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'PUNITH GOWDA K S'),
(15, '1AT22IS079', '1AT22IS079@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'PURVIKA S'),
(16, '1AT22IS080', '1AT22IS080@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'RAHUL R UDHAND'),
(17, '1AT22IS081', '1AT22IS081@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'RANJITHA K'),
(18, '1AT22IS082', '1AT22IS082@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'RAVEESH SHIDDAPPA ANAJI'),
(19, '1AT22IS083', '1AT22IS083@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'RINKU DUHAN'),
(20, '1AT22IS084', '1AT22IS084@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'ROHAN R'),
(21, '1AT22IS085', '1AT22IS085@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'ROHAN REDDY R'),
(22, '1AT22IS086', '1AT22IS086@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'ROHIT KUMAR'),
(23, '1AT22IS087', '1AT22IS087@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'ROOPA S CHOUKIMATH'),
(24, '1AT22IS088', '1AT22IS088@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'S KIRAN REDDY'),
(25, '1AT22IS089', '1AT22IS089@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'SABQATH AHMED SIDDIQUE'),
(26, '1AT22IS090', '1AT22IS090@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'SAGAR P V'),
(27, '1AT22IS091', '1AT22IS091@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'SAGAR SHARANAGOWDA POLICE PATIL'),
(28, '1AT22IS092', '1AT22IS092@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'SANGAMESH'),
(29, '1AT22IS093', '1AT22IS093@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'SANNIDHI U P'),
(30, '1AT22IS094', '1AT22IS094@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'SANTOSH KUMAR'),
(31, '1AT22IS095', '1AT22IS095@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'SARAH SMYRLINE R'),
(32, '1AT22IS096', '1AT22IS096@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'SATHIYA PRAKASH G'),
(33, '1AT22IS097', '1AT22IS097@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'SHAFIYA NOORAIN'),
(34, '1AT22IS098', '1AT22IS098@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'SHALINI G'),
(35, '1AT22IS099', '1AT22IS099@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'SHIVARAJ R'),
(36, '1AT22IS100', '1AT22IS100@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'SHREESHA'),
(37, '1AT22IS101', '1AT22IS101@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'SHREYA KRISHNA'),
(38, '1AT22IS102', '1AT22IS102@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'SHREYA U'),
(39, '1AT22IS103', '1AT22IS103@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'SKANDANA KV'),
(40, '1AT22IS104', '1AT22IS104@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'SNEHA PRAKASH KOPPAD'),
(41, '1AT22IS105', '1AT22IS105@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'SPOORTHI S ACHARYA'),
(42, '1AT22IS106', '1AT22IS106@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'SUBRAMANI B S'),
(43, '1AT22IS107', '1AT22IS107@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'SUPREETHA R'),
(44, '1AT22IS108', '1AT22IS108@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'SWATHI N'),
(45, '1AT22IS109', '1AT22IS109@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'SWATHI Y N'),
(46, '1AT22IS110', '1AT22IS110@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'SYED SHAH WAQI ALI'),
(47, '1AT22IS111', '1AT22IS111@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'SYED ZAID'),
(48, '1AT22IS112', '1AT22IS112@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'TABREZ SHARIFF'),
(49, '1AT22IS113', '1AT22IS113@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'TAMIRAH SHARIEFF'),
(50, '1AT22IS114', '1AT22IS114@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'TEJAS PRASANNA P'),
(51, '1AT22IS115', '1AT22IS115@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'THANU SHREE B S'),
(52, '1AT22IS116', '1AT22IS116@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'THEJASWINI G K'),
(53, '1AT22IS117', '1AT22IS117@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'VAIBHAV T R'),
(54, '1AT22IS118', '1AT22IS118@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'VARUN M B'),
(55, '1AT22IS119', '1AT22IS119@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'VEDASHREE G A'),
(56, '1AT22IS120', '1AT22IS120@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'VIBHAV SAHADEVAN'),
(57, '1AT22IS121', '1AT22IS121@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'VIKAS R'),
(58, '1AT22IS122', '1AT22IS122@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'VIRUPAKSHA K'),
(59, '1AT22IS123', '1AT22IS123@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'VISHAL S'),
(60, '1AT22IS124', '1AT22IS124@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'VISHWA KUMAR'),
(61, '1AT22IS125', '1AT22IS125@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'VISHWA PRAKASH'),
(62, '1AT22IS126', '1AT22IS126@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'VISHWA SURESH'),
(63, '1AT22IS127', '1AT22IS127@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'VYSHNAVI V K'),
(64, '1AT23IS402', '1AT23IS402@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'RAGHU N'),
(65, '1AT23IS403', '1AT23IS403@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'SHRAVYA B S'),
(66, '1AT23IS405', '1AT23IS405@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'RAVI K'),
(67, '1AT23IS407', '1AT23IS407@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'SUJITHA M'),
(68, '1AT23IS408', '1AT23IS408@visioneer.atria.edu', 'ATRIA123456', '2024-12-10 20:20:14', 'SHAKTI V');

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--


-- --------------------------------------------------------

--
-- Table structure for table `performances`
--

CREATE TABLE `performances` (
  `id` int(11) NOT NULL,
  `usn` varchar(15) NOT NULL,
  `sem1_sgpa` decimal(4,2) NOT NULL,
  `sem2_sgpa` decimal(4,2) NOT NULL,
  `sem3_sgpa` decimal(4,2) NOT NULL,
  `sem4_sgpa` decimal(4,2) NOT NULL,
  `sem5_sgpa` decimal(4,2) NOT NULL,
  `sem6_sgpa` decimal(4,2) NOT NULL,
  `cgpa` decimal(4,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_performance`
--

CREATE TABLE `student_performance` (
  `id` int(11) NOT NULL,
  `usn` varchar(15) NOT NULL,
  `sem1_sgpa` decimal(4,2) NOT NULL,
  `sem2_sgpa` decimal(4,2) NOT NULL,
  `sem3_sgpa` decimal(4,2) NOT NULL,
  `sem4_sgpa` decimal(4,2) NOT NULL,
  `sem5_sgpa` decimal(4,2) NOT NULL,
  `sem6_sgpa` decimal(4,2) NOT NULL,
  `cgpa` decimal(4,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_performance`
--

INSERT INTO `student_performance` (`id`, `usn`, `sem1_sgpa`, `sem2_sgpa`, `sem3_sgpa`, `sem4_sgpa`, `sem5_sgpa`, `sem6_sgpa`, `cgpa`, `created_at`, `updated_at`) VALUES
(1, '1AT22IS123', 8.50, 9.00, 8.75, 9.20, 8.90, 9.10, 8.95, '2024-12-11 05:49:26', '2024-12-11 05:49:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fee_details`
--
ALTER TABLE `fee_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usn` (`usn`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usn` (`usn`);

--
-- Indexes for table `logins`
--


--
-- Indexes for table `performances`
--
ALTER TABLE `performances`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usn` (`usn`);

--
-- Indexes for table `student_performance`
--
ALTER TABLE `student_performance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usn` (`usn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fee_details`
--
ALTER TABLE `fee_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `logins`
--


--
-- AUTO_INCREMENT for table `performances`
--
ALTER TABLE `performances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_performance`
--
ALTER TABLE `student_performance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fee_details`
--
ALTER TABLE `fee_details`
  ADD CONSTRAINT `fee_details_ibfk_1` FOREIGN KEY (`usn`) REFERENCES `login` (`usn`) ON DELETE CASCADE;

--
-- Constraints for table `student_performance`
--
ALTER TABLE `student_performance`
  ADD CONSTRAINT `student_performance_ibfk_1` FOREIGN KEY (`usn`) REFERENCES `login` (`usn`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
