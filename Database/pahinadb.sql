-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2021 at 05:28 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pahinadb`
--

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `isbn13` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `isbn13`, `image`, `title`, `author`) VALUES
(1, '40', '1001635859865', 'https://itbook.store/img/books/1001635859865.png', 'Architect Modern Web Applications with ASP.NET Core and Azure', 'Steve Smith'),
(2, '40', '1001635859865', 'https://itbook.store/img/books/1001635859865.png', 'Architect Modern Web Applications with ASP.NET Core and Azure', 'Steve Smith'),
(3, '40', '1001635859865', 'https://itbook.store/img/books/1001635859865.png', 'Architect Modern Web Applications with ASP.NET Core and Azure', 'Steve Smith'),
(4, '40', '1001635859865', 'https://itbook.store/img/books/1001635859865.png', 'Architect Modern Web Applications with ASP.NET Core and Azure', 'Steve Smith'),
(5, '40', '1001635859865', 'https://itbook.store/img/books/1001635859865.png', 'Architect Modern Web Applications with ASP.NET Core and Azure', 'Steve Smith'),
(6, '40', '1001635859865', 'https://itbook.store/img/books/1001635859865.png', 'Architect Modern Web Applications with ASP.NET Core and Azure', 'Steve Smith'),
(7, '40', '1001635859865', 'https://itbook.store/img/books/1001635859865.png', 'Architect Modern Web Applications with ASP.NET Core and Azure', 'Steve Smith'),
(8, '40', '1001635859865', 'https://itbook.store/img/books/1001635859865.png', 'Architect Modern Web Applications with ASP.NET Core and Azure', 'Steve Smith'),
(9, '40', '1001635859865', 'https://itbook.store/img/books/1001635859865.png', 'Architect Modern Web Applications with ASP.NET Core and Azure', 'Steve Smith'),
(10, '40', '1001635859865', 'https://itbook.store/img/books/1001635859865.png', 'Architect Modern Web Applications with ASP.NET Core and Azure', 'Steve Smith'),
(11, '40', '1001635859865', 'https://itbook.store/img/books/1001635859865.png', 'Architect Modern Web Applications with ASP.NET Core and Azure', 'Steve Smith'),
(12, '40', '9781617295645', 'https://itbook.store/img/books/9781617295645.png', 'Graph-Powered Machine Learning', 'Alessandro Negro'),
(13, '40', '9781617295645', 'https://itbook.store/img/books/9781617295645.png', 'Graph-Powered Machine Learning', 'Alessandro Negro'),
(14, '40', '9781430229469', 'https://itbook.store/img/books/9781430229469.png', 'Expert Oracle Database Architecture, 2nd Edition', 'Thomas Kyte'),
(15, '40', '9780134858333', 'https://itbook.store/img/books/9780134858333.png', 'SQL Queries for Mere Mortals, 4th Edition', 'John L. Viescas');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `isbn13` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `user_id`, `isbn13`, `image`, `title`, `author`) VALUES
(7, '40', '1001635859865', 'https://itbook.store/img/books/1001635859865.png', 'Architect Modern Web Applications with ASP.NET Core and Azure', 'Steve Smith'),
(13, '40', '9781617295645', 'https://itbook.store/img/books/9781617295645.png', 'Graph-Powered Machine Learning', 'Alessandro Negro'),
(15, '40', '9781430229469', 'https://itbook.store/img/books/9781430229469.png', 'Expert Oracle Database Architecture, 2nd Edition', 'Thomas Kyte'),
(16, '40', '1001635431011', 'https://itbook.store/img/books/1001635431011.png', 'HackSpace Magazine: Issue 47', 'HackSpace Team'),
(17, '40', '9780134858333', 'https://itbook.store/img/books/9780134858333.png', 'SQL Queries for Mere Mortals, 4th Edition', 'John L. Viescas');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `username`, `password`) VALUES
(40, 'Angelica Estrada', 'ange123@gmail.com', 'test', '1234'),
(41, 'Lowela Arevalo', 'lowela@gmail.com', 'lowela11', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
