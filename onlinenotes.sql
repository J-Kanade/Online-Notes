-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2021 at 03:57 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinenotes`
--

-- --------------------------------------------------------

--
-- Table structure for table `forgotpassword`
--

CREATE TABLE `forgotpassword` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `keyn` char(32) NOT NULL,
  `time` int(11) NOT NULL,
  `status` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forgotpassword`
--

INSERT INTO `forgotpassword` (`id`, `user_id`, `keyn`, `time`, `status`) VALUES
(1, 11, '870d3bfa2b407b6b9b77ebec04ca995f', 1612249232, 'used');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(4) NOT NULL,
  `user_id` int(4) NOT NULL,
  `note` text NOT NULL,
  `time` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `user_id`, `note`, `time`) VALUES
(2, 13, 'Today is a beautiful day\n', 1612951439),
(7, 13, 'My name is Janak Kanade', 1612953828);

-- --------------------------------------------------------

--
-- Table structure for table `rememberme`
--

CREATE TABLE `rememberme` (
  `id` int(11) NOT NULL,
  `authentificator1` char(20) NOT NULL,
  `f2authentificator2` char(64) NOT NULL,
  `user_id` int(11) NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rememberme`
--

INSERT INTO `rememberme` (`id`, `authentificator1`, `f2authentificator2`, `user_id`, `expires`) VALUES
(2, '630c9e4792c837d63b1b', 'b5ebcd8a17abecde086670990517228f1cef5be5efa8227e2a78b2346ba2e60c', 10, '2021-02-16 13:09:11'),
(3, '8a13f2ee9de13c36cdb2', '2bc3b3e9c4e00992a83bb45d0042e28ded356329d6071a3f4c114d5f8979572e', 0, '2021-02-16 13:09:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(64) NOT NULL,
  `activation` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `activation`) VALUES
(1, 'janak', 'jkanade@bdj.com', 'ff0904f17d2128c849be990a7ccade', 'b74ca55971e0914da5b94e37ea05bbd4'),
(9, 'Makarand', 'masterblasterjk@gmail.com', 'ef329b928255b315a44f8d2458481cfd09ba54305de510b771f0a91a162d29e7', 'f4d40043922133683ec97adda8b72b7b'),
(10, 'Arnav', 'dkanade71@gmail.com', '5f5b3a305f59d5e2e46dbe2abb471ca153bef21a54c9c77251417fc42b8925b2', 'activated'),
(11, 'JK', 'janak.kanade18@vit.edu', 'fef58b157945ea51a3eb0215bc4611824a5e54cd73c4a74a49c0b84d3b789da5', 'activated'),
(12, 'Onkar', 'jkanade02@outlook.com', 'ef329b928255b315a44f8d2458481cfd09ba54305de510b771f0a91a162d29e7', '54e043ff7942fecae69c288be615a3e4'),
(13, 'JMK', 'jkanade02@gmail.com', 'fef58b157945ea51a3eb0215bc4611824a5e54cd73c4a74a49c0b84d3b789da5', 'activated');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `forgotpassword`
--
ALTER TABLE `forgotpassword`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rememberme`
--
ALTER TABLE `rememberme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `forgotpassword`
--
ALTER TABLE `forgotpassword`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rememberme`
--
ALTER TABLE `rememberme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
