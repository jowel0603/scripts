-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-07-2020 a las 18:38:12
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `contabilidadchilena`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asientos_contables`
--

CREATE TABLE `asientos_contables` (
  `idasientoc` int(11) NOT NULL,
  `referencia` varchar(100) NOT NULL,
  `concepto` varchar(200) NOT NULL,
  `fecha_contable` datetime NOT NULL,
  `idtipodiario` int(11) NOT NULL,
  `idempresa` int(11) NOT NULL,
  `idestado` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `fecha_actualizada` datetime NOT NULL,
  `idusuarioeditado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion_sueldos`
--

CREATE TABLE `asignacion_sueldos` (
  `id_Asignacion` int(11) NOT NULL,
  `id_sueldo` int(11) NOT NULL,
  `Sueldo_Liquido` float NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `rut` varchar(16) NOT NULL,
  `Nombre` varchar(80) NOT NULL,
  `fecha_Inicial` datetime NOT NULL,
  `id_ocupacion` int(11) NOT NULL,
  `Nombre_Cargo` varchar(80) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_gastos`
--

CREATE TABLE `categoria_gastos` (
  `idcategoriag` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `fecha` datetime NOT NULL,
  `usuario` int(11) NOT NULL,
  `fechaactualizado` datetime NOT NULL,
  `usuarioactualizado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_ingresos`
--

CREATE TABLE `categoria_ingresos` (
  `idcategoriai` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `fecha` datetime NOT NULL,
  `usuario` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria_ingresos`
--

INSERT INTO `categoria_ingresos` (`idcategoriai`, `nombre`, `fecha`, `usuario`) VALUES
(1, 'ebis covilla xd', '2020-04-22 11:30:26', 'admin'),
(2, 'agua', '2020-04-22 11:30:33', 'admin'),
(3, 'arriendo', '2020-04-22 11:33:09', 'admin'),
(4, 'pruebas', '2020-04-22 11:35:19', 'admin'),
(6, 'saasasa', '2020-04-22 11:36:32', 'admin'),
(8, 'master', '2020-04-22 11:40:42', 'admin'),
(9, 'zzzzzxzxz', '2020-04-22 11:41:47', 'admin'),
(10, 'vvvvvvv', '2020-04-22 11:42:18', 'admin'),
(11, 'mmmmmmmmmmm', '2020-04-22 11:42:29', 'admin'),
(12, 'aqweee', '2020-04-22 11:43:35', 'admin'),
(13, 'zzzaaa', '2020-04-22 11:44:04', 'admin'),
(14, 'nbkjkj', '2020-04-22 11:49:50', 'admin'),
(15, 'vvvvvvvvv', '2020-04-22 11:52:20', 'admin'),
(16, 'eidrian sael', '2020-04-22 11:53:27', 'admin'),
(17, 'lñoii', '2020-04-22 11:55:28', 'admin'),
(18, 'dssdsdsds', '2020-04-22 11:56:52', 'admin'),
(19, 'asaetyhh', '2020-04-22 11:58:31', 'admin'),
(20, 'cxcxcxc', '2020-04-22 12:00:01', 'admin'),
(21, 'fff', '2020-04-22 12:54:15', 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `idciudad` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clase_cuenta`
--

CREATE TABLE `clase_cuenta` (
  `idcc` int(11) NOT NULL,
  `p_digito` int(1) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecharegistro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clase_cuenta`
--

INSERT INTO `clase_cuenta` (`idcc`, `p_digito`, `nombre`, `id_usuario`, `fecharegistro`) VALUES
(1, 1, 'Activo', 1, '2020-05-23 14:36:52'),
(2, 2, 'Pasivo', 1, '2020-06-23 11:33:08'),
(3, 3, 'Patrimonio', 1, '2020-06-23 11:35:12'),
(4, 4, 'Ingresos', 1, '2020-06-23 11:35:12'),
(5, 5, 'Gastos', 1, '2020-06-23 11:37:06'),
(6, 6, 'Costos de las ventas', 1, '2020-06-23 11:37:06'),
(7, 7, 'Costo de operacion o de produccion', 1, '2020-06-23 11:41:04'),
(8, 8, 'Cuentas de orden deudoras', 1, '2020-06-23 11:38:16'),
(9, 9, 'Cuentas de orden acredoras', 1, '2020-06-23 11:41:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion_empresa`
--

CREATE TABLE `configuracion_empresa` (
  `idconfig` int(11) NOT NULL,
  `nombre_empresa` varchar(100) NOT NULL,
  `tipodocumento` enum('RUT','DNI','CC') NOT NULL,
  `rut` varchar(15) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `celular` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecharegistro` datetime NOT NULL,
  `usuarioeditado` int(11) NOT NULL,
  `fechactualizado` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `configuracion_empresa`
--

INSERT INTO `configuracion_empresa` (`idconfig`, `nombre_empresa`, `tipodocumento`, `rut`, `telefono`, `celular`, `email`, `direccion`, `id_usuario`, `fecharegistro`, `usuarioeditado`, `fechactualizado`) VALUES
(4, 'SOFTWARE S.A', 'RUT', '7.896.528-2', '4956336', '3229709158', 'jjvalencia0603@gmail.com', 'chile - santiago', 60, '2020-07-02 19:29:09', 60, '2020-07-02 19:29:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentasbancos`
--

CREATE TABLE `cuentasbancos` (
  `idcuenta` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `valor_inicial` decimal(60,0) NOT NULL,
  `monto_real` decimal(60,0) NOT NULL,
  `fecha` datetime NOT NULL,
  `usuario` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cuentasbancos`
--

INSERT INTO `cuentasbancos` (`idcuenta`, `nombre`, `valor_inicial`, `monto_real`, `fecha`, `usuario`) VALUES
(3, 'Bancolombia v', '500000', '500000', '2020-05-19 14:40:53', 'admin'),
(4, 'Banco caja social', '350000', '250000', '2020-04-22 23:15:23', 'admin'),
(5, 'David Plata', '500000', '500000', '2020-04-23 22:35:00', 'admin'),
(6, 'Pruebas de nuevo', '8500', '8500', '2020-05-19 13:30:40', 'Umbrella');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dptos`
--

CREATE TABLE `dptos` (
  `idptos` int(11) NOT NULL,
  `cod_dpto` varchar(2) NOT NULL,
  `nombre_dpto` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `dptos`
--

INSERT INTO `dptos` (`idptos`, `cod_dpto`, `nombre_dpto`) VALUES
(1, '91', 'AMAZONAS'),
(2, '05', 'ANTIOQUIA'),
(3, '81', 'ARAUCA'),
(4, '08', 'ATLANTICO'),
(5, '11', 'BOGOTA'),
(6, '13', 'BOLIVAR'),
(7, '15', 'BOYACA'),
(8, '17', 'CALDAS'),
(9, '18', 'CAQUETA'),
(10, '85', 'CASANARE'),
(11, '19', 'CAUCA'),
(12, '20', 'CESAR'),
(13, '27', 'CHOCO'),
(14, '23', 'CORDOVA'),
(15, '25', 'CUNDINAMARCA'),
(16, '94', 'GUANIA'),
(17, '95', 'GUAVIARE'),
(18, '41', 'HUILA'),
(19, '44', 'LA GUAJIRA'),
(20, '47', 'MAGDALENA'),
(21, '50', 'META'),
(22, '52', 'NARIÑO'),
(23, '54', 'NORTE DE SANTANDER'),
(24, '86', 'PUTUMAYO'),
(25, '63', 'QUINDIO'),
(26, '66', 'RISARALDA'),
(27, '88', 'SAN ANDRES'),
(28, '68', 'SANTANDER'),
(29, '70', 'SUCRE'),
(30, '73', 'TOLIMA'),
(31, '76', 'VALLE DEL CAUCA'),
(32, '97', 'VAUPES'),
(33, '99', 'VICHADA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `idempleado` int(11) NOT NULL,
  `nombres` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `rut` varchar(13) NOT NULL,
  `celular` int(11) NOT NULL,
  `telefono` int(11) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `genero` enum('Hombre','Mujer') NOT NULL,
  `idempresa` int(11) NOT NULL,
  `idciudad` int(11) NOT NULL,
  `idsucursal` varchar(3) NOT NULL,
  `estado` tinyint(4) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `fecharegistro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`idempleado`, `nombres`, `apellidos`, `rut`, `celular`, `telefono`, `direccion`, `genero`, `idempresa`, `idciudad`, `idsucursal`, `estado`, `idusuario`, `fecharegistro`) VALUES
(5, 'Jhon Joel', 'Valencia Villamizar', '2.433.234-1', 2147483647, 2147483647, 'olivares ', 'Hombre', 25, 5, '001', 0, 60, '2020-05-21 20:44:17'),
(6, 'Oscar Steeven', 'Aguilar Luzuriaga', '25.455.439-1', 973868607, 973868607, 'Fray Jorge #757', 'Hombre', 29, 91, '001', 0, 60, '2020-06-30 15:18:28'),
(7, 'Norma Alejandrina', 'Luzuriaga Briceño', '25.214.130-8', 981709815, 0, 'Fray Jorge #757', 'Mujer', 29, 91, '263', 0, 60, '2020-07-01 13:35:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `idempresa` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `nit` varchar(13) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` bigint(20) NOT NULL,
  `celular` bigint(20) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `fechaingreso` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`idempresa`, `nombre`, `nit`, `direccion`, `telefono`, `celular`, `correo`, `estado`, `idusuario`, `fechaingreso`) VALUES
(33, 'Hogar Y Moda ', '22.080.699-5', 'poblado', 4956336, 3229709158, 'hogarymoda@gmail.com', 1, 60, '2020-07-04 11:48:45'),
(36, 'Exito Itagui', '11.577.699-1', 'olivares - itagui', 4956336, 3229709158, 'exitoitagui@gmail.com', 1, 60, '2020-07-04 14:36:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `idestado` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`idestado`, `nombre`) VALUES
(1, 'Borrador'),
(2, 'Abierto'),
(3, 'Cerrado'),
(4, 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `ficharolpago`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `ficharolpago` (
`rut` varchar(13)
,`nombres` varchar(45)
,`ocupacion` varchar(200)
,`SueldoLiquido` varchar(15)
,`NombreEmpresa` varchar(30)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos`
--

CREATE TABLE `gastos` (
  `idgastos` int(11) NOT NULL,
  `idcuenta` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `Monto` decimal(60,0) NOT NULL,
  `idcategoria` int(11) NOT NULL,
  `usuario` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `idg` int(11) NOT NULL,
  `n_digitos` int(2) NOT NULL,
  `nombre_grupo` varchar(45) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecharegistro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`idg`, `n_digitos`, `nombre_grupo`, `id_usuario`, `fecharegistro`) VALUES
(1, 11, 'Disponible', 1, '2020-06-23 12:47:50'),
(2, 21, 'Obligaciones financieras', 1, '2020-06-23 12:47:50'),
(3, 31, 'Capital social', 1, '2020-06-23 12:50:37'),
(4, 41, 'Operacionales', 1, '2020-06-23 12:50:37'),
(5, 51, 'Operacionales de administracion', 1, '2020-06-23 12:54:39'),
(6, 61, 'Costo de ventas y prestación de servicios', 1, '2020-06-23 12:54:39'),
(7, 71, 'Materia prima', 1, '2020-06-23 12:56:26'),
(8, 81, 'Derechos contigentes', 1, '2020-06-23 12:56:26'),
(9, 91, 'Responsabilidades Contingentes', 1, '2020-06-23 12:58:13'),
(10, 22, 'Pasivo Largo Plazo', 1, '2020-06-25 12:08:23'),
(11, 32, 'Utilidades', 1, '2020-06-25 12:17:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresos`
--

CREATE TABLE `ingresos` (
  `id_ingreso` int(11) NOT NULL,
  `idcuenta` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `monto` decimal(60,0) NOT NULL,
  `idcategoria` int(11) NOT NULL,
  `usuario` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ingresos`
--

INSERT INTO `ingresos` (`id_ingreso`, `idcuenta`, `fecha`, `descripcion`, `monto`, `idcategoria`, `usuario`) VALUES
(1, 3, '2020-04-23 00:00:00', 'pruebas', '100000', 16, 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresossistema`
--

CREATE TABLE `ingresossistema` (
  `id` int(11) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `fecha` datetime NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libromayor`
--

CREATE TABLE `libromayor` (
  `id_librom` int(11) NOT NULL,
  `idasientocontable` int(11) NOT NULL,
  `idtipolibro` int(11) NOT NULL,
  `codigocuenta` int(11) NOT NULL,
  `nombrecuenta` varchar(100) NOT NULL,
  `debe` decimal(65,3) NOT NULL,
  `haber` decimal(65,3) NOT NULL,
  `totaldebe` decimal(65,3) NOT NULL,
  `totalhaber` decimal(65,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro_diario`
--

CREATE TABLE `libro_diario` (
  `id_libro` int(11) NOT NULL,
  `idasientocontable` int(11) NOT NULL,
  `idtipolibro` int(11) NOT NULL,
  `codigocuenta` int(11) NOT NULL,
  `nombre_cuenta` varchar(200) NOT NULL,
  `debe` decimal(65,3) NOT NULL,
  `haber` double(65,3) NOT NULL,
  `totaldebe` decimal(65,3) NOT NULL,
  `totalhaber` decimal(65,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `munpio`
--

CREATE TABLE `munpio` (
  `cod_dpto` varchar(2) NOT NULL,
  `cod_mpio` varchar(3) NOT NULL,
  `nombre_mpio` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `munpio`
--

INSERT INTO `munpio` (`cod_dpto`, `cod_mpio`, `nombre_mpio`) VALUES
('05', '001', 'MEDELLIN'),
('05', '002', 'ABEJORRAL'),
('05', '004', 'ABRIAQUI'),
('05', '021', 'ALEJANDRIA'),
('05', '030', 'AMAGA'),
('05', '031', 'AMALFI'),
('05', '034', 'ANDES'),
('05', '036', 'ANGELOPOLIS'),
('05', '038', 'ANGOSTURA'),
('05', '040', 'ANORI'),
('05', '042', 'SANTAFE DE ANTIOQUIA'),
('05', '044', 'ANZA'),
('05', '045', 'APARTADO'),
('05', '051', 'ARBOLETES'),
('05', '055', 'ARGELIA'),
('05', '059', 'ARMENIA'),
('05', '079', 'BARBOSA'),
('05', '086', 'BELMIRA'),
('05', '088', 'BELLO'),
('05', '091', 'BETANIA'),
('05', '093', 'BETULIA'),
('05', '101', 'CIUDAD BOLIVAR'),
('05', '107', 'BRICEÑO'),
('05', '113', 'BURITICA'),
('05', '120', 'CACERES'),
('05', '125', 'CAICEDO'),
('05', '129', 'CALDAS'),
('05', '134', 'CAMPAMENTO'),
('05', '138', 'CAÑASGORDAS'),
('05', '142', 'CARACOLI'),
('05', '145', 'CARAMANTA'),
('05', '147', 'CAREPA'),
('05', '148', 'CARMEN DE VIBORAL'),
('05', '150', 'CAROLINA'),
('05', '154', 'CAUCASIA'),
('05', '172', 'CHIGORODO'),
('05', '190', 'CISNEROS'),
('05', '197', 'COCORNA'),
('05', '206', 'CONCEPCION'),
('05', '209', 'CONCORDIA'),
('05', '212', 'COPACABANA'),
('05', '234', 'DABEIBA'),
('05', '237', 'DON MATIAS'),
('05', '240', 'EBEJICO'),
('05', '250', 'EL BAGRE'),
('05', '264', 'ENTRERRIOS'),
('05', '266', 'ENVIGADO'),
('05', '282', 'FREDONIA'),
('05', '284', 'FRONTINO'),
('05', '306', 'GIRALDO'),
('05', '308', 'GIRARDOTA'),
('05', '310', 'GOMEZ PLATA'),
('05', '313', 'GRANADA'),
('05', '315', 'GUADALUPE'),
('05', '318', 'GUARNE'),
('05', '321', 'GUATAPE'),
('05', '347', 'HELICONIA'),
('05', '353', 'HISPANIA'),
('05', '360', 'ITAGUI'),
('05', '361', 'ITUANGO'),
('05', '364', 'JARDIN'),
('05', '368', 'JERICO'),
('05', '376', 'LA CEJA'),
('05', '380', 'LA ESTRELLA'),
('05', '390', 'LA PINTADA'),
('05', '400', 'LA UNION'),
('05', '411', 'LIBORINA'),
('05', '425', 'MACEO'),
('05', '440', 'MARINILLA'),
('05', '467', 'MONTEBELLO'),
('05', '475', 'MURINDO'),
('05', '480', 'MUTATA'),
('05', '483', 'NARIÑO'),
('05', '490', 'NECOCLI'),
('05', '495', 'NECHI'),
('05', '501', 'OLAYA'),
('05', '541', 'PEÑOL'),
('05', '543', 'PEQUE'),
('05', '576', 'PUEBLORRICO'),
('05', '579', 'PUERTO BERRIO'),
('05', '585', 'PUERTO NARE'),
('05', '591', 'PUERTO TRIUNFO'),
('05', '604', 'REMEDIOS'),
('05', '607', 'RETIRO'),
('05', '615', 'RIONEGRO'),
('05', '628', 'SABANALARGA'),
('05', '631', 'SABANETA'),
('05', '642', 'SALGAR'),
('05', '647', 'SAN ANDRES'),
('05', '649', 'SAN CARLOS'),
('05', '652', 'SAN FRANCISCO'),
('05', '656', 'SAN JERONIMO'),
('05', '658', 'SAN JOSE DE LA MONTA?A'),
('05', '659', 'SAN JUAN DE URABA'),
('05', '660', 'SAN LUIS'),
('05', '664', 'SAN PEDRO'),
('05', '665', 'SAN PEDRO DE URABA'),
('05', '667', 'SAN RAFAEL'),
('05', '670', 'SAN ROQUE'),
('05', '674', 'SAN VICENTE'),
('05', '679', 'SANTA BARBARA'),
('05', '686', 'SANTA.ROSA DE OSOS'),
('05', '690', 'SANTO DOMINGO'),
('05', '697', 'SANTUARIO'),
('05', '736', 'SEGOVIA'),
('05', '756', 'SONSON'),
('05', '761', 'SOPETRAN'),
('05', '789', 'TAMESIS'),
('05', '790', 'TARAZA'),
('05', '792', 'TARSO'),
('05', '809', 'TITIRIBI'),
('05', '819', 'TOLEDO'),
('05', '837', 'TURBO'),
('05', '842', 'URAMITA'),
('05', '847', 'URRAO'),
('05', '854', 'VALDIVIA'),
('05', '856', 'VALPARAISO'),
('05', '858', 'VEGACHI'),
('05', '861', 'VENECIA'),
('05', '873', 'VIGIA DEL FUERTE'),
('05', '885', 'YALI'),
('05', '887', 'YARUMAL'),
('05', '890', 'YOLOMBO'),
('05', '893', 'YONDO'),
('05', '895', 'ZARAGOZA'),
('08', '001', 'BARRANQUILLA'),
('08', '078', 'BARANOA'),
('08', '137', 'CAMPO DE LA CRUZ'),
('08', '141', 'CANDELARIA'),
('08', '296', 'GALAPA'),
('08', '372', 'JUAN DE ACOSTA'),
('08', '421', 'LURUACO'),
('08', '433', 'MALAMBO'),
('08', '436', 'MANATI'),
('08', '520', 'PALMAR DE VARELA'),
('08', '549', 'PIOJO'),
('08', '558', 'POLONUEVO'),
('08', '560', 'PONEDERA'),
('08', '573', 'PUERTO COLOMBIA'),
('08', '606', 'REPELON'),
('08', '634', 'SABANAGRANDE'),
('08', '638', 'SABANALARGA'),
('08', '675', 'SANTA LUCIA'),
('08', '685', 'SANTO TOMAS'),
('08', '758', 'SOLEDAD'),
('08', '770', 'SUAN'),
('08', '832', 'TUBARA'),
('08', '849', 'USIACURI'),
('11', '001', 'SANTAFE DE BOGOTA'),
('13', '001', 'CARTAGENA'),
('13', '006', 'ACHI'),
('13', '030', 'ALTOS DEL ROSARIO'),
('13', '042', 'ARENAL'),
('13', '052', 'ARJONA'),
('13', '062', 'ARROYOHONDO'),
('13', '074', 'BARRANCO DE LOBA'),
('13', '140', 'CALAMAR'),
('13', '160', 'CANTAGALLO'),
('13', '188', 'CICUCO'),
('13', '212', 'CORDOBA'),
('13', '222', 'CLEMENCIA'),
('13', '244', 'EL CARMEN DE BOLIVAR'),
('13', '248', 'EL GUAMO'),
('13', '268', 'EL PENON'),
('13', '300', 'HATILLO DE LOBA'),
('13', '430', 'MAGANGUE'),
('13', '433', 'MAHATES'),
('13', '440', 'MARGARITA'),
('13', '442', 'MARIA LA BAJA'),
('13', '458', 'MONTECRISTO'),
('13', '468', 'MOMPOS'),
('13', '473', 'MORALES'),
('13', '490', 'NOROS'),
('13', '549', 'PINILLOS'),
('13', '580', 'REGIDOR'),
('13', '620', 'SAN CRISTOBAL'),
('13', '647', 'SAN ESTANISLAO'),
('13', '650', 'SAN FERNANDO'),
('13', '654', 'SAN JACINTO'),
('13', '655', 'SAN JACINTO DEL CAUCA'),
('13', '657', 'SAN JUAN NEPOMUCENO'),
('13', '667', 'SAN MARTIN DE LOBA'),
('13', '670', 'SAN PABLO'),
('13', '673', 'SANTA CATALINA'),
('13', '683', 'SANTA ROSA'),
('13', '688', 'SANTA ROSA DEL SUR'),
('13', '744', 'SIMITI'),
('13', '760', 'SOPLAVIENTO'),
('13', '780', 'TALAIGUA NUEVO'),
('13', '810', 'TIQUISIO'),
('13', '836', 'TURBACO'),
('13', '838', 'TURBANA'),
('13', '873', 'VILLANUEVA'),
('13', '894', 'ZAMBRANO'),
('15', '001', 'TUNJA'),
('15', '022', 'ALMEIDA'),
('15', '047', 'AQUITANIA'),
('15', '051', 'ARCABUCO'),
('15', '087', 'BELEN'),
('15', '090', 'BERBEO'),
('15', '092', 'BETEITIVA'),
('15', '097', 'BOAVITA'),
('15', '104', 'BOYACA'),
('15', '106', 'BRICEÑO'),
('15', '109', 'BUENAVISTA'),
('15', '114', 'BUSBANZA'),
('15', '131', 'CALDAS'),
('15', '135', 'CAMPOHERMOSO'),
('15', '162', 'CERINZA'),
('15', '172', 'CHINAVITA'),
('15', '176', 'CHIQUINQUIRA'),
('15', '180', 'CHISCAS'),
('15', '183', 'CHITA'),
('15', '185', 'CHITARAQUE'),
('15', '187', 'CHIVATA'),
('15', '189', 'CIENEGA'),
('15', '204', 'COMBITA'),
('15', '212', 'COPER'),
('15', '215', 'CORRALES'),
('15', '218', 'COVARACHIA'),
('15', '223', 'CUBARA'),
('15', '224', 'CUCAITA'),
('15', '226', 'CUITIVA'),
('15', '232', 'CHIQUIZA'),
('15', '236', 'CHIVOR'),
('15', '238', 'DUITAMA'),
('15', '244', 'EL COCUY'),
('15', '248', 'EL ESPINO'),
('15', '272', 'FIRAVITOBA'),
('15', '276', 'FLORESTA'),
('15', '293', 'GACHANTIVA'),
('15', '296', 'GAMEZA'),
('15', '299', 'GARAGOA'),
('15', '317', 'GUACAMAYAS'),
('15', '322', 'GUATEQUE'),
('15', '325', 'GUAYATA'),
('15', '332', 'GUICAN'),
('15', '362', 'IZA'),
('15', '367', 'JENESANO'),
('15', '368', 'JERICO'),
('15', '377', 'LABRANZAGRANDE'),
('15', '380', 'LA CAPILLA'),
('15', '401', 'LA VICTORIA'),
('15', '403', 'LA UVITA'),
('15', '407', 'VILLA DE LEYVA'),
('15', '425', 'MACANAL'),
('15', '442', 'MARIPI'),
('15', '455', 'MIRAFLORES'),
('15', '464', 'MONGUA'),
('15', '466', 'MONGUI'),
('15', '469', 'MONIQUIRA'),
('15', '476', 'MOTAVITA'),
('15', '480', 'MUZO'),
('15', '491', 'NOBSA'),
('15', '494', 'NUEVO COLON'),
('15', '500', 'OICATA'),
('15', '507', 'OTANCHE'),
('15', '511', 'PACHAVITA'),
('15', '514', 'PAEZ'),
('15', '516', 'PAIPA'),
('15', '518', 'PAJARITO'),
('15', '522', 'PANQUEBA'),
('15', '531', 'PAUNA'),
('15', '533', 'PAYA'),
('15', '537', 'PAZ DE RIO'),
('15', '542', 'PESCA'),
('15', '550', 'PISBA'),
('15', '572', 'PUERTO BOYACA'),
('15', '580', 'QUIPAMA'),
('15', '599', 'RAMIRIQUI'),
('15', '600', 'RAQUIRA'),
('15', '621', 'RONDON'),
('15', '632', 'SABOYA'),
('15', '638', 'SACHICA'),
('15', '646', 'SAMACA'),
('15', '660', 'SAN EDUARDO'),
('15', '664', 'SAN JOSE DE PARE'),
('15', '667', 'SAN LUIS DE GACENO'),
('15', '673', 'SAN MATEO'),
('15', '676', 'SAN MIGUEL DE SEMA'),
('15', '681', 'SAN PABLO BORBUR'),
('15', '686', 'SANTANA'),
('15', '690', 'SANTA MARIA'),
('15', '693', 'SAN ROSA VITERBO'),
('15', '696', 'SANTA SOFIA'),
('15', '720', 'SATIVANORTE'),
('15', '723', 'SATIVASUR'),
('15', '740', 'SIACHOQUE'),
('15', '753', 'SOATA'),
('15', '755', 'SOCOTA'),
('15', '757', 'SOCHA'),
('15', '759', 'SOGAMOSO'),
('15', '761', 'SOMONDOCO'),
('15', '762', 'SORA'),
('15', '763', 'SOTAQUIRA'),
('15', '764', 'SORACA'),
('15', '774', 'SUSACON'),
('15', '776', 'SUTAMARCHAN'),
('15', '778', 'SUTATENZA'),
('15', '790', 'TASCO'),
('15', '798', 'TENZA'),
('15', '804', 'TIBANA'),
('15', '806', 'TIBASOSA'),
('15', '808', 'TINJACA'),
('15', '810', 'TIPACOQUE'),
('15', '814', 'TOCA'),
('15', '816', 'TOGUI'),
('15', '820', 'TOPAGA'),
('15', '822', 'TOTA'),
('15', '832', 'TUNUNGUA'),
('15', '835', 'TURMEQUE'),
('15', '837', 'TUTA'),
('15', '839', 'TUTAZA'),
('15', '842', 'UMBITA'),
('15', '861', 'VENTAQUEMADA'),
('15', '879', 'VIRACACHA'),
('15', '897', 'ZETAQUIRA'),
('17', '001', 'MANIZALES'),
('17', '013', 'AGUADAS'),
('17', '042', 'ANSERMA'),
('17', '050', 'ARANZAZU'),
('17', '088', 'BELALCAZAR'),
('17', '174', 'CHINCHINA'),
('17', '272', 'FILADELFIA'),
('17', '380', 'LA DORADA'),
('17', '388', 'LA MERCED'),
('17', '433', 'MANZANARES'),
('17', '442', 'MARMATO'),
('17', '444', 'MARQUETALIA'),
('17', '446', 'MARULANDA'),
('17', '486', 'NEIRA'),
('17', '495', 'NORCASIA'),
('17', '513', 'PACORA'),
('17', '524', 'PALESTINA'),
('17', '541', 'PENSILVANIA'),
('17', '614', 'RIOSUCIO'),
('17', '616', 'RISARALDA'),
('17', '653', 'SALAMINA'),
('17', '662', 'SAMANA'),
('17', '665', 'SAN JOSE'),
('17', '777', 'SUPIA'),
('17', '867', 'VICTORIA'),
('17', '873', 'VILLAMARIA'),
('17', '877', 'VITERBO'),
('18', '001', 'FLORENCIA'),
('18', '029', 'ALBANIA'),
('18', '094', 'BELEN DE LOS ANDAQUIES'),
('18', '150', 'CARTAGENA DEL CHAIRA'),
('18', '205', 'CURRILLO'),
('18', '247', 'EL DONCELLO'),
('18', '256', 'EL PAUJIL'),
('18', '410', 'LA MONTAÑITA'),
('18', '460', 'MILAN'),
('18', '479', 'MORELIA'),
('18', '592', 'PUERTO RICO'),
('18', '610', 'SAN JOSE DE LA FRAGUA'),
('18', '753', 'SAN VICENTE DEL CAG?AN'),
('18', '756', 'SOLANO'),
('18', '785', 'SOLITA'),
('18', '860', 'VALPARAISO'),
('19', '001', 'POPAYAN'),
('19', '100', 'BOLIVAR'),
('19', '110', 'BUENOS AIRES'),
('19', '130', 'CAJIBIO'),
('19', '137', 'CALDONO'),
('19', '142', 'CALOTO'),
('19', '212', 'CORINTO'),
('19', '220', 'ALMAGUER'),
('19', '256', 'EL TAMBO'),
('19', '290', 'FLORENCIA'),
('19', '300', 'GUACHEN'),
('19', '318', 'GUAPI'),
('19', '355', 'INZA'),
('19', '364', 'JAMBAL'),
('19', '392', 'LA SIERRA'),
('19', '397', 'LA VEGA'),
('19', '418', 'LOPEZ'),
('19', '450', 'MERCADERES'),
('19', '455', 'MIRANDA'),
('19', '473', 'MORALES'),
('19', '500', 'ARGELIA'),
('19', '513', 'PADILLA'),
('19', '517', 'PAEZ'),
('19', '532', 'PATIA'),
('19', '533', 'PIAMONTE'),
('19', '548', 'PIENDAM'),
('19', '573', 'PUERTO TEJADA'),
('19', '585', 'PURAC'),
('19', '622', 'ROSAS'),
('19', '693', 'SAN SEBASTIAN'),
('19', '698', 'SANTANDER DE QUILICHAO'),
('19', '701', 'SANTA ROSA'),
('19', '743', 'SILVIA'),
('19', '750', 'BALBOA'),
('19', '760', 'SOTARA'),
('19', '780', 'SU?REZ'),
('19', '785', 'SUCRE'),
('19', '807', 'TIMB?O'),
('19', '809', 'TIMBIQU'),
('19', '821', 'TORIBIO'),
('19', '824', 'TOTOR'),
('19', '845', 'VILLA RICA'),
('20', '001', 'VALLEDUPAR'),
('20', '110', 'AGUACHICA'),
('20', '130', 'AGUST?N CODAZZI'),
('20', '175', 'CHIMICHAGUA'),
('20', '178', 'CHIRIGUAN?'),
('20', '228', 'CURUMAN'),
('20', '238', 'EL COPEY'),
('20', '250', 'EL PASO'),
('20', '295', 'GAMARRA'),
('20', '310', 'GONZ?LEZ'),
('20', '320', 'ASTREA'),
('20', '383', 'LA GLORIA'),
('20', '400', 'LA JAGUA DE IBIRICO'),
('20', '443', 'MANAURE'),
('20', '450', 'BECERRIL'),
('20', '517', 'PAILITAS'),
('20', '550', 'PELAYA'),
('20', '570', 'PUEBLO BELLO'),
('20', '600', 'BOSCONIA'),
('20', '614', 'RIO DE ORO'),
('20', '621', 'LA PAZ'),
('20', '710', 'SAN ALBERTO'),
('20', '750', 'SAN DIEGO'),
('20', '770', 'SAN MART?N'),
('20', '787', 'TAMALAMEQUE'),
('23', '001', 'MONTERIA'),
('23', '162', 'CERET'),
('23', '168', 'CHIM?'),
('23', '182', 'CHIN'),
('23', '189', 'CI?NAGA DE ORO'),
('23', '300', 'COTORRA'),
('23', '350', 'LA APARTADA'),
('23', '417', 'LORICA'),
('23', '419', 'LOS C?RDOBAS'),
('23', '464', 'MOMIL'),
('23', '466', 'MONTEL?BANO'),
('23', '500', 'MOÑITOS'),
('23', '555', 'PLANETA RICA'),
('23', '570', 'PUEBLO NUEVO'),
('23', '574', 'PUERTO ESCONDIDO'),
('23', '580', 'PUERTO LIBERTADOR'),
('23', '586', 'PUR?SIMA'),
('23', '660', 'SAHAG?N'),
('23', '670', 'SAN ANDRES SOTAVENTO'),
('23', '672', 'SAN ANTERO'),
('23', '675', 'SAN BERNARDO DEL VIENTO'),
('23', '678', 'SAN CARLOS'),
('23', '680', 'AYAPEL'),
('23', '682', 'SAN JOSE DE UR'),
('23', '686', 'SAN PELAYO'),
('23', '790', 'BUENAVISTA'),
('23', '807', 'TIERRALTA'),
('23', '815', 'TUCH?N'),
('23', '855', 'VALENCIA'),
('23', '900', 'CANALETE'),
('25', '001', 'AGUA DE DIOS'),
('25', '019', 'ALBAN'),
('25', '035', 'ANAPOIMA'),
('25', '040', 'ANOLAIMA'),
('25', '053', 'ARBELAEZ'),
('25', '086', 'BELTRAN'),
('25', '095', 'BITUIMA'),
('25', '099', 'BOJACA'),
('25', '120', 'CABRERA'),
('25', '123', 'CACHIPAY'),
('25', '126', 'CAJICA'),
('25', '148', 'CAPARRAPI'),
('25', '151', 'CAQUEZA'),
('25', '154', 'CARMEN DE CARUPA'),
('25', '168', 'CHAGUANI'),
('25', '175', 'CHIA'),
('25', '178', 'CHIPAQUE'),
('25', '181', 'CHOACHI'),
('25', '183', 'CHOCONTA'),
('25', '200', 'COGUA'),
('25', '214', 'COTA'),
('25', '224', 'CUCUNUBA'),
('25', '245', 'EL COLEGIO'),
('25', '258', 'EL PE?ON'),
('25', '260', 'EL ROSAL'),
('25', '269', 'FACATATIVA'),
('25', '279', 'FOMEQUE'),
('25', '281', 'FOSCA'),
('25', '286', 'FUNZA'),
('25', '288', 'FUQUENE'),
('25', '290', 'FUSAGASUGA'),
('25', '293', 'GACHALA'),
('25', '295', 'GACHANCIPA'),
('25', '297', 'GACHETA'),
('25', '299', 'GAMA'),
('25', '307', 'GIRARDOT'),
('25', '312', 'GRANADA'),
('25', '317', 'GUACHETA'),
('25', '320', 'GUADUAS'),
('25', '322', 'GUASCA'),
('25', '324', 'GUATAQUI'),
('25', '326', 'GUATAVITA'),
('25', '328', 'GUAYABAL DE SIQUIMA'),
('25', '335', 'GUAYABETAL'),
('25', '339', 'GUTIERREZ'),
('25', '368', 'JERUSALEN'),
('25', '372', 'JUNIN'),
('25', '377', 'LA CALERA'),
('25', '386', 'LA MESA'),
('25', '394', 'LA PALMA'),
('25', '398', 'LA PE?A'),
('25', '402', 'LA VEGA'),
('25', '407', 'LENGUAZAQUE'),
('25', '426', 'MACHETA'),
('25', '430', 'MADRID'),
('25', '436', 'MANTA'),
('25', '438', 'MEDINA'),
('25', '473', 'MOSQUERA'),
('25', '483', 'NARI?O'),
('25', '486', 'NEMOCON'),
('25', '488', 'NILO'),
('25', '489', 'NIMAIMA'),
('25', '491', 'NOCAIMA'),
('25', '506', 'VENECIA'),
('25', '513', 'PACHO'),
('25', '518', 'PAIME'),
('25', '524', 'PANDI'),
('25', '530', 'PARATEBUENO'),
('25', '535', 'PASCA'),
('25', '572', 'PUERTO SALGAR'),
('25', '580', 'PULI'),
('25', '592', 'QUEBRADANEGRA'),
('25', '594', 'QUETAME'),
('25', '596', 'QUIPILE'),
('25', '599', 'APULO'),
('25', '612', 'RICAURTE'),
('25', '645', 'SAN ANTONIO DE TEQUENDAMA'),
('25', '649', 'SAN BERNARDO'),
('25', '653', 'SAN CAYETANO'),
('25', '658', 'SAN FRANCISCO'),
('25', '662', 'SAN JUAN DE RIOSECO'),
('25', '718', 'SASAIMA'),
('25', '736', 'SESQUILE'),
('25', '740', 'SIBATE'),
('25', '743', 'SILVANIA'),
('25', '745', 'SIMIJACA'),
('25', '754', 'SOACHA'),
('25', '758', 'SOPO'),
('25', '769', 'SUBACHOQUE'),
('25', '772', 'SUESCA'),
('25', '777', 'SUPATA'),
('25', '779', 'SUSA'),
('25', '781', 'SUTATAUSA'),
('25', '785', 'TABIO'),
('25', '793', 'TAUSA'),
('25', '797', 'TENA'),
('25', '799', 'TENJO'),
('25', '805', 'TIBACUY'),
('25', '807', 'TIBIRITA'),
('25', '815', 'TOCAIMA'),
('25', '817', 'TOCANCIPA'),
('25', '823', 'TOPAIPI'),
('25', '839', 'UBALA'),
('25', '841', 'UBAQUE'),
('25', '843', 'UBATE'),
('25', '845', 'UNE'),
('25', '851', 'UTICA'),
('25', '862', 'VERGARA'),
('25', '867', 'VIANI'),
('25', '871', 'VILLAGOMEZ'),
('25', '873', 'VILLAPINZON'),
('25', '875', 'VILLETA'),
('25', '878', 'VIOTA'),
('25', '885', 'YACOPI'),
('25', '898', 'ZIPACON'),
('25', '899', 'ZIPAQUIRA'),
('27', '001', 'QUIBD'),
('27', '135', 'EL CANT?N DEL SAN PABLO'),
('27', '150', 'CARMEN DEL DARI?N'),
('27', '160', 'C?RTEGUI'),
('27', '205', 'CONDOTO'),
('27', '245', 'EL CARMEN DE ATRATO'),
('27', '250', 'ALTO BAUD'),
('27', '250', 'EL LITORAL DEL SAN JUAN'),
('27', '361', 'ISTMINA'),
('27', '372', 'JURAD'),
('27', '413', 'LLOR'),
('27', '425', 'MEDIO ATRATO'),
('27', '430', 'MEDIO BAUD'),
('27', '450', 'MEDIO SAN JUAN'),
('27', '491', 'N?VITA'),
('27', '495', 'NUQU'),
('27', '500', 'ATRATO'),
('27', '580', 'R?O IR'),
('27', '600', 'ACAND'),
('27', '600', 'R?O QUITO'),
('27', '615', 'RIOSUCIO'),
('27', '660', 'SAN JOSE DEL PALMAR'),
('27', '730', 'BAGAD'),
('27', '745', 'SIP'),
('27', '750', 'BAHIA SOLANO'),
('27', '770', 'BAJO BAUD'),
('27', '787', 'TAD'),
('27', '800', 'UNGU?A'),
('27', '810', 'UNION PANAMERICANA'),
('27', '990', 'BOJAYA'),
('41', '001', 'NEIVA'),
('41', '130', 'AGRADO'),
('41', '132', 'CAMPOALEGRE'),
('41', '160', 'AIPE'),
('41', '200', 'ALGECIRAS'),
('41', '206', 'COLOMBIA'),
('41', '244', 'EL?AS'),
('41', '260', 'ALTAMIRA'),
('41', '298', 'GARZON'),
('41', '306', 'GIGANTE'),
('41', '319', 'GUADALUPE'),
('41', '349', 'HOBO'),
('41', '357', 'IQUIRA'),
('41', '359', 'ISNOS'),
('41', '378', 'LA ARGENTINA'),
('41', '396', 'LA PLATA'),
('41', '483', 'N?TAGA'),
('41', '503', 'OPORAPA'),
('41', '518', 'PAICOL'),
('41', '524', 'PALERMO'),
('41', '530', 'PALESTINA'),
('41', '548', 'PITAL'),
('41', '551', 'PITALITO'),
('41', '600', 'ACEVEDO'),
('41', '615', 'RIVERA'),
('41', '660', 'SALADOBLANCO'),
('41', '668', 'SAN AGUSTIN'),
('41', '676', 'SANTA MARIA'),
('41', '770', 'SUAZA'),
('41', '780', 'BARAYA'),
('41', '791', 'TARQUI'),
('41', '797', 'TESALIA'),
('41', '799', 'TELLO'),
('41', '801', 'TERUEL'),
('41', '807', 'TIMAN?'),
('41', '872', 'VILLAVIEJA'),
('41', '885', 'YAGUAR?'),
('44', '001', 'RIOHACHA'),
('44', '110', 'EL MOLINO'),
('44', '279', 'FONSECA'),
('44', '350', 'ALBANIA'),
('44', '378', 'HATONUEVO'),
('44', '420', 'LA JAGUA DEL PILAR'),
('44', '430', 'MAICAO'),
('44', '560', 'MANAURE'),
('44', '650', 'SAN JUAN DEL CESAR'),
('44', '780', 'BARRANCAS'),
('44', '847', 'URIBIA'),
('44', '855', 'URUMITA'),
('44', '874', 'VILLANUEVA'),
('44', '900', 'DIBULLA'),
('44', '980', 'DISTRACCI?N'),
('47', '001', 'SANTA MARTA'),
('47', '030', 'ALGARROBO'),
('47', '053', 'ARACATACA'),
('47', '058', 'ARIGUANI'),
('47', '161', 'CERRO SAN ANTONIO'),
('47', '170', 'CHIVOLO'),
('47', '189', 'CIENAGA'),
('47', '205', 'CONCORDIA'),
('47', '245', 'EL BANCO'),
('47', '258', 'EL PI?ON'),
('47', '268', 'EL RETEN'),
('47', '288', 'FUNDACION'),
('47', '318', 'GUAMAL'),
('47', '460', 'NUEVA GRANADA'),
('47', '541', 'PEDRAZA'),
('47', '545', 'PIJINO DEL CARMEN'),
('47', '551', 'PIVIJAY'),
('47', '555', 'PLATO'),
('47', '570', 'PUEBLOVIEJO'),
('47', '605', 'REMOLINO'),
('47', '660', 'SABANAS DE SAN ANGEL'),
('47', '675', 'SALAMINA'),
('47', '692', 'SAN SEBASTIAN DE BUENAVISTA'),
('47', '703', 'SAN ZENON'),
('47', '707', 'SANTA ANA'),
('47', '720', 'SANTA BARBARA DE PINTO'),
('47', '745', 'SITIONUEVO'),
('47', '798', 'TENERIFE'),
('47', '960', 'ZAPAYAN'),
('47', '980', 'ZONA BANANERA'),
('50', '001', 'VILLAVICENCIO'),
('50', '110', 'BARRANCA DE UP?A'),
('50', '124', 'CABUYARO'),
('50', '150', 'CASTILLA LA NUEVA'),
('50', '223', 'CUBARRAL'),
('50', '226', 'CUMARAL'),
('50', '245', 'EL CALVARIO'),
('50', '251', 'EL CASTILLO'),
('50', '270', 'EL DORADO'),
('50', '287', 'FUENTE DE ORO'),
('50', '313', 'GRANADA'),
('50', '318', 'GUAMAL'),
('50', '325', 'MAPIRIPAN'),
('50', '330', 'MESETAS'),
('50', '350', 'LA MACARENA'),
('50', '370', 'URIBE'),
('50', '400', 'LEJANIAS'),
('50', '450', 'PUERTO CONCORDIA'),
('50', '568', 'PUERTO GAITAN'),
('50', '573', 'PUERTO LOPEZ'),
('50', '577', 'PUERTO LLERAS'),
('50', '590', 'PUERTO RICO'),
('50', '600', 'ACACIAS'),
('50', '606', 'RESTREPO'),
('50', '680', 'SAN CARLOS DE GUAROA'),
('50', '683', 'SAN JUAN DE ARAMA'),
('50', '686', 'SAN JUANITO'),
('50', '689', 'SAN MART?N'),
('50', '711', 'VISTAHERMOSA'),
('52', '001', 'PASTO'),
('52', '110', 'BUESACO'),
('52', '190', 'ALB?N'),
('52', '203', 'COLON'),
('52', '207', 'CONSACA'),
('52', '210', 'CONTADERO'),
('52', '215', 'CORDOBA'),
('52', '220', 'ALDANA'),
('52', '224', 'CUASPUD'),
('52', '227', 'CUMBAL'),
('52', '233', 'CUMBITARA'),
('52', '240', 'CHACHAG?A'),
('52', '250', 'EL CHARCO'),
('52', '254', 'EL PEÑOL'),
('52', '256', 'EL ROSARIO'),
('52', '258', 'EL TABL?N DE G?MEZ'),
('52', '260', 'EL TAMBO'),
('52', '287', 'FUNES'),
('52', '317', 'GUACHUCAL'),
('52', '320', 'GUAITARILLA'),
('52', '323', 'GUALMAT?N'),
('52', '352', 'ILES'),
('52', '354', 'IMU?S'),
('52', '356', 'IPIALES'),
('52', '360', 'ANCUY?'),
('52', '378', 'LA CRUZ'),
('52', '381', 'LA FLORIDA'),
('52', '385', 'LA LLANADA'),
('52', '390', 'LA TOLA'),
('52', '399', 'LA UNI?N'),
('52', '405', 'LEIVA'),
('52', '411', 'LINARES'),
('52', '418', 'LOS ANDES'),
('52', '427', 'MAGUI'),
('52', '435', 'MALLAMA'),
('52', '473', 'MOSQUERA'),
('52', '480', 'NARIÑO'),
('52', '490', 'OLAYA HERRERA'),
('52', '506', 'OSPINA'),
('52', '510', 'ARBOLEDA'),
('52', '520', 'FRANCISCO PIZARRO'),
('52', '540', 'POLICARPA'),
('52', '560', 'POTOS'),
('52', '565', 'PROVIDENCIA'),
('52', '573', 'PUERRES'),
('52', '585', 'PUPIALES'),
('52', '612', 'RICAURTE'),
('52', '621', 'ROBERTO PAYAN'),
('52', '678', 'SAMANIEGO'),
('52', '683', 'SANDON?'),
('52', '685', 'SAN BERNARDO'),
('52', '687', 'SAN LORENZO'),
('52', '693', 'SAN PABLO'),
('52', '694', 'SAN PEDRO DE CARTAGO'),
('52', '696', 'SANTA BARBARA'),
('52', '699', 'SANTACRUZ'),
('52', '720', 'SAPUYES'),
('52', '786', 'TAMINANGO'),
('52', '788', 'TANGUA'),
('52', '790', 'BARBACOAS'),
('52', '830', 'BEL?N'),
('52', '835', 'SAN ANDRES DE TUMACO'),
('52', '838', 'TUQUERRES'),
('52', '885', 'YACUANQUER'),
('54', '001', 'CUCUTA'),
('54', '003', 'ABREGO'),
('54', '051', 'ARBOLEDAS'),
('54', '099', 'BOCHALEMA'),
('54', '109', 'BUCARASICA'),
('54', '125', 'CACOTA'),
('54', '128', 'CACHIRA'),
('54', '172', 'CHINACOTA'),
('54', '174', 'CHITAGA'),
('54', '206', 'CONVENCION'),
('54', '223', 'CUCUTILLA'),
('54', '239', 'DURANIA'),
('54', '245', 'EL CARMEN'),
('54', '250', 'EL TARRA'),
('54', '261', 'EL ZULIA'),
('54', '313', 'GRAMALOTE'),
('54', '344', 'HACARI'),
('54', '347', 'HERRAN'),
('54', '377', 'LABATECA'),
('54', '385', 'LA ESPERANZA'),
('54', '398', 'LA PLAYA'),
('54', '405', 'LOS PATIOS'),
('54', '418', 'LOURDES'),
('54', '480', 'MUTISCUA'),
('54', '498', 'OCA?A'),
('54', '518', 'PAMPLONA'),
('54', '520', 'PAMPLONITA'),
('54', '553', 'PUERTO SANTANDER'),
('54', '599', 'RAGONVALIA'),
('54', '660', 'SALAZAR'),
('54', '670', 'SAN CALIXTO'),
('54', '673', 'SAN CAYETANO'),
('54', '680', 'SANTIAGO'),
('54', '720', 'SARDINATA'),
('54', '743', 'SILOS'),
('54', '800', 'TEORAMA'),
('54', '810', 'TIBU'),
('54', '820', 'TOLEDO'),
('54', '871', 'VILLA CARO'),
('54', '874', 'VILLA DEL ROSARIO'),
('63', '001', 'ARMENIA'),
('63', '111', 'BUENAVISTA'),
('63', '130', 'CALARCA'),
('63', '190', 'CIRCASIA'),
('63', '212', 'CORDOBA'),
('63', '272', 'FILANDIA'),
('63', '302', 'GENOVA'),
('63', '401', 'LA TEBAIDA'),
('63', '470', 'MONTENEGRO'),
('63', '548', 'PIJAO'),
('63', '594', 'QUIMBAYA'),
('63', '690', 'SALENTO'),
('66', '001', 'PEREIRA'),
('66', '045', 'APIA'),
('66', '075', 'BALBOA'),
('66', '088', 'BELEN DE UMBRIA'),
('66', '170', 'DOS QUEBRADAS'),
('66', '318', 'GUATICA'),
('66', '383', 'LA CELIA'),
('66', '400', 'LA VIRGINIA'),
('66', '440', 'MARSELLA'),
('66', '456', 'MISTRATO'),
('66', '572', 'PUEBLO RICO'),
('66', '594', 'QUINCHIA'),
('66', '682', 'SANTA ROSA DE CABAL'),
('66', '687', 'SANTUARIO'),
('68', '001', 'BUCARAMANGA'),
('68', '013', 'AGUADA'),
('68', '020', 'ALBANIA'),
('68', '051', 'ARATOCA'),
('68', '077', 'BARBOSA'),
('68', '079', 'BARICHARA'),
('68', '081', 'BARRANCABERMEJA'),
('68', '092', 'BETULIA'),
('68', '101', 'BOLIVAR'),
('68', '121', 'CABRERA'),
('68', '132', 'CALIFORNIA'),
('68', '147', 'CAPITANEJO'),
('68', '152', 'CARCASI'),
('68', '160', 'CEPITA'),
('68', '162', 'CERRITO'),
('68', '167', 'CHARALA'),
('68', '169', 'CHARTA'),
('68', '176', 'CHIMA'),
('68', '179', 'CHIPATA'),
('68', '190', 'CIMITARRA'),
('68', '207', 'CONCEPCION'),
('68', '209', 'CONFINES'),
('68', '211', 'CONTRATACION'),
('68', '217', 'COROMORO'),
('68', '229', 'CURITI'),
('68', '235', 'EL CARMEN DE CHUCURI'),
('68', '245', 'EL GUACAMAYO'),
('68', '250', 'EL PEÑON'),
('68', '255', 'EL PLAYON'),
('68', '264', 'ENCINO'),
('68', '266', 'ENCISO'),
('68', '271', 'EL FLORIAN'),
('68', '276', 'FLORIDABLANCA'),
('68', '296', 'GALAN'),
('68', '298', 'GAMBITA'),
('68', '307', 'GIRON'),
('68', '318', 'GUACA'),
('68', '320', 'GUADALUPE'),
('68', '322', 'GUAPOTA'),
('68', '324', 'GUAVATA'),
('68', '327', 'GUEPSA'),
('68', '344', 'HATO'),
('68', '368', 'JESUS MARIA'),
('68', '370', 'JORDAN'),
('68', '377', 'LA BELLEZA'),
('68', '385', 'LANDAZURI'),
('68', '397', 'LA PAZ'),
('68', '406', 'LEBRIJA'),
('68', '418', 'LOS SANTOS'),
('68', '425', 'MACARAVITA'),
('68', '432', 'MALAGA'),
('68', '444', 'MATANZA'),
('68', '464', 'MOGOTES'),
('68', '468', 'MOLAGAVITA'),
('68', '498', 'OCAMONTE'),
('68', '500', 'OIBA'),
('68', '502', 'ONZAGA'),
('68', '522', 'PALMAR'),
('68', '524', 'PALMAS DEL SOCORRO'),
('68', '533', 'PARAMO'),
('68', '547', 'PIEDECUESTA'),
('68', '549', 'PINCHOTE'),
('68', '572', 'PUENTE NACIONAL'),
('68', '573', 'PUERTO PARRA'),
('68', '575', 'PUERTO WILCHES'),
('68', '615', 'RIONEGRO'),
('68', '655', 'SABANA DE TORRES'),
('68', '669', 'SAN ANDRES'),
('68', '673', 'SAN BENITO'),
('68', '679', 'SAN GIL'),
('68', '682', 'SAN JOAQUIN'),
('68', '684', 'SAN JOSE DE MIRANDA'),
('68', '686', 'SAN MIGUEL'),
('68', '689', 'SAN VICENTE DE CHUCURI'),
('68', '705', 'SANTA BARBARA'),
('68', '720', 'SANTA HELENA DEL OPON'),
('68', '745', 'SIMACOTA'),
('68', '755', 'SOCORRO'),
('68', '770', 'SUAITA'),
('68', '773', 'SUCRE'),
('68', '780', 'SURATA'),
('68', '820', 'TONA'),
('68', '855', 'VALLE SAN JOSE'),
('68', '861', 'VELEZ'),
('68', '867', 'VETAS'),
('68', '872', 'VILLANUEVA'),
('68', '895', 'ZAPATOCA'),
('70', '001', 'SINCELEJO'),
('70', '110', 'BUENAVISTA'),
('70', '124', 'CAIMITO'),
('70', '204', 'COLOSO'),
('70', '215', 'COROZAL'),
('70', '221', 'COVEÑAS'),
('70', '230', 'CHALIN'),
('70', '233', 'EL ROBLE'),
('70', '235', 'GALERAS'),
('70', '265', 'GUARANDA'),
('70', '400', 'LA UNION'),
('70', '418', 'LOS PALMITOS'),
('70', '429', 'MAJAGUAL'),
('70', '473', 'MORROA'),
('70', '508', 'OVEJAS'),
('70', '523', 'PALMITO'),
('70', '670', 'SAMPU?S'),
('70', '678', 'SAN BENITO ABAD'),
('70', '702', 'SAN JUAN DE BETULIA'),
('70', '708', 'SAN MARCOS'),
('70', '713', 'SAN ONOFRE'),
('70', '717', 'SAN PEDRO'),
('70', '742', 'SAN LUIS DE SINC'),
('70', '771', 'SUCRE'),
('70', '820', 'SANTIAGO DE TOL'),
('70', '823', 'TOLU VIEJO'),
('73', '001', 'IBAGU'),
('73', '124', 'CAJAMARCA'),
('73', '148', 'CARMEN DE APICALI'),
('73', '152', 'CASABIANCA'),
('73', '168', 'CHAPARRAL'),
('73', '200', 'COELLO'),
('73', '217', 'COYAIMA'),
('73', '226', 'CUNDAY'),
('73', '236', 'DOLORES'),
('73', '240', 'ALPUJARRA'),
('73', '260', 'ALVARADO'),
('73', '268', 'ESPINAL'),
('73', '270', 'FALAN'),
('73', '275', 'FLANDES'),
('73', '283', 'FRESNO'),
('73', '300', 'AMBALEMA'),
('73', '319', 'GUAMO'),
('73', '347', 'HERVEO'),
('73', '349', 'HONDA'),
('73', '352', 'ICONONZO'),
('73', '408', 'LIRIDA'),
('73', '411', 'LIBANO'),
('73', '430', 'ANZOATEGUI'),
('73', '443', 'SAN SEBASTIAN DE MARIQUITA'),
('73', '449', 'MELGAR'),
('73', '461', 'MURILLO'),
('73', '483', 'NATAGAIMA'),
('73', '504', 'ORTEGA'),
('73', '520', 'PALOCABILDO'),
('73', '547', 'PIEDRAS'),
('73', '550', 'ARMERO'),
('73', '555', 'PLANADAS'),
('73', '563', 'PRADO'),
('73', '585', 'PURIFICACION'),
('73', '616', 'RIOBLANCO'),
('73', '622', 'RONCESVALLES'),
('73', '624', 'ROVIRA'),
('73', '670', 'ATACO'),
('73', '671', 'SALDAIA'),
('73', '675', 'SAN ANTONIO'),
('73', '678', 'SAN LUIS'),
('73', '686', 'SANTA ISABEL'),
('73', '770', 'SUAREZ'),
('73', '854', 'VALLE DE SAN JUAN'),
('73', '861', 'VENADILLO'),
('73', '870', 'VILLAHERMOSA'),
('73', '873', 'VILLARRICA'),
('76', '001', 'CALI'),
('76', '020', 'ALCALA'),
('76', '036', 'ANDALUCIA'),
('76', '041', 'ANSERMANUEVO'),
('76', '054', 'ARGELIA'),
('76', '100', 'BOLIVAR'),
('76', '109', 'BUENAVENTURA'),
('76', '111', 'GUADALAJARA DE BUGA'),
('76', '113', 'BUGALAGRANDE'),
('76', '122', 'CAICEDONIA'),
('76', '126', 'CALIMA'),
('76', '130', 'CANDELARIA'),
('76', '147', 'CARTAGO'),
('76', '233', 'DAGUA'),
('76', '243', 'EL AGUILA'),
('76', '246', 'EL CAIRO'),
('76', '248', 'EL CERRITO'),
('76', '250', 'EL DOVIO'),
('76', '275', 'FLORIDA'),
('76', '306', 'GINEBRA'),
('76', '318', 'GUACARI'),
('76', '364', 'JAMUNDI'),
('76', '377', 'LA CUMBRE'),
('76', '400', 'LA UNION'),
('76', '403', 'LA VICTORIA'),
('76', '497', 'OBANDO'),
('76', '520', 'PALMIRA'),
('76', '563', 'PRADERA'),
('76', '606', 'RESTREPO'),
('76', '616', 'RIOFRIO'),
('76', '622', 'ROLDANILLO'),
('76', '670', 'SAN PEDRO'),
('76', '736', 'SEVILLA'),
('76', '823', 'TORO'),
('76', '828', 'TRUJILLO'),
('76', '834', 'TULUA'),
('76', '845', 'ULLOA'),
('76', '863', 'VERSALLES'),
('76', '869', 'VIJES'),
('76', '890', 'YOTOCO'),
('76', '892', 'YUMBO'),
('76', '895', 'ZARZAL'),
('81', '001', 'ARAUCA'),
('81', '065', 'ARAUQUITA'),
('81', '220', 'CRAVO NORTE'),
('81', '300', 'FORTUL'),
('81', '591', 'PUERTO RONDON'),
('81', '736', 'SARAVENA'),
('81', '794', 'TAME'),
('85', '001', 'YOPAL'),
('85', '100', 'AGUAZUL'),
('85', '125', 'HATO COROZAL'),
('85', '136', 'LA SALINA'),
('85', '139', 'MAN'),
('85', '150', 'CHAMEZA'),
('85', '162', 'MONTERREY'),
('85', '225', 'NUNCHIA'),
('85', '230', 'OROCU'),
('85', '250', 'PAZ DE ARIPORO'),
('85', '263', 'PORE'),
('85', '279', 'RECETOR'),
('85', '300', 'SABANALARGA'),
('85', '315', 'SOCAMA'),
('85', '325', 'SAN LUIS DE PALENQUE'),
('85', '400', 'TAMARA'),
('85', '410', 'TAURAMENA'),
('85', '430', 'TRINIDAD'),
('85', '440', 'VILLANUEVA'),
('86', '001', 'MOCOA'),
('86', '219', 'COLON'),
('86', '320', 'ORITO'),
('86', '568', 'PUERTO ASIS'),
('86', '569', 'PUERTO CAICEDO'),
('86', '571', 'PUERTO GUZMAN'),
('86', '573', 'PUERTO LEGUIZAMO'),
('86', '749', 'SIBUNDOY'),
('86', '755', 'SAN FRANCISCO'),
('86', '757', 'SAN MIGUEL'),
('86', '760', 'SANTIAGO'),
('86', '865', 'VALLE DEL GUAMUEZ'),
('86', '885', 'VILLAGARZON'),
('88', '001', 'SAN ANDRES'),
('88', '564', 'PROVIDENCIA'),
('91', '001', 'LETICIA'),
('91', '263', 'EL ENCANTO'),
('91', '405', 'LA CHORRERA'),
('91', '407', 'LA PEDRERA'),
('91', '430', 'LA VICTORIA'),
('91', '460', 'MIRITI - PARANA'),
('91', '530', 'PUERTO ALEGRIA'),
('91', '536', 'PUERTO ARICA'),
('91', '540', 'PUERTO NARIÑO'),
('91', '669', 'PUERTO SANTANDER'),
('91', '798', 'TARAPACA'),
('94', '001', 'INIRIDA'),
('94', '343', 'BARRANCO MINAS'),
('94', '663', 'MAPIRIPANA'),
('94', '883', 'SAN FELIPE'),
('94', '884', 'PUERTO COLOMBIA'),
('94', '885', 'LA GUADALUPE'),
('94', '886', 'CACAHUAL'),
('94', '887', 'PANA PANA'),
('94', '888', 'MORICHAL'),
('95', '001', 'SAN JOSE DEL GUAVIARE'),
('95', '150', 'CALAMAR'),
('95', '200', 'MIRAFLORES'),
('95', '250', 'EL RETORNO'),
('97', '001', 'MITU'),
('97', '161', 'CARURU'),
('97', '511', 'PACOA'),
('97', '666', 'TARAIRA'),
('97', '777', 'PAPUNAUA'),
('97', '889', 'YAVARAT'),
('99', '001', 'PUERTO CARREÑO'),
('99', '524', 'LA PRIMAVERA'),
('99', '624', 'SANTA ROSALIA'),
('99', '773', 'CUMARIBO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ocupaciones`
--

CREATE TABLE `ocupaciones` (
  `id_ocup` int(11) NOT NULL,
  `ocupacion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ocupaciones`
--

INSERT INTO `ocupaciones` (`id_ocup`, `ocupacion`) VALUES
(1, 'Abogado(a)'),
(2, 'Administracion Hotelera'),
(3, 'Administrador(a) de Empresas'),
(4, 'Administrador(a) de Finanzas'),
(5, 'Administrador(a) de Fincas Agropecuarias'),
(6, 'Administrador(a) de Negocios'),
(7, 'Agente de Bienes Raices'),
(8, 'Agente de Turismo '),
(9, 'Agente de Viajes'),
(10, 'Agricultor'),
(11, 'Agronomo'),
(12, 'AlbaÃ±il'),
(13, 'Almacenista'),
(14, 'Ama de Casa'),
(15, 'Analista'),
(16, 'Arquitecto(a)'),
(17, 'Artes Graficas'),
(18, 'Artes Plasticas'),
(19, 'Artista'),
(20, 'Asesor'),
(21, 'Asistente'),
(22, 'Auditor '),
(23, 'Auxiliar'),
(24, 'Auxiliar Administrativo(a)'),
(25, 'Avicultor'),
(26, 'Azafata'),
(27, 'Bananero'),
(28, 'Barbero'),
(29, 'Bibliotecaria'),
(30, 'Bombero'),
(31, 'Caficultor'),
(32, 'Cajero(a)'),
(33, 'Camillero'),
(34, 'Camionero'),
(35, 'Carnicero'),
(36, 'Carpintero'),
(37, 'Cerrajero'),
(38, 'Cheff'),
(39, 'Chofer'),
(40, 'Cocinero(a)'),
(41, 'Comerciante '),
(42, 'Comisionista'),
(43, 'Comunicador(a) Social'),
(44, 'Conductor'),
(45, 'Confeccionista'),
(46, 'Constructor'),
(47, 'Consultor'),
(48, 'Contador Publico'),
(49, 'Contratista'),
(50, 'Corredor(a) de Bolsa'),
(51, 'Corredor(a) de Seguros'),
(52, 'Cosmetologo(a)'),
(53, 'Curador(a) de Arte'),
(54, 'Decorador(a)'),
(55, 'Delineante de Arquitectura'),
(56, 'Deportista'),
(57, 'Desempleado(a)'),
(58, 'Dibujante'),
(59, 'DiseÃ±ador(a)'),
(60, 'DiseÃ±o Publicitario'),
(61, 'Docente'),
(62, 'Ebanista'),
(63, 'Economista'),
(64, 'Educador(a)'),
(65, 'Electricista'),
(66, 'Empastador(a)'),
(67, 'Empleada Domestica'),
(68, 'Empleado (a)  Bancario'),
(69, 'Empleado(a)'),
(70, 'Empresario(a)  '),
(71, 'Enfermero(a) Profesional'),
(72, 'Escolta'),
(73, 'Escritor(a)'),
(74, 'Estampador'),
(75, 'Esteticista'),
(76, 'Estilista'),
(77, 'Estudiante'),
(78, 'Exportador(a)'),
(79, 'Fiscal'),
(80, 'Fisioterapeuta'),
(81, 'Floricultor(a)'),
(82, 'Fonoaudiologo(a)'),
(83, 'Fotografo(a)'),
(84, 'Futbolista'),
(85, 'Ganadero'),
(86, 'Geologo(a)'),
(87, 'Guarda de Seguridad'),
(88, 'Historiador(a)'),
(89, 'Independiente'),
(90, 'Ingeniero(a)'),
(91, 'Instructor(a) de Deportes'),
(92, 'Instrumentador(a) Quirurgica'),
(93, 'Inversionista'),
(94, 'Lustrador'),
(95, 'Madre Comunitaria'),
(96, 'Manipulador(a) de Alimentos '),
(97, 'Masoterapeuta'),
(98, 'Mayordomo'),
(99, 'Mecanico(a)'),
(100, 'Medico(a) Especialista'),
(101, 'Medico(a) Especialista'),
(102, 'Medico(a) General'),
(103, 'Medico(a) Veterinario'),
(104, 'Mensajero(a)'),
(105, 'Mercaderista'),
(106, 'Militar'),
(107, 'Minero'),
(108, 'Modelo'),
(109, 'Modista'),
(110, 'Monje'),
(111, 'Montador'),
(112, 'Musico'),
(113, 'Negociante'),
(114, 'Negocios Internacionales'),
(115, 'NiÃ±era'),
(116, 'No aplica'),
(117, 'Odontologo(a)'),
(118, 'Oficial de Policia'),
(119, 'Oficios Varios'),
(120, 'Operador de Maquinaria Pesada'),
(121, 'Operador de Montacargas'),
(122, 'Operario(a)'),
(123, 'Ortodoncista'),
(124, 'Otras Ocupaciones'),
(125, 'Panadero(a)'),
(126, 'Paramedico'),
(127, 'Pastor'),
(128, 'Pensionado(a)'),
(129, 'Periodista'),
(130, 'Piloto(a)'),
(131, 'Pintor'),
(132, 'Plomero'),
(133, 'Politologo(a)'),
(134, 'Porcicultor'),
(135, 'Portero'),
(136, 'Profesor(a)'),
(137, 'Psicologo(a)'),
(138, 'Publicista'),
(139, 'Pulidor '),
(140, 'Quimica Farmaceutica'),
(141, 'Radio Operador(a)'),
(142, 'Recolector(a)'),
(143, 'Recreacionista'),
(144, 'Regente de Farmacia'),
(145, 'Religiosa'),
(146, 'Representante de Ventas'),
(147, 'Sacerdote'),
(148, 'Sastre'),
(149, 'Secretario(a)'),
(150, 'Sociologo(a)'),
(151, 'Soldador'),
(152, 'Supernumerario(a)'),
(153, 'Taxista'),
(154, 'Tecnico Deportivo'),
(155, 'Tecnico(a) '),
(156, 'Tecnologo(a)'),
(157, 'Terapeuta'),
(158, 'Tipografo'),
(159, 'Topografo'),
(160, 'Trabajo Comunitario'),
(161, 'Trabajo Social'),
(162, 'Traductor(a)'),
(163, 'Transportador'),
(164, 'Turismo Internacional'),
(165, 'Vaquero'),
(166, 'Vendedor(a)'),
(167, 'Vigilante'),
(168, 'Visitador(a) Medico(a)'),
(169, 'Zootecnista'),
(170, 'Vendedor Ambulante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id` int(11) NOT NULL,
  `iso` varchar(3) COLLATE latin1_spanish_ci NOT NULL,
  `nombre` varchar(60) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id`, `iso`, `nombre`) VALUES
(1, 'AFG', 'Afganistan'),
(2, 'ALB', 'Albania'),
(3, 'DEU', 'Alemania'),
(4, 'DZA', 'Algeria'),
(5, 'AND', 'Andorra'),
(6, 'AGO', 'Angola'),
(7, 'AIA', 'Anguila'),
(8, 'ATA', 'Antartida'),
(9, 'ATG', 'Antigua y Barbuda'),
(10, 'ANT', 'Antillas Neerlandesas'),
(11, 'SAU', 'Arabia Saudita'),
(12, 'ARG', 'Argentina'),
(13, 'ARM', 'Armenia'),
(14, 'ABW', 'Aruba'),
(15, 'AUS', 'Australia'),
(16, 'AUT', 'Austria'),
(17, 'AZE', 'Azerbayan'),
(18, 'BEL', 'Belgica'),
(19, 'BHS', 'Bahamas'),
(20, 'BHR', 'Bahrein'),
(21, 'BGD', 'Bangladesh'),
(22, 'BRB', 'Barbados'),
(23, 'BLZ', 'Belice'),
(24, 'BEN', 'Benin'),
(25, 'BTN', 'Bhutan'),
(26, 'BLR', 'Bielorrusia'),
(27, 'MMR', 'Birmania'),
(28, 'BOL', 'Bolivia'),
(29, 'BIH', 'Bosnia y Herzegovina'),
(30, 'BWA', 'Botsuana'),
(31, 'BRA', 'Brasil'),
(32, 'BRN', 'Brunei'),
(33, 'BGR', 'Bulgaria'),
(34, 'BFA', 'Burkina Faso'),
(35, 'BDI', 'Burundi'),
(36, 'CPV', 'Cabo Verde'),
(37, 'KHM', 'Camboya'),
(38, 'CMR', 'Camerun'),
(39, 'CAN', 'Canada'),
(40, 'TCD', 'Chad'),
(41, 'CHL', 'Chile'),
(42, 'CHN', 'China'),
(43, 'CYP', 'Chipre'),
(44, 'VAT', 'Ciudad del Vaticano'),
(45, 'COL', 'Colombia'),
(46, 'COM', 'Comoras'),
(47, 'COG', 'Congo'),
(48, 'COD', 'Congo'),
(49, 'PRK', 'Corea del Norte'),
(50, 'KOR', 'Corea del Sur'),
(51, 'CIV', 'Costa de Marfil'),
(52, 'CRI', 'Costa Rica'),
(53, 'HRV', 'Croacia'),
(54, 'CUB', 'Cuba'),
(55, 'DNK', 'Dinamarca'),
(56, 'DMA', 'Dominica'),
(57, 'ECU', 'Ecuador'),
(58, 'EGY', 'Egipto'),
(59, 'SLV', 'El Salvador'),
(60, 'ARE', 'Emiratos arabes Unidos'),
(61, 'ERI', 'Eritrea'),
(62, 'SVK', 'Eslovaquia'),
(63, 'SVN', 'Eslovenia'),
(64, 'ESP', 'Espa?a'),
(65, 'USA', 'Estados Unidos de America'),
(66, 'EST', 'Estonia'),
(67, 'ETH', 'Etiopia'),
(68, 'PHL', 'Filipinas'),
(69, 'FIN', 'Finlandia'),
(70, 'FJI', 'Fiyi'),
(71, 'FRA', 'Francia'),
(72, 'GAB', 'Gabon'),
(73, 'GMB', 'Gambia'),
(74, 'GEO', 'Georgia'),
(75, 'GHA', 'Ghana'),
(76, 'GIB', 'Gibraltar'),
(77, 'GRD', 'Granada'),
(78, 'GRC', 'Grecia'),
(79, 'GRL', 'Groenlandia'),
(80, 'GLP', 'Guadalupe'),
(81, 'GUM', 'Guam'),
(82, 'GTM', 'Guatemala'),
(83, 'GUF', 'Guayana Francesa'),
(84, 'GGY', 'Guernsey'),
(85, 'GIN', 'Guinea'),
(86, 'GNQ', 'Guinea Ecuatorial'),
(87, 'GNB', 'Guinea-Bissau'),
(88, 'GUY', 'Guyana'),
(89, 'HTI', 'Haiti'),
(90, 'HND', 'Honduras'),
(91, 'HKG', 'Hong kong'),
(92, 'HUN', 'Hungria'),
(93, 'IND', 'India'),
(94, 'IDN', 'Indonesia'),
(95, 'IRN', 'Iran'),
(96, 'IRQ', 'Irak'),
(97, 'IRL', 'Irlanda'),
(98, 'BVT', 'Isla Bouvet'),
(99, 'IMN', 'Isla de Man'),
(100, 'CXR', 'Isla de Navidad'),
(101, 'NFK', 'Isla Norfolk'),
(102, 'ISL', 'Islandia'),
(103, 'BMU', 'Islas Bermudas'),
(104, 'CYM', 'Islas Caiman'),
(105, 'CCK', 'Islas Cocos (Keeling)'),
(106, 'COK', 'Islas Cook'),
(107, 'ALA', 'Islas de ?land'),
(108, 'FRO', 'Islas Feroe'),
(109, 'SGS', 'Islas Georgias del Sur y Sandwich del Sur'),
(110, 'HMD', 'Islas Heard y McDonald'),
(111, 'MDV', 'Islas Maldivas'),
(112, 'FLK', 'Islas Malvinas'),
(113, 'MNP', 'Islas Marianas del Norte'),
(114, 'MHL', 'Islas Marshall'),
(115, 'PCN', 'Islas Pitcairn'),
(116, 'SLB', 'Islas Salomon'),
(117, 'TCA', 'Islas Turcas y Caicos'),
(118, 'UMI', 'Islas Ultramarinas Menores de Estados Unidos'),
(119, 'VG', 'Islas Virgenes Britanicas'),
(120, 'VIR', 'Islas Virgenes de los Estados Unidos'),
(121, 'ISR', 'Israel'),
(122, 'ITA', 'Italia'),
(123, 'JAM', 'Jamaica'),
(124, 'JPN', 'Japon'),
(125, 'JEY', 'Jersey'),
(126, 'JOR', 'Jordania'),
(127, 'KAZ', 'Kazajistan'),
(128, 'KEN', 'Kenia'),
(129, 'KGZ', 'Kirgizstan'),
(130, 'KIR', 'Kiribati'),
(131, 'KWT', 'Kuwait'),
(132, 'LBN', 'Libano'),
(133, 'LAO', 'Laos'),
(134, 'LSO', 'Lesoto'),
(135, 'LVA', 'Letonia'),
(136, 'LBR', 'Liberia'),
(137, 'LBY', 'Libia'),
(138, 'LIE', 'Liechtenstein'),
(139, 'LTU', 'Lituania'),
(140, 'LUX', 'Luxemburgo'),
(141, 'MEX', 'Mexico'),
(142, 'MCO', 'Monaco'),
(143, 'MAC', 'Macao'),
(144, 'MKD', 'Maced?nia'),
(145, 'MDG', 'Madagascar'),
(146, 'MYS', 'Malasia'),
(147, 'MWI', 'Malawi'),
(148, 'MLI', 'Mali'),
(149, 'MLT', 'Malta'),
(150, 'MAR', 'Marruecos'),
(151, 'MTQ', 'Martinica'),
(152, 'MUS', 'Mauricio'),
(153, 'MRT', 'Mauritania'),
(154, 'MYT', 'Mayotte'),
(155, 'FSM', 'Micronesia'),
(156, 'MDA', 'Moldavia'),
(157, 'MNG', 'Mongolia'),
(158, 'MNE', 'Montenegro'),
(159, 'MSR', 'Montserrat'),
(160, 'MOZ', 'Mozambique'),
(161, 'NAM', 'Namibia'),
(162, 'NRU', 'Nauru'),
(163, 'NPL', 'Nepal'),
(164, 'NIC', 'Nicaragua'),
(165, 'NER', 'Niger'),
(166, 'NGA', 'Nigeria'),
(167, 'NIU', 'Niue'),
(168, 'NOR', 'Noruega'),
(169, 'NCL', 'Nueva Caledonia'),
(170, 'NZL', 'Nueva Zelanda'),
(171, 'OMN', 'Oman'),
(172, 'NLD', 'Paises Bajos'),
(173, 'PAK', 'Pakistan'),
(174, 'PLW', 'Palau'),
(175, 'PSE', 'Palestina'),
(176, 'PAN', 'Panama'),
(177, 'PNG', 'Papua Nueva Guinea'),
(178, 'PRY', 'Paraguay'),
(179, 'PER', 'Peru'),
(180, 'PYF', 'Polinesia Francesa'),
(181, 'POL', 'Polonia'),
(182, 'PRT', 'Portugal'),
(183, 'PRI', 'Puerto Rico'),
(184, 'QAT', 'Qatar'),
(185, 'GBR', 'Reino Unido'),
(186, 'CAF', 'Republica Centroafricana'),
(187, 'CZE', 'Republica Checa'),
(188, 'DOM', 'Republica Dominicana'),
(189, 'REU', 'Reunion'),
(190, 'RWA', 'Ruanda'),
(191, 'ROU', 'Rumania'),
(192, 'RUS', 'Rusia'),
(193, 'ESH', 'Sahara Occidental'),
(194, 'WSM', 'Samoa'),
(195, 'ASM', 'Samoa Americana'),
(196, 'BLM', 'San Bartolome'),
(197, 'KNA', 'San Cristobal y Nieves'),
(198, 'SMR', 'San Marino'),
(199, 'MAF', 'San Martin (Francia)'),
(200, 'SPM', 'San Pedro y Miquelon'),
(201, 'VCT', 'San Vicente y las Granadinas'),
(202, 'SHN', 'Santa Elena'),
(203, 'LCA', 'Santa Lucia'),
(204, 'STP', 'Santo Tome y Principe'),
(205, 'SEN', 'Senegal'),
(206, 'SRB', 'Serbia'),
(207, 'SYC', 'Seychelles'),
(208, 'SLE', 'Sierra Leona'),
(209, 'SGP', 'Singapur'),
(210, 'SYR', 'Siria'),
(211, 'SOM', 'Somalia'),
(212, 'LKA', 'Sri lanka'),
(213, 'ZAF', 'Sudafrica'),
(214, 'SDN', 'Sudan'),
(215, 'SWE', 'Suecia'),
(216, 'CHE', 'Suiza'),
(217, 'SUR', 'Surinam'),
(218, 'SJM', 'Svalbard y Jan Mayen'),
(219, 'SWZ', 'Swazilandia'),
(220, 'TJK', 'Tadjikistan'),
(221, 'THA', 'Tailandia'),
(222, 'TWN', 'Taiwan'),
(223, 'TZA', 'Tanzania'),
(224, 'IOT', 'Territorio Britanico del Oceano indico'),
(225, 'ATF', 'Territorios Australes y Antarticas Franceses'),
(226, 'TLS', 'Timor Oriental'),
(227, 'TGO', 'Togo'),
(228, 'TKL', 'Tokelau'),
(229, 'TON', 'Tonga'),
(230, 'TTO', 'Trinidad y Tobago'),
(231, 'TUN', 'Tunez'),
(232, 'TKM', 'Turkmenistan'),
(233, 'TUR', 'Turquia'),
(234, 'TUV', 'Tuvalu'),
(235, 'UKR', 'Ucrania'),
(236, 'UGA', 'Uganda'),
(237, 'URY', 'Uruguay'),
(238, 'UZB', 'Uzbekistan'),
(239, 'VUT', 'Vanuatu'),
(240, 'VEN', 'Venezuela'),
(241, 'VNM', 'Vietnam'),
(242, 'WLF', 'Wallis y Futuna'),
(243, 'YEM', 'Yemen'),
(244, 'DJI', 'Yibuti'),
(245, 'ZMB', 'Zambia'),
(246, 'ZWE', 'Zimbabue');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodo_contables`
--

CREATE TABLE `periodo_contables` (
  `idperiodo` int(11) NOT NULL,
  `fecha_inicial` date NOT NULL,
  `fecha_final` date NOT NULL,
  `Codigo` varchar(45) NOT NULL,
  `estado` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `fecharegistro` datetime NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fechactualizado` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `periodo_contables`
--

INSERT INTO `periodo_contables` (`idperiodo`, `fecha_inicial`, `fecha_final`, `Codigo`, `estado`, `idusuario`, `fecharegistro`, `id_usuario`, `fechactualizado`) VALUES
(4, '2020-01-01', '2020-01-01', '2020', 2, 60, '2020-06-26 17:14:14', 60, '2020-07-02 19:31:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `idpermiso` int(11) NOT NULL,
  `idtipopermiso` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `fecharegistro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`idpermiso`, `idtipopermiso`, `idusuario`, `usuario`, `fecharegistro`) VALUES
(99, 7, 66, 60, '2020-06-30 18:24:20'),
(100, 8, 66, 60, '2020-06-30 18:24:20'),
(101, 9, 66, 60, '2020-06-30 18:24:20'),
(102, 10, 66, 60, '2020-06-30 18:24:20'),
(103, 11, 66, 60, '2020-06-30 18:24:20'),
(265, 1, 61, 2, '2020-06-30 23:21:14'),
(266, 2, 61, 2, '2020-06-30 23:21:14'),
(267, 3, 61, 2, '2020-06-30 23:21:14'),
(268, 4, 61, 2, '2020-06-30 23:21:14'),
(269, 5, 61, 2, '2020-06-30 23:21:14'),
(270, 6, 61, 2, '2020-06-30 23:21:14'),
(271, 7, 61, 2, '2020-06-30 23:21:14'),
(272, 8, 61, 2, '2020-06-30 23:21:14'),
(273, 9, 61, 2, '2020-06-30 23:21:14'),
(274, 10, 61, 2, '2020-06-30 23:21:14'),
(275, 11, 61, 2, '2020-06-30 23:21:14'),
(276, 12, 61, 2, '2020-06-30 23:21:14'),
(277, 1, 60, 60, '2020-07-01 05:51:12'),
(278, 2, 60, 60, '2020-07-01 05:51:12'),
(279, 3, 60, 60, '2020-07-01 05:51:12'),
(280, 4, 60, 60, '2020-07-01 05:51:12'),
(281, 5, 60, 60, '2020-07-01 05:51:12'),
(282, 6, 60, 60, '2020-07-01 05:51:12'),
(283, 7, 60, 60, '2020-07-01 05:51:12'),
(284, 8, 60, 60, '2020-07-01 05:51:12'),
(285, 9, 60, 60, '2020-07-01 05:51:12'),
(286, 10, 60, 60, '2020-07-01 05:51:12'),
(287, 11, 60, 60, '2020-07-01 05:51:12'),
(288, 12, 60, 60, '2020-07-01 05:51:12'),
(289, 13, 60, 60, '2020-07-01 05:51:12'),
(290, 14, 60, 60, '2020-07-01 05:51:12'),
(291, 15, 60, 60, '2020-07-01 05:51:12'),
(292, 7, 62, 3, '2020-07-01 05:58:58'),
(293, 8, 62, 3, '2020-07-01 05:58:58'),
(294, 9, 62, 3, '2020-07-01 05:58:58'),
(295, 10, 62, 3, '2020-07-01 05:58:58'),
(296, 11, 62, 3, '2020-07-01 05:58:58'),
(297, 15, 62, 3, '2020-07-01 05:58:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plan_cuenta`
--

CREATE TABLE `plan_cuenta` (
  `idc` int(11) NOT NULL,
  `codigoclase` int(11) NOT NULL,
  `grupoid` int(11) NOT NULL,
  `n_digitos` int(4) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecharegistro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `plan_cuenta`
--

INSERT INTO `plan_cuenta` (`idc`, `codigoclase`, `grupoid`, `n_digitos`, `nombre`, `id_usuario`, `fecharegistro`) VALUES
(1, 1, 1, 1105, 'Caja', 1, '2020-06-24 21:11:04'),
(2, 1, 1, 1110, 'Bancos', 1, '2020-06-24 21:11:04'),
(3, 1, 1, 1110, 'Bancos', 1, '2020-06-24 21:11:04'),
(4, 1, 1, 1115, 'Remesas en tránsito', 1, '2020-06-24 21:11:04'),
(5, 1, 1, 1120, 'Cuentas de ahorro', 1, '2020-06-24 21:11:04'),
(6, 1, 1, 1125, 'Fondos', 1, '2020-06-24 21:11:04'),
(7, 1, 1, 12, 'Inversiones', 1, '2020-06-24 21:11:04'),
(8, 1, 1, 1205, 'Acciones', 1, '2020-06-24 21:11:04'),
(9, 1, 1, 1210, 'Cuotas o partes de interés social', 1, '2020-06-24 21:11:04'),
(10, 1, 1, 1215, 'Bonos', 1, '2020-06-24 21:11:04'),
(11, 1, 1, 1220, 'Cédulas', 1, '2020-06-24 21:11:04'),
(12, 1, 1, 1225, 'Certificados', 1, '2020-06-24 21:11:04'),
(13, 1, 1, 1230, 'Papeles comerciales', 1, '2020-06-24 21:11:04'),
(14, 1, 1, 1235, 'Titulos', 1, '2020-06-24 21:11:04'),
(15, 1, 1, 1240, 'Aceptaciones bancarias o financieras', 1, '2020-06-24 21:11:04'),
(16, 1, 1, 1245, 'Derechos fiduciarios', 1, '2020-06-24 21:11:04'),
(17, 1, 1, 1250, 'Derechos de recompra de inversiones negociada', 1, '2020-06-24 21:11:04'),
(18, 1, 1, 1255, 'Obligatorias', 1, '2020-06-24 21:11:04'),
(19, 1, 1, 1260, 'Cuentas en participación', 1, '2020-06-24 21:11:04'),
(20, 1, 1, 1295, 'Otras inversiones', 1, '2020-06-24 21:11:04'),
(21, 1, 1, 1299, 'Provisiones', 1, '2020-06-24 21:11:04'),
(22, 1, 1, 13, 'Deudores', 1, '2020-06-24 21:11:04'),
(23, 1, 1, 1305, 'Clientes', 1, '2020-06-24 21:11:04'),
(24, 1, 1, 1310, 'Cuentas corrientes comerciales', 1, '2020-06-24 21:11:04'),
(25, 1, 1, 11101, 'Caja', 1, '2020-06-25 09:04:52'),
(26, 1, 1, 11201, 'Bancos', 1, '2020-06-25 09:04:52'),
(27, 1, 1, 11301, 'Insumos', 1, '2020-06-25 09:04:52'),
(28, 1, 1, 11401, 'Productos en Proceso', 1, '2020-06-25 09:04:52'),
(29, 1, 1, 11501, 'Mercaderías', 1, '2020-06-25 09:04:52'),
(30, 1, 1, 11601, 'Depósito a Plazo', 1, '2020-06-25 09:04:52'),
(31, 1, 1, 11701, 'Valores Negociables', 1, '2020-06-25 09:04:52'),
(32, 1, 1, 11801, 'Deudores por Ventas', 1, '2020-06-25 09:04:52'),
(33, 1, 1, 11901, 'Documentos por cobrar', 1, '2020-06-25 09:04:52'),
(34, 1, 1, 111001, 'Documentos por cobrar de Terceros', 1, '2020-06-25 09:04:52'),
(35, 1, 1, 111101, 'Documentos y Cuentas por cobrar a Empresas Relacionadas', 1, '2020-06-25 09:04:52'),
(36, 1, 1, 111201, 'Documentos y Cuentas por cobrar a Empresas No Relacionadas', 1, '2020-06-25 11:45:02'),
(37, 1, 1, 111301, 'Estimación Deudores Incobrable(Provisión)', 1, '2020-06-25 11:45:02'),
(38, 1, 1, 111401, 'Deudores varios', 1, '2020-06-25 11:45:02'),
(39, 2, 2, 21101, 'Obligaciones con Bancos e Instituciones Financieras', 1, '2020-06-25 11:50:23'),
(40, 2, 2, 21201, 'Obligaciones con el público(pagarés)', 1, '2020-06-25 11:50:23'),
(41, 2, 2, 21301, 'Cuentas y Documentos por pagar', 1, '2020-06-25 11:50:23'),
(42, 2, 2, 21401, 'Documentos y Cuentas por Pagar Empresas Relacionadas', 1, '2020-06-25 11:50:23'),
(43, 2, 2, 21501, 'Documentos Y Cuentas por Pagar Empresas No Relacionadas', 1, '2020-06-25 11:50:23'),
(44, 2, 2, 21601, 'Cuenta Corriente Comitente', 1, '2020-06-25 11:50:23'),
(45, 2, 2, 21701, 'Acredores Varios', 1, '2020-06-25 11:50:23'),
(46, 2, 2, 21801, 'Obligaciones o Acredores por Leasing porción C/P Varios', 1, '2020-06-25 11:50:23'),
(47, 2, 2, 21901, 'Interes diferidos por leasing', 1, '2020-06-25 11:50:23'),
(48, 2, 2, 211001, 'Provisiones', 1, '2020-06-25 11:50:23'),
(49, 2, 2, 211101, 'Remuneraciones por Pagar', 1, '2020-06-25 11:50:23'),
(50, 2, 2, 211301, 'Impuestos Único por Pagar', 1, '2020-06-25 11:50:23'),
(51, 2, 2, 211401, 'Retenciones por Pagar Varios', 1, '2020-06-25 11:50:23'),
(52, 2, 2, 211501, 'Impuesto a la Renta por Pagar', 1, '2020-06-25 11:50:23'),
(53, 2, 2, 211601, 'Otros Impuestos Por Pagar', 1, '2020-06-25 11:50:23'),
(54, 2, 2, 211701, 'Iva Débitos Varios', 1, '2020-06-25 11:50:23'),
(55, 2, 2, 211801, 'Impuesto Adicional Débito', 1, '2020-06-25 11:50:23'),
(56, 2, 2, 211901, 'Impuesto Ley 18.211 Débitos', 1, '2020-06-25 11:50:23'),
(57, 2, 2, 212001, 'Impuestos Diferidos', 1, '2020-06-25 11:50:23'),
(58, 2, 2, 212101, 'Ingresos percibidos por adelantado', 1, '2020-06-25 11:50:23'),
(59, 2, 2, 212201, 'Dépositos Garantía de Envases', 1, '2020-06-25 11:50:23'),
(60, 2, 2, 212301, 'Otros Pasivos Circulantes Varios', 1, '2020-06-25 11:50:23'),
(61, 3, 3, 31101, 'Capital Pagado', 1, '2020-06-25 12:11:35'),
(62, 3, 3, 31201, 'Reserva Revalorización Capital Propio', 1, '2020-06-25 12:11:35'),
(63, 3, 3, 31101, 'Capital Pagado', 1, '2020-06-25 12:11:35'),
(64, 3, 3, 31201, 'Reserva Revalorización Capital Propio', 1, '2020-06-25 12:11:35'),
(65, 3, 3, 31301, 'Otras Reservas', 1, '2020-06-25 12:11:35'),
(66, 3, 3, 31401, 'Cuenta Obligada Socio', 1, '2020-06-25 12:11:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `idrol` int(11) NOT NULL,
  `nombre_rol` varchar(15) NOT NULL,
  `usuario` int(11) NOT NULL,
  `fechaingreso` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`idrol`, `nombre_rol`, `usuario`, `fechaingreso`) VALUES
(1, 'Administrador', 1, '2020-05-18 19:56:17'),
(2, 'Umbrella', 2, '2020-05-18 19:56:17'),
(3, 'Secretaria', 3, '2020-05-18 19:56:58'),
(4, 'Administrador S', 4, '2020-05-24 14:40:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguero_salud`
--

CREATE TABLE `seguero_salud` (
  `idsegurosalud` int(11) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `valor` decimal(10,0) NOT NULL,
  `idempleado` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `fecharegistro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `seguero_salud`
--

INSERT INTO `seguero_salud` (`idsegurosalud`, `codigo`, `nombre`, `valor`, `idempleado`, `idusuario`, `fecharegistro`) VALUES
(1, '7852', 'Sanitas eps', '7', 5, 60, '2020-05-22 06:22:59'),
(2, '85233', 'Familia en accion', '5', 5, 60, '2020-05-22 06:24:45'),
(6, '65748', 'Pruebas salud', '4', 5, 60, '2020-05-26 06:01:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguro_pension`
--

CREATE TABLE `seguro_pension` (
  `idspension` int(11) NOT NULL,
  `codigo` bigint(20) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `valor` decimal(10,0) NOT NULL,
  `idempleado` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `fecharegistro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `seguro_pension`
--

INSERT INTO `seguro_pension` (`idspension`, `codigo`, `nombre`, `valor`, `idempleado`, `idusuario`, `fecharegistro`) VALUES
(1, 7896633, 'Vejes ', '8', 5, 60, '2020-05-22 06:42:14'),
(2, 1111, 'pruebas vejes', '10', 5, 60, '2020-05-22 06:42:52'),
(3, 453534534, 'PRUEBAS', '100', 5, 63, '2020-05-24 14:53:08'),
(4, 8907907890, 'pdjdfjd', '15', 5, 63, '2020-05-24 14:55:27'),
(5, 4234234, 'dfdfsdfsd', '8', 5, 60, '2020-05-26 06:13:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcuenta`
--

CREATE TABLE `subcuenta` (
  `idsc` int(11) NOT NULL,
  `n_digitos` int(6) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecharegistro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sueldos`
--

CREATE TABLE `sueldos` (
  `idsueldo` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `rut` varchar(15) NOT NULL,
  `sueldo` varchar(15) NOT NULL,
  `idocupacion` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `fecharegistro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sueldos`
--

INSERT INTO `sueldos` (`idsueldo`, `id_empleado`, `rut`, `sueldo`, `idocupacion`, `idusuario`, `fecharegistro`) VALUES
(1, 6, '25.455.439-1', '500.000', 1, 60, '2020-07-01 19:26:43'),
(3, 5, '12.433.234-1', '600.000', 16, 60, '2020-07-01 19:29:32'),
(4, 7, '25.214.130-8', '1.000.000', 6, 60, '2020-07-01 19:33:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_diarios`
--

CREATE TABLE `tipo_diarios` (
  `idtipod` int(11) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecharegistro` datetime NOT NULL,
  `idusuario` int(11) NOT NULL,
  `fechactualizado` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_diarios`
--

INSERT INTO `tipo_diarios` (`idtipod`, `codigo`, `nombre`, `id_usuario`, `fecharegistro`, `idusuario`, `fechactualizado`) VALUES
(1, '1', 'Diario de Facturas', 1, '2020-06-25 18:56:35', 0, '0000-00-00 00:00:00'),
(2, '2', 'Carteras de Pagos', 1, '2020-06-25 18:56:35', 0, '0000-00-00 00:00:00'),
(3, '1', 'Diario de Facturas', 1, '2020-06-25 18:56:35', 0, '0000-00-00 00:00:00'),
(4, '2', 'Carteras de Pagos', 1, '2020-06-25 18:56:35', 0, '0000-00-00 00:00:00'),
(5, '3', 'Carteras de Cobros', 1, '2020-06-25 18:56:35', 1, '2020-06-26 10:47:31'),
(6, '2', 'Factura de Cliente', 1, '2020-06-25 18:56:35', 0, '0000-00-00 00:00:00'),
(7, '2', 'Factura de Proveedor', 1, '2020-06-25 18:56:35', 0, '0000-00-00 00:00:00'),
(8, '2', 'Operaciones varias', 1, '2020-06-25 18:56:35', 0, '0000-00-00 00:00:00'),
(9, '10', 'Diario de cobros pagos pruebas', 60, '2020-06-26 09:51:17', 60, '2020-06-26 10:49:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_permisos`
--

CREATE TABLE `tipo_permisos` (
  `idtipopermiso` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `fecharegistro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_permisos`
--

INSERT INTO `tipo_permisos` (`idtipopermiso`, `nombre`, `idusuario`, `fecharegistro`) VALUES
(1, 'Empleados', 60, '2020-06-30 10:10:57'),
(2, 'Empresas', 60, '2020-06-30 10:10:57'),
(3, 'Sueldos', 60, '2020-06-30 10:10:57'),
(4, 'Seguro Pension', 60, '2020-06-30 10:10:57'),
(5, 'Seguro Salud', 60, '2020-06-30 10:10:57'),
(6, 'Usuarios', 60, '2020-06-30 10:10:57'),
(7, 'Reporte Balance', 60, '2020-06-30 10:10:57'),
(8, 'Reporte Diarios', 60, '2020-06-30 10:10:57'),
(9, 'Reporte Mayor', 60, '2020-06-30 10:10:57'),
(10, 'Periodo Contables', 60, '2020-06-30 10:10:57'),
(11, 'Plan Cuenta', 60, '2020-06-30 10:10:57'),
(12, 'Contabilidad', 60, '0000-00-00 00:00:00'),
(13, 'Diarios', 60, '2020-06-30 23:39:11'),
(14, 'Asientos Contables', 60, '0000-00-00 00:00:00'),
(15, 'Dashboard', 60, '2020-07-01 05:48:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(120) COLLATE utf8_spanish_ci NOT NULL,
  `tipodocumento` enum('DNI','CC','RUT') COLLATE utf8_spanish_ci NOT NULL,
  `n_documento` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `celular` bigint(20) NOT NULL,
  `telefono` bigint(20) NOT NULL,
  `email` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `usuario` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(120) COLLATE utf8_spanish_ci NOT NULL,
  `idrol` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `fecharegistro` datetime NOT NULL,
  `usuario2` int(11) NOT NULL,
  `fechactualizado` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `tipodocumento`, `n_documento`, `celular`, `telefono`, `email`, `direccion`, `usuario`, `password`, `idrol`, `estado`, `idusuario`, `fecharegistro`, `usuario2`, `fechactualizado`) VALUES
(60, 'Umbrella', 'CC', '11.497.663-6', 3229856325, 78965236, 'umbrellasoft@gmail.com', 'chile', 'umbrella', 'f8646413250815dc8db8e6304efa96cf4c8ce23f', 2, 1, 60, '2020-05-18 19:57:47', 60, '2020-07-01 05:51:12'),
(61, 'Joel', 'CC', '7.448.349-6', 4956336, 3229709158, 'jjvalencia0603@gmail.com', 'Itgaui - olivares', 'jowel12', 'f77a642752fd2d625f2fa439a8dcc7e6ec3d7544', 1, 1, 2, '2020-05-18 19:57:47', 2, '2020-06-30 23:21:14'),
(62, 'evellyn', 'CC', '13.627.573-9', 45787878, 787878787, 'evellyn@gmail.com', 'itagui - olivares', 'secretaria', 'a52766fd6c0e89fe1b4814d9958717412785666f', 3, 1, 3, '2020-05-18 19:59:18', 3, '2020-07-01 05:58:58'),
(63, 'Admin2', 'DNI', '', 0, 0, '', '', 'admin2', 'ea47adbf145909f5ca34ffda57fb753fd1307c85', 4, 1, 4, '2020-05-24 14:36:52', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura para la vista `ficharolpago`
--
DROP TABLE IF EXISTS `ficharolpago`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ficharolpago`  AS  select `e`.`rut` AS `rut`,`e`.`nombres` AS `nombres`,`o`.`ocupacion` AS `ocupacion`,`s`.`sueldo` AS `SueldoLiquido`,`emp`.`nombre` AS `NombreEmpresa` from (((`empleados` `e` join `sueldos` `s` on(`e`.`idempleado` = `s`.`id_empleado`)) join `empresa` `emp` on(`emp`.`idempresa` = `e`.`idempresa`)) join `ocupaciones` `o` on(`s`.`idocupacion` = `o`.`id_ocup`)) order by `e`.`nombres` ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asientos_contables`
--
ALTER TABLE `asientos_contables`
  ADD PRIMARY KEY (`idasientoc`),
  ADD KEY `idtipodiario` (`idtipodiario`),
  ADD KEY `idempresa` (`idempresa`),
  ADD KEY `idestado` (`idestado`),
  ADD KEY `idusuario` (`idusuario`),
  ADD KEY `idusuarioeditado` (`idusuarioeditado`);

--
-- Indices de la tabla `asignacion_sueldos`
--
ALTER TABLE `asignacion_sueldos`
  ADD PRIMARY KEY (`id_Asignacion`),
  ADD UNIQUE KEY `id_Asignacion` (`id_Asignacion`,`id_sueldo`,`id_empleado`,`rut`,`id_ocupacion`,`id_usuario`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `categoria_gastos`
--
ALTER TABLE `categoria_gastos`
  ADD PRIMARY KEY (`idcategoriag`),
  ADD KEY `usuario` (`usuario`),
  ADD KEY `usuarioactualizado` (`usuarioactualizado`);

--
-- Indices de la tabla `categoria_ingresos`
--
ALTER TABLE `categoria_ingresos`
  ADD PRIMARY KEY (`idcategoriai`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`idciudad`);

--
-- Indices de la tabla `clase_cuenta`
--
ALTER TABLE `clase_cuenta`
  ADD PRIMARY KEY (`idcc`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `configuracion_empresa`
--
ALTER TABLE `configuracion_empresa`
  ADD PRIMARY KEY (`idconfig`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `usuarioeditado` (`usuarioeditado`);

--
-- Indices de la tabla `cuentasbancos`
--
ALTER TABLE `cuentasbancos`
  ADD PRIMARY KEY (`idcuenta`);

--
-- Indices de la tabla `dptos`
--
ALTER TABLE `dptos`
  ADD PRIMARY KEY (`idptos`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`idempleado`),
  ADD UNIQUE KEY `rut` (`rut`),
  ADD KEY `idempresa` (`idempresa`),
  ADD KEY `idciudad` (`idciudad`),
  ADD KEY `idusuario` (`idusuario`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`idempresa`),
  ADD UNIQUE KEY `idempresa` (`idempresa`),
  ADD KEY `idusuario` (`idusuario`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`idestado`);

--
-- Indices de la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD PRIMARY KEY (`idgastos`),
  ADD KEY `idcuenta` (`idcuenta`),
  ADD KEY `idcategoria` (`idcategoria`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`idg`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  ADD PRIMARY KEY (`id_ingreso`),
  ADD KEY `idcuenta` (`idcuenta`),
  ADD KEY `idcategoria` (`idcategoria`);

--
-- Indices de la tabla `ingresossistema`
--
ALTER TABLE `ingresossistema`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `libromayor`
--
ALTER TABLE `libromayor`
  ADD KEY `codigocuenta` (`codigocuenta`),
  ADD KEY `idtipolibro` (`idtipolibro`),
  ADD KEY `idasientocontable` (`idasientocontable`);

--
-- Indices de la tabla `libro_diario`
--
ALTER TABLE `libro_diario`
  ADD KEY `codigocuenta` (`codigocuenta`),
  ADD KEY `idtipolibro` (`idtipolibro`),
  ADD KEY `idasientocontable` (`idasientocontable`);

--
-- Indices de la tabla `ocupaciones`
--
ALTER TABLE `ocupaciones`
  ADD PRIMARY KEY (`id_ocup`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `periodo_contables`
--
ALTER TABLE `periodo_contables`
  ADD PRIMARY KEY (`idperiodo`),
  ADD KEY `estado` (`estado`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`idpermiso`),
  ADD KEY `idusuario` (`idusuario`),
  ADD KEY `idtipopermiso` (`idtipopermiso`),
  ADD KEY `usuario` (`usuario`);

--
-- Indices de la tabla `plan_cuenta`
--
ALTER TABLE `plan_cuenta`
  ADD PRIMARY KEY (`idc`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `codigoclase` (`codigoclase`),
  ADD KEY `grupoid` (`grupoid`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`idrol`),
  ADD KEY `usuario` (`usuario`);

--
-- Indices de la tabla `seguero_salud`
--
ALTER TABLE `seguero_salud`
  ADD PRIMARY KEY (`idsegurosalud`),
  ADD KEY `idempleado` (`idempleado`),
  ADD KEY `idusuario` (`idusuario`);

--
-- Indices de la tabla `seguro_pension`
--
ALTER TABLE `seguro_pension`
  ADD PRIMARY KEY (`idspension`),
  ADD KEY `idusuario` (`idusuario`),
  ADD KEY `idempleado` (`idempleado`);

--
-- Indices de la tabla `subcuenta`
--
ALTER TABLE `subcuenta`
  ADD PRIMARY KEY (`idsc`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `sueldos`
--
ALTER TABLE `sueldos`
  ADD PRIMARY KEY (`idsueldo`),
  ADD UNIQUE KEY `rut` (`rut`),
  ADD UNIQUE KEY `idsueldo` (`idsueldo`) USING BTREE,
  ADD UNIQUE KEY `id_empleado` (`id_empleado`),
  ADD KEY `idocupacion` (`idocupacion`),
  ADD KEY `idusuario` (`idusuario`);

--
-- Indices de la tabla `tipo_diarios`
--
ALTER TABLE `tipo_diarios`
  ADD PRIMARY KEY (`idtipod`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `idusuario` (`idusuario`);

--
-- Indices de la tabla `tipo_permisos`
--
ALTER TABLE `tipo_permisos`
  ADD PRIMARY KEY (`idtipopermiso`),
  ADD KEY `idusuario` (`idusuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idrol` (`idrol`),
  ADD KEY `usuario2` (`usuario2`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asientos_contables`
--
ALTER TABLE `asientos_contables`
  MODIFY `idasientoc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asignacion_sueldos`
--
ALTER TABLE `asignacion_sueldos`
  MODIFY `id_Asignacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categoria_gastos`
--
ALTER TABLE `categoria_gastos`
  MODIFY `idcategoriag` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `categoria_ingresos`
--
ALTER TABLE `categoria_ingresos`
  MODIFY `idcategoriai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `idciudad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clase_cuenta`
--
ALTER TABLE `clase_cuenta`
  MODIFY `idcc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `configuracion_empresa`
--
ALTER TABLE `configuracion_empresa`
  MODIFY `idconfig` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cuentasbancos`
--
ALTER TABLE `cuentasbancos`
  MODIFY `idcuenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `dptos`
--
ALTER TABLE `dptos`
  MODIFY `idptos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `idempleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `idempresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `idestado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `gastos`
--
ALTER TABLE `gastos`
  MODIFY `idgastos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `grupo`
--
ALTER TABLE `grupo`
  MODIFY `idg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  MODIFY `id_ingreso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ingresossistema`
--
ALTER TABLE `ingresossistema`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ocupaciones`
--
ALTER TABLE `ocupaciones`
  MODIFY `id_ocup` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT de la tabla `periodo_contables`
--
ALTER TABLE `periodo_contables`
  MODIFY `idperiodo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `idpermiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- AUTO_INCREMENT de la tabla `plan_cuenta`
--
ALTER TABLE `plan_cuenta`
  MODIFY `idc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `idrol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `seguero_salud`
--
ALTER TABLE `seguero_salud`
  MODIFY `idsegurosalud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `seguro_pension`
--
ALTER TABLE `seguro_pension`
  MODIFY `idspension` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `subcuenta`
--
ALTER TABLE `subcuenta`
  MODIFY `idsc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sueldos`
--
ALTER TABLE `sueldos`
  MODIFY `idsueldo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tipo_diarios`
--
ALTER TABLE `tipo_diarios`
  MODIFY `idtipod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tipo_permisos`
--
ALTER TABLE `tipo_permisos`
  MODIFY `idtipopermiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asientos_contables`
--
ALTER TABLE `asientos_contables`
  ADD CONSTRAINT `asientos_contables_ibfk_1` FOREIGN KEY (`idtipodiario`) REFERENCES `tipo_diarios` (`idtipod`) ON UPDATE CASCADE,
  ADD CONSTRAINT `asientos_contables_ibfk_2` FOREIGN KEY (`idempresa`) REFERENCES `empresa` (`idempresa`) ON UPDATE CASCADE,
  ADD CONSTRAINT `asientos_contables_ibfk_3` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `asientos_contables_ibfk_4` FOREIGN KEY (`idestado`) REFERENCES `estado` (`idestado`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `asignacion_sueldos`
--
ALTER TABLE `asignacion_sueldos`
  ADD CONSTRAINT `id_empleado` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`idempleado`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ingresos`
--
ALTER TABLE `ingresos`
  ADD CONSTRAINT `ingresos_ibfk_2` FOREIGN KEY (`idcategoria`) REFERENCES `categoria_ingresos` (`idcategoriai`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ingresos_ibfk_3` FOREIGN KEY (`idcuenta`) REFERENCES `cuentasbancos` (`idcuenta`);

--
-- Filtros para la tabla `libromayor`
--
ALTER TABLE `libromayor`
  ADD CONSTRAINT `libromayor_ibfk_1` FOREIGN KEY (`codigocuenta`) REFERENCES `plan_cuenta` (`idc`) ON UPDATE CASCADE,
  ADD CONSTRAINT `libromayor_ibfk_2` FOREIGN KEY (`idtipolibro`) REFERENCES `tipo_diarios` (`idtipod`) ON UPDATE CASCADE,
  ADD CONSTRAINT `libromayor_ibfk_3` FOREIGN KEY (`idasientocontable`) REFERENCES `asientos_contables` (`idasientoc`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `libro_diario`
--
ALTER TABLE `libro_diario`
  ADD CONSTRAINT `libro_diario_ibfk_1` FOREIGN KEY (`codigocuenta`) REFERENCES `plan_cuenta` (`idc`) ON UPDATE CASCADE,
  ADD CONSTRAINT `libro_diario_ibfk_2` FOREIGN KEY (`idtipolibro`) REFERENCES `tipo_diarios` (`idtipod`) ON UPDATE CASCADE,
  ADD CONSTRAINT `libro_diario_ibfk_3` FOREIGN KEY (`idasientocontable`) REFERENCES `asientos_contables` (`idasientoc`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `plan_cuenta`
--
ALTER TABLE `plan_cuenta`
  ADD CONSTRAINT `plan_cuenta_ibfk_1` FOREIGN KEY (`codigoclase`) REFERENCES `clase_cuenta` (`idcc`) ON UPDATE CASCADE,
  ADD CONSTRAINT `plan_cuenta_ibfk_2` FOREIGN KEY (`grupoid`) REFERENCES `grupo` (`idg`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `seguero_salud`
--
ALTER TABLE `seguero_salud`
  ADD CONSTRAINT `seguero_salud_ibfk_1` FOREIGN KEY (`idempleado`) REFERENCES `empleados` (`idempleado`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `seguro_pension`
--
ALTER TABLE `seguro_pension`
  ADD CONSTRAINT `seguro_pension_ibfk_1` FOREIGN KEY (`idempleado`) REFERENCES `empleados` (`idempleado`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `sueldos`
--
ALTER TABLE `sueldos`
  ADD CONSTRAINT `id_empleado_fk` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`idempleado`) ON UPDATE CASCADE,
  ADD CONSTRAINT `id_ocupacion_fk` FOREIGN KEY (`idocupacion`) REFERENCES `ocupaciones` (`id_ocup`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`idrol`) REFERENCES `roles` (`idrol`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
