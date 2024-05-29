-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2023 at 09:54 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dairy_farm`
--

-- --------------------------------------------------------

--
-- Table structure for table `buffalo`
--

CREATE TABLE `buffalo` (
  `O_ID` decimal(2,0) NOT NULL,
  `B_ID` decimal(3,0) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `category_ID` decimal(2,0) DEFAULT NULL,
  `worth` decimal(6,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buffalo`
--

INSERT INTO `buffalo` (`O_ID`, `B_ID`, `image`, `category_ID`, `worth`) VALUES
(1, 101, 'C:/Users/gauta/Desktopwhats.jpeg', 1, 50000),
(1, 102, 'C:/Users/gauta/Desktopwhats.jpeg', 2, 55000),
(1, 103, 'C:/Users/gauta/Desktopwhats.jpeg', 3, 45000),
(1, 104, 'C:/Users/gauta/Desktopwhats.jpeg', 4, 80000),
(1, 105, 'C:/Users/gauta/Desktopwhats.jpeg', 5, 90000);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_ID` decimal(2,0) NOT NULL,
  `C_name` varchar(12) DEFAULT NULL,
  `C_description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_ID`, `C_name`, `C_description`) VALUES
(1, 'Desi Murra', 'This are Best Breath of Bafflo'),
(2, 'Jaipuri', 'This are Best Breath of Bafflo'),
(3, 'Jafhari', 'This are Best Breath of Bafflo'),
(4, 'maarwadii', 'This are Best Breath of Bafflo'),
(5, 'punjabi', 'This are Best Breath of Bafflo');

-- --------------------------------------------------------

--
-- Table structure for table `clientt`
--

CREATE TABLE `clientt` (
  `Client_ID` decimal(5,0) NOT NULL,
  `C_name` varchar(15) DEFAULT NULL,
  `cont_no` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feed`
--

CREATE TABLE `feed` (
  `Feed_ID` decimal(2,0) NOT NULL,
  `Feed_name` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feeds`
--

CREATE TABLE `feeds` (
  `O_ID` decimal(2,0) NOT NULL,
  `B_ID` decimal(3,0) NOT NULL,
  `Worker_ID` decimal(3,0) NOT NULL,
  `Feed_ID` decimal(3,0) NOT NULL,
  `Quantity` decimal(3,0) DEFAULT NULL,
  `Feed_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feeds`
--

INSERT INTO `feeds` (`O_ID`, `B_ID`, `Worker_ID`, `Feed_ID`, `Quantity`, `Feed_time`) VALUES
(0, 0, 0, 0, 0, '00:00:00'),
(1, 0, 0, 4, 0, '00:00:00'),
(1, 0, 0, 20, 0, '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_monitoring`
--

CREATE TABLE `medicine_monitoring` (
  `O_ID` decimal(2,0) NOT NULL,
  `B_ID` decimal(3,0) NOT NULL,
  `M_ID` decimal(3,0) NOT NULL,
  `Date_of_record` date DEFAULT NULL,
  `Disease_name` varchar(15) DEFAULT NULL,
  `Doctor_name` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicine_monitoring`
--

INSERT INTO `medicine_monitoring` (`O_ID`, `B_ID`, `M_ID`, `Date_of_record`, `Disease_name`, `Doctor_name`) VALUES
(1, 101, 51, '2017-08-09', 'feaver', 'Mr.Chouhan');

-- --------------------------------------------------------

--
-- Table structure for table `milk_collection`
--

CREATE TABLE `milk_collection` (
  `O_ID` decimal(2,0) NOT NULL,
  `B_ID` decimal(3,0) NOT NULL,
  `Collection_ID` decimal(2,0) NOT NULL,
  `C_Date` date DEFAULT NULL,
  `Litre_collected` decimal(4,0) DEFAULT NULL,
  `shift` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `milk_collection`
--

INSERT INTO `milk_collection` (`O_ID`, `B_ID`, `Collection_ID`, `C_Date`, `Litre_collected`, `shift`) VALUES
(1, 103, 6, '2021-04-09', 100, 'evening'),
(1, 104, 7, '2023-05-08', 200, 'morning'),
(1, 105, 8, '2023-04-08', 300, 'morning');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `SNo` decimal(2,0) DEFAULT NULL,
  `O_ID` decimal(2,0) NOT NULL,
  `B_ID` decimal(3,0) NOT NULL,
  `Collection_ID` decimal(2,0) NOT NULL,
  `Client_ID` decimal(5,0) NOT NULL,
  `Amount_of_milk_taken` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ownerr`
--

CREATE TABLE `ownerr` (
  `O_ID` decimal(2,0) NOT NULL,
  `passwd` varchar(8) DEFAULT NULL,
  `Oname` varchar(15) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `cont_no` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ownerr`
--

INSERT INTO `ownerr` (`O_ID`, `passwd`, `Oname`, `email`, `cont_no`) VALUES
(1, '123', 'Mr Amar', 'amar30@gmail.com', 9981897734);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `O_ID` decimal(2,0) NOT NULL,
  `Feed_ID` decimal(2,0) NOT NULL,
  `Quantity` decimal(6,0) DEFAULT NULL,
  `rate` decimal(4,0) DEFAULT NULL,
  `Date_of_purchase` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `worker`
--

CREATE TABLE `worker` (
  `O_ID` decimal(2,0) NOT NULL,
  `Worker_ID` decimal(3,0) NOT NULL,
  `Wname` varchar(15) DEFAULT NULL,
  `cont_no` decimal(10,0) DEFAULT NULL,
  `city` varchar(12) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `worker`
--

INSERT INTO `worker` (`O_ID`, `Worker_ID`, `Wname`, `cont_no`, `city`, `address`) VALUES
(1, 1, 'Mr Aalfez', 8827334401, 'Indore', 'Machal road Betma'),
(1, 2, 'Mr Narsingh', 8827337701, 'Indore', 'Khandwa road Indore'),
(1, 3, 'Mr Chanduu', 9927337701, 'Guna', 'Shekhar nagar Guna ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buffalo`
--
ALTER TABLE `buffalo`
  ADD PRIMARY KEY (`O_ID`,`B_ID`),
  ADD KEY `category_ID` (`category_ID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_ID`);

--
-- Indexes for table `clientt`
--
ALTER TABLE `clientt`
  ADD PRIMARY KEY (`Client_ID`);

--
-- Indexes for table `feed`
--
ALTER TABLE `feed`
  ADD PRIMARY KEY (`Feed_ID`);

--
-- Indexes for table `feeds`
--
ALTER TABLE `feeds`
  ADD PRIMARY KEY (`O_ID`,`B_ID`,`Worker_ID`,`Feed_ID`);

--
-- Indexes for table `medicine_monitoring`
--
ALTER TABLE `medicine_monitoring`
  ADD PRIMARY KEY (`O_ID`,`B_ID`,`M_ID`);

--
-- Indexes for table `milk_collection`
--
ALTER TABLE `milk_collection`
  ADD PRIMARY KEY (`O_ID`,`B_ID`,`Collection_ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`O_ID`,`B_ID`,`Collection_ID`,`Client_ID`),
  ADD KEY `Client_ID` (`Client_ID`);

--
-- Indexes for table `ownerr`
--
ALTER TABLE `ownerr`
  ADD PRIMARY KEY (`O_ID`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`O_ID`,`Feed_ID`);

--
-- Indexes for table `worker`
--
ALTER TABLE `worker`
  ADD PRIMARY KEY (`O_ID`,`Worker_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buffalo`
--
ALTER TABLE `buffalo`
  ADD CONSTRAINT `buffalo_ibfk_1` FOREIGN KEY (`O_ID`) REFERENCES `worker` (`O_ID`),
  ADD CONSTRAINT `buffalo_ibfk_2` FOREIGN KEY (`category_ID`) REFERENCES `category` (`category_ID`);

--
-- Constraints for table `medicine_monitoring`
--
ALTER TABLE `medicine_monitoring`
  ADD CONSTRAINT `medicine_monitoring_ibfk_1` FOREIGN KEY (`O_ID`,`B_ID`) REFERENCES `buffalo` (`O_ID`, `B_ID`);

--
-- Constraints for table `milk_collection`
--
ALTER TABLE `milk_collection`
  ADD CONSTRAINT `milk_collection_ibfk_1` FOREIGN KEY (`O_ID`,`B_ID`) REFERENCES `buffalo` (`O_ID`, `B_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`O_ID`,`B_ID`,`Collection_ID`) REFERENCES `milk_collection` (`O_ID`, `B_ID`, `Collection_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`Client_ID`) REFERENCES `clientt` (`Client_ID`);

--
-- Constraints for table `worker`
--
ALTER TABLE `worker`
  ADD CONSTRAINT `worker_ibfk_1` FOREIGN KEY (`O_ID`) REFERENCES `ownerr` (`O_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
