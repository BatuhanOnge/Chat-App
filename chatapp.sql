-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2022 at 06:44 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `senderID` int(11) NOT NULL,
  `recieverID` int(11) NOT NULL,
  `messageContent` varchar(512) NOT NULL,
  `sentTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`senderID`, `recieverID`, `messageContent`, `sentTime`) VALUES
(0, 1, 'SGVsbG8=', '2022-08-05 11:46:32'),
(0, 1, 'VGVzdA==', '2022-08-05 11:46:32'),
(0, 1, 'NDI=', '2022-08-05 11:46:32'),
(1, 0, 'SGVsbG8=', '2022-08-05 11:46:32'),
(0, 1, 'VGVzdA==', '2022-08-05 11:46:32'),
(1, 0, 'VGVzdA==', '2022-08-05 11:46:32'),
(0, 1, 'SGVsbG8=', '2022-08-05 11:46:32'),
(0, 1, 'VGVzdA==', '2022-08-05 11:46:32'),
(0, 1, 'SGV5', '2022-08-05 11:46:32'),
(0, 1, 'dGVzdA==', '2022-08-05 11:46:32'),
(0, 1, 'dGV4dA==', '2022-08-05 11:46:32'),
(1, 0, 'dGVzdA==', '2022-08-05 11:46:32'),
(1, 0, 'dGVzdA==', '2022-08-05 11:46:32'),
(1, 0, 'dGVzdA==', '2022-08-05 11:46:32'),
(1, 0, 'dGVzdA==', '2022-08-05 11:46:32'),
(0, 1, 'VGVzdA==', '2022-08-05 11:46:32'),
(1, 0, 'VGVzdA==', '2022-08-05 11:46:32'),
(1, 0, 'VGVzdDEyMw==', '2022-08-05 11:46:32'),
(1, 0, 'dGV4dA==', '2022-08-05 11:46:32'),
(0, 1, 'VGVzdA==', '2022-08-05 11:46:32'),
(0, 1, 'dGVzdA==', '2022-08-05 11:46:32'),
(0, 1, 'dGV4dCB0ZXN0', '2022-08-05 11:46:32'),
(0, 1, 'VGVzdA==', '2022-08-05 11:46:32'),
(0, 1, 'dGV4dA==', '2022-08-05 11:46:32'),
(0, 1, 'VGVzdFRlc3RUZXN0VGVzdFRlc3RUZXN0VGVzdFRlc3RUZXN0VGVzdFRlc3RUZXN0VGVzdFRlc3RUZXN0VGVzdFRlc3RUZXN0VGVzdFRlc3RUZXN0', '2022-08-05 11:46:32'),
(1, 0, 'VGVzdCB0ZXh0', '2022-08-05 11:46:32'),
(1, 0, 'dGV4dCB0ZXN0', '2022-08-05 11:46:32'),
(1, 0, 'dGV4dHRleHR0ZXh0dGV4dHRleHR0ZXh0dGV4dHRleHQ=', '2022-08-05 11:46:32'),
(1, 0, 'dGV4dCB0ZXh0IHRleHQgdGV4dCB0ZXh0IHRleHQgdGV4dA==', '2022-08-05 11:46:32'),
(1, 0, 'dGV4dCB0ZXh0IHRleHQgdGV4dCB0ZXh0IHYgdGV4dCB0ZXh0IHRleHQgdGV4dCA=', '2022-08-05 11:46:32'),
(0, 1, 'dGV4dHRleHQgdGV4dHRleHQgdGV4dHRleHQgdGV4dHRleHQgdGV4dHRleHQ=', '2022-08-05 11:46:32'),
(0, 1, 'SGVsbG8gdGVzdCB0ZXh0', '2022-08-05 11:46:32'),
(0, 1, 'dGV4dHRleHQgdGV4dHRleHQgdGV4dA==', '2022-08-05 11:46:32'),
(0, 1, 'VGVzdA==', '2022-08-05 11:46:59'),
(0, 1, 'dGV4dA==', '2022-08-05 12:16:48'),
(1, 0, 'dGVzdHRleHQ=', '2022-08-05 12:26:18'),
(1, 0, 'dGVzdGhlbGxv', '2022-08-08 06:45:42'),
(0, 1, 'SGVsbG8gdGVzdCB0ZXh0', '2022-08-08 12:03:27'),
(0, 1, 'dGVzdA==', '2022-08-08 14:21:39'),
(0, 1, 'VGVzdA==', '2022-08-09 12:46:06'),
(0, 1, 'VGVzdA==', '2022-08-09 12:46:22'),
(0, 1, 'Li4uLg==', '2022-08-09 12:47:00'),
(1, 0, 'YWJj', '2022-08-09 12:49:06'),
(1, 0, 'aGVsbG8=', '2022-08-09 13:41:24'),
(1, 0, 'dGVzdA==', '2022-08-09 13:41:42'),
(1, 0, 'dGV4dA==', '2022-08-09 13:42:51'),
(1, 0, 'dGV4dHRleHQgdGV4dHRleHQgdGV4dHRleHQgdGV4dHRleHQgdGV4dHRleHQ=', '2022-08-09 13:47:27'),
(1, 0, 'SGVsbG8gdGVzdA==', '2022-08-10 12:26:07'),
(1, 0, 'dGVzdGluZw==', '2022-08-10 12:43:27'),
(1, 0, 'dGVzdA==', '2022-08-10 12:49:52'),
(1, 0, 'dGVzdHRlc3Q=', '2022-08-10 14:14:01'),
(1, 0, 'WFla', '2022-08-10 14:27:38'),
(1, 0, 'QUJD', '2022-08-10 14:47:35'),
(1, 0, 'VEVTVA==', '2022-08-11 07:25:30'),
(1, 0, 'SGVsbG8=', '2022-08-11 08:11:03'),
(1, 0, 'dGVzdGluZw==', '2022-08-11 08:12:03'),
(1, 0, 'dGVzdA==', '2022-08-11 08:14:00'),
(1, 0, 'dGVzdGluZw==', '2022-08-11 08:15:03'),
(0, 1, 'SGVsbG8=', '2022-08-11 08:15:30'),
(0, 1, 'VGVzdA==', '2022-08-11 08:15:33'),
(0, 1, 'dGVzdGluZw==', '2022-08-11 08:15:36'),
(0, 1, 'dEVTVMSwTkc=', '2022-08-11 12:58:53'),
(0, 1, 'dGVzdA==', '2022-08-11 13:05:50'),
(0, 1, 'YWJj', '2022-08-11 13:06:06'),
(0, 1, 'dGVzdA==', '2022-08-12 10:24:42'),
(0, 1, 'dGVzdCB0ZXh0', '2022-08-12 10:34:04'),
(0, 1, 'dGV4dCB0ZXN0', '2022-08-12 10:34:14'),
(0, 1, 'dGV4dCB0ZXN0', '2022-08-12 10:39:02'),
(0, 1, 'dGVzdA==', '2022-08-12 10:39:08'),
(0, 1, 'dGVzdA==', '2022-08-12 10:39:14'),
(1, 0, 'dGVzdA==', '2022-08-12 10:39:37'),
(1, 0, 'dGV4dCB0ZXN0', '2022-08-12 10:40:11'),
(1, 0, 'dGV4dA==', '2022-08-12 10:41:57'),
(1, 0, 'dGVzdA==', '2022-08-12 10:46:54'),
(1, 0, 'dGVzdA==', '2022-08-12 10:46:59'),
(1, 0, 'dGVzdA==', '2022-08-12 10:48:27'),
(0, 1, 'dGVzdA==', '2022-08-12 11:59:41'),
(0, 1, 'YWJj', '2022-08-12 11:59:56'),
(1, 0, 'dGVzdA==', '2022-08-12 12:00:43'),
(1, 0, 'dGVzdGluZw==', '2022-08-12 12:01:12'),
(1, 0, 'dGVzdA==', '2022-08-12 12:02:01'),
(0, 1, 'SGVsbG8=', '2022-08-12 12:16:00'),
(0, 1, 'dGVzdA==', '2022-08-12 12:19:49'),
(0, 1, 'dGVzdA==', '2022-08-12 12:26:07'),
(0, 1, 'MTIz', '2022-08-12 12:26:27'),
(0, 1, 'dGVzdGluZw==', '2022-08-12 12:27:05'),
(0, 1, 'aGVsbG8=', '2022-08-12 12:27:22'),
(0, 1, 'dGVzdA==', '2022-08-12 12:27:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `username`, `password`) VALUES
(0, 'Batuhan', 'e10adc3949ba59abbe56e057f20f883e'),
(1, 'Mehmet', 'e35cf7b66449df565f93c607d5a81d09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
