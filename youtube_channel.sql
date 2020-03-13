-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2016 at 07:25 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `youtube_channel`
--

CREATE TABLE IF NOT EXISTS `youtube_channel` (
  `Channel_Name` text NOT NULL,
  `Channel_ID` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `youtube_channel`
--

INSERT INTO `youtube_channel` (`Channel_Name`, `Channel_ID`) VALUES
('Pete Souldeep Horridge', 'UCkHpV84_gHSqU93Ra4n8hhg'),
('valorale', 'UCpE5V1Mtc6fQPyByQia4Lgg'),
('Playlist Buddy', 'UCNnkp6SwIbCXXOmXZzoDEJA'),
('ElectroPosé', 'UCpO0OSNAFLRUpGrNz-bJJHA'),
('Local Talk Records', 'UCpAYHD-PchKpe-daPItVhuA'),
('ElFamosoDemon', 'UCRUOfuNIb_sk__7snjK3aVg'),
('Rhythm Music', 'UCFb8_kbCqFZ1tx49DBu21Jw'),
('TheIoLoSo5', 'UCkWHH0nHMW8LNSI4tlFMbGA'),
('SyrebralVibes', 'UCi0LydWaEUy3Vx8flL29ebQ'),
('Ambition Squared', 'UCr8jMCGC6OwySrOmvfWgdJg'),
('D1gitalSound', 'UC8-cVUxklYOKH7gGBsfW48Q'),
('Zautra party™', 'UCzaan1r-UWrwsgvmZ2wJafQ'),
('Chill Masters', 'UCnkdF0aNzdW26J4JdrqrqbA'),
('Dealer de Musique', 'UCDzWQilDbBuelO4mGDPv1Vw'),
('Trap Nation', 'UCa10nxShhzNrCE1o2ZOPztg'),
('Blissful EDM', 'UCDMpFtA3M6FyetIGm3hnTAg'),
('Chill Nation', 'UCM9KEEuzacwVlkt9JfJad7g'),
('discointergalactic', 'UC64QCXR2HIJRHt-xzQYZj5g'),
('GreenWeedzIsBack', 'UCiOzvbATzRs2O9fQKap88kw'),
('Progressive House', 'UCLxt4udbyQwiYuSFXKJSFcQ'),
('TheSoundYouNeed', 'UCudKvbd6gvbm5UCYRk5tZKA'),
('OneChilledPanda', 'UCkUTBwZKwA9ojYqzj6VRlMQ'),
('Future Classic', 'UCy3DbVl0K1qj0e8jGAOYgPg'),
('Spinnin Records', 'UCpDJl2EmP7Oh90Vylx0dZtA'),
('ListenCity', 'UCLPNjlk3UxqDqVjPyVkkySw'),
('Chill Trap', 'UCgG_FUxALN1tJ_9YyABcRGQ'),
('Nik Cooper', 'UCaAlh3Iy7rAcO3MgD_O3Kkg'),
('DailyMorningMusic', 'UCzLrghSHiG3ERoxAxiWzM0A'),
('EARGASM music blog', 'UCnZ_cnerOnbfxcVphwSPl-g'),
('JompaMusic', 'UC1WKD9pJt5Sa4DCVaoJSAGw'),
('Koala Kontrol', 'UCBYg9_11ErMsFFNR66TRuLA'),
('The Vibe Guide XO', 'UCouV5on9oauLTYF-gYhziIQ'),
('ComicsExplained', 'UCKxQmKgrkUv4S7P5w0pLayw'),
('Sound Society', 'UCaFhnBLyZVRuIFEttjFRLaw'),
('La Belle Musique', 'UCXKr4vbqJkg4cXmdvaAEjYw'),
('Majestic Casual', 'UCXIyz409s7bNWVcM-vjfdVA'),
('Sensual Musique', 'UCVeETS7uZTAARqvv2zssZCw'),
('Beyond Radio', 'UCjXL7lE4LZWh8HvNqg-alhg'),
('Trap City', 'UC65afEgL62PGFWXY7n6CUbA'),
('Proximity', 'UC3ifTl5zKiCAhHIBQYcaTeg'),
('LostInTheCosmosMusic', 'UCE1tHKC3-JKapESzVRRy3iA'),
('Exit Lane', 'UCODdWl3hQZIZs1uquoPwtcg'),
('Holy Chill', 'UCdUQW86ra4l01VD7P0bj9tQ'),
('The Vibe Guide', 'UCxH0sQJKG6Aq9-vFIPnDZ2A'),
('Underground Charisma', 'UCUVjT8oRvE9jI6-HKn2cuKQ'),
('Monstercat', 'UCJ6td3C9QlPO9O_J5dF4ZzA'),
('MrSuicideSheep', 'UC5nc_ZtjKW1htCVZVRxlQAQ'),
('bangbangplaylistVEVO', 'UCtCXdQsuByZSGyxTmH9hM-g'),
('EDM Lighthouse', 'UCsuapP8WTP-YPn_c-deZ7xQ'),
('42º', 'UCyCoNv9ZmIma2Uv021ephJA'),;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
