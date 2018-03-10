-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 23, 2014 at 04:11 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mycricket`
--
CREATE DATABASE `mycricket` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mycricket`;

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE IF NOT EXISTS `administrator` (
  `username` char(25) DEFAULT NULL,
  `password` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`username`, `password`) VALUES
('admin', 'mycricketadmin');

-- --------------------------------------------------------

--
-- Table structure for table `awayvenue`
--

CREATE TABLE IF NOT EXISTS `awayvenue` (
  `venue` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `awayvenue`
--

INSERT INTO `awayvenue` (`venue`) VALUES
('Sydney'),
('Melbourne'),
('Perth'),
('Adelaide'),
('Brisbane'),
('Oval'),
('Old Trafford'),
('Lords'),
('Headingley');

-- --------------------------------------------------------

--
-- Table structure for table `batsman`
--

CREATE TABLE IF NOT EXISTS `batsman` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(20) DEFAULT NULL,
  `tag` char(15) DEFAULT NULL,
  `batavghome` float(20,2) DEFAULT NULL,
  `batavgaway` float(20,2) DEFAULT NULL,
  `perfprev` int(3) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `batsman`
--

INSERT INTO `batsman` (`ID`, `name`, `tag`, `batavghome`, `batavgaway`, `perfprev`) VALUES
(1, 'MS Dhoni', 'wktkeeper', 50.32, 50.21, 257),
(2, 'Sachin Tendulkar', 'Opener', 45.53, 49.59, 275);

-- --------------------------------------------------------

--
-- Table structure for table `bowler`
--

CREATE TABLE IF NOT EXISTS `bowler` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(20) DEFAULT NULL,
  `tag` char(15) DEFAULT NULL,
  `bowlavghome` float(20,2) DEFAULT NULL,
  `bowlavgaway` float(20,2) DEFAULT NULL,
  `perfprev` int(3) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `bowler`
--

INSERT INTO `bowler` (`ID`, `name`, `tag`, `bowlavghome`, `bowlavgaway`, `perfprev`) VALUES
(1, 'Bhuvneshwar Kumar', 'newballbowler', 24.25, 28.20, 12),
(2, 'Harbhajan Singh', 'Offbreak', 26.52, 30.23, 5);

-- --------------------------------------------------------

--
-- Table structure for table `domestic`
--

CREATE TABLE IF NOT EXISTS `domestic` (
  `format` char(10) DEFAULT NULL,
  `name` char(20) NOT NULL DEFAULT '',
  `teamno` int(2) DEFAULT NULL,
  `date` date NOT NULL DEFAULT '0000-00-00',
  `matchno` int(2) DEFAULT NULL,
  PRIMARY KEY (`name`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `domestic`
--

INSERT INTO `domestic` (`format`, `name`, `teamno`, `date`, `matchno`) VALUES
('T20', 'Duleep Trophy', 8, '0201-01-18', 42),
('ODI', 'Duleep Trophy', 20, '2014-07-18', 50),
('ODI', 'Duleep Trophy', 5, '2014-12-10', 10),
('ODI', 'Duleep Trophy', 5, '2014-12-25', 10),
('Test', 'Ranji Trophy', 5, '2014-01-07', 20),
('ODI', 'Vijay Hazare Trophy', 5, '2014-01-25', 10);

-- --------------------------------------------------------

--
-- Table structure for table `endorse`
--

CREATE TABLE IF NOT EXISTS `endorse` (
  `franchisee` varchar(20) DEFAULT NULL,
  `player` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `contract` int(2) DEFAULT NULL,
  `amount` int(10) DEFAULT NULL,
  `ada` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `endorse`
--

INSERT INTO `endorse` (`franchisee`, `player`, `contract`, `amount`, `ada`) VALUES
('pepsi', 'MS Dhoni', 5, 5, 12500000);

-- --------------------------------------------------------

--
-- Table structure for table `existingteamodi`
--

CREATE TABLE IF NOT EXISTS `existingteamodi` (
  `name` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `existingteamodi`
--

INSERT INTO `existingteamodi` (`name`) VALUES
('A Mishra'),
('A Rahane'),
('A Rayudu'),
('B Kumar'),
('I Sharma'),
('K Yadav'),
('M Shami'),
('M Sharma'),
('M Vijay'),
('MS Dhoni'),
('R Jadeja'),
('S Dhawan'),
('S Raina'),
('U Yadav'),
('V Kohli');

-- --------------------------------------------------------

--
-- Table structure for table `existingteamt20`
--

CREATE TABLE IF NOT EXISTS `existingteamt20` (
  `name` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `existingteamtest`
--

CREATE TABLE IF NOT EXISTS `existingteamtest` (
  `name` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `homefix`
--

CREATE TABLE IF NOT EXISTS `homefix` (
  `opponent` char(15) DEFAULT NULL,
  `start` date NOT NULL DEFAULT '0000-00-00',
  `end` date NOT NULL DEFAULT '0000-00-00',
  `venue` char(15) DEFAULT NULL,
  `format` char(10) DEFAULT NULL,
  PRIMARY KEY (`start`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homefix`
--

INSERT INTO `homefix` (`opponent`, `start`, `end`, `venue`, `format`) VALUES
('Pakistan', '2014-01-01', '2014-01-06', 'Test', 'Chennai'),
('England', '2014-10-23', '2014-10-25', 'Kolkata', 'ODI');

-- --------------------------------------------------------

--
-- Table structure for table `homevenue`
--

CREATE TABLE IF NOT EXISTS `homevenue` (
  `venue` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homevenue`
--

INSERT INTO `homevenue` (`venue`) VALUES
('Mumbai'),
('Nagpur'),
('Kochi'),
('Chennai'),
('Bangalore'),
('Hyderabad'),
('Delhi'),
('Kolkata');

-- --------------------------------------------------------

--
-- Table structure for table `international`
--

CREATE TABLE IF NOT EXISTS `international` (
  `format` char(10) DEFAULT NULL,
  `name` char(20) NOT NULL DEFAULT '',
  `teamno` int(2) DEFAULT NULL,
  `date` date NOT NULL DEFAULT '0000-00-00',
  `matchno` int(2) DEFAULT NULL,
  PRIMARY KEY (`name`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `international`
--

INSERT INTO `international` (`format`, `name`, `teamno`, `date`, `matchno`) VALUES
('ODI', 'ICC World Cup', 6, '2014-01-05', 5),
('ODI', 'ICC World Cup', 5, '2014-05-16', 10);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `board` char(5) DEFAULT NULL,
  `team` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`board`, `team`) VALUES
('BCCI', 'India'),
('ECB', 'England'),
('PCB', 'Pakistan'),
('CSA', 'South Africa'),
('SLC', 'Sri Lanka');

-- --------------------------------------------------------

--
-- Table structure for table `newteam`
--

CREATE TABLE IF NOT EXISTS `newteam` (
  `batsman` varchar(25) DEFAULT NULL,
  `bowler` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newteam`
--

INSERT INTO `newteam` (`batsman`, `bowler`) VALUES
('MS Dhoni', 'Bhuvneshwar Kumar'),
('MS Dhoni', 'Bhuvneshwar Kumar'),
('MS Dhoni', 'Bhuvneshwar Kumar');

-- --------------------------------------------------------

--
-- Table structure for table `odibatranking`
--

CREATE TABLE IF NOT EXISTS `odibatranking` (
  `rank` int(5) DEFAULT NULL,
  `ODI` text,
  `rating2` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `odibatranking`
--

INSERT INTO `odibatranking` (`rank`, `ODI`, `rating2`) VALUES
(1, 'Ramesh', 125);

-- --------------------------------------------------------

--
-- Table structure for table `odibowlranking`
--

CREATE TABLE IF NOT EXISTS `odibowlranking` (
  `rank` int(5) DEFAULT NULL,
  `ODI` text,
  `rating2` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `odibowlranking`
--

INSERT INTO `odibowlranking` (`rank`, `ODI`, `rating2`) VALUES
(1, 'Pathan', 105);

-- --------------------------------------------------------

--
-- Table structure for table `oditeamranking`
--

CREATE TABLE IF NOT EXISTS `oditeamranking` (
  `rank` int(5) NOT NULL AUTO_INCREMENT,
  `ODI` text,
  `rating2` int(5) DEFAULT NULL,
  PRIMARY KEY (`rank`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `oditeamranking`
--

INSERT INTO `oditeamranking` (`rank`, `ODI`, `rating2`) VALUES
(1, 'India', 134),
(2, 'South Africa', 132),
(3, 'England', 120),
(4, 'Pakistan', 115);

-- --------------------------------------------------------

--
-- Table structure for table `opponentfix`
--

CREATE TABLE IF NOT EXISTS `opponentfix` (
  `opponent` char(15) DEFAULT NULL,
  `start` date NOT NULL DEFAULT '0000-00-00',
  `end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`start`,`end`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `opponentfix`
--

INSERT INTO `opponentfix` (`opponent`, `start`, `end`) VALUES
('Sri Lanka', '2014-01-01', '2014-01-05'),
('South Africa', '2014-02-01', '2014-02-05');

-- --------------------------------------------------------

--
-- Table structure for table `player_details`
--

CREATE TABLE IF NOT EXISTS `player_details` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(20) DEFAULT NULL,
  `tag` char(15) DEFAULT NULL,
  `avghome` float(20,2) DEFAULT NULL,
  `avgaway` float(20,2) DEFAULT NULL,
  `perfprev` int(3) DEFAULT NULL,
  `category` text,
  `status` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `player_details`
--

INSERT INTO `player_details` (`ID`, `name`, `tag`, `avghome`, `avgaway`, `perfprev`, `category`, `status`) VALUES
(1, 'MS Dhoni', 'wktkeeper', 50.32, 50.21, 257, '', NULL),
(2, 'Sachin Tendulkar', 'Opener', 45.53, 49.59, 275, '', NULL),
(3, 'Bhuvneshwar Kumar', 'newballbowler', 24.25, 28.20, 12, '', NULL),
(4, 'Harbhajan Singh', 'Offbreak', 26.52, 30.23, 5, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE IF NOT EXISTS `players` (
  `name` varchar(25) DEFAULT NULL,
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`name`) VALUES
('Bhuvneshwar Kumar'),
('Harbhajan Singh'),
('MS Dhoni'),
('Sachin Tendulkar');

-- --------------------------------------------------------

--
-- Table structure for table `rankings`
--

CREATE TABLE IF NOT EXISTS `rankings` (
  `rank` int(2) DEFAULT NULL,
  `test` char(15) DEFAULT NULL,
  `rating1` int(4) DEFAULT NULL,
  `odi` char(15) DEFAULT NULL,
  `rating2` int(4) DEFAULT NULL,
  `t20` char(15) DEFAULT NULL,
  `rating3` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE IF NOT EXISTS `salary` (
  `name` varchar(50) NOT NULL,
  `category` text NOT NULL,
  `status` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`name`, `category`, `status`) VALUES
('Bhuvneshwar Kumar', 'Category A', 'Paid'),
('Harbhajan Singh', 'Category B', 'Not Paid'),
('MS Dhoni', 'Category A', 'Paid'),
('Sachin Tendulkar', 'Category A', 'Not Paid');

-- --------------------------------------------------------

--
-- Table structure for table `t20batranking`
--

CREATE TABLE IF NOT EXISTS `t20batranking` (
  `rank` int(5) DEFAULT NULL,
  `T20` text,
  `rating3` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t20batranking`
--

INSERT INTO `t20batranking` (`rank`, `T20`, `rating3`) VALUES
(1, 'Tendulkar', 102);

-- --------------------------------------------------------

--
-- Table structure for table `t20bowlranking`
--

CREATE TABLE IF NOT EXISTS `t20bowlranking` (
  `rank` int(5) DEFAULT NULL,
  `T20` text,
  `rating3` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t20bowlranking`
--

INSERT INTO `t20bowlranking` (`rank`, `T20`, `rating3`) VALUES
(1, 'Mcgrath', 145);

-- --------------------------------------------------------

--
-- Table structure for table `t20teamranking`
--

CREATE TABLE IF NOT EXISTS `t20teamranking` (
  `rank` int(5) NOT NULL AUTO_INCREMENT,
  `T20` text,
  `rating3` int(5) DEFAULT NULL,
  PRIMARY KEY (`rank`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `t20teamranking`
--

INSERT INTO `t20teamranking` (`rank`, `T20`, `rating3`) VALUES
(1, 'Sri Lanka', 115),
(2, 'India', 100),
(3, 'Pakistan', 93),
(4, 'South Africa', 91);

-- --------------------------------------------------------

--
-- Table structure for table `tempdelete`
--

CREATE TABLE IF NOT EXISTS `tempdelete` (
  `board` char(15) DEFAULT NULL,
  `team` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tempdelete`
--

INSERT INTO `tempdelete` (`board`, `team`) VALUES
('BCCI', 'India'),
('ECB', 'England'),
('dfhh', 'dfghdf'),
('dfhh', 'dfghdf'),
('CA', 'Australia'),
('jhnfg', 'fhfg');

-- --------------------------------------------------------

--
-- Table structure for table `testbatranking`
--

CREATE TABLE IF NOT EXISTS `testbatranking` (
  `rank` int(5) DEFAULT NULL,
  `test` text,
  `rating1` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testbatranking`
--

INSERT INTO `testbatranking` (`rank`, `test`, `rating1`) VALUES
(1, 'Sachin', 124);

-- --------------------------------------------------------

--
-- Table structure for table `testbowlranking`
--

CREATE TABLE IF NOT EXISTS `testbowlranking` (
  `rank` int(5) DEFAULT NULL,
  `test` text,
  `rating1` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testbowlranking`
--

INSERT INTO `testbowlranking` (`rank`, `test`, `rating1`) VALUES
(1, 'Irfan', 124);

-- --------------------------------------------------------

--
-- Table structure for table `testteamranking`
--

CREATE TABLE IF NOT EXISTS `testteamranking` (
  `rank` int(5) NOT NULL AUTO_INCREMENT,
  `test` text,
  `rating1` int(5) DEFAULT NULL,
  PRIMARY KEY (`rank`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `testteamranking`
--

INSERT INTO `testteamranking` (`rank`, `test`, `rating1`) VALUES
(1, 'South Africa', 125),
(2, 'India', 102),
(3, 'England', 100),
(4, 'Sri Lanka', 101);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
