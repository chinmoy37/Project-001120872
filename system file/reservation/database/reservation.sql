-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 30, 2020 at 10:04 AM
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
-- Database: `reservation`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

DROP TABLE IF EXISTS `announcement`;
CREATE TABLE IF NOT EXISTS `announcement` (
  `announcement_id` int(11) NOT NULL AUTO_INCREMENT,
  `annouce_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `annouce_place` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `annouce_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `details` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`announcement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(6, 'Main Course'),
(9, 'Dessert'),
(10, 'Rice'),
(11, 'Main desh');

-- --------------------------------------------------------

--
-- Table structure for table `combo`
--

DROP TABLE IF EXISTS `combo`;
CREATE TABLE IF NOT EXISTS `combo` (
  `combo_id` int(11) NOT NULL AUTO_INCREMENT,
  `combo_name` varchar(100) NOT NULL,
  `combo_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`combo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `combo`
--

INSERT INTO `combo` (`combo_id`, `combo_name`, `combo_price`) VALUES
(2, 'Package 1', '180.00'),
(3, 'Package 2', '100.00'),
(4, 'Package 3', '180.00'),
(5, 'Daily', '80.00'),
(8, 'package 4', '160.00');

-- --------------------------------------------------------

--
-- Table structure for table `combo_details`
--

DROP TABLE IF EXISTS `combo_details`;
CREATE TABLE IF NOT EXISTS `combo_details` (
  `combo_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `combo_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`combo_details_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `combo_details`
--

INSERT INTO `combo_details` (`combo_details_id`, `combo_id`, `menu_id`) VALUES
(4, 2, 3),
(7, 2, 5),
(8, 2, 7),
(9, 2, 12),
(10, 1, 10),
(11, 1, 11),
(12, 1, 14),
(13, 3, 6),
(14, 3, 8),
(15, 3, 13),
(16, 4, 3),
(17, 4, 5),
(18, 4, 6),
(19, 4, 12),
(20, 5, 3),
(21, 5, 9),
(22, 6, 3),
(23, 6, 8),
(24, 6, 10),
(25, 6, 13),
(26, 5, 6),
(27, 5, 7),
(28, 5, 8),
(29, 5, 10),
(30, 5, 11),
(31, 5, 14),
(32, 7, 5),
(33, 7, 6),
(34, 7, 7),
(35, 8, 5),
(36, 8, 6),
(37, 8, 7),
(38, 8, 21);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
CREATE TABLE IF NOT EXISTS `event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_what` varchar(500) NOT NULL,
  `event_date` date NOT NULL,
  `event_time` time NOT NULL,
  `event_where` varchar(100) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `event_what`, `event_date`, `event_time`, `event_where`) VALUES
(2, 'Birthday', '2020-11-29', '18:30:00', 'Kollyanpur, dhaka'),
(3, 'Birthday', '2020-12-03', '19:28:00', 'L5');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_last` varchar(15) NOT NULL,
  `member_first` varchar(15) NOT NULL,
  `member_status` varchar(10) NOT NULL,
  `member_contact` varchar(30) NOT NULL,
  `member_address` varchar(100) NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `member_last`, `member_first`, `member_status`, `member_contact`, `member_address`) VALUES
(1, 'bangi', 'homelender', 'active', '0168999999', 'afdad'),
(2, 'cartoon', 'borhani', 'active', '0172223321', 'asdasda'),
(3, 'Gota', 'JP', 'active', '01725895411', 'Badda'),
(4, 'ramu', 'V', 'active', '582297611', 'Dhanmondi 32');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(50) NOT NULL,
  `cat_id` int(30) NOT NULL,
  `subcat_name` varchar(30) NOT NULL,
  `menu_desc` varchar(100) NOT NULL,
  `menu_price` decimal(10,2) NOT NULL,
  `menu_pic` varchar(100) NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `cat_id`, `subcat_name`, `menu_desc`, `menu_price`, `menu_pic`) VALUES
(1, 'Beef Simo', 9, 'Non Combo Meal', 'Beef Salpicao', '100.00', 'images.jfif'),
(2, 'Bakareta', 2, 'pork', 'Pork Adobo', '100.00', 'indian-food-platter.jpg'),
(3, 'Chicken Curry', 10, 'Lunch and Dinner', 'Chicken Curry', '50.00', 'keto-fried-chicken-18.jpg'),
(5, 'Sada polaow', 9, 'Lunch and Dinner', 'Sada polaow', '50.00', '05c508_86194fe1f7a7497bada1f5d1a18a6beb_mv2.jpg'),
(6, 'Murgi gusto', 9, 'Non Combo Meal', 'Gusto', '70.00', 'maxresdefault.jpg'),
(7, 'Dim Vuna', 9, 'Non Combo Meal', 'Dim vuna', '30.00', 'egg_curry.jpg'),
(8, 'Vuna khicuri ', 9, 'Non Combo Meal', 'Vuna khicuri ', '70.00', 'Vuna khicuri.jpg'),
(9, 'murgir fry', 9, 'Non Combo Meal', 'murgir fry', '50.00', 'keto-fried-chicken-18.jpg'),
(10, 'gorur rejala', 9, 'Non Combo Meal', 'gorur rejala', '70.00', '710f5b26ea2474c394dd5b45d740d160.jpg'),
(11, 'finni', 9, 'Lunch and Dinner', 'finni', '25.00', 'aid738550-v4-1200px-Make-Phirni-(a-Rice-and-Milk-Dish)-Step-9.jpg'),
(12, 'Coke', 9, 'Drinks', 'Cold Drinks', '30.00', 'download.jfif'),
(13, 'Mirinda ', 9, 'Drinks', 'Drinks', '30.00', '1-190.jpg'),
(14, 'vat', 9, 'Non Combo Meal', 'Vat', '15.00', 'images (1).jfif'),
(21, '7up', 9, 'Drinks', '1 lit', '70.00', '8857e8c8-2fc7-431a-9f28-4fbd11f77664_1.c27f622c3d4b9ada7013fb563740be8d.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `fullname`, `email`, `subject`, `message`, `date`) VALUES
(2, 'bangi', '1000118@daffodil.ac', 'feedback', 'good service', '2020-11-17 08:23:40'),
(4, 'l1', '1000117@gmail.com', 'feedback', ' service is good', '2020-11-30 03:03:25');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `payment_date` date NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `amount`, `rid`, `payment_date`) VALUES
(1, 2000, 42, '2017-04-28'),
(2, 2000, 48, '2020-11-17'),
(3, 3000, 48, '2020-11-17'),
(4, 3000, 50, '2020-11-17'),
(5, 21750, 50, '2020-11-19'),
(6, 3000, 49, '2020-11-19'),
(7, 2000, 49, '2020-11-19'),
(8, 2000, 56, '2020-11-21'),
(9, 1000, 56, '2020-11-21'),
(10, 6000, 56, '2020-11-21'),
(11, 3000, 55, '2020-11-21'),
(12, 3000, 62, '2020-11-23'),
(13, 20800, 63, '2020-11-23'),
(14, 800, 57, '2020-11-23'),
(15, 1000, 49, '2020-11-24'),
(16, 1000, 49, '2020-11-24'),
(17, 200, 60, '2020-11-24'),
(18, 14560, 59, '2020-11-24'),
(19, 1000, 69, '2020-11-24'),
(20, 500, 70, '2020-11-30'),
(21, 30000, 71, '2020-11-30');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `r_date` date DEFAULT NULL,
  `r_time` time DEFAULT NULL,
  `r_last` varchar(30) NOT NULL,
  `r_first` varchar(30) NOT NULL,
  `r_contact` varchar(30) NOT NULL,
  `r_email` varchar(50) NOT NULL,
  `r_address` varchar(100) NOT NULL,
  `r_type` varchar(30) DEFAULT NULL,
  `r_ocassion` varchar(50) DEFAULT NULL,
  `r_motif` varchar(30) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `r_venue` varchar(100) DEFAULT NULL,
  `payable` decimal(10,2) DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT NULL,
  `r_status` varchar(10) DEFAULT NULL,
  `date_reserved` date NOT NULL,
  `r_code` varchar(100) NOT NULL,
  `pax` int(11) DEFAULT NULL,
  `combo_id` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `modeofpayment` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`rid`, `r_date`, `r_time`, `r_last`, `r_first`, `r_contact`, `r_email`, `r_address`, `r_type`, `r_ocassion`, `r_motif`, `team_id`, `r_venue`, `payable`, `balance`, `r_status`, `date_reserved`, `r_code`, `pax`, `combo_id`, `price`, `modeofpayment`) VALUES
(56, '2020-11-24', '01:28:00', '47', 'cross', '01725895412', 'cross@gmail.com', 'gotham', 'buffet', 'Others', 'event', 4, 'smallvill', '9000.00', '0.00', 'Finished', '2020-11-21', 'HgLASzkY9Ke', 50, 4, '180.00', 'Bkash'),
(57, '2020-11-25', '12:34:00', 'warrior', 'snp', '544444', 'sw@gmail.com', 'kollyanpur', 'buffet', 'Birthday', 'event', NULL, 'kollyanpur', '1800.00', '1000.00', 'Approved', '2020-11-22', '6VreC2urun1', 10, 6, '180.00', 'Credit Card'),
(60, '2020-11-25', '14:23:00', 'b.b', 'asta', '61518717', 'asta@gmail.com', 'dfdfgd', 'buffet', 'Christmas Party', 'event', NULL, 'uifgjohif', '1800.00', '1600.00', 'Approved', '2020-11-22', 'qrD8bJYrgoP', 10, 2, '180.00', 'Credit Card'),
(61, '2020-11-27', '17:03:00', 'Mr', 'zero', '0172589444', 'zero@gmail.com', 'sebdj', 'plated', 'Others', 'event', NULL, 'swieiu', '1000.00', '1000.00', 'pending', '2020-11-22', 'jNKGRf5yQUF', 10, 3, '100.00', 'Credit Card'),
(62, '2020-11-30', '10:55:00', 'm.p.', 'nami', '017258445', 'nami@gmail.com', 'fddfg', 'plated', 'Wedding', 'event', 4, 'sgsdf', '5400.00', '2400.00', 'Approved', '2020-11-23', 'SfKHVNcTzmD', 30, 6, '180.00', 'Credit Card'),
(63, '2020-11-29', '11:30:00', 'b.c.', 'yuno', '017258954555', 'yuno@gmail.com', 'adfsdfs', 'plated', 'Daily', 'daily', NULL, 'xdfdf', '20800.00', '0.00', 'Finished', '2020-11-23', 'Ynp2xpSoa4v', 10, 5, '80.00', 'Bkash'),
(70, '2020-12-02', '16:30:00', 'L1', 'U1', '017222222', '1000117@gmail.com', 'L1', 'buffet', 'Christmas Party', 'event', 4, 'V1', '1000.00', '500.00', 'Approved', '2020-11-30', 'BsAv5UrllSz', 10, 3, '100.00', 'Credit Card'),
(71, '2020-12-01', '13:30:00', 'l2', 'u2', '0255222', '1000118@gmail.com', 'L3', 'plated', 'Daily', 'daily', 4, 'v2', '31200.00', '1200.00', 'Approved', '2020-11-30', '57D94dEbTpe', 15, 5, '80.00', 'Bkash');

-- --------------------------------------------------------

--
-- Table structure for table `r_combo`
--

DROP TABLE IF EXISTS `r_combo`;
CREATE TABLE IF NOT EXISTS `r_combo` (
  `r_combo_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `r_details_id` int(11) NOT NULL,
  PRIMARY KEY (`r_combo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `r_details`
--

DROP TABLE IF EXISTS `r_details`;
CREATE TABLE IF NOT EXISTS `r_details` (
  `r_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `combo_id` int(11) NOT NULL,
  `r_nop` int(10) NOT NULL,
  `r_total` decimal(10,2) NOT NULL,
  `r_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`r_details_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `r_noncombo`
--

DROP TABLE IF EXISTS `r_noncombo`;
CREATE TABLE IF NOT EXISTS `r_noncombo` (
  `r_non_id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `serve` int(11) NOT NULL,
  PRIMARY KEY (`r_non_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
CREATE TABLE IF NOT EXISTS `subcategory` (
  `subcat_id` int(11) NOT NULL AUTO_INCREMENT,
  `subcat_name` varchar(30) NOT NULL,
  PRIMARY KEY (`subcat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`subcat_id`, `subcat_name`) VALUES
(1, 'Non Combo Meal'),
(3, 'Lunch and Dinner'),
(10, 'Drinks'),
(11, 'combo meal');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
CREATE TABLE IF NOT EXISTS `team` (
  `team_id` int(11) NOT NULL AUTO_INCREMENT,
  `team_name` varchar(50) NOT NULL,
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`team_id`, `team_name`) VALUES
(3, 'team 1'),
(4, 'team 2'),
(5, 'team 3'),
(6, 'team4');

-- --------------------------------------------------------

--
-- Table structure for table `team_member`
--

DROP TABLE IF EXISTS `team_member`;
CREATE TABLE IF NOT EXISTS `team_member` (
  `team_member_id` int(11) NOT NULL AUTO_INCREMENT,
  `team_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  PRIMARY KEY (`team_member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team_member`
--

INSERT INTO `team_member` (`team_member_id`, `team_id`, `member_id`) VALUES
(1, 2, 1),
(2, 2, 2),
(3, 3, 1),
(4, 3, 2),
(5, 4, 3),
(6, 4, 4),
(7, 6, 1),
(8, 6, 3),
(9, 5, 2),
(10, 5, 3),
(11, 3, 2),
(12, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(50) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `full_name`, `username`, `password`, `status`) VALUES
(1, 'Chinmoy Kumar Das', 'admin', '123', 'active');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
