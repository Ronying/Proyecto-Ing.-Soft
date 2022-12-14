
--
-- Estructura de tabla para la tabla `cliente`
--


CREATE TABLE IF NOT EXISTS `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `celular` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telefono` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `region` varchar(50) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `cod_postal` varchar(50) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `calle` varchar(50) NOT NULL,
  `avenida` varchar(50) NOT NULL,
  `num_casa` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `fecha_adicion` datetime NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `codigo_producto` (`nombre_cliente`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre_cliente`, `celular`, `telefono`, `email`, `region`, `pais`, `cod_postal`, `ciudad`, `calle`, `avenida`, `num_casa`, `descripcion`, `fecha_adicion`) VALUES
(4, 'shdfgdfg', 'hkhjjgj', 'ghjgjgj', 'ghjg@jdfhksj.com', '1', 'gdfgfhfhfgh', 'dsfgdfg', 'hgjkhk', 'hkhjk', 'hjkhjk', 'hjkhjk', 'hjkghk', '2021-08-09 14:15:17'),
(10, 'jennifer', 'sfdsf', 'sdfsdf', 'uu@uu.uu', '1', 'dfgdf', 'gdfgdfg', 'dfg', 'dfgdfg', 'dfgdfg', 'dfg', 'dfgdfg', '2021-08-09 16:30:08'),
(11, 'kkkkkkk', 'kkkkkkkk', 'kkkkkkkk', 'kk@hfdgh.com', '1', 'gggggg', 'gggggggg', 'gggggggggg', 'gggggggggg', 'ggggggggg', 'gggggggggg', 'ggggggggg', '2021-08-09 16:47:04'),
(12, 'hfgdhgh', 'fghfdgh', 'fhgfgh', 'fgh@hjgerf.com', '1', 'dfgdfg', 'dfgdg', 'dfgdfg', 'dfgfd', 'gdfgdfg', 'dfgd', 'dfg', '2021-08-09 18:19:08'),
(14, 'samanta', 'sadfs', 'sdfsdf', 'sdfsdf@jsdj.com', '1', 'sadfsdf', 'asfdsf', 'sdfsdfa', 'sadfsdf', 'sfdf', 'sfdsdf', 'sdfsdf', '2021-08-09 21:05:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--


CREATE TABLE IF NOT EXISTS `detalle_pedido` (
  `id_detalle` int NOT NULL AUTO_INCREMENT,
  `numero_factura` int NOT NULL,
  `id_producto` int NOT NULL,
  `cantidad` int NOT NULL,
  `precio_venta` double NOT NULL,
  PRIMARY KEY (`id_detalle`),
  KEY `numero_cotizacion` (`numero_factura`,`id_producto`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`id_detalle`, `numero_factura`, `id_producto`, `cantidad`, `precio_venta`) VALUES
(1, 1, 2, 1, 899),
(2, 1, 1, 1, 200),
(3, 2, 1, 1, 200),
(4, 3, 1, 1, 200),
(5, 3, 2, 1, 899),
(6, 4, 2, 1, 899),
(7, 5, 2, 1, 899),
(8, 6, 2, 1, 899),
(9, 7, 2, 1, 899),
(10, 8, 1, 1, 200),
(11, 8, 2, 1, 899),
(12, 9, 1, 1, 200),
(13, 9, 2, 1, 899),
(14, 9, 3, 1, 54654);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--


CREATE TABLE IF NOT EXISTS `pedidos` (
  `id_factura` int NOT NULL AUTO_INCREMENT,
  `numero_factura` int NOT NULL,
  `fecha_factura` datetime NOT NULL,
  `id_cliente` int NOT NULL,
  `id_vendedor` int NOT NULL,
  `condiciones` varchar(30) NOT NULL,
  `total_venta` varchar(20) NOT NULL,
  `estado_factura` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_factura`),
  UNIQUE KEY `numero_cotizacion` (`numero_factura`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--


CREATE TABLE IF NOT EXISTS `producto` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `codigo_producto` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nombre` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `marca` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `material` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `talla` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `cantidad` double NOT NULL,
  `existencia` tinyint NOT NULL,
  `fecha_adicion` datetime NOT NULL,
  `precio_compra` double NOT NULL,
  `precio_venta` double NOT NULL,
  `promocion` double DEFAULT NULL,
  `descuento` double DEFAULT NULL,
  PRIMARY KEY (`id_producto`),
  UNIQUE KEY `codigo_producto` (`codigo_producto`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `codigo_producto`, `nombre`, `marca`, `material`, `talla`, `categoria`, `cantidad`, `existencia`, `fecha_adicion`, `precio_compra`, `precio_venta`, `promocion`, `descuento`) VALUES
(15, 'bcv', 'dfgdfg', 'dfgdfg', 'dfgfdg', 'dfgfdg', '1', 1, 1, '2021-08-09 22:59:33', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmp`
--


CREATE TABLE IF NOT EXISTS `tmp` (
  `id_tmp` int NOT NULL AUTO_INCREMENT,
  `id_producto` int NOT NULL,
  `cantidad_tmp` int NOT NULL,
  `precio_tmp` double(8,2) DEFAULT NULL,
  `session_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_tmp`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tmp`
--

INSERT INTO `tmp` (`id_tmp`, `id_producto`, `cantidad_tmp`, `precio_tmp`, `session_id`) VALUES
(55, 11, 1, 7.00, 'pc05t4gid3nispmvkbv67dof3e'),
(54, 12, 1, 1.00, 'pc05t4gid3nispmvkbv67dof3e'),
(53, 13, 1, 34566.00, 'pc05t4gid3nispmvkbv67dof3e'),
(52, 14, 1, 1.00, 'pc05t4gid3nispmvkbv67dof3e'),
(51, 11, 1, 7.00, 'pc05t4gid3nispmvkbv67dof3e'),
(50, 12, 1, 1.00, 'pc05t4gid3nispmvkbv67dof3e'),
(45, 13, 1, 34566.00, 'pc05t4gid3nispmvkbv67dof3e'),
(46, 11, 1, 7.00, 'pc05t4gid3nispmvkbv67dof3e'),
(47, 14, 1, 1.00, 'pc05t4gid3nispmvkbv67dof3e'),
(48, 14, 1, 1.00, '3hduao78n43fflau3cdhmm9g4e'),
(49, 13, 1, 34566.00, 'pc05t4gid3nispmvkbv67dof3e'),
(56, 14, 1, 1.00, 'pc05t4gid3nispmvkbv67dof3e');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--


CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int NOT NULL AUTO_INCREMENT COMMENT 'auto incrementing user_id of each user, unique index',
  `firstname` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s name, unique',
  `user_password_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s password in salted and hashed format',
  `user_email` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s email, unique',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='user data';

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `user_name`, `user_password_hash`, `user_email`, `date_added`) VALUES
(1, 'Rony', 'Castejon', 'Admin', '$2y$10$MPVHzZ2ZPOWmtUUGCq3RXu31OTB.jo7M9LZ7PmPQYmgETSNn19ejO', 'admin@admin.com', '2016-05-21 15:06:00'),
(3, 'Cristian', 'Valdes', 'JefeCjd', '$2y$10$kzU6Aogly5UclAd1oyH7IubluBCRtVfrVLUsgybaMKX5LF1/ylIPS', 'brayan.burgos@unah.hn', '2021-08-08 04:37:14'),
(4, 'Elminson', 'dfgdfg', 'dgdfg', '$2y$10$Jf9LJVrgBP7AfinFIMKpB.MGioeSUdVVwWReUsvMo97tMsHL29NTW', 'dfgdfgd@gmail.com', '2021-08-08 04:39:18');
COMMIT;

