-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2020 at 03:03 PM
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

--
-- Dumping data for table `apt_data`
--

INSERT INTO `apt_data` (`id`, `email`, `question`, `answer`) VALUES
(2, 'kevinmathew.thomas2018@vitstudent.ac.in', '{\"1\":14,\"2\":13,\"3\":2,\"4\":27,\"5\":29,\"6\":13,\"7\":16,\"8\":16,\"9\":18,\"10\":14}', '[\"a\",\"b\",null,\"a\",\"a\",null,null,null,null,null]');

-- --------------------------------------------------------

--
-- Table structure for table `apt_lqbank`
--

CREATE TABLE `apt_lqbank` (
  `id` int(11) NOT NULL,
  `question` varchar(320) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `apt_lqbank`
--

INSERT INTO `apt_lqbank` (`id`, `question`) VALUES
(1, 'this is a sample long answer question 1'),
(2, 'this is a sample long answer question 2'),
(3, 'this is a sample long answer question 3'),
(4, 'this is a sample long answer question 4');

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
(4, 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
(5, 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
(6, 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd'),
(7, 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
(8, 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
(9, 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd'),
(10, 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
(11, 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
(12, 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd'),
(13, 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
(14, 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
(15, 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd'),
(16, 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
(17, 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
(18, 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd'),
(19, 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
(20, 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
(21, 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd'),
(22, 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
(23, 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
(24, 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd'),
(25, 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
(26, 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
(27, 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd'),
(28, 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
(29, 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
(30, 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd'),
(31, 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c ');

-- --------------------------------------------------------

--
-- Table structure for table `d1_data`
--

CREATE TABLE `d1_data` (
  `id` int(10) NOT NULL,
  `email` varchar(320) NOT NULL,
  `question` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`question`)),
  `answer` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`answer`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `d1_data`
--

INSERT INTO `d1_data` (`id`, `email`, `question`, `answer`) VALUES
(22, 'kevinmathew.thomas2018@vitstudent.ac.in', '{\"1\":24,\"2\":24,\"3\":12,\"4\":30,\"5\":7,\"6\":4,\"7\":9,\"8\":13,\"9\":28,\"10\":18}', '[\"a\",\"a\",\"b\",\"b\",\"c\",\"b\",\"c\",\"a\",\"a\",\"a\"]');

-- --------------------------------------------------------

--
-- Table structure for table `d1_lqbank`
--

CREATE TABLE `d1_lqbank` (
  `id` int(11) NOT NULL,
  `question` varchar(320) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `d1_lqbank`
--

INSERT INTO `d1_lqbank` (`id`, `question`) VALUES
(1, 'this is a sample long answer question 1'),
(2, 'this is a sample long answer question 2'),
(3, 'this is a sample long answer question 3'),
(4, 'this is a sample long answer question 4');

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
('10', 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
('11', 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
('12', 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd'),
('13', 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
('14', 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
('15', 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd'),
('16', 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
('17', 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
('18', 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd'),
('19', 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
('2', 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
('20', 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
('21', 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd'),
('22', 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
('23', 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
('24', 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd'),
('25', 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
('26', 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
('27', 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd'),
('28', 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
('29', 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
('3', 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd'),
('30', 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd'),
('31', 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
('4', 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
('5', 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
('6', 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd'),
('7', 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
('8', 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
('9', 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd');

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
-- Table structure for table `d2_lqbank`
--

CREATE TABLE `d2_lqbank` (
  `id` int(11) NOT NULL,
  `question` varchar(320) NOT NULL
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
(3, 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd'),
(4, 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
(5, 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
(6, 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd'),
(7, 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
(8, 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
(9, 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd'),
(10, 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
(11, 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
(12, 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd'),
(13, 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
(14, 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
(15, 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd'),
(16, 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
(17, 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
(18, 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd'),
(19, 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
(20, 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
(21, 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd'),
(22, 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
(23, 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
(24, 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd'),
(25, 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
(26, 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
(27, 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd'),
(28, 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
(29, 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
(30, 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd'),
(31, 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c ');

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
-- Table structure for table `d3_lqbank`
--

CREATE TABLE `d3_lqbank` (
  `id` int(11) NOT NULL,
  `question` varchar(320) NOT NULL
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

--
-- Dumping data for table `d3_mcqbank`
--

INSERT INTO `d3_mcqbank` (`id`, `question`, `opt_a`, `opt_b`, `opt_c`, `opt_d`, `ans`) VALUES
(1, 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
(2, 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
(3, 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd'),
(4, 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
(5, 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
(6, 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd'),
(7, 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
(8, 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
(9, 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd'),
(10, 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
(11, 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
(12, 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd'),
(13, 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
(14, 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
(15, 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd'),
(16, 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
(17, 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
(18, 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd'),
(19, 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
(20, 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
(21, 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd'),
(22, 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
(23, 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
(24, 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd'),
(25, 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
(26, 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
(27, 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd'),
(28, 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c '),
(29, 'President of America', 'Trump', 'Biden', 'Modi', 'Kevin', 'b'),
(30, 'fjkfkjhfgjkh', 'jkfc', 'ukyfiuk', 'hch', 'test', 'd'),
(31, 'which is the biggest mamal', 'elephant', 'whale', 'ostrich', 'dinosaur', 'c ');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `f_name`, `l_name`, `email`, `apt`, `d1`, `d2`, `d3`) VALUES
(1, 'Kevin Mathew Thomas', '18BIT0241', 'kevinmathew.thomas2018@vitstudent.ac.in', 1, 1, 0, 0);

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
-- Indexes for table `apt_lqbank`
--
ALTER TABLE `apt_lqbank`
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
-- Indexes for table `d1_lqbank`
--
ALTER TABLE `d1_lqbank`
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
-- Indexes for table `d2_lqbank`
--
ALTER TABLE `d2_lqbank`
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
-- Indexes for table `d3_lqbank`
--
ALTER TABLE `d3_lqbank`
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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `apt_lqbank`
--
ALTER TABLE `apt_lqbank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `apt_mcqbank`
--
ALTER TABLE `apt_mcqbank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `d1_data`
--
ALTER TABLE `d1_data`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `d1_lqbank`
--
ALTER TABLE `d1_lqbank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `d2_data`
--
ALTER TABLE `d2_data`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `d2_lqbank`
--
ALTER TABLE `d2_lqbank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d2_mcqbank`
--
ALTER TABLE `d2_mcqbank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `d3_data`
--
ALTER TABLE `d3_data`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `d3_lqbank`
--
ALTER TABLE `d3_lqbank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d3_mcqbank`
--
ALTER TABLE `d3_mcqbank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
