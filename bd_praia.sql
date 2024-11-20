-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-11-2024 a las 16:43:31
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
-- Base de datos: `bd_praia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_cliente`
--

CREATE TABLE `tb_cliente` (
  `id_Cliente` varchar(10) NOT NULL,
  `nombreCliente` varchar(50) NOT NULL,
  `apellidoCliente` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_cliente`
--

INSERT INTO `tb_cliente` (`id_Cliente`, `nombreCliente`, `apellidoCliente`) VALUES
('16684243', 'Janett Janina', 'Castillo Pozo'),
('16685785', 'Pedro Pablo', 'Valverde Purizaca'),
('44404838', 'Junior Eugenio', 'Cachay Maco'),
('71503136', 'Andrea Melisa', 'Castillo Aquino'),
('72112841', 'Alexander Jose Andres', 'Valverde Castillo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_detalle_pedido`
--

CREATE TABLE `tb_detalle_pedido` (
  `idPedido` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_detalle_pedido`
--

INSERT INTO `tb_detalle_pedido` (`idPedido`, `idProducto`, `cantidad`, `subtotal`) VALUES
(25, 137, 1, 60.00),
(25, 139, 1, 43.00),
(25, 157, 3, 18.00),
(26, 150, 2, 90.00),
(26, 157, 1, 6.00),
(27, 150, 2, 90.00),
(27, 156, 1, 6.00),
(28, 150, 2, 90.00),
(28, 156, 1, 6.00),
(29, 138, 1, 450.00),
(30, 150, 2, 90.00),
(30, 157, 1, 6.00),
(31, 138, 1, 450.00),
(32, 137, 2, 120.00),
(32, 157, 2, 12.00),
(33, 150, 2, 90.00),
(33, 156, 2, 12.00),
(38, 137, 1, 40.00),
(40, 143, 1, 38.00),
(40, 139, 1, 43.00),
(40, 142, 1, 42.00),
(40, 165, 1, 15.00),
(40, 167, 1, 11.00),
(40, 164, 1, 11.00),
(40, 173, 1, 35.00),
(40, 149, 1, 49.00),
(40, 170, 1, 15.00),
(40, 159, 1, 4.00),
(40, 182, 1, 13.00),
(40, 162, 1, 9.00),
(40, 137, 1, 40.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_empleado`
--

CREATE TABLE `tb_empleado` (
  `idEmpleado` varchar(8) NOT NULL,
  `idTipoEmpleado` varchar(8) NOT NULL,
  `nombreEmpleado` varchar(50) NOT NULL,
  `apellidoEmpleado` varchar(50) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `estado` int(11) NOT NULL,
  `fecha_registro` date NOT NULL,
  `fecha_edicion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_empleado`
--

INSERT INTO `tb_empleado` (`idEmpleado`, `idTipoEmpleado`, `nombreEmpleado`, `apellidoEmpleado`, `imagen`, `estado`, `fecha_registro`, `fecha_edicion`) VALUES
('72112841', '001', 'Alexander', 'Valverde Castillo', '8f67175592.png', 1, '2023-11-01', '2023-11-13'),
('72112843', '003', 'gyiuasasasa', 'asas', '66a3da60f8.png', 1, '2023-11-13', '0000-00-00'),
('74825859', '001', 'Angie ', 'Carrasco', '1e2d14e222.png', 1, '2023-12-17', '0000-00-00'),
('78491516', '002', 'Juan', 'Perez', '0403698b53.png', 1, '2023-11-06', '2024-11-16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_marca_producto`
--

CREATE TABLE `tb_marca_producto` (
  `idMarca` int(11) NOT NULL,
  `nombreMarca` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_marca_producto`
--

INSERT INTO `tb_marca_producto` (`idMarca`, `nombreMarca`) VALUES
(2, 'Johnnie Walker'),
(11, '--'),
(19, 'Piscos'),
(20, 'Coca-Cola'),
(21, 'Corona'),
(22, 'Cuzqueña'),
(23, 'Pilsen'),
(24, 'Tacama');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_pedido`
--

CREATE TABLE `tb_pedido` (
  `idPedido` int(11) NOT NULL,
  `Correlativo` varchar(8) NOT NULL,
  `idCliente` varchar(8) NOT NULL,
  `Conformidad` varchar(20) NOT NULL,
  `metodoPago` varchar(20) NOT NULL,
  `idEmpleado` varchar(8) NOT NULL,
  `igv` decimal(10,2) NOT NULL,
  `opGravda` decimal(10,2) NOT NULL,
  `Total` decimal(10,2) NOT NULL,
  `montoRecibido` decimal(10,2) NOT NULL,
  `vuelto` decimal(10,2) NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_pedido`
--

INSERT INTO `tb_pedido` (`idPedido`, `Correlativo`, `idCliente`, `Conformidad`, `metodoPago`, `idEmpleado`, `igv`, `opGravda`, `Total`, `montoRecibido`, `vuelto`, `Fecha`, `Hora`) VALUES
(25, 'VNT-25', '16684243', 'Pagada', 'Yape', '78491516', 12.10, 108.90, 121.00, 121.00, 0.00, '2023-11-28', '22:31:48'),
(26, 'VNT-26', '16684243', 'Pagada', 'Efectivo', '78491516', 9.60, 86.40, 96.00, 100.00, 0.00, '2023-11-29', '15:10:09'),
(27, 'VNT-27', '16684243', 'Pagada', 'Efectivo', '78491516', 9.60, 86.40, 96.00, 100.00, 4.00, '2023-11-29', '15:39:27'),
(28, 'VNT-28', '16684243', 'Pagada', 'Efectivo', '78491516', 9.60, 86.40, 96.00, 100.00, 4.00, '2023-11-30', '22:17:29'),
(29, 'VNT-29', '16684243', 'Pagada', 'Yape', '78491516', 45.00, 405.00, 450.00, 450.00, 0.00, '2023-11-30', '22:45:34'),
(30, 'VNT-30', '71503136', 'Pagada', 'Efectivo', '78491516', 9.60, 86.40, 96.00, 96.00, 0.00, '2023-12-04', '20:24:40'),
(31, 'VNT-31', '16684243', 'Pagada', 'Yape', '78491516', 45.00, 405.00, 450.00, 450.00, 0.00, '2023-12-06', '02:41:36'),
(32, 'VNT-32', '72112841', 'Pagada', 'Efectivo', '78491516', 13.20, 118.80, 132.00, 132.00, 0.00, '2023-12-12', '15:59:05'),
(33, 'VNT-33', '16685785', 'Pagada', 'POS', '78491516', 10.20, 91.80, 102.00, 102.00, 0.00, '2023-12-18', '16:00:18'),
(37, 'VNT-34', '72112841', 'Pendiente de envio', '', '78491516', 58.20, 523.80, 582.00, 0.00, 0.00, '2024-11-16', '00:00:00'),
(38, 'VNT-38', '72112841', 'Pagada', 'Efectivo', '78491516', 4.00, 36.00, 40.00, 100.00, 60.00, '2024-11-16', '21:02:11'),
(39, 'VNT-39', '72112841', 'Pendiente de envio', '', '78491516', 0.00, 0.00, 0.00, 0.00, 0.00, '2024-11-16', '00:00:00'),
(40, 'VNT-40', '44404838', 'Pendiente de envio', '', '78491516', 58.50, 266.50, 325.00, 0.00, 0.00, '2024-11-20', '00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_producto`
--

CREATE TABLE `tb_producto` (
  `idProducto` int(11) NOT NULL,
  `idMarca` int(11) DEFAULT NULL,
  `idTipoProducto` int(11) DEFAULT NULL,
  `nombreProducto` varchar(50) NOT NULL,
  `descripciónProducto` varchar(250) NOT NULL,
  `precioUnitario` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `update_adt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_producto`
--

INSERT INTO `tb_producto` (`idProducto`, `idMarca`, `idTipoProducto`, `nombreProducto`, `descripciónProducto`, `precioUnitario`, `stock`, `update_adt`) VALUES
(137, 11, 1, 'Arroz con Pato', 'Arroz con Pato', 40.00, 0, '2024-11-20 00:41:42'),
(138, 2, 6, 'Gold Label', 'Gold Label de Johnnie Walker botella de 450ml.', 450.00, 13, '2024-11-20 00:44:48'),
(139, 11, 1, 'CEVICHE PRAIA', 'Frescos trozos de charella, acompañado con nuestras tradicionales tortitas de choclo, camote glaseado y choclo tierno.', 43.00, 0, '2024-11-20 00:41:42'),
(140, 11, 1, 'CEVICHE MIXTO', 'Una increíble mezcla de pescado y mariscos frescos acompañados con choclo tierno, camote glaseado y tradicionales tortitas de choclo.', 49.00, 0, '2024-11-20 00:41:42'),
(141, 11, 1, 'CEVICHE MERO', 'Frescos trozos de Mero, acompañado con nuestras tradicionales tortitas de choclo, camote glaseado y choclo tierno.', 30.00, 0, '2024-11-20 00:41:42'),
(142, 11, 1, 'CHICHARRÓN MIXTO', 'Deliciosa mistura de mariscos y pescados en salsa especial de la casa, acompañada de yucas fritas crocantes y zarza criolla', 42.00, 0, '2024-11-20 00:41:42'),
(143, 11, 1, 'CHICHARRÓN DE PESCADO', 'Trozos de Pescado marinado en nuestra salsa Praia, acompañado con yucas fritas crocantes y zarza criolla.', 38.00, 0, '2024-11-20 00:41:42'),
(144, 11, 1, 'SALMÓN O ATÚN GRILLADO', 'Salmón o Atún grillado al ojo y romero, acompañado con verduras salteadas y puré de papa.', 57.00, 0, '2024-11-20 00:41:42'),
(145, 11, 1, 'FILETE DE PESCADO GRILLADO', 'Filete de pescado grillado, acompañado con verduras salteadas y puré de papa.', 45.00, 0, '2024-11-20 00:41:42'),
(147, 11, 1, 'PATO A LA CHICLAYANA	', 'Nuestro típico arroz con magret de pato marinado a la chciclayana, acompañada con zarza criolla.', 45.00, 0, '2024-11-20 00:41:42'),
(148, 11, 1, 'FESTIVAL DE TACU TACU', 'Deliciosa mezcla de arroz con frejoles, acompañada con lomo saltado o cabrito.', 46.00, 0, '2024-11-20 00:41:42'),
(149, 11, 1, 'LOMO SALTADO', 'Deliciosos y jugosos trozos de lomo fino acompañado con arroz blanco y papas fritas.', 49.00, 0, '2024-11-20 00:41:42'),
(150, 11, 1, 'CABRITO A LA CHICLAYANA', 'Cabrito deshuesado y marinado, acompañado con arroz y frejoles y arroz.', 45.00, 0, '2024-11-20 00:41:42'),
(151, 19, 7, 'Pisco Sour Tropical', 'Pisco demonio de los Andes acholado, esencia de maracuyá, fresa o aguaymanto, jarabe de goma y clara de huevo.', 22.00, 0, '2024-11-20 00:41:42'),
(152, 19, 7, 'Pisco Sour', 'Pisco demonio de los Andes acholado, limón, jarabe de goma y clara de huevo.', 20.00, 0, '2024-11-20 00:41:42'),
(153, 19, 7, 'Chilacano', 'Pisco demonio de los Andes acholado, zumo de limón, amargo de angostura y evervess.', 19.00, 0, '2024-11-20 00:41:42'),
(154, 19, 7, 'Praia Experience', 'Pisco demonio de los Andes acholado, pisco demonio de los Andes Italia y agua tónica Britwil.', 25.00, 0, '2024-11-20 00:41:42'),
(155, 19, 7, 'Algarrobina Clasica', 'Pisco demonio de los Andes acholado, leche evaporada, licor de cacao y algarrobina.', 20.00, 0, '2024-11-20 00:41:42'),
(156, 20, 3, 'Inka Kola 500 ml', 'Bebida gasificada saborizada sin calorías.', 6.00, 9, '2024-11-20 00:41:42'),
(157, 20, 3, 'Coca-Cola 500 ml', 'Bebida gasificada saborizada sin calorías.', 6.00, 28, '2024-11-20 00:41:42'),
(158, 20, 3, 'Coca-Cola vidrio 296 ml', 'Bebida gasificada saborizada sin calorías.', 4.00, 40, '2024-11-20 00:41:42'),
(159, 20, 3, 'Inka Kola vidrio 296 ml', 'Bebida gasificada saborizada sin calorías.', 4.00, 51, '2024-11-20 00:41:42'),
(160, 20, 3, 'Fanta Vidrio 296 ml', 'Bebida gasificada saborizada sin calorías.', 4.00, 20, '2024-11-20 00:41:42'),
(161, 20, 3, 'Agua San Luis 500 ml', 'Agua purificada.', 5.00, 60, '2024-11-20 00:41:42'),
(162, 11, 3, 'Maracuya', '', 9.00, 39, '2024-11-20 00:41:42'),
(163, 11, 3, 'Limonada', '', 9.00, 19, '2024-11-20 00:41:42'),
(164, 11, 3, 'Hierba Luisa', '', 11.00, 19, '2024-11-20 00:41:42'),
(165, 11, 3, 'Frozen', 'Limón con granadina, fresa, maracuya.', 15.00, 18, '2024-11-20 00:41:42'),
(166, 11, 3, 'Fresa', '', 10.00, 20, '2024-11-20 00:41:42'),
(167, 11, 3, 'Aguaymanto', '', 11.00, 19, '2024-11-20 00:41:42'),
(168, 11, 3, 'Praia Ice Tea', '', 20.00, 20, '2024-11-20 00:41:42'),
(169, 11, 3, 'Ice Tea de Limón', 'Té helado, zumo de limón y evervess.', 10.00, 19, '2024-11-20 00:41:42'),
(170, 11, 3, 'Ice Tea Tropical', 'Té helado, esencia de fresa o maracuya y evervess.', 15.00, 19, '2024-11-20 00:41:42'),
(171, 11, 2, 'Sol Praia', 'Clásica papa a la huancaína presentada en tres delicadas piezas bañadas en salsa a base de ají amarillo con un toque sutil de picante.', 18.00, 0, '2024-11-20 00:41:42'),
(172, 11, 2, 'Causa Acevichada', 'Delicioso timbal de papa amarilla prensada, rellena de láminas de palta, cubierta de nuestro tradicional ceviche de pescado en salsa de pulpo de ají amarillo.', 30.00, 0, '2024-11-20 00:41:42'),
(173, 11, 2, 'Pulpo al Olivo', 'Trozos de pulpo marinado en salsa de aceitunas acompañados de galletas soda y un dedito de yuca crocante.', 35.00, 0, '2024-11-20 00:41:42'),
(174, 11, 2, 'Tortitas acevichadas Praia', 'Mezcla de nuestro maíz molido y frito con una textura crocante y sabrosa, acompañada con ceviche a base de ají amarillo.', 20.00, 0, '2024-11-20 00:41:42'),
(175, 11, 2, 'Causa de pulpo al Olivo', 'Delicioso timbal de papa amarilla prensada, rellena de láminas de palta, cubierta con pulpo al olivo.', 35.00, 0, '2024-11-20 00:41:42'),
(176, 21, 6, 'Corojito', '', 25.00, 12, '2024-11-20 00:41:42'),
(177, 21, 6, 'Corona Sunrise', '', 25.00, 18, '2024-11-20 00:41:42'),
(178, 21, 6, 'Corona Sunset', '', 25.00, 12, '2024-11-20 00:41:42'),
(179, 21, 6, 'Corona Tropical', 'Lima & Limón / limón tropical / Limón y frutos rojos.', 12.00, 18, '2024-11-20 00:41:42'),
(180, 21, 6, 'Bucket Corona Tropical', '', 50.00, 12, '2024-11-20 00:41:42'),
(181, 22, 6, 'Cuzqueña Negra', '', 13.00, 30, '2024-11-20 00:41:42'),
(182, 22, 6, 'Cuzqueña Trigo', '', 13.00, 29, '2024-11-20 00:41:42'),
(183, 22, 6, 'Cuzqueña Dorada', '', 11.00, 23, '2024-11-20 00:41:42'),
(184, 11, 6, 'Cuzqueña Doble Malta', '', 11.00, 29, '2024-11-20 00:41:42'),
(185, 23, 6, 'Stella Artois', '', 13.00, 28, '2024-11-20 00:41:42'),
(186, 23, 6, 'Pilsen ', '', 10.00, 30, '2024-11-20 00:41:42'),
(187, 24, 6, 'Tacama Doña Ana', 'Botella de 750ml', 180.00, 50, '2024-11-20 00:41:42'),
(188, 24, 6, 'Tacama Rosa Salvaje', 'Botella de 750ml.', 100.00, 50, '2024-11-20 00:41:42'),
(190, 11, 7, 'dsd', 'dsdsds', 11.00, 0, '2024-11-20 00:41:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_tipo_empleado`
--

CREATE TABLE `tb_tipo_empleado` (
  `idTipoEmpleado` varchar(8) NOT NULL,
  `nombreTipoEmpleado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_tipo_empleado`
--

INSERT INTO `tb_tipo_empleado` (`idTipoEmpleado`, `nombreTipoEmpleado`) VALUES
('001', 'Administrador'),
('002', 'Mozo'),
('003', 'Cajero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_tipo_producto`
--

CREATE TABLE `tb_tipo_producto` (
  `idTipo_Producto` int(11) NOT NULL,
  `nombre_tipoProducto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_tipo_producto`
--

INSERT INTO `tb_tipo_producto` (`idTipo_Producto`, `nombre_tipoProducto`) VALUES
(1, 'Platos de Fondo'),
(2, 'Entrada'),
(3, 'Bebidas'),
(4, 'Bebidas con Alcohol'),
(5, 'Desayuno'),
(6, 'Botellas de Licor'),
(7, 'Tragos Cortos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_usuario`
--

CREATE TABLE `tb_usuario` (
  `Usuario` varchar(8) NOT NULL,
  `Contraseña` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_usuario`
--

INSERT INTO `tb_usuario` (`Usuario`, `Contraseña`) VALUES
('72112841', 'eb3a2fbfd2b54a958fdeeff1aeb683d8'),
('72112843', 'eb3a2fbfd2b54a958fdeeff1aeb683d8'),
('74825859', 'c968d6bd13d29005d8c114eddc7f154a'),
('78491516', '86349ceaa12c12ca45837b829df203dc');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_cliente`
--
ALTER TABLE `tb_cliente`
  ADD PRIMARY KEY (`id_Cliente`);

--
-- Indices de la tabla `tb_detalle_pedido`
--
ALTER TABLE `tb_detalle_pedido`
  ADD KEY `Pedido_Venta` (`idPedido`),
  ADD KEY `Pedido_Prodcuto` (`idProducto`);

--
-- Indices de la tabla `tb_empleado`
--
ALTER TABLE `tb_empleado`
  ADD PRIMARY KEY (`idEmpleado`),
  ADD KEY `Tipo_Empleado` (`idTipoEmpleado`);

--
-- Indices de la tabla `tb_marca_producto`
--
ALTER TABLE `tb_marca_producto`
  ADD PRIMARY KEY (`idMarca`);

--
-- Indices de la tabla `tb_pedido`
--
ALTER TABLE `tb_pedido`
  ADD PRIMARY KEY (`idPedido`),
  ADD KEY `Pedido_Cliente` (`idCliente`),
  ADD KEY `Pedido_Empleado` (`idEmpleado`);

--
-- Indices de la tabla `tb_producto`
--
ALTER TABLE `tb_producto`
  ADD PRIMARY KEY (`idProducto`),
  ADD KEY `Marca_Producto` (`idMarca`),
  ADD KEY `Tipo_Producto` (`idTipoProducto`);

--
-- Indices de la tabla `tb_tipo_empleado`
--
ALTER TABLE `tb_tipo_empleado`
  ADD PRIMARY KEY (`idTipoEmpleado`);

--
-- Indices de la tabla `tb_tipo_producto`
--
ALTER TABLE `tb_tipo_producto`
  ADD PRIMARY KEY (`idTipo_Producto`);

--
-- Indices de la tabla `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD KEY `User` (`Usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tb_marca_producto`
--
ALTER TABLE `tb_marca_producto`
  MODIFY `idMarca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `tb_pedido`
--
ALTER TABLE `tb_pedido`
  MODIFY `idPedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `tb_producto`
--
ALTER TABLE `tb_producto`
  MODIFY `idProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT de la tabla `tb_tipo_producto`
--
ALTER TABLE `tb_tipo_producto`
  MODIFY `idTipo_Producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_detalle_pedido`
--
ALTER TABLE `tb_detalle_pedido`
  ADD CONSTRAINT `Pedido_Prodcuto` FOREIGN KEY (`idProducto`) REFERENCES `tb_producto` (`idProducto`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Pedido_Venta` FOREIGN KEY (`idPedido`) REFERENCES `tb_pedido` (`idPedido`);

--
-- Filtros para la tabla `tb_empleado`
--
ALTER TABLE `tb_empleado`
  ADD CONSTRAINT `Tipo_Empleado` FOREIGN KEY (`idTipoEmpleado`) REFERENCES `tb_tipo_empleado` (`idTipoEmpleado`);

--
-- Filtros para la tabla `tb_pedido`
--
ALTER TABLE `tb_pedido`
  ADD CONSTRAINT `Pedido_Cliente` FOREIGN KEY (`idCliente`) REFERENCES `tb_cliente` (`id_Cliente`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Pedido_Empleado` FOREIGN KEY (`idEmpleado`) REFERENCES `tb_empleado` (`idEmpleado`);

--
-- Filtros para la tabla `tb_producto`
--
ALTER TABLE `tb_producto`
  ADD CONSTRAINT `Marca_Producto` FOREIGN KEY (`idMarca`) REFERENCES `tb_marca_producto` (`idMarca`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Tipo_Producto` FOREIGN KEY (`idTipoProducto`) REFERENCES `tb_tipo_producto` (`idTipo_Producto`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD CONSTRAINT `User` FOREIGN KEY (`Usuario`) REFERENCES `tb_empleado` (`idEmpleado`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
