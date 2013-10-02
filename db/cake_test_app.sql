-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 02, 2013 at 01:00 PM
-- Server version: 5.5.32-0ubuntu0.12.04.1
-- PHP Version: 5.5.4-1+debphp.org~precise+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cake_test_app`
--
CREATE DATABASE IF NOT EXISTS `cake_test_app` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cake_test_app`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `created`, `modified`) VALUES
(1, 'Animals', '2013-05-30 21:02:26', '2013-05-30 21:02:26'),
(2, 'Jobs', '2013-05-30 21:03:15', '2013-05-30 21:03:15');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `created`, `modified`) VALUES
(1, 'Recombu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Campaigns', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Symfony2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Cake2', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `groups_users`
--

CREATE TABLE IF NOT EXISTS `groups_users` (
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups_users`
--

INSERT INTO `groups_users` (`group_id`, `user_id`) VALUES
(2, 1),
(4, 1),
(1, 2),
(3, 2),
(1, 3),
(3, 3),
(1, 4),
(2, 4),
(3, 4),
(4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE IF NOT EXISTS `lessons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `name`, `created`, `modified`) VALUES
(1, 'Latin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Geography', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Classics', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Mathematics', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Biology', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Chemistry', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Physics', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'English', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Mandarin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Craft design technology', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lessons_pupils`
--

CREATE TABLE IF NOT EXISTS `lessons_pupils` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lesson_id` int(11) NOT NULL,
  `pupil_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `lessons_pupils`
--

INSERT INTO `lessons_pupils` (`id`, `lesson_id`, `pupil_id`) VALUES
(4, 1, 2),
(5, 2, 2),
(6, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pupils`
--

CREATE TABLE IF NOT EXISTS `pupils` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `student_number` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `pupils`
--

INSERT INTO `pupils` (`id`, `name`, `student_number`, `created`, `modified`) VALUES
(1, 'David', 1, '2013-06-07 09:57:28', '2013-06-07 11:21:12'),
(2, 'Stuart', 2, '2013-06-07 10:52:07', '2013-06-07 10:52:07');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE IF NOT EXISTS `statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `created`, `modified`) VALUES
(1, 'Live', '2013-07-20 00:31:57', '2013-07-20 00:31:57'),
(2, 'Inactive', '2013-07-20 00:31:57', '2013-07-20 00:31:57'),
(3, 'Protected live', '2013-07-20 00:31:57', '2013-07-20 00:31:57'),
(4, 'Protected inactive', '2013-07-20 00:00:00', '2013-07-20 00:00:00'),
(5, 'Archived', '2013-07-20 00:31:57', '2013-07-20 00:31:57'),
(6, 'Deleted', '2013-07-20 00:31:57', '2013-07-20 00:31:57');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `category_id`, `created`, `modified`) VALUES
(1, 'Cat', 1, '2013-05-30 21:03:54', '2013-05-30 21:03:54'),
(2, 'Dog', 1, '2013-05-30 21:04:01', '2013-05-30 21:04:01'),
(3, 'Developer', 2, '2013-05-30 21:04:19', '2013-05-30 21:04:19'),
(4, 'Designer', 2, '2013-05-30 21:04:30', '2013-05-30 21:04:30'),
(5, 'Project Manager', 2, '2013-05-30 21:04:41', '2013-05-30 21:04:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `deleted_date` datetime NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `status_id`, `deleted_date`, `created`, `modified`) VALUES
(1, 'Dave', 'dave@example.com', 1, '0000-00-00 00:00:00', '2013-07-20 00:28:12', '2013-07-20 00:28:12'),
(2, 'Stu', 'stu@example.com', 1, '0000-00-00 00:00:00', '2013-07-20 00:28:12', '2013-07-20 00:28:12'),
(3, 'Adam', 'adam@example.com', 3, '0000-00-00 00:00:00', '2013-07-20 00:28:12', '2013-07-20 00:28:12'),
(4, 'Owen', 'owen@example.com', 1, '0000-00-00 00:00:00', '2013-07-20 00:28:12', '2013-09-19 21:47:49'),
(7, 'George', 'george@example.com', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
