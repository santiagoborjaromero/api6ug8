/*
 Navicat Premium Dump SQL

 Source Server         : Local
 Source Server Type    : MySQL
 Source Server Version : 80400 (8.4.0)
 Source Host           : localhost:3306
 Source Schema         : diproavilm

 Target Server Type    : MySQL
 Target Server Version : 80400 (8.4.0)
 File Encoding         : 65001

 Date: 16/08/2024 15:53:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for audit
-- ----------------------------
DROP TABLE IF EXISTS `audit`;
CREATE TABLE `audit`  (
  `idaudit` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL,
  `ipaddr` text CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL,
  `action` varchar(10) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL DEFAULT '',
  `route` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL DEFAULT '',
  `json` text CHARACTER SET utf16 COLLATE utf16_general_ci NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`idaudit`) USING BTREE,
  INDEX `IDUSER`(`iduser` ASC) USING BTREE,
  CONSTRAINT `IDUSER` FOREIGN KEY (`iduser`) REFERENCES `user` (`iduser`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf16 COLLATE = utf16_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of audit
-- ----------------------------
INSERT INTO `audit` VALUES (1, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'GET', 'users', 'null', '2024-08-12 13:21:47', '2024-08-12 16:15:56', NULL);
INSERT INTO `audit` VALUES (2, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'POST', 'saveBene', '{\"type\":\"A\",\"name\":\"SANTIAGO BORJA ROMERO\",\"comercialname\":\"LOCO\",\"identificationnumber\":\"1712030368\",\"idcountry\":\"50\",\"idprovince\":\"5\",\"idcity\":\"35\",\"address\":\"Espejo y Mexico\",\"parish\":\"Velazco\",\"phone\":\"\",\"email\":\"\",\"web\":\"\",\"creditquota\":\"0\",\"creditdays\":\"0\",\"account\":\"\"}', '2024-08-12 13:26:31', '2024-08-12 16:15:56', NULL);
INSERT INTO `audit` VALUES (3, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'POST', 'saveBene', '{\"type\":\"P\",\"name\":\"SANTIAGO BORJA ROMERO\",\"comercialname\":\"LOCO\",\"identificationnumber\":\"1712030368S\",\"idcountry\":\"50\",\"idprovince\":\"5\",\"idcity\":\"35\",\"address\":\"Espejo y Mexico\",\"parish\":\"Velazco\",\"phone\":\"\",\"email\":\"\",\"web\":\"\",\"creditquota\":\"0\",\"creditdays\":\"0\",\"account\":\"\"}', '2024-08-12 13:31:16', '2024-08-12 16:15:55', NULL);
INSERT INTO `audit` VALUES (4, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'POST', '/api6ug8/?ruta=saveRole&id=-1', '{\"name\":\"UNO\",\"scope\":\"D\",\"status\":\"0\"}', '2024-08-12 13:57:44', '2024-08-12 16:15:55', NULL);
INSERT INTO `audit` VALUES (5, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveRole&id=8', '{\"name\":\"UNO\",\"scope\":\"WD\",\"status\":\"0\",\"idrole\":\"8\"}', '2024-08-12 16:10:34', '2024-08-12 16:15:54', NULL);
INSERT INTO `audit` VALUES (6, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveRole&id=5', '{\"name\":\"UserBot\",\"scope\":\"\",\"status\":\"0\",\"idrole\":\"5\"}', '2024-08-12 16:11:30', '2024-08-12 16:11:30', NULL);
INSERT INTO `audit` VALUES (7, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveUser&id=2', '{\"fullname\":\"Santiago\",\"idrole\":\"2\",\"lang\":\"es\",\"status\":\"1\",\"iduser\":\"2\"}', '2024-08-12 16:12:17', '2024-08-12 16:12:17', NULL);
INSERT INTO `audit` VALUES (8, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'POST', '/api6ug8/?ruta=recuperarUsuario&id=23', '{\"deleted_at\":null,\"iduser\":\"23\"}', '2024-08-13 00:10:38', '2024-08-13 00:10:38', NULL);
INSERT INTO `audit` VALUES (9, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveRole&id=2', '{\"name\":\"Administrador\",\"scope\":\"RWD\",\"status\":\"1\",\"idrole\":\"2\"}', '2024-08-13 21:23:04', '2024-08-13 21:23:04', NULL);
INSERT INTO `audit` VALUES (10, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveRole&id=1', '{\"name\":\"Reporteador\",\"scope\":\"R\",\"status\":\"1\",\"idrole\":\"1\"}', '2024-08-13 22:44:21', '2024-08-13 22:44:21', NULL);
INSERT INTO `audit` VALUES (11, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveRole&id=1', '{\"name\":\"Reporteador\",\"scope\":\"R\",\"status\":\"1\",\"idrole\":\"1\"}', '2024-08-13 22:45:29', '2024-08-13 22:45:29', NULL);
INSERT INTO `audit` VALUES (12, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveRole&id=2', '{\"name\":\"Administrador\",\"scope\":\"RWD\",\"status\":\"1\",\"idrole\":\"2\"}', '2024-08-13 22:50:28', '2024-08-13 22:50:28', NULL);
INSERT INTO `audit` VALUES (13, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveRole&id=1', '{\"name\":\"Reporteador\",\"scope\":\"R\",\"status\":\"1\",\"idrole\":\"1\"}', '2024-08-13 22:53:23', '2024-08-13 22:53:23', NULL);
INSERT INTO `audit` VALUES (14, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveRole&id=1', '{\"name\":\"Reporteador\",\"scope\":\"R\",\"status\":\"1\",\"idrole\":\"1\"}', '2024-08-13 22:54:26', '2024-08-13 22:54:26', NULL);
INSERT INTO `audit` VALUES (15, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveRole&id=1', '{\"name\":\"Reporteador\",\"scope\":\"R\",\"status\":\"1\",\"idrole\":\"1\"}', '2024-08-13 22:55:44', '2024-08-13 22:55:44', NULL);
INSERT INTO `audit` VALUES (16, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveRole&id=1', '{\"name\":\"Reporteador\",\"scope\":\"R\",\"status\":\"1\",\"idrole\":\"1\"}', '2024-08-13 22:56:12', '2024-08-13 22:56:12', NULL);
INSERT INTO `audit` VALUES (17, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveRole&id=1', '{\"name\":\"Reporteador\",\"scope\":\"R\",\"status\":\"1\",\"idrole\":\"1\"}', '2024-08-13 22:56:39', '2024-08-13 22:56:39', NULL);
INSERT INTO `audit` VALUES (18, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveRole&id=1', '{\"name\":\"Reporteador\",\"scope\":\"R\",\"status\":\"1\",\"idrole\":\"1\"}', '2024-08-13 22:57:00', '2024-08-13 22:57:00', NULL);
INSERT INTO `audit` VALUES (19, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveRole&id=1', '{\"name\":\"Reporteador\",\"scope\":\"R\",\"status\":\"1\",\"idrole\":\"1\"}', '2024-08-13 22:57:48', '2024-08-13 22:57:48', NULL);
INSERT INTO `audit` VALUES (20, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveRole&id=1', '{\"name\":\"Reporteador\",\"scope\":\"R\",\"status\":\"1\",\"idrole\":\"1\"}', '2024-08-13 22:57:59', '2024-08-13 22:57:59', NULL);
INSERT INTO `audit` VALUES (21, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveRole&id=1', '{\"name\":\"Reporteador\",\"scope\":\"R\",\"status\":\"1\",\"idrole\":\"1\"}', '2024-08-13 22:58:12', '2024-08-13 22:58:12', NULL);
INSERT INTO `audit` VALUES (22, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveRole&id=1', '{\"name\":\"Reporteador\",\"scope\":\"R\",\"status\":\"1\",\"idrole\":\"1\"}', '2024-08-13 22:59:31', '2024-08-13 22:59:31', NULL);
INSERT INTO `audit` VALUES (23, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveRole&id=1', '{\"name\":\"Reporteador\",\"scope\":\"R\",\"status\":\"1\",\"idrole\":\"1\"}', '2024-08-13 23:00:01', '2024-08-13 23:00:01', NULL);
INSERT INTO `audit` VALUES (24, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveRole&id=1', '{\"name\":\"Reporteador\",\"scope\":\"R\",\"status\":\"1\",\"idrole\":\"1\"}', '2024-08-13 23:00:37', '2024-08-13 23:00:37', NULL);
INSERT INTO `audit` VALUES (25, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveRole&id=1', '{\"name\":\"Reporteador\",\"scope\":\"R\",\"status\":\"1\",\"idrole\":\"1\"}', '2024-08-13 23:01:09', '2024-08-13 23:01:09', NULL);
INSERT INTO `audit` VALUES (26, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveRole&id=1', '{\"name\":\"Reporteador\",\"scope\":\"R\",\"status\":\"1\",\"idrole\":\"1\"}', '2024-08-13 23:01:23', '2024-08-13 23:01:23', NULL);
INSERT INTO `audit` VALUES (27, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveRole&id=1', '{\"name\":\"Reporteador\",\"scope\":\"R\",\"status\":\"1\",\"idrole\":\"1\"}', '2024-08-13 23:01:52', '2024-08-13 23:01:52', NULL);
INSERT INTO `audit` VALUES (28, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveRole&id=1', '{\"name\":\"Reporteador\",\"scope\":\"R\",\"status\":\"1\",\"idrole\":\"1\"}', '2024-08-13 23:02:09', '2024-08-13 23:02:09', NULL);
INSERT INTO `audit` VALUES (29, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveRole&id=1', '{\"name\":\"Reporteador\",\"scope\":\"R\",\"status\":\"1\",\"idrole\":\"1\"}', '2024-08-13 23:02:19', '2024-08-13 23:02:19', NULL);
INSERT INTO `audit` VALUES (30, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveRole&id=1', '{\"name\":\"Reporteador\",\"scope\":\"R\",\"status\":\"1\",\"idrole\":\"1\"}', '2024-08-13 23:02:47', '2024-08-13 23:02:47', NULL);
INSERT INTO `audit` VALUES (31, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveRole&id=8', '{\"name\":\"UNO\",\"scope\":\"WD\",\"status\":\"0\",\"idrole\":\"8\"}', '2024-08-13 23:08:46', '2024-08-13 23:08:46', NULL);
INSERT INTO `audit` VALUES (32, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveRole&id=5', '{\"name\":\"UserBot\",\"scope\":\"\",\"status\":\"0\",\"idrole\":\"5\"}', '2024-08-13 23:09:58', '2024-08-13 23:09:58', NULL);
INSERT INTO `audit` VALUES (33, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveRole&id=5', '{\"name\":\"UserBot\",\"scope\":\"\",\"status\":\"0\",\"idrole\":\"5\"}', '2024-08-13 23:10:04', '2024-08-13 23:10:04', NULL);
INSERT INTO `audit` VALUES (34, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveRole&id=5', '{\"name\":\"UserBot\",\"scope\":\"\",\"status\":\"0\",\"idrole\":\"5\"}', '2024-08-13 23:11:33', '2024-08-13 23:11:33', NULL);
INSERT INTO `audit` VALUES (35, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveRole&id=5', '{\"name\":\"UserBot\",\"scope\":\"\",\"status\":\"0\",\"idrole\":\"5\"}', '2024-08-13 23:11:37', '2024-08-13 23:11:37', NULL);
INSERT INTO `audit` VALUES (36, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveRole&id=5', '{\"name\":\"UserBot\",\"scope\":\"\",\"status\":\"0\",\"idrole\":\"5\"}', '2024-08-13 23:11:52', '2024-08-13 23:11:52', NULL);
INSERT INTO `audit` VALUES (37, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveRole&id=5', '{\"name\":\"UserBot\",\"scope\":\"\",\"status\":\"0\",\"idrole\":\"5\"}', '2024-08-13 23:11:57', '2024-08-13 23:11:57', NULL);
INSERT INTO `audit` VALUES (38, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveRole&id=2', '{\"name\":\"Administrador\",\"scope\":\"RWD\",\"status\":\"1\",\"idrole\":\"2\"}', '2024-08-13 23:31:11', '2024-08-13 23:31:11', NULL);
INSERT INTO `audit` VALUES (39, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveRole&id=2', '{\"name\":\"Administrador\",\"scope\":\"RWD\",\"status\":\"1\",\"idrole\":\"2\"}', '2024-08-13 23:31:16', '2024-08-13 23:31:16', NULL);
INSERT INTO `audit` VALUES (40, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveRole&id=4', '{\"name\":\"Super\",\"scope\":\"RWD\",\"status\":\"1\",\"idrole\":\"4\"}', '2024-08-13 23:31:22', '2024-08-13 23:31:22', NULL);
INSERT INTO `audit` VALUES (41, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveRole&id=5', '{\"name\":\"UserBot\",\"scope\":\"\",\"status\":\"0\",\"idrole\":\"5\"}', '2024-08-13 23:32:05', '2024-08-13 23:32:05', NULL);
INSERT INTO `audit` VALUES (42, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveRole&id=5', '{\"name\":\"UserBot\",\"scope\":\"\",\"status\":\"0\",\"idrole\":\"5\"}', '2024-08-13 23:32:13', '2024-08-13 23:32:13', NULL);
INSERT INTO `audit` VALUES (43, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveRole&id=8', '{\"name\":\"UNO\",\"scope\":\"WD\",\"status\":\"0\",\"idrole\":\"8\"}', '2024-08-13 23:32:20', '2024-08-13 23:32:20', NULL);
INSERT INTO `audit` VALUES (44, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveUser&id=23', '{\"fullname\":\"asdasd\",\"idrole\":\"3\",\"lang\":\"es\",\"status\":\"1\",\"iduser\":\"23\"}', '2024-08-13 23:33:01', '2024-08-13 23:33:01', NULL);
INSERT INTO `audit` VALUES (45, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'DELETE', '/api6ug8/?ruta=deleteUser&id=23', '{\"iduser\":\"23\"}', '2024-08-13 23:33:07', '2024-08-13 23:33:07', NULL);
INSERT INTO `audit` VALUES (46, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveUser&id=3', '{\"fullname\":\"Hugo\",\"idrole\":\"8\",\"lang\":\"es\",\"status\":\"1\",\"iduser\":\"3\"}', '2024-08-13 23:34:37', '2024-08-13 23:34:37', NULL);
INSERT INTO `audit` VALUES (47, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveUser&id=3', '{\"fullname\":\"Hugo\",\"idrole\":\"3\",\"lang\":\"es\",\"status\":\"1\",\"iduser\":\"3\"}', '2024-08-13 23:34:47', '2024-08-13 23:34:47', NULL);
INSERT INTO `audit` VALUES (48, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveUser&id=3', '{\"fullname\":\"Hugo\",\"idrole\":\"1\",\"lang\":\"es\",\"status\":\"1\",\"iduser\":\"3\"}', '2024-08-13 23:34:55', '2024-08-13 23:34:55', NULL);
INSERT INTO `audit` VALUES (49, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'POST', '/api6ug8/?ruta=saveProducto&id=-1', '{\"name\":\"AAAAAA\",\"description\":\"Cosa aaaa\",\"productcode\":\"A1\",\"barcode\":\"A2\",\"idpresentation\":\"1\",\"idproductline\":\"2\",\"idproductcategory\":\"undefined\",\"price\":\"1\",\"status\":\"0\",\"accountcost\":\"\",\"accountsales\":\"\",\"accountinv\":\"\"}', '2024-08-14 01:34:07', '2024-08-14 01:34:07', NULL);
INSERT INTO `audit` VALUES (50, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'POST', '/api6ug8/?ruta=saveProducto&id=-1', '{\"name\":\"AAAAAA\",\"description\":\"Cosa aaaa\",\"productcode\":\"A1\",\"barcode\":\"A2\",\"idpresentation\":\"1\",\"idproductline\":\"2\",\"idproductcategory\":\"undefined\",\"price\":\"12\",\"status\":\"0\",\"accountcost\":\"\",\"accountsales\":\"\",\"accountinv\":\"\"}', '2024-08-14 01:34:44', '2024-08-14 01:34:44', NULL);
INSERT INTO `audit` VALUES (51, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'POST', '/api6ug8/?ruta=saveProducto&id=-1', '{\"name\":\"AAAAAA\",\"description\":\"Cosa aaaa\",\"productcode\":\"A1\",\"barcode\":\"A2\",\"idpresentation\":\"1\",\"idproductline\":\"2\",\"idproductcategory\":\"4\",\"price\":\"2\",\"status\":\"0\",\"accountcost\":\"\",\"accountsales\":\"\",\"accountinv\":\"\"}', '2024-08-14 01:38:39', '2024-08-14 01:38:39', NULL);
INSERT INTO `audit` VALUES (52, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'PUT', '/api6ug8/?ruta=saveProducto&id=41', '{\"name\":\"AAAAAA\",\"description\":\"Cosa aaaa\",\"productcode\":\"A1\",\"barcode\":\"A2\",\"idpresentation\":\"1\",\"idproductline\":\"2\",\"idproductcategory\":\"4\",\"price\":\"2\",\"status\":\"1\",\"accountcost\":\"\",\"accountsales\":\"\",\"accountinv\":\"\",\"idproduct\":\"41\"}', '2024-08-14 01:40:30', '2024-08-14 01:40:30', NULL);
INSERT INTO `audit` VALUES (53, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'DELETE', '/api6ug8/?ruta=deleteProducto&id=41', '{\"idproduct\":\"41\"}', '2024-08-14 01:43:04', '2024-08-14 01:43:04', NULL);
INSERT INTO `audit` VALUES (54, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'POST', '/api6ug8/?ruta=recuperarProducto&id=41', '{\"deleted_at\":null,\"idproduct\":\"41\"}', '2024-08-14 02:07:01', '2024-08-14 02:07:01', NULL);
INSERT INTO `audit` VALUES (55, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'DELETE', '/api6ug8/?ruta=deleteProducto&id=41', '{\"idproduct\":\"41\"}', '2024-08-14 02:09:11', '2024-08-14 02:09:11', NULL);
INSERT INTO `audit` VALUES (56, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'POST', '/api6ug8/?ruta=recuperarProducto&id=41', '{\"deleted_at\":null,\"idproduct\":\"41\"}', '2024-08-14 02:09:17', '2024-08-14 02:09:17', NULL);
INSERT INTO `audit` VALUES (57, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'DELETE', '/api6ug8/?ruta=deleteProducto&id=41', '{\"idproduct\":\"41\"}', '2024-08-14 02:09:56', '2024-08-14 02:09:56', NULL);
INSERT INTO `audit` VALUES (58, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'POST', '/api6ug8/?ruta=recuperarProducto&id=41', '{\"deleted_at\":null,\"idproduct\":\"41\"}', '2024-08-14 02:10:09', '2024-08-14 02:10:09', NULL);
INSERT INTO `audit` VALUES (59, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'DELETE', '/api6ug8/?ruta=deleteProducto&id=41', '{\"idproduct\":\"41\"}', '2024-08-14 02:10:27', '2024-08-14 02:10:27', NULL);
INSERT INTO `audit` VALUES (60, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'POST', '/api6ug8/?ruta=recuperarProducto&id=41', '{\"deleted_at\":null,\"idproduct\":\"41\"}', '2024-08-14 02:10:33', '2024-08-14 02:10:33', NULL);
INSERT INTO `audit` VALUES (61, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'DELETE', '/api6ug8/?ruta=deleteProducto&id=41', '{\"idproduct\":\"41\"}', '2024-08-14 02:10:43', '2024-08-14 02:10:43', NULL);

-- ----------------------------
-- Table structure for beneficiary
-- ----------------------------
DROP TABLE IF EXISTS `beneficiary`;
CREATE TABLE `beneficiary`  (
  `idbeneficiary` int NOT NULL AUTO_INCREMENT,
  `type` enum('C','P','A') CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL DEFAULT 'C' COMMENT 'C-Cliente P-Proveedor A-Ambos',
  `identificationnumber` varchar(50) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL DEFAULT '' COMMENT 'Numero de cedula, ruc, pasaporte, o tax number en caso de ser internacionales',
  `idcountry` int NOT NULL DEFAULT 0,
  `idprovince` int NOT NULL DEFAULT 0,
  `idcity` int NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL DEFAULT '',
  `comercialname` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT '',
  `address` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL DEFAULT '',
  `phone` varchar(50) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL DEFAULT '',
  `email` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL DEFAULT '',
  `web` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL DEFAULT '',
  `parish` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL DEFAULT '' COMMENT 'Parroquia',
  `creditquota` double(20, 2) NOT NULL DEFAULT 0.00 COMMENT 'Cupo credito',
  `creditdays` int NULL DEFAULT 0 COMMENT 'Dias de credito',
  `account` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL DEFAULT '' COMMENT 'Cuenta contable',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`idbeneficiary`) USING BTREE,
  INDEX `IDXCity`(`idcity` ASC) USING BTREE,
  INDEX `IDXCountry`(`idcountry` ASC) USING BTREE,
  INDEX `IDXProvince`(`idprovince` ASC) USING BTREE,
  CONSTRAINT `IDXCity` FOREIGN KEY (`idcity`) REFERENCES `city` (`idcity`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `IDXCountry` FOREIGN KEY (`idcountry`) REFERENCES `country` (`idcountry`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `IDXProvince` FOREIGN KEY (`idprovince`) REFERENCES `province` (`idprovince`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 852 CHARACTER SET = utf16 COLLATE = utf16_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of beneficiary
-- ----------------------------
INSERT INTO `beneficiary` VALUES (1, 'C', '9999999999999', 50, 19, 177, 'CONSUMIDOR FINAL', 'CONSUMIDOR FINAL', 'CONSUMIDOR FINAL', ' ', '', '', '10 DE AGOSTO', 0.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (2, 'C', '1205448580', 50, 19, 177, 'DIAZ BAQUE RUDDY ELIANA', 'R.D. SERVICES', 'ROCA E6-09 y JUAN LEON MERA', ' ', '', '', 'MARISCAL SUCRE', 1000.00, 30, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (3, 'C', '1713163622001', 50, 19, 177, 'PABON ALBUJA ALEXIS MAURICIO', 'A.P. CONSULTOR', 'JUAN MARQUEZ 0E1-115 y PEDRO DE ALFARO', '0998531307 0', 'mpabonni@gmail.com', '', 'CALDERÓN (CARAPUNGO) ', 0.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (4, 'C', '1792677610001', 50, 19, 177, 'DISTRIBUIDORA DE PRODUCTOS AVICOLAS LOPEZ MARTINEZ DIPROAVILM CIA.LTDA.', '', 'VIRGEN DE MONSERRATE 23 Y RAFAEL CALVACHE', '0996213701 ', 'jlopez@diporavilm.com', '', 'QUITO DISTRITO METROPOLITANO', 0.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (5, 'C', '1792133203001', 50, 19, 177, 'ALIMENTOS BALANCEADOS AVIFORTE CIA. LTDA.', 'AVIFORTE CIA. LTDA.', 'San Jose Oe 8252 y San Camilo', '025005511 0', 'lizardo.andrade@aliforte.com.ec', '', 'QUITO DISTRITO METROPOLITANO', 200000.00, 30, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (6, 'C', '0791790700001', 50, 7, 54, 'COORPORACION AVICOLA EL GUAYACAN AVIGUAY S A', '', 'Pichincha S/N', ' ', 'corpoguayacan@gmail.com', '', 'BALSAS', 100000.00, 8, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (7, 'C', '0992418664001', 50, 10, 75, 'OBRECONSTRU S A', 'OBRECONSTRU S A', 'AV MARCEL LANIADO Y CIRCUNVALACION NORTE', ' ', 'departamentocontable_2017@hotmail.com obreconstru@hotmail.com', '', 'CALDERÓN (CARAPUNGO) ', 5000.00, 8, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (8, 'C', '1791306961001', 50, 19, 177, 'AVICOLA VITALOA S.A. AVITALSA', '', 'OSWALDO GUAYASAMIN OE4-100 y RODRIGO NUÑEZ', '2372-740 022372736', 'gmiranda@avitalsa.com secretaria_presidencia@avitalsa.com', '', 'QUITO DISTRITO METROPOLITANO', 240000.00, 8, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (9, 'C', '1790319857001', 50, 21, 188, 'PROCESADORA NACIONAL DE ALIMENTOS C.A.PRONACA', 'PRONACA', 'LOS NARANJOS 44-15 LOS GRANADOS', '099822714 095651212', 'facturacionelectronica@pronaca.com; wgguillenn@pronaca.com;conselec@yahoo.es; facturacionelectronica@pronaca.com; wgguillenn@pronaca.com; controltributario@avesca.com.ec', '', 'SANTO DOMINGO DE LOS COLORADOS', 40000.00, 8, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (10, 'C', '1313006957001', 50, 19, 177, 'MACIAS LOOR MELANY XIOMARA', '', 'MANABI / PORTOVIEJO / ANDRÉS DE VERA', ' ', 'danilo0923@hotmail.com', '', 'CALDERÓN (CARAPUNGO) ', 50000.00, 8, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (11, 'C', '1791294505001', 50, 21, 188, 'REPROIMAV S.A. REPRESENTACION DE PRODUCTOS E IMPLEMENTOS AVICOLAS', 'REPROIMAV S.A.', 'LOTIZACION BUENOS AIRES', '0999838896 ', 'ventasreproimavmaster@gmail.com', '', 'SANTO DOMINGO DE LOS COLORADOS', 20000.00, 8, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (12, 'C', '0591761161001', 50, 6, 48, 'ECUAPOLLO', 'ECUAPOLLO SALCEDO', 'SALCEDO/ SAN MIGUEL', ' ', 'ecuapollosalcedo21@gmail.com', '', 'SAN MIGUEL', 10000.00, 8, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (13, 'C', '1792003571001', 50, 19, 177, 'L.P. MARCELO PACHECO CIA. LTDA.', 'POLLOS LA PRADERA', 'VIA INTEROCEANICA S/N', '2380388 ', 'lpacheco@avicolalapradera.com.ec', '', 'QUITO DISTRITO METROPOLITANO', 100000.00, 8, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (14, 'C', '0401312707001', 50, 4, 30, 'GUERRA GUERRA OSCAR SANTIAGO', 'GRANJITA MARKET', 'PANM NORTE PUNTALES BAJO S/N y SN', ' ', '', '', 'BOLÍVAR', 100000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (15, 'C', '0705368934001', 50, 7, 54, 'FLORES ESPINOZA DIEGO VICENTE', '', ' S/N', ' ', '', '', 'BALSAS', 10000.00, 14, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (16, 'C', '0503909012', 50, 19, 177, 'CASTRO ALOMOTO ERNESTO', '', 'QUITO', ' ', '', '', 'CALDERÓN (CARAPUNGO) ', 10000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (17, 'C', '0591755366001', 50, 6, 48, 'SIERRAFERTTIL CIA LTDA', 'SIERRAFERTIL', 'SALCEDO SALACHE RUMIPAMBA S/N Y PANAMERICANA E35', ' 0997627018', 'recepcion@sierrafertil.com.ec', '', 'SALANGO', 100000.00, 8, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (18, 'C', '0601680317001', 50, 5, 35, 'CURILLO SAIGUA ROSA MARIA', 'EL CAMPO DISTRIBUIDOR', 'ESPEJO 31-27 y NUEVA YORK', ' ', '', '', 'VELASCO', 10000.00, 1, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (19, 'C', '0503598385', 50, 6, 47, 'ACHOTE CHICAIZA SONIA ABIGAIL', '', 'PUJILÍ', ' ', '', '', 'PUJILÍ', 10000.00, 8, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (20, 'C', '0200678225', 50, 19, 177, 'VASCONEZ CAICEDO MARTHA SUSANA', '', 'QUITO', ' ', '', '', 'CALDERÓN (CARAPUNGO) ', 100000.00, 8, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (21, 'C', '1721159414', 50, 19, 177, 'GUANOTAXI GREFA HENRY BOLIVAR', '', 'Quito/ Barrio Atucucho /calle Carlota Jaramillo y transversal H', '0987391391 ', '', '', 'QUITO DISTRITO METROPOLITANO', 100000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (22, 'C', '0503323495', 50, 6, 44, 'TOAPANTA TOAPANTA LUIS ALEXIS', '', 'CARIGUAYRAZO S/N y AV ATAHUALPA', ' ', '', '', 'IGNACIO FLORES (PARQUE FLORES) ', 10000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (23, 'C', '0704568716', 50, 7, 62, 'AYALA CHOCANO VERONICA JAKELINE', '', 'VOLTAIRE PALADINES S/N y CUENCA', ' ', '', '', 'SANTA ROSA', 100000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (24, 'C', '1717092520', 50, 19, 177, 'GOMEZ HUILCA GABRIELA', '', 'N48B OE8-50', ' ', '', '', 'COCHAPAMBA', 0.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (25, 'C', '0604993840', 50, 5, 41, 'LEMA CUSQUILLO GEOVANNY EFRAIN', '', 'Barrio Libertad la Doloroza', ' ', 'Geobanylema@gmail.com', '', 'LA MATRIZ', 10000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (26, 'C', '0703524983001', 50, 13, 121, 'MORAN AGUILAR TELMO DAVID', '', 'EL ORO', ' ', '', '', 'PATRICIA PILAR', 10000.00, 30, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (27, 'C', '1726370198', 50, 19, 177, 'OBANDO GUAJAN FAUSTO MARTIN', '', 'QUITO', ' ', '', '', 'QUITO DISTRITO METROPOLITANO', 10000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (28, 'C', '1500015472', 50, 19, 177, 'GORDILLO SALCEDO VICTOR HUGO', '', ' ', ' ', '', '', 'KENNEDY', 10000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (29, 'C', '0503802951', 50, 19, 177, 'TOAPANTA LOGRO JORGE ANIBAL', '', 'QUITO', ' ', '', '', 'CALDERÓN (CARAPUNGO) ', 100000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (30, 'C', '1104015217', 50, 12, 106, 'VINTIMILLA GUALAN ANDREA KATHERINE', '', 'CATACOCHA 14-45 y BOLIVAR', ' ', '', '', 'SAN SEBASTIÁN', 0.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (31, 'C', '0104362264', 50, 3, 22, 'ANGAMARCA MEDINA ANDREA PAOLA', 'CIRCULO AMERICANO DEL LIBRO', 'BOLIVAR 12-06 y GENERAL ENRIQUEZ', ' ', '', '', 'AZOGUES', 100000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (32, 'C', '1102698337', 50, 12, 106, 'CAÑAR PACHAR EDUARDO BLADIMIRO', '', 'MANZANOS A-11 y ROMERILLOS', ' ', '', '', 'SAN SEBASTIÁN', 100000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (33, 'C', '1715001234', 50, 19, 177, 'CASTRO URQUIZO VERONICA JACQUELINE', '', 'Quito', ' ', '', '', 'CALDERÓN (CARAPUNGO) ', 100000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (34, 'C', '2100882402', 50, 22, 191, 'GAVILANES CHOCON JIMENA ELIZABETH', '', 'VIA QUITO S/N', ' ', '', '', 'SANTA ROSA DE SUCUMBÍOS', 100000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (35, 'C', '0603297698', 50, 5, 35, 'URQUIZO CHAVEZ NELSON OSWALDO', 'AVICOLA CHIMBORAZO', 'PANAMERICANA SUR ', ' ', '', '', 'LICÁN', 100000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (36, 'C', '1101638680', 50, 19, 177, 'CASTILLO MILTON LEONARDO', '', 'QUITO', ' ', '', '', 'CALDERÓN (CARAPUNGO) ', 10000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (37, 'C', '0704907864', 50, 19, 177, 'QUEVEDO ORDO?EZ VALERIA CECIBEL', '', 'QUITO', ' ', '', '', 'CALDERÓN (CARAPUNGO) ', 100000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (38, 'C', '1711259794', 50, 6, 45, 'MUZO CONCHAMBAY GERMAN RIGOBERTO', '', 'QUITO', ' ', '', '', 'EL TRIUNFO', 100000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (39, 'C', '1600347585', 50, 18, 164, 'AGUIRRE MONTERO PATRICIA ELIZABETH', '', 'PRINCIPAL ', ' ', '', '', 'PUYO', 100000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (40, 'C', '1793192220001', 50, 19, 177, 'CENTRO AGROPECUARIO Y SALUD ANIMAL CRUZ ¿ CASA CRUZ S C C', '', 'LA ELOISA N69J E11-190', '022425203 0999415227', 'compras@casacruz.com.ec', '', 'CALDERÓN (CARAPUNGO) ', 100000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (41, 'C', '0992787503001', 50, 19, 177, 'TRANSPORTES CASTRO  HIJOS  S A', '', 'GUAYAQUIL', ' ', '', '', 'CALDERÓN (CARAPUNGO) ', 100000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (42, 'C', '1714483730', 50, 19, 177, 'SIMBAÑA CASAS WILMER ARTURO', '', 'ANTONIO GROSS 3-B y AV. GEOVANNY CALLES', ' ', '', '', 'CALDERÓN (CARAPUNGO) ', 100000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (43, 'C', '1709264822', 50, 19, 177, 'PINTO TAXIGUANO EDGAR RODRIGO', 'PINTO TAXIGUANO EDGAR RODRIGO', 'QUITO', ' 0998104606', 'edgar.rodrigo1966@hotmail.com', '', 'CALDERÓN (CARAPUNGO) ', 100000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (44, 'C', '0400949756', 50, 19, 177, 'TALABERA ZULETA JACQUELINE ELIZABETH', '', 'QUITO', ' ', '', '', 'CALDERÓN (CARAPUNGO) ', 100000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (45, 'C', '1308015161', 50, 14, 141, 'PACHAY GARCIA MARIA ESTHER', '', 'CHIMBORAZO S/N y CALLE 23 DE OCTUBRE', ' ', '', '', 'MONTECRISTI', 10000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (46, 'C', '0401013222', 50, 4, 31, 'CUAICAL MORILLO SEGUNDO GERMANICO', '', 'BOLIVAR 5-60 y QUIROGA', ' ', '', '', 'EL ÁNGEL', 10000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (47, 'C', '1716944614001', 50, 19, 177, 'SOLIS TAPIA CRISTINA ELIZABETH', 'IMPSERVIC ASESORIA TRIBUTARIA', 'EL MANANTIAL N65-73 y AGUA CLARA', ' ', '', '', 'CARCELÉN', 100000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (48, 'C', '1711013720', 50, 19, 179, 'GUANO CHIGUANO MANUEL MARIA', '', 'ATAHUALPA SN y CRISTOBAL COLON', ' ', '', '', 'MACHACHI ', 10000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (49, 'C', '0503902785', 50, 6, 44, 'CHICAIZA CAIZA CARMEN ALEXANDRA', '', 'PRINCIPAL S/N', ' ', '', '', 'TANICUCHÍ', 100000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (50, 'C', '0701912750', 50, 19, 177, 'SAMANIEGO CORREA DALILA DE LOURDES', '', 'QUITO', ' ', '', '', 'CALDERÓN (CARAPUNGO) ', 100000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (51, 'C', '0301322780', 50, 19, 177, 'CUESTA REINOSO BLANCA INES', '', 'QUITO', ' ', '', '', 'CALDERÓN (CARAPUNGO) ', 100000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (52, 'C', '0201306305', 50, 19, 177, 'SAGNAI CABEZAS BETY ELVIRA', '', 'QUITO', ' ', '', '', 'CALDERÓN (CARAPUNGO) ', 10000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (53, 'C', '0703196287', 50, 19, 177, 'LOPEZ NARANJO MIGUEL ALEXANDER', '', 'QUITO', ' ', '', '', 'CALDERÓN (CARAPUNGO) ', 0.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (54, 'C', '0101162048', 50, 1, 1, 'PADILLA VASQUEZ CARLOS MIGUEL', '', 'DEL RETORNO S-N y BENJAMIN FRANKLYN', ' ', '', '', 'BELLAVISTA', 100000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (55, 'C', '1707912851', 50, 19, 177, 'ULCUANGO ALCOSER RINA MERCEDES', '', 'QUITO', ' ', '', '', 'CALDERÓN (CARAPUNGO) ', 100000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (56, 'C', '1500459423', 50, 19, 177, 'ANDY LOPEZ LEONARDO MESIAS AGROS', '', 'QUITO', ' ', '', '', 'CALDERÓN (CARAPUNGO) ', 100000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (57, 'C', '0602576407001', 50, 5, 41, 'PADILLA SAMANIEGO WILTER KLEVER', '', 'GUANO.LANGOS CHICO', ' ', '', '', 'EL ROSARIO', 100000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (58, 'C', '0602923856', 50, 5, 35, 'ALCOCER VENLASAGA ANGEL BOLIVAR', '', 'COLOMBIA 2021 y TARQUI', ' ', '', '', 'VELOZ', 10000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (59, 'C', '0401016704', 50, 19, 177, 'MARTINEZ MOLINA WILLAM ORLANDO', '', 'QUITO', ' ', '', '', 'QUITO DISTRITO METROPOLITANO', 0.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (60, 'C', '0501891006', 50, 6, 44, 'QUINGATUNA UNAPANTA JAKELINE DEL PILAR', '', '10 DE AGOSTO SN y PASAJE COLOMBIA', ' ', '', '', 'ELOY ALFARO (SAN FELIPE) ', 3000000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (61, 'C', '1101160032', 50, 19, 177, 'BETANCOURT JIMENEZ CONSTANTE FLORENTINO', '', 'T 54 y PASAJE SIN NOMBRE', ' ', '', '', 'CONOCOTO', 10000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (62, 'C', '0401068010', 50, 22, 194, 'QUILUMBA PASTAZ MARCO ANTONIO', '', 'LIBERTAD S/N', ' ', '', '', 'NUEVA LOJA', 10000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (63, 'C', '1718875840', 50, 19, 177, 'CATOTA YEPEZ CESAR AUGUSTO', '', 'QUITO', ' ', '', '', 'QUITO DISTRITO METROPOLITANO', 10000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (64, 'C', '1704468014', 50, 19, 177, 'PILLAJO MUZO LUIS ALFREDO', '', 'PASAJE N52M E16-25 y LOS ALCES', ' ', '', '', 'KENNEDY', 10000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (65, 'C', '0502306566001', 50, 6, 44, 'QUINGATUÑA UNAPANTA MAYRA ELIZABETH', '', 'LATACUNGA', ' ', '', '', 'LATACUNGA', 100000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (66, 'C', '0101218089', 50, 15, 156, 'SAMANIEGO AVILA LAURO MIGUEL', '', '24 DE MAYO S/N y GABINO RIVADENEIRA', ' ', '', '', 'MACAS', 200000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (67, 'C', '1708802804', 50, 19, 181, 'ANASI CAJAMARCA LUIS BLADIMIR', 'AUTO SPA EXPRESS', 'AV MARIANA DE JESUS 300 y ROSA ZARATAE', ' ', '', '', 'SANGOLQUÍ', 200000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (68, 'C', '0301322921', 50, 19, 177, 'LUNA LUCERO PABLO MAURICIO', '', 'QUITO', ' ', '', '', 'QUITO DISTRITO METROPOLITANO', 200000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (69, 'C', '0401080767', 50, 19, 177, 'MARTINEZ BRACHO LENIN OMAR', '', 'QUITO', ' ', '', '', 'CALDERÓN (CARAPUNGO) ', 0.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (70, 'C', '0502060957001', 50, 6, 44, 'VELOZ MALAVE HUGO VINICIO', '', 'SAN ISIDRO LABRADOR S/N y COLONDRIZ', ' ', '', '', 'JUAN MONTALVO (SAN SEBASTIÁN)', 0.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (71, 'C', '0401158894', 50, 19, 177, 'LOPEZ ROMO JORGE LUIS', '', 'PASAJE SIETE S26-98 y AV. PRINCIPAL', ' ', '', '', 'LA MAGDALENA', 0.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (72, 'C', '0103927497', 50, 1, 1, 'ZUÑIGA PACHECO DANNY ROBERTO', '', 'BROMELIAS S/N y AV ORDOÑEZ LASSO', ' ', '', '', 'SAN SEBASTIÁN', 100000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (73, 'C', '0992849010001', 50, 10, 75, 'TRANSPORTE LOGISTICO PESADO TRANSFREMEC S.A.', '', '19C SOLAR 2', '0969250112 045065387', 'vicentemendoza198101@gmail.com', '', 'TARQUI', 100000.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (74, 'C', '0491529466001', 50, 19, 177, 'RECFRONTRUKS S.A', '', 'MOJANDA N49 Y ATACAZO', '062224467 0', 'byron-r@hotmail.com', '', 'CALDERÓN (CARAPUNGO) ', 0.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (75, 'C', '0993374568001', 50, 10, 75, 'TRANSPORTE LOGISTICO PESADO TRANSGUAYAQUIL SA', 'TRANSGUAYAQUIL SA', 'Coop Pajaro Azul, Mz 1652 SL 22, Tarqui', '0969250112 ', 'transfremec@outlook.es', '', 'TARQUI', 0.00, 0, '1.1.02.05.01', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (76, 'P', '0602898942001', 50, 19, 177, 'ABARCA VINTIMILLA FERNANDO SANTIAGO', 'SANTIAGO DOS', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (77, 'P', '0603480344001', 50, 19, 177, 'ABARCA VINTIMILLA SUSANA BELEN', 'FLASH MARKET RIO', '', '2510689', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (78, 'P', '1792458935001', 50, 19, 177, 'ADECAMOR CIA LTDA.', 'ADECAMOR CIA LTDA.', '', '032620262', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (79, 'P', '0992797193001', 50, 19, 177, 'ADMINISTRACION Y NEGOCIOS ADNE C. LTDA.', 'ADMINISTRACION Y NEGOCIOS ADNE C. LTDA.', '', '042396479', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (80, 'P', '1790601501001', 50, 19, 177, 'AFABA', 'AFABA', '', '255459/2566662', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (81, 'P', '0190401782001', 50, 19, 177, 'AFERGRAN CIA. LTDA.', 'AFERGRAN CIA. LTDA.', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (82, 'P', '0990006687001', 50, 19, 177, 'AGRIPAC S.A.', 'AGRIIPAC S.A.', '', '(04) 281 1616', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (83, 'P', '0703685560001', 50, 19, 177, 'AGUILAR MONCADA ERIK ALBERTO', 'AGUILAR MONCADA ERIK ALBERTO', '', '0987239847', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (84, 'P', '0705105021001', 50, 19, 177, 'AGUILAR SANCHEZ JEFFERSON ANDRES', '', '', '0992645061', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (85, 'P', '2100656608001', 50, 19, 177, 'AGUILAR VIVANCO QUELI MARCELA', 'AGUILAR VIVANCO QUELI MARCELA', '', '0990673107', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (86, 'P', '1104332893001', 50, 19, 177, 'AGUIRRE ENCARNACION  ALEXANDER ERNESTO', '', '', '0979120486', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (87, 'P', '0791818931001', 50, 19, 177, 'AICRUX C.L.', 'AICRUX C.L.', '', '0993656613', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (88, 'P', '1790475247001', 50, 19, 177, 'AIG METROPOLITANA CIA. DE SEGUROS Y REASEGUROS S.A.', 'AIG METROPOLITANA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (89, 'P', '0190403807001', 50, 19, 177, 'ALIMENTOS ALIBALGRAN CIA. LTDA.', '', '', '2853845', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (90, 'P', '1792133203001', 50, 19, 177, 'ALIMENTOS BALANCEADOS AVIFORTE CIA. LTDA.', 'AVIFORTE CIA. LTDA.', '', '2447553', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (91, 'P', '1890141508001', 50, 19, 177, 'ALOBAMBA CIA. LTDA. FACTURAELECTRONICAECUADOR.COM', 'ALOBAMBA CIA. LTDA. FACTURAELECTRONICAECUADOR.COM', '', '032456156', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (92, 'P', '1708453954001', 50, 19, 177, 'ALVARADO SEVILLA MARCOS BENITO', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (93, 'P', '0601315229001', 50, 19, 177, 'ALVEAR HARO NICOLAS MANUEL', 'GASOLINERA EL DORADO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (94, 'P', '1791830679001', 50, 19, 177, 'AMERICANTRUCK S.C.C.', 'AMERICANTRUCK', '', '022908540', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (95, 'P', '0701398695001', 50, 19, 177, 'APOLO ROMERO MIGUEL ANTONIO', 'APOLO ROMERO MIGUEL ANTONIO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (96, 'P', '1150276499001', 50, 19, 177, 'ARMIJOS ENCARNACION JORGE EMMANUEL', '', '', '0994619930', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (97, 'P', '1104968852001', 50, 19, 177, 'ARMIJOS MOROCHO JOE ESTALIN', 'ALIMENTOS BALANCEADOS JOE', '', '0968734113', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (98, 'P', '1101818423001', 50, 19, 177, 'ARMIJOS RAMON JAIME WILFRIDO', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (99, 'P', '0704208867001', 50, 19, 177, 'ASANZA RAMIREZ JOSE LUIS', 'ASANZA RAMIREZ JOSE LUIS', '', '25176661', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (100, 'P', '0190123626001', 50, 19, 177, 'ASEGURADORA DEL SUR', 'ASEGURADORA DEL SUR', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (101, 'P', '0791748631001', 50, 19, 177, 'ASOCIACION DE PRODUCTORES PECUARIOS EL ORO', 'ASOCIACION DE PRODUCTORES PECUARIOS EL ORO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (102, 'P', '0991331859001', 50, 19, 177, 'ATIMASA S.A.', 'ATIMASA S.A.', '', '222222222', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (103, 'P', '1891710808001', 50, 19, 177, 'AVIPAZ CIA. LTDA.', 'AVIPAZ CIA. LTDA.', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (104, 'P', '1707273189001', 50, 19, 177, 'AYORA PALACIO JOSE CARLOS', 'AYORA PALACIO JOSE CARLOS', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (105, 'P', '0791792967001', 50, 19, 177, 'BA&Q  CIA.LTDA.', '', '', '999999999', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (106, 'P', '0790002350001', 50, 19, 177, 'BANCO DE MACHALA S. A.', 'BANCO DE MACHALA S. A.', '', '2583129 583130', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (107, 'P', '0990005737001', 50, 19, 177, 'BANCO DEL PACIFICO S. A.', 'BANCO DEL PACIFICO S. A.', '', '04373 1500 : 4', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (108, 'P', '0990049459001', 50, 19, 177, 'BANCO GUAYAQUIL S.A.', 'BANCO DE GUAYAQUIL', '', '043730100', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (109, 'P', '1703791093001', 50, 19, 177, 'BARBA DELGADO JOSE EDUARDO', 'ESTACION DE SERVICIOS VIRGEN DEL CISNE 2', '', '0999388362', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (110, 'P', '0400878468001', 50, 19, 177, 'BASTIDAS HERNANDEZ FAUSTO GERMAN', 'VIVERES BASTIDAS', '', '07245781', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (111, 'P', '0700004195001', 50, 19, 177, 'BELTRAN COBOS CARLOS ALEJANDRO', 'BELTRAN COBOS CARLOS ALEJANDRO', '', '0989505835', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (112, 'P', '0992275960001', 50, 19, 177, 'BELUMA S.A.', 'DULCERIA DOLUPA', '', '042100373', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (113, 'P', '0993243558001', 50, 19, 177, 'BIMIVET SA', '', '', '042103725', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (114, 'P', '0704172188001', 50, 19, 177, 'BLACIO MORENO YUDI LIZETH', 'BLACIO MORENO YUDI LIZETH', '', '072968300', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (115, 'P', '0706759735001', 50, 19, 177, 'BLACIO SUAREZ BETSY ALEJANDRA', 'BLACIO SUAREZ BETSY ALEJANDRA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (116, 'P', '1714219407001', 50, 19, 177, 'BLACIO TITUANA ERASMO HERNAN', 'BLACIO TITUANA ERASMO HERNAN', '', '0986064157', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (117, 'P', '0601802325001', 50, 19, 177, 'BONIFAZ BALLAGAN LILIAN GRACIELA', 'ESTACION DE SERVICIOS LA VICTORIA', '', '0998202228', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (118, 'P', '1800384826001', 50, 19, 177, 'BONILLA ORTIZ VICTORIA EVELINA', 'GASOLINERA VALLE', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (119, 'P', '0705177251001', 50, 19, 177, 'BRAVO PALMA  GISELLE LISBETH', '', '', '072517711', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (120, 'P', '0991322833001', 50, 19, 177, 'BRUCOSA S.A.', 'GREEN HOUSE', '', '0993473812', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (121, 'P', '0702371402001', 50, 19, 177, 'BURNEO JIMENEZ RICHARD EDUARDO', 'R B J TRUCK PARTS', '', '2922268-0987967', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (122, 'P', '0600583652001', 50, 19, 177, 'CABRERA BRITO VIOLETA GERMANIA', 'ESTACION DE SERVICIO LA GIRALDA', '', '032916277', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (123, 'P', '0910397090001', 50, 19, 177, 'CALLE ANGUMBA NELSON EDUARDO', 'EQUIPESAS', '', '042754608', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (124, 'P', '0706335817001', 50, 19, 177, 'CAMPOVERDE SALAZAR EVELYN YESENIA', '', '', '0997627166', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (125, 'P', '1791711564001', 50, 19, 177, 'CARINTERNATIONAL S.A.', 'CARINTERNATIONAL S.A.', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (126, 'P', '0992447508001', 50, 19, 177, 'CARLOS ESPINOZA APOLO', 'BODEGA CENTRAL COMDERE', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (127, 'P', '1756512768001', 50, 19, 177, 'CARTAGENA POSSO CAMEN DELIA', 'CARTAGENA POSSO CAMEN DELIA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (128, 'P', '1803931946001', 50, 19, 177, 'CARVAJAL MONCAYO ANGEL FERNANDO', 'CARVAJAL MONCAYO ANGEL FERNANDO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (129, 'P', '0300439627001', 50, 19, 177, 'CASTANIER GONZALEZ DIEGO GASTON', 'CASTANIER GONZALEZ DIEGO GASTON', '', '099999999', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (130, 'P', '1203464340001', 50, 19, 177, 'CASTILLO CASTILLO  CARLOS ROBERTO', 'ESTACION DE SERVICIOS VENTANAS', '', '0997163972', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (131, 'P', '0993093866001', 50, 19, 177, 'CASTILLO GONZALES PETER ANDRES', 'CASTILLO GONZALES PETER ANDRES', '', '042436487', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (132, 'P', '1102285556001', 50, 19, 177, 'CASTILLO JIMENEZ JOSE FAUSTO', 'GASOLINERA EL CASTILLO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (133, 'P', '1206421339001', 50, 19, 177, 'CASTILLO LOPEZ MELANIE GEORDANA', 'CASTILLO LOPEZ MELANIE GEORDANA', '', 'N', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (134, 'P', '1708596364001', 50, 19, 177, 'CASTILLO PEREZ JOHN WILLIAM', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (135, 'P', '0702519018001', 50, 19, 177, 'CASTILLO ROMERO DORIS DEL CARMEN', 'CASTILLO ROMERO DORIS DEL CARMEN', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (136, 'P', '1900105188001', 50, 19, 177, 'CASTRO AMAYA WILMAN ENRIQUE', 'CASTRO AMAYA WILMAN ENRIQUE ESTACION DE SERVICIOS CASTRO', '', '0994138822', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (137, 'P', '1308393634001', 50, 19, 177, 'CATUTO PINOARGOTE EDDY FERNANDO', 'CATUTO PINOARGOTE EDDY FERNANDO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (138, 'P', '0703362277001', 50, 19, 177, 'CHAMBA HIDALGO ELSA YOLANDA', 'CHAMBA HIDALGO ELSA YOLANDA', '', '072975940', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (139, 'P', '1751125871001', 50, 19, 177, 'CHAVEZ CALVACHE LUIS CARLOS', 'AIR FRENOS CHAVEZ', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (140, 'P', '0703221127001', 50, 19, 177, 'CHAVEZ SOLIS CARLOS ALBERTO', 'CARLOS ALBERTO CHAVEZ SOLIS', '', '0992762034', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (141, 'P', '1801798990001', 50, 19, 177, 'CHAVEZ ZUÑIGA SALOMON IVAN', 'CHAVEZ ZUÑIGA SALOMON IVAN', '', '032855600', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (142, 'P', '1722736996001', 50, 19, 177, 'CHICAIZA PILLAJO LUIS ERNESTO', 'CHICAIZA PILLAJO LUIS ERNESTO', '', '0984569186', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (143, 'P', '1703126894001', 50, 19, 177, 'COBA CHAMORRO GRETA MARIA DEL PILAR', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (144, 'P', '1708765183001', 50, 19, 177, 'COBO BERNAL JOSELITO AGUSTIN', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (145, 'P', '1791290933001', 50, 19, 177, 'COMBUSTIBLES DEL ECUADOR S.A. COMDECSA', 'ESTACION DE SERVICIO PETROLMAX30/04/20047', '', '02-2986873', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (146, 'P', '1790041220001', 50, 19, 177, 'COMERCIAL KYWI S.A.', 'COMERCIAL KYWI S.A.', '', '2907014', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (147, 'P', '1191741907001', 50, 19, 177, 'COMERCIALIZADORA AVICOLA DEL SUR COMAVISUR CIA. LTDA.', 'COMERCIALIZADORA AVICOLA DEL SUR COMAVISUR CIA. LTDA.', '', '072517567', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (148, 'P', '0993105937001', 50, 19, 177, 'COMERCOPRE S.A.', 'FLORI CACAO LIDIA KATERINE', '', '045100398', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (149, 'P', '1791280792001', 50, 19, 177, 'COMPAÑIA DE COMERCIO INDUSTRIAS Y SERVICIOS PETROLEROS PETROWORLD S.A.', 'ESTACION DE SERVICIO EL CARMEN', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (150, 'P', '1792297699001', 50, 19, 177, 'COMPAÑIA DE TRANSPORTE PANTOJA GUZMAN ELOHIM S.A.', 'ELOHIM S.A.', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (151, 'P', '0991503102001', 50, 19, 177, 'CONCESIONARIA DEL GUAYAS CONCEGUA S.A.', 'CONCESIONARIA DEL GUAYAS CONCEGUA S.A.', '', '0422390778', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (152, 'P', '0991503331001', 50, 19, 177, 'CONCESIONARIA NORTE CONORTE S.A.', 'CONCESIONARIA NORTE CONORTE S.A.', '', '042158282', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (153, 'P', '1793040012001', 50, 19, 177, 'CONCESIONARIA SANTO DOMINGO CRSD SA', '', '', '999999999', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (154, 'P', '1792690781001', 50, 19, 177, 'CONSUR R7H S.A.', 'CONSUR R7H S.A.', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (155, 'P', '0991419799001', 50, 19, 177, 'CONVET S.A.', 'E/S VIRGEN DEL CISNE 1', '', '042751384', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (156, 'P', '0790082001001', 50, 19, 177, 'COOPERATIVA DE TRANSPORTE DE PASAJEROS PIÑAS INTERPROVINCIAL', 'COOPERATIVA DE TRANSPORTE DE PASAJEROS PIÑAS INTERPROVINCIAL', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (157, 'P', '1790106063001', 50, 19, 177, 'COOPERATIVA DE TRANSPORTE ECUADOR', 'COOPERATIVA DE TRANSPORTE ECUADOR', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (158, 'P', '0991435972001', 50, 19, 177, 'COOPERATIVA DE TRANSPORTE URBANO DE PASAJEROS EN BUSES CIUDAD DE MILAGRO', 'COOPERATIVA DE TRANSPORTE URBANO CIUDAD DE MILAGRO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (159, 'P', '1190006820001', 50, 19, 177, 'COOPERATIVA DE TRANSPORTES  LOJA', 'COOPERATIVA DE TRANSPORTES LOJA INTERNACIONAL', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (160, 'P', '1790167720001', 50, 19, 177, 'COOPERATIVA DE TRANSPORTES OCCIDENTALES', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (161, 'P', '0990004196001', 50, 19, 177, 'CORPORACION EL ROSADO MONTOYA CARVAJAL NELSON ANTONIO', 'CORPORACION EL ROSADO MONTOYA CARVAJAL NELSON ANTONIO', '', '043702400215', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (162, 'P', '1790016919001', 50, 19, 177, 'CORPORACION FAVORITA C.A.            .', 'CORPORACION FAVORITA C.A.           .', '', '99999999999999', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (163, 'P', '1768152560001', 50, 19, 177, 'CORPORACION NACIONAL DE TELECOMUNICACIONES CNT EP', 'CORPORACION NACIONAL DE TELECOMUNICACIONES CNT EP', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (164, 'P', '0101041309001', 50, 19, 177, 'CORREA ANDRADE VICTOR HUGO', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (165, 'P', '2490031882001', 50, 19, 177, 'CORREDOR VIAL DE LA COSTA CVIALCO S.A.', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (166, 'P', '1707552624001', 50, 19, 177, 'CRESPO JARAMILLO DUNIA SORAYA', 'CREDI CRESPO', '', '0', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (167, 'P', '0914802723001', 50, 19, 177, 'CUMBA GAVIDIA MARIA LOURDES', 'CUMBA GAVIDIA MARIA LOURDES', '', '071913883', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (168, 'P', '0791781671001', 50, 19, 177, 'DCOM CIA. LTDA', 'DCOM CIA. LTDA', '', '0999491930', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (169, 'P', '0902050707001', 50, 19, 177, 'DIAZ GRANADOS CABEZAS JOSE LUIS', 'JOSE LUIS DIAZ GRANADOS CABEZAS', '', '0999607250', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (170, 'P', '0591723448001', 50, 19, 177, 'DISTRIBUIDORA DE COMBUSTIBLE DISGASCOTOPAXI CIA.LTDA.', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (171, 'P', '1890152658001', 50, 19, 177, 'DISTRIBUIDORA DE COMBUSTIBLES VIGUESAM CIA. LTDA.', 'DISTRIBUIDORA DE COMBUSTIBLES VIGUESAM CIA. LTDA.', '', '032434441', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (172, 'P', '0791829631001', 50, 19, 177, 'DISTRIBUIDORA ESPINOZA LARGO DISTESLA CL', '', '', '0998429371', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (173, 'P', '1091707752001', 50, 19, 177, 'DISTRIBUIDORA MERCANTIL ESPINOZA DISME CIA. LTDA.', 'DISME CIA. LTDA.', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (174, 'P', '0791761042001', 50, 19, 177, 'DISTRIBUIDORA MINERDIESEL S A', 'DISTRIBUIDORA MINERDIESEL S A', '', '075003-970', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (175, 'P', '0190348016001', 50, 19, 177, 'DISTRIBUIDORA VASQUEZ ORDOÑEZ DISTRIVASOR CIA. LTDA.', 'DISTRIBUIDORA VASQUEZ ORDONEZ  DISTRIVASOR CIA LTDA', '', '2271100', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (176, 'P', '0401385679001', 50, 19, 177, 'MARTINEZ BRACHO JULIA TAMARA', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (177, 'P', '0102810264001', 50, 19, 177, 'DR  ADRIAN EDUARDO TENORIO ALTAMIRANO', 'DR. ADRIAN EDUARDO TENORIO ALTAMIRANO', '', '2967165', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (178, 'P', '0400985149001', 50, 19, 177, 'DRA ANA JULIA SOLIS NOTARIA 11', 'DRA ANA JULIA SOLIS NOTARIA 11', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (179, 'P', '0992167785001', 50, 19, 177, 'DUNLEA S.A.', 'GASOLINERA PUERTO INCA', '', '043130045', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (180, 'P', '1792476615001', 50, 19, 177, 'E/S GRUPO LLANO GRANDE', 'EP PETROECUADOR LLANO GRANDE', '', '022422646', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (181, 'P', '1791715772001', 50, 19, 177, 'ECONOFARM S.A.', 'SANASANA PIÑAS', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (182, 'P', '1791291468001', 50, 19, 177, 'ECUASISTENCIA COMPANIA DE ASISTENCIA DEL ECUADOR', 'ECUASISTENCIA S.A.', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (183, 'P', '1757550908001', 50, 19, 177, 'EDITH CARVAJAL GARCIA', 'AUTO REPUESTOS CARVAJAL', '', '11', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (184, 'P', '0703372243001', 50, 19, 177, 'ELIZALDE MENDOZA AGUSTIN JOSE', 'VULCANIZADORA DIVINO NIÑO', '', '0990253526', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (185, 'P', '1792813328001', 50, 19, 177, 'ELPALAFRI CIA.LTDA.', 'ELPALAFRI CIA.LTDA.', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (186, 'P', '1790053881001', 50, 19, 177, 'EMPRESA ELÉCTRICA QUITO S.A.E.E.Q.', 'EMPRESA ELÉCTRICA QUITO S.A.E.E.Q.', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (187, 'P', '1768154260001', 50, 19, 177, 'EMPRESA METROPOLITANA DE AGUA POTABLE Y SANEAMIENTO', 'EPMAPS', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (188, 'P', '1768153530001', 50, 19, 177, 'EMPRESA PUBLICA DE  HIDROCARBUROS DEL ECUADOREL EP PETROECUADOR', 'EMPRESA PUBLICA DE  HIDROCARBUROS DEL ECUADOREL EP PETROECUADOR', '', '073803000', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (189, 'P', '0702269812001', 50, 19, 177, 'ENCALADA SALINAS JACINTA VICTORIA', 'ENCALADA SALINAS VICTORIA JACINTA', '', '072961468', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (190, 'P', '1791997891001', 50, 19, 177, 'ENMARSI CIA. LTDA.', 'ENMARSI CIA. LTDA.', '', '023932999', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (191, 'P', '1792842379001', 50, 19, 177, 'ESLASUIZA CIA. LTDA.', 'LA SUIZA CIA. LTDA', '', 'SN', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (192, 'P', '0701570624001', 50, 19, 177, 'ESPINOSA AGUILAR GUILBRON MANUEL', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (193, 'P', '1791818008001', 50, 19, 177, 'ESTACION DE SERVICIO ALOAG CIA. LTDA.', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (194, 'P', '0190331342001', 50, 19, 177, 'ESTACION DE SERVICIO CATAVIÑA CIA. LTDA.', 'ESTACION DE SERVICIO CATAVIÑA CIA LTDA', '', '072262216', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (195, 'P', '1191720993001', 50, 19, 177, 'ESTACION DE SERVICIO GASOSILVA CATAMAYO', 'ESTACION DE SERVICIO GASOSILVA CATAMAYO', '', '0997528383', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (196, 'P', '0790067223001', 50, 19, 177, 'ESTACION DE SERVICIO MAROD CIA. LTDA.', 'ESTACION DE SERVICIO MAROD CIA. LTDA.', '', '0993775599', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (197, 'P', '0190168107001', 50, 19, 177, 'ESTACION DE SERVICIO NARANCAY C. LTDA.', 'ESTACION DE SERVICIO NARANCAY C. LTDA.', '', '072386038', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (198, 'P', '0992739401001', 50, 19, 177, 'ESTACION DE SERVICIOS ALPASO S.A.', 'ESTACION DE SERVICIOS ALPASO', '', '3712360', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (199, 'P', '1101980082001', 50, 19, 177, 'ESTACION DE SERVICIOS CHURUTE', 'ESTACION DE SERVICIOS CHURUTE', '', '2838 - 645', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (200, 'P', '0992205547001', 50, 19, 177, 'ESTACION DE SERVICIOS EL PIBE S A EL PIBE', 'ESTACION DE SERVICIOS EL PIBE S A EL PIBE', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (201, 'P', '0902219484001', 50, 19, 177, 'ESTACION DE SERVICIOS SAN JOSE', 'ESTACION DE SERVICIOS SAN JOSE', '', '046039622', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (202, 'P', '0190326071001', 50, 19, 177, 'ESTACION DE SERVICIOS VISTA LINDA', 'ESTACION DE SERVICIO VISTA LINDA', '', '072813003', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (203, 'P', '1103584981001', 50, 19, 177, 'ESTRELLA MOGROVEJO PAUL EDUARDO', '', '', '0985080968', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (204, 'P', '0993243655001', 50, 19, 177, 'EXPROVET CIA.LTDA.', 'EXPROVET CIA.LTDA.', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (205, 'P', '1191751422001', 50, 19, 177, 'FARMACIAS CUXIBAMBA FARMACUX CIA LTDA', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (206, 'P', '1790710319001', 50, 19, 177, 'FARMACIAS Y COMISARIATOS DE MEDICINAS S.A. FARCOMED', 'FARMACIAS Y COMISARIATOS DE MEDICINAS S.A. FARCOMED      FYBECA PIAZZA MACHALA', '', '1700392322', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (207, 'P', '1791984722001', 50, 19, 177, 'FARMAENLAFARMAENLACE CIA. LTDA', 'FARMAENLACE CIA LTDA.  ROOSEVELTH SMITH SALCEDO ERAZO', '', '0222993100', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (208, 'P', '0791740150001', 50, 19, 177, 'FARMAM IA CIA. LTDA.', 'FARMAMIA CIA. LTDA.', '', '2 983477-299604', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (209, 'P', '0991063269001', 50, 19, 177, 'FARMAVET FARMACOS VETERINARIOS SA', 'FARMAVET FARMACOS VETERINARIOS SA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (210, 'P', '0992241438001', 50, 19, 177, 'FARMAYAH CIA LTDA', 'FARMAYAH CIA LTDA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (211, 'P', '1101995130001', 50, 19, 177, 'FEIJOO FAJARDO CARLOS MIGUEL', 'FEIJOO FAJARDO CARLOS MIGUEL', '', '297 6032', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (212, 'P', '0704726165001', 50, 19, 177, 'FEIJOO LEON BYRON VINICIO', 'FEIJOO LEON BYRON VINICIO', '', '072517764', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (213, 'P', '0702634668001', 50, 19, 177, 'FEIJOO OLLAGUE WELLINGTON ALEX', 'FEIJOO PORRAS WELLINTONG ALEX', '', '0993236694-0991', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (214, 'P', '1791275101001', 50, 19, 177, 'FIDEVAL ADMINISTRADORA DE FONDOS Y FIDEICOMISOS SA', 'FIDEVAL SA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (215, 'P', '0702872789001', 50, 19, 177, 'GANAZHAPA JIMENEZ DENNIS BYRON', 'GANAZHAPA JIMENEZ DENNIS BYRON', '', '0968306435', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (216, 'P', '1207516541001', 50, 19, 177, 'GARCIA PEÑA JEFFERSON GUILLERMO', 'GARCIA PEÑA JEFFERSON GUILLERMO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (217, 'P', '1304104621001', 50, 19, 177, 'GARCIA VERA ANGEL RAFAEL', 'FUMIGACIONES DEL PACIFICO', '', '292003', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (218, 'P', '0928784966001', 50, 19, 177, 'GARCIA YEPEZ LINDA IVETTE', 'BAZAR Y FERRETERIA MECHITA', '', '043131003', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (219, 'P', '1705987244001', 50, 19, 177, 'GARZON MOLINA JOSE MARIA', 'ESTACION DE SERVICIO CUMANDA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (220, 'P', '1790783278001', 50, 19, 177, 'GASOLINERA SINDICATO DE CHOFERES CAYAMBE', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (221, 'P', '0190330389001', 50, 19, 177, 'GASOPOSTO  CIA LTDA', 'ESTACION DE SERVICIO EL VALLE', '', '074098433', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (222, 'P', '1700584384001', 50, 19, 177, 'GAYBOR SECAIRA RAUL ARMANDO FACTURAELECTRONICAECUADOR.COM', 'ESTACION DE SERVICIO RANCHO ILA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (223, 'P', '0702277153001', 50, 19, 177, 'GOBER UFREDO TORRES ROMAN', 'GOBER UFREDO TORRES ROMAN', '', '0984 976 162', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (224, 'P', '1760003330001', 50, 19, 177, 'GOBIERNO AUTONOMO DESCENTRALIZADO DE LA PROVINCIA DE PICHINCHA', 'GOBIERNO AUTONOMO DESCENTRALIZADO DE LA PROVINCIA DE PICHINCHA', '', '0', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (225, 'P', '0760001310001', 50, 19, 177, 'GOBIERNO AUTONOMO DESCENTRALIZADO MUNICIPAL DE BALSAS', 'GAD MUNICIPAL DE BALSAS', '', '0702517092', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (226, 'P', '1768139620001', 50, 19, 177, 'GOBIERNO AUTONOMO DESCENTRALIZADO PROVINCIAL DE SANTO DOMINGO DE LOS TSACHILAS', 'GOBIERNO AUTONOMO DESCENTRALIZADO PROVINCIAL DE SANTO DOMINGO DE LOS TSACHILAS', '', '.0993469458', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (227, 'P', '0704033638001', 50, 19, 177, 'GONZAGA TOLEDO NELSON MANUEL', 'GONZAGA TOLEDO NELSON MANUEL', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (228, 'P', '0992311762001', 50, 19, 177, 'GONZAL S.A.', 'ESTACION DE SERVICIO J.D. JHONSON GONZAL S.A.', '', '0994745022', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (229, 'P', '0791751543001', 50, 19, 177, 'GRAN HOGAR S A GRAHOGSA', 'GRAN HOGAR S.A.', '', '0989911139', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (230, 'P', '0703273177001', 50, 19, 177, 'GRANDA CORDOVA OCALIO WUALTER', 'FERRE CONST MARIA DEL CISNE', '', '072941281', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (231, 'P', '0992734973001', 50, 19, 177, 'GUERRERO INCUBADORA S.A.', 'GUERINSA', '', '072420919', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (232, 'P', '0704856673001', 50, 19, 177, 'HERRERA ESPINOZA YADIRA LESMERI', 'HERRERA ESPINOZA YADIRA LESMERI', '', '0997394905', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (233, 'P', '0501355531001', 50, 19, 177, 'HERRERA MOLINA REINALDO MANUEL', 'HERRERA MOLINA REINALDO MANUEL', '', '2675561', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (234, 'P', '0500949888001', 50, 19, 177, 'HERRERA MOLINA SEGUNDO ERNESTO', 'AUTOREPUESTOS HERRERA', '', '2672752', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (235, 'P', '1713366399001', 50, 19, 177, 'HIDALGO CHAMBA ROBERT ANTONIO', 'MANI PAMELITA', '', '072517686', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (236, 'P', '1792758270001', 50, 19, 177, 'HOSPITAL VOZ ANDES', 'HOSPITAL VOZ ANDES', '', '3971000', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (237, 'P', '0791758831001', 50, 19, 177, 'INCUBADORA DEL SUR CIA LTDA', 'INCUBASUR CIA LTDA', '', '0993191964', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (238, 'P', '1391834713001', 50, 19, 177, 'INCUBADORA EL DORADO', 'INCUGEND S.A', '', '0995167529', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (239, 'P', '1792129745001', 50, 19, 177, 'INDUSTRIA PROCESADORA DE ALIMENTOS NACIONALES MONTENEGRO MENA S.A.', 'IPANMM S.A.', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (240, 'P', '0190335275001', 50, 19, 177, 'INDUSTRIAS DE MINERALES LA COLINA INDUCOLINA CIA. LTDA.', 'INDUCOLINA CIA  LTDA', '', '072889069', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (241, 'P', '0702417940001', 50, 19, 177, 'INFANTE SARANGO EMMA MARINA', '', '', '072913964', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (242, 'P', '0791745713001', 50, 19, 177, 'INSUMOS AGRICOLAS Y PECUARIOS INSPA CIA. LTDA.', 'INSUMOS AGRICOLAS Y PECUARIOS INSPA CIA LTDA', '', '2921714-2968730', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (243, 'P', '1716673155001', 50, 19, 177, 'INTRIAGO VELEZ FERNANDO VINICIO', 'AGRO VETERINARIA SAN FERNANDO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (244, 'P', '1709337255001', 50, 19, 177, 'IZA SALAZAR NELLY PATRICIA', 'EL MUNDO DEL CAUCHO', '', '2684897', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (245, 'P', '0105382188001', 50, 19, 177, 'JACHERO ROLDAN PAOLA MARISELA', 'JACHERO ROLDAN PAOLA MARISELA', '', '4177426', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (246, 'P', '0925256570001', 50, 19, 177, 'JAIRON RONALD PLAZA LEON', '', '', '0967255572', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (247, 'P', '1203539661001', 50, 19, 177, 'JIMENEZ CARRERA EDWIN GERMAN', 'JIMENEZ CARRERA EDWIN GERMAN', '', '0967934975', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (248, 'P', '0701504953001', 50, 19, 177, 'JIMENEZ CASTILLO VICTOR ANTONIO', 'JIMENEZ CASTILLO VICTOR ANTONIO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (249, 'P', '0601019532001', 50, 19, 177, 'JOSE LUCAS PAUCAR CASTILLO', 'NOMBRE COMERCIAL COMPANIA O MENSAJE', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (250, 'P', '0705240448001', 50, 19, 177, 'JUMBO SANCHEZ JAHNETH PRISCILA', 'JUMBO SANCHEZ JAHNETH PRISCILA', '', '0714253625', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (251, 'P', '1792190851001', 50, 19, 177, 'KINDRED ASOCIADOS OVERSEA S.A.', 'KINDRED ASOCIADOS OVERSEA S.A.', '', '2252-505', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (252, 'P', '1791847148001', 50, 19, 177, 'LABORATORIO CLINICO ECUA AMERICAN LAB.E.A. CIA. LTDA.', 'LABORATORIO CLINICO ECUA AMERICAN', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (253, 'P', '0100103654001', 50, 19, 177, 'LARRIVA ALVARADO VICENTE KLEBER', 'LARRIVA ALVARADO VICENTE KLEVER', '', '2853374', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (254, 'P', '0791749069001', 50, 19, 177, 'LAVAPALM S.A', 'LAVAPALM S.A', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (255, 'P', '0703708990001', 50, 19, 177, 'LEON FEIJOO NELVIO FERNANDO', 'LEON FEIJOO NELVIO FERNANDO', '', '072-515052', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (256, 'P', '1790027864001', 50, 19, 177, 'LEVAPAN DEL ECUADOR S.A.', 'LEVAPAN DEL ECUADOR S.A.', '', '022677010', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (257, 'P', '0700415599001', 50, 19, 177, 'LOAYZA CARRION ZOILA MARINA', 'AUTOMOTRIZ EL ORO', '', '072634810', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (258, 'P', '0704034032001', 50, 19, 177, 'LOAYZA HIDALGO HERMAN PATRICIO', 'SERMAMAQ', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (259, 'P', '0700766926001', 50, 19, 177, 'LOAYZA ROMERO LUCIO BOLIVAR', 'AVICOLA LAS ORQUIDEAS', '', '2976881-2977072', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (260, 'P', '1001732344001', 50, 19, 177, 'LOPEZ MORAN FRAYBER TARQUINO', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (261, 'P', '0401177878001', 50, 19, 177, 'LOPEZ ROMO JUAN CARLOS', 'LOPEZ ROMO JUAN CARLOS', '', '0984977850', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (262, 'P', '1103053292001', 50, 19, 177, 'LUDEÑA GAONA OSCAR EFREN', 'LUDEÑA GAONA OSCAR EFREN', '', '(07) 2797 018', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (263, 'P', '1105035347001', 50, 19, 177, 'LUDEÑA IÑIGUEZ NOHELIA ALEJANDRA', 'LUDEÑA IÑIGUEZ NOHELIA ALEJANDRA', '', '2967242', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (264, 'P', '0791708192001', 50, 19, 177, 'M Y E MORENO Y ESPINOZA CIA. LTDA.', 'M Y E MORENO Y ESPINOZA CIA. LTDA.', '', '072-928255', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (265, 'P', '0700989841001', 50, 19, 177, 'MALDONADO GALARZA MELVA MARIA', 'MALDONADO GALARZA MELVA MARIA', '', '0993594256', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (266, 'P', '0705110427001', 50, 19, 177, 'MALDONADO QUEZADA OSWALDO XAVIER', 'AUTOMOTRIZ XAVIER', '', '0981950389', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (267, 'P', '0919768903001', 50, 19, 177, 'MALDONADO TORRES JOSE RODRIGO', '', '', '0997395097', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (268, 'P', '0703057661001', 50, 19, 177, 'MALLA TORRES DALI JOSE', 'MALLA TORRES DALI JOSE', '', '072517355', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (269, 'P', '0705898443001', 50, 19, 177, 'MATUTE GALVEZ ANDRES ROBERTO', 'MATUTE GALVEZ ANDRES ROBERTO', '', '0987830042', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (270, 'P', '1792060346001', 50, 19, 177, 'MEGA SANTAMARIA S.A.', 'SUPERMERCADO SANTA MARIA', '', '022-260045', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (271, 'P', '0691733009001', 50, 19, 177, 'MERINO MONTOYA E HIJOS CIA LTDA', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (272, 'P', '0102831575001', 50, 19, 177, 'MOGROVEJO MAXI CARLOS PATRICIO', 'TALLER ELECTROMECANICO INSTELE', '', '2888880', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (273, 'P', '1791869559001', 50, 19, 177, 'MOLDECUA S.A', 'MOLDECUA S.A.', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (274, 'P', '0990026408001', 50, 19, 177, 'MOLINOS CHAMPION S.A. MOCHASA', 'MOLINOS CHAMPION S.A.', '', '046002840', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (275, 'P', '1714119110001', 50, 19, 177, 'MONCAYO SANCHEZ BERONICA', 'VIDA NATURAL', '', '0991461798', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (276, 'P', '1203033582001', 50, 19, 177, 'MONTENEGRO PALIZ VICTOR EMILIO', 'MONTENEGRO PALIZ VICTOR EMILIO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (277, 'P', '0201413770001', 50, 19, 177, 'MORA VACA WASHINGTON FERNANDO', 'ESTACION DE SERVICIO DE COMBUSTIBLES \"LOS ARRAYANES\"', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (278, 'P', '0703524983001', 50, 19, 177, 'MORAN AGUILAR TELMO DAVID', 'MORAN AGUILAR TELMO DAVID', '', '0993734083', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (279, 'P', '0702527607001', 50, 19, 177, 'MORAN PIEDRA MERCEDES PILAR', 'NEGOCIO MORRIS', '', '0989493732', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (280, 'P', '1791405501001', 50, 19, 177, 'MOTORCLASS IMPORTADORES S.A.', 'MOTORCLASS', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (281, 'P', '0201598398001', 50, 19, 177, 'NARANJO NARANJO JENNY CARMITA', '', '', '0958873315', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (282, 'P', '0350198925001', 50, 19, 177, 'NARDO NIVELO CORONEL JOSUE', 'NARDO NIVELO CORONEL JOSUE', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (283, 'P', '0705115293001', 50, 19, 177, 'NARRAVO RAMIREZ ROYER MILLER', 'NARRAVO RAMIREZ ROYER', '', '0969580744', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (284, 'P', '1711518496001', 50, 19, 177, 'NARVAEZ MEJIA MYRIAM MARLENE', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (285, 'P', '1705797676001', 50, 19, 177, 'NAVIA MURGUEITIO CLARA MARIA', 'MARKET', '', '0997234690', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (286, 'P', '1710907237001', 50, 19, 177, 'NOGALES GUILLEN LISANDRO ESTEBAN', 'ESTACION DE SERVICIOS LA ESPAÑOLA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (287, 'P', '1705333647001', 50, 19, 177, 'NOROÑA CALVACHI CARLOS ENRIQUE', 'TALLERES NOROÑA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (288, 'P', '0991306498001', 50, 19, 177, 'NUEVAS OPERACIONES COMERCIALES  NUCOPSA S.A.', 'NUEVAS OPERACIONES COMERCIALES NUCOPSA S.A.', '', '042 634220', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (289, 'P', '1890148537001', 50, 19, 177, 'NUTRICION, SALES Y MINERALES NUTRISALMIN S.A.', 'NUTRISALMINSA S.A.', '', '032434095', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (290, 'P', '0990270988001', 50, 19, 177, 'NUTRIL SA', 'NUTRIL', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (291, 'P', '0700497480001', 50, 19, 177, 'OCAMPO ALVAREZ DULIA MARIELA', 'OCAMPO ALVAREZ DULIA MARIELA', '', '072-932-253', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (292, 'P', '0702531385001', 50, 19, 177, 'ORDOÑEZ CRESPO ANGEL EDISON', 'ORDOÑEZ CRESPO ANGEL EDISON', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (293, 'P', '0603625906001', 50, 19, 177, 'ORELLANA ROSERO FERNANDO PATRICIO', 'MODERMUEBLE', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (294, 'P', '0106031156001', 50, 19, 177, 'ORTEGA SANMARTIN FLOR MARIA', 'ORTEGA SANMARTIN FLOR MARIA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (295, 'P', '0702206871001', 50, 19, 177, 'ORTIZ GONZALEZ ROSA MARBELLA', 'ORTIZ GONZALEZ ROSA MARBELLA', '', '0999279699', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (296, 'P', '0991401512001', 50, 19, 177, 'OSAKACORP S.A.', 'GASOLINERA LA AURORA', '', '042894196', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (297, 'P', '0705062933001', 50, 19, 177, 'OVIEDO GONZALEZ STALIN RIGOBERTO', '', '', '0968133531', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (298, 'P', '0500446083001', 50, 19, 177, 'PALACIOS PUCO ABEL FAUSTO', 'FERRETERIA PALACIOS', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (299, 'P', '1791317025001', 50, 19, 177, 'PANAMERICANA VIAL S.A. PANAVIAL', 'PANAMERICANA VIAL S.A. PANAVIAL', '', '023982500', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (300, 'P', '0400357695001', 50, 19, 177, 'PANTOJA MUÑOZ NELSON GUSTAVO', '', '', '0983362053', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (301, 'P', '0908141831001', 50, 19, 177, 'PARRAGA JESUS ANTONIO', 'PARRAGA JESUS ANTONIO, ESTACION DE SERVICIOS LA UNIVERSAL # 4', '', '2709319', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (302, 'P', '0701838203001', 50, 19, 177, 'PEÑARRETA APOLO GOBERTH RAMIRO', 'GOBERTH RAMIRO PEÑARRETA APOLO', '', '072517152', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (303, 'P', '0702281957001', 50, 19, 177, 'PEÑARRETA GALLARDO RUPTY MARIA', '', '', '0968769856', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (304, 'P', '0705035988001', 50, 19, 177, 'PEREIRA GONZAGA LUIS ANGEL', 'COMPAÑIA DE TRANSPORTE PESADO BACIVER S. A.', '', '0991873890', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (305, 'P', '0702874744001', 50, 19, 177, 'PEREIRA UCHUARI EDGAR MANUEL', 'PEREIRA UCHUARI EDGAR MANUEL', '', '099 932 7257', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (306, 'P', '0101518660001', 50, 19, 177, 'PESANTEZ CORDERO PEDRITO RAFAEL', 'ESTACION DE SERVICIO SAMBORONDON', '', 'SN', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (307, 'P', '0991372784001', 50, 19, 177, 'PHARMACY & NUTRITION PHARNUTRI S.A.', 'PHARMACY & NUTRITION PHARNUTRI S.A.', '', '0980731536', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (308, 'P', '1790753913001', 50, 19, 177, 'PICHINCHA SISTEMAS ACOVI C.A.', 'PICHINCHA SISTEMAS ACOVI C.A.', '', '042980980', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (309, 'P', '0703267294001', 50, 19, 177, 'PINTO RAMIREZ CLEBER FRANCO', 'PINTO RAMIREZ CLEBER FRANCO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (310, 'P', '0992301759001', 50, 19, 177, 'PISONI S.A.', 'PISONI', '', '0991920173', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (311, 'P', '1705921078001', 50, 19, 177, 'POZO GUERRERO ANGEL RODRIGO', 'DIAF/REPRESENTACIONES', '', '3076374', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (312, 'P', '1791282523001', 50, 19, 177, 'PROCESOS INDUSTRIALES DEL ECUADOR PROINDE CIA. LTDA.', 'PROINDE POINT COMPUTER', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (313, 'P', '0703789149001', 50, 19, 177, 'RAMIREZ ASANZA CARLOS JULIO', 'RAMIREZ ASANZA CARLOS JULIO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (314, 'P', '0703779637001', 50, 19, 177, 'RAMIREZ PALMA FRANKLIN VICENTE', 'RAMIREZ PALMA FRANKLIN VICENTE', '', '0993009993', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (315, 'P', '1768160580001', 50, 19, 177, 'REGISTRO MERCANTIL DEL CANTÓN QUITO', 'REGISTRO MERCANTIL DEL CANTÓN QUITO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (316, 'P', '1791294505001', 50, 19, 177, 'REPROIMAV S.A', 'REPROIMAV S.A', '', '0997405669', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (317, 'P', '1713008884001', 50, 19, 177, 'ROBLES ERAZO BOLIVAR ARMANDO', 'MICROMERCADO ROBLES', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (318, 'P', '1307590016001', 50, 19, 177, 'RODRIGUEZ VERA LUIS ALFONSO', 'RODRIGUEZ VERA LUIS ALFONSO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (319, 'P', '0704236348001', 50, 19, 177, 'ROJAS ATIENCIE JULIANA LILIBETH', 'ROJAS ATIENCIE JULIANA LILIBETH', '', '0725717824', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (320, 'P', '0190097781001', 50, 19, 177, 'ROLANDO RIOS COMPAÑIA LIMITADA', 'ROLANDO RIOS COMPAÑIA LIMITADA', '', '020320180', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (321, 'P', '0701005514001', 50, 19, 177, 'ROMERO APOLO LUIS HILDER', 'AVICOLA LUISIN', '', '072-517103', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (322, 'P', '0703174417001', 50, 19, 177, 'ROMERO CHAMBA SARA DEL CARMEN', 'TIENDA', '', '0989468485', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (323, 'P', '0101275329001', 50, 19, 177, 'ROMERO CRESPO ROMULO RENE', 'MECANICA INDUSTRIAL ROMERO', '', '2920009', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (324, 'P', '0705774990001', 50, 19, 177, 'ROMERO FEIJOO LUIS STEFANO', 'ROMERO FEIJOO LUIS STEFANO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (325, 'P', '1711255206001', 50, 19, 177, 'ROMULO JOSELITO PALLO QUISILEMA', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (326, 'P', '0931921670001', 50, 19, 177, 'SACTA ANDRADE KLEBER ALEXIS', 'SACTA ANDRADE KLEBER ALEXIS', '', '042-744231', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (327, 'P', '0704197755001', 50, 19, 177, 'SANCHEZ MURILLO IRENE KAROLINA', 'SANCHEZ MURILLO IRENE KAROLINA', '', '072 517 615', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (328, 'P', '1704038155001', 50, 19, 177, 'SANCHEZ OCHOA ANDRES EDUARDO', 'ANDRES EDUARDO SANCHEZ OCHOA', '', '032904159', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (329, 'P', '0200270478001', 50, 19, 177, 'SANCHEZ VASCONEZ SALOMON GENARO', 'AGRICOSA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (330, 'P', '0791805902001', 50, 19, 177, 'SANDIEGO NEUMATICOS Y SERVICIOS CIA LTDA', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (331, 'P', '0702830589001', 50, 19, 177, 'SARAGURO RAMIREZ WILSON BOLIVAR', 'SARAGURO RAMIREZ WILSON BOLIVAR', '', '072924-930', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (332, 'P', '1101662094001', 50, 19, 177, 'SARANGO JUMBO LUIS ROMAN', '', '', '0980932807', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (333, 'P', '1002175121001', 50, 19, 177, 'SARMIENTO ORTIZ EDISON FABRICIO', 'CENTRO FERRETERO SAN JOSE', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (334, 'P', '1792261848001', 50, 19, 177, 'SECURITY DATA SEGURIDAD EN DATOS Y FIRMA DIGITAL S.A.', 'SECURITY DATA', '', '1800347627', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (335, 'P', '1791289927001', 50, 19, 177, 'SEGUROS DEL PICHINCHA S.A. COMPAÑIA DE SEGUROS Y REASEGUROS', 'SEGUROS DEL PICHINCHA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (336, 'P', '0991285679001', 50, 19, 177, 'SERVIENTREGA DEL ECUADOR S.A.', 'SERVIENTREGA DEL ECUADOR S.A.', '', '3732000 7309', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (337, 'P', '0702054594001', 50, 19, 177, 'SILVA APOLO HERMEL MANRIQUE', 'COOPERATIVA DE TRANSPORTES RUTAS BALSEÑAS', '', '2517274', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (338, 'P', '1792110491001', 50, 19, 177, 'SIMEUSFQ SISTEMAS MEDICOS DE LA UNIVERSIDAD SAN FRANCISCO DE QUITO S.A.', 'SISTEMAS MEDICOS DE LA USFQ', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (339, 'P', '0790051580001', 50, 19, 177, 'SIND CANTONAL DE CHOF PROFESIONAL DE PINAS', 'EDS SIND. CHOF.  DE PINAS', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (340, 'P', '0790046439001', 50, 19, 177, 'SINDICATO CANTONAL DE CHOFERES PROFESIONALES DEL CANTON PASAJE', 'ESTACION DE SERVICIO DEL SINDICATO CANTONAL DE CHOFERES PROFESIONALES DE PASAJE', '', '0989655011', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (341, 'P', '1490000700001', 50, 19, 177, 'SINDICATO DE CHOFERES PROFESIONALES DEL CANTON SUCUA', 'ESTACION DE SERVICIOS DEL SINDICATO CHOFERES DE SUCUA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (342, 'P', '0791717671001', 50, 19, 177, 'SOCIEDAD INMOBILIARIA HERMANOS CHAVEZ VALAREZO Y COMPAÑIA', 'ESTACION DE SERVICIO LA VICTORIA', '', '073092108', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (343, 'P', '0400646584001', 50, 19, 177, 'SUAREZ POZO ALBA LUCIA', 'LUBRICADORA SAN GABRIEL', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (344, 'P', '2390031575001', 50, 19, 177, 'SUCESION INDIVISA GUEVARA SANCHEZ MARIA REGINA FACTURAELECTRONICAECUADOR.COM', 'SUCESION INDIVISA GUEVARA SANCHEZ MARIA REGINA FACTURAELECTRONICAECUADOR.COM', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (345, 'P', '0705494128001', 50, 19, 177, 'SUIN LASCANO VILMA ELIZABETH', 'SUIN LASCANO VILMA ELIZABETH', '', '2918000', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (346, 'P', '0991517723001', 50, 19, 177, 'SUPERCINES S.A.', 'SUPERCINES', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (347, 'P', '1791413237001', 50, 19, 177, 'SUPERDEPORTE S.A.', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (348, 'P', '0190365239001', 50, 19, 177, 'T A R Q U I G A S    CIA LTDA', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (349, 'P', '1890087252001', 50, 19, 177, 'TADEC TECNICOS AGROPECUARIOS DEL ECUADOR CIA  LTDA', 'TADEC TECNICOS AGROPECUARIOS DEL ECUADOR CIA  LTDA', '', '0994870016', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (350, 'P', '1203020092001', 50, 19, 177, 'TAMAYO JIMENEZ LAUTARO MANUEL', '', '', '0997767160', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (351, 'P', '1891792014001', 50, 19, 177, 'TEJABCOMGAS CIA.LTDA.', 'ESTACION DE SERVICIO TEJABCOM', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (352, 'P', '0990017514001', 50, 19, 177, 'TIENDAS INDUSTRIALES ASOCIADOS  (TIA )S.A.', 'TIENDAS INDUSTRIALES ASOCIADOS  (TIA )S.A.', '', '(4) 2322000', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (353, 'P', '1714305263001', 50, 19, 177, 'TINAJERO CISNEROS MARIO ENRIQUE', 'ESTACIÓN DE SERVICIO EL RIFLE', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (354, 'P', '0701297079001', 50, 19, 177, 'TINOCO LUZURIAGA JUAN ENRIQUE', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (355, 'P', '0904813664001', 50, 19, 177, 'TORAL FEIJOO EDILMA ELIZA', 'ESTACION DE SERVICIO DELPACIFICO TORAL FEIJOO EDILMA', '', '2724322', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (356, 'P', '0701062572001', 50, 19, 177, 'TORO CELI SERVIO AUGUSTO', 'VULCANIZADORA ORQUIDEA DE LOS ANDES', '', '2977347', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (357, 'P', '0991388419001', 50, 19, 177, 'TRISACORP S.A.', 'ESTACION DE SERVICIO SAN AGUSTIN', '', '042748105', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (358, 'P', '0903840817001', 50, 19, 177, 'TRIVIÑO GILBERTO ERNESTO', 'LA CASA DEL FILTRO', '', '0981610798', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (359, 'P', '0704611136001', 50, 19, 177, 'TROYA CHUNGATA BRYAN FERNANDO', 'TROYA CHUNGATA BRYAN FERNANDO', '', '2936689 - 29349', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (360, 'P', '0101903177001', 50, 19, 177, 'ULLAGUARI DOTA SEGUNDO GERMAN', 'ULLAGUARI DOTA SEGUNDO GERMAN', '', '1234567890', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (361, 'P', '0702599150001', 50, 19, 177, 'ULLAURI NOBLECILLA ANA PRISCILA', 'ULLAURI NOBLECILLA ANA PRISCILA', '', '9999999999', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (362, 'P', '1792730635001', 50, 19, 177, 'URDESMAR RESTAURANTES CIA. LTDA.', 'URDESMAR RESTAURANTES CIA. LTDA.', '', '022480445', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (363, 'P', '0602118499001', 50, 19, 177, 'UVIDIA VILLA MANUEL CRISTOBAL', 'ESTACION DE SERVICIO EL TABLON', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (364, 'P', '0601389992001', 50, 19, 177, 'VACA GAVILANEZ MANUEL ARZUBE', 'COMPANIA DE TRAILEROS CHIMBORAZO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (365, 'P', '1102654967001', 50, 19, 177, 'VALAREZO GUERRERO OSCAR VINICIO', 'NUTRE 3A', '', '072546319', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (366, 'P', '0400635561001', 50, 19, 177, 'VALENZUELA PUETATE LUIS ORLANDO', 'VALENZUELA PUETATE LUIS ORLANDO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (367, 'P', '1205803305001', 50, 19, 177, 'VALERO PULUA ANDY PATRICIO', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (368, 'P', '1202620777001', 50, 19, 177, 'VALERO SANCHEZ MARIO PATRICIO', 'COMERCIAL AGRIVALPUL', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (369, 'P', '0990023859001', 50, 19, 177, 'VALLEJO ARAUJO S. A.', 'VALLEJO ARAUJO S. A.', '', '023 959059', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (370, 'P', '0701012668001', 50, 19, 177, 'VEINTEMILLA LOZANO RICARDO ALFONSO', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (371, 'P', '1800112227001', 50, 19, 177, 'VELARDE NARANJO MARCO EDUARDO', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (372, 'P', '0961690591001', 50, 19, 177, 'VELASQUEZ QUESADA MOISES ALBERTO', '', '', '0987550314', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (373, 'P', '1706574421001', 50, 19, 177, 'VILLACRES ZAPATA LUIS FERNANDO', 'VILLACRES ZAPATA LUIS FERNANDO', '', '052971409', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (374, 'P', '1190051435001', 50, 19, 177, 'ABENDAÑO BRICEÑO CIA. LTDA', 'ESTACION DE SERVICIOS SUR ORIENTE', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (375, 'P', '1103453294001', 50, 19, 177, 'ABENDAÑO OCAMPO AURITA ROCIO', 'RESTAURANTE ESQUINA DEL SABOR', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (376, 'P', '0704965250001', 50, 19, 177, 'ACARO QUEZADA DORIS PATRICIA', 'PARRILLADAS DE JOHAN', '', '072164102', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (377, 'P', '1900455336001', 50, 19, 177, 'AGREDA GAONA MARCO ENRIQUE', 'CASA GRILL ASADEROS RESTAURANTE', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (378, 'P', '1792017610001', 50, 19, 177, 'AGROAL CIA. LTDA.', 'AGROAL', '', '2044780', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (379, 'P', '1768105720001', 50, 19, 177, 'AGROCALIDAD', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (380, 'P', '1792898420001', 50, 19, 177, 'AGROEDITORIAL SCC,', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (381, 'P', '1900285360001', 50, 19, 177, 'AGUILAR ESPINOZA CARLOS AUGUSTO', 'AGUILAR ESPINOZA CARLOS AUGUSTO', '', '2607822', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (382, 'P', '0704336536001', 50, 19, 177, 'AGUILAR SANCHEZ YULIZA PILAR', 'AGUILAR SANCHEZ YULIZA PILAR', '', '0989-601-143', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (383, 'P', '0706336427001', 50, 19, 177, 'AGUILAR SUIN CELINDA GABRIELA', 'PREVENT FIRE', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (384, 'P', '0703757351001', 50, 19, 177, 'AGUIRRE VEINTIMILLA KARLO WILLMAR', 'SISTEMAS HIDRAULICOS VEINTEMILLA', '', '072961548', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (385, 'P', '0702920448001', 50, 19, 177, 'ALBA LORENA ZAMBRANO VELEZ', 'ALBA LORENA ZAMBRANO VELEZ', '', '0998309674', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (386, 'P', '0700261209001', 50, 19, 177, 'ALBERCA VACA MARIA ZOBEIDA', 'HOTEL BAR RESTAURATE MINI', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (387, 'P', '0991363262001', 50, 19, 177, 'ALLTECH CIA. LTDA.', 'ALLTECH ECUADOR CIA. LTDA.', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (388, 'P', '1792703387001', 50, 19, 177, 'ALTVET ALTERNATIVAS VETERINARIAS S  A', 'ALTVET', '', '224-1622', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (389, 'P', '0703529040001', 50, 19, 177, 'ALVARADO MEDINA YADIRA DEL CARMEN', 'RESTAURANT LA CARPA', '', '072943136', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (390, 'P', '2100421375001', 50, 19, 177, 'ALVAREZ CORDERO KERLY DAYANI', 'GASOLINERA SIGLO XXI', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (391, 'P', '1101100913001', 50, 19, 177, 'AMBULUDI REINERIO ESTEBAN', 'AMBULUDI REINERIO ESTEBAN', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (392, 'P', '1791287010001', 50, 19, 177, 'AMEVEA', 'STUPENDO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (393, 'P', '1791878868001', 50, 19, 177, 'AMMR VETERINARIAS', '', '', '2829069', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (394, 'P', '1792570956001', 50, 19, 177, 'ANDINA EMPRESARIAL CIA LTDA', 'ANDINAEMPRESARIAL CIA LTDA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (395, 'P', '1104561996001', 50, 19, 177, 'ANGAMARCA PUCHAICELA SOLEDAD DEL ROCIO', 'ANGAMARCA PUCHAICELA SOLEDAD DEL ROCIO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (396, 'P', '1201365010001', 50, 19, 177, 'AÑI OLVERA LUIS FERNANDO', 'AÑI OLVERA LUIS FERNANDO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (397, 'P', '0701473381001', 50, 19, 177, 'APOLO LOAYZA MARIA KENMITA', 'APOLO LOAYZA MARIA KENMITA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (398, 'P', '0700505100001', 50, 19, 177, 'APOLO RAMIREZ FELIX MANUEL', 'APOLO RAMIREZ FELIX MANUEL', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (399, 'P', '0703439612001', 50, 19, 177, 'APONTE GONZALEZ YESENIA ERCILIA', 'APONTE GONZALEZ YESENIA ERCILIA', '', '0994689631', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (400, 'P', '1900203991001', 50, 19, 177, 'ARANDA ANGULO LILIA CARMITA', 'RESIDENCIAL SAN LUIS', '', '2308017', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (401, 'P', '0300720752001', 50, 19, 177, 'ARCENTALES FAJARDO JORGE RAUL', 'ARCENTALES FAJARDO JORGE RAUL', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (402, 'P', '1102924410001', 50, 19, 177, 'ARIAS ARIAS FANNY AUXILIO', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (403, 'P', '0704969153001', 50, 19, 177, 'ARMADO JAVIER MATEO ALONSO', 'CENTRO DE LUBRICACION JOSAMI', '', '2962670', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (404, 'P', '0703031633001', 50, 19, 177, 'ARMIJOS CEDILLO MARIA ELENA', 'CEVICHERIA MARY', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (405, 'P', '1104645328', 50, 19, 177, 'ARMIJOS JOSE VINICIO', 'ARMIJOS JOSE VINICIO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (406, 'P', '1900381672001', 50, 19, 177, 'ARMIJOS VEINTIMILLA MARIA MARISOL', 'COMEDOR MAJITO', '', '2606864', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (407, 'P', '0703788109001', 50, 19, 177, 'ASANZA PINTO VICENTE BENITO', 'ALUBAL', '', '2517945', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (408, 'P', '1191756599001', 50, 19, 177, 'ASOCIACION DE PROFECIONALES AGROPECUARIOS DE LOJA ASOPAL', 'ASOCIACION DE PROFECIONALES AGROPECUARIOS DE LOJA ASOPAL', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (409, 'P', '1712970340001', 50, 19, 177, 'ASTUDILLO ANDRADE CARLOS MANUEL', 'MAYA PIONEER', '', '2977209', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (410, 'P', '0791790077001', 50, 19, 177, 'ATECELECTRIC CIA LTDA', '', '', '2985004', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (411, 'P', '1104861545001', 50, 19, 177, 'AYALA LUNA DIEGO FERNANDO', 'AHITANAS', '', '2664709', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (412, 'P', '1103220420001', 50, 19, 177, 'AZANZA ORTIZ PAILINA DEL CARMEN', 'POLLOS SANDI', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (413, 'P', '0703026682001', 50, 19, 177, 'AZOGUE NUGSHI MANUEL DE LA CRUZ', 'AZOGUE NUGSHI MANUEL DE LA CRUZ', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (414, 'P', '1002336814001', 50, 19, 177, 'BALDEON PROAÑO FERNANDA ELIZABETH', 'BALDEON PROAÑO FERNANDA ELIZABETH', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (415, 'P', '1801791086001', 50, 19, 177, 'BALLADARES JACOME NESTOR  RAMIRO', 'VERSAILLES HOTEL', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (416, 'P', '1750331371001', 50, 19, 177, 'BARBATO HINESTROSA NORBERTO JOSE', 'BARBATO HINESTROSA NORBERTO JOSE', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (417, 'P', '1800033068001', 50, 19, 177, 'BENALCAZARI NSUASTI MARIA LEONOR', 'GASOLINERA GRANJA PALLATANGA', '', '2324033', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (418, 'P', '1104076193001', 50, 19, 177, 'BENITEZ IÑIGUEZ JOHANA CECIBEL', 'AGACHADITOS DON ROJITAS', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (419, 'P', '1305903864001', 50, 19, 177, 'BERMUDEZ GARCIA ROXANA JACQUELINE', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (420, 'P', '1803167582001', 50, 19, 177, 'BERMUDEZ MIRANDA ESTHELA ELIZABETH', 'BERMUDEZ MIRANDA ESTHELA ELIZABETH', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (421, 'P', '1104241433001', 50, 19, 177, 'BETANCUR CORDOVA FERNANDA MARIBEL', 'BETANCUR CORDOVA FERNANDA MARIBEL', '', '072582021', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (422, 'P', '0702425919001', 50, 19, 177, 'BETTY JANINA HEREDIA CARRANZA', 'PICANTERIA PIGUARI', '', '2921753', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (423, 'P', '0991417575001', 50, 19, 177, 'BLUECORP S.A.', 'ESTACION DE SERVICIO MELISSA', '', '0988507731', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (424, 'P', '0704957463001', 50, 19, 177, 'BONETE RIVERA RAUL HIDALGO', 'ELABORACION DE OTROS PRODUCTOS ALIMENTICIOS', '', '0989896756', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (425, 'P', '0704757194001', 50, 19, 177, 'BRAVO BRAVO JACQUELIN ALEXANDRA', 'BRAVO BRAVO JACQUELIN ALEXANDRA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (426, 'P', '0702109679001', 50, 19, 177, 'BRAVO CAMPOVERDE HERMAN FULVIO', 'BRAVO CAMPOVERDE HERMAN FULVIO', '', '0991290566', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (427, 'P', '1100546470001', 50, 19, 177, 'BRAVO CUCHIMARCA ALBA VIOLETA', 'BRAVO CUCHIMARCA ALBA VIOLETA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (428, 'P', '0925757866001', 50, 19, 177, 'BRAVO PALMA YANDRY MAURICIO', '', '', '0982516613', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (429, 'P', '1104051758001', 50, 19, 177, 'BRAVO VEGA DIANA MARISOL', 'PICANTERIA SABOR LATINO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (430, 'P', '0992524200001', 50, 19, 177, 'BRAYMING S A', 'SOLULEGAL', '', '042515047', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (431, 'P', '0700719784001', 50, 19, 177, 'BUELE CAMPOS FRANCISCO', 'LIBRERIA Y PAPELERIA DON PANCHO', '', '297 6904', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (432, 'P', '0704918770001', 50, 19, 177, 'BUENO CARDENAS JORGE ARMANDO', 'BAR RESTAURATE SHAINA', '', '2975789', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (433, 'P', '1900218999001', 50, 19, 177, 'BUITRON SANCHEZ SERGIO RENE', 'BUITRON SANCHEZ SERGIO RENE', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (434, 'P', '1716142045001', 50, 19, 177, 'BUSTE RIVAS FRANCISCO JAVIER', 'SERVICIOS TECNICOS DE PINTURA', '', '2966318', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (435, 'P', '0704925122001', 50, 19, 177, 'CABRERA TINOCO VANESSA CAROLINA', 'ACTIVIDADES RELACIONADAS CON LA CONTABILIDAD', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (436, 'P', '1102429055001', 50, 19, 177, 'CAMBIZACA CUEVA ALMITA PIEDAD', 'PICANTERIA T RADICIONAL', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (437, 'P', '0703683565001', 50, 19, 177, 'CAÑAR ROMERO TANIA DEL ROCIO', 'ASADERO LA ESQUINA DE ALES', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (438, 'P', '1792101425001', 50, 19, 177, 'CARAPUNGO SANDRY', 'CARPUNTO CIA. LTDA', '', '0224223260', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (439, 'P', '0701874505001', 50, 19, 177, 'CARCHIPULLA GRANDA WILLIAM ALFREDO', 'CARCHIPULLA GRANDA WILLIAM ALFREDO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (440, 'P', '1103230965001', 50, 19, 177, 'CARPIO LEON SANDRA LORENA', 'RESTAURANTE CARIBE', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (441, 'P', '0502241409001', 50, 19, 177, 'CARRERA CEPEDA DORIS MARLENE', 'CARRERA CEPEDA DORIS MARLENE', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (442, 'P', '1103305825001', 50, 19, 177, 'CARRERA ENCALADA EDUARDO DANILO', 'CARRERA ENCALADA EDUARDO DANILO', '', '2600113', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (443, 'P', '1103075436001', 50, 19, 177, 'CARRION ARMIJOS EDITA YOLANDA', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (444, 'P', '1102875117001', 50, 19, 177, 'CARRION JIMENEZ LEONARDO VICENTE', 'D.EVENTOS RWSTUARANT Y CAFETERIA', '', '2688412', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (445, 'P', '0991259546001', 50, 19, 177, 'CARRO SEGURO CARSEG S A', 'CARRO SEGURO CARSEG S.A', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (446, 'P', '0991400427001', 50, 19, 177, 'CARTIMEX', 'CARTIMEX', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (447, 'P', '0703466938001', 50, 19, 177, 'CASTILLO PEÑA JOSE EDILBERTO', 'ASADERO  D JOSE', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (448, 'P', '0703148270001', 50, 19, 177, 'CASTILLO TACURI MARCIA ZORAIDA', 'COMEDOR NAYMAR', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (449, 'P', '1705471033001', 50, 19, 177, 'CEDILLO GONZALEZ EMILIA ALBERTINA', 'ESTACION DE SERVICIOS VIRGEN DEL CISNE II', '', '042386514', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (450, 'P', '1791804902001', 50, 19, 177, 'CENTRO COMERCIAL LA MANZANA', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (451, 'P', '0703215079001', 50, 19, 177, 'CEVALLOS ROMERO PATRICIA MARGOTH', 'RESTAURANTE DON PEPE PRIMERO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (452, 'P', '1716750789001', 50, 19, 177, 'CHACON PAEZ VALERIA PATRICIA', 'CHACON PAEZ VALERIA PATRICIA', '', '2508112', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (453, 'P', '1102487699001', 50, 19, 177, 'CHALAN MALDONADO SEGUNDO ALBERTO', 'CHALAN MALDONADO SEGUNDO ALBERTO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (454, 'P', '0702051921001', 50, 19, 177, 'CHAMBA GALLARDO HELMER MARIA', 'CHAMBA GALLARDO HELMER MARIA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (455, 'P', '1900398908001', 50, 19, 177, 'CHAMBA GUAMAN MARIANA ELENA', 'RESTAURANT MARIANITA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (456, 'P', '0991244085001', 50, 19, 177, 'CHEM - TECH S.A.', 'CHEM - TECH S.A.', '', '042925659', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (457, 'P', '0991291040001', 50, 19, 177, 'CHEMICAL PHARM DEL ECUADOR C. LTDA', 'CHEMICAL PHARM DEL ECUADOR C. LTDA', '', '09918691765', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (458, 'P', '0930485206001', 50, 19, 177, 'CHEN RONGRUI', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (459, 'P', '1712893856001', 50, 19, 177, 'CHICAIZA PACA LAURA MARIA', 'PICANTERIA REINA DEL CISNE', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (460, 'P', '1103458848001', 50, 19, 177, 'CHIMBO ORTEGA CARMEN ALEXANDRA', 'RESTAURANT BRACAMOROS', '', '073105623', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (461, 'P', '1105605503001', 50, 19, 177, 'CHIMBO ORTEGA CRISTOPHER JOEL', 'BRACAMOROS', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (462, 'P', '0401572219001', 50, 19, 177, 'CHIRAN TARAPUEZ  WILSON EMILIO', 'MI DULCE CAPULI', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (463, 'P', '1790516008001', 50, 19, 177, 'CHUBB SEGUROS ECUADOR', 'CHUBB SEGUROS ECUADOR', '', '59343731810', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (464, 'P', '0705627321001', 50, 19, 177, 'CHUNI ZAPATA MARIA DEL CISNE', 'RESTAURANTE MARIA DEL CISNE', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (465, 'P', '1103361315001', 50, 19, 177, 'COLLAGUAZO LOPEZ YENNY OLIVIA', 'SAFARI BURGUER', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (466, 'P', '0702409822001', 50, 19, 177, 'COLLAGUAZO UNUZUNGO MELANIA ISABEL', 'VENTA EN COMIDAS Y BEBIDAS EN PICANTERIAS PARA SU CONSUMO INMEDIATO', '', '0980211537', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (467, 'P', '1091747819001', 50, 19, 177, 'COMBUSOLIVOS CIA. LTDA.', 'COMBUSOLIVOS CIA. LTDA.', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (468, 'P', '1792901014001', 50, 19, 177, 'COMBUSTIBLES Y SERVICIOS TOBAR SERCOMTOBAR S.A.', 'COMBUSTIBLES Y SERVICIOS TOBAR SERCOMTOBAR S.A.', '', 'SN', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (469, 'P', '1792627753001', 50, 19, 177, 'COMERCIALIZADORA SNAPSI CIA.LTDA', 'COMERCIALIZADORA SNAPSI CIA.LTDA', '', '023483532', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (470, 'P', '1391723563001', 50, 19, 177, 'COMPANIA DE RESPONSABILIDAD LIMITADA LOS BIZARROS', 'COMPANIA DE RESPONSABILIDAD LIMITADA LOS BIZARROS', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (471, 'P', '0990022453001', 50, 19, 177, 'COMPAÑIA DE SEGUROS ECUATORIANOS SUIZA S A', 'COMPAÑIA DE SEGUROS ECUATORIANOS SUIZA S.A', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (472, 'P', '0992636955001', 50, 19, 177, 'COMPAÑIA DE TRANSPORTE DE CARGA C A R  UNION PALTENSE C A  TRANSUPALTENSE', 'COMPAÑIA DE TRANSPORTE DE CARGA C.A.R. UNION PALTENSE C.A. TRANSUPALTENSE', '', '2262507', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (473, 'P', '0791790743001', 50, 19, 177, 'COMPAÑIA DE TRANSPORTE PESADO Y RESCATE SOBRE RUEDAS GRUAS SR', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (474, 'P', '1791251237001', 50, 19, 177, 'CONSORCIO ECUATORIANO DE TELECOMUNICACIONES S. A. CONECEL', 'CONSORCIO ECUATORIANO DE TELECOMUNICACIONES S. A. CONECEL', '', '59345004040', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (475, 'P', '0791735491001', 50, 19, 177, 'CONSTRUSUR DEL ECUADOR S A', 'TERPEL MACHALA 1', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (476, 'P', '0790042557001', 50, 19, 177, 'COOP. DE TRANSP  T.A.C.', 'COOP. INTERPROVINCIAL DE TRANSPORTES ASOCIADOS CANTONALES T.A.C.', '', '72724984', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (477, 'P', '0490008578001', 50, 19, 177, 'COOPERAATIVA DE TRASNPORTES SAN CRISTOBAL', 'COOPERAATIVA DE TRASNPORTES SAN CRISTOBAL', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (478, 'P', '0990568022001', 50, 19, 177, 'COOPERATIVA DE TRANSPORTE DE PASAJEROS EN BUSES SANTA LUCIA LTDA', 'COOPERATIVA DE TRANSPORTE DE PASAJEROS EN BUSES SANTA LUCIA LTDA.', '', '3013541', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (479, 'P', '0990296820001', 50, 19, 177, 'COOPERATIVA DE TRANSPORTE DE PASAJEROS VILLAMIL', 'ESTACION DE SERVICIOS', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (480, 'P', '1790414973001', 50, 19, 177, 'COOPERATIVA DE TRANSPORTE FLOR DEL VALLE CAYAMBE', 'COOPERATIVA DE TRANSPORTE FLOR DEL VALLE CAYAMBE', '', '2111024', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (481, 'P', '0790053419001', 50, 19, 177, 'COOPERATIVA DE TRANSPORTE INTERNACINAL RUTAS ORENSES', 'COOPERATIVA DE TRANSPORTE INTERNACINAL RUTAS ORENSES', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (482, 'P', '1190024365001', 50, 19, 177, 'COOPERATIVA DE TRANSPORTE SUR ORIENTE', 'COOPERATIVA DE TRANSPORTE SUR ORIENTE', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (483, 'P', '1190081474001', 50, 19, 177, 'COOPERATIVA DE TRANSPORTE UNION CARIAMANGA', 'COOPERATIVA DE TRANSPORTE \"UNION CARIAMANGA\"', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (484, 'P', '1990010427001', 50, 19, 177, 'COOPERATIVA DE TRANSPORTE UNION YANZATZA', 'COOPERATIVA DE TRANSPORTE UNION YANZATZA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (485, 'P', '1090008273001', 50, 19, 177, 'COOPERATIVA DE TRANSPORTES 28 DE SEPTIEMBRE', 'ESTACION DE SERVICIO 28 DE SEPTIEMBRE', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (486, 'P', '1790042944001', 50, 19, 177, 'COOPERATIVA DE TRANSPORTES PANAMERICANA INTERNACIONAL', 'COOPERATIVA DE TRASNPORTES PANAMERICANA INTERNACIONAL', '', '022501585', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (487, 'P', '1102593207001', 50, 19, 177, 'CORDOVA AGUIRRE DIEGO GUILLERMO', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (488, 'P', '1104175300001', 50, 19, 177, 'CORDOVA CUEVA ROBER ANTONIO', 'CORDOVA CUEVA ROBER ANTONIO', '', '072542388', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (489, 'P', '1103452015001', 50, 19, 177, 'CORONEL VILLAVICENCIO AYDA JANETH', 'LA CASANA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (490, 'P', '0501233498001', 50, 19, 177, 'CORRALES CARRERA MILTON HERNAN', 'REPUESTOS Y LUBRICANTES', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (491, 'P', '0701181166001', 50, 19, 177, 'CORTEZ ORELLANA JIMMY FORTUNATO', 'RESTAURANTE NUEVO EDEN', '', '0988020662', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (492, 'P', '0704670892001', 50, 19, 177, 'CORTEZ VERA JIMMY FABIAN', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (493, 'P', '1100574688001', 50, 19, 177, 'CRIOLLO CASTILLO GRACIELA MARIA', 'CRIOLLO CASTILLO GRACIELA MARIA', '', '2546129', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (494, 'P', '1725926065001', 50, 19, 177, 'CUJILEMA QUISHPI GINA ELIZABETH', 'RESTAURANT Y PARRILLADA LA SAZON DE GINA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (495, 'P', '1711783421001', 50, 19, 177, 'DAVIS MOREIRA STEPHEN DANIEL', 'DAVIS MOREIRA STEPHEN DANIEL', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (496, 'P', '0702127887001', 50, 19, 177, 'DELGADO AGUAYO VIVIANA DEL PILAR', 'EL POLLO QUE ARDE', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (497, 'P', '1792690994001', 50, 19, 177, 'DESPEGAR ECUADOR S.A.', 'DESPEGAR ECUADOR DESPEGARECUADOR S.A.', '', '2441624', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (498, 'P', '0992921404001', 50, 19, 177, 'DIDESPROPE S.A.', 'DISTRIBUIDORA DE DERIVADOS Y PRODUCTOS PETROLEROS DIDESPROPE S.A.', '', '043712360', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (499, 'P', '1768049390001', 50, 19, 177, 'DIRECCION GENERAL DE REGISTRO CIVIL INDENTIFICACION Y CEDULACION', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (500, 'P', '0992311134001', 50, 19, 177, 'DIRVAL S A', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (501, 'P', '1792222796001', 50, 19, 177, 'DISTRIFUEL CIA  TLDA', 'DISTRIFUEL CIA. TLDA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (502, 'P', '1791848608001', 50, 19, 177, 'E/S LA ESPERANZA', 'EMINENS CIA. LTDA.', '', '022469556', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (503, 'P', '1791972244001', 50, 19, 177, 'ECUABARE S.A.', 'ECUABARE', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (504, 'P', '0990018707001', 50, 19, 177, 'ECUAQUIMICA C.A.', 'ECUAQUIMICA ECUATORIANA DE PRODUCTOS QUIMICOS C.A.', '', '042807897 EXT 4', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (505, 'P', '1792645352001', 50, 19, 177, 'EL PINAR SC', 'EL PINAR SC', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (506, 'P', '0705461697001', 50, 19, 177, 'ELIZALDE ALVARADO JOSE DOMINGO', 'REST. LOS MELLIZOS', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (507, 'P', '1291714605001', 50, 19, 177, 'EMFLUSA EMPRESARIOS FLUMINENSES S A', 'ESTACION DE SERVICIOS GABELA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (508, 'P', '1060041100001', 50, 19, 177, 'EMPRESA PUBLICA DE MOVILIDAD DEL NORTE', 'EMPRESA PUBLICA DE MOVILIDAD DEL NORTE', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (509, 'P', '1768154690001', 50, 19, 177, 'EMPRESA PUBLICA METROPOLITANA DE MOVILIDAD Y OBRAS PUBLICAS', 'EMPRESA PUBLICA METROPOLITANA DE MOVILIDAD Y OBRAS PUBLICAS', '', '2525023', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (510, 'P', '0992614420001', 50, 19, 177, 'ENCALEGA S A', 'ENCALEGA S.A', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (511, 'P', '1102043658001', 50, 19, 177, 'ENID DOLORES PALADINES ESPINOZA', 'KOMIDITAS RESTAURAT', '', '2944270', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (512, 'P', '1715247779001', 50, 19, 177, 'ESPINOSA MALDONADO PATRICIO XAVIER', 'CAFETERIA RESTAURANT KATY', '', '2110822', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (513, 'P', '1103549760001', 50, 19, 177, 'ESPINOZA ALVAREZ JUAN ANDRES', 'LA CASA DEL TAMAL', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (514, 'P', '1001033594001', 50, 19, 177, 'ESPINOZA GOMEZ MAURA SULEMA', 'EL CALLEJON', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (515, 'P', '1103462402001', 50, 19, 177, 'ESPINOZA LOAIZA NIDIA LUCILA', 'ESPINOZA LOAIZA NIDIA LUCILA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (516, 'P', '0702184060001', 50, 19, 177, 'ESPINOZA MACASA ZOILA MACRINA', 'ESPINOZA MACASA ZOILA MACRINA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (517, 'P', '0704568278001', 50, 19, 177, 'ESPINOZA QUEZADA DIANA ISABEL', 'ACCESORIOS Y REPUESTOS VEHICULARES ESPINOZA QUEZADA', '', '0991156763', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (518, 'P', '0301255931001', 50, 19, 177, 'ESTACION  DE SERVICIO MALACATOS', 'ESTACION  DE SERVICIO MALACATOS', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (519, 'P', '0992106085001', 50, 19, 177, 'ESTACION DE SERVCIO CASCOL ACTENSIVA', 'ESTACION DE SERVCIO CASCOL', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (520, 'P', '0791774802001', 50, 19, 177, 'ESTACION DE SERVICIO LARRIVA LARRIVA GASOLINERA GASOLACO COMPAÑIA DE RESPONSABILIDAD LIMITADA', 'ESTACION DE SERVICIO LARRIVA LARRIVA GASOLINERA GASOLACO COMPAÑIA DE RESPONSABILIDAD LIMITADA', '', '0991790420', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (521, 'P', '0101900330001', 50, 19, 177, 'ESTACION DE SERVICIO MARIA UXILIADORA', 'ESTACION DE SERVICIO MARIA UXILIADORA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (522, 'P', '1792124379001', 50, 19, 177, 'ESTACION DE SERVICIO PEAJE NORTE', 'ESTACION DE SERVICIO PETROCOMERCIAL PEAJE NORTE', '', '022839014', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (523, 'P', '1792585694001', 50, 19, 177, 'ESTACION DE SERVICIO PUENGASI G A-MCJ CIA. LTDA.', 'ESTACION DE SERVICIO PUENGASI G A-MCJ CIA. LTDA.', '', '023194171', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (524, 'P', '0992531355001', 50, 19, 177, 'ESTACION DE SERVICIO SAN NICOLAS', 'ESTACION DE SERVICIO SAN NICOLAS', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (525, 'P', '1792449367001', 50, 19, 177, 'ESTACION DE SERVICIOS COOPTRACAL S.A.', 'ESTACION DE SERVICIOS COOPTRACAL S.A.', '', '2425059', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (526, 'P', '0991443312001', 50, 19, 177, 'ESTACION DE SERVICIOS JARAMILLO', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (527, 'P', '1391785100001', 50, 19, 177, 'ESTACION DE SERVICIOS LA PILA', 'NEGOCIOS LA PILA CIA. LTDA. PILNEGCIA', '', '2315171', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (528, 'P', '0919882001001', 50, 19, 177, 'ESTACION DE SERVICIOS LA UNIVERSAL', 'ESTACION DE SERVICIOS LA UNIVERSAL', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (529, 'P', '1801338912001', 50, 19, 177, 'ESTACION DE SERVICIOS LOPEZ SANTANA', 'ESTACION DE SERVICIOS LOPEZ SANTANA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (530, 'P', '0992327162001', 50, 19, 177, 'ESTACION DE SERVICIOS MACHALA DOS', 'ESTACION DE SERVICIOS MACHALA DOS', '', '072982-558', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (531, 'P', '0993005916001', 50, 19, 177, 'ESTACION DE SERVICIOS PASCUALES', 'ESTACION DE SERVICIOS PASCUALES', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (532, 'P', '0993002917001', 50, 19, 177, 'ESTACION DE SERVICIOS SAN VICENTE', 'ESTACION DE SERVICIOS SAN VICENTE', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (533, 'P', '1103606677001', 50, 19, 177, 'ESTACION DE SERVICIOS SARAGURO', 'ESTACION DE SERVICIOS SARAGURO', '', '2200005', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (534, 'P', '1191735931001', 50, 19, 177, 'ESTACION DE SEVICIOS ORTEGA FRELMAC CIA LTDA', 'FRELMAC', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (535, 'P', '0991519246001', 50, 19, 177, 'ESTACION PEDRO CARBO ELIPOL', 'ESTACION PEDRO CARBO ELIPOL', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (536, 'P', '1102850433001', 50, 19, 177, 'FABIAN ERASMO ALEJANDRO MARIN', 'FABIAN ERASMO ALEJANDRO MARIN', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (537, 'P', '0602081549001', 50, 19, 177, 'FALCONI CARDONA ROMULO RENAN', 'NUTRION', '', '032300306', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (538, 'P', '0702084153001', 50, 19, 177, 'FEIJOO ENCALADA ORFLINA DEL CARMEN', 'ALBAHACA RESTAURANT', '', '2936162', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (539, 'P', '0705385201001', 50, 19, 177, 'FEIJOO LOAYZA GABRIELA FERNANDA', 'FERRETERIA SAN VICENTE', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (540, 'P', '0925295578001', 50, 19, 177, 'FENG LIGUANG', 'CHIFA FELICIDAD', '', '2338625', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (541, 'P', '0705216455001', 50, 19, 177, 'FERNANDEZ ARCE PATRICIO MIGUEL', 'FERNANDEZ ARCE PATRICIO MIGUEL', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (542, 'P', '0705261709001', 50, 19, 177, 'FERNANDEZ ROMERO CARMEN ELIZABETH', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (543, 'P', '0702759325001', 50, 19, 177, 'FRANCO CORREA MARCO DE LOS ANGELES', 'RESTAURANT REGALO DE DIOS', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (544, 'P', '0919309005001', 50, 19, 177, 'FREIRE PAZAMIÑO ROXANA DOLORES', 'RESTAURANTE PICUN PICUN', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (545, 'P', '0703415463001', 50, 19, 177, 'FREIRE PONTON PATRICIO HIGINIO', 'CENTRO DE SERVICIO AUTOMOTRIZ SOBRE RUEDAS', '', '2974371', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (546, 'P', '1803762069001', 50, 19, 177, 'FREIRE RENDON KLEVER HERNAN', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (547, 'P', '0992236574001', 50, 19, 177, 'FUNDACION TERMINAL TERRESTRE', 'FUNDACION TERMINAL TERRESTRE', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (548, 'P', '0702627134001', 50, 19, 177, 'GALLARDO ALVARADO KATTY SORAYA', 'NOTARIA PUBLICA DE BALSAS', '', '072517244', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (549, 'P', '0701093957001', 50, 19, 177, 'GALLEGOS SUAREZ NOEMI GERARDINA', 'GALLEGOS SUAREZ NOEMI GERARDINA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (550, 'P', '1104149768001', 50, 19, 177, 'GALLEGOS TANDAZO JENNY YOBELI', 'ACTIVIDADES DE HOTELES Y RESTAURANTES', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (551, 'P', '1900173244001', 50, 19, 177, 'GAONA CUEVA ROSA GEORGINA', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (552, 'P', '0703278176001', 50, 19, 177, 'GAONA GARCIA JUANA ELIZABETH', 'VENTA DE COMIDA Y BEBIDAS EN RESTAURANT', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (553, 'P', '1707251003001', 50, 19, 177, 'GARCIA  GARCIA FAUSTO GABRIELL', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (554, 'P', '1900323351001', 50, 19, 177, 'GARCIA SAMANIEGO SOLEDAD DE FATIMA', 'EL RINCON DEL SABOR CHARAPANO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (555, 'P', '0701997595001', 50, 19, 177, 'GARNICA VAZQUEZ LUIS ANCELMO', 'SELLOS GARNICA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (556, 'P', '0902340108001', 50, 19, 177, 'GARZOTA INN', 'GARZOTA INN', '', '2655107', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (557, 'P', '0991428577001', 50, 19, 177, 'GASGRUP S A', 'GASGRUP S.A', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (558, 'P', '0390029101001', 50, 19, 177, 'GASOLINERA   E L    R E C R E O', 'GASOLINERA   E L    R E C R E O', '', '072242639', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (559, 'P', '0591723197001', 50, 19, 177, 'GASOLINERA SILVA DOS CIA. LTDA.', 'GASOLINERA SILVA DOS CIA. LTDA.', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (560, 'P', '0790100883001', 50, 19, 177, 'GASOLINERA Y LUBRICANTES DEL SUR GASUR S A', 'GASOLINERA Y LUBRICANTES DEL SUR GASUR S A', '', '072937157', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (561, 'P', '0992968435001', 50, 19, 177, 'GASOVIP S A', 'GASOVIP S.A.', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (562, 'P', '1708639487001', 50, 19, 177, 'GAVILANEZ LLANOS ELVIA GALUTH', 'RESTAURANTE EL BUEN SABOR JJDR', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (563, 'P', '1791891325001', 50, 19, 177, 'GEREST CIA  LTDA', 'GEREST CIA. LTDA.', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (564, 'P', '0992822252001', 50, 19, 177, 'GESURYMACA S  A', 'GESURYMACA S. A.', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (565, 'P', '2390032180001', 50, 19, 177, 'GOLDEN VISTA', 'GOLDEN VISTA', '', '02746250', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (566, 'P', '1103300669001', 50, 19, 177, 'GONZALES BENITES CARLOS MARIA', 'GONZALES BENITES CARLOS MARIA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (567, 'P', '0300988011001', 50, 19, 177, 'GONZALES BUSTAMANTE LEONEL PATRICIO', 'GONZALES BUSTAMANTE LEONEL PATRICIO', '', '2677286', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (568, 'P', '1103642748001', 50, 19, 177, 'GONZALEZ CHUNCHO MARIA EMPERATRIZ', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (569, 'P', '1105947053001', 50, 19, 177, 'GUALAN LOZANO INES SUSANA', 'LA LEÑA RESTAURANTE', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (570, 'P', '1004288583001', 50, 19, 177, 'GUAMAN QUISPE PAMELA ESTEFANIA', 'HOTEL SUEÑO REAL', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (571, 'P', '0101467165001', 50, 19, 177, 'GUERRA ARGUDO MARCO PATRICIO', 'AVIVETAG', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (572, 'P', '1102069729001', 50, 19, 177, 'GUILLERMO SIXTO SALINAS PACHECO', 'GRAN HOSTAL SALINAS', '', '072664287', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (573, 'P', '1001973070001', 50, 19, 177, 'HERNANDEZ LOPEZ JOSE ANTONIO', 'HERNANDEZ LOPEZ JOSE ANTONIO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (574, 'P', '1708549728001', 50, 19, 177, 'HERRERA HERRERA ROMEL ISIDRO', 'LA VIÑA', '', '2300094', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (575, 'P', '1710966142001', 50, 19, 177, 'HIDALGO CUENCA EDGAR OSWALDO', 'HIDALGO CUENCA EDGAR OSWALDO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (576, 'P', '1102114897001', 50, 19, 177, 'HIDALGO HERRERA JOSE BELISARIO', 'NARANATHA RESTAURANT', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (577, 'P', '2100356159001', 50, 19, 177, 'HUANCA VARGAS RODI PAUL', '', '', '0981997739', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (578, 'P', '0925140204001', 50, 19, 177, 'HUANCA YAGUACHI DIANA DEL CARMEN', 'ASADERO ELVIAJERO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (579, 'P', '0701720773', 50, 19, 177, 'HURTADO PEDRO', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (580, 'P', '1792054672001', 50, 19, 177, 'IGLESIAS TAPIA CIA. LTDA.', 'ESTACION DE SERVICIO ANDES GAS', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (581, 'P', '1090003085001', 50, 19, 177, 'IMBABURA TURISTICA C.A. IMBATURIS', 'HOTEL AJAVI', '', '06 2955555', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (582, 'P', '0190003701001', 50, 19, 177, 'IMPORTADORA TOMEBAMBA', 'IMPORTADORA TOMEBAMBA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (583, 'P', '1890098106001', 50, 19, 177, 'IMVAB CIA. LTDA.', 'IMVAB CIA. LTDA.', '', '0992630893', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (584, 'P', '1790552195001', 50, 19, 177, 'INDUFAR', 'INDUFAR', '', '2424191', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (585, 'P', '0990681708001', 50, 19, 177, 'INDUSUR INDUSTRIAL DEL SUR S.A.', 'INDUSUR INDUSTRIAL DEL SUR S.A.', '', '072574111 0986419540', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (586, 'P', '1900753623001', 50, 19, 177, 'IÑIGUEZ JARAMILLO ANA PATRICIA', 'RESTAURANTE LAS GEMELITAS', '', '2606275', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (587, 'P', '1103583736001', 50, 19, 177, 'IÑIGUEZ VALVERDE MARIA ALEXANDRA', 'IÑIGUEZ VALVERDE MARIA ALEXANDRA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (588, 'P', '1791415132001', 50, 19, 177, 'INT FOOD SERVICES CORP', 'INT FOOD SERVICES CORP', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (589, 'P', '0704096940001', 50, 19, 177, 'INTRIAGO VELEZ FRANCISCA ANTONIA', 'VENTA DE COMIDAS Y BEBIDAS EN RESTAURANTES', '', '2787219', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (590, 'P', '1103927537001', 50, 19, 177, 'JARAMILLO AÑASCO CARLOS PAUL', 'HOSTAL CARLOS JARAMILLO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (591, 'P', '1105570558001', 50, 19, 177, 'JARAMILLO CANGO ANDREINA MARIELA', 'SUPER POLLO', '', '2301862', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (592, 'P', '0701956849001', 50, 19, 177, 'JARAMILLO GUERRERO PATRICIO XAVIER', 'JARAMILLO GUERRERO PATRICIO XAVIER', '', '0999851167', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (593, 'P', '1102294806001', 50, 19, 177, 'JARAMILLO HILL MARCELO', 'JARAMILLO HILL MARCELO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (594, 'P', '1101982856001', 50, 19, 177, 'JARAMILLO LOZANO VICENTE RODRIGO', 'JARAMILLO LOZANO VICENTE RODRIGO', '', '0990818408', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (595, 'P', '1102834445001', 50, 19, 177, 'JARAMILLO VALAREZO MARIA ENIDT', 'JARAMILLO VALAREZO MARIA ENIDT', '', '0991290788', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (596, 'P', '1101973400001', 50, 19, 177, 'JARAMILLO VIVANCO WILMER STALIN', 'JARAMILLO VIVANCO WILMER STALIN', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (597, 'P', '0924879158001', 50, 19, 177, 'JINGMIN LIAO', 'CHIFA HUANG GUAN CHINA', '', '5036256', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (598, 'P', '0700015548001', 50, 19, 177, 'JORGE GONZALO JIMENEZ SALAZAR', 'HOSTAL GALAPAGOS', '', '2301897', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (599, 'P', '1002615076001', 50, 19, 177, 'JURADO GODOY JOHANNA PATRICIA', 'LOS CEBICHES DE LA RUMIÑAHUI', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (600, 'P', '1101063830001', 50, 19, 177, 'JUVENTINA CASTILLO CASTILLO', 'RESTAURANTE LOS PANCHOS', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (601, 'P', '1791952359001', 50, 19, 177, 'LA TABLITA GROUP CIA. LTDA.', 'LA TABLITA GROUP CIA. LTDA.', '', '042 541-832', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (602, 'P', '1791141210001', 50, 19, 177, 'LABITECH CIA. LTDA', 'LABITECH', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (603, 'P', '1101079679001', 50, 19, 177, 'LEDESMA JARAMILLO ANGEL SALVADOR', 'HOTEL EL BOSQUE', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (604, 'P', '0703452177001', 50, 19, 177, 'LEON GONZAGA ROSA ALEXANDRA', 'RESTAURANT ROMERIA', '', '2973617', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (605, 'P', '1791986997001', 50, 19, 177, 'LEXVALOR ASESORIA LEGAL SA', 'LEXVALOR', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (606, 'P', '1757182959001', 50, 19, 177, 'LI SHIXIN', 'CHIFA CHINA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (607, 'P', '0907200265001', 50, 19, 177, 'LINO CORONEL CHERLY CLARA', 'RINCON DE JUANITO', '', '2502318', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (608, 'P', '0700971773001', 50, 19, 177, 'LOAIZA TORO MANUEL DE JESUS', 'LOAIZA TORO MANUEL DE JESUS', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (609, 'P', '0703385914001', 50, 19, 177, 'LOAYZA AGUILAR  MARIA MAGDALENA', 'LOAYZA AGUILAR  MARIA MAGDALENA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (610, 'P', '0702802422001', 50, 19, 177, 'LOAYZA VALAREZO JOSE ANTONIO', 'AUTOMOTRIZ LOAYZA', '', '072976382', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (611, 'P', '1311000333001', 50, 19, 177, 'LOOR ZAMBRANO RAMON ANTONIO', 'POLLOS A LA BRASA LA ESKINA', '', '042438302', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (612, 'P', '0700166713001', 50, 19, 177, 'LOYOLA OCHOA NILO ALBERTO', 'ESTACION DE SERVICIOS LOYOLA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (613, 'P', '1104895873001', 50, 19, 177, 'LOZANO PAUCAR LILIANA DEL CARMEN', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (614, 'P', '1792132231001', 50, 19, 177, 'LUBRICANTES Y COMBUSTIBLES LUBRIGOD S.A.', 'ESTACION INTERNACIONAL YAHUARCOCHA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (615, 'P', '0921233557001', 50, 19, 177, 'LUCERO QUITUIZACA FREDY RENE', 'BAR RESTAURANTE ALESSIO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (616, 'P', '1803626975001', 50, 19, 177, 'DOMINGUEZ MOYA MARLENE GIOCONDA', 'DOMINGUEZ MOYA MARLENE GIOCONDA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (617, 'P', '1711246817001', 50, 19, 177, 'PALACIOS BEJARANO RAUL', 'PALACIOS BEJARANO RAUL', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (618, 'P', '0909823262001', 50, 19, 177, 'VILLALTA VEGA MANUEL EDUARDO', 'MOTO REPUESTOS YAMAHA', '', '0988281814', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (619, 'P', '1721774295001', 50, 19, 177, 'VILLAMARIN NOGALES KLEVER DARIO', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (620, 'P', '0706460102001', 50, 19, 177, 'YANAYACO RAMIREZ JEFFERSON RICARDO', 'YANAYACO RAMIREZ JEFFERSON RICARDO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (621, 'P', '0992575026001', 50, 19, 177, 'Z&R CORP S.A.', '', '', '042130377', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (622, 'P', '1712801883001', 50, 19, 177, 'ZAMBRANO ARAY JULIO BOLIVAR', 'CABINAS TELEFONICAS Y BAZAR ZAMUD', '', '0999445150', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (623, 'P', '0703673806001', 50, 19, 177, 'ZAMBRANO HIDALGO FLOR ANGELICA', 'ZAMBRANO HIDALGO FLOR ANGELICA', '', '072-517674', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (624, 'P', '0703096065001', 50, 19, 177, 'ZAMORA VALDIVIESO CESAR SILVIO', '', '', '0993698975', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (625, 'P', '1713163622', 50, 19, 177, 'PABON ALBUJA ALEXIS MAURICIO', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (626, 'P', '1191794857001', 50, 19, 177, 'ASOCIACION DE PRODUCCION AGROPECUARIA TRABAJANDO JUNTOS LA ESPERANCITA ASOPROATRAJUNES', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (627, 'P', '0503394116001', 50, 19, 177, 'SINCHIGUANO CHICAIZA GUIDO MARCELO', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (628, 'P', '1792272807001', 50, 19, 177, 'VERIFICADORA DE CALIDAD CALIVERIF CIA LTDA', 'CALIVERIF CIA LTDA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (629, 'P', '1790093808001', 50, 19, 177, 'LIBERTY SEGUROS S.A.', 'LIBERTY SEGUROS S.A.', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (630, 'P', '0790103122001', 50, 19, 177, 'ORO DIESEL C.LTDA.', 'ORO DIESEL C.LTDA.', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (631, 'P', '1790010937001', 50, 19, 177, 'BANCO PICHINCHA CA', 'BANCO PICHINCHA CA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (632, 'P', '1800992511001', 50, 19, 177, 'JEREZ AGUILAR LUIS JOAQUIN', 'ESTACION DE SERVICIO JENA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (633, 'P', '1204386963001', 50, 19, 177, 'SUAREZ GARCIA JOFFRE HERNAN', 'SUAREZ GARCIA JOFFRE HERNAN', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (634, 'P', '0704453091001', 50, 19, 177, 'CHAMBA GRANDA JOBETH GANDHI', 'PROSERSUR', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (635, 'P', '0100242361001', 50, 19, 177, 'MALLA ZHUNIO ANGEL SAUL', 'AVICOLA MZ', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (636, 'P', '1722558242001', 50, 19, 177, 'HERRERA CHUMO REINALDO ANDRES', 'HERRERA CHUMO REINALDO ANDRES', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (637, 'P', '0992770708001', 50, 19, 177, 'SUPERBRIXEC S.A.', 'ESTACION DE SERVICIO SANTANA OIL', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (638, 'P', '1791755243001', 50, 19, 177, 'MILENIO SC', 'MILENIO SC', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (639, 'P', '1792737508001', 50, 19, 177, 'MEGABYCACE CENTROS FERRETEROS S.A.', 'MEGABYCACE CENTROS FERRETEROS S.A.', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (640, 'P', '1790019454001', 50, 19, 177, 'TRANSPORTES Y LOGISTICA DEL AREA ANDINA', 'TRANDINA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (641, 'P', '1724545403001', 50, 19, 177, 'MICHAEL NICOLALDE', 'LA CASA DE LAS MENESTRAS', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (642, 'P', '1792049504001', 50, 19, 177, 'SHEMLON SA', 'MENESTRAS DEL NEGRO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (643, 'P', '1793066070001', 50, 19, 177, 'CASTENI CIA LTDA', 'CASTENI CIA LTDA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (644, 'P', '1709825226001', 50, 19, 177, 'TEODORO WENCESLAO GUAYASAMIN CHAVEZ', 'LUBRISERVICIOS EL MAESTRO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (645, 'P', '1391734379001', 50, 19, 177, 'PARCOR S.A.', 'PETROFLAVIO 2', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (646, 'P', '1791995392001', 50, 19, 177, 'HARO GORDILLO LOPEZ CIA. LTDA.', 'ESTACIÓN DE SERVICIO GAS HARO LOPEZ', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (647, 'P', '1790819515001', 50, 19, 177, 'DISTRIBUIDORA DE LIBROS Y PAPELERIA,DILIPA C.LTDA.', 'DILIPA CIA. LTDA.', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (648, 'P', '1712987054001', 50, 19, 177, 'VERONICA GABRIELA CRUZ YEPEZ', 'BALCON MARINERO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (649, 'P', '1718021627001', 50, 19, 177, 'VALENZUELA IZQUIERDO CHRISTIAN ARMANDO', 'CHEESECAKE PLANET', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (650, 'P', '0102593811001', 50, 19, 177, 'CHACHA DURAN GEOVANNY MAURICIO', 'CHACHA DURAN GEOVANNY MAURICIO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (651, 'P', '1792200296001', 50, 19, 177, 'TDM IMPORTACIONES CIA LTDA', 'TDM IMPORTACIONES CIA LTDA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (652, 'P', '1715919070001', 50, 19, 177, 'OBACO GONZALEZ KARINA DEL PILAR', '', '', '', 'ruygonzalomoncayo@gmail.com', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (653, 'P', '1391730780001', 50, 19, 177, 'SOCIEDAD CIVIL DE HECHO DENOMINADO GRUPO USCOCOVICH', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (654, 'P', '0502203987001', 50, 19, 177, 'PALMA SALAZAR BYRON JAVIER', 'PALMA SALAZAR BYRON JAVIER', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (655, 'P', '1793009247001', 50, 19, 177, 'IMPORTADORA TECNO TRAILERS SYR', 'IMPORTADORA TECNO TRAILERS SYR', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (656, 'P', '1706843529001', 50, 19, 177, 'VALVERDE BENAVIDES CELINDA DEL CARMEN', 'AUTOCENTRO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (657, 'P', '0908232226001', 50, 19, 177, 'FREDY VIDAL JIMENEZ BONE', 'FREDY VIDAL JIMENEZ BONE', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (658, 'P', '0401502265001', 50, 19, 177, 'LIGIA SUSANA ARCINIEGA GARCIA', 'LA PARRILLA DEL TIO JESSY', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (659, 'P', '0990022011001', 50, 19, 177, 'MAQUINARIAS Y VEHÍCULOS S.A. MAVESA', 'MAQUINARIAS Y VEHÍCULOS S.A. MAVESA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (660, 'P', '1792193931001', 50, 19, 177, 'NAFTAECUADOR CIA. LTDA', 'E/S PETRONORTE', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (661, 'P', '1791885651001', 50, 19, 177, 'MKM IMPORTACIONES', 'MKM IMPORTACIONES', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (662, 'P', '1792605504001', 50, 19, 177, 'ADESGAE CIA. LTDA', ' ', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (663, 'P', '1792689864001', 50, 19, 177, 'QUALISABOR S.A.', 'HAMBURGUESAS EL CORRAL', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (664, 'P', '0590031984001', 50, 19, 177, 'CALZACUERO C.A.', 'BATA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (665, 'P', '0502039738001', 50, 19, 177, 'PALMA SALAZAR AMPARITO DEL ROCIO', 'PALMA SALAZAR AMPARITO DEL ROCIO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (666, 'P', '1768188830001', 50, 19, 177, 'AGENCIA DE REGULACIÓN Y CONTROL FITO Y ZOOSANITARIO', 'AGENCIA DE REGULACIÓN Y CONTROL FITO Y ZOOSANITARIO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (667, 'P', '0601632474001', 50, 19, 177, 'ZAMORA PEÑAFIEL IVAN REMIGIO     ', 'ESTACION DE SERVICIO PARADA SANTO DOMINGO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (668, 'P', '1715036206001', 50, 19, 177, 'PEREZ PILLAJO MARGARITA JANNETH', 'PEREZ PILLAJO MARGARITA JANNETH', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (669, 'P', '0791827655001', 50, 19, 177, 'BA&QV CIA.LTDA.', 'BA&QV 2', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (670, 'P', '1705056362001', 50, 19, 177, 'PADILLA BADILLO PABLO WASHINGTON', 'VISION 2006', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (671, 'P', '0992106891001', 50, 19, 177, 'DULCAFE S A', 'SWEET & COFFEE', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (672, 'P', '1002503314001', 50, 19, 177, 'CADENA VASQUEZ LUIS ALBERTO', 'FRITADAS AMAZONAS ATUNTAQUI', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (673, 'P', '0401297916001', 50, 19, 177, 'CALAN POZO LUIS FERNANDO', 'CALAN POZO LF', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (674, 'P', '1091731203001', 50, 19, 177, 'S.C.C. ESTACION DE SERVICIOS CASTRO HERMANOS', 'ESTACION DE SERVICIOS CASTRO HERMANOS SCC', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (675, 'P', '1793103294001', 50, 19, 177, 'CLINICA DE ESPECIALIDADES ST. THOMAS STTHOMAS S.A.', 'CLINICA ST. THOMAS', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (676, 'P', '1391747977001', 50, 19, 177, 'GENETICA NACIONAL SA GENETSA ', 'GENETICA NACIONAL SA GENETSA ', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (677, 'P', '1720029295001', 50, 19, 177, 'TAMAYO ERAZO DIEGO ROLANDO', 'TAMAYO ERAZO DIEGO ROLANDO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (678, 'P', '1720751526001', 50, 19, 177, 'ESPINOZA ERAZO ESTEBAN RAFAEL', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (679, 'P', '1722592068', 50, 19, 177, 'MOROCHO BURBANO CRISTINA GUADALUPE', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (680, 'P', '1792190940001', 50, 19, 177, 'SELLFER CIA. LTDA.', 'COMERCIAL FERRETERO FERREVARGAS', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (681, 'P', '1709785446001', 50, 19, 177, 'ZOILA PIEDAD FLORES RODRIGUEZ', 'ZOILA PIEDAD FLORES RODRIGUEZ', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (682, 'P', '0600658124', 50, 19, 177, 'VALDIVIEZO BADILLO FAUSTO ANTONINO', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (683, 'P', '1724581200', 50, 19, 177, 'BENAVIDES PAEZ JOSELYN MARCELA', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (684, 'P', '1719395111', 50, 19, 177, 'NAVARRETE IBANEZ DOLORES YADIRA', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (685, 'P', '1891774180001', 50, 19, 177, 'MOLPACK ECUADOR ECUAMOLPACK S.A.', 'MOLPACK ECUADOR', '', '0986388779', 'josue.carvajal@molpack.net;cristian.borja@molpack.net;facturas@diaeventos.com.ec;gladys.tenorio@molpack.net', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (686, 'P', '0603136045001', 50, 19, 177, 'CARRILLO CACERES EDWIN GERMAN', 'VITAAM', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (687, 'P', '1801415199001', 50, 19, 177, 'CARDENAS PARRA ELICIO ALEJANDRO   ', 'BIO-RED CONTRIBUYENTE RÉGIMEN RIMPE AGENTE DE RETENCIÓN RESOLUCIÓN NRO. NAC-DNCRASC20-00000001 ', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (688, 'P', '0401158894', 50, 19, 177, 'LOPEZ ROMO JORGE LUIS', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (689, 'P', '1700700642001', 50, 19, 177, 'AVILES TORRES EMMA JOSEFINA', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (690, 'P', '1792603137001', 50, 19, 177, 'COMERCIAL PADILLA S C C', 'COMERCIAL PADILLA S C C', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (691, 'P', '1500405582001', 50, 19, 177, 'SANCHEZ TORRES SILVIA ENITH', 'ESTACION DE SERVICIOS EL CHOTA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (692, 'P', '1391932475001', 50, 19, 177, 'HOTEL CEIBO DORADO SAS', 'HOTEL CEIBO DORADO SAS', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (693, 'P', '1791166914001', 50, 19, 177, 'PETROLEOS DE LOS RIOS PETROLRIOS C.A.', 'PETROLEOS DE LOS RIOS PETROLRIOS C.A.', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (694, 'P', '1708237720001', 50, 19, 177, 'ZANAFRIA CUELLER BYRON GONZALO', 'IMPORTADORA SERACON', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (695, 'P', '1707180137001', 50, 19, 177, 'SERRANO RODRIGUEZ ZOILA MARIA AUXILIADORA', 'SERRANO RODRIGUEZ COMERCIO EXTERIOR', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (696, 'P', '0992943882001', 50, 19, 177, 'ESTACION DE SERVICIO BPCE S.A.', 'ESTACION DE SERVICIO SENOR DE LOS MILAGROS', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (697, 'P', '1791398262001', 50, 19, 177, 'FABRICA DE BATERIAS FABRIBAT CIA. LTDA.', 'BATERIAS ECUADOR', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (698, 'P', '1791841514001', 50, 19, 177, 'AGROPECUARIA INTERANDINA CIA LTDA 2022', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (699, 'P', '1791247671001', 50, 19, 177, 'TEXCOMERCIAL S A', 'TEXCOMERCIAL S A', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (700, 'P', '1703540169001', 50, 19, 177, 'CHIRIBOGA MOLINA YOLANDA PIEDAD IMPLEQU', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (701, 'P', '20303063413', 50, 19, 177, 'ANITA FOOD S.A.', 'ANITA', '', '+5116186565', 'ventas@anita.pe', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (702, 'P', '1804458998001', 50, 19, 177, 'ONATE GARCES JUAN EDUARDO', 'ONATE GARCES JUAN EDUARDO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (703, 'P', '1001227808001', 50, 19, 177, 'ROSERO LOPEZ IVO JAVIER', 'ESTACION DE SERVICIOS VALLE DE LAGO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (704, 'P', '0991320776001', 50, 19, 177, 'SIANO SA', 'ESTACION DE SERVICIO SIANO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (705, 'P', '0992426802001', 50, 19, 177, 'COMERCIAL FON FAY S A COMERFON', 'COMERCIAL FON FAY S A COMERFON', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (706, 'P', '0993101141001', 50, 19, 177, 'LABORATORIOS CALIER DEL ECUADOR LABCALIER S.A.', 'LABORATORIOS CALIER DEL ECUADOR LABCALIER S.A.', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (707, 'P', '1714665153001', 50, 19, 177, 'VILLALBA OÑA JEANNETH ALEXANDRA', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (708, 'P', '1705667804001', 50, 19, 177, 'VISCARRA ESPINOZA FERNANDO RAMIRO', 'VISCARRA ESPINOZA FERNANDO RAMIRO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (709, 'P', '1311407868001', 50, 19, 177, 'MOREIRA PEREZ JANETH ELIZABETH', 'MOREIRA PEREZ JANETH ELIZABETH', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (710, 'P', '1802535425001', 50, 19, 177, 'PAREDES URQUIZO MAIDA IVETH', 'MAIDA IVETH PAREDES URQUIZO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (711, 'P', '1704271251001', 50, 19, 177, 'DUQUE SILVA CARLOS ARTURO', 'VENTA DE COMBUSTIBLE', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (712, 'P', '1791762940001', 50, 19, 177, 'COMPANIA CIVIL GASOLINERAS CARRETAS', 'ESTACION DE SERVICIO SAN FRANCISCO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (713, 'P', '1791287541001', 50, 19, 177, 'MEGADATOS SA', 'MEGADATOS SA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (714, 'P', '0918614611001', 50, 19, 177, 'HIDALGO ALTAMIRANO CIRO EDUARDO', 'HIDALGO ALTAMIRANO CIRO EDUARDO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (715, 'P', '1720623022001', 50, 19, 177, 'BENAVIDES MORALES MAURICIO FERNANDO', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (716, 'P', '1713534806001', 50, 19, 177, 'CAO SU PACO BEITAO', 'GRAN COMIDA CHINA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (717, 'P', '1712315074001', 50, 19, 177, 'CARRILLO CADENA MARCO ANTONIO', 'ESTACION DE SERVICIO PANTERA DOS', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (718, 'P', '1713271631001', 50, 19, 177, 'AGUILAR CHIRIBOGA JORGE EDUARDO', 'AGUILAR CHIRIBOGA JORGE EDUARDO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (719, 'P', '1792540917001', 50, 19, 177, 'AUTOSERVICIO LA PAMPA AUTOSERVIPAMPA CIA. LTDA.', 'AUTOSERVIPAMPA CIA. LTDA.', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (720, 'P', '0992594675001', 50, 19, 177, 'JARABA S.A.', 'HOTEL PUERTO PACIFICO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (721, 'P', '0300564044001', 50, 19, 177, 'FERNANDEZ BARAHONA INES MARINA', 'ESTACION DE SERVICIO ISIDRO AYORA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (722, 'P', '1801681089001', 50, 19, 177, 'GRANJA BENALCAZAR FAUSTO BENIGNO FACTURAELECTRONICAECUADOR.COM', 'GASOLINERA GRANJA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (723, 'P', '1706985957001', 50, 19, 177, 'ZAMORA BALLADARES TERESA DE JESUS', 'VENTA DE COMBUSTIBLE', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (724, 'P', '1791769732001', 50, 19, 177, 'PANIFICADORA AMBATO PANAMBATO CIA. LTDA.', 'PANIFICADORA AMBATO PANAMBATO CIA. LTDA.', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (725, 'P', '1790945545001', 50, 19, 177, 'DIPO AUTO CIA. LTDA.', 'DIPO AUTO CIA. LTDA.', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (726, 'P', '0791817870001', 50, 19, 177, 'SIVISAPA ROMERO SIVI&ROME CIA LTDA', 'ESTACION DE SERVICIO \"EL TREBOL\"', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (727, 'P', '0401080767', 50, 19, 177, 'MARTINEZ BRACHO LENIN OMAR', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (728, 'P', '0401016704', 50, 19, 177, 'MARTINEZ MOLINA WILLAM ORLANDO', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (729, 'P', '0993256560001', 50, 19, 177, 'GASOCORP S.A', 'ESTACION DE SERVICIO LEDERLUZ', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (730, 'P', '1791821033001', 50, 19, 177, 'ASOCIACIÓN DE EMPRESAS DE NUTRICIÓN Y SALUD ANIMAL - AENSA', 'ASOCIACIÓN DE EMPRESAS DE NUTRICIÓN Y SALUD ANIMAL - AENSA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (731, 'P', '1790040275001', 50, 19, 177, 'PA-CO COMERCIAL E INDUSTRIAL S.A.', 'PA-CO COMERCIAL E INDUSTRIAL S.A.', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (732, 'P', '0992683457001', 50, 19, 177, 'FIALLOS Y GALLEGOS IMPORTADORA S.A. FIGAIMSA', 'FIALLOS Y GALLEGOS IMPORTADORA S.A. FIGAIMSA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (733, 'P', '1793086772001', 50, 19, 177, 'CONCESIONARIA INTEGRAL - INTERVIAS - S.A.', 'INTERVIAS - E/P JAIME ROLDOS AGUILERA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (734, 'P', '0501054753001', 50, 19, 177, 'HUILCAMAIGUA DIAZ LUZ AURORA', 'ESTACION DE SERVICIO EL MIRADOR', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (735, 'P', '0703492405001', 50, 19, 177, 'VERA CALDERON CARLOS IVAN', 'HOTEL VEUXOR', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (736, 'P', '0922875703001', 50, 19, 177, 'GONZALES PAREDES LUIS ALFONSO', 'GASOLINERA EL OSO AGENTE DE RETENCION NAC-DNCRASC20-00000001 ', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (737, 'P', '2390039045001', 50, 19, 177, 'ESTACION DE SERVICIO LA AMERICANA MATNOG CIA.LTDA.', 'ESTACION DE SERVICIO LA AMERICANA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (738, 'P', '0500466883001', 50, 19, 177, 'PALMA HERRERA CESAR AUGUSTO', 'ESTACION DE SERVICIO PANAMERICANA CENTRO NORTE', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (739, 'P', '0301579199001', 50, 19, 177, 'ZUNA ARGUDO EDWIN EDUARDO', 'ZUNA ARGUDO EDWIN EDUARDO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (740, 'P', '1707847792001', 50, 19, 177, 'EGAS ESCOBAR PATRICIO MANUEL', '1707847792001', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (741, 'P', '0705368934', 50, 19, 177, 'FLORES ESPINOZA DIEGO VICENTE', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (742, 'P', '1600234072001', 50, 19, 177, 'PROANO ACOSTA JORGE LUIS', 'PRIMAX PATRICIA PILAR', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (743, 'P', '0791830389001', 50, 19, 177, 'CORDOES CIA. LTDA.', 'ESTACION DE SERVICIO \"RIO BONITO\"', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (744, 'P', '1792757827001', 50, 19, 177, 'MONOBOLON CIA.LTDA.', 'MONOBOLON', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (745, 'P', '2300137912001', 50, 19, 177, 'LOOR MUÑOZ THALIA STELA', 'VULCANIZADORA Y ENGRASADORA MATIAS', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (746, 'P', '0603857657001', 50, 19, 177, 'AUTO ACCESORIOS JUNIOR', '', '', '0997243944 NARANJAL', 'importproa-facturacion@outlook.com', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (747, 'P', '1002095519', 50, 19, 177, 'REVELO PUETATE MARCO JAVIER', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (748, 'P', '1805009477001', 50, 19, 177, 'CHICAIZA MOSQUERA JORGE LUIS', 'LA SANTISIMA CRUZ', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (749, 'P', '1804190385', 50, 19, 177, 'CHAVEZ MARTINEZ ANDRES PATRICIO', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (750, 'P', '1725505406', 50, 19, 177, 'CACHIPUENDO ALBAMOCHO LUIS FERNANDO', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (751, 'P', '1705654364', 50, 19, 177, 'LEON SERRANO GONZALO CAYETANO CAMILO', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (752, 'P', '0909740987001', 50, 19, 177, 'PEÑA QUINTO FRANCISCO', 'EL BIGOTE', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (753, 'P', '0930708177001', 50, 19, 177, 'LLANGARI CACOANGO BENJAMIN WASHINGTON', 'ESTACION DE SERVICIO DON OLE', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (754, 'P', '0601773864001', 50, 19, 177, 'MEDINA SANCHEZ WASHINGTON CRISTOBAL', 'AUTOLUBRICANTES DE LA SIERRA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (755, 'P', '0591733095001', 50, 19, 177, 'SERVICIOS Y SOLUCIONES DE GESTION EMPRESARIAL CSGE CIA. LTDA.', 'SAGA LATAM', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (756, 'P', '1700700600', 50, 19, 177, 'ROSERO ARIZZO GUILLERMO', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (757, 'P', '1791817680001', 50, 19, 177, 'SOCIEDAD DE  LUCHA CONTRA EL CANCER', 'SOLCA', '', '276 1828 276 0053', 'solcaqui@ec.net.ec', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (758, 'P', '1722431903001', 50, 19, 177, 'CHAMORRO LARA ROBERT ALEJANDRO', '', '', '0998029921', 'robert.chamorro1996@gmail.com', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (759, 'P', '1708759590001', 50, 19, 177, 'YUGSI GUANIN SEGUNDO OSWALDO', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (760, 'P', '1707809909001', 50, 19, 177, 'GALARRAGA SANTAMARIA HECTOR EDUARDO', 'MULTIESTACION DE SERVICIOS LA JOYA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (761, 'P', '1753983103001', 50, 19, 177, 'ENRIQUEZ PAREDES JONATHAN ERICK', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (762, 'P', '1706867056', 50, 19, 177, 'SANCHEZ CALERO NELSON EDUARDO', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (763, 'P', '0501092704001', 50, 19, 177, 'TORO VASCO GREGORIO PATRICIO', 'ESTACIÓN DE SERVICIO LA ARGENTINA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (764, 'P', '1206374322001', 50, 19, 177, 'CASTILLO LOPEZ KARLA MAYTE', 'ESTACION DE SERVICIO VENTANAS', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (765, 'P', '1704004660001', 50, 19, 177, 'GUAÑA CEVALLOS LIDA GRIMANESA', 'ESTACIÓN DE SERVICIO ASCÃZUBI', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (766, 'P', '1700161183001', 50, 19, 177, 'JEREZ PAREDES LUIS ANIBAL', 'JR DISTRIBUCIONES', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (767, 'P', '1500956329', 50, 19, 177, 'MARTINEZ HERMIDA JOHANNA LISSBETH', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (768, 'P', '1723270383001', 50, 19, 177, 'RISUEÑO ZAMBRANO LEONARDO FABIO', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (769, 'P', '0791819091001', 50, 19, 177, 'PROSERSUR AGROMERCANTIL SA', 'PROSERSUR AGROMERCANTIL SA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (770, 'P', '1701456673', 50, 19, 177, 'ALBUJA GUA?A MARIA INES', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (771, 'P', '0605689892', 50, 19, 177, 'AILLON NUGSHI JOSE VIRGILIO', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (772, 'P', '1719398040001', 50, 19, 177, 'COLLAGUAZO RODRIGUEZ ALEX JUAN', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (773, 'P', '1710784347001', 50, 19, 177, 'ORBEA DONOSO LIGIA XIMENA', 'ORBEA DONOSO LIGIA XIMENA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (774, 'P', '0601420409001', 50, 19, 177, 'GUAINA QUISHPI MIGUEL', 'ALMACEN LA HERRAMIENTA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (775, 'P', '1800312736001', 50, 19, 177, 'VALVERDE GUEVARA LUCILA ELOINA', 'GASOLINERA AVELINO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (776, 'P', '0993356689001', 50, 19, 177, 'DTA - MUZAS S A S ', 'DTA - MUZAS S A S ', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (777, 'P', '1718117540001', 50, 19, 177, 'TENESACA CARDENAS XAVIER EDUARDO', '', '', '2837446 0984141598', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (778, 'P', '1792677610001', 50, 19, 177, 'DISTRIBUIDORA DE PRODUCTOS AVICOLAS LOPEZ MARTINEZ DIPROAVILM CIA.LTDA.', '', '', '0996213701', 'jlopez@diporavilm.com', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (779, 'P', '0400935516', 50, 19, 177, 'HERNANDEZ CUPACAN MILTON JAVIER', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (780, 'P', '1713337226001', 50, 19, 177, 'EGAS GONZALES ANGELICA MARIA', 'PAPELERIA EL CONOCIMIENTO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (781, 'P', '0941695082', 50, 19, 177, 'LEMACHE ZHUMI HENRY DAVID', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (782, 'P', '1718304965', 50, 19, 177, 'RISUENO ZAPATA EVELYN GABRIELA', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (783, 'P', '0400089132001', 50, 19, 177, 'GAVILANES PADILLA LUZ MARIA', 'LUBRITYRE MATTFEL', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (784, 'P', '0601598196001', 50, 19, 177, 'VERA VALLADARES KLEVER HERNAN', '.COMERCIAL VERA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (785, 'P', '0601789407001', 50, 19, 177, 'ZABALA ARELLANO EDGAR GERMAN', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (786, 'P', '0400344586', 50, 19, 177, 'ROMO JIMENEZ BERTHA ALICIA', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (787, 'P', '0914543806', 50, 19, 177, 'NARANJO ESCOBAR MARIANA DE JESUS', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (788, 'P', '1002286357001', 50, 19, 177, 'LUNA ACOSTA MIRNA MARIANNELA', 'ESTACION DE SERVICIO LA FLORIDA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (789, 'P', '0200678225', 50, 19, 177, 'VASCONEZ CAICEDO MARTHA SUSANA', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (790, 'P', '1718371097001', 50, 19, 177, 'BERTHA LUCIA TINAJERO CISNEROS', 'EDS SENSACION', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (791, 'P', '0704036482', 50, 19, 177, 'LOAYZA MACAS PATRICK EFREN', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (792, 'P', '0991280472001', 50, 19, 177, 'COOPERATIVA TRANSPORTES BRISAS DE SANTAY PANORAMA', 'ESTACION DE SERVICIO PANORAMA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (793, 'P', '1001705399001', 50, 19, 177, 'SANTIAGO FEDERICO GUERRON AYALA', 'SANTIAGO FEDERICO GUERRON AYALA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (794, 'P', '1791436156001', 50, 19, 177, 'EPSTEIN CIA. LTDA.', 'EPSTEIN DIGIDOC', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (795, 'P', '0992663235001', 50, 19, 177, 'REPRESENTACIONES ORDONEZ Y NEGRETE S.A. REPORNE', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (796, 'P', '1720993060001', 50, 19, 177, 'PIZARA VACA ESTELA ROSARIO', 'INNOVALAB - SAN GABRIEL', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (797, 'P', '1703606002001', 50, 19, 177, 'ACOSTA RODRIGUEZ MARIO ANIBAL', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (798, 'P', '1792072018001', 50, 19, 177, 'DELI INTERNACIONAL S.A.', 'TROPI BURGER                           ', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (799, 'P', '1713849220001', 50, 19, 177, 'QUINCHIGUANGO PEREZ SEGUNDO MESIAS', 'DISMACERO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (800, 'P', '0502060957001', 50, 19, 177, 'VELOZ MALAVE HUGO VINICIO', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (801, 'P', '1792019761001', 50, 19, 177, 'AUTOELEVACION CIA LTDA', 'AUTOELEVACION CIA LTDA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (802, 'P', '1792541743001', 50, 19, 177, 'AUTOPARTES Y AUTOGRUAS FCN S.A.', 'AUTOPARTES Y AUTOGRUAS FCN S.A.', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (803, 'P', '1792573009001', 50, 19, 177, 'TACONAZO RESTAURANTES Y BEBIDAS VILLAGRANMOLINEROS S.A', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (804, 'P', '0190381633001', 50, 19, 177, 'NOVACREDIT S.A.', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (805, 'P', '1725601494001', 50, 19, 177, 'DE LA CRUZ CEDE?O GENESIS JOANA', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (806, 'P', '1760004650001', 50, 19, 177, 'INSTITUTO ECUATORIANO DE SEGURIDAD SOCIAL IESS', '', '', '3730800', 'patjuddpg@iess.gob.ecmaria.burgos@iess.gob.ec', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (807, 'P', '1719884502001', 50, 19, 177, 'PADILLA VELEPUCHA ROSA MARIA', '', '', '0984141598', 'zonacar2022@hotmail.com', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (808, 'P', '1723014179001', 50, 19, 177, 'MUÑOZ GARCIA BRYAN XAVIER', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (809, 'P', '1724072135', 50, 19, 177, 'SABANDO MOREIRA LEONELA', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (810, 'P', '1091796549001', 50, 19, 177, 'FRITADASAMAZONAS S.A.S.', 'FRITADAS AMAZONAS', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (811, 'P', '1792413303001', 50, 19, 177, 'AEROQUITOSERV S.A', 'ESTACION DE SERVICIO AEROPUERTO MARISCAL SUCRE', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (812, 'P', '1713803870', 50, 19, 177, 'PABON SIMBAÑA MANUEL MESIAS', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (813, 'P', '0501577829001', 50, 19, 177, 'CHANGOLUISA DEFAZ ANA MARIA', 'CHANGOLUISA DEFAZ ANA MARIA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (814, 'P', '1792221676001', 50, 19, 177, 'COMBUSTIBLES Y AFINES BARBA Y VIZCARRA SA', 'E/S PINSAQUI', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (815, 'P', '1310017791001', 50, 19, 177, 'ZAMBRANO VELIZ NILSON RAMON', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (816, 'P', '0500920061001', 50, 19, 177, 'PORRAS GARZON FRANCISCO HUMBERTO', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (817, 'P', '0450209267', 50, 19, 177, 'CORAL ESCOBAR KEVIN ALBEIRO', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (818, 'P', '0957506876', 50, 19, 177, 'NOHELY DENNISSE ARELLANO SOLEDISPA', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (819, 'P', '0923997027', 50, 19, 177, 'QUIU00D1ONEZ GUAMAN GUILLERMO ANDRES', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (820, 'P', '1716416910001', 50, 19, 177, 'NOROÑA CALVACHI HENRY PAUL', 'NOROÑA CALVACHI HENRY PAUL', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (821, 'P', '1793170099001', 50, 19, 177, 'REMOLQUESNORONA CIA LTDA', 'REMOLQUES NOROÑA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (822, 'P', '1002181202001', 50, 19, 177, 'ALDAS ILES AIDA LUCINDA', 'EL PERNO.COM FERRETERIA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (823, 'P', '1792680123001', 50, 19, 177, 'SOCIEDAD ECUATORIANA DE PETREOS S.C.C ECUAPET', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (824, 'P', '2300541493001', 50, 19, 177, 'AGUILAR NAJERA ANTHONY  EDUARDO', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (825, 'P', '1712481090', 50, 19, 177, 'CRESPO ARIAS DIEGO VINICIO', '', '', '0993450844 0', 'diegocrespoarias@psdiegocrespo.com', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (826, 'P', '1792107423001', 50, 19, 177, 'SWEADEN COMPANIA DE SEGUROS S.A.', 'SWEADEN COMPANIA DE SEGUROS S.A.', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (827, 'P', '2390626854001', 50, 19, 177, 'PALZAM CIA.LTDA.', 'PALZAM CIA.LTDA.', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (828, 'P', '1722200282', 50, 19, 177, 'TARAPUES GUERRERO KATTY FERNANDA', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (829, 'P', '1720016201', 50, 19, 177, 'YUGSI ZAMBRANO BYRON FABIAN', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (830, 'P', '1792118085001', 50, 19, 177, 'RUEDA GARANTIZADA RUEDAGAR CIA LTDA', 'RUEDA GARANTIZADA RUEDAGAR CIA LTDA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (831, 'P', '1714537501', 50, 19, 177, 'CUSHICONDOR CASAMEN LIGIA ELENA', '', '', '0992614324', 'alannys-cc2012@hotmail.com', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (832, 'P', '1714226840', 50, 19, 177, 'BRAVO BRAVO YANET GUADALUPE', 'MINIMARKET M&M', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (833, 'P', '1707250161', 50, 19, 177, 'COM Y LUBRI', '', '', '2383-306 PINTAG', 'importproa-facturacion@outlook.com', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (834, 'P', '1717387698001', 50, 19, 177, 'QUILUMBA ZAMORA LUIS EDUARDO', 'VULCANIZADORA CHIGUILPE', '', '0', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (835, 'P', '1792969107001', 50, 19, 177, 'SOCIEDAD CIVIL Y MERCANTIL AUTOSERVICIO POMASQUI', 'AUTOSERVICIO POMASQUI', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (836, 'P', '1717621054001', 50, 19, 177, 'BUNGACHO SANDOVAL XIMENA MARIELA', 'CT.HYDRAULIC', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (837, 'P', '0400081691', 50, 19, 177, 'BRACHO GUZMAN ROSA AIDA', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (838, 'P', '1702832658001', 50, 19, 177, 'PAVON VINUEZA NESTOR EUCLIDES', 'IMPORFRENO', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (839, 'P', '1001965019001', 50, 19, 177, 'FUELTALA POZO NELBA ESPERANZA', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (840, 'P', '0591712969001', 50, 19, 177, 'TRUCKDIESEL IMPORTADORES S.A.', '', '', '032801998 0998701856', 'conta_sto@truckdiesel.com.ec;edison@truckdiesel.com.ec', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (841, 'P', '1711192656001', 50, 19, 177, 'HUERTAS CADENA ADRIANA DE LAS MERCEDES', 'ADRIANITA MISHELL LUBRICADORA', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (842, 'P', '1707539340001', 50, 19, 177, 'GUAMAN LOPEZ GLADYS MARLENE', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (843, 'P', '1723437354', 50, 19, 177, 'SANCHEZ FIERRO MARCO VINICIO                      ', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (844, 'P', '1711364826', 50, 19, 177, 'PAEZ CARRERA LUIS ANTONIO', 'AUTOMOTOREZ PAEZ', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (845, 'P', '1708065097', 50, 19, 177, 'PONCE JARRIN FREDY ALBERTO', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (846, 'P', '1725094591', 50, 19, 177, 'CACUANGO CATUCUAMBA LUIS DANIEL                   ', '', '', '', '', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (847, 'P', '0992745762001', 50, 19, 177, 'MOTORES Y TRACTORES MOTRAC S.A.', '', '', '022427410', 'pruilova@motrac.ec', '', '', 0.00, 0, '', '2024-08-10 01:44:56', '2024-08-10 01:44:56', NULL);
INSERT INTO `beneficiary` VALUES (848, 'C', '1712030368', 50, 5, 35, 'SANTIAGO BORJA ROMERO', 'LOCO', 'Espejo y Mexico', '099598412', 'san@bo.com', 'tuweb.com', 'Velazco', 1000.00, 100, '1.1.1.01.001', '2024-08-10 03:32:02', '2024-08-10 04:00:39', '2024-08-10 04:00:39');
INSERT INTO `beneficiary` VALUES (849, 'C', '1712030368001', 50, 5, 35, 'SANTIAGO BORJA', '6UG8', 'Especjo', '', '', '', 'VIll', 0.00, 0, '', '2024-08-10 03:42:33', '2024-08-10 04:00:45', '2024-08-10 04:00:45');
INSERT INTO `beneficiary` VALUES (850, 'A', '1712030368', 50, 5, 35, 'SANTIAGO BORJA ROMERO', 'LOCO', 'Espejo y Mexico', '', '', '', 'Velazco', 0.00, 0, '', '2024-08-12 13:26:31', '2024-08-12 13:26:31', NULL);
INSERT INTO `beneficiary` VALUES (851, 'P', '1712030368S', 50, 5, 35, 'SANTIAGO BORJA ROMERO', 'LOCO', 'Espejo y Mexico', '', '', '', 'Velazco', 0.00, 0, '', '2024-08-12 13:31:16', '2024-08-12 13:31:16', NULL);

-- ----------------------------
-- Table structure for bot_audit
-- ----------------------------
DROP TABLE IF EXISTS `bot_audit`;
CREATE TABLE `bot_audit`  (
  `idbotaudit` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL DEFAULT 0,
  `textentered` text CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL,
  `keyresult` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL DEFAULT '',
  `data` text CHARACTER SET utf16 COLLATE utf16_general_ci NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idbotaudit`) USING BTREE,
  INDEX `FkUser`(`iduser` ASC) USING BTREE,
  CONSTRAINT `FkUser` FOREIGN KEY (`iduser`) REFERENCES `user` (`iduser`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 355 CHARACTER SET = utf16 COLLATE = utf16_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bot_audit
-- ----------------------------
INSERT INTO `bot_audit` VALUES (77, 6, 'menu', 'menu', NULL, '2024-07-05 11:15:00');
INSERT INTO `bot_audit` VALUES (80, 6, 'menu', 'menu', NULL, '2024-07-05 11:27:07');
INSERT INTO `bot_audit` VALUES (81, 6, 'reportes', 'reportes', NULL, '2024-07-05 11:32:28');
INSERT INTO `bot_audit` VALUES (83, 6, 'ayuda', 'ayuda', NULL, '2024-07-05 11:39:30');
INSERT INTO `bot_audit` VALUES (84, 6, 'menu', 'menu', NULL, '2024-07-05 11:39:34');
INSERT INTO `bot_audit` VALUES (85, 6, 'reportes', 'reportes', NULL, '2024-07-05 11:39:36');
INSERT INTO `bot_audit` VALUES (86, 6, 'lista_usuarios', 'lista_usuarios', NULL, '2024-07-05 11:39:38');
INSERT INTO `bot_audit` VALUES (87, 6, 'lista_stock', 'lista_existencias', NULL, '2024-07-05 11:39:41');
INSERT INTO `bot_audit` VALUES (88, 6, 'lista_productos', 'lista_productos', NULL, '2024-07-05 11:39:44');
INSERT INTO `bot_audit` VALUES (89, 6, 'buenos dias', 'saludo', NULL, '2024-07-05 11:42:43');
INSERT INTO `bot_audit` VALUES (90, 6, 'buenas tardes', 'saludo', NULL, '2024-07-05 11:42:54');
INSERT INTO `bot_audit` VALUES (91, 6, 'menu', 'menu', NULL, '2024-07-05 11:43:00');
INSERT INTO `bot_audit` VALUES (93, 6, 'reportes', 'reportes', NULL, '2024-07-05 11:47:41');
INSERT INTO `bot_audit` VALUES (94, 6, 'lista_usuarios', 'lista_usuarios', NULL, '2024-07-05 11:47:44');
INSERT INTO `bot_audit` VALUES (95, 6, 'hello', 'saludo', NULL, '2024-07-05 12:06:25');
INSERT INTO `bot_audit` VALUES (99, 6, 'menu', 'menu', NULL, '2024-07-05 12:22:33');
INSERT INTO `bot_audit` VALUES (100, 6, 'reportes', 'reportes', NULL, '2024-07-05 12:22:36');
INSERT INTO `bot_audit` VALUES (101, 6, 'lista_productos', 'lista_productos', NULL, '2024-07-05 12:22:38');
INSERT INTO `bot_audit` VALUES (102, 6, 'lista_productos', 'lista_productos', NULL, '2024-07-05 12:25:08');
INSERT INTO `bot_audit` VALUES (103, 6, 'lista_productos', 'lista_productos', NULL, '2024-07-05 12:25:42');
INSERT INTO `bot_audit` VALUES (104, 6, 'lista_productos', 'lista_productos', NULL, '2024-07-05 12:25:59');
INSERT INTO `bot_audit` VALUES (105, 6, 'lista_productos', 'lista_productos', NULL, '2024-07-05 12:30:33');
INSERT INTO `bot_audit` VALUES (106, 6, 'lista_productos', 'lista_productos', NULL, '2024-07-05 12:32:44');
INSERT INTO `bot_audit` VALUES (107, 6, 'reportes', 'reportes', NULL, '2024-07-05 12:34:06');
INSERT INTO `bot_audit` VALUES (108, 6, 'lista_productos', 'lista_productos', NULL, '2024-07-05 12:35:24');
INSERT INTO `bot_audit` VALUES (109, 6, 'lista_productos', 'lista_productos', NULL, '2024-07-05 12:37:52');
INSERT INTO `bot_audit` VALUES (110, 6, 'lista_productos', 'lista_productos', NULL, '2024-07-05 12:38:08');
INSERT INTO `bot_audit` VALUES (111, 6, 'lista_productos', 'lista_productos', NULL, '2024-07-05 12:38:54');
INSERT INTO `bot_audit` VALUES (117, 6, 'hello', 'saludo', NULL, '2024-07-05 14:40:16');
INSERT INTO `bot_audit` VALUES (118, 6, 'hello', 'saludo', NULL, '2024-07-05 14:40:35');
INSERT INTO `bot_audit` VALUES (119, 6, 'hols', 'saludo', NULL, '2024-07-12 17:07:21');
INSERT INTO `bot_audit` VALUES (120, 6, 'como estas', 'saludo', NULL, '2024-07-12 17:07:21');
INSERT INTO `bot_audit` VALUES (121, 6, 'buenos dias', 'saludo', NULL, '2024-07-05 14:41:55');
INSERT INTO `bot_audit` VALUES (122, 6, 'menu', 'menu', NULL, '2024-07-05 14:42:06');
INSERT INTO `bot_audit` VALUES (123, 6, 'reportes', 'reportes', NULL, '2024-07-05 14:42:07');
INSERT INTO `bot_audit` VALUES (124, 6, 'lista_usuarios', 'lista_usuarios', NULL, '2024-07-05 14:42:12');
INSERT INTO `bot_audit` VALUES (127, 6, 'hola', 'saludo', NULL, '2024-07-05 14:43:43');
INSERT INTO `bot_audit` VALUES (128, 6, 'menu', 'menu', NULL, '2024-07-05 21:31:41');
INSERT INTO `bot_audit` VALUES (129, 6, 'reportes', 'reportes', NULL, '2024-07-05 21:32:04');
INSERT INTO `bot_audit` VALUES (130, 6, 'lista_usuarios', 'lista_usuarios', NULL, '2024-07-05 21:32:07');
INSERT INTO `bot_audit` VALUES (131, 6, 'menu', 'menu', NULL, '2024-07-05 21:32:10');
INSERT INTO `bot_audit` VALUES (132, 6, 'ayuda', 'ayuda', NULL, '2024-07-05 21:32:12');
INSERT INTO `bot_audit` VALUES (133, 6, 'menu', 'menu', NULL, '2024-07-05 21:32:14');
INSERT INTO `bot_audit` VALUES (134, 6, 'reportes', 'reportes', NULL, '2024-07-05 21:32:19');
INSERT INTO `bot_audit` VALUES (135, 6, 'lista_productos', 'lista_productos', NULL, '2024-07-05 21:32:21');
INSERT INTO `bot_audit` VALUES (136, 6, 'menu', 'menu', NULL, '2024-07-05 21:32:29');
INSERT INTO `bot_audit` VALUES (137, 6, 'ayuda', 'ayuda', NULL, '2024-07-05 21:32:31');
INSERT INTO `bot_audit` VALUES (138, 6, 'hello', 'saludo', NULL, '2024-07-09 18:40:14');
INSERT INTO `bot_audit` VALUES (139, 6, 'hello', 'saludo', NULL, '2024-07-09 20:26:53');
INSERT INTO `bot_audit` VALUES (140, 6, 'hola como estas', 'saludo', NULL, '2024-07-09 20:26:57');
INSERT INTO `bot_audit` VALUES (141, 6, 'hola como estas', 'saludo', NULL, '2024-07-09 21:19:13');
INSERT INTO `bot_audit` VALUES (142, 6, 'menu', 'menu', NULL, '2024-07-09 21:19:20');
INSERT INTO `bot_audit` VALUES (143, 6, 'necesito ayuda', 'ayuda', NULL, '2024-07-09 21:19:43');
INSERT INTO `bot_audit` VALUES (144, 6, 'help', 'ayuda', NULL, '2024-07-09 21:19:49');
INSERT INTO `bot_audit` VALUES (145, 6, 'menu', 'menu', NULL, '2024-07-09 21:19:57');
INSERT INTO `bot_audit` VALUES (146, 6, 'listado de productos', 'lista_productos', NULL, '2024-07-09 21:20:06');
INSERT INTO `bot_audit` VALUES (147, 6, 'reportes', 'reportes', NULL, '2024-07-09 21:20:19');
INSERT INTO `bot_audit` VALUES (148, 6, 'lista_productos', 'lista_productos', NULL, '2024-07-09 21:20:22');
INSERT INTO `bot_audit` VALUES (149, 6, 'listado de usuarios', 'lista_usuarios', NULL, '2024-07-09 21:20:36');
INSERT INTO `bot_audit` VALUES (150, 6, 'lista_usuarios', 'lista_usuarios', NULL, '2024-07-09 21:20:41');
INSERT INTO `bot_audit` VALUES (151, 6, 'hola', 'saludo', NULL, '2024-07-09 21:34:05');
INSERT INTO `bot_audit` VALUES (152, 6, 'menu', 'menu', NULL, '2024-07-09 21:34:11');
INSERT INTO `bot_audit` VALUES (153, 6, 'reportes', 'reportes', NULL, '2024-07-09 21:34:15');
INSERT INTO `bot_audit` VALUES (154, 6, 'lista_usuarios', 'lista_usuarios', NULL, '2024-07-09 21:34:17');
INSERT INTO `bot_audit` VALUES (155, 6, 'lista_productos', 'lista_productos', NULL, '2024-07-09 21:34:21');
INSERT INTO `bot_audit` VALUES (156, 6, 'lista de productos', 'lista_productos', NULL, '2024-07-09 21:34:26');
INSERT INTO `bot_audit` VALUES (157, 6, 'menu', 'menu', NULL, '2024-07-09 21:36:28');
INSERT INTO `bot_audit` VALUES (158, 6, 'ayuda', 'ayuda', NULL, '2024-07-09 21:36:31');
INSERT INTO `bot_audit` VALUES (159, 6, 'menu', 'menu', NULL, '2024-07-09 21:39:54');
INSERT INTO `bot_audit` VALUES (160, 6, 'reportes', 'reportes', NULL, '2024-07-09 21:42:31');
INSERT INTO `bot_audit` VALUES (161, 6, 'lista_productos', 'lista_productos', NULL, '2024-07-09 21:42:35');
INSERT INTO `bot_audit` VALUES (162, 6, 'help', 'ayuda', NULL, '2024-07-09 21:43:39');
INSERT INTO `bot_audit` VALUES (163, 6, 'menu', 'menu', NULL, '2024-07-09 21:43:50');
INSERT INTO `bot_audit` VALUES (164, 6, 'ayuda', 'ayuda', NULL, '2024-07-09 21:45:15');
INSERT INTO `bot_audit` VALUES (165, 6, 'saludo', 'saludo', NULL, '2024-07-09 21:45:22');
INSERT INTO `bot_audit` VALUES (166, 6, 'lista_usuarios', 'lista_usuarios', NULL, '2024-07-09 21:45:39');
INSERT INTO `bot_audit` VALUES (167, 6, 'como esta hoy te envio un saludo', 'saludo', NULL, '2024-07-09 21:46:16');
INSERT INTO `bot_audit` VALUES (168, 6, 'lista de productos', 'lista_productos', NULL, '2024-07-09 21:47:02');
INSERT INTO `bot_audit` VALUES (169, 6, 'lista de productos', 'lista_productos', NULL, '2024-07-09 21:47:25');
INSERT INTO `bot_audit` VALUES (170, 6, 'usuarios', 'lista_usuarios', NULL, '2024-07-09 21:47:32');
INSERT INTO `bot_audit` VALUES (174, 7, 'buenos dias', 'saludo', NULL, '2024-07-09 21:50:49');
INSERT INTO `bot_audit` VALUES (175, 7, 'menu', 'menu', NULL, '2024-07-09 21:51:59');
INSERT INTO `bot_audit` VALUES (176, 7, 'ayuda', 'ayuda', NULL, '2024-07-09 21:52:03');
INSERT INTO `bot_audit` VALUES (177, 7, 'menu', 'menu', NULL, '2024-07-09 21:52:13');
INSERT INTO `bot_audit` VALUES (178, 7, 'reportes', 'reportes', NULL, '2024-07-09 21:52:19');
INSERT INTO `bot_audit` VALUES (179, 7, 'lista_productos', 'lista_productos', NULL, '2024-07-09 21:53:03');
INSERT INTO `bot_audit` VALUES (180, 6, 'saludo como estas', 'saludo', NULL, '2024-07-09 21:53:27');
INSERT INTO `bot_audit` VALUES (181, 6, 'hola', 'saludo', NULL, '2024-07-09 21:53:46');
INSERT INTO `bot_audit` VALUES (182, 6, 'hola', 'saludo', NULL, '2024-07-09 21:53:49');
INSERT INTO `bot_audit` VALUES (183, 6, 'hi', 'saludo', NULL, '2024-07-09 21:53:51');
INSERT INTO `bot_audit` VALUES (184, 6, 'hello', 'saludo', NULL, '2024-07-09 21:53:53');
INSERT INTO `bot_audit` VALUES (185, 6, 'hola', 'saludo', NULL, '2024-07-09 21:54:25');
INSERT INTO `bot_audit` VALUES (186, 8, 'help', 'ayuda', NULL, '2024-07-09 21:57:28');
INSERT INTO `bot_audit` VALUES (187, 8, 'menu', 'menu', NULL, '2024-07-09 21:57:38');
INSERT INTO `bot_audit` VALUES (188, 8, 'reportes', 'reportes', NULL, '2024-07-09 21:57:47');
INSERT INTO `bot_audit` VALUES (189, 8, 'hola', 'saludo', NULL, '2024-07-09 21:58:07');
INSERT INTO `bot_audit` VALUES (190, 6, 'saludos', 'saludo', NULL, '2024-07-10 01:11:07');
INSERT INTO `bot_audit` VALUES (191, 6, 'menu', 'menu', NULL, '2024-07-10 02:15:07');
INSERT INTO `bot_audit` VALUES (192, 6, 'ayuda', 'ayuda', NULL, '2024-07-10 02:15:14');
INSERT INTO `bot_audit` VALUES (193, 6, 'menu', 'menu', NULL, '2024-07-10 02:15:18');
INSERT INTO `bot_audit` VALUES (194, 6, 'reportes', 'reportes', NULL, '2024-07-10 02:15:20');
INSERT INTO `bot_audit` VALUES (195, 6, 'lista_productos', 'lista_productos', NULL, '2024-07-10 02:15:22');
INSERT INTO `bot_audit` VALUES (196, 6, 'lista_usuarios', 'lista_usuarios', NULL, '2024-07-10 02:15:25');
INSERT INTO `bot_audit` VALUES (197, 6, 'saludos cordiales', 'saludo', NULL, '2024-07-10 02:21:26');
INSERT INTO `bot_audit` VALUES (198, 6, 'menu', 'menu', NULL, '2024-07-10 02:22:37');
INSERT INTO `bot_audit` VALUES (199, 6, 'reportes', 'reportes', NULL, '2024-07-10 02:25:47');
INSERT INTO `bot_audit` VALUES (200, 6, 'lista_productos', 'lista_productos', NULL, '2024-07-10 02:26:50');
INSERT INTO `bot_audit` VALUES (201, 6, 'menu', 'menu', NULL, '2024-07-10 02:27:51');
INSERT INTO `bot_audit` VALUES (202, 6, 'ayuda', 'ayuda', NULL, '2024-07-10 02:30:20');
INSERT INTO `bot_audit` VALUES (203, 6, 'ayuda', 'ayuda', NULL, '2024-07-10 02:32:49');
INSERT INTO `bot_audit` VALUES (204, 6, 'menu', 'menu', NULL, '2024-07-10 02:33:15');
INSERT INTO `bot_audit` VALUES (205, 6, 'ayuda', 'ayuda', NULL, '2024-07-10 02:33:53');
INSERT INTO `bot_audit` VALUES (206, 6, 'menu', 'menu', NULL, '2024-07-10 02:34:03');
INSERT INTO `bot_audit` VALUES (207, 6, 'reportes', 'reportes', NULL, '2024-07-10 02:34:10');
INSERT INTO `bot_audit` VALUES (208, 6, 'lista_productos', 'lista_productos', NULL, '2024-07-10 02:34:56');
INSERT INTO `bot_audit` VALUES (209, 6, 'menu', 'menu', NULL, '2024-07-10 02:35:14');
INSERT INTO `bot_audit` VALUES (210, 6, 'ayuda', 'ayuda', NULL, '2024-07-10 02:35:45');
INSERT INTO `bot_audit` VALUES (211, 6, 'menu', 'menu', NULL, '2024-07-10 02:36:18');
INSERT INTO `bot_audit` VALUES (212, 6, 'ayuda', 'ayuda', NULL, '2024-07-10 02:36:20');
INSERT INTO `bot_audit` VALUES (213, 6, 'menu', 'menu', NULL, '2024-07-10 02:36:23');
INSERT INTO `bot_audit` VALUES (214, 6, 'reportes', 'reportes', NULL, '2024-07-10 02:36:24');
INSERT INTO `bot_audit` VALUES (215, 6, 'lista_productos', 'lista_productos', NULL, '2024-07-10 02:36:26');
INSERT INTO `bot_audit` VALUES (216, 6, 'lista_usuarios', 'lista_usuarios', NULL, '2024-07-10 02:36:29');
INSERT INTO `bot_audit` VALUES (217, 6, 'quisiera saber la lista de productos que tiene disponible', 'lista_productos', NULL, '2024-07-10 02:37:06');
INSERT INTO `bot_audit` VALUES (220, 6, 'menu', 'menu', NULL, '2024-07-10 02:39:53');
INSERT INTO `bot_audit` VALUES (221, 6, 'reportes', 'reportes', NULL, '2024-07-10 02:40:07');
INSERT INTO `bot_audit` VALUES (222, 6, 'lista_stock', 'lista_existencias', NULL, '2024-07-10 02:43:02');
INSERT INTO `bot_audit` VALUES (223, 6, 'lista de stockl', 'lista_productos', NULL, '2024-07-10 02:43:24');
INSERT INTO `bot_audit` VALUES (224, 6, 'menu', 'menu', NULL, '2024-07-10 03:04:28');
INSERT INTO `bot_audit` VALUES (225, 6, 'reportes', 'reportes', NULL, '2024-07-10 03:05:36');
INSERT INTO `bot_audit` VALUES (226, 6, 'lista_productos', 'lista_productos', NULL, '2024-07-10 03:06:15');
INSERT INTO `bot_audit` VALUES (227, 6, 'lista_productos', 'lista_productos', NULL, '2024-07-10 03:06:47');
INSERT INTO `bot_audit` VALUES (228, 6, 'lista_productos', 'lista_productos', NULL, '2024-07-10 03:07:07');
INSERT INTO `bot_audit` VALUES (229, 6, 'lista_productos', 'lista_productos', NULL, '2024-07-10 03:10:05');
INSERT INTO `bot_audit` VALUES (230, 6, 'hey que tal', 'saludo', NULL, '2024-07-12 12:18:35');
INSERT INTO `bot_audit` VALUES (231, 6, 'hey como estas', 'saludo', '{\"message_id\": 114, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720805021, \"text\": \"hey como estas\"}', '2024-07-12 12:23:40');
INSERT INTO `bot_audit` VALUES (232, 6, 'hey como estas', 'saludo', '{\"message_id\": 115, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720805361, \"text\": \"hey como estas\"}', '2024-07-12 12:29:21');
INSERT INTO `bot_audit` VALUES (233, 6, 'hey como estas', 'saludo', '{\"message_id\": 116, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720805455, \"text\": \"hey como estas\"}', '2024-07-12 12:30:54');
INSERT INTO `bot_audit` VALUES (234, 6, 'hola', 'saludo', '{\"message_id\": 118, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720805802, \"text\": \"hola\"}', '2024-07-12 12:36:41');
INSERT INTO `bot_audit` VALUES (235, 6, 'saludos como estas', 'saludo', '{\"message_id\": 133, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720808896, \"text\": \"saludos como estas\"}', '2024-07-12 13:28:16');
INSERT INTO `bot_audit` VALUES (236, 6, 'menu', 'saludo', '{\"message_id\": 136, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720809189, \"text\": \"/menu\", \"entities\": [{\"offset\": 0, \"length\": 5, \"type\": \"bot_command\"}]}', '2024-07-12 13:33:09');
INSERT INTO `bot_audit` VALUES (237, 6, 'reportes de productos', 'lista_productos', '{\"message_id\": 139, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720813504, \"text\": \"reportes de productos\"}', '2024-07-12 14:45:04');
INSERT INTO `bot_audit` VALUES (238, 6, 'lista de productos', 'lista_productos', '{\"message_id\": 141, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720813572, \"text\": \"lista de productos\"}', '2024-07-12 14:46:11');
INSERT INTO `bot_audit` VALUES (239, 6, 'lista de productos', 'lista_productos', '{\"message_id\": 143, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720813629, \"text\": \"lista de productos\"}', '2024-07-12 14:47:08');
INSERT INTO `bot_audit` VALUES (240, 6, 'reporte de productos', 'lista_productos', '{\"message_id\": 145, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720813722, \"text\": \"reporte de productos\"}', '2024-07-12 14:48:42');
INSERT INTO `bot_audit` VALUES (241, 6, 'listado de productos', 'lista_productos', '{\"message_id\": 147, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720814242, \"text\": \"listado de productos\"}', '2024-07-12 14:57:22');
INSERT INTO `bot_audit` VALUES (242, 6, 'listado de productos', 'lista_productos', '{\"message_id\": 149, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720814281, \"text\": \"listado de productos\"}', '2024-07-12 14:58:01');
INSERT INTO `bot_audit` VALUES (243, 6, 'listado de productos', 'lista_productos', '{\"message_id\": 152, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720814511, \"text\": \"listado de productos\"}', '2024-07-12 15:01:51');
INSERT INTO `bot_audit` VALUES (244, 6, 'listado de productos', 'lista_productos', '{\"message_id\": 155, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720814953, \"text\": \"listado de productos\"}', '2024-07-12 15:14:36');
INSERT INTO `bot_audit` VALUES (245, 6, 'listado productos', 'lista_productos', '{\"message_id\": 156, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720815231, \"text\": \"listado productos\"}', '2024-07-12 15:14:37');
INSERT INTO `bot_audit` VALUES (246, 6, 'gracias', 'saludo', '{\"message_id\": 163, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720815446, \"text\": \"gracias\"}', '2024-07-12 15:17:26');
INSERT INTO `bot_audit` VALUES (247, 6, 'menu', 'saludo', '{\"message_id\": 166, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720815513, \"text\": \"/menu\", \"entities\": [{\"offset\": 0, \"length\": 5, \"type\": \"bot_command\"}]}', '2024-07-12 15:18:33');
INSERT INTO `bot_audit` VALUES (248, 6, 'menu', 'saludo', '{\"message_id\": 169, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720815519, \"text\": \"menu\"}', '2024-07-12 15:18:39');
INSERT INTO `bot_audit` VALUES (249, 6, 'listado de usuarios', 'lista_usuarios', '{\"message_id\": 172, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720815711, \"text\": \"listado de usuarios\"}', '2024-07-12 15:21:50');
INSERT INTO `bot_audit` VALUES (250, 6, 'listado de productos', 'lista_productos', '{\"message_id\": 175, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720815722, \"text\": \"listado de productos\"}', '2024-07-12 15:22:02');
INSERT INTO `bot_audit` VALUES (251, 6, 'menu', 'saludo', '{\"message_id\": 179, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720815841, \"text\": \"/menu\", \"entities\": [{\"offset\": 0, \"length\": 5, \"type\": \"bot_command\"}]}', '2024-07-12 15:24:01');
INSERT INTO `bot_audit` VALUES (252, 6, 'ayuda', 'ayuda', '{\"message_id\": 182, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720815848, \"text\": \"/ayuda\", \"entities\": [{\"offset\": 0, \"length\": 6, \"type\": \"bot_command\"}]}', '2024-07-12 15:24:07');
INSERT INTO `bot_audit` VALUES (253, 6, 'menu', 'saludo', '{\"message_id\": 185, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720815856, \"text\": \"/menu\", \"entities\": [{\"offset\": 0, \"length\": 5, \"type\": \"bot_command\"}]}', '2024-07-12 15:24:16');
INSERT INTO `bot_audit` VALUES (254, 6, 'gracias', 'saludo', '{\"message_id\": 188, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720815861, \"text\": \"gracias\"}', '2024-07-12 15:24:21');
INSERT INTO `bot_audit` VALUES (255, 6, 'muy gentil', 'saludo', '{\"message_id\": 191, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720815869, \"text\": \"muy gentil\"}', '2024-07-12 15:24:28');
INSERT INTO `bot_audit` VALUES (256, 6, 'listado de productos', 'lista_productos', '{\"message_id\": 194, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720816160, \"text\": \"listado de productos\"}', '2024-07-12 15:29:20');
INSERT INTO `bot_audit` VALUES (257, 6, 'listado de usuarios', 'lista_usuarios', '{\"message_id\": 198, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720816281, \"text\": \"listado de usuarios\"}', '2024-07-12 15:31:21');
INSERT INTO `bot_audit` VALUES (258, 6, 'lista_usuarios', 'lista_usuarios', '{\"message_id\": 201, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720816353, \"text\": \"lista_usuarios\"}', '2024-07-12 15:32:33');
INSERT INTO `bot_audit` VALUES (259, 6, 'listado de usuarios', 'lista_usuarios', '{\"message_id\": 204, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720816423, \"text\": \"listado de usuarios\"}', '2024-07-12 15:33:43');
INSERT INTO `bot_audit` VALUES (260, 6, 'listado de usuarios', 'lista_usuarios', '{\"message_id\": 207, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720816452, \"text\": \"listado de usuarios\"}', '2024-07-12 15:34:11');
INSERT INTO `bot_audit` VALUES (261, 6, 'listado de usuarios', 'lista_usuarios', '{\"message_id\": 210, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720816520, \"text\": \"listado de usuarios\"}', '2024-07-12 15:35:20');
INSERT INTO `bot_audit` VALUES (262, 6, 'listado de usuarios', 'lista_usuarios', '{\"message_id\": 214, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720816599, \"text\": \"listado de usuarios\"}', '2024-07-12 15:36:38');
INSERT INTO `bot_audit` VALUES (263, 6, 'chao', 'saludo', '{\"message_id\": 218, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720817014, \"text\": \"chao\"}', '2024-07-12 15:43:34');
INSERT INTO `bot_audit` VALUES (264, 6, 'chao', 'saludo', '{\"message_id\": 221, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720817036, \"text\": \"chao\"}', '2024-07-12 15:43:56');
INSERT INTO `bot_audit` VALUES (265, 6, 'me despido', 'saludo', '{\"message_id\": 224, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720817043, \"text\": \"me despido\"}', '2024-07-12 15:44:03');
INSERT INTO `bot_audit` VALUES (266, 6, 'lista de usuarios', 'lista_productos', '{\"message_id\": 227, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720817054, \"text\": \"lista de usuarios\"}', '2024-07-12 15:44:14');
INSERT INTO `bot_audit` VALUES (267, 6, 'listado de usuarios', 'lista_usuarios', '{\"message_id\": 231, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720817070, \"text\": \"listado de usuarios\"}', '2024-07-12 15:44:30');
INSERT INTO `bot_audit` VALUES (268, 6, 'listado de productows', 'saludo', '{\"message_id\": 235, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720817336, \"text\": \"listado de productows\"}', '2024-07-12 15:48:55');
INSERT INTO `bot_audit` VALUES (269, 6, 'listado de producto', 'saludo', '{\"message_id\": 235, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720817336, \"edit_date\": 1720817340, \"text\": \"listado de producto\"}', '2024-07-12 15:48:59');
INSERT INTO `bot_audit` VALUES (270, 6, 'listado de productos', 'saludo', '{\"message_id\": 240, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720817346, \"text\": \"listado de productos\"}', '2024-07-12 15:49:06');
INSERT INTO `bot_audit` VALUES (271, 6, 'lista de proditos', 'saludo', '{\"message_id\": 243, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720817353, \"text\": \"lista de proditos\"}', '2024-07-12 15:49:13');
INSERT INTO `bot_audit` VALUES (272, 6, 'productos', 'saludo', '{\"message_id\": 246, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720817357, \"text\": \"productos\"}', '2024-07-12 15:49:17');
INSERT INTO `bot_audit` VALUES (273, 6, 'usuarios', 'lista_usuarios', '{\"message_id\": 249, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720817361, \"text\": \"usuarios\"}', '2024-07-12 15:49:21');
INSERT INTO `bot_audit` VALUES (274, 6, 'listado de usuarios', 'lista_usuarios', '{\"message_id\": 253, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720817395, \"text\": \"listado de usuarios\"}', '2024-07-12 15:49:55');
INSERT INTO `bot_audit` VALUES (275, 6, 'lista de productos', 'lista_productos', '{\"message_id\": 257, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720817477, \"text\": \"lista de productos\"}', '2024-07-12 15:51:17');
INSERT INTO `bot_audit` VALUES (276, 6, 'menu', 'menu', '{\"message_id\": 261, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720817597, \"text\": \"/menu\", \"entities\": [{\"offset\": 0, \"length\": 5, \"type\": \"bot_command\"}]}', '2024-07-12 15:53:16');
INSERT INTO `bot_audit` VALUES (277, 6, 'reportes', 'reportes', '{\"message_id\": 264, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720817688, \"text\": \"/reportes\", \"entities\": [{\"offset\": 0, \"length\": 9, \"type\": \"bot_command\"}]}', '2024-07-12 15:54:47');
INSERT INTO `bot_audit` VALUES (278, 6, 'lista_productos afrecho', 'lista_productos', '{\"message_id\": 267, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720817713, \"text\": \"lista_productos afrecho\"}', '2024-07-12 15:55:12');
INSERT INTO `bot_audit` VALUES (279, 6, 'me gustaria tener reportes de preductos', 'lista_productos', '{\"message_id\": 271, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720817876, \"text\": \"me gustaria tener reportes de preductos\"}', '2024-07-12 17:05:07');
INSERT INTO `bot_audit` VALUES (280, 6, 'reporte de productos', 'saludo', '{\"message_id\": 274, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720817889, \"text\": \"reporte de productos\"}', '2024-07-12 15:58:09');
INSERT INTO `bot_audit` VALUES (281, 6, 'menu', 'saludo', '{\"message_id\": 277, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720817990, \"text\": \"/menu\", \"entities\": [{\"offset\": 0, \"length\": 5, \"type\": \"bot_command\"}]}', '2024-07-12 15:59:50');
INSERT INTO `bot_audit` VALUES (282, 6, 'menu', 'saludo', '{\"message_id\": 280, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720818025, \"text\": \"/menu\", \"entities\": [{\"offset\": 0, \"length\": 5, \"type\": \"bot_command\"}]}', '2024-07-12 16:00:25');
INSERT INTO `bot_audit` VALUES (283, 6, 'dame ayuda', 'ayuda', '{\"message_id\": 302, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720818391, \"text\": \"dame ayuda\"}', '2024-07-12 16:06:31');
INSERT INTO `bot_audit` VALUES (284, 6, 'necesito una ayuda pro favor', 'ayuda', '{\"message_id\": 305, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720818399, \"text\": \"necesito una ayuda pro favor\"}', '2024-07-12 16:06:39');
INSERT INTO `bot_audit` VALUES (285, 6, 'lista de productos', 'lista_productos', '{\"message_id\": 308, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720818425, \"text\": \"lista de productos\"}', '2024-07-12 17:04:53');
INSERT INTO `bot_audit` VALUES (286, 6, 'listado de productos', 'lista_productos', '{\"message_id\": 311, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720818430, \"text\": \"listado de productos\"}', '2024-07-12 17:04:54');
INSERT INTO `bot_audit` VALUES (287, 6, 'listado de productos', 'lista_productos', '{\"message_id\": 314, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720818441, \"text\": \"listado de productos\"}', '2024-07-12 17:04:55');
INSERT INTO `bot_audit` VALUES (288, 6, 'productos', 'lista_productos', '{\"message_id\": 317, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720818445, \"text\": \"productos\"}', '2024-07-12 17:04:56');
INSERT INTO `bot_audit` VALUES (289, 6, 'hola', 'saludo', '{\"message_id\": 336, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720819476, \"text\": \"Hola\"}', '2024-07-12 16:24:36');
INSERT INTO `bot_audit` VALUES (290, 6, 'as dasd as ads', '', '{\"message_id\": 376, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720821166, \"text\": \"as dasd as ads\"}', '2024-07-12 17:12:50');
INSERT INTO `bot_audit` VALUES (291, 6, 'listado de productos', 'lista_productos', '{\"message_id\": 379, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720821378, \"text\": \"listado de productos\"}', '2024-07-12 17:04:50');
INSERT INTO `bot_audit` VALUES (292, 6, 'lista de productos', 'lista_productos', '{\"message_id\": 382, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720821383, \"text\": \"lista de productos\"}', '2024-07-12 17:04:51');
INSERT INTO `bot_audit` VALUES (293, 6, 'menu', 'saludo', '{\"message_id\": 385, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720821386, \"text\": \"menu\"}', '2024-07-12 16:56:25');
INSERT INTO `bot_audit` VALUES (294, 6, 'lista de productos', 'lista_productos', '{\"message_id\": 402, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720821738, \"text\": \"lista de productos\"}', '2024-07-12 17:04:47');
INSERT INTO `bot_audit` VALUES (295, 6, 'listado de productos', 'lista_productos', '{\"message_id\": 405, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720821745, \"text\": \"listado de productos\"}', '2024-07-12 17:04:45');
INSERT INTO `bot_audit` VALUES (296, 6, 'listado de usuarios', 'lista_usuarios', '{\"message_id\": 408, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720821751, \"text\": \"listado de usuarios\"}', '2024-07-12 17:02:31');
INSERT INTO `bot_audit` VALUES (297, 6, 'listado de productos', 'lista_productos', '{\"message_id\": 417, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720822518, \"text\": \"listado de productos\"}', '2024-07-12 17:15:18');
INSERT INTO `bot_audit` VALUES (299, 6, 'quiero este momento el listado de usuarios', 'lista_productos', '{\"message_id\": 425, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720822991, \"text\": \"quiero este momento el listado de usuarios\"}', '2024-07-12 17:23:11');
INSERT INTO `bot_audit` VALUES (300, 6, 'quiero nuevamente el listado de usuarios', 'lista_productos', '{\"message_id\": 429, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720823045, \"text\": \"quiero nuevamente el listado de usuarios\"}', '2024-07-12 17:24:04');
INSERT INTO `bot_audit` VALUES (301, 6, 'cuando digo usuario es usuarios', 'lista_usuarios', '{\"message_id\": 433, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720823072, \"text\": \"cuando digo usuario es usuarios\"}', '2024-07-12 17:24:32');
INSERT INTO `bot_audit` VALUES (302, 6, 'listado de productos', 'lista_productos', '{\"message_id\": 437, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720823098, \"text\": \"listado de productos\"}', '2024-07-12 17:24:57');
INSERT INTO `bot_audit` VALUES (303, 6, 'como nos encontramos', 'saludo', '{\"message_id\": 441, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720823880, \"text\": \"como nos encontramos\"}', '2024-07-12 17:37:59');
INSERT INTO `bot_audit` VALUES (304, 6, 'dame tus productos', 'lista_productos', '{\"message_id\": 444, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720823887, \"text\": \"dame tus productos\"}', '2024-07-12 17:38:07');
INSERT INTO `bot_audit` VALUES (306, 6, 'necesito las existencias de los productos', 'lista_productos', '{\"message_id\": 452, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720824188, \"text\": \"necesito las existencias de los productos\"}', '2024-07-12 17:43:08');
INSERT INTO `bot_audit` VALUES (307, 6, 'alguna cosa mas', 'saludo', '{\"message_id\": 456, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720824304, \"text\": \"alguna cosa mas\"}', '2024-07-12 17:45:04');
INSERT INTO `bot_audit` VALUES (308, 6, 'chao', 'saludo', '{\"message_id\": 459, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720824308, \"text\": \"chao\"}', '2024-07-12 17:45:08');
INSERT INTO `bot_audit` VALUES (309, 6, 'hola', 'saludo', '{\"message_id\": 475, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720855188, \"text\": \"hola\"}', '2024-07-13 02:19:47');
INSERT INTO `bot_audit` VALUES (310, 6, 'listado de productos', 'lista_productos', '{\"message_id\": 478, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720855196, \"text\": \"listado de productos\"}', '2024-07-13 02:19:55');
INSERT INTO `bot_audit` VALUES (311, 6, 'gracias', 'saludo', '{\"message_id\": 482, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720855204, \"text\": \"gracias\"}', '2024-07-13 02:20:03');
INSERT INTO `bot_audit` VALUES (312, 6, 'listado de productos', 'lista_productos', '{\"message_id\": 495, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720855506, \"text\": \"listado de productos\"}', '2024-07-13 02:25:05');
INSERT INTO `bot_audit` VALUES (313, 6, 'hola', 'saludo', '{\"message_id\": 499, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1720889611, \"text\": \"Hola\"}', '2024-07-13 11:55:25');
INSERT INTO `bot_audit` VALUES (314, 10, 'necesito productos', 'lista_productos', '{\"message_id\": 519, \"from\": {\"id\": 7054851197, \"is_bot\": false, \"first_name\": \"Aly\", \"last_name\": \"Borja\", \"language_code\": \"es\"}, \"chat\": {\"id\": 7054851197, \"first_name\": \"Aly\", \"last_name\": \"Borja\", \"type\": \"private\"}, \"date\": 1720924698, \"text\": \"Necesito productos\"}', '2024-07-13 21:38:18');
INSERT INTO `bot_audit` VALUES (315, 6, 'hola necesito saber de productos', 'lista_productos', '{\"message_id\": 529, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1721006407, \"text\": \"hola necesito saber de productos\"}', '2024-07-14 20:20:07');
INSERT INTO `bot_audit` VALUES (316, 6, 'necesito informe de productos', 'lista_productos', '{\"message_id\": 533, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1721006446, \"text\": \"necesito informe de productos\"}', '2024-07-14 20:20:47');
INSERT INTO `bot_audit` VALUES (317, 6, 'quiero saber la lista de usuarios', 'lista_productos', '{\"message_id\": 547, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1721006564, \"text\": \"quiero saber la lista de usuarios\"}', '2024-07-14 20:22:45');
INSERT INTO `bot_audit` VALUES (318, 6, 'reporte de clientes', 'lista_productos', '{\"message_id\": 551, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1721006732, \"text\": \"reporte de clientes\"}', '2024-07-14 20:25:33');
INSERT INTO `bot_audit` VALUES (319, 6, 'quiero la lista de clientes', 'lista_productos', '{\"message_id\": 555, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1721006785, \"text\": \"quiero la lista de clientes\"}', '2024-07-14 20:26:25');
INSERT INTO `bot_audit` VALUES (320, 6, 'una lista de clientes por favor', 'lista_productos', '{\"message_id\": 559, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1721006819, \"text\": \"una lista de clientes por favor\"}', '2024-07-14 20:26:59');
INSERT INTO `bot_audit` VALUES (321, 6, 'hola', 'saludo', '{\"message_id\": 563, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1721007007, \"text\": \"hola\"}', '2024-07-14 20:30:07');
INSERT INTO `bot_audit` VALUES (322, 6, 'listado de usuarios', 'lista_productos', '{\"message_id\": 566, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1721007054, \"text\": \"listado de usuarios\"}', '2024-07-14 20:30:55');
INSERT INTO `bot_audit` VALUES (323, 6, 'listado de clientes', 'lista_productos', '{\"message_id\": 589, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1721008808, \"text\": \"listado de clientes\"}', '2024-07-14 21:00:09');
INSERT INTO `bot_audit` VALUES (324, 6, 'lista de clientes', 'lista_productos', '{\"message_id\": 593, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1721008845, \"text\": \"lista de clientes\"}', '2024-07-14 21:00:45');
INSERT INTO `bot_audit` VALUES (325, 6, 'clientes', 'lista_clientes', '{\"message_id\": 597, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1721008850, \"text\": \"clientes\"}', '2024-07-14 21:00:51');
INSERT INTO `bot_audit` VALUES (326, 10, 'hola saludos', 'saludo', '{\"message_id\": 601, \"from\": {\"id\": 7054851197, \"is_bot\": false, \"first_name\": \"Aly\", \"last_name\": \"Borja\", \"username\": \"AlyJoBorja\", \"language_code\": \"es\"}, \"chat\": {\"id\": 7054851197, \"first_name\": \"Aly\", \"last_name\": \"Borja\", \"username\": \"AlyJoBorja\", \"type\": \"private\"}, \"date\": 1721021560, \"text\": \"Hola saludos\"}', '2024-07-15 00:32:40');
INSERT INTO `bot_audit` VALUES (327, 10, 'saludos', 'saludo', '{\"message_id\": 604, \"from\": {\"id\": 7054851197, \"is_bot\": false, \"first_name\": \"Aly\", \"last_name\": \"Borja\", \"username\": \"AlyJoBorja\", \"language_code\": \"es\"}, \"chat\": {\"id\": 7054851197, \"first_name\": \"Aly\", \"last_name\": \"Borja\", \"username\": \"AlyJoBorja\", \"type\": \"private\"}, \"date\": 1721021685, \"text\": \"Saludos\"}', '2024-07-15 00:34:46');
INSERT INTO `bot_audit` VALUES (328, 6, 'hola buenos dias', 'saludo', '{\"message_id\": 607, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1721053669, \"text\": \"Hola buenos dias\"}', '2024-07-15 09:27:49');
INSERT INTO `bot_audit` VALUES (329, 6, 'entregame el listado de productos', 'lista_productos', '{\"message_id\": 610, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1721054636, \"text\": \"entregame el listado de productos\"}', '2024-07-15 09:43:55');
INSERT INTO `bot_audit` VALUES (330, 6, 'se gentil y proporciname la lista de usuarios', 'lista_productos', '{\"message_id\": 617, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1721058862, \"text\": \"se gentil y proporci\\u00f3name la lista de usuarios\"}', '2024-07-15 10:54:22');
INSERT INTO `bot_audit` VALUES (331, 6, 'se gentil y proporciname la lista de clientes', 'lista_clientes', '{\"message_id\": 621, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1721058886, \"text\": \"se gentil y proporci\\u00f3name la lista de clientes\"}', '2024-07-15 10:54:45');
INSERT INTO `bot_audit` VALUES (332, 6, 'se gentil y proporcioname la lista de usuarios', 'lista_usuarios', '{\"message_id\": 625, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1721060366, \"text\": \"se gentil y proporcioname la lista de usuarios\"}', '2024-07-15 11:19:26');
INSERT INTO `bot_audit` VALUES (333, 6, 'se gentil y proporcioname la lista de usuarios', 'lista_usuarios', '{\"message_id\": 629, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1721062855, \"text\": \"se gentil y proporcioname la lista de usuarios\"}', '2024-07-15 12:00:54');
INSERT INTO `bot_audit` VALUES (334, 6, 'lista de movimientos', 'lista_productos', '{\"message_id\": 633, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1721103800, \"text\": \"lista de movimientos\"}', '2024-07-15 23:23:19');
INSERT INTO `bot_audit` VALUES (335, 6, 'reporte de movimientos', 'lista_productos', '{\"message_id\": 637, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1721103827, \"text\": \"reporte de movimientos\"}', '2024-07-15 23:23:46');
INSERT INTO `bot_audit` VALUES (336, 6, 'lista de movimientos', 'lista_productos', '{\"message_id\": 641, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1721103846, \"text\": \"lista de movimientos\"}', '2024-07-15 23:24:05');
INSERT INTO `bot_audit` VALUES (337, 6, 'listado de movimientos', 'lista_productos', '{\"message_id\": 658, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1721104441, \"text\": \"listado de movimientos\"}', '2024-07-15 23:34:00');
INSERT INTO `bot_audit` VALUES (338, 6, 'lista de usuarios', 'lista_productos', '{\"message_id\": 662, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1721104578, \"text\": \"lista de usuarios\"}', '2024-07-15 23:36:17');
INSERT INTO `bot_audit` VALUES (339, 6, 'listado de usuarios', 'lista_productos', '{\"message_id\": 666, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1721104624, \"text\": \"listado de usuarios\"}', '2024-07-15 23:37:03');
INSERT INTO `bot_audit` VALUES (340, 6, 'listado de productos', 'lista_productos', '{\"message_id\": 670, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1721104760, \"text\": \"listado de productos\"}', '2024-07-15 23:39:19');
INSERT INTO `bot_audit` VALUES (341, 6, 'buenos dias', 'saludo', '{\"message_id\": 674, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1721172259, \"text\": \"Buenos dias\"}', '2024-07-16 18:25:46');
INSERT INTO `bot_audit` VALUES (342, 6, 'dame el resumen de usuarios', 'lista_productos', '{\"message_id\": 677, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1721176384, \"text\": \"dame el resumen de usuarios\"}', '2024-07-16 19:33:04');
INSERT INTO `bot_audit` VALUES (343, 6, 'dame el resumen de usuarios', 'lista_usuarios', '{\"message_id\": 681, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1721176434, \"text\": \"dame el resumen de usuarios\"}', '2024-07-16 19:33:53');
INSERT INTO `bot_audit` VALUES (344, 6, 'dame alguna cosa de productos', 'lista_productos', '{\"message_id\": 688, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1721176975, \"text\": \"dame alguna cosa de productos\"}', '2024-07-16 19:42:55');
INSERT INTO `bot_audit` VALUES (345, 6, 'quiero algo de stock', 'stock', '{\"message_id\": 692, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1721177233, \"text\": \"quiero algo de stock\"}', '2024-07-16 19:47:12');
INSERT INTO `bot_audit` VALUES (346, 6, 'quiero algo de stock', 'stock', '{\"message_id\": 695, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1721177283, \"text\": \"quiero algo de stock\"}', '2024-07-16 19:48:02');
INSERT INTO `bot_audit` VALUES (347, 6, 'quiero algo de stock', 'lista_productos', '{\"message_id\": 698, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1721177299, \"text\": \"quiero algo de stock\"}', '2024-07-16 19:48:18');
INSERT INTO `bot_audit` VALUES (348, 6, 'listados de productos por cliente', 'lista_productos', '{\"message_id\": 701, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1721177517, \"text\": \"listados de productos por cliente\"}', '2024-07-16 19:51:56');
INSERT INTO `bot_audit` VALUES (349, 6, 'buenos dias', 'saludo', '{\"message_id\": 708, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1721178149, \"text\": \"buenos dias\"}', '2024-07-16 20:02:28');
INSERT INTO `bot_audit` VALUES (350, 6, 'buenas tardes', 'saludo', '{\"message_id\": 711, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1721178165, \"text\": \"buenas tardes\"}', '2024-07-16 20:02:44');
INSERT INTO `bot_audit` VALUES (351, 6, 'al susto', 'saludo', '{\"message_id\": 728, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1721178433, \"text\": \"al susto\"}', '2024-07-16 20:07:12');
INSERT INTO `bot_audit` VALUES (352, 6, 'al susto', 'despedida', '{\"message_id\": 731, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1721178471, \"text\": \"al susto\"}', '2024-07-16 20:07:51');
INSERT INTO `bot_audit` VALUES (353, 6, 'al susto', 'despedida', '{\"message_id\": 734, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1721178498, \"text\": \"al susto\"}', '2024-07-16 20:08:17');
INSERT INTO `bot_audit` VALUES (354, 6, 'necesito un listado de productos ahora', 'lista_productos', '{\"message_id\": 737, \"from\": {\"id\": 1427181793, \"is_bot\": false, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"language_code\": \"es\"}, \"chat\": {\"id\": 1427181793, \"first_name\": \"Santiago\", \"last_name\": \"Borja\", \"username\": \"SantiagoDieum\", \"type\": \"private\"}, \"date\": 1721181703, \"text\": \"necesito un listado de productos ahora\"}', '2024-07-16 21:01:43');

-- ----------------------------
-- Table structure for bot_config
-- ----------------------------
DROP TABLE IF EXISTS `bot_config`;
CREATE TABLE `bot_config`  (
  `idbotconfig` int NOT NULL AUTO_INCREMENT,
  `iduser` int NULL DEFAULT 0,
  `module` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL DEFAULT '',
  `vvalue` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`idbotconfig`) USING BTREE,
  INDEX `IDXUserID`(`iduser` ASC) USING BTREE,
  CONSTRAINT `IDXUserID` FOREIGN KEY (`iduser`) REFERENCES `user` (`iduser`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf16 COLLATE = utf16_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bot_config
-- ----------------------------
INSERT INTO `bot_config` VALUES (5, 9, 'switch_ia_bot', 'redneuronal');

-- ----------------------------
-- Table structure for bot_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `bot_dictionary`;
CREATE TABLE `bot_dictionary`  (
  `idbotdic` int NOT NULL AUTO_INCREMENT,
  `menu` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL DEFAULT '',
  `action` enum('T','Q','F','U') CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL DEFAULT 'T' COMMENT 'T-Text, Q-Query, F-Open File',
  `txt` text CHARACTER SET utf16 COLLATE utf16_general_ci NULL,
  `field_search` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`idbotdic`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf16 COLLATE = utf16_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bot_dictionary
-- ----------------------------
INSERT INTO `bot_dictionary` VALUES (1, 'menu', 'T', 'Menu de Opciones\r\n\r\n/ayuda - Despliega las opciones de ayuda.\r\n/lista_productos - Listado de productos.\r\n/lista_usuarios - Listado de usuarios.\r\n/lista_clientes - Listado de clientes.\r\n/movimientos - Movimientos de productos\r\n\r\n', '');
INSERT INTO `bot_dictionary` VALUES (2, 'reportes', 'T', 'Menu de Reportes\r\n\r\n/lista_productos - Listado de productos.\r\n/lista_usuarios - Listado de usuarios.\r\n/lista_stock - Listado de stock por producto.\r\n/movimientos - Movimientos de productos\r\n\r\n/menu - Puedes regresar al menu principal.\r\n\r\n', '');
INSERT INTO `bot_dictionary` VALUES (3, 'lista_usuarios', 'Q', 'SELECT CAST(iduser as CHAR) as id, fullname as nombre, rolename as rol FROM view_get_users WHERE status = 1 AND deleted_at IS NULL', 'fullname');
INSERT INTO `bot_dictionary` VALUES (4, 'lista_productos', 'Q', 'SELECT \r\n  presentation as presentacion,\r\n  line as linea,\r\n  category as categoria,\r\n  productcode as codigo,\r\n  name as nombre,\r\n  CAST(cost AS CHAR) AS costo, \r\n  CAST(stock as CHAR) AS stock,\r\n  CAST(price as CHAR) AS precio,\r\n  CAST(stock_min as CHAR) AS stock_min,\r\n  CAST(stock_max as CHAR) AS stock_max\r\nFROM \r\n  view_products\r\nWHERE \r\n   status = 1', 'name');
INSERT INTO `bot_dictionary` VALUES (6, 'ingreso', 'T', 'Menu de Ingreso de Datos\r\n\r\n\r\n\r\n/menu - Puedes regresar al menu principal.\r\n\r\n', '');
INSERT INTO `bot_dictionary` VALUES (7, 'egreso', 'T', 'Menu de Egreso de Datos\r\n\r\n\r\n\r\n\r\n/menu - Puedes regresar al menu principal.\r\n\r\n', '');
INSERT INTO `bot_dictionary` VALUES (8, 'stock', 'T', 'Menu de Stock\r\n\r\nEsta es una prueba de stock\r\n\r\n\r\n/menu - Puedes regresar al menu principal.\r\n\r\n', '');
INSERT INTO `bot_dictionary` VALUES (9, 'saludo', 'T', 'Hola <nombre>, <tiempo>\r\n\r\nSoy 6UG8 bot, un asistente inteligente de la empresa DIPROAVILM,\r\ncomo te puedo ayudar el día de hoy.\r\n\r\n/menu - Para desplegar el listado de opciones del menú\r\n/ayuda - Para saber mas de como puedes ingresar tus requerimientos.\r\n\r\n\r\n\r\n\r\n', '');
INSERT INTO `bot_dictionary` VALUES (10, 'ayuda', 'T', 'Opcion de Ayuda\r\n\r\nSoy /6UG8 bot, un asistente inteligente de la empresa DIPROAVILM.\r\n\r\n- Puedes ingresar las opciones del menu con un / o sin nada, Ej: /ayuda o ayuda.\r\n- Puedes separar las opciones con una coma ( , ), asi indicaras que necesitas que se filtre la información con ese texto que acabas de indicar Ej: listado_usuarios,Carmen\r\n- En cualquier momento puedes ingresar la opcion que mas prefieras.\r\n- Todos los resultados saldran en formato CSV, a fin de que puedas copiarlos y abrirlos en una hoja de calculo.\r\n\r\n/menu - Despliega las opciones del menú.\r\n\r\nUn saludo, \r\n6UG8 bot\r\n\r\n', '');
INSERT INTO `bot_dictionary` VALUES (11, '6UG8', 'T', 'Soy 6UG8 bot, un asistente inteligente de la empresa DIPROAVILM.\r\n\r\n- Mis creadores son:\r\n     Hugo Alfredo Herrera Villalva\r\n     Jaime Santiago Borja Romero\r\n     Joel Darío Brito Parra\r\n     Jorge Luis López Romo\r\n     Ricardo Vaca Miño   \r\n\r\nDel 6 semestre de la carrera de Software de la Universidad UNIANDES.\r\n\r\n- Las herramientas usadas para mi creación son:\r\n    Python\r\n    Entorno virtual python\r\n    MySql\r\n    Telegram Plugins\r\n\r\n\r\n/menu - Despliega las opciones del menú.\r\n\r\nUn saludo, \r\n6UG8 bot', '');
INSERT INTO `bot_dictionary` VALUES (12, 'lista_existencias', 'T', 'Aun en desarrollo\r\n\r\n\r\n\r\n\r\n\r\n/menu - Puedes regresar al menu principal.\r\n\r\n ', '');
INSERT INTO `bot_dictionary` VALUES (13, 'hora', 'T', 'La hora actual es <time>\r\n\r\n', '');
INSERT INTO `bot_dictionary` VALUES (14, 'fecha', 'T', 'La fecha actual es <fecha>', '');
INSERT INTO `bot_dictionary` VALUES (15, 'cambiar_formato', 'T', 'Los formatos disponibles son:\r\n\r\n/format_csv\r\n/format_tabspace\r\n\r\n\r\n/menu - Regresar.', '');
INSERT INTO `bot_dictionary` VALUES (16, 'format_csv', 'U', 'UPDATE bot_config SET vvalue = \'csv\' WHERE module = \'FORMATO SALIDA\'', '');
INSERT INTO `bot_dictionary` VALUES (17, 'format_tabspace', 'U', 'UPDATE bot_config SET vvalue = \'tab\' WHERE module = \'FORMATO SALIDA\'', '');
INSERT INTO `bot_dictionary` VALUES (18, 'congusto', 'T', 'Puedo ayudarte el algo mas?', '');
INSERT INTO `bot_dictionary` VALUES (19, 'despedida', 'T', 'Un gusto ayudarte <nombre>, <tiempo>. chao.', '');
INSERT INTO `bot_dictionary` VALUES (20, 'start', 'T', 'Hola <nombre>, <tiempo>\r\nBienvenid@\r\n\r\nSoy 6UG8 bot, un asistente de informes de la empresa DIPROAVILM,\r\ncomo te puedo ayudar el día de hoy.\r\n\r\n/menu - Para desplegar el listado de opciones del menú\r\n/ayuda - Para saber mas de como puedes ingresar tus requerimientos.\r\n\r\n\r\n\r\n\r\n', '');
INSERT INTO `bot_dictionary` VALUES (21, 'lista_clientes', 'Q', 'SELECT * FROM view_clients', '');
INSERT INTO `bot_dictionary` VALUES (22, 'movimientos', 'Q', 'SELECT * FROM view_movements', '');
INSERT INTO `bot_dictionary` VALUES (24, 'cambio_clave', 'Q', 'CALL set_password(<userid>,<password>)', '');

-- ----------------------------
-- Table structure for bot_spelling
-- ----------------------------
DROP TABLE IF EXISTS `bot_spelling`;
CREATE TABLE `bot_spelling`  (
  `idbotspelling` int NOT NULL AUTO_INCREMENT,
  `wordfind` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT '',
  `menurun` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT 'menu',
  `confirmed` int NOT NULL DEFAULT 0 COMMENT 'Si se encuentra confirmado o no para que sea parete de la capa de entrada',
  PRIMARY KEY (`idbotspelling`) USING BTREE,
  INDEX `IDXword`(`wordfind` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 157 CHARACTER SET = utf16 COLLATE = utf16_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bot_spelling
-- ----------------------------
INSERT INTO `bot_spelling` VALUES (1, 'hola', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (2, 'hi', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (3, 'hello', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (4, 'start', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (5, 'ayuda', 'ayuda', 1);
INSERT INTO `bot_spelling` VALUES (6, 'help', 'ayuda', 1);
INSERT INTO `bot_spelling` VALUES (7, 'reportes', 'reportes', 1);
INSERT INTO `bot_spelling` VALUES (8, 'reports', 'reportes', 1);
INSERT INTO `bot_spelling` VALUES (9, 'stock', 'stock', 1);
INSERT INTO `bot_spelling` VALUES (10, 'existencias', 'stock', 1);
INSERT INTO `bot_spelling` VALUES (11, 'ingreso', 'ingreso', 1);
INSERT INTO `bot_spelling` VALUES (12, 'egreso', 'egreso', 1);
INSERT INTO `bot_spelling` VALUES (13, 'lista_productos', 'lista_productos', 1);
INSERT INTO `bot_spelling` VALUES (14, 'products', 'lista_productos', 1);
INSERT INTO `bot_spelling` VALUES (16, 'lista_usuarios', 'lista_usuarios', 1);
INSERT INTO `bot_spelling` VALUES (17, 'user', 'lista_usuarios', 1);
INSERT INTO `bot_spelling` VALUES (18, 'users', 'lista_usuarios', 1);
INSERT INTO `bot_spelling` VALUES (20, 'lista_stock', 'lista_existencias', 1);
INSERT INTO `bot_spelling` VALUES (21, 'lista_existencias', 'lista_existencias', 1);
INSERT INTO `bot_spelling` VALUES (22, 'saludos', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (24, 'ayudes', 'ayuda', 1);
INSERT INTO `bot_spelling` VALUES (25, 'ayudita', 'ayuda', 1);
INSERT INTO `bot_spelling` VALUES (26, 'ayudas', 'ayuda', 1);
INSERT INTO `bot_spelling` VALUES (27, 'mano', 'ayuda', 1);
INSERT INTO `bot_spelling` VALUES (29, 'usuarios', 'lista_usuarios', 1);
INSERT INTO `bot_spelling` VALUES (30, 'productos', 'lista_productos', 1);
INSERT INTO `bot_spelling` VALUES (31, 'usuario', 'lista_usuarios', 1);
INSERT INTO `bot_spelling` VALUES (32, 'menu', 'menu', 1);
INSERT INTO `bot_spelling` VALUES (33, 'opciones', 'menu', 1);
INSERT INTO `bot_spelling` VALUES (34, 'saludo', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (36, 'time', 'hora', 1);
INSERT INTO `bot_spelling` VALUES (37, 'tiempo', 'hora', 1);
INSERT INTO `bot_spelling` VALUES (38, 'hora', 'hora', 1);
INSERT INTO `bot_spelling` VALUES (39, 'date', 'fecha', 1);
INSERT INTO `bot_spelling` VALUES (40, 'fecha', 'fecha', 1);
INSERT INTO `bot_spelling` VALUES (41, 'dias', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (42, 'tardes', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (43, 'noches', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (44, 'listas_productos', 'lista_productos', 1);
INSERT INTO `bot_spelling` VALUES (45, 'cambiar_formato', 'cambiar_formato', 1);
INSERT INTO `bot_spelling` VALUES (46, 'cambia_formato', 'cambiar_formato', 1);
INSERT INTO `bot_spelling` VALUES (47, 'cambio_formato', 'cambiar_formato', 1);
INSERT INTO `bot_spelling` VALUES (48, 'format_csv', 'format_csv', 1);
INSERT INTO `bot_spelling` VALUES (49, 'format_tabspace', 'format_tabspace', 1);
INSERT INTO `bot_spelling` VALUES (50, 'gracias', 'congusto', 1);
INSERT INTO `bot_spelling` VALUES (51, 'opcion ', 'menu', 1);
INSERT INTO `bot_spelling` VALUES (52, 'chao', 'despedida', 1);
INSERT INTO `bot_spelling` VALUES (53, 'despedida', 'despedida', 1);
INSERT INTO `bot_spelling` VALUES (54, 'despido', 'despedida', 1);
INSERT INTO `bot_spelling` VALUES (55, 'bye', 'despedida', 1);
INSERT INTO `bot_spelling` VALUES (56, 'opciones', 'menu', 1);
INSERT INTO `bot_spelling` VALUES (57, 'amable', 'congusto', 1);
INSERT INTO `bot_spelling` VALUES (58, 'agradecido', 'congusto', 1);
INSERT INTO `bot_spelling` VALUES (59, 'muy gentil', 'congusto', 1);
INSERT INTO `bot_spelling` VALUES (60, 'listas_usuario', 'lista_usuarios', 1);
INSERT INTO `bot_spelling` VALUES (61, 'quiero este momento el listado de usuarios', 'lista_usuarios', 1);
INSERT INTO `bot_spelling` VALUES (62, 'quiero nuevamente el listado de usuarios', 'lista_usuarios', 1);
INSERT INTO `bot_spelling` VALUES (63, 'cuando digo usuario es usuarios', 'lista_usuarios', 1);
INSERT INTO `bot_spelling` VALUES (64, 'listado de productos', 'lista_productos', 1);
INSERT INTO `bot_spelling` VALUES (65, 'menu', 'menu', 1);
INSERT INTO `bot_spelling` VALUES (66, 'reportes', 'reportes', 1);
INSERT INTO `bot_spelling` VALUES (67, 'ayuda', 'ayuda', 1);
INSERT INTO `bot_spelling` VALUES (68, 'lista_usuarios', 'lista_usuarios', 1);
INSERT INTO `bot_spelling` VALUES (69, 'lista_stock', 'lista_existencias', 1);
INSERT INTO `bot_spelling` VALUES (70, 'lista_productos', 'lista_productos', 1);
INSERT INTO `bot_spelling` VALUES (71, 'buenos dias', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (72, 'buenas tardes', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (73, 'hello', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (74, 'hols', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (75, 'como estas', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (76, 'hola', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (77, 'hola como estas', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (78, 'necesito ayuda', 'ayuda', 1);
INSERT INTO `bot_spelling` VALUES (79, 'help', 'ayuda', 1);
INSERT INTO `bot_spelling` VALUES (80, 'listado de productos', 'lista_productos', 1);
INSERT INTO `bot_spelling` VALUES (81, 'listado de usuarios', 'lista_usuarios', 1);
INSERT INTO `bot_spelling` VALUES (82, 'lista de productos', 'lista_productos', 1);
INSERT INTO `bot_spelling` VALUES (83, 'saludo', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (84, 'como esta hoy te envio un saludo', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (85, 'usuarios', 'lista_usuarios', 1);
INSERT INTO `bot_spelling` VALUES (86, 'saludo como estas', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (87, 'hi', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (88, 'saludos', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (89, 'saludos cordiales', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (90, 'quisiera saber la lista de productos que tiene disponible', 'lista_productos', 1);
INSERT INTO `bot_spelling` VALUES (91, 'lista de stockl', 'lista_productos', 1);
INSERT INTO `bot_spelling` VALUES (92, 'hey que tal', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (93, 'hey como estas', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (94, 'saludos como estas', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (95, 'menu', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (96, 'reportes de productos', 'lista_productos', 1);
INSERT INTO `bot_spelling` VALUES (97, 'reporte de productos', 'lista_productos', 1);
INSERT INTO `bot_spelling` VALUES (98, 'listado productos', 'lista_productos', 1);
INSERT INTO `bot_spelling` VALUES (99, 'gracias', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (100, 'muy gentil', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (101, 'chao', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (102, 'me despido', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (103, 'lista de usuarios', 'lista_productos', 1);
INSERT INTO `bot_spelling` VALUES (104, 'listado de productows', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (105, 'listado de producto', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (106, 'listado de productos', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (107, 'lista de proditos', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (108, 'productos', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (109, 'lista_productos afrecho', 'lista_productos', 1);
INSERT INTO `bot_spelling` VALUES (110, 'me gustaria tener reportes de preductos', 'lista_productos', 1);
INSERT INTO `bot_spelling` VALUES (111, 'reporte de productos', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (112, 'dame ayuda', 'ayuda', 1);
INSERT INTO `bot_spelling` VALUES (113, 'necesito una ayuda pro favor', 'ayuda', 1);
INSERT INTO `bot_spelling` VALUES (114, 'productos', 'lista_productos', 1);
INSERT INTO `bot_spelling` VALUES (115, 'quiero este momento el listado de usuarios', 'lista_productos', 1);
INSERT INTO `bot_spelling` VALUES (116, 'quiero nuevamente el listado de usuarios', 'lista_productos', 1);
INSERT INTO `bot_spelling` VALUES (117, 'cuando digo usuario es usuarios', 'lista_usuarios', 1);
INSERT INTO `bot_spelling` VALUES (118, 'como nos encontramos', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (119, 'dame tus productos', 'lista_productos', 1);
INSERT INTO `bot_spelling` VALUES (120, 'necesito las existencias de los productos', 'lista_productos', 1);
INSERT INTO `bot_spelling` VALUES (121, 'alguna cosa mas', 'despedida', 1);
INSERT INTO `bot_spelling` VALUES (122, 'necesito productos', 'lista_productos', 1);
INSERT INTO `bot_spelling` VALUES (123, 'hola necesito saber de productos', 'lista_productos', 1);
INSERT INTO `bot_spelling` VALUES (124, 'necesito informe de productos', 'lista_productos', 1);
INSERT INTO `bot_spelling` VALUES (125, 'quiero saber la lista de usuarios', 'lista_productos', 1);
INSERT INTO `bot_spelling` VALUES (126, 'reporte de clientes', 'lista_clientes', 1);
INSERT INTO `bot_spelling` VALUES (127, 'quiero la lista de clientes', 'lista_clientes', 1);
INSERT INTO `bot_spelling` VALUES (128, 'una lista de clientes por favor', 'lista_clientes', 1);
INSERT INTO `bot_spelling` VALUES (129, 'listado de usuarios', 'lista_usuarios', 1);
INSERT INTO `bot_spelling` VALUES (130, 'clientes', 'lista_clientes', 1);
INSERT INTO `bot_spelling` VALUES (131, 'lista_clientes', 'lista_clientes', 1);
INSERT INTO `bot_spelling` VALUES (132, 'listado de clientes', 'lista_clientes', 1);
INSERT INTO `bot_spelling` VALUES (133, 'lista de clientes', 'lista_clientes', 1);
INSERT INTO `bot_spelling` VALUES (134, 'hola saludos', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (135, 'hola buenos dias', 'saludo', 1);
INSERT INTO `bot_spelling` VALUES (136, 'entregame el listado de productos', 'lista_productos', 1);
INSERT INTO `bot_spelling` VALUES (137, 'se gentil y proporciname la lista de usuarios', 'lista_usuarios', 1);
INSERT INTO `bot_spelling` VALUES (138, 'se gentil y proporciname la lista de clientes', 'lista_clientes', 1);
INSERT INTO `bot_spelling` VALUES (139, 'se gentil y proporcioname la lista de usuarios', 'lista_usuarios', 1);
INSERT INTO `bot_spelling` VALUES (140, 'movimientos', 'movimientos', 1);
INSERT INTO `bot_spelling` VALUES (141, 'lista de movimientos', 'movimientos', 1);
INSERT INTO `bot_spelling` VALUES (142, 'reporte de movimientos', 'movimientos', 1);
INSERT INTO `bot_spelling` VALUES (143, 'lista de movimientos', 'movimientos', 1);
INSERT INTO `bot_spelling` VALUES (144, 'mov', 'movimientos', 1);
INSERT INTO `bot_spelling` VALUES (145, 'listado de movimientos', 'movimientos', 1);
INSERT INTO `bot_spelling` VALUES (146, 'listado de usuarios', 'lista_productos', 1);
INSERT INTO `bot_spelling` VALUES (147, 'dame el resumen de usuarios', 'lista_usuarios', 1);
INSERT INTO `bot_spelling` VALUES (148, 'dame alguna cosa de productos', 'lista_productos', 1);
INSERT INTO `bot_spelling` VALUES (149, 'quiero algo de stock', 'stock', 1);
INSERT INTO `bot_spelling` VALUES (154, 'al susto', 'despedida', 1);
INSERT INTO `bot_spelling` VALUES (155, 'necesito un listado de productos ahora', 'lista_productos', 0);

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city`  (
  `idcity` int NOT NULL AUTO_INCREMENT,
  `idprovince` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`idcity`) USING BTREE,
  INDEX `idprovince`(`idprovince` ASC) USING BTREE,
  CONSTRAINT `city_ibfk_1` FOREIGN KEY (`idprovince`) REFERENCES `province` (`idprovince`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf16 COLLATE = utf16_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES (1, 1, 'Cuenca');
INSERT INTO `city` VALUES (2, 1, 'Girón');
INSERT INTO `city` VALUES (3, 1, 'Gualaceo');
INSERT INTO `city` VALUES (4, 1, 'Nabón');
INSERT INTO `city` VALUES (5, 1, 'Paute');
INSERT INTO `city` VALUES (6, 1, 'Pucará');
INSERT INTO `city` VALUES (7, 1, 'San Fernando');
INSERT INTO `city` VALUES (8, 1, 'Santa Isabel');
INSERT INTO `city` VALUES (9, 1, 'Sevilla de Oro');
INSERT INTO `city` VALUES (10, 1, 'Sigsig');
INSERT INTO `city` VALUES (11, 1, 'Oña');
INSERT INTO `city` VALUES (12, 1, 'Chordeleg');
INSERT INTO `city` VALUES (13, 1, 'El Pan');
INSERT INTO `city` VALUES (14, 1, 'Ponce Enríquez');
INSERT INTO `city` VALUES (15, 2, 'Guaranda');
INSERT INTO `city` VALUES (16, 2, 'Chillanes');
INSERT INTO `city` VALUES (17, 2, 'Chimbo');
INSERT INTO `city` VALUES (18, 2, 'Echeandía');
INSERT INTO `city` VALUES (19, 2, 'San Miguel');
INSERT INTO `city` VALUES (20, 2, 'Caluma');
INSERT INTO `city` VALUES (21, 2, 'Las Naves');
INSERT INTO `city` VALUES (22, 3, 'Azogues');
INSERT INTO `city` VALUES (23, 3, 'Biblián');
INSERT INTO `city` VALUES (24, 3, 'Cañar');
INSERT INTO `city` VALUES (25, 3, 'Déleg');
INSERT INTO `city` VALUES (26, 3, 'La Troncal');
INSERT INTO `city` VALUES (27, 3, 'El Tambo');
INSERT INTO `city` VALUES (28, 3, 'Suscal');
INSERT INTO `city` VALUES (29, 4, 'Tulcán');
INSERT INTO `city` VALUES (30, 4, 'Bolívar');
INSERT INTO `city` VALUES (31, 4, 'Espejo');
INSERT INTO `city` VALUES (32, 4, 'Mira');
INSERT INTO `city` VALUES (33, 4, 'Montúfar');
INSERT INTO `city` VALUES (34, 4, 'San Pedro de Huaca');
INSERT INTO `city` VALUES (35, 5, 'Riobamba');
INSERT INTO `city` VALUES (36, 5, 'Alausí');
INSERT INTO `city` VALUES (37, 5, 'Colta');
INSERT INTO `city` VALUES (38, 5, 'Chambo');
INSERT INTO `city` VALUES (39, 5, 'Chunchi');
INSERT INTO `city` VALUES (40, 5, 'Guamote');
INSERT INTO `city` VALUES (41, 5, 'Guano');
INSERT INTO `city` VALUES (42, 5, 'Pallatanga');
INSERT INTO `city` VALUES (43, 5, 'Penipe');
INSERT INTO `city` VALUES (44, 6, 'Latacunga');
INSERT INTO `city` VALUES (45, 6, 'La Maná');
INSERT INTO `city` VALUES (46, 6, 'Pangua');
INSERT INTO `city` VALUES (47, 6, 'Pujilí');
INSERT INTO `city` VALUES (48, 6, 'Salcedo');
INSERT INTO `city` VALUES (49, 6, 'Saquisilí');
INSERT INTO `city` VALUES (50, 6, 'Sigchos');
INSERT INTO `city` VALUES (51, 7, 'Machala');
INSERT INTO `city` VALUES (52, 7, 'Arenillas');
INSERT INTO `city` VALUES (53, 7, 'Atahualpa');
INSERT INTO `city` VALUES (54, 7, 'Balsas');
INSERT INTO `city` VALUES (55, 7, 'Chilla');
INSERT INTO `city` VALUES (56, 7, 'El Guabo');
INSERT INTO `city` VALUES (57, 7, 'Huaquillas');
INSERT INTO `city` VALUES (58, 7, 'Marcabelí');
INSERT INTO `city` VALUES (59, 7, 'Pasaje');
INSERT INTO `city` VALUES (60, 7, 'Piñas');
INSERT INTO `city` VALUES (61, 7, 'Portovelo');
INSERT INTO `city` VALUES (62, 7, 'Santa Rosa');
INSERT INTO `city` VALUES (63, 7, 'Zaruma');
INSERT INTO `city` VALUES (64, 7, 'Las Lajas');
INSERT INTO `city` VALUES (65, 8, 'Esmeraldas');
INSERT INTO `city` VALUES (66, 8, 'Eloy Alfaro');
INSERT INTO `city` VALUES (67, 8, 'Muisne');
INSERT INTO `city` VALUES (68, 8, 'Quinindé');
INSERT INTO `city` VALUES (69, 8, 'San Lorenzo');
INSERT INTO `city` VALUES (70, 8, 'Atacames');
INSERT INTO `city` VALUES (71, 8, 'Rioverde');
INSERT INTO `city` VALUES (72, 9, 'San Cristóbal');
INSERT INTO `city` VALUES (73, 9, 'Isabela');
INSERT INTO `city` VALUES (74, 9, 'Santa Cruz');
INSERT INTO `city` VALUES (75, 10, 'Guayaquil');
INSERT INTO `city` VALUES (76, 10, 'Alfredo Baquerizo Moreno');
INSERT INTO `city` VALUES (77, 10, 'Balao');
INSERT INTO `city` VALUES (78, 10, 'Balzar');
INSERT INTO `city` VALUES (79, 10, 'Colimes');
INSERT INTO `city` VALUES (80, 10, 'Daule');
INSERT INTO `city` VALUES (81, 10, 'Durán');
INSERT INTO `city` VALUES (82, 10, 'El Empalme');
INSERT INTO `city` VALUES (83, 10, 'El Triunfo');
INSERT INTO `city` VALUES (84, 10, 'Milagro');
INSERT INTO `city` VALUES (85, 10, 'Naranjal');
INSERT INTO `city` VALUES (86, 10, 'Naranjito');
INSERT INTO `city` VALUES (87, 10, 'Palestina');
INSERT INTO `city` VALUES (88, 10, 'Pedro Carbo');
INSERT INTO `city` VALUES (89, 10, 'Samborondón');
INSERT INTO `city` VALUES (90, 10, 'Santa Lucía');
INSERT INTO `city` VALUES (91, 10, 'Salitre');
INSERT INTO `city` VALUES (92, 10, 'San Jacinto de Yaguachi');
INSERT INTO `city` VALUES (93, 10, 'Playas');
INSERT INTO `city` VALUES (94, 10, 'Simón Bolívar');
INSERT INTO `city` VALUES (95, 10, 'Coronel Marcelino Maridueña');
INSERT INTO `city` VALUES (96, 10, 'Lomas de Sargentillo');
INSERT INTO `city` VALUES (97, 10, 'Nobol');
INSERT INTO `city` VALUES (98, 10, 'General Antonio Elizalde');
INSERT INTO `city` VALUES (99, 10, 'Isidro Ayora');
INSERT INTO `city` VALUES (100, 11, 'Ibarra');
INSERT INTO `city` VALUES (101, 11, 'Antonio Ante');
INSERT INTO `city` VALUES (102, 11, 'Cotacachi');
INSERT INTO `city` VALUES (103, 11, 'Otavalo');
INSERT INTO `city` VALUES (104, 11, 'Pimampiro');
INSERT INTO `city` VALUES (105, 11, 'San Miguel de Urcuquí');
INSERT INTO `city` VALUES (106, 12, 'Loja');
INSERT INTO `city` VALUES (107, 12, 'Calvas');
INSERT INTO `city` VALUES (108, 12, 'Catamayo');
INSERT INTO `city` VALUES (109, 12, 'Celica');
INSERT INTO `city` VALUES (110, 12, 'Chaguarpamba');
INSERT INTO `city` VALUES (111, 12, 'Espíndola');
INSERT INTO `city` VALUES (112, 12, 'Gonzanamá');
INSERT INTO `city` VALUES (113, 12, 'Macará');
INSERT INTO `city` VALUES (114, 12, 'Paltas');
INSERT INTO `city` VALUES (115, 12, 'Puyango');
INSERT INTO `city` VALUES (116, 12, 'Saraguro');
INSERT INTO `city` VALUES (117, 12, 'Sozoranga');
INSERT INTO `city` VALUES (118, 12, 'Zapotillo');
INSERT INTO `city` VALUES (119, 13, 'Babahoyo');
INSERT INTO `city` VALUES (120, 13, 'Baba');
INSERT INTO `city` VALUES (121, 13, 'Buena Fe');
INSERT INTO `city` VALUES (122, 13, 'Mocache');
INSERT INTO `city` VALUES (123, 13, 'Montalvo');
INSERT INTO `city` VALUES (124, 13, 'Palenque');
INSERT INTO `city` VALUES (125, 13, 'Quevedo');
INSERT INTO `city` VALUES (126, 13, 'Quinsaloma');
INSERT INTO `city` VALUES (127, 13, 'Urdaneta');
INSERT INTO `city` VALUES (128, 13, 'Valencia');
INSERT INTO `city` VALUES (129, 13, 'Ventanas');
INSERT INTO `city` VALUES (130, 13, 'Vinces');
INSERT INTO `city` VALUES (131, 14, 'Portoviejo');
INSERT INTO `city` VALUES (132, 14, 'Bolívar');
INSERT INTO `city` VALUES (133, 14, 'Chone');
INSERT INTO `city` VALUES (134, 14, 'El Carmen');
INSERT INTO `city` VALUES (135, 14, 'Flavio Alfaro');
INSERT INTO `city` VALUES (136, 14, 'Jama');
INSERT INTO `city` VALUES (137, 14, 'Jaramijó');
INSERT INTO `city` VALUES (138, 14, 'Jipijapa');
INSERT INTO `city` VALUES (139, 14, 'Junín');
INSERT INTO `city` VALUES (140, 14, 'Manta');
INSERT INTO `city` VALUES (141, 14, 'Montecristi');
INSERT INTO `city` VALUES (142, 14, 'Olmedo');
INSERT INTO `city` VALUES (143, 14, 'Paján');
INSERT INTO `city` VALUES (144, 14, 'Pedernales');
INSERT INTO `city` VALUES (145, 14, 'Pichincha');
INSERT INTO `city` VALUES (146, 14, 'Puerto López');
INSERT INTO `city` VALUES (147, 14, 'Rocafuerte');
INSERT INTO `city` VALUES (148, 14, 'San Vicente');
INSERT INTO `city` VALUES (149, 14, 'Santa Ana');
INSERT INTO `city` VALUES (150, 14, 'Sucre');
INSERT INTO `city` VALUES (151, 14, 'Tosagua');
INSERT INTO `city` VALUES (152, 15, 'Macas');
INSERT INTO `city` VALUES (153, 15, 'Gualaquiza');
INSERT INTO `city` VALUES (154, 15, 'Limón Indanza');
INSERT INTO `city` VALUES (155, 15, 'Logroño');
INSERT INTO `city` VALUES (156, 15, 'Morona');
INSERT INTO `city` VALUES (157, 15, 'Pablo Sexto');
INSERT INTO `city` VALUES (158, 15, 'Palora');
INSERT INTO `city` VALUES (159, 15, 'San Juan Bosco');
INSERT INTO `city` VALUES (160, 15, 'Santiago');
INSERT INTO `city` VALUES (161, 15, 'Sucúa');
INSERT INTO `city` VALUES (162, 15, 'Taisha');
INSERT INTO `city` VALUES (163, 15, 'Tiwintza');
INSERT INTO `city` VALUES (164, 16, 'Tena');
INSERT INTO `city` VALUES (165, 16, 'Archidona');
INSERT INTO `city` VALUES (166, 16, 'Carlos Julio Arosemena Tola');
INSERT INTO `city` VALUES (167, 16, 'El Chaco');
INSERT INTO `city` VALUES (168, 16, 'Quijos');
INSERT INTO `city` VALUES (169, 17, 'Francisco de Orellana');
INSERT INTO `city` VALUES (170, 17, 'Aguarico');
INSERT INTO `city` VALUES (171, 17, 'La Joya de los Sachas');
INSERT INTO `city` VALUES (172, 17, 'Loreto');
INSERT INTO `city` VALUES (173, 18, 'Puyo');
INSERT INTO `city` VALUES (174, 18, 'Arajuno');
INSERT INTO `city` VALUES (175, 18, 'Mera');
INSERT INTO `city` VALUES (176, 18, 'Santa Clara');
INSERT INTO `city` VALUES (177, 19, 'Quito');
INSERT INTO `city` VALUES (178, 19, 'Cayambe');
INSERT INTO `city` VALUES (179, 19, 'Mejía');
INSERT INTO `city` VALUES (180, 19, 'Pedro Moncayo');
INSERT INTO `city` VALUES (181, 19, 'Rumiñahui');
INSERT INTO `city` VALUES (182, 19, 'San Miguel de los Bancos');
INSERT INTO `city` VALUES (183, 19, 'Pedro Vicente Maldonado');
INSERT INTO `city` VALUES (184, 19, 'Puerto Quito');
INSERT INTO `city` VALUES (185, 20, 'Santa Elena');
INSERT INTO `city` VALUES (186, 20, 'La Libertad');
INSERT INTO `city` VALUES (187, 20, 'Salinas');
INSERT INTO `city` VALUES (188, 21, 'Santo Domingo');
INSERT INTO `city` VALUES (189, 21, 'La Concordia');
INSERT INTO `city` VALUES (190, 22, 'Nueva Loja');
INSERT INTO `city` VALUES (191, 22, 'Cascales');
INSERT INTO `city` VALUES (192, 22, 'Cuyabeno');
INSERT INTO `city` VALUES (193, 22, 'Gonzalo Pizarro');
INSERT INTO `city` VALUES (194, 22, 'Lago Agrio');
INSERT INTO `city` VALUES (195, 22, 'Putumayo');
INSERT INTO `city` VALUES (196, 22, 'Shushufindi');
INSERT INTO `city` VALUES (197, 22, 'Sucumbíos');
INSERT INTO `city` VALUES (198, 23, 'Ambato');
INSERT INTO `city` VALUES (199, 23, 'Baños de Agua Santa');

-- ----------------------------
-- Table structure for country
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country`  (
  `idcountry` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL,
  `code` char(2) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idcountry`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 195 CHARACTER SET = utf16 COLLATE = utf16_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO `country` VALUES (1, 'Afghanistan', 'AF');
INSERT INTO `country` VALUES (2, 'Albania', 'AL');
INSERT INTO `country` VALUES (3, 'Algeria', 'DZ');
INSERT INTO `country` VALUES (4, 'Andorra', 'AD');
INSERT INTO `country` VALUES (5, 'Angola', 'AO');
INSERT INTO `country` VALUES (6, 'Antigua and Barbuda', 'AG');
INSERT INTO `country` VALUES (7, 'Argentina', 'AR');
INSERT INTO `country` VALUES (8, 'Armenia', 'AM');
INSERT INTO `country` VALUES (9, 'Australia', 'AU');
INSERT INTO `country` VALUES (10, 'Austria', 'AT');
INSERT INTO `country` VALUES (11, 'Azerbaijan', 'AZ');
INSERT INTO `country` VALUES (12, 'Bahamas', 'BS');
INSERT INTO `country` VALUES (13, 'Bahrain', 'BH');
INSERT INTO `country` VALUES (14, 'Bangladesh', 'BD');
INSERT INTO `country` VALUES (15, 'Barbados', 'BB');
INSERT INTO `country` VALUES (16, 'Belarus', 'BY');
INSERT INTO `country` VALUES (17, 'Belgium', 'BE');
INSERT INTO `country` VALUES (18, 'Belize', 'BZ');
INSERT INTO `country` VALUES (19, 'Benin', 'BJ');
INSERT INTO `country` VALUES (20, 'Bhutan', 'BT');
INSERT INTO `country` VALUES (21, 'Bolivia', 'BO');
INSERT INTO `country` VALUES (22, 'Bosnia and Herzegovina', 'BA');
INSERT INTO `country` VALUES (23, 'Botswana', 'BW');
INSERT INTO `country` VALUES (24, 'Brazil', 'BR');
INSERT INTO `country` VALUES (25, 'Brunei', 'BN');
INSERT INTO `country` VALUES (26, 'Bulgaria', 'BG');
INSERT INTO `country` VALUES (27, 'Burkina Faso', 'BF');
INSERT INTO `country` VALUES (28, 'Burundi', 'BI');
INSERT INTO `country` VALUES (29, 'Cabo Verde', 'CV');
INSERT INTO `country` VALUES (30, 'Cambodia', 'KH');
INSERT INTO `country` VALUES (31, 'Cameroon', 'CM');
INSERT INTO `country` VALUES (32, 'Canada', 'CA');
INSERT INTO `country` VALUES (33, 'Central African Republic', 'CF');
INSERT INTO `country` VALUES (34, 'Chad', 'TD');
INSERT INTO `country` VALUES (35, 'Chile', 'CL');
INSERT INTO `country` VALUES (36, 'China', 'CN');
INSERT INTO `country` VALUES (37, 'Colombia', 'CO');
INSERT INTO `country` VALUES (38, 'Comoros', 'KM');
INSERT INTO `country` VALUES (39, 'Congo, Democratic Republic of the', 'CD');
INSERT INTO `country` VALUES (40, 'Congo, Republic of the', 'CG');
INSERT INTO `country` VALUES (41, 'Costa Rica', 'CR');
INSERT INTO `country` VALUES (42, 'Croatia', 'HR');
INSERT INTO `country` VALUES (43, 'Cuba', 'CU');
INSERT INTO `country` VALUES (44, 'Cyprus', 'CY');
INSERT INTO `country` VALUES (45, 'Czech Republic', 'CZ');
INSERT INTO `country` VALUES (46, 'Denmark', 'DK');
INSERT INTO `country` VALUES (47, 'Djibouti', 'DJ');
INSERT INTO `country` VALUES (48, 'Dominica', 'DM');
INSERT INTO `country` VALUES (49, 'Dominican Republic', 'DO');
INSERT INTO `country` VALUES (50, 'Ecuador', 'EC');
INSERT INTO `country` VALUES (51, 'Egypt', 'EG');
INSERT INTO `country` VALUES (52, 'El Salvador', 'SV');
INSERT INTO `country` VALUES (53, 'Equatorial Guinea', 'GQ');
INSERT INTO `country` VALUES (54, 'Eritrea', 'ER');
INSERT INTO `country` VALUES (55, 'Estonia', 'EE');
INSERT INTO `country` VALUES (56, 'Eswatini', 'SZ');
INSERT INTO `country` VALUES (57, 'Ethiopia', 'ET');
INSERT INTO `country` VALUES (58, 'Fiji', 'FJ');
INSERT INTO `country` VALUES (59, 'Finland', 'FI');
INSERT INTO `country` VALUES (60, 'France', 'FR');
INSERT INTO `country` VALUES (61, 'Gabon', 'GA');
INSERT INTO `country` VALUES (62, 'Gambia', 'GM');
INSERT INTO `country` VALUES (63, 'Georgia', 'GE');
INSERT INTO `country` VALUES (64, 'Germany', 'DE');
INSERT INTO `country` VALUES (65, 'Ghana', 'GH');
INSERT INTO `country` VALUES (66, 'Greece', 'GR');
INSERT INTO `country` VALUES (67, 'Grenada', 'GD');
INSERT INTO `country` VALUES (68, 'Guatemala', 'GT');
INSERT INTO `country` VALUES (69, 'Guinea', 'GN');
INSERT INTO `country` VALUES (70, 'Guinea-Bissau', 'GW');
INSERT INTO `country` VALUES (71, 'Guyana', 'GY');
INSERT INTO `country` VALUES (72, 'Haiti', 'HT');
INSERT INTO `country` VALUES (73, 'Honduras', 'HN');
INSERT INTO `country` VALUES (74, 'Hungary', 'HU');
INSERT INTO `country` VALUES (75, 'Iceland', 'IS');
INSERT INTO `country` VALUES (76, 'India', 'IN');
INSERT INTO `country` VALUES (77, 'Indonesia', 'ID');
INSERT INTO `country` VALUES (78, 'Iran', 'IR');
INSERT INTO `country` VALUES (79, 'Iraq', 'IQ');
INSERT INTO `country` VALUES (80, 'Ireland', 'IE');
INSERT INTO `country` VALUES (81, 'Israel', 'IL');
INSERT INTO `country` VALUES (82, 'Italy', 'IT');
INSERT INTO `country` VALUES (83, 'Jamaica', 'JM');
INSERT INTO `country` VALUES (84, 'Japan', 'JP');
INSERT INTO `country` VALUES (85, 'Jordan', 'JO');
INSERT INTO `country` VALUES (86, 'Kazakhstan', 'KZ');
INSERT INTO `country` VALUES (87, 'Kenya', 'KE');
INSERT INTO `country` VALUES (88, 'Kiribati', 'KI');
INSERT INTO `country` VALUES (89, 'Korea, North', 'KP');
INSERT INTO `country` VALUES (90, 'Korea, South', 'KR');
INSERT INTO `country` VALUES (91, 'Kuwait', 'KW');
INSERT INTO `country` VALUES (92, 'Kyrgyzstan', 'KG');
INSERT INTO `country` VALUES (93, 'Laos', 'LA');
INSERT INTO `country` VALUES (94, 'Latvia', 'LV');
INSERT INTO `country` VALUES (95, 'Lebanon', 'LB');
INSERT INTO `country` VALUES (96, 'Lesotho', 'LS');
INSERT INTO `country` VALUES (97, 'Liberia', 'LR');
INSERT INTO `country` VALUES (98, 'Libya', 'LY');
INSERT INTO `country` VALUES (99, 'Liechtenstein', 'LI');
INSERT INTO `country` VALUES (100, 'Lithuania', 'LT');
INSERT INTO `country` VALUES (101, 'Luxembourg', 'LU');
INSERT INTO `country` VALUES (102, 'Madagascar', 'MG');
INSERT INTO `country` VALUES (103, 'Malawi', 'MW');
INSERT INTO `country` VALUES (104, 'Malaysia', 'MY');
INSERT INTO `country` VALUES (105, 'Maldives', 'MV');
INSERT INTO `country` VALUES (106, 'Mali', 'ML');
INSERT INTO `country` VALUES (107, 'Malta', 'MT');
INSERT INTO `country` VALUES (108, 'Marshall Islands', 'MH');
INSERT INTO `country` VALUES (109, 'Mauritania', 'MR');
INSERT INTO `country` VALUES (110, 'Mauritius', 'MU');
INSERT INTO `country` VALUES (111, 'Mexico', 'MX');
INSERT INTO `country` VALUES (112, 'Micronesia', 'FM');
INSERT INTO `country` VALUES (113, 'Moldova', 'MD');
INSERT INTO `country` VALUES (114, 'Monaco', 'MC');
INSERT INTO `country` VALUES (115, 'Mongolia', 'MN');
INSERT INTO `country` VALUES (116, 'Montenegro', 'ME');
INSERT INTO `country` VALUES (117, 'Morocco', 'MA');
INSERT INTO `country` VALUES (118, 'Mozambique', 'MZ');
INSERT INTO `country` VALUES (119, 'Myanmar (Burma)', 'MM');
INSERT INTO `country` VALUES (120, 'Namibia', 'NA');
INSERT INTO `country` VALUES (121, 'Nauru', 'NR');
INSERT INTO `country` VALUES (122, 'Nepal', 'NP');
INSERT INTO `country` VALUES (123, 'Netherlands', 'NL');
INSERT INTO `country` VALUES (124, 'New Zealand', 'NZ');
INSERT INTO `country` VALUES (125, 'Nicaragua', 'NI');
INSERT INTO `country` VALUES (126, 'Niger', 'NE');
INSERT INTO `country` VALUES (127, 'Nigeria', 'NG');
INSERT INTO `country` VALUES (128, 'North Macedonia', 'MK');
INSERT INTO `country` VALUES (129, 'Norway', 'NO');
INSERT INTO `country` VALUES (130, 'Oman', 'OM');
INSERT INTO `country` VALUES (131, 'Pakistan', 'PK');
INSERT INTO `country` VALUES (132, 'Palau', 'PW');
INSERT INTO `country` VALUES (133, 'Palestine', 'PS');
INSERT INTO `country` VALUES (134, 'Panama', 'PA');
INSERT INTO `country` VALUES (135, 'Papua New Guinea', 'PG');
INSERT INTO `country` VALUES (136, 'Paraguay', 'PY');
INSERT INTO `country` VALUES (137, 'Peru', 'PE');
INSERT INTO `country` VALUES (138, 'Philippines', 'PH');
INSERT INTO `country` VALUES (139, 'Poland', 'PL');
INSERT INTO `country` VALUES (140, 'Portugal', 'PT');
INSERT INTO `country` VALUES (141, 'Qatar', 'QA');
INSERT INTO `country` VALUES (142, 'Romania', 'RO');
INSERT INTO `country` VALUES (143, 'Russia', 'RU');
INSERT INTO `country` VALUES (144, 'Rwanda', 'RW');
INSERT INTO `country` VALUES (145, 'Saint Kitts and Nevis', 'KN');
INSERT INTO `country` VALUES (146, 'Saint Lucia', 'LC');
INSERT INTO `country` VALUES (147, 'Saint Vincent and the Grenadines', 'VC');
INSERT INTO `country` VALUES (148, 'Samoa', 'WS');
INSERT INTO `country` VALUES (149, 'San Marino', 'SM');
INSERT INTO `country` VALUES (150, 'Sao Tome and Principe', 'ST');
INSERT INTO `country` VALUES (151, 'Saudi Arabia', 'SA');
INSERT INTO `country` VALUES (152, 'Senegal', 'SN');
INSERT INTO `country` VALUES (153, 'Serbia', 'RS');
INSERT INTO `country` VALUES (154, 'Seychelles', 'SC');
INSERT INTO `country` VALUES (155, 'Sierra Leone', 'SL');
INSERT INTO `country` VALUES (156, 'Singapore', 'SG');
INSERT INTO `country` VALUES (157, 'Slovakia', 'SK');
INSERT INTO `country` VALUES (158, 'Slovenia', 'SI');
INSERT INTO `country` VALUES (159, 'Solomon Islands', 'SB');
INSERT INTO `country` VALUES (160, 'Somalia', 'SO');
INSERT INTO `country` VALUES (161, 'South Africa', 'ZA');
INSERT INTO `country` VALUES (162, 'Spain', 'ES');
INSERT INTO `country` VALUES (163, 'Sri Lanka', 'LK');
INSERT INTO `country` VALUES (164, 'Sudan', 'SD');
INSERT INTO `country` VALUES (165, 'Suriname', 'SR');
INSERT INTO `country` VALUES (166, 'Sweden', 'SE');
INSERT INTO `country` VALUES (167, 'Switzerland', 'CH');
INSERT INTO `country` VALUES (168, 'Syria', 'SY');
INSERT INTO `country` VALUES (169, 'Taiwan', 'TW');
INSERT INTO `country` VALUES (170, 'Tajikistan', 'TJ');
INSERT INTO `country` VALUES (171, 'Tanzania', 'TZ');
INSERT INTO `country` VALUES (172, 'Thailand', 'TH');
INSERT INTO `country` VALUES (173, 'Timor-Leste', 'TL');
INSERT INTO `country` VALUES (174, 'Togo', 'TG');
INSERT INTO `country` VALUES (175, 'Tonga', 'TO');
INSERT INTO `country` VALUES (176, 'Trinidad and Tobago', 'TT');
INSERT INTO `country` VALUES (177, 'Tunisia', 'TN');
INSERT INTO `country` VALUES (178, 'Turkey', 'TR');
INSERT INTO `country` VALUES (179, 'Turkmenistan', 'TM');
INSERT INTO `country` VALUES (180, 'Tuvalu', 'TV');
INSERT INTO `country` VALUES (181, 'Uganda', 'UG');
INSERT INTO `country` VALUES (182, 'Ukraine', 'UA');
INSERT INTO `country` VALUES (183, 'United Arab Emirates', 'AE');
INSERT INTO `country` VALUES (184, 'United Kingdom', 'GB');
INSERT INTO `country` VALUES (185, 'United States', 'US');
INSERT INTO `country` VALUES (186, 'Uruguay', 'UY');
INSERT INTO `country` VALUES (187, 'Uzbekistan', 'UZ');
INSERT INTO `country` VALUES (188, 'Vanuatu', 'VU');
INSERT INTO `country` VALUES (189, 'Vatican City', 'VA');
INSERT INTO `country` VALUES (190, 'Venezuela', 'VE');
INSERT INTO `country` VALUES (191, 'Vietnam', 'VN');
INSERT INTO `country` VALUES (192, 'Yemen', 'YE');
INSERT INTO `country` VALUES (193, 'Zambia', 'ZM');
INSERT INTO `country` VALUES (194, 'Zimbabwe', 'ZW');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `idmenu` int NOT NULL AUTO_INCREMENT,
  `order` varchar(50) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL DEFAULT '' COMMENT '01 o 0101',
  `name` varchar(100) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL DEFAULT '',
  `icon` varchar(50) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL DEFAULT '',
  `route` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT '' COMMENT '/',
  `submenu` int NULL DEFAULT 0 COMMENT '1-Si es submenu 0-No es submenu',
  `status` int NULL DEFAULT 1 COMMENT '1-Active   0-Inactive',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`idmenu`) USING BTREE,
  INDEX `order`(`order` ASC) USING BTREE,
  INDEX `route`(`route` ASC) USING BTREE,
  INDEX `submenu`(`submenu` ASC) USING BTREE,
  INDEX `status`(`status` ASC) USING BTREE,
  INDEX `deleted_at`(`deleted_at` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf16 COLLATE = utf16_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, '02', 'Administación', 'fa fa-cog', NULL, 1, 1, '2024-06-21 15:00:39', '2024-08-09 10:27:27', NULL);
INSERT INTO `menu` VALUES (2, '02.01', 'Usuarios', 'fas fa-user', 'users', 0, 1, '2024-06-21 15:00:50', '2024-08-09 10:27:32', NULL);
INSERT INTO `menu` VALUES (3, '02.03', 'Roles', 'fas fa-shield-alt', 'roles', 0, 1, '2024-06-21 15:01:00', '2024-08-13 12:31:28', NULL);
INSERT INTO `menu` VALUES (4, '02.02', 'Menú de Opciones', 'fas fa-prescription-bottle', 'menu', 0, 1, '2024-06-21 15:01:10', '2024-08-13 12:28:31', NULL);
INSERT INTO `menu` VALUES (5, '03.02', 'Beneficiarios', 'fas fa-briefcase', 'beneficiarios', 0, 1, '2024-06-21 15:01:45', '2024-08-13 12:29:08', NULL);
INSERT INTO `menu` VALUES (6, '03', 'Almacén', 'fas fa-box-open', NULL, 1, 1, '2024-06-21 15:09:14', '2024-08-09 10:27:55', NULL);
INSERT INTO `menu` VALUES (7, '03.03', 'Registro de movimiento', 'fa fa-cog', 'movimientos', 0, 1, '2024-06-21 15:09:17', '2024-08-13 12:29:10', NULL);
INSERT INTO `menu` VALUES (8, '03.01', 'Productos', 'far fa-file-archive', 'productos', 0, 1, '2024-06-21 15:09:43', '2024-08-13 12:27:24', NULL);
INSERT INTO `menu` VALUES (9, '01', 'Dashboards', 'fas fa-chart-bar', NULL, 1, 1, '2024-06-21 15:09:59', '2024-08-09 10:27:23', NULL);
INSERT INTO `menu` VALUES (10, '04', 'Informes', 'far fa-file-archive', NULL, 1, 1, '2024-06-21 15:49:08', '2024-08-09 10:28:06', NULL);
INSERT INTO `menu` VALUES (11, '04.01', 'Listado de Usuarios', 'far fa-file-archive', 'lst_usuarios', 0, 1, '2024-06-21 15:49:22', '2024-08-09 10:28:09', NULL);
INSERT INTO `menu` VALUES (12, '04.02', 'LIstado de Productos', 'far fa-file-archive', 'lst_productos', 0, 1, '2024-06-21 15:49:27', '2024-08-09 10:28:10', NULL);
INSERT INTO `menu` VALUES (13, '04.03', 'Listado de Beneficiarios', 'far fa-file-archive', 'lst_beneficiarios', 0, 1, '2024-06-21 15:49:35', '2024-08-09 10:28:12', NULL);
INSERT INTO `menu` VALUES (14, '04.04', 'Kardex por producto', 'far fa-file-archive', 'lst_kardex', 0, 1, '2024-06-21 15:49:40', '2024-08-09 10:28:15', NULL);
INSERT INTO `menu` VALUES (15, '01.01', 'Ventas', 'fas fa-chart-bar', 'dashventas', 0, 1, '2024-07-25 21:23:01', '2024-08-09 10:27:25', NULL);
INSERT INTO `menu` VALUES (16, '05', 'Integración Bot', 'fas fa-robot', '', 1, 1, '2024-07-25 21:49:52', '2024-08-09 10:28:22', NULL);
INSERT INTO `menu` VALUES (17, '05.01', 'Configuración', 'fa fa-cog', 'bot_config', 0, 1, '2024-07-25 21:50:16', '2024-08-09 10:28:25', NULL);
INSERT INTO `menu` VALUES (18, '05.02', 'Capas Entrada y Salida', 'fas fa-layer-group', 'bot_capas', 0, 1, '2024-07-25 21:50:58', '2024-08-09 10:28:28', NULL);
INSERT INTO `menu` VALUES (19, '05.03', 'Diccionario de Acciones', 'fas fa-shoe-prints', 'bot_dict', 0, 1, '2024-07-25 21:51:08', '2024-08-09 10:28:31', NULL);
INSERT INTO `menu` VALUES (20, '05.05', 'Auditoría', 'fas fa-user-secret', 'bot_audit', 0, 1, '2024-07-25 21:51:17', '2024-08-09 10:28:39', NULL);
INSERT INTO `menu` VALUES (21, '02.04', 'Auditoría', 'fas fa-user-secret', 'audit', 0, 1, '2024-07-25 21:51:27', '2024-08-13 12:31:39', NULL);
INSERT INTO `menu` VALUES (22, '05.04', 'Usuarios Registrados', 'fab fa-telegram-plane', 'bot_users', 0, 1, '2024-07-25 21:51:48', '2024-08-09 10:28:36', NULL);

-- ----------------------------
-- Table structure for movementtype
-- ----------------------------
DROP TABLE IF EXISTS `movementtype`;
CREATE TABLE `movementtype`  (
  `idmovementtype` int NOT NULL AUTO_INCREMENT,
  `acronym` varchar(5) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT '',
  `name` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT '',
  `sequential` bigint NULL DEFAULT 0,
  `entry` enum('I','E','A') CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT 'E' COMMENT 'I-Ingreso E-Egreso  A-Ambos',
  PRIMARY KEY (`idmovementtype`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf16 COLLATE = utf16_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of movementtype
-- ----------------------------
INSERT INTO `movementtype` VALUES (1, 'FV', 'Salida de bodega a cliente', 30, 'E');
INSERT INTO `movementtype` VALUES (2, 'FC', 'Ingreso de bodega por proveedor', 0, 'I');
INSERT INTO `movementtype` VALUES (3, 'AS', 'Saldo Incial', 0, 'I');
INSERT INTO `movementtype` VALUES (4, 'AI', 'Ajuste de Inventario ', 4, 'A');
INSERT INTO `movementtype` VALUES (5, 'DE', 'Descarga de Inventario', 0, 'E');
INSERT INTO `movementtype` VALUES (6, 'BA', 'Baja de Inventario', 0, 'E');
INSERT INTO `movementtype` VALUES (7, 'TF', 'Toma Fisica', 0, 'I');

-- ----------------------------
-- Table structure for presentation
-- ----------------------------
DROP TABLE IF EXISTS `presentation`;
CREATE TABLE `presentation`  (
  `idpresentation` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT '',
  `acronym` varchar(10) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT '',
  PRIMARY KEY (`idpresentation`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf16 COLLATE = utf16_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of presentation
-- ----------------------------
INSERT INTO `presentation` VALUES (1, 'UNIDAD', 'U');
INSERT INTO `presentation` VALUES (2, 'GALON', 'GL');
INSERT INTO `presentation` VALUES (3, 'LITRO', 'LT');
INSERT INTO `presentation` VALUES (4, 'CANECA', 'CN');
INSERT INTO `presentation` VALUES (5, 'METRO', 'MTR');
INSERT INTO `presentation` VALUES (6, 'LIBRA', 'LBR');
INSERT INTO `presentation` VALUES (7, 'KILOGRAMO', 'KG');
INSERT INTO `presentation` VALUES (8, 'ROLLO', 'ROL');
INSERT INTO `presentation` VALUES (9, 'METRO CUADRADO', 'M2');
INSERT INTO `presentation` VALUES (10, 'METRO CUBICO', 'M3');
INSERT INTO `presentation` VALUES (11, 'QUINTAL', 'qq');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `idproduct` int NOT NULL AUTO_INCREMENT,
  `idpresentation` int NOT NULL,
  `idproductline` int NOT NULL,
  `idproductcategory` int NOT NULL,
  `productcode` varchar(50) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL DEFAULT '',
  `barcode` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL DEFAULT '',
  `name` varchar(100) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL DEFAULT '',
  `description` text CHARACTER SET utf16 COLLATE utf16_general_ci NULL,
  `cost` decimal(20, 4) NOT NULL DEFAULT 0.0000,
  `stock` decimal(20, 4) NOT NULL DEFAULT 0.0000,
  `price` decimal(20, 2) NOT NULL DEFAULT 0.00,
  `stock_min` decimal(20, 4) NOT NULL DEFAULT 0.0000,
  `stock_max` decimal(20, 4) NOT NULL DEFAULT 0.0000,
  `image` varchar(100) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT '',
  `status` int NULL DEFAULT 1 COMMENT '1-Active    0-Inactive',
  `accountcost` varchar(50) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT '',
  `accountsales` varchar(50) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT '',
  `accountinv` varchar(50) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `udated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`idproduct`) USING BTREE,
  INDEX `IDXPre`(`idpresentation` ASC) USING BTREE,
  INDEX `IDXLine`(`idproductline` ASC) USING BTREE,
  INDEX `IDXCategory`(`idproductcategory` ASC) USING BTREE,
  CONSTRAINT `IDXCategory` FOREIGN KEY (`idproductcategory`) REFERENCES `productcategory` (`idproductcategory`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `IDXLine` FOREIGN KEY (`idproductline`) REFERENCES `productline` (`idproductline`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `IDXPre` FOREIGN KEY (`idpresentation`) REFERENCES `presentation` (`idpresentation`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf16 COLLATE = utf16_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, 7, 1, 1, 'P000000012', '1281320086946', 'AFRECHO DE TRIGO', 'AFRECHO DE TRIGO', 5.0000, 73.0000, 7.50, 1.0000, 45.1000, '', 1, '5.1.01.01.02', '4.1.01.02', '1.1.03.01.02', '2024-07-11 00:46:36', '2024-07-17 10:05:02', NULL);
INSERT INTO `product` VALUES (2, 1, 2, 2, 'BC001', '2201909185029', 'BAL. CUNIFORTE C1 CRECIMIENTO 40KG', 'BAL. CUNIFORTE C1 CRECIMIENTO 40KG', 2.0000, 39.0000, 3.00, 1.0000, 2.2000, '', 1, '5.1.01.01.02', '4.1.01.02', '1.1.03.01.02', '2024-07-11 00:46:36', '2024-07-17 10:05:02', NULL);
INSERT INTO `product` VALUES (3, 1, 2, 2, 'BC002', '2201909186637', 'BAL. CUNIFORTE C2 ENGORDE 40KG', 'BAL. CUNIFORTE C2 ENGORDE 40KG', 2.0000, 69.0000, 3.00, 1.0000, 60.5000, '', 1, '5.1.01.01.02', '4.1.01.02', '1.1.03.01.02', '2024-07-11 00:46:36', '2024-07-17 10:05:02', NULL);
INSERT INTO `product` VALUES (4, 1, 2, 2, 'BC003', '2201909186712', 'BAL. CUNIFORTE C3 REPRODUCTORES 40KG', 'BAL. CUNIFORTE C3 REPRODUCTORES 40KG', 2.0000, 79.0000, 3.00, 1.0000, 60.5000, '', 1, '5.1.01.01.02', '4.1.01.02', '1.1.03.01.02', '2024-07-11 00:46:36', '2024-07-17 10:14:07', NULL);
INSERT INTO `product` VALUES (5, 1, 3, 3, 'P000000048', '1311719106792', 'BAL. MED APE1  PREINICIAL PELLET BR. 40 KG', 'BAL. MED APE1  PREINICIAL PELLET BR. 40 KG', 3.0000, 67.0000, 4.50, 1.0000, 7.7000, '', 1, '5.1.01.01.02', '4.1.01.02', '1.1.03.01.02', '2024-07-11 00:46:36', '2024-07-17 10:05:03', NULL);
INSERT INTO `product` VALUES (6, 1, 2, 2, 'BP001', '2201909183148', 'BAL. PORCIFORTE P1 INICIAL PELLET 40 KG', 'BAL. PORCIFORTE P1 INICIAL PELLET 40 KG', 2.0000, 31.0000, 3.00, 1.0000, 78.1000, '', 1, '5.1.01.01.02', '4.1.01.02', '1.1.03.01.02', '2024-07-11 00:46:36', '2024-07-17 10:05:02', NULL);
INSERT INTO `product` VALUES (7, 1, 2, 2, 'BP002', '2201909183254', 'BAL. PORCIFORTE P2 CRECIMIENTO PELLET 40 KG', 'BAL. PORCIFORTE P2 CRECIMIENTO PELLET 40 KG', 2.0000, 48.0000, 3.00, 1.0000, 47.3000, '', 1, '5.1.01.01.02', '4.1.01.02', '1.1.03.01.02', '2024-07-11 00:46:36', '2024-07-17 10:14:07', NULL);
INSERT INTO `product` VALUES (8, 1, 2, 2, 'BP003', '2201909183315', 'BAL. PORCIFORTE P3 ENGORDE PELLET 40 KG', 'BAL. PORCIFORTE P3 ENGORDE PELLET 40 KG', 2.0000, 82.0000, 3.00, 1.0000, 108.9000, '', 1, '5.1.01.01.02', '4.1.01.02', '1.1.03.01.02', '2024-07-11 00:46:36', '2024-07-17 10:05:02', NULL);
INSERT INTO `product` VALUES (9, 1, 2, 2, 'BP004', '2201909183377', 'BAL. PORCIFORTE P4 GESTACION PELLET 40 KG', 'BAL. PORCIFORTE P4 GESTACION PELLET 40 KG', 2.0000, 48.0000, 3.00, 1.0000, 73.7000, '', 1, '5.1.01.01.02', '4.1.01.02', '1.1.03.01.02', '2024-07-11 00:46:36', '2024-07-17 10:05:02', NULL);
INSERT INTO `product` VALUES (10, 1, 2, 2, 'BP005', '2201909184961', 'BAL. PORCIFORTE P5 LACTANCIA PELLET 40 KG', 'BAL. PORCIFORTE P5 LACTANCIA PELLET 40 KG', 2.0000, 41.0000, 3.00, 1.0000, 34.1000, '', 1, '5.1.01.01.02', '4.1.01.02', '1.1.03.01.02', '2024-07-11 00:46:36', '2024-07-17 10:05:02', NULL);
INSERT INTO `product` VALUES (11, 1, 3, 3, 'P000000038', '9271759134488', 'BAL. PREINICIAL PELLET BR. 40 KG', 'BAL. PREINICIAL PELLET BR. 40 KG', 2.0000, 68.0000, 3.00, 1.0000, 22.0000, '', 1, '5.1.01.01.01', '4.1.01.01', '1.1.03.01.01', '2024-07-11 00:46:36', '2024-07-17 10:14:07', NULL);
INSERT INTO `product` VALUES (12, 1, 2, 2, 'BAI', '2201909186774', 'BALVIT  INICIAL PELLET BR. 40 KG CAL', 'BALVIT  INICIAL PELLET BR. 40 KG CAL', 2.0000, 72.0000, 3.00, 1.0000, 6.6000, '', 1, '5.1.01.01.02', '4.1.01.02', '1.1.03.01.02', '2024-07-11 00:46:36', '2024-07-17 10:05:02', NULL);
INSERT INTO `product` VALUES (13, 1, 2, 2, 'BCC', '2201909191891', 'BALVIT CERDOS CRECIMIENTO PELLET 40 KG CAL', 'BALVIT CERDOS CRECIMIENTO PELLET 40 KG CAL', 2.0000, 33.0000, 3.00, 1.0000, 28.6000, '', 1, '5.1.01.01.02', '4.1.01.02', '1.1.03.01.02', '2024-07-11 00:46:36', '2024-07-17 10:05:02', NULL);
INSERT INTO `product` VALUES (14, 1, 2, 2, 'BCE', '2201909191983', 'BALVIT CERDOS ENGORDE PELLET 40 KG CAL', 'BALVIT CERDOS ENGORDE PELLET 40 KG CAL', 2.0000, 67.0000, 3.00, 1.0000, 139.7000, '', 1, '5.1.01.01.02', '4.1.01.02', '1.1.03.01.02', '2024-07-11 00:46:36', '2024-07-17 10:05:02', NULL);
INSERT INTO `product` VALUES (15, 1, 2, 2, 'BAF', '2201909186828', 'BALVIT FINALIZADOR PELLET BR. 40 KG CAL', 'BALVIT FINALIZADOR PELLET BR. 40 KG CAL', 2.0000, 49.0000, 3.00, 1.0000, 38.5000, '', 1, '5.1.01.01.02', '4.1.01.02', '1.1.03.01.02', '2024-07-11 00:46:36', '2024-07-17 10:05:02', NULL);
INSERT INTO `product` VALUES (16, 1, 3, 3, 'P000000031', '9132052567598', 'BANDEJA CP-100 COMEDERO (PACA)', 'BANDEJA CP-100 COMEDERO (PACA)', 2.0000, 80.0000, 3.00, 1.0000, 1.1000, '', 1, '5.1.01.01.01', '4.1.01.01', '1.1.03.01.01', '2024-07-11 00:46:36', '2024-07-17 10:14:07', NULL);
INSERT INTO `product` VALUES (17, 1, 2, 3, 'P000000040', '1111753189153', 'CALIER PROACID 20 KG', 'CALIER PROACID 20 KG', 8.0000, 38.0000, 12.00, 1.0000, 139.7000, '', 1, '5.1.01.01.02', '4.1.01.02', '1.1.03.01.02', '2024-07-11 00:46:36', '2024-07-17 10:05:02', NULL);
INSERT INTO `product` VALUES (18, 1, 2, 3, 'P000000041', '1111841491823', 'CALIERMUTIN 100 PREMIX X 25 KG', 'CALIERMUTIN 100 PREMIX X 25 KG', 1.0000, 67.0000, 1.50, 1.0000, 4.4000, '', 1, '5.1.01.01.02', '4.1.01.02', '1.1.03.01.02', '2024-07-11 00:46:36', '2024-07-17 10:05:02', NULL);
INSERT INTO `product` VALUES (19, 10, 1, 2, 'P000000005', '1071747301964', 'CHASQUI', 'CHASQUI', 1.0000, 71.0000, 1.50, 1.0000, 89.1000, '', 1, '5.1.01.01.02', '4.1.01.02', '1.1.03.01.02', '2024-07-11 00:46:36', '2024-07-17 10:05:02', NULL);
INSERT INTO `product` VALUES (20, 1, 2, 3, 'P000000043', '9271818561866', 'DESINFECTANTE TH4 5 LT', 'DESINFECTANTE TH4 5 LT', 8.0000, 44.0000, 12.00, 1.0000, 11.0000, '', 1, '5.1.01.01.02', '4.1.01.02', '1.1.03.01.02', '2024-07-11 00:46:36', '2024-07-17 10:05:02', NULL);
INSERT INTO `product` VALUES (21, 1, 2, 3, 'P000000044', '1111900267789', 'DESINFECTANTE TH4 X 1 LITRO', 'DESINFECTANTE TH4 X 1 LITRO', 1.0000, 66.0000, 1.50, 1.0000, 8.8000, '', 1, '5.1.01.01.02', '4.1.01.02', '1.1.03.01.02', '2024-07-11 00:46:36', '2024-07-17 10:05:02', NULL);
INSERT INTO `product` VALUES (22, 1, 2, 3, 'P000000045', '1111901040657', 'DESINFECTANTE TH4 X 25 LITROS', 'DESINFECTANTE TH4 X 25 LITROS', 2.0000, 50.0000, 3.00, 1.0000, 2.2000, '', 1, '5.1.01.01.02', '4.1.01.02', '1.1.03.01.02', '2024-07-11 00:46:36', '2024-07-17 10:05:02', NULL);
INSERT INTO `product` VALUES (23, 1, 3, 3, '00022', '1300945551049', 'DESPADAC X 25 L', 'DESPADAC X 25 L', 1.0000, 11.0000, 1.50, 1.0000, 2.2000, '', 1, '5.1.01.01.02', '4.1.01.02', '1.1.03.01.02', '2024-07-11 00:46:36', '2024-07-17 10:05:02', NULL);
INSERT INTO `product` VALUES (24, 1, 2, 3, 'P000000046', '1111901366429', 'DETERSTORM X 25 KG', 'DETERSTORM X 25 KG', 1.0000, 55.0000, 1.50, 1.0000, 34.1000, '', 1, '5.1.01.01.02', '4.1.01.02', '1.1.03.01.02', '2024-07-11 00:46:36', '2024-07-17 10:05:02', NULL);
INSERT INTO `product` VALUES (25, 1, 3, 3, '00090', '1271302276465', 'HEPATOLAY 5 L', 'HEPATOLAY 5 L', 4.0000, 31.0000, 6.00, 1.0000, 30.8000, '', 1, '5.1.01.01.02', '4.1.01.02', '1.1.03.01.02', '2024-07-11 00:46:36', '2024-07-17 10:05:02', NULL);
INSERT INTO `product` VALUES (26, 1, 3, 3, 'P000000034', '9132119151296', 'HIPRAGUMBORO CH/80 * 5000 DS', 'HIPRAGUMBORO CH/80 * 5000 DS', 1.0000, 55.0000, 1.50, 1.0000, 20.9000, '', 1, '5.1.01.01.02', '4.1.01.02', '1.1.03.03.01', '2024-07-11 00:46:36', '2024-07-17 10:14:07', NULL);
INSERT INTO `product` VALUES (27, 1, 3, 3, 'P000000035', '9132119151425', 'HIPRAVIAR S/H120 2500 DS (NEW.BRONQ.)', 'HIPRAVIAR S/H120 2500 DS (NEW.BRONQ.)', 9.0000, 70.0000, 13.50, 1.0000, 29.7000, '', 1, '5.1.01.01.02', '4.1.01.02', '1.1.03.03.01', '2024-07-11 00:46:36', '2024-07-17 10:14:07', NULL);
INSERT INTO `product` VALUES (28, 1, 3, 3, '00031', '1300950349907', 'INMUNAIR-17.5 X 500 CC', 'INMUNAIR-17.5 X 500 CC', 4.0000, 42.0000, 6.00, 1.0000, 3.3000, '', 1, '5.1.01.01.02', '4.1.01.02', '1.1.03.01.02', '2024-07-11 00:46:36', '2024-07-17 10:14:07', NULL);
INSERT INTO `product` VALUES (29, 11, 1, 1, 'P000000003', '1061540376221', 'MAIZ AMARILLO', 'MAIZ AMARILLO', 1.0000, 75.0000, 1.50, 1.0000, 1.1000, '', 1, '5.1.01.01.02', '4.1.01.02', '1.1.03.01.02', '2024-07-11 00:46:36', '2024-07-17 10:14:07', NULL);
INSERT INTO `product` VALUES (30, 1, 4, 4, 'P000000024', '8311002014981', 'POLLO BB', 'POLLO BB', 0.8500, 76.0000, 1.28, 1.0000, 15.4000, '', 1, '5.1.01.01.02', '4.1.01.02', '1.1.03.01.02', '2024-07-11 00:46:36', '2024-07-17 10:14:07', NULL);
INSERT INTO `product` VALUES (31, 1, 2, 4, 'P000000025', '9080043093741', 'POLLO CRIOLLO', 'POLLO CRIOLLO', 0.3300, 54.0000, 0.50, 1.0000, 22.0000, '', 1, '5.1.01.01.02', '4.1.01.02', '1.1.03.01.02', '2024-07-11 00:46:36', '2024-07-17 10:08:17', NULL);
INSERT INTO `product` VALUES (32, 6, 4, 4, 'P000000021', '1081729085065', 'POLLO VIVO', 'POLLO VIVO', 0.8800, 31.0000, 1.32, 1.0000, 17.6000, '', 1, '5.1.01.01.02', '4.1.01.02', '1.1.03.01.02', '2024-07-11 00:46:36', '2024-07-17 10:14:07', NULL);
INSERT INTO `product` VALUES (33, 1, 2, 3, 'P000000042', '1111848444723', 'PROMOTOR L X GL', 'PROMOTOR L X GL', 5.0000, 114.0000, 7.50, 1.0000, 20.9000, '', 1, '5.1.01.01.02', '4.1.01.02', '1.1.03.01.02', '2024-07-11 00:46:36', '2024-07-17 10:14:07', NULL);
INSERT INTO `product` VALUES (34, 1, 3, 3, '00088', '1300948596887', 'TILMICOSIN', 'TILMICOSIN', 6.0000, 59.0000, 9.00, 1.0000, 26.4000, '', 1, '5.1.01.01.02', '4.1.01.02', '1.1.03.01.02', '2024-07-11 00:46:36', '2024-07-17 10:08:17', NULL);
INSERT INTO `product` VALUES (35, 1, 2, 3, 'P000000047', '1131527422941', 'ZOOBIOTIC GLOBULIT  25 kg', 'ZOOBIOTIC GLOBULIT  25 kg', 3.0000, 28.0000, 4.50, 1.0000, 26.4000, '', 1, '5.1.01.01.02', '4.1.01.02', '1.1.03.01.02', '2024-07-11 00:46:36', '2024-07-17 10:05:02', NULL);
INSERT INTO `product` VALUES (36, 1, 2, 2, '00036', '1091643233541', 'ZURITOL  2.5  1 L', 'ZURITOL  2.5  1 L', 5.0000, 54.0000, 7.50, 1.0000, 42.9000, '', 1, '5.1.01.01.02', '4.1.01.02', '1.1.03.01.02', '2024-07-11 00:46:36', '2024-07-17 10:02:40', NULL);
INSERT INTO `product` VALUES (41, 1, 2, 4, 'A1', 'A2', 'AAAAAA', 'Cosa aaaa', 0.0000, 0.0000, 2.00, 0.0000, 0.0000, '', 1, '', '', '', '2024-08-14 01:38:39', '2024-08-14 02:10:43', '2024-08-14 02:10:43');

-- ----------------------------
-- Table structure for productcategory
-- ----------------------------
DROP TABLE IF EXISTS `productcategory`;
CREATE TABLE `productcategory`  (
  `idproductcategory` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`idproductcategory`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf16 COLLATE = utf16_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of productcategory
-- ----------------------------
INSERT INTO `productcategory` VALUES (1, 'CEREALES');
INSERT INTO `productcategory` VALUES (2, 'MATERIAL PETREO');
INSERT INTO `productcategory` VALUES (3, 'SUMINISTROS Y MATERIALES');
INSERT INTO `productcategory` VALUES (4, 'ANIMALES EN PIE');
INSERT INTO `productcategory` VALUES (5, 'Tracto Camión Shacman');

-- ----------------------------
-- Table structure for productline
-- ----------------------------
DROP TABLE IF EXISTS `productline`;
CREATE TABLE `productline`  (
  `idproductline` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`idproductline`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf16 COLLATE = utf16_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of productline
-- ----------------------------
INSERT INTO `productline` VALUES (1, 'PRODUCTOS ESTADO NATURAL');
INSERT INTO `productline` VALUES (2, 'GENERAL');
INSERT INTO `productline` VALUES (3, 'SUMINISTROS Y MATERIALES');
INSERT INTO `productline` VALUES (4, 'ANIMALES');
INSERT INTO `productline` VALUES (5, 'VEHICULOS PESADOS');

-- ----------------------------
-- Table structure for productmovement
-- ----------------------------
DROP TABLE IF EXISTS `productmovement`;
CREATE TABLE `productmovement`  (
  `idmovmentproduct` int NOT NULL AUTO_INCREMENT,
  `idproduct` int NOT NULL,
  `idtransaction` int NOT NULL,
  `qty` double(20, 4) NOT NULL DEFAULT 0.0000,
  `entry` enum('I','E') CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL DEFAULT 'I' COMMENT 'I-Ingreso  E-Egreso',
  `price` double(20, 4) NOT NULL DEFAULT 0.0000,
  `total` double(20, 4) NOT NULL DEFAULT 0.0000,
  PRIMARY KEY (`idmovmentproduct`) USING BTREE,
  INDEX `IDXPRO`(`idproduct` ASC) USING BTREE,
  INDEX `IDXTRAS`(`idtransaction` ASC) USING BTREE,
  CONSTRAINT `IDXPRO` FOREIGN KEY (`idproduct`) REFERENCES `product` (`idproduct`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `IDXTRAS` FOREIGN KEY (`idtransaction`) REFERENCES `transaction` (`idtransaction`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1784 CHARACTER SET = utf16 COLLATE = utf16_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of productmovement
-- ----------------------------
INSERT INTO `productmovement` VALUES (1, 36, 1, 54.0000, 'I', 5.0000, 270.0000);
INSERT INTO `productmovement` VALUES (2, 1, 1, 97.0000, 'I', 5.0000, 485.0000);
INSERT INTO `productmovement` VALUES (3, 2, 1, 70.0000, 'I', 2.0000, 140.0000);
INSERT INTO `productmovement` VALUES (4, 3, 1, 92.0000, 'I', 2.0000, 184.0000);
INSERT INTO `productmovement` VALUES (5, 4, 1, 25.0000, 'I', 2.0000, 50.0000);
INSERT INTO `productmovement` VALUES (6, 5, 1, 95.0000, 'I', 3.0000, 285.0000);
INSERT INTO `productmovement` VALUES (7, 6, 1, 53.0000, 'I', 2.0000, 106.0000);
INSERT INTO `productmovement` VALUES (8, 7, 1, 20.0000, 'I', 2.0000, 40.0000);
INSERT INTO `productmovement` VALUES (9, 35, 2, 56.0000, 'I', 3.0000, 168.0000);
INSERT INTO `productmovement` VALUES (10, 8, 2, 86.0000, 'I', 2.0000, 172.0000);
INSERT INTO `productmovement` VALUES (11, 9, 2, 60.0000, 'I', 2.0000, 120.0000);
INSERT INTO `productmovement` VALUES (12, 10, 2, 72.0000, 'I', 2.0000, 144.0000);
INSERT INTO `productmovement` VALUES (13, 11, 2, 37.0000, 'I', 2.0000, 74.0000);
INSERT INTO `productmovement` VALUES (14, 12, 2, 98.0000, 'I', 2.0000, 196.0000);
INSERT INTO `productmovement` VALUES (15, 13, 2, 53.0000, 'I', 2.0000, 106.0000);
INSERT INTO `productmovement` VALUES (16, 14, 2, 96.0000, 'I', 2.0000, 192.0000);
INSERT INTO `productmovement` VALUES (17, 15, 2, 58.0000, 'I', 2.0000, 116.0000);
INSERT INTO `productmovement` VALUES (18, 16, 2, 29.0000, 'I', 2.0000, 58.0000);
INSERT INTO `productmovement` VALUES (19, 17, 2, 55.0000, 'I', 8.0000, 440.0000);
INSERT INTO `productmovement` VALUES (20, 18, 2, 100.0000, 'I', 1.0000, 100.0000);
INSERT INTO `productmovement` VALUES (21, 19, 2, 98.0000, 'I', 1.0000, 98.0000);
INSERT INTO `productmovement` VALUES (22, 20, 2, 66.0000, 'I', 8.0000, 528.0000);
INSERT INTO `productmovement` VALUES (23, 21, 2, 89.0000, 'I', 1.0000, 89.0000);
INSERT INTO `productmovement` VALUES (24, 22, 2, 57.0000, 'I', 2.0000, 114.0000);
INSERT INTO `productmovement` VALUES (25, 23, 2, 45.0000, 'I', 1.0000, 45.0000);
INSERT INTO `productmovement` VALUES (26, 24, 2, 78.0000, 'I', 1.0000, 78.0000);
INSERT INTO `productmovement` VALUES (27, 25, 2, 24.0000, 'I', 4.0000, 96.0000);
INSERT INTO `productmovement` VALUES (28, 35, 3, 2.0000, 'I', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (29, 2, 3, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (30, 20, 3, 5.0000, 'I', 8.0000, 40.0000);
INSERT INTO `productmovement` VALUES (31, 5, 3, 5.0000, 'I', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (32, 14, 3, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (33, 16, 3, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (34, 23, 3, 4.0000, 'I', 1.0000, 4.0000);
INSERT INTO `productmovement` VALUES (35, 1, 3, 3.0000, 'I', 5.0000, 15.0000);
INSERT INTO `productmovement` VALUES (36, 25, 3, 5.0000, 'I', 4.0000, 20.0000);
INSERT INTO `productmovement` VALUES (37, 17, 3, 5.0000, 'I', 8.0000, 40.0000);
INSERT INTO `productmovement` VALUES (38, 34, 3, 1.0000, 'I', 6.0000, 6.0000);
INSERT INTO `productmovement` VALUES (39, 28, 3, 4.0000, 'I', 4.0000, 16.0000);
INSERT INTO `productmovement` VALUES (40, 7, 3, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (41, 19, 3, 3.0000, 'I', 1.0000, 3.0000);
INSERT INTO `productmovement` VALUES (42, 22, 3, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (43, 4, 3, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (44, 24, 3, 5.0000, 'I', 1.0000, 5.0000);
INSERT INTO `productmovement` VALUES (45, 8, 3, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (46, 18, 3, 2.0000, 'I', 1.0000, 2.0000);
INSERT INTO `productmovement` VALUES (47, 10, 3, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (48, 6, 3, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (49, 30, 3, 1.0000, 'I', 0.8500, 0.8500);
INSERT INTO `productmovement` VALUES (50, 31, 3, 3.0000, 'I', 0.3300, 0.9900);
INSERT INTO `productmovement` VALUES (51, 11, 3, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (52, 32, 3, 3.0000, 'I', 0.8800, 2.6400);
INSERT INTO `productmovement` VALUES (53, 3, 3, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (54, 15, 3, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (55, 26, 3, 4.0000, 'I', 1.0000, 4.0000);
INSERT INTO `productmovement` VALUES (56, 33, 3, 5.0000, 'I', 5.0000, 25.0000);
INSERT INTO `productmovement` VALUES (57, 29, 3, 5.0000, 'I', 1.0000, 5.0000);
INSERT INTO `productmovement` VALUES (58, 21, 3, 2.0000, 'I', 1.0000, 2.0000);
INSERT INTO `productmovement` VALUES (59, 12, 3, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (60, 27, 3, 2.0000, 'I', 9.0000, 18.0000);
INSERT INTO `productmovement` VALUES (61, 9, 3, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (62, 13, 3, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (63, 25, 4, 4.0000, 'I', 4.0000, 16.0000);
INSERT INTO `productmovement` VALUES (64, 29, 4, 5.0000, 'I', 1.0000, 5.0000);
INSERT INTO `productmovement` VALUES (65, 6, 4, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (66, 21, 4, 5.0000, 'I', 1.0000, 5.0000);
INSERT INTO `productmovement` VALUES (67, 2, 4, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (68, 28, 4, 4.0000, 'I', 4.0000, 16.0000);
INSERT INTO `productmovement` VALUES (69, 4, 4, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (70, 8, 4, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (71, 5, 4, 2.0000, 'I', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (72, 20, 4, 5.0000, 'I', 8.0000, 40.0000);
INSERT INTO `productmovement` VALUES (73, 30, 4, 1.0000, 'I', 0.8500, 0.8500);
INSERT INTO `productmovement` VALUES (74, 23, 4, 5.0000, 'I', 1.0000, 5.0000);
INSERT INTO `productmovement` VALUES (75, 26, 4, 2.0000, 'I', 1.0000, 2.0000);
INSERT INTO `productmovement` VALUES (76, 34, 4, 3.0000, 'I', 6.0000, 18.0000);
INSERT INTO `productmovement` VALUES (77, 12, 4, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (78, 32, 4, 1.0000, 'I', 0.8800, 0.8800);
INSERT INTO `productmovement` VALUES (79, 19, 4, 5.0000, 'I', 1.0000, 5.0000);
INSERT INTO `productmovement` VALUES (80, 33, 4, 2.0000, 'I', 5.0000, 10.0000);
INSERT INTO `productmovement` VALUES (81, 18, 4, 1.0000, 'I', 1.0000, 1.0000);
INSERT INTO `productmovement` VALUES (82, 22, 4, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (83, 31, 4, 4.0000, 'I', 0.3300, 1.3200);
INSERT INTO `productmovement` VALUES (84, 35, 4, 2.0000, 'I', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (85, 7, 4, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (86, 16, 4, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (87, 24, 4, 2.0000, 'I', 1.0000, 2.0000);
INSERT INTO `productmovement` VALUES (88, 10, 4, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (89, 15, 4, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (90, 1, 4, 2.0000, 'I', 5.0000, 10.0000);
INSERT INTO `productmovement` VALUES (91, 11, 4, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (92, 17, 4, 3.0000, 'I', 8.0000, 24.0000);
INSERT INTO `productmovement` VALUES (93, 9, 4, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (94, 3, 4, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (95, 13, 4, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (96, 27, 4, 3.0000, 'I', 9.0000, 27.0000);
INSERT INTO `productmovement` VALUES (97, 14, 4, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (98, 18, 5, 2.0000, 'E', 1.5000, 3.0000);
INSERT INTO `productmovement` VALUES (99, 20, 5, 2.0000, 'E', 12.0000, 24.0000);
INSERT INTO `productmovement` VALUES (100, 32, 5, 3.0000, 'E', 1.3200, 3.9600);
INSERT INTO `productmovement` VALUES (101, 34, 5, 5.0000, 'E', 9.0000, 45.0000);
INSERT INTO `productmovement` VALUES (102, 7, 5, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (103, 14, 5, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (104, 25, 5, 3.0000, 'E', 6.0000, 18.0000);
INSERT INTO `productmovement` VALUES (105, 24, 5, 2.0000, 'E', 1.5000, 3.0000);
INSERT INTO `productmovement` VALUES (106, 29, 5, 3.0000, 'E', 1.5000, 4.5000);
INSERT INTO `productmovement` VALUES (107, 26, 5, 3.0000, 'E', 1.5000, 4.5000);
INSERT INTO `productmovement` VALUES (108, 9, 5, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (109, 27, 5, 5.0000, 'E', 13.5000, 67.5000);
INSERT INTO `productmovement` VALUES (110, 15, 5, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (111, 5, 5, 5.0000, 'E', 4.5000, 22.5000);
INSERT INTO `productmovement` VALUES (112, 21, 5, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (113, 6, 5, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (114, 1, 5, 5.0000, 'E', 7.5000, 37.5000);
INSERT INTO `productmovement` VALUES (115, 16, 5, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (116, 28, 5, 5.0000, 'E', 6.0000, 30.0000);
INSERT INTO `productmovement` VALUES (117, 17, 5, 1.0000, 'E', 12.0000, 12.0000);
INSERT INTO `productmovement` VALUES (118, 4, 5, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (119, 3, 5, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (120, 12, 5, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (121, 30, 5, 1.0000, 'E', 1.2800, 1.2800);
INSERT INTO `productmovement` VALUES (122, 22, 5, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (123, 8, 5, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (124, 19, 5, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (125, 13, 5, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (126, 31, 5, 3.0000, 'E', 0.5000, 1.5000);
INSERT INTO `productmovement` VALUES (127, 11, 5, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (128, 23, 5, 3.0000, 'E', 1.5000, 4.5000);
INSERT INTO `productmovement` VALUES (129, 10, 5, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (130, 35, 5, 4.0000, 'E', 4.5000, 18.0000);
INSERT INTO `productmovement` VALUES (131, 2, 5, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (132, 33, 5, 5.0000, 'E', 7.5000, 37.5000);
INSERT INTO `productmovement` VALUES (133, 27, 6, 1.0000, 'I', 9.0000, 9.0000);
INSERT INTO `productmovement` VALUES (134, 6, 6, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (135, 21, 6, 1.0000, 'I', 1.0000, 1.0000);
INSERT INTO `productmovement` VALUES (136, 12, 6, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (137, 29, 6, 2.0000, 'I', 1.0000, 2.0000);
INSERT INTO `productmovement` VALUES (138, 20, 6, 1.0000, 'I', 8.0000, 8.0000);
INSERT INTO `productmovement` VALUES (139, 15, 6, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (140, 14, 6, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (141, 26, 6, 4.0000, 'I', 1.0000, 4.0000);
INSERT INTO `productmovement` VALUES (142, 5, 6, 1.0000, 'I', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (143, 7, 6, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (144, 19, 6, 2.0000, 'I', 1.0000, 2.0000);
INSERT INTO `productmovement` VALUES (145, 18, 6, 4.0000, 'I', 1.0000, 4.0000);
INSERT INTO `productmovement` VALUES (146, 25, 6, 3.0000, 'I', 4.0000, 12.0000);
INSERT INTO `productmovement` VALUES (147, 31, 6, 5.0000, 'I', 0.3300, 1.6500);
INSERT INTO `productmovement` VALUES (148, 28, 6, 2.0000, 'I', 4.0000, 8.0000);
INSERT INTO `productmovement` VALUES (149, 11, 6, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (150, 17, 6, 2.0000, 'I', 8.0000, 16.0000);
INSERT INTO `productmovement` VALUES (151, 30, 6, 1.0000, 'I', 0.8500, 0.8500);
INSERT INTO `productmovement` VALUES (152, 24, 6, 2.0000, 'I', 1.0000, 2.0000);
INSERT INTO `productmovement` VALUES (153, 32, 6, 2.0000, 'I', 0.8800, 1.7600);
INSERT INTO `productmovement` VALUES (154, 22, 6, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (155, 34, 6, 4.0000, 'I', 6.0000, 24.0000);
INSERT INTO `productmovement` VALUES (156, 8, 6, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (157, 13, 6, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (158, 35, 6, 2.0000, 'I', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (159, 33, 6, 5.0000, 'I', 5.0000, 25.0000);
INSERT INTO `productmovement` VALUES (160, 3, 6, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (161, 4, 6, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (162, 10, 6, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (163, 2, 6, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (164, 9, 6, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (165, 16, 6, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (166, 23, 6, 2.0000, 'I', 1.0000, 2.0000);
INSERT INTO `productmovement` VALUES (167, 1, 6, 3.0000, 'I', 5.0000, 15.0000);
INSERT INTO `productmovement` VALUES (168, 31, 7, 1.0000, 'E', 0.5000, 0.5000);
INSERT INTO `productmovement` VALUES (169, 10, 7, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (170, 9, 7, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (171, 13, 7, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (172, 29, 7, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (173, 33, 7, 4.0000, 'E', 7.5000, 30.0000);
INSERT INTO `productmovement` VALUES (174, 15, 7, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (175, 1, 7, 5.0000, 'E', 7.5000, 37.5000);
INSERT INTO `productmovement` VALUES (176, 24, 7, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (177, 5, 7, 3.0000, 'E', 4.5000, 13.5000);
INSERT INTO `productmovement` VALUES (178, 3, 7, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (179, 32, 7, 5.0000, 'E', 1.3200, 6.6000);
INSERT INTO `productmovement` VALUES (180, 26, 7, 2.0000, 'E', 1.5000, 3.0000);
INSERT INTO `productmovement` VALUES (181, 16, 7, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (182, 2, 7, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (183, 17, 7, 1.0000, 'E', 12.0000, 12.0000);
INSERT INTO `productmovement` VALUES (184, 23, 7, 2.0000, 'E', 1.5000, 3.0000);
INSERT INTO `productmovement` VALUES (185, 28, 7, 2.0000, 'E', 6.0000, 12.0000);
INSERT INTO `productmovement` VALUES (186, 6, 7, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (187, 22, 7, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (188, 25, 7, 2.0000, 'E', 6.0000, 12.0000);
INSERT INTO `productmovement` VALUES (189, 34, 7, 5.0000, 'E', 9.0000, 45.0000);
INSERT INTO `productmovement` VALUES (190, 18, 7, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (191, 11, 7, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (192, 4, 7, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (193, 7, 7, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (194, 21, 7, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (195, 35, 7, 2.0000, 'E', 4.5000, 9.0000);
INSERT INTO `productmovement` VALUES (196, 8, 7, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (197, 12, 7, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (198, 19, 7, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (199, 20, 7, 5.0000, 'E', 12.0000, 60.0000);
INSERT INTO `productmovement` VALUES (200, 14, 7, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (201, 30, 7, 3.0000, 'E', 1.2800, 3.8400);
INSERT INTO `productmovement` VALUES (202, 30, 8, 3.0000, 'I', 0.8500, 2.5500);
INSERT INTO `productmovement` VALUES (203, 25, 8, 3.0000, 'I', 4.0000, 12.0000);
INSERT INTO `productmovement` VALUES (204, 14, 8, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (205, 17, 8, 5.0000, 'I', 8.0000, 40.0000);
INSERT INTO `productmovement` VALUES (206, 12, 8, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (207, 10, 8, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (208, 9, 8, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (209, 18, 8, 5.0000, 'I', 1.0000, 5.0000);
INSERT INTO `productmovement` VALUES (210, 33, 8, 3.0000, 'I', 5.0000, 15.0000);
INSERT INTO `productmovement` VALUES (211, 5, 8, 1.0000, 'I', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (212, 15, 8, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (213, 24, 8, 5.0000, 'I', 1.0000, 5.0000);
INSERT INTO `productmovement` VALUES (214, 23, 8, 1.0000, 'I', 1.0000, 1.0000);
INSERT INTO `productmovement` VALUES (215, 1, 8, 5.0000, 'I', 5.0000, 25.0000);
INSERT INTO `productmovement` VALUES (216, 6, 8, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (217, 26, 8, 5.0000, 'I', 1.0000, 5.0000);
INSERT INTO `productmovement` VALUES (218, 20, 8, 1.0000, 'I', 8.0000, 8.0000);
INSERT INTO `productmovement` VALUES (219, 8, 8, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (220, 3, 8, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (221, 35, 8, 5.0000, 'I', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (222, 34, 8, 1.0000, 'I', 6.0000, 6.0000);
INSERT INTO `productmovement` VALUES (223, 28, 8, 5.0000, 'I', 4.0000, 20.0000);
INSERT INTO `productmovement` VALUES (224, 31, 8, 1.0000, 'I', 0.3300, 0.3300);
INSERT INTO `productmovement` VALUES (225, 29, 8, 3.0000, 'I', 1.0000, 3.0000);
INSERT INTO `productmovement` VALUES (226, 7, 8, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (227, 4, 8, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (228, 32, 8, 5.0000, 'I', 0.8800, 4.4000);
INSERT INTO `productmovement` VALUES (229, 13, 8, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (230, 27, 8, 5.0000, 'I', 9.0000, 45.0000);
INSERT INTO `productmovement` VALUES (231, 11, 8, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (232, 19, 8, 1.0000, 'I', 1.0000, 1.0000);
INSERT INTO `productmovement` VALUES (233, 2, 8, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (234, 21, 8, 3.0000, 'I', 1.0000, 3.0000);
INSERT INTO `productmovement` VALUES (235, 22, 8, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (236, 16, 8, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (237, 12, 9, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (238, 33, 9, 1.0000, 'E', 7.5000, 7.5000);
INSERT INTO `productmovement` VALUES (239, 18, 9, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (240, 15, 9, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (241, 4, 9, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (242, 2, 9, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (243, 11, 9, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (244, 25, 9, 5.0000, 'E', 6.0000, 30.0000);
INSERT INTO `productmovement` VALUES (245, 22, 9, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (246, 23, 9, 2.0000, 'E', 1.5000, 3.0000);
INSERT INTO `productmovement` VALUES (247, 27, 9, 3.0000, 'E', 13.5000, 40.5000);
INSERT INTO `productmovement` VALUES (248, 16, 9, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (249, 21, 9, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (250, 32, 9, 4.0000, 'E', 1.3200, 5.2800);
INSERT INTO `productmovement` VALUES (251, 5, 9, 2.0000, 'E', 4.5000, 9.0000);
INSERT INTO `productmovement` VALUES (252, 20, 9, 5.0000, 'E', 12.0000, 60.0000);
INSERT INTO `productmovement` VALUES (253, 8, 9, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (254, 10, 9, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (255, 28, 9, 1.0000, 'E', 6.0000, 6.0000);
INSERT INTO `productmovement` VALUES (256, 9, 9, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (257, 34, 9, 4.0000, 'E', 9.0000, 36.0000);
INSERT INTO `productmovement` VALUES (258, 13, 9, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (259, 26, 9, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (260, 19, 9, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (261, 1, 9, 5.0000, 'E', 7.5000, 37.5000);
INSERT INTO `productmovement` VALUES (262, 14, 9, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (263, 31, 9, 5.0000, 'E', 0.5000, 2.5000);
INSERT INTO `productmovement` VALUES (264, 35, 9, 1.0000, 'E', 4.5000, 4.5000);
INSERT INTO `productmovement` VALUES (265, 7, 9, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (266, 29, 9, 3.0000, 'E', 1.5000, 4.5000);
INSERT INTO `productmovement` VALUES (267, 24, 9, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (268, 3, 9, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (269, 30, 9, 1.0000, 'E', 1.2800, 1.2800);
INSERT INTO `productmovement` VALUES (270, 17, 9, 2.0000, 'E', 12.0000, 24.0000);
INSERT INTO `productmovement` VALUES (271, 6, 9, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (272, 28, 10, 1.0000, 'E', 6.0000, 6.0000);
INSERT INTO `productmovement` VALUES (273, 32, 10, 3.0000, 'E', 1.3200, 3.9600);
INSERT INTO `productmovement` VALUES (274, 16, 10, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (275, 26, 10, 2.0000, 'E', 1.5000, 3.0000);
INSERT INTO `productmovement` VALUES (276, 14, 10, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (277, 13, 10, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (278, 19, 10, 3.0000, 'E', 1.5000, 4.5000);
INSERT INTO `productmovement` VALUES (279, 9, 10, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (280, 5, 10, 2.0000, 'E', 4.5000, 9.0000);
INSERT INTO `productmovement` VALUES (281, 3, 10, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (282, 1, 10, 1.0000, 'E', 7.5000, 7.5000);
INSERT INTO `productmovement` VALUES (283, 20, 10, 3.0000, 'E', 12.0000, 36.0000);
INSERT INTO `productmovement` VALUES (284, 15, 10, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (285, 27, 10, 2.0000, 'E', 13.5000, 27.0000);
INSERT INTO `productmovement` VALUES (286, 8, 10, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (287, 24, 10, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (288, 4, 10, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (289, 31, 10, 5.0000, 'E', 0.5000, 2.5000);
INSERT INTO `productmovement` VALUES (290, 11, 10, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (291, 29, 10, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (292, 10, 10, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (293, 35, 10, 3.0000, 'E', 4.5000, 13.5000);
INSERT INTO `productmovement` VALUES (294, 34, 10, 1.0000, 'E', 9.0000, 9.0000);
INSERT INTO `productmovement` VALUES (295, 17, 10, 2.0000, 'E', 12.0000, 24.0000);
INSERT INTO `productmovement` VALUES (296, 21, 10, 2.0000, 'E', 1.5000, 3.0000);
INSERT INTO `productmovement` VALUES (297, 7, 10, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (298, 23, 10, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (299, 18, 10, 2.0000, 'E', 1.5000, 3.0000);
INSERT INTO `productmovement` VALUES (300, 2, 10, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (301, 25, 10, 1.0000, 'E', 6.0000, 6.0000);
INSERT INTO `productmovement` VALUES (302, 22, 10, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (303, 6, 10, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (304, 33, 10, 4.0000, 'E', 7.5000, 30.0000);
INSERT INTO `productmovement` VALUES (305, 12, 10, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (306, 18, 11, 3.0000, 'I', 1.0000, 3.0000);
INSERT INTO `productmovement` VALUES (307, 29, 11, 1.0000, 'I', 1.0000, 1.0000);
INSERT INTO `productmovement` VALUES (308, 4, 11, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (309, 25, 11, 4.0000, 'I', 4.0000, 16.0000);
INSERT INTO `productmovement` VALUES (310, 2, 11, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (311, 20, 11, 1.0000, 'I', 8.0000, 8.0000);
INSERT INTO `productmovement` VALUES (312, 31, 11, 5.0000, 'I', 0.3300, 1.6500);
INSERT INTO `productmovement` VALUES (313, 28, 11, 1.0000, 'I', 4.0000, 4.0000);
INSERT INTO `productmovement` VALUES (314, 23, 11, 2.0000, 'I', 1.0000, 2.0000);
INSERT INTO `productmovement` VALUES (315, 34, 11, 3.0000, 'I', 6.0000, 18.0000);
INSERT INTO `productmovement` VALUES (316, 12, 11, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (317, 24, 11, 1.0000, 'I', 1.0000, 1.0000);
INSERT INTO `productmovement` VALUES (318, 22, 11, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (319, 33, 11, 2.0000, 'I', 5.0000, 10.0000);
INSERT INTO `productmovement` VALUES (320, 14, 11, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (321, 6, 11, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (322, 26, 11, 5.0000, 'I', 1.0000, 5.0000);
INSERT INTO `productmovement` VALUES (323, 27, 11, 2.0000, 'I', 9.0000, 18.0000);
INSERT INTO `productmovement` VALUES (324, 32, 11, 2.0000, 'I', 0.8800, 1.7600);
INSERT INTO `productmovement` VALUES (325, 19, 11, 5.0000, 'I', 1.0000, 5.0000);
INSERT INTO `productmovement` VALUES (326, 10, 11, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (327, 3, 11, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (328, 35, 11, 3.0000, 'I', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (329, 17, 11, 5.0000, 'I', 8.0000, 40.0000);
INSERT INTO `productmovement` VALUES (330, 8, 11, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (331, 11, 11, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (332, 13, 11, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (333, 1, 11, 2.0000, 'I', 5.0000, 10.0000);
INSERT INTO `productmovement` VALUES (334, 15, 11, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (335, 5, 11, 3.0000, 'I', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (336, 7, 11, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (337, 16, 11, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (338, 30, 11, 3.0000, 'I', 0.8500, 2.5500);
INSERT INTO `productmovement` VALUES (339, 21, 11, 5.0000, 'I', 1.0000, 5.0000);
INSERT INTO `productmovement` VALUES (340, 9, 11, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (341, 33, 12, 5.0000, 'E', 7.5000, 37.5000);
INSERT INTO `productmovement` VALUES (342, 21, 12, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (343, 10, 12, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (344, 18, 12, 2.0000, 'E', 1.5000, 3.0000);
INSERT INTO `productmovement` VALUES (345, 1, 12, 5.0000, 'E', 7.5000, 37.5000);
INSERT INTO `productmovement` VALUES (346, 14, 12, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (347, 24, 12, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (348, 19, 12, 3.0000, 'E', 1.5000, 4.5000);
INSERT INTO `productmovement` VALUES (349, 34, 12, 5.0000, 'E', 9.0000, 45.0000);
INSERT INTO `productmovement` VALUES (350, 20, 12, 5.0000, 'E', 12.0000, 60.0000);
INSERT INTO `productmovement` VALUES (351, 15, 12, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (352, 6, 12, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (353, 17, 12, 5.0000, 'E', 12.0000, 60.0000);
INSERT INTO `productmovement` VALUES (354, 31, 12, 3.0000, 'E', 0.5000, 1.5000);
INSERT INTO `productmovement` VALUES (355, 27, 12, 1.0000, 'E', 13.5000, 13.5000);
INSERT INTO `productmovement` VALUES (356, 32, 12, 2.0000, 'E', 1.3200, 2.6400);
INSERT INTO `productmovement` VALUES (357, 4, 12, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (358, 22, 12, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (359, 29, 12, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (360, 12, 12, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (361, 2, 12, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (362, 8, 12, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (363, 28, 12, 1.0000, 'E', 6.0000, 6.0000);
INSERT INTO `productmovement` VALUES (364, 13, 12, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (365, 7, 12, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (366, 5, 12, 1.0000, 'E', 4.5000, 4.5000);
INSERT INTO `productmovement` VALUES (367, 35, 12, 1.0000, 'E', 4.5000, 4.5000);
INSERT INTO `productmovement` VALUES (368, 3, 12, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (369, 26, 12, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (370, 9, 12, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (371, 11, 12, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (372, 25, 12, 1.0000, 'E', 6.0000, 6.0000);
INSERT INTO `productmovement` VALUES (373, 23, 12, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (374, 30, 12, 3.0000, 'E', 1.2800, 3.8400);
INSERT INTO `productmovement` VALUES (375, 16, 12, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (376, 9, 13, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (377, 19, 13, 2.0000, 'E', 1.5000, 3.0000);
INSERT INTO `productmovement` VALUES (378, 28, 13, 2.0000, 'E', 6.0000, 12.0000);
INSERT INTO `productmovement` VALUES (379, 11, 13, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (380, 20, 13, 3.0000, 'E', 12.0000, 36.0000);
INSERT INTO `productmovement` VALUES (381, 7, 13, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (382, 10, 13, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (383, 33, 13, 1.0000, 'E', 7.5000, 7.5000);
INSERT INTO `productmovement` VALUES (384, 2, 13, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (385, 13, 13, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (386, 27, 13, 1.0000, 'E', 13.5000, 13.5000);
INSERT INTO `productmovement` VALUES (387, 18, 13, 3.0000, 'E', 1.5000, 4.5000);
INSERT INTO `productmovement` VALUES (388, 14, 13, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (389, 16, 13, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (390, 15, 13, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (391, 8, 13, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (392, 29, 13, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (393, 32, 13, 2.0000, 'E', 1.3200, 2.6400);
INSERT INTO `productmovement` VALUES (394, 17, 13, 1.0000, 'E', 12.0000, 12.0000);
INSERT INTO `productmovement` VALUES (395, 34, 13, 2.0000, 'E', 9.0000, 18.0000);
INSERT INTO `productmovement` VALUES (396, 22, 13, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (397, 21, 13, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (398, 3, 13, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (399, 23, 13, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (400, 4, 13, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (401, 35, 13, 5.0000, 'E', 4.5000, 22.5000);
INSERT INTO `productmovement` VALUES (402, 26, 13, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (403, 6, 13, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (404, 25, 13, 2.0000, 'E', 6.0000, 12.0000);
INSERT INTO `productmovement` VALUES (405, 5, 13, 3.0000, 'E', 4.5000, 13.5000);
INSERT INTO `productmovement` VALUES (406, 1, 13, 4.0000, 'E', 7.5000, 30.0000);
INSERT INTO `productmovement` VALUES (407, 24, 13, 2.0000, 'E', 1.5000, 3.0000);
INSERT INTO `productmovement` VALUES (408, 12, 13, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (409, 22, 14, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (410, 3, 14, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (411, 35, 14, 3.0000, 'E', 4.5000, 13.5000);
INSERT INTO `productmovement` VALUES (412, 10, 14, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (413, 26, 14, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (414, 15, 14, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (415, 8, 14, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (416, 20, 14, 3.0000, 'E', 12.0000, 36.0000);
INSERT INTO `productmovement` VALUES (417, 34, 14, 2.0000, 'E', 9.0000, 18.0000);
INSERT INTO `productmovement` VALUES (418, 17, 14, 2.0000, 'E', 12.0000, 24.0000);
INSERT INTO `productmovement` VALUES (419, 5, 14, 1.0000, 'E', 4.5000, 4.5000);
INSERT INTO `productmovement` VALUES (420, 32, 14, 3.0000, 'E', 1.3200, 3.9600);
INSERT INTO `productmovement` VALUES (421, 33, 14, 4.0000, 'E', 7.5000, 30.0000);
INSERT INTO `productmovement` VALUES (422, 6, 14, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (423, 21, 14, 3.0000, 'E', 1.5000, 4.5000);
INSERT INTO `productmovement` VALUES (424, 14, 14, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (425, 28, 14, 1.0000, 'E', 6.0000, 6.0000);
INSERT INTO `productmovement` VALUES (426, 2, 14, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (427, 23, 14, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (428, 9, 14, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (429, 24, 14, 2.0000, 'E', 1.5000, 3.0000);
INSERT INTO `productmovement` VALUES (430, 13, 14, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (431, 19, 14, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (432, 18, 14, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (433, 16, 14, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (434, 4, 14, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (435, 7, 14, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (436, 11, 14, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (437, 1, 14, 1.0000, 'E', 7.5000, 7.5000);
INSERT INTO `productmovement` VALUES (438, 12, 14, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (439, 25, 14, 1.0000, 'E', 6.0000, 6.0000);
INSERT INTO `productmovement` VALUES (440, 29, 14, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (441, 31, 15, 3.0000, 'I', 0.3300, 0.9900);
INSERT INTO `productmovement` VALUES (442, 25, 15, 1.0000, 'I', 4.0000, 4.0000);
INSERT INTO `productmovement` VALUES (443, 9, 15, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (444, 8, 15, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (445, 20, 15, 4.0000, 'I', 8.0000, 32.0000);
INSERT INTO `productmovement` VALUES (446, 21, 15, 2.0000, 'I', 1.0000, 2.0000);
INSERT INTO `productmovement` VALUES (447, 22, 15, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (448, 18, 15, 1.0000, 'I', 1.0000, 1.0000);
INSERT INTO `productmovement` VALUES (449, 6, 15, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (450, 33, 15, 5.0000, 'I', 5.0000, 25.0000);
INSERT INTO `productmovement` VALUES (451, 30, 15, 2.0000, 'I', 0.8500, 1.7000);
INSERT INTO `productmovement` VALUES (452, 26, 15, 4.0000, 'I', 1.0000, 4.0000);
INSERT INTO `productmovement` VALUES (453, 2, 15, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (454, 1, 15, 5.0000, 'I', 5.0000, 25.0000);
INSERT INTO `productmovement` VALUES (455, 7, 15, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (456, 35, 15, 2.0000, 'I', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (457, 4, 15, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (458, 5, 15, 4.0000, 'I', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (459, 34, 15, 3.0000, 'I', 6.0000, 18.0000);
INSERT INTO `productmovement` VALUES (460, 16, 15, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (461, 13, 15, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (462, 32, 15, 2.0000, 'I', 0.8800, 1.7600);
INSERT INTO `productmovement` VALUES (463, 11, 15, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (464, 12, 15, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (465, 27, 15, 5.0000, 'I', 9.0000, 45.0000);
INSERT INTO `productmovement` VALUES (466, 28, 15, 3.0000, 'I', 4.0000, 12.0000);
INSERT INTO `productmovement` VALUES (467, 29, 15, 3.0000, 'I', 1.0000, 3.0000);
INSERT INTO `productmovement` VALUES (468, 23, 15, 2.0000, 'I', 1.0000, 2.0000);
INSERT INTO `productmovement` VALUES (469, 15, 15, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (470, 24, 15, 3.0000, 'I', 1.0000, 3.0000);
INSERT INTO `productmovement` VALUES (471, 3, 15, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (472, 17, 15, 4.0000, 'I', 8.0000, 32.0000);
INSERT INTO `productmovement` VALUES (473, 10, 15, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (474, 19, 15, 5.0000, 'I', 1.0000, 5.0000);
INSERT INTO `productmovement` VALUES (475, 14, 15, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (476, 28, 16, 1.0000, 'I', 4.0000, 4.0000);
INSERT INTO `productmovement` VALUES (477, 4, 16, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (478, 32, 16, 5.0000, 'I', 0.8800, 4.4000);
INSERT INTO `productmovement` VALUES (479, 18, 16, 3.0000, 'I', 1.0000, 3.0000);
INSERT INTO `productmovement` VALUES (480, 11, 16, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (481, 6, 16, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (482, 29, 16, 3.0000, 'I', 1.0000, 3.0000);
INSERT INTO `productmovement` VALUES (483, 23, 16, 4.0000, 'I', 1.0000, 4.0000);
INSERT INTO `productmovement` VALUES (484, 5, 16, 2.0000, 'I', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (485, 3, 16, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (486, 19, 16, 5.0000, 'I', 1.0000, 5.0000);
INSERT INTO `productmovement` VALUES (487, 7, 16, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (488, 16, 16, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (489, 14, 16, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (490, 2, 16, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (491, 35, 16, 3.0000, 'I', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (492, 30, 16, 4.0000, 'I', 0.8500, 3.4000);
INSERT INTO `productmovement` VALUES (493, 17, 16, 1.0000, 'I', 8.0000, 8.0000);
INSERT INTO `productmovement` VALUES (494, 8, 16, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (495, 33, 16, 5.0000, 'I', 5.0000, 25.0000);
INSERT INTO `productmovement` VALUES (496, 34, 16, 5.0000, 'I', 6.0000, 30.0000);
INSERT INTO `productmovement` VALUES (497, 10, 16, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (498, 20, 16, 5.0000, 'I', 8.0000, 40.0000);
INSERT INTO `productmovement` VALUES (499, 13, 16, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (500, 21, 16, 3.0000, 'I', 1.0000, 3.0000);
INSERT INTO `productmovement` VALUES (501, 22, 16, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (502, 25, 16, 3.0000, 'I', 4.0000, 12.0000);
INSERT INTO `productmovement` VALUES (503, 24, 16, 2.0000, 'I', 1.0000, 2.0000);
INSERT INTO `productmovement` VALUES (504, 15, 16, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (505, 12, 16, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (506, 31, 16, 3.0000, 'I', 0.3300, 0.9900);
INSERT INTO `productmovement` VALUES (507, 1, 16, 3.0000, 'I', 5.0000, 15.0000);
INSERT INTO `productmovement` VALUES (508, 9, 16, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (509, 27, 16, 1.0000, 'I', 9.0000, 9.0000);
INSERT INTO `productmovement` VALUES (510, 26, 16, 1.0000, 'I', 1.0000, 1.0000);
INSERT INTO `productmovement` VALUES (511, 12, 17, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (512, 11, 17, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (513, 31, 17, 2.0000, 'I', 0.3300, 0.6600);
INSERT INTO `productmovement` VALUES (514, 9, 17, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (515, 23, 17, 1.0000, 'I', 1.0000, 1.0000);
INSERT INTO `productmovement` VALUES (516, 20, 17, 3.0000, 'I', 8.0000, 24.0000);
INSERT INTO `productmovement` VALUES (517, 6, 17, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (518, 29, 17, 3.0000, 'I', 1.0000, 3.0000);
INSERT INTO `productmovement` VALUES (519, 28, 17, 3.0000, 'I', 4.0000, 12.0000);
INSERT INTO `productmovement` VALUES (520, 22, 17, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (521, 5, 17, 2.0000, 'I', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (522, 16, 17, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (523, 2, 17, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (524, 21, 17, 4.0000, 'I', 1.0000, 4.0000);
INSERT INTO `productmovement` VALUES (525, 13, 17, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (526, 33, 17, 4.0000, 'I', 5.0000, 20.0000);
INSERT INTO `productmovement` VALUES (527, 26, 17, 5.0000, 'I', 1.0000, 5.0000);
INSERT INTO `productmovement` VALUES (528, 14, 17, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (529, 3, 17, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (530, 17, 17, 4.0000, 'I', 8.0000, 32.0000);
INSERT INTO `productmovement` VALUES (531, 35, 17, 4.0000, 'I', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (532, 19, 17, 4.0000, 'I', 1.0000, 4.0000);
INSERT INTO `productmovement` VALUES (533, 24, 17, 3.0000, 'I', 1.0000, 3.0000);
INSERT INTO `productmovement` VALUES (534, 25, 17, 5.0000, 'I', 4.0000, 20.0000);
INSERT INTO `productmovement` VALUES (535, 32, 17, 2.0000, 'I', 0.8800, 1.7600);
INSERT INTO `productmovement` VALUES (536, 34, 17, 3.0000, 'I', 6.0000, 18.0000);
INSERT INTO `productmovement` VALUES (537, 4, 17, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (538, 15, 17, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (539, 1, 17, 1.0000, 'I', 5.0000, 5.0000);
INSERT INTO `productmovement` VALUES (540, 27, 17, 1.0000, 'I', 9.0000, 9.0000);
INSERT INTO `productmovement` VALUES (541, 18, 17, 3.0000, 'I', 1.0000, 3.0000);
INSERT INTO `productmovement` VALUES (542, 8, 17, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (543, 7, 17, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (544, 30, 17, 3.0000, 'I', 0.8500, 2.5500);
INSERT INTO `productmovement` VALUES (545, 10, 17, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (546, 1, 18, 4.0000, 'I', 5.0000, 20.0000);
INSERT INTO `productmovement` VALUES (547, 2, 18, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (548, 17, 18, 4.0000, 'I', 8.0000, 32.0000);
INSERT INTO `productmovement` VALUES (549, 23, 18, 1.0000, 'I', 1.0000, 1.0000);
INSERT INTO `productmovement` VALUES (550, 3, 18, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (551, 22, 18, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (552, 16, 18, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (553, 8, 18, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (554, 33, 18, 1.0000, 'I', 5.0000, 5.0000);
INSERT INTO `productmovement` VALUES (555, 28, 18, 2.0000, 'I', 4.0000, 8.0000);
INSERT INTO `productmovement` VALUES (556, 20, 18, 5.0000, 'I', 8.0000, 40.0000);
INSERT INTO `productmovement` VALUES (557, 15, 18, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (558, 12, 18, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (559, 14, 18, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (560, 19, 18, 5.0000, 'I', 1.0000, 5.0000);
INSERT INTO `productmovement` VALUES (561, 29, 18, 1.0000, 'I', 1.0000, 1.0000);
INSERT INTO `productmovement` VALUES (562, 6, 18, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (563, 7, 18, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (564, 27, 18, 1.0000, 'I', 9.0000, 9.0000);
INSERT INTO `productmovement` VALUES (565, 34, 18, 1.0000, 'I', 6.0000, 6.0000);
INSERT INTO `productmovement` VALUES (566, 26, 18, 1.0000, 'I', 1.0000, 1.0000);
INSERT INTO `productmovement` VALUES (567, 10, 18, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (568, 32, 18, 2.0000, 'I', 0.8800, 1.7600);
INSERT INTO `productmovement` VALUES (569, 13, 18, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (570, 24, 18, 3.0000, 'I', 1.0000, 3.0000);
INSERT INTO `productmovement` VALUES (571, 21, 18, 3.0000, 'I', 1.0000, 3.0000);
INSERT INTO `productmovement` VALUES (572, 30, 18, 1.0000, 'I', 0.8500, 0.8500);
INSERT INTO `productmovement` VALUES (573, 35, 18, 4.0000, 'I', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (574, 18, 18, 5.0000, 'I', 1.0000, 5.0000);
INSERT INTO `productmovement` VALUES (575, 11, 18, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (576, 31, 18, 1.0000, 'I', 0.3300, 0.3300);
INSERT INTO `productmovement` VALUES (577, 4, 18, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (578, 9, 18, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (579, 25, 18, 3.0000, 'I', 4.0000, 12.0000);
INSERT INTO `productmovement` VALUES (580, 5, 18, 3.0000, 'I', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (581, 1, 19, 3.0000, 'E', 7.5000, 22.5000);
INSERT INTO `productmovement` VALUES (582, 15, 19, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (583, 13, 19, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (584, 30, 19, 1.0000, 'E', 1.2800, 1.2800);
INSERT INTO `productmovement` VALUES (585, 11, 19, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (586, 29, 19, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (587, 21, 19, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (588, 17, 19, 5.0000, 'E', 12.0000, 60.0000);
INSERT INTO `productmovement` VALUES (589, 10, 19, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (590, 26, 19, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (591, 5, 19, 1.0000, 'E', 4.5000, 4.5000);
INSERT INTO `productmovement` VALUES (592, 3, 19, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (593, 34, 19, 1.0000, 'E', 9.0000, 9.0000);
INSERT INTO `productmovement` VALUES (594, 32, 19, 1.0000, 'E', 1.3200, 1.3200);
INSERT INTO `productmovement` VALUES (595, 9, 19, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (596, 22, 19, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (597, 24, 19, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (598, 4, 19, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (599, 18, 19, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (600, 31, 19, 2.0000, 'E', 0.5000, 1.0000);
INSERT INTO `productmovement` VALUES (601, 28, 19, 2.0000, 'E', 6.0000, 12.0000);
INSERT INTO `productmovement` VALUES (602, 23, 19, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (603, 2, 19, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (604, 12, 19, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (605, 27, 19, 4.0000, 'E', 13.5000, 54.0000);
INSERT INTO `productmovement` VALUES (606, 6, 19, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (607, 7, 19, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (608, 25, 19, 2.0000, 'E', 6.0000, 12.0000);
INSERT INTO `productmovement` VALUES (609, 14, 19, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (610, 19, 19, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (611, 16, 19, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (612, 20, 19, 2.0000, 'E', 12.0000, 24.0000);
INSERT INTO `productmovement` VALUES (613, 35, 19, 5.0000, 'E', 4.5000, 22.5000);
INSERT INTO `productmovement` VALUES (614, 33, 19, 2.0000, 'E', 7.5000, 15.0000);
INSERT INTO `productmovement` VALUES (615, 8, 19, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (616, 29, 20, 2.0000, 'E', 1.5000, 3.0000);
INSERT INTO `productmovement` VALUES (617, 30, 20, 4.0000, 'E', 1.2800, 5.1200);
INSERT INTO `productmovement` VALUES (618, 5, 20, 5.0000, 'E', 4.5000, 22.5000);
INSERT INTO `productmovement` VALUES (619, 6, 20, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (620, 8, 20, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (621, 31, 20, 4.0000, 'E', 0.5000, 2.0000);
INSERT INTO `productmovement` VALUES (622, 35, 20, 5.0000, 'E', 4.5000, 22.5000);
INSERT INTO `productmovement` VALUES (623, 14, 20, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (624, 4, 20, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (625, 20, 20, 4.0000, 'E', 12.0000, 48.0000);
INSERT INTO `productmovement` VALUES (626, 28, 20, 5.0000, 'E', 6.0000, 30.0000);
INSERT INTO `productmovement` VALUES (627, 13, 20, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (628, 19, 20, 3.0000, 'E', 1.5000, 4.5000);
INSERT INTO `productmovement` VALUES (629, 12, 20, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (630, 10, 20, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (631, 24, 20, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (632, 22, 20, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (633, 16, 20, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (634, 33, 20, 3.0000, 'E', 7.5000, 22.5000);
INSERT INTO `productmovement` VALUES (635, 9, 20, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (636, 2, 20, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (637, 15, 20, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (638, 7, 20, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (639, 26, 20, 3.0000, 'E', 1.5000, 4.5000);
INSERT INTO `productmovement` VALUES (640, 1, 20, 4.0000, 'E', 7.5000, 30.0000);
INSERT INTO `productmovement` VALUES (641, 27, 20, 3.0000, 'E', 13.5000, 40.5000);
INSERT INTO `productmovement` VALUES (642, 11, 20, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (643, 34, 20, 5.0000, 'E', 9.0000, 45.0000);
INSERT INTO `productmovement` VALUES (644, 3, 20, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (645, 18, 20, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (646, 23, 20, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (647, 25, 20, 1.0000, 'E', 6.0000, 6.0000);
INSERT INTO `productmovement` VALUES (648, 17, 20, 1.0000, 'E', 12.0000, 12.0000);
INSERT INTO `productmovement` VALUES (649, 21, 20, 3.0000, 'E', 1.5000, 4.5000);
INSERT INTO `productmovement` VALUES (650, 9, 21, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (651, 2, 21, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (652, 13, 21, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (653, 26, 21, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (654, 8, 21, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (655, 15, 21, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (656, 14, 21, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (657, 23, 21, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (658, 20, 21, 5.0000, 'E', 12.0000, 60.0000);
INSERT INTO `productmovement` VALUES (659, 22, 21, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (660, 11, 21, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (661, 21, 21, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (662, 5, 21, 1.0000, 'E', 4.5000, 4.5000);
INSERT INTO `productmovement` VALUES (663, 3, 21, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (664, 34, 21, 5.0000, 'E', 9.0000, 45.0000);
INSERT INTO `productmovement` VALUES (665, 33, 21, 3.0000, 'E', 7.5000, 22.5000);
INSERT INTO `productmovement` VALUES (666, 31, 21, 4.0000, 'E', 0.5000, 2.0000);
INSERT INTO `productmovement` VALUES (667, 27, 21, 4.0000, 'E', 13.5000, 54.0000);
INSERT INTO `productmovement` VALUES (668, 6, 21, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (669, 19, 21, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (670, 17, 21, 5.0000, 'E', 12.0000, 60.0000);
INSERT INTO `productmovement` VALUES (671, 16, 21, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (672, 28, 21, 1.0000, 'E', 6.0000, 6.0000);
INSERT INTO `productmovement` VALUES (673, 1, 21, 1.0000, 'E', 7.5000, 7.5000);
INSERT INTO `productmovement` VALUES (674, 18, 21, 2.0000, 'E', 1.5000, 3.0000);
INSERT INTO `productmovement` VALUES (675, 24, 21, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (676, 10, 21, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (677, 35, 21, 4.0000, 'E', 4.5000, 18.0000);
INSERT INTO `productmovement` VALUES (678, 7, 21, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (679, 30, 21, 4.0000, 'E', 1.2800, 5.1200);
INSERT INTO `productmovement` VALUES (680, 4, 21, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (681, 29, 21, 3.0000, 'E', 1.5000, 4.5000);
INSERT INTO `productmovement` VALUES (682, 12, 21, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (683, 25, 21, 5.0000, 'E', 6.0000, 30.0000);
INSERT INTO `productmovement` VALUES (684, 4, 22, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (685, 1, 22, 1.0000, 'I', 5.0000, 5.0000);
INSERT INTO `productmovement` VALUES (686, 25, 22, 5.0000, 'I', 4.0000, 20.0000);
INSERT INTO `productmovement` VALUES (687, 15, 22, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (688, 24, 22, 1.0000, 'I', 1.0000, 1.0000);
INSERT INTO `productmovement` VALUES (689, 9, 22, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (690, 34, 22, 1.0000, 'I', 6.0000, 6.0000);
INSERT INTO `productmovement` VALUES (691, 20, 22, 2.0000, 'I', 8.0000, 16.0000);
INSERT INTO `productmovement` VALUES (692, 12, 22, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (693, 13, 22, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (694, 30, 22, 1.0000, 'I', 0.8500, 0.8500);
INSERT INTO `productmovement` VALUES (695, 5, 22, 4.0000, 'I', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (696, 16, 22, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (697, 23, 22, 3.0000, 'I', 1.0000, 3.0000);
INSERT INTO `productmovement` VALUES (698, 35, 22, 5.0000, 'I', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (699, 2, 22, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (700, 10, 22, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (701, 8, 22, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (702, 27, 22, 3.0000, 'I', 9.0000, 27.0000);
INSERT INTO `productmovement` VALUES (703, 32, 22, 3.0000, 'I', 0.8800, 2.6400);
INSERT INTO `productmovement` VALUES (704, 33, 22, 5.0000, 'I', 5.0000, 25.0000);
INSERT INTO `productmovement` VALUES (705, 3, 22, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (706, 6, 22, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (707, 18, 22, 3.0000, 'I', 1.0000, 3.0000);
INSERT INTO `productmovement` VALUES (708, 26, 22, 4.0000, 'I', 1.0000, 4.0000);
INSERT INTO `productmovement` VALUES (709, 7, 22, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (710, 11, 22, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (711, 29, 22, 1.0000, 'I', 1.0000, 1.0000);
INSERT INTO `productmovement` VALUES (712, 31, 22, 2.0000, 'I', 0.3300, 0.6600);
INSERT INTO `productmovement` VALUES (713, 14, 22, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (714, 21, 22, 4.0000, 'I', 1.0000, 4.0000);
INSERT INTO `productmovement` VALUES (715, 28, 22, 1.0000, 'I', 4.0000, 4.0000);
INSERT INTO `productmovement` VALUES (716, 22, 22, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (717, 17, 22, 3.0000, 'I', 8.0000, 24.0000);
INSERT INTO `productmovement` VALUES (718, 19, 22, 5.0000, 'I', 1.0000, 5.0000);
INSERT INTO `productmovement` VALUES (719, 8, 23, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (720, 4, 23, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (721, 23, 23, 3.0000, 'E', 1.5000, 4.5000);
INSERT INTO `productmovement` VALUES (722, 26, 23, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (723, 21, 23, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (724, 25, 23, 4.0000, 'E', 6.0000, 24.0000);
INSERT INTO `productmovement` VALUES (725, 15, 23, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (726, 28, 23, 2.0000, 'E', 6.0000, 12.0000);
INSERT INTO `productmovement` VALUES (727, 22, 23, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (728, 9, 23, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (729, 34, 23, 4.0000, 'E', 9.0000, 36.0000);
INSERT INTO `productmovement` VALUES (730, 12, 23, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (731, 19, 23, 2.0000, 'E', 1.5000, 3.0000);
INSERT INTO `productmovement` VALUES (732, 32, 23, 5.0000, 'E', 1.3200, 6.6000);
INSERT INTO `productmovement` VALUES (733, 16, 23, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (734, 24, 23, 2.0000, 'E', 1.5000, 3.0000);
INSERT INTO `productmovement` VALUES (735, 13, 23, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (736, 20, 23, 4.0000, 'E', 12.0000, 48.0000);
INSERT INTO `productmovement` VALUES (737, 30, 23, 4.0000, 'E', 1.2800, 5.1200);
INSERT INTO `productmovement` VALUES (738, 11, 23, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (739, 29, 23, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (740, 2, 23, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (741, 31, 23, 1.0000, 'E', 0.5000, 0.5000);
INSERT INTO `productmovement` VALUES (742, 6, 23, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (743, 14, 23, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (744, 10, 23, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (745, 17, 23, 2.0000, 'E', 12.0000, 24.0000);
INSERT INTO `productmovement` VALUES (746, 33, 23, 2.0000, 'E', 7.5000, 15.0000);
INSERT INTO `productmovement` VALUES (747, 35, 23, 3.0000, 'E', 4.5000, 13.5000);
INSERT INTO `productmovement` VALUES (748, 18, 23, 2.0000, 'E', 1.5000, 3.0000);
INSERT INTO `productmovement` VALUES (749, 1, 23, 4.0000, 'E', 7.5000, 30.0000);
INSERT INTO `productmovement` VALUES (750, 3, 23, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (751, 5, 23, 4.0000, 'E', 4.5000, 18.0000);
INSERT INTO `productmovement` VALUES (752, 7, 23, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (753, 9, 24, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (754, 3, 24, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (755, 1, 24, 1.0000, 'I', 5.0000, 5.0000);
INSERT INTO `productmovement` VALUES (756, 14, 24, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (757, 12, 24, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (758, 15, 24, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (759, 29, 24, 4.0000, 'I', 1.0000, 4.0000);
INSERT INTO `productmovement` VALUES (760, 28, 24, 2.0000, 'I', 4.0000, 8.0000);
INSERT INTO `productmovement` VALUES (761, 26, 24, 5.0000, 'I', 1.0000, 5.0000);
INSERT INTO `productmovement` VALUES (762, 33, 24, 5.0000, 'I', 5.0000, 25.0000);
INSERT INTO `productmovement` VALUES (763, 25, 24, 1.0000, 'I', 4.0000, 4.0000);
INSERT INTO `productmovement` VALUES (764, 20, 24, 1.0000, 'I', 8.0000, 8.0000);
INSERT INTO `productmovement` VALUES (765, 17, 24, 3.0000, 'I', 8.0000, 24.0000);
INSERT INTO `productmovement` VALUES (766, 31, 24, 1.0000, 'I', 0.3300, 0.3300);
INSERT INTO `productmovement` VALUES (767, 34, 24, 2.0000, 'I', 6.0000, 12.0000);
INSERT INTO `productmovement` VALUES (768, 21, 24, 5.0000, 'I', 1.0000, 5.0000);
INSERT INTO `productmovement` VALUES (769, 19, 24, 2.0000, 'I', 1.0000, 2.0000);
INSERT INTO `productmovement` VALUES (770, 18, 24, 3.0000, 'I', 1.0000, 3.0000);
INSERT INTO `productmovement` VALUES (771, 13, 24, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (772, 4, 24, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (773, 5, 24, 4.0000, 'I', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (774, 6, 24, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (775, 10, 24, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (776, 30, 24, 1.0000, 'I', 0.8500, 0.8500);
INSERT INTO `productmovement` VALUES (777, 32, 24, 2.0000, 'I', 0.8800, 1.7600);
INSERT INTO `productmovement` VALUES (778, 24, 24, 1.0000, 'I', 1.0000, 1.0000);
INSERT INTO `productmovement` VALUES (779, 11, 24, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (780, 22, 24, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (781, 7, 24, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (782, 35, 24, 1.0000, 'I', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (783, 8, 24, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (784, 23, 24, 3.0000, 'I', 1.0000, 3.0000);
INSERT INTO `productmovement` VALUES (785, 2, 24, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (786, 27, 24, 3.0000, 'I', 9.0000, 27.0000);
INSERT INTO `productmovement` VALUES (787, 16, 24, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (788, 18, 25, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (789, 11, 25, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (790, 22, 25, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (791, 15, 25, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (792, 4, 25, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (793, 27, 25, 3.0000, 'E', 13.5000, 40.5000);
INSERT INTO `productmovement` VALUES (794, 6, 25, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (795, 2, 25, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (796, 34, 25, 5.0000, 'E', 9.0000, 45.0000);
INSERT INTO `productmovement` VALUES (797, 23, 25, 2.0000, 'E', 1.5000, 3.0000);
INSERT INTO `productmovement` VALUES (798, 19, 25, 3.0000, 'E', 1.5000, 4.5000);
INSERT INTO `productmovement` VALUES (799, 9, 25, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (800, 16, 25, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (801, 13, 25, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (802, 33, 25, 2.0000, 'E', 7.5000, 15.0000);
INSERT INTO `productmovement` VALUES (803, 31, 25, 3.0000, 'E', 0.5000, 1.5000);
INSERT INTO `productmovement` VALUES (804, 20, 25, 2.0000, 'E', 12.0000, 24.0000);
INSERT INTO `productmovement` VALUES (805, 14, 25, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (806, 30, 25, 5.0000, 'E', 1.2800, 6.4000);
INSERT INTO `productmovement` VALUES (807, 10, 25, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (808, 7, 25, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (809, 8, 25, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (810, 21, 25, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (811, 5, 25, 2.0000, 'E', 4.5000, 9.0000);
INSERT INTO `productmovement` VALUES (812, 25, 25, 4.0000, 'E', 6.0000, 24.0000);
INSERT INTO `productmovement` VALUES (813, 26, 25, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (814, 17, 25, 4.0000, 'E', 12.0000, 48.0000);
INSERT INTO `productmovement` VALUES (815, 24, 25, 2.0000, 'E', 1.5000, 3.0000);
INSERT INTO `productmovement` VALUES (816, 12, 25, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (817, 28, 25, 1.0000, 'E', 6.0000, 6.0000);
INSERT INTO `productmovement` VALUES (818, 1, 25, 1.0000, 'E', 7.5000, 7.5000);
INSERT INTO `productmovement` VALUES (819, 3, 25, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (820, 35, 25, 3.0000, 'E', 4.5000, 13.5000);
INSERT INTO `productmovement` VALUES (821, 29, 25, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (822, 11, 26, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (823, 13, 26, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (824, 12, 26, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (825, 20, 26, 1.0000, 'E', 12.0000, 12.0000);
INSERT INTO `productmovement` VALUES (826, 9, 26, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (827, 15, 26, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (828, 35, 26, 2.0000, 'E', 4.5000, 9.0000);
INSERT INTO `productmovement` VALUES (829, 21, 26, 3.0000, 'E', 1.5000, 4.5000);
INSERT INTO `productmovement` VALUES (830, 1, 26, 1.0000, 'E', 7.5000, 7.5000);
INSERT INTO `productmovement` VALUES (831, 16, 26, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (832, 19, 26, 2.0000, 'E', 1.5000, 3.0000);
INSERT INTO `productmovement` VALUES (833, 30, 26, 5.0000, 'E', 1.2800, 6.4000);
INSERT INTO `productmovement` VALUES (834, 28, 26, 2.0000, 'E', 6.0000, 12.0000);
INSERT INTO `productmovement` VALUES (835, 31, 26, 4.0000, 'E', 0.5000, 2.0000);
INSERT INTO `productmovement` VALUES (836, 23, 26, 3.0000, 'E', 1.5000, 4.5000);
INSERT INTO `productmovement` VALUES (837, 7, 26, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (838, 6, 26, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (839, 26, 26, 2.0000, 'E', 1.5000, 3.0000);
INSERT INTO `productmovement` VALUES (840, 8, 26, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (841, 24, 26, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (842, 3, 26, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (843, 29, 26, 3.0000, 'E', 1.5000, 4.5000);
INSERT INTO `productmovement` VALUES (844, 34, 26, 5.0000, 'E', 9.0000, 45.0000);
INSERT INTO `productmovement` VALUES (845, 14, 26, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (846, 4, 26, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (847, 17, 26, 4.0000, 'E', 12.0000, 48.0000);
INSERT INTO `productmovement` VALUES (848, 22, 26, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (849, 33, 26, 3.0000, 'E', 7.5000, 22.5000);
INSERT INTO `productmovement` VALUES (850, 25, 26, 1.0000, 'E', 6.0000, 6.0000);
INSERT INTO `productmovement` VALUES (851, 18, 26, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (852, 2, 26, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (853, 10, 26, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (854, 5, 26, 4.0000, 'E', 4.5000, 18.0000);
INSERT INTO `productmovement` VALUES (855, 35, 27, 5.0000, 'E', 4.5000, 22.5000);
INSERT INTO `productmovement` VALUES (856, 9, 27, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (857, 4, 27, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (858, 33, 27, 4.0000, 'E', 7.5000, 30.0000);
INSERT INTO `productmovement` VALUES (859, 3, 27, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (860, 23, 27, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (861, 10, 27, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (862, 34, 27, 3.0000, 'E', 9.0000, 27.0000);
INSERT INTO `productmovement` VALUES (863, 14, 27, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (864, 30, 27, 1.0000, 'E', 1.2800, 1.2800);
INSERT INTO `productmovement` VALUES (865, 28, 27, 1.0000, 'E', 6.0000, 6.0000);
INSERT INTO `productmovement` VALUES (866, 15, 27, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (867, 5, 27, 2.0000, 'E', 4.5000, 9.0000);
INSERT INTO `productmovement` VALUES (868, 22, 27, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (869, 20, 27, 5.0000, 'E', 12.0000, 60.0000);
INSERT INTO `productmovement` VALUES (870, 7, 27, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (871, 29, 27, 3.0000, 'E', 1.5000, 4.5000);
INSERT INTO `productmovement` VALUES (872, 12, 27, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (873, 31, 27, 5.0000, 'E', 0.5000, 2.5000);
INSERT INTO `productmovement` VALUES (874, 8, 27, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (875, 13, 27, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (876, 26, 27, 3.0000, 'E', 1.5000, 4.5000);
INSERT INTO `productmovement` VALUES (877, 19, 27, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (878, 6, 27, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (879, 2, 27, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (880, 21, 27, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (881, 16, 27, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (882, 18, 27, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (883, 11, 27, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (884, 1, 27, 1.0000, 'E', 7.5000, 7.5000);
INSERT INTO `productmovement` VALUES (885, 24, 27, 3.0000, 'E', 1.5000, 4.5000);
INSERT INTO `productmovement` VALUES (886, 25, 27, 4.0000, 'E', 6.0000, 24.0000);
INSERT INTO `productmovement` VALUES (887, 17, 27, 5.0000, 'E', 12.0000, 60.0000);
INSERT INTO `productmovement` VALUES (888, 24, 28, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (889, 12, 28, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (890, 7, 28, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (891, 17, 28, 2.0000, 'E', 12.0000, 24.0000);
INSERT INTO `productmovement` VALUES (892, 33, 28, 4.0000, 'E', 7.5000, 30.0000);
INSERT INTO `productmovement` VALUES (893, 18, 28, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (894, 23, 28, 2.0000, 'E', 1.5000, 3.0000);
INSERT INTO `productmovement` VALUES (895, 19, 28, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (896, 9, 28, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (897, 15, 28, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (898, 5, 28, 4.0000, 'E', 4.5000, 18.0000);
INSERT INTO `productmovement` VALUES (899, 31, 28, 4.0000, 'E', 0.5000, 2.0000);
INSERT INTO `productmovement` VALUES (900, 21, 28, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (901, 25, 28, 5.0000, 'E', 6.0000, 30.0000);
INSERT INTO `productmovement` VALUES (902, 35, 28, 4.0000, 'E', 4.5000, 18.0000);
INSERT INTO `productmovement` VALUES (903, 22, 28, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (904, 1, 28, 5.0000, 'E', 7.5000, 37.5000);
INSERT INTO `productmovement` VALUES (905, 2, 28, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (906, 16, 28, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (907, 20, 28, 2.0000, 'E', 12.0000, 24.0000);
INSERT INTO `productmovement` VALUES (908, 29, 28, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (909, 10, 28, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (910, 34, 28, 5.0000, 'E', 9.0000, 45.0000);
INSERT INTO `productmovement` VALUES (911, 3, 28, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (912, 30, 28, 3.0000, 'E', 1.2800, 3.8400);
INSERT INTO `productmovement` VALUES (913, 4, 28, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (914, 11, 28, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (915, 6, 28, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (916, 8, 28, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (917, 14, 28, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (918, 26, 28, 3.0000, 'E', 1.5000, 4.5000);
INSERT INTO `productmovement` VALUES (919, 13, 28, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (920, 26, 29, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (921, 19, 29, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (922, 35, 29, 3.0000, 'E', 4.5000, 13.5000);
INSERT INTO `productmovement` VALUES (923, 21, 29, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (924, 2, 29, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (925, 16, 29, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (926, 15, 29, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (927, 12, 29, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (928, 13, 29, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (929, 17, 29, 4.0000, 'E', 12.0000, 48.0000);
INSERT INTO `productmovement` VALUES (930, 3, 29, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (931, 1, 29, 5.0000, 'E', 7.5000, 37.5000);
INSERT INTO `productmovement` VALUES (932, 24, 29, 3.0000, 'E', 1.5000, 4.5000);
INSERT INTO `productmovement` VALUES (933, 8, 29, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (934, 25, 29, 1.0000, 'E', 6.0000, 6.0000);
INSERT INTO `productmovement` VALUES (935, 23, 29, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (936, 31, 29, 4.0000, 'E', 0.5000, 2.0000);
INSERT INTO `productmovement` VALUES (937, 9, 29, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (938, 10, 29, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (939, 22, 29, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (940, 34, 29, 1.0000, 'E', 9.0000, 9.0000);
INSERT INTO `productmovement` VALUES (941, 4, 29, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (942, 33, 29, 4.0000, 'E', 7.5000, 30.0000);
INSERT INTO `productmovement` VALUES (943, 18, 29, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (944, 29, 29, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (945, 20, 29, 1.0000, 'E', 12.0000, 12.0000);
INSERT INTO `productmovement` VALUES (946, 11, 29, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (947, 7, 29, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (948, 30, 29, 2.0000, 'E', 1.2800, 2.5600);
INSERT INTO `productmovement` VALUES (949, 6, 29, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (950, 5, 29, 3.0000, 'E', 4.5000, 13.5000);
INSERT INTO `productmovement` VALUES (951, 14, 29, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (952, 33, 30, 1.0000, 'I', 5.0000, 5.0000);
INSERT INTO `productmovement` VALUES (953, 19, 30, 3.0000, 'I', 1.0000, 3.0000);
INSERT INTO `productmovement` VALUES (954, 1, 30, 4.0000, 'I', 5.0000, 20.0000);
INSERT INTO `productmovement` VALUES (955, 8, 30, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (956, 34, 30, 3.0000, 'I', 6.0000, 18.0000);
INSERT INTO `productmovement` VALUES (957, 7, 30, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (958, 5, 30, 3.0000, 'I', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (959, 3, 30, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (960, 26, 30, 5.0000, 'I', 1.0000, 5.0000);
INSERT INTO `productmovement` VALUES (961, 27, 30, 2.0000, 'I', 9.0000, 18.0000);
INSERT INTO `productmovement` VALUES (962, 17, 30, 2.0000, 'I', 8.0000, 16.0000);
INSERT INTO `productmovement` VALUES (963, 32, 30, 2.0000, 'I', 0.8800, 1.7600);
INSERT INTO `productmovement` VALUES (964, 28, 30, 5.0000, 'I', 4.0000, 20.0000);
INSERT INTO `productmovement` VALUES (965, 6, 30, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (966, 10, 30, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (967, 16, 30, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (968, 23, 30, 1.0000, 'I', 1.0000, 1.0000);
INSERT INTO `productmovement` VALUES (969, 35, 30, 4.0000, 'I', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (970, 12, 30, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (971, 31, 30, 2.0000, 'I', 0.3300, 0.6600);
INSERT INTO `productmovement` VALUES (972, 15, 30, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (973, 21, 30, 1.0000, 'I', 1.0000, 1.0000);
INSERT INTO `productmovement` VALUES (974, 14, 30, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (975, 29, 30, 2.0000, 'I', 1.0000, 2.0000);
INSERT INTO `productmovement` VALUES (976, 22, 30, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (977, 24, 30, 2.0000, 'I', 1.0000, 2.0000);
INSERT INTO `productmovement` VALUES (978, 2, 30, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (979, 18, 30, 3.0000, 'I', 1.0000, 3.0000);
INSERT INTO `productmovement` VALUES (980, 11, 30, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (981, 9, 30, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (982, 30, 30, 3.0000, 'I', 0.8500, 2.5500);
INSERT INTO `productmovement` VALUES (983, 20, 30, 2.0000, 'I', 8.0000, 16.0000);
INSERT INTO `productmovement` VALUES (984, 4, 30, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (985, 25, 30, 4.0000, 'I', 4.0000, 16.0000);
INSERT INTO `productmovement` VALUES (986, 13, 30, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (987, 10, 31, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (988, 20, 31, 2.0000, 'E', 12.0000, 24.0000);
INSERT INTO `productmovement` VALUES (989, 35, 31, 2.0000, 'E', 4.5000, 9.0000);
INSERT INTO `productmovement` VALUES (990, 34, 31, 3.0000, 'E', 9.0000, 27.0000);
INSERT INTO `productmovement` VALUES (991, 1, 31, 3.0000, 'E', 7.5000, 22.5000);
INSERT INTO `productmovement` VALUES (992, 13, 31, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (993, 33, 31, 2.0000, 'E', 7.5000, 15.0000);
INSERT INTO `productmovement` VALUES (994, 19, 31, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (995, 3, 31, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (996, 31, 31, 3.0000, 'E', 0.5000, 1.5000);
INSERT INTO `productmovement` VALUES (997, 29, 31, 2.0000, 'E', 1.5000, 3.0000);
INSERT INTO `productmovement` VALUES (998, 4, 31, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (999, 16, 31, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1000, 6, 31, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1001, 21, 31, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (1002, 11, 31, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1003, 9, 31, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (1004, 5, 31, 4.0000, 'E', 4.5000, 18.0000);
INSERT INTO `productmovement` VALUES (1005, 18, 31, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (1006, 22, 31, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1007, 2, 31, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1008, 28, 31, 3.0000, 'E', 6.0000, 18.0000);
INSERT INTO `productmovement` VALUES (1009, 8, 31, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1010, 12, 31, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1011, 15, 31, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (1012, 7, 31, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1013, 14, 31, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (1014, 25, 31, 1.0000, 'E', 6.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1015, 32, 31, 1.0000, 'E', 1.3200, 1.3200);
INSERT INTO `productmovement` VALUES (1016, 24, 31, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (1017, 27, 31, 3.0000, 'E', 13.5000, 40.5000);
INSERT INTO `productmovement` VALUES (1018, 17, 31, 3.0000, 'E', 12.0000, 36.0000);
INSERT INTO `productmovement` VALUES (1019, 30, 31, 1.0000, 'E', 1.2800, 1.2800);
INSERT INTO `productmovement` VALUES (1020, 23, 31, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (1021, 2, 32, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (1022, 23, 32, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (1023, 32, 32, 2.0000, 'E', 1.3200, 2.6400);
INSERT INTO `productmovement` VALUES (1024, 19, 32, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (1025, 30, 32, 3.0000, 'E', 1.2800, 3.8400);
INSERT INTO `productmovement` VALUES (1026, 4, 32, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (1027, 7, 32, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1028, 21, 32, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (1029, 13, 32, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1030, 33, 32, 3.0000, 'E', 7.5000, 22.5000);
INSERT INTO `productmovement` VALUES (1031, 11, 32, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1032, 1, 32, 5.0000, 'E', 7.5000, 37.5000);
INSERT INTO `productmovement` VALUES (1033, 27, 32, 2.0000, 'E', 13.5000, 27.0000);
INSERT INTO `productmovement` VALUES (1034, 16, 32, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1035, 20, 32, 2.0000, 'E', 12.0000, 24.0000);
INSERT INTO `productmovement` VALUES (1036, 35, 32, 5.0000, 'E', 4.5000, 22.5000);
INSERT INTO `productmovement` VALUES (1037, 12, 32, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (1038, 31, 32, 5.0000, 'E', 0.5000, 2.5000);
INSERT INTO `productmovement` VALUES (1039, 14, 32, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1040, 6, 32, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (1041, 10, 32, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (1042, 34, 32, 4.0000, 'E', 9.0000, 36.0000);
INSERT INTO `productmovement` VALUES (1043, 25, 32, 1.0000, 'E', 6.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1044, 29, 32, 3.0000, 'E', 1.5000, 4.5000);
INSERT INTO `productmovement` VALUES (1045, 24, 32, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (1046, 18, 32, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (1047, 3, 32, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1048, 8, 32, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (1049, 5, 32, 1.0000, 'E', 4.5000, 4.5000);
INSERT INTO `productmovement` VALUES (1050, 22, 32, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1051, 28, 32, 4.0000, 'E', 6.0000, 24.0000);
INSERT INTO `productmovement` VALUES (1052, 9, 32, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1053, 15, 32, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1054, 17, 32, 5.0000, 'E', 12.0000, 60.0000);
INSERT INTO `productmovement` VALUES (1055, 10, 33, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1056, 24, 33, 1.0000, 'I', 1.0000, 1.0000);
INSERT INTO `productmovement` VALUES (1057, 12, 33, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1058, 15, 33, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1059, 5, 33, 1.0000, 'I', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (1060, 29, 33, 4.0000, 'I', 1.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1061, 21, 33, 5.0000, 'I', 1.0000, 5.0000);
INSERT INTO `productmovement` VALUES (1062, 14, 33, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1063, 4, 33, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1064, 18, 33, 5.0000, 'I', 1.0000, 5.0000);
INSERT INTO `productmovement` VALUES (1065, 35, 33, 4.0000, 'I', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1066, 2, 33, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1067, 16, 33, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1068, 19, 33, 1.0000, 'I', 1.0000, 1.0000);
INSERT INTO `productmovement` VALUES (1069, 17, 33, 5.0000, 'I', 8.0000, 40.0000);
INSERT INTO `productmovement` VALUES (1070, 31, 33, 5.0000, 'I', 0.3300, 1.6500);
INSERT INTO `productmovement` VALUES (1071, 1, 33, 1.0000, 'I', 5.0000, 5.0000);
INSERT INTO `productmovement` VALUES (1072, 8, 33, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (1073, 7, 33, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1074, 22, 33, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1075, 9, 33, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1076, 26, 33, 5.0000, 'I', 1.0000, 5.0000);
INSERT INTO `productmovement` VALUES (1077, 6, 33, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (1078, 34, 33, 2.0000, 'I', 6.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1079, 20, 33, 3.0000, 'I', 8.0000, 24.0000);
INSERT INTO `productmovement` VALUES (1080, 33, 33, 5.0000, 'I', 5.0000, 25.0000);
INSERT INTO `productmovement` VALUES (1081, 11, 33, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (1082, 3, 33, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1083, 32, 33, 4.0000, 'I', 0.8800, 3.5200);
INSERT INTO `productmovement` VALUES (1084, 13, 33, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1085, 27, 33, 3.0000, 'I', 9.0000, 27.0000);
INSERT INTO `productmovement` VALUES (1086, 28, 33, 3.0000, 'I', 4.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1087, 25, 33, 5.0000, 'I', 4.0000, 20.0000);
INSERT INTO `productmovement` VALUES (1088, 23, 33, 2.0000, 'I', 1.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1089, 30, 33, 2.0000, 'I', 0.8500, 1.7000);
INSERT INTO `productmovement` VALUES (1090, 27, 34, 3.0000, 'I', 9.0000, 27.0000);
INSERT INTO `productmovement` VALUES (1091, 20, 34, 2.0000, 'I', 8.0000, 16.0000);
INSERT INTO `productmovement` VALUES (1092, 7, 34, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1093, 5, 34, 2.0000, 'I', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1094, 10, 34, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1095, 24, 34, 4.0000, 'I', 1.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1096, 29, 34, 3.0000, 'I', 1.0000, 3.0000);
INSERT INTO `productmovement` VALUES (1097, 34, 34, 2.0000, 'I', 6.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1098, 33, 34, 2.0000, 'I', 5.0000, 10.0000);
INSERT INTO `productmovement` VALUES (1099, 12, 34, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1100, 4, 34, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1101, 13, 34, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1102, 11, 34, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1103, 19, 34, 3.0000, 'I', 1.0000, 3.0000);
INSERT INTO `productmovement` VALUES (1104, 18, 34, 5.0000, 'I', 1.0000, 5.0000);
INSERT INTO `productmovement` VALUES (1105, 2, 34, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1106, 28, 34, 3.0000, 'I', 4.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1107, 26, 34, 4.0000, 'I', 1.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1108, 6, 34, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1109, 16, 34, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1110, 3, 34, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1111, 32, 34, 1.0000, 'I', 0.8800, 0.8800);
INSERT INTO `productmovement` VALUES (1112, 35, 34, 1.0000, 'I', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (1113, 31, 34, 3.0000, 'I', 0.3300, 0.9900);
INSERT INTO `productmovement` VALUES (1114, 1, 34, 5.0000, 'I', 5.0000, 25.0000);
INSERT INTO `productmovement` VALUES (1115, 8, 34, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1116, 17, 34, 2.0000, 'I', 8.0000, 16.0000);
INSERT INTO `productmovement` VALUES (1117, 14, 34, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (1118, 21, 34, 5.0000, 'I', 1.0000, 5.0000);
INSERT INTO `productmovement` VALUES (1119, 30, 34, 5.0000, 'I', 0.8500, 4.2500);
INSERT INTO `productmovement` VALUES (1120, 25, 34, 1.0000, 'I', 4.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1121, 9, 34, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (1122, 22, 34, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1123, 15, 34, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (1124, 23, 34, 1.0000, 'I', 1.0000, 1.0000);
INSERT INTO `productmovement` VALUES (1125, 20, 35, 3.0000, 'I', 8.0000, 24.0000);
INSERT INTO `productmovement` VALUES (1126, 6, 35, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1127, 3, 35, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1128, 30, 35, 1.0000, 'I', 0.8500, 0.8500);
INSERT INTO `productmovement` VALUES (1129, 27, 35, 4.0000, 'I', 9.0000, 36.0000);
INSERT INTO `productmovement` VALUES (1130, 8, 35, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1131, 33, 35, 3.0000, 'I', 5.0000, 15.0000);
INSERT INTO `productmovement` VALUES (1132, 9, 35, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1133, 16, 35, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1134, 35, 35, 1.0000, 'I', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (1135, 24, 35, 1.0000, 'I', 1.0000, 1.0000);
INSERT INTO `productmovement` VALUES (1136, 31, 35, 4.0000, 'I', 0.3300, 1.3200);
INSERT INTO `productmovement` VALUES (1137, 29, 35, 4.0000, 'I', 1.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1138, 22, 35, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1139, 11, 35, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1140, 26, 35, 4.0000, 'I', 1.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1141, 10, 35, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1142, 13, 35, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (1143, 32, 35, 2.0000, 'I', 0.8800, 1.7600);
INSERT INTO `productmovement` VALUES (1144, 12, 35, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1145, 19, 35, 4.0000, 'I', 1.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1146, 1, 35, 5.0000, 'I', 5.0000, 25.0000);
INSERT INTO `productmovement` VALUES (1147, 28, 35, 5.0000, 'I', 4.0000, 20.0000);
INSERT INTO `productmovement` VALUES (1148, 5, 35, 2.0000, 'I', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1149, 7, 35, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1150, 15, 35, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1151, 14, 35, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1152, 21, 35, 1.0000, 'I', 1.0000, 1.0000);
INSERT INTO `productmovement` VALUES (1153, 34, 35, 5.0000, 'I', 6.0000, 30.0000);
INSERT INTO `productmovement` VALUES (1154, 25, 35, 2.0000, 'I', 4.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1155, 18, 35, 2.0000, 'I', 1.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1156, 17, 35, 1.0000, 'I', 8.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1157, 4, 35, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1158, 2, 35, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1159, 23, 35, 4.0000, 'I', 1.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1160, 35, 36, 3.0000, 'I', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1161, 26, 36, 4.0000, 'I', 1.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1162, 15, 36, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1163, 24, 36, 1.0000, 'I', 1.0000, 1.0000);
INSERT INTO `productmovement` VALUES (1164, 23, 36, 3.0000, 'I', 1.0000, 3.0000);
INSERT INTO `productmovement` VALUES (1165, 25, 36, 4.0000, 'I', 4.0000, 16.0000);
INSERT INTO `productmovement` VALUES (1166, 16, 36, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1167, 31, 36, 2.0000, 'I', 0.3300, 0.6600);
INSERT INTO `productmovement` VALUES (1168, 6, 36, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1169, 2, 36, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1170, 5, 36, 1.0000, 'I', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (1171, 21, 36, 3.0000, 'I', 1.0000, 3.0000);
INSERT INTO `productmovement` VALUES (1172, 29, 36, 4.0000, 'I', 1.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1173, 14, 36, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (1174, 7, 36, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1175, 28, 36, 3.0000, 'I', 4.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1176, 22, 36, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1177, 12, 36, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1178, 17, 36, 4.0000, 'I', 8.0000, 32.0000);
INSERT INTO `productmovement` VALUES (1179, 30, 36, 5.0000, 'I', 0.8500, 4.2500);
INSERT INTO `productmovement` VALUES (1180, 4, 36, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1181, 1, 36, 4.0000, 'I', 5.0000, 20.0000);
INSERT INTO `productmovement` VALUES (1182, 34, 36, 4.0000, 'I', 6.0000, 24.0000);
INSERT INTO `productmovement` VALUES (1183, 32, 36, 4.0000, 'I', 0.8800, 3.5200);
INSERT INTO `productmovement` VALUES (1184, 20, 36, 5.0000, 'I', 8.0000, 40.0000);
INSERT INTO `productmovement` VALUES (1185, 27, 36, 4.0000, 'I', 9.0000, 36.0000);
INSERT INTO `productmovement` VALUES (1186, 11, 36, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1187, 13, 36, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1188, 33, 36, 1.0000, 'I', 5.0000, 5.0000);
INSERT INTO `productmovement` VALUES (1189, 9, 36, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1190, 3, 36, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1191, 10, 36, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1192, 19, 36, 2.0000, 'I', 1.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1193, 8, 36, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1194, 18, 36, 1.0000, 'I', 1.0000, 1.0000);
INSERT INTO `productmovement` VALUES (1195, 1, 37, 3.0000, 'E', 7.5000, 22.5000);
INSERT INTO `productmovement` VALUES (1196, 8, 37, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1197, 18, 37, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (1198, 17, 37, 2.0000, 'E', 12.0000, 24.0000);
INSERT INTO `productmovement` VALUES (1199, 21, 37, 2.0000, 'E', 1.5000, 3.0000);
INSERT INTO `productmovement` VALUES (1200, 20, 37, 2.0000, 'E', 12.0000, 24.0000);
INSERT INTO `productmovement` VALUES (1201, 29, 37, 3.0000, 'E', 1.5000, 4.5000);
INSERT INTO `productmovement` VALUES (1202, 27, 37, 4.0000, 'E', 13.5000, 54.0000);
INSERT INTO `productmovement` VALUES (1203, 5, 37, 2.0000, 'E', 4.5000, 9.0000);
INSERT INTO `productmovement` VALUES (1204, 2, 37, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1205, 33, 37, 2.0000, 'E', 7.5000, 15.0000);
INSERT INTO `productmovement` VALUES (1206, 15, 37, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1207, 12, 37, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1208, 22, 37, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1209, 4, 37, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1210, 25, 37, 3.0000, 'E', 6.0000, 18.0000);
INSERT INTO `productmovement` VALUES (1211, 32, 37, 5.0000, 'E', 1.3200, 6.6000);
INSERT INTO `productmovement` VALUES (1212, 31, 37, 1.0000, 'E', 0.5000, 0.5000);
INSERT INTO `productmovement` VALUES (1213, 13, 37, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1214, 23, 37, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (1215, 6, 37, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1216, 26, 37, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (1217, 14, 37, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (1218, 16, 37, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1219, 3, 37, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1220, 24, 37, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (1221, 9, 37, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (1222, 7, 37, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (1223, 28, 37, 2.0000, 'E', 6.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1224, 19, 37, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (1225, 11, 37, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1226, 35, 37, 3.0000, 'E', 4.5000, 13.5000);
INSERT INTO `productmovement` VALUES (1227, 34, 37, 3.0000, 'E', 9.0000, 27.0000);
INSERT INTO `productmovement` VALUES (1228, 30, 37, 1.0000, 'E', 1.2800, 1.2800);
INSERT INTO `productmovement` VALUES (1229, 10, 37, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1230, 33, 38, 1.0000, 'E', 7.5000, 7.5000);
INSERT INTO `productmovement` VALUES (1231, 21, 38, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (1232, 20, 38, 1.0000, 'E', 12.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1233, 32, 38, 3.0000, 'E', 1.3200, 3.9600);
INSERT INTO `productmovement` VALUES (1234, 5, 38, 2.0000, 'E', 4.5000, 9.0000);
INSERT INTO `productmovement` VALUES (1235, 3, 38, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1236, 7, 38, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1237, 30, 38, 5.0000, 'E', 1.2800, 6.4000);
INSERT INTO `productmovement` VALUES (1238, 22, 38, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (1239, 16, 38, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (1240, 26, 38, 3.0000, 'E', 1.5000, 4.5000);
INSERT INTO `productmovement` VALUES (1241, 31, 38, 1.0000, 'E', 0.5000, 0.5000);
INSERT INTO `productmovement` VALUES (1242, 19, 38, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (1243, 28, 38, 1.0000, 'E', 6.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1244, 2, 38, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1245, 18, 38, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (1246, 35, 38, 5.0000, 'E', 4.5000, 22.5000);
INSERT INTO `productmovement` VALUES (1247, 23, 38, 3.0000, 'E', 1.5000, 4.5000);
INSERT INTO `productmovement` VALUES (1248, 27, 38, 4.0000, 'E', 13.5000, 54.0000);
INSERT INTO `productmovement` VALUES (1249, 24, 38, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (1250, 14, 38, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1251, 15, 38, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1252, 25, 38, 2.0000, 'E', 6.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1253, 6, 38, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1254, 9, 38, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1255, 4, 38, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1256, 12, 38, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1257, 1, 38, 3.0000, 'E', 7.5000, 22.5000);
INSERT INTO `productmovement` VALUES (1258, 10, 38, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1259, 17, 38, 1.0000, 'E', 12.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1260, 8, 38, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1261, 11, 38, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1262, 34, 38, 5.0000, 'E', 9.0000, 45.0000);
INSERT INTO `productmovement` VALUES (1263, 13, 38, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1264, 29, 38, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (1265, 15, 39, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1266, 33, 39, 1.0000, 'E', 7.5000, 7.5000);
INSERT INTO `productmovement` VALUES (1267, 23, 39, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (1268, 34, 39, 3.0000, 'E', 9.0000, 27.0000);
INSERT INTO `productmovement` VALUES (1269, 31, 39, 1.0000, 'E', 0.5000, 0.5000);
INSERT INTO `productmovement` VALUES (1270, 5, 39, 4.0000, 'E', 4.5000, 18.0000);
INSERT INTO `productmovement` VALUES (1271, 17, 39, 5.0000, 'E', 12.0000, 60.0000);
INSERT INTO `productmovement` VALUES (1272, 1, 39, 1.0000, 'E', 7.5000, 7.5000);
INSERT INTO `productmovement` VALUES (1273, 35, 39, 4.0000, 'E', 4.5000, 18.0000);
INSERT INTO `productmovement` VALUES (1274, 3, 39, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1275, 26, 39, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (1276, 6, 39, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1277, 12, 39, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (1278, 4, 39, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1279, 16, 39, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (1280, 22, 39, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1281, 10, 39, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (1282, 24, 39, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (1283, 18, 39, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (1284, 25, 39, 1.0000, 'E', 6.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1285, 20, 39, 4.0000, 'E', 12.0000, 48.0000);
INSERT INTO `productmovement` VALUES (1286, 8, 39, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1287, 27, 39, 2.0000, 'E', 13.5000, 27.0000);
INSERT INTO `productmovement` VALUES (1288, 14, 39, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1289, 9, 39, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (1290, 32, 39, 4.0000, 'E', 1.3200, 5.2800);
INSERT INTO `productmovement` VALUES (1291, 11, 39, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1292, 19, 39, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (1293, 7, 39, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1294, 13, 39, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (1295, 28, 39, 3.0000, 'E', 6.0000, 18.0000);
INSERT INTO `productmovement` VALUES (1296, 30, 39, 2.0000, 'E', 1.2800, 2.5600);
INSERT INTO `productmovement` VALUES (1297, 29, 39, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (1298, 21, 39, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (1299, 2, 39, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1300, 21, 40, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (1301, 26, 40, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (1302, 9, 40, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1303, 11, 40, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (1304, 2, 40, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1305, 35, 40, 3.0000, 'E', 4.5000, 13.5000);
INSERT INTO `productmovement` VALUES (1306, 1, 40, 4.0000, 'E', 7.5000, 30.0000);
INSERT INTO `productmovement` VALUES (1307, 18, 40, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (1308, 14, 40, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (1309, 30, 40, 5.0000, 'E', 1.2800, 6.4000);
INSERT INTO `productmovement` VALUES (1310, 8, 40, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1311, 29, 40, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (1312, 23, 40, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (1313, 24, 40, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (1314, 13, 40, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (1315, 33, 40, 2.0000, 'E', 7.5000, 15.0000);
INSERT INTO `productmovement` VALUES (1316, 31, 40, 3.0000, 'E', 0.5000, 1.5000);
INSERT INTO `productmovement` VALUES (1317, 7, 40, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1318, 10, 40, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1319, 16, 40, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1320, 32, 40, 5.0000, 'E', 1.3200, 6.6000);
INSERT INTO `productmovement` VALUES (1321, 19, 40, 2.0000, 'E', 1.5000, 3.0000);
INSERT INTO `productmovement` VALUES (1322, 34, 40, 3.0000, 'E', 9.0000, 27.0000);
INSERT INTO `productmovement` VALUES (1323, 28, 40, 1.0000, 'E', 6.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1324, 5, 40, 2.0000, 'E', 4.5000, 9.0000);
INSERT INTO `productmovement` VALUES (1325, 6, 40, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1326, 20, 40, 5.0000, 'E', 12.0000, 60.0000);
INSERT INTO `productmovement` VALUES (1327, 22, 40, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (1328, 27, 40, 2.0000, 'E', 13.5000, 27.0000);
INSERT INTO `productmovement` VALUES (1329, 17, 40, 5.0000, 'E', 12.0000, 60.0000);
INSERT INTO `productmovement` VALUES (1330, 15, 40, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1331, 25, 40, 1.0000, 'E', 6.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1332, 12, 40, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1333, 4, 40, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1334, 3, 40, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1335, 22, 41, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (1336, 31, 41, 2.0000, 'E', 0.5000, 1.0000);
INSERT INTO `productmovement` VALUES (1337, 6, 41, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1338, 18, 41, 2.0000, 'E', 1.5000, 3.0000);
INSERT INTO `productmovement` VALUES (1339, 27, 41, 4.0000, 'E', 13.5000, 54.0000);
INSERT INTO `productmovement` VALUES (1340, 5, 41, 5.0000, 'E', 4.5000, 22.5000);
INSERT INTO `productmovement` VALUES (1341, 30, 41, 4.0000, 'E', 1.2800, 5.1200);
INSERT INTO `productmovement` VALUES (1342, 10, 41, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1343, 4, 41, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1344, 16, 41, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1345, 28, 41, 4.0000, 'E', 6.0000, 24.0000);
INSERT INTO `productmovement` VALUES (1346, 29, 41, 3.0000, 'E', 1.5000, 4.5000);
INSERT INTO `productmovement` VALUES (1347, 25, 41, 1.0000, 'E', 6.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1348, 1, 41, 2.0000, 'E', 7.5000, 15.0000);
INSERT INTO `productmovement` VALUES (1349, 35, 41, 1.0000, 'E', 4.5000, 4.5000);
INSERT INTO `productmovement` VALUES (1350, 20, 41, 5.0000, 'E', 12.0000, 60.0000);
INSERT INTO `productmovement` VALUES (1351, 32, 41, 4.0000, 'E', 1.3200, 5.2800);
INSERT INTO `productmovement` VALUES (1352, 7, 41, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (1353, 15, 41, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1354, 17, 41, 4.0000, 'E', 12.0000, 48.0000);
INSERT INTO `productmovement` VALUES (1355, 8, 41, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1356, 3, 41, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1357, 13, 41, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1358, 9, 41, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (1359, 24, 41, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (1360, 11, 41, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (1361, 14, 41, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1362, 12, 41, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1363, 21, 41, 3.0000, 'E', 1.5000, 4.5000);
INSERT INTO `productmovement` VALUES (1364, 34, 41, 2.0000, 'E', 9.0000, 18.0000);
INSERT INTO `productmovement` VALUES (1365, 2, 41, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1366, 23, 41, 3.0000, 'E', 1.5000, 4.5000);
INSERT INTO `productmovement` VALUES (1367, 26, 41, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (1368, 19, 41, 3.0000, 'E', 1.5000, 4.5000);
INSERT INTO `productmovement` VALUES (1369, 33, 41, 3.0000, 'E', 7.5000, 22.5000);
INSERT INTO `productmovement` VALUES (1370, 17, 42, 2.0000, 'I', 8.0000, 16.0000);
INSERT INTO `productmovement` VALUES (1371, 18, 42, 2.0000, 'I', 1.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1372, 32, 42, 3.0000, 'I', 0.8800, 2.6400);
INSERT INTO `productmovement` VALUES (1373, 10, 42, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1374, 24, 42, 5.0000, 'I', 1.0000, 5.0000);
INSERT INTO `productmovement` VALUES (1375, 14, 42, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1376, 8, 42, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (1377, 28, 42, 1.0000, 'I', 4.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1378, 23, 42, 4.0000, 'I', 1.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1379, 29, 42, 1.0000, 'I', 1.0000, 1.0000);
INSERT INTO `productmovement` VALUES (1380, 26, 42, 2.0000, 'I', 1.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1381, 21, 42, 2.0000, 'I', 1.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1382, 25, 42, 5.0000, 'I', 4.0000, 20.0000);
INSERT INTO `productmovement` VALUES (1383, 5, 42, 1.0000, 'I', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (1384, 34, 42, 5.0000, 'I', 6.0000, 30.0000);
INSERT INTO `productmovement` VALUES (1385, 33, 42, 3.0000, 'I', 5.0000, 15.0000);
INSERT INTO `productmovement` VALUES (1386, 20, 42, 5.0000, 'I', 8.0000, 40.0000);
INSERT INTO `productmovement` VALUES (1387, 7, 42, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1388, 27, 42, 1.0000, 'I', 9.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1389, 31, 42, 3.0000, 'I', 0.3300, 0.9900);
INSERT INTO `productmovement` VALUES (1390, 22, 42, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1391, 2, 42, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1392, 1, 42, 2.0000, 'I', 5.0000, 10.0000);
INSERT INTO `productmovement` VALUES (1393, 9, 42, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1394, 6, 42, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1395, 3, 42, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1396, 15, 42, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1397, 12, 42, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1398, 4, 42, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1399, 13, 42, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1400, 11, 42, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (1401, 35, 42, 4.0000, 'I', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1402, 19, 42, 3.0000, 'I', 1.0000, 3.0000);
INSERT INTO `productmovement` VALUES (1403, 30, 42, 3.0000, 'I', 0.8500, 2.5500);
INSERT INTO `productmovement` VALUES (1404, 16, 42, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1405, 16, 43, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1406, 21, 43, 2.0000, 'I', 1.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1407, 32, 43, 2.0000, 'I', 0.8800, 1.7600);
INSERT INTO `productmovement` VALUES (1408, 3, 43, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (1409, 17, 43, 1.0000, 'I', 8.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1410, 5, 43, 4.0000, 'I', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1411, 35, 43, 3.0000, 'I', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1412, 13, 43, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1413, 7, 43, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1414, 22, 43, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (1415, 20, 43, 5.0000, 'I', 8.0000, 40.0000);
INSERT INTO `productmovement` VALUES (1416, 11, 43, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1417, 8, 43, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1418, 18, 43, 1.0000, 'I', 1.0000, 1.0000);
INSERT INTO `productmovement` VALUES (1419, 19, 43, 1.0000, 'I', 1.0000, 1.0000);
INSERT INTO `productmovement` VALUES (1420, 29, 43, 1.0000, 'I', 1.0000, 1.0000);
INSERT INTO `productmovement` VALUES (1421, 24, 43, 4.0000, 'I', 1.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1422, 25, 43, 4.0000, 'I', 4.0000, 16.0000);
INSERT INTO `productmovement` VALUES (1423, 15, 43, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (1424, 28, 43, 4.0000, 'I', 4.0000, 16.0000);
INSERT INTO `productmovement` VALUES (1425, 1, 43, 2.0000, 'I', 5.0000, 10.0000);
INSERT INTO `productmovement` VALUES (1426, 14, 43, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1427, 10, 43, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (1428, 23, 43, 2.0000, 'I', 1.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1429, 26, 43, 3.0000, 'I', 1.0000, 3.0000);
INSERT INTO `productmovement` VALUES (1430, 6, 43, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1431, 31, 43, 2.0000, 'I', 0.3300, 0.6600);
INSERT INTO `productmovement` VALUES (1432, 9, 43, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1433, 4, 43, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1434, 30, 43, 4.0000, 'I', 0.8500, 3.4000);
INSERT INTO `productmovement` VALUES (1435, 33, 43, 3.0000, 'I', 5.0000, 15.0000);
INSERT INTO `productmovement` VALUES (1436, 2, 43, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1437, 34, 43, 5.0000, 'I', 6.0000, 30.0000);
INSERT INTO `productmovement` VALUES (1438, 27, 43, 1.0000, 'I', 9.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1439, 12, 43, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1440, 9, 44, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (1441, 26, 44, 1.0000, 'I', 1.0000, 1.0000);
INSERT INTO `productmovement` VALUES (1442, 5, 44, 2.0000, 'I', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1443, 18, 44, 1.0000, 'I', 1.0000, 1.0000);
INSERT INTO `productmovement` VALUES (1444, 24, 44, 4.0000, 'I', 1.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1445, 33, 44, 5.0000, 'I', 5.0000, 25.0000);
INSERT INTO `productmovement` VALUES (1446, 1, 44, 3.0000, 'I', 5.0000, 15.0000);
INSERT INTO `productmovement` VALUES (1447, 35, 44, 2.0000, 'I', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1448, 27, 44, 4.0000, 'I', 9.0000, 36.0000);
INSERT INTO `productmovement` VALUES (1449, 12, 44, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (1450, 16, 44, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (1451, 30, 44, 5.0000, 'I', 0.8500, 4.2500);
INSERT INTO `productmovement` VALUES (1452, 6, 44, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1453, 21, 44, 1.0000, 'I', 1.0000, 1.0000);
INSERT INTO `productmovement` VALUES (1454, 15, 44, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1455, 13, 44, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1456, 34, 44, 1.0000, 'I', 6.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1457, 11, 44, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1458, 14, 44, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1459, 8, 44, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1460, 17, 44, 1.0000, 'I', 8.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1461, 2, 44, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1462, 25, 44, 5.0000, 'I', 4.0000, 20.0000);
INSERT INTO `productmovement` VALUES (1463, 22, 44, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1464, 10, 44, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1465, 19, 44, 1.0000, 'I', 1.0000, 1.0000);
INSERT INTO `productmovement` VALUES (1466, 4, 44, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1467, 23, 44, 2.0000, 'I', 1.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1468, 3, 44, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1469, 20, 44, 2.0000, 'I', 8.0000, 16.0000);
INSERT INTO `productmovement` VALUES (1470, 7, 44, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1471, 28, 44, 1.0000, 'I', 4.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1472, 29, 44, 2.0000, 'I', 1.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1473, 32, 44, 4.0000, 'I', 0.8800, 3.5200);
INSERT INTO `productmovement` VALUES (1474, 31, 44, 1.0000, 'I', 0.3300, 0.3300);
INSERT INTO `productmovement` VALUES (1475, 29, 45, 2.0000, 'I', 1.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1476, 9, 45, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1477, 35, 45, 5.0000, 'I', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (1478, 12, 45, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1479, 33, 45, 1.0000, 'I', 5.0000, 5.0000);
INSERT INTO `productmovement` VALUES (1480, 15, 45, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1481, 19, 45, 1.0000, 'I', 1.0000, 1.0000);
INSERT INTO `productmovement` VALUES (1482, 1, 45, 4.0000, 'I', 5.0000, 20.0000);
INSERT INTO `productmovement` VALUES (1483, 4, 45, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1484, 27, 45, 4.0000, 'I', 9.0000, 36.0000);
INSERT INTO `productmovement` VALUES (1485, 2, 45, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1486, 30, 45, 1.0000, 'I', 0.8500, 0.8500);
INSERT INTO `productmovement` VALUES (1487, 10, 45, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1488, 20, 45, 1.0000, 'I', 8.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1489, 8, 45, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (1490, 28, 45, 2.0000, 'I', 4.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1491, 17, 45, 1.0000, 'I', 8.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1492, 22, 45, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1493, 6, 45, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1494, 5, 45, 3.0000, 'I', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1495, 24, 45, 3.0000, 'I', 1.0000, 3.0000);
INSERT INTO `productmovement` VALUES (1496, 34, 45, 5.0000, 'I', 6.0000, 30.0000);
INSERT INTO `productmovement` VALUES (1497, 23, 45, 2.0000, 'I', 1.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1498, 13, 45, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1499, 31, 45, 2.0000, 'I', 0.3300, 0.6600);
INSERT INTO `productmovement` VALUES (1500, 26, 45, 3.0000, 'I', 1.0000, 3.0000);
INSERT INTO `productmovement` VALUES (1501, 25, 45, 4.0000, 'I', 4.0000, 16.0000);
INSERT INTO `productmovement` VALUES (1502, 32, 45, 4.0000, 'I', 0.8800, 3.5200);
INSERT INTO `productmovement` VALUES (1503, 18, 45, 5.0000, 'I', 1.0000, 5.0000);
INSERT INTO `productmovement` VALUES (1504, 21, 45, 2.0000, 'I', 1.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1505, 11, 45, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (1506, 7, 45, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1507, 3, 45, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1508, 14, 45, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1509, 16, 45, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1510, 24, 46, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (1511, 8, 46, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1512, 15, 46, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1513, 21, 46, 2.0000, 'E', 1.5000, 3.0000);
INSERT INTO `productmovement` VALUES (1514, 20, 46, 5.0000, 'E', 12.0000, 60.0000);
INSERT INTO `productmovement` VALUES (1515, 31, 46, 1.0000, 'E', 0.5000, 0.5000);
INSERT INTO `productmovement` VALUES (1516, 18, 46, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (1517, 4, 46, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1518, 11, 46, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1519, 14, 46, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1520, 16, 46, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1521, 17, 46, 3.0000, 'E', 12.0000, 36.0000);
INSERT INTO `productmovement` VALUES (1522, 2, 46, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (1523, 34, 46, 2.0000, 'E', 9.0000, 18.0000);
INSERT INTO `productmovement` VALUES (1524, 32, 46, 1.0000, 'E', 1.3200, 1.3200);
INSERT INTO `productmovement` VALUES (1525, 29, 46, 3.0000, 'E', 1.5000, 4.5000);
INSERT INTO `productmovement` VALUES (1526, 19, 46, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (1527, 25, 46, 2.0000, 'E', 6.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1528, 26, 46, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (1529, 30, 46, 1.0000, 'E', 1.2800, 1.2800);
INSERT INTO `productmovement` VALUES (1530, 27, 46, 1.0000, 'E', 13.5000, 13.5000);
INSERT INTO `productmovement` VALUES (1531, 23, 46, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (1532, 3, 46, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1533, 5, 46, 5.0000, 'E', 4.5000, 22.5000);
INSERT INTO `productmovement` VALUES (1534, 1, 46, 2.0000, 'E', 7.5000, 15.0000);
INSERT INTO `productmovement` VALUES (1535, 22, 46, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1536, 9, 46, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1537, 35, 46, 1.0000, 'E', 4.5000, 4.5000);
INSERT INTO `productmovement` VALUES (1538, 13, 46, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1539, 12, 46, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1540, 10, 46, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1541, 28, 46, 4.0000, 'E', 6.0000, 24.0000);
INSERT INTO `productmovement` VALUES (1542, 6, 46, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (1543, 2, 47, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1544, 5, 47, 1.0000, 'E', 4.5000, 4.5000);
INSERT INTO `productmovement` VALUES (1545, 4, 47, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1546, 24, 47, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (1547, 8, 47, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (1548, 25, 47, 4.0000, 'E', 6.0000, 24.0000);
INSERT INTO `productmovement` VALUES (1549, 19, 47, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (1550, 21, 47, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (1551, 1, 47, 2.0000, 'E', 7.5000, 15.0000);
INSERT INTO `productmovement` VALUES (1552, 14, 47, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1553, 32, 47, 3.0000, 'E', 1.3200, 3.9600);
INSERT INTO `productmovement` VALUES (1554, 9, 47, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1555, 30, 47, 3.0000, 'E', 1.2800, 3.8400);
INSERT INTO `productmovement` VALUES (1556, 13, 47, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1557, 3, 47, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1558, 16, 47, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (1559, 10, 47, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (1560, 18, 47, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (1561, 28, 47, 4.0000, 'E', 6.0000, 24.0000);
INSERT INTO `productmovement` VALUES (1562, 11, 47, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (1563, 35, 47, 3.0000, 'E', 4.5000, 13.5000);
INSERT INTO `productmovement` VALUES (1564, 17, 47, 3.0000, 'E', 12.0000, 36.0000);
INSERT INTO `productmovement` VALUES (1565, 34, 47, 5.0000, 'E', 9.0000, 45.0000);
INSERT INTO `productmovement` VALUES (1566, 31, 47, 2.0000, 'E', 0.5000, 1.0000);
INSERT INTO `productmovement` VALUES (1567, 27, 47, 3.0000, 'E', 13.5000, 40.5000);
INSERT INTO `productmovement` VALUES (1568, 26, 47, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (1569, 20, 47, 3.0000, 'E', 12.0000, 36.0000);
INSERT INTO `productmovement` VALUES (1570, 12, 47, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (1571, 15, 47, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1572, 29, 47, 3.0000, 'E', 1.5000, 4.5000);
INSERT INTO `productmovement` VALUES (1573, 6, 47, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1574, 23, 47, 2.0000, 'E', 1.5000, 3.0000);
INSERT INTO `productmovement` VALUES (1575, 22, 47, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1576, 19, 48, 1.0000, 'I', 1.0000, 1.0000);
INSERT INTO `productmovement` VALUES (1577, 33, 48, 3.0000, 'I', 5.0000, 15.0000);
INSERT INTO `productmovement` VALUES (1578, 22, 48, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1579, 32, 48, 2.0000, 'I', 0.8800, 1.7600);
INSERT INTO `productmovement` VALUES (1580, 16, 48, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (1581, 1, 48, 5.0000, 'I', 5.0000, 25.0000);
INSERT INTO `productmovement` VALUES (1582, 23, 48, 5.0000, 'I', 1.0000, 5.0000);
INSERT INTO `productmovement` VALUES (1583, 29, 48, 5.0000, 'I', 1.0000, 5.0000);
INSERT INTO `productmovement` VALUES (1584, 11, 48, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1585, 2, 48, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1586, 15, 48, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1587, 6, 48, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1588, 5, 48, 5.0000, 'I', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (1589, 18, 48, 2.0000, 'I', 1.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1590, 17, 48, 5.0000, 'I', 8.0000, 40.0000);
INSERT INTO `productmovement` VALUES (1591, 24, 48, 5.0000, 'I', 1.0000, 5.0000);
INSERT INTO `productmovement` VALUES (1592, 4, 48, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1593, 7, 48, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1594, 21, 48, 3.0000, 'I', 1.0000, 3.0000);
INSERT INTO `productmovement` VALUES (1595, 20, 48, 4.0000, 'I', 8.0000, 32.0000);
INSERT INTO `productmovement` VALUES (1596, 14, 48, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1597, 13, 48, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1598, 34, 48, 3.0000, 'I', 6.0000, 18.0000);
INSERT INTO `productmovement` VALUES (1599, 30, 48, 4.0000, 'I', 0.8500, 3.4000);
INSERT INTO `productmovement` VALUES (1600, 28, 48, 5.0000, 'I', 4.0000, 20.0000);
INSERT INTO `productmovement` VALUES (1601, 31, 48, 5.0000, 'I', 0.3300, 1.6500);
INSERT INTO `productmovement` VALUES (1602, 12, 48, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1603, 8, 48, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1604, 9, 48, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1605, 35, 48, 3.0000, 'I', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1606, 10, 48, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1607, 3, 48, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (1608, 27, 48, 4.0000, 'I', 9.0000, 36.0000);
INSERT INTO `productmovement` VALUES (1609, 26, 48, 4.0000, 'I', 1.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1610, 25, 48, 4.0000, 'I', 4.0000, 16.0000);
INSERT INTO `productmovement` VALUES (1611, 28, 49, 2.0000, 'E', 6.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1612, 24, 49, 2.0000, 'E', 1.5000, 3.0000);
INSERT INTO `productmovement` VALUES (1613, 8, 49, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1614, 22, 49, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (1615, 18, 49, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (1616, 5, 49, 3.0000, 'E', 4.5000, 13.5000);
INSERT INTO `productmovement` VALUES (1617, 15, 49, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1618, 12, 49, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (1619, 16, 49, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (1620, 27, 49, 5.0000, 'E', 13.5000, 67.5000);
INSERT INTO `productmovement` VALUES (1621, 13, 49, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1622, 9, 49, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1623, 17, 49, 2.0000, 'E', 12.0000, 24.0000);
INSERT INTO `productmovement` VALUES (1624, 11, 49, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1625, 1, 49, 5.0000, 'E', 7.5000, 37.5000);
INSERT INTO `productmovement` VALUES (1626, 20, 49, 2.0000, 'E', 12.0000, 24.0000);
INSERT INTO `productmovement` VALUES (1627, 30, 49, 5.0000, 'E', 1.2800, 6.4000);
INSERT INTO `productmovement` VALUES (1628, 6, 49, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1629, 21, 49, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (1630, 26, 49, 3.0000, 'E', 1.5000, 4.5000);
INSERT INTO `productmovement` VALUES (1631, 4, 49, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1632, 14, 49, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1633, 25, 49, 2.0000, 'E', 6.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1634, 19, 49, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (1635, 7, 49, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1636, 35, 49, 4.0000, 'E', 4.5000, 18.0000);
INSERT INTO `productmovement` VALUES (1637, 29, 49, 2.0000, 'E', 1.5000, 3.0000);
INSERT INTO `productmovement` VALUES (1638, 2, 49, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (1639, 10, 49, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1640, 23, 49, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (1641, 33, 49, 3.0000, 'E', 7.5000, 22.5000);
INSERT INTO `productmovement` VALUES (1642, 34, 49, 1.0000, 'E', 9.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1643, 31, 49, 1.0000, 'E', 0.5000, 0.5000);
INSERT INTO `productmovement` VALUES (1644, 3, 49, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (1645, 5, 50, 5.0000, 'E', 4.5000, 22.5000);
INSERT INTO `productmovement` VALUES (1646, 20, 50, 3.0000, 'E', 12.0000, 36.0000);
INSERT INTO `productmovement` VALUES (1647, 8, 50, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (1648, 34, 50, 5.0000, 'E', 9.0000, 45.0000);
INSERT INTO `productmovement` VALUES (1649, 3, 50, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (1650, 1, 50, 1.0000, 'E', 7.5000, 7.5000);
INSERT INTO `productmovement` VALUES (1651, 23, 50, 2.0000, 'E', 1.5000, 3.0000);
INSERT INTO `productmovement` VALUES (1652, 15, 50, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1653, 16, 50, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1654, 28, 50, 1.0000, 'E', 6.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1655, 11, 50, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1656, 9, 50, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1657, 25, 50, 5.0000, 'E', 6.0000, 30.0000);
INSERT INTO `productmovement` VALUES (1658, 26, 50, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (1659, 22, 50, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1660, 12, 50, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1661, 14, 50, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1662, 30, 50, 5.0000, 'E', 1.2800, 6.4000);
INSERT INTO `productmovement` VALUES (1663, 19, 50, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (1664, 2, 50, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1665, 29, 50, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (1666, 21, 50, 2.0000, 'E', 1.5000, 3.0000);
INSERT INTO `productmovement` VALUES (1667, 17, 50, 1.0000, 'E', 12.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1668, 6, 50, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1669, 13, 50, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (1670, 31, 50, 4.0000, 'E', 0.5000, 2.0000);
INSERT INTO `productmovement` VALUES (1671, 10, 50, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1672, 35, 50, 4.0000, 'E', 4.5000, 18.0000);
INSERT INTO `productmovement` VALUES (1673, 24, 50, 3.0000, 'E', 1.5000, 4.5000);
INSERT INTO `productmovement` VALUES (1674, 18, 50, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (1675, 12, 51, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1676, 14, 51, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1677, 9, 51, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (1678, 18, 51, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (1679, 1, 51, 4.0000, 'E', 7.5000, 30.0000);
INSERT INTO `productmovement` VALUES (1680, 35, 51, 4.0000, 'E', 4.5000, 18.0000);
INSERT INTO `productmovement` VALUES (1681, 3, 51, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1682, 30, 51, 2.0000, 'E', 1.2800, 2.5600);
INSERT INTO `productmovement` VALUES (1683, 22, 51, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (1684, 31, 51, 5.0000, 'E', 0.5000, 2.5000);
INSERT INTO `productmovement` VALUES (1685, 8, 51, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (1686, 10, 51, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1687, 29, 51, 3.0000, 'E', 1.5000, 4.5000);
INSERT INTO `productmovement` VALUES (1688, 24, 51, 3.0000, 'E', 1.5000, 4.5000);
INSERT INTO `productmovement` VALUES (1689, 20, 51, 2.0000, 'E', 12.0000, 24.0000);
INSERT INTO `productmovement` VALUES (1690, 2, 51, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1691, 34, 51, 2.0000, 'E', 9.0000, 18.0000);
INSERT INTO `productmovement` VALUES (1692, 13, 51, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1693, 21, 51, 2.0000, 'E', 1.5000, 3.0000);
INSERT INTO `productmovement` VALUES (1694, 25, 51, 1.0000, 'E', 6.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1695, 6, 51, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1696, 5, 51, 5.0000, 'E', 4.5000, 22.5000);
INSERT INTO `productmovement` VALUES (1697, 11, 51, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1698, 15, 51, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1699, 28, 51, 1.0000, 'E', 6.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1700, 16, 51, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1701, 23, 51, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (1702, 19, 51, 2.0000, 'E', 1.5000, 3.0000);
INSERT INTO `productmovement` VALUES (1703, 17, 51, 2.0000, 'E', 12.0000, 24.0000);
INSERT INTO `productmovement` VALUES (1704, 16, 52, 1.0000, 'E', 3.0000, 3.0000);
INSERT INTO `productmovement` VALUES (1705, 22, 52, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1706, 12, 52, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1707, 25, 52, 5.0000, 'E', 6.0000, 30.0000);
INSERT INTO `productmovement` VALUES (1708, 18, 52, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (1709, 20, 52, 3.0000, 'E', 12.0000, 36.0000);
INSERT INTO `productmovement` VALUES (1710, 34, 52, 1.0000, 'E', 9.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1711, 19, 52, 1.0000, 'E', 1.5000, 1.5000);
INSERT INTO `productmovement` VALUES (1712, 13, 52, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1713, 3, 52, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1714, 29, 52, 4.0000, 'E', 1.5000, 6.0000);
INSERT INTO `productmovement` VALUES (1715, 10, 52, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1716, 35, 52, 1.0000, 'E', 4.5000, 4.5000);
INSERT INTO `productmovement` VALUES (1717, 24, 52, 3.0000, 'E', 1.5000, 4.5000);
INSERT INTO `productmovement` VALUES (1718, 8, 52, 4.0000, 'E', 3.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1719, 23, 52, 3.0000, 'E', 1.5000, 4.5000);
INSERT INTO `productmovement` VALUES (1720, 2, 52, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (1721, 9, 52, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1722, 21, 52, 5.0000, 'E', 1.5000, 7.5000);
INSERT INTO `productmovement` VALUES (1723, 28, 52, 4.0000, 'E', 6.0000, 24.0000);
INSERT INTO `productmovement` VALUES (1724, 30, 52, 2.0000, 'E', 1.2800, 2.5600);
INSERT INTO `productmovement` VALUES (1725, 15, 52, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1726, 14, 52, 2.0000, 'E', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1727, 1, 52, 4.0000, 'E', 7.5000, 30.0000);
INSERT INTO `productmovement` VALUES (1728, 6, 52, 3.0000, 'E', 3.0000, 9.0000);
INSERT INTO `productmovement` VALUES (1729, 5, 52, 3.0000, 'E', 4.5000, 13.5000);
INSERT INTO `productmovement` VALUES (1730, 17, 52, 2.0000, 'E', 12.0000, 24.0000);
INSERT INTO `productmovement` VALUES (1731, 31, 52, 1.0000, 'E', 0.5000, 0.5000);
INSERT INTO `productmovement` VALUES (1732, 11, 52, 5.0000, 'E', 3.0000, 15.0000);
INSERT INTO `productmovement` VALUES (1733, 6, 53, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1734, 22, 53, 4.0000, 'I', 2.0000, 8.0000);
INSERT INTO `productmovement` VALUES (1735, 7, 53, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1736, 19, 53, 4.0000, 'I', 1.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1737, 8, 53, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (1738, 14, 53, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1739, 31, 53, 3.0000, 'I', 0.3300, 0.9900);
INSERT INTO `productmovement` VALUES (1740, 9, 53, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (1741, 26, 53, 5.0000, 'I', 1.0000, 5.0000);
INSERT INTO `productmovement` VALUES (1742, 2, 53, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1743, 23, 53, 1.0000, 'I', 1.0000, 1.0000);
INSERT INTO `productmovement` VALUES (1744, 30, 53, 1.0000, 'I', 0.8500, 0.8500);
INSERT INTO `productmovement` VALUES (1745, 32, 53, 1.0000, 'I', 0.8800, 0.8800);
INSERT INTO `productmovement` VALUES (1746, 4, 53, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1747, 1, 53, 1.0000, 'I', 5.0000, 5.0000);
INSERT INTO `productmovement` VALUES (1748, 29, 53, 2.0000, 'I', 1.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1749, 28, 53, 5.0000, 'I', 4.0000, 20.0000);
INSERT INTO `productmovement` VALUES (1750, 27, 53, 3.0000, 'I', 9.0000, 27.0000);
INSERT INTO `productmovement` VALUES (1751, 15, 53, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (1752, 20, 53, 4.0000, 'I', 8.0000, 32.0000);
INSERT INTO `productmovement` VALUES (1753, 3, 53, 3.0000, 'I', 2.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1754, 21, 53, 3.0000, 'I', 1.0000, 3.0000);
INSERT INTO `productmovement` VALUES (1755, 25, 53, 3.0000, 'I', 4.0000, 12.0000);
INSERT INTO `productmovement` VALUES (1756, 12, 53, 2.0000, 'I', 2.0000, 4.0000);
INSERT INTO `productmovement` VALUES (1757, 10, 53, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1758, 18, 53, 5.0000, 'I', 1.0000, 5.0000);
INSERT INTO `productmovement` VALUES (1759, 24, 53, 2.0000, 'I', 1.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1760, 33, 53, 1.0000, 'I', 5.0000, 5.0000);
INSERT INTO `productmovement` VALUES (1761, 13, 53, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1762, 35, 53, 2.0000, 'I', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1763, 16, 53, 1.0000, 'I', 2.0000, 2.0000);
INSERT INTO `productmovement` VALUES (1764, 34, 53, 4.0000, 'I', 6.0000, 24.0000);
INSERT INTO `productmovement` VALUES (1765, 17, 53, 4.0000, 'I', 8.0000, 32.0000);
INSERT INTO `productmovement` VALUES (1766, 11, 53, 5.0000, 'I', 2.0000, 10.0000);
INSERT INTO `productmovement` VALUES (1767, 5, 53, 2.0000, 'I', 3.0000, 6.0000);
INSERT INTO `productmovement` VALUES (1768, 34, 54, 90.0000, 'I', 6.0000, 540.0000);
INSERT INTO `productmovement` VALUES (1769, 29, 54, 33.0000, 'I', 1.0000, 33.0000);
INSERT INTO `productmovement` VALUES (1770, 30, 54, 24.0000, 'I', 0.0000, 0.0000);
INSERT INTO `productmovement` VALUES (1771, 31, 54, 70.0000, 'I', 0.0000, 0.0000);
INSERT INTO `productmovement` VALUES (1772, 33, 55, 58.0000, 'I', 5.0000, 290.0000);
INSERT INTO `productmovement` VALUES (1773, 4, 55, 76.0000, 'I', 2.0000, 152.0000);
INSERT INTO `productmovement` VALUES (1774, 7, 55, 44.0000, 'I', 2.0000, 88.0000);
INSERT INTO `productmovement` VALUES (1775, 11, 55, 58.0000, 'I', 2.0000, 116.0000);
INSERT INTO `productmovement` VALUES (1776, 16, 55, 74.0000, 'I', 2.0000, 148.0000);
INSERT INTO `productmovement` VALUES (1777, 26, 55, 49.0000, 'I', 1.0000, 49.0000);
INSERT INTO `productmovement` VALUES (1778, 27, 55, 66.0000, 'I', 9.0000, 594.0000);
INSERT INTO `productmovement` VALUES (1779, 28, 55, 38.0000, 'I', 4.0000, 152.0000);
INSERT INTO `productmovement` VALUES (1780, 29, 55, 69.0000, 'I', 1.0000, 69.0000);
INSERT INTO `productmovement` VALUES (1781, 30, 55, 73.0000, 'I', 0.0000, 0.0000);
INSERT INTO `productmovement` VALUES (1782, 32, 55, 29.0000, 'I', 0.0000, 0.0000);
INSERT INTO `productmovement` VALUES (1783, 33, 55, 54.0000, 'I', 5.0000, 270.0000);

-- ----------------------------
-- Table structure for province
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province`  (
  `idprovince` int NOT NULL AUTO_INCREMENT,
  `idcountry` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL,
  `code` varchar(3) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT '',
  PRIMARY KEY (`idprovince`) USING BTREE,
  INDEX `IDCCountry`(`idcountry` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf16 COLLATE = utf16_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES (1, 50, 'Azuay', '01');
INSERT INTO `province` VALUES (2, 50, 'Bolívar', '02');
INSERT INTO `province` VALUES (3, 50, 'Cañar', '03');
INSERT INTO `province` VALUES (4, 50, 'Carchi', '04');
INSERT INTO `province` VALUES (5, 50, 'Chimborazo', '06');
INSERT INTO `province` VALUES (6, 50, 'Cotopaxi', '05');
INSERT INTO `province` VALUES (7, 50, 'El Oro', '07');
INSERT INTO `province` VALUES (8, 50, 'Esmeraldas', '08');
INSERT INTO `province` VALUES (9, 50, 'Galápagos', '20');
INSERT INTO `province` VALUES (10, 50, 'Guayas', '09');
INSERT INTO `province` VALUES (11, 50, 'Imbabura', '10');
INSERT INTO `province` VALUES (12, 50, 'Loja', '11');
INSERT INTO `province` VALUES (13, 50, 'Los Ríos', '12');
INSERT INTO `province` VALUES (14, 50, 'Manabí', '13');
INSERT INTO `province` VALUES (15, 50, 'Morona Santiago', '14');
INSERT INTO `province` VALUES (16, 50, 'Napo', '15');
INSERT INTO `province` VALUES (17, 50, 'Orellana', '22');
INSERT INTO `province` VALUES (18, 50, 'Pastaza', '16');
INSERT INTO `province` VALUES (19, 50, 'Pichincha', '17');
INSERT INTO `province` VALUES (20, 50, 'Santa Elena', '24');
INSERT INTO `province` VALUES (21, 50, 'Santo Domingo de los Tsáchilas', '23');
INSERT INTO `province` VALUES (22, 50, 'Sucumbíos', '21');
INSERT INTO `province` VALUES (23, 50, 'Tungurahua', '18');
INSERT INTO `province` VALUES (24, 50, 'Zamora Chinchipe', '19');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `idrole` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT '',
  `scope` varchar(10) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT '' COMMENT 'R|W|D',
  `status` int NULL DEFAULT 1 COMMENT '1-Active 0-Inactive',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`idrole`) USING BTREE,
  INDEX `IDXROLE`(`idrole` ASC) USING BTREE,
  INDEX `IDXSTATUSROLE`(`idrole` ASC, `status` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf16 COLLATE = utf16_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'Reporteador', 'R', 1, '2024-06-21 15:17:20', '2024-06-21 15:17:48', NULL);
INSERT INTO `role` VALUES (2, 'Administrador', 'RWD', 1, '2024-06-21 15:17:44', '2024-08-06 18:35:25', NULL);
INSERT INTO `role` VALUES (3, 'Usuario', 'RWD', 1, '2024-06-21 15:18:01', '2024-06-21 15:18:06', NULL);
INSERT INTO `role` VALUES (4, 'Super', 'RWD', 1, '2024-06-21 15:18:44', '2024-06-21 15:18:44', NULL);
INSERT INTO `role` VALUES (5, 'UserBot', '', 0, '2024-07-04 12:49:39', '2024-07-04 12:49:44', NULL);
INSERT INTO `role` VALUES (6, 'SoloEspiones', 'RD', 1, '2024-08-06 17:42:31', '2024-08-06 17:43:16', '2024-08-06 17:43:16');
INSERT INTO `role` VALUES (7, 'eLIMINART', 'WD', 0, '2024-08-08 00:11:10', '2024-08-08 00:11:16', '2024-08-08 00:11:16');
INSERT INTO `role` VALUES (8, 'UNO', 'WD', 0, '2024-08-12 13:57:44', '2024-08-12 16:10:34', NULL);

-- ----------------------------
-- Table structure for rolemenu
-- ----------------------------
DROP TABLE IF EXISTS `rolemenu`;
CREATE TABLE `rolemenu`  (
  `idrolemenu` int NOT NULL AUTO_INCREMENT,
  `idrole` int NOT NULL,
  `idmenu` int NOT NULL,
  PRIMARY KEY (`idrolemenu`) USING BTREE,
  INDEX `IDXROL`(`idrole` ASC) USING BTREE,
  INDEX `IDME`(`idmenu` ASC) USING BTREE,
  CONSTRAINT `IDME` FOREIGN KEY (`idmenu`) REFERENCES `menu` (`idmenu`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `IDXROL` FOREIGN KEY (`idrole`) REFERENCES `role` (`idrole`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 160 CHARACTER SET = utf16 COLLATE = utf16_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rolemenu
-- ----------------------------
INSERT INTO `rolemenu` VALUES (23, 3, 6);
INSERT INTO `rolemenu` VALUES (24, 3, 7);
INSERT INTO `rolemenu` VALUES (25, 3, 8);
INSERT INTO `rolemenu` VALUES (26, 3, 9);
INSERT INTO `rolemenu` VALUES (69, 1, 10);
INSERT INTO `rolemenu` VALUES (70, 1, 11);
INSERT INTO `rolemenu` VALUES (71, 1, 12);
INSERT INTO `rolemenu` VALUES (72, 1, 13);
INSERT INTO `rolemenu` VALUES (73, 1, 14);
INSERT INTO `rolemenu` VALUES (86, 2, 9);
INSERT INTO `rolemenu` VALUES (87, 2, 15);
INSERT INTO `rolemenu` VALUES (88, 2, 1);
INSERT INTO `rolemenu` VALUES (89, 2, 2);
INSERT INTO `rolemenu` VALUES (90, 2, 4);
INSERT INTO `rolemenu` VALUES (91, 2, 3);
INSERT INTO `rolemenu` VALUES (92, 2, 21);
INSERT INTO `rolemenu` VALUES (93, 2, 6);
INSERT INTO `rolemenu` VALUES (94, 2, 8);
INSERT INTO `rolemenu` VALUES (95, 2, 5);
INSERT INTO `rolemenu` VALUES (96, 2, 7);
INSERT INTO `rolemenu` VALUES (97, 2, 10);
INSERT INTO `rolemenu` VALUES (98, 2, 11);
INSERT INTO `rolemenu` VALUES (99, 2, 12);
INSERT INTO `rolemenu` VALUES (100, 2, 13);
INSERT INTO `rolemenu` VALUES (101, 2, 14);
INSERT INTO `rolemenu` VALUES (102, 2, 16);
INSERT INTO `rolemenu` VALUES (103, 2, 17);
INSERT INTO `rolemenu` VALUES (104, 2, 18);
INSERT INTO `rolemenu` VALUES (105, 2, 19);
INSERT INTO `rolemenu` VALUES (106, 2, 22);
INSERT INTO `rolemenu` VALUES (107, 2, 20);
INSERT INTO `rolemenu` VALUES (108, 4, 9);
INSERT INTO `rolemenu` VALUES (109, 4, 15);
INSERT INTO `rolemenu` VALUES (110, 4, 1);
INSERT INTO `rolemenu` VALUES (111, 4, 2);
INSERT INTO `rolemenu` VALUES (112, 4, 4);
INSERT INTO `rolemenu` VALUES (113, 4, 3);
INSERT INTO `rolemenu` VALUES (114, 4, 21);
INSERT INTO `rolemenu` VALUES (115, 4, 6);
INSERT INTO `rolemenu` VALUES (116, 4, 8);
INSERT INTO `rolemenu` VALUES (117, 4, 5);
INSERT INTO `rolemenu` VALUES (118, 4, 7);
INSERT INTO `rolemenu` VALUES (119, 4, 10);
INSERT INTO `rolemenu` VALUES (120, 4, 11);
INSERT INTO `rolemenu` VALUES (121, 4, 12);
INSERT INTO `rolemenu` VALUES (122, 4, 13);
INSERT INTO `rolemenu` VALUES (123, 4, 14);
INSERT INTO `rolemenu` VALUES (124, 4, 16);
INSERT INTO `rolemenu` VALUES (125, 4, 17);
INSERT INTO `rolemenu` VALUES (126, 4, 18);
INSERT INTO `rolemenu` VALUES (127, 4, 19);
INSERT INTO `rolemenu` VALUES (128, 4, 22);
INSERT INTO `rolemenu` VALUES (129, 4, 20);
INSERT INTO `rolemenu` VALUES (152, 8, 9);
INSERT INTO `rolemenu` VALUES (153, 8, 15);
INSERT INTO `rolemenu` VALUES (154, 8, 1);
INSERT INTO `rolemenu` VALUES (155, 8, 2);
INSERT INTO `rolemenu` VALUES (156, 8, 4);
INSERT INTO `rolemenu` VALUES (157, 8, 3);
INSERT INTO `rolemenu` VALUES (158, 8, 21);
INSERT INTO `rolemenu` VALUES (159, 8, 6);

-- ----------------------------
-- Table structure for transaction
-- ----------------------------
DROP TABLE IF EXISTS `transaction`;
CREATE TABLE `transaction`  (
  `idtransaction` int NOT NULL AUTO_INCREMENT,
  `iduser` int NULL DEFAULT NULL,
  `idbeneficiary` int NULL DEFAULT NULL,
  `idmovementtype` int NULL DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `numberdocument` varchar(20) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL DEFAULT '',
  `subtotal` double(20, 2) NOT NULL DEFAULT 0.00,
  `discount` double(20, 2) NOT NULL DEFAULT 0.00,
  `total` double(20, 2) NOT NULL DEFAULT 0.00,
  `reference` varchar(50) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`idtransaction`) USING BTREE,
  INDEX `IDXM`(`idmovementtype` ASC) USING BTREE,
  INDEX `IDXB`(`idbeneficiary` ASC) USING BTREE,
  INDEX `IDUSS`(`iduser` ASC) USING BTREE,
  CONSTRAINT `IDUSS` FOREIGN KEY (`iduser`) REFERENCES `user` (`iduser`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `IDXB` FOREIGN KEY (`idbeneficiary`) REFERENCES `beneficiary` (`idbeneficiary`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `IDXM` FOREIGN KEY (`idmovementtype`) REFERENCES `movementtype` (`idmovementtype`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf16 COLLATE = utf16_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transaction
-- ----------------------------
INSERT INTO `transaction` VALUES (1, 1, 591, 4, '2024-01-01 06:05:44', '001-003-000000001', 1560.00, 0.00, 1560.00, '');
INSERT INTO `transaction` VALUES (2, 1, 262, 4, '2024-01-01 06:06:33', '001-003-000000002', 2934.00, 0.00, 2934.00, '');
INSERT INTO `transaction` VALUES (3, 1, 615, 2, '2024-01-22 11:17:16', '002-028-000460218', 318.48, 0.00, 318.48, '');
INSERT INTO `transaction` VALUES (4, 1, 629, 2, '2024-01-06 17:44:28', '001-006-000383132', 273.05, 0.00, 273.05, '');
INSERT INTO `transaction` VALUES (5, 1, 13, 1, '2024-01-28 19:36:00', '001-003-000000001', 498.74, 0.00, 498.74, '');
INSERT INTO `transaction` VALUES (6, 1, 414, 2, '2024-01-12 20:01:17', '017-035-000421647', 237.26, 0.00, 237.26, '');
INSERT INTO `transaction` VALUES (7, 1, 4, 1, '2024-01-25 09:46:08', '001-003-000000002', 400.94, 0.00, 400.94, '');
INSERT INTO `transaction` VALUES (8, 1, 498, 2, '2024-01-06 12:54:47', '033-017-000421768', 313.28, 0.00, 313.28, '');
INSERT INTO `transaction` VALUES (9, 1, 47, 1, '2024-01-29 20:54:26', '001-003-000000003', 417.06, 0.00, 417.06, '');
INSERT INTO `transaction` VALUES (10, 1, 42, 1, '2024-01-07 10:06:49', '001-003-000000004', 321.46, 0.00, 321.46, '');
INSERT INTO `transaction` VALUES (11, 1, 358, 2, '2024-01-24 10:56:52', '016-038-000452670', 259.96, 0.00, 259.96, '');
INSERT INTO `transaction` VALUES (12, 1, 6, 1, '2024-01-08 18:55:23', '001-003-000000005', 436.98, 0.00, 436.98, '');
INSERT INTO `transaction` VALUES (13, 1, 35, 1, '2024-02-24 09:31:27', '001-003-000000006', 319.14, 0.00, 319.14, '');
INSERT INTO `transaction` VALUES (14, 1, 68, 1, '2024-02-22 09:02:38', '001-003-000000007', 317.46, 0.00, 317.46, '');
INSERT INTO `transaction` VALUES (15, 1, 105, 2, '2024-02-17 11:12:39', '040-023-000735611', 331.45, 0.00, 331.45, '');
INSERT INTO `transaction` VALUES (16, 1, 571, 2, '2024-02-15 15:57:01', '045-020-000249783', 283.79, 0.00, 283.79, '');
INSERT INTO `transaction` VALUES (17, 1, 153, 2, '2024-02-03 16:59:13', '006-027-000978561', 285.97, 0.00, 285.97, '');
INSERT INTO `transaction` VALUES (18, 1, 251, 2, '2024-02-17 12:16:54', '027-043-000024513', 250.94, 0.00, 250.94, '');
INSERT INTO `transaction` VALUES (19, 1, 66, 1, '2024-02-12 18:41:15', '001-003-000000009', 422.10, 0.00, 422.10, '');
INSERT INTO `transaction` VALUES (20, 1, 55, 1, '2024-02-10 16:52:40', '001-003-000000010', 439.12, 0.00, 439.12, '');
INSERT INTO `transaction` VALUES (21, 1, 56, 1, '2024-03-19 20:03:55', '001-003-000000011', 493.12, 0.00, 493.12, '');
INSERT INTO `transaction` VALUES (22, 1, 537, 2, '2024-03-08 09:12:24', '024-048-000499933', 269.15, 0.00, 269.15, '');
INSERT INTO `transaction` VALUES (23, 1, 55, 1, '2024-03-12 15:12:13', '001-003-000000012', 418.72, 0.00, 418.72, '');
INSERT INTO `transaction` VALUES (24, 1, 615, 2, '2024-03-09 10:23:31', '022-024-000721960', 247.94, 0.00, 247.94, '');
INSERT INTO `transaction` VALUES (25, 1, 52, 1, '2024-03-27 18:42:26', '001-003-000000013', 403.90, 0.00, 403.90, '');
INSERT INTO `transaction` VALUES (26, 1, 9, 1, '2024-03-19 16:06:38', '001-003-000000014', 359.40, 0.00, 359.40, '');
INSERT INTO `transaction` VALUES (27, 1, 1, 1, '2024-03-23 18:07:54', '001-003-000000015', 413.28, 0.00, 413.28, '');
INSERT INTO `transaction` VALUES (28, 1, 14, 1, '2024-04-05 10:16:55', '001-003-000000016', 430.34, 0.00, 430.34, '');
INSERT INTO `transaction` VALUES (29, 1, 53, 1, '2024-04-01 09:20:06', '001-003-000000017', 339.06, 0.00, 339.06, '');
INSERT INTO `transaction` VALUES (30, 1, 656, 2, '2024-04-28 18:56:18', '037-042-000974956', 239.97, 0.00, 239.97, '');
INSERT INTO `transaction` VALUES (31, 1, 48, 1, '2024-04-13 11:25:19', '001-003-000000018', 382.10, 0.00, 382.10, '');
INSERT INTO `transaction` VALUES (32, 1, 11, 1, '2024-04-11 08:52:38', '001-003-000000019', 440.98, 0.00, 440.98, '');
INSERT INTO `transaction` VALUES (33, 1, 539, 2, '2024-04-05 08:13:14', '029-027-000984779', 299.87, 0.00, 299.87, '');
INSERT INTO `transaction` VALUES (34, 1, 187, 2, '2024-04-15 09:26:08', '048-017-000647293', 262.12, 0.00, 262.12, '');
INSERT INTO `transaction` VALUES (35, 1, 81, 2, '2024-04-03 11:01:15', '006-017-000087927', 274.93, 0.00, 274.93, '');
INSERT INTO `transaction` VALUES (36, 1, 212, 2, '2024-04-23 17:28:38', '014-004-000457367', 313.43, 0.00, 313.43, '');
INSERT INTO `transaction` VALUES (37, 1, 44, 1, '2024-05-19 17:37:30', '001-003-000000020', 405.88, 0.00, 405.88, '');
INSERT INTO `transaction` VALUES (38, 1, 31, 1, '2024-05-22 19:13:53', '001-003-000000021', 369.36, 0.00, 369.36, '');
INSERT INTO `transaction` VALUES (39, 1, 69, 1, '2024-05-04 16:33:45', '001-003-000000022', 438.84, 0.00, 438.84, '');
INSERT INTO `transaction` VALUES (40, 1, 41, 1, '2024-05-17 19:06:43', '001-003-000000023', 445.00, 0.00, 445.00, '');
INSERT INTO `transaction` VALUES (41, 1, 19, 1, '2024-05-29 15:08:44', '001-003-000000024', 461.40, 0.00, 461.40, '');
INSERT INTO `transaction` VALUES (42, 1, 749, 2, '2024-05-10 09:03:21', '027-047-000218236', 270.18, 0.00, 270.18, '');
INSERT INTO `transaction` VALUES (43, 1, 360, 2, '2024-05-30 19:34:53', '033-031-000306736', 284.82, 0.00, 284.82, '');
INSERT INTO `transaction` VALUES (44, 1, 634, 2, '2024-05-11 12:35:00', '033-002-000800383', 256.10, 0.00, 256.10, '');
INSERT INTO `transaction` VALUES (45, 1, 169, 2, '2024-06-14 08:19:33', '004-002-000673799', 260.03, 0.00, 260.03, '');
INSERT INTO `transaction` VALUES (46, 1, 57, 1, '2024-06-10 08:55:25', '001-003-000000025', 343.60, 0.00, 343.60, '');
INSERT INTO `transaction` VALUES (47, 1, 10, 1, '2024-06-01 18:58:46', '001-003-000000026', 433.30, 0.00, 433.30, '');
INSERT INTO `transaction` VALUES (48, 1, 314, 2, '2024-06-11 17:07:11', '033-028-000916790', 349.81, 0.00, 349.81, '');
INSERT INTO `transaction` VALUES (49, 1, 28, 1, '2024-06-11 13:54:00', '001-003-000000027', 413.40, 0.00, 413.40, '');
INSERT INTO `transaction` VALUES (50, 1, 41, 1, '2024-06-29 08:02:57', '001-003-000000028', 341.40, 0.00, 341.40, '');
INSERT INTO `transaction` VALUES (51, 1, 64, 1, '2024-06-12 14:43:41', '001-003-000000029', 257.06, 0.00, 257.06, '');
INSERT INTO `transaction` VALUES (52, 1, 37, 1, '2024-06-13 19:37:51', '001-003-000000030', 307.56, 0.00, 307.56, '');
INSERT INTO `transaction` VALUES (53, 1, 372, 2, '2024-06-11 10:29:32', '036-024-000780112', 281.72, 0.00, 281.72, '');
INSERT INTO `transaction` VALUES (54, 1, 798, 4, '2024-01-01 06:10:10', '001-003-000000003', 573.00, 0.00, 573.00, '');
INSERT INTO `transaction` VALUES (55, 1, 215, 4, '2024-01-01 06:32:20', '001-003-000000004', 1928.00, 0.00, 1928.00, '');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `iduser` int NOT NULL AUTO_INCREMENT,
  `idrole` int NOT NULL,
  `username` varchar(45) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL DEFAULT '',
  `password` varchar(100) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL DEFAULT '',
  `fullname` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL DEFAULT '',
  `status` int NOT NULL DEFAULT 1 COMMENT '1-Active 0-Inactive',
  `idbot` bigint NOT NULL DEFAULT 0 COMMENT 'Si es diferente de 0 es que es usuario chatbot',
  `lang` varchar(10) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL DEFAULT 'es',
  `operations` bigint NOT NULL DEFAULT 0 COMMENT 'Numero de operacion que ha realizado en el sistema',
  `lastlogged` datetime NULL DEFAULT NULL COMMENT 'Ultimo dia que se logueo o inicio sesion',
  `token` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`iduser`) USING BTREE,
  INDEX `IDXROLE`(`idrole` ASC) USING BTREE,
  CONSTRAINT `IDXROLE` FOREIGN KEY (`idrole`) REFERENCES `role` (`idrole`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf16 COLLATE = utf16_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 2, 'jorge', 'cambiar', 'Jorge', 1, 0, 'es', 0, NULL, NULL, '2024-06-21 15:30:34', '2024-08-06 03:26:32', NULL);
INSERT INTO `user` VALUES (2, 2, 'santiago', '$2y$12$Wi9AKbsfScIIPWV3jLUnTe33vjl4216PLxrCZTcbDM01mchImLJ0q', 'Santiago', 1, 0, 'es', 15, '2024-08-03 01:46:43', 'RWd1aGNxWkQyMGVBTkV4R2JwRkVBR3RuQ3MvYTMyOEN6WTl0cjZ5T2F4QmFxcWJLRTRtdnRtREY4K0FhYTg2Lzd0dzJTaEppQkw2R210TTNxalhFckE9PQ==', '2024-06-21 15:30:47', '2024-08-05 22:19:05', NULL);
INSERT INTO `user` VALUES (3, 1, 'hugo', 'cambiar', 'Hugo', 1, 0, 'es', 1, '2024-08-05 22:15:52', 'ZG5RTTVkU1FJZmZsaG5FeVVGd3ZHUHhWWE82TFVaa1hxYzlWZ2E2YWtVZWt3STU5Z0pZVkZ6VGlCKzlQL2lxY1k1N0p3SmNrWHlDMEorYnZrV1NubWc9PQ==', '2024-06-21 15:31:03', '2024-08-13 23:34:55', NULL);
INSERT INTO `user` VALUES (4, 2, 'joel', 'cambiar', 'Joel', 1, 0, 'es', 0, NULL, NULL, '2024-06-21 15:31:15', '2024-08-06 03:23:02', NULL);
INSERT INTO `user` VALUES (5, 2, 'rick', '', 'Ricardo', 1, 0, 'es', 0, NULL, NULL, '2024-06-21 15:31:31', '2024-08-02 23:53:36', NULL);
INSERT INTO `user` VALUES (6, 5, 'SantiagoDieum', '', 'Santiago Borja', 0, 1427181793, 'es', 294, NULL, NULL, '2024-07-04 13:14:09', '2024-08-02 23:53:36', NULL);
INSERT INTO `user` VALUES (7, 5, 'therichard369', '', 'Ricardo V', 0, 1211357100, 'es', 6, NULL, NULL, '2024-07-09 21:49:54', '2024-07-09 21:53:03', NULL);
INSERT INTO `user` VALUES (8, 5, 'Hugueins_hv', '', 'Hugueins AHV', 0, 106245323, 'es', 4, NULL, NULL, '2024-07-09 21:57:11', '2024-07-09 21:58:07', NULL);
INSERT INTO `user` VALUES (9, 5, 'bot', '', '', 0, 0, 'es', 0, NULL, NULL, '2024-07-12 01:19:59', '2024-07-12 15:32:08', NULL);
INSERT INTO `user` VALUES (10, 5, 'AlyJoBorja', '', 'Aly Borja', 0, 7054851197, 'es', 3, NULL, NULL, '2024-07-13 21:35:18', '2024-07-15 00:34:46', NULL);
INSERT INTO `user` VALUES (23, 3, 'asdas', 'cambiar', 'asdasd', 0, 0, 'es', 0, NULL, NULL, '2024-08-07 17:35:44', '2024-08-13 23:33:07', '2024-08-13 23:33:07');

-- ----------------------------
-- View structure for view_audit
-- ----------------------------
DROP VIEW IF EXISTS `view_audit`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_audit` AS select `a`.`idaudit` AS `idaudit`,`a`.`iduser` AS `iduser`,`u`.`fullname` AS `fullname`,`a`.`created_at` AS `date`,`a`.`ipaddr` AS `ipaddr`,`a`.`action` AS `method`,`a`.`route` AS `route`,`a`.`json` AS `json` from (`audit` `a` join `user` `u` on((`a`.`iduser` = `u`.`iduser`)));

-- ----------------------------
-- View structure for view_beneficiary
-- ----------------------------
DROP VIEW IF EXISTS `view_beneficiary`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_beneficiary` AS select distinct `b`.`idbeneficiary` AS `idbeneficiary`,if((`b`.`type` = 'C'),'Cliente',if((`b`.`type` = 'P'),'Proveedor','Cliente/Proveedor')) AS `type`,`b`.`identificationnumber` AS `identification`,`b`.`name` AS `nombre`,`b`.`comercialname` AS `nombrecomercial`,`b`.`address` AS `direccion`,`b`.`phone` AS `telefono`,`b`.`email` AS `email`,`b`.`web` AS `web`,`c`.`name` AS `pais`,`p`.`name` AS `provincia`,`cc`.`name` AS `ciudad`,`b`.`parish` AS `parroquia`,`b`.`deleted_at` AS `deleted_at`,`b`.`idcountry` AS `idcountry`,`b`.`idprovince` AS `idprovince`,`b`.`idcity` AS `idcity`,`b`.`creditquota` AS `creditquota`,`b`.`creditdays` AS `creditdays`,`b`.`account` AS `account` from (((`beneficiary` `b` join `country` `c` on((`b`.`idcountry` = `c`.`idcountry`))) join `province` `p` on((`p`.`idprovince` = `b`.`idprovince`))) join `city` `cc` on((`cc`.`idcity` = `b`.`idcity`)));

-- ----------------------------
-- View structure for view_city
-- ----------------------------
DROP VIEW IF EXISTS `view_city`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_city` AS select `c`.`name` AS `country`,`p`.`name` AS `province`,`p`.`code` AS `code`,`ct`.`name` AS `city` from ((`country` `c` join `province` `p` on((`p`.`idcountry` = `c`.`idcountry`))) join `city` `ct` on((`ct`.`idprovince` = `p`.`idprovince`)));

-- ----------------------------
-- View structure for view_clients
-- ----------------------------
DROP VIEW IF EXISTS `view_clients`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_clients` AS select distinct `b`.`idbeneficiary` AS `idbeneficiary`,`b`.`identificationnumber` AS `identifiacion`,`b`.`name` AS `nombre`,`b`.`comercialname` AS `nombrecomercial`,`b`.`address` AS `direccion`,`b`.`phone` AS `telefono`,`b`.`email` AS `email`,`b`.`web` AS `web`,`c`.`name` AS `pais`,`p`.`name` AS `provincia`,`cc`.`name` AS `ciudad`,`b`.`parish` AS `parroquia` from (((`beneficiary` `b` join `country` `c` on((`b`.`idcountry` = `c`.`idcountry`))) join `province` `p` on((`p`.`idprovince` = `b`.`idprovince`))) join `city` `cc` on((`cc`.`idcity` = `b`.`idcity`))) where (`b`.`type` = 'C');

-- ----------------------------
-- View structure for view_get_menu
-- ----------------------------
DROP VIEW IF EXISTS `view_get_menu`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_get_menu` AS select `role`.`idrole` AS `idrole`,`menu`.`idmenu` AS `idmenu`,`menu`.`order` AS `order`,`menu`.`name` AS `name`,`menu`.`icon` AS `icon`,`menu`.`route` AS `route`,`menu`.`submenu` AS `submenu` from ((`role` join `rolemenu` on((`role`.`idrole` = `rolemenu`.`idrole`))) join `menu` on((`rolemenu`.`idmenu` = `menu`.`idmenu`))) where (`menu`.`status` = 1) order by `menu`.`order`;

-- ----------------------------
-- View structure for view_get_users
-- ----------------------------
DROP VIEW IF EXISTS `view_get_users`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_get_users` AS select `u`.`iduser` AS `iduser`,`u`.`idrole` AS `idrole`,`r`.`name` AS `rolename`,`r`.`scope` AS `scope`,`u`.`username` AS `username`,`u`.`fullname` AS `fullname`,`u`.`status` AS `status`,`u`.`created_at` AS `created_at`,`u`.`udated_at` AS `udated_at`,`u`.`deleted_at` AS `deleted_at` from (`user` `u` join `role` `r` on((`u`.`idrole` = `r`.`idrole`)));

-- ----------------------------
-- View structure for view_movements
-- ----------------------------
DROP VIEW IF EXISTS `view_movements`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_movements` AS select `p`.`idproduct` AS `idproducto`,`p`.`productcode` AS `codigo`,`p`.`barcode` AS `codigobarras`,`p`.`name` AS `nombre`,`pl`.`description` AS `linea`,`pc`.`description` AS `categoria`,cast(`pm`.`qty` as char charset utf8mb4) AS `cantidad`,cast(`pm`.`price` as char charset utf8mb4) AS `precio`,cast(`pm`.`total` as char charset utf8mb4) AS `total`,`pm`.`entry` AS `asiento`,`mt`.`acronym` AS `coddoc`,`mt`.`name` AS `movimiento`,cast(`t`.`numberdocument` as char charset utf8mb4) AS `numdoc`,cast(`t`.`date` as datetime) AS `fecha`,year(cast(`t`.`date` as date)) AS `anio`,month(cast(`t`.`date` as date)) AS `mes`,dayofmonth(cast(`t`.`date` as date)) AS `dia`,quarter(cast(`t`.`date` as date)) AS `trimestre`,week(cast(`t`.`date` as date),0) AS `semana`,`b`.`name` AS `beneficiario`,`b`.`type` AS `tipo`,`b`.`idcountry` AS `pais_id`,`co`.`name` AS `pais`,`co`.`code` AS `pais_codigo`,`b`.`idprovince` AS `provincia_id`,`pr`.`name` AS `provincia`,`pr`.`code` AS `provincia_codigo`,`b`.`idcity` AS `cod_ciudad`,`ciu`.`name` AS `ciudad` from (((((((((`productmovement` `pm` join `transaction` `t` on((`t`.`idtransaction` = `pm`.`idtransaction`))) join `product` `p` on((`p`.`idproduct` = `pm`.`idproduct`))) join `movementtype` `mt` on((`mt`.`idmovementtype` = `t`.`idmovementtype`))) join `productline` `pl` on((`pl`.`idproductline` = `p`.`idproductline`))) join `productcategory` `pc` on((`pc`.`idproductcategory` = `p`.`idproductcategory`))) join `beneficiary` `b` on((`b`.`idbeneficiary` = `t`.`idbeneficiary`))) join `country` `co` on((`co`.`idcountry` = `b`.`idcountry`))) join `province` `pr` on((`pr`.`idprovince` = `b`.`idprovince`))) join `city` `ciu` on((`ciu`.`idcity` = `b`.`idcity`)));

-- ----------------------------
-- View structure for view_products
-- ----------------------------
DROP VIEW IF EXISTS `view_products`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_products` AS select `pr`.`name` AS `presentation`,`pl`.`description` AS `line`,`pc`.`description` AS `category`,`p`.`idproduct` AS `idproduct`,`p`.`idpresentation` AS `idpresentation`,`p`.`idproductline` AS `idproductline`,`p`.`idproductcategory` AS `idproductcategory`,`p`.`productcode` AS `productcode`,`p`.`barcode` AS `barcode`,`p`.`name` AS `name`,`p`.`description` AS `description`,`p`.`cost` AS `cost`,`p`.`stock` AS `stock`,`p`.`price` AS `price`,`p`.`stock_min` AS `stock_min`,`p`.`stock_max` AS `stock_max`,`p`.`image` AS `image`,`p`.`status` AS `status`,`p`.`accountcost` AS `accountcost`,`p`.`accountsales` AS `accountsales`,`p`.`accountinv` AS `accountinv`,`p`.`created_at` AS `created_at`,`p`.`udated_at` AS `udated_at`,`p`.`deleted_at` AS `deleted_at` from (((`product` `p` join `presentation` `pr` on((`pr`.`idpresentation` = `p`.`idpresentation`))) join `productline` `pl` on((`pl`.`idproductline` = `p`.`idproductline`))) join `productcategory` `pc` on((`pc`.`idproductcategory` = `p`.`idproductcategory`)));

-- ----------------------------
-- View structure for view_roles_by_nusers
-- ----------------------------
DROP VIEW IF EXISTS `view_roles_by_nusers`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_roles_by_nusers` AS select `r`.`idrole` AS `idrole`,`r`.`name` AS `name`,`r`.`scope` AS `scope`,`r`.`status` AS `status`,`r`.`created_at` AS `created_at`,`r`.`updated_at` AS `updated_at`,`r`.`deleted_at` AS `deleted_at`,(select count(`u`.`iduser`) from `user` `u` where (`u`.`idrole` = `r`.`idrole`)) AS `nusuarios`,(select count(`rm`.`idmenu`) from `rolemenu` `rm` where (`r`.`idrole` = `rm`.`idrole`)) AS `nmenus` from `role` `r`;

-- ----------------------------
-- View structure for view_transaction
-- ----------------------------
DROP VIEW IF EXISTS `view_transaction`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_transaction` AS select `t`.`idtransaction` AS `idtransaction`,`t`.`date` AS `date`,`t`.`idbeneficiary` AS `idbeneficiary`,`b`.`name` AS `beneficiary_name`,`t`.`idmovementtype` AS `idmovementtype`,`mt`.`name` AS `type`,`t`.`numberdocument` AS `numberdocument`,`t`.`reference` AS `reference`,`t`.`subtotal` AS `subtotal`,`t`.`total` AS `total`,`t`.`iduser` AS `iduser`,`u`.`fullname` AS `fullname`,(select count(0) from `productmovement` `pm` where (`pm`.`idtransaction` = `t`.`idtransaction`)) AS `nitems` from (((`transaction` `t` join `movementtype` `mt` on((`mt`.`idmovementtype` = `t`.`idmovementtype`))) join `beneficiary` `b` on((`b`.`idbeneficiary` = `t`.`idbeneficiary`))) join `user` `u` on((`u`.`iduser` = `t`.`iduser`)));

-- ----------------------------
-- View structure for view_users
-- ----------------------------
DROP VIEW IF EXISTS `view_users`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_users` AS select cast(`u`.`iduser` as char charset utf8mb4) AS `iduser`,`u`.`idrole` AS `idrole`,`r`.`name` AS `rolename`,`r`.`scope` AS `scope`,`u`.`username` AS `username`,`u`.`fullname` AS `fullname`,`u`.`status` AS `status`,`u`.`lang` AS `lang`,`u`.`created_at` AS `created_at`,`u`.`udated_at` AS `udated_at`,`u`.`deleted_at` AS `deleted_at` from (`user` `u` join `role` `r` on((`u`.`idrole` = `r`.`idrole`))) where (`u`.`idrole` <> 5);

-- ----------------------------
-- Procedure structure for check_password
-- ----------------------------
DROP PROCEDURE IF EXISTS `check_password`;
delimiter ;;
CREATE PROCEDURE `check_password`(IN toID int)
BEGIN
  DECLARE loERROR INTEGER DEFAULT(0);
  DECLARE loNUSER INTEGER DEFAULT(0);
  DECLARE sndRESPONSE VARCHAR(255) DEFAULT("");
  DECLARE loPASS VARCHAR(255) DEFAULT("");
   
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET loERROR = 1;
 	DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET loERROR = 1;
	DECLARE CONTINUE HANDLER FOR SQLSTATE '23000' SET loERROR = 1;
  
  SELECT count(*) INTO loNUSER FROM `user` WHERE idbot = toID;
  
  IF loNUSER > 0 THEN
    
    SELECT `password` INTO loPASS FROM `user` WHERE idbot = toID;
    
    SET sndRESPONSE = CONCAT("SHOW|",loPASS);

  ELSE
    SET sndRESPONSE = "ERROR|USUARIO NO ENCONTRADO";
  END IF;

  SELECT sndRESPONSE;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for getNumberSequential
-- ----------------------------
DROP PROCEDURE IF EXISTS `getNumberSequential`;
delimiter ;;
CREATE PROCEDURE `getNumberSequential`(IN toTMOV varchar(10))
BEGIN
  
  START TRANSACTION;
    UPDATE movementtype SET sequential = sequential + 1 WHERE acronym = toTMOV;
  COMMIT;
   
  SELECT sequential FROM movementtype WHERE acronym = toTMOV;
  
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for set_password
-- ----------------------------
DROP PROCEDURE IF EXISTS `set_password`;
delimiter ;;
CREATE PROCEDURE `set_password`(IN toID int, IN toNEWPASS varchar(255))
BEGIN
  DECLARE loERROR INTEGER DEFAULT(0);
  DECLARE loNUSER INTEGER DEFAULT(0);
  DECLARE sndRESPONSE VARCHAR(255) DEFAULT("");
   
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET loERROR = 1;
 	DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET loERROR = 1;
	DECLARE CONTINUE HANDLER FOR SQLSTATE '23000' SET loERROR = 1;
  
  SELECT count(*) INTO loNUSER FROM `user` WHERE idbot = toID;
  
  IF loNUSER > 0 THEN
    
    START TRANSACTION;
    
    SET @loSQL = CONCAT("UPDATE user SET password='",toNEWPASS,"' WHERE idbot = ", toID);
    -- select @loSQL;
    
		PREPARE STMT FROM @loSQL;
		EXECUTE STMT;
    
    -- CALL store_bot_messages(toID, "", "", "", "UPDATE PASSWORD", "menu");
    
    COMMIT; 
    
    SET sndRESPONSE = "EXEC|menu";

  ELSE
    SET sndRESPONSE = "ERROR|USUARIO NO ENCONTRADO";
  END IF;

  SELECT sndRESPONSE;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_kardex
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_kardex`;
delimiter ;;
CREATE PROCEDURE `sp_kardex`(IN `toDATO` BIGINT,IN `toSHOW` INT)
BEGIN
DECLARE loERROR 		INTEGER DEFAULT 0;DECLARE loPRODID 		BIGINT DEFAULT 0;DECLARE loDOCKXID 	BIGINT DEFAULT 0;DECLARE loID 			BIGINT DEFAULT 0;
DECLARE loNEWID 			BIGINT DEFAULT 0;DECLARE loNOMBRE		VARCHAR(500) DEFAULT '';DECLARE loTIPODOC	 	VARCHAR(50) DEFAULT '';DECLARE loFECHA	 	VARCHAR(50) DEFAULT '';DECLARE loNUMDOC		VARCHAR(50) DEFAULT '';DECLARE loBENE			VARCHAR(500) DEFAULT '';DECLARE loASIENTO		VARCHAR(1) DEFAULT '';DECLARE loBODEGAID	BIGINT DEFAULT 0;DECLARE loDATO2		BIGINT DEFAULT 0;DECLARE loBODEGA		VARCHAR(200) DEFAULT '';DECLARE loING_CANT	DOUBLE(20,4) DEFAULT 0;DECLARE loING_COSTO	DOUBLE(20,4) DEFAULT 0;DECLARE loING_TOTAL	DOUBLE(20,4) DEFAULT 0;DECLARE loEGR_CANT	DOUBLE(20,4) DEFAULT 0;DECLARE loEGR_COSTO	DOUBLE(20,4) DEFAULT 0;DECLARE loEGR_TOTAL	DOUBLE(20,4) DEFAULT 0;DECLARE loSAL_CANT	DOUBLE(20,4) DEFAULT 0;DECLARE loSAL_COSTO	DOUBLE(20,4) DEFAULT 0;DECLARE loSAL_TOTAL	DOUBLE(20,4) DEFAULT 0;DECLARE loPVP			DOUBLE(20,4) DEFAULT 0;DECLARE loPACK			VARCHAR(1) DEFAULT '';DECLARE loCLASE		VARCHAR(1) DEFAULT '';DECLARE loTIPO 		VARCHAR(5) DEFAULT ''; DECLARE faux CURSOR for 		SELECT 
      v.idproducto, 
      v.nombre,
      v.asiento,
      v.coddoc,
      v.numdoc,
      v.beneficiario,
      v.fecha, 
      IF(v.asiento = 'I', v.cantidad, 0) AS ing_cant,
      IF(v.asiento = 'I', v.precio, 0) AS ing_costo,
      IF(v.asiento = 'I', v.total, 0) AS ing_total,
      IF(v.asiento = 'E', v.cantidad, 0) AS egr_cant
    FROM 
      view_movements v 
    WHERE
      idproducto = toDATO
    ORDER BY 
      v.nombre, v.fecha;			DECLARE CONTINUE HANDLER FOR NOT FOUND SET loERROR = 1;	DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET loERROR = 1;	DECLARE CONTINUE HANDLER FOR SQLSTATE '23000' SET loERROR = 1;DROP TABLE IF EXISTS tmp_kardex;CREATE TEMPORARY TABLE IF NOT EXISTS tmp_kardex (	 id						      BIGINT(20) NOT NULL AUTO_INCREMENT,	 idproducto			    BIGINT(20) DEFAULT 0,	 idproducto_nombre	VARCHAR(500) DEFAULT '',	 tipo_comprobante		VARCHAR(50) DEFAULT '',	 fecha					    date ,	 numero_documento		VARCHAR(100) DEFAULT '',	 beneficiario			  VARCHAR(500) DEFAULT '',	 asiento					  VARCHAR(1) DEFAULT '',	 ing_cant			  	  DOUBLE(20,4) DEFAULT 0,	 ing_costo   			  DOUBLE(20,4) DEFAULT 0,	 ing_total				  DOUBLE(20,4) DEFAULT 0,	 egr_cant				    DOUBLE(20,4) DEFAULT 0,	 egr_costo				  DOUBLE(20,4) DEFAULT 0,	 egr_total				  DOUBLE(20,4) DEFAULT 0,	 sal_cant				    DOUBLE(20,4) DEFAULT 0,	 sal_costo 		      DOUBLE(20,4) DEFAULT 0,	 sal_total				  DOUBLE(20,4) DEFAULT 0,	 PRIMARY KEY(id),	 UNIQUE KEY id (id)		 )ENGINE = MEMORY;	 
   
   
SET loSAL_CANT = 0;SET loSAL_COSTO = 0;SET loSAL_TOTAL = 0;SET @newSAL_CANT = 0;SET @newSAL_COSTO = 0;SET @newSAL_TOTAL = 0;
START TRANSACTION;	OPEN faux;		FETCH NEXT FROM faux INTO loID,loNOMBRE,loASIENTO,loTIPODOC,loNUMDOC,loBENE,loFECHA,loING_CANT,loING_COSTO,loING_TOTAL,loEGR_CANT;		WHILE loERROR = 0 DO
    
      INSERT INTO tmp_kardex (
          idproducto,
          idproducto_nombre,
          tipo_comprobante,
          fecha,
          numero_documento,
          beneficiario,
          asiento,
          ing_cant,
          ing_costo,
          ing_total,
          egr_cant,
          egr_costo,
          egr_total,
          sal_cant,
          sal_costo,
          sal_total
       ) VALUES (
          loID,
          loNOMBRE,
          loTIPODOC,
          loFECHA,
          loNUMDOC,
          loBENE,
          loASIENTO,
          loING_CANT,
          loING_COSTO,
          loING_TOTAL,
          loEGR_CANT,
          0,
          0,
          0,
          0,
          0
       );
       
      SELECT LAST_INSERT_ID() INTO loNEWID;						IF loASIENTO="I" THEN				SET loSAL_CANT = loSAL_CANT + loING_CANT;				SET loSAL_TOTAL = loSAL_TOTAL + loING_TOTAL;				IF loSAL_CANT>0 THEN					SET loSAL_COSTO = loSAL_TOTAL / loSAL_CANT;				ELSE					SET loSAL_COSTO = loSAL_TOTAL / ABS(loSAL_CANT);				END IF;			ELSEIF loASIENTO="E" THEN				SET loSAL_CANT = loSAL_CANT - loEGR_CANT;				SET loSAL_TOTAL = loSAL_CANT * loSAL_COSTO;				SET loEGR_COSTO = loSAL_COSTO;				SET loEGR_TOTAL = loEGR_COSTO * loEGR_CANT;			END IF ;
			IF (ISNULL(loSAL_CANT)=1) THEN 				SET loSAL_CANT = 0;			END IF ;
			IF (ISNULL(loSAL_COSTO)=1) THEN 				SET loSAL_COSTO = 0;			END IF ;
			IF (ISNULL(loSAL_TOTAL)=1) THEN 				SET loSAL_TOTAL = 0;			END IF ;						IF loASIENTO="I" THEN				UPDATE tmp_kardex t					SET 						t.sal_cant = COALESCE(loSAL_CANT,0),						t.sal_costo = COALESCE(loSAL_COSTO,0),						t.sal_total = COALESCE(loSAL_TOTAL,0)					WHERE 						t.id = loNEWID;			ELSE				UPDATE tmp_kardex t					SET 						t.egr_costo = COALESCE(loEGR_COSTO,0),						t.egr_total = COALESCE(loEGR_TOTAL,0),						t.sal_cant = COALESCE(loSAL_CANT,0),						t.sal_costo = COALESCE(loSAL_COSTO,0),						t.sal_total = COALESCE(loSAL_TOTAL,0)					WHERE 						t.id = loNEWID;			END IF;
      
      			SET loERROR=0;			FETCH NEXT FROM faux INTO loID,loNOMBRE,loASIENTO,loTIPODOC,loNUMDOC,loBENE,loFECHA,loING_CANT,loING_COSTO,loING_TOTAL,loEGR_CANT;		END WHILE;
	CLOSE faux;COMMIT ;
IF toSHOW = 1 THEN
  SELECT * FROM tmp_kardex order by fecha;
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for store_bot_messages
-- ----------------------------
DROP PROCEDURE IF EXISTS `store_bot_messages`;
delimiter ;;
CREATE PROCEDURE `store_bot_messages`(IN toID bigint(11), IN toAuthor varchar(255), IN toLang varchar(255), IN toUsername varchar(255), IN toTextentered text, IN toKeyresult varchar(255), IN toData TEXT)
BEGIN
  DECLARE loERROR INTEGER DEFAULT(0);
  DECLARE loNUSER INTEGER DEFAULT(0);
  DECLARE loNREC INTEGER DEFAULT(0);
  DECLARE loIDUSER BIGINT DEFAULT(0);
  DECLARE loPASS VARCHAR(255) DEFAULT("");
  DECLARE loLASTLOGGED VARCHAR(255) DEFAULT("");
  DECLARE loIDROLE BIGINT DEFAULT(5);
  DECLARE sndRESPONSE VARCHAR(255) DEFAULT("");
 
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET loERROR = 1;
 	DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET loERROR = 1;
	DECLARE CONTINUE HANDLER FOR SQLSTATE '23000' SET loERROR = 1;
  
  START TRANSACTION;
  
    SELECT count(*) INTO loNUSER FROM `user` WHERE idbot = toID;
    
    IF loNUSER = 0 THEN
      INSERT INTO user (username,password,fullname,status,idbot,lang, idrole) VALUES (toUsername, '', toAuthor, 0, toID, toLang, loIDROLE);
      
      -- SET sndRESPONSE = "NEW|PASSWOOD";
      SET sndRESPONSE = "OK|";
    ELSE
      SELECT iduser, `password`, COALESCE(lastlogged,"") INTO loIDUSER, loPASS, loLASTLOGGED FROM user WHERE idbot = toID LIMIT 1;
      
      UPDATE user SET operations = operations + 1 WHERE iduser = loIDUSER;
      
      IF toUsername != "" THEN
        UPDATE user SET username = toUsername, lang = toLang WHERE iduser = loIDUSER;
      END IF;
        
      INSERT INTO bot_audit (iduser, textentered, keyresult, data) VALUES (loIDUSER, toTextentered, toKeyresult, toData);
      
      IF  (toKeyresult != "") THEN
        SELECT count(*) INTO loNREC FROM bot_spelling WHERE wordfind = toTextentered and menurun = toKeyresult;
        
        IF loNREC = 0 THEN
          INSERT INTO bot_spelling (wordfind, menurun) VALUES (toTextentered, toKeyresult);
        END IF;
      END IF;
      
      SET sndRESPONSE = "OK|";
      
      /*IF loPASS = "" THEN
        SET sndRESPONSE = "SET|PASSWOOD";
      ELSE
        UPDATE user SET operations = operations + 1 WHERE iduser = loIDUSER;
        
        INSERT INTO bot_audit (iduser, textentered, keyresult) VALUES (loIDUSER, toTextentered, toKeyresult);
        
        SET sndRESPONSE = "OK|";
        
        IF loLASTLOGGED = "" THEN
          SET sndRESPONSE = "LOGIN|";
        END IF;
        
        IF loLASTLOGGED != DATE(NOW()) THEN
          SET sndRESPONSE = "LOGIN|";
        END IF;
        
        
      END IF;
      */
    END IF;
    
  COMMIT;

  SELECT sndRESPONSE;

END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table productmovement
-- ----------------------------
DROP TRIGGER IF EXISTS `WhenInsert`;
delimiter ;;
CREATE TRIGGER `WhenInsert` AFTER INSERT ON `productmovement` FOR EACH ROW IF NEW.entry = 'I' THEN
  UPDATE product SET stock = stock + NEW.qty WHERE idproduct = NEW.idproduct;
ELSE
  UPDATE product SET stock = stock - NEW.qty WHERE idproduct = NEW.idproduct;
END IF
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
