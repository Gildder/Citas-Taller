-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-07-2016 a las 23:24:13
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `bookmedik`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Consulta Externa'),
(2, 'Emergencia'),
(3, 'Medicina'),
(4, 'Cirugia'),
(5, 'Gine Obstetricia'),
(6, 'Pediatria'),
(7, 'Otra Especialidades');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medic`
--

CREATE TABLE IF NOT EXISTS `medic` (
`id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `lastname` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `address` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `image` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `medic`
--

INSERT INTO `medic` (`id`, `name`, `lastname`, `email`, `address`, `phone`, `image`, `is_active`, `created_at`, `category_id`) VALUES
(1, 'Javier ', 'Herrera PeÃ±a', 'javier@gmail.com', 'Los Lotes C. Bibosi', '70998765', NULL, 1, '2016-07-22 22:50:51', 2),
(2, 'Emanuel', 'Cabrera Tomas', 'emanuel@gmail.com', 'Los Olivos NÂº 21', '60987631', NULL, 1, '2016-07-22 23:04:19', 1),
(3, 'Hernan', 'Morales Vega', 'hernan@gmail.com', 'Los Mangales c/Cupesi NÂº 1432', '3330292', NULL, 1, '2016-07-23 08:09:48', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacient`
--

CREATE TABLE IF NOT EXISTS `pacient` (
`id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `lastname` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `address` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `image` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `pacient`
--

INSERT INTO `pacient` (`id`, `name`, `lastname`, `email`, `address`, `phone`, `image`, `is_active`, `created_at`) VALUES
(1, 'Angelica', 'Mamani Limachi', 'angelica@hotmail.com', 'Los Olivos C/ Tomatos', '60991648', NULL, 1, '2016-07-22 22:52:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservation`
--

CREATE TABLE IF NOT EXISTS `reservation` (
`id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET latin1 NOT NULL,
  `note` text CHARACTER SET latin1 NOT NULL,
  `message` text CHARACTER SET latin1 NOT NULL,
  `date_at` varchar(50) CHARACTER SET latin1 NOT NULL,
  `time_at` varchar(50) CHARACTER SET latin1 NOT NULL,
  `created_at` datetime NOT NULL,
  `pacient_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `medic_id` int(11) NOT NULL,
  `is_web` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `reservation`
--

INSERT INTO `reservation` (`id`, `title`, `note`, `message`, `date_at`, `time_at`, `created_at`, `pacient_id`, `user_id`, `medic_id`, `is_web`) VALUES
(2, 'Analisis de glucosa', 'AnÃ¡lisis de sangre para Glucosa de DiabÃ¡tis', '', '2016-09-11', '12:00', '2016-07-23 00:20:03', 1, 2, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 NOT NULL,
  `name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `lastname` varchar(50) CHARACTER SET latin1 NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `password` varchar(60) CHARACTER SET latin1 NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `username`, `name`, `lastname`, `email`, `password`, `is_active`, `is_admin`, `created_at`) VALUES
(1, 'admin', 'Administrador', 'Admin ', 'admin@hotmail.com', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', 1, 1, '2016-07-19 00:35:16'),
(2, 'Mario', 'Mario', 'Vegas Mamani', 'mario@gmail.com', 'dfeb9b01e931eb68139528488a045e7eb637aac6', 1, 0, '2016-07-22 22:49:12');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vwcitamedica`
--
CREATE TABLE IF NOT EXISTS `vwcitamedica` (
`codigo` int(11)
,`titulo` varchar(100)
,`nota` text
,`fecha` varchar(50)
,`hora` varchar(50)
,`fechaCreacion` datetime
,`codigoPaciente` varchar(255)
,`nombrePaciente` varchar(50)
,`apellidoPaciente` varchar(50)
,`codigoMedico` int(11)
,`nombreMedico` varchar(50)
,`apellidoMedico` varchar(50)
,`categoriaMedico` varchar(200)
);
-- --------------------------------------------------------

--
-- Estructura para la vista `vwcitamedica`
--
DROP TABLE IF EXISTS `vwcitamedica`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwcitamedica` AS select `reservation`.`id` AS `codigo`,`reservation`.`title` AS `titulo`,`reservation`.`note` AS `nota`,`reservation`.`date_at` AS `fecha`,`reservation`.`time_at` AS `hora`,`reservation`.`created_at` AS `fechaCreacion`,`pacient`.`phone` AS `codigoPaciente`,`pacient`.`name` AS `nombrePaciente`,`pacient`.`lastname` AS `apellidoPaciente`,`medic`.`id` AS `codigoMedico`,`medic`.`name` AS `nombreMedico`,`medic`.`lastname` AS `apellidoMedico`,`category`.`name` AS `categoriaMedico` from (((`reservation` left join `pacient` on((`reservation`.`pacient_id` = `pacient`.`id`))) left join `medic` on((`reservation`.`medic_id` = `medic`.`id`))) left join `category` on((`medic`.`category_id` = `category`.`id`)));

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `medic`
--
ALTER TABLE `medic`
 ADD PRIMARY KEY (`id`), ADD KEY `category_id` (`category_id`);

--
-- Indices de la tabla `pacient`
--
ALTER TABLE `pacient`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reservation`
--
ALTER TABLE `reservation`
 ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`user_id`), ADD KEY `pacient_id` (`pacient_id`), ADD KEY `medic_id` (`medic_id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `medic`
--
ALTER TABLE `medic`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `pacient`
--
ALTER TABLE `pacient`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `reservation`
--
ALTER TABLE `reservation`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `medic`
--
ALTER TABLE `medic`
ADD CONSTRAINT `medic_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Filtros para la tabla `reservation`
--
ALTER TABLE `reservation`
ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`pacient_id`) REFERENCES `pacient` (`id`),
ADD CONSTRAINT `reservation_ibfk_3` FOREIGN KEY (`medic_id`) REFERENCES `medic` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
