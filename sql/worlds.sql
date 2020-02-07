-- phpMyAdmin SQL Dump
-- version 4.3.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 08, 2019 at 02:06 PM
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
-- Table structure for table `worlds`
--

DROP TABLE IF EXISTS `worlds`;
CREATE TABLE IF NOT EXISTS `worlds` (
  `worldid` int(10) unsigned NOT NULL,
  `worldname` varchar(15) DEFAULT NULL,
  `online` tinyint(1) NOT NULL DEFAULT 1,
  `testworld` tinyint(1) NOT NULL DEFAULT 0,
  `motd` varchar(512) DEFAULT NULL,
  `searchip` varchar(64) NOT NULL,
  `searchport` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `worlds`
--

INSERT INTO `worlds` (`worldid`, `worldname`, `online`, `testworld`, `motd`, `searchip`, `searchport`) VALUES
(100, NULL, 1, 0, NULL, '127.0.0.1', 54002);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `worlds`
--
ALTER TABLE `worlds`
  ADD PRIMARY KEY (`worldid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
