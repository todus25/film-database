-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2017 at 12:10 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `film_search`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_name`
--

CREATE TABLE `category_name` (
  `category` varchar(10) DEFAULT NULL,
  `category_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_name`
--

INSERT INTO `category_name` (`category`, `category_id`) VALUES
('horror', 1),
('action', 2),
('sci-fi', 3),
('super-hero', 4),
('thriller', 5),
('mystery', 6),
('complex', 7),
('comedy', 8),
('romantic', 9),
('musical', 10),
('war', 11);

-- --------------------------------------------------------

--
-- Table structure for table `director_name`
--

CREATE TABLE `director_name` (
  `director` varchar(20) DEFAULT NULL,
  `director_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `director_name`
--

INSERT INTO `director_name` (`director`, `director_id`) VALUES
('Michael Tiddes', 1),
('James Cameron', 2),
('Adam McKay', 3),
('Jared Hess', 4),
('Mike Judge', 5),
('Josef Rusnak', 6),
('Bruce Robinson', 7),
('Scott Cooper', 8),
('Marcus Nispel', 9),
('Erik Van Looy', 10),
('David Dobkin', 11),
('Mikkel Nørgaard', 12),
('Kenneth Branagh', 13),
('ethan and Joel Coen', 14),
('Alexandre Astier', 15),
('Florian Henckel von ', 16),
('J. C. Chandor', 17),
('Andrew Davis', 18),
('Damien Chazelle', 19),
('Chris Rock', 20),
('Clint Eastwood', 21),
('Jean-Marc Vallée', 22),
('Jennifer Kent', 23),
('Russell Crowe', 24),
('Francis Lawrence', 25),
('James Marsh', 26),
('Guillaume Canet', 27),
('Tomm Moore', 28),
('Sergei Bodrov', 29),
('Cyril Morin', 30);

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `link` varchar(1000) DEFAULT NULL,
  `year_id` tinyint(4) DEFAULT NULL,
  `director_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`id`, `name`, `link`, `year_id`, `director_id`) VALUES
(1, 'A Haunted House', 'D:A Haunted House (2013) [1080p]', 23, 1),
(2, 'Titanic', 'D:Titanic (1997)', 7, 2),
(4, 'Fifty Shades Of Blac', 'D:Fifty Shades Of Black (2016) [YTS.AG]', 16, 1),
(5, 'Blades of Glory', 'D:Blades of Glory (2007)', 17, 3),
(6, 'Napoleon Dynamite ', 'D:Napoleon Dynamite (2004)', 14, 4),
(7, 'Office Space', 'D:Office Space (1999)', 10, 5),
(8, 'The Thirteenth Floor', 'D:The Thirteenth Floor (1999) [1080p]', 10, 6),
(9, 'Withnail and I', 'D:Withnail and I (1987) [1080p]', 8, 7),
(10, 'Black Mass', 'D:Black.Mass.2015.720p.BluRay.x264-NeZu', 25, 8),
(11, 'The Asylum', 'D:The.Asylum.2015.HDRip.XViD-ETRG', 25, 9),
(12, 'Loft', 'D:Loft [2008]-720p-BRrip-x264-StyLishSaLH (StyLish Release)', 18, 10),
(13, 'The Judge', 'D:The Judge (2014)', 14, 11),
(14, 'Klovn The Movie', 'D: 2010 720p BRRip x264 AAC - Ozlem', 20, 12),
(15, 'Cinderella', 'D:Cinderella 2015 HQTC XViD AC3 MURD3R', 25, 13),
(16, 'The Man Who Wasnt Th', 'D:The.Man.Who.Wasnt.There.2001.LiMiTED.720p.BluRay.x264.anoXmous', 11, 14),
(17, 'Asterix The Mansions', 'D:Asterix.The.Mansions.of.the Gods.2014.BRRip.XviD.AC3-EVO', 24, 15),
(18, 'The Lives Of Others', 'D:The.Lives.Of.Others.2006.720p.Bluray.x264.anoXmous', 16, 16),
(19, 'A Most Violent Year', 'D:A Most Violent Year (2014)', 24, 17),
(20, 'The Fugitive', 'D:The Fugitive (1993)', 3, 18),
(21, 'Whiplash', 'D:Whiplash (2014)', 24, 19),
(22, 'Top Five ', 'D:Top Five (2014)', 24, 20),
(23, 'American sniper', 'D:American sniper', 24, 21),
(24, 'Wild', 'D:Wild.2014.DVDScr.XVID.AC3.HQ.Hive-CM8', 24, 22),
(25, 'The Babadook ', 'D:The Babadook (2014)', 24, 23),
(26, 'The Water Diviner', 'D:The.Water.Diviner.2014.BRRip.XviD-ETRG', 24, 24),
(27, 'The Hunger Games Moc', 'D:The Hunger Games Mockingjay Part 1 (2014) 720p BRRip [Dual Audio] [Eng-Hindi] by ~rahu~[TEAM warriors]', 24, 25),
(28, 'The Theory of Everyt', 'D:The.Theory.of.Everything.2014.HC.HDRip.XViD.AC3-juggs[ETRG]', 24, 26),
(29, 'Tell No One', 'D:Tell.No.One.2006.720p.BluRay.x264.anoXmous', 16, 27),
(30, 'Song of the Sea', 'D:Song of the Sea (2014)', 24, 28),
(31, 'Seventh.Son.2015.HDR', 'D:Seventh.Son.2015.HDRip.XViD-juggs[ETRG]', 25, 29),
(32, 'Hackers Game', 'D:Hackers.Game.2015.HDRip.XViD-juggs[ETRG]', 25, 30);

-- --------------------------------------------------------

--
-- Table structure for table `film_category`
--

CREATE TABLE `film_category` (
  `film_id` int(11) DEFAULT NULL,
  `category_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `film_category`
--

INSERT INTO `film_category` (`film_id`, `category_id`) VALUES
(1, 8),
(2, 9),
(4, 9),
(5, 8),
(6, 8),
(7, 8),
(8, 6),
(8, 3),
(8, 7),
(9, 7),
(10, 2),
(13, 2),
(13, 3),
(15, 9),
(15, 10),
(16, 7),
(18, 9),
(18, 9),
(19, 2),
(20, 2),
(22, 8),
(21, 7),
(21, 10),
(23, 2),
(25, 1),
(27, 2),
(28, 9),
(30, 2),
(32, 2),
(11, 5),
(11, 9),
(12, 5),
(12, 6),
(14, 8),
(17, 8),
(11, 5),
(11, 9),
(12, 5),
(12, 6),
(14, 8),
(17, 8);

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `year_name` year(4) DEFAULT NULL,
  `year_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`year_name`, `year_id`) VALUES
(1990, 1),
(1991, 2),
(1992, 3),
(1993, 4),
(1994, 5),
(1995, 6),
(1996, 7),
(1997, 8),
(1998, 9),
(1999, 10),
(2001, 11),
(2002, 12),
(2003, 13),
(2004, 14),
(2005, 15),
(2006, 16),
(2007, 17),
(2008, 18),
(2009, 19),
(2010, 20),
(2011, 21),
(2012, 22),
(2013, 23),
(2014, 24),
(2015, 25),
(2016, 26),
(2017, 27);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_name`
--
ALTER TABLE `category_name`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `director_name`
--
ALTER TABLE `director_name`
  ADD PRIMARY KEY (`director_id`);

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`),
  ADD KEY `year_id` (`year_id`),
  ADD KEY `director_id` (`director_id`);

--
-- Indexes for table `film_category`
--
ALTER TABLE `film_category`
  ADD KEY `film_id` (`film_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`year_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_name`
--
ALTER TABLE `category_name`
  MODIFY `category_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `director_name`
--
ALTER TABLE `director_name`
  MODIFY `director_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `year_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`year_id`) REFERENCES `years` (`year_id`),
  ADD CONSTRAINT `film_ibfk_2` FOREIGN KEY (`director_id`) REFERENCES `director_name` (`director_id`);

--
-- Constraints for table `film_category`
--
ALTER TABLE `film_category`
  ADD CONSTRAINT `film_category_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`),
  ADD CONSTRAINT `film_category_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category_name` (`category_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
