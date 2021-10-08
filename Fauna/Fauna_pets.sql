-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 19-08-2021 a las 15:51:09
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id16718710_fauna_pets`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(255) NOT NULL,
  `descripcion_categoria` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre_categoria`, `descripcion_categoria`, `date_added`) VALUES
(1, 'Comida Perro', 'Comida para perretes', '2021-06-02 07:00:00'),
(10, 'accesorios', 'Accesorios Para perros', '2021-06-23 23:18:11'),
(11, 'Comida para gatos', 'UwU\r\n', '2021-06-25 20:25:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `id_historial` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `nota` varchar(255) NOT NULL,
  `referencia` varchar(100) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `historial`
--

INSERT INTO `historial` (`id_historial`, `id_producto`, `user_id`, `fecha`, `nota`, `referencia`, `cantidad`) VALUES
(5, 3, 1, '2021-06-03 01:12:19', 'Obed agregó 400 producto(s) al inventario', '456', 400);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id_producto` int(11) NOT NULL,
  `codigo_producto` char(20) NOT NULL,
  `nombre_producto` char(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `precio_producto` double NOT NULL,
  `stock` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id_producto`, `codigo_producto`, `nombre_producto`, `date_added`, `precio_producto`, `stock`, `id_categoria`) VALUES
(3, '456', 'Comida barf', '2021-06-03 01:12:19', 20, 400, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `register`
--

CREATE TABLE `register` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nombmascota` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cuidados` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` int(11) NOT NULL,
  `direccion` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `correo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `passmord` varchar(12) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `register`
--

INSERT INTO `register` (`ID`, `nombre`, `apellidos`, `nombmascota`, `cuidados`, `telefono`, `direccion`, `correo`, `passmord`) VALUES
(1, 'Test', 'Testing', 'Testing', 'nada', 305, 'calle1', 'prueba@prueba.com', 'prueba01'),
(2, 'juan Fernando', 'gonzalez', 'megan', 'con delicadeza', 305, 'calle 35', 'juanfervilla0@gmail.com', 'prueba01'),
(3, 'Juan', 'Gonzalez', 'praga', 'no peinarle el pelo', 11, 'calle35', 'juanfervilla0@gmail.com', 'prueba02'),
(4, 'jjuan', 'Camilo', 'Pipo', 'muchos cuidado', 12345, 'Calle 1', 'ju@gmail.com', ''),
(5, 'jjuan', 'Camilo', 'Pipo', 'muchos cuidado', 12345, 'Calle 1', 'ju@gmail.com', ''),
(6, 'Salome ', 'Mejía Echeverri', 'Júpiter ', '', 3035403, 'Crr48A#64A68', 'gomezsalome312@gmail.com', 'salome1128G'),
(7, 'uan', 'villa', 'megan', 'con delicadeza', 305, 'calle 35', 'juanfervilla0@gmail.com', 'Juanfer01'),
(8, 'Juan', 'villa', 'megan', 'con delicadeza', 305, 'calle 35', 'juanfervilla0@gmail.com', 'Juanfer012'),
(9, 'erwqw', 'eqweqwe', 'qeewe', 'ewrwr', 24324, 'qweqwe', 'abc@abc', '123'),
(10, 'yolo', 'perez', 'megan', 'con delicadeza', 3000, 'calle 35', 'ricky00000@live.se', 'Juanfer012'),
(11, 'juan', 'grt', 'Mia', 'ninguno', 305, 'calle31', 'juanfervilla0@gmail.com', 'Juanfer012'),
(12, 'Juan Camilo', 'Gil Perez', 'praga', 'no peinarle el pelo', 305, 'calle35', 'jcamilogil01@gmail.com', 'Juanfer012'),
(13, 'diego', 'foroz', 'mary', 'nada', 305, 'calle33', 'juanfervilla1012@gmail.com', 'Juanfer012'),
(14, 'milo', 'Gil', 'pipo', 'ninguno', 301, 'calle 70', 'vbn@gmail.com', 'Juanca01'),
(15, 'Pepo', 'PERR', 'carlos', 'nada', 305, 'calle 35', 'juanfervilla0@gmail.com', 'Juanfer012'),
(16, 'jungkook', 'Jeon ', 'Tati', 'nada ', 1, 'p', 'prueba@prueba.com', 'prueba01'),
(17, 'Juan', 'Prueba', 'None', 'ffff', 1, 'calle1', 'ricky00000@live.se', '1020112964a'),
(18, 'accesorios', 'Prueba', 'None', 'ffff', 2, 'calle1', 'Online@online.com', '1020112964a'),
(19, 'Oscar', 'Villa', 'Bruno', 'nada', 30, 'calle3', 'Juanfer@admin.com', '102011');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL COMMENT 'auto incrementing user_id of each user, unique index',
  `firstname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s name, unique',
  `user_password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s password in salted and hashed format',
  `user_email` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s email, unique',
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='user data';

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `user_name`, `user_password_hash`, `user_email`, `date_added`) VALUES
(1, 'admin', 'admin', 'admin', '$2y$10$MPVHzZ2ZPOWmtUUGCq3RXu31OTB.jo7M9LZ7PmPQYmgETSNn19ejO', 'admin@admin.com', '2016-12-19 15:06:00'),
(2, 'Juan Fernando', 'Villa Gonzalez', 'Juanff1012', '$2y$10$7XhRRT2wT9UmLXexRWO1KukemBKDRgShZXdx3yi3d7JE5J2sC.Bse', 'juanfervilla1012@gmail.com', '2021-06-02 16:32:02'),
(3, 'Michel', 'Gomez', 'Michel2816', '$2y$10$rra3v.TKnp7uYGSEL0JCE.jZ.hh86GnjEiPFbPSpm8I8ahFzITfKu', 'prueba@prueba.com', '2021-06-03 01:51:09'),
(4, 'Marcia', 'Mosquera', 'Marcia', '$2y$10$IRZ43uw28lc45t9glRHXt.Hm5bYJ5QLY8bAO4IXqRWN56WMJzEi62', 'LACHINI@lachini.com', '2021-06-03 01:52:11');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`id_historial`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_producto`),
  ADD UNIQUE KEY `codigo_producto` (`codigo_producto`);

--
-- Indices de la tabla `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `historial`
--
ALTER TABLE `historial`
  MODIFY `id_historial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `register`
--
ALTER TABLE `register`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'auto incrementing user_id of each user, unique index', AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `historial`
--
ALTER TABLE `historial`
  ADD CONSTRAINT `fk_id_producto` FOREIGN KEY (`id_producto`) REFERENCES `products` (`id_producto`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
