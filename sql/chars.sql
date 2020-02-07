-- phpMyAdmin SQL Dump
-- version 4.3.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 08, 2019 at 01:40 AM
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
-- Table structure for table `chars`
--

DROP TABLE IF EXISTS `chars`;
CREATE TABLE IF NOT EXISTS `chars` (
  `charid` int(10) unsigned NOT NULL,
  `accid` int(10) unsigned NOT NULL,
  `worldid` int(10) unsigned NOT NULL DEFAULT 100,
  `charname` varchar(15) NOT NULL,
  `nation` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `pos_zone` smallint(3) unsigned NOT NULL,
  `pos_prevzone` smallint(3) unsigned NOT NULL DEFAULT 0,
  `pos_rot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `pos_x` float(7,3) NOT NULL DEFAULT 0.000,
  `pos_y` float(7,3) NOT NULL DEFAULT 0.000,
  `pos_z` float(7,3) NOT NULL DEFAULT 0.000,
  `moghouse` int(10) unsigned NOT NULL DEFAULT 0,
  `boundary` smallint(5) unsigned NOT NULL DEFAULT 0,
  `home_zone` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_rot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_x` float(7,3) NOT NULL DEFAULT 0.000,
  `home_y` float(7,3) NOT NULL DEFAULT 0.000,
  `home_z` float(7,3) NOT NULL DEFAULT 0.000,
  `missions` blob DEFAULT NULL,
  `assault` blob DEFAULT NULL,
  `campaign` blob DEFAULT NULL,
  `quests` blob DEFAULT NULL,
  `keyitems` blob DEFAULT NULL,
  `set_blue_spells` blob DEFAULT NULL,
  `abilities` blob DEFAULT NULL,
  `weaponskills` blob DEFAULT NULL,
  `titles` blob DEFAULT NULL,
  `zones` blob DEFAULT NULL,
  `playtime` int(10) unsigned NOT NULL DEFAULT 0,
  `unlocked_weapons` blob DEFAULT NULL,
  `gmlevel` smallint(3) unsigned NOT NULL DEFAULT 0,
  `mentor` smallint(3) NOT NULL DEFAULT 0,
  `campaign_allegiance` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `isstylelocked` tinyint(1) NOT NULL DEFAULT 0,
  `nnameflags` int(10) unsigned NOT NULL DEFAULT 0,
  `moghancement` smallint(4) unsigned NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chars`
--
ALTER TABLE `chars`
  ADD PRIMARY KEY (`charid`), ADD FULLTEXT KEY `charname` (`charname`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
