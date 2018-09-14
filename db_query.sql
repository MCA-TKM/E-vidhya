


-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2018 at 07:22 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendence`
--

CREATE TABLE `attendence` (
  `usr_name` varchar(15) NOT NULL,
  `forenoon` int(11) NOT NULL,
  `afternoon` int(11) NOT NULL,
  `staff_usr_name` varchar(15) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fee`
--

CREATE TABLE `fee` (
  `usr_name` varchar(15) NOT NULL,
  `tuition` float NOT NULL,
  `special` float NOT NULL,
  `library` float NOT NULL,
  `sports` float NOT NULL,
  `ctn_deposit` double NOT NULL,
  `ctn_deposit_return` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `usr_name` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `user` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `usr_name` varchar(15) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `mark` float NOT NULL,
  `total` int(11) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `usr_name` varchar(15) NOT NULL,
  `name` varchar(15) NOT NULL,
  `address` varchar(20) NOT NULL,
  `phno` varchar(15) NOT NULL,
  `email` varchar(15) NOT NULL,
  `occupation` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `usr_name` varchar(15) NOT NULL,
  `basic_da` float NOT NULL,
  `hra` double NOT NULL,
  `convence` double NOT NULL,
  `pf` double NOT NULL,
  `esi` double NOT NULL,
  `loan` double NOT NULL,
  `tax` double NOT NULL,
  `salary` double NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `usr_name` varchar(20) NOT NULL,
  `name` varchar(15) NOT NULL,
  `designation` varchar(20) NOT NULL,
  `in_charge` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(30) NOT NULL,
  `phno` varchar(15) NOT NULL,
  `email` varchar(15) NOT NULL,
  `qualification` varchar(20) NOT NULL,
  `gender` varchar(2) NOT NULL,
  `join_date` date NOT NULL,
  `withdraw_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `usr_name` varchar(15) NOT NULL,
  `name` varchar(15) NOT NULL,
  `class` varchar(3) NOT NULL,
  `gender` varchar(3) NOT NULL,
  `dob` date NOT NULL,
  `blood_grp` varchar(3) NOT NULL,
  `address` varchar(20) NOT NULL,
  `cast` varchar(10) NOT NULL,
  `religion` text NOT NULL,
  `joined_class` varchar(3) NOT NULL,
  `add_date` date NOT NULL,
  `parent_usr_name` varchar(15) NOT NULL,
  `passout_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `usr_name` varchar(15) NOT NULL,
  `classes` varchar(3) NOT NULL,
  `subjects` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendence`
--
ALTER TABLE `attendence`
  ADD KEY `usr_name` (`usr_name`),
  ADD KEY `staff_usr_name` (`staff_usr_name`);

--
-- Indexes for table `fee`
--
ALTER TABLE `fee`
  ADD KEY `usr_name` (`usr_name`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`usr_name`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD KEY `usr_name` (`usr_name`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD KEY `usr_name` (`usr_name`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD KEY `usr_name` (`usr_name`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD KEY `usr_name` (`usr_name`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD KEY `usr_name` (`usr_name`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD KEY `usr_name` (`usr_name`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendence`
--
ALTER TABLE `attendence`
  ADD CONSTRAINT `attendence_ibfk_1` FOREIGN KEY (`usr_name`) REFERENCES `login` (`usr_name`),
  ADD CONSTRAINT `attendence_ibfk_2` FOREIGN KEY (`staff_usr_name`) REFERENCES `login` (`usr_name`);

--
-- Constraints for table `fee`
--
ALTER TABLE `fee`
  ADD CONSTRAINT `fee_ibfk_1` FOREIGN KEY (`usr_name`) REFERENCES `login` (`usr_name`);

--
-- Constraints for table `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `marks_ibfk_1` FOREIGN KEY (`usr_name`) REFERENCES `login` (`usr_name`);

--
-- Constraints for table `parent`
--
ALTER TABLE `parent`
  ADD CONSTRAINT `parent_ibfk_1` FOREIGN KEY (`usr_name`) REFERENCES `login` (`usr_name`);

--
-- Constraints for table `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`usr_name`) REFERENCES `login` (`usr_name`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`usr_name`) REFERENCES `login` (`usr_name`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`usr_name`) REFERENCES `login` (`usr_name`);

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`usr_name`) REFERENCES `login` (`usr_name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
