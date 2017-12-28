-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 05, 2016 at 08:52 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `QuanlyPhongHop`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `dsphongdadat`
--
CREATE TABLE `dsphongdadat` (
`ID` int(11) unsigned
,`MeetingDate` date
,`Statuss` int(1)
,`DateCreated` datetime
,`nameRoom` varchar(30)
,`NameMD` varchar(40)
,`Namems` varchar(50)
,`TimeStart` time
,`fullName` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `list_room`
--

CREATE TABLE `list_room` (
  `ID` int(11) NOT NULL,
  `nameRoom` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numOfSeats` int(11) DEFAULT NULL,
  `numOfScreen` int(11) DEFAULT NULL,
  `numOfTV` int(11) DEFAULT NULL,
  `numOfBoard` int(11) DEFAULT NULL,
  `airConditioner` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `soundSystem` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Issue` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `list_room`
--

INSERT INTO `list_room` (`ID`, `nameRoom`, `numOfSeats`, `numOfScreen`, `numOfTV`, `numOfBoard`, `airConditioner`, `soundSystem`, `Issue`) VALUES
(6, 'A307', 500, 6, 4, 1, '50', 'BTO', 1),
(7, 'A101', 100, 2, 2, 1, '5', 'Micro wave', 1),
(19, 'A345', 50, 0, 8, 1, '8', 'JHYU', 1),
(20, 'A600', 600, 1, 11, 1, '1', 'RTD', 1);

-- --------------------------------------------------------

--
-- Table structure for table `meetingroom_duration`
--

CREATE TABLE `meetingroom_duration` (
  `ID` int(11) NOT NULL,
  `Duration` int(11) DEFAULT NULL,
  `NameMD` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Issue` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meetingroom_duration`
--

INSERT INTO `meetingroom_duration` (`ID`, `Duration`, `NameMD`, `Issue`) VALUES
(1, 30, '30 minutes', 1),
(2, 60, '1 hour', 1),
(3, 90, '1 h 30 minutes', 1),
(4, 120, '2 hours', 1),
(5, 150, '2 hours 30 minutes', 1),
(6, 180, '3 hours', 1),
(7, 210, '3 hours 30 minutes', 1),
(8, 240, '4 hours', 1);

-- --------------------------------------------------------

--
-- Table structure for table `meetingroom_history_detail`
--

CREATE TABLE `meetingroom_history_detail` (
  `ID` int(11) UNSIGNED NOT NULL,
  `MeetingDate` date DEFAULT NULL,
  `MeetingTimeID` int(11) DEFAULT NULL,
  `MeetingDurationID` int(11) DEFAULT NULL,
  `RoomID` int(11) DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL,
  `Statuss` int(1) DEFAULT NULL,
  `DateCreated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meetingroom_history_detail`
--

INSERT INTO `meetingroom_history_detail` (`ID`, `MeetingDate`, `MeetingTimeID`, `MeetingDurationID`, `RoomID`, `UserID`, `Statuss`, `DateCreated`) VALUES
(6532, '2016-12-07', 2, 2, 19, 18, 1, '2016-12-05 20:26:24'),
(6533, '2016-12-07', 2, 2, 20, 18, 1, '2016-12-05 20:26:32'),
(6534, '2016-12-08', 3, 3, 6, 18, 1, '2016-12-05 21:24:15'),
(6535, '2016-12-06', 1, 1, 6, 19, 1, '2016-12-05 22:06:07'),
(6536, '2016-12-21', 1, 1, 6, 19, 1, '2016-12-05 22:10:11');

-- --------------------------------------------------------

--
-- Table structure for table `meetingroom_status`
--

CREATE TABLE `meetingroom_status` (
  `ID` int(11) NOT NULL,
  `Namems` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meetingroom_status`
--

INSERT INTO `meetingroom_status` (`ID`, `Namems`) VALUES
(1, 'Dang ky'),
(2, 'Chinh sua'),
(3, 'huy bo');

-- --------------------------------------------------------

--
-- Table structure for table `meetingroom_time_start`
--

CREATE TABLE `meetingroom_time_start` (
  `ID` int(11) NOT NULL,
  `TimeStart` time DEFAULT NULL,
  `Issue` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meetingroom_time_start`
--

INSERT INTO `meetingroom_time_start` (`ID`, `TimeStart`, `Issue`) VALUES
(1, '07:00:00', 1),
(2, '07:30:00', 1),
(3, '08:00:00', 1),
(4, '08:30:00', 1),
(5, '09:00:00', 1),
(6, '09:30:00', 1),
(7, '10:00:00', 1),
(8, '10:30:00', 1),
(9, '11:00:00', 1),
(10, '11:30:00', 1),
(11, '12:00:00', 1),
(12, '12:30:00', 1),
(13, '13:00:00', 1),
(14, '13:30:00', 1),
(15, '14:00:00', 1),
(16, '14:30:00', 1),
(17, '15:00:00', 1),
(18, '15:30:00', 1),
(19, '16:00:00', 1),
(20, '16:30:00', 1),
(21, '17:00:00', 1),
(22, '17:30:00', 1),
(23, '18:00:00', 1),
(24, '18:30:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `meetingroom_user`
--

CREATE TABLE `meetingroom_user` (
  `ID` int(255) NOT NULL,
  `fullName` varchar(50) CHARACTER SET utf8 NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `sodienthoai` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `avata` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meetingroom_user`
--

INSERT INTO `meetingroom_user` (`ID`, `fullName`, `username`, `password`, `admin`, `sodienthoai`, `Email`, `avata`) VALUES
(18, 'admin', 'admin', '7ff33bc4fd129ab3f601e0f1599d3bf8', 1, '123456789', 'email', ''),
(19, 'member', 'member', '5b8c4ba6615d42f5e367f29ae19b93ff', 2, '123456789', 'email', ''),
(21, 'Trần Trung Hiếu', 'admin1', '7ff33bc4fd129ab3f601e0f1599d3bf8', 1, '01677136466', 'tranhieukk@gmail.com', ''),
(23, 'Nguyễn Đình Thái', 'member1', '7faf7a6d3b91bc3e3ced2d96747aadc8', 2, '01678984334', 'thaiitplus@gmail.com', '');

-- --------------------------------------------------------

--
-- Structure for view `dsphongdadat`
--
DROP TABLE IF EXISTS `dsphongdadat`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dsphongdadat`  AS  select `meetingroom_history_detail`.`ID` AS `ID`,`meetingroom_history_detail`.`MeetingDate` AS `MeetingDate`,`meetingroom_history_detail`.`Statuss` AS `Statuss`,`meetingroom_history_detail`.`DateCreated` AS `DateCreated`,`list_room`.`nameRoom` AS `nameRoom`,`meetingroom_duration`.`NameMD` AS `NameMD`,`meetingroom_status`.`Namems` AS `Namems`,`meetingroom_time_start`.`TimeStart` AS `TimeStart`,`meetingroom_user`.`fullName` AS `fullName` from (((((`meetingroom_history_detail` join `list_room` on((`meetingroom_history_detail`.`RoomID` = `list_room`.`ID`))) join `meetingroom_duration` on((`meetingroom_history_detail`.`MeetingDurationID` = `meetingroom_duration`.`ID`))) join `meetingroom_status` on((`meetingroom_history_detail`.`Statuss` = `meetingroom_status`.`ID`))) join `meetingroom_time_start` on((`meetingroom_history_detail`.`MeetingTimeID` = `meetingroom_time_start`.`ID`))) join `meetingroom_user` on((`meetingroom_history_detail`.`UserID` = `meetingroom_user`.`ID`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `list_room`
--
ALTER TABLE `list_room`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `meetingroom_duration`
--
ALTER TABLE `meetingroom_duration`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `meetingroom_history_detail`
--
ALTER TABLE `meetingroom_history_detail`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `mt_start` (`MeetingTimeID`),
  ADD KEY `mt_drn` (`MeetingDurationID`),
  ADD KEY `userid` (`UserID`),
  ADD KEY `sttid` (`Statuss`),
  ADD KEY `roomid` (`RoomID`);

--
-- Indexes for table `meetingroom_status`
--
ALTER TABLE `meetingroom_status`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `meetingroom_time_start`
--
ALTER TABLE `meetingroom_time_start`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `meetingroom_user`
--
ALTER TABLE `meetingroom_user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `list_room`
--
ALTER TABLE `list_room`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `meetingroom_history_detail`
--
ALTER TABLE `meetingroom_history_detail`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6537;
--
-- AUTO_INCREMENT for table `meetingroom_user`
--
ALTER TABLE `meetingroom_user`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `meetingroom_history_detail`
--
ALTER TABLE `meetingroom_history_detail`
  ADD CONSTRAINT `mt_drn` FOREIGN KEY (`MeetingDurationID`) REFERENCES `meetingroom_duration` (`ID`),
  ADD CONSTRAINT `mt_start` FOREIGN KEY (`MeetingTimeID`) REFERENCES `meetingroom_time_start` (`ID`),
  ADD CONSTRAINT `roomid` FOREIGN KEY (`RoomID`) REFERENCES `list_room` (`ID`),
  ADD CONSTRAINT `sttid` FOREIGN KEY (`Statuss`) REFERENCES `meetingroom_status` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
