-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2022 at 02:37 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `timetable`
--

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `id` int(10) UNSIGNED NOT NULL,
  `batch_name` varchar(255) NOT NULL,
  `roll_no_start` int(11) DEFAULT NULL,
  `roll_no_end` int(11) DEFAULT NULL,
  `sem_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`id`, `batch_name`, `roll_no_start`, `roll_no_end`, `sem_id`, `dept_id`, `type_id`) VALUES
(1, 'All Batch', 1, 90, 16, 13, 13),
(13, 'A1', 1, 19, 16, 13, 14),
(14, 'B1', 20, 39, 16, 13, 14),
(15, 'B2', 40, 59, 16, 13, 14),
(16, 'All Batch', NULL, NULL, 15, 13, 13),
(17, 'C4', 14, 60, 13, 14, 14),
(18, 'C1', 20, 39, 17, 14, 13),
(19, 'D0', NULL, NULL, 16, 14, 13),
(20, 'CENG', NULL, NULL, 16, 15, 13);

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `class_name`) VALUES
(13, 'FE'),
(14, 'SE'),
(15, 'TE'),
(16, 'BE');

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `id` int(10) UNSIGNED NOT NULL,
  `day_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`id`, `day_name`) VALUES
(13, 'Monday'),
(14, 'Tuesday'),
(15, 'Wenesday'),
(16, 'Thursday'),
(17, 'Friday'),
(18, 'Saturday');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `dept_name` varchar(255) NOT NULL,
  `dept_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `dept_name`, `dept_email`) VALUES
(13, 'IT Department', 'it.mmcoe@mmcoe.edu.in'),
(14, 'CS Department', 'cs.mmcoe@mmcoe.edu.in'),
(15, 'Computer Engineering', 'ceng@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

CREATE TABLE `semesters` (
  `id` int(10) UNSIGNED NOT NULL,
  `sem_name` varchar(255) NOT NULL,
  `sem_type` varchar(255) NOT NULL,
  `class_id` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semesters`
--

INSERT INTO `semesters` (`id`, `sem_name`, `sem_type`, `class_id`) VALUES
(13, '1st Semester', 'Summer', '13'),
(14, '2nd Semester', 'Winter', '13'),
(15, '3rd Semester', 'Summer', '14'),
(16, '4th Semester', 'Winter', '14'),
(17, '5th Semester', 'Summer', '15');

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`id`, `name`, `email_id`, `mobile_no`, `dept_id`, `password`) VALUES
(13, 'Nikhil Sir', 'nikhildhavase@mmcoe.edu.in', '1111111', 13, 'password'),
(14, 'Sonal Siddha Mam', 'sonalsiddha@mmcoe.edu.in', '1111111', 13, 'password'),
(55, 'Samuel Tweneboah Koduah', 'Skoduah@gmail.com', '0261254887', 15, 'numlock11'),
(213, 'Jitendra Sir', 'jitendrachavan@mmcoe.edu.in', '09404846862', 13, 'password'),
(214, 'Dr. Vijaykumar Bidave', 'hod@mmcoe.edu.in', '1123144312', 13, 'password');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `sub_name` varchar(255) NOT NULL,
  `sub_code` int(11) NOT NULL,
  `sem_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `sub_name`, `sub_code`, `sem_id`, `dept_id`) VALUES
(13, 'DBMS', 214452, 16, 13),
(14, 'EM3', 214451, 16, 13),
(15, 'Computer Graphics', 214455, 16, 13),
(16, 'Data structues', 225125, 15, 13),
(17, 'Computer Network', 225010, 16, 13),
(18, 'Discreate Mathematics', 225014, 15, 13),
(19, 'introduction to C++', 225015, 17, 13),
(20, 'Statistics I', 224419, 14, 14),
(21, 'mathlab', 221452, 17, 14),
(22, 'STS', 445712, 16, 14),
(23, 'Circuit Design', 0, 16, 15);

-- --------------------------------------------------------

--
-- Table structure for table `subject_staff`
--

CREATE TABLE `subject_staff` (
  `id` int(10) UNSIGNED NOT NULL,
  `sub_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject_staff`
--

INSERT INTO `subject_staff` (`id`, `sub_id`, `staff_id`, `type_id`) VALUES
(13, 13, 13, 13),
(14, 13, 13, 14),
(15, 15, 213, 13),
(16, 15, 213, 14),
(17, 16, 13, 13),
(18, 16, 13, 14),
(19, 14, 14, 13),
(20, 17, 213, 13),
(21, 17, 213, 14),
(22, 18, 214, 13),
(23, 19, 14, 13),
(24, 19, 14, 14),
(25, 20, 13, 13),
(26, 21, 213, 13),
(27, 22, 214, 13),
(28, 23, 55, 13);

-- --------------------------------------------------------

--
-- Table structure for table `timeslots`
--

CREATE TABLE `timeslots` (
  `id` int(10) UNSIGNED NOT NULL,
  `timeslot` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timeslots`
--

INSERT INTO `timeslots` (`id`, `timeslot`) VALUES
(13, '10-11'),
(14, '11-12'),
(15, '12-1'),
(16, '1-2'),
(17, '2-3'),
(18, '3-4'),
(19, '4-5');

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `id` int(10) UNSIGNED NOT NULL,
  `timeslot_id` int(11) NOT NULL,
  `day_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `sem_id` int(11) NOT NULL,
  `type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`id`, `timeslot_id`, `day_id`, `dept_id`, `sem_id`, `type_id`) VALUES
(13, 15, 13, 13, 16, 13),
(14, 13, 13, 13, 16, 14),
(15, 14, 13, 13, 15, 13),
(23, 15, 14, 13, 16, 14),
(26, 18, 15, 13, 16, 13),
(27, 14, 14, 13, 15, 13),
(28, 13, 16, 13, 16, 14),
(29, 16, 14, 13, 16, 13),
(30, 15, 15, 13, 16, 13),
(31, 18, 17, 13, 17, 13),
(32, 13, 18, 13, 17, 13),
(33, 16, 14, 14, 13, 13),
(34, 14, 15, 14, 13, 13),
(35, 18, 17, 13, 14, 13),
(36, 15, 15, 14, 14, 13),
(37, 15, 15, 14, 14, 13),
(38, 16, 17, 14, 14, 14),
(39, 16, 17, 14, 14, 14),
(40, 16, 17, 14, 14, 14),
(41, 16, 17, 14, 14, 14),
(42, 17, 16, 14, 14, 15),
(43, 17, 16, 14, 14, 15),
(44, 17, 16, 14, 14, 15),
(45, 16, 15, 13, 14, 14),
(46, 16, 15, 13, 14, 14),
(47, 15, 14, 13, 14, 13),
(48, 15, 14, 13, 14, 13),
(49, 16, 16, 13, 14, 14),
(50, 16, 16, 13, 14, 14),
(51, 16, 16, 13, 14, 13),
(52, 16, 16, 13, 14, 13),
(53, 16, 16, 13, 14, 13),
(54, 14, 15, 13, 13, 13),
(55, 16, 14, 13, 17, 14),
(56, 16, 16, 13, 14, 13),
(57, 16, 16, 13, 14, 13),
(58, 16, 16, 13, 14, 13),
(59, 16, 16, 13, 14, 13),
(60, 13, 15, 13, 13, 13),
(61, 13, 15, 13, 13, 13),
(62, 15, 15, 13, 14, 13),
(63, 15, 15, 13, 14, 13),
(64, 15, 15, 13, 14, 13),
(65, 15, 15, 13, 14, 13),
(66, 14, 14, 13, 13, 13),
(67, 14, 14, 13, 13, 13),
(68, 14, 14, 13, 13, 13),
(69, 16, 16, 13, 15, 13),
(70, 15, 15, 13, 17, 13),
(71, 15, 15, 13, 17, 13),
(72, 15, 15, 13, 17, 13),
(73, 14, 14, 13, 14, 13),
(74, 14, 14, 13, 14, 13),
(75, 14, 14, 13, 14, 13),
(76, 14, 13, 13, 13, 13),
(77, 14, 13, 13, 13, 13),
(78, 14, 14, 13, 14, 13),
(79, 14, 14, 13, 14, 13),
(80, 14, 14, 13, 14, 13),
(81, 13, 13, 13, 14, 13),
(82, 13, 13, 13, 14, 13),
(83, 15, 16, 13, 13, 13),
(84, 18, 15, 14, 17, 13),
(85, 17, 15, 13, 15, 13),
(86, 15, 13, 13, 16, 13),
(87, 18, 17, 13, 16, 13),
(88, 16, 16, 15, 16, 13);

-- --------------------------------------------------------

--
-- Table structure for table `timetable_batches`
--

CREATE TABLE `timetable_batches` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject_staff_id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `timetable_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timetable_batches`
--

INSERT INTO `timetable_batches` (`id`, `subject_staff_id`, `batch_id`, `timetable_id`) VALUES
(13, 13, 1, 13),
(14, 14, 12, 14),
(15, 16, 13, 14),
(16, 17, 16, 15),
(18, 21, 13, 23),
(19, 14, 15, 23),
(20, 19, 1, 26),
(21, 17, 16, 27),
(22, 16, 13, 28),
(23, 14, 15, 28),
(24, 20, 1, 29),
(25, 15, 1, 30),
(26, 17, 16, 69),
(27, 26, 18, 84),
(28, 22, 16, 85),
(29, 15, 1, 86),
(30, 15, 1, 87),
(31, 28, 20, 88);

-- --------------------------------------------------------

--
-- Table structure for table `type_of_study`
--

CREATE TABLE `type_of_study` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type_of_study`
--

INSERT INTO `type_of_study` (`id`, `type_name`) VALUES
(13, 'Lecture'),
(14, 'Lab'),
(15, 'Lunch Break');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_staff`
--
ALTER TABLE `subject_staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timeslots`
--
ALTER TABLE `timeslots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timetable_batches`
--
ALTER TABLE `timetable_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_of_study`
--
ALTER TABLE `type_of_study`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `days`
--
ALTER TABLE `days`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `semesters`
--
ALTER TABLE `semesters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `subject_staff`
--
ALTER TABLE `subject_staff`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `timeslots`
--
ALTER TABLE `timeslots`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `timetable_batches`
--
ALTER TABLE `timetable_batches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `type_of_study`
--
ALTER TABLE `type_of_study`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
