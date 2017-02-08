-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2017 at 02:12 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tour2`
--

-- --------------------------------------------------------

--
-- Table structure for table `ishci`
--

CREATE TABLE `ishci` (
  `id` int(11) NOT NULL,
  `ad` varchar(50) DEFAULT NULL,
  `sabit_maash` int(11) DEFAULT NULL,
  `elave_maash` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ishci`
--

INSERT INTO `ishci` (`id`, `ad`, `sabit_maash`, `elave_maash`) VALUES
(1, 'Xeyal', 1000, 25),
(2, 'Huseyn', 2000, 25),
(3, 'Kamran', 2000, 25),
(4, 'Elxan', 1500, 25),
(5, NULL, NULL, 25);

-- --------------------------------------------------------

--
-- Table structure for table `mushteri`
--

CREATE TABLE `mushteri` (
  `id` int(11) NOT NULL,
  `ad` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mushteri`
--

INSERT INTO `mushteri` (`id`, `ad`) VALUES
(1, 'Ismayil'),
(2, 'Nail'),
(3, 'Lale'),
(4, 'Islam'),
(5, 'Zakir'),
(6, 'Saday'),
(7, 'Logman'),
(8, 'Minaye'),
(9, 'Ejder');

-- --------------------------------------------------------

--
-- Table structure for table `mushteri_ishci_tur`
--

CREATE TABLE `mushteri_ishci_tur` (
  `id` int(11) NOT NULL,
  `mushteri_id` int(11) DEFAULT NULL,
  `ishci_id` int(11) DEFAULT NULL,
  `tur_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mushteri_ishci_tur`
--

INSERT INTO `mushteri_ishci_tur` (`id`, `mushteri_id`, `ishci_id`, `tur_id`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 1, 2, 1),
(4, 2, 2, 1),
(5, 1, 2, 1),
(6, 1, 2, 2),
(7, 7, 3, 5),
(8, 9, 3, 5),
(9, 8, 3, 2),
(10, 6, 3, 2),
(11, 5, 4, 6),
(12, 5, 4, 6),
(13, 2, 4, 2),
(14, 5, 1, 5),
(15, 2, 1, 5),
(16, 4, 1, 5),
(17, 3, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tur`
--

CREATE TABLE `tur` (
  `id` int(11) NOT NULL,
  `ad` varchar(50) DEFAULT NULL,
  `qiymet` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tur`
--

INSERT INTO `tur` (`id`, `ad`, `qiymet`) VALUES
(1, 'Zaqatala', 200),
(2, 'Shahdag', 150),
(3, 'Tiflis', 1000),
(4, 'Paris', 1100),
(5, 'Ucar', 50),
(6, 'Kurdemir', 50);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ishci`
--
ALTER TABLE `ishci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mushteri`
--
ALTER TABLE `mushteri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mushteri_ishci_tur`
--
ALTER TABLE `mushteri_ishci_tur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mushteri_id` (`mushteri_id`),
  ADD KEY `ishci_id` (`ishci_id`),
  ADD KEY `tur_id` (`tur_id`);

--
-- Indexes for table `tur`
--
ALTER TABLE `tur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ishci`
--
ALTER TABLE `ishci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `mushteri`
--
ALTER TABLE `mushteri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `mushteri_ishci_tur`
--
ALTER TABLE `mushteri_ishci_tur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tur`
--
ALTER TABLE `tur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `mushteri_ishci_tur`
--
ALTER TABLE `mushteri_ishci_tur`
  ADD CONSTRAINT `mushteri_ishci_tur_ibfk_1` FOREIGN KEY (`mushteri_id`) REFERENCES `mushteri` (`id`),
  ADD CONSTRAINT `mushteri_ishci_tur_ibfk_2` FOREIGN KEY (`ishci_id`) REFERENCES `ishci` (`id`),
  ADD CONSTRAINT `mushteri_ishci_tur_ibfk_3` FOREIGN KEY (`tur_id`) REFERENCES `tur` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
