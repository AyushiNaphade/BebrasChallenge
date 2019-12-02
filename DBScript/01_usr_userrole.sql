-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Nov 20, 2019 at 05:09 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bebas`
--

-- --------------------------------------------------------

--
-- Table structure for table `usr_userrole`
--

CREATE TABLE `usr_userrole` (
  `userRoleID` bigint(20) NOT NULL,
  `userID` bigint(20) NOT NULL,
  `RoleID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `usr_userrole`
--
ALTER TABLE `usr_userrole`
  ADD PRIMARY KEY (`userRoleID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `RoleID` (`RoleID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `usr_userrole`
--
ALTER TABLE `usr_userrole`
  MODIFY `userRoleID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `usr_userrole`
--
ALTER TABLE `usr_userrole`
  ADD CONSTRAINT `usr_userrole_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `usr_user` (`userID`),
  ADD CONSTRAINT `usr_userrole_ibfk_2` FOREIGN KEY (`RoleID`) REFERENCES `usr_role` (`RoleID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
