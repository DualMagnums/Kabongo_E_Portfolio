-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 08, 2023 at 10:58 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `start_date` varchar(50) NOT NULL,
  `finish_date` varchar(50) NOT NULL,
  `software_used` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `type`, `description`, `client_name`, `start_date`, `finish_date`, `software_used`) VALUES
(1, 'Worship Night', 'Flyer', 'A client tasked me with making a flyer promoting an event held every year at Ramada Hotel in the spring called Worship Night. Photoshop was my go-to software and I made use of different FX such as outer glow for the title text, stroke around the address text and drop shadow on almost all of them. I also made use of the gradient to blend various images into the background giving it a smooth feel.', 'Cornelie Mbaya', 'Jan 12th 2023', 'Jan 16th 2023', 'Photoshop'),
(2, 'NGS (Never Gonna Stop)', 'Flyer', 'After forming a new streetwear brand emerging out of Hamilton, Ontario one of the members from NGS hired me to make a flyer promoting the merchandise. As always for flyers, Photoshop was my go-to software, this time I made use of different assets like the tape forming an \"X\", the smoke and fire in the foreground, and I wanted to try something different with the font. I\'m very critical when it comes to fonts and I believe every font serves a purpose and deserves a chance (even Comic Sans).', 'YoungDaveBangin', 'Jun 3rd 2023', 'Jun 10th 2023', 'Photoshop'),
(3, 'Essence and Culture Awards (ECA)', 'Render', 'After church, a client came to see me about turning an award into a 3D model and animating it, the Essence and Culture Awards trophy that would be presented to winners in February 2023. So I opened up Illustrator and used the pen tool to carefully sculpt the shape of the body, the base of the trophy and also the logo. After that I exported it to Cinema 4D where I extruded the path, textured the award, inserted the logo and required text. The only thing left to do was set up the scenes for the camera and render the project', 'Colin Caleb', 'Oct 27th 2022', 'Nov 9th 2022', 'Cinema 4D, Illustrator'),
(4, 'Congo DR vs Morocco', 'Render', 'One of my favourite personal projects is this Congo DR vs Morocco promotional render I made near the end of the 2022 FIFA World Cup, with inspiration from a school project assigned to our class by our Motion Design professor. I was able to make the scene ressembling a stadium and populate it with pistons and banners that I decorated using Photoshop and made the paths for using the pen tool in Illustrator for each respective team, and after I rendered the frames I took the video to Premiere Pro where I made modifications to the lighting by adding a lens flare and some particles to give the atmosphere a more realistic feel', 'Personal Project', 'Nov 18th 2022', 'Jan 2nd 2023', 'Cinema 4D, Illustrator, Photoshop, Premiere Pro'),
(5, 'Quatro Brand Refresh', 'Website', 'With the help of HTML, CSS and Javascript, I was able to create a brand refresh for the energy drink brand Quatro, who had been inactive since the 80s. I used Visual Studio Code in order to code and style the website, Illustrator to make the logo, Cinema 4D to make models of the bottles and Photoshop to edit photos and make them website ready', 'Quatro', 'Jan 20th 2023', 'Apr 10th 2023', 'Visual Studio Code, Photoshop, Illustrator, Cinema 4D, Git CLI');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
