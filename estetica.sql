-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-01-2018 a las 01:16:53
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `estetica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `categoria_id` int(11) NOT NULL,
  `categoria_nombre` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`categoria_id`, `categoria_nombre`) VALUES
(1, 'Relajacion'),
(2, 'Facial');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `servicio_id` int(11) NOT NULL,
  `servicio_nombre` varchar(20) NOT NULL,
  `servicio_descripcion` varchar(500) NOT NULL,
  `servicio_imagenp` varchar(15) NOT NULL,
  `servicio_imagen` varchar(200) NOT NULL,
  `servicio_precio` int(12) NOT NULL,
  `servicio_categoria_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`servicio_id`, `servicio_nombre`, `servicio_descripcion`, `servicio_imagenp`, `servicio_imagen`, `servicio_precio`, `servicio_categoria_id`) VALUES
(1, 'Descontracturante', 'Masaje cuya finalidad es aliviar tensiones de nuestro organismo producido por el Estrés, genera una relajación profunda. El masaje calma fatiga, insomnio, dolores musculares, cervicales, lumbares, lesiones y traumatismos. Los aceites esenciales que utilizamos son incorporados a través del olfato y a través de la piel. Estos aceites ayudan armonizando las emociones y la mente.\r\nRecupera la elasticidad (sobre los músculos) y se disipan los signos de tensión', 'img/descon1.jpg', 'img/descon2.jpg', 12000, 1),
(2, 'Facial', 'El masaje facial abarca un conjunto de técnicas basadas en manipulaciones manuales sobre el cutis con el propósito de que los tejidos cutáneos dérmicos y musculares conserven por el mayor tiempo posible su elasticidad y firmeza, y dar de esta forma al rostro una apariencia juvenil y hermosa.diferentes en cuestiones térmicas y atm', 'img/facial.jpg', 'img/facial2.jpg', 15000, 2),
(3, 'Exfoliante', 'El masaje facial abarca un conjunto de técnicas basadas en manipulaciones manuales sobre el cutis con el propósito de que los tejidos cutáneos dérmicos y musculares conserven por el mayor tiempo posible su elasticidad y firmeza, y dar de esta forma al rostro una apariencia juvenil y hermosa.', 'img/imagen.jpg', 'img/imagen.jpg', 8500, 1),
(4, 'Relajacion', 'Sentirse diferente es disfrutar la vida', 'img/rela.jpg', 'img/rela1.jpg', 15000, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`categoria_id`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`servicio_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `categoria_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `servicio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
