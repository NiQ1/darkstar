-- phpMyAdmin SQL Dump
-- version 4.3.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 08, 2019 at 05:01 PM
-- Server version: 10.3.12-MariaDB
-- PHP Version: 5.6.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dspdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_parties`
--

DROP TABLE IF EXISTS `accounts_parties`;
CREATE TABLE IF NOT EXISTS `accounts_parties` (
  `charid` int(10) unsigned NOT NULL DEFAULT 0,
  `worldid` int(10) unsigned NOT NULL,
  `partyid` int(10) unsigned NOT NULL DEFAULT 0,
  `partyflag` smallint(5) unsigned NOT NULL DEFAULT 0,
  `allianceid` int(10) unsigned NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_parties`
--
ALTER TABLE `accounts_parties`
  ADD PRIMARY KEY (`charid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_parties`
--
ALTER TABLE `accounts_parties`
ADD CONSTRAINT `accounts_parties_ibfk_1` FOREIGN KEY (`charid`) REFERENCES `accounts_sessions` (`charid`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
