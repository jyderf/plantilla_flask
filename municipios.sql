-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.3.0 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para municipios
CREATE DATABASE IF NOT EXISTS `municipios` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `municipios`;

-- Volcando estructura para tabla municipios.departamento
CREATE TABLE IF NOT EXISTS `departamento` (
  `iddepartamento` int NOT NULL AUTO_INCREMENT,
  `departamento` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`iddepartamento`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla municipios.departamento: ~3 rows (aproximadamente)
DELETE FROM `departamento`;
INSERT INTO `departamento` (`iddepartamento`, `departamento`) VALUES
	(1, 'Putumayo'),
	(2, 'Nariño'),
	(3, 'Antioquia');

-- Volcando estructura para tabla municipios.municipio
CREATE TABLE IF NOT EXISTS `municipio` (
  `idmunicipio` int NOT NULL AUTO_INCREMENT,
  `municipio` varchar(15) DEFAULT NULL,
  `iddepartamento` int DEFAULT NULL,
  PRIMARY KEY (`idmunicipio`),
  KEY `iddepartamento` (`iddepartamento`),
  CONSTRAINT `municipio_ibfk_1` FOREIGN KEY (`iddepartamento`) REFERENCES `departamento` (`iddepartamento`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla municipios.municipio: ~6 rows (aproximadamente)
DELETE FROM `municipio`;
INSERT INTO `municipio` (`idmunicipio`, `municipio`, `iddepartamento`) VALUES
	(1, 'Mocoa', 1),
	(2, 'Villagarzón', 1),
	(3, 'Pasto', 2),
	(4, 'Samaniego', 2),
	(5, 'Medellín', 3),
	(6, 'Bello', 3);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
