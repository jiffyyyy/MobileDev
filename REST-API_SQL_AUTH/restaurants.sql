-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2023 at 10:59 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurants`
--
create database restaurants  CHARACTER SET utf8 COLLATE utf8_general_ci;   
use restaurants;
-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `imageurl` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `type`, `imageurl`) VALUES
(2, 'เช็งซิมอี๊ - เสาชิงช้า', 'น้ำแข็งไส', 'https://d1sag4ddilekf6.azureedge.net/compressed/merchants/3-C3TCENJ1RVNUUE/hero/9d00babdf9254dcb9db6eb9156cb338f_1661229355793487356.jpeg'),
(3, 'Prime Burger (ไพรม์เบอร์เกอร์) - CTW', 'Coupon, ฟาสต์ฟู้ด', 'https://d1sag4ddilekf6.azureedge.net/compressed/merchants/3-C25EGBDKCBJHLA/hero/e3f7d79df7e24843accae3cd473682c5_1636632870838880914.jpeg'),
(4, 'กะเพราพระนคร - ถนนประชาธิปไตย', 'Coupon, ฟาสต์ฟู้ด', 'https://d1sag4ddilekf6.azureedge.net/compressed/merchants/3-C3XVRYW1EZBKRE/hero/7c0a2b9ba7ac4f30a271ae39db8ab5a7_1669441308634866309.jpeg'),
(5, 'Mr.Burger premium (Halal) - ซอยริมทางรถไฟ 5', 'Coupon, ฟาสต์ฟู้ด', 'https://d1sag4ddilekf6.azureedge.net/compressed/merchants/3-C22KALMHRANWAT/hero/1c2bd09e7225450f89bfc5a67e7eb23e_1631373587846888470.jpeg'),
(6, 'นิยมทอด NiyomTord สาขาบรรทัดทอง -วังใหม่', 'Coupon, ฟาสต์ฟู้ด', 'https://d1sag4ddilekf6.azureedge.net/compressed/merchants/3-C2MAL66URCKASE/hero/0bbcc1092e134c3db7e6d2289ed77744_1616221517731407645.jpeg'),
(7, 'Mobile Steaks ซ.รางน้ำ - แขวงถนนพญาไท', 'Coupon, ฟาสต์ฟู้ด', 'https://d1sag4ddilekf6.azureedge.net/compressed/merchants/3-C3TZR651GB5YCJ/hero/d6e32eb277e44371bcb2c3d5a3d8c8d7_1661864471418541971.jpeg'),
(8, 'หยวน ข้าวมันไก่ 1989 - บางพลัด', 'Coupon, ฟาสต์ฟู้ด', 'https://d1sag4ddilekf6.azureedge.net/compressed/merchants/3-C2XJHBA2FGCZL6/hero/432a81ab70554c03a348033d55a4367b_1628850978135940888.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'user', '2023-01-11 09:56:36', '2023-01-11 09:56:36'),
(2, 'moderator', '2023-01-11 09:56:36', '2023-01-11 09:56:36'),
(3, 'admin', '2023-01-11 09:56:36', '2023-01-11 09:56:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'suwijak', 'wave@gmail.com', '$2a$08$4sDab5QO5pzLNLo3LGs62e6oSnaL2fkFyZCUUdLck1LYSSCTCgl2.', '2023-01-11 09:56:55', '2023-01-11 09:56:55');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`createdAt`, `updatedAt`, `roleId`, `userId`) VALUES
('2023-01-11 09:56:55', '2023-01-11 09:56:55', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`roleId`,`userId`),
  ADD KEY `userId` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
