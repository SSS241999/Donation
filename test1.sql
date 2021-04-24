-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2021 at 12:22 AM
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
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `donation_id` int(11) NOT NULL,
  `d_post_id` int(11) NOT NULL,
  `donation_amount` int(11) NOT NULL,
  `donation_username` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`donation_id`, `d_post_id`, `donation_amount`, `donation_username`) VALUES
(62, 4, 15000, 'admin'),
(63, 4, 10000, 'abcd');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `m_id` int(11) NOT NULL,
  `mname` varchar(100) NOT NULL,
  `memail` varchar(100) NOT NULL,
  `mphone` varchar(100) DEFAULT NULL,
  `mmsg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`m_id`, `mname`, `memail`, `mphone`, `mmsg`) VALUES
(4, 'Name ', 'email@example.com', '123123123', 'Hiii dummy text');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `p_title` varchar(200) DEFAULT NULL,
  `small_description` varchar(1000) DEFAULT NULL,
  `p_desc` text DEFAULT NULL,
  `p_img` mediumblob DEFAULT NULL,
  `p_weight` int(11) DEFAULT NULL,
  `p_time` datetime NOT NULL,
  `p_user_name` varchar(100) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `yes_no` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `p_title`, `small_description`, `p_desc`, `p_img`, `p_weight`, `p_time`, `p_user_name`, `amount`, `yes_no`) VALUES

-- --------------------------------------------------------

--
-- Table structure for table `userbalance`
--

CREATE TABLE `userbalance` (
  `b_user_name` varchar(100) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userbalance`
--

INSERT INTO `userbalance` (`b_user_name`, `balance`) VALUES
('testingbalancecreation', 162),
('admin', 25712),
('tareq', 162),
('workpro', 12712),
('testuser123', 0),
('abcd', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `usertype` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `username`, `password`, `email`, `usertype`) VALUES
(8, 'admin', 'admin', 'admin', '$2y$10$203uBkDEpvsLjko2DGuE4uPZEPlzXFvrZoJfb6ikiFgusKBwFskOS', 'admin@admin.com', b'1'),
(9, 'Not admin', 'Not admin', 'Notadmin', '$2y$10$/vCyQH7E8m1GFB0sqUUtW.DblFv0oUFYH.NSF.LmSb1d.AGkiUL1S', 'Notadmin@Notadmin', b'0'),
(10, 'Test', 'Update', 'testbalance', '$2y$10$/glE.cnWLXypwfzmKJPDT.odsLfAUQ8yq0UIHvwKc00k4AZQOUGoK', 'testing@email', b'0'),
(14, 'asd', 'asd', 'test', '$2y$10$1dChEuQI31qCC9uN/i64/OazPr6nf2KJef0vpsEuMTGUg6g5oPDgW', 'asdasdas@gmail', b'0'),
(16, 'test ', 'user', 'testuser123', '$2y$10$Fk2ohVs4Zi7NlMOAPurfNuuzM/xEE.tl3Jrw1.0OLMC7BLSJGKNXu', 'testuer@email.com', b'0'),
(17, 'abcd', 'abcd', 'abcd', '$2y$10$jEjeL.vh9xbL33xLB4JYTuKh3xRgq6sOVu90hzYQ17oV93T/ypE.O', 'abcd@gmail.com', b'0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`donation_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `donation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;