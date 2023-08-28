SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

DROP TABLE IF EXISTS `bill`;
CREATE TABLE IF NOT EXISTS `bill` (
  `bill_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `book_id` bigint(20) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `gst` int(10) DEFAULT NULL,
  `st` int(10) DEFAULT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;



INSERT INTO `bill` (`bill_id`, `book_id`, `amount`, `bill_date`, `gst`, `st`) VALUES
(1, 1, 770500.00, '2020-12-25', 0, 0),
(2, 2, 500.00, '2020-12-25', 0, 0),
(3, 3, 1600.00, '2020-12-25', 0, 0),
(4, 4, 63000.00, '2020-12-25', 0, 0),
(5, 5, 10500.00, '2020-12-25', 0, 0),
(6, 6, 8000.00, '2020-12-25', 0, 0),
(7, 7, 10500.00, '2020-12-25', 23, 5),
(8, 8, 11500.00, '2020-12-25', 23, 5),
(9, 10, -3400.00, '2020-12-29', 23, 5);



DROP TABLE IF EXISTS `booking`;
CREATE TABLE IF NOT EXISTS `booking` (
  `book_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `room_id` bigint(20) DEFAULT NULL,
  `cust_id` bigint(20) DEFAULT NULL,
  `doo` date DEFAULT NULL,
  `dol` date DEFAULT NULL,
  `advance` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` char(50) DEFAULT NULL,
  `address` char(100) DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `email` char(80) DEFAULT NULL,
  `id_proof` char(20) DEFAULT NULL,
  `id_proof_no` char(25) DEFAULT NULL,
  `males` int(2) DEFAULT NULL,
  `females` int(2) DEFAULT NULL,
  `children` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;




DROP TABLE IF EXISTS `rooms`;
CREATE TABLE IF NOT EXISTS `rooms` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `room_no` int(4) DEFAULT NULL,
  `room_type` char(20) DEFAULT NULL,
  `room_rent` float(10,2) DEFAULT NULL,
  `room_bed` char(20) DEFAULT NULL,
  `status` char(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;




DROP TABLE IF EXISTS `setting`;
CREATE TABLE IF NOT EXISTS `setting` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `field_name` char(30) DEFAULT NULL,
  `value` char(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS `temp`;
CREATE TABLE IF NOT EXISTS `temp` (
  `book_id` bigint(20) NOT NULL DEFAULT '0',
  `doo` date DEFAULT NULL,
  `dol` date DEFAULT NULL,
  `advance` float(10,2) DEFAULT NULL,
  `name` char(50) DEFAULT NULL,
  `address` char(100) DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `email` char(80) DEFAULT NULL,
  `room_no` int(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

