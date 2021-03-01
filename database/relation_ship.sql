-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2021 at 02:59 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `relation_ship`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars1`
--

CREATE TABLE `cars1` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mechanic_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cars1`
--

INSERT INTO `cars1` (`id`, `name`, `mechanic_id`) VALUES
(1, 'Car-1', 1),
(2, 'Car-2', 2),
(3, 'Car-3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `images1`
--

CREATE TABLE `images1` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `imageable_id` int(11) DEFAULT NULL,
  `imageable_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images1`
--

INSERT INTO `images1` (`id`, `name`, `imageable_id`, `imageable_type`) VALUES
(1, 'Name-1', 1, 'App\\Models\\Post1'),
(2, 'Name-1', 1, 'App\\Models\\User1'),
(3, 'Name-2', 1, 'App\\Models\\User1'),
(4, 'Name-3', 1, 'App\\Models\\User1');

-- --------------------------------------------------------

--
-- Table structure for table `mechanics1`
--

CREATE TABLE `mechanics1` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mechanics1`
--

INSERT INTO `mechanics1` (`id`, `name`) VALUES
(1, 'Test1'),
(2, 'Test2');

-- --------------------------------------------------------

--
-- Table structure for table `owners1`
--

CREATE TABLE `owners1` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `car_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `owners1`
--

INSERT INTO `owners1` (`id`, `name`, `car_id`) VALUES
(1, 'Owner-1', 1),
(2, 'Owner-2', 2),
(3, 'Owner-3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts1`
--

CREATE TABLE `posts1` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts1`
--

INSERT INTO `posts1` (`id`, `name`) VALUES
(1, 'Post-1'),
(2, 'Post-2'),
(3, 'Post-3');

-- --------------------------------------------------------

--
-- Table structure for table `posts2`
--

CREATE TABLE `posts2` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts2`
--

INSERT INTO `posts2` (`id`, `name`) VALUES
(1, 'Post-1'),
(2, 'Post-2');

-- --------------------------------------------------------

--
-- Table structure for table `role1_user1`
--

CREATE TABLE `role1_user1` (
  `id` int(11) NOT NULL,
  `user1_id` int(11) DEFAULT NULL,
  `role1_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role1_user1`
--

INSERT INTO `role1_user1` (`id`, `user1_id`, `role1_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles1`
--

CREATE TABLE `roles1` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles1`
--

INSERT INTO `roles1` (`id`, `name`) VALUES
(1, 'Role-1'),
(2, 'Role-2');

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `tag2_id` int(11) DEFAULT NULL,
  `taggable_id` int(11) DEFAULT NULL,
  `taggable_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taggables`
--

INSERT INTO `taggables` (`tag2_id`, `taggable_id`, `taggable_type`) VALUES
(0, 1, 'App\\Models\\Post2'),
(0, 1, 'App\\Models\\Post2'),
(2, 1, 'App\\Models\\Post2'),
(3, 1, 'App\\Models\\Post2');

-- --------------------------------------------------------

--
-- Table structure for table `tags2`
--

CREATE TABLE `tags2` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tags2`
--

INSERT INTO `tags2` (`id`, `name`) VALUES
(1, '123'),
(2, '123'),
(3, '123');

-- --------------------------------------------------------

--
-- Table structure for table `users1`
--

CREATE TABLE `users1` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users1`
--

INSERT INTO `users1` (`id`, `name`) VALUES
(1, 'User-1\r\n'),
(2, 'User-2');

-- --------------------------------------------------------

--
-- Table structure for table `videos2`
--

CREATE TABLE `videos2` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars1`
--
ALTER TABLE `cars1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mechanic_id` (`mechanic_id`);

--
-- Indexes for table `images1`
--
ALTER TABLE `images1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mechanics1`
--
ALTER TABLE `mechanics1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owners1`
--
ALTER TABLE `owners1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_id` (`car_id`);

--
-- Indexes for table `posts1`
--
ALTER TABLE `posts1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts2`
--
ALTER TABLE `posts2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role1_user1`
--
ALTER TABLE `role1_user1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role1_id` (`role1_id`),
  ADD KEY `user1_id` (`user1_id`);

--
-- Indexes for table `roles1`
--
ALTER TABLE `roles1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags2`
--
ALTER TABLE `tags2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users1`
--
ALTER TABLE `users1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos2`
--
ALTER TABLE `videos2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars1`
--
ALTER TABLE `cars1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `images1`
--
ALTER TABLE `images1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mechanics1`
--
ALTER TABLE `mechanics1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `owners1`
--
ALTER TABLE `owners1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts1`
--
ALTER TABLE `posts1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts2`
--
ALTER TABLE `posts2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `role1_user1`
--
ALTER TABLE `role1_user1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles1`
--
ALTER TABLE `roles1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tags2`
--
ALTER TABLE `tags2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users1`
--
ALTER TABLE `users1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `videos2`
--
ALTER TABLE `videos2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cars1`
--
ALTER TABLE `cars1`
  ADD CONSTRAINT `cars1_ibfk_1` FOREIGN KEY (`mechanic_id`) REFERENCES `mechanics1` (`id`);

--
-- Constraints for table `owners1`
--
ALTER TABLE `owners1`
  ADD CONSTRAINT `owners1_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `cars1` (`id`);

--
-- Constraints for table `role1_user1`
--
ALTER TABLE `role1_user1`
  ADD CONSTRAINT `role1_user1_ibfk_1` FOREIGN KEY (`role1_id`) REFERENCES `roles1` (`id`),
  ADD CONSTRAINT `role1_user1_ibfk_2` FOREIGN KEY (`user1_id`) REFERENCES `users1` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
