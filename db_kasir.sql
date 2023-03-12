/*
Navicat MySQL Data Transfer

Source Server         : db
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db_kasir

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2023-03-12 15:32:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbl_barang`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_barang`;
CREATE TABLE `tbl_barang` (
  `kd_barang` varchar(15) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `kategori` varchar(15) NOT NULL,
  `harga_jual` int(90) NOT NULL,
  `harga_beli` int(90) NOT NULL,
  `stok` int(30) NOT NULL,
  `NAMA_USER` varchar(30) NOT NULL,
  `ID_USER` varchar(10) NOT NULL,
  PRIMARY KEY (`kd_barang`),
  KEY `ID_USER` (`ID_USER`),
  CONSTRAINT `tbl_barang_ibfk_1` FOREIGN KEY (`ID_USER`) REFERENCES `tbl_user` (`ID_USER`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_barang
-- ----------------------------
INSERT INTO `tbl_barang` VALUES ('AT0001', 'Pulpen Standar', 'Alat Tulis', '2000', '1000', '100', 'Hago', 'USER0002');
INSERT INTO `tbl_barang` VALUES ('AT0002', 'Pensil', 'Alat Tulis', '2500', '1500', '100', 'Hago', 'USER0002');
INSERT INTO `tbl_barang` VALUES ('AT0003', 'Kuas', 'Alat Tulis', '5000', '4000', '100', 'Hago', 'USER0002');
INSERT INTO `tbl_barang` VALUES ('MI0001', 'Aqua', 'Minuman', '4000', '3000', '100', 'Hago', 'USER0002');
INSERT INTO `tbl_barang` VALUES ('MI0002', 'Mizone', 'Minuman', '5000', '3000', '100', 'Hago', 'USER0002');
INSERT INTO `tbl_barang` VALUES ('MI0003', 'Torpedo', 'Minuman', '1500', '1000', '100', 'Hago', 'USER0002');
INSERT INTO `tbl_barang` VALUES ('MK0001', 'Indomie', 'Makanan', '3000', '2000', '100', 'Hago', 'USER0002');
INSERT INTO `tbl_barang` VALUES ('MK0002', 'Kerupuk', 'Makanan', '5000', '3000', '100', 'Hago', 'USER0002');
INSERT INTO `tbl_barang` VALUES ('MK0003', 'Telor', 'Makanan', '1500', '1000', '100', 'Hago', 'USER0002');
INSERT INTO `tbl_barang` VALUES ('PK0001', 'Baju Ultramen', 'Pakaian', '100000', '80000', '100', 'Hago', 'USER0002');
INSERT INTO `tbl_barang` VALUES ('PK0002', 'Baju Muslim', 'Pakaian', '80000', '60000', '100', 'Hago', 'USER0002');
INSERT INTO `tbl_barang` VALUES ('PK0003', 'Jaket', 'Pakaian', '100000', '80000', '50', 'Hago', 'USER0002');

-- ----------------------------
-- Table structure for `tbl_detailtransaksi`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_detailtransaksi`;
CREATE TABLE `tbl_detailtransaksi` (
  `id_transaksi` bigint(10) NOT NULL,
  `kd_barang` varchar(15) NOT NULL,
  KEY `id_transaksi` (`id_transaksi`,`kd_barang`),
  KEY `kd_barang` (`kd_barang`),
  CONSTRAINT `tbl_detailtransaksi_ibfk_1` FOREIGN KEY (`kd_barang`) REFERENCES `tbl_barang` (`kd_barang`),
  CONSTRAINT `tbl_detailtransaksi_ibfk_2` FOREIGN KEY (`id_transaksi`) REFERENCES `tbl_transaksi` (`id_transaksi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_detailtransaksi
-- ----------------------------
INSERT INTO `tbl_detailtransaksi` VALUES ('1', 'MI0003');
INSERT INTO `tbl_detailtransaksi` VALUES ('2', 'MI0003');
INSERT INTO `tbl_detailtransaksi` VALUES ('3', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('4', 'MK0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('5', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('6', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('7', 'MK0003');
INSERT INTO `tbl_detailtransaksi` VALUES ('8', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('9', 'MK0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('10', 'MK0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('11', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('12', 'MK0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('13', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('14', 'MK0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('15', 'MK0003');
INSERT INTO `tbl_detailtransaksi` VALUES ('16', 'MK0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('17', 'MK0003');
INSERT INTO `tbl_detailtransaksi` VALUES ('18', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('19', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('20', 'AT0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('21', 'MK0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('22', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('23', 'AT0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('24', 'MK0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('25', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('26', 'MK0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('27', 'MK0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('28', 'MK0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('29', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('30', 'MK0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('31', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('32', 'MK0003');
INSERT INTO `tbl_detailtransaksi` VALUES ('33', 'MK0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('34', 'MK0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('35', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('36', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('37', 'MK0003');
INSERT INTO `tbl_detailtransaksi` VALUES ('38', 'MK0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('39', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('40', 'MK0003');
INSERT INTO `tbl_detailtransaksi` VALUES ('41', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('42', 'MK0003');
INSERT INTO `tbl_detailtransaksi` VALUES ('43', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('44', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('45', 'MK0003');
INSERT INTO `tbl_detailtransaksi` VALUES ('46', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('47', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('48', 'PK0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('49', 'MK0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('50', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('51', 'MK0003');
INSERT INTO `tbl_detailtransaksi` VALUES ('52', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('53', 'MI0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('54', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('55', 'MK0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('56', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('57', 'MI0003');
INSERT INTO `tbl_detailtransaksi` VALUES ('58', 'PK0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('59', 'MK0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('60', 'MK0003');
INSERT INTO `tbl_detailtransaksi` VALUES ('61', 'PK0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('62', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('63', 'MI0003');
INSERT INTO `tbl_detailtransaksi` VALUES ('64', 'AT0003');
INSERT INTO `tbl_detailtransaksi` VALUES ('65', 'MK0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('66', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('67', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('68', 'MK0003');
INSERT INTO `tbl_detailtransaksi` VALUES ('69', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('70', 'PK0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('71', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('72', 'AT0003');
INSERT INTO `tbl_detailtransaksi` VALUES ('73', 'MK0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('74', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('75', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('76', 'PK0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('77', 'MK0003');
INSERT INTO `tbl_detailtransaksi` VALUES ('78', 'MI0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('79', 'MK0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('80', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('81', 'MK0003');
INSERT INTO `tbl_detailtransaksi` VALUES ('82', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('83', 'MK0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('84', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('85', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('86', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('87', 'MK0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('88', 'MK0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('89', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('90', 'MK0003');
INSERT INTO `tbl_detailtransaksi` VALUES ('91', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('92', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('93', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('94', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('95', 'MK0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('96', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('97', 'MK0003');
INSERT INTO `tbl_detailtransaksi` VALUES ('98', 'MK0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('99', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('100', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('101', 'AT0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('102', 'MK0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('103', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('104', 'MK0003');
INSERT INTO `tbl_detailtransaksi` VALUES ('105', 'PK0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('106', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('107', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('108', 'MK0003');
INSERT INTO `tbl_detailtransaksi` VALUES ('109', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('110', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('111', 'MK0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('112', 'MK0003');
INSERT INTO `tbl_detailtransaksi` VALUES ('113', 'at0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('114', 'AT0001');
INSERT INTO `tbl_detailtransaksi` VALUES ('115', 'AT0002');
INSERT INTO `tbl_detailtransaksi` VALUES ('116', 'AT0001');

-- ----------------------------
-- Table structure for `tbl_level`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_level`;
CREATE TABLE `tbl_level` (
  `ID_LEVEL` int(2) NOT NULL,
  `LEVEL` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID_LEVEL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_level
-- ----------------------------
INSERT INTO `tbl_level` VALUES ('1', 'ADMIN');
INSERT INTO `tbl_level` VALUES ('2', 'GUDANG');
INSERT INTO `tbl_level` VALUES ('3', 'KASIR');

-- ----------------------------
-- Table structure for `tbl_penjualan`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_penjualan`;
CREATE TABLE `tbl_penjualan` (
  `kd_barang` varchar(15) NOT NULL,
  `nota` varchar(15) NOT NULL,
  `ID_USER` varchar(10) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `harga_jual` int(12) NOT NULL,
  `tgl_penjualan` varchar(20) NOT NULL,
  `jml_barang` int(10) NOT NULL,
  `ttl_bayar` int(100) NOT NULL,
  PRIMARY KEY (`nota`),
  KEY `kd_barang` (`kd_barang`),
  KEY `ID_USER` (`ID_USER`),
  CONSTRAINT `tbl_penjualan_ibfk_2` FOREIGN KEY (`kd_barang`) REFERENCES `tbl_barang` (`kd_barang`),
  CONSTRAINT `tbl_penjualan_ibfk_3` FOREIGN KEY (`ID_USER`) REFERENCES `tbl_user` (`ID_USER`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_penjualan
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_suplier`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_suplier`;
CREATE TABLE `tbl_suplier` (
  `id_suplier` varchar(15) NOT NULL,
  `kd_pembelian` varchar(15) NOT NULL,
  `nama_suplier` varchar(30) NOT NULL,
  `nope_suplier` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  PRIMARY KEY (`id_suplier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_suplier
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_transaksi`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_transaksi`;
CREATE TABLE `tbl_transaksi` (
  `id_transaksi` bigint(10) NOT NULL,
  `kode_transaksi` int(11) NOT NULL,
  `nama_kasir` varchar(30) NOT NULL,
  `tanggal` datetime NOT NULL,
  `harga_total` int(10) NOT NULL,
  `jumlah_barang` int(5) NOT NULL,
  PRIMARY KEY (`id_transaksi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_transaksi
-- ----------------------------
INSERT INTO `tbl_transaksi` VALUES ('1', '1', 'Kasir', '2019-03-05 17:56:20', '2000', '2');
INSERT INTO `tbl_transaksi` VALUES ('2', '1', 'Kasir', '2019-03-05 17:57:10', '3000', '2');
INSERT INTO `tbl_transaksi` VALUES ('3', '2', 'Kasir', '2019-03-06 08:38:56', '50000', '10');
INSERT INTO `tbl_transaksi` VALUES ('4', '3', 'Kasir', '2019-03-06 08:40:30', '30000', '10');
INSERT INTO `tbl_transaksi` VALUES ('5', '3', 'Kasir', '2019-03-06 08:40:45', '50000', '10');
INSERT INTO `tbl_transaksi` VALUES ('6', '4', 'Kasir', '2019-03-06 08:42:58', '50000', '10');
INSERT INTO `tbl_transaksi` VALUES ('7', '4', 'Kasir', '2019-03-06 08:43:10', '4500', '3');
INSERT INTO `tbl_transaksi` VALUES ('8', '5', 'Kasir', '2019-03-06 09:28:33', '50000', '10');
INSERT INTO `tbl_transaksi` VALUES ('9', '6', '', '2019-03-06 09:30:55', '30000', '10');
INSERT INTO `tbl_transaksi` VALUES ('10', '7', 'Kasir', '2019-03-06 09:36:23', '30000', '10');
INSERT INTO `tbl_transaksi` VALUES ('11', '7', 'Kasir', '2019-03-06 09:36:31', '50000', '10');
INSERT INTO `tbl_transaksi` VALUES ('12', '8', 'Kasir', '2019-03-06 20:56:25', '0', '5');
INSERT INTO `tbl_transaksi` VALUES ('13', '8', 'Kasir', '2019-03-06 20:57:05', '15000', '10');
INSERT INTO `tbl_transaksi` VALUES ('14', '9', '', '2019-03-06 20:59:31', '30000', '10');
INSERT INTO `tbl_transaksi` VALUES ('15', '9', '', '2019-03-06 20:59:40', '15000', '10');
INSERT INTO `tbl_transaksi` VALUES ('16', '10', '', '2019-03-06 21:00:12', '30000', '10');
INSERT INTO `tbl_transaksi` VALUES ('17', '10', '', '2019-03-06 21:00:21', '15000', '10');
INSERT INTO `tbl_transaksi` VALUES ('18', '11', '', '2019-03-06 21:00:59', '0', '10');
INSERT INTO `tbl_transaksi` VALUES ('19', '11', '', '2019-03-06 21:01:13', '50000', '10');
INSERT INTO `tbl_transaksi` VALUES ('20', '11', '', '2019-03-06 21:01:23', '100000', '10');
INSERT INTO `tbl_transaksi` VALUES ('21', '12', 'Kasir', '2019-03-07 11:44:06', '30000', '10');
INSERT INTO `tbl_transaksi` VALUES ('22', '12', 'Kasir', '2019-03-07 11:44:23', '50000', '10');
INSERT INTO `tbl_transaksi` VALUES ('23', '13', '', '2019-03-07 11:45:03', '20000', '10');
INSERT INTO `tbl_transaksi` VALUES ('24', '14', 'Kasir', '2019-03-07 11:47:57', '30000', '10');
INSERT INTO `tbl_transaksi` VALUES ('25', '14', 'Kasir', '2019-03-07 11:48:05', '50000', '10');
INSERT INTO `tbl_transaksi` VALUES ('26', '15', '', '2019-03-07 11:49:10', '30000', '10');
INSERT INTO `tbl_transaksi` VALUES ('27', '16', '', '2019-03-07 11:50:15', '30000', '10');
INSERT INTO `tbl_transaksi` VALUES ('28', '17', '', '2019-03-07 11:50:38', '30000', '10');
INSERT INTO `tbl_transaksi` VALUES ('29', '17', '', '2019-03-07 11:50:47', '50000', '10');
INSERT INTO `tbl_transaksi` VALUES ('30', '18', '', '2019-03-07 11:53:30', '30000', '10');
INSERT INTO `tbl_transaksi` VALUES ('31', '18', '', '2019-03-07 11:53:41', '50000', '10');
INSERT INTO `tbl_transaksi` VALUES ('32', '18', '', '2019-03-07 11:53:48', '15000', '10');
INSERT INTO `tbl_transaksi` VALUES ('33', '18', '', '2019-03-07 11:54:24', '30000', '10');
INSERT INTO `tbl_transaksi` VALUES ('34', '19', '', '2019-03-07 11:57:15', '30000', '10');
INSERT INTO `tbl_transaksi` VALUES ('35', '19', '', '2019-03-07 11:57:25', '50000', '10');
INSERT INTO `tbl_transaksi` VALUES ('36', '20', '', '2019-03-07 11:57:45', '50000', '10');
INSERT INTO `tbl_transaksi` VALUES ('37', '20', '', '2019-03-07 11:57:52', '15000', '10');
INSERT INTO `tbl_transaksi` VALUES ('38', '21', '', '2019-03-07 12:02:24', '30000', '10');
INSERT INTO `tbl_transaksi` VALUES ('39', '21', '', '2019-03-07 12:02:34', '50000', '10');
INSERT INTO `tbl_transaksi` VALUES ('40', '21', '', '2019-03-07 12:02:48', '15000', '10');
INSERT INTO `tbl_transaksi` VALUES ('41', '22', '', '2019-03-07 12:05:31', '50000', '10');
INSERT INTO `tbl_transaksi` VALUES ('42', '22', '', '2019-03-07 12:05:43', '15000', '10');
INSERT INTO `tbl_transaksi` VALUES ('43', '23', '', '2019-03-07 12:08:30', '50000', '10');
INSERT INTO `tbl_transaksi` VALUES ('44', '24', '', '2019-03-07 12:12:09', '50000', '10');
INSERT INTO `tbl_transaksi` VALUES ('45', '24', '', '2019-03-07 12:12:18', '15000', '10');
INSERT INTO `tbl_transaksi` VALUES ('46', '24', '', '2019-03-07 12:12:28', '75000', '15');
INSERT INTO `tbl_transaksi` VALUES ('47', '25', '', '2019-03-07 12:13:56', '50000', '10');
INSERT INTO `tbl_transaksi` VALUES ('48', '25', '', '2019-03-07 12:14:05', '1000000', '10');
INSERT INTO `tbl_transaksi` VALUES ('49', '26', '', '2019-03-07 12:19:21', '30000', '10');
INSERT INTO `tbl_transaksi` VALUES ('50', '27', '', '2019-03-07 12:22:09', '50000', '10');
INSERT INTO `tbl_transaksi` VALUES ('51', '28', '', '2019-03-07 12:22:53', '3000', '2');
INSERT INTO `tbl_transaksi` VALUES ('52', '29', 'Kasir', '2019-03-07 19:10:13', '50000', '10');
INSERT INTO `tbl_transaksi` VALUES ('53', '29', 'Kasir', '2019-03-07 19:10:24', '12000', '3');
INSERT INTO `tbl_transaksi` VALUES ('54', '30', '', '2019-03-07 19:11:42', '50000', '10');
INSERT INTO `tbl_transaksi` VALUES ('55', '31', 'Kasir', '2019-03-07 19:13:32', '30000', '10');
INSERT INTO `tbl_transaksi` VALUES ('56', '32', 'Kasir', '2019-03-07 19:14:46', '50000', '10');
INSERT INTO `tbl_transaksi` VALUES ('57', '32', 'Kasir', '2019-03-07 19:14:56', '15000', '10');
INSERT INTO `tbl_transaksi` VALUES ('58', '32', 'Kasir', '2019-03-07 19:15:05', '1000000', '10');
INSERT INTO `tbl_transaksi` VALUES ('59', '33', 'Kasir', '2019-03-07 19:17:15', '30000', '10');
INSERT INTO `tbl_transaksi` VALUES ('60', '33', 'Kasir', '2019-03-07 19:17:23', '15000', '10');
INSERT INTO `tbl_transaksi` VALUES ('61', '34', 'Kasir', '2019-03-07 19:19:47', '200000', '2');
INSERT INTO `tbl_transaksi` VALUES ('62', '34', 'Kasir', '2019-03-07 19:19:54', '50000', '10');
INSERT INTO `tbl_transaksi` VALUES ('63', '34', 'Kasir', '2019-03-07 19:20:06', '15000', '10');
INSERT INTO `tbl_transaksi` VALUES ('64', '34', 'Kasir', '2019-03-07 19:20:19', '10000', '2');
INSERT INTO `tbl_transaksi` VALUES ('65', '35', 'Kasir', '2019-03-07 19:21:58', '30000', '10');
INSERT INTO `tbl_transaksi` VALUES ('66', '35', 'Kasir', '2019-03-07 19:22:04', '50000', '10');
INSERT INTO `tbl_transaksi` VALUES ('67', '36', '', '2019-03-07 19:24:19', '50000', '10');
INSERT INTO `tbl_transaksi` VALUES ('68', '36', '', '2019-03-07 19:24:28', '15000', '10');
INSERT INTO `tbl_transaksi` VALUES ('69', '37', '', '2019-03-07 19:26:28', '50000', '10');
INSERT INTO `tbl_transaksi` VALUES ('70', '37', '', '2019-03-07 19:26:35', '100000', '1');
INSERT INTO `tbl_transaksi` VALUES ('71', '38', '', '2019-03-07 19:30:35', '50000', '10');
INSERT INTO `tbl_transaksi` VALUES ('72', '38', '', '2019-03-07 19:30:45', '25000', '5');
INSERT INTO `tbl_transaksi` VALUES ('73', '39', '', '2019-03-07 19:31:40', '30000', '10');
INSERT INTO `tbl_transaksi` VALUES ('74', '39', '', '2019-03-07 19:31:47', '25000', '5');
INSERT INTO `tbl_transaksi` VALUES ('75', '40', 'Kasir', '2019-03-07 19:47:43', '50000', '10');
INSERT INTO `tbl_transaksi` VALUES ('76', '40', 'Kasir', '2019-03-07 19:47:50', '100000', '1');
INSERT INTO `tbl_transaksi` VALUES ('77', '41', '', '2019-03-07 19:49:41', '15000', '10');
INSERT INTO `tbl_transaksi` VALUES ('78', '41', '', '2019-03-07 19:49:49', '8000', '2');
INSERT INTO `tbl_transaksi` VALUES ('79', '42', '', '2019-03-07 19:50:42', '30000', '10');
INSERT INTO `tbl_transaksi` VALUES ('80', '42', '', '2019-03-07 19:50:50', '5000', '1');
INSERT INTO `tbl_transaksi` VALUES ('81', '43', '', '2019-03-07 19:51:58', '15000', '10');
INSERT INTO `tbl_transaksi` VALUES ('82', '43', '', '2019-03-07 19:52:04', '10000', '2');
INSERT INTO `tbl_transaksi` VALUES ('83', '44', '', '2019-03-07 19:54:10', '30000', '10');
INSERT INTO `tbl_transaksi` VALUES ('84', '44', '', '2019-03-07 19:54:20', '50000', '10');
INSERT INTO `tbl_transaksi` VALUES ('85', '45', '', '2019-03-07 19:54:51', '5000', '1');
INSERT INTO `tbl_transaksi` VALUES ('86', '46', '', '2019-03-07 19:57:34', '50000', '10');
INSERT INTO `tbl_transaksi` VALUES ('87', '46', '', '2019-03-07 19:57:41', '6000', '2');
INSERT INTO `tbl_transaksi` VALUES ('88', '47', '', '2019-03-07 19:58:32', '30000', '10');
INSERT INTO `tbl_transaksi` VALUES ('89', '48', 'Kasir', '2019-03-07 20:00:47', '10000', '2');
INSERT INTO `tbl_transaksi` VALUES ('90', '48', 'Kasir', '2019-03-07 20:01:04', '9000', '6');
INSERT INTO `tbl_transaksi` VALUES ('91', '49', '', '2019-03-07 20:03:22', '5000', '1');
INSERT INTO `tbl_transaksi` VALUES ('92', '50', '', '2019-03-07 20:04:05', '50000', '10');
INSERT INTO `tbl_transaksi` VALUES ('93', '51', '', '2019-03-07 20:04:40', '50000', '10');
INSERT INTO `tbl_transaksi` VALUES ('94', '52', '', '2019-03-07 20:06:43', '5000', '1');
INSERT INTO `tbl_transaksi` VALUES ('95', '53', 'Kasir', '2019-03-13 10:28:10', '30000', '10');
INSERT INTO `tbl_transaksi` VALUES ('96', '53', 'Kasir', '2019-03-13 10:28:19', '50000', '10');
INSERT INTO `tbl_transaksi` VALUES ('97', '53', 'Kasir', '2019-03-13 10:28:26', '15000', '10');
INSERT INTO `tbl_transaksi` VALUES ('98', '54', 'Kasir', '2019-03-17 17:01:52', '15000', '5');
INSERT INTO `tbl_transaksi` VALUES ('99', '54', 'Kasir', '2019-03-17 17:02:03', '15000', '3');
INSERT INTO `tbl_transaksi` VALUES ('100', '55', '', '2019-03-17 17:04:08', '20000', '4');
INSERT INTO `tbl_transaksi` VALUES ('101', '55', '', '2019-03-17 17:04:16', '4000', '2');
INSERT INTO `tbl_transaksi` VALUES ('102', '56', 'Kasir', '2019-03-17 17:10:37', '30000', '10');
INSERT INTO `tbl_transaksi` VALUES ('103', '56', 'Kasir', '2019-03-17 17:10:47', '50000', '10');
INSERT INTO `tbl_transaksi` VALUES ('104', '56', 'Kasir', '2019-03-17 17:10:59', '3000', '2');
INSERT INTO `tbl_transaksi` VALUES ('105', '57', '', '2019-03-17 17:12:18', '100000', '1');
INSERT INTO `tbl_transaksi` VALUES ('106', '58', '', '2019-03-17 17:14:26', '5000', '1');
INSERT INTO `tbl_transaksi` VALUES ('107', '59', '', '2019-03-17 17:14:43', '15000', '3');
INSERT INTO `tbl_transaksi` VALUES ('108', '60', '', '2019-03-17 17:15:17', '1500', '1');
INSERT INTO `tbl_transaksi` VALUES ('109', '60', '', '2019-03-17 17:15:28', '10000', '2');
INSERT INTO `tbl_transaksi` VALUES ('110', '61', '', '2019-03-17 17:15:53', '50000', '10');
INSERT INTO `tbl_transaksi` VALUES ('111', '61', '', '2019-03-17 17:16:05', '50000', '10');
INSERT INTO `tbl_transaksi` VALUES ('112', '62', '', '2019-03-17 17:19:32', '3000', '2');
INSERT INTO `tbl_transaksi` VALUES ('113', '63', 'Kasir', '2019-03-20 07:22:45', '24000', '12');
INSERT INTO `tbl_transaksi` VALUES ('114', '64', 'Kasir', '2019-08-15 19:03:30', '4000', '2');
INSERT INTO `tbl_transaksi` VALUES ('115', '64', 'Kasir', '2019-08-15 19:03:39', '5000', '2');
INSERT INTO `tbl_transaksi` VALUES ('116', '65', 'asdasd', '2023-03-12 15:29:08', '4000', '2');

-- ----------------------------
-- Table structure for `tbl_user`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `ID_USER` varchar(10) NOT NULL,
  `ID_LEVEL` int(2) NOT NULL,
  `NAMA_USER` varchar(30) DEFAULT NULL,
  `JK` char(1) DEFAULT NULL,
  `TANGGAL_LAHIR` varchar(50) NOT NULL,
  `NOPE` varchar(13) DEFAULT NULL,
  `USERNAME` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_USER`) USING BTREE,
  KEY `ID_LEVEL` (`ID_LEVEL`),
  CONSTRAINT `tbl_user_ibfk_1` FOREIGN KEY (`ID_LEVEL`) REFERENCES `tbl_level` (`ID_LEVEL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('USER0001', '1', 'Isni', 'P', '2002-12-31', '085321349681', 'admin', 'admin');
INSERT INTO `tbl_user` VALUES ('USER0002', '2', 'recty', 'L', '2018-12-24', '09876543233', 'gudang', 'gudang');
INSERT INTO `tbl_user` VALUES ('USER0004', '1', 'GAGA', 'L', '2019-03-01', '098765', 'dsda', 'sdsa');
INSERT INTO `tbl_user` VALUES ('USER0005', '3', 'asdasd', 'L', '2019-03-01', '09564', 'kasir', 'kasir');
INSERT INTO `tbl_user` VALUES ('USER0006', '2', 'OALAH', 'L', '', '87656787', 'oalah', 'oalah\r');
INSERT INTO `tbl_user` VALUES ('USER0007', '1', 'hahah', 'L', '', '9876545678', 'hahah', 'hahah\r');
