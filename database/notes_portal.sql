-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 03, 2018 at 02:36 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `notes_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `attached_files`
--

CREATE TABLE `attached_files` (
  `attached_id` int(100) NOT NULL auto_increment,
  `attached_by` varchar(100) NOT NULL,
  `attached_date` varchar(100) NOT NULL,
  `attached_file` varchar(100) NOT NULL,
  `category_id` int(100) NOT NULL,
  `key` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY  (`attached_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `attached_files`
--

INSERT INTO `attached_files` (`attached_id`, `attached_by`, `attached_date`, `attached_file`, `category_id`, `key`, `status`) VALUES
(1, 'prashant', '2014-4-4', 'computer', 432, 'notes', 'not uploded'),
(8, 'shweta', '2017-08-20', 'xyz', 123, 'ppt', 'abc'),
(28, '7', '2016-2-2', '7', 7, 'a', 'abc'),
(29, '57', '2016-2-2', 'computer', 1234, 'pqr', 'good'),
(30, 'dads', '2016-2-2', 'computer', 1234, 'pqr', 'good'),
(35, 'null', 'null', 'null', 0, 'null', 'null'),
(36, 'null', 'null', 'null', 0, 'null', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `book_details`
--

CREATE TABLE `book_details` (
  `b_id` int(11) NOT NULL auto_increment,
  `book_name` varchar(25) NOT NULL,
  `author` varchar(25) NOT NULL,
  `publisher` varchar(25) NOT NULL,
  `upload_date` date NOT NULL,
  `file` varchar(50) NOT NULL,
  `sem` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY  (`b_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `book_details`
--

INSERT INTO `book_details` (`b_id`, `book_name`, `author`, `publisher`, `upload_date`, `file`, `sem`, `type`) VALUES
(7, 'Accounts', 'abc', 'xyz', '2017-04-06', 'SimpleKey.java', 'semister 5', ''),
(8, 'Java', 'mn', 'mkiop', '2017-04-06', 'sorting technique daa.pdf', 'semister 6', ''),
(9, 'C', 'Balguruswami', '2017', '2017-12-12', 'panchayat.docx', 'I', 'BOOKS'),
(10, 'JAVA', 'Macrow Hill', 'sun micro', '2017-12-29', 'Hospital management system project report.pdf', 'V', 'BOOKS'),
(11, 'JAVA', 'BCA NOTES', 'Mohini', '2018-03-02', '20120221224132107.jpg', 'V', 'NOTES');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `c_id` int(50) NOT NULL auto_increment,
  `category_name` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY  (`c_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`c_id`, `category_name`, `description`) VALUES
(5, 'MCA', 'Master of computer application'),
(15, 'Bsc', 'Bechelor of computer science');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(100) NOT NULL auto_increment,
  `duration` varchar(100) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `sem_id` int(100) NOT NULL,
  PRIMARY KEY  (`course_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `duration`, `course_name`, `sem_id`) VALUES
(1, 'one year', 'BCA', 5651),
(2, '4 years', 'BE', 5652),
(3, '34', 'BE', 5656);

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `dept_id` int(100) NOT NULL auto_increment,
  `dept_name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY  (`dept_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`dept_id`, `dept_name`, `description`) VALUES
(1, 'Computer Science Department', 'Computer'),
(2, 'Arts Department', 'History'),
(3, 'biology', 'study of cells and tissues'),
(5, 'cs', 'study of cells and tissues'),
(6, 'cs', 'study of cells and tissues'),
(7, 'biology', 'study of cells and tissues'),
(8, '6', 'fcggbn'),
(9, 'vgfcyg', 'study of cells and tissues');

-- --------------------------------------------------------

--
-- Table structure for table `download_count`
--

CREATE TABLE `download_count` (
  `book_id` int(100) NOT NULL,
  `c_no` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `download_count`
--

INSERT INTO `download_count` (`book_id`, `c_no`) VALUES
(11, 1),
(11, 1),
(11, 1),
(11, 1),
(11, 1),
(11, 1),
(11, 1),
(11, 1),
(11, 1),
(11, 1),
(11, 1),
(11, 1),
(11, 1),
(11, 1),
(11, 1),
(11, 1),
(11, 1),
(10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `hint_qst` varchar(100) NOT NULL,
  `hint_ans` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `type`, `hint_qst`, `hint_ans`, `status`) VALUES
('admin', '123', 'admin', 'name', 'abc', 'active'),
('staff', '123', 'staff', 'email', 'deepa@gmail.com', 'active'),
('student', '321', 'student', 'surname', 'devaki', 'active'),
('M1517204', '123123', 'student', 'my Contact Number', '9986352227', 'active'),
('mohini', '123123', 'staff', 'my Contact Number', '9620049394', 'active'),
('M1517203', '123123', 'student', 'my Contact Number', '9743275948', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `sem`
--

CREATE TABLE `sem` (
  `sem_id` int(100) NOT NULL auto_increment,
  `sem_name` varchar(100) NOT NULL,
  `course_id` varchar(100) NOT NULL,
  PRIMARY KEY  (`sem_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5658 ;

--
-- Dumping data for table `sem`
--

INSERT INTO `sem` (`sem_id`, `sem_name`, `course_id`) VALUES
(5651, '5th', '19'),
(5652, '4th', '12'),
(5656, 'first  sem', '15'),
(5657, 'SiX Semester', '1');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(100) NOT NULL auto_increment,
  `sub_name` varchar(100) NOT NULL,
  `course_id` varchar(100) NOT NULL,
  `sem` varchar(100) NOT NULL,
  PRIMARY KEY  (`subject_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `sub_name`, `course_id`, `sem`) VALUES
(21, 'C', '7230', '1'),
(22, 'E-com', '7321', '6'),
(23, 'SAD', '12', '4'),
(24, 'SAD', '....select....', '5643'),
(25, 'DAA', '12', '2'),
(28, 'null', 'null', 'null'),
(29, 'java', '123', '4th'),
(31, 'daa', '12', '5th'),
(32, '', 'Select', ''),
(33, 'c++', '1', '5th'),
(34, 'coa', '1', 'dfb'),
(35, 'C', '1', 'I');

-- --------------------------------------------------------

--
-- Table structure for table `user_registration`
--

CREATE TABLE `user_registration` (
  `user_id` int(50) NOT NULL auto_increment,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `contact_no` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `qualification` varchar(100) NOT NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `user_registration`
--

INSERT INTO `user_registration` (`user_id`, `user_name`, `password`, `address`, `city`, `state`, `country`, `contact_no`, `age`, `gender`, `qualification`) VALUES
(1, 'Gangaram.M.Patil', '1234', 'At Post Karambal Tql:Khanapur\r\nDis:Belgaum -590001', 'Khanapur', 'Karnataka', 'India', '9972016965', '21', 'Female', 'BCA'),
(2, 'Anand.M.Patil', '1234', 'Sudarshan Nagar Old TRT Bl.No 2/21 Dharwad -580001', 'Hubli', 'Karnataka', 'India', '8972355861', '22', 'Female', 'MBA'),
(4, 'san', '123', 'dwd', 'abc', 'abc', 'abc', '9886631818', '55', 'Male', 'dsa'),
(5, 'san', '123', 'dwd', 'abc', 'abc', 'abc', '9886631818', '55', 'Male', 'dsa'),
(6, 'M1517204', '123123', 'h', 'Mudhol', 'Karnataka', 'India', '9986352227', '21', 'Male', 'BCA'),
(7, 'mohini', '123123', 'chikodi', 'dwd', 'Karnataka', 'India', '9620049394', '20', 'Female', 'BCA'),
(8, 'M1517203', '123123', 'chikodi', 'chikodi', 'Karnataka', 'India', '9743275948', '21', 'Male', 'BCA');
