-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.36-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table appinven.barang
CREATE TABLE IF NOT EXISTS `barang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kodebarang` varchar(50) DEFAULT NULL,
  `barang` varchar(50) DEFAULT NULL,
  `anggaran` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table appinven.barang: ~7 rows (approximately)
/*!40000 ALTER TABLE `barang` DISABLE KEYS */;
INSERT INTO `barang` (`id`, `kodebarang`, `barang`, `anggaran`) VALUES
	(1, '9898', 'Kursi Goyang', 190000),
	(2, '89898', 'Jangkar ', 800000),
	(3, '22323', 'sate', 290000),
	(4, '7878', 'Kursi', 800000),
	(5, '898989', 'Oke', 200000),
	(6, '78787', 'Soffel', 800000),
	(7, '88888', 'Sate Kambing', 800000);
/*!40000 ALTER TABLE `barang` ENABLE KEYS */;

-- Dumping structure for table appinven.realisasi
CREATE TABLE IF NOT EXISTS `realisasi` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `barangId` int(11) DEFAULT NULL,
  `realisasi` int(11) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table appinven.realisasi: ~4 rows (approximately)
/*!40000 ALTER TABLE `realisasi` DISABLE KEYS */;
INSERT INTO `realisasi` (`id`, `barangId`, `realisasi`, `tanggal`) VALUES
	(1, 1, 80000, '2020-01-22 02:57:34'),
	(2, 1, 500000, '2020-01-22 05:51:12'),
	(3, 7, 600000, '2020-01-22 05:51:27'),
	(4, 6, 2000, '2020-01-22 07:07:30');
/*!40000 ALTER TABLE `realisasi` ENABLE KEYS */;

-- Dumping structure for table appinven.setting
CREATE TABLE IF NOT EXISTS `setting` (
  `tokenKey` varchar(100) DEFAULT NULL,
  `tokenSecret` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table appinven.setting: ~1 rows (approximately)
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` (`tokenKey`, `tokenSecret`) VALUES
	('879af692', 'lnAXBX6a3A31DCpu');
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;

-- Dumping structure for table appinven.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `pass` varchar(150) DEFAULT NULL,
  `kategori` enum('admin','user') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table appinven.user: ~2 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `username`, `pass`, `kategori`) VALUES
	(1, 'developer', 'admin', 'admin'),
	(2, 'mandor', 'user', 'user');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
