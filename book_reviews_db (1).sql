-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2024 at 07:11 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_reviews_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `book_title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `rating` int(5) DEFAULT NULL,
  `review_text` text DEFAULT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `book_title`, `author`, `rating`, `review_text`, `date_added`, `user_id`) VALUES
(119, 'Madol Doova', 'Martin Wickramasinghe', 3, 'A delightful story of childhood adventures on an isolated island in Sri Lanka.', '2024-11-28 23:18:47', 1),
(120, 'Aganthukaya', 'K. Jayathilaka', 3, 'A suspenseful novel with themes of mystery and societal critique', '2024-11-28 23:20:02', 59),
(121, 'Harry Potter and the Sorcerer’s Stone', 'J.K. Rowling', 3, 'Magic, friendship, defeating evil.', '2024-11-28 23:21:53', 1),
(132, 'Hathpana', 'Kumarathunga Munidasa', 4, 'Best and funny story, You should read this,Recomandad ', '2024-11-29 01:26:56', 59);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `created_at`) VALUES
(1, 'Taniya', '1234', 'tani@gmail.com', '2024-11-28 04:52:37'),
(59, 'sithum', '$2a$10$F6siCGhvZHE4Zx/d12Bj..1q6gygKCVsRXmjEh5852S31Vq9tOU2K', 'sithum@gmail.com', '2024-11-28 18:59:15'),
(80, 'Kavindu', '$2a$10$7At2Y6AhEC3BcU1nMvjrHefwVQQRUMV4tnYiII/BhfeM3UmIM5DsS', 'Kv@gmail.com', '2024-12-26 12:40:58'),
(81, 'Pathitana', '$2a$10$Q/zGOVLGvXOK35MNtmexnu5fMYAks3oAmQZOUwGakukcGo2xsvTzi', 'pathirana05@gmail.com', '2024-12-28 05:43:37'),
(82, 'Kumara', '$2a$10$vjVtT8XR0U8LUnDgPnhAwO2e7IytGQy/58m1Yjn1rK6xLuIpbc/S6', 'ku@gmail.com', '2024-12-28 05:44:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
