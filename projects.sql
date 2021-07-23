-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2021 at 05:44 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projects`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendence`
--

CREATE TABLE `attendence` (
  `enrollment_no` varchar(14) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `'2021-06-05'` varchar(32) DEFAULT 'absent',
  `'2021-06-06'` varchar(11) DEFAULT 'absent',
  `'2021-06-08'` varchar(11) DEFAULT 'absent'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendence`
--

INSERT INTO `attendence` (`enrollment_no`, `name`, `'2021-06-05'`, `'2021-06-06'`, `'2021-06-08'`) VALUES
('1231', 'Sam', 'absent', 'present', 'present'),
('1236', 'deep', 'absent', 'absent', 'absent'),
('1237', 'milan', 'absent', 'present', 'absent');

-- --------------------------------------------------------

--
-- Table structure for table `id_generator`
--

CREATE TABLE `id_generator` (
  `next_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `id_generator`
--

INSERT INTO `id_generator` (`next_id`) VALUES
(1238);

-- --------------------------------------------------------

--
-- Table structure for table `manualreports`
--

CREATE TABLE `manualreports` (
  `id` int(14) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manualreports`
--

INSERT INTO `manualreports` (`id`, `name`, `date`) VALUES
(1236, 'deep', '2021-06-06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `enrollment_no` int(14) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone_no` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `pincode` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`enrollment_no`, `name`, `type`, `department`, `email`, `phone_no`, `address`, `pincode`) VALUES
(1231, 'Sam', 'admin', 'Head', 'sam@gmail.com', '56489855', 'Bhavnagar', 364003),
(1236, 'deep', 'emp', 'Management', 'deep@gmail.com', '32657894', 'amd', 365894),
(1237, 'milan', 'emp', 'Managemnet', 'milan@gmail.com', '94586789', 'Surat', 345678);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendence`
--
ALTER TABLE `attendence`
  ADD PRIMARY KEY (`enrollment_no`);

--
-- Indexes for table `id_generator`
--
ALTER TABLE `id_generator`
  ADD PRIMARY KEY (`next_id`);

--
-- Indexes for table `manualreports`
--
ALTER TABLE `manualreports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`enrollment_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `id_generator`
--
ALTER TABLE `id_generator`
  MODIFY `next_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1240;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `enrollment_no` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1238;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
