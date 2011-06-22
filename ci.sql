-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 21, 2011 at 06:56 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `ci`
--
CREATE DATABASE `ci` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci;
USE `ci`;

-- --------------------------------------------------------

--
-- Table structure for table `test1`
--

CREATE TABLE IF NOT EXISTS `test1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(250) NOT NULL,
  `dates` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `test1`
--

INSERT INTO `test1` (`id`, `text`, `dates`) VALUES
(24, 'sq', '12-06-2011 03:19:02'),
(23, 'assss', '12-06-2011 03:18:59'),
(22, 'aw', '12-06-2011 03:18:55'),
(19, 'adasd', '12-06-2011 03:17:48'),
(20, 'aw', '12-06-2011 03:17:50'),
(21, 'aw', '12-06-2011 03:18:24'),
(25, '0', '13-06-2011 03:17:47'),
(26, 'test', '13-06-2011 03:18:00'),
(27, 'b', '13-06-2011 03:18:05'),
(28, 'b', '13-06-2011 03:30:24'),
(29, 'b', '13-06-2011 03:31:00'),
(30, 'b', '13-06-2011 03:32:00'),
(31, '0', '14-06-2011 07:19:40'),
(32, '0', '14-06-2011 08:27:06'),
(33, '0', '14-06-2011 08:30:13'),
(34, '0', '14-06-2011 08:30:44'),
(35, '0', '14-06-2011 08:31:43'),
(36, 'a', '14-06-2011 08:31:48'),
(37, 'a', '14-06-2011 08:32:05'),
(38, '0', '14-06-2011 09:15:20'),
(39, 'b', '14-06-2011 09:15:43'),
(40, '0', '15-06-2011 07:29:00');

-- --------------------------------------------------------

--
-- Table structure for table `test2`
--

CREATE TABLE IF NOT EXISTS `test2` (
  `id` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `alamat` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `sekolah` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `the time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `test2`
--

INSERT INTO `test2` (`id`, `nama`, `alamat`, `sekolah`, `the time`) VALUES
('061121065043', 'teguh akbar', 'jl. cijagra I', 'universitas widyatama', '0000-00-00 00:00:00'),
('061121065518', 'raka akbar', 'jl. cijagra I', 'institute teknologi bandung', '2011-06-21 11:55:18');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `password` text COLLATE latin1_general_ci NOT NULL,
  `fullname` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `fullname`) VALUES
(4, 'teguh', '0cc175b9c0f1b6a831c399e269772661', 'akbar'),
(5, 'codeigniter', '0cc175b9c0f1b6a831c399e269772661', 'codeigniter');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'june', '11501255f17710952e79563ddc090a4d');

-- --------------------------------------------------------

--
-- Table structure for table `wall_post`
--

CREATE TABLE IF NOT EXISTS `wall_post` (
  `id` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `the_post` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `the_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `wall_post`
--

INSERT INTO `wall_post` (`id`, `the_post`, `the_time`) VALUES
('061121053340', 'aaa', '2011-06-21 10:33:40'),
('061121053236', 'abcdefg', '2011-06-21 10:32:36'),
('061121052956', 'teguh', '2011-06-21 10:29:56'),
('061121052834', 'teguh akbar', '2011-06-21 10:28:34'),
('061121052731', 'akaguh', '2011-06-21 10:27:31'),
('061121052705', 'dddd', '2011-06-21 10:27:05'),
('061121052547', 'teguh', '2011-06-21 10:25:47');
