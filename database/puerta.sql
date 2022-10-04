-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Oct 04, 2022 at 03:46 PM
-- Server version: 10.5.10-MariaDB-1:10.5.10+maria~focal
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `puerta`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumnes`
--

CREATE TABLE `alumnes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `nacimiento` date NOT NULL,
  `genero` varchar(25) NOT NULL,
  `dni` int(11) NOT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla de alumnes ';

--
-- Dumping data for table `alumnes`
--

INSERT INTO `alumnes` (`id`, `nombre`, `nacimiento`, `genero`, `dni`, `activo`) VALUES
(1, 'Vicente Deluca', '1933-10-01', 'nn', 27659595, 0),
(2, 'Ludmila Saba', '1999-06-29', 'femenino', 42076117, 1),
(3, 'Angel Caldas', '1998-10-27', 'masculino', 41835326, 1),
(4, 'Johnny Arvelo', '1999-09-28', 'masculino', 95916116, 1),
(5, 'Franco Nicoletti', '1997-10-30', 'otro', 41141497, 1),
(6, 'Franco Pelaez', '2004-02-17', 'Masculino', 45582508, 1),
(7, 'Leonel Mercau', '1999-09-27', 'masculino', 42057009, 1),
(8, 'Maryori Brighit Carrillo Elias', '2001-09-03', 'Femenino', 95188427, 1),
(9, 'German', '2001-04-22', 'Masculino', 43486533, 1),
(10, 'Alejandro Aracri', '2000-11-24', 'Masculino ', 42595187, 1),
(11, 'Irina', '2001-12-16', 'femenino', 58385823, 1),
(12, 'Maria', '2004-06-09', 'femenino', 45749453, 1),
(13, 'Franco Galian', '2002-02-22', 'M', 43873184, 1),
(14, 'Juan', '2012-10-03', 'masculino', 42057066, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cursos`
--

CREATE TABLE `cursos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cursos`
--

INSERT INTO `cursos` (`id`, `nombre`) VALUES
(1, 'Introducción al backend'),
(2, 'Taller fotografia'),
(3, 'Introduccion al frontend'),
(5, 'UX Writing'),
(6, 'Taller de Robotica'),
(7, 'Taller de Cine'),
(8, 'programacion '),
(15, 'backend'),
(16, '');

-- --------------------------------------------------------

--
-- Table structure for table `inscripciones`
--

CREATE TABLE `inscripciones` (
  `id` int(11) NOT NULL,
  `alumne` int(11) NOT NULL,
  `curso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inscripciones`
--

INSERT INTO `inscripciones` (`id`, `alumne`, `curso`) VALUES
(3, 2, 2),
(5, 10, 3),
(6, 2, 12),
(7, 123, 3423),
(8, 2, 12),
(9, 123, 3423),
(10, 1, 2),
(11, 10, 7),
(12, 3, 5),
(13, 5, 3),
(14, 3, 1),
(15, 4, 8),
(16, 4, 1),
(18, 12, 7),
(19, 10, 2),
(20, 12, 1),
(21, 11, 1),
(22, 9, 5),
(23, 9, 7),
(24, 11, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumnes`
--
ALTER TABLE `alumnes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alumnes`
--
ALTER TABLE `alumnes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `inscripciones`
--
ALTER TABLE `inscripciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
