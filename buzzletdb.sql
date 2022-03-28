-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 16, 2021 at 03:41 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buzzletdb`
--
CREATE DATABASE IF NOT EXISTS `buzzletdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `buzzletdb`;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
CREATE TABLE IF NOT EXISTS `question` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`question_id`),
  KEY `quiz_id_idx` (`quiz_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`question_id`, `question`, `answer`, `quiz_id`, `date_created`) VALUES
(1, 'What is the color of the sky', 'blue', 1, '2020-09-08 12:16:25'),
(2, 'What is the capital of Canada', 'Ottawa', 1, '2020-09-08 12:16:25'),
(8, 'd', 'd', 3, '2021-12-15 18:38:49'),
(9, 'Write A 20 times', 'AAAAAAAAAAAAAAAAAAAA', 3, '2021-12-15 19:06:39'),
(10, 'Write A 20 times', 'AAAAAAAAAAAAAAAAAAAA', 3, '2021-12-15 19:07:26');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
CREATE TABLE IF NOT EXISTS `quiz` (
  `quiz_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`quiz_id`),
  KEY `userid_idx` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`quiz_id`, `title`, `date_created`, `user_id`) VALUES
(1, 'Nick\'s quiz', '2020-09-08 12:14:42', 1),
(2, 'quiztest2', '2021-12-15 11:27:39', 2),
(3, 'Alex\'s Quiz', '2021-12-15 11:28:22', 2),
(4, 'Potato Quiz', '2021-12-15 11:28:53', 2),
(5, 'test3', '2021-12-15 14:20:39', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `date_created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `password`, `date_created`) VALUES
(1, 'nicktaggart', 'password', '2020-09-08 12:13:26'),
(2, 'alex', 'abc123', '2021-12-03 14:34:33'),
(3, 'test2', 'pass2', '2021-12-03 14:36:01'),
(7, 'alex', 'e', '2021-12-03 14:52:06');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `userid` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
