-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2022 at 06:10 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user`
--

-- --------------------------------------------------------

--
-- Table structure for table `todo`
--

CREATE TABLE `todo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `todo`
--

INSERT INTO `todo` (`id`, `name`) VALUES
(1, 'Travel all around the world'),
(2, 'Learn a new language'),
(3, 'Try a profession in a different field'),
(4, 'Take up a new sport'),
(5, 'Learn to play chess'),
(6, 'Finish a classic novel'),
(7, 'Go sky diving'),
(8, 'Ride a roller coaster'),
(9, 'Go bungee jumping'),
(10, 'See the Northern Lights'),
(11, 'Take an African Safari'),
(12, 'Learn to Play an Instrument'),
(13, 'Walk Along the Great Wall of China'),
(14, 'Write a Story'),
(15, 'Live, study, or work abroad'),
(16, 'See the Egyptian Pyramids'),
(17, 'Fly in a hot air balloon in Turkey'),
(18, 'Go heli-skiing'),
(19, 'Swim in every ocean'),
(20, 'Visit the vineyards of Tuscany'),
(21, 'Go on a road trip around the US'),
(22, 'Get a tattoo'),
(23, 'Run a marathon'),
(24, 'Go scuba diving'),
(25, 'Achieve your ideal weight'),
(26, 'Set a Guinness world record'),
(27, 'Going to the top of the Eiffel Tower'),
(28, 'Crossing San Francisco\'s Golden Gate Bridge'),
(29, 'Go free climbing'),
(30, 'Go paragliding'),
(31, 'Seeing New York City from the top of the Empire State Building'),
(32, 'Make a scrapbook'),
(33, 'Carve a pumpkin'),
(34, 'Learn to surf'),
(35, 'Meditate once a week'),
(36, 'Start a journal'),
(37, 'Recreate Camp '),
(38, 'Attend a concert'),
(39, 'Have a slumber party'),
(40, 'Binge-watch a show together'),
(41, 'Dine at an upscale restaurant'),
(42, 'Repaint your house'),
(43, 'Grow an herb garden'),
(44, ''),
(45, ''),
(46, 'Read Tarot'),
(47, 'Hunt for treasure'),
(48, 'Go to the fair'),
(49, 'Have a mini-reunion'),
(50, 'Become an elite-level amateur home baker'),
(51, 'Watch the first sunrise'),
(52, 'See the Dead Sea'),
(53, 'Forgive someone that you really don\'t want to'),
(54, 'Laugh at least once per day'),
(55, 'Learn Karate'),
(56, 'Learn to shoot a gun'),
(57, 'Re-connect with an old friend'),
(58, 'Take a kickboxing class'),
(59, 'Go ziplining'),
(60, 'Ride a horse'),
(61, 'Hike a mountain'),
(62, 'Go cave exploring'),
(63, 'Climb a volcano'),
(64, 'Sail a boat'),
(65, 'Swim with dolphins'),
(66, 'Go paintballing'),
(67, 'See a whale while whale watching'),
(68, 'Go to the Superbowl'),
(69, 'Go to a famous acquarium'),
(70, 'Climb a rock wall'),
(71, 'Jump off a cliff'),
(72, 'Go indoor skydiving'),
(73, 'Go water skiing'),
(74, 'Try New York style pizza'),
(75, 'Find your favorite sushi place'),
(76, 'Eat fish that you catch yourself'),
(77, 'Learn anime drawing'),
(78, 'Buy your dream car'),
(79, 'Fly first class'),
(80, 'Create a passive income'),
(81, 'Be a self made millionaire'),
(82, 'Ride in a tractor'),
(83, 'Walk inside of an igloo'),
(84, 'Be inside of a submarine'),
(85, 'Go to Disney World'),
(86, 'Stay at a luxury 5 star resort'),
(87, 'Go on an international cruise'),
(88, 'See the breathtaking mountains in Switzerland'),
(89, 'Set eyes on Niagara Falls'),
(90, 'Explore Hawaii'),
(91, 'Go to Bali'),
(92, 'See the Eiffel Tower, Paris'),
(93, 'Find a 4 leaf clover'),
(94, 'See a complete sunset'),
(95, 'Watch a meteor shower'),
(96, 'Dye your hair a crazy color'),
(97, 'Paint a piece of art for your home'),
(98, 'Live in your dream home'),
(99, 'Tour a haunted house');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `todo`
--
ALTER TABLE `todo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `todo`
--
ALTER TABLE `todo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
