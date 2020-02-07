-- phpMyAdmin SQL Dump
-- version 4.3.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 09, 2019 at 10:18 PM
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
-- Table structure for table `accounts_sessions`
--

DROP TABLE IF EXISTS `accounts_sessions`;
CREATE TABLE IF NOT EXISTS `accounts_sessions` (
  `accid` int(10) unsigned NOT NULL DEFAULT 0,
  `charid` int(10) unsigned NOT NULL DEFAULT 0,
  `worldid` int(10) NOT NULL,
  `targid` smallint(5) unsigned NOT NULL DEFAULT 0,
  `linkshellid1` int(10) unsigned NOT NULL DEFAULT 0,
  `linkshellrank1` smallint(5) unsigned NOT NULL DEFAULT 0,
  `linkshellid2` int(10) unsigned NOT NULL DEFAULT 0,
  `linkshellrank2` smallint(5) unsigned NOT NULL DEFAULT 0,
  `session_key` binary(20) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `server_addr` int(10) unsigned zerofill NOT NULL DEFAULT 0000000000,
  `server_port` smallint(5) unsigned NOT NULL DEFAULT 0,
  `client_addr` int(10) unsigned zerofill NOT NULL DEFAULT 0000000000,
  `client_port` smallint(5) unsigned NOT NULL DEFAULT 0,
  `version_mismatch` tinyint(1) unsigned NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_sessions`
--
ALTER TABLE `accounts_sessions`
  ADD PRIMARY KEY (`charid`), ADD KEY `accid` (`accid`), ADD KEY `charid` (`charid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
