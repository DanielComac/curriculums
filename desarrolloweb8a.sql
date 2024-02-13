-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2024 at 07:57 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `desarrolloweb8a`
--

-- --------------------------------------------------------

--
-- Table structure for table `curriculum`
--

CREATE TABLE `curriculum` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `nacimiento` varchar(30) NOT NULL,
  `calle` text NOT NULL,
  `colonia` text NOT NULL,
  `cp` int(11) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `celular` varchar(20) NOT NULL,
  `institucion` text NOT NULL,
  `titulo` text NOT NULL,
  `campo_estudio` varchar(50) NOT NULL,
  `graduacion` int(11) NOT NULL,
  `nombre_empresa` text NOT NULL,
  `puesto` text NOT NULL,
  `fecha_inicio` varchar(30) NOT NULL,
  `fecha_fin` varchar(30) NOT NULL,
  `descripcion` text NOT NULL,
  `competencias` text NOT NULL,
  `hobbies` text NOT NULL,
  `certificaciones` text NOT NULL,
  `valores` text NOT NULL,
  `idiomas` text NOT NULL,
  `facebook` varchar(50) NOT NULL,
  `instagram` varchar(50) NOT NULL,
  `twitter` varchar(50) NOT NULL,
  `linkedIn` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `curriculum`
--

INSERT INTO `curriculum` (`id`, `id_usuario`, `nombre`, `apellido`, `nacimiento`, `calle`, `colonia`, `cp`, `sexo`, `email`, `celular`, `institucion`, `titulo`, `campo_estudio`, `graduacion`, `nombre_empresa`, `puesto`, `fecha_inicio`, `fecha_fin`, `descripcion`, `competencias`, `hobbies`, `certificaciones`, `valores`, `idiomas`, `facebook`, `instagram`, `twitter`, `linkedIn`) VALUES
(1, 1, 'Juan Díaz', '', '28-02-2000', 'Calle principal', 'Colonia royale', 50000, '', 'johndoe@email.com', '6969696969', 'Universidad de Oxford', 'Estudios de género', 'Humanidades', 2025, 'Pancholines software', 'Intendente', '12-02-2022', '', 'He trabajado como intendente por un año y lo hago muy bien', 'Trabajo en equipo, organización, liderazgo', 'Coleccionar piedras redondas, Criticar estacionamientos, Tocar el theremin', 'Nivel intermedio en Scratch', 'Solidaridad, honestidad, disciplina', 'Inglés\r\nEspañol\r\nFrances\r\nItaliano\r\nRuso\r\nAlemán\r\nBúlgaro\r\nNeerlandés\r\nPolaco\r\nJaponés\r\nMandarín\r\nCoreano\r\nVietnamita\r\nTurco\r\nIndostaní', '@JuanDiaz', '@juan_diaz1', '@JohnnySins', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `pass`) VALUES
(1, 'admin', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `curriculum`
--
ALTER TABLE `curriculum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `curriculum_ibfk_1` (`id_usuario`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `curriculum`
--
ALTER TABLE `curriculum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `curriculum`
--
ALTER TABLE `curriculum`
  ADD CONSTRAINT `curriculum_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
