-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2019 at 07:01 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eventroz`
--

-- --------------------------------------------------------

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` char(50) DEFAULT NULL,
  `UserName` char(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'test', 'admin', 7898799798, 'tester1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-07-25 06:21:50');

-- --------------------------------------------------------
--
-- Table structure for table `tblhostlist`
--

CREATE TABLE `tblhostlist` (
  `ID` int(10) NOT NULL,
  `hostNumber` varchar(80) DEFAULT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Subject` varchar(80) DEFAULT NULL,
  `Message` varchar(500) DEFAULT NULL,
  `Remark` varchar(250) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `RequestDate` timestamp NULL DEFAULT current_timestamp(),
  `RemarkDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblhostlist`
--

INSERT INTO `tblhostlist` (`ID`, `hostNumber`, `Name`, `Email`, `Subject`, `Message`, `RemarkDate`) VALUES
(1, '261064124', 'Komal', 'komal@gmail.com', 'event1', 'A lot of plans', '2019-07-26 06:41:16'),
(2, '985645887', 'Kashish', 'Kash@gmail.com', 'event2', 'Yes what a sht', '2019-07-26 06:47:04'),
(3, '965887988', 'Sanjeeta Jain', 'sna@gmail.com', 'event 3', 'Never mind',  '2019-08-19 13:37:39');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscriber`
--

CREATE TABLE `tblsubscriber` (
  `ID` int(10) NOT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `subscriptionDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscriber`
--

INSERT INTO `tblsubscriber` (`ID`, `Email`,`subscriptionDate`) VALUES
(1, 'komal@gmail.com', '2019-07-26 06:41:16'),
(2, 'Kash@gmail.com', '2019-07-26 06:47:04'),
(3, 'sna@gmail.com', '2019-08-19 13:37:39');

-- --------------------------------------------------------
--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'Pure Coding', 'purecodingofficial@gmail.com', '0139a3c5cf42394be982e766c93f5ed0');

-- --------------------------------------------------------

--
-- Table structure for table `tblregisterlist`
--

CREATE TABLE `tblregisterlist` (
  `ID` int(10) NOT NULL,
  `regNumber` varchar(80) DEFAULT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `PhoneNumber` bigint(11) DEFAULT NULL,
  `DOBDate` varchar(120) DEFAULT NULL,
  `Events` varchar(120) DEFAULT NULL,
  `TransactionID` varchar(250) NOT NULL,
  `ApplyDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblregisterlist`
--

INSERT INTO `tblregisterlist` (`ID`, `regNumber`, `Name`, `Email`, `PhoneNumber`, `DOBDate`, `Events`,`TransactionID`, `ApplyDate`) VALUES
(1, '261064124', 'Komal', 'komal@gmail.com', 7798797897, '7/27/2019', 'HTML', 'efdb8744354', '2019-07-26 04:48:25');

--
-- Table structure for table `tblevents`
--

CREATE TABLE `tblevents` (
  `ID` int(10) NOT NULL,
  `EventName` varchar(200) DEFAULT NULL,
  `Cost` int(10) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblevents`
--

INSERT INTO `tblevents` (`ID`, `EventName`, `Cost`, `CreationDate`) VALUES
(1, 'HTML', 1200, '2019-07-25 11:22:38'),
(2, 'CSS', 500, '2019-07-25 11:22:53'),
(3, 'Javascript', 1000, '2019-07-25 11:23:10'),
(4, 'Art', 500, '2019-07-25 11:23:34'),
(5, 'Mental stability', 600, '2019-07-25 11:23:47'),
(6, 'Bike rally', 300, '2019-07-25 11:24:01');




ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `tblhostlist`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `tblsubscriber`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tblregisterlist`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `tblevents`
  ADD PRIMARY KEY (`id`);



--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblhostlist`
--
ALTER TABLE `tblhostlist`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblsubscriber`
--
ALTER TABLE `tblsubscriber`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;
--
-- AUTO_INCREMENT for table `tblregisterlist`
--
ALTER TABLE `tblregisterlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;
--
-- AUTO_INCREMENT for table `tblevents`
--
ALTER TABLE `tblevents`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
