-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-11-2021 a las 21:56:20
-- Versión del servidor: 10.4.17-MariaDB-log
-- Versión de PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `database`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table1`
--

CREATE TABLE `table1` (
  `column1` int(11) NOT NULL,
  `column2` varchar(255) NOT NULL,
  `column3` date NOT NULL,
  `column4` int(11) NOT NULL,
  `column5` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `table1`
--

INSERT INTO `table1` (`column1`, `column2`, `column3`, `column4`, `column5`) VALUES
(1, 'texto123', '2022-01-14', 44, 21),
(2, 'milanesa', '2021-05-06', 12, 0.1),
(3, 'texto3 ...', '2021-09-03', 12, 20.2),
(5, 'Alonso', '2021-09-04', 15, 20.4),
(7, 'David', '1975-06-23', 11, 20.5),
(8, 'Humberto', '1975-06-23', 11, 20.5),
(9, 'Humberto', '1975-06-23', 11, 20.5),
(10, 'hola', '1975-06-10', 11, 20.5),
(45, 'luis', '1985-06-04', 23, 12.6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `numero_de_empleado` int(11) NOT NULL,
  `nombre` varchar(51) CHARACTER SET latin1 DEFAULT NULL,
  `apellido1` varchar(51) CHARACTER SET latin1 DEFAULT NULL,
  `apellido2` varchar(51) CHARACTER SET latin1 DEFAULT NULL,
  `celular` bigint(12) DEFAULT NULL,
  `curp` varchar(24) CHARACTER SET latin1 NOT NULL,
  `rfc` varchar(20) CHARACTER SET latin1 NOT NULL,
  `nss` varchar(11) CHARACTER SET latin1 NOT NULL,
  `correo` varchar(254) CHARACTER SET latin1 DEFAULT NULL,
  `direccion` varchar(254) CHARACTER SET latin1 DEFAULT NULL,
  `pass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`numero_de_empleado`, `nombre`, `apellido1`, `apellido2`, `celular`, `curp`, `rfc`, `nss`, `correo`, `direccion`, `pass`) VALUES
(1, 'ALFONSO', 'RAMOS', 'MARTINEZ', 6621231916, 'RAMA631128HVZMRL05', 'RAMA6311284Q9', '268-48-2909', 'wlegros@green.info', 'Lomas De Los Astros 106-B', '827ccb0eea8a706c4c34a16891f84e7b'),
(2, 'JOSE ALFREDO', 'RAMIREZ', 'MARTINEZ', 6143495337, 'RAMA631217HPLMRL05', 'RAMA631217EQ4', '519-47-3241', 'shana86@yahoo.com', 'VERMONT NO. 2211, FRAC LAS AGUILAS, 31100', '827ccb0eea8a706c4c34a16891f84e7b'),
(3, 'MARIA DE JESUS', 'RAZO', 'MARTINEZ', 6571841618, 'RAMJ641012MGTZRS06', 'RAMJ641012NI6', '387-52-6226', 'mosciski.lizeth@gmail.com', 'HIDALGO 100, TEPATITLAN DE MORELOS CENTRO, 47600', '827ccb0eea8a706c4c34a16891f84e7b'),
(4, 'AIDA GUADALUPE', 'GIORGANA', 'HIDALGO', 6571851367, 'GIHA621212MTCRDD03', 'GIHA621212G67', '035-07-2481', 'warren.ullrich@hotmail.com', 'CARRETERA PRESA LA AMISTAD 160 S/N, CIUDAD ACUÑA CENTRO', '827ccb0eea8a706c4c34a16891f84e7b'),
(5, 'REGINO', 'CARRILLO', 'VICENCIO', 6571059559, 'CAVR540908HVZRCG07', 'CAVR540908II5', '400-09-0514', 'jettie26@bartoletti.com', 'CANALES 1001 6, POPULAR, 874100', '827ccb0eea8a706c4c34a16891f84e7b'),
(6, 'RIGOBERTO', 'SANCHEZ', 'ALONSO', 6571424237, 'SAAR560913HOCNLG04', 'SAAR560913BP8', '504-01-3160', 'cole.deja@parisian.biz', 'FELIX U GOMEZ 1406 NTE, TERMINAL, 645118', '827ccb0eea8a706c4c34a16891f84e7b'),
(7, 'ROSA ELIA', 'SANTILLAN', 'ALMANZA', 6571889290, 'SAAR570720MTSNLS04', 'SAAR570720PW4', '541-05-1612', 'trey80@yahoo.com', 'MORELOS NO. 800, CENTRO, 68000', '827ccb0eea8a706c4c34a16891f84e7b'),
(8, 'RAYMUNDO', 'SANTIAGO', 'AGUSTIN', 6571470552, 'SAAR571005HOCNGY03', 'SAAR571005CY1', '050-48-7675', 'denesik.tomasa@gmail.com', 'RAFAEL M HIDALGO PTE NO. 200 S/N, FRANCISCO MURGUIA, 50161', '827ccb0eea8a706c4c34a16891f84e7b'),
(9, 'MODESTA SUSANA', 'CERVANTES', 'LOPEZ', 6571850495, 'CELM650413MDFRPD00', 'CELM650413MX1', '248-94-1662', 'arely.kilback@bode.com', 'GUERRERO 1011 A, CENTRO, 88000', '827ccb0eea8a706c4c34a16891f84e7b'),
(10, 'MIGUEL', 'JAIMES', 'NAJERA', 6571763556, 'JANM821217HDFMJG04', 'JANM821217PM9', '401-38-6618', 'cronin.erik@gmail.com', 'EJE CENTRAL ESQ CALLE 13 SN, PROGRESO NACIONAL', '827ccb0eea8a706c4c34a16891f84e7b'),
(11, 'FERNANDO', 'AZUARA', 'MOLAR', 6571578402, 'AUMF821206HVZZLR06', 'AUMF821206I42', '521-15-1053', 'bogan.arjun@osinski.com', 'PUERTA DEL SOL NO. 108 NO. 7, COLINA DE SAN JERONIMO, 64666', '827ccb0eea8a706c4c34a16891f84e7b'),
(12, 'MA DEL CARMEN', 'FLORES', 'ROJAS', 6571251042, 'FORC620215MGTLJR07', 'FORM620215K41', '005-22-0543', 'dmarquardt@hane.info', 'Calle Cuarenta Y Dos 1274-A', '827ccb0eea8a706c4c34a16891f84e7b'),
(13, 'CORNELIO DELFINO', 'FLORES', 'ROSAS', 6571413704, 'FORC620916HPLLSR05', 'FORC620916B7A', '486-36-9237', 'mafalda.batz@funk.biz', 'VICENTE LOMBARDO TOLEDANO NO. 250, SANTA MARIA TOTOLTEPEC, 50200', '827ccb0eea8a706c4c34a16891f84e7b'),
(14, 'RICARDO', 'FLORES', 'PULIDO', 6571742737, 'FOPR640602HTLLLC02', 'FOPR640602TT1', '005-54-3392', 'holden44@herman.com', '45 PONIENTE 2459-A S/N, LIBERTAD, 72450', '827ccb0eea8a706c4c34a16891f84e7b'),
(15, 'RAMON', 'FLORES', 'PAZ', 6571941831, 'FOPR650608HNTLZM00', 'FOPR650608T82', '008-32-9513', 'xsmitham@cole.biz', 'PASEO DE LAS FRESAS NO. 721 NO. A, JARD DE IRAPUATO, 365135', '827ccb0eea8a706c4c34a16891f84e7b');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `table1`
--
ALTER TABLE `table1`
  ADD UNIQUE KEY `column1` (`column1`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
