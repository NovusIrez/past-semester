-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2021 at 03:53 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crs`
--

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `Own_ID` int(10) NOT NULL,
  `Own_Name` varchar(20) NOT NULL,
  `Own_Pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`Own_ID`, `Own_Name`, `Own_Pass`) VALUES
(1, 'ahmad', 'abc123'),
(5, 'yo', 'abc'),
(6, 'Hajar', 'hajar123');

-- --------------------------------------------------------

--
-- Table structure for table `rented`
--

CREATE TABLE `rented` (
  `R_ID` int(10) NOT NULL,
  `V_ID` int(10) NOT NULL,
  `User_ID` int(10) NOT NULL,
  `R_Date` date DEFAULT NULL,
  `R_End` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `returned`
--

CREATE TABLE `returned` (
  `Return_ID` int(10) NOT NULL,
  `R_ID` int(10) NOT NULL,
  `Return_Date` date DEFAULT NULL,
  `Return_Earn` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_ID` int(10) NOT NULL,
  `User_Name` varchar(20) NOT NULL,
  `User_Pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_ID`, `User_Name`, `User_Pass`) VALUES
(1, 'Azam', 'mazam123'),
(2, 'Ali', 'abc123'),
(3, 'Pokya', 'abc123'),
(4, 'Mika', 'abc123'),
(5, 'Lukman', 'abc123');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `V_ID` int(10) NOT NULL,
  `Own_ID` int(10) NOT NULL,
  `V_Type` varchar(20) NOT NULL,
  `V_Brand` varchar(20) DEFAULT NULL,
  `V_PlateNum` varchar(20) DEFAULT NULL,
  `V_Price` int(10) NOT NULL,
  `V_Status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`Own_ID`);

--
-- Indexes for table `rented`
--
ALTER TABLE `rented`
  ADD PRIMARY KEY (`R_ID`),
  ADD KEY `Rented_Vehicle_FK` (`V_ID`),
  ADD KEY `Rented_User_FK` (`User_ID`);

--
-- Indexes for table `returned`
--
ALTER TABLE `returned`
  ADD PRIMARY KEY (`Return_ID`),
  ADD KEY `Returned_Rented_PK` (`R_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_ID`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`V_ID`),
  ADD KEY `Vehicle_Owner_FK` (`Own_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `owner`
--
ALTER TABLE `owner`
  MODIFY `Own_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rented`
--
ALTER TABLE `rented`
  MODIFY `R_ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `returned`
--
ALTER TABLE `returned`
  MODIFY `Return_ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `User_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `V_ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rented`
--
ALTER TABLE `rented`
  ADD CONSTRAINT `Rented_User_FK` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`),
  ADD CONSTRAINT `Rented_Vehicle_FK` FOREIGN KEY (`V_ID`) REFERENCES `vehicle` (`V_ID`) ON DELETE CASCADE;

--
-- Constraints for table `returned`
--
ALTER TABLE `returned`
  ADD CONSTRAINT `Returned_Rented_PK` FOREIGN KEY (`R_ID`) REFERENCES `rented` (`R_ID`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD CONSTRAINT `Vehicle_Owner_FK` FOREIGN KEY (`Own_ID`) REFERENCES `owner` (`Own_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
