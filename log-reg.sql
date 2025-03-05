-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 04, 2025 at 06:42 PM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `log_reg`
--

-- --------------------------------------------------------

--
-- Table structure for table `log-reg`
--

CREATE TABLE `log-reg` (
  `Name` varchar(100) NOT NULL,
  `Email Address` varchar(255) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `log-reg`
--

INSERT INTO `log-reg` (`Name`, `Email Address`, `Password`) VALUES
('Name', 'Email Address', 'Password'),
('Emma Caldwell', 'emma.caldwell87@fakemail.com', 'Xv9@pLq!32'),
('Ryan Mercer', 'ryan.mercer22@mailtest.com', 'Gf#7Lm@92v'),
('Sophia Grayson', 'sophia.grayson44@mockemail.com', 'Tz8&kVb!56'),
('Daniel Hayes', 'daniel.hayes19@tempinbox.com', 'Mh@3XqP#84'),
('Olivia Bennett', 'olivia.bennett76@fakemail.net', 'Wy7!Np%4Lz'),
('Ethan Chandler', 'ethan.chandler55@mailtester.org', 'Rk#9Jm@63Y'),
('Noah Sinclair', 'noah.sinclair90@myfakeemail.com', 'Qp6&Vt!29X'),
('Lily Hartman', 'lily.hartman27@randommail.net', 'Zy@5Lx#71M'),
('Jack Donovan ', 'jack.donovan11@testaccount.com', 'Bt8!Wq%3Np'),
('Madison Blake', 'madison.blake33@dummyemail.com', 'Df#2Xm@89V'),
('', '', ''),
('', '', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
