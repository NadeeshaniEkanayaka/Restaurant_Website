-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2023 at 11:53 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `signature_cuisine`
--

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `names` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `addres` varchar(50) NOT NULL,
  `comment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `names` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `feedback` varchar(1000) NOT NULL,
  `rating` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orderform`
--

CREATE TABLE `orderform` (
  `names` int(11) NOT NULL,
  `email` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `addres` int(11) NOT NULL,
  `payment` int(11) NOT NULL,
  `cardNumber` int(11) NOT NULL,
  `deliveryOption` int(11) NOT NULL,
  `branch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `restype` varchar(50) NOT NULL,
  `dates` varchar(20) NOT NULL,
  `timess` varchar(20) NOT NULL,
  `guests` varchar(10) NOT NULL,
  `names` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `special_requests` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`restype`, `dates`, `timess`, `guests`, `names`, `email`, `phone`, `special_requests`) VALUES
('birthday', '2023-06-26', '21:25', '1', 'Nadeeshani Ekanayaka', 'nadeeshanikke23@gmail.com', '0764501708', ''),
('conference', '2023-07-22', '09:30', '10', 'Nadeeshani Ekanayaka', 'nadeeshanikke23@gmail.com', '0764501708', 'we also need food that day');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `addres` varchar(100) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `birthday` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`firstName`, `lastName`, `addres`, `telephone`, `email`, `gender`, `birthday`, `username`, `pass`) VALUES
('Nadeeshani', 'Ekanayaka', 'kurunegala', '0764501708', 'nadeeshanikke23@gmail.com', 'female', '2023-07-05', 'user', 'user'),
('Nadeeshani', 'Ekanayaka', 'kurunegala', '0764501708', 'nadeeshanikke23@gmail.com', 'female', '2023-06-26', 'User', 'User'),
('Nadeeshani', 'Ekanayaka', 'kurunegala', '0764501708', 'nadeeshanikke23@gmail.com', 'female', '2023-07-04', 'admin', 'admin'),
('Nadeeshani', 'Ekanayaka', 'kurunegala', '+1234567890', 'nadee@gmail.com', 'female', '1998-10-23', 'Admin', 'Admin');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
