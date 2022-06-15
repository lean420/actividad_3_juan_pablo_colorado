-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para "tienda_deportiva_el_podio"
DROP DATABASE IF EXISTS `"tienda_deportiva_el_podio"`;
CREATE DATABASE IF NOT EXISTS `"tienda_deportiva_el_podio"` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `"tienda_deportiva_el_podio"`;

-- Volcando estructura para tabla "tienda_deportiva_el_podio".customers
DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `premium` bit(1) NOT NULL DEFAULT b'1',
  `phone_number` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla "tienda_deportiva_el_podio".customers: ~3 rows (aproximadamente)
DELETE FROM `customers`;
INSERT INTO `customers` (`id`, `name`, `premium`, `phone_number`) VALUES
	(1, 'hamilton rodriges', b'1', '3222009823'),
	(2, 'juan pablo alvarez', b'1', '3003463208'),
	(3, 'sandra zuñiga', b'0', '2435576567');

-- Volcando estructura para tabla "tienda_deportiva_el_podio".form of payment
DROP TABLE IF EXISTS `form of payment`;
CREATE TABLE IF NOT EXISTS `form of payment` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `method` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla "tienda_deportiva_el_podio".form of payment: ~3 rows (aproximadamente)
DELETE FROM `form of payment`;
INSERT INTO `form of payment` (`id`, `method`) VALUES
	(1, 'check'),
	(2, 'effective'),
	(3, 'tdc_amex');

-- Volcando estructura para tabla "tienda_deportiva_el_podio".invoice
DROP TABLE IF EXISTS `invoice`;
CREATE TABLE IF NOT EXISTS `invoice` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `value` float NOT NULL,
  `payment_formt` smallint(6) NOT NULL,
  `product_id` smallint(6) NOT NULL,
  `customer_id` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla "tienda_deportiva_el_podio".invoice: ~4 rows (aproximadamente)
DELETE FROM `invoice`;
INSERT INTO `invoice` (`id`, `date`, `value`, `payment_formt`, `product_id`, `customer_id`) VALUES
	(1, '2022-06-13', 30000, 2, 2, 1),
	(2, '2022-06-13', 55000, 2, 4, 1),
	(3, '2022-06-13', 40000, 1, 3, 3),
	(4, '2022-06-13', 60000, 3, 1, 2);

-- Volcando estructura para tabla "tienda_deportiva_el_podio".products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `measure` float NOT NULL DEFAULT 0,
  `value` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla "tienda_deportiva_el_podio".products: ~4 rows (aproximadamente)
DELETE FROM `products`;
INSERT INTO `products` (`id`, `name`, `measure`, `value`) VALUES
	(1, 'soccer ball', 30, 30000),
	(2, 'sports shirt', 40, 55000),
	(3, 'sports sweatshirt', 34, 40000),
	(4, 'balon basket', 25, 60000);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
