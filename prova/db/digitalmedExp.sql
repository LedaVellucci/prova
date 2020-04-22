-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versione server:              10.4.12-MariaDB - mariadb.org binary distribution
-- S.O. server:                  Win64
-- HeidiSQL Versione:            11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dump della struttura del database digitalmed
CREATE DATABASE IF NOT EXISTS `digitalmed` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `digitalmed`;

-- Dump della struttura di tabella digitalmed.farmaci
CREATE TABLE IF NOT EXISTS `farmaci` (
  `IDPharma` int(11) NOT NULL DEFAULT 0,
  `Name` char(50) DEFAULT NULL,
  `ExpirationDate` date DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Conservation` text DEFAULT NULL,
  `Link` tinytext DEFAULT NULL,
  PRIMARY KEY (`IDPharma`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella digitalmed.farmaci: ~2 rows (circa)
/*!40000 ALTER TABLE `farmaci` DISABLE KEYS */;
INSERT INTO `farmaci` (`IDPharma`, `Name`, `ExpirationDate`, `Quantity`, `Conservation`, `Link`) VALUES
	(1, 'Oki', '2020-04-21', 5, '20 C', 'C:\\Users\\Marta\\Desktop\\ICT\\Nostro progetto\\Farmaci\\OKI'),
	(2, 'A', '2021-04-21', 10, '20C', 'C:\\Users\\Marta\\Desktop\\ICT\\Nostro progetto\\Farmaci\\AA');
/*!40000 ALTER TABLE `farmaci` ENABLE KEYS */;

-- Dump della struttura di tabella digitalmed.reparti
CREATE TABLE IF NOT EXISTS `reparti` (
  `IDWard` int(11) NOT NULL,
  `NameWard` varchar(50) DEFAULT NULL,
  `IDPharma` varchar(50) NOT NULL,
  `NamePharma` varchar(50) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDPharma`,`IDWard`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella digitalmed.reparti: ~3 rows (circa)
/*!40000 ALTER TABLE `reparti` DISABLE KEYS */;
INSERT INTO `reparti` (`IDWard`, `NameWard`, `IDPharma`, `NamePharma`, `Quantity`) VALUES
	(1, 'Terapia', '1', 'OKI', 10),
	(2, 'PS', '1', 'OKI', 20),
	(1, 'Terapia', '2', 'AA', 5);
/*!40000 ALTER TABLE `reparti` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
