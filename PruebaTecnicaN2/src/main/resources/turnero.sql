-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-03-2024 a las 12:03:35
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `turnero`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudadano`
--

CREATE TABLE `ciudadano` (
  `IDCIUDADANO` int(11) NOT NULL,
  `APELLIDO` varchar(255) DEFAULT NULL,
  `DNI` varchar(255) DEFAULT NULL,
  `NOMBRE` varchar(255) DEFAULT NULL,
  `TELEFONO` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ciudadano`
--

INSERT INTO `ciudadano` (`IDCIUDADANO`, `APELLIDO`, `DNI`, `NOMBRE`, `TELEFONO`) VALUES
(1, 'Porras', '45324123', 'Pepe', '659301212'),
(2, 'Llorente', '12345678', 'Marcos', '564545454'),
(3, 'Roberts', '12345678', 'Julia', '564545454'),
(4, 'Gostling', '45324123', 'Ryan', '535435123'),
(5, 'sdasda', '12345678', 'asda', '564545454'),
(6, 'De Niro', '38643246', 'Robert', '647890212'),
(7, 'Pacino', '23934564', 'Al', '657234546'),
(8, 'Stone', '12345678', 'Enma', '564545454'),
(9, 'Kubrick', '12345634', 'Stanley', '545632342'),
(10, 'sddf', '12345634', 'ere', '564545454'),
(11, 'morales', '45345523', 'antonio', '567833333'),
(12, 'Casas', '12345633', 'Marioo', '334343434'),
(13, 'Vega', '34523423', 'Paz', '432543435'),
(14, 'Villanueve', '54354345', 'Denis', '436754556'),
(15, 'Nolan', '64645655', ' Christopher', '643435454'),
(16, 'Murphy ', '45464654', 'Cillian', '343544466'),
(17, 'Cooper', '64634453', 'Bradley', '545345444');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

CREATE TABLE `turno` (
  `IDTURNO` int(11) NOT NULL,
  `ESTADO` varchar(255) DEFAULT NULL,
  `FECHA` date DEFAULT NULL,
  `TRAMITE` varchar(255) DEFAULT NULL,
  `idCiuda` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `turno`
--

INSERT INTO `turno` (`IDTURNO`, `ESTADO`, `FECHA`, `TRAMITE`, `idCiuda`) VALUES
(2, 'En Espera', '2024-03-10', 'Consumo', 2),
(3, 'Atendido', '2024-03-31', 'Empadronamiento', 3),
(4, 'En Espera', '2024-03-15', 'Consumo', 4),
(6, 'En Espera', '2024-03-25', 'Cultura', 6),
(7, 'En Espera', '2024-03-25', 'Urbanismo y Vivienda', 7),
(8, 'En Espera', '2024-03-25', 'Contribuyente', 8),
(9, 'Atendido', '2024-03-25', 'Protección Animal', 9),
(15, 'En Espera', '2024-03-25', 'Extranjeria', 12),
(16, 'En Espera', '2024-03-25', 'Extranjeria', 1),
(17, 'En Espera', '2024-03-25', 'Extranjeria', 13),
(18, 'Atendido', '2024-03-26', 'Consumo', 14),
(19, 'Atendido', '2024-03-27', 'Empleo', 15),
(20, 'En Espera', '2024-03-27', 'Padrón y Censo', 16),
(21, 'En Espera', '2024-03-27', 'Infraestructura y Obras Públicas', 17);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudadano`
--
ALTER TABLE `ciudadano`
  ADD PRIMARY KEY (`IDCIUDADANO`);

--
-- Indices de la tabla `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`IDTURNO`),
  ADD KEY `FK_TURNO_idCiuda` (`idCiuda`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciudadano`
--
ALTER TABLE `ciudadano`
  MODIFY `IDCIUDADANO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `turno`
--
ALTER TABLE `turno`
  MODIFY `IDTURNO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `turno`
--
ALTER TABLE `turno`
  ADD CONSTRAINT `FK_TURNO_idCiuda` FOREIGN KEY (`idCiuda`) REFERENCES `ciudadano` (`IDCIUDADANO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
