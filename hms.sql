-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2023 at 09:40 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `starttime` time NOT NULL,
  `endtime` time NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `date`, `starttime`, `endtime`, `status`) VALUES
(1, '2022-02-22', '09:00:00', '10:00:00', 'Done'),
(2, '2022-02-22', '10:00:00', '11:00:00', 'Done'),
(3, '2022-02-22', '14:00:00', '15:00:00', 'Done'),
(4, '2022-02-23', '09:00:00', '10:00:00', 'NotDone'),
(6, '2022-03-01', '10:00:00', '11:00:00', 'NotDone'),
(7, '2022-03-02', '10:00:00', '11:00:00', 'NotDone'),
(8, '2022-03-04', '11:00:00', '12:00:00', 'NotDone'),
(9, '2022-03-08', '14:00:00', '15:00:00', 'NotDone'),
(10, '2022-03-09', '15:00:00', '16:00:00', 'Done'),
(11, '2022-04-22', '10:00:00', '11:00:00', 'NotDone');

-- --------------------------------------------------------

--
-- Table structure for table `diagnose`
--

CREATE TABLE `diagnose` (
  `appt` int(11) NOT NULL,
  `doctor` varchar(50) NOT NULL,
  `diagnosis` varchar(40) NOT NULL,
  `prescription` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diagnose`
--

INSERT INTO `diagnose` (`appt`, `doctor`, `diagnosis`, `prescription`) VALUES
(1, 'uvce1@gmail.com', 'Bloating', 'Ibuprofen as needed'),
(2, 'uvce@gmail.com', 'Muscle soreness', 'Stretch morning/night'),
(3, 'uvce@gmail.com', 'Vitamin Deficiency', 'Good diet'),
(6, 'uvce@gmail.com', 'Not Yet Diagnosed', 'Not Yet Diagnosed'),
(7, 'uvce1@gmail.com', 'Not Yet Diagnosed', 'Not Yet Diagnosed'),
(8, 'uvce1@gmail.com', 'Not Yet Diagnosed', 'Not Yet Diagnosed'),
(9, 'uvce@gmail.com', 'Not Yet Diagnosed', 'Not Yet Diagnosed'),
(10, 'uvce1@gmail.com', 'Take Proper rest for few days', 'Ondem-8 and Nauzene'),
(11, 'uvce1@gmail.com', 'Not Yet Diagnosed', 'Not Yet Diagnosed');

-- --------------------------------------------------------

--
-- Table structure for table `docshaveschedules`
--

CREATE TABLE `docshaveschedules` (
  `sched` int(11) NOT NULL,
  `doctor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `docshaveschedules`
--

INSERT INTO `docshaveschedules` (`sched`, `doctor`) VALUES
(1, 'uvce@gmail.com'),
(2, 'uvce1@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `email` varchar(50) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`email`, `gender`, `password`, `name`) VALUES
('uvce1@gmail.com', 'male', '12345678', 'Dr. Amit'),
('uvce@gmail.com', 'female', '12345678', 'Dr. Amritha');

-- --------------------------------------------------------

--
-- Table structure for table `doctorviewshistory`
--

CREATE TABLE `doctorviewshistory` (
  `history` int(11) NOT NULL,
  `doctor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctorviewshistory`
--

INSERT INTO `doctorviewshistory` (`history`, `doctor`) VALUES
(1, 'uvce1@gmail.com'),
(2, 'uvce@gmail.com'),
(3, 'uvce@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `medicalhistory`
--

CREATE TABLE `medicalhistory` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `conditions` varchar(100) NOT NULL,
  `surgeries` varchar(100) NOT NULL,
  `medication` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicalhistory`
--

INSERT INTO `medicalhistory` (`id`, `date`, `conditions`, `surgeries`, `medication`) VALUES
(1, '2022-02-22', 'stable', 'none', 'Crocin'),
(2, '2022-02-22', 'Head Ache', 'none', 'none'),
(3, '2022-02-22', 'indigestion', 'none', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(60) NOT NULL,
  `gender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`email`, `password`, `name`, `address`, `gender`) VALUES
('rajkarai@gmail.com', '12345678', 'Raj Kumar Rai', 'Banglore', 'male'),
('rajvir@gmail.com', '12345678', 'Raj Vir', 'Banglore', 'male'),
('shree@gmail.com', '12345678', 'Shree', 'Chennai', 'female'),
('shreekanth@gmail.com', '12345678', 'Shreekanth', 'Banglore', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `patientsattendappointments`
--

CREATE TABLE `patientsattendappointments` (
  `patient` varchar(50) NOT NULL,
  `appt` int(11) NOT NULL,
  `concerns` varchar(40) NOT NULL,
  `symptoms` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patientsattendappointments`
--

INSERT INTO `patientsattendappointments` (`patient`, `appt`, `concerns`, `symptoms`) VALUES
('rajkarai@gmail.com', 1, 'none', 'itchy throat'),
('rajkarai@gmail.com', 6, 'having trouble in sleeping', 'head ache'),
('rajvir@gmail.com', 2, 'body ache', 'exteme back pain while sitting on chair'),
('rajvir@gmail.com', 9, 'body ache', 'tooth pain'),
('rajvir@gmail.com', 10, 'body ache', 'vomiting'),
('shree@gmail.com', 8, 'depression', 'not able to sleep'),
('Shreekanth@gmail.com', 3, 'nausea', 'fever');

-- --------------------------------------------------------

--
-- Table structure for table `patientsfillhistory`
--

CREATE TABLE `patientsfillhistory` (
  `patient` varchar(50) NOT NULL,
  `history` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patientsfillhistory`
--

INSERT INTO `patientsfillhistory` (`patient`, `history`) VALUES
('rajkarai@gmail.com', 1),
('rajvir@gmail.com', 2),
('shreekanth@gmail.com', 3);

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `starttime` time NOT NULL,
  `endtime` time NOT NULL,
  `breaktime` time NOT NULL,
  `day` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `starttime`, `endtime`, `breaktime`, `day`) VALUES
(1, '09:00:00', '17:00:00', '12:00:00', 'Friday'),
(1, '09:00:00', '17:00:00', '12:00:00', 'Saturday'),
(1, '09:00:00', '17:00:00', '12:00:00', 'Sunday'),
(1, '09:00:00', '17:00:00', '12:00:00', 'Tuesday'),
(2, '09:00:00', '17:00:00', '12:00:00', 'Friday'),
(2, '09:00:00', '17:00:00', '12:00:00', 'Wednesday');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diagnose`
--
ALTER TABLE `diagnose`
  ADD PRIMARY KEY (`appt`,`doctor`),
  ADD KEY `doctor` (`doctor`);

--
-- Indexes for table `docshaveschedules`
--
ALTER TABLE `docshaveschedules`
  ADD PRIMARY KEY (`sched`,`doctor`),
  ADD KEY `doctor` (`doctor`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `doctorviewshistory`
--
ALTER TABLE `doctorviewshistory`
  ADD PRIMARY KEY (`history`,`doctor`),
  ADD KEY `doctor` (`doctor`);

--
-- Indexes for table `medicalhistory`
--
ALTER TABLE `medicalhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `patientsattendappointments`
--
ALTER TABLE `patientsattendappointments`
  ADD PRIMARY KEY (`patient`,`appt`),
  ADD KEY `appt` (`appt`);

--
-- Indexes for table `patientsfillhistory`
--
ALTER TABLE `patientsfillhistory`
  ADD PRIMARY KEY (`history`),
  ADD KEY `patient` (`patient`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`,`starttime`,`endtime`,`breaktime`,`day`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diagnose`
--
ALTER TABLE `diagnose`
  ADD CONSTRAINT `diagnose_ibfk_1` FOREIGN KEY (`appt`) REFERENCES `appointment` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `diagnose_ibfk_2` FOREIGN KEY (`doctor`) REFERENCES `doctor` (`email`) ON DELETE CASCADE;

--
-- Constraints for table `docshaveschedules`
--
ALTER TABLE `docshaveschedules`
  ADD CONSTRAINT `docshaveschedules_ibfk_1` FOREIGN KEY (`sched`) REFERENCES `schedule` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `docshaveschedules_ibfk_2` FOREIGN KEY (`doctor`) REFERENCES `doctor` (`email`) ON DELETE CASCADE;

--
-- Constraints for table `doctorviewshistory`
--
ALTER TABLE `doctorviewshistory`
  ADD CONSTRAINT `doctorviewshistory_ibfk_1` FOREIGN KEY (`doctor`) REFERENCES `doctor` (`email`) ON DELETE CASCADE,
  ADD CONSTRAINT `doctorviewshistory_ibfk_2` FOREIGN KEY (`history`) REFERENCES `medicalhistory` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `patientsattendappointments`
--
ALTER TABLE `patientsattendappointments`
  ADD CONSTRAINT `patientsattendappointments_ibfk_1` FOREIGN KEY (`patient`) REFERENCES `patient` (`email`) ON DELETE CASCADE,
  ADD CONSTRAINT `patientsattendappointments_ibfk_2` FOREIGN KEY (`appt`) REFERENCES `appointment` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `patientsfillhistory`
--
ALTER TABLE `patientsfillhistory`
  ADD CONSTRAINT `patientsfillhistory_ibfk_1` FOREIGN KEY (`patient`) REFERENCES `patient` (`email`) ON DELETE CASCADE,
  ADD CONSTRAINT `patientsfillhistory_ibfk_2` FOREIGN KEY (`history`) REFERENCES `medicalhistory` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
