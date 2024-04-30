-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-04-2024 a las 08:22:25
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
-- Base de datos: `ecommerce`
--
CREATE DATABASE IF NOT EXISTS `ecommerce` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ecommerce`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE `ciudades` (
  `id_ciudad` int(11) NOT NULL,
  `nombre_ciudad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`id_ciudad`, `nombre_ciudad`) VALUES
(1, 'Barcelona'),
(2, 'Vic'),
(3, 'Seattle'),
(4, 'Cupertino'),
(5, 'Girona'),
(6, 'Los Angeles');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre_cliente` varchar(20) NOT NULL,
  `apellidos_cliente` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nif` varchar(9) NOT NULL,
  `telefono` varchar(9) NOT NULL,
  `direccion_cliente` varchar(100) NOT NULL,
  `id_ciudad` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fecha_alta` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre_cliente`, `apellidos_cliente`, `password`, `nif`, `telefono`, `direccion_cliente`, `id_ciudad`, `email`, `fecha_alta`) VALUES
(1, 'Josep', 'Guardiola', '1234', '1234', '1234', 'St Jaume 1', 0, 'x@gmail.com', '2024-04-29 09:13:57'),
(2, 'Bill', 'Gates', '$2y$10$KiTqN0bOW5mczfiYaGu78O2JxJRexwbCUEShdfIjNVcsL8y2w13z2', '1234', '1234', 'Ivonne St', 3, 'bill@gmail.com', '2024-04-29 10:12:58'),
(3, 'Steve', 'Jobs', '$2y$10$HDoWoXFmZHDJBJMOh6YRJO9z/kC9Wbh71i5L0l5wz5bZMdgfKXNh2', '1234', '1234', 'Manami St', 4, 'steve@gmail.com', '2024-04-29 10:25:06'),
(4, 'Steve', 'Jobs', '$2y$10$UvrWfbiXuOmFR01Fms4uyOXWhVdVaSM6IFkIUctk.fQkmMCdWmHd.', '1234', '1234', 'Ivonne St', 5, 'steve2@gmail.com', '2024-04-29 10:36:57'),
(5, 'Jeff', 'Bezzoz', '$2y$10$dq2YRFGSSpi6wSHUNTScs.7A4KbqLUys5uja6c7mCHYRGzRCDYF0C', '1234', '1234', 'Manami St', 6, 'jeff@gmail.com', '2024-04-29 10:46:35');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`id_ciudad`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  MODIFY `id_ciudad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
