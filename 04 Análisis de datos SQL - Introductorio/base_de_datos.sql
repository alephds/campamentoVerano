-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-01-2016 a las 06:15:43
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `inventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE IF NOT EXISTS `marca` (
`id_marca` int(11) NOT NULL,
  `nb_marca` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`id_marca`, `nb_marca`) VALUES
(1, 'LA GAITA'),
(2, 'OLIOSOYA'),
(3, 'NATURA'),
(4, 'SOY SABOR'),
(5, 'NESTLE'),
(6, 'FRITO LAY'),
(7, 'AGUA DEL SUR'),
(8, 'GRANOS Y LEGUMBRE'),
(9, 'DE TODO'),
(10, 'ENLATADOS MAXIM'),
(11, 'COMIDAS EXPRES');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `presentacion`
--

CREATE TABLE IF NOT EXISTS `presentacion` (
`id_presentacion` int(11) NOT NULL,
  `nb_presentacion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `presentacion`
--

INSERT INTO `presentacion` (`id_presentacion`, `nb_presentacion`) VALUES
(1, 'KILO'),
(2, 'LIBRA'),
(3, 'CAJA'),
(4, 'BOLSA'),
(5,	'LATA'),
(6,	'BOTELLA'),
(7,	'PAQUETE'); 


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `almacen` (
`id_almacen` int(11) NOT NULL,
  `id_marca` int(11) DEFAULT NULL,
  `id_presentacion` int(11) DEFAULT NULL,
  `id_proveedor` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `codigo` int(11) DEFAULT NULL,
  `precio` double NOT NULL,
  `stock` int(11) NOT NULL,
  `iva` int(11) DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `almacen` (`id_almacen`, `id_marca`, `id_presentacion`, `id_proveedor`, `id_producto`, `codigo`, `precio`, `stock`, `iva`, `fecha_registro`) VALUES
(1, 1, 3, 1, 15, 1210, 88, 100, 16, '2022-05-10'),
(2	,4	,6	,4	,5	,1236 ,15	,50	,18	 ,'2022-05-10'),
(3	,9	,8	,3	,9	,1245 ,150	,20	,15	 ,'2022-05-11'),
(4	,11	,6	,1	,6	,1278 ,25	,150,12	 ,'2022-05-11'),
(5	,3	,7	,1	,4	,1298 ,18	,50	,5	 ,'2022-05-11'),
(6	,6	,4	,3	,1	,1301 ,35	,30	,15	 ,'2022-05-12'),
(7	,7	,7	,3	,4	,1305 ,10	,25	,10	 ,'2022-05-12'),
(8	,8	,4	,1	,2	,1308 ,45	,15	,11	 ,'2022-05-12'),
(9	,3	,6	,4	,6	,1312 ,25	,15	,12	 ,'2022-05-12'),
(10	,4	,4	,3	,7	,1318 ,12	,35	,12	 ,'2022-05-12'),
(11	,9	,3	,4	,17	,1325 ,35	,15	,13	 ,'2022-05-14'),
(12	,9	,4	,2	,11	,1328 ,12	,10	,13	 ,'2022-05-14'),
(13	,9	,3	,2	,11	,1331 ,35	,10	,14	 ,'2022-05-14'),
(14	,5	,6	,2	,5	,1338 ,18.5	,11	,15	 ,'2022-05-14'),
(15	,10	,6	,1	,12	,1345 ,40	,15	,16	 ,'2022-05-15'),
(16	,7	,8	,3	,5	,1385 ,135	,5	,16	 ,'2022-05-15'),
(17	,5	,4	,1	,3	,1398 ,38.8	,25	,15	 ,'2022-05-17'),
(18	,5	,4	,1	,7	,1401 ,17.5	,15	,14	 ,'2022-05-17'),
(19	,5	,8	,1	,10	,1410 ,180.5	,25	,16	 ,'2022-05-17'),
(20	,8	,3	,3	,14	,1415 ,200	,10	,16	 ,'2022-05-17'),
(21	,10	,6	,2	,6	,1418 ,26	,50	,15	 ,'2022-05-19'),
(22	,11	,4	,3	,8	,1420 ,35	,35	,15	 ,'2022-05-19'),
(23	,11	,7	,3	,10	,1425 ,32	,50	,16	 ,'2022-05-19'),
(24	,11	,4	,2	,13	,1435 ,28	,25	,15	 ,'2022-05-19'),
(25	,8	,4	,1	,1	,1444 ,36	,10	,12	 ,'2022-05-19'),
(26	,8	,4	,1	,14	,1448 ,50	,25	,16	 ,'2022-05-19'),
(27	,9	,6	,2	,5	,1449 ,18	,20	,16	 ,'2022-05-20'),
(28	,5	,6	,2	,6	,1452 ,26	,35	,16	 ,'2022-05-20'),
(29	,9	,8	,2	,15	,1458 ,85	,10	,15	 ,'2022-05-20'),
(30	,9	,8	,3	,16	,1453 ,150	,10	,15	 ,'2022-05-20'),
(31	,10	,3	,3	,3	,1457 ,350	,5	,16	 ,'2022-05-20'),
(32	,4	,4	,2	,2	,1462 ,45	,20	,14	 ,'2022-05-21'),
(33	,6	,4	,4	,3	,1463 ,48	,15	,14	 ,'2022-05-21'),
(34	,10	,4	,2	,8	,1469 ,41	,10	,14	 ,'2022-05-21'),
(35	,11	,4	,2	,13	,1471 ,48	,16	,14	 ,'2022-05-21'),
(36	,2	,7	,2	,4	,1485 ,14	,25	,16	 ,'2022-05-22'),
(37	,2	,7	,2	,5	,1495 ,36	,25	,16	 ,'2022-05-22'),
(38	,4	,8	,1	,10	,1499 ,10	,40	,15	 ,'2022-05-22'),
(39	,4	,3	,1	,15	,1510 ,80	,20	,15	 ,'2022-05-22'),
(40	,4	,3	,1	,1	,1512 ,180	,10	,16	 ,'2022-05-22'),
(41	,1	,3	,4	,11	,1518 ,65	,10	,15	 ,'2022-05-22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE IF NOT EXISTS `proveedor` (
`id_proveedor` int(11) NOT NULL,
  `nb_proveedor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `nb_proveedor`) VALUES
(1, 'SR BARATON'),
(2, 'LOS ARRALLANES'),
(3, 'EL DORADO'),
(4, 'RENGIFO Y ASOCIADOS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zona`
--

CREATE TABLE IF NOT EXISTS `producto` (
`id_producto` int(11) NOT NULL,
  `nb_producto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `zona`
--

INSERT INTO `producto` (`id_producto`, `nb_producto`) VALUES
(1,	'arroz'),
(2,	'frijol americano'),
(3,	'frijol vallo'),
(4,	'agua ch'),
(5,	'soda naranja'),
(6,	'atun'),
(7,	'sopa municion'),
(8,	'sopa fideo'),
(9,	'papel ch'),
(10, 'papel g'),
(11, 'cafe'), 
(12, 'lentejas'),
(13, 'sal ch'),
(14, 'azucar g'),
(15, 'galletas'),
(16, 'panques'), 
(17, 'paletas de chocolate');


--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
 ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `presentacion`
--
ALTER TABLE `presentacion`
 ADD PRIMARY KEY (`id_presentacion`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `almacen`
 ADD PRIMARY KEY (`id_almacen`), ADD KEY `idx_marca_idx` (`id_marca`), ADD KEY `idx_presentacion_idx` (`id_presentacion`), ADD KEY `idx_proveedor_idx` (`id_proveedor`), ADD KEY `idx_producto_idx` (`id_producto`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
 ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `zona`
--
ALTER TABLE `producto`
 ADD PRIMARY KEY (`id_producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `presentacion`
--
ALTER TABLE `presentacion`
MODIFY `id_presentacion` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `almacen`
MODIFY `id_almacen` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `zona`
--
ALTER TABLE `producto`
MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `almacen`
ADD CONSTRAINT `idx_marca` FOREIGN KEY (`id_marca`) REFERENCES `marca` (`id_marca`) ON DELETE CASCADE ON UPDATE CASCADE,
#ADD CONSTRAINT `idx_presentacion` FOREIGN KEY (`id_presentacion`) REFERENCES `presentacion` (`id_presentacion`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `idx_proveedor` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `idx_producto` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
