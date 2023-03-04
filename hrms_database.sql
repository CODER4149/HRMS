-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2021 at 07:33 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrml`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_hr`
--

CREATE TABLE `add_hr` (
  `id` int(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `Designation` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `Contact` varchar(50) NOT NULL,
  `Status` varchar(20) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_hr`
--

INSERT INTO `add_hr` (`id`, `name`, `date`, `Designation`, `email`, `Contact`, `Status`) VALUES
(118, 'amol yadav', '2021-09-01', 'HR', 'amol.d.4149@gmail.com', '9130900875', '1');

-- --------------------------------------------------------

--
-- Table structure for table `call_log`
--

CREATE TABLE `call_log` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_today` date DEFAULT NULL,
  `info` varchar(50) DEFAULT NULL,
  `call_date` date DEFAULT NULL,
  `call_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `call_log`
--

INSERT INTO `call_log` (`id`, `name`, `date_today`, `info`, `call_date`, `call_id`) VALUES
(2, 'amol', '2021-09-29', 'udya yeto', '2021-09-16', 17);

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE `organization` (
  `Id` int(11) NOT NULL,
  `Organization Name` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact No.` varchar(50) NOT NULL,
  `STATUS` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`Id`, `Organization Name`, `Address`, `Email`, `Contact No.`, `STATUS`) VALUES
(10, 'cws software', 'hadapsar', 'cwstechnology20@gmail.com', '9130900875', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  ` Current Location` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Contact No.` varchar(50) NOT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `Qualification` varchar(50) DEFAULT NULL,
  `Duration` varchar(50) DEFAULT NULL,
  `Designation` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `Permanent_Location` varchar(50) DEFAULT NULL,
  `Branch` varchar(50) DEFAULT NULL,
  `PassOut_Year` varchar(50) DEFAULT NULL,
  `Certification` varchar(50) DEFAULT NULL,
  `Certification_place` varchar(50) DEFAULT NULL,
  `Status_stud` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Id`, `Name`, `Date`, ` Current Location`, `Email`, `Contact No.`, `Gender`, `Status`, `Qualification`, `Duration`, `Designation`, `type`, `Permanent_Location`, `Branch`, `PassOut_Year`, `Certification`, `Certification_place`, `Status_stud`) VALUES
(17, 'Aditya Bobade', '2021-09-10', 'pune', 'adityabobade918@gmail.com', '913090087', 'male', '0', 'BCA', '2007-2014', 'java', NULL, 'pune', 'BCA', '2021-2022', 'JAVA', 'hadapsar', 0),
(18, 'aditya', '2021-09-10', 's', 'cwstechnology20@gmail.com', '9130900878', 'male', 'fresher', 'BCA', '2005-2005', '', 'Technical', 's', 's', '2018-2019', 'JAVA op', 'cws', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE `user_master` (
  `Id` int(11) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `PassWord` varchar(50) NOT NULL,
  `Roll` int(11) NOT NULL,
  `STATUS` int(11) DEFAULT 1,
  `HR_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`Id`, `UserName`, `PassWord`, `Roll`, `STATUS`, `HR_ID`) VALUES
(124, 'SAdmin', 'SAdmin', 1, 1, NULL),
(125, 'SAdmin', 'SAdmin', 1, 1, NULL),
(126, 'amol', 'amol', 2, 1, 118);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_hr`
--
ALTER TABLE `add_hr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `call_log`
--
ALTER TABLE `call_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `call_id` (`call_id`);

--
-- Indexes for table `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `user_master`
--
ALTER TABLE `user_master`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `HR_ID` (`HR_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_hr`
--
ALTER TABLE `add_hr`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `call_log`
--
ALTER TABLE `call_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `organization`
--
ALTER TABLE `organization`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_master`
--
ALTER TABLE `user_master`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `call_log`
--
ALTER TABLE `call_log`
  ADD CONSTRAINT `call_id` FOREIGN KEY (`call_id`) REFERENCES `student` (`Id`);

--
-- Constraints for table `user_master`
--
ALTER TABLE `user_master`
  ADD CONSTRAINT `FOREIGN KEY` FOREIGN KEY (`HR_ID`) REFERENCES `add_hr` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
