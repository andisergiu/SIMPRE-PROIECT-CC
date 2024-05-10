-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 10, 2024 at 12:03 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `etmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
CREATE TABLE IF NOT EXISTS `tbladmin` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Sergiu Costan', 'admin', 123123123, 'sergiu.costan@nextlab.tech', '3fc0a7acf087f549ac2b266baf94b8b1', '2024-04-26 04:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartment`
--

DROP TABLE IF EXISTS `tbldepartment`;
CREATE TABLE IF NOT EXISTS `tbldepartment` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `DepartmentName` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldepartment`
--

INSERT INTO `tbldepartment` (`ID`, `DepartmentName`, `CreationDate`) VALUES
(1, 'HR', '2024-03-28 06:59:06'),
(2, 'Logistics', '2024-03-28 07:34:38'),
(3, 'Technical', '2024-03-28 07:34:48'),
(4, 'Accounts', '2024-03-28 07:34:58'),
(5, 'Testing', '2024-03-28 07:35:08'),
(6, 'Operations', '2024-03-28 07:35:15');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployee`
--

DROP TABLE IF EXISTS `tblemployee`;
CREATE TABLE IF NOT EXISTS `tblemployee` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `DepartmentID` int(5) DEFAULT NULL,
  `EmpId` varchar(100) DEFAULT NULL,
  `EmpName` varchar(200) DEFAULT NULL,
  `EmpEmail` varchar(200) DEFAULT NULL,
  `EmpContactNumber` bigint(10) DEFAULT NULL,
  `Designation` varchar(200) DEFAULT NULL,
  `EmpDateofbirth` date DEFAULT NULL,
  `EmpAddress` varchar(250) DEFAULT NULL,
  `EmpDateofjoining` date DEFAULT NULL,
  `Description` mediumtext,
  `Password` varchar(200) DEFAULT NULL,
  `ProfilePic` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployee`
--

INSERT INTO `tblemployee` (`ID`, `DepartmentID`, `EmpId`, `EmpName`, `EmpEmail`, `EmpContactNumber`, `Designation`, `EmpDateofbirth`, `EmpAddress`, `EmpDateofjoining`, `Description`, `Password`, `ProfilePic`, `CreationDate`, `UpdationDate`) VALUES
(2, 1, 'NXT0010', 'Georgiana Stavar', 'g@gmail.com', 7894561236, 'jhgj', '1999-02-09', 'Bucuresti, Str. Petru Poni, Nr.2076', '2022-03-09', 'NA', '202cb962ac59075b964b07152d234b70', '18774bd590aa11e3cea58208eb5b52031647405444.jpg', '2024-03-29 12:23:03', '2024-05-10 11:55:58'),
(3, 2, 'NEXT0001', 'Sergiu Andrei', 'asuss9x@gmail.com', 4894561236, 'Logistics Manager', '1991-08-06', 'Alexandria, Teleorman', '2020-09-09', 'NA', '202cb962ac59075b964b07152d234b70', '18774bd590aa11e3cea58208eb5b52031647347253.jpg', '2024-03-29 12:27:33', '2024-05-10 11:56:06'),
(4, 6, 'NXT0002', 'Andrei Nica', 'andrei@gmail.com', 4987987987, 'Sales Operations', '1996-06-06', 'Plopeni, Prahova, Romania', '2021-02-01', '', '202cb962ac59075b964b07152d234b70', '18774bd590aa11e3cea58208eb5b52031647347360.jpg', '2024-03-29 12:29:20', '2024-05-10 11:56:22'),
(5, 4, 'NXT0011', 'Victor Dragomir', 'vd@gmail.com', 1234567890, 'Accountant', '2002-01-01', 'Bucuresti, Berceni', '2022-03-01', 'NA', 'f925916e2754e5e03f75dd58a5733251', '1bb87d41d15fe27b500a4bfcde01bb0e1648275105.png', '2024-04-10 05:11:45', '2024-05-10 11:56:42'),
(6, 3, 'NXT0030', 'Mihai Pol', 'mp@yahoo.com', 4021941244, 'Intern', '2005-07-15', 'Bucuresti, Crangasi', '2024-01-15', 'NA', '3fc0a7acf087f549ac2b266baf94b8b1', '3d1f1c75c2b3528700936d100a98889a1715332434jpeg', '2024-05-10 09:13:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

DROP TABLE IF EXISTS `tblpage`;
CREATE TABLE IF NOT EXISTS `tblpage` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext,
  `PageDescription` mediumtext,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbltask`
--

DROP TABLE IF EXISTS `tbltask`;
CREATE TABLE IF NOT EXISTS `tbltask` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `DeptID` int(5) DEFAULT NULL,
  `AssignTaskto` int(5) DEFAULT NULL,
  `TaskPriority` varchar(100) DEFAULT NULL,
  `TaskTitle` varchar(250) DEFAULT NULL,
  `TaskDescription` mediumtext,
  `TaskEnddate` date DEFAULT NULL,
  `TaskAssigndate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` varchar(200) DEFAULT NULL,
  `WorkCompleted` varchar(250) DEFAULT NULL,
  `Remark` varchar(250) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltask`
--

INSERT INTO `tbltask` (`ID`, `DeptID`, `AssignTaskto`, `TaskPriority`, `TaskTitle`, `TaskDescription`, `TaskEnddate`, `TaskAssigndate`, `Status`, `WorkCompleted`, `Remark`, `UpdationDate`) VALUES
(1, 1, 2, 'Normal', 'Angajarea candidatului', 'Aproximativ 100 de candidati vor veni la interviu.', '2024-05-21', '2024-04-17 06:12:32', 'Completed', '100', 'Task Completed', NULL),
(3, 3, 6, 'Medium', 'Instaleaza un robot FarmBot', 'Proiect Farmbot\r\n- Pregateste BOM pentru proiect\r\n- Bugete si costurile materialelor\r\n- Instructiunile de asmablare\r\n', '2024-05-22', '2024-04-20 11:15:22', 'Completed', '100', 'Task Completed', NULL),
(4, 1, 2, 'Medium', 'Angajeaza un programator senior', 'Angajeaza un programator\r\nSkilluri necesare: node.js, react', '2024-05-02', '2024-04-25 05:05:55', 'Inprogress', '20', 'Interview Going on', NULL),
(5, 4, 5, 'Normal', 'Pregateste factura pentru laptop', 'Creaza factura pentru laptop', '2024-05-03', '2024-04-25 05:12:55', 'Completed', '100', 'Bill Prepared', NULL),
(6, 2, 3, 'Urgent', 'Recompletare stock de la sediu', 'Trebuie sa transporti la sediu 25 de cutii de roboti Miro.\r\nBuget transport 600 lei.', '2024-05-13', '2024-05-10 06:47:02', NULL, NULL, NULL, NULL),
(7, 3, 6, 'Normal', 'Repara bug-uri', 'Repara bug-urile platformei de robotica', '2024-05-22', '2024-05-10 09:25:06', NULL, NULL, NULL, NULL),
(8, 1, 2, 'Urgent', 'Facturi', 'Trimite toate facturile catre contabilitate din departament', '2024-05-14', '2024-05-10 09:28:59', NULL, NULL, NULL, NULL),
(9, 4, 5, 'Normal', 'Documente necesare', 'Transmite documentele necesare catre echipa de dezvoltare proiect.', '2024-05-29', '2024-05-10 09:30:14', NULL, NULL, NULL, NULL),
(10, 3, 6, 'Normal', 'Repara robotul', 'Repara robotul umanoid PEPE', '2024-05-28', '2024-05-10 09:33:40', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbltasktracking`
--

DROP TABLE IF EXISTS `tbltasktracking`;
CREATE TABLE IF NOT EXISTS `tbltasktracking` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `TaskID` int(10) DEFAULT NULL,
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `WorkCompleted` varchar(200) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltasktracking`
--

INSERT INTO `tbltasktracking` (`ID`, `TaskID`, `Remark`, `Status`, `WorkCompleted`, `UpdationDate`) VALUES
(1, 1, 'Work is in progress', 'Inprogress', '65', '2024-05-02 17:30:00'),
(2, 1, 'Task Completed', 'Completed', '100', '2024-05-02 17:30:00'),
(3, 3, 'Task is inprogress', 'Inprogress', '60', '2024-05-03 04:24:25'),
(4, 3, 'Task Completed', 'Completed', '100', '2024-05-03 04:28:14'),
(5, 4, 'Interview Going on', 'Inprogress', '20', '2024-05-03 05:07:29'),
(6, 5, 'Preparing the bill', 'Inprogress', '50', '2024-05-03 05:13:52'),
(7, 5, 'Bill Prepared', 'Completed', '100', '2024-05-03 05:14:34');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
