-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 04-04-2019 a las 06:14:08
-- Versión del servidor: 10.1.35-MariaDB
-- Versión de PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `EasyCheck`
--
CREATE DATABASE IF NOT EXISTS `EasyCheck` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `EasyCheck`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auditorias`
--

CREATE TABLE `auditorias` (
  `id_auditoria` int(11) NOT NULL,
  `id_tabla` int(11) DEFAULT NULL,
  `id_nombreLlave` int(11) DEFAULT NULL,
  `id_valorLlave` int(11) DEFAULT NULL,
  `auditoria_resumenTransaccion` varchar(45) DEFAULT NULL,
  `auditoria_fechaOperacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id_compra` int(11) NOT NULL,
  `compra_descripcion` varchar(45) DEFAULT NULL,
  `compra_pagada` int(11) DEFAULT NULL,
  `compra_fechaPago` datetime DEFAULT NULL,
  `compra_valorTotal` float DEFAULT NULL,
  `transaccionCabecera_id_transaccionCabecera` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturaVentas`
--

CREATE TABLE `facturaVentas` (
  `id_facturaVenta` int(11) NOT NULL,
  `facturaVenta_pagada` int(11) DEFAULT NULL,
  `facturaVenta_fechaPago` datetime DEFAULT NULL,
  `facturaVenta_valorTotal` float DEFAULT NULL,
  `transaccionCabecera_id_transaccionCabecera` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listaPrecios`
--

CREATE TABLE `listaPrecios` (
  `id_listaPrecio` int(11) NOT NULL,
  `listaPrecio_precioVenta` float DEFAULT NULL,
  `listaPrecio_fechaInicio` date DEFAULT NULL,
  `listaPrecio_fechaFinal` date NOT NULL,
  `listaPrecio_IVA` float DEFAULT NULL,
  `listaPrecio_estado` int(11) DEFAULT '1',
  `producto_id_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `listaPrecios`
--

INSERT INTO `listaPrecios` (`id_listaPrecio`, `listaPrecio_precioVenta`, `listaPrecio_fechaInicio`, `listaPrecio_fechaFinal`, `listaPrecio_IVA`, `listaPrecio_estado`, `producto_id_producto`) VALUES
(1, 1000, '0000-00-00', '0000-00-00', 160, 1, 1),
(2, 3000, '0000-00-00', '0000-00-00', 479, 1, 2),
(3, 6000, '0000-00-00', '0000-00-00', 958, 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `naturalezas`
--

CREATE TABLE `naturalezas` (
  `id_naturaleza` int(11) NOT NULL,
  `naturaleza_descripcion` varchar(45) DEFAULT NULL,
  `naturaleza_afectacion` varchar(45) DEFAULT NULL,
  `naturaleza_estado` varchar(45) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `naturalezas`
--

INSERT INTO `naturalezas` (`id_naturaleza`, `naturaleza_descripcion`, `naturaleza_afectacion`, `naturaleza_estado`) VALUES
(1, 'aumento', 'suma', '1'),
(2, 'disminucion', 'resta', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE `perfiles` (
  `id_perfil` int(11) NOT NULL,
  `perfil_descripcion` varchar(45) DEFAULT NULL,
  `perfil_estado` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `perfiles`
--

INSERT INTO `perfiles` (`id_perfil`, `perfil_descripcion`, `perfil_estado`) VALUES
(1, 'administrador', 1),
(2, 'empleado', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_vista`
--

CREATE TABLE `perfil_vista` (
  `id_perfil_vista` int(11) NOT NULL,
  `perfil_id_perfil` int(11) NOT NULL,
  `vista_id_vista` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `producto_descripcion` varchar(45) DEFAULT NULL,
  `producto_estado` int(11) NOT NULL DEFAULT '1',
  `unidadMedida_id_unidadMedida` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `producto_descripcion`, `producto_estado`, `unidadMedida_id_unidadMedida`) VALUES
(1, 'Salsa de Tomate', 1, 1),
(2, 'Queso Campesino', 1, 2),
(3, 'Queso Doble Crema', 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resumenInventarios`
--

CREATE TABLE `resumenInventarios` (
  `id_resumenInventario` int(11) NOT NULL,
  `resumenInventario_entrada` int(11) DEFAULT NULL,
  `resumenInventario_salida` int(11) DEFAULT NULL,
  `resumenInventario_costoPromedio` float DEFAULT NULL,
  `producto_id_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `terceroDocumentos`
--

CREATE TABLE `terceroDocumentos` (
  `id_terceroDocumento` int(11) NOT NULL,
  `terceroDocumento_descripcion` varchar(45) DEFAULT NULL,
  `terceroDocumento_estado` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `terceroDocumentos`
--

INSERT INTO `terceroDocumentos` (`id_terceroDocumento`, `terceroDocumento_descripcion`, `terceroDocumento_estado`) VALUES
(1, 'NIT', 1),
(2, 'CC', 1),
(3, 'TI', 1),
(4, 'CE', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `terceros`
--

CREATE TABLE `terceros` (
  `id_tercero` int(11) NOT NULL,
  `tercero_numeroDocumento` int(11) NOT NULL,
  `tercero_nombre` varchar(45) DEFAULT NULL,
  `tercero_apellido` varchar(45) DEFAULT NULL,
  `tercero_celular` int(11) DEFAULT NULL,
  `tercero_direccion` varchar(45) DEFAULT NULL,
  `tercero_estado` int(11) DEFAULT '1',
  `tipoTercero_id_tipoTercero` int(11) NOT NULL,
  `terceroDocumento_id_terceroDocumento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `terceros`
--

INSERT INTO `terceros` (`id_tercero`, `tercero_numeroDocumento`, `tercero_nombre`, `tercero_apellido`, `tercero_celular`, `tercero_direccion`, `tercero_estado`, `tipoTercero_id_tipoTercero`, `terceroDocumento_id_terceroDocumento`) VALUES
(1, 800, 'harina la paz', '', 310, 'cra', 1, 2, 2),
(2, 1, 'carlos', 'garzon', 311, 'calle', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoDocumentos`
--

CREATE TABLE `tipoDocumentos` (
  `id_tipoDocumento` int(11) NOT NULL,
  `tipoDocumento_descripcion` varchar(45) DEFAULT NULL,
  `tipoDocumento_estado` int(11) DEFAULT NULL,
  `naturaleza_id_naturaleza` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipoDocumentos`
--

INSERT INTO `tipoDocumentos` (`id_tipoDocumento`, `tipoDocumento_descripcion`, `tipoDocumento_estado`, `naturaleza_id_naturaleza`) VALUES
(1, 'Factura Venta', 1, 2),
(2, 'Factura Compra', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoTerceros`
--

CREATE TABLE `tipoTerceros` (
  `id_tipoTercero` int(11) NOT NULL,
  `tipoTercero_descripcion` varchar(45) DEFAULT NULL,
  `tipoTercero_estado` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipoTerceros`
--

INSERT INTO `tipoTerceros` (`id_tipoTercero`, `tipoTercero_descripcion`, `tipoTercero_estado`) VALUES
(1, 'cliente', 1),
(2, 'proveedor', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transaccionCabeceras`
--

CREATE TABLE `transaccionCabeceras` (
  `id_transaccionCabecera` int(11) NOT NULL,
  `tansaccionCabecera_numeroDocumento` int(11) DEFAULT NULL,
  `transaccionCabecera_fecha` datetime DEFAULT NULL,
  `tercero_id_tercero` int(11) NOT NULL,
  `usuario_id_usuario` int(11) NOT NULL,
  `tipoDocumento_id_tipoDocumento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transaccionDetalles`
--

CREATE TABLE `transaccionDetalles` (
  `id_transaccionDetalle` int(11) NOT NULL,
  `transaccionDetalle_cantidad` int(11) DEFAULT NULL,
  `transaccionDetalle_valor` float DEFAULT NULL,
  `transaccionCabecera_id_transaccionCabecera` int(11) NOT NULL,
  `producto_id_producto` int(11) NOT NULL,
  `usuario_id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidadesMedida`
--

CREATE TABLE `unidadesMedida` (
  `id_unidadMedida` int(11) NOT NULL,
  `unidadMedida_descripcion` varchar(45) DEFAULT NULL,
  `unidadMedida_estado` varchar(45) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `unidadesMedida`
--

INSERT INTO `unidadesMedida` (`id_unidadMedida`, `unidadMedida_descripcion`, `unidadMedida_estado`) VALUES
(1, 'Unidad', '1'),
(2, 'Libra', '1'),
(3, 'Kilo', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `usuario_apellido` varchar(45) NOT NULL,
  `usuario_nombre` varchar(45) NOT NULL,
  `usuario_documento` int(11) NOT NULL,
  `usuario_celular` int(11) DEFAULT NULL,
  `usuario_direccion` varchar(45) DEFAULT NULL,
  `usuario_contrasena` varchar(45) DEFAULT NULL,
  `usuario_estado` int(11) DEFAULT '1',
  `perfil_id_perfil` int(11) NOT NULL DEFAULT '1',
  `terceroDocumento_id_terceroDocumento` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `usuario_apellido`, `usuario_nombre`, `usuario_documento`, `usuario_celular`, `usuario_direccion`, `usuario_contrasena`, `usuario_estado`, `perfil_id_perfil`, `terceroDocumento_id_terceroDocumento`) VALUES
(1, 'Imul', 'Isaac', 1, 310, 'cra 10b este # 66-17 sur', '1234', 1, 1, 4),
(2, 'Rueda', 'Daniel', 80902383, 311, 'cra 10b este # 66-17 sur', '1234', 1, 2, 2),
(3, 'ru', 'daniel', 10, 1110, 'dsafdas', '1234', 1, 1, 1),
(4, 'prueba', 'prueba', 123, 12345, '', '12345', 1, 1, 1),
(5, 'ru', 'ru', 12, 12, '', '123', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vistas`
--

CREATE TABLE `vistas` (
  `id_vista` int(11) NOT NULL,
  `vista_descripcion` varchar(45) DEFAULT NULL,
  `vista_dependencia` varchar(45) DEFAULT NULL,
  `vista_estado` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auditorias`
--
ALTER TABLE `auditorias`
  ADD PRIMARY KEY (`id_auditoria`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id_compra`),
  ADD KEY `fk_compra_transaccionCabecera1_idx` (`transaccionCabecera_id_transaccionCabecera`);

--
-- Indices de la tabla `facturaVentas`
--
ALTER TABLE `facturaVentas`
  ADD PRIMARY KEY (`id_facturaVenta`),
  ADD KEY `fk_facturaVenta_transaccionCabecera1_idx` (`transaccionCabecera_id_transaccionCabecera`);

--
-- Indices de la tabla `listaPrecios`
--
ALTER TABLE `listaPrecios`
  ADD PRIMARY KEY (`id_listaPrecio`,`listaPrecio_fechaFinal`),
  ADD KEY `fk_listaPrecio_producto1_idx` (`producto_id_producto`);

--
-- Indices de la tabla `naturalezas`
--
ALTER TABLE `naturalezas`
  ADD PRIMARY KEY (`id_naturaleza`);

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD PRIMARY KEY (`id_perfil`);

--
-- Indices de la tabla `perfil_vista`
--
ALTER TABLE `perfil_vista`
  ADD PRIMARY KEY (`id_perfil_vista`),
  ADD KEY `fk_perfil_has_vista_vista1_idx` (`vista_id_vista`),
  ADD KEY `fk_perfil_has_vista_perfil1_idx` (`perfil_id_perfil`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `fk_producto_unidadMedida1_idx` (`unidadMedida_id_unidadMedida`);

--
-- Indices de la tabla `resumenInventarios`
--
ALTER TABLE `resumenInventarios`
  ADD PRIMARY KEY (`id_resumenInventario`),
  ADD KEY `fk_resumenInventario_producto1_idx` (`producto_id_producto`);

--
-- Indices de la tabla `terceroDocumentos`
--
ALTER TABLE `terceroDocumentos`
  ADD PRIMARY KEY (`id_terceroDocumento`);

--
-- Indices de la tabla `terceros`
--
ALTER TABLE `terceros`
  ADD PRIMARY KEY (`id_tercero`),
  ADD KEY `fk_tercero_tipoTercero1_idx` (`tipoTercero_id_tipoTercero`),
  ADD KEY `fk_tercero_terceroDocumento1_idx` (`terceroDocumento_id_terceroDocumento`);

--
-- Indices de la tabla `tipoDocumentos`
--
ALTER TABLE `tipoDocumentos`
  ADD PRIMARY KEY (`id_tipoDocumento`),
  ADD KEY `fk_tipoDocumento_naturaleza1_idx` (`naturaleza_id_naturaleza`);

--
-- Indices de la tabla `tipoTerceros`
--
ALTER TABLE `tipoTerceros`
  ADD PRIMARY KEY (`id_tipoTercero`);

--
-- Indices de la tabla `transaccionCabeceras`
--
ALTER TABLE `transaccionCabeceras`
  ADD PRIMARY KEY (`id_transaccionCabecera`),
  ADD KEY `fk_transaccionCabecera_tercero1_idx` (`tercero_id_tercero`),
  ADD KEY `fk_transaccionCabecera_usuario1_idx` (`usuario_id_usuario`),
  ADD KEY `fk_transaccionCabecera_tipoDocumento1_idx` (`tipoDocumento_id_tipoDocumento`);

--
-- Indices de la tabla `transaccionDetalles`
--
ALTER TABLE `transaccionDetalles`
  ADD PRIMARY KEY (`id_transaccionDetalle`),
  ADD KEY `fk_transaccionDetalle_transaccionCabecera1_idx` (`transaccionCabecera_id_transaccionCabecera`),
  ADD KEY `fk_transaccionDetalle_producto1_idx` (`producto_id_producto`),
  ADD KEY `fk_transaccionDetalle_usuario1_idx` (`usuario_id_usuario`);

--
-- Indices de la tabla `unidadesMedida`
--
ALTER TABLE `unidadesMedida`
  ADD PRIMARY KEY (`id_unidadMedida`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `fk_usuario_perfil_idx` (`perfil_id_perfil`),
  ADD KEY `fk_usuario_terceroDocumento1_idx` (`terceroDocumento_id_terceroDocumento`);

--
-- Indices de la tabla `vistas`
--
ALTER TABLE `vistas`
  ADD PRIMARY KEY (`id_vista`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auditorias`
--
ALTER TABLE `auditorias`
  MODIFY `id_auditoria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `facturaVentas`
--
ALTER TABLE `facturaVentas`
  MODIFY `id_facturaVenta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `listaPrecios`
--
ALTER TABLE `listaPrecios`
  MODIFY `id_listaPrecio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `naturalezas`
--
ALTER TABLE `naturalezas`
  MODIFY `id_naturaleza` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  MODIFY `id_perfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `perfil_vista`
--
ALTER TABLE `perfil_vista`
  MODIFY `id_perfil_vista` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `resumenInventarios`
--
ALTER TABLE `resumenInventarios`
  MODIFY `id_resumenInventario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `terceroDocumentos`
--
ALTER TABLE `terceroDocumentos`
  MODIFY `id_terceroDocumento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `terceros`
--
ALTER TABLE `terceros`
  MODIFY `id_tercero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipoDocumentos`
--
ALTER TABLE `tipoDocumentos`
  MODIFY `id_tipoDocumento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipoTerceros`
--
ALTER TABLE `tipoTerceros`
  MODIFY `id_tipoTercero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `transaccionCabeceras`
--
ALTER TABLE `transaccionCabeceras`
  MODIFY `id_transaccionCabecera` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `transaccionDetalles`
--
ALTER TABLE `transaccionDetalles`
  MODIFY `id_transaccionDetalle` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `unidadesMedida`
--
ALTER TABLE `unidadesMedida`
  MODIFY `id_unidadMedida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `vistas`
--
ALTER TABLE `vistas`
  MODIFY `id_vista` int(11) NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `easycheck1`
--
CREATE DATABASE IF NOT EXISTS `easycheck1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `easycheck1`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_factura`
--

CREATE TABLE `detalle_factura` (
  `num_factura` int(6) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `cog_producto` int(15) DEFAULT NULL,
  `nom_producto` varchar(20) DEFAULT NULL,
  `unidad_medida` varchar(20) DEFAULT NULL,
  `cantidad` int(3) DEFAULT NULL,
  `valor_venta` double DEFAULT NULL,
  `valor_total` double DEFAULT NULL,
  `valor_bruto` double DEFAULT NULL,
  `iva` double DEFAULT NULL,
  `valor_neto` double DEFAULT NULL,
  `usuarios` int(15) DEFAULT NULL,
  `nombres` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `cog_producto` int(15) NOT NULL,
  `nom_producto` varchar(20) DEFAULT NULL,
  `unidad_medida` varchar(10) DEFAULT NULL,
  `cantidad` int(4) DEFAULT NULL,
  `valor_entrada` double DEFAULT NULL,
  `iva` int(2) DEFAULT NULL,
  `porcentaje_ganacia` int(3) DEFAULT NULL,
  `valor_venta` double DEFAULT NULL,
  `nit` int(20) DEFAULT NULL,
  `proveedor` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`cog_producto`, `nom_producto`, `unidad_medida`, `cantidad`, `valor_entrada`, `iva`, `porcentaje_ganacia`, `valor_venta`, `nit`, `proveedor`) VALUES
(1, 'dsads', 'sadsad', 1, 1000, 19, 30, 1357, NULL, NULL),
(2, 'dsads', 'sadsad', 2, 2000, 19, 30, 2714, NULL, NULL),
(4, 'dsads', 'sadsad', 1000, 1000, 19, 40, 1476, NULL, NULL),
(5, 'daniel', 'sadsad', 1000, 2000, 19, 30, 2714, NULL, NULL),
(6, 'daniel', 'rueda', 1000, 1000000, 19, 30, 1357000, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `nit` int(20) NOT NULL,
  `proveedor` varchar(30) NOT NULL,
  `direccion` varchar(20) DEFAULT NULL,
  `telefono1` int(15) DEFAULT NULL,
  `telefono2` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(15) NOT NULL,
  `password` varchar(10) NOT NULL,
  `nombres` varchar(20) DEFAULT NULL,
  `cargo` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `password`, `nombres`, `cargo`) VALUES
(1, '', 'sdfdghgj', 'sdfvgb'),
(2, '1234', 'jenny', 'admin'),
(3, '1224', 'DANIEL', 'YO'),
(5, '1234', 'aaaaaa', 'iwdjkl'),
(80902383, '1234', 'Daniel Rueda', 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `num_factura` int(6) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `valor_bruto` double DEFAULT NULL,
  `iva` double NOT NULL,
  `valor_venta` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD KEY `cog_producto` (`cog_producto`),
  ADD KEY `num_factura` (`num_factura`),
  ADD KEY `usuarios` (`usuarios`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`cog_producto`),
  ADD KEY `nit` (`nit`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`nit`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`num_factura`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `num_factura` int(6) NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Volcado de datos para la tabla `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"EasyCheck\",\"table\":\"usuarios\"},{\"db\":\"EasyCheck\",\"table\":\"listaPrecios\"},{\"db\":\"EasyCheck\",\"table\":\"compras\"},{\"db\":\"Cheeses Club\",\"table\":\"proveedor\"},{\"db\":\"easycheck\",\"table\":\"inventario\"},{\"db\":\"easycheck\",\"table\":\"usuarios\"},{\"db\":\"easycheck\",\"table\":\"venta\"},{\"db\":\"easycheck\",\"table\":\"detalle_factura\"},{\"db\":\"easycheck\",\"table\":\"proveedores\"},{\"db\":\"dsrueda\",\"table\":\"usuarios\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('easycheck1', 'detalle_factura', 'nom_producto'),
('easycheck1', 'inventario', 'nom_producto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-04-04 04:13:43', '{\"lang\":\"es\",\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
