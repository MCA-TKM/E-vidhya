

-- Database: `sms`
--
CREATE DATABASE IF NOT EXISTS `sms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sms`;

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

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`usr_name`, `password`, `user`) VALUES
('rahul@gmail.com', '123', 'admin');

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
  `usr_name` int(11) NOT NULL,
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
  `withdraw_date` date NOT NULL,
  `blood_grp` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`usr_name`, `name`, `designation`, `in_charge`, `dob`, `address`, `phno`, `email`, `qualification`, `gender`, `join_date`, `withdraw_date`, `blood_grp`) VALUES
(1, 'rahul satheesh ', 'Teacher', '', '2018-11-11', 'kattakada,trivandrum', '0472-2803309', 'ra@g.com', 'A+', 'F', '2018-11-18', '0000-00-00', 'A+'),
(2, 'rahul satheesh ', 'Teacher', '', '2018-11-11', 'kattakada,trivandrum', '0472-2803309', 'ra@g.com', 'A+', 'F', '2018-11-18', '0000-00-00', 'A+'),
(3, 'gokul', 'Teacher', '', '2018-11-11', 'nedumangad', '0472-2803309', 'ra@g.com', 'A-', 'F', '2018-11-25', '0000-00-00', 'AB+'),
(4, 'gokul', 'Teacher', '', '2018-11-11', 'nedumangad', '0472-2803309', 'ra@g.com', 'A-', 'F', '2018-11-25', '0000-00-00', 'AB+'),
(5, '', 'Select', '', '0000-00-00', '', '', '', 'Select', 'F', '0000-00-00', '0000-00-00', 'Sel'),
(6, 'rahul satheesh ', 'Select', '', '2018-11-18', '', '', '', 'Select', 'F', '0000-00-00', '0000-00-00', 'Sel');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `usr_name` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `class` varchar(3) NOT NULL,
  `division` varchar(1) NOT NULL,
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

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`usr_name`, `name`, `class`, `division`, `gender`, `dob`, `blood_grp`, `address`, `cast`, `religion`, `joined_class`, `add_date`, `parent_usr_name`, `passout_date`) VALUES
(36, 'rahul satheesh ', '1', '', 'M', '2018-11-10', 'A+', 'kattakada,thiruvanan', 'Nair', 'Hindu', '1', '2018-11-10', '', '0000-00-00'),
(37, '', 'Cla', '', 'F', '0000-00-00', 'Sel', '', 'Select', 'Select', 'Cla', '0000-00-00', '', '0000-00-00'),
(38, '', 'Cla', '', 'F', '0000-00-00', 'Sel', '', 'Select', 'Select', 'Cla', '0000-00-00', '', '0000-00-00'),
(39, '', 'Cla', '', 'F', '0000-00-00', 'Sel', '', 'Select', 'Select', 'Cla', '0000-00-00', '', '0000-00-00'),
(40, '', 'Cla', '', 'F', '0000-00-00', 'Sel', '', 'Select', 'Select', 'Cla', '0000-00-00', '', '0000-00-00');

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
  ADD PRIMARY KEY (`usr_name`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`usr_name`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD KEY `usr_name` (`usr_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `usr_name` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `usr_name` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

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
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`usr_name`) REFERENCES `login` (`usr_name`);

