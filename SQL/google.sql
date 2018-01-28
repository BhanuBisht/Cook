-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2018 at 12:24 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `google`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `oauth_provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `oauth_uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `oauth_provider`, `oauth_uid`, `first_name`, `last_name`, `email`, `gender`, `locale`, `picture`, `link`, `created`, `modified`) VALUES
(1, 'google', '111514340546052251983', 'Bhanu', 'Bisht', 'bhanucool09@gmail.com', '', 'en', 'https://lh4.googleusercontent.com/-ITkOyAbI4hU/AAAAAAAAAAI/AAAAAAAAAEc/xVkl6qM9cUo/photo.jpg', 'https://plus.google.com/111514340546052251983', '2018-01-21 04:35:36', '2018-01-21 04:35:37'),
(2, 'google', '114354287463040031731', 'Bhanu', 'PIET/15/CE/026', '2015pietcsbhanu@poornima.org', '', 'en', 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg', '', '2018-01-21 04:40:24', '2018-01-22 15:41:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2018 at 12:24 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Email_id` varchar(50) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `BoardCode` int(10) NOT NULL,
  `BranchCode` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Email_id`, `Password`, `Name`, `BoardCode`, `BranchCode`) VALUES
('admin@admin.org', 'admin1@', 'Admin', 2121212121, 2141562123),
('bhanu@bhanu.org', '123', 'Bhanu Bisht', 1111111111, 1211215672);

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `BillNo` int(20) NOT NULL,
  `UserKno` int(20) NOT NULL,
  `Tot_Amount` int(10) NOT NULL,
  `Tot_Amount_After_LDOS` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `e_board`
--

CREATE TABLE `e_board` (
  `PanNo` int(10) NOT NULL,
  `GSTIN` varchar(20) NOT NULL,
  `BoardName` varchar(20) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `PinCode` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `e_board`
--

INSERT INTO `e_board` (`PanNo`, `GSTIN`, `BoardName`, `Phone`, `Address`, `PinCode`) VALUES
(1111111111, 'ABN12CZ223', 'JVVNL', '9828334455', 'Pratap Nagar, Sanganer', 302033),
(1233211230, 'LMN45QQ456', 'DVVNL', '9928175125', 'Hathi Khana, Chandni Chowk', 402044),
(2121212121, 'CZX33CV123', 'MVVNL', '9020557799', 'MVVNL Board, Gandhi Marg', 102030);

-- --------------------------------------------------------

--
-- Table structure for table `e_board_branches`
--

CREATE TABLE `e_board_branches` (
  `B_Code` int(10) NOT NULL,
  `B_Name` varchar(20) NOT NULL,
  `PhoneNo` varchar(15) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `BoardPanNo` int(10) NOT NULL,
  `PinCode` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `e_board_branches`
--

INSERT INTO `e_board_branches` (`B_Code`, `B_Name`, `PhoneNo`, `Email`, `Address`, `BoardPanNo`, `PinCode`) VALUES
(1211215672, 'DVVNL', '8769536828', 'b@gmail.com', 'Rohini,  New Delhi', 1233211230, 402044),
(1234560889, 'JVVNLPratapNagar', '9928175223', 'bhanucool09@gmail.com', 'Sec-5, Pratap Nagar, Sanganer', 1111111111, 302033),
(2141562123, 'MVVNLBhopalBranch', '8875707756', 'bhanubisht1209@gmail.com', 'Gandhi Circle, Hirapura', 2121212121, 115566);

-- --------------------------------------------------------

--
-- Table structure for table `past_rec`
--

CREATE TABLE `past_rec` (
  `BillNo` int(20) NOT NULL,
  `KNo` int(20) NOT NULL,
  `UnitCon` int(10) NOT NULL,
  `Amount` int(10) NOT NULL,
  `Duration` varchar(20) NOT NULL,
  `DOR` date NOT NULL,
  `Paid` int(10) NOT NULL,
  `Unpaid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pres_rec`
--

CREATE TABLE `pres_rec` (
  `BillNo` int(20) NOT NULL,
  `Kno` int(20) NOT NULL,
  `UnitCon` int(10) NOT NULL,
  `Amount` int(10) NOT NULL,
  `Duration` varchar(20) NOT NULL,
  `DOR` date NOT NULL,
  `LDOS` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `PinCode` int(8) NOT NULL,
  `UnitCost` int(10) NOT NULL,
  `ConsuptionRange` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rate`
--

INSERT INTO `rate` (`PinCode`, `UnitCost`, `ConsuptionRange`) VALUES
(102030, 17, '001-300'),
(102030, 20, 'MoreThan300'),
(112233, 18, '000-999'),
(112233, 22, 'MoreThan999'),
(115566, 13, '001-500'),
(115566, 15, 'MoreThan500'),
(122133, 20, 'MoreThan0'),
(302033, 12, '001-300'),
(302033, 15, '301-500'),
(302033, 18, 'MoreThan500');

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `PinCode` int(8) NOT NULL,
  `RegionName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`PinCode`, `RegionName`) VALUES
(102030, 'Pune'),
(112233, 'Kolkata'),
(115566, 'Bhopal'),
(122132, 'Kanpur'),
(122133, 'Kota'),
(123456, 'Jodhpur'),
(302033, 'Jaipur'),
(304020, 'Bangalore'),
(334455, 'Agra'),
(402044, 'Delhi'),
(654321, 'Surat'),
(778899, 'Ajmer');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `KNo` int(20) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `CMetreNo` int(20) NOT NULL,
  `AccountNo` int(20) NOT NULL,
  `CName` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `MobileNo` int(15) NOT NULL,
  `CType` varchar(20) NOT NULL,
  `BoardPanNo` int(10) NOT NULL,
  `B_code` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Email_id`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`BillNo`),
  ADD KEY `UserKno` (`UserKno`);

--
-- Indexes for table `e_board`
--
ALTER TABLE `e_board`
  ADD PRIMARY KEY (`PanNo`),
  ADD KEY `PinCode` (`PinCode`);

--
-- Indexes for table `e_board_branches`
--
ALTER TABLE `e_board_branches`
  ADD PRIMARY KEY (`B_Code`),
  ADD KEY `BoardPanNo` (`BoardPanNo`),
  ADD KEY `PinCode` (`PinCode`);

--
-- Indexes for table `past_rec`
--
ALTER TABLE `past_rec`
  ADD PRIMARY KEY (`BillNo`),
  ADD KEY `KNo` (`KNo`);

--
-- Indexes for table `pres_rec`
--
ALTER TABLE `pres_rec`
  ADD PRIMARY KEY (`BillNo`),
  ADD KEY `Kno` (`Kno`);

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`PinCode`,`ConsuptionRange`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`PinCode`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`KNo`),
  ADD KEY `BoardPanNo` (`BoardPanNo`),
  ADD KEY `B_code` (`B_code`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`UserKno`) REFERENCES `user` (`KNo`);

--
-- Constraints for table `e_board`
--
ALTER TABLE `e_board`
  ADD CONSTRAINT `e_board_ibfk_1` FOREIGN KEY (`PinCode`) REFERENCES `region` (`PinCode`);

--
-- Constraints for table `e_board_branches`
--
ALTER TABLE `e_board_branches`
  ADD CONSTRAINT `e_board_branches_ibfk_1` FOREIGN KEY (`BoardPanNo`) REFERENCES `e_board` (`PanNo`),
  ADD CONSTRAINT `e_board_branches_ibfk_2` FOREIGN KEY (`PinCode`) REFERENCES `region` (`PinCode`);

--
-- Constraints for table `past_rec`
--
ALTER TABLE `past_rec`
  ADD CONSTRAINT `past_rec_ibfk_1` FOREIGN KEY (`KNo`) REFERENCES `user` (`KNo`);

--
-- Constraints for table `pres_rec`
--
ALTER TABLE `pres_rec`
  ADD CONSTRAINT `pres_rec_ibfk_1` FOREIGN KEY (`Kno`) REFERENCES `user` (`KNo`);

--
-- Constraints for table `rate`
--
ALTER TABLE `rate`
  ADD CONSTRAINT `rate_ibfk_1` FOREIGN KEY (`PinCode`) REFERENCES `region` (`PinCode`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`BoardPanNo`) REFERENCES `e_board` (`PanNo`),
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`B_code`) REFERENCES `e_board_branches` (`B_Code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;