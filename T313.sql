/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t313`;
CREATE DATABASE IF NOT EXISTS `t313` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t313`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-04-20 06:38:55'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-04-20 06:38:55'),
	(3, 'shoufei_types', '收费类型', 1, '物业费', NULL, NULL, '2022-04-20 06:38:55'),
	(4, 'shoufei_types', '收费类型', 2, '水费', NULL, NULL, '2022-04-20 06:38:55'),
	(5, 'shoufei_types', '收费类型', 3, '电费', NULL, NULL, '2022-04-20 06:38:55'),
	(6, 'jiaofei_types', '是否缴费', 1, '未缴费', NULL, NULL, '2022-04-20 06:38:55'),
	(7, 'jiaofei_types', '是否缴费', 2, '已缴费', NULL, NULL, '2022-04-20 06:38:55'),
	(8, 'fangwu_types', '房产类型', 1, '房产类型1', NULL, NULL, '2022-04-20 06:38:55'),
	(9, 'fangwu_types', '房产类型', 2, '房产类型2', NULL, NULL, '2022-04-20 06:38:55'),
	(10, 'fangwu_types', '房产类型', 3, '房产类型3', NULL, NULL, '2022-04-20 06:38:55');

DROP TABLE IF EXISTS `fangwu`;
CREATE TABLE IF NOT EXISTS `fangwu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `fangwu_uuid_number` varchar(200) DEFAULT NULL COMMENT '房屋编号 Search111 ',
  `fangwu_loudong` varchar(200) DEFAULT NULL COMMENT '楼栋 Search111 ',
  `fangwu_danyuan` varchar(200) DEFAULT NULL COMMENT '单元 Search111 ',
  `fangwu_fanghao` varchar(200) DEFAULT NULL COMMENT '房号 Search111 ',
  `fangwu_types` int DEFAULT NULL COMMENT '房产类型 Search111 ',
  `fangwu_content` text COMMENT '房屋备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='房产信息';

DELETE FROM `fangwu`;
INSERT INTO `fangwu` (`id`, `yonghu_id`, `fangwu_uuid_number`, `fangwu_loudong`, `fangwu_danyuan`, `fangwu_fanghao`, `fangwu_types`, `fangwu_content`, `insert_time`, `create_time`) VALUES
	(1, 2, '165043676783714', '楼栋1', '单元1', '房号1', 1, '房屋备注1', '2022-04-20 06:39:27', '2022-04-20 06:39:27'),
	(2, 3, '16504367678373', '楼栋2', '单元2', '房号2', 2, '房屋备注2', '2022-04-20 06:39:27', '2022-04-20 06:39:27'),
	(3, 3, '16504367678377', '楼栋3', '单元3', '房号3', 3, '房屋备注3', '2022-04-20 06:39:27', '2022-04-20 06:39:27'),
	(4, 2, '165043676783718', '楼栋4', '单元4', '房号4', 2, '房屋备注4', '2022-04-20 06:39:27', '2022-04-20 06:39:27'),
	(5, 2, '165043676783713', '楼栋5', '单元5', '房号5', 1, '房屋备注5', '2022-04-20 06:39:27', '2022-04-20 06:39:27'),
	(8, 1, '1650439639997', '楼栋6', '单元6', '房号6', 2, '<p><span style="color: rgb(96, 98, 102);">房屋备注123</span></p>', '2022-04-20 07:27:36', '2022-04-20 07:27:36');

DROP TABLE IF EXISTS `shoufei`;
CREATE TABLE IF NOT EXISTS `shoufei` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `shoufei_uuid_number` varchar(200) DEFAULT NULL COMMENT '收费编号 Search111 ',
  `shoufei_name` varchar(200) DEFAULT NULL COMMENT '收费名称 Search111 ',
  `shoufei_types` int DEFAULT NULL COMMENT '收费类型 Search111 ',
  `shoufei_jine` decimal(10,2) DEFAULT NULL COMMENT '收费金额',
  `shoufei_content` text COMMENT '收费详情',
  `jiaofei_types` int DEFAULT NULL COMMENT '是否缴费 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='收费信息';

DELETE FROM `shoufei`;
INSERT INTO `shoufei` (`id`, `yonghu_id`, `shoufei_uuid_number`, `shoufei_name`, `shoufei_types`, `shoufei_jine`, `shoufei_content`, `jiaofei_types`, `insert_time`, `create_time`) VALUES
	(1, 1, '16504367678480', '收费名称1', 3, 99.86, '收费详情1', 1, '2022-04-20 06:39:27', '2022-04-20 06:39:27'),
	(2, 2, '165043676784915', '收费名称2', 1, 57.99, '收费详情2', 2, '2022-04-20 06:39:27', '2022-04-20 06:39:27'),
	(3, 3, '165043676784919', '收费名称3', 2, 120.40, '收费详情3', 1, '2022-04-20 06:39:27', '2022-04-20 06:39:27'),
	(4, 2, '165043676784913', '收费名称4', 2, 963.09, '<p>收费详情4</p>', 2, '2022-04-20 06:39:27', '2022-04-20 06:39:27'),
	(5, 2, '16504367678507', '收费名称5', 2, 302.12, '收费详情5', 2, '2022-04-20 06:39:27', '2022-04-20 06:39:27');

DROP TABLE IF EXISTS `tingchewei`;
CREATE TABLE IF NOT EXISTS `tingchewei` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `tingchewei_uuid_number` varchar(200) DEFAULT NULL COMMENT '车位编号 Search111 ',
  `tingchewei_address` varchar(200) DEFAULT NULL COMMENT '车位位置 Search111 ',
  `tingchewei_content` text COMMENT '车位备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='车位';

DELETE FROM `tingchewei`;
INSERT INTO `tingchewei` (`id`, `yonghu_id`, `tingchewei_uuid_number`, `tingchewei_address`, `tingchewei_content`, `insert_time`, `create_time`) VALUES
	(1, 3, '16504367678596', '车位位置1', '车位备注1', '2022-04-20 06:39:27', '2022-04-20 06:39:27'),
	(2, 2, '165043676785917', '车位位置2', '车位备注2', '2022-04-20 06:39:27', '2022-04-20 06:39:27'),
	(3, 1, '16504367678596', '车位位置3', '车位备注3', '2022-04-20 06:39:27', '2022-04-20 06:39:27'),
	(4, 2, '165043676785920', '车位位置4', '车位备注4', '2022-04-20 06:39:27', '2022-04-20 06:39:27'),
	(5, 2, '16504367678590', '车位位置5', '车位备注5', '2022-04-20 06:39:27', '2022-04-20 06:39:27');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(3, 6, 'admin', 'users', '管理员', 'nm3dil0gq8yw54qq2scpms1qjac8v720', '2022-04-20 06:51:43', '2024-08-04 01:57:36'),
	(4, 1, 'a1', 'yonghu', '用户', 'jun88x78m2jnviblo1ayuk6owh1mx40d', '2022-04-20 07:13:05', '2024-08-04 01:58:27');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2022-05-02 06:51:13');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/shequwuyeguanli/upload/yonghu1.jpg', 1, '1@qq.com', '2022-04-20 06:39:27'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/shequwuyeguanli/upload/yonghu2.jpg', 1, '2@qq.com', '2022-04-20 06:39:27'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/shequwuyeguanli/upload/yonghu3.jpg', 1, '3@qq.com', '2022-04-20 06:39:27');

DROP TABLE IF EXISTS `zuzhuxinxi`;
CREATE TABLE IF NOT EXISTS `zuzhuxinxi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `zuzhuxinxi_name` varchar(200) DEFAULT NULL COMMENT '用户名称 Search111 ',
  `zuzhuxinxi_phone` varchar(200) DEFAULT NULL COMMENT '用户联系方式',
  `zuzhuxinxi_danyuan` varchar(200) DEFAULT NULL COMMENT '房屋地址 Search111 ',
  `zuzhuxinxi_jine` decimal(10,2) DEFAULT NULL COMMENT '租金/月',
  `zuzhuxinxi_yajin` decimal(10,2) DEFAULT NULL COMMENT '押金',
  `zuzhuxinxi_time` timestamp NULL DEFAULT NULL COMMENT '入住时间',
  `zuzhuxinxi_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='租住信息';

DELETE FROM `zuzhuxinxi`;
INSERT INTO `zuzhuxinxi` (`id`, `yonghu_id`, `zuzhuxinxi_name`, `zuzhuxinxi_phone`, `zuzhuxinxi_danyuan`, `zuzhuxinxi_jine`, `zuzhuxinxi_yajin`, `zuzhuxinxi_time`, `zuzhuxinxi_content`, `insert_time`, `create_time`) VALUES
	(1, 3, '用户名称1', '17703786901', '房屋地址1', 572.53, 151.24, '2022-04-20 06:39:27', '备注1', '2022-04-20 06:39:27', '2022-04-20 06:39:27'),
	(2, 2, '用户名称2', '17703786902', '房屋地址2', 258.71, 497.56, '2022-04-20 06:39:27', '备注2', '2022-04-20 06:39:27', '2022-04-20 06:39:27'),
	(3, 2, '用户名称3', '17703786903', '房屋地址3', 939.49, 800.81, '2022-04-20 06:39:27', '备注3', '2022-04-20 06:39:27', '2022-04-20 06:39:27'),
	(4, 2, '用户名称4', '17703786904', '房屋地址4', 468.54, 294.50, '2022-04-20 06:39:27', '备注4', '2022-04-20 06:39:27', '2022-04-20 06:39:27'),
	(5, 1, '用户名称5', '17703786905', '房屋地址5', 137.65, 760.82, '2022-04-20 06:39:27', '备注5', '2022-04-20 06:39:27', '2022-04-20 06:39:27');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
