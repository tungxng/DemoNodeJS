-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2020 at 07:49 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web`
--

-- --------------------------------------------------------

--
-- Table structure for table `verify`
--

CREATE TABLE `verify` (
  `id` int(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `verify` varchar(255) NOT NULL,
  `active` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `verify`
--

INSERT INTO `verify` (`id`, `email`, `password`, `verify`, `active`) VALUES
(1, 'nguyenphong1771998@gmail.com', '$2b$10$BkG8l7p/vge3jQlo2S1uN.qLRiXBaUd.Y0lKW5rkNtSaFOTRkNq6i', '', ''),
(2, 'nguyenvanphong1771999@gmail.com', '$2b$10$bfH7fyx73MgmU0NNMGaaFev660TGfuVAgIbh3SVFygRP4ozHcNkCG', '8207937', ''),
(3, 'nguyenvanphong1771999@gmail.com', '$2b$10$fGb.eYG29jahkCAcXRdak.8qzlyAKJ7sHzNBzCkeHcifsULY0zknW', '2291080', ''),
(4, 'nguyenvanphong1771999@gmail.com', '$2b$10$lALIXaWC38V9in/G/FjX2OZtAAJkOOixMpvr0/CnPro0aASx2EWQG', '9034378', ''),
(5, 'nguyenvanphong1771999@gmail.com', '$2b$10$ojggib9VmfssxFW3Sy5UJOPwdz8R7a13EAnn7rsz9FFLZ6CThZxs6', '4605157', ''),
(6, 'nguyenvanphong1771999@gmail.com', '$2b$10$.UhtOrNNIr9n/SkcBXr3SedDDkKKplxZjplmBT3g2TLkIlHZ/riyu', '1114592', ''),
(7, 'nguyenvanphong1771999@gmail.com', '$2b$10$zVBWXh3GFVv9ik.ss4WP5eA3GBaN3fmkdBXnCeEVBYw8xA8AmdYWa', '5899771', ''),
(8, 'nguyenphong1771998@gmail.com', '$2b$10$Zhv6Y8U0ZySyNstk.Bh2xeai65ZVPrtBXnecbg225mwJpWkVsGWV.', '5936099', ''),
(9, 'nguyenphong1771998@gmail.com', '$2b$10$RzJd8lW5kVCtLcH4Kxt5zOXWhWApn4lA31RiYcNZQyJ/xdpSS725m', '6463535', ''),
(10, 'nguyenphong1771998@gmail.com', '$2b$10$lveL1VHt9k73D1x9Lb72aO.Jiz6nLvGwVmI0.SPhLWXXdn2s2h.jG', '1679215', ''),
(11, 'nguyenphong1771998@gmail.com', '$2b$10$GfW04EGZyCtfSjH9S9d1juZlNseo.rVelcFHTIIgOd/8M0wuWryyq', '9061976', ''),
(12, 'nguyenphong1771998@gmail.com', '$2b$10$ss5uPC77PxmthqsTQAk8keSZHz9zDp9FZxCNyXa7faGfzzHRXzJVK', '2000603', ''),
(13, 'nguyenphong1771998@gmail.com', '$2b$10$OKdAPpyyleX9uXg1Z0Q04uu.DEN3RJKm0s4y.kwOOZwvMm3RYNDvi', '2548629', ''),
(14, 'nguyenphong1771998@gmail.com', '$2b$10$7F9MQixdf8BBJ5MWM3AXr.SE4VpdekTNoqwlWv2GyQB9ifJsg1sUS', '2583054', ''),
(15, 'nguyenphong1771998@gmail.com', '$2b$10$KicLP/xIeqC2T7CNEvdrYebmtyo5ZNjR7iq0mVbHIT.Oym05KXaBm', '2892259', ''),
(16, 'phusinh1999@gmail.com', '$2b$10$WGub5ql2M5RTL40IZ2k.QeVnunlL.NMrpA8ilKxWrH1FnsS9Oaa4W', '7870088', ''),
(17, 'phusinh1999@gmail.com', '$2b$10$UBnCMJQ/QOVKc/VXJooR5OPb974bAblqb/VfEFqk0ipd1Ce0lZTEu', '982058', ''),
(18, 'phusinh1999@gmail.com', '$2b$10$1fhx7VbMMemMIfwc9X8tYuPaQGM4IXXTFx7YZeJKZL2SI8lMkqQxO', '3089467', ''),
(19, 'phusinh1999@gmail.com', '$2b$10$4lYYFQNvgJsdPXE5l1i2feActoORO0ET4C6CaZAHn4ElnaUecWzV.', '2009135', ''),
(20, 'nguyenvanphong1771999@gmail.com', '$2b$10$uLowCsk0k0K8axcyj2OpGeTy28r4IyEg1ZqddcDFtN/q9yNQpB3fa', '5323271', ''),
(21, 'nguyenvanphong1771999@gmail.com', '$2b$10$HYBe1IA8bwmeFUYwQxxVyeQ9uEr4k3RdUNQW3X3YwazuRk3bJm1K.', '9451289', ''),
(22, 'nguyenvanphong1771999@gmail.com', '$2b$10$.tSsgvuw4QNrXzz.yHxAg.ufitRzlhF2Ss6wYi7PwyKuUUG2vbFqa', '5568519', ''),
(23, 'nguyenvanphong1771999@gmail.com', '$2b$10$f7nsV9xh2zu1ixCCH0DfAOKo6ftuqs6rw8NCyXYtAQrznHv6hqVta', '2289994', ''),
(24, 'nguyenvanphong1771999@gmail.com', '$2b$10$nHFp7eA/GauGdv2FcG0a9ewhxWsafqTAC7OibQS7LtGg/OTO4Qqy.', '61918', ''),
(25, 'nguyenvanphong1771999@gmail.com', '$2b$10$gnCNUWoDtt.Khk2/HGNnTOMiOs3n1F0285mV.4fvs8fANKNwUM0ZO', '9391082', ''),
(26, 'nguyenvanphong_t62@hus.edu.vn', '$2b$10$NyUlSY/h8yiJBttDZkJ/A.CCVW0kWR7sX9V61LAPTvSdt3YJV81c2', '8075192', ''),
(27, 'nguyenvanphong_t62@hus.edu.vn', '$2b$10$fDBBPuTYTm/.13e05GxZEutV/IG8Dbye/6F3tZ3XJ3i3sv98aZIlO', '3972271', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `verify`
--
ALTER TABLE `verify`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `verify`
--
ALTER TABLE `verify`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
