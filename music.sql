-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2016 at 12:16 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `music`
--

-- --------------------------------------------------------

--
-- Table structure for table `channel_playlist`
--

CREATE TABLE IF NOT EXISTS `channel_playlist` (
  `USERNAME` varchar(100) NOT NULL,
  `PLAYLIST_NAME` varchar(100) NOT NULL,
  `CHANNEL_ID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE IF NOT EXISTS `songs` (
  `Video_ID` varchar(20) NOT NULL,
  `Channel_ID` varchar(20) NOT NULL,
  `Video_Title` varchar(250) NOT NULL,
  `Video_Count` int(9) NOT NULL,
  `Video_Views` int(10) NOT NULL,
  `Video_Rating` int(1) NOT NULL,
  `Video_Published` datetime NOT NULL,
  `Video_Updated` datetime NOT NULL,
  `Vide_Date_Added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Auto_Increment` int(7) NOT NULL,
  UNIQUE KEY `Video_ID` (`Video_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`Video_ID`, `Channel_ID`, `Video_Title`, `Video_Count`, `Video_Views`, `Video_Rating`, `Video_Published`, `Video_Updated`, `Vide_Date_Added`, `Auto_Increment`) VALUES
('0dYPYAMxviw', 'UCRUOfuNIb_sk__7snjK', 'Vanilla - Summer', 2269, 77740, 5, '2015-10-30 06:10:05', '2016-01-14 07:10:39', '2016-01-14 02:22:12', 0),
('0JDnr3mnQH4', 'UCFb8_kbCqFZ1tx49DBu', 'Montell2099 - Bae Bae', 208, 10631, 5, '2015-09-15 12:11:39', '2016-01-13 07:19:42', '2016-01-14 01:14:21', 0),
('0wW3l1-eSSs', 'UCFb8_kbCqFZ1tx49DBu', 'Bonham Carter - 3.5grams', 138, 6786, 5, '2015-09-11 10:04:12', '2016-01-13 07:22:30', '2016-01-14 01:14:21', 0),
('0Yam8lVdmv0', 'UC3ifTl5zKiCAhHIBQYc', 'Justin Bieber - Sorry (3LAU Remix) [Premiere]', 12932, 324669, 5, '2016-01-09 16:00:00', '2016-01-14 07:13:18', '2016-01-14 02:28:10', 0),
('1i6BpC_2XMY', 'UCgG_FUxALN1tJ_9YyAB', 'DEFFIE - Macro', 112, 2946, 5, '2015-12-30 12:30:01', '2016-01-11 04:45:36', '2016-01-14 02:28:47', 0),
('1lPXz3IwMbw', 'UCkWHH0nHMW8LNSI4tlF', 'Jon Celius - Still Don''t Love You (PONY Remix)', 416, 59275, 5, '2013-01-07 16:10:58', '2016-01-02 21:21:28', '2016-01-14 01:19:05', 0),
('23YmqjppjOg', 'UCzaan1r-UWrwsgvmZ2w', 'Chicago ''87 - The Mountain Top', 33, 3527, 5, '2014-11-28 16:48:42', '2016-01-10 02:24:50', '2016-01-14 01:20:00', 0),
('2ay_Yx2lXHU', 'UCgG_FUxALN1tJ_9YyAB', 'Baribal - Lemon [Chill Trap Exclusive]', 97, 1548, 5, '2016-01-12 12:30:00', '2016-01-14 06:41:38', '2016-01-14 02:28:46', 0),
('2mbh-84pFK4', 'UClmWQqtCRuI0yLcyp8n', 'Stick Figure - Smokinâ€™ Love (Remix feat. Collie Buddz, J BOOG, Iraiton, & Dizzy Wright)', 220, 15291, 5, '2015-06-07 02:48:58', '2016-01-10 10:17:41', '2016-01-14 01:20:10', 0),
('2Rg0TsAK0hI', 'UC8-cVUxklYOKH7gGBsf', 'Ten Walls - Sparta (Original Mix)', 3741, 707327, 5, '2015-05-06 18:05:27', '2016-01-14 05:06:47', '2016-01-14 01:19:55', 0),
('2SmtSWUiyuo', 'UCkWHH0nHMW8LNSI4tlF', 'They. - Motley Crue', 60, 2694, 5, '2015-12-11 00:54:27', '2016-01-13 08:54:48', '2016-01-14 01:19:04', 0),
('3ANBxocZ290', 'UCi0LydWaEUy3Vx8flL2', 'Cosmo''s Midnight - Trapped (Feat. Wave Racer)', 234, 8541, 5, '2015-12-09 23:38:42', '2016-01-14 03:41:52', '2016-01-14 01:19:25', 0),
('3DI3uzPCUhM', 'UCi0LydWaEUy3Vx8flL2', '6.AM - Later On (Jeftuz Remix)', 172, 3612, 5, '2016-01-08 19:36:37', '2016-01-14 06:00:00', '2016-01-14 01:19:25', 0),
('3nHMX6ZneLM', 'UCRUOfuNIb_sk__7snjK', 'Tajima Hal - Detour', 586, 22310, 5, '2015-09-09 22:50:43', '2016-01-12 19:05:22', '2016-01-14 02:22:12', 0),
('3OvZoORw_Mk', 'UCi0LydWaEUy3Vx8flL2', 'Cosmo''s Midnight - Hurt (Feat. Sarah Bonito)', 147, 5906, 5, '2015-12-08 20:35:46', '2016-01-13 21:40:18', '2016-01-14 01:19:33', 0),
('46Gf_oMsBsY', 'UClmWQqtCRuI0yLcyp8n', 'Pacific Dub - Best Of All Time', 73, 6601, 5, '2015-10-25 09:36:00', '2016-01-05 22:48:00', '2016-01-14 01:20:10', 0),
('4jNz6oD66rI', 'UC8-cVUxklYOKH7gGBsf', 'Daniel Steinberg - Neptune (Original Mix)', 264, 14633, 5, '2015-10-17 16:55:27', '2016-01-12 10:24:51', '2016-01-14 01:19:55', 0),
('4MiU32q7X-U', 'UCRUOfuNIb_sk__7snjK', 'Awlnight / Î”KTR - Like It Loud (mini sampler)', 461, 15745, 5, '2015-08-11 20:05:05', '2016-01-12 08:17:29', '2016-01-14 02:22:12', 0),
('4sKtfZ0iVEM', 'UCr8jMCGC6OwySrOmvfW', 'AmbitionÂ² & Ensonge - Augurium (Original Mix)', 505, 33612, 5, '2014-01-30 08:21:37', '2016-01-13 04:18:16', '2016-01-14 01:19:45', 0),
('5NMXr2kDqMM', 'UCM9KEEuzacwVlkt9JfJ', 'OBESÃ˜N - Melting Into You (Ft. Hartry)', 1689, 50265, 5, '2016-01-08 18:00:00', '2016-01-14 07:24:31', '2016-01-14 02:28:52', 0),
('5r5dnNv0BMQ', 'UC8-cVUxklYOKH7gGBsf', 'Viken Arman - Rosas (NU Remix)', 149, 12936, 5, '2015-07-03 20:54:33', '2016-01-12 10:27:58', '2016-01-14 01:19:55', 0),
('5VLL2JngnmA', 'UCM9KEEuzacwVlkt9JfJ', 'Melanie Martinez  - Soap (Steve James Remix)', 3889, 104784, 5, '2015-12-30 19:36:06', '2016-01-14 07:00:37', '2016-01-14 02:28:53', 0),
('5YGqTZeeRww', 'UCgG_FUxALN1tJ_9YyAB', 'Saen - I''m Ready (Official Video)', 183, 3385, 5, '2016-01-01 12:30:00', '2016-01-13 12:57:30', '2016-01-14 02:28:47', 0),
('6eksT-trc-I', 'UCgG_FUxALN1tJ_9YyAB', 'LEINY - With U', 152, 2496, 5, '2016-01-09 12:30:00', '2016-01-13 18:42:43', '2016-01-14 02:28:46', 0),
('6yI7tYNNTfA', 'UClmWQqtCRuI0yLcyp8n', 'Fortunate Youth - My Love â™¥ (New Song 2015)', 180, 22917, 5, '2015-05-19 02:13:32', '2016-01-13 06:25:21', '2016-01-14 01:20:10', 0),
('75MCT97WXXU', 'UClmWQqtCRuI0yLcyp8n', 'Mikey Dangerous - Higher Than High', 93, 2138, 5, '2015-12-28 07:04:38', '2016-01-11 08:07:24', '2016-01-14 01:20:09', 0),
('7KxUIJxLNx0', 'UCgG_FUxALN1tJ_9YyAB', 'Atman - Mark My Jersey', 46, 433, 5, '2016-01-14 12:30:00', '2016-01-14 21:25:45', '2016-01-14 17:32:54', 0),
('7P736_3BuZ8', 'UC1WKD9pJt5Sa4DCVaoJ', 'LIOHN X Jack Ãœ X Ember Island - Where Are Ãœ Now', 127, 1270, 5, '2016-01-23 18:42:20', '2016-01-23 22:47:20', '2016-01-23 18:07:59', 0),
('7RdFagh2rWI', 'UClmWQqtCRuI0yLcyp8n', 'The Holdup - Wish I (New Song 2015)', 532, 68130, 5, '2015-02-09 06:12:36', '2016-01-14 00:12:13', '2016-01-14 01:20:10', 0),
('882D7kWT7aQ', 'UCM9KEEuzacwVlkt9JfJ', 'Ben Phipps - Fireproof (feat. Dustin Paul)', 2135, 64601, 5, '2016-01-03 18:00:00', '2016-01-14 06:08:41', '2016-01-14 02:28:53', 0),
('8UtVW1hADWA', 'UCFb8_kbCqFZ1tx49DBu', 'vbnd - i wanna be down w you', 130, 2290, 5, '2016-01-06 09:45:54', '2016-01-13 19:46:11', '2016-01-14 01:14:20', 0),
('8VvImllLlSw', 'UCgG_FUxALN1tJ_9YyAB', 'Omar Morto - Daffy', 154, 2783, 5, '2016-01-04 12:30:00', '2016-01-13 17:58:42', '2016-01-14 02:28:47', 0),
('9ffpY9oYTLk', 'UCi0LydWaEUy3Vx8flL2', 'Jenny Mayhem - Could Be (Koala X CATMAGIC Remix)', 175, 4652, 5, '2015-12-31 22:21:57', '2016-01-14 03:41:06', '2016-01-14 01:19:25', 0),
('9L64VQRDb1c', 'UClmWQqtCRuI0yLcyp8n', 'Ras Muhamad - Salam', 60, 2069, 5, '2015-10-15 03:23:14', '2016-01-08 06:55:10', '2016-01-14 01:20:10', 0),
('9lnt-bmprzI', 'UCi0LydWaEUy3Vx8flL2', 'Antonio & Curtis Heron - Ride With U', 134, 4928, 5, '2015-12-28 18:55:58', '2016-01-14 04:18:21', '2016-01-14 01:19:25', 0),
('a1jcvy1mUQ4', 'UCJ6td3C9QlPO9O_J5dF', 'Monstercat Podcast Ep. 087 (Threshold Album Special)', 5079, 233943, 5, '2015-12-25 00:40:59', '2016-01-14 07:22:28', '2016-01-14 02:28:15', 0),
('a2AyHCF1SVQ', 'UCr8jMCGC6OwySrOmvfW', 'AmbitionÂ² - Le Paradis (Original Mix)', 157, 5505, 5, '2015-05-11 20:32:08', '2016-01-03 18:22:40', '2016-01-14 01:19:45', 0),
('AA4hJljufQg', 'UCFb8_kbCqFZ1tx49DBu', 'Kev. - You''re Mine (Selfish)', 210, 7853, 5, '2015-10-28 06:56:52', '2016-01-14 01:34:05', '2016-01-14 01:18:42', 0),
('AGbXaLdJAHE', 'UC1WKD9pJt5Sa4DCVaoJ', 'Best of EDM 2015 New Year''s Mix | Copyright Free Music', 323, 12445, 5, '2015-12-31 16:38:53', '2016-01-14 04:04:12', '2016-01-14 02:29:34', 0),
('alfj4pkWuVM', 'UC1WKD9pJt5Sa4DCVaoJ', 'Vikstrom - Kraken', 391, 8572, 5, '2015-12-30 20:35:08', '2016-01-14 02:47:20', '2016-01-14 02:29:34', 0),
('amycQ8q01qE', 'UC3ifTl5zKiCAhHIBQYc', 'CHVRCHES - Leave A Trace (Goldroom Remix)', 5878, 133739, 5, '2016-01-11 17:00:01', '2016-01-14 07:14:29', '2016-01-14 02:28:10', 0),
('aRCSXR2IVU8', 'UCzaan1r-UWrwsgvmZ2w', 'Warren G - Regulate Ft  Nate Dogg (Le Boeuf Remix) (Music Video)', 29, 1002, 5, '2016-01-07 16:43:37', '2016-01-13 11:49:31', '2016-01-14 01:19:59', 0),
('As_4MEJUzeY', 'UCJ6td3C9QlPO9O_J5dF', '[DnB] - Melano - On Fire [Monstercat Release]', 5954, 60060, 5, '2016-01-13 20:24:45', '2016-01-14 07:25:20', '2016-01-14 02:28:14', 0),
('bAXVwDa1VlA', 'UCJ6td3C9QlPO9O_J5dF', 'Monstercat Podcast Ep. 088', 2142, 78993, 5, '2016-01-07 21:24:54', '2016-01-14 06:11:23', '2016-01-14 02:28:15', 0),
('BDlsWfMEZkI', 'UCzaan1r-UWrwsgvmZ2w', 'Boy Kiss Girl - Karma (Original Mix) (Music Video)', 46, 2591, 5, '2015-11-28 21:01:49', '2016-01-08 04:29:53', '2016-01-14 01:20:00', 0),
('biE8RuhoBBw', 'UCRUOfuNIb_sk__7snjK', 'Flamingosis - Getting Close To You', 563, 11511, 5, '2015-12-30 02:05:36', '2016-01-14 06:58:47', '2016-01-14 02:22:11', 0),
('BkL72ooDh0I', 'UCFb8_kbCqFZ1tx49DBu', 'Janet Jackson - Pleasure Principle (GARREN Remix)', 58, 1947, 5, '2016-01-07 12:00:00', '2016-01-13 19:28:01', '2016-01-14 01:14:20', 0),
('buCGO0AcSnY', 'UCzaan1r-UWrwsgvmZ2w', 'Ten Walls - Walking with Elephants (Colour Vision Re-Imagination) (Music Video)', 55, 6453, 5, '2014-10-22 16:45:46', '2015-12-21 17:29:36', '2016-01-14 01:20:00', 0),
('BUvSGdERGVI', 'UCM9KEEuzacwVlkt9JfJ', 'Hudson East - Womans Intuition (Prod. by Twenty9)', 1154, 30043, 5, '2016-01-11 18:00:00', '2016-01-14 07:16:46', '2016-01-14 02:28:52', 0),
('c4ywUJxJ4rQ', 'UCkUTBwZKwA9ojYqzj6V', 'WATGOOD - Angel Delight', 352, 8162, 5, '2016-01-01 18:00:01', '2016-01-14 05:26:02', '2016-01-14 02:28:51', 0),
('cfG_-rhNY6s', 'UC1WKD9pJt5Sa4DCVaoJ', 'Trivecta - The Vale (feat. Miyoki)', 255, 5371, 5, '2016-01-09 17:43:15', '2016-01-14 03:24:05', '2016-01-14 02:29:33', 0),
('cYF2gvXCKa0', 'UC1WKD9pJt5Sa4DCVaoJ', 'PIXL - Here For You (feat. Q''AILA)', 323, 5033, 5, '2016-01-20 18:38:06', '2016-01-23 20:54:32', '2016-01-23 18:08:42', 0),
('CzbegS3OmSk', 'UCRUOfuNIb_sk__7snjK', 'BEAT SOUP X ELFAMOSODEMON | TAPE 002', 466, 9783, 5, '2015-12-17 10:00:00', '2016-01-14 05:02:04', '2016-01-14 02:22:12', 0),
('d1vCAdlM-8E', 'UC1WKD9pJt5Sa4DCVaoJ', 'Justin Bieber - Love Yourself (Chris Meid Remix) [Sarah Cho Cover]', 460, 18434, 5, '2016-01-02 17:16:57', '2016-01-14 06:10:52', '2016-01-14 02:29:33', 0),
('d21EVqpFnqQ', 'UCM9KEEuzacwVlkt9JfJ', 'Noonie Bao - Pyramids (Y2K Remix)', 2658, 65773, 5, '2016-01-07 18:00:00', '2016-01-14 07:09:50', '2016-01-14 02:28:52', 0),
('d9U7xCDexws', 'UC1WKD9pJt5Sa4DCVaoJ', 'Kisnou - Alive (Feat. Tifanny Wiemken)', 253, 4072, 5, '2016-01-11 18:34:27', '2016-01-14 03:42:00', '2016-01-14 02:29:33', 0),
('dOYjCxGf-K0', 'UC8-cVUxklYOKH7gGBsf', 'Kollektiv Turmstrasse - Sorry I''m Late (Original Mix)', 7454, 831510, 5, '2015-05-12 17:14:02', '2016-01-14 03:46:28', '2016-01-14 01:19:55', 0),
('DqaWCV18hiQ', 'UCRUOfuNIb_sk__7snjK', 'Flamingosis - Pleasure Palette', 875, 33911, 5, '2015-09-23 05:02:23', '2016-01-14 07:00:01', '2016-01-14 02:22:12', 0),
('dX6LsLu6jKw', 'UCr8jMCGC6OwySrOmvfW', 'AmbitionÂ² - Spring ( Original Mix )', 205, 22533, 5, '2012-03-27 10:08:04', '2016-01-13 23:19:45', '2016-01-14 01:19:46', 0),
('dziIWOFu9mI', 'UC1WKD9pJt5Sa4DCVaoJ', 'Pegboard Nerds - Pink Cloud (JumoDaddy Remix)', 351, 5175, 5, '2016-01-21 17:55:00', '2016-01-23 22:52:13', '2016-01-23 18:08:29', 0),
('eFQRoVE-tWU', 'UCJ6td3C9QlPO9O_J5dF', 'Monstercat 025 - Threshold (Encounter Album Mix) [1 Hour of Electronic Music]', 4142, 173045, 5, '2016-01-01 23:17:39', '2016-01-14 06:17:53', '2016-01-14 02:28:15', 0),
('ELOnM5gJOR4', 'UCkWHH0nHMW8LNSI4tlF', 'Kolombo - Busta Ass (Original Mix)', 537, 136469, 5, '2012-12-19 15:56:33', '2016-01-07 01:49:04', '2016-01-14 01:19:05', 0),
('enpgZpdGTt0', 'UCr8jMCGC6OwySrOmvfW', 'AmbitionÂ² feat. Amelia - All seen the Night', 214, 12786, 5, '2013-03-10 11:29:29', '2015-12-27 22:05:23', '2016-01-14 01:19:45', 0),
('EsNzdeTpNKs', 'UCzaan1r-UWrwsgvmZ2w', 'Goodbye 2014!', 49, 4648, 5, '2014-12-23 10:03:16', '2016-01-12 14:22:55', '2016-01-14 01:20:00', 0),
('EydXWyP9qMs', 'UCRUOfuNIb_sk__7snjK', 'BEAT SOUP X ELFAMOSODEMON | TAPE 001', 448, 11323, 5, '2015-11-08 14:40:56', '2016-01-12 21:47:07', '2016-01-14 02:22:12', 0),
('F24POqTGcR0', 'UCFb8_kbCqFZ1tx49DBu', 'vbnd - Its all about being funky man', 164, 7521, 5, '2015-10-14 15:15:23', '2016-01-09 14:18:52', '2016-01-14 01:14:21', 0),
('f6le_FrUrIA', 'UCzaan1r-UWrwsgvmZ2w', 'Jetlag - Walk With Me Feat. Esther', 64, 5590, 5, '2014-08-19 07:12:59', '2015-11-08 22:33:04', '2016-01-14 01:20:01', 0),
('FjlzgQqeHJ0', 'UCkWHH0nHMW8LNSI4tlF', 'FLO - Man Of The World', 56, 2080, 5, '2015-12-06 03:16:55', '2016-01-10 01:16:45', '2016-01-14 01:19:05', 0),
('FsHhh8gEY10', 'UCJ6td3C9QlPO9O_J5dF', '[Hardcore] - Stonebank - All Night [Monstercat Release]', 13166, 264573, 5, '2016-01-04 19:48:57', '2016-01-14 07:22:25', '2016-01-14 02:28:15', 0),
('fTF-RtUq5aY', 'UCkWHH0nHMW8LNSI4tlF', 'Les Sins - Grind', 875, 103140, 5, '2013-03-26 00:17:05', '2016-01-13 18:59:28', '2016-01-14 01:19:05', 0),
('fx-tC2pUgqA', 'UCi0LydWaEUy3Vx8flL2', 'Spire - Petal Fall', 238, 7666, 5, '2015-12-16 01:51:31', '2016-01-13 07:23:46', '2016-01-14 01:19:25', 0),
('g83Sjb4Z2Kc', 'UClmWQqtCRuI0yLcyp8n', 'KBong - Livin Easy (feat. Stick Figure)', 242, 16470, 5, '2015-09-01 01:34:35', '2016-01-14 02:05:24', '2016-01-14 01:20:10', 0),
('Ga2plVHr04A', 'UCkWHH0nHMW8LNSI4tlF', 'YACHT - Second Summer (RAC Remix)', 2249, 329051, 5, '2013-05-07 12:43:16', '2016-01-10 19:46:08', '2016-01-14 01:19:05', 0),
('gaPBsVW9394', 'UCRUOfuNIb_sk__7snjK', 'beatboxbandit - coast', 509, 13200, 5, '2015-11-10 00:54:14', '2016-01-14 04:03:49', '2016-01-14 02:22:12', 0),
('gbJgA4fc8Y4', 'UCkWHH0nHMW8LNSI4tlF', 'Mano Le Tough - The Sea Inside', 380, 64552, 5, '2013-02-23 18:56:29', '2016-01-06 13:08:32', '2016-01-14 01:19:05', 0),
('gC7av1uSkoM', 'UCJ6td3C9QlPO9O_J5dF', '[Chillout] - Direct - Lark [Monstercat Release]', 7846, 204081, 5, '2015-12-28 19:37:24', '2016-01-14 07:12:52', '2016-01-14 02:28:15', 0),
('GIepM5NlSuI', 'UCkUTBwZKwA9ojYqzj6V', 'BLV - My Girl (feat. Stuart Parmley)', 281, 8971, 5, '2015-12-18 18:00:00', '2016-01-13 20:32:58', '2016-01-14 02:28:52', 0),
('gIkV35Hacdk', 'UCFb8_kbCqFZ1tx49DBu', 'The Voyage Mix Series #5', 68, 2034, 5, '2015-12-24 16:57:26', '2016-01-14 00:31:28', '2016-01-14 01:14:21', 0),
('guIJFNjGdxM', 'UCzaan1r-UWrwsgvmZ2w', 'Lakechild - Diskostrand (Music Video)', 39, 2330, 5, '2015-08-05 16:42:00', '2016-01-10 02:01:47', '2016-01-14 01:20:00', 0),
('GVAag-Pi4ac', 'UC1WKD9pJt5Sa4DCVaoJ', 'Sean&Bobo x A Billion Robots - YOU', 554, 11193, 5, '2016-01-14 18:48:16', '2016-01-23 20:00:29', '2016-01-23 18:08:43', 0),
('h8oBxYcF48A', 'UC1WKD9pJt5Sa4DCVaoJ', 'Jim Yosef - Eclipse', 367, 8322, 5, '2015-12-29 20:21:04', '2016-01-14 02:42:54', '2016-01-14 02:29:34', 0),
('H9qXapFz6ek', 'UCi0LydWaEUy3Vx8flL2', 'Saturn - Play With Fire (Feat. Charlie Kim)', 164, 4405, 5, '2016-01-04 20:24:16', '2016-01-13 15:13:20', '2016-01-14 01:19:25', 0),
('hcugiD2a0Qs', 'UCzaan1r-UWrwsgvmZ2w', 'Kattch - Vice & Easy (Music Video)', 66, 7182, 5, '2014-09-17 16:42:44', '2015-12-06 04:14:10', '2016-01-14 01:20:00', 0),
('htaLNzMhIq4', 'UCkUTBwZKwA9ojYqzj6V', 'SimplÃ­ - Velocity', 353, 10655, 5, '2015-12-12 18:00:03', '2016-01-13 17:46:13', '2016-01-14 02:28:52', 0),
('HvnPwVqyjjY', 'UC8-cVUxklYOKH7gGBsf', 'Paji - Mandala (Original Mix)', 620, 50061, 5, '2015-07-03 21:20:29', '2016-01-14 01:19:12', '2016-01-14 01:19:55', 0),
('HWdiZJGkSvk', 'UCM9KEEuzacwVlkt9JfJ', 'Novo Amor - Holland (Matthew Heyer Remix)', 1689, 45779, 5, '2016-01-09 18:00:00', '2016-01-14 06:55:14', '2016-01-14 02:28:52', 0),
('iBmJYDmgFqw', 'UCgG_FUxALN1tJ_9YyAB', 'Soundpalette  - Stay Mindful', 94, 2197, 5, '2016-01-07 12:30:00', '2016-01-13 13:16:16', '2016-01-14 02:28:46', 0),
('iHc9Xbd0YDk', 'UCkWHH0nHMW8LNSI4tlF', 'Fuckpony - Bongo Porn (Tale Of Us & Jay Haze Remix)', 879, 126749, 5, '2013-02-18 02:07:45', '2016-01-12 10:32:14', '2016-01-14 01:19:05', 0),
('iI8CfsCuE0U', 'UCM9KEEuzacwVlkt9JfJ', 'Christopher Blake x Caden Jester - Creator', 1517, 46758, 5, '2016-01-04 18:00:02', '2016-01-14 06:45:48', '2016-01-14 02:28:52', 0),
('iIkxmP_5KHY', 'UCr8jMCGC6OwySrOmvfW', 'AmbitionÂ² - AQUA', 1973, 165031, 5, '2013-01-16 15:49:56', '2016-01-13 08:36:38', '2016-01-14 01:19:46', 0),
('iilR7JRvfaU', 'UCkWHH0nHMW8LNSI4tlF', 'Pele & Shawnecy - Focus (Original Mix)', 110, 24664, 5, '2012-12-17 02:56:51', '2016-01-04 22:25:29', '2016-01-14 01:19:05', 0),
('IJ0vJWGSeVw', 'UClmWQqtCRuI0yLcyp8n', 'Long Beach Dub Allstars - Listen To DJ''s', 95, 10962, 5, '2014-12-06 05:54:32', '2016-01-08 21:55:41', '2016-01-14 01:20:10', 0),
('imyu7k2FdrU', 'UCkUTBwZKwA9ojYqzj6V', 'Edamame - Leveled', 275, 6960, 5, '2016-01-04 18:00:00', '2016-01-14 05:25:52', '2016-01-14 02:28:51', 0),
('ITlgj8F9UPY', 'UC3ifTl5zKiCAhHIBQYc', 'Boehm X Charlie Puth - Hotline Bling (Drake Cover) [Premiere]', 7760, 247836, 5, '2016-01-05 17:00:01', '2016-01-14 07:16:00', '2016-01-14 02:28:10', 0),
('itq0hMP-O-U', 'UCJ6td3C9QlPO9O_J5dF', '[Glitch Hop] - Trivecta - The Vale (feat. Miyoki) [Monstercat Release]', 7795, 192211, 5, '2016-01-08 19:55:35', '2016-01-14 07:09:49', '2016-01-14 02:28:15', 0),
('IuauzCf2Fkc', 'UCkUTBwZKwA9ojYqzj6V', 'CloZinger - Happiness', 394, 9281, 5, '2015-12-21 18:00:00', '2016-01-13 12:43:59', '2016-01-14 02:28:51', 0),
('IuT9ToBwaiE', 'UC3ifTl5zKiCAhHIBQYc', 'Steve James ft. Clairity - Renaissance (kid Remix) [Free]', 7430, 215871, 5, '2016-01-07 17:00:00', '2016-01-14 07:12:25', '2016-01-14 02:28:10', 0),
('IUW-XalLnVg', 'UC3ifTl5zKiCAhHIBQYc', 'JOYRYDE - GIVE MY LOVE [Free]', 5756, 198696, 5, '2016-01-04 19:08:27', '2016-01-14 05:44:08', '2016-01-14 02:28:10', 0),
('IvCvZJsGAs0', 'UC1WKD9pJt5Sa4DCVaoJ', 'Botnek + I See MONSTAS - Deeper Love (KIRO Remix)', 370, 7280, 5, '2016-01-05 16:58:22', '2016-01-14 05:21:30', '2016-01-14 02:29:33', 0),
('iXQHoaYeXUs', 'UCgG_FUxALN1tJ_9YyAB', 'Bonnie X Clyde - Why Do I', 123, 3633, 5, '2015-12-31 12:30:00', '2016-01-11 08:47:41', '2016-01-14 02:28:47', 0),
('IyBEKA6b0ro', 'UC8-cVUxklYOKH7gGBsf', 'Mind Against & Somne - Vertere', 138, 12442, 5, '2015-07-03 21:06:44', '2016-01-12 19:09:21', '2016-01-14 01:19:55', 0),
('IYr9DD661_Q', 'UCr8jMCGC6OwySrOmvfW', 'AmbitionÂ² - Here to keep you', 272, 24948, 5, '2012-10-22 18:58:32', '2015-12-27 11:39:06', '2016-01-14 01:19:46', 0),
('j0Z1ABuo1qs', 'UC1WKD9pJt5Sa4DCVaoJ', 'LINDO - Something Else', 212, 4446, 5, '2016-01-19 19:27:17', '2016-01-23 21:15:16', '2016-01-23 18:08:42', 0),
('j1jjjJ8os6Y', 'UCJ6td3C9QlPO9O_J5dF', '[Glitch Hop] - Nitro Fun & Subtact - Come With Me (feat. Anna Yvette) [Monstercat Release]', 9830, 264286, 5, '2015-12-24 19:05:23', '2016-01-14 07:02:49', '2016-01-14 02:28:15', 0),
('jBlZ1jpah4k', 'UClmWQqtCRuI0yLcyp8n', 'Sticky Fingers - Velvet Skies (Feat. Lyall Moloney)', 133, 12767, 5, '2015-05-18 11:07:34', '2016-01-13 07:27:43', '2016-01-14 01:20:10', 0),
('jErWUchuWs0', 'UC3ifTl5zKiCAhHIBQYc', 'Emily Vaughn - Better Off (Lash Remix)', 9655, 360223, 5, '2015-12-21 17:00:02', '2016-01-14 07:23:03', '2016-01-14 02:28:10', 0),
('JkiO_F6u7LA', 'UCM9KEEuzacwVlkt9JfJ', 'Michl - Kill Our Way To Heaven (No Tv No Radio Remix)', 1755, 50287, 5, '2016-01-06 18:00:01', '2016-01-14 07:02:32', '2016-01-14 02:28:52', 0),
('jNDdn_5kV4M', 'UClmWQqtCRuI0yLcyp8n', 'The Holdup - The Drugs â¤', 805, 148842, 5, '2014-11-26 02:38:58', '2016-01-13 11:32:03', '2016-01-14 01:20:10', 0),
('jntsORWHgmc', 'UClmWQqtCRuI0yLcyp8n', 'The Movement - Sweet Life', 53, 1250, 5, '2016-01-04 01:06:07', '2016-01-12 13:03:56', '2016-01-14 01:20:06', 0),
('Jr4YA4e_gOQ', 'UCi0LydWaEUy3Vx8flL2', 'FutureHype - Channel Trailer', 70, 2245, 5, '2016-01-01 18:00:25', '2016-01-13 04:27:28', '2016-01-14 01:19:25', 0),
('JYs92m2yvtc', 'UCgG_FUxALN1tJ_9YyAB', 'Jupe - Hurry 2.0', 118, 2307, 5, '2016-01-08 12:30:00', '2016-01-14 03:08:14', '2016-01-14 02:28:46', 0),
('jyz_u9i1QZ0', 'UCzaan1r-UWrwsgvmZ2w', 'Ole Feddersen - Have A Good Feeling (Wolfgang Lohr Remix) (Music Video)', 61, 8934, 5, '2014-09-11 16:53:05', '2015-12-31 21:32:06', '2016-01-14 01:20:00', 0),
('KcPCoh6axZo', 'UCkWHH0nHMW8LNSI4tlF', 'Jacques Greene & Tinashe - Painted Faces', 738, 90462, 5, '2013-05-08 14:03:52', '2016-01-13 14:39:05', '2016-01-14 01:19:05', 0),
('kDWo2jn169k', 'UCRUOfuNIb_sk__7snjK', 'Scruffnuk Dust - Sunrise', 677, 24073, 5, '2015-08-22 06:04:48', '2016-01-14 03:35:49', '2016-01-14 02:22:12', 0),
('Kk7m3trh9Fk', 'UCRUOfuNIb_sk__7snjK', 'Scruffnuk Dust - Rabbithole', 344, 9310, 5, '2015-11-01 23:25:08', '2016-01-12 15:19:03', '2016-01-14 02:22:12', 0),
('koVH0OZbphw', 'UCzaan1r-UWrwsgvmZ2w', '10A - Crosses (Dinnerdate Remix) (Music Video)', 24, 3629, 5, '2014-07-18 15:01:03', '2015-11-04 13:17:44', '2016-01-14 01:20:01', 0),
('KqbRW1Q6QA4', 'UCRUOfuNIb_sk__7snjK', 'STRAANGE - ..Hippocras philter..', 392, 9359, 5, '2015-11-28 04:22:11', '2016-01-14 04:01:49', '2016-01-14 02:22:12', 0),
('Kwf64ehhX-Y', 'UCzaan1r-UWrwsgvmZ2w', 'OHD - Priorities (Music Video)', 258, 18821, 5, '2015-01-28 10:54:22', '2016-01-14 01:45:25', '2016-01-14 01:20:00', 0),
('KYeZQrnDKOs', 'UC1WKD9pJt5Sa4DCVaoJ', 'Jacob Tillberg - Sirens [JompaMusic Release]', 366, 5856, 5, '2016-01-08 16:32:04', '2016-01-14 03:21:26', '2016-01-14 02:29:33', 0),
('LGQsPexpVws', 'UCFb8_kbCqFZ1tx49DBu', 'XHVIL - Born Under Water', 2, 18, 5, '2016-01-14 05:58:29', '2016-01-14 06:04:00', '2016-01-14 01:14:20', 0),
('Lo-HW5FURJc', 'UCi0LydWaEUy3Vx8flL2', 'Tyus - City Of The Rose (Wheathin Remix)', 293, 9609, 5, '2015-12-17 00:01:36', '2016-01-14 05:13:07', '2016-01-14 01:19:25', 0),
('Lp_bnV8Z32o', 'UCkWHH0nHMW8LNSI4tlF', 'Let The Groove Get In (Krystal Klear Build''n Mix)', 185, 39264, 5, '2013-03-28 02:56:08', '2015-11-22 12:25:16', '2016-01-14 01:19:05', 0),
('lt3DtDr2wv0', 'UCzaan1r-UWrwsgvmZ2w', 'Etta James - Light My Fire (JR Dynamite''s Smokey Edit) (Music Video)', 95, 7303, 5, '2015-02-17 11:29:37', '2016-01-10 15:21:06', '2016-01-14 01:20:00', 0),
('LTdy-sDAERU', 'UCkUTBwZKwA9ojYqzj6V', 'Kyoto Beats - Sunday', 382, 12376, 5, '2015-12-06 18:00:00', '2016-01-13 05:08:05', '2016-01-14 02:28:52', 0),
('lud0VgL0uys', 'UCkUTBwZKwA9ojYqzj6V', 'Saen. - Plastic Doll (feat. xoJustJulia)', 338, 6817, 5, '2016-01-07 18:00:00', '2016-01-14 06:14:57', '2016-01-14 02:28:51', 0),
('Mbb5mpfoCfQ', 'UCi0LydWaEUy3Vx8flL2', 'Zhu - Automatic (Feat. Aluna George) (Vindata Remix)', 172, 2429, 5, '2016-01-11 21:54:12', '2016-01-14 06:06:19', '2016-01-14 01:19:25', 0),
('mGe_zNvLkLA', 'UC3ifTl5zKiCAhHIBQYc', 'Martin Garrix - Bouncybob (ft. Justin Mylo & Mesto) [Free]', 8977, 267823, 5, '2016-01-06 21:30:40', '2016-01-14 07:02:33', '2016-01-14 02:28:10', 0),
('mi8wRHHWX6I', 'UCr8jMCGC6OwySrOmvfW', 'AmbitionÂ² - Surrealism (Original Mix)', 158, 5576, 5, '2015-06-11 12:26:02', '2016-01-14 02:01:37', '2016-01-14 01:19:39', 0),
('mlf-fuGzKMI', 'UCRUOfuNIb_sk__7snjK', 'vik - up early', 240, 7993, 5, '2015-09-08 23:17:23', '2016-01-11 23:01:27', '2016-01-14 02:22:12', 0),
('MM0s8KmHvzU', 'UCi0LydWaEUy3Vx8flL2', 'TIGERBLOOD - All In You', 225, 9059, 5, '2015-12-01 23:04:56', '2016-01-12 23:01:19', '2016-01-14 01:19:33', 0),
('mNH5lzZyns8', 'UC8-cVUxklYOKH7gGBsf', 'Romanthony - Too Long (Doctor Dru Remix)', 295, 18405, 5, '2015-09-13 15:49:09', '2016-01-12 10:26:50', '2016-01-14 01:19:55', 0),
('mNRxnUD3Dsk', 'UC1WKD9pJt5Sa4DCVaoJ', 'Au5 - Snowblind ft. Tasha Baxter (Xilent Remix)', 338, 5310, 5, '2016-01-10 17:49:49', '2016-01-13 22:24:59', '2016-01-14 02:29:33', 0),
('mtA_4Mg9k_U', 'UC8-cVUxklYOKH7gGBsf', 'Thyladomid - Mavericks', 220, 20497, 5, '2015-04-04 16:04:56', '2016-01-13 16:48:34', '2016-01-14 01:19:55', 0),
('MtoASiznTXQ', 'UCkUTBwZKwA9ojYqzj6V', 'nuage, nuage - october 2nd', 338, 8387, 5, '2015-12-28 18:00:00', '2016-01-14 04:19:10', '2016-01-14 02:28:51', 0),
('mV7ZMR5Dz7M', 'UCFb8_kbCqFZ1tx49DBu', 'Rhythm Music - The Voyage Mix Series #3', 74, 4146, 5, '2015-10-02 11:30:00', '2016-01-13 01:11:55', '2016-01-14 01:14:21', 0),
('MxMCMFtxSnQ', 'UCr8jMCGC6OwySrOmvfW', 'AmbitionÂ² feat. Amelia - Dreaming & Drifting (Original Mix)', 236, 13068, 5, '2014-08-10 16:02:17', '2015-12-30 20:48:22', '2016-01-14 01:19:45', 0),
('N2RK3mmd-gY', 'UCr8jMCGC6OwySrOmvfW', 'AmbitionÂ² & Ensonge - Gewaldig (Original Mix)', 783, 51458, 5, '2013-10-04 07:39:00', '2016-01-14 03:49:55', '2016-01-14 01:19:45', 0),
('nCgAPY40EFY', 'UC3ifTl5zKiCAhHIBQYc', 'Ryn Weaver - Octahate (Cignature Remix)', 5793, 179125, 5, '2016-01-08 17:00:03', '2016-01-14 07:08:45', '2016-01-14 02:28:10', 0),
('Ng8rolQQD0k', 'UCr8jMCGC6OwySrOmvfW', 'AmbitionÂ² - Die Zeit bleibt stehen', 116, 7023, 5, '2013-03-13 19:33:39', '2015-12-30 20:03:37', '2016-01-14 01:19:45', 0),
('NJHxO6vvOBk', 'UCgG_FUxALN1tJ_9YyAB', 'LSTNYT - HDIYL', 120, 3352, 5, '2016-01-03 12:40:39', '2016-01-14 04:10:47', '2016-01-14 02:28:47', 0),
('OAGlTMboLHY', 'UCJ6td3C9QlPO9O_J5dF', '[Indie Dance] - Draper - All I See (feat. Laura Brehm) [Monstercat Release]', 8368, 154761, 5, '2016-01-11 19:07:33', '2016-01-14 07:22:45', '2016-01-14 02:28:15', 0),
('oFRQZ3XOd-A', 'UCr8jMCGC6OwySrOmvfW', 'AmbitionÂ² - Get ready ( Original Mix )', 153, 16846, 5, '2012-02-28 18:01:39', '2015-12-21 12:29:32', '2016-01-14 01:19:46', 0),
('oIWBYlJ9vQA', 'UCFb8_kbCqFZ1tx49DBu', 'Lanea - You Change My Life (Instrumental) (Exclusive)', 134, 3053, 5, '2015-12-28 02:47:27', '2016-01-14 03:28:54', '2016-01-14 01:14:21', 0),
('OjrY7EuiSbc', 'UCFb8_kbCqFZ1tx49DBu', 'Atolla - Cha', 175, 5241, 5, '2015-12-12 07:49:47', '2016-01-12 07:41:15', '2016-01-14 01:14:21', 0),
('ONdnfgHs_4s', 'UCJ6td3C9QlPO9O_J5dF', 'Monstercat 025 - Threshold (Collision Album Mix) [1 Hour of Electronic Music]', 4219, 167586, 5, '2015-12-31 20:18:45', '2016-01-14 05:35:45', '2016-01-14 02:28:15', 0),
('OWRI-KhH7KE', 'UCJ6td3C9QlPO9O_J5dF', 'New Age | Dark Age', 10687, 166776, 5, '2016-01-05 22:13:25', '2016-01-14 06:55:52', '2016-01-14 02:28:15', 0),
('PIxtPwddn0s', 'UC3ifTl5zKiCAhHIBQYc', 'Cheat Codes - Say Goodbye', 8780, 143105, 5, '2016-01-12 17:00:01', '2016-01-14 07:23:03', '2016-01-14 02:28:10', 0),
('pkm17MrbJCw', 'UCkUTBwZKwA9ojYqzj6V', 'Greyhat - In The Computer Lab', 245, 9003, 5, '2015-12-15 18:00:02', '2016-01-12 19:09:52', '2016-01-14 02:28:52', 0),
('pSH3dmOOuyo', 'UCi0LydWaEUy3Vx8flL2', 'nightcorey - Wild', 89, 764, 5, '2016-01-13 20:41:37', '2016-01-14 06:04:11', '2016-01-14 01:19:19', 0),
('PWnxMBsX4tI', 'UC8-cVUxklYOKH7gGBsf', 'Jonas Saalbach - June Gloom (Original Mix)', 117, 5082, 5, '2015-12-09 19:16:01', '2016-01-12 10:23:51', '2016-01-14 01:19:54', 0),
('Pz29ToCtd1U', 'UC8-cVUxklYOKH7gGBsf', 'Worakls - Toi (Original Mix)', 8627, 1017778, 5, '2015-02-14 17:10:13', '2016-01-14 06:17:10', '2016-01-14 01:19:55', 0),
('pzT3Ih60xKc', 'UCgG_FUxALN1tJ_9YyAB', 'Kaivaan X Nahviss - Celeste', 97, 2004, 5, '2016-01-10 12:30:00', '2016-01-14 06:40:47', '2016-01-14 02:28:46', 0),
('qbTF9vRy7uE', 'UCM9KEEuzacwVlkt9JfJ', 'Ben Phipps - Sleep Alone (ft. Ashe)', 2720, 84876, 5, '2015-12-27 19:17:51', '2016-01-14 04:16:48', '2016-01-14 02:28:53', 0),
('QFv3I4RRmAQ', 'UC8-cVUxklYOKH7gGBsf', 'Woo York - The Valley of Songs', 489, 43931, 5, '2015-02-23 21:40:48', '2016-01-13 22:37:38', '2016-01-14 01:19:55', 0),
('QHPGurZf4ZY', 'UCkUTBwZKwA9ojYqzj6V', 'MichealDavis - Lightyears', 357, 8541, 5, '2015-12-30 18:00:01', '2016-01-14 05:26:36', '2016-01-14 02:28:51', 0),
('q_uEzyFI1Zg', 'UCi0LydWaEUy3Vx8flL2', 'Duke Dumont - Need U (100%) (Jauz X Marshmello Remix)', 376, 14725, 5, '2015-12-21 23:55:25', '2016-01-14 03:22:23', '2016-01-14 01:19:25', 0),
('r8jjBrp-dMc', 'UC8-cVUxklYOKH7gGBsf', 'Rene Bourgeois - Mes Garcons', 284, 11468, 5, '2015-12-09 19:30:21', '2016-01-13 18:45:08', '2016-01-14 01:19:53', 0),
('rHK5jSSJLyc', 'UClmWQqtCRuI0yLcyp8n', 'TEST', 2, 54, 5, '2016-01-03 15:31:36', '2016-01-07 16:42:34', '2016-01-14 01:20:09', 0),
('rmb8QWrFjdA', 'UClmWQqtCRuI0yLcyp8n', 'One Drop - Little Black Dress', 188, 28315, 5, '2014-12-16 01:47:40', '2016-01-10 14:36:31', '2016-01-14 01:20:10', 0),
('rNiJ65iLHzc', 'UC1WKD9pJt5Sa4DCVaoJ', 'Brillz & LAXX - WTPA (Henry Fong Remix) [feat. Ms Williams]', 344, 7308, 5, '2016-01-15 20:08:52', '2016-01-23 17:32:37', '2016-01-23 18:08:43', 0),
('RnwXueWCKuI', 'UCkWHH0nHMW8LNSI4tlF', 'Sepehr - Apple Bottoms (Original Mix)', 321, 69760, 5, '2012-12-19 15:53:19', '2016-01-09 16:27:59', '2016-01-14 01:19:05', 0),
('RomUd0Ei-UI', 'UCkUTBwZKwA9ojYqzj6V', 'Imaani - Found My Light (Go Go Bizkitt! Remix)', 188, 4199, 5, '2016-01-11 18:00:01', '2016-01-14 06:08:00', '2016-01-14 02:28:47', 0),
('rU6vEXanC6E', 'UC3ifTl5zKiCAhHIBQYc', 'Rita Ora - Poison (Lash Remix)', 9829, 338526, 5, '2015-12-31 17:00:02', '2016-01-14 06:51:16', '2016-01-14 02:28:10', 0),
('rysYZTg6FAk', 'UCkUTBwZKwA9ojYqzj6V', 'Gidge - Fauna, Pt I', 215, 7986, 5, '2015-12-10 18:00:01', '2016-01-12 20:48:03', '2016-01-14 02:28:52', 0),
('s-fOa2fpUjU', 'UC3ifTl5zKiCAhHIBQYc', 'ROZES - Fragile (AVNU Remix)', 7965, 295242, 5, '2015-12-27 17:00:01', '2016-01-14 04:08:36', '2016-01-14 02:28:10', 0),
('sbnSRfOdfcQ', 'UC1WKD9pJt5Sa4DCVaoJ', 'Bad Decisions - BLACK MAGIC Ft. Bad Pony [JompaMusic Release]', 362, 8126, 5, '2016-01-03 20:29:33', '2016-01-14 07:06:59', '2016-01-14 02:29:33', 0),
('SBtHUMfGX2o', 'UC3ifTl5zKiCAhHIBQYc', 'Halsey - New Americana (Ryos Bootleg) [Premiere]', 11141, 287038, 5, '2016-01-02 17:00:00', '2016-01-14 07:18:11', '2016-01-14 02:28:10', 0),
('SE4sK4KpxSs', 'UCi0LydWaEUy3Vx8flL2', 'Veens - Girl', 214, 3100, 5, '2016-01-10 23:44:51', '2016-01-14 06:17:11', '2016-01-14 01:19:25', 0),
('sLxeRF9MpQE', 'UCM9KEEuzacwVlkt9JfJ', 'The Him - Feels Like Home (Ft. Son Mieux)', 2749, 73980, 5, '2016-01-05 18:00:01', '2016-01-14 06:54:58', '2016-01-14 02:28:52', 0),
('sq-gYQx1Yw0', 'UCkUTBwZKwA9ojYqzj6V', 'Tekvision - Lament', 330, 9601, 5, '2015-12-26 18:00:01', '2016-01-13 07:12:45', '2016-01-14 02:28:51', 0),
('SsQM3c4KPW4', 'UCJ6td3C9QlPO9O_J5dF', '[House] - Rootkit - Elevate [Monstercat Release]', 8120, 229460, 5, '2015-12-29 18:20:56', '2016-01-14 07:09:51', '2016-01-14 02:28:15', 0),
('sUoWkRggVig', 'UCkWHH0nHMW8LNSI4tlF', 'Tube & Berger - Imprint Of Pleasure (Original Mix)', 73484, 21365777, 5, '2013-01-14 16:54:05', '2016-01-14 05:36:05', '2016-01-14 01:19:05', 0),
('sY_5IJVfA0c', 'UCgG_FUxALN1tJ_9YyAB', 'oceans - Find Me', 60, 986, 5, '2016-01-13 12:30:01', '2016-01-14 07:11:31', '2016-01-14 02:28:43', 0),
('T3ElIgP0IO0', 'UCgG_FUxALN1tJ_9YyAB', 'XELARAIN - Sticks & Stones', 109, 2797, 5, '2016-01-02 12:30:01', '2016-01-11 17:15:14', '2016-01-14 02:28:47', 0),
('T3RO6ycc9oo', 'UClmWQqtCRuI0yLcyp8n', 'Stick Figure - Rocky Road', 220, 41693, 5, '2014-11-14 05:21:39', '2016-01-11 18:14:31', '2016-01-14 01:20:10', 0),
('T6GXYE4zNdI', 'UC1WKD9pJt5Sa4DCVaoJ', 'Dirtyphonics - Anonymous VIP', 355, 6486, 5, '2016-01-18 18:36:15', '2016-01-23 08:34:03', '2016-01-23 18:08:42', 0),
('t9Fg-CNSs_c', 'UCFb8_kbCqFZ1tx49DBu', 'Dezaulait - l''Ethique', 147, 5804, 5, '2015-11-17 13:30:00', '2016-01-12 07:44:59', '2016-01-14 01:15:46', 0),
('thdjW4mUsfc', 'UCJ6td3C9QlPO9O_J5dF', '[Electronic] - Openwater & Matt Vice - No Regrets [Monstercat Release]', 8611, 222433, 5, '2015-12-30 19:52:30', '2016-01-14 07:00:38', '2016-01-14 02:28:15', 0),
('TIPacO_KNSQ', 'UCFb8_kbCqFZ1tx49DBu', 'Rhythm Music - The Voyage Mix Series #2', 117, 7767, 5, '2015-09-10 07:00:51', '2016-01-14 01:57:10', '2016-01-14 01:14:21', 0),
('TQs7pyAS7JQ', 'UCkWHH0nHMW8LNSI4tlF', 'The Kooks - Sweet Emotions (Montmartre Remix)', 47, 1801, 5, '2015-12-25 15:56:04', '2016-01-14 03:25:26', '2016-01-14 01:19:01', 0),
('TtX34LE83Zc', 'UClmWQqtCRuI0yLcyp8n', 'The Holdup - Girls Love Toast â™¥', 491, 105723, 5, '2014-11-21 09:55:25', '2016-01-14 00:04:36', '2016-01-14 01:20:10', 0),
('UaUZPgw1Y70', 'UCkWHH0nHMW8LNSI4tlF', 'Solomon Grey - Miradors (Lane 8 Remix)', 130, 6944, 5, '2015-11-10 13:48:09', '2016-01-12 20:55:38', '2016-01-14 01:19:05', 0),
('UUv9-2lSV7s', 'UCr8jMCGC6OwySrOmvfW', 'AmbitionÂ² - Victoria ( Original Mix )', 426, 42604, 5, '2012-06-05 08:59:49', '2015-12-26 19:59:13', '2016-01-14 01:19:46', 0),
('UVGgd9J6gds', 'UC1WKD9pJt5Sa4DCVaoJ', 'Melano - On Fire', 337, 5872, 5, '2016-01-17 17:19:18', '2016-01-23 22:34:18', '2016-01-23 18:08:42', 0),
('V2_KKgNZ4VI', 'UCkUTBwZKwA9ojYqzj6V', 'Polynation - Why You Pt II', 279, 7921, 5, '2015-12-24 13:00:03', '2016-01-12 22:29:34', '2016-01-14 02:28:51', 0),
('v3JkGRMOFMU', 'UCkUTBwZKwA9ojYqzj6V', 'ã€Œsleepytanukiã€- angel', 428, 11678, 5, '2015-12-04 17:13:37', '2016-01-13 07:33:45', '2016-01-14 02:28:52', 0),
('vmLy7Ltvm4A', 'UCzaan1r-UWrwsgvmZ2w', 'Jorgen Odegard - Falling (Music Video)', 56, 4308, 5, '2015-01-22 12:43:59', '2016-01-07 20:10:35', '2016-01-14 01:20:00', 0),
('w-Y-CGp_Vio', 'UCzaan1r-UWrwsgvmZ2w', 'Mercury - 1994 (Music Video)', 79, 8427, 5, '2014-08-28 18:28:44', '2016-01-10 02:33:07', '2016-01-14 01:20:00', 0),
('W9aU-df3_VA', 'UCFb8_kbCqFZ1tx49DBu', 'HWLS - 005 (Halpe Remix)', 129, 4946, 5, '2015-11-28 10:33:54', '2016-01-12 21:53:35', '2016-01-14 01:14:21', 0),
('WayZuYQux_Y', 'UC8-cVUxklYOKH7gGBsf', 'Martin Waslewski - Gerd', 211, 11440, 5, '2015-10-07 17:26:21', '2016-01-12 23:51:53', '2016-01-14 01:19:55', 0),
('wEyjfYGLNNU', 'UC3ifTl5zKiCAhHIBQYc', 'ATB - Ecstasy (ARMNHMR & DATHAN Remix)', 7541, 318023, 5, '2015-12-23 17:00:08', '2016-01-14 07:21:29', '2016-01-14 02:28:10', 0),
('wK9LEUkPWCE', 'UCRUOfuNIb_sk__7snjK', 'beatboxbandit - picturetht', 504, 18437, 5, '2015-08-13 01:17:18', '2016-01-14 04:24:16', '2016-01-14 02:22:12', 0),
('wOWIZnT7lLw', 'UCFb8_kbCqFZ1tx49DBu', 'Rhythm Music - The Voyage Mix Series #4', 109, 6760, 5, '2015-11-03 17:31:06', '2016-01-12 07:50:08', '2016-01-14 01:14:21', 0),
('WOWpMqV1adU', 'UC8-cVUxklYOKH7gGBsf', 'The Temper Trap - Sweet Disposition (Undercatt Remix)', 388, 23118, 5, '2015-12-11 19:12:27', '2016-01-14 05:47:21', '2016-01-14 01:19:50', 0),
('wT25fmL_QH4', 'UCM9KEEuzacwVlkt9JfJ', 'LUUDE & Twerl - Coco Butter', 1700, 59795, 5, '2015-12-29 18:00:03', '2016-01-14 02:39:18', '2016-01-14 02:28:53', 0),
('X0JNmAK12r4', 'UCJ6td3C9QlPO9O_J5dF', '[Indie Dance] - Puppet & Cormak - Enough Is Enough (feat. Richard Caddock) [Monstercat Release]', 7924, 184525, 5, '2016-01-06 19:57:39', '2016-01-14 06:40:53', '2016-01-14 02:28:15', 0),
('X5D38i-IiYE', 'UCr8jMCGC6OwySrOmvfW', 'AmbitionÂ² - Greek Summer (Original Mix)', 2011, 152487, 5, '2013-07-21 12:06:45', '2016-01-12 20:55:11', '2016-01-14 01:19:45', 0),
('X8b1HHetOPU', 'UCzaan1r-UWrwsgvmZ2w', 'The Notorious B.I.G. - Sky''s The Limit (Beerlover Edition) (Music Video)', 46, 5891, 5, '2014-10-02 17:18:43', '2015-12-11 23:43:14', '2016-01-14 01:20:00', 0),
('XDpLQhEOP4s', 'UC3ifTl5zKiCAhHIBQYc', 'Marcus Marr & Chet Faker - The Trouble With Us', 7800, 279101, 5, '2015-12-29 17:00:02', '2016-01-14 07:16:47', '2016-01-14 02:28:10', 0),
('xFpncRtKUfc', 'UC1WKD9pJt5Sa4DCVaoJ', 'Extra Terra & Urbanstep - Lost In Time', 369, 6470, 5, '2016-01-16 18:09:56', '2016-01-23 21:17:01', '2016-01-23 18:08:42', 0),
('XKw5pqAO97E', 'UCgG_FUxALN1tJ_9YyAB', 'akihabara! - 4AM', 145, 2925, 5, '2016-01-06 12:30:00', '2016-01-14 06:41:18', '2016-01-14 02:28:47', 0),
('xm2K5kwZ0z4', 'UCr8jMCGC6OwySrOmvfW', 'AmbitionÂ² - Wer holt Cola ( Original Mix )', 92, 9406, 5, '2013-03-29 02:02:00', '2015-11-05 16:59:53', '2016-01-14 01:19:45', 0),
('xqe5qnm2LhI', 'UCM9KEEuzacwVlkt9JfJ', 'Fetty Wap & KHS - Trap Queen (ft. Josh Levi) [KLYMVX & Samuraii Remix]', 3825, 96575, 5, '2016-01-02 18:00:01', '2016-01-14 06:59:08', '2016-01-14 02:28:53', 0),
('XQohkaEd224', 'UC3ifTl5zKiCAhHIBQYc', 'Ember Island - Can''t Feel My Face (Rederic Remix)', 7153, 174673, 5, '2016-01-10 17:00:01', '2016-01-14 07:01:08', '2016-01-14 02:28:10', 0),
('xZGNNAITQLM', 'UC1WKD9pJt5Sa4DCVaoJ', 'Mike L & W!th Bounce - Everybody Move [JompaMusic Release]', 254, 4134, 5, '2016-01-12 17:13:40', '2016-01-14 07:19:26', '2016-01-14 02:29:33', 0),
('y4UN7UwjCpw', 'UCRUOfuNIb_sk__7snjK', 'Emapea - Good Old Days', 180, 1067, 5, '2016-01-14 02:53:38', '2016-01-14 07:19:57', '2016-01-14 02:22:10', 0),
('Y73pISNTEUc', 'UC1WKD9pJt5Sa4DCVaoJ', 'Emily Vaughn - Better Off (Chachi Remix)', 340, 3942, 5, '2016-01-22 18:28:13', '2016-01-23 22:37:55', '2016-01-23 18:08:21', 0),
('yF3uEYZ5INs', 'UC1WKD9pJt5Sa4DCVaoJ', 'Arman Cekin - Run (feat. Jessica Main)', 387, 6846, 5, '2016-01-06 18:36:23', '2016-01-14 04:19:33', '2016-01-14 02:29:33', 0),
('YrFY3u0htyc', 'UCM9KEEuzacwVlkt9JfJ', 'Strehlow - Forest Cat', 1193, 13953, 5, '2016-01-13 19:06:22', '2016-01-14 07:24:51', '2016-01-14 02:28:52', 0),
('Yv3adHiHsiI', 'UCJ6td3C9QlPO9O_J5dF', '[Electro] - Case & Point - Paradigm [Monstercat Release]', 10474, 334167, 5, '2015-12-25 19:25:40', '2016-01-14 06:33:29', '2016-01-14 02:28:15', 0),
('z2LphzXShn4', 'UCgG_FUxALN1tJ_9YyAB', 'Alejandro - Whirlwind [Chill Trap Exclusive]', 125, 2619, 5, '2016-01-05 12:30:01', '2016-01-13 14:51:59', '2016-01-14 02:28:47', 0),
('Z5Xq-K1LoI8', 'UCi0LydWaEUy3Vx8flL2', 'Jerry Folk - To My Soul', 127, 1687, 5, '2016-01-12 19:45:29', '2016-01-14 06:08:54', '2016-01-14 01:19:25', 0),
('Z7CTnA3dTU0', 'UCM9KEEuzacwVlkt9JfJ', 'G-Eazy & Bebe Rexha - Me, Myself & I (No Sleep Remix)', 4275, 85666, 5, '2016-01-10 18:00:01', '2016-01-14 07:11:39', '2016-01-14 02:28:52', 0),
('z9k4mRtA69o', 'UC1WKD9pJt5Sa4DCVaoJ', 'Stonebank - All Night', 409, 7987, 5, '2016-01-04 20:07:07', '2016-01-14 05:45:03', '2016-01-14 02:29:33', 0),
('ZDV1WM0lW4k', 'UC1WKD9pJt5Sa4DCVaoJ', 'Avenza - Haze', 181, 2073, 5, '2016-01-13 18:10:46', '2016-01-14 07:04:27', '2016-01-14 02:29:31', 0),
('ZefN9nEyRXI', 'UCgG_FUxALN1tJ_9YyAB', 'Kid de Luca - Craving (ft. Mae)', 105, 1615, 5, '2016-01-11 12:30:00', '2016-01-14 06:00:56', '2016-01-14 02:28:46', 0),
('zY2bb6mcYCs', 'UCRUOfuNIb_sk__7snjK', 'Marquinch Mogule - essence', 431, 14377, 5, '2015-07-27 00:19:28', '2016-01-12 23:39:36', '2016-01-14 02:22:12', 0),
('ZzshvNk3TfU', 'UC8-cVUxklYOKH7gGBsf', 'Feathered Sun - Scheune (Original Mix)', 362, 17586, 5, '2015-11-01 16:58:33', '2016-01-14 04:21:46', '2016-01-14 01:19:55', 0),
('ZZVPvCsZuVk', 'UC1WKD9pJt5Sa4DCVaoJ', 'Curbi - Circus', 372, 8227, 5, '2016-01-01 18:58:24', '2016-01-14 07:02:34', '2016-01-14 02:29:33', 0),
('_ARHYnGBLOE', 'UCM9KEEuzacwVlkt9JfJ', 'Tontario x Lucas Nord - Rewind', 1282, 27567, 5, '2016-01-12 18:00:01', '2016-01-14 07:12:24', '2016-01-14 02:28:52', 0),
('_T55Pi5t3eo', 'UCr8jMCGC6OwySrOmvfW', 'AmbitionÂ² - La BeautÃ© ( Original Mix )', 6802, 579681, 5, '2012-04-14 16:53:23', '2016-01-13 20:13:06', '2016-01-14 01:19:46', 0);

-- --------------------------------------------------------

--
-- Table structure for table `song_log`
--

CREATE TABLE IF NOT EXISTS `song_log` (
  `USERNAME` varchar(100) NOT NULL,
  `VIDEO_ID` varchar(20) NOT NULL,
  `DATE_ACCESSED` varchar(20) NOT NULL,
  PRIMARY KEY (`USERNAME`,`VIDEO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `song_playlist`
--

CREATE TABLE IF NOT EXISTS `song_playlist` (
  `USERNAME` varchar(20) NOT NULL,
  `PLAYLIST_NAME` varchar(20) NOT NULL,
  `VIDEO_ID` varchar(11) NOT NULL,
  PRIMARY KEY (`USERNAME`,`PLAYLIST_NAME`,`VIDEO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `song_playlist`
--

INSERT INTO `song_playlist` (`USERNAME`, `PLAYLIST_NAME`, `VIDEO_ID`) VALUES
('', 'Favorite', '2SmtSWUiyuo'),
('', 'Favorite', '8UtVW1hADWA'),
('', 'Favorite', 'BkL72ooDh0I'),
('', 'Favorite', 'fRh_vgS2dFE'),
('hello', 'Favorite', 'fRh_vgS2dFE'),
('hello', 'Favorite', 'OrR1TGQY20Y');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `USERNAME` varchar(50) NOT NULL,
  `PASSWORD` varchar(50) NOT NULL,
  `EMAIL` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`USERNAME`,`PASSWORD`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`USERNAME`, `PASSWORD`, `EMAIL`) VALUES
('username', 'password', 'charles.karpati@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `youtube_channel`
--

CREATE TABLE IF NOT EXISTS `youtube_channel` (
  `Channel_ID` varchar(25) NOT NULL,
  `Channel_Name` varchar(80) NOT NULL,
  PRIMARY KEY (`Channel_Name`),
  UNIQUE KEY `Channel_ID` (`Channel_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `youtube_channel`
--

INSERT INTO `youtube_channel` (`Channel_ID`, `Channel_Name`) VALUES
('UC1WKD9pJt5Sa4DCVaoJSAGw', 'JompaMusic'),
('UC3ifTl5zKiCAhHIBQYcaTeg', 'Proximity'),
('UC5nc_ZtjKW1htCVZVRxlQAQ', 'MrSuicideSheep'),
('UC64QCXR2HIJRHt-xzQYZj5g', 'discointergalactic'),
('UC65afEgL62PGFWXY7n6CUbA', 'Trap City'),
('UC8-cVUxklYOKH7gGBsfW48Q', 'D1gitalSound'),
('UCa10nxShhzNrCE1o2ZOPztg', 'Trap Nation'),
('UCaAlh3Iy7rAcO3MgD_O3Kkg', 'Nik Cooper'),
('UCaFhnBLyZVRuIFEttjFRLaw', 'Sound Society'),
('UCBYg9_11ErMsFFNR66TRuLA', 'Koala Kontrol'),
('UCDMpFtA3M6FyetIGm3hnTAg', 'Blissful EDM'),
('UCdUQW86ra4l01VD7P0bj9tQ', 'Holy Chill'),
('UCDzWQilDbBuelO4mGDPv1Vw', 'Dealer de Musique'),
('UCE1tHKC3-JKapESzVRRy3iA', 'LostInTheCosmosMusic'),
('UCFb8_kbCqFZ1tx49DBu21Jw', 'Rhythm Music'),
('UCgG_FUxALN1tJ_9YyABcRGQ', 'Chill Trap'),
('UCi0LydWaEUy3Vx8flL29ebQ', 'SyrebralVibes'),
('UCiOzvbATzRs2O9fQKap88kw', 'GreenWeedzIsBack'),
('UCJ6td3C9QlPO9O_J5dF4ZzA', 'Monsterca'),
('UCjXL7lE4LZWh8HvNqg-alhg', 'Beyond Radio'),
('UCkHpV84_gHSqU93Ra4n8hhg', 'Pete Souldeep Horridge'),
('UCkUTBwZKwA9ojYqzj6VRlMQ', 'OneChilledPanda'),
('UCkWHH0nHMW8LNSI4tlFMbGA', 'TheIoLoSo5'),
('UCLPNjlk3UxqDqVjPyVkkySw', 'ListenCity'),
('UCLxt4udbyQwiYuSFXKJSFcQ', 'Progressive House'),
('UCM9KEEuzacwVlkt9JfJad7g', 'Chill Nation'),
('UCnkdF0aNzdW26J4JdrqrqbA', 'Chill Masters'),
('UCNnkp6SwIbCXXOmXZzoDEJA', 'Playlist Buddy'),
('UCnZ_cnerOnbfxcVphwSPl-g', 'EARGASM music blog'),
('UCODdWl3hQZIZs1uquoPwtcg', 'Exit Lane'),
('UCouV5on9oauLTYF-gYhziIQ', 'The Vibe Guide XO'),
('UCpAYHD-PchKpe-daPItVhuA', 'Local Talk Records'),
('UCpDJl2EmP7Oh90Vylx0dZtA', 'Spinnin'' Records'),
('UCpE5V1Mtc6fQPyByQia4Lgg', 'valorale'),
('UCpO0OSNAFLRUpGrNz-bJJHA', 'Electro Posé'),
('UCr8jMCGC6OwySrOmvfWgdJg', 'Ambition Squared'),
('UCRUOfuNIb_sk__7snjK3aVg', 'ElFamosoDemon'),
('UCsuapP8WTP-YPn_c-deZ7xQ', 'EDM Lighthouse'),
('UCtCXdQsuByZSGyxTmH9hM-g', 'bangbangplaylistVEVO'),
('UCudKvbd6gvbm5UCYRk5tZKA', 'TheSoundYouNeed'),
('UCUVjT8oRvE9jI6-HKn2cuKQ', 'Underground Charisma'),
('UCVeETS7uZTAARqvv2zssZCw', 'Sensual Musique'),
('UCxH0sQJKG6Aq9-vFIPnDZ2A', 'The Vibe Guide'),
('UCXIyz409s7bNWVcM-vjfdVA', 'Majestic Casual'),
('UCXKr4vbqJkg4cXmdvaAEjYw', 'La Belle Musique'),
('UCy3DbVl0K1qj0e8jGAOYgPg', 'Future Classic'),
('UCyCoNv9ZmIma2Uv021ephJA', '42º'),
('UCzaan1r-UWrwsgvmZ2wJafQ', 'Zautra party™'),
('UCzLrghSHiG3ERoxAxiWzM0A', 'DailyMorningMusic');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
