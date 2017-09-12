-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-09-2017 a las 16:29:20
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_cuentas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `titulo` varchar(40) NOT NULL,
  `comentario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `usuario_id`, `titulo`, `comentario`) VALUES
(1, 1, 'titulo 1', 'comentario 1'),
(2, 2, 'titulo 2', 'comentario 2'),
(3, 3, 'titulo 3', 'comentario 3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_amonestaciones`
--

CREATE TABLE `tb_amonestaciones` (
  `id_amonestacion` int(11) NOT NULL,
  `correo_amonestado` varchar(50) NOT NULL,
  `palabra` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_clientes`
--

CREATE TABLE `tb_clientes` (
  `id_clientes` int(11) NOT NULL,
  `razon_social` varchar(100) NOT NULL,
  `fecha_registro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_clientes`
--

INSERT INTO `tb_clientes` (`id_clientes`, `razon_social`, `fecha_registro`) VALUES
(123354, 'distripollos ', '2017-08-16'),
(15478564, 'didtri telas sa', '2017-08-16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_cuenta1`
--

CREATE TABLE `tb_cuenta1` (
  `codigo_cuenta` varchar(12) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `fecha_ingreso` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_cuenta1`
--

INSERT INTO `tb_cuenta1` (`codigo_cuenta`, `descripcion`, `fecha_ingreso`) VALUES
('1', 'ACTIVO\r', '0000-00-00'),
('11', 'EFECTIVO Y EQUIVALENTES DE EFECTIVO\r', '0000-00-00'),
('1105', 'CAJA\r', '0000-00-00'),
('110505', 'Caja general\r', '0000-00-00'),
('110510', 'Cajas menores\r', '0000-00-00'),
('110515', 'Caja menor moneda extranjera\r', '0000-00-00'),
('1110', 'DEPOSITO EN INSTITUCIONES FINANCIERAS Y COOPERATIV', '0000-00-00'),
('111005', 'Cuenta corriente\r', '0000-00-00'),
('111006', 'Cuenta de ahorro\r', '0000-00-00'),
('111008', 'Depósitos a Corto Plazo\r', '0000-00-00'),
('111009', 'Fiducias\r', '0000-00-00'),
('111010', 'Fondos\r', '0000-00-00'),
('111011', 'Depósitos en el exterior\r', '0000-00-00'),
('111020', 'Descubiertos o Sobregiros Bancarios\r', '0000-00-00'),
('1130', 'FONDOS DE USO RESTRINGIDO\r', '0000-00-00'),
('113005', 'Caja\r', '0000-00-00'),
('113010', 'Depósitos en Instituciones Financieras y Cooperati', '0000-00-00'),
('113012', 'Fondos Especiales para la Administración de Liquid', '0000-00-00'),
('113020', 'Fondos en Tránsito\r', '0000-00-00'),
('113025', 'Efectivo y equivalentes al efectivo restringido co', '0000-00-00'),
('113030', 'Efectivo y equivalentes al efectivo restringido no', '0000-00-00'),
('1140', 'EQUIVALENTES DE EFECTIVO\r', '0000-00-00'),
('114005', 'Depósitos a corto plazo\r', '0000-00-00'),
('114010', 'Inversiones a corto plazo\r', '0000-00-00'),
('114015', 'Otros acuerdos bancarios\r', '0000-00-00'),
('12', 'ACTIVOS FINANCIEROS\r', '0000-00-00'),
('1201', 'ACTIVOS FINANCIEROS A VALOR RAZONABLE CON CAMBIOS ', '0000-00-00'),
('120101', 'Activos financieros a valor razonable con cambios ', '0000-00-00'),
('120105', 'Activos financieros a valor razonable con cambios ', '0000-00-00'),
('120106', 'Activos financieros a valor razonable con cambios ', '0000-00-00'),
('1202', 'ACTIVOS FINANCIEROS DISPONIBLES PARA LA VENTA\r', '0000-00-00'),
('120201', 'Títulos de Renta Fija\r', '0000-00-00'),
('120205', 'Títulos de Renta Variable Contabilizados al Costo\r', '0000-00-00'),
('120210', 'Títulos de Renta Variable Contabilizados al Valor ', '0000-00-00'),
('120290', 'Otros Títulos\r', '0000-00-00'),
('120299', 'Deterioro (Cr)\r', '0000-00-00'),
('1203', 'INVERSIONES NO CORRIENTES MANTENIDAS HASTA EL VENC', '0000-00-00'),
('120301', 'Títulos de Renta Fija\r', '0000-00-00'),
('120390', 'Otros Títulos\r', '0000-00-00'),
('120395', 'Rendimientos por Cobrar\r', '0000-00-00'),
('120399', 'Deterioro (Cr)\r', '0000-00-00'),
('1204', 'INVERSIONES EN SUBSIDIARIAS, NEGOCIOS CONJUNTOS Y ', '0000-00-00'),
('120401', 'Inversiones en subsidiarias \r', '0000-00-00'),
('120402', 'Inversiones en negocios conjuntos\r', '0000-00-00'),
('120403', 'Inversiones en asociadas\r', '0000-00-00'),
('120499', 'Deterioro (Cr)\r', '0000-00-00'),
('13', 'CUENTAS COMERCIALES POR COBRAR Y OTRAS CUENTAS POR', '0000-00-00'),
('1306', 'VENTA DE BIENES\r', '0000-00-00'),
('130606', 'Nacionales\r', '0000-00-00'),
('130607', 'Del exterior\r', '0000-00-00'),
('130690', 'Difícil cobro\r', '0000-00-00'),
('130699', 'Deterioro (Cr)\r', '0000-00-00'),
('1308', 'PRESTACIÓN DE SERVICIOS\r', '0000-00-00'),
('130806', 'Nacionales\r', '0000-00-00'),
('130807', 'Del exterior\r', '0000-00-00'),
('130890', 'Difícil cobro\r', '0000-00-00'),
('130899', 'Deterioro (Cr)\r', '0000-00-00'),
('1320', 'AVANCES Y ANTICIPOS ENTREGADOS\r', '0000-00-00'),
('132019', 'Anticipo a contratos\r', '0000-00-00'),
('132020', 'Anticipos para Mantenimientos\r', '0000-00-00'),
('132030', 'Depósitos\r', '0000-00-00'),
('132090', 'Difícil cobro\r', '0000-00-00'),
('132095', 'Pólizas de seguro\r', '0000-00-00'),
('132097', 'Anticipos a proveedores\r', '0000-00-00'),
('132099', 'Deterioro (Cr)\r', '0000-00-00'),
('1325', 'CUENTAS POR COBRAR A CARGO DE PARTES RELACIONADAS\r', '0000-00-00'),
('132505', 'Cuentas por cobrar a cargo de la controladora\r', '0000-00-00'),
('132510', 'Cuentas por cobrar a cargo de personal clave de la', '0000-00-00'),
('1340', 'ANTICIPO DE SERVICIOS NO RECIBIDOS\r', '0000-00-00'),
('134001', 'Seguros\r', '0000-00-00'),
('134003', 'Comisiones\r', '0000-00-00'),
('134004', 'Arrendamientos\r', '0000-00-00'),
('134006', 'Honorarios\r', '0000-00-00'),
('134099', 'Otros pagos anticipados\r', '0000-00-00'),
('1390', 'OTROS DEUDORES\r', '0000-00-00'),
('139012', 'Créditos a empleados\r', '0000-00-00'),
('139017', 'Préstamos a particulares\r', '0000-00-00'),
('139090', 'Difícil cobro\r', '0000-00-00'),
('139099', 'Deterioro (Cr)\r', '0000-00-00'),
('14', 'INVENTARIOS\r', '0000-00-00'),
('1405', 'MATERIAS PRIMAS \r', '2017-09-11'),
('140505', 'Materias primas\r', '2017-09-11'),
('140599', 'Deterioro (Cr)\r', '0000-00-00'),
('1410', 'TRABAJO EN CURSO\r', '0000-00-00'),
('141005', 'Productos en proceso\r', '0000-00-00'),
('141010', 'Obras de construcción en curso\r', '0000-00-00'),
('141015', 'Contratos en ejecución\r', '0000-00-00'),
('141020', 'Otros trabajos en curso\r', '0000-00-00'),
('1430', 'PRODUCTOS TERMINADOS\r', '0000-00-00'),
('143005', 'Productos manufacturados\r', '0000-00-00'),
('143010', 'Otros productos\r', '0000-00-00'),
('143099', 'Deterioro (Cr)\r', '0000-00-00'),
('1435', 'MERCADERIAS\r', '0000-00-00'),
('143505', 'Mercancías no fabricadas por la empresa\r', '0000-00-00'),
('143599', 'Deterioro (Cr)\r', '0000-00-00'),
('1455', 'SUMINISTROS DE PRODUCCION\r', '0000-00-00'),
('145525', 'Materiales y accesorios\r', '0000-00-00'),
('145599', 'Deterioro (Cr)\r', '0000-00-00'),
('1460', 'PIEZAS DE REPUESTO\r', '0000-00-00'),
('146005', 'Otros inventarios\r', '0000-00-00'),
('146099', 'Deterioro (Cr)\r', '0000-00-00'),
('1465', 'INVENTARIOS QUE SURGEN DE ACTIVIDADES DE EXTRACCIÓ', '0000-00-00'),
('146505', 'Reserva de mineral\r', '0000-00-00'),
('146510', 'Petróleo crudo\r', '0000-00-00'),
('146515', 'Petróleo y productos petroquímicos\r', '0000-00-00'),
('146520', 'Gas natural\r', '0000-00-00'),
('1470', 'INVENTARIOS QUE SURGEN DE ACTIVIDADES AGRICOLAS\r', '0000-00-00'),
('147005', 'Cultivos en desarrollo\r', '0000-00-00'),
('147010', 'Productos agrícolas\r', '0000-00-00'),
('147099', 'Deterioro (Cr)\r', '0000-00-00'),
('1490', 'OTROS INVENTARIOS\r', '0000-00-00'),
('15', 'PROPIEDADES, PLANTA Y EQUIPO\r', '0000-00-00'),
('1504', 'TERRENOS Y CONSTRUCCIONES\r', '0000-00-00'),
('150405', 'TERRENOS\r', '0000-00-00'),
('15040505', 'Modelo de Costo\r', '0000-00-00'),
('15040510', 'Modelo de Revaluación\r', '0000-00-00'),
('15040599', 'Deterioro (Cr)\r', '0000-00-00'),
('150410', 'EDIFICIOS\r', '0000-00-00'),
('15041005', 'Modelo de Costo\r', '0000-00-00'),
('15041010', 'Modelo de Revaluación\r', '0000-00-00'),
('15041015', 'Depreciación (Cr)\r', '0000-00-00'),
('1505', 'ACTIVOS DE MINERIA\r', '0000-00-00'),
('150505', 'Modelo de Costo\r', '0000-00-00'),
('150510', 'Modelo de Revaluación\r', '0000-00-00'),
('150515', 'Depreciación (Cr)\r', '0000-00-00'),
('150599', 'Deterioro (Cr)\r', '0000-00-00'),
('1506', 'ACTIVOS DE PETROLEO Y GAS\r', '0000-00-00'),
('150605', 'Modelo de Costo\r', '0000-00-00'),
('150610', 'Modelo de Revaluación\r', '0000-00-00'),
('150615', 'Depreciación (Cr)\r', '0000-00-00'),
('150699', 'Deterioro (Cr)\r', '0000-00-00'),
('1507', 'ACTIVOS TANGIBLES PARA EXPLORACIÓN Y EVALUACIÓN\r', '0000-00-00'),
('150705', 'Modelo de Costo\r', '0000-00-00'),
('150710', 'Modelo de Revaluación\r', '0000-00-00'),
('150715', 'Depreciación (Cr)\r', '0000-00-00'),
('150799', 'Deterioro (Cr)\r', '0000-00-00'),
('1508', 'CONSTRUCCIONES EN PROCESO\r', '0000-00-00'),
('150805', 'Modelo de Costo\r', '0000-00-00'),
('150899', 'Deterioro (Cr)\r', '0000-00-00'),
('1520', 'MAQUINARIA Y EQUIPO\r', '0000-00-00'),
('152005', 'Modelo de Costo\r', '0000-00-00'),
('152010', 'Modelo de Revaluación\r', '0000-00-00'),
('152015', 'Depreciación (Cr)\r', '0000-00-00'),
('152099', 'Deterioro (Cr)\r', '0000-00-00'),
('1524', 'EQUIPO DE OFICINA\r', '0000-00-00'),
('152405', 'Equipo de oficina\r', '0000-00-00'),
('15240505', 'Modelo de Costo\r', '0000-00-00'),
('15240510', 'Modelo de Revaluación\r', '0000-00-00'),
('15240515', 'Depreciación (Cr)\r', '0000-00-00'),
('15240599', 'Deterioro (Cr)\r', '0000-00-00'),
('152410', 'Equipo de computación y comunicación\r', '0000-00-00'),
('15241005', 'Modelo de Costo\r', '0000-00-00'),
('15241010', 'Modelo de Revaluación\r', '0000-00-00'),
('15241015', 'Depreciación (Cr)\r', '0000-00-00'),
('15241099', 'Deterioro (Cr)\r', '0000-00-00'),
('1525', 'ENSERES Y ACCESORIOS\r', '0000-00-00'),
('152505', 'Modelo de Costo\r', '0000-00-00'),
('152510', 'Modelo de Revaluación\r', '0000-00-00'),
('152515', 'Depreciación (Cr)\r', '0000-00-00'),
('152599', 'Deterioro (Cr)\r', '0000-00-00'),
('1540', 'VEHICULOS\r', '0000-00-00'),
('154005', 'Buques\r', '0000-00-00'),
('15400505', 'Modelo de Costo\r', '0000-00-00'),
('15400510', 'Modelo de Revaluación\r', '0000-00-00'),
('15400515', 'Depreciación Acumulada (Cr)\r', '0000-00-00'),
('15400599', 'Deterioro (Cr)\r', '0000-00-00'),
('154010', 'Aeronaves\r', '0000-00-00'),
('15401005', 'Modelo de Costo\r', '0000-00-00'),
('15401010', 'Modelo de Revaluación\r', '0000-00-00'),
('15401015', 'Depreciación Acumulada (Cr)\r', '0000-00-00'),
('15401099', 'Deterioro (Cr)\r', '0000-00-00'),
('154015', 'Equipo de transporte terrestre\r', '0000-00-00'),
('15401505', 'Modelo de Costo\r', '0000-00-00'),
('15401510', 'Modelo de Revaluación\r', '0000-00-00'),
('15401515', 'Depreciación Acumulada (Cr)\r', '0000-00-00'),
('15401599', 'Deterioro (Cr)\r', '0000-00-00'),
('1581', 'BIENES ADQUIRIDOS EN ARRENDAMIENTO FINANCIERO\r', '0000-00-00'),
('158105', 'Modelo de Costo\r', '0000-00-00'),
('158106', 'Mejoras\r', '0000-00-00'),
('158110', 'Modelo de Revaluación\r', '0000-00-00'),
('158115', 'Depreciación Acumulada (Cr)\r', '0000-00-00'),
('158199', 'Deterioro (Cr)\r', '0000-00-00'),
('1590', 'OTRAS PROPIEDADES, PLANTA Y EQUIPO\r', '0000-00-00'),
('159005', 'Modelo de Costo\r', '0000-00-00'),
('159010', 'Modelo de Revaluación\r', '0000-00-00'),
('159015', 'Depreciación Acumulada (Cr)\r', '0000-00-00'),
('159099', 'Deterioro (Cr)\r', '0000-00-00'),
('16', 'ACTIVOS INTANGIBLES Y PLUSVALIA (CRÉDITO MERCANTIL', '0000-00-00'),
('1605', 'PLUSVALIA (CRÉDITO MERCANTIL)\r', '0000-00-00'),
('160505', 'Costo\r', '0000-00-00'),
('160599', 'Deterioro (Cr)\r', '0000-00-00'),
('1610', 'ACTIVOS INTANGIBLES DISTINTOS DE LA PLUSVALÍA\r', '0000-00-00'),
('161005', 'Marcas comerciales\r', '0000-00-00'),
('16100505', 'Modelo de Costo\r', '0000-00-00'),
('16100510', 'Modelo de Revaluación\r', '0000-00-00'),
('16100515', 'Amortización Acumulada (Cr)\r', '0000-00-00'),
('16100599', 'Deterioro (Cr)\r', '0000-00-00'),
('161010', 'Derechos de propiedad intelectual, patentes y otro', '0000-00-00'),
('16101005', 'Modelo de Costo\r', '0000-00-00'),
('16101010', 'Modelo de Revaluación\r', '0000-00-00'),
('16101015', 'Amortización Acumulada (Cr)\r', '0000-00-00'),
('16101099', 'Deterioro (Cr)\r', '0000-00-00'),
('161015', 'Licencias y franquicias\r', '0000-00-00'),
('16101505', 'Modelo de Costo\r', '0000-00-00'),
('16101510', 'Modelo de Revaluación\r', '0000-00-00'),
('16101515', 'Amortización Acumulada (Cr)\r', '0000-00-00'),
('16101599', 'Deterioro (Cr)\r', '0000-00-00'),
('161020', 'Activos intangibles para exploración y evaluación\r', '0000-00-00'),
('16102005', 'Modelo de Costo\r', '0000-00-00'),
('16102010', 'Modelo de Revaluación\r', '0000-00-00'),
('16102015', 'Amortización Acumulada (Cr)\r', '0000-00-00'),
('16102099', 'Deterioro (Cr)\r', '0000-00-00'),
('161025', 'Cebeceras de periódicos o revistas y títulos de pu', '0000-00-00'),
('16102505', 'Modelo de Costo\r', '0000-00-00'),
('16102510', 'Modelo de Revaluación\r', '0000-00-00'),
('16102515', 'Amortización Acumulada (Cr)\r', '0000-00-00'),
('16102599', 'Deterioro (Cr)\r', '0000-00-00'),
('161030', 'Programas de computador\r', '0000-00-00'),
('16103005', 'Modelo de Costo\r', '0000-00-00'),
('16103010', 'Modelo de Revaluación\r', '0000-00-00'),
('16103015', 'Amortización Acumulada (Cr)\r', '0000-00-00'),
('16103099', 'Deterioro (Cr)\r', '0000-00-00'),
('161035', 'Recetas, fórmulas, modelos, diseños y prototipos\r', '0000-00-00'),
('16103505', 'Modelo de Costo\r', '0000-00-00'),
('16103510', 'Modelo de Revaluación\r', '0000-00-00'),
('16103515', 'Amortización Acumulada (Cr)\r', '0000-00-00'),
('16103599', 'Deterioro (Cr)\r', '0000-00-00'),
('161040', 'Activos intangibles en desarrollo\r', '0000-00-00'),
('16104005', 'Modelo de Costo\r', '0000-00-00'),
('16104010', 'Modelo de Revaluación\r', '0000-00-00'),
('16104015', 'Amortización Acumulada (Cr)\r', '0000-00-00'),
('16104099', 'Deterioro (Cr)\r', '0000-00-00'),
('161045', 'Otros activos intangibles\r', '0000-00-00'),
('16104505', 'Modelo de Costo\r', '0000-00-00'),
('16104510', 'Modelo de Revaluación\r', '0000-00-00'),
('16104515', 'Amortización Acumulada (Cr)\r', '0000-00-00'),
('16104599', 'Deterioro (Cr)\r', '0000-00-00'),
('17', 'ACTIVOS POR IMPUESTOS CORRIENTES\r', '0000-00-00'),
('1705', 'ACTIVOS POR IMPUESTOS CORRIENTES\r', '0000-00-00'),
('170501', 'Anticipo de impuesto sobre la renta\r', '0000-00-00'),
('170502', 'Retención en la fuente\r', '0000-00-00'),
('1710', 'ACTIVOS POR IMPUESTOS CORRIENTES DISTINTOS AL IMPU', '0000-00-00'),
('171003', 'Anticipo de impuesto de industria y comercio\r', '0000-00-00'),
('171004', 'Impuesto a las ventas retenido\r', '0000-00-00'),
('171010', 'Impuesto industria y comercio retenido\r', '0000-00-00'),
('171011', 'Sobrantes en liquidación privada de impuestos\r', '0000-00-00'),
('171050', 'Otros\r', '0000-00-00'),
('18', 'PROPIEDADES DE INVERSIÓN\r', '0000-00-00'),
('1805', 'TERRENOS\r', '0000-00-00'),
('180505', 'Costo\r', '0000-00-00'),
('180510', 'Revaluación\r', '0000-00-00'),
('180515', 'Ajustes a Valor Razonable\r', '0000-00-00'),
('180525', 'Deterioro (Cr)\r', '0000-00-00'),
('1810', 'EDIFICIOS\r', '0000-00-00'),
('181005', 'Costo\r', '0000-00-00'),
('181010', 'Revaluación\r', '0000-00-00'),
('181015', 'Ajustes a Valor Razonable\r', '0000-00-00'),
('181020', 'Depreciación Acumulada (Cr)\r', '0000-00-00'),
('181025', 'Deterioro (Cr)\r', '0000-00-00'),
('19', 'OTROS ACTIVOS\r', '0000-00-00'),
('1912', 'ACTIVOS POR IMPUESTOS DIFERIDOS\r', '0000-00-00'),
('191205', 'Inversiones financieras\r', '0000-00-00'),
('191206', 'Otros Pasivos\r', '0000-00-00'),
('1965', 'ACTIVOS BIOLÓGICOS\r', '0000-00-00'),
('196505', 'Costo\r', '0000-00-00'),
('196510', 'Valor Razonable menos costos de venta\r', '0000-00-00'),
('196515', 'Amortización Acumulada (Cr)\r', '0000-00-00'),
('196590', 'Deterioro (Cr)\r', '0000-00-00'),
('196599', 'Otros\r', '0000-00-00'),
('1970', 'ACTIVOS NO CORRIENTES MANTENIDOS PARA LA VENTA\r', '0000-00-00'),
('197005', 'Inversiones Financieras\r', '0000-00-00'),
('197010', 'Deudores Comerciales y otras cuentas por cobrar\r', '0000-00-00'),
('197015', 'Propiedad, Planta y Equipo\r', '0000-00-00'),
('197020', 'Activos Intangibles\r', '0000-00-00'),
('197090', 'Otros Activos\r', '0000-00-00'),
('197099', 'Deterioro (Cr)\r', '0000-00-00'),
('2', 'PASIVO\r', '0000-00-00'),
('21', 'OBLIGACIONES FINANCIERAS E INSTRUMENTOS DERIVADOS\r', '0000-00-00'),
('2101', 'PRESTAMOS BANCARIOS\r', '0000-00-00'),
('210104', 'Préstamos bancarios garantizados\r', '0000-00-00'),
('210105', 'Préstamos bancarios no garantizados\r', '0000-00-00'),
('210107', 'Descubiertos o Sobregiros Bancarios\r', '0000-00-00'),
('210108', 'Contratos de arrendamiento financiero\r', '0000-00-00'),
('210109', 'Pagares\r', '0000-00-00'),
('210192', 'Costos de Transacción Directamente Atribuibles (Db', '0000-00-00'),
('210194', 'Anticipo para amortizar obligaciones en moneda leg', '0000-00-00'),
('210195', 'Intereses pagados por anticipado (Db)\r', '0000-00-00'),
('210197', 'Intereses por Pagar\r', '0000-00-00'),
('210198', 'Comisiones por Pagar\r', '0000-00-00'),
('2102', 'BONOS EMITIDOS \r', '0000-00-00'),
('210201', 'Bonos emitidos \r', '0000-00-00'),
('210292', 'Costos de Transacción Directamente Atribuibles (Db', '0000-00-00'),
('210294', 'Anticipo para amortizar obligaciones en moneda leg', '0000-00-00'),
('210295', 'Intereses pagados por anticipado (Db)\r', '0000-00-00'),
('210297', 'Intereses por Pagar\r', '0000-00-00'),
('210298', 'Comisiones por Pagar\r', '0000-00-00'),
('2103', 'OBLIGACIONES SIN GARANTÍA Y PAGARÉS EMITIDOS\r', '0000-00-00'),
('210301', 'Otros préstamos\r', '0000-00-00'),
('210392', 'Costos de Transacción Directamente Atribuibles (Db', '0000-00-00'),
('210394', 'Anticipo para amortizar obligaciones en moneda leg', '0000-00-00'),
('210395', 'Intereses pagados por anticipado (Db)\r', '0000-00-00'),
('210397', 'Intereses por Pagar\r', '0000-00-00'),
('210398', 'Comisiones por Pagar\r', '0000-00-00'),
('2104', 'PAPEL COMERCIAL EMITIDO\r', '0000-00-00'),
('2105', 'OTROS PRESTAMOS\r', '0000-00-00'),
('2106', 'PASIVOS FINANCIEROS AL VALOR RAZONABLE CON CAMBIOS', '0000-00-00'),
('210605', 'Pasivos financieros a valor razonable con cambios ', '0000-00-00'),
('21060505', 'Aceptaciones Bancarias\r', '0000-00-00'),
('21060520', 'Contratos de Forward - Especulación\r', '0000-00-00'),
('21060525', 'Contratos de Forward - cobertura\r', '0000-00-00'),
('21060530', 'Contratos de Futuros - Especulación\r', '0000-00-00'),
('21060535', 'Contratos de Futuros - cobertura\r', '0000-00-00'),
('21060540', 'Swaps – Especulación\r', '0000-00-00'),
('21060545', 'Swaps – cobertura\r', '0000-00-00'),
('21060550', 'Opciones –Especulación\r', '0000-00-00'),
('21060555', 'Opciones –cobertura\r', '0000-00-00'),
('210610', 'Pasivos financieros a valor razonable con cambios ', '0000-00-00'),
('2107', 'PASIVOS FINANCIEROS A COSTO AMORTIZADO\r', '0000-00-00'),
('210705', 'Aceptaciones Bancarias\r', '0000-00-00'),
('210720', 'Contratos de Forward - Especulación\r', '0000-00-00'),
('210725', 'Contratos de Forward - cobertura\r', '0000-00-00'),
('210730', 'Contratos de Futuros - Especulación\r', '0000-00-00'),
('210735', 'Contratos de Futuros - cobertura\r', '0000-00-00'),
('210740', 'Swaps – Especulación\r', '0000-00-00'),
('210745', 'Swaps – cobertura\r', '0000-00-00'),
('210750', 'Opciones –Especulación\r', '0000-00-00'),
('210755', 'Opciones –cobertura\r', '0000-00-00'),
('23', 'CUENTAS COMERCIALES POR PAGAR Y OTRAS CUENTAS POR ', '0000-00-00'),
('2305', 'PROVEEDORES NACIONALES\r', '0000-00-00'),
('230510', 'Crédito de proveedores\r', '0000-00-00'),
('230515', 'Contratos de arrendamiento financiero\r', '0000-00-00'),
('230592', 'Costos de Transacción Directamente Atribuibles (Db', '0000-00-00'),
('230594', 'Anticipo para amortizar crédito proveedores nacion', '0000-00-00'),
('230595', 'Intereses pagados por anticipado (Db)\r', '0000-00-00'),
('230597', 'Intereses por Pagar\r', '0000-00-00'),
('230598', 'Comisiones por Pagar\r', '0000-00-00'),
('2310', 'DEL EXTERIOR\r', '0000-00-00'),
('231010', 'Crédito de proveedores\r', '0000-00-00'),
('231015', 'Contratos de arrendamiento financiero\r', '0000-00-00'),
('231092', 'Costos de Transacción Directamente Atribuibles (Db', '0000-00-00'),
('231094', 'Anticipo para amortizar crédito Público en Moneda ', '0000-00-00'),
('231095', 'Intereses pagados por anticipado (Db)\r', '0000-00-00'),
('231097', 'Intereses por Pagar\r', '0000-00-00'),
('231098', 'Comisiones por Pagar\r', '0000-00-00'),
('2315', 'CUENTAS POR PAGAR CON PARTES RELACIONADAS\r', '0000-00-00'),
('231505', 'Cuentas por cobrar a cargo de la controladora\r', '0000-00-00'),
('231510', 'Cuentas por cobrar a cargo de personal clave de la', '0000-00-00'),
('2335', 'CUENTAS COMERCIALES POR PAGAR\r', '0000-00-00'),
('233502', 'Suscripción de acciones o participaciones\r', '0000-00-00'),
('233503', 'Dividendos y participaciones\r', '0000-00-00'),
('233504', 'Deudas con accionistas o socios\r', '0000-00-00'),
('233505', 'Costos financieros\r', '0000-00-00'),
('233510', 'Costos legales\r', '0000-00-00'),
('233515', 'Libros- suscripciones- periódicos y revistas\r', '0000-00-00'),
('233520', 'Comisiones\r', '0000-00-00'),
('233525', 'Honorarios\r', '0000-00-00'),
('233530', 'Servicios técnicos\r', '0000-00-00'),
('233535', 'Servicios de mantenimiento\r', '0000-00-00'),
('233540', 'Arrendamientos\r', '0000-00-00'),
('233545', 'Transportes- fletes y acarreos\r', '0000-00-00'),
('233550', 'Servicios públicos\r', '0000-00-00'),
('233555', 'Seguros\r', '0000-00-00'),
('233560', 'Gastos de viaje\r', '0000-00-00'),
('233565', 'Gastos de representación y relaciones publicas\r', '0000-00-00'),
('233570', 'Servicios aduaneros\r', '0000-00-00'),
('233590', 'Otros acreedores\r', '0000-00-00'),
('24', 'PASIVOS POR IMPUESTOS CORRIENTES\r', '0000-00-00'),
('24040501', 'Vigencia fiscal corriente\r', '0000-00-00'),
('24040502', 'Vigencias fiscales anteriores\r', '0000-00-00'),
('2405', 'PASIVOS POR IMPUESTO CORRIENTE - IMPUESTO DE RENTA', '0000-00-00'),
('240505', 'Impuesto de renta y complementarios\r', '0000-00-00'),
('240510', 'Retención en la fuente\r', '0000-00-00'),
('24051001', 'Salarios y pagos laborales\r', '0000-00-00'),
('24051002', 'Honorarios\r', '0000-00-00'),
('24051003', 'Comisiones\r', '0000-00-00'),
('24051004', 'Servicios\r', '0000-00-00'),
('24051005', 'Arrendamientos\r', '0000-00-00'),
('24051006', 'Rendimientos financieros\r', '0000-00-00'),
('24051007', 'Compras\r', '0000-00-00'),
('24051008', 'Por pagos al exterior\r', '0000-00-00'),
('24051009', 'Por impuesto de timbre\r', '0000-00-00'),
('24051010', 'Autorretenciones\r', '0000-00-00'),
('24051011', 'Retención cree\r', '0000-00-00'),
('24051012', 'Pago retención en la fuente\r', '0000-00-00'),
('2410', 'PASIVOS POR IMPUESTO CORRIENTE DISTINTOS DEL IMPUE', '0000-00-00'),
('241005', 'Impuesto al valor agregado\r', '0000-00-00'),
('24100501', 'Venta de bienes\r', '0000-00-00'),
('24100502', 'Venta de servicios\r', '0000-00-00'),
('24100503', 'Devoluciones en compra de bienes\r', '0000-00-00'),
('24100504', 'Devoluciones en compra de servicios\r', '0000-00-00'),
('24100505', 'Compra de bienes (DB)\r', '0000-00-00'),
('24100506', 'Compra de servicios (DB)\r', '0000-00-00'),
('24100507', 'Devoluciones en venta de bienes (DB)\r', '0000-00-00'),
('24100508', 'Devoluciones en venta de servicios (DB)\r', '0000-00-00'),
('24100575', 'Impuesto a las ventas retenido (DB)\r', '0000-00-00'),
('24100580', 'Valor pagado (DB)\r', '0000-00-00'),
('241010', 'Impuesto de Industria y comercio\r', '0000-00-00'),
('24101004', 'Vigencia actual por pagar\r', '0000-00-00'),
('24101005', 'Impuesto de industria y comercio retenido Bogotá\r', '0000-00-00'),
('24101006', 'Impuesto de industria y comercio retenido Samacá\r', '0000-00-00'),
('24101010', 'Impuesto de industria y comercio retenido Sutataus', '0000-00-00'),
('24101015', 'Impuesto de industria y comercio retenido Soacha\r', '0000-00-00'),
('241015', 'Impuestos, contribucuiones y tasas por pagar \r', '0000-00-00'),
('24101503', 'Predial unificado\r', '0000-00-00'),
('24101505', 'Valorización\r', '0000-00-00'),
('24101509', 'Registro\r', '0000-00-00'),
('24101514', 'Cuotas de fiscalización y auditaje\r', '0000-00-00'),
('24101516', 'Impuesto sobre vehículos automotores\r', '0000-00-00'),
('24101522', 'Impuesto al patrimonio\r', '0000-00-00'),
('24101527', 'Impuestos, contribuciones y tasas en el exterior\r', '0000-00-00'),
('24101580', 'Otros impuestos departamentales\r', '0000-00-00'),
('24101585', 'Otros impuestos municipales\r', '0000-00-00'),
('24101590', 'Otros impuestos distritales\r', '0000-00-00'),
('24101595', 'Multas y sanciones\r', '0000-00-00'),
('25', 'OBLIGACIONES LABORALES Y DE SEGURIDAD SOCIAL\r', '0000-00-00'),
('2505', 'SALARIOS Y PRESTACIONES SOCIALES\r', '0000-00-00'),
('250501', 'Nómina por pagar\r', '0000-00-00'),
('250502', 'Cesantías\r', '0000-00-00'),
('250503', 'Intereses sobre cesantías\r', '0000-00-00'),
('250504', 'Vacaciones\r', '0000-00-00'),
('250506', 'Prima de servicios\r', '0000-00-00'),
('2510', 'RETENCIONES Y APORTES DE NÓMINA\r', '0000-00-00'),
('251005', 'Aportes a entidades promotoras de salud- eps\r', '0000-00-00'),
('251006', 'Aportes a administradoras de riesgos profes.- arp\r', '0000-00-00'),
('251010', 'Aportes al i.c.b.f.- sena y cajas de compensación\r', '0000-00-00'),
('251025', 'Embargos judiciales\r', '0000-00-00'),
('251030', 'Libranzas\r', '0000-00-00'),
('251045', 'Fondos\r', '0000-00-00'),
('251095', 'Otros\r', '0000-00-00'),
('2515', 'PASIVO POR PLAN DE BENEFICIOS DEFINIDOS\r', '0000-00-00'),
('251505', 'Pasivo por plan de beneficios definidos\r', '0000-00-00'),
('2550', 'PASIVO ESTIMADO PARA OBLIGACIONES LABORALES\r', '0000-00-00'),
('255005', 'Cesantías\r', '0000-00-00'),
('255010', 'Intereses sobre cesantías\r', '0000-00-00'),
('255015', 'Vacaciones\r', '0000-00-00'),
('255020', 'Prima de servicios\r', '0000-00-00'),
('26', 'PROVISIONES\r', '0000-00-00'),
('2605', 'PROVISIONES POR GARANTÍA\r', '0000-00-00'),
('2610', 'PROVISIONES POR PROCESOS LEGALES\r', '0000-00-00'),
('261004', 'Provisiones por litigios o demandas por préstamos\r', '0000-00-00'),
('261005', 'Provisiones por litigios o demandas laborales\r', '0000-00-00'),
('261006', 'Provisiones por litigios o demandas comerciales\r', '0000-00-00'),
('2615', 'PROVISIONES POR COSTOS DE DESMANTELAMIENTO, RESTAU', '0000-00-00'),
('261504', 'Provisiones por costos de desmantelamiento\r', '0000-00-00'),
('261505', 'Provisiones por costos de restauración\r', '0000-00-00'),
('261506', 'Provisiones por costos de rehabilitación\r', '0000-00-00'),
('2620', 'PROVISIONES PARA REESTRUCTURACIONES Y CONTRATOS ON', '0000-00-00'),
('262002', 'Indemnizaciones por reestructuración\r', '0000-00-00'),
('262004', 'Bonificaciones por reestructuración\r', '0000-00-00'),
('262006', 'Contratos Onerosos\r', '0000-00-00'),
('2690', 'OTRAS PROVISIONES\r', '0000-00-00'),
('269011', 'Provisiones por riesgos no asegurados\r', '0000-00-00'),
('269012', 'Provisiones por Mecanismos alternativos de solució', '0000-00-00'),
('269090', 'Provisiones por reembolsos\r', '0000-00-00'),
('27', 'INGRESOS DIFERIDOS\r', '0000-00-00'),
('2705', 'INGRESOS DEVENGADOS POR FACTURAR\r', '0000-00-00'),
('270521', 'intereses\r', '0000-00-00'),
('270522', 'Comisiones\r', '0000-00-00'),
('270523', 'Arrendamientos\r', '0000-00-00'),
('270524', 'Honorarios\r', '0000-00-00'),
('270525', 'Servicios técnicos\r', '0000-00-00'),
('270528', 'Otros\r', '0000-00-00'),
('28', 'PASIVOS INCLUIDOS EN  GRUPOS DE ACTIVOS PARA SU DI', '0000-00-00'),
('2805', 'PASIVOS INCLUIDOS EN  GRUPOS DE ACTIVOS PARA SU DI', '0000-00-00'),
('280521', 'Obligaciones Financieras e Instrumentos Derivados\r', '0000-00-00'),
('280522', 'Operaciones de Crédito Público y Financiamiento co', '0000-00-00'),
('280523', 'Impuestos por pagar\r', '0000-00-00'),
('280524', 'Acreedores comerciales y otras cuentas por pagar\r', '0000-00-00'),
('280525', 'Obligaciones laborales y de seguridad social integ', '0000-00-00'),
('280528', 'Provisiones\r', '0000-00-00'),
('280529', 'Otros pasivos\r', '0000-00-00'),
('29', 'OTROS PASIVOS\r', '0000-00-00'),
('2905', 'ANTICIPOS Y AVANCES RECIBIDOS\r', '0000-00-00'),
('290505', 'De clientes\r', '0000-00-00'),
('290510', 'Sobre contratos\r', '0000-00-00'),
('290595', 'Otros\r', '0000-00-00'),
('2912', 'PASIVOS POR IMPUESTOS DIFERIDOS\r', '0000-00-00'),
('291212', 'Inversiones financieras\r', '0000-00-00'),
('291213', 'Activos no corrientes o grupos de activos mantenid', '0000-00-00'),
('291214', 'Deudores comerciales y otras cuentas por cobrar\r', '0000-00-00'),
('291215', 'Inventarios\r', '0000-00-00'),
('291216', 'Propiedades, Planta y Equipo\r', '0000-00-00'),
('291217', 'Activos intangibles y crédito mercantil\r', '0000-00-00'),
('291218', 'Propiedades de Inversión\r', '0000-00-00'),
('291219', 'Otros Activos\r', '0000-00-00'),
('291221', 'Obligaciones Financieras e Instrumentos Derivados\r', '0000-00-00'),
('291224', 'Acreedores Comerciales y otras cuentas por pagar\r', '0000-00-00'),
('291225', 'Obligaciones laborales y de seguridad social integ', '0000-00-00'),
('291228', 'Provisiones\r', '0000-00-00'),
('291229', 'Otros Pasivos\r', '0000-00-00'),
('2915', 'RECAUDOS A FAVOR DE TERCEROS\r', '0000-00-00'),
('291501', 'Regalías y compensaciones monetarias\r', '0000-00-00'),
('291502', 'Impuestos\r', '0000-00-00'),
('291503', 'Ventas por cuenta de terceros\r', '0000-00-00'),
('291505', 'Cobro cartera de terceros\r', '0000-00-00'),
('2920', 'SUBVENCIONES DEL GOBIERNO\r', '0000-00-00'),
('292005', 'Pasivos por subvenciones del gobierno\r', '0000-00-00'),
('3', 'PATRIMONIO\r', '0000-00-00'),
('31', 'CAPITAL SOCIAL\r', '0000-00-00'),
('3105', 'CAPITAL SUSCRITO Y PAGADO\r', '0000-00-00'),
('310505', 'Capital autorizado\r', '0000-00-00'),
('310510', 'Capital por suscribir (DB)\r', '0000-00-00'),
('310515', 'Capital suscrito por cobrar (DB)\r', '0000-00-00'),
('3115', 'ACCIONES PROPIAS EN CARTERA\r', '0000-00-00'),
('311505', 'Acciones propias en cartera\r', '0000-00-00'),
('311510', 'Acciones propias readquiridas (DB)\r', '0000-00-00'),
('32', 'SUPERAVIT DE CAPITAL\r', '0000-00-00'),
('3205', 'PRIMA EN COLOCACIÓN ACCIONES, CUOTAS O PARTES DE I', '0000-00-00'),
('320505', 'Prima en colocación de acciones\r', '0000-00-00'),
('320510', 'Prima en colocación de acciones por cobrar (DB)\r', '0000-00-00'),
('320515', 'Prima en colocación de cuotas o partes de interés ', '0000-00-00'),
('320520', 'Prima en colocación de cuotas o partes de interés ', '0000-00-00'),
('3243', 'SUPERÁVIT MÉTODO DE PARTICIPACIÓN PATRIMONIAL\r', '0000-00-00'),
('324302', 'Inversiones en Entidades Asociadas \r', '0000-00-00'),
('324304', 'Inversiones en Entidades Controladas Conjuntamente', '0000-00-00'),
('324306', 'Inversiones en otros acuerdos conjuntos  (Operacio', '0000-00-00'),
('324308', 'Inversiones en Entidades Controladas (Subsidiarias', '0000-00-00'),
('33', 'RESERVAS\r', '0000-00-00'),
('3305', 'RESERVAS OBLIGATORIAS\r', '0000-00-00'),
('330505', 'Reserva legal\r', '0000-00-00'),
('330515', 'Reserva para readquisición de acciones\r', '0000-00-00'),
('330590', 'Otras reservas\r', '0000-00-00'),
('3310', 'RESERVAS ESTATUTARIAS\r', '0000-00-00'),
('331005', 'Para futuras capitalizaciones\r', '0000-00-00'),
('331010', 'Para reposición de activos\r', '0000-00-00'),
('331015', 'Futuros ensanches\r', '0000-00-00'),
('331090', 'Otras reservas\r', '0000-00-00'),
('3315', 'RESERVAS OCASIONALES\r', '0000-00-00'),
('331505', 'Para fomento económico\r', '0000-00-00'),
('331510', 'Para capital de trabajo\r', '0000-00-00'),
('331515', 'A disposición del máximo órgano social\r', '0000-00-00'),
('331590', 'Otras reservas\r', '0000-00-00'),
('35', 'DIVIDENDOS Y PARTICIPACIONES DECRETADOS\r', '0000-00-00'),
('3505', 'DIVIDENDOS Y PARTICIPACIONES DECRETADOS\r', '0000-00-00'),
('350505', 'Dividendos decretados en acciones\r', '0000-00-00'),
('350510', 'Participaciones decretadas en cuotas o partes de i', '0000-00-00'),
('36', 'RESULTADOS DEL EJERCICIO\r', '0000-00-00'),
('3605', 'RESULTADOS DEL EJERCICIO\r', '0000-00-00'),
('360501', 'Utilidad o excedente del ejercicio\r', '0000-00-00'),
('360502', 'Pérdida o déficit del ejercicio\r', '0000-00-00'),
('37', 'RESULTADO DE EJERCICIOS ANTERIORES\r', '0000-00-00'),
('3705', 'RESULTADO DE EJERCICIOS ANTERIORES\r', '0000-00-00'),
('370501', 'Utilidad o Excedente del ejercicio\r', '0000-00-00'),
('370502', 'Pérdida o Déficit del ejercicio\r', '0000-00-00'),
('3710', 'GANANCIAS (PÉRDIDAS)  BALANCE DE APERTURA\r', '0000-00-00'),
('371002', 'Efectivo y Equivalentes de Efectivo\r', '0000-00-00'),
('371004', 'Inversiones Financieras\r', '0000-00-00'),
('371006', 'Activos no corrientes o grupos de activos mantenid', '0000-00-00'),
('371008', 'Deudores Comerciales y otras cuentas por cobrar\r', '0000-00-00'),
('371010', 'Inventarios\r', '0000-00-00'),
('371012', 'Propiedades, Planta y Equipo\r', '0000-00-00'),
('371014', 'Activos Intangibles y Crédito Mercantil\r', '0000-00-00'),
('371016', 'Propiedades de Inversión\r', '0000-00-00'),
('371022', 'Otros Activos\r', '0000-00-00'),
('371024', 'Obligaciones Financieras e Instrumentos Derivados\r', '0000-00-00'),
('371026', 'Operaciones de Crédito Público y financiamiento ba', '0000-00-00'),
('371028', 'Impuestos por pagar\r', '0000-00-00'),
('371030', 'Acreedores comerciales y otras cuentas por pagar\r', '0000-00-00'),
('371032', 'Obligaciones laborales y de seguridad social integ', '0000-00-00'),
('371034', 'Bonos y Otros títulos\r', '0000-00-00'),
('371038', 'Provisiones\r', '0000-00-00'),
('371040', 'Otros Pasivos\r', '0000-00-00'),
('38', 'GANANCIAS (PÉRDIDAS) POR OTROS RESULTADOS INTEGRAL', '0000-00-00'),
('3805', 'OTRO RESULTADO INTEGRAL, NETO DE IMPUESTOS, GANANC', '0000-00-00'),
('380505', 'Inversiones en Instrumentos de Patrimonio\r', '0000-00-00'),
('3810', 'OTRO RESULTADO INTEGRAL, NETO DE IMPUESTOS, GANANC', '0000-00-00'),
('381005', 'Activos no corrientes o grupos de activos mantenid', '0000-00-00'),
('381010', 'Propiedades, Planta y Equipo\r', '0000-00-00'),
('381015', 'Activos Intangibles\r', '0000-00-00'),
('381020', 'Propiedades de Inversión\r', '0000-00-00'),
('381025', 'Otros Activos\r', '0000-00-00'),
('3815', 'OTRO RESULTADO INTEGRAL, NETO DE IMPUESTOS, GANANC', '0000-00-00'),
('381505', 'Nuevas mediciones de planes de beneficios definido', '0000-00-00'),
('3820', 'OTRO RESULTADO INTEGRAL, NETO DE IMPUESTOS, GANANC', '0000-00-00'),
('382005', 'Instrumentos financieros pasivos\r', '0000-00-00'),
('3825', 'PARTICIPACIÓN DE OTRO RESULTADO INTEGRAL DE ASOCIA', '0000-00-00'),
('382505', 'Inversiones en Asociadas \r', '0000-00-00'),
('382510', 'Inversiones en negocios conjuntos\r', '0000-00-00'),
('39', 'GANANCIAS (PÉRDIDAS) POR OTROS RESULTADOS INTEGRAL', '0000-00-00'),
('3905', 'DIFERENCIA DE CAMBIO POR CONVERSIÓN EN OPERACIONES', '0000-00-00'),
('390505', 'Ganancias (pérdidas) por nuevas mediciones de acti', '0000-00-00'),
('390510', 'Ajustes de reclasificación, activos financieros di', '0000-00-00'),
('390515', 'Otro resultado integral, neto de impuestos,  activ', '0000-00-00'),
('3910', 'ACTIVOS FINANCIEROS DISPONIBLES PARA LA VENTA\r', '0000-00-00'),
('3915', 'COBERTURAS DEL FLUJO DE EFECTIVO\r', '0000-00-00'),
('391505', 'Ganancias (pérdidas) por coberturas de flujos de e', '0000-00-00'),
('391510', 'Ajustes de reclasificación, coberturas de flujos d', '0000-00-00'),
('391515', 'Importes eliminados del patrimonio e incluidos en ', '0000-00-00'),
('391520', 'Otro resultado integral, neto de impuestos,  cober', '0000-00-00'),
('3920', 'COBERTURAS DE INVERSIONES NETAS EN NEGOCIOS EN EL ', '0000-00-00'),
('392005', 'Ganancias (pérdidas) por coberturas de inversiones', '0000-00-00'),
('392010', 'Ajustes de reclasificación por coberturas de inver', '0000-00-00'),
('392015', 'Otro resultado integral, neto de impuestos, cobert', '0000-00-00'),
('3925', 'PARTICIPACIÓN DE OTRO RESULTADO INTEGRAL DE ASOCIA', '0000-00-00'),
('392505', 'Inversiones en Asociadas \r', '0000-00-00'),
('392510', 'Inversiones en negocios conjuntos\r', '0000-00-00'),
('4', 'INGRESOS\r', '0000-00-00'),
('41', 'VENTA DE BIENES \r', '0000-00-00'),
('4115', 'EXPLOTACIÓN DE MINAS Y CANTERAS\r', '0000-00-00'),
('411505', 'Carbón\r', '0000-00-00'),
('411508', 'Coque\r', '0000-00-00'),
('4135', 'COMERCIO AL POR MAYOR\r', '0000-00-00'),
('413508', 'Venta de combustibles solidos\r', '0000-00-00'),
('4175', 'DEVOLUCIONES, REBAJAS Y DESCUENTOS EN VENTA DE BIE', '0000-00-00'),
('417505', 'Descuento por pronto pago (probable)\r', '0000-00-00'),
('417508', 'Devolución por venta de coque\r', '0000-00-00'),
('42', 'VENTA DE SERVICIOS\r', '0000-00-00'),
('4215', 'SERVICIOS VARIOS\r', '0000-00-00'),
('421505', 'Servicio de transporte\r', '0000-00-00'),
('421508', 'Alquiler maquinaria y equipo\r', '0000-00-00'),
('44', 'OTROS INGRESOS\r', '0000-00-00'),
('4402', 'RENDIMIENTOS DE INVERSIONES Y OTROS INGRESOS FINAN', '0000-00-00'),
('440202', 'Depósitos en Instituciones Financieras y Cooperati', '0000-00-00'),
('440204', 'Fondos Especiales para Administración de Liquidez\r', '0000-00-00'),
('440216', 'Inversiones Mantenidas para Negociación\r', '0000-00-00'),
('440218', 'Inversiones Disponibles para la Venta\r', '0000-00-00'),
('440220', 'Inversiones hasta el Vencimiento\r', '0000-00-00'),
('440224', 'Derechos Fiduciarios\r', '0000-00-00'),
('440256', 'Dividendos\r', '0000-00-00'),
('440260', 'Descuentos obtenidos por pronto pago no planeados\r', '0000-00-00'),
('440270', 'Descuentos obtenidos condicionados al volumen no p', '0000-00-00'),
('440290', 'Otros ingresos Financieros\r', '0000-00-00'),
('4406', 'AJUSTE POR DIFERENCIA EN CAMBIO\r', '0000-00-00'),
('440605', 'Efectivo y equivalentes de efectivo\r', '0000-00-00'),
('440620', 'Deudores Comerciales y otras cuentas por cobrar\r', '0000-00-00'),
('440625', 'Inventarios\r', '0000-00-00'),
('440630', 'Propiedades, Planta y Equipo\r', '0000-00-00'),
('440635', 'Activos Intangibles y Crédito Mercantil\r', '0000-00-00'),
('440640', 'Propiedades de Inversión\r', '0000-00-00'),
('440645', 'Otros Activos\r', '0000-00-00'),
('440650', 'Obligaciones Financieras e Instrumentos Derivados\r', '0000-00-00'),
('4409', 'UTILIDAD EN VENTA DE INVERSIONES Y OTROS ACTIVOS\r', '0000-00-00'),
('440901', 'Inversiones Mantenidas para Negociación\r', '0000-00-00'),
('440902', 'Inversiones Disponibles para la Venta\r', '0000-00-00'),
('440903', 'Inversiones Hasta el Vencimiento\r', '0000-00-00'),
('440916', 'Deudores Comerciales y otras cuentas por cobrar\r', '0000-00-00'),
('440918', 'Propiedades, Planta y Equipo\r', '0000-00-00'),
('440920', 'Activos intangibles y crédito Mercantil\r', '0000-00-00'),
('440922', 'Otros Activos\r', '0000-00-00'),
('4490', 'OTROS INGRESOS DIVERSOS\r', '0000-00-00'),
('449002', 'Arriendos\r', '0000-00-00'),
('449003', 'Ingresos por condonación de deudas\r', '0000-00-00'),
('449004', 'Indemnizaciones Compañías de Seguros\r', '0000-00-00'),
('449049', 'Indemnizaciones\r', '0000-00-00'),
('48', 'OTROS RESULTADOS INTEGRALES\r', '0000-00-00'),
('4820', 'GANANCIA (PÉRDIDA) DE OTROS RESULTADOS INTEGRALES\r', '0000-00-00'),
('482005', 'Ganancias (pérdidas) por diferencias de cambio de ', '0000-00-00'),
('482006', 'Ajustes de reclasificación en diferencias de cambi', '0000-00-00'),
('482007', 'Impuesto a las ganancias relacionado con diferenci', '0000-00-00'),
('482008', 'Ganancias (pérdidas) por nuevas mediciones de inve', '0000-00-00'),
('482009', 'Ajustes de reclasificación, inversiones disponible', '0000-00-00'),
('482010', 'Impuesto a las ganancias relacionadas con inversio', '0000-00-00'),
('482011', 'Ganancias (pérdidas) por coberturas de flujos de e', '0000-00-00'),
('482012', 'Ajustes de reclasificación en coberturas de flujos', '0000-00-00'),
('482014', 'Impuesto a las ganancias relacionado con cobertura', '0000-00-00'),
('482015', 'Ganancias (pérdidas) sobre coberturas de inversión', '0000-00-00'),
('482016', 'Ajustes por reclasificación sobre coberturas de un', '0000-00-00'),
('482017', 'Impuesto a las ganancias relacionado con cobertura', '0000-00-00'),
('482020', 'Ganancias (pérdidas) clasificada en otros ingresos', '0000-00-00'),
('482021', 'Impuesto a las ganancias relacionado con cambios e', '0000-00-00'),
('482022', 'Ganancias (pérdidas) actuariales clasificadas en o', '0000-00-00'),
('482023', 'Impuesto a las ganancias relacionado con planes de', '0000-00-00'),
('482024', 'Cambios en el valor razonable de pasivos financier', '0000-00-00'),
('482025', 'Impuestos a las ganancias relacionado con cambios ', '0000-00-00'),
('482026', 'Participación en otros resultados integrales de en', '0000-00-00'),
('482027', 'Impuestos a las ganancias relacionado  con la part', '0000-00-00'),
('482028', 'Ganancias (Pérdidas) clasificadas  en otros result', '0000-00-00'),
('482029', 'Impuestos a las ganancias relacionado con activos ', '0000-00-00'),
('482030', 'Ajustes de reclasificación en el impuesto a las ga', '0000-00-00'),
('5', 'GASTO\r', '0000-00-00'),
('51', 'ADMINISTRATIVOS\r', '0000-00-00'),
('5101', 'SUELDOS Y SALARIOS\r', '0000-00-00'),
('510101', 'Sueldos del personal\r', '0000-00-00'),
('510102', 'Jornales\r', '0000-00-00'),
('510103', 'Horas extras y festivos\r', '0000-00-00'),
('510104', 'Incapacidades\r', '0000-00-00'),
('510105', 'Gastos de representación\r', '0000-00-00'),
('510109', 'Honorarios\r', '0000-00-00'),
('510113', 'Prima\r', '0000-00-00'),
('510117', 'Vacaciones\r', '0000-00-00'),
('510118', 'Bonificaciones\r', '0000-00-00'),
('510123', 'Auxilio de transporte\r', '0000-00-00'),
('510124', 'Cesantías\r', '0000-00-00'),
('510125', 'Intereses a las cesantías\r', '0000-00-00'),
('510131', 'Dotación y suministro a trabajadores\r', '0000-00-00'),
('510145', 'Salario integral\r', '0000-00-00'),
('510146', 'Contratos de personal temporal\r', '0000-00-00'),
('510147', 'Viáticos\r', '0000-00-00'),
('510148', 'Gastos de viaje\r', '0000-00-00'),
('510149', 'Comisiones\r', '0000-00-00'),
('510150', 'Apoyo de sostenimiento\r', '0000-00-00'),
('510151', 'Inactividad\r', '0000-00-00'),
('5102', 'HONORARIOS\r', '0000-00-00'),
('510210', 'Revisoría fiscal\r', '0000-00-00'),
('510220', 'Avalúos\r', '0000-00-00'),
('510225', 'Asesoría jurídica\r', '0000-00-00'),
('510235', 'Asesoría técnica\r', '0000-00-00'),
('510295', 'Otros\r', '0000-00-00'),
('5104', 'APORTES SOBRE LA NÓMINA\r', '0000-00-00'),
('510401', 'Aportes al ICBF\r', '0000-00-00'),
('510402', 'Aportes al SENA\r', '0000-00-00'),
('510403', 'Aportes a administradoras de riesgos profesionales', '0000-00-00'),
('510404', 'Aportes a entidades promotoras de salud- EPS\r', '0000-00-00'),
('510405', 'Aportes a fondos de pensiones y/o cesantías\r', '0000-00-00'),
('510406', 'Aportes cajas de compensación familiar\r', '0000-00-00'),
('5108', 'IMPUESTOS\r', '0000-00-00'),
('510802', 'Industria y comercio\r', '0000-00-00'),
('510803', 'De timbres\r', '0000-00-00'),
('510804', 'A la propiedad raíz\r', '0000-00-00'),
('510805', 'De vehículos\r', '0000-00-00'),
('510806', 'Al patrimonio\r', '0000-00-00'),
('510808', 'Estampilla prodesarrollo\r', '0000-00-00'),
('510809', 'IVA descontable\r', '0000-00-00'),
('510819', 'Otros\r', '0000-00-00'),
('5111', 'GENERALES\r', '0000-00-00'),
('511103', 'Arrendamientos\r', '0000-00-00'),
('511104', 'Contribuciones y afiliaciones\r', '0000-00-00'),
('511106', 'Seguros\r', '0000-00-00'),
('511108', 'Servicios\r', '0000-00-00'),
('511110', 'Gastos legales\r', '0000-00-00'),
('511112', 'Mantenimiento y reparaciones\r', '0000-00-00'),
('511114', 'Adecuación e instalación\r', '0000-00-00'),
('511115', 'Gastos de viaje\r', '0000-00-00'),
('511119', 'Diversos\r', '0000-00-00'),
('52', 'DE VENTAS\r', '0000-00-00'),
('5201', 'SUELDOS Y SALARIOS\r', '0000-00-00'),
('520101', 'Sueldos del personal\r', '0000-00-00'),
('520102', 'Jornales\r', '0000-00-00'),
('520103', 'Horas extras y festivos\r', '0000-00-00'),
('520104', 'Incapacidades\r', '0000-00-00'),
('520105', 'Gastos de representación\r', '0000-00-00'),
('520109', 'Honorarios\r', '0000-00-00'),
('520113', 'Prima\r', '0000-00-00'),
('520117', 'Vacaciones\r', '0000-00-00'),
('520118', 'Bonificaciones\r', '0000-00-00'),
('520123', 'Auxilio de transporte\r', '0000-00-00'),
('520124', 'Cesantías\r', '0000-00-00'),
('520125', 'Intereses a las cesantías\r', '0000-00-00'),
('520131', 'Dotación y suministro a trabajadores\r', '0000-00-00'),
('520145', 'Salario integral\r', '0000-00-00'),
('520146', 'Contratos de personal temporal\r', '0000-00-00'),
('520147', 'Viáticos\r', '0000-00-00'),
('520148', 'Gastos de viaje\r', '0000-00-00'),
('520149', 'Comisiones\r', '0000-00-00'),
('520150', 'Apoyo de sostenimiento\r', '0000-00-00'),
('520151', 'Inactividad\r', '0000-00-00'),
('5202', 'HONORARIOS\r', '0000-00-00'),
('520210', 'Revisoría fiscal\r', '0000-00-00'),
('520220', 'Avalúos\r', '0000-00-00'),
('520225', 'Asesoría jurídica\r', '0000-00-00'),
('520235', 'Asesoría técnica\r', '0000-00-00'),
('520295', 'Otros\r', '0000-00-00'),
('5204', 'APORTES SOBRE LA NÓMINA\r', '0000-00-00'),
('520401', 'Aportes al ICBF\r', '0000-00-00'),
('520402', 'Aportes al SENA\r', '0000-00-00'),
('520403', 'Aportes a administradoras de riesgos profesionales', '0000-00-00'),
('520404', 'Aportes a entidades promotoras de salud- EPS\r', '0000-00-00'),
('520405', 'Aportes a fondos de pensiones y/o cesantías\r', '0000-00-00'),
('520406', 'Aportes cajas de compensación familiar\r', '0000-00-00'),
('5208', 'IMPUESTOS\r', '0000-00-00'),
('520802', 'Industria y comercio\r', '0000-00-00'),
('520803', 'De timbres\r', '0000-00-00'),
('520804', 'A la propiedad raíz\r', '0000-00-00'),
('520805', 'De vehículos\r', '0000-00-00'),
('520806', 'Al patrimonio\r', '0000-00-00'),
('520808', 'Estampilla prodesarrollo\r', '0000-00-00'),
('520809', 'IVA descontable\r', '0000-00-00'),
('520819', 'Otros\r', '0000-00-00'),
('5211', 'GENERALES\r', '0000-00-00'),
('521103', 'Arrendamientos\r', '0000-00-00'),
('521104', 'Contribuciones y afiliaciones\r', '0000-00-00'),
('521106', 'Seguros\r', '0000-00-00'),
('521108', 'Servicios\r', '0000-00-00'),
('521110', 'Gastos legales\r', '0000-00-00'),
('521112', 'Mantenimiento y reparaciones\r', '0000-00-00'),
('521114', 'Adecuación e instalación\r', '0000-00-00'),
('521115', 'Gastos de viaje\r', '0000-00-00'),
('521119', 'Diversos\r', '0000-00-00'),
('53', 'NO OPERACIONALES\r', '0000-00-00'),
('5305', 'FINANCIEROS\r', '0000-00-00'),
('530505', 'Gastos bancarios\r', '0000-00-00'),
('530515', 'Comisiones\r', '0000-00-00'),
('530520', 'Intereses\r', '0000-00-00'),
('530525', 'Diferencia en cambio\r', '0000-00-00'),
('530530', 'Descuentos concedidos por pronto pago no planeados', '0000-00-00'),
('530535', 'Descuentos concedidos condicionados al volumen no ', '0000-00-00'),
('5395', 'OTROS GASTOS NO OPERACIONALES\r', '0000-00-00'),
('539517', 'Multas, sanciones y litigios\r', '0000-00-00'),
('539519', 'Donaciones\r', '0000-00-00'),
('539530', 'Impuestos asumidos\r', '0000-00-00'),
('54', 'DETERIORO, AGOTAMIENTO, DEPRECIACIÓN, AMORTIZACIÓN', '0000-00-00'),
('5402', 'DETERIORO INVERSIONES FINANCIERAS\r', '0000-00-00'),
('540202', 'Inversiones Disponibles para la Venta\r', '0000-00-00'),
('540203', 'Inversiones Hasta el Vencimiento\r', '0000-00-00'),
('540295', 'Recuperaciones - cambios en estimaciones (Cr)\r', '0000-00-00'),
('5404', 'DETERIORO CUENTAS POR COBRAR COMERCIALES Y OTRAS C', '0000-00-00'),
('540406', 'Venta de bienes\r', '0000-00-00'),
('540420', 'Avances y anticipos Entregados\r', '0000-00-00'),
('540490', 'Otros deudores\r', '0000-00-00'),
('540495', 'Recuperaciones - cambios en estimaciones (Cr)\r', '0000-00-00'),
('5406', 'DETERIORO INVENTARIOS\r', '0000-00-00'),
('540610', 'Mercancías en existencia\r', '0000-00-00'),
('540615', 'Prestación de Servicios\r', '0000-00-00'),
('540618', 'Materiales para la prestación de servicios\r', '0000-00-00'),
('540690', 'Otros Inventarios\r', '0000-00-00'),
('540695', 'Recuperaciones - cambios en estimaciones (Cr)\r', '0000-00-00'),
('5407', 'DETERIORO DE PROPIEDADES, PLANTA Y EQUIPO\r', '0000-00-00'),
('540705', 'Terrenos\r', '0000-00-00'),
('540715', 'Construcciones en Curso\r', '0000-00-00'),
('540720', 'Maquinaria, planta y equipo en montaje\r', '0000-00-00'),
('540740', 'Edificaciones\r', '0000-00-00'),
('540755', 'Maquinaria y Equipo\r', '0000-00-00'),
('540765', 'Muebles, Enseres y Equipos de Oficina\r', '0000-00-00'),
('540770', 'Equipos de Comunicación y Computación\r', '0000-00-00'),
('540795', 'Recuperaciones - cambios en estimaciones (Cr)\r', '0000-00-00'),
('5408', 'DETERIORO DE ACTIVOS INTANGIBLES Y CRÉDITO MERCANT', '0000-00-00'),
('540825', 'Derechos\r', '0000-00-00'),
('540835', 'Licencias\r', '0000-00-00'),
('540840', 'Software\r', '0000-00-00'),
('540882', 'Otros Activos Intangibles\r', '0000-00-00'),
('540895', 'Recuperaciones - cambios en estimaciones (Cr)\r', '0000-00-00'),
('5409', 'DETERIORO DE ACTIVOS NO CORRIENTES O GRUPOS DE ACT', '0000-00-00'),
('540905', 'Activos no corrientes mantenidos para la venta\r', '0000-00-00'),
('540907', 'Activos no corrientes para distribuir a los propie', '0000-00-00'),
('540995', 'Recuperaciones - cambios en estimaciones (Cr)\r', '0000-00-00'),
('5410', 'DETERIORO DE PROPIEDADES DE INVERSIÓN\r', '0000-00-00'),
('541005', 'Terrenos\r', '0000-00-00'),
('541010', 'Edificaciones\r', '0000-00-00'),
('541095', 'Recuperaciones - cambios en estimaciones (Cr)\r', '0000-00-00'),
('5411', 'DETERIORO OTROS ACTIVOS\r', '0000-00-00'),
('541160', 'Bienes de Arte y Cultura\r', '0000-00-00'),
('541165', 'Activos Biológicos\r', '0000-00-00'),
('5413', 'PASIVO ESTIMADO PARA OBLIGACIONES FISCALES\r', '0000-00-00'),
('541337', 'Impuesto de industria y comercio\r', '0000-00-00'),
('541340', 'Impuesto de renta y complementarios - Impuesto Cor', '0000-00-00'),
('541350', 'Impuesto de renta y complementarios - Impuesto Dif', '0000-00-00'),
('541390', 'Otras provisiones para obligaciones fiscales\r', '0000-00-00'),
('5414', 'PROVISIONES PARA LITIGIOS Y/O DEMANDAS\r', '0000-00-00'),
('541404', 'Litigios o demandas por préstamos\r', '0000-00-00'),
('541405', 'Litigios o demandas laborales\r', '0000-00-00'),
('541406', 'Litigios o demandas comerciales\r', '0000-00-00'),
('541407', 'Litigios o demandas por impuestos\r', '0000-00-00'),
('5417', 'PROVISIONES DIVERSAS\r', '0000-00-00'),
('541790', 'Otras Provisiones\r', '0000-00-00'),
('5425', 'PASIVOS ESTIMADOS PARA PRESTACIONES SOCIALES\r', '0000-00-00'),
('542501', 'Cesantías\r', '0000-00-00'),
('542502', 'Intereses sobre cesantías\r', '0000-00-00'),
('542503', 'Vacaciones\r', '0000-00-00'),
('542504', 'Prima de servicios\r', '0000-00-00'),
('542505', 'Bonificaciones\r', '0000-00-00'),
('5430', 'DEPRECIACIÓN DE PROPIEDADES, PLANTA Y EQUIPO\r', '0000-00-00'),
('543005', 'Terrenos\r', '0000-00-00'),
('543040', 'Edificaciones\r', '0000-00-00'),
('543055', 'Maquinaria y Equipo\r', '0000-00-00'),
('543065', 'Muebles, Enseres y Equipos de Oficina\r', '0000-00-00'),
('543070', 'Equipos de Comunicación y Computación\r', '0000-00-00'),
('543082', 'Otras Propiedades, Planta y Equipo\r', '0000-00-00'),
('5438', 'AMORTIZACIÓN DE ACTIVOS INTANGIBLES Y CRÉDITO MERC', '0000-00-00'),
('543825', 'Derechos\r', '0000-00-00'),
('543835', 'Licencias\r', '0000-00-00'),
('543840', 'Software\r', '0000-00-00'),
('543882', 'Otros Activos Intangibles\r', '0000-00-00'),
('543895', 'Recuperaciones - cambios en estimaciones (Cr)\r', '0000-00-00'),
('5440', 'DEPRECIACIÓN / AMORTIZACIÓN PROPIEDADES DE INVERSI', '0000-00-00'),
('544005', 'Edificios\r', '0000-00-00'),
('6', 'COSTOS DE VENTAS\r', '0000-00-00'),
('61', 'COSTO DE VENTAS Y PRESTACIÓN DE SERVICIOS\r', '0000-00-00'),
('6135', 'COMERCIO AL POR MAYOR Y AL POR MENOR\r', '0000-00-00'),
('613595', 'Venta de otros productos\r', '0000-00-00'),
('62', 'COMPRAS\r', '0000-00-00'),
('6210', 'DE MATERIAS PRIMAS\r', '0000-00-00'),
('621002', 'Carbón\r', '0000-00-00'),
('621005', 'Coque\r', '0000-00-00'),
('6215', 'DE MATERIALES INDIRECTOS\r', '0000-00-00'),
('621505', 'Materiales indirectos\r', '0000-00-00'),
('6225', 'DEVOLUCIONES EN COMPRAS\r', '0000-00-00'),
('622505', 'Devoluciones en compras\r', '0000-00-00'),
('7', 'COSTOS DE PRODUCCIÓN O DE OPERACIÓN\r', '0000-00-00'),
('73', 'COSTOS INDIRECTOS\r', '0000-00-00'),
('7310', 'HONORARIOS\r', '0000-00-00'),
('731025', 'Asesoría jurídica\r', '0000-00-00'),
('731035', 'Asesoría técnica\r', '0000-00-00'),
('7315', 'IMPUESTOS\r', '0000-00-00'),
('731505', 'Industria Y Comercio\r', '0000-00-00'),
('731510', 'De Timbres\r', '0000-00-00'),
('731515', 'A La Propiedad Raíz\r', '0000-00-00'),
('731540', 'De Vehículos\r', '0000-00-00'),
('731550', 'Cuotas De Fomento\r', '0000-00-00'),
('731570', 'IVA Descontable\r', '0000-00-00'),
('731575', 'Regalías\r', '0000-00-00'),
('731595', 'Otros\r', '0000-00-00'),
('7320', 'ARRENDAMIENTOS\r', '0000-00-00'),
('732005', 'Terrenos\r', '0000-00-00'),
('732010', 'Construcciones Y Edificaciones\r', '0000-00-00'),
('732015', 'Maquinaria Y Equipo\r', '0000-00-00'),
('732040', 'Flota Y Equipo De Transporte\r', '0000-00-00'),
('732095', 'Otros\r', '0000-00-00');
INSERT INTO `tb_cuenta1` (`codigo_cuenta`, `descripcion`, `fecha_ingreso`) VALUES
('7325', 'CONTRIBUCIONES Y AFILIACIONES\r', '0000-00-00'),
('732510', 'Afiliación Y Sostenimiento\r', '0000-00-00'),
('7330', 'SEGUROS\r', '0000-00-00'),
('733025', 'Incendio\r', '0000-00-00'),
('733030', 'Terremoto\r', '0000-00-00'),
('733035', 'Sustracción Y Hurto\r', '0000-00-00'),
('733040', 'Flota Y Equipo De Transporte\r', '0000-00-00'),
('733060', 'Responsabilidad Civil Y Contractual\r', '0000-00-00'),
('733070', 'Rotura De Maquinaria\r', '0000-00-00'),
('733075', 'Obligatorio Accidente De Transito\r', '0000-00-00'),
('733080', 'Todo Riesgo\r', '0000-00-00'),
('733095', 'Otros Seguros\r', '0000-00-00'),
('7335', 'SERVICIOS\r', '0000-00-00'),
('733505', 'Aseo Y Vigilancia\r', '0000-00-00'),
('733515', 'Asistencia Técnica\r', '0000-00-00'),
('733520', 'Procesamiento Electrónico De Datos\r', '0000-00-00'),
('733525', 'Acueducto Y Alcantarillado\r', '0000-00-00'),
('733530', 'Energía Eléctrica\r', '0000-00-00'),
('733535', 'Teléfono\r', '0000-00-00'),
('733540', 'Correo- Portes Y Telegramas\r', '0000-00-00'),
('733545', 'Gas\r', '0000-00-00'),
('733550', 'Transporte- Fletes Y Acarreos\r', '0000-00-00'),
('733560', 'Publicidad Propaganda Y Promoción\r', '0000-00-00'),
('733575', 'Manejo De Carga\r', '0000-00-00'),
('733592', 'Agenciamiento Aduanero\r', '0000-00-00'),
('733595', 'Otros\r', '0000-00-00'),
('7340', 'GASTOS LEGALES\r', '0000-00-00'),
('734015', 'Tramites Y Licencias\r', '0000-00-00'),
('734020', 'Aduaneros\r', '0000-00-00'),
('734095', 'Otros\r', '0000-00-00'),
('7345', 'MANTENIMIENTO Y REPARACIONES\r', '0000-00-00'),
('734505', 'Terrenos\r', '0000-00-00'),
('734510', 'Construcciones Y Edificaciones\r', '0000-00-00'),
('734515', 'Maquinaria Y Equipo\r', '0000-00-00'),
('734520', 'Equipo De Oficina\r', '0000-00-00'),
('734525', 'Equipo De Computación Y Comunicación\r', '0000-00-00'),
('734540', 'Flota Y Equipo De Transporte\r', '0000-00-00'),
('734560', 'Acueductos Plantas Y Redes\r', '0000-00-00'),
('734570', 'Vías De Comunicación\r', '0000-00-00'),
('7350', 'ADECUACIÓN E INSTALACIÓN\r', '0000-00-00'),
('735005', 'Instalaciones Eléctricas\r', '0000-00-00'),
('735010', 'Arreglos Ornamentales\r', '0000-00-00'),
('735015', 'Reparaciones Locativas\r', '0000-00-00'),
('7355', 'GASTOS DE VIAJE\r', '0000-00-00'),
('735505', 'Alojamiento Y Manutención\r', '0000-00-00'),
('735515', 'Pasajes Aéreos\r', '0000-00-00'),
('735520', 'Pasajes Terrestres\r', '0000-00-00'),
('735595', 'Otros\r', '0000-00-00'),
('7360', 'DEPRECIACIONES\r', '0000-00-00'),
('736005', 'Construcciones Y Edificaciones\r', '0000-00-00'),
('736010', 'Maquinaria Y Equipo\r', '0000-00-00'),
('736015', 'Equipo De Oficina\r', '0000-00-00'),
('736020', 'Equipo De Computación Y Comunicación\r', '0000-00-00'),
('736035', 'Flota Y Equipo De Transporte\r', '0000-00-00'),
('7365', 'AMORTIZACIONES\r', '0000-00-00'),
('736515', 'Cargos Diferidos\r', '0000-00-00'),
('7395', 'DIVERSOS\r', '0000-00-00'),
('739510', 'De Timbres\r', '0000-00-00'),
('739515', 'A La Propiedad Raíz\r', '0000-00-00'),
('739520', 'Gastos De Representación Y Relaciones Publicas\r', '0000-00-00'),
('739525', 'Elementos De Aseo Y Cafetería\r', '0000-00-00'),
('739530', 'Útiles- Papelería Y Fotocopias\r', '0000-00-00'),
('739535', 'Combustibles Y Lubricantes\r', '0000-00-00'),
('739540', 'Envases Y Empaques\r', '0000-00-00'),
('739545', 'Taxis Y Buses\r', '0000-00-00'),
('739560', 'Casino Y Restaurante\r', '0000-00-00'),
('739565', 'Parqueaderos\r', '0000-00-00'),
('739580', 'Peajes\r', '0000-00-00'),
('739585', 'Cargues Y Descargues\r', '0000-00-00'),
('739590', 'Servicio De Grúa Y Montacargas\r', '0000-00-00'),
('739595', 'Servicio De Camabaja\r', '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_cuenta2`
--

CREATE TABLE `tb_cuenta2` (
  `id_registro` int(11) NOT NULL,
  `id_relacion` int(11) NOT NULL,
  `codigo_cuenta` varchar(12) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `valor_debito` double NOT NULL,
  `valor_credito` double NOT NULL,
  `fecha_registro` date NOT NULL,
  `id_clientes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_cuenta2`
--

INSERT INTO `tb_cuenta2` (`id_registro`, `id_relacion`, `codigo_cuenta`, `descripcion`, `valor_debito`, `valor_credito`, `fecha_registro`, `id_clientes`) VALUES
(1, 0, '110515', 'sadffasd', 10, 0, '2017-09-11', 15478564),
(2, 0, '114010', 'saas', 0, 100, '2017-09-11', 15478564),
(3, 0, '110515', 'asffdas', 90, 0, '2017-09-11', 15478564),
(4, 1, '1105', 'CAJA', 234, 0, '2017-09-12', 15478564),
(5, 1, '1105', 'asd', 0, 0, '2017-09-12', 15478564),
(6, 1, '1105', 'asd', 23, 0, '2017-09-12', 15478564),
(7, 1, '1105', 'asd', 0, 257, '2017-09-12', 15478564);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_mensajes`
--

CREATE TABLE `tb_mensajes` (
  `id_mensaje` int(11) NOT NULL,
  `correo_emi` varchar(50) NOT NULL,
  `correo_rec` varchar(50) NOT NULL,
  `fecha_mensaje` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_niveles`
--

CREATE TABLE `tb_niveles` (
  `id_nivel` int(11) NOT NULL,
  `nivel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_niveles`
--

INSERT INTO `tb_niveles` (`id_nivel`, `nivel`) VALUES
(1, 'bajo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_palabras`
--

CREATE TABLE `tb_palabras` (
  `id_palabra` int(11) NOT NULL,
  `palabra` varchar(50) NOT NULL,
  `id_nvel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_palabras`
--

INSERT INTO `tb_palabras` (`id_palabra`, `palabra`, `id_nvel`) VALUES
(4, 'hola', 1),
(5, 'chao', 1),
(6, 'simple', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `rango` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `rango`) VALUES
(1, 'Andrés', 'novato'),
(2, 'Luís', 'medio'),
(3, 'Juan', 'experto');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_clintes`
--
CREATE TABLE `vista_clintes` (
`id_clientes` int(11)
,`razon_social` varchar(100)
,`fecha_registro` date
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_informe_au`
--
CREATE TABLE `vista_informe_au` (
`codigo_cuenta` varchar(12)
,`descripcion` varchar(50)
,`fecha_ingreso` date
,`suma_d` double
,`suma_cre` double
,`total` double
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_clintes`
--
DROP TABLE IF EXISTS `vista_clintes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_clintes`  AS  (select `tb_clientes`.`id_clientes` AS `id_clientes`,`tb_clientes`.`razon_social` AS `razon_social`,`tb_clientes`.`fecha_registro` AS `fecha_registro` from `tb_clientes`) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_informe_au`
--
DROP TABLE IF EXISTS `vista_informe_au`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_informe_au`  AS  (select `t1`.`codigo_cuenta` AS `codigo_cuenta`,`t1`.`descripcion` AS `descripcion`,`t1`.`fecha_ingreso` AS `fecha_ingreso`,(select sum(`t2`.`valor_debito`) from `tb_cuenta2` `t2` where (`t1`.`codigo_cuenta` = left(`t2`.`codigo_cuenta`,length(`t1`.`codigo_cuenta`)))) AS `suma_d`,(select sum(`t2`.`valor_credito`) from `tb_cuenta2` `t2` where (`t1`.`codigo_cuenta` = left(`t2`.`codigo_cuenta`,length(`t1`.`codigo_cuenta`)))) AS `suma_cre`,(select (sum(`suma_d`) - sum(`suma_cre`))) AS `total` from `tb_cuenta1` `t1`) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `tb_amonestaciones`
--
ALTER TABLE `tb_amonestaciones`
  ADD PRIMARY KEY (`id_amonestacion`),
  ADD UNIQUE KEY `index_palabra` (`palabra`);

--
-- Indices de la tabla `tb_clientes`
--
ALTER TABLE `tb_clientes`
  ADD PRIMARY KEY (`id_clientes`);

--
-- Indices de la tabla `tb_cuenta1`
--
ALTER TABLE `tb_cuenta1`
  ADD PRIMARY KEY (`codigo_cuenta`);

--
-- Indices de la tabla `tb_cuenta2`
--
ALTER TABLE `tb_cuenta2`
  ADD PRIMARY KEY (`id_registro`),
  ADD KEY `index_codigo_cuenta` (`codigo_cuenta`),
  ADD KEY `index_cliente` (`id_clientes`);

--
-- Indices de la tabla `tb_mensajes`
--
ALTER TABLE `tb_mensajes`
  ADD PRIMARY KEY (`id_mensaje`);

--
-- Indices de la tabla `tb_niveles`
--
ALTER TABLE `tb_niveles`
  ADD PRIMARY KEY (`id_nivel`);

--
-- Indices de la tabla `tb_palabras`
--
ALTER TABLE `tb_palabras`
  ADD PRIMARY KEY (`id_palabra`),
  ADD UNIQUE KEY `unique_palabra` (`palabra`),
  ADD KEY `index_nivel` (`id_nvel`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `tb_amonestaciones`
--
ALTER TABLE `tb_amonestaciones`
  MODIFY `id_amonestacion` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tb_cuenta2`
--
ALTER TABLE `tb_cuenta2`
  MODIFY `id_registro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `tb_mensajes`
--
ALTER TABLE `tb_mensajes`
  MODIFY `id_mensaje` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tb_niveles`
--
ALTER TABLE `tb_niveles`
  MODIFY `id_nivel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tb_palabras`
--
ALTER TABLE `tb_palabras`
  MODIFY `id_palabra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `tb_amonestaciones`
--
ALTER TABLE `tb_amonestaciones`
  ADD CONSTRAINT `tb_amonestaciones_ibfk_1` FOREIGN KEY (`palabra`) REFERENCES `tb_palabras` (`palabra`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_cuenta2`
--
ALTER TABLE `tb_cuenta2`
  ADD CONSTRAINT `tb_cuenta2_ibfk_1` FOREIGN KEY (`codigo_cuenta`) REFERENCES `tb_cuenta1` (`codigo_cuenta`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_cuenta2_ibfk_2` FOREIGN KEY (`id_clientes`) REFERENCES `tb_clientes` (`id_clientes`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_palabras`
--
ALTER TABLE `tb_palabras`
  ADD CONSTRAINT `tb_palabras_ibfk_1` FOREIGN KEY (`id_nvel`) REFERENCES `tb_niveles` (`id_nivel`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
