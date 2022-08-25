-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 24-08-2022 a las 23:55:23
-- Versión del servidor: 10.6.7-MariaDB-2ubuntu1.1
-- Versión de PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lista_equipos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos administrativos`
--

CREATE TABLE `equipos administrativos` (
  `ID` int(255) NOT NULL,
  `Usuario` varchar(255) DEFAULT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Puesto` varchar(255) NOT NULL,
  `Dependencia` varchar(255) NOT NULL,
  `IP` varchar(255) DEFAULT NULL,
  `Servidor` varchar(255) DEFAULT NULL,
  `Inventario` varchar(255) NOT NULL,
  `Procesador` varchar(255) DEFAULT NULL,
  `Frecuencia` varchar(255) DEFAULT NULL,
  `RAM` varchar(255) DEFAULT NULL,
  `Sistema Operativo` varchar(255) DEFAULT NULL,
  `Marca` varchar(255) NOT NULL,
  `Modelo` varchar(255) DEFAULT NULL,
  `ECOSYS 314` char(1) NOT NULL,
  `TASKalfa` char(1) NOT NULL,
  `M5521` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `equipos administrativos`
--

INSERT INTO `equipos administrativos` (`ID`, `Usuario`, `Nombre`, `Puesto`, `Dependencia`, `IP`, `Servidor`, `Inventario`, `Procesador`, `Frecuencia`, `RAM`, `Sistema Operativo`, `Marca`, `Modelo`, `ECOSYS 314`, `TASKalfa`, `M5521`) VALUES
(1, 'Social2', 'Vianney Hernández Hernández', 'Administrativo Especializado', 'Becas', '192.168.0.96', '192.168.0.30', 'CECDG04DG-0183-001', 'Intel Core i3-8100', '3.6 GHz', '4GB', 'Windows 10 Pro', 'DELL', 'OptiPlex 380', 'S', 'S', 'S'),
(2, 'Vinculación1', 'Fernando Aco Rivera', 'Apoyo Vinculación', 'Vinculación', '192.168.0.65', '192.168.0.30', 'CECDG04DG-0366-001', 'Intel Celeron ', '2.5 GHz', '2GB', 'Windows 7', 'DELL', 'OptiPlex 380', 'N', 'N', 'N'),
(3, 'Vinculación', 'José Luis González Zamora', 'Vinculador', 'Vinculación', '192.168.0.94', '192.168.0.30', 'CECDG04DG-0252-001', 'Intel Core i5', '3.2 GHz', '4GB', 'Windows 7', 'HP', 'Compaq PRO 6300', 'N', 'N', 'N'),
(4, 'Biblioteca', 'Brenda Belén Carmona Ruiz', 'Encargado de Biblioteca', 'Coordinación de Extensión Educativa', '192.168.0.110', '192.168.0.30', 'CECDG04DG-0053-001', 'Intel Celeron', '2.5 GHz', '2GB', 'Windows 7', 'DELL', 'OptiPlex 380', 'N', 'N', 'N'),
(5, 'Emprendedor', 'Fátima Mora Rodríguez', 'Encargado de Centro Emprendedor', 'Coordinación de Extensión Educativa', '192.168.0.89', '192.168.0.30', 'CECDG04DG-0206-001', 'Intel Celeron ', '2.5 GHz', '2GB', 'Windows 7', 'DELL', 'OptiPlex 380', 'N', 'S', 'N'),
(6, 'COSIG', 'Yesenia Ortega Luna', 'Encargado COSIG', 'Vinculación', '192.168.0.50', '192.168.0.30', 'CECDG04DG-0380-001', 'Intel Core i5', '3.4 GHz', '8GB', 'Windows 7', 'HP', 'ProDesk', 'N', 'N', 'N'),
(7, 'RECURSOS', 'Yesenia Hernández Díaz', 'Recusos', 'Coordinación Académica', '192.168.0.63', '192.168.0.30', 'CECCH04DG-0242-001', 'Intel Core i5', '3.2 GHz', '4GB', 'Windows 7', 'HP', 'ProDesk', 'N', 'S', 'S'),
(8, 'Aprendizaje', 'Angélica López Méndez', 'Apoyo al Aprendizaje', 'Coordinación Académica', '192.168.0.64', '192.168.0.30', 'CECCH04DG-0236-001', 'Intel Core i5', '3.2 GHz', '4GB', 'Windows 7', 'HP', 'ProDesk', 'S', 'S', 'N'),
(9, 'ACADÉMICO', 'Azucena Meneses Jiménez', 'Coordinador Académico', 'Coordinación Académica', '192.168.0.61', '192.168.0.30', 'CECCH04DG-0377-001', 'Intel Core i5', '3.4 GHz', '8GB', 'Windows 7', 'HP', 'ProDesk', 'S', 'S', 'N'),
(10, 'Capturista', 'Maricela Castillo Pérez', 'Auxiliar Coordinador Académico', 'Coordinación Académica', '192.168.0.60', '192.168.0.30', 'CECCH04DG-0369-001', 'Intel Core i3-8100', '3.6 GHz', '4GB', 'Windows 10 Pro', 'DELL', 'OptiPlex 3060', 'S', 'S', 'N'),
(11, 'ORDEN', 'Iván Morales Pérez', 'Encargado de Orden', 'Coordinación de Extensión Educativa', '192.168.0.92', '192.168.0.30', 'CECDG04DG-0252-001', 'Intel Celeron', '2.5 GHz', '2GB', 'Windows 7', 'DELL', 'OptiPlex 380', 'N', 'S', 'N'),
(12, 'ORDEN 2', 'Osmar Lezama Sandoval', 'Encargado de Orden', 'Coordinación de Extensión Educativa', '192.168.0.80', '192.168.0.30', 'CECDG04DG-0178-001', 'Intel Core i3-8100', '3.6 GHz', '4GB', 'Windows 11', 'DELL', 'OptiPlex 3060', 'S', 'S', 'N'),
(13, 'AUXEDUCATIVA', 'Sara Gutiérrez Gasca', 'Auxiliar de Extensión Educativa', 'Coordinación de Extensión Educativa', '192.168.0.51', '192.168.0.30', 'CECDG04DG-0370-001', 'Intel Core i3-8100', '3.6 GHz', '4GB', 'Windows 10 Pro', 'DELL', 'OptiPlex 3080', 'S', 'S', 'N'),
(14, 'AUXPSICO', 'Evelin Reina Medina González', 'Orientadora', 'Orientación Educativa', '192.168.0.108', '192.168.0.2', 'CECCH04DG-0367-001', 'Intel Core i3-8100', '3.6 GHz', '4GB', 'Windows 10 Pro', 'DELL', 'OptiPlex 3060', 'N', 'S', 'N'),
(15, 'PSICÓLOGA', 'Fidelia Rivera Martínez', 'Orientadora', 'Orientación Educativa', '192.168.0.58', '192.168.0.30', 'CECCH04DG-0374-001', 'Intel Core i3-8100', '3.6 GHz', '4GB', 'Windows 10 Pro', 'DELL', 'OptiPlex 3060', 'N', 'S', 'N'),
(16, 'SOCIAL', 'María de Jesús Romo Rodríguez', 'Orientadora', 'Orientación Educativa', '192.168.0.57', '192.168.0.1', 'CECCH04DG-0375-001', 'Intel Core i3-8100', '3.6 GHz', '4GB', 'Windows 10 Pro', 'DELL', 'OptiPlex 3060', 'N', 'S', 'N'),
(17, 'ENCARGADOQUIM', 'Guadalupe Arisbeth Muñoz Negrete', 'Laboratorista LUM', 'Coordinación Académica', '192.168.0.99', '192.168.0.1', 'CECCH04DH-0193-001', 'Intel Celeron', '2.5 GHz', '2GB', 'Windows 7', 'DELL', 'OptiPlex 380', 'N', 'N', 'N'),
(18, 'DOCENTE11', 'Gabriela Arroyo López', 'Docente', 'Sala de maestros', '192.168.0.106', '192.168.0.1', 'CECCH04DG-0221-001', 'Intel Core i5', '3.2 GHz', '4GB', 'Windows 7', 'HP', 'ProDesk', 'N', 'N', 'N'),
(19, 'DOCENTE9', 'Myriam Aguilar Aragón', 'Docente', 'Sala de maestros', '192.168.0.77', '192.168.0.1', 'CECCH04DG-0073-001', 'Intel Celeron', '2.5 GHz', '2GB', 'Windows 7', 'DELL', 'OptiPlex 380', 'N', 'N', 'N'),
(20, 'COMPUTO29', 'Carlos Uriel Sánchez Vela', 'Docente', 'Sala de maestros', '192.168.0.90', '192.168.0.1', 'CECCH04DG-0103-001', 'Intel Celeron', '2.5 GHz', '2GB', 'Windows 7', 'DELL', 'OptiPlex 380', 'N', 'N', 'N'),
(21, 'DOCENTE12', 'Genaro Santos Ordóñez', 'Docente', 'Sala de maestros', '192.168.0.109', '192.168.0.1', 'CECCH04DG-0124-001', 'Intel Celeron', '2.5 GHz', '2GB', 'Windows 7', 'DELL', 'OptiPlex 380', 'N', 'N', 'N'),
(22, 'COMPUTO48', 'Guadalupe Ortega Rodríguez', 'Docente', 'Sala de maestros', '192.168.0.95', '192.168.0.1', 'CECCH04DG-0188-001', 'Intel Celeron', '2.5 GHz', '2GB', 'Windows 7', 'DELL', 'OptiPlex 380', 'N', 'N', 'N'),
(23, 'Colectivo2', 'Jacqueline Cortés Rodríguez', 'Docente', 'Sala de maestros', '192.168.0.81', '192.168.0.1', 'CECCH04DG-0226-001', 'Intel Core i5', '3.2 GHz', '4GB', 'Windows 7', 'HP', 'ProDesk', 'N', 'N', 'N'),
(24, 'COMPUTO34', 'Daniel Castro Pérez', 'Docente', 'Sala de maestros', '192.168.0.73', '192.168.0.1', 'CECCH04DG-0108-001', 'Intel Celeron', '2.5 GHz', '2GB', 'Windows 7', 'DELL', 'OptiPlex 380', 'N', 'N', 'N'),
(25, 'DOCENTE6', 'Leonardo Ruiz Nava', 'Docente', 'Sala de maestros', '192.168.0.74', '192.168.0.1', 'CECCH04DG-0074-001', 'Intel Celeron', '2.5 GHz', '2GB', 'Windows 7', 'DELL', 'OptiPlex 380', 'N', 'N', 'N'),
(26, 'DOCENTE2', 'Miguel Ramón Rullán González', 'Docente', 'Sala de maestros', '192.168.0.83', '192.168.0.1', 'CECCH04DG-0126-001', 'Intel Celeron', '2.5 GHz', '2GB', 'Windows 7', 'DELL', 'OptiPlex 380', 'N', 'N', 'N'),
(27, 'Colectivo3', 'Miguel Ángel López Álvarez', 'Docente', 'Sala de maestros', '192.168.0.82', '192.168.0.30', 'CECCH04DG-0237-001', 'Intel Core i5', '3.2 GHz', '4GB', 'Windows 7', 'HP', 'ProDesk', 'N', 'N', 'N'),
(28, 'DOCENTE8', 'María Castro Sánchez', 'Docente', 'Sala de maestros', '192.168.0.73', '192.168.0.30', 'CECCH04DG-0128-001', 'Intel Celeron', '2.5 GHz', '2GB', 'Windows 7', 'DELL', 'OptiPlex 380', 'N', 'N', 'N'),
(29, 'IDIOMAS50', 'Crisógona Pérez Martínez', 'Docente', 'Academia Sociales Humanidades', '192.168.1.102', '192.168.1.1', 'CECCH04DG-180-001', 'Intel Celeron', '2.5 GHz', '2GB', 'Windows 7', 'DELL', 'OptiPlex 380', 'N', 'N', 'N'),
(30, 'COMPUTO36', 'Yesenia Cisneros Cruz', 'Docente', 'Academia Sociales Humanidades', '192.168.1.104', '192.168.1.1', 'CECCH04DH-110-001', 'Intel Celeron', '2.5 GHz', '2GB', 'Windows 7', 'DELL', 'OptiPlex 380', 'N', 'N', 'N'),
(31, 'COMPUTO47', 'Daniel Hernández Arroyo', 'Docente', 'Academia Sociales Humanidades', '192.168.1.103', '192.168.1.1', 'CECCH04DG-019-001', 'Intel Celeron', '2.5 GHz', '2GB', 'Windows 7', 'DELL', 'OptiPlex 380', 'N', 'N', 'N'),
(32, 'COMPUTO28', 'Sonia Mirely Avilés Arroyo', 'Docente', 'Academia Sociales Humanidades', '192.168.1.101', '192.168.1.1', 'CECCH04DG-102-001', 'Intel Celeron', '2.5 GHz', '2GB', 'Windows 7', 'DELL', 'OptiPlex 380', 'N', 'N', 'N'),
(33, 'udocente5', 'Alma Nohemí López Domínguez', 'Docente', 'Academia Sociales Humanidades', '', '192.168.1.1', 'CECCH04DG-127-001', 'Intel Celeron', '2.5 GHz', '2GB', 'Windows 7', 'DELL', 'OptiPlex 380', 'N', 'N', 'N'),
(34, 'DOCENTE14', 'Blanca Flor Hernández Matamoros', 'Docente', 'Sala de maestros', '192.168.0.101', '192.168.0.30', 'CECCH04DG-0372-001', 'Intel Core i3-8100', '3.6 GHz', '4GB', 'Windows 10 Pro', 'DELL', 'OptiPlex 3060', 'N', 'N', 'N'),
(35, 'DOCENTE10', 'Mariel Durán Hernández', 'Docente', 'Sala de maestros', '192.168.0.78', '192.168.0.30', 'CECCH04DG-0231-001', 'Intel Core i5', '3.2 GHz', '4GB', 'Windows 7', 'HP', 'ProDesk', 'N', 'N', 'N'),
(36, '', 'María Soledad Díaz Reyes', 'Encargado Taller SERH', 'Coordinación Académica', '', '', 'CECDG04DG-0191-001', 'Intel Celeron', '2.5 GHz', '2GB', 'Windows 7', 'DELL', 'OptiPlex 380', 'N', 'N', 'N'),
(37, 'Enfermeria', 'Angélica Olvera García', 'Enfermera', 'Coordinación de Extensión Educativa', '192.168.0.66', '192.168.0.30', 'CECCH04DH-0256-001', 'Intel Core i5-3470', '3.2 GHz', '4GB', 'Windows 7', 'HP', 'Compaq PRO 6300', 'N', 'N', 'N'),
(38, 'DIRECCION', 'Miguel Ángel Rodríguez Flores', 'Director', 'Dirección', '', '', 'CECCH04DG-0239-001', '', '', '', 'Windows 10 Pro', 'HP', 'Compaq Pro 6300', 'N', 'N', 'N'),
(39, 'SECREDIRECTOR', 'María Dolores Frías Arroyo', 'Secretaria del Director', 'Dirección', '192.192.0.52', '192.168.0.30', 'CECCH04DG-0371-001', 'Intel Core i3-8100', '3.6 GHz', '4GB', 'Windows 10 Pro', 'DELL', 'OptiPlex 3060', 'N', 'N', 'N'),
(40, 'PROGRAMADOR', 'Juan Carlos Martínez Herrera', 'Programador', 'Coordinación Administrativa', '192.192.0.56', '192.168.0.30', 'SIN ASIGNAR', 'Intel Core i5-10400', '2.9 GHz', '8GB', 'Windows 10 Pro', 'DELL', 'Vostro', 'N', 'N', 'N'),
(41, 'ARCHIVO', 'Aída Sánchez Vargas', 'Encargada del Archivo', 'Dirección', '192.168.0.111', '192.168.0.30', 'CECCH04DG-0178-001', 'Intel Celeron', '2.5 GHz', '2GB', 'Windows 7', 'DELL', 'OptiPlex 380', 'N', 'N', 'N'),
(42, '', 'María Flora Castillo Vega', 'Jefa Oficina Infraestructura', 'Coordinación Administrativa', '', '', 'CECCH04DG-0228-001', '', '', '', 'Windows 7', 'HP', 'Compaq PRO 6300', 'N', 'N', 'N');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `equipos administrativos`
--
ALTER TABLE `equipos administrativos`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
