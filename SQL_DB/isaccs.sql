-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2020 at 06:44 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `isaccs`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_cred`
--

CREATE TABLE `admin_cred` (
  `id` int(2) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_cred`
--

INSERT INTO `admin_cred` (`id`, `username`, `password`) VALUES
(1, 'isavitadmin', '@Qwerty77');

-- --------------------------------------------------------

--
-- Table structure for table `apt_data`
--

CREATE TABLE `apt_data` (
  `id` int(10) NOT NULL,
  `email` varchar(320) NOT NULL,
  `question` varchar(320) NOT NULL,
  `answer` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `apt_mcqbank`
--

CREATE TABLE `apt_mcqbank` (
  `id` int(11) NOT NULL,
  `question` varchar(320) NOT NULL,
  `opt_a` varchar(320) NOT NULL,
  `opt_b` varchar(320) NOT NULL,
  `opt_c` varchar(320) NOT NULL,
  `opt_d` varchar(320) NOT NULL,
  `ans` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `apt_mcqbank`
--

INSERT INTO `apt_mcqbank` (`id`, `question`, `opt_a`, `opt_b`, `opt_c`, `opt_d`, `ans`) VALUES
(1, 'asxfda', 'sada', 'asdas', 'sdasd', 'dasd', 'a'),
(2, 'sdas', 'asdas', 'adsa', 'das', 'ads', 'c '),
(3, 'sfds', 'dsfs', 'fsdfsd', 'fdsfsd', 'fsdfsd', 'b'),
(5, 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c ');

-- --------------------------------------------------------

--
-- Table structure for table `d1_data`
--

CREATE TABLE `d1_data` (
  `id` int(10) NOT NULL,
  `email` varchar(320) NOT NULL,
  `question` varchar(320) NOT NULL,
  `answer` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `d1_mcqbank`
--

CREATE TABLE `d1_mcqbank` (
  `id` varchar(11) NOT NULL,
  `question` varchar(320) NOT NULL,
  `opt_a` varchar(320) NOT NULL,
  `opt_b` varchar(320) NOT NULL,
  `opt_c` varchar(320) NOT NULL,
  `opt_d` varchar(320) NOT NULL,
  `ans` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `d1_mcqbank`
--

INSERT INTO `d1_mcqbank` (`id`, `question`, `opt_a`, `opt_b`, `opt_c`, `opt_d`, `ans`) VALUES
('1', 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
('2', 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
('3', 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd');

-- --------------------------------------------------------

--
-- Table structure for table `d2_data`
--

CREATE TABLE `d2_data` (
  `id` int(10) NOT NULL,
  `email` varchar(320) NOT NULL,
  `question` varchar(320) NOT NULL,
  `answer` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `d2_mcqbank`
--

CREATE TABLE `d2_mcqbank` (
  `id` int(11) NOT NULL,
  `question` varchar(320) NOT NULL,
  `opt_a` varchar(320) NOT NULL,
  `opt_b` varchar(320) NOT NULL,
  `opt_c` varchar(320) NOT NULL,
  `opt_d` varchar(320) NOT NULL,
  `ans` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `d2_mcqbank`
--

INSERT INTO `d2_mcqbank` (`id`, `question`, `opt_a`, `opt_b`, `opt_c`, `opt_d`, `ans`) VALUES
(1, 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
(2, 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
(3, 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd');

-- --------------------------------------------------------

--
-- Table structure for table `d3_data`
--

CREATE TABLE `d3_data` (
  `id` int(10) NOT NULL,
  `email` varchar(320) NOT NULL,
  `question` varchar(320) NOT NULL,
  `answer` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `d3_mcqbank`
--

CREATE TABLE `d3_mcqbank` (
  `id` int(11) NOT NULL,
  `question` varchar(320) NOT NULL,
  `opt_a` varchar(320) NOT NULL,
  `opt_b` varchar(320) NOT NULL,
  `opt_c` varchar(320) NOT NULL,
  `opt_d` varchar(320) NOT NULL,
  `ans` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `f_name` varchar(320) NOT NULL,
  `l_name` varchar(320) NOT NULL,
  `email` varchar(320) NOT NULL,
  `apt` int(2) NOT NULL,
  `d1` int(2) NOT NULL,
  `d2` int(2) NOT NULL,
  `d3` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_cred`
--
ALTER TABLE `admin_cred`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apt_data`
--
ALTER TABLE `apt_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apt_mcqbank`
--
ALTER TABLE `apt_mcqbank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `d1_data`
--
ALTER TABLE `d1_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `d1_mcqbank`
--
ALTER TABLE `d1_mcqbank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `d2_data`
--
ALTER TABLE `d2_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `d2_mcqbank`
--
ALTER TABLE `d2_mcqbank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `d3_data`
--
ALTER TABLE `d3_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `d3_mcqbank`
--
ALTER TABLE `d3_mcqbank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_cred`
--
ALTER TABLE `admin_cred`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `apt_data`
--
ALTER TABLE `apt_data`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apt_mcqbank`
--
ALTER TABLE `apt_mcqbank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `d1_data`
--
ALTER TABLE `d1_data`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d2_data`
--
ALTER TABLE `d2_data`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d2_mcqbank`
--
ALTER TABLE `d2_mcqbank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `d3_data`
--
ALTER TABLE `d3_data`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d3_mcqbank`
--
ALTER TABLE `d3_mcqbank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
