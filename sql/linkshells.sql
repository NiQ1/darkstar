-- phpMyAdmin SQL Dump
-- version 4.3.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 08, 2019 at 05:27 PM
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
-- Table structure for table `linkshells`
--

DROP TABLE IF EXISTS `linkshells`;
CREATE TABLE IF NOT EXISTS `linkshells` (
  `linkshellid` int(10) unsigned NOT NULL,
  `worldid` int(10) unsigned NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT '',
  `color` smallint(5) unsigned NOT NULL DEFAULT 61440,
  `poster` varchar(15) NOT NULL DEFAULT '',
  `message` blob DEFAULT NULL,
  `messagetime` int(10) unsigned NOT NULL DEFAULT 0,
  `postrights` tinyint(3) unsigned NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `linkshells`
--
ALTER TABLE `linkshells`
  ADD PRIMARY KEY (`linkshellid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `linkshells`
--
ALTER TABLE `linkshells`
  MODIFY `linkshellid` int(10) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
