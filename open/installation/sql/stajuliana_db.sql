-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2024 at 10:18 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stajuliana_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_syllabus`
--

CREATE TABLE `academic_syllabus` (
  `id` int(11) NOT NULL,
  `academic_syllabus_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `uploader_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `uploader_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `session` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `activity_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `colour` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `icon` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `club_id` int(11) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`activity_id`, `name`, `colour`, `icon`, `club_id`, `description`, `date`) VALUES
(2, 'Michael Catapang', 'success', 'fa-adjust', 1, '', '2024-04-05');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `email` longtext NOT NULL,
  `phone` longtext NOT NULL,
  `password` longtext NOT NULL,
  `level` longtext NOT NULL,
  `login_status` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `phone`, `password`, `level`, `login_status`) VALUES
(1, 'Administrator', 'admin@admin.com', '07133445656', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '1', '0'),
(3, 'Michael Catapang', 'mikenormal@gmail.com', '09760383469', 'edbe0328528372239d0135d75e2620dc8fdd92ab', '2', '0'),
(4, 'Shen Villoso', 'shen@gmail.com', '09760383469', 'edbe0328528372239d0135d75e2620dc8fdd92ab', '2', '1');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role`
--

CREATE TABLE `admin_role` (
  `admin_role_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `dashboard` int(11) NOT NULL,
  `manage_academics` int(11) NOT NULL,
  `manage_employee` int(11) NOT NULL,
  `manage_student` int(11) NOT NULL,
  `manage_attendance` int(11) NOT NULL,
  `download_page` int(11) NOT NULL,
  `manage_parent` int(11) NOT NULL,
  `manage_alumni` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_role`
--

INSERT INTO `admin_role` (`admin_role_id`, `admin_id`, `dashboard`, `manage_academics`, `manage_employee`, `manage_student`, `manage_attendance`, `download_page`, `manage_parent`, `manage_alumni`) VALUES
(4, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(7, 9, 1, 1, 1, 1, 1, 1, 1, 1),
(8, 2, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 3, 1, 0, 0, 0, 0, 0, 0, 0),
(10, 4, 1, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `assignment_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0 undefined , 1 present , 2  absent, 3 holiday, 4 half day, 5 late',
  `student_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `session` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `status`, `student_id`, `date`, `session`) VALUES
(39, 1, 45, '2019-12-20', ''),
(40, 1, 45, '2019-12-22', ''),
(41, 1, 45, '2021-12-02', ''),
(42, 2, 45, '2021-12-03', ''),
(43, 1, 45, '2021-12-07', ''),
(44, 1, 46, '2024-04-05', '');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `bank_id` int(11) NOT NULL,
  `account_holder_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `account_number` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bank_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `branch` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`bank_id`, `account_holder_name`, `account_number`, `bank_name`, `branch`) VALUES
(2, 'Udemy Instructor', '1234567', 'Payoneer or paypal', 'USA'),
(3, 'Udemy Instructor', '1234567', 'Payoneer or paypal', 'USA'),
(4, 'Udemy Instructor', '1234567', 'Payoneer or paypal', 'USA'),
(5, 'Teacher Name', '2345533', 'Gtbank', 'Lagos');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `book_category_id` int(11) NOT NULL,
  `isbn` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `edition` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` int(11) NOT NULL,
  `quantity` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `name`, `description`, `author_id`, `publisher_id`, `book_category_id`, `isbn`, `edition`, `subject_id`, `quantity`, `timestamp`, `class_id`, `status`, `price`) VALUES
(1, 'Advance Java.', 'This is the newly released book by Sheg', 2, 1, 2, 'DS34FD', '1st', 0, '1', 1576951200, 2, '1', '200'),
(2, 'Python', 'Python', 2, 1, 2, 'DS34FD', '1st', 4, '2', 1574186400, 2, '2', '500');

-- --------------------------------------------------------

--
-- Table structure for table `book_category`
--

CREATE TABLE `book_category` (
  `book_category_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `book_category`
--

INSERT INTO `book_category` (`book_category_id`, `name`, `description`) VALUES
(2, 'Non fictional.', 'This is another non-fictional book');

-- --------------------------------------------------------

--
-- Table structure for table `circular`
--

CREATE TABLE `circular` (
  `circular_id` int(11) NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `reference` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `circular`
--

INSERT INTO `circular` (`circular_id`, `title`, `reference`, `content`, `date`) VALUES
(2, 'Meeting for all the members of the school', 'DF46SFGH', 'This is for all the teaching staff. Ensure you are all present.', '2018-08-24');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('1qolephve94c0h8vto34indja2e2mui5', '::1', 1712413874, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323431333837343b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a32353a22446174612055706461746564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('24h1k8hl0dvrinndajo4n1ecnftpsiqc', '::1', 1712409950, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323430393935303b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a32353a22446174612055706461746564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('2bkqp0bc9jg3ohrsv4havhtkb7g9959k', '::1', 1712412304, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323431323330343b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a32353a22446174612055706461746564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('46mlo70i0go62bbiirgumpu41aglg8lu', '::1', 1712416523, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323431363532333b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a32353a22446174612055706461746564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('4sc7076q3kesjoupefl96nh4aslmvlih', '::1', 1712414771, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323431343737313b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a32353a22446174612055706461746564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('5s9ak73a0hfqf52e4aic5j9cc39dkc3p', '::1', 1712477776, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323437373733323b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2234223b6c6f67696e5f757365725f69647c733a313a2234223b6e616d657c733a31323a225368656e2056696c6c6f736f223b666c6173685f6d6573736167657c733a31323a22496e666f2055706461746564223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('5voabn5g688avlee498tfhd7aa7t6t02', '::1', 1712477558, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323437373535383b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a31383a225375636365737366756c6c79204c6f67696e223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('bgo31ck73fkitdfi6ljgdkc0gbsgnv61', '::1', 1712410297, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323431303239373b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a32353a22446174612055706461746564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('bo3bjlug9ch08kvekurhh1cm3gbbbojb', '::1', 1712406386, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323430363338363b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a32353a22446174612055706461746564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('bp93hrmj9k6tcnk97fcsv14bui8m0jjp', '::1', 1712475256, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323437353235363b6c6f67696e5f747970657c733a373a2273747564656e74223b73747564656e745f6c6f67696e7c733a313a2231223b73747564656e745f69647c733a323a223436223b6c6f67696e5f757365725f69647c733a323a223436223b6e616d657c733a31363a224d69636861656c204361746170616e67223b666c6173685f6d6573736167657c733a31383a225375636365737366756c6c79204c6f67696e223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('bscvi1jlkk1r26p70b16rml71kq6otbe', '::1', 1712419773, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323431393530383b6572726f725f6d6573736167657c733a32333a2257726f6e6720456d61696c204f722050617373776f7264223b5f5f63695f766172737c613a323a7b733a31333a226572726f725f6d657373616765223b733a333a226f6c64223b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a32333a2244617461205361766564205375636365737366756c6c79223b),
('ce4j9ec9cbbf339iroa8klk1dqq6hlsv', '::1', 1712476046, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323437363034363b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a31383a225375636365737366756c6c79204c6f67696e223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('crf233dhb4a3tsp9omllls52ap2135bi', '::1', 1712477230, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323437373233303b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a31383a225375636365737366756c6c79204c6f67696e223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('e7cm69arql3vrqlrv5i74f7286nrbusa', '::1', 1712419508, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323431393530383b6572726f725f6d6573736167657c733a32333a2257726f6e6720456d61696c204f722050617373776f7264223b5f5f63695f766172737c613a323a7b733a31333a226572726f725f6d657373616765223b733a333a226f6c64223b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a32353a22446174612044656c65746564205375636365737366756c6c79223b),
('ecelai0b2ut43pf796vcso63f6295ikm', '::1', 1712410665, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323431303636353b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a32353a22446174612055706461746564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('frju593l67lj18pji7tcc4ulhc5h00bq', '::1', 1712474540, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323437343534303b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a32353a22446174612055706461746564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('g6tkjomcl1u667dctbq80odesof103u0', '::1', 1712458116, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323435383131363b),
('kg00a3uv8tribanj2438htqgh72sqqun', '::1', 1712417225, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323431373232353b6572726f725f6d6573736167657c733a32333a2257726f6e6720456d61696c204f722050617373776f7264223b5f5f63695f766172737c613a323a7b733a31333a226572726f725f6d657373616765223b733a333a226f6c64223b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a31383a225375636365737366756c6c79204c6f67696e223b),
('medqv6otturik987q7o11vmt8sb81gpk', '::1', 1712458648, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323435383634383b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a31383a225375636365737366756c6c79204c6f67696e223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('mkt2c1gkn51gsm7jigd0kk5gv26mpa1v', '::1', 1712473304, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323437333330343b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a32353a22446174612055706461746564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('ndrthhnq1b96ca8qfesh5uaskmu6kbpe', '::1', 1712412628, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323431323632383b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a32353a22446174612055706461746564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('ors08g90sfvh0jqollrlsqhe2avrpdat', '::1', 1712457724, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323435373732343b),
('phj99mvfqhp5lttf0knjeg5075ch30g5', '::1', 1712473687, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323437333638373b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a32353a22446174612055706461746564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('s420u9qdaagkk1nkp4iot9p48q35l8uc', '::1', 1712414279, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323431343237393b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a32353a22446174612055706461746564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('sae1druujc48lu8avkdo1dl7v2kft051', '::1', 1712406740, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323430363734303b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a32353a22446174612055706461746564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('sgcbmcrsbivdeutaii8oq1t6not542gj', '::1', 1712476424, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323437363432343b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a31383a225375636365737366756c6c79204c6f67696e223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('ttihgrquhapgsjhl1a6tmgig9qlkrj6q', '::1', 1712406082, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323430363038323b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a32353a22446174612055706461746564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('u5bucg4ipjqrjuvqg9tkelju8cq9sfm6', '::1', 1712458678, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323435383635373b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a31383a225375636365737366756c6c79204c6f67696e223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('ud0cdpnqgasqoiuk8t3b910mraar5sli', '::1', 1712474063, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323437343036333b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a32353a22446174612055706461746564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name_numeric` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `name`, `name_numeric`, `teacher_id`) VALUES
(3, 'Class A', 'Class A', 2);

-- --------------------------------------------------------

--
-- Table structure for table `club`
--

CREATE TABLE `club` (
  `club_id` int(11) NOT NULL,
  `club_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `club`
--

INSERT INTO `club` (`club_id`, `club_name`, `desc`, `date`) VALUES
(1, 'Jet club', 'This is for those who love science.', '2019-08-25');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `department_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `name`, `department_code`) VALUES
(7, 'Araling Panlipunan(AP)', 'be6344ef98743eb');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `designation_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`designation_id`, `name`, `department_id`) VALUES
(17, 'D1', 7);

-- --------------------------------------------------------

--
-- Table structure for table `dormitory`
--

CREATE TABLE `dormitory` (
  `dormitory_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hostel_room_id` int(11) NOT NULL,
  `hostel_category_id` int(11) NOT NULL,
  `capacity` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dormitory`
--

INSERT INTO `dormitory` (`dormitory_id`, `name`, `hostel_room_id`, `hostel_category_id`, `capacity`, `address`, `description`) VALUES
(2, 'Wiz Hostel', 2, 3, '200', 'Address for hostel location', 'Address for hostel location');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `enquiry_id` int(11) NOT NULL,
  `category` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mobile` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `purpose` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `whom_to_meet` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_category`
--

CREATE TABLE `enquiry_category` (
  `enquiry_category_id` int(11) NOT NULL,
  `category` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `purpose` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `whom` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `enquiry_category`
--

INSERT INTO `enquiry_category` (`enquiry_category_id`, `category`, `purpose`, `whom`) VALUES
(3, 'This is for ID 3 information.', 'Payment', 'Tutorial'),
(4, 'This is Udemy Information', 'School fees information', 'Just edited now'),
(6, 'School fees issues', 'For school fees', 'Accountant');

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `enrollment_id` int(11) NOT NULL,
  `student_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `grade_level` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `section_id` longtext NOT NULL,
  `class_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`enrollment_id`, `student_id`, `grade_level`, `section_id`, `class_id`, `subject_id`, `file_name`, `file_type`, `timestamp`, `status`, `teacher_id`) VALUES
(9, '46', '7', '8', '', '', 'Manage AssignmentGosfem Community Edition.pdf', 'pdf', '2024-04-06', '1', ''),
(8, '45', '', '', '', '', 'Resume-Michael-Catapang.pdf', 'pdf', '2024-04-02', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `exam_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `comment` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`exam_id`, `name`, `comment`, `timestamp`) VALUES
(1, 'First Term Examination', 'First Term', '2019-10-30'),
(3, '2020/2021 FIRST TERM EXAMINATION', '2020/2021 FIRST TERM EXAMINATION', '2021-12-07');

-- --------------------------------------------------------

--
-- Table structure for table `expense_category`
--

CREATE TABLE `expense_category` (
  `expense_category_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hostel_category`
--

CREATE TABLE `hostel_category` (
  `hostel_category_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hostel_category`
--

INSERT INTO `hostel_category` (`hostel_category_id`, `name`, `description`) VALUES
(2, 'Female', 'This is for female only.'),
(3, 'Male', 'This is for male only. Female are not allowed.');

-- --------------------------------------------------------

--
-- Table structure for table `hostel_room`
--

CREATE TABLE `hostel_room` (
  `hostel_room_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `room_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `num_bed` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cost_bed` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hostel_room`
--

INSERT INTO `hostel_room` (`hostel_room_id`, `name`, `room_type`, `num_bed`, `cost_bed`, `description`) VALUES
(2, 'Room One', 'Single', '2', '5000', 'This is for the big guys among us.');

-- --------------------------------------------------------

--
-- Table structure for table `house`
--

CREATE TABLE `house` (
  `house_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `house`
--

INSERT INTO `house` (`house_id`, `name`, `description`) VALUES
(1, 'Purple', 'This is for students in purple house'),
(5, 'Green', 'Green house');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `invoice_number` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `student_id` int(11) NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `amount_paid` int(11) NOT NULL,
  `due` int(11) NOT NULL,
  `creation_timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment_method` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `year` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `invoice_number`, `student_id`, `title`, `description`, `amount`, `discount`, `amount_paid`, `due`, `creation_timestamp`, `payment_method`, `status`, `year`) VALUES
(2, '742593INV2019', 45, 'Another Part payment for eLibrary', 'Another Part payment for eLibrary.', 7000, 0, 6200, 800, '2019-11-12', '1', 2, '2019-2020'),
(4, '458472', 45, 'General School Fees for Class Nursery One', 'some info here', 2500, 0, 1000, 1500, '2021-12-07', '3', 2, '2019-2020');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `phrase_id` int(11) NOT NULL,
  `phrase` longtext NOT NULL,
  `english` longtext DEFAULT NULL,
  `arabic` longtext DEFAULT NULL,
  `french` longtext DEFAULT NULL,
  `bengali` longtext DEFAULT NULL,
  `chinese` longtext DEFAULT NULL,
  `dutch` longtext DEFAULT NULL,
  `german` longtext DEFAULT NULL,
  `hindi` longtext DEFAULT NULL,
  `hungarian` longtext DEFAULT NULL,
  `greek` longtext DEFAULT NULL,
  `indonesian` longtext DEFAULT NULL,
  `italian` longtext DEFAULT NULL,
  `japanese` longtext DEFAULT NULL,
  `korean` longtext DEFAULT NULL,
  `latin` longtext DEFAULT NULL,
  `portuguese` longtext DEFAULT NULL,
  `russian` longtext DEFAULT NULL,
  `spanish` longtext DEFAULT NULL,
  `turkish` longtext DEFAULT NULL,
  `thai` longtext DEFAULT NULL,
  `urdu` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `arabic`, `french`, `bengali`, `chinese`, `dutch`, `german`, `hindi`, `hungarian`, `greek`, `indonesian`, `italian`, `japanese`, `korean`, `latin`, `portuguese`, `russian`, `spanish`, `turkish`, `thai`, `urdu`) VALUES
(1, 'Manage Language', 'Language', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'active language', 'Active Language', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40557, 'add', 'add', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40558, 'manage_academics', 'Academics', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40559, 'admin_dashboard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40560, 'Dashboard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40561, 'Academics', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40562, 'Equiry Category', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40563, 'list_enquiries', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40564, 'school_clubs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40565, 'manage_circular', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40566, 'syllabus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40567, 'manage_events', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40568, 'teachers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40569, 'department', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40570, 'manage students', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40571, 'admission_form', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40572, 'list_students', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40573, 'Student Categories', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40574, 'Student House', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40575, 'Student Activity', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40576, 'Social Category', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40577, 'attendance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40578, 'mark_attendance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40579, 'view_attendance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40580, 'download_page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40581, 'assignments', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40582, 'study_materials', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40583, 'parents', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40584, 'class', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40585, 'section', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40586, 'manage_classes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40587, 'manage_sections', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40588, 'subjects', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40589, 'exams', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40590, 'question_paper', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40591, 'exam_grades', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40592, 'Add Examination', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40593, 'student_scores', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40594, 'class_teacher', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40595, 'subject_teacher', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40596, 'fee_collection', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40597, 'collect_fees', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40598, 'manage_invoice', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40599, 'expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40600, 'expense', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40601, 'expense_category', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40602, 'hostel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40603, 'manage_hostel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40604, 'hostel_category', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40605, 'hostel_room', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40606, 'transportation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40607, 'transports', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40608, 'transport_route', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40609, 'manage_vehicle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40610, 'system_settings', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40611, 'general_settings', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40612, 'manage_sms_api', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40613, 'manage_language', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40614, 'Payment Settings', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40615, 'reports', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40616, 'Student Payments', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40617, 'Attendance Report', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40618, 'Exam Mark Report', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40619, 'role_managements', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40620, 'new_admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40621, 'Logout', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40622, 'Students', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40623, 'Teachers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40624, 'assignment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40625, 'Expense', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40626, 'Income', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40627, 'Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40628, 'Attendance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40629, 'Recently Added Teachers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40630, 'Recently Added Students', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40631, 'Teachers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40632, 'Expense', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40633, 'Attendance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40634, 'active_language', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40635, 'back', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40636, 'add_language', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40637, 'add_string', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40638, 'all_languages', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40639, 'actions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40640, 'phrase_updated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40641, 'email', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40642, 'passord', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40643, 'remember_me', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40644, 'forgot_password?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40645, 'log_in', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40646, 'back_to_login', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40647, 'reset_password', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40648, 'Successfully Login', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40649, 'Teacher Dashboard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40650, 'manage_attendance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40651, 'manage_profile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40652, 'student', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40653, 'parent', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40654, 'all_teachers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40655, 'Attendance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40656, 'Attendance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40657, 'student Dashboard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40658, 'Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40659, 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40660, 'Class Mate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40661, 'Assignment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40662, 'Study Material', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40663, 'Invoice', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40664, 'Payment History', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40665, 'Teachers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40666, 'Attendance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40667, 'Assignment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40668, 'Teachers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40669, 'Attendance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40670, 'Assignment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40671, 'Teachers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40672, 'Attendance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40673, 'Assignment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40674, 'Teachers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40675, 'Attendance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40676, 'Assignment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40677, 'Teachers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40678, 'Attendance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40679, 'Assignment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40680, 'Teachers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40681, 'Attendance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40682, 'Attendance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40683, 'Attendance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40684, 'Attendance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40685, 'Attendance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40686, 'Wrong email or password', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `language_list`
--

CREATE TABLE `language_list` (
  `language_list_id` int(11) NOT NULL,
  `name` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `db_field` varchar(300) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `language_list`
--

INSERT INTO `language_list` (`language_list_id`, `name`, `db_field`, `status`) VALUES
(1, 'English', 'english', 'ok'),
(2, 'Arabic', 'arabic', 'ok'),
(3, 'French', 'french', 'ok'),
(4, 'Bengali', 'bengali', 'ok'),
(5, 'Chinese', 'chinese', 'ok'),
(6, 'Dutch', 'dutch', 'ok'),
(7, 'German', 'german', 'ok'),
(8, 'Hindi', 'hindi', 'ok'),
(9, 'Hungarian', 'hungarian', 'ok'),
(10, 'Greek', 'greek', 'ok'),
(11, 'Indonesian', 'indonesian', 'ok'),
(12, 'Italian', 'italian', 'ok'),
(13, 'Japanese', 'japanese', 'ok'),
(14, 'Korean', 'korean', 'ok'),
(15, 'Latin', 'latin', 'ok'),
(16, 'Portuguese', 'portuguese', 'ok'),
(17, 'Russian', 'russian', 'ok'),
(18, 'Spanish', 'spanish', 'ok'),
(19, 'Turkish', 'turkish', 'ok'),
(20, 'Thai', 'thai', 'ok'),
(21, 'Urdu', 'urdu', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `leave`
--

CREATE TABLE `leave` (
  `leave_id` int(11) NOT NULL,
  `leave_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `start_date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `end_date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `reason` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

CREATE TABLE `mark` (
  `mark_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `class_score1` int(11) NOT NULL,
  `class_score2` int(11) NOT NULL,
  `class_score3` int(11) NOT NULL,
  `exam_score` int(11) NOT NULL,
  `comment` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mark`
--

INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `exam_id`, `class_id`, `class_score1`, `class_score2`, `class_score3`, `exam_score`, `comment`) VALUES
(1, 45, 5, 1, 2, 10, 6, 8, 70, 'Good performance.'),
(2, 45, 4, 1, 2, 10, 7, 9, 69, 'Excellent performance.'),
(3, 45, 6, 1, 2, 4, 5, 6, 50, 'Perfect scores');

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `material_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `noticeboard`
--

CREATE TABLE `noticeboard` (
  `noticeboard_id` int(11) NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `location` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `parent_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `profession` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `login_status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`parent_id`, `name`, `email`, `password`, `phone`, `address`, `profession`, `login_status`) VALUES
(6, 'Parent', 'parent@gmail.com', 'edbe0328528372239d0135d75e2620dc8fdd92ab', '09760383469', '174 suarez street maybunga pasig city', 'House wife', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `expense_category_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `invoice_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `student_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `method` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `amount` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `discount` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `year` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `section_id` int(11) NOT NULL,
  `grade_level` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `section_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`section_id`, `grade_level`, `section_name`, `class_id`, `teacher_id`) VALUES
(8, '8', 'Earth', 1, 2),
(7, '7', 'Mars', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `settings_id` int(11) NOT NULL,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES
(1, 'system_name', 'Sta.Juliana Online Portal'),
(2, 'system_title', 'Online Enrollment Portal'),
(3, 'address', '546787, Kertz shopping complext, Silicon Valley, United State of America, New York city.'),
(4, 'phone', '+1564783934'),
(6, 'currency', ''),
(7, 'system_email', 'payment@optimumlinkup.com'),
(11, 'language', 'english'),
(12, 'text_align', ''),
(16, 'skin_colour', 'green'),
(21, 'session', '2023-2024'),
(22, 'footer', 'Bringing to you by NU University '),
(116, 'paypal_email', ''),
(119, 'stripe_setting', '[{\"stripe_active\":\"1\",\"testmode\":\"off\",\"secret_key\":\"test secret key\",\"public_key\":\"test public key\",\"secret_live_key\":\"live secret key\",\"public_live_key\":\"live public key\"}]'),
(122, 'paypal_setting', '[{\"paypal_active\":\"1\",\"paypal_mode\":\"sandbox\",\"sandbox_client_id\":\"client id sandbox\",\"production_client_id\":\"client - production\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `sms_settings`
--

CREATE TABLE `sms_settings` (
  `sms_setting_id` int(11) NOT NULL,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `info` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sms_settings`
--

INSERT INTO `sms_settings` (`sms_setting_id`, `type`, `info`) VALUES
(12, 'msg91_sender_id', 'sender id'),
(11, 'msg91_authentication_key', 'msg91 auth key'),
(10, 'clickatell_apikey', 'clickattel api'),
(9, 'clickatell_password', 'clickattel paasword'),
(8, 'clickatell_username', 'clickattel username'),
(13, 'msg91_route', 'route'),
(14, 'msg91_country_code', 'country code'),
(15, 'active_sms_gateway', 'clickatell');

-- --------------------------------------------------------

--
-- Table structure for table `social_category`
--

CREATE TABLE `social_category` (
  `social_category_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `colour` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `icon` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `social_category`
--

INSERT INTO `social_category` (`social_category_id`, `name`, `colour`, `icon`, `description`) VALUES
(2, 'Romance', 'danger', 'fa-male', 'This is for romance chat room'),
(3, 'Event', 'primary', 'fa-book', 'This is for event chat room');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `birthday` longtext NOT NULL,
  `age` longtext NOT NULL,
  `place_birth` longtext NOT NULL,
  `sex` longtext NOT NULL,
  `m_tongue` longtext NOT NULL,
  `religion` longtext NOT NULL,
  `blood_group` longtext NOT NULL,
  `address` longtext NOT NULL,
  `city` longtext NOT NULL,
  `state` longtext NOT NULL,
  `nationality` longtext NOT NULL,
  `phone` longtext NOT NULL,
  `email` longtext NOT NULL,
  `ps_attended` longtext NOT NULL,
  `ps_address` longtext NOT NULL,
  `ps_purpose` longtext NOT NULL,
  `class_study` longtext NOT NULL,
  `date_of_leaving` longtext NOT NULL,
  `am_date` longtext NOT NULL,
  `tran_cert` longtext NOT NULL,
  `dob_cert` longtext NOT NULL,
  `mark_join` longtext NOT NULL,
  `physical_h` longtext NOT NULL,
  `password` longtext NOT NULL,
  `father_name` longtext NOT NULL,
  `mother_name` longtext NOT NULL,
  `class_id` longtext NOT NULL,
  `section_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `roll` longtext NOT NULL,
  `transport_id` int(11) NOT NULL,
  `dormitory_id` int(11) NOT NULL,
  `house_id` int(11) NOT NULL,
  `student_category_id` int(11) NOT NULL,
  `club_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  `card_number` longtext NOT NULL,
  `issue_date` longtext NOT NULL,
  `expire_date` longtext NOT NULL,
  `dormitory_room_number` longtext NOT NULL,
  `more_entries` longtext NOT NULL,
  `login_status` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `name`, `birthday`, `age`, `place_birth`, `sex`, `m_tongue`, `religion`, `blood_group`, `address`, `city`, `state`, `nationality`, `phone`, `email`, `ps_attended`, `ps_address`, `ps_purpose`, `class_study`, `date_of_leaving`, `am_date`, `tran_cert`, `dob_cert`, `mark_join`, `physical_h`, `password`, `father_name`, `mother_name`, `class_id`, `section_id`, `parent_id`, `roll`, `transport_id`, `dormitory_id`, `house_id`, `student_category_id`, `club_id`, `session`, `card_number`, `issue_date`, `expire_date`, `dormitory_room_number`, `more_entries`, `login_status`) VALUES
(45, 'Community Student', '09/30/2003', '16', 'Lagos', 'female', 'Mother Tongue', 'Muslim', 'B+', 'Address', 'City', 'Lagos', 'Canadian', '+912345667', 'student@student.com', 'Previous school attended', 'Previous school address', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-10', '2011-08-19', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '2', 7, 4, '5bf8161', 0, 2, 1, 2, 1, '2019-2020', '', '', '', '', '', '0'),
(46, 'Michael Catapang', '04/11/1990', '33', 'test', 'male', '', '', 'O+', '174 suarez street maybunga pasig city', 'Pasig', 'NCR', 'Filipino', '09760383469', 'mikecatapang@gmail.com', 'test', '174 suarez street maybunga pasig city', 'test', '', '2011-08-01', '2011-08-19', 'Yes', 'No', 'Yes', 'Yes', 'edbe0328528372239d0135d75e2620dc8fdd92ab', '', '', '3', 8, 6, '7f193b8', 0, 2, 5, 3, 1, '2019-2020', '', '', '', '', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `student_category`
--

CREATE TABLE `student_category` (
  `student_category_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_category`
--

INSERT INTO `student_category` (`student_category_id`, `name`, `description`) VALUES
(2, 'Boarding', 'This is for the boarding student.'),
(3, 'Day', 'Day student');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subject_code` longtext NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `description`, `subject_code`, `class_id`, `teacher_id`) VALUES
(11, 'Sciencce', 'Sci', 3, 0),
(10, 'Mathematics', 'Mat', 0, 0),
(9, 'Filipino', 'Fil', 0, 0),
(8, 'English ', 'Eng', 0, 0),
(12, 'Araling Panglipunan(AP)', 'AP', 0, 0),
(13, 'Technology and Livelihood Education(TLE)', 'TLE', 0, 0),
(14, 'Arts', 'Arts', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `role` longtext NOT NULL,
  `teacher_number` longtext NOT NULL,
  `birthday` longtext NOT NULL,
  `sex` longtext NOT NULL,
  `religion` longtext NOT NULL,
  `blood_group` longtext NOT NULL,
  `address` longtext NOT NULL,
  `phone` longtext NOT NULL,
  `email` longtext NOT NULL,
  `facebook` longtext NOT NULL,
  `twitter` longtext NOT NULL,
  `googleplus` longtext NOT NULL,
  `linkedin` longtext NOT NULL,
  `qualification` longtext NOT NULL,
  `marital_status` longtext NOT NULL,
  `file_name` longtext NOT NULL,
  `password` longtext NOT NULL,
  `department_id` int(11) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `date_of_joining` longtext NOT NULL,
  `joining_salary` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `date_of_leaving` longtext NOT NULL,
  `bank_id` int(11) NOT NULL,
  `login_status` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `name`, `role`, `teacher_number`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `facebook`, `twitter`, `googleplus`, `linkedin`, `qualification`, `marital_status`, `file_name`, `password`, `department_id`, `designation_id`, `date_of_joining`, `joining_salary`, `status`, `date_of_leaving`, `bank_id`, `login_status`) VALUES
(2, 'James Santos', '1', '9837fb5', '2018-08-19', 'male', 'Christian', 'O-', '4, Ireakari Estate, Osiele Abeokuta Ogun State.', '8033527716', 'james@teacher.com', 'http://facebook.com/optimumlinkup', 'http://twitter.com/optimumlinkup', '', '', 'Emglish', 'Married', 'LASU.docx', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 5, 14, '2021-07-12', '4000', 1, '2021-12-07', 5, '0'),
(3, 'john doe', '1', '', '1994-06-07', 'male', 'Christian', 'O+', '174 suarez street maybunga pasig city', '09760383469', 'john@gmail.com', '', '', '', '', 'Science', 'Single', 'Resume-Michael-Catapang.pdf', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 7, 17, '2024-06-04', '', 1, '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `transport_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `transport_route_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `route_fare` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transport_route`
--

CREATE TABLE `transport_route` (
  `transport_route_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transport_route`
--

INSERT INTO `transport_route` (`transport_route_id`, `name`, `description`) VALUES
(2, 'Toronto to Usa', 'This is vehicle is going from Canada to Usa'),
(3, 'Lagos to Canada', 'This is going to Canada');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `vehicle_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `vehicle_number` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `vehicle_model` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `vehicle_quantity` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `year_made` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `driver_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `driver_license` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `driver_contact` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehicle_id`, `name`, `vehicle_number`, `vehicle_model`, `vehicle_quantity`, `year_made`, `driver_name`, `driver_license`, `driver_contact`, `description`, `status`) VALUES
(2, 'Toyota', '423', 'Camry', '2', '2019', 'Udemy Sheg', 'License', 'Contact address here', 'description here', 'available');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_syllabus`
--
ALTER TABLE `academic_syllabus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`admin_role_id`);

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`assignment_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`book_category_id`);

--
-- Indexes for table `circular`
--
ALTER TABLE `circular`
  ADD PRIMARY KEY (`circular_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`club_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`designation_id`);

--
-- Indexes for table `dormitory`
--
ALTER TABLE `dormitory`
  ADD PRIMARY KEY (`dormitory_id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Indexes for table `enquiry_category`
--
ALTER TABLE `enquiry_category`
  ADD PRIMARY KEY (`enquiry_category_id`);

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`enrollment_id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `expense_category`
--
ALTER TABLE `expense_category`
  ADD PRIMARY KEY (`expense_category_id`);

--
-- Indexes for table `hostel_category`
--
ALTER TABLE `hostel_category`
  ADD PRIMARY KEY (`hostel_category_id`);

--
-- Indexes for table `hostel_room`
--
ALTER TABLE `hostel_room`
  ADD PRIMARY KEY (`hostel_room_id`);

--
-- Indexes for table `house`
--
ALTER TABLE `house`
  ADD PRIMARY KEY (`house_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`phrase_id`);

--
-- Indexes for table `language_list`
--
ALTER TABLE `language_list`
  ADD PRIMARY KEY (`language_list_id`);

--
-- Indexes for table `leave`
--
ALTER TABLE `leave`
  ADD PRIMARY KEY (`leave_id`);

--
-- Indexes for table `mark`
--
ALTER TABLE `mark`
  ADD PRIMARY KEY (`mark_id`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`material_id`);

--
-- Indexes for table `noticeboard`
--
ALTER TABLE `noticeboard`
  ADD PRIMARY KEY (`noticeboard_id`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`parent_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`section_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `sms_settings`
--
ALTER TABLE `sms_settings`
  ADD PRIMARY KEY (`sms_setting_id`);

--
-- Indexes for table `social_category`
--
ALTER TABLE `social_category`
  ADD PRIMARY KEY (`social_category_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_category`
--
ALTER TABLE `student_category`
  ADD PRIMARY KEY (`student_category_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`transport_id`);

--
-- Indexes for table `transport_route`
--
ALTER TABLE `transport_route`
  ADD PRIMARY KEY (`transport_route_id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`vehicle_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_syllabus`
--
ALTER TABLE `academic_syllabus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `admin_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `book_category`
--
ALTER TABLE `book_category`
  MODIFY `book_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `circular`
--
ALTER TABLE `circular`
  MODIFY `circular_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `club`
--
ALTER TABLE `club`
  MODIFY `club_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `designation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `dormitory`
--
ALTER TABLE `dormitory`
  MODIFY `dormitory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `enquiry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `enquiry_category`
--
ALTER TABLE `enquiry_category`
  MODIFY `enquiry_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `enrollment`
--
ALTER TABLE `enrollment`
  MODIFY `enrollment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `expense_category`
--
ALTER TABLE `expense_category`
  MODIFY `expense_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hostel_category`
--
ALTER TABLE `hostel_category`
  MODIFY `hostel_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hostel_room`
--
ALTER TABLE `hostel_room`
  MODIFY `hostel_room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `house`
--
ALTER TABLE `house`
  MODIFY `house_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `phrase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40687;

--
-- AUTO_INCREMENT for table `language_list`
--
ALTER TABLE `language_list`
  MODIFY `language_list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `leave`
--
ALTER TABLE `leave`
  MODIFY `leave_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mark`
--
ALTER TABLE `mark`
  MODIFY `mark_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `material`
--
ALTER TABLE `material`
  MODIFY `material_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `noticeboard`
--
ALTER TABLE `noticeboard`
  MODIFY `noticeboard_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `parent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `sms_settings`
--
ALTER TABLE `sms_settings`
  MODIFY `sms_setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `social_category`
--
ALTER TABLE `social_category`
  MODIFY `social_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `student_category`
--
ALTER TABLE `student_category`
  MODIFY `student_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `transport_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transport_route`
--
ALTER TABLE `transport_route`
  MODIFY `transport_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
