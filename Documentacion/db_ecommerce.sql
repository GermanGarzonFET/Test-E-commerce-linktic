-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-09-2024 a las 02:17:12
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_ecommerce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedidos`
--

CREATE TABLE `detalle_pedidos` (
  `id` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio_unidad` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `orden_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_pedidos`
--

INSERT INTO `detalle_pedidos` (`id`, `cantidad`, `precio_unidad`, `subtotal`, `orden_id`, `producto_id`) VALUES
(3, 4, 350.99, 1403.96, 3, 1),
(4, 5, 350.99, 1754.95, 4, 1),
(5, 10, 350.99, 3509.9, 4, 2),
(6, 1, 350.99, 350.99, 5, 1),
(7, 1, 350.99, 350.99, 6, 1),
(8, 4, 350.99, 1403.96, 6, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenes`
--

CREATE TABLE `ordenes` (
  `id` int(11) NOT NULL,
  `fecha` datetime(6) DEFAULT NULL,
  `total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ordenes`
--

INSERT INTO `ordenes` (`id`, `fecha`, `total`) VALUES
(3, '2024-09-11 17:14:38.000000', 1403.96),
(4, '2024-09-11 18:05:13.000000', 5264.85),
(5, '2024-09-11 19:09:36.000000', 350.99),
(6, '2024-09-11 19:13:48.000000', 1754.95);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `descripcion`, `imagen`, `nombre`, `precio`, `stock`) VALUES
(1, 'Cámara de alta resolución con lente intercambiable.', 'https://example.com/imagen1.jpg', 'Cámara Digital eeedite', 350.99, 6),
(2, 'Cámara de alta resolución con lente intercambiable.', 'https://example.com/imagen1.jpg', 'Cámara Digital', 350.99, 1),
(3, 'Auriculares inalámbricos con cancelación de ruido.', 'https://example.com/imagen2.jpg', 'Auriculares Bluetooth', 79.99, 25),
(4, 'Laptop ligera y potente con pantalla Full HD.', 'https://example.com/imagen3.jpg', 'Laptop Ultrabook', 1200.5, 10),
(5, 'Mouse ergonómico inalámbrico con batería recargable.', 'https://example.com/imagen10.jpg', 'Mouse Inalámbrico', 49.99, 60),
(6, 'Consola de última generación con soporte para juegos 4K.', 'https://example.com/imagen9.jpg', 'Consola de Videojuegos', 499.99, 8),
(7, 'Monitor de alta resolución 4K con tecnología IPS.', 'https://example.com/imagen8.jpg', 'Monitor 4K', 599.99, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `firstname`, `lastname`, `password`, `username`) VALUES
(1, 'correo@correo.com', 'iva', 'rojas', '$2a$10$lz6hifQqhY8nxHWoXSTsLu3UZkVC/xsytVyTHEZ9.5Z2VqOdZvxJ.', 'user2024'),
(2, 'correo@correo.com', 'iva', 'rojas', '$2a$10$.P1rdlSGG/9O4peoZ4a3recEnDLOBBHEmrtGfWplvtSeT2ydHSfuS', 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9mu1l6orq5pk0ghj30kiyayl3` (`orden_id`),
  ADD KEY `FKd977lyb5oo3v1j0reijul4byi` (`producto_id`);

--
-- Indices de la tabla `ordenes`
--
ALTER TABLE `ordenes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `ordenes`
--
ALTER TABLE `ordenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD CONSTRAINT `FK9mu1l6orq5pk0ghj30kiyayl3` FOREIGN KEY (`orden_id`) REFERENCES `ordenes` (`id`),
  ADD CONSTRAINT `FKd977lyb5oo3v1j0reijul4byi` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
