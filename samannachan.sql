-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2021 at 08:26 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `samannachan`
--

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id_event` int(4) NOT NULL,
  `name_event` varchar(100) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id_event`, `name_event`, `start`, `end`) VALUES
(1, 'Hoshi Day', '2021-02-23', '2021-02-28'),
(3, 'Wonwoo Day 123', '2021-02-10', '2021-02-17'),
(4, 'Jihoon Days', '2021-02-22', '2021-02-27');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id_food` int(4) NOT NULL,
  `name_food` varchar(100) NOT NULL,
  `price` int(4) NOT NULL,
  `id_type_food` int(4) NOT NULL,
  `food_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id_food`, `name_food`, `price`, `id_type_food`, `food_img`) VALUES
(1014, 'พีช', 100, 1001, 'img/1618300896_Wanna-One - Park Jihoon.jpg'),
(1016, 'โกโก้', 65, 1001, 'img/1618304006_65439212_2282530328665352_2115973388504662016_o.jpg'),
(1024, 'นมสด', 90, 1002, 'img/607879ba54ea7.jpg'),
(1027, 'นมสด', 70, 1002, 'img/60787a42b56e8.jpg'),
(1032, 'นมสด', 79, 1002, 'img/nachan.jpg'),
(1033, 'โกโก้', 90, 1001, 'img/607f3e9cc0f93.jpg'),
(1034, 'นมสด', 90, 1001, 'img/nachan.jpg'),
(1035, 'นมสด', 90, 1001, 'img/nachan.jpg'),
(1036, 'นมสด', 0, 1002, 'img/607f41cc3d4f3.jpg'),
(1060, 'นมสด', 50, 1002, 'img/607fc721dd7ab.jpg'),
(1061, 'นมสด', 56, 1001, 'img/nachan.jpg'),
(1062, 'นมสด', 70, 1002, 'img/nachan.jpg'),
(1063, 'นมสด', 60, 0, 'img/nachan.jpg'),
(1064, 'พีชโซดา', 65, 0, 'img/6086376d72a27.jpg'),
(1065, 'พีชโซดา', 65, 0, 'img/608637ee3fa80.jpg'),
(1066, 'นมสด', 65, 0, 'img/608638008a017.jpg'),
(1067, 'นมสด', 65, 1002, 'img/608638f726c9e.jpg'),
(1068, '', 0, 0, 'img/nachan.jpg'),
(1069, 'adasd', 123123, 2, 'img/nachan.jpg'),
(1070, 'adasd', 123123, 2, 'img/6101809e1692e.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `id_preorder` int(11) NOT NULL,
  `id_food` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`id_preorder`, `id_food`, `qty`, `price`, `id_order`, `id_user`) VALUES
(126, 1014, 1, 100, 229, 1026),
(127, 1016, 1, 65, 229, 1026),
(128, 1024, 1, 90, 229, 1026),
(129, 1027, 1, 70, 229, 1026),
(130, 1032, 1, 79, 229, 1026),
(131, 1033, 1, 90, 229, 1026);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(4) NOT NULL,
  `id_user` int(11) NOT NULL,
  `sum_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `id_user`, `sum_price`) VALUES
(229, 1026, 494);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id_project` int(4) NOT NULL,
  `name_project` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `num_project` int(3) NOT NULL,
  `id_user` int(4) NOT NULL,
  `project_img` text NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id_project`, `name_project`, `date`, `num_project`, `id_user`, `project_img`, `status`) VALUES
(1001, 'Hoshi Day', '2021-02-17', 50, 1003, 'img/hoshi.jpg', 2),
(1002, 'Jisung Days', '2021-02-24', 50, 1003, 'img/1022021.jpg', 2),
(1024, 'Jaemin', '2021-04-30', 60, 1004, 'img/hoshi1.jpg', 2),
(1026, 'wonwoo', '2021-04-30', 60, 1003, 'img/hoshi.jpg', 2),
(1027, 'X1', '2021-04-13', 90, 1004, 'img/122768380_2673780616206986_3986747168867379224_o.jpg', 2),
(1028, 'mean', '2021-04-27', 60, 1003, 'img/hoshi.jpg', 1),
(1029, 'mean', '2021-04-27', 60, 1003, 'img/hoshi.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `queue`
--

CREATE TABLE `queue` (
  `Queue` int(11) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `queue`
--

INSERT INTO `queue` (`Queue`, `order_id`) VALUES
(21, 229);

-- --------------------------------------------------------

--
-- Table structure for table `refresh_token`
--

CREATE TABLE `refresh_token` (
  `refresh_token` text NOT NULL,
  `expire` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id_status` int(2) NOT NULL,
  `status_pro` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id_status`, `status_pro`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `type_food`
--

CREATE TABLE `type_food` (
  `id_type_food` int(4) NOT NULL,
  `name_type_food` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type_food`
--

INSERT INTO `type_food` (`id_type_food`, `name_type_food`) VALUES
(1001, 'SAMAN TOAST'),
(1002, 'SAMAN WAFFLE'),
(1003, 'SAMAN DESSERT'),
(1004, 'SAMAN COFFEE'),
(1005, 'SAMAN TEA'),
(1006, 'SAMAN MILK'),
(1007, 'SAMAN COCOA');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(4) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tel` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` text NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `name`, `email`, `tel`, `username`, `password`, `type`) VALUES
(1003, 'Jihoon', 'meen_sunidsa@kkumail.com', '999999', 'jihoon', '1234', 'user'),
(1004, 'admin', 'admin', '0964413046', 'admin', '1234', 'admin'),
(1023, 'wwww', 'w@gmail.com', '0964413046', 'wonwoo', '1234', 'user'),
(1024, 'Sunidsa', 'meen_sunidsa@kkumail.com', '0964413046', 'meen', '1234', 'user'),
(1026, 'Sunidsa', 'meen_sunidsa@kkumail.com', '0964413046', 'mean', '1234', 'user'),
(1027, 'noey', 'meen_sunidsa@kkumail.com', '0964413046', 'noey', '$2b$10$woJ', ''),
(1028, 'mos', 'mos@mos.com', '0999999999', 'moseiei', '$2b$10$pVmbvkDP/GggdfTPSyEPsOZYKdfN7flhGou8DjmDIXasrtmwPz2eq', ''),
(1029, 'mos', 'mos@mos.com', '0999999999', 'moseiei', '$2b$10$bWxzX30eKAemBvs45PsfHO59f3obrfvIYyVFa.lJPLGC0Q7tRGB26', ''),
(1030, 'mos', 'mos@mos.com', '0999999999', 'moseiei', '$2b$10$kUw9Ik9aL48ug7le/gbPW.NDE5ohxfsE.YQ1Dm2ud4rkmPu8r2epm', 'user'),
(1031, 'mos', 'mos@mos.com', '0999999999', 'moseiei', '$2b$10$aWSNlFdV1OkEsy4W1EA90e25UZ0h1ElC/K5dmyFJ542R7jXX9u9g2', 'user'),
(1032, 'mos', 'mos@mos.com', '0999999999', 'moseiei', '$2b$10$7dQwLW4sPxuIYCqvx0PS6Owic45ka7gp0hxniFyjSaK8RNGVWfU1S', 'user'),
(1033, 'mos', 'mos@mos.com', '0999999999', 'moseiei', '$2b$10$a2pxeCk/fWmZJplZtM2rgOp.2zEYHZiE2SaXZ.5AM0z6fXOzMvhrm', 'user'),
(1034, 'mos', 'mos@mos.com', '0999999999', 'moseiei', '$2b$10$yegvST5LPFlZ8TDRB.dznugN0zQoOfEl17whSipxLP0Mg08aUaGp2', 'user'),
(1035, 'mos', 'mos@mos.com', '0999999999', 'moseiei', '$2b$10$4maRY8YvzObM9vQcE6wdWOgHMeO10wjPLHM2iplXH6gWCOcM70TQm', 'user'),
(1036, 'mos', 'mos@mos.com', '0999999999', 'moseiei', '$2b$10$37QVR5CBkBFbuEaveyZAGOrK5Z2VnDN39U9U2n0T9Klbb89TPSSNS', 'user'),
(1037, 'mos', 'mos@mos.com', '0999999999', 'moseiei', '$2b$10$r3HBqcpXZd447brp1N3fVOTjZpgK6hd4uJ5L/.hfxX/mQ/E91JLb2', 'user'),
(1038, 'mos', 'mos@mos.com', '0999999999', 'moseiei', '$2b$10$RxI4rwQEc4eBGH/nYT0B3.CapVxCGkAIjrgImQSHuNJ1gLsvdxfqW', 'user'),
(1039, 'mos', 'mos@mos.com', '0999999999', 'moseiei', '$2b$10$48mqoW8Q7JtpWODbdNNBOenMlVTQ/HiIpNtQJVEmRkKm1s8bpSoHa', 'user'),
(1040, 'mos', 'mos@mos.com', '0999999999', 'moseiei', '$2b$10$i18p2/7VY2RiKfr04ARY6OMNkQ4wQF1rov76E37eebKs3VxMS5wCi', 'user'),
(1041, 'mos', 'mos@mos.com', '0999999999', 'moseiei', '$2b$10$.7q8ZZBEhIZCLPJ87Q8CtuQmIJ4zY4J7haefgfKSIrKPheJUCRBau', 'user'),
(1042, 'mos', 'mos@mos.com', '0999999999', 'moseiei', '$2b$10$qs4YhCWHqe4VeIuuFblnWOkn8HiKimdhcNK6JO6Wv9qMlBQeZcMIK', 'user'),
(1043, 'mos', 'mos@mos.com', '0999999999', 'moseiei', '$2b$10$UqVE6ex4T0vXltS/QR6f/O/aAQe7ET05bTyxeFmiQlSFbM93B9qla', 'user'),
(1044, 'mos', 'mos@mos.com', '0999999999', 'moseiei', '$2b$10$l8T3V/754UW9KJhScBPrpuu1K522EOFjDyzD1RSv3iArCRF6IQSCi', 'user'),
(1045, 'mos', 'mos@mos.com', '0999999999', 'moseiei', '$2b$10$1blPIBV.HqRWXO4Nuq1/jOiTxQ9niJPJ/.DRgnVSHK0EK/Gd2w5tG', 'user'),
(1046, 'mos', 'mos@mos.com', '0999999999', 'moseiei', '$2b$10$vMFsxJpfgj/yGPnC0iNxHugI7GBbmy2PeUim/m5DYigkKwJr6DIFa', 'user'),
(1047, 'mos', 'mos@mos.com', '0999999999', 'moseiei', '$2b$10$xPzOUt7H1a9XPAkU3UO2UOcRPmt9x6sl4h0zYSz3z/QgwjQt0/HRK', 'user'),
(1048, 'mos', 'mos@mos.com', '0999999999', 'moseiei', '$2b$10$PycnaBEK1q56J5dFD2IDuejMJ4FWCKTC5nmGaBqCF5IXKona7oorG', 'user'),
(1049, 'mos', 'mos@mos.com', '0999999999', 'moseiei', '$2b$10$5U.yIXEHJhLIuoPCmwCkDeQfoWU4oJWZUVA5THaYDhNzPXcn9c.2W', 'user'),
(1050, 'mos', 'mos@mos.com', '0999999999', 'moseiei', '$2b$10$/jYtd6bRZpkUIZHM/ueSlOfrvIV8T6bFN2yBVLq.Q29D9p10uFGaK', 'user'),
(1051, 'mos', 'mos@mos.com', '0999999999', 'moseiei', '$2b$10$5mQnWDNr56ILEugzWHlu.uF4EvcreK7ESdHJwf9zFvKHtfd0.4O0a', 'user'),
(1052, 'mos', 'mos@mos.com', '0999999999', 'moseiei', '$2b$10$BFmsSOxsEVaDegDWgeJdz.lBT.f.GH.sN.PXtnN0f3I/1GoN6wy72', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id_event`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id_food`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`id_preorder`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id_project`);

--
-- Indexes for table `queue`
--
ALTER TABLE `queue`
  ADD PRIMARY KEY (`Queue`);

--
-- Indexes for table `type_food`
--
ALTER TABLE `type_food`
  ADD PRIMARY KEY (`id_type_food`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id_event` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id_food` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1071;

--
-- AUTO_INCREMENT for table `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `id_preorder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id_project` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1030;

--
-- AUTO_INCREMENT for table `queue`
--
ALTER TABLE `queue`
  MODIFY `Queue` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `type_food`
--
ALTER TABLE `type_food`
  MODIFY `id_type_food` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1008;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1053;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
