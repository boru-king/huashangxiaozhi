-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        8.0.25 - MySQL Community Server - GPL
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 导出 eduxiaozhi 的数据库结构
CREATE DATABASE IF NOT EXISTS `eduxiaozhi` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `eduxiaozhi`;

-- 导出  表 eduxiaozhi.appointment 结构
CREATE TABLE IF NOT EXISTS `appointment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `id_card` varchar(18) NOT NULL,
  `department` varchar(50) NOT NULL,
  `date` varchar(10) NOT NULL,
  `time` varchar(10) NOT NULL,
  `doctor_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  eduxiaozhi.appointment 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` (`id`, `username`, `id_card`, `department`, `date`, `time`, `doctor_name`) VALUES
	(2, '陈贤广', '545455', '内科', '2025-11-28', '下午', ''),
	(3, '陈贤广', '545455', '内科', '2025-11-28', '上午', '李医生'),
	(4, '张三丰', '130821200909093777', '神经内科', '2025-11-28', '上午', '崔丽英');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;

-- 导出  表 eduxiaozhi.appointment_number 结构
CREATE TABLE IF NOT EXISTS `appointment_number` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `schedule_id` bigint NOT NULL,
  `status` enum('FREE','LOCKED','BOOKED') DEFAULT 'FREE',
  `patient_name` varchar(50) DEFAULT NULL,
  `patient_id_card` varchar(18) DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_schedule` (`schedule_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  eduxiaozhi.appointment_number 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `appointment_number` DISABLE KEYS */;
INSERT INTO `appointment_number` (`id`, `schedule_id`, `status`, `patient_name`, `patient_id_card`, `create_time`, `update_time`) VALUES
	(52, 1, 'FREE', NULL, NULL, '2025-11-27 14:47:11', '2025-11-27 14:47:11'),
	(53, 1, 'FREE', NULL, NULL, '2025-11-27 14:47:11', '2025-11-27 14:47:11'),
	(54, 1, 'FREE', NULL, NULL, '2025-11-27 14:47:11', '2025-11-27 14:47:11'),
	(55, 1, 'FREE', NULL, NULL, '2025-11-27 14:47:11', '2025-11-27 14:47:11'),
	(56, 1, 'FREE', NULL, NULL, '2025-11-27 14:47:11', '2025-11-27 14:47:11'),
	(57, 1, 'FREE', NULL, NULL, '2025-11-27 14:47:11', '2025-11-27 14:47:11'),
	(58, 1, 'FREE', NULL, NULL, '2025-11-27 14:47:11', '2025-11-27 14:47:11'),
	(59, 1, 'FREE', NULL, NULL, '2025-11-27 14:47:11', '2025-11-27 14:47:11'),
	(60, 1, 'FREE', NULL, NULL, '2025-11-27 14:47:11', '2025-11-27 14:47:11'),
	(61, 1, 'FREE', NULL, NULL, '2025-11-27 14:47:11', '2025-11-27 14:47:11'),
	(62, 1, 'FREE', NULL, NULL, '2025-11-27 14:47:11', '2025-11-27 14:47:11'),
	(63, 1, 'FREE', NULL, NULL, '2025-11-27 14:47:11', '2025-11-27 14:47:11'),
	(64, 1, 'FREE', NULL, NULL, '2025-11-27 14:47:11', '2025-11-27 14:47:11'),
	(65, 1, 'FREE', NULL, NULL, '2025-11-27 14:47:11', '2025-11-27 14:47:11'),
	(66, 1, 'FREE', NULL, NULL, '2025-11-27 14:47:11', '2025-11-27 14:47:11'),
	(67, 1, 'FREE', NULL, NULL, '2025-11-27 14:47:11', '2025-11-27 14:47:11'),
	(68, 1, 'FREE', NULL, NULL, '2025-11-27 14:47:11', '2025-11-27 14:47:11'),
	(69, 1, 'FREE', NULL, NULL, '2025-11-27 14:47:11', '2025-11-27 14:47:11'),
	(70, 1, 'FREE', NULL, NULL, '2025-11-27 14:47:11', '2025-11-27 14:47:11'),
	(71, 1, 'FREE', NULL, NULL, '2025-11-27 14:47:11', '2025-11-27 14:47:11'),
	(72, 3, 'LOCKED', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 16:56:06'),
	(73, 2, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(74, 1, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(75, 3, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(76, 2, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(77, 1, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(78, 3, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(79, 2, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(80, 1, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(81, 3, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(82, 2, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(83, 1, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(84, 3, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(85, 2, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(86, 1, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(87, 3, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(88, 2, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(89, 1, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(90, 3, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(91, 2, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(92, 1, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(93, 3, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(94, 2, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(95, 1, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(96, 3, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(97, 2, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(98, 1, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(99, 3, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(100, 2, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(101, 1, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(102, 3, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(103, 2, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(104, 1, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(105, 3, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(106, 2, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(107, 1, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(108, 3, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(109, 2, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(110, 1, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(111, 3, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(112, 2, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(113, 1, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(114, 3, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(115, 2, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(116, 1, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(117, 3, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(118, 2, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(119, 1, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(120, 3, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(121, 2, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(122, 1, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(123, 3, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(124, 2, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(125, 1, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(126, 3, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(127, 2, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(128, 1, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(129, 3, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(130, 2, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43'),
	(131, 1, 'FREE', NULL, NULL, '2025-11-27 14:56:43', '2025-11-27 14:56:43');
/*!40000 ALTER TABLE `appointment_number` ENABLE KEYS */;

-- 导出  表 eduxiaozhi.doctor_schedule 结构
CREATE TABLE IF NOT EXISTS `doctor_schedule` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `department` varchar(50) NOT NULL,
  `doctor_name` varchar(50) NOT NULL,
  `work_date` date NOT NULL,
  `time_slot` enum('上午','下午') NOT NULL,
  `total_limit` int NOT NULL DEFAULT '20',
  `version` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_schedule` (`department`,`doctor_name`,`work_date`,`time_slot`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  eduxiaozhi.doctor_schedule 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `doctor_schedule` DISABLE KEYS */;
INSERT INTO `doctor_schedule` (`id`, `department`, `doctor_name`, `work_date`, `time_slot`, `total_limit`, `version`) VALUES
	(1, '内科', '王医生', '2025-11-27', '上午', 20, 0),
	(2, '内科', '李医生', '2025-11-28', '上午', 20, 0),
	(3, '内科', '黄医生', '2025-11-28', '下午', 30, 0);
/*!40000 ALTER TABLE `doctor_schedule` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
