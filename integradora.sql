-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-11-2023 a las 00:16:19
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `integradora`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores`
--

CREATE TABLE `jugadores` (
  `IdJugador` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Posicion` varchar(25) NOT NULL,
  `Edad` int(11) NOT NULL,
  `Estatura` varchar(15) NOT NULL,
  `Peso` varchar(11) NOT NULL,
  `Nacionalidad` varchar(25) NOT NULL,
  `Apariciones` int(11) NOT NULL,
  `Sustituto` int(11) NOT NULL,
  `Asistencias` int(11) NOT NULL,
  `Goles` int(11) NOT NULL,
  `Atajadas` int(11) NOT NULL,
  `FaltasHechas` int(11) NOT NULL,
  `FaltasSufridas` int(11) NOT NULL,
  `TarjetasAmarillas` int(11) NOT NULL,
  `TarjetasRojas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jugadores`
--

INSERT INTO `jugadores` (`IdJugador`, `Nombre`, `Posicion`, `Edad`, `Estatura`, `Peso`, `Nacionalidad`, `Apariciones`, `Sustituto`, `Asistencias`, `Goles`, `Atajadas`, `FaltasHechas`, `FaltasSufridas`, `TarjetasAmarillas`, `TarjetasRojas`) VALUES
(1, 'Fabio 1', 'Arquero', 43, '1.88 m', '86 Kg', 'Brasil', 28, 0, 84, 34, 0, 0, 2, 3, 0),
(2, 'Marlon 4', 'Defensor', 28, '1.88 m', '78 Kg', 'Brasil', 13, 2, 0, 0, 4, 1, 16, 1, 5),
(3, 'Marcelo 12', 'Defensor', 35, '1.73 m', '72 Kg', 'Brasil', 15, 1, 1, 1, 25, 8, 5, 24, 3),
(4, 'Nino 33', 'Defensor', 26, '1.88 m', '82 Kg', ' Brasil', 21, 0, 2, 0, 12, 4, 22, 22, 4),
(5, 'John Kennedy 9', 'Delantero', 21, '1.73 m', '71 Kg', 'Brasil', 20, 11, 4, 1, 35, 16, 19, 24, 8),
(6, 'Keni 11', 'Delantero', 34, '1.78 m', '72 Kg', 'Brasil', 19, 4, 2, 4, 37, 15, 15, 23, 5),
(7, 'German Cano 14', 'Delantero', 35, '1.78 m', '81 Kg', 'Argentina', 26, 2, 7, 1, 55, 22, 23, 10, 6);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD PRIMARY KEY (`IdJugador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  MODIFY `IdJugador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
