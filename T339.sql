/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t339`;
CREATE DATABASE IF NOT EXISTS `t339` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t339`;

DROP TABLE IF EXISTS `baoxiuxinxi`;
CREATE TABLE IF NOT EXISTS `baoxiuxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `baoxiuwupin` varchar(200) NOT NULL COMMENT '报修物品',
  `baoxiuwenti` longtext COMMENT '报修问题',
  `baoxiuriqi` date DEFAULT NULL COMMENT '报修日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yezhuxingming` varchar(200) DEFAULT NULL COMMENT '业主姓名',
  `suoshuxiaoqu` varchar(200) DEFAULT NULL COMMENT '所属小区',
  `chulizhuangtai` varchar(200) DEFAULT NULL COMMENT '处理状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb3 COMMENT='报修信息';

DELETE FROM `baoxiuxinxi`;
INSERT INTO `baoxiuxinxi` (`id`, `addtime`, `mingcheng`, `baoxiuwupin`, `baoxiuwenti`, `baoxiuriqi`, `yonghuming`, `yezhuxingming`, `suoshuxiaoqu`, `chulizhuangtai`) VALUES
	(131, '2023-03-31 05:56:12', '名称1', '报修物品1', '报修问题1', '2023-03-31', '用户名1', '业主姓名1', '所属小区1', '已处理'),
	(132, '2023-03-31 05:56:12', '名称2', '报修物品2', '报修问题2', '2023-03-31', '用户名2', '业主姓名2', '所属小区2', '已处理'),
	(133, '2023-03-31 05:56:12', '名称3', '报修物品3', '报修问题3', '2023-03-31', '用户名3', '业主姓名3', '所属小区3', '已处理'),
	(134, '2023-03-31 05:56:12', '名称4', '报修物品4', '报修问题4', '2023-03-31', '用户名4', '业主姓名4', '所属小区4', '已处理'),
	(135, '2023-03-31 05:56:12', '名称5', '报修物品5', '报修问题5', '2023-03-31', '用户名5', '业主姓名5', '所属小区5', '已处理'),
	(136, '2023-03-31 05:56:12', '名称6', '报修物品6', '报修问题6', '2023-03-31', '用户名6', '业主姓名6', '所属小区6', '已处理'),
	(137, '2023-03-31 05:56:12', '名称7', '报修物品7', '报修问题7', '2023-03-31', '用户名7', '业主姓名7', '所属小区7', '已处理'),
	(138, '2023-03-31 05:56:12', '名称8', '报修物品8', '报修问题8', '2023-03-31', '用户名8', '业主姓名8', '所属小区8', '已处理');

DROP TABLE IF EXISTS `cheweixinxi`;
CREATE TABLE IF NOT EXISTS `cheweixinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cheweiquhao` varchar(200) NOT NULL COMMENT '车位区号',
  `cheweibianhao` varchar(200) NOT NULL COMMENT '车位编号',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `yezhuxingming` varchar(200) DEFAULT NULL COMMENT '业主姓名',
  `cheweifei` float NOT NULL COMMENT '车位费',
  `suoshuxiaoqu` varchar(200) NOT NULL COMMENT '所属小区',
  `beizhushuoming` longtext NOT NULL COMMENT '备注说明',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cheweibianhao` (`cheweibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb3 COMMENT='车位信息';

DELETE FROM `cheweixinxi`;
INSERT INTO `cheweixinxi` (`id`, `addtime`, `cheweiquhao`, `cheweibianhao`, `leixing`, `yonghuming`, `yezhuxingming`, `cheweifei`, `suoshuxiaoqu`, `beizhushuoming`) VALUES
	(71, '2023-03-31 05:56:12', '车位区号1', '车位编号1', '购买', '用户名1', '业主姓名1', 1, '所属小区1', '备注说明1'),
	(72, '2023-03-31 05:56:12', '车位区号2', '车位编号2', '购买', '用户名2', '业主姓名2', 2, '所属小区2', '备注说明2'),
	(73, '2023-03-31 05:56:12', '车位区号3', '车位编号3', '购买', '用户名3', '业主姓名3', 3, '所属小区3', '备注说明3'),
	(74, '2023-03-31 05:56:12', '车位区号4', '车位编号4', '购买', '用户名4', '业主姓名4', 4, '所属小区4', '备注说明4'),
	(75, '2023-03-31 05:56:12', '车位区号5', '车位编号5', '购买', '用户名5', '业主姓名5', 5, '所属小区5', '备注说明5'),
	(76, '2023-03-31 05:56:12', '车位区号6', '车位编号6', '购买', '用户名6', '业主姓名6', 6, '所属小区6', '备注说明6'),
	(77, '2023-03-31 05:56:12', '车位区号7', '车位编号7', '购买', '用户名7', '业主姓名7', 7, '所属小区7', '备注说明7'),
	(78, '2023-03-31 05:56:12', '车位区号8', '车位编号8', '购买', '用户名8', '业主姓名8', 8, '所属小区8', '备注说明8');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'upload/picture1.jpg'),
	(2, 'picture2', 'upload/picture2.jpg'),
	(3, 'picture3', 'upload/picture3.jpg');

DROP TABLE IF EXISTS `fangchanxinxi`;
CREATE TABLE IF NOT EXISTS `fangchanxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwubianhao` varchar(200) DEFAULT NULL COMMENT '房屋编号',
  `fangchanming` varchar(200) NOT NULL COMMENT '房产名',
  `fangwuleixing` varchar(200) DEFAULT NULL COMMENT '房屋类型',
  `danyuanhao` varchar(200) DEFAULT NULL COMMENT '单元号',
  `loudong` varchar(200) DEFAULT NULL COMMENT '楼栋',
  `shoujia` float DEFAULT NULL COMMENT '售价',
  `jianzhunianfen` varchar(200) DEFAULT NULL COMMENT '建筑年份',
  `fengge` varchar(200) DEFAULT NULL COMMENT '风格',
  `fangwumianji` varchar(200) NOT NULL COMMENT '房屋面积',
  `fangwuchaoxiang` varchar(200) DEFAULT NULL COMMENT '房屋朝向',
  `fangwudizhi` varchar(200) DEFAULT NULL COMMENT '房屋地址',
  `suoshuxiaoqu` varchar(200) DEFAULT NULL COMMENT '所属小区',
  `fangwuzhuangtai` varchar(200) NOT NULL COMMENT '房屋状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangwubianhao` (`fangwubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb3 COMMENT='房产信息';

DELETE FROM `fangchanxinxi`;
INSERT INTO `fangchanxinxi` (`id`, `addtime`, `fangwubianhao`, `fangchanming`, `fangwuleixing`, `danyuanhao`, `loudong`, `shoujia`, `jianzhunianfen`, `fengge`, `fangwumianji`, `fangwuchaoxiang`, `fangwudizhi`, `suoshuxiaoqu`, `fangwuzhuangtai`) VALUES
	(61, '2023-03-31 05:56:12', '1111111111', '房产名1', '房屋类型1', '单元号1', '楼栋1', 1, '建筑年份1', '风格1', '房屋面积1', '房屋朝向1', '房屋地址1', '所属小区1', '房屋状态1'),
	(62, '2023-03-31 05:56:12', '2222222222', '房产名2', '房屋类型2', '单元号2', '楼栋2', 2, '建筑年份2', '风格2', '房屋面积2', '房屋朝向2', '房屋地址2', '所属小区2', '房屋状态2'),
	(63, '2023-03-31 05:56:12', '3333333333', '房产名3', '房屋类型3', '单元号3', '楼栋3', 3, '建筑年份3', '风格3', '房屋面积3', '房屋朝向3', '房屋地址3', '所属小区3', '房屋状态3'),
	(64, '2023-03-31 05:56:12', '4444444444', '房产名4', '房屋类型4', '单元号4', '楼栋4', 4, '建筑年份4', '风格4', '房屋面积4', '房屋朝向4', '房屋地址4', '所属小区4', '房屋状态4'),
	(65, '2023-03-31 05:56:12', '5555555555', '房产名5', '房屋类型5', '单元号5', '楼栋5', 5, '建筑年份5', '风格5', '房屋面积5', '房屋朝向5', '房屋地址5', '所属小区5', '房屋状态5'),
	(66, '2023-03-31 05:56:12', '6666666666', '房产名6', '房屋类型6', '单元号6', '楼栋6', 6, '建筑年份6', '风格6', '房屋面积6', '房屋朝向6', '房屋地址6', '所属小区6', '房屋状态6'),
	(67, '2023-03-31 05:56:12', '7777777777', '房产名7', '房屋类型7', '单元号7', '楼栋7', 7, '建筑年份7', '风格7', '房屋面积7', '房屋朝向7', '房屋地址7', '所属小区7', '房屋状态7'),
	(68, '2023-03-31 05:56:12', '8888888888', '房产名8', '房屋类型8', '单元号8', '楼栋8', 8, '建筑年份8', '风格8', '房屋面积8', '房屋朝向8', '房屋地址8', '所属小区8', '房屋状态8');

DROP TABLE IF EXISTS `fuwupingjia`;
CREATE TABLE IF NOT EXISTS `fuwupingjia` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `fuwupingjia` varchar(200) NOT NULL COMMENT '服务评价',
  `yijianpingjia` longtext NOT NULL COMMENT '意见评价',
  `pingjiashijian` datetime DEFAULT NULL COMMENT '评价时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yezhuxingming` varchar(200) DEFAULT NULL COMMENT '业主姓名',
  `suoshuxiaoqu` varchar(200) DEFAULT NULL COMMENT '所属小区',
  `crossuserid` bigint DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb3 COMMENT='服务评价';

DELETE FROM `fuwupingjia`;
INSERT INTO `fuwupingjia` (`id`, `addtime`, `mingcheng`, `gonghao`, `xingming`, `fuwupingjia`, `yijianpingjia`, `pingjiashijian`, `yonghuming`, `yezhuxingming`, `suoshuxiaoqu`, `crossuserid`, `crossrefid`) VALUES
	(151, '2023-03-31 05:56:12', '名称1', '工号1', '姓名1', '很不满意', '意见评价1', '2023-03-31 13:56:12', '用户名1', '业主姓名1', '所属小区1', 1, 1),
	(152, '2023-03-31 05:56:12', '名称2', '工号2', '姓名2', '很不满意', '意见评价2', '2023-03-31 13:56:12', '用户名2', '业主姓名2', '所属小区2', 2, 2),
	(153, '2023-03-31 05:56:12', '名称3', '工号3', '姓名3', '很不满意', '意见评价3', '2023-03-31 13:56:12', '用户名3', '业主姓名3', '所属小区3', 3, 3),
	(154, '2023-03-31 05:56:12', '名称4', '工号4', '姓名4', '很不满意', '意见评价4', '2023-03-31 13:56:12', '用户名4', '业主姓名4', '所属小区4', 4, 4),
	(155, '2023-03-31 05:56:12', '名称5', '工号5', '姓名5', '很不满意', '意见评价5', '2023-03-31 13:56:12', '用户名5', '业主姓名5', '所属小区5', 5, 5),
	(156, '2023-03-31 05:56:12', '名称6', '工号6', '姓名6', '很不满意', '意见评价6', '2023-03-31 13:56:12', '用户名6', '业主姓名6', '所属小区6', 6, 6),
	(157, '2023-03-31 05:56:12', '名称7', '工号7', '姓名7', '很不满意', '意见评价7', '2023-03-31 13:56:12', '用户名7', '业主姓名7', '所属小区7', 7, 7),
	(158, '2023-03-31 05:56:12', '名称8', '工号8', '姓名8', '很不满意', '意见评价8', '2023-03-31 13:56:12', '用户名8', '业主姓名8', '所属小区8', 8, 8);

DROP TABLE IF EXISTS `huodongxinxi`;
CREATE TABLE IF NOT EXISTS `huodongxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) NOT NULL COMMENT '活动名称',
  `huodongleixing` varchar(200) NOT NULL COMMENT '活动类型',
  `huodongshijian` varchar(200) DEFAULT NULL COMMENT '活动时间',
  `suoshuxiaoqu` varchar(200) DEFAULT NULL COMMENT '所属小区',
  `huodongdizhi` varchar(200) DEFAULT NULL COMMENT '活动地址',
  `huodongjieguo` longtext COMMENT '活动结果',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb3 COMMENT='活动信息';

DELETE FROM `huodongxinxi`;
INSERT INTO `huodongxinxi` (`id`, `addtime`, `huodongmingcheng`, `huodongleixing`, `huodongshijian`, `suoshuxiaoqu`, `huodongdizhi`, `huodongjieguo`) VALUES
	(161, '2023-03-31 05:56:12', '活动名称1', '活动类型1', '活动时间1', '所属小区1', '活动地址1', '活动结果1'),
	(162, '2023-03-31 05:56:12', '活动名称2', '活动类型2', '活动时间2', '所属小区2', '活动地址2', '活动结果2'),
	(163, '2023-03-31 05:56:12', '活动名称3', '活动类型3', '活动时间3', '所属小区3', '活动地址3', '活动结果3'),
	(164, '2023-03-31 05:56:12', '活动名称4', '活动类型4', '活动时间4', '所属小区4', '活动地址4', '活动结果4'),
	(165, '2023-03-31 05:56:12', '活动名称5', '活动类型5', '活动时间5', '所属小区5', '活动地址5', '活动结果5'),
	(166, '2023-03-31 05:56:12', '活动名称6', '活动类型6', '活动时间6', '所属小区6', '活动地址6', '活动结果6'),
	(167, '2023-03-31 05:56:12', '活动名称7', '活动类型7', '活动时间7', '所属小区7', '活动地址7', '活动结果7'),
	(168, '2023-03-31 05:56:12', '活动名称8', '活动类型8', '活动时间8', '所属小区8', '活动地址8', '活动结果8');

DROP TABLE IF EXISTS `jiaofeixinxi`;
CREATE TABLE IF NOT EXISTS `jiaofeixinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `jiaofeimingcheng` varchar(200) DEFAULT NULL COMMENT '缴费名称',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `yezhuxingming` varchar(200) DEFAULT NULL COMMENT '业主姓名',
  `suoshuxiaoqu` varchar(200) DEFAULT NULL COMMENT '所属小区',
  `jiaofeileixing` varchar(200) DEFAULT NULL COMMENT '缴费类型',
  `jiaofeimingxi` longtext NOT NULL COMMENT '缴费明细',
  `xujiaojine` float NOT NULL COMMENT '需缴金额',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb3 COMMENT='缴费信息';

DELETE FROM `jiaofeixinxi`;
INSERT INTO `jiaofeixinxi` (`id`, `addtime`, `dingdanbianhao`, `jiaofeimingcheng`, `yonghuming`, `yezhuxingming`, `suoshuxiaoqu`, `jiaofeileixing`, `jiaofeimingxi`, `xujiaojine`, `fabushijian`, `ispay`) VALUES
	(91, '2023-03-31 05:56:12', '1111111111', '缴费名称1', '用户名1', '业主姓名1', '所属小区1', '物业费', '', 1, '2023-03-31 13:56:12', '未支付'),
	(92, '2023-03-31 05:56:12', '2222222222', '缴费名称2', '用户名2', '业主姓名2', '所属小区2', '物业费', '', 2, '2023-03-31 13:56:12', '未支付'),
	(93, '2023-03-31 05:56:12', '3333333333', '缴费名称3', '用户名3', '业主姓名3', '所属小区3', '物业费', '', 3, '2023-03-31 13:56:12', '未支付'),
	(94, '2023-03-31 05:56:12', '4444444444', '缴费名称4', '用户名4', '业主姓名4', '所属小区4', '物业费', '', 4, '2023-03-31 13:56:12', '未支付'),
	(95, '2023-03-31 05:56:12', '5555555555', '缴费名称5', '用户名5', '业主姓名5', '所属小区5', '物业费', '', 5, '2023-03-31 13:56:12', '未支付'),
	(96, '2023-03-31 05:56:12', '6666666666', '缴费名称6', '用户名6', '业主姓名6', '所属小区6', '物业费', '', 6, '2023-03-31 13:56:12', '未支付'),
	(97, '2023-03-31 05:56:12', '7777777777', '缴费名称7', '用户名7', '业主姓名7', '所属小区7', '物业费', '', 7, '2023-03-31 13:56:12', '未支付'),
	(98, '2023-03-31 05:56:12', '8888888888', '缴费名称8', '用户名8', '业主姓名8', '所属小区8', '物业费', '', 8, '2023-03-31 13:56:12', '未支付');

DROP TABLE IF EXISTS `tingchewei`;
CREATE TABLE IF NOT EXISTS `tingchewei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chechangmingcheng` varchar(200) NOT NULL COMMENT '车场名称',
  `cheweiquhao` varchar(200) NOT NULL COMMENT '车位区号',
  `cheweibianhao` varchar(200) NOT NULL COMMENT '车位编号',
  `chechangleixing` varchar(200) NOT NULL COMMENT '车场类型',
  `suoshuxiaoqu` varchar(200) DEFAULT NULL COMMENT '所属小区',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cheweibianhao` (`cheweibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb3 COMMENT='停车位';

DELETE FROM `tingchewei`;
INSERT INTO `tingchewei` (`id`, `addtime`, `chechangmingcheng`, `cheweiquhao`, `cheweibianhao`, `chechangleixing`, `suoshuxiaoqu`, `zhuangtai`) VALUES
	(81, '2023-03-31 05:56:12', '车场名称1', '车位区号1', '车位编号1', '车场类型1', '所属小区1', '已出售'),
	(82, '2023-03-31 05:56:12', '车场名称2', '车位区号2', '车位编号2', '车场类型2', '所属小区2', '已出售'),
	(83, '2023-03-31 05:56:12', '车场名称3', '车位区号3', '车位编号3', '车场类型3', '所属小区3', '已出售'),
	(84, '2023-03-31 05:56:12', '车场名称4', '车位区号4', '车位编号4', '车场类型4', '所属小区4', '已出售'),
	(85, '2023-03-31 05:56:12', '车场名称5', '车位区号5', '车位编号5', '车场类型5', '所属小区5', '已出售'),
	(86, '2023-03-31 05:56:12', '车场名称6', '车位区号6', '车位编号6', '车场类型6', '所属小区6', '已出售'),
	(87, '2023-03-31 05:56:12', '车场名称7', '车位区号7', '车位编号7', '车场类型7', '所属小区7', '已出售'),
	(88, '2023-03-31 05:56:12', '车场名称8', '车位区号8', '车位编号8', '车场类型8', '所属小区8', '已出售');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'dbwxt46pu03qr3q6kecmd4rpngog4hj0', '2023-03-31 05:57:26', '2024-08-04 04:26:07'),
	(2, 11, '物业管理1', 'wuyeguanli', '物业管理', 'mnbbrjlz76x6af16wyabw3yqek6eaj48', '2024-08-04 03:27:38', '2024-08-04 04:27:38'),
	(3, 21, '业主1', 'yezhu', '业主', 'pbrszlc11vhdse3osvzmaev4f9lfykj7', '2024-08-04 03:27:54', '2024-08-04 04:27:54'),
	(4, 31, '维修员1', 'weixiuyuan', '维修员', 'lfksfugcg1247dzfje4shgqv0azzphvi', '2024-08-04 03:28:06', '2024-08-04 04:28:06');

DROP TABLE IF EXISTS `tousuchuli`;
CREATE TABLE IF NOT EXISTS `tousuchuli` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `tousufenlei` varchar(200) NOT NULL COMMENT '投诉分类',
  `chulijieguo` longtext COMMENT '处理结果',
  `chulishijian` date DEFAULT NULL COMMENT '处理时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yezhuxingming` varchar(200) DEFAULT NULL COMMENT '业主姓名',
  `suoshuxiaoqu` varchar(200) DEFAULT NULL COMMENT '所属小区',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb3 COMMENT='投诉处理';

DELETE FROM `tousuchuli`;
INSERT INTO `tousuchuli` (`id`, `addtime`, `biaoti`, `tousufenlei`, `chulijieguo`, `chulishijian`, `yonghuming`, `yezhuxingming`, `suoshuxiaoqu`) VALUES
	(121, '2023-03-31 05:56:12', '标题1', '投诉分类1', '处理结果1', '2023-03-31', '用户名1', '业主姓名1', '所属小区1'),
	(122, '2023-03-31 05:56:12', '标题2', '投诉分类2', '处理结果2', '2023-03-31', '用户名2', '业主姓名2', '所属小区2'),
	(123, '2023-03-31 05:56:12', '标题3', '投诉分类3', '处理结果3', '2023-03-31', '用户名3', '业主姓名3', '所属小区3'),
	(124, '2023-03-31 05:56:12', '标题4', '投诉分类4', '处理结果4', '2023-03-31', '用户名4', '业主姓名4', '所属小区4'),
	(125, '2023-03-31 05:56:12', '标题5', '投诉分类5', '处理结果5', '2023-03-31', '用户名5', '业主姓名5', '所属小区5'),
	(126, '2023-03-31 05:56:12', '标题6', '投诉分类6', '处理结果6', '2023-03-31', '用户名6', '业主姓名6', '所属小区6'),
	(127, '2023-03-31 05:56:12', '标题7', '投诉分类7', '处理结果7', '2023-03-31', '用户名7', '业主姓名7', '所属小区7'),
	(128, '2023-03-31 05:56:12', '标题8', '投诉分类8', '处理结果8', '2023-03-31', '用户名8', '业主姓名8', '所属小区8');

DROP TABLE IF EXISTS `tousufenlei`;
CREATE TABLE IF NOT EXISTS `tousufenlei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tousufenlei` varchar(200) NOT NULL COMMENT '投诉分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb3 COMMENT='投诉分类';

DELETE FROM `tousufenlei`;
INSERT INTO `tousufenlei` (`id`, `addtime`, `tousufenlei`) VALUES
	(101, '2023-03-31 05:56:12', '投诉分类1'),
	(102, '2023-03-31 05:56:12', '投诉分类2'),
	(103, '2023-03-31 05:56:12', '投诉分类3'),
	(104, '2023-03-31 05:56:12', '投诉分类4'),
	(105, '2023-03-31 05:56:12', '投诉分类5'),
	(106, '2023-03-31 05:56:12', '投诉分类6'),
	(107, '2023-03-31 05:56:12', '投诉分类7'),
	(108, '2023-03-31 05:56:12', '投诉分类8');

DROP TABLE IF EXISTS `tousuxinxi`;
CREATE TABLE IF NOT EXISTS `tousuxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `tousufenlei` varchar(200) NOT NULL COMMENT '投诉分类',
  `tousuneirong` longtext COMMENT '投诉内容',
  `tousushijian` date DEFAULT NULL COMMENT '投诉时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yezhuxingming` varchar(200) DEFAULT NULL COMMENT '业主姓名',
  `suoshuxiaoqu` varchar(200) DEFAULT NULL COMMENT '所属小区',
  `chulizhuangtai` varchar(200) DEFAULT NULL COMMENT '处理状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb3 COMMENT='投诉信息';

DELETE FROM `tousuxinxi`;
INSERT INTO `tousuxinxi` (`id`, `addtime`, `biaoti`, `tousufenlei`, `tousuneirong`, `tousushijian`, `yonghuming`, `yezhuxingming`, `suoshuxiaoqu`, `chulizhuangtai`) VALUES
	(111, '2023-03-31 05:56:12', '标题1', '投诉分类1', '投诉内容1', '2023-03-31', '用户名1', '业主姓名1', '所属小区1', '已处理'),
	(112, '2023-03-31 05:56:12', '标题2', '投诉分类2', '投诉内容2', '2023-03-31', '用户名2', '业主姓名2', '所属小区2', '已处理'),
	(113, '2023-03-31 05:56:12', '标题3', '投诉分类3', '投诉内容3', '2023-03-31', '用户名3', '业主姓名3', '所属小区3', '已处理'),
	(114, '2023-03-31 05:56:12', '标题4', '投诉分类4', '投诉内容4', '2023-03-31', '用户名4', '业主姓名4', '所属小区4', '已处理'),
	(115, '2023-03-31 05:56:12', '标题5', '投诉分类5', '投诉内容5', '2023-03-31', '用户名5', '业主姓名5', '所属小区5', '已处理'),
	(116, '2023-03-31 05:56:12', '标题6', '投诉分类6', '投诉内容6', '2023-03-31', '用户名6', '业主姓名6', '所属小区6', '已处理'),
	(117, '2023-03-31 05:56:12', '标题7', '投诉分类7', '投诉内容7', '2023-03-31', '用户名7', '业主姓名7', '所属小区7', '已处理'),
	(118, '2023-03-31 05:56:12', '标题8', '投诉分类8', '投诉内容8', '2023-03-31', '用户名8', '业主姓名8', '所属小区8', '已处理');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-03-31 05:56:12');

DROP TABLE IF EXISTS `weixiuchuli`;
CREATE TABLE IF NOT EXISTS `weixiuchuli` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `baoxiuwupin` varchar(200) NOT NULL COMMENT '报修物品',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yezhuxingming` varchar(200) DEFAULT NULL COMMENT '业主姓名',
  `suoshuxiaoqu` varchar(200) DEFAULT NULL COMMENT '所属小区',
  `chulijieguo` longtext COMMENT '处理结果',
  `chulishijian` date DEFAULT NULL COMMENT '处理时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb3 COMMENT='维修处理';

DELETE FROM `weixiuchuli`;
INSERT INTO `weixiuchuli` (`id`, `addtime`, `mingcheng`, `baoxiuwupin`, `yonghuming`, `yezhuxingming`, `suoshuxiaoqu`, `chulijieguo`, `chulishijian`, `gonghao`, `xingming`) VALUES
	(141, '2023-03-31 05:56:12', '名称1', '报修物品1', '用户名1', '业主姓名1', '所属小区1', '处理结果1', '2023-03-31', '工号1', '姓名1'),
	(142, '2023-03-31 05:56:12', '名称2', '报修物品2', '用户名2', '业主姓名2', '所属小区2', '处理结果2', '2023-03-31', '工号2', '姓名2'),
	(143, '2023-03-31 05:56:12', '名称3', '报修物品3', '用户名3', '业主姓名3', '所属小区3', '处理结果3', '2023-03-31', '工号3', '姓名3'),
	(144, '2023-03-31 05:56:12', '名称4', '报修物品4', '用户名4', '业主姓名4', '所属小区4', '处理结果4', '2023-03-31', '工号4', '姓名4'),
	(145, '2023-03-31 05:56:12', '名称5', '报修物品5', '用户名5', '业主姓名5', '所属小区5', '处理结果5', '2023-03-31', '工号5', '姓名5'),
	(146, '2023-03-31 05:56:12', '名称6', '报修物品6', '用户名6', '业主姓名6', '所属小区6', '处理结果6', '2023-03-31', '工号6', '姓名6'),
	(147, '2023-03-31 05:56:12', '名称7', '报修物品7', '用户名7', '业主姓名7', '所属小区7', '处理结果7', '2023-03-31', '工号7', '姓名7'),
	(148, '2023-03-31 05:56:12', '名称8', '报修物品8', '用户名8', '业主姓名8', '所属小区8', '处理结果8', '2023-03-31', '工号8', '姓名8');

DROP TABLE IF EXISTS `weixiuyuan`;
CREATE TABLE IF NOT EXISTS `weixiuyuan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `suoshuxiaoqu` varchar(200) DEFAULT NULL COMMENT '所属小区',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb3 COMMENT='维修员';

DELETE FROM `weixiuyuan`;
INSERT INTO `weixiuyuan` (`id`, `addtime`, `gonghao`, `mima`, `xingming`, `xingbie`, `nianling`, `suoshuxiaoqu`, `youxiang`, `dianhua`) VALUES
	(31, '2023-03-31 05:56:12', '维修员1', 'e10adc3949ba59abbe56e057f20f883e', '姓名1', '男', '年龄1', '所属小区1', '773890001@qq.com', '13823888881'),
	(32, '2023-03-31 05:56:12', '维修员2', 'e10adc3949ba59abbe56e057f20f883e', '姓名2', '男', '年龄2', '所属小区2', '773890002@qq.com', '13823888882'),
	(33, '2023-03-31 05:56:12', '维修员3', 'e10adc3949ba59abbe56e057f20f883e', '姓名3', '男', '年龄3', '所属小区3', '773890003@qq.com', '13823888883'),
	(34, '2023-03-31 05:56:12', '维修员4', 'e10adc3949ba59abbe56e057f20f883e', '姓名4', '男', '年龄4', '所属小区4', '773890004@qq.com', '13823888884'),
	(35, '2023-03-31 05:56:12', '维修员5', 'e10adc3949ba59abbe56e057f20f883e', '姓名5', '男', '年龄5', '所属小区5', '773890005@qq.com', '13823888885'),
	(36, '2023-03-31 05:56:12', '维修员6', 'e10adc3949ba59abbe56e057f20f883e', '姓名6', '男', '年龄6', '所属小区6', '773890006@qq.com', '13823888886'),
	(37, '2023-03-31 05:56:12', '维修员7', 'e10adc3949ba59abbe56e057f20f883e', '姓名7', '男', '年龄7', '所属小区7', '773890007@qq.com', '13823888887'),
	(38, '2023-03-31 05:56:12', '维修员8', 'e10adc3949ba59abbe56e057f20f883e', '姓名8', '男', '年龄8', '所属小区8', '773890008@qq.com', '13823888888');

DROP TABLE IF EXISTS `wuyeguanli`;
CREATE TABLE IF NOT EXISTS `wuyeguanli` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `suoshuxiaoqu` varchar(200) DEFAULT NULL COMMENT '所属小区',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COMMENT='物业管理';

DELETE FROM `wuyeguanli`;
INSERT INTO `wuyeguanli` (`id`, `addtime`, `zhanghao`, `mima`, `xingming`, `xingbie`, `nianling`, `suoshuxiaoqu`, `youxiang`, `dianhua`) VALUES
	(11, '2023-03-31 05:56:12', '物业管理1', 'e10adc3949ba59abbe56e057f20f883e', '姓名1', '男', '年龄1', '所属小区1', '773890001@qq.com', '13823888881'),
	(12, '2023-03-31 05:56:12', '物业管理2', 'e10adc3949ba59abbe56e057f20f883e', '姓名2', '男', '年龄2', '所属小区2', '773890002@qq.com', '13823888882'),
	(13, '2023-03-31 05:56:12', '物业管理3', 'e10adc3949ba59abbe56e057f20f883e', '姓名3', '男', '年龄3', '所属小区3', '773890003@qq.com', '13823888883'),
	(14, '2023-03-31 05:56:12', '物业管理4', 'e10adc3949ba59abbe56e057f20f883e', '姓名4', '男', '年龄4', '所属小区4', '773890004@qq.com', '13823888884'),
	(15, '2023-03-31 05:56:12', '物业管理5', 'e10adc3949ba59abbe56e057f20f883e', '姓名5', '男', '年龄5', '所属小区5', '773890005@qq.com', '13823888885'),
	(16, '2023-03-31 05:56:12', '物业管理6', 'e10adc3949ba59abbe56e057f20f883e', '姓名6', '男', '年龄6', '所属小区6', '773890006@qq.com', '13823888886'),
	(17, '2023-03-31 05:56:12', '物业管理7', 'e10adc3949ba59abbe56e057f20f883e', '姓名7', '男', '年龄7', '所属小区7', '773890007@qq.com', '13823888887'),
	(18, '2023-03-31 05:56:12', '物业管理8', 'e10adc3949ba59abbe56e057f20f883e', '姓名8', '男', '年龄8', '所属小区8', '773890008@qq.com', '13823888888');

DROP TABLE IF EXISTS `xiaoqugonggao`;
CREATE TABLE IF NOT EXISTS `xiaoqugonggao` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `tupian` longtext COMMENT '图片',
  `suoshuxiaoqu` varchar(200) DEFAULT NULL COMMENT '所属小区',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3 COMMENT='小区公告';

DELETE FROM `xiaoqugonggao`;
INSERT INTO `xiaoqugonggao` (`id`, `addtime`, `biaoti`, `leixing`, `tupian`, `suoshuxiaoqu`, `gonggaoneirong`, `fabushijian`) VALUES
	(41, '2023-03-31 05:56:12', '标题1', '公告', 'upload/xiaoqugonggao_tupian1.jpg,upload/xiaoqugonggao_tupian2.jpg,upload/xiaoqugonggao_tupian3.jpg', '所属小区1', '公告内容1', '2023-03-31'),
	(42, '2023-03-31 05:56:12', '标题2', '公告', 'upload/xiaoqugonggao_tupian2.jpg,upload/xiaoqugonggao_tupian3.jpg,upload/xiaoqugonggao_tupian4.jpg', '所属小区2', '公告内容2', '2023-03-31'),
	(43, '2023-03-31 05:56:12', '标题3', '公告', 'upload/xiaoqugonggao_tupian3.jpg,upload/xiaoqugonggao_tupian4.jpg,upload/xiaoqugonggao_tupian5.jpg', '所属小区3', '公告内容3', '2023-03-31'),
	(44, '2023-03-31 05:56:12', '标题4', '公告', 'upload/xiaoqugonggao_tupian4.jpg,upload/xiaoqugonggao_tupian5.jpg,upload/xiaoqugonggao_tupian6.jpg', '所属小区4', '公告内容4', '2023-03-31'),
	(45, '2023-03-31 05:56:12', '标题5', '公告', 'upload/xiaoqugonggao_tupian5.jpg,upload/xiaoqugonggao_tupian6.jpg,upload/xiaoqugonggao_tupian7.jpg', '所属小区5', '公告内容5', '2023-03-31'),
	(46, '2023-03-31 05:56:12', '标题6', '公告', 'upload/xiaoqugonggao_tupian6.jpg,upload/xiaoqugonggao_tupian7.jpg,upload/xiaoqugonggao_tupian8.jpg', '所属小区6', '公告内容6', '2023-03-31'),
	(47, '2023-03-31 05:56:12', '标题7', '公告', 'upload/xiaoqugonggao_tupian7.jpg,upload/xiaoqugonggao_tupian8.jpg,upload/xiaoqugonggao_tupian9.jpg', '所属小区7', '公告内容7', '2023-03-31'),
	(48, '2023-03-31 05:56:12', '标题8', '公告', 'upload/xiaoqugonggao_tupian8.jpg,upload/xiaoqugonggao_tupian9.jpg,upload/xiaoqugonggao_tupian10.jpg', '所属小区8', '公告内容8', '2023-03-31');

DROP TABLE IF EXISTS `xiaoquxinxi`;
CREATE TABLE IF NOT EXISTS `xiaoquxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiaoqumingcheng` varchar(200) NOT NULL COMMENT '小区名称',
  `xiaoquleixing` varchar(200) NOT NULL COMMENT '小区类型',
  `wuyemingcheng` varchar(200) DEFAULT NULL COMMENT '物业名称',
  `xiaoqurenshu` int DEFAULT NULL COMMENT '小区人数',
  `xiaoquweizhi` varchar(200) DEFAULT NULL COMMENT '小区位置',
  `xiaoqujianjie` longtext COMMENT '小区简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb3 COMMENT='小区信息';

DELETE FROM `xiaoquxinxi`;
INSERT INTO `xiaoquxinxi` (`id`, `addtime`, `xiaoqumingcheng`, `xiaoquleixing`, `wuyemingcheng`, `xiaoqurenshu`, `xiaoquweizhi`, `xiaoqujianjie`) VALUES
	(51, '2023-03-31 05:56:12', '小区名称1', '小区类型1', '物业名称1', 1, '小区位置1', '小区简介1'),
	(52, '2023-03-31 05:56:12', '小区名称2', '小区类型2', '物业名称2', 2, '小区位置2', '小区简介2'),
	(53, '2023-03-31 05:56:12', '小区名称3', '小区类型3', '物业名称3', 3, '小区位置3', '小区简介3'),
	(54, '2023-03-31 05:56:12', '小区名称4', '小区类型4', '物业名称4', 4, '小区位置4', '小区简介4'),
	(55, '2023-03-31 05:56:12', '小区名称5', '小区类型5', '物业名称5', 5, '小区位置5', '小区简介5'),
	(56, '2023-03-31 05:56:12', '小区名称6', '小区类型6', '物业名称6', 6, '小区位置6', '小区简介6'),
	(57, '2023-03-31 05:56:12', '小区名称7', '小区类型7', '物业名称7', 7, '小区位置7', '小区简介7'),
	(58, '2023-03-31 05:56:12', '小区名称8', '小区类型8', '物业名称8', 8, '小区位置8', '小区简介8');

DROP TABLE IF EXISTS `yezhu`;
CREATE TABLE IF NOT EXISTS `yezhu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yezhuxingming` varchar(200) NOT NULL COMMENT '业主姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `suoshuxiaoqu` varchar(200) DEFAULT NULL COMMENT '所属小区',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3 COMMENT='业主';

DELETE FROM `yezhu`;
INSERT INTO `yezhu` (`id`, `addtime`, `yonghuming`, `mima`, `yezhuxingming`, `xingbie`, `nianling`, `suoshuxiaoqu`, `youxiang`, `shouji`) VALUES
	(21, '2023-03-31 05:56:12', '业主1', 'e10adc3949ba59abbe56e057f20f883e', '业主姓名1', '男', '年龄1', '所属小区1', '773890001@qq.com', '13823888881'),
	(22, '2023-03-31 05:56:12', '业主2', 'e10adc3949ba59abbe56e057f20f883e', '业主姓名2', '男', '年龄2', '所属小区2', '773890002@qq.com', '13823888882'),
	(23, '2023-03-31 05:56:12', '业主3', 'e10adc3949ba59abbe56e057f20f883e', '业主姓名3', '男', '年龄3', '所属小区3', '773890003@qq.com', '13823888883'),
	(24, '2023-03-31 05:56:12', '业主4', 'e10adc3949ba59abbe56e057f20f883e', '业主姓名4', '男', '年龄4', '所属小区4', '773890004@qq.com', '13823888884'),
	(25, '2023-03-31 05:56:12', '业主5', 'e10adc3949ba59abbe56e057f20f883e', '业主姓名5', '男', '年龄5', '所属小区5', '773890005@qq.com', '13823888885'),
	(26, '2023-03-31 05:56:12', '业主6', 'e10adc3949ba59abbe56e057f20f883e', '业主姓名6', '男', '年龄6', '所属小区6', '773890006@qq.com', '13823888886'),
	(27, '2023-03-31 05:56:12', '业主7', 'e10adc3949ba59abbe56e057f20f883e', '业主姓名7', '男', '年龄7', '所属小区7', '773890007@qq.com', '13823888887'),
	(28, '2023-03-31 05:56:12', '业主8', 'e10adc3949ba59abbe56e057f20f883e', '业主姓名8', '男', '年龄8', '所属小区8', '773890008@qq.com', '13823888888');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
