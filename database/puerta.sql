-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Oct 11, 2022 at 03:50 PM
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
(14, 'Juan', '2012-10-03', 'masculino', 42057066, 0),
(15, 'nahuel', '2001-04-25', 'masculino', 43238988, 1),
(16, 'Lukas Santillán', '2001-08-18', 'nb', 43409340, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cronograma`
--

CREATE TABLE `cronograma` (
  `curso` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `dias` varchar(100) NOT NULL,
  `horario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cronograma`
--

INSERT INTO `cronograma` (`curso`, `fecha_inicio`, `fecha_fin`, `dias`, `horario`) VALUES
(1, '2022-11-01', '2022-12-31', 'Lunes y Jueves', '9:00 a 12:00'),
(2, '2023-01-01', '2023-02-28', 'Miercoles y Viernes', '12:00 a 15:00'),
(2, '2022-11-01', '2022-12-31', 'Lunes y Jueves', '9:00 a 12:00'),
(3, '2023-01-01', '2023-02-28', 'Miercoles y Viernes', '12:00 a 15:00'),
(4, '2022-11-01', '2022-12-31', 'Lunes y Jueves', '15:00 a 18:00'),
(5, '2023-01-01', '2023-02-28', 'Miercoles y Viernes', '10:00 a 13:00'),
(6, '2022-11-01', '2022-12-31', 'Martes y Jueves', '09:00 a 11:00'),
(7, '2023-01-01', '2023-02-28', 'Martes y Viernes', '14:00 a 17:00');

-- --------------------------------------------------------

--
-- Table structure for table `cursados`
--

CREATE TABLE `cursados` (
  `id` int(11) NOT NULL,
  `alumne` int(11) NOT NULL,
  `curso` int(11) NOT NULL,
  `aprobado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cursados`
--

INSERT INTO `cursados` (`id`, `alumne`, `curso`, `aprobado`) VALUES
(1, 15, 3, 1),
(2, 2, 15, 1),
(3, 2, 8, 1),
(4, 12, 8, 1),
(5, 3, 8, 1),
(6, 3, 15, 0),
(7, 11, 8, 1),
(8, 11, 3, 0),
(9, 7, 7, 1),
(10, 8, 3, 1),
(13, 8, 6, 1),
(14, 8, 5, 1),
(15, 10, 8, 0),
(16, 10, 6, 0),
(19, 10, 2, 1),
(20, 10, 7, 1),
(21, 12, 3, 1),
(22, 16, 3, 1),
(23, 13, 2, 1),
(24, 15, 15, 1),
(25, 15, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cursos`
--

CREATE TABLE `cursos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `tipo` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cursos`
--

INSERT INTO `cursos` (`id`, `nombre`, `tipo`) VALUES
(1, 'Introducción al backend', 'tecnologia'),
(2, 'Taller fotografia', 'arte'),
(3, 'Introduccion al frontend', 'tecnologia'),
(5, 'UX Writing', 'tecnologia'),
(6, 'Taller de Robotica', 'tecnologia'),
(7, 'Taller de Cine', 'arte'),
(8, 'programacion ', 'tecnologia'),
(15, 'backend', 'tecnologia'),
(16, '', ''),
(18, 'Nombre', 'n/d'),
(19, 'Diseño gráfico', 'n/d'),
(20, 'Escuela Secundaria', 'n/d'),
(21, 'Diseño de Imagen y sonido', 'n/d'),
(22, 'Diseño de Indumentaria', 'n/d'),
(23, 'Ingeniería en Sistemas', 'n/d'),
(24, 'Análisis de Sistemas', 'n/d'),
(25, 'Diseño gráfico', 'n/d'),
(26, 'Ingeniería Electrónica', 'n/d'),
(27, 'Profesorado', 'n/d'),
(28, 'Arquitectura', 'n/d'),
(29, 'Animación', 'n/d'),
(30, 'Diseño Web', 'n/d'),
(31, '3D', 'n/d'),
(32, 'Trabajo Social', 'n/d'),
(33, 'Comunicación', 'n/d'),
(34, 'Recreación', 'n/d'),
(35, 'Educación', 'n/d'),
(36, 'Periodismo', 'n/d'),
(37, 'Producción', 'n/d'),
(38, 'Efectos especiales', 'n/d'),
(39, 'Diseño Multimedia', 'n/d'),
(40, 'Programación', 'n/d'),
(41, 'Ciencia Política', 'n/d'),
(42, 'Administración', 'n/d'),
(43, 'Relaciones del Trabajo', 'n/d'),
(44, 'Otros', 'n/d');

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
(24, 11, 8),
(27, 15, 1),
(29, 10, 16);

-- --------------------------------------------------------

--
-- Table structure for table `inscripcion_proyectos`
--

CREATE TABLE `inscripcion_proyectos` (
  `id` int(11) NOT NULL,
  `alumne` int(11) NOT NULL,
  `proyecto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inscripcion_proyectos`
--

INSERT INTO `inscripcion_proyectos` (`id`, `alumne`, `proyecto`) VALUES
(1, 3, 21),
(2, 16, 5),
(3, 4, 21),
(4, 13, 5),
(5, 3, 8),
(6, 5, 14),
(7, 5, 20),
(8, 5, 20);

-- --------------------------------------------------------

--
-- Table structure for table `proyectos`
--

CREATE TABLE `proyectos` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(46) DEFAULT NULL,
  `alumne` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `proyectos`
--

INSERT INTO `proyectos` (`id`, `Nombre`, `alumne`) VALUES
(2, 'Intros de video', 1),
(3, 'taller de poderes', 0),
(4, 'efectos animados y recorridos virtuales', 0),
(5, 'efectos animados', 0),
(6, 'tu firma', 0),
(7, 'Diseño de juego yo lo ví', 0),
(8, 'El valiente no es violento', 0),
(9, 'Cuento números', 0),
(10, 'tu firma', 0),
(11, 'after y flash', 0),
(12, 'taller de poderes magicos', 0),
(13, 'tu firma y efectos animados', 0),
(14, 'programa after', 0),
(15, 'after: tu firma y efectos animados', 0),
(16, 'after', 0),
(17, 'After: taller de poderes magico ', 0),
(18, 'AFTER: taller poderes magicos', 0),
(19, 'after: taller de poderes magicos', 0),
(20, 'after: taller de titeres', 0),
(21, 'after: taller de poderes', 0),
(22, 'after: efectos animados y recorridos virtuales', 0),
(23, 'fotografía', 0),
(24, 'after: taller de poderes mágicos', 0),
(25, 'flash', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumnes`
--
ALTER TABLE `alumnes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cursados`
--
ALTER TABLE `cursados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumne` (`alumne`),
  ADD KEY `curso` (`curso`);

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumne` (`alumne`),
  ADD KEY `curso` (`curso`);

--
-- Indexes for table `inscripcion_proyectos`
--
ALTER TABLE `inscripcion_proyectos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proyecto` (`proyecto`),
  ADD KEY `alumne_proy` (`alumne`);

--
-- Indexes for table `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alumnes`
--
ALTER TABLE `alumnes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `cursados`
--
ALTER TABLE `cursados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `inscripciones`
--
ALTER TABLE `inscripciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `inscripcion_proyectos`
--
ALTER TABLE `inscripcion_proyectos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cursados`
--
ALTER TABLE `cursados`
  ADD CONSTRAINT `alumne` FOREIGN KEY (`alumne`) REFERENCES `alumnes` (`id`),
  ADD CONSTRAINT `curso` FOREIGN KEY (`curso`) REFERENCES `cursos` (`id`);

--
-- Constraints for table `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD CONSTRAINT `inscripciones_ibfk_1` FOREIGN KEY (`alumne`) REFERENCES `alumnes` (`id`),
  ADD CONSTRAINT `inscripciones_ibfk_2` FOREIGN KEY (`curso`) REFERENCES `cursos` (`id`);

--
-- Constraints for table `inscripcion_proyectos`
--
ALTER TABLE `inscripcion_proyectos`
  ADD CONSTRAINT `alumne_proy` FOREIGN KEY (`alumne`) REFERENCES `alumnes` (`id`),
  ADD CONSTRAINT `proyecto` FOREIGN KEY (`proyecto`) REFERENCES `proyectos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
