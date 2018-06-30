-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2018 at 04:37 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alecone`
--

-- --------------------------------------------------------

--
-- Table structure for table `alec_driver`
--

CREATE TABLE `alec_driver` (
  `d_id` int(99) NOT NULL,
  `d_source_lat` varchar(250) NOT NULL,
  `d_source_lng` varchar(250) NOT NULL,
  `d_dest_lat` varchar(250) NOT NULL,
  `d_dist_lng` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alec_driver`
--

INSERT INTO `alec_driver` (`d_id`, `d_source_lat`, `d_source_lng`, `d_dest_lat`, `d_dist_lng`) VALUES
(1, '18.559658', '73.779938', '18.55874', '73.769109');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alec_driver`
--
ALTER TABLE `alec_driver`
  ADD PRIMARY KEY (`d_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alec_driver`
--
ALTER TABLE `alec_driver`
  MODIFY `d_id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;