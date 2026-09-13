-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2025 at 06:29 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookmark`
--

CREATE TABLE `bookmark` (
  `user_id` varchar(20) NOT NULL,
  `playlist_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` varchar(20) NOT NULL,
  `content_id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` int(10) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `number`, `message`) VALUES
('sdf', 'fd.doyal@gmail.com', 17, 'sdf'),
('sdf', 'fd.doyal@gmail.com', 54274, 'xdf'),
('sd', 'fd.doyal@gmail.com', 7852, 'sdf');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `playlist_id` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `video` varchar(100) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `tutor_id`, `playlist_id`, `title`, `description`, `video`, `thumb`, `date`, `status`) VALUES
('M3vcqxytkQsmePWOu8HN', 'rtZFUnHHWrXjnCJXP0R2', 'FoVO7Z7oIpVA4tR9C3lt', 'HTML', 'share it', 'qF8XR6YpRctB6zkiwkPg.mp4', '7ZdE3XIz3c7zBsZYETkD.png', '2024-12-07', 'active'),
('INg0dYtgDwqSHZkrJzfm', 'S63jIEcAIStY3vDTWnct', 'lc85FvfhzHhQyQ6CYgwU', 'new video', 'asdfasdfasdf', 'Pki5paZjQtMVL9CtOpcM.mp4', 'Ve6LkMK29UCDgb1cTM6H.jpg', '2024-12-19', 'active'),
('OLCSQtBIUlBRMWHNFEfc', '5XLlSJEarP7Ix4GZQfRU', 'iKoWt9wHDTQxegDjdnMB', 'JS', 'ghj', 'rcY1s9MAuNtxp9SHoXnr.mp4', 'CGrwfCtFyQYE2cxpjhSf.JPG', '2024-12-21', 'active'),
('v4kvAX45rkjHLnA9xrZZ', '2QFYffkNmsAFiPp9tDNv', 'v6pXJLXPaaHnSCyKrGOC', 'Admin Pannel 2', 'hi two', 'yvKaVXXLWNfVS0r2Bw9D.mp4', 'Y538aIAeT8axbjVe0HKj.jpg', '2025-01-09', 'deactive'),
('c6bBozx1fXVEeSA53oMh', '7oX2lq5wKShWck6Ls5uf', 'e8RGqJ86huJLky9NWLZw', '02', '02', 'q7AzBFxe4PiAkuxBaNsw.mp4', 'AODZQD0WIpMHmdluEc6T.JPG', '2025-01-09', ''),
('Gc6xixblkC58RUmS3ERH', 'iL4cWauO6b0psz1dhm2i', 'sbO5NHKzkoN7S7zZheXg', '02', '02', 'QHh9xZwAUnP3uoZx3q2A.mp4', 'b4fSBR9yGcbiJEf8EelY.jpg', '2025-01-09', ''),
('STaNRgMjCRdvxMYTG2qM', 'iL4cWauO6b0psz1dhm2i', 'sbO5NHKzkoN7S7zZheXg', '03', '03', 'Nv7FTlWA7eEUvbblcysd.mp4', 'sdxFPWSiukdYxCOhW6if.jpg', '2025-01-09', ''),
('nUtx7SWjjpVmm8cb2ugG', '7oX2lq5wKShWck6Ls5uf', 'OzZxutjTLYEzPjNeUxlC', 'the daily campus', 'asdfsadf', 'hZ37AjAPOzIPttcA15pu.mp4', 'DWtAkTNCZYhzsEFT8JN8.jpg', '2025-01-10', 'active'),
('dyaxNHEi4LW6X5ziYKyX', 'VhMHF892jz7ylBtVWEJ3', '7DPGRuccyrNRzUBnHMg4', '2', '2', 'Lgh3Z9tTMNSFkfXaPzRv.mp4', 'fx5vbntG4UoiA8On5Eil.png', '2025-01-12', ''),
('cVN20z85TgbAbMMO67xA', 'VhMHF892jz7ylBtVWEJ3', '7DPGRuccyrNRzUBnHMg4', '3', '3', 'kGGPurqRRCialM8xTNYF.mp4', 'brpEl9DIURnKxcvfta8c.png', '2025-01-12', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `user_id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `content_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id`, `tutor_id`, `title`, `description`, `thumb`, `date`, `status`) VALUES
('eNywm2FmSFYXi5ax01jv', 'wYkU0BhzGQynGTw3AOB6', 'design', 'sdfsdf', 'bF8MRKyXu2M2ADwEXCb9.jpg', '2024-11-29', 'deactive'),
('FoVO7Z7oIpVA4tR9C3lt', 'rtZFUnHHWrXjnCJXP0R2', 'HTML', 'hi everyone ', 'CukBv7hRsNz5ghhhwBr9.png', '2024-12-07', 'deactive'),
('ZEdkUbtnxoGLFFmdMjXI', 'ykP3C9DYsFw5QKQWTmVp', 'JS', 'hjfg', 'DCEs8qYWSilcqMeEKz97.jpg', '2024-12-18', 'deactive'),
('lbxjpOxYY3k226ankF5V', 'WP17mz56vMKZZFbf6e1s', 'asfasdf', 'asdf', 'pd8IDT356t3pNxqc6UcE.jpg', '2024-12-19', 'deactive'),
('UO1fML1txNz86EiNIcLg', 'WP17mz56vMKZZFbf6e1s', 'asdfasdf', 'asdfasdf', 'hdsHWY1jiVUUMZzGBVTk.jpg', '2024-12-19', 'deactive'),
('jjBFKtxy1ohn5hwFG1m1', 'eDWYeI768lIYOHlQt7Kp', 'bioloigst', 'asdfasdasldfasldfj asdf', 'iuPUecCaKzQHXxofuPsF.JPG', '2024-12-19', 'deactive'),
('gDtXwj3TvG4gFiiclyrt', 'eDWYeI768lIYOHlQt7Kp', 'asdfasdf', 'asdf', 'do7c3hf8iCsjJf2j9ugr.jpg', '2024-12-19', 'deactive'),
('ZeVhlbKEQsv61cMQcPeM', 'eDWYeI768lIYOHlQt7Kp', 'saasdf', 'adfasdf', 'NfW1sDvhpGxprKvEocKP.jpg', '2024-12-19', 'deactive'),
('lc85FvfhzHhQyQ6CYgwU', 'S63jIEcAIStY3vDTWnct', 'Cange by super user', 'asdf', '2c2vWGfi9SeOtKhG9akO.jpg', '2024-12-19', 'deactive'),
('v6pXJLXPaaHnSCyKrGOC', '2QFYffkNmsAFiPp9tDNv', 'JS', 'Admin', 'vxHEa1RbjXLKooSYPFIu.JPG', '2025-01-09', 'active'),
('cgm14mCvpjKj5x1htlkF', '7oX2lq5wKShWck6Ls5uf', 'FD Home', 'home', 'wVBa4OlhUuo6neMAGYlz.png', '2025-01-09', 'deactive'),
('e8RGqJ86huJLky9NWLZw', '7oX2lq5wKShWck6Ls5uf', 'HTML', '1', 'TgSSXePD3QvMf0UcOF4q.png', '2025-01-09', 'active'),
('sbO5NHKzkoN7S7zZheXg', 'iL4cWauO6b0psz1dhm2i', 'new 2', 'new 2', 'AM7pj8qVIVV40fFe2oLB.png', '2025-01-09', 'active'),
('OzZxutjTLYEzPjNeUxlC', '7oX2lq5wKShWck6Ls5uf', 'S', 'S1', '4qHE6bhin3hrJ9VT5MOs.png', '2025-01-10', 'active'),
('7DPGRuccyrNRzUBnHMg4', 'VhMHF892jz7ylBtVWEJ3', 'JQuary', 'hi,everyone', 'grOsLEPpzhARCI293Su0.png', '2025-01-12', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `tutors`
--

CREATE TABLE `tutors` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `profession` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `action` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tutors`
--

INSERT INTO `tutors` (`id`, `name`, `profession`, `email`, `password`, `image`, `action`) VALUES
('2QFYffkNmsAFiPp9tDNv', 'Fersous ', 'doctor', 'doyalad@gmail.com', '011c945f30ce2cbafc452f39840f025693339c42', 'M5WkJqhiFF1yMqgTC745.JPG', 1),
('5XLlSJEarP7Ix4GZQfRU', 'Doya Babu', 'photographer', 'doyal@gmail.com', '011c945f30ce2cbafc452f39840f025693339c42', 'S0cVV7QttFV0eMYo3ijc.jpg', 0),
('7oX2lq5wKShWck6Ls5uf', 'Mr. Litan Islam', 'teacher', 'fd@gmail.com', '011c945f30ce2cbafc452f39840f025693339c42', 'LpmQuepFGjcu3hfpPC56.jpg', 1),
('eDWYeI768lIYOHlQt7Kp', 'tutor', 'biologist', 'tutor@tutor.tutor', '011c945f30ce2cbafc452f39840f025693339c42', '2FrMrDeCY2DQuEF9XjQL.jpg', 1),
('F2CPCrWt3M5FhaoteQjw', 'Super User', 'musician', 'tn@tn.tn', '011c945f30ce2cbafc452f39840f025693339c42', 'zFxKULXCa75PQlwv50Xt.jpg', 0),
('G2GCn6yN0QQGC2SF5kKN', 'MD.Ferdous Rahman', 'developer', 'fd.doyal@gmail.com', 'a642a77abd7d4f51bf9226ceaf891fcbb5b299b8', 'Xq0Fuiak5HVYLS5za7QH.jpg', 1),
('Hd9sdFdr3fraEJFDNP62', 'MD.Ferdous Rahman', 'engineer', 'fdb.doyal@gmail.com', 'a642a77abd7d4f51bf9226ceaf891fcbb5b299b8', 'pWMUyXoM9VokJgH8SdVZ.jpg', 1),
('iL4cWauO6b0psz1dhm2i', 'new', 'desginer', 'new@gmail.com', '011c945f30ce2cbafc452f39840f025693339c42', 'mpnAEuvOa6LC0t0csB3j.jpg', 1),
('mNWrv77fI3ZU488n5khe', 'Rion', 'desginer', 'r@gmail.com', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', 'KW8vYlwkwiWtHxRD47mp.jpg', 1),
('rtZFUnHHWrXjnCJXP0R2', 'Doya Babu', 'doctor', 'ys.doyal@gmail.com', '011c945f30ce2cbafc452f39840f025693339c42', 'sgsxBCSZZ66Xe6UV73WH.jpg', 1),
('S63jIEcAIStY3vDTWnct', 'asdf', 'doctor', 'as@as.as', 'fc16180b431d5b499bce86b5c8c7a362f6945aa4', 'qycLHYA9zFlVvjModI73.jpg', 1),
('VhMHF892jz7ylBtVWEJ3', 'Rion Islam', 'engineer', 'rm@gmail.com', '011c945f30ce2cbafc452f39840f025693339c42', 'NFM70Wb8hfDCSvFCPyX8.jpg', 1),
('WP17mz56vMKZZFbf6e1s', 'alamin', 'desginer', 'a@g.c', '011c945f30ce2cbafc452f39840f025693339c42', 'uQzns9nsD6MF6BKkjhQO.jpg', 1),
('wYkU0BhzGQynGTw3AOB6', 'MD.Ferdous Rahman', 'desginer', 'fdd.doyal@gmail.com', '19dd466e43cdbd3833abc0609eba6d8786f9b342', 'K9jk2lVFBFFdDcbb6REB.jpg', 1),
('ykP3C9DYsFw5QKQWTmVp', 'Doya Babu', 'teacher', 'sb.doyal@gmail.com', '011c945f30ce2cbafc452f39840f025693339c42', 'vtXswJ7UdiMF2vTEOTcj.jpg', 1),
('ZqK4teUhvp1nEXOnetRr', 'MD.Ferdous Rahman', 'developer', 'fdy.doyal@gmail.com', 'a642a77abd7d4f51bf9226ceaf891fcbb5b299b8', 'H9w3RisPOaMcoYVm6nAY.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `Role` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`, `Role`) VALUES
('phVE1xoNmhZ3GmAjZN1h', 'MD.Ferdous Rahman', 'fd.doyal@gmail.com', 'a642a77abd7d4f51bf9226ceaf891fcbb5b299b8', 'WTuNr6ZKut6ol8WlKlNQ.png', 0),
('0hTHTYFR2HPdChP9782N', 'doyal', 'f@gmail.com', 'a642a77abd7d4f51bf9226ceaf891fcbb5b299b8', 'aHmiqE2cxc9fHy3aksaY.jpg', 0),
('HumtrPDukLQR8jh0dDXN', 'MD.Ferdous Rahman', 'fdf.doyal@gmail.com', '19dd466e43cdbd3833abc0609eba6d8786f9b342', 'FHzKCI33CTCAcxirLrJV.jpg', 0),
('NTqVoO88V0NZQiTIQJug', 'MD.Ferdous Rahman', 'fddd.doyal@gmail.com', 'a642a77abd7d4f51bf9226ceaf891fcbb5b299b8', '5MBAkd1ChkuGAt4RzesW.jpg', 0),
('R1mYZGWKrByfYb5XnyNN', 'MD.Ferdous Rahman', 'ni.doyal@gmail.com', '011c945f30ce2cbafc452f39840f025693339c42', 'ysl7PQtSCOU8WWwhkGpa.jfif', 0),
('BrGaXZNelrDreSLpokTL', 'doyal', 'doyal@gmail.com', '011c945f30ce2cbafc452f39840f025693339c42', '6UhE7XNPDJzLTN5o7Z49.jpg', 0),
('sa2aQ5Jr0hzClOOaQjF9', 'Rion', 'rion@gmail.com', '011c945f30ce2cbafc452f39840f025693339c42', 'ophpK9KosBBIz7V6076L.jpg', 0),
('O16xCZxI7VhpAfUeKzha', 'Doyal Babu', 'ys.doyal@gmail.com', '011c945f30ce2cbafc452f39840f025693339c42', 'rSUp6c74ZzGJqPCKkEjh.jpg', 0),
('WN8U6q3SuRgt4eBXtvOF', 'alamin', 'a@g.c', '011c945f30ce2cbafc452f39840f025693339c42', 'Wkl3IqJUnEJnyPJMsUcX.jpg', 0),
('54vUNO7m1bqDjVTgV5zT', 'new', 'new@new.new', '011c945f30ce2cbafc452f39840f025693339c42', 'p6HSdeOfoJtJqzKFSufC.jpg', 1),
('zhUFqFDCgVQxH4j20rfi', 'Admin', 'doyalad@gmail.com', '011c945f30ce2cbafc452f39840f025693339c42', '4n17yEvIFms7EwZ0k26e.JPG', 1),
('JUhdTqoPa6VicKwzPreZ', ' rion', 'r@gmail.com', '011c945f30ce2cbafc452f39840f025693339c42', 'bTACGL6MmLiD1OmZDnPl.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tutors`
--
ALTER TABLE `tutors`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
