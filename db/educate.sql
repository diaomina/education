/*
Navicat MySQL Data Transfer

Source Server         : 192.168.32.46
Source Server Version : 50532
Source Host           : 192.168.32.46:3306
Source Database       : educate

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2019-11-04 16:34:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `chapter`
-- ----------------------------
DROP TABLE IF EXISTS `chapter`;
CREATE TABLE `chapter` (
  `Chapter_id` int(8) NOT NULL AUTO_INCREMENT,
  `Chapter_name` varchar(80) DEFAULT NULL,
  `Cuorse_id` int(8) DEFAULT NULL,
  `Create_by` varchar(20) DEFAULT NULL,
  `Create_time` datetime DEFAULT NULL,
  `Modify_by` varchar(20) DEFAULT NULL,
  `Modify_time` datetime DEFAULT NULL,
  `Corp_id` int(20) DEFAULT NULL,
  `Version` int(4) DEFAULT NULL,
  `Status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Chapter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chapter
-- ----------------------------
INSERT INTO `chapter` VALUES ('2', 'Linux环境配置', '1', '张三', null, '皮卫军', '2019-11-01 21:34:43', null, '1', '');
INSERT INTO `chapter` VALUES ('7', '路由器', '2', '张三', '2019-10-17 16:27:05', '李四', '2019-10-22 14:57:16', '10001', '1', '');
INSERT INTO `chapter` VALUES ('8', '交换机启动 工作原理及基本配置', '2', '张三', '2019-10-17 16:28:57', '李四', '2019-10-23 11:12:24', '10001', '1', '');
INSERT INTO `chapter` VALUES ('9', '路由器的各种密码设置及接口地址设置', '1', '张三', '2019-10-18 15:55:26', '张三', '2019-10-29 21:35:49', '10001', '1', '');
INSERT INTO `chapter` VALUES ('10', '计算机网络', '1', '张三', '2019-10-19 17:27:05', '皮卫军', '2019-10-29 21:58:02', '10001', '1', '');
INSERT INTO `chapter` VALUES ('12', '帧中继的配置', '2', '张三', '2019-10-21 15:11:21', '李四', '2019-10-23 11:11:39', '10001', '1', '');
INSERT INTO `chapter` VALUES ('13', '交换机的VLAN配置', '1', '张三', '2019-10-21 15:24:49', '张三', '2019-10-24 09:44:23', '10001', '1', '');
INSERT INTO `chapter` VALUES ('16', 'TCP/IP协议讲解', '1', '张三', '2019-10-21 16:10:15', '皮卫军', '2019-11-01 21:35:48', null, '1', '');
INSERT INTO `chapter` VALUES ('17', '交换机启动 工作原理及基本配置', '2', '张三', '2019-10-21 16:21:03', '李四', '2019-10-23 11:09:38', null, '1', '');
INSERT INTO `chapter` VALUES ('18', '交换机启动 工作原理及基本配置', '1', '张三', '2019-10-21 16:37:13', '张三', '2019-10-24 09:44:09', null, '1', '');
INSERT INTO `chapter` VALUES ('19', '交换机启动 工作原理及基本配置', '2', '张三', '2019-10-21 16:37:39', '张三', '2019-10-23 11:07:32', null, '1', '');
INSERT INTO `chapter` VALUES ('20', '123456', '1', '张三', '2019-10-21 16:39:22', '张三', '2019-10-21 22:06:03', null, '1', '');
INSERT INTO `chapter` VALUES ('21', '交换机启动 工作原理及基本配置', '2', '张三', '2019-10-21 16:43:21', '张三', '2019-10-22 09:30:56', null, '1', '');
INSERT INTO `chapter` VALUES ('22', '交换机启动 工作原理及基本配置', '1', '张三', '2019-10-21 16:51:02', '张三', '2019-10-24 09:44:04', null, '1', '');
INSERT INTO `chapter` VALUES ('23', '交换机启动 工作原理及基本配置', '1', '张三', '2019-10-21 16:59:38', '张三', '2019-10-24 09:43:57', null, '1', '');
INSERT INTO `chapter` VALUES ('24', '介质访问控制子层', '1', '张三', '2019-10-21 17:02:14', '皮卫军', '2019-11-01 16:14:56', null, '1', '');
INSERT INTO `chapter` VALUES ('25', 'html1', '4', '张三', '2019-10-22 14:56:37', '张三', '2019-10-22 14:57:02', '1', '0', '');
INSERT INTO `chapter` VALUES ('26', 'html2', '4', 'zhang', null, null, null, '1', '0', '');
INSERT INTO `chapter` VALUES ('27', '123456', '1', '张三', '2019-10-25 08:48:31', '张三', '2019-10-25 08:48:31', '10001', '1', '');
INSERT INTO `chapter` VALUES ('28', '数据链路层', '1', '张三', '2019-10-25 11:30:04', '皮卫军', '2019-11-01 16:14:02', '10001', '1', '');
INSERT INTO `chapter` VALUES ('29', '网络层设计问题', '1', '皮卫军', '2019-11-01 16:16:28', '皮卫军', '2019-11-01 16:16:28', '10001', '1', '');

-- ----------------------------
-- Table structure for `chapter_score`
-- ----------------------------
DROP TABLE IF EXISTS `chapter_score`;
CREATE TABLE `chapter_score` (
  `Id` int(8) NOT NULL AUTO_INCREMENT,
  `Stu_id` int(8) DEFAULT NULL,
  `Chapter_id` int(8) DEFAULT NULL,
  `Score` double DEFAULT NULL,
  `Create_by` varchar(20) DEFAULT NULL,
  `Create_time` datetime DEFAULT NULL,
  `Modify_by` varchar(20) DEFAULT NULL,
  `Modify_time` datetime DEFAULT NULL,
  `Corp_id` int(20) DEFAULT NULL,
  `Status` bit(1) DEFAULT NULL,
  `Version` int(4) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chapter_score
-- ----------------------------
INSERT INTO `chapter_score` VALUES ('3', '1', '10', '80', 'zl', '2019-10-29 15:52:16', 'zl', '2019-11-01 11:33:51', null, '', null);
INSERT INTO `chapter_score` VALUES ('4', '6', '10', '70', '老朱', '2019-10-29 20:53:59', '老朱', '2019-11-01 20:49:55', null, '', null);
INSERT INTO `chapter_score` VALUES ('5', '123', '10', '60', '李白不喝酒', '2019-11-01 21:12:37', '李白不喝酒', '2019-11-01 21:12:37', null, '', null);
INSERT INTO `chapter_score` VALUES ('6', '6', '2', '20', '老朱', '2019-11-01 22:01:15', '老朱', '2019-11-01 22:01:15', null, '', null);
INSERT INTO `chapter_score` VALUES ('7', '3', '2', '30', '朱林', '2019-11-04 08:42:24', '朱林', '2019-11-04 08:42:24', null, '', null);

-- ----------------------------
-- Table structure for `corp`
-- ----------------------------
DROP TABLE IF EXISTS `corp`;
CREATE TABLE `corp` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `Corp_name` varchar(20) DEFAULT NULL,
  `Register_datetime` datetime DEFAULT NULL,
  `Corp_descripion` varchar(20) DEFAULT NULL,
  `Create_by` varchar(20) DEFAULT NULL,
  `Create_time` datetime DEFAULT NULL,
  `Modify_by` varchar(20) DEFAULT NULL,
  `Modify_time` datetime DEFAULT NULL,
  `Status` bit(1) DEFAULT NULL,
  `version` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10002 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of corp
-- ----------------------------
INSERT INTO `corp` VALUES ('10001', '南昌航空大学科技学院', '1976-10-14 16:22:43', '非常棒', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `Course_name` varchar(20) DEFAULT NULL,
  `Corp_id` int(20) DEFAULT NULL,
  `Create_by` varchar(20) DEFAULT NULL,
  `Create_time` datetime DEFAULT NULL,
  `Modify_by` varchar(20) DEFAULT NULL,
  `Modify_time` datetime DEFAULT NULL,
  `Status` bit(1) DEFAULT NULL,
  `Version` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=891 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '计算机网络教程', '10001', '皮卫军', '2019-10-28 00:00:00', '皮卫军', '2019-10-28 00:00:00', '', '1');
INSERT INTO `course` VALUES ('2', 'Spring MVC', '480001', '老朱', '2019-10-28 15:43:10', null, null, null, null);
INSERT INTO `course` VALUES ('3', 'Maven', '100000', '老朱', '2019-10-10 00:00:00', 'zcz', '2019-10-21 00:00:00', '', '1');
INSERT INTO `course` VALUES ('4', '数据渲染', '1', 'zl', '2019-10-29 15:54:08', 'zl', '2019-10-29 15:54:14', '', '1');
INSERT INTO `course` VALUES ('5', '中间件教程', '1', 'zl', '2019-10-29 15:55:22', 'zl', '2019-10-29 15:55:26', '', '1');
INSERT INTO `course` VALUES ('8', 'C语言', '10001', '张小保', '2019-10-23 21:07:57', '张小保', '2019-10-23 21:08:04', '', '1');
INSERT INTO `course` VALUES ('9', 'javaweb', '10001', '张小保', '2019-10-23 21:08:47', '张小保', '2019-10-23 21:09:08', '', '1');
INSERT INTO `course` VALUES ('10', 'Java基础入门', '10001', '李金印', '2019-10-21 21:14:26', '李金印', '2019-10-21 21:14:33', '', '1');
INSERT INTO `course` VALUES ('888', '云计算与大数据', '10001', '李金印', '2019-10-24 00:00:00', '李哥', '2019-10-24 00:00:00', '', '1');
INSERT INTO `course` VALUES ('889', 'Maven', '1230', 'zcz', '2019-10-28 00:00:00', '', null, null, null);
INSERT INTO `course` VALUES ('890', 'java1232', '10086', 'zcz', '2019-10-10 00:00:00', '老朱', '2019-10-21 00:00:00', '', '2');

-- ----------------------------
-- Table structure for `daily_score`
-- ----------------------------
DROP TABLE IF EXISTS `daily_score`;
CREATE TABLE `daily_score` (
  `Id` int(8) NOT NULL AUTO_INCREMENT,
  `Stu_id` int(8) DEFAULT NULL,
  `Daily_time` datetime DEFAULT NULL,
  `Score` double DEFAULT NULL,
  `Create_by` varchar(20) DEFAULT NULL,
  `Create_time` datetime DEFAULT NULL,
  `Modify_by` varchar(20) DEFAULT NULL,
  `Modify_time` datetime DEFAULT NULL,
  `Corp_id` int(20) DEFAULT NULL,
  `Status` bit(1) DEFAULT NULL,
  `Version` int(4) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of daily_score
-- ----------------------------
INSERT INTO `daily_score` VALUES ('11', '110', '2019-10-30 17:05:42', '30', null, null, null, null, '10001', null, null);
INSERT INTO `daily_score` VALUES ('12', '125', '2019-10-30 21:35:38', '15', null, null, null, null, '12580', null, null);
INSERT INTO `daily_score` VALUES ('13', '125', '2019-10-31 08:52:45', '30', null, null, null, null, '12580', null, null);
INSERT INTO `daily_score` VALUES ('14', '110', '2019-10-31 16:33:04', '60', null, null, null, null, '10001', null, null);
INSERT INTO `daily_score` VALUES ('15', '3', '2019-10-31 16:45:54', '25', null, null, null, null, '10000', null, null);
INSERT INTO `daily_score` VALUES ('16', '3', '2019-10-31 16:45:59', '25', null, null, null, null, '10000', null, null);
INSERT INTO `daily_score` VALUES ('18', '124', '2019-10-31 16:49:18', '45', null, null, null, null, null, null, null);
INSERT INTO `daily_score` VALUES ('19', '110', '2019-11-01 20:49:52', '80', null, null, null, null, '10001', null, null);
INSERT INTO `daily_score` VALUES ('20', '110', '2019-11-04 15:45:55', '0', null, null, null, null, '10001', null, null);

-- ----------------------------
-- Table structure for `paper`
-- ----------------------------
DROP TABLE IF EXISTS `paper`;
CREATE TABLE `paper` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `corp_id` int(20) DEFAULT NULL COMMENT '机构ID',
  `course_id` int(8) DEFAULT NULL COMMENT '课程ID',
  `paper_name` varchar(128) DEFAULT NULL COMMENT '试卷名称',
  `paper_type_id` int(4) DEFAULT NULL COMMENT '试卷类型',
  `score_all` double DEFAULT NULL COMMENT '总分',
  `paper_time` varchar(20) DEFAULT NULL,
  `Create_by` varchar(20) DEFAULT NULL,
  `Create_time` datetime DEFAULT NULL,
  `Modify_by` varchar(20) DEFAULT NULL,
  `Modify_time` datetime DEFAULT NULL,
  `Status` bit(1) DEFAULT NULL,
  `Version` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=366 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paper
-- ----------------------------
INSERT INTO `paper` VALUES ('364', '10001', '888', '2018-2019《云计算与大数据》期末评测', null, '165', '00:01', '李哥', '2009-01-01 04:05:11', '李哥', '2009-01-01 04:05:11', '', '1');

-- ----------------------------
-- Table structure for `paper_answer`
-- ----------------------------
DROP TABLE IF EXISTS `paper_answer`;
CREATE TABLE `paper_answer` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `stu_id` int(8) DEFAULT NULL,
  `paper_id` int(8) DEFAULT NULL,
  `question_id` int(8) DEFAULT NULL,
  `answer` varchar(128) DEFAULT NULL,
  `Create_by` varchar(20) DEFAULT NULL,
  `Create_time` datetime DEFAULT NULL,
  `Modify_by` varchar(20) DEFAULT NULL,
  `Modify_time` datetime DEFAULT NULL,
  `Corp_id` int(20) DEFAULT NULL,
  `Status` bit(1) DEFAULT NULL,
  `Version` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2218 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paper_answer
-- ----------------------------
INSERT INTO `paper_answer` VALUES ('2159', '110', '365', '1', null, null, '2019-11-04 15:33:48', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2160', '110', '365', '2', null, null, '2019-11-04 15:33:48', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2161', '110', '365', '3', null, null, '2019-11-04 15:33:48', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2162', '110', '365', '4', null, null, '2019-11-04 15:33:48', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2163', '110', '365', '5', null, null, '2019-11-04 15:33:48', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2164', '110', '365', '6', '错', null, '2019-11-04 15:33:48', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2165', '110', '365', '7', '错', null, '2019-11-04 15:33:48', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2166', '110', '365', '8', '', null, '2019-11-04 15:33:48', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2167', '110', '365', '9', 'interface', null, '2019-11-04 15:33:48', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2168', '110', '365', '10', '', null, '2019-11-04 15:33:48', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2169', '110', '365', '118', null, null, '2019-11-04 15:33:48', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2170', '110', '365', '1006', 'A', null, '2019-11-04 15:33:48', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2171', '110', '365', '1007', '对', null, '2019-11-04 15:33:48', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2172', '110', '365', '1008', null, null, '2019-11-04 15:33:48', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2173', '110', '365', '1009', 'A', null, '2019-11-04 15:33:48', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2174', '110', '365', '1010', null, null, '2019-11-04 15:33:48', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2175', '110', '365', '1011', 'B', null, '2019-11-04 15:33:48', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2176', '110', '365', '1012', null, null, '2019-11-04 15:33:48', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2177', '110', '365', '1013', 'A', null, '2019-11-04 15:33:48', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2178', '110', '364', '123', 'D', null, '2019-11-04 15:46:55', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2179', '110', '364', '124', 'D', null, '2019-11-04 15:46:55', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2180', '110', '364', '125', 'C', null, '2019-11-04 15:46:55', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2181', '110', '364', '126', 'C', null, '2019-11-04 15:46:55', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2182', '110', '364', '127', 'D', null, '2019-11-04 15:46:55', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2183', '110', '364', '1003', '错', null, '2019-11-04 15:46:55', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2184', '110', '364', '1004', '错', null, '2019-11-04 15:46:55', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2185', '110', '364', '1005', '对', null, '2019-11-04 15:46:55', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2186', '110', '364', '1036', '8', null, '2019-11-04 15:46:55', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2187', '110', '364', '1037', '吃面', null, '2019-11-04 15:46:55', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2188', '120', '364', '123', 'D', null, '2019-11-04 15:47:41', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2189', '120', '364', '124', 'A', null, '2019-11-04 15:47:41', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2190', '120', '364', '125', 'D', null, '2019-11-04 15:47:41', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2191', '120', '364', '126', 'D', null, '2019-11-04 15:47:41', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2192', '120', '364', '127', 'D', null, '2019-11-04 15:47:41', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2193', '120', '364', '1003', '对', null, '2019-11-04 15:47:41', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2194', '120', '364', '1004', '对', null, '2019-11-04 15:47:41', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2195', '120', '364', '1005', null, null, '2019-11-04 15:47:41', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2196', '120', '364', '1036', '', null, '2019-11-04 15:47:41', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2197', '120', '364', '1037', '', null, '2019-11-04 15:47:41', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2198', '110', '364', '123', 'B', null, '2019-11-04 16:26:53', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2199', '110', '364', '124', 'C', null, '2019-11-04 16:26:53', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2200', '110', '364', '125', 'D', null, '2019-11-04 16:26:53', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2201', '110', '364', '126', 'B', null, '2019-11-04 16:26:53', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2202', '110', '364', '127', 'B', null, '2019-11-04 16:26:53', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2203', '110', '364', '1003', null, null, '2019-11-04 16:26:53', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2204', '110', '364', '1004', null, null, '2019-11-04 16:26:53', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2205', '110', '364', '1005', null, null, '2019-11-04 16:26:53', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2206', '110', '364', '1036', '', null, '2019-11-04 16:26:53', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2207', '110', '364', '1037', '', null, '2019-11-04 16:26:53', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2208', '110', '364', '123', 'B', null, '2019-11-04 16:26:55', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2209', '110', '364', '124', 'C', null, '2019-11-04 16:26:55', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2210', '110', '364', '125', 'D', null, '2019-11-04 16:26:55', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2211', '110', '364', '126', 'B', null, '2019-11-04 16:26:55', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2212', '110', '364', '127', 'B', null, '2019-11-04 16:26:55', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2213', '110', '364', '1003', null, null, '2019-11-04 16:26:55', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2214', '110', '364', '1004', null, null, '2019-11-04 16:26:55', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2215', '110', '364', '1005', null, null, '2019-11-04 16:26:55', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2216', '110', '364', '1036', '', null, '2019-11-04 16:26:55', null, null, '10001', null, null);
INSERT INTO `paper_answer` VALUES ('2217', '110', '364', '1037', '', null, '2019-11-04 16:26:55', null, null, '10001', null, null);

-- ----------------------------
-- Table structure for `paper_question`
-- ----------------------------
DROP TABLE IF EXISTS `paper_question`;
CREATE TABLE `paper_question` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `paper_id` int(8) DEFAULT NULL COMMENT '试卷ID',
  `question_id` int(8) DEFAULT NULL COMMENT '题目ID',
  `Create_by` varchar(20) DEFAULT NULL,
  `Create_time` datetime DEFAULT NULL,
  `Modify_by` varchar(20) DEFAULT NULL,
  `Modify_time` datetime DEFAULT NULL,
  `Corp_id` int(20) DEFAULT NULL,
  `Status` bit(1) DEFAULT NULL,
  `Version` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paper_question
-- ----------------------------
INSERT INTO `paper_question` VALUES ('57', '364', '123', null, '2019-11-04 15:38:14', null, '2019-11-04 15:38:14', null, '', '1');
INSERT INTO `paper_question` VALUES ('58', '364', '124', null, '2019-11-04 15:38:14', null, '2019-11-04 15:38:14', null, '', '1');
INSERT INTO `paper_question` VALUES ('59', '364', '125', null, '2019-11-04 15:38:14', null, '2019-11-04 15:38:14', null, '', '1');
INSERT INTO `paper_question` VALUES ('60', '364', '126', null, '2019-11-04 15:38:14', null, '2019-11-04 15:38:14', null, '', '1');
INSERT INTO `paper_question` VALUES ('61', '364', '127', null, '2019-11-04 15:38:14', null, '2019-11-04 15:38:14', null, '', '1');
INSERT INTO `paper_question` VALUES ('62', '364', '1003', null, '2019-11-04 15:38:14', null, '2019-11-04 15:38:14', null, '', '1');
INSERT INTO `paper_question` VALUES ('63', '364', '1004', null, '2019-11-04 15:38:14', null, '2019-11-04 15:38:14', null, '', '1');
INSERT INTO `paper_question` VALUES ('64', '364', '1005', null, '2019-11-04 15:38:14', null, '2019-11-04 15:38:14', null, '', '1');
INSERT INTO `paper_question` VALUES ('65', '364', '1036', null, '2019-11-04 15:38:14', null, '2019-11-04 15:38:14', null, '', '1');
INSERT INTO `paper_question` VALUES ('66', '364', '1037', null, '2019-11-04 15:38:14', null, '2019-11-04 15:38:14', null, '', '1');

-- ----------------------------
-- Table structure for `paper_score`
-- ----------------------------
DROP TABLE IF EXISTS `paper_score`;
CREATE TABLE `paper_score` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `stu_id` int(8) DEFAULT NULL,
  `corp_id` int(20) DEFAULT NULL,
  `paper_id` int(8) DEFAULT NULL,
  `score` double DEFAULT NULL,
  `Create_by` varchar(20) DEFAULT NULL,
  `Create_time` datetime DEFAULT NULL,
  `Modify_by` varchar(20) DEFAULT NULL,
  `Modify_time` datetime DEFAULT NULL,
  `Status` bit(1) DEFAULT NULL,
  `Version` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paper_score
-- ----------------------------
INSERT INTO `paper_score` VALUES ('71', '110', '10001', '364', '80', '李金印', '2019-11-04 16:26:53', null, null, null, null);

-- ----------------------------
-- Table structure for `paper_type`
-- ----------------------------
DROP TABLE IF EXISTS `paper_type`;
CREATE TABLE `paper_type` (
  `Id` int(8) NOT NULL AUTO_INCREMENT,
  `Chapter_name` int(8) DEFAULT NULL,
  `Create_by` varchar(20) DEFAULT NULL,
  `Create_time` datetime DEFAULT NULL,
  `Modify_by` varchar(8) DEFAULT NULL,
  `Modify_time` datetime DEFAULT NULL,
  `Status` bit(1) DEFAULT NULL,
  `Version` int(4) DEFAULT NULL,
  `Corp_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paper_type
-- ----------------------------

-- ----------------------------
-- Table structure for `question_chapter_answer`
-- ----------------------------
DROP TABLE IF EXISTS `question_chapter_answer`;
CREATE TABLE `question_chapter_answer` (
  `Id` int(8) NOT NULL AUTO_INCREMENT,
  `Stu_id` int(8) DEFAULT NULL,
  `Chapter_id` int(8) DEFAULT NULL,
  `Question_id` int(8) DEFAULT NULL,
  `Answer` varchar(128) DEFAULT NULL,
  `Create_by` varchar(20) DEFAULT NULL,
  `Create_time` datetime DEFAULT NULL,
  `Modify_by` varchar(20) DEFAULT NULL,
  `Modify_time` datetime DEFAULT NULL,
  `Corp_id` int(8) DEFAULT NULL,
  `Status` bit(1) DEFAULT NULL,
  `Version` int(4) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question_chapter_answer
-- ----------------------------
INSERT INTO `question_chapter_answer` VALUES ('1', '1', '10', '1', 'C', 'zl', '2019-10-29 15:48:47', 'zl', '2019-11-01 11:33:51', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('2', '1', '10', '2', 'C', 'zl', '2019-10-29 15:48:47', 'zl', '2019-11-01 11:33:51', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('3', '1', '10', '3', 'A', 'zl', '2019-10-29 15:48:47', 'zl', '2019-11-01 11:33:51', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('4', '1', '10', '4', 'A', 'zl', '2019-10-29 15:48:47', 'zl', '2019-11-01 11:33:51', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('5', '1', '10', '1006', null, 'zl', '2019-10-29 15:48:47', 'zl', '2019-11-01 11:33:51', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('6', '1', '10', '5', 'A', 'zl', '2019-10-29 15:48:47', 'zl', '2019-11-01 11:33:51', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('7', '1', '10', '1008', 'A', 'zl', '2019-10-29 15:48:47', 'zl', '2019-11-01 11:33:51', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('8', '1', '10', '1009', 'B', 'zl', '2019-10-29 15:48:47', 'zl', '2019-11-01 11:33:51', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('9', '1', '10', '1010', 'B', 'zl', '2019-10-29 15:48:47', 'zl', '2019-11-01 11:33:51', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('10', '1', '10', '1011', 'D', 'zl', '2019-10-29 15:48:47', 'zl', '2019-11-01 11:33:51', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('11', '6', '10', '1', 'C', '老朱', '2019-10-29 16:40:49', '老朱', '2019-11-01 20:49:55', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('12', '6', '10', '2', 'C', '老朱', '2019-10-29 16:40:56', '老朱', '2019-11-01 20:49:55', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('13', '6', '10', '3', 'A', '老朱', '2019-10-29 16:41:00', '老朱', '2019-11-01 20:49:55', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('14', '6', '10', '4', 'A', '老朱', '2019-10-29 16:41:03', '老朱', '2019-11-01 20:49:55', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('15', '6', '10', '1006', 'D', '老朱', '2019-10-29 16:41:07', '老朱', '2019-11-01 20:49:55', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('16', '6', '10', '5', 'A', '老朱', '2019-10-29 16:41:12', '老朱', '2019-11-01 20:49:55', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('17', '6', '10', '1008', 'A', '老朱', '2019-10-29 16:41:17', '老朱', '2019-11-01 20:49:55', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('18', '6', '10', '1009', null, '老朱', '2019-10-29 16:41:20', '老朱', '2019-11-01 20:49:55', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('19', '6', '10', '1010', 'B', '老朱', '2019-10-29 16:41:24', '老朱', '2019-11-01 20:49:55', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('20', '6', '10', '1011', 'D', '老朱', '2019-10-29 16:41:28', '老朱', '2019-11-01 20:49:55', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('21', '123', '10', '1', 'C', '李白不喝酒', '2019-11-01 21:12:36', '李白不喝酒', '2019-11-01 21:12:36', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('22', '123', '10', '2', 'C', '李白不喝酒', '2019-11-01 21:12:36', '李白不喝酒', '2019-11-01 21:12:36', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('23', '123', '10', '3', 'A', '李白不喝酒', '2019-11-01 21:12:36', '李白不喝酒', '2019-11-01 21:12:36', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('24', '123', '10', '4', 'A', '李白不喝酒', '2019-11-01 21:12:36', '李白不喝酒', '2019-11-01 21:12:36', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('25', '123', '10', '1006', 'B', '李白不喝酒', '2019-11-01 21:12:36', '李白不喝酒', '2019-11-01 21:12:36', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('26', '123', '10', '5', 'A', '李白不喝酒', '2019-11-01 21:12:36', '李白不喝酒', '2019-11-01 21:12:36', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('27', '123', '10', '1008', 'D', '李白不喝酒', '2019-11-01 21:12:36', '李白不喝酒', '2019-11-01 21:12:36', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('28', '123', '10', '1009', 'B', '李白不喝酒', '2019-11-01 21:12:36', '李白不喝酒', '2019-11-01 21:12:36', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('29', '123', '10', '1010', null, '李白不喝酒', '2019-11-01 21:12:37', '李白不喝酒', '2019-11-01 21:12:37', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('30', '123', '10', '1011', 'A', '李白不喝酒', '2019-11-01 21:12:37', '李白不喝酒', '2019-11-01 21:12:37', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('31', '6', '2', '1038', 'B', '老朱', '2019-11-01 22:01:15', '老朱', '2019-11-01 22:01:15', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('32', '6', '2', '1039', 'A', '老朱', '2019-11-01 22:01:15', '老朱', '2019-11-01 22:01:15', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('33', '6', '2', '1040', 'D', '老朱', '2019-11-01 22:01:15', '老朱', '2019-11-01 22:01:15', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('34', '6', '2', '1041', 'B', '老朱', '2019-11-01 22:01:15', '老朱', '2019-11-01 22:01:15', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('35', '6', '2', '1042', 'D', '老朱', '2019-11-01 22:01:15', '老朱', '2019-11-01 22:01:15', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('36', '6', '2', '1043', 'A', '老朱', '2019-11-01 22:01:15', '老朱', '2019-11-01 22:01:15', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('37', '6', '2', '1044', 'C', '老朱', '2019-11-01 22:01:15', '老朱', '2019-11-01 22:01:15', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('38', '6', '2', '1045', 'A', '老朱', '2019-11-01 22:01:15', '老朱', '2019-11-01 22:01:15', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('39', '6', '2', '1046', 'A', '老朱', '2019-11-01 22:01:15', '老朱', '2019-11-01 22:01:15', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('40', '6', '2', '1047', null, '老朱', '2019-11-01 22:01:15', '老朱', '2019-11-01 22:01:15', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('41', '3', '2', '1038', 'A', '朱林', '2019-11-04 08:42:24', '朱林', '2019-11-04 08:42:24', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('42', '3', '2', '1039', 'A', '朱林', '2019-11-04 08:42:24', '朱林', '2019-11-04 08:42:24', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('43', '3', '2', '1040', 'A', '朱林', '2019-11-04 08:42:24', '朱林', '2019-11-04 08:42:24', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('44', '3', '2', '1041', 'B', '朱林', '2019-11-04 08:42:24', '朱林', '2019-11-04 08:42:24', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('45', '3', '2', '1042', 'A', '朱林', '2019-11-04 08:42:24', '朱林', '2019-11-04 08:42:24', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('46', '3', '2', '1043', 'B', '朱林', '2019-11-04 08:42:24', '朱林', '2019-11-04 08:42:24', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('47', '3', '2', '1044', 'A', '朱林', '2019-11-04 08:42:24', '朱林', '2019-11-04 08:42:24', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('48', '3', '2', '1045', 'A', '朱林', '2019-11-04 08:42:24', '朱林', '2019-11-04 08:42:24', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('49', '3', '2', '1046', 'C', '朱林', '2019-11-04 08:42:24', '朱林', '2019-11-04 08:42:24', '10001', null, '1');
INSERT INTO `question_chapter_answer` VALUES ('50', '3', '2', '1047', 'A', '朱林', '2019-11-04 08:42:24', '朱林', '2019-11-04 08:42:24', '10001', null, '1');

-- ----------------------------
-- Table structure for `question_chapter_practice`
-- ----------------------------
DROP TABLE IF EXISTS `question_chapter_practice`;
CREATE TABLE `question_chapter_practice` (
  `Id` int(8) NOT NULL AUTO_INCREMENT,
  `Chapterp_id` int(8) DEFAULT NULL,
  `Question_id` int(8) DEFAULT NULL,
  `Create_by` varchar(20) DEFAULT NULL,
  `Create_time` datetime DEFAULT NULL,
  `Modify_by` varchar(20) DEFAULT NULL,
  `Modify_time` datetime DEFAULT NULL,
  `Corp_id` int(4) DEFAULT NULL,
  `Status` bit(1) DEFAULT NULL,
  `Version` int(4) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question_chapter_practice
-- ----------------------------
INSERT INTO `question_chapter_practice` VALUES ('1', '10', '1', 'zhangsan', '2019-10-22 15:26:06', 'zhangsan', '2019-10-22 15:26:16', '10001', '', '1');
INSERT INTO `question_chapter_practice` VALUES ('2', '10', '2', 'zhangsan', '2019-10-22 17:20:35', 'zhangsan', '2019-10-22 17:20:43', '10001', '', '1');
INSERT INTO `question_chapter_practice` VALUES ('3', '10', '3', 'zhangsan', '2019-10-22 17:21:49', 'zhangsan', '2019-10-22 17:21:57', '10001', '', '1');
INSERT INTO `question_chapter_practice` VALUES ('4', '10', '4', 'zhangsan', '2019-10-23 14:55:19', 'zhangsan', '2019-10-23 14:55:26', '10001', '', '1');
INSERT INTO `question_chapter_practice` VALUES ('5', '10', '118', '张三', '2019-10-23 16:47:03', '张三', '2019-10-23 16:47:03', '10001', '', '1');
INSERT INTO `question_chapter_practice` VALUES ('6', '10', '1006', '皮卫军', '2019-10-28 22:03:08', '皮卫军', '2019-10-28 22:03:17', '10001', '', '1');
INSERT INTO `question_chapter_practice` VALUES ('7', '10', '1007', '皮卫军', '2019-10-28 22:03:53', '皮卫军', '2019-10-28 22:04:02', '10001', '', '1');
INSERT INTO `question_chapter_practice` VALUES ('8', '10', '6', '皮卫军', '2019-10-29 08:42:02', '皮卫军', '2019-10-29 08:42:12', '10001', '', '1');
INSERT INTO `question_chapter_practice` VALUES ('9', '10', '7', '皮卫军', '2019-10-29 08:42:48', '皮卫军', '2019-10-29 08:42:58', '10001', '', '1');
INSERT INTO `question_chapter_practice` VALUES ('10', '10', '8', '皮卫军', '2019-10-29 08:43:40', '皮卫军', '2019-10-29 08:43:50', '10001', '', '1');
INSERT INTO `question_chapter_practice` VALUES ('11', '10', '9', '皮卫军', '2019-10-29 08:44:29', '皮卫军', '2019-10-29 08:44:39', '10001', '', '1');
INSERT INTO `question_chapter_practice` VALUES ('12', '10', '5', '皮卫军', '2019-10-29 08:45:36', '皮卫军', '2019-10-29 08:45:45', '10001', '', '1');
INSERT INTO `question_chapter_practice` VALUES ('13', '10', '10', '皮卫军', '2019-10-29 08:46:20', '皮卫军', '2019-10-29 08:46:34', '10001', '', '1');
INSERT INTO `question_chapter_practice` VALUES ('14', '10', '1008', '皮卫军', '2019-10-29 10:48:34', '皮卫军', '2019-10-29 10:48:41', '10001', '', '1');
INSERT INTO `question_chapter_practice` VALUES ('15', '10', '1009', '皮卫军', '2019-10-29 10:50:32', '皮卫军', '2019-10-29 10:50:39', '10001', '', '1');
INSERT INTO `question_chapter_practice` VALUES ('16', '10', '1010', '皮卫军', '2019-10-29 10:51:10', '皮卫军', '2019-10-29 10:51:17', '10001', '', '1');
INSERT INTO `question_chapter_practice` VALUES ('17', '10', '1011', '皮卫军', '2019-10-29 10:51:49', '皮卫军', '2019-10-29 10:51:57', '10001', '', '1');
INSERT INTO `question_chapter_practice` VALUES ('18', '10', '1012', '皮卫军', '2019-10-29 10:52:26', '皮卫军', '2019-10-29 10:52:34', '10001', '', '1');
INSERT INTO `question_chapter_practice` VALUES ('19', '2', '1038', '皮卫军', '2019-11-01 16:20:07', '皮卫军', '2019-11-01 16:20:07', null, '', '1');
INSERT INTO `question_chapter_practice` VALUES ('20', '2', '1039', '皮卫军', '2019-11-01 16:28:41', '皮卫军', '2019-11-01 16:28:41', null, '', '1');
INSERT INTO `question_chapter_practice` VALUES ('21', '2', '1040', '皮卫军', '2019-11-01 21:32:01', '皮卫军', '2019-11-01 21:32:01', null, '', '1');
INSERT INTO `question_chapter_practice` VALUES ('22', '2', '1041', '皮卫军', '2019-11-01 21:44:07', '皮卫军', '2019-11-01 21:44:07', null, '', '1');
INSERT INTO `question_chapter_practice` VALUES ('23', '2', '1042', '皮卫军', '2019-11-01 21:48:48', '皮卫军', '2019-11-01 21:48:48', '10001', '', '1');
INSERT INTO `question_chapter_practice` VALUES ('24', '2', '1043', '皮卫军', '2019-11-01 21:50:13', '皮卫军', '2019-11-01 21:50:13', '10001', '', '1');
INSERT INTO `question_chapter_practice` VALUES ('25', '2', '1044', '皮卫军', '2019-11-01 21:52:56', '皮卫军', '2019-11-01 21:52:56', '10001', '', '1');
INSERT INTO `question_chapter_practice` VALUES ('26', '2', '1045', '皮卫军', '2019-11-01 21:55:11', '皮卫军', '2019-11-01 21:55:11', '10001', '', '1');
INSERT INTO `question_chapter_practice` VALUES ('27', '2', '1046', '皮卫军', '2019-11-01 21:56:24', '皮卫军', '2019-11-01 21:56:24', '10001', '', '1');
INSERT INTO `question_chapter_practice` VALUES ('28', '2', '1047', '皮卫军', '2019-11-01 21:58:11', '皮卫军', '2019-11-01 21:58:11', '10001', '', '1');
INSERT INTO `question_chapter_practice` VALUES ('29', '2', '1048', '皮卫军', '2019-11-01 21:59:56', '皮卫军', '2019-11-01 21:59:56', '10001', '', '1');

-- ----------------------------
-- Table structure for `question_daily_answer`
-- ----------------------------
DROP TABLE IF EXISTS `question_daily_answer`;
CREATE TABLE `question_daily_answer` (
  `Id` int(8) NOT NULL AUTO_INCREMENT,
  `Stu_id` int(8) DEFAULT NULL,
  `Course_id` int(8) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `Question_id` int(8) DEFAULT NULL,
  `Answer` varchar(128) DEFAULT NULL,
  `Create_by` varchar(20) DEFAULT NULL,
  `Create_time` datetime DEFAULT NULL,
  `Modify_by` varchar(20) DEFAULT NULL,
  `Modify_time` datetime DEFAULT NULL,
  `Corp_id` int(8) DEFAULT NULL,
  `Status` bit(1) DEFAULT NULL,
  `Version` int(4) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question_daily_answer
-- ----------------------------
INSERT INTO `question_daily_answer` VALUES ('64', '110', null, '2019-10-30 16:20:19', '297', 'C', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('65', '110', null, '2019-10-30 16:20:19', '365', 'C', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('66', '110', null, '2019-10-30 16:20:19', '437', 'C', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('67', '110', null, '2019-10-30 16:20:19', '521', 'C', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('68', '110', null, '2019-10-30 16:20:19', '671', '错', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('69', '110', null, '2019-10-30 16:20:19', '706', '错', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('70', '110', null, '2019-10-30 16:20:19', '803', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('71', '110', null, '2019-10-30 16:20:19', '852', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('72', '110', null, '2019-10-30 16:28:01', '297', 'C', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('73', '110', null, '2019-10-30 16:28:01', '365', 'B', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('74', '110', null, '2019-10-30 16:28:01', '437', 'B', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('75', '110', null, '2019-10-30 16:28:01', '521', 'B', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('76', '110', null, '2019-10-30 16:28:02', '671', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('77', '110', null, '2019-10-30 16:28:02', '706', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('78', '110', null, '2019-10-30 16:28:02', '803', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('79', '110', null, '2019-10-30 16:28:02', '852', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('80', '110', null, '2019-10-30 16:30:46', '297', 'B', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('81', '110', null, '2019-10-30 16:30:46', '365', 'B', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('82', '110', null, '2019-10-30 16:30:46', '437', 'B', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('83', '110', null, '2019-10-30 16:30:46', '521', 'A', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('84', '110', null, '2019-10-30 16:30:46', '671', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('85', '110', null, '2019-10-30 16:30:46', '706', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('86', '110', null, '2019-10-30 16:30:46', '803', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('87', '110', null, '2019-10-30 16:30:46', '852', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('88', '110', null, '2019-10-30 16:34:04', '297', 'C', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('89', '110', null, '2019-10-30 16:34:04', '365', 'C', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('90', '110', null, '2019-10-30 16:34:04', '437', 'A', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('91', '110', null, '2019-10-30 16:34:04', '521', 'A', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('92', '110', null, '2019-10-30 16:34:04', '671', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('93', '110', null, '2019-10-30 16:34:04', '706', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('94', '110', null, '2019-10-30 16:34:04', '803', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('95', '110', null, '2019-10-30 16:34:04', '852', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('96', '110', null, '2019-10-30 16:42:53', '297', 'B', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('97', '110', null, '2019-10-30 16:42:53', '365', 'B', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('98', '110', null, '2019-10-30 16:42:53', '437', 'B', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('99', '110', null, '2019-10-30 16:42:53', '521', 'D', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('100', '110', null, '2019-10-30 16:42:53', '671', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('101', '110', null, '2019-10-30 16:42:53', '706', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('102', '110', null, '2019-10-30 16:42:53', '803', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('103', '110', null, '2019-10-30 16:42:53', '852', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('104', '110', null, '2019-10-30 16:47:08', '297', 'C', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('105', '110', null, '2019-10-30 16:47:08', '365', 'C', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('106', '110', null, '2019-10-30 16:47:08', '437', 'D', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('107', '110', null, '2019-10-30 16:47:08', '521', 'B', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('108', '110', null, '2019-10-30 16:47:08', '671', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('109', '110', null, '2019-10-30 16:47:08', '706', '错', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('110', '110', null, '2019-10-30 16:47:08', '803', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('111', '110', null, '2019-10-30 16:47:08', '852', '错', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('112', '110', null, '2019-10-30 16:49:13', '297', 'D', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('113', '110', null, '2019-10-30 16:49:13', '365', 'D', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('114', '110', null, '2019-10-30 16:49:13', '437', 'D', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('115', '110', null, '2019-10-30 16:49:13', '521', 'D', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('116', '110', null, '2019-10-30 16:49:14', '671', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('117', '110', null, '2019-10-30 16:49:14', '706', '错', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('118', '110', null, '2019-10-30 16:49:14', '803', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('119', '110', null, '2019-10-30 16:49:14', '852', '错', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('120', '110', null, '2019-10-30 17:05:42', '297', 'C', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('121', '110', null, '2019-10-30 17:05:42', '365', 'C', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('122', '110', null, '2019-10-30 17:05:42', '437', 'C', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('123', '110', null, '2019-10-30 17:05:42', '521', 'C', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('124', '110', null, '2019-10-30 17:05:42', '671', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('125', '110', null, '2019-10-30 17:05:42', '706', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('126', '110', null, '2019-10-30 17:05:42', '803', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('127', '110', null, '2019-10-30 17:05:42', '852', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('128', '125', null, '2019-10-30 21:35:38', '297', 'B', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('129', '125', null, '2019-10-30 21:35:38', '365', 'C', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('130', '125', null, '2019-10-30 21:35:38', '437', 'C', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('131', '125', null, '2019-10-30 21:35:38', '521', 'C', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('132', '125', null, '2019-10-30 21:35:38', '671', '错', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('133', '125', null, '2019-10-30 21:35:38', '706', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('134', '125', null, '2019-10-30 21:35:38', '803', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('135', '125', null, '2019-10-30 21:35:38', '852', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('136', '125', null, '2019-10-31 08:52:44', '555', 'B', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('137', '125', null, '2019-10-31 08:52:44', '604', 'C', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('138', '125', null, '2019-10-31 08:52:44', '826', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('139', '125', null, '2019-10-31 08:52:44', '871', '错', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('140', '125', null, '2019-10-31 08:52:44', '905', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('141', '125', null, '2019-10-31 08:52:44', '936', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('142', '125', null, '2019-10-31 08:52:44', '1036', '16', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('143', '110', null, '2019-10-31 16:33:04', '555', 'A', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('144', '110', null, '2019-10-31 16:33:04', '604', 'A', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('145', '110', null, '2019-10-31 16:33:04', '826', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('146', '110', null, '2019-10-31 16:33:04', '871', '错', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('147', '110', null, '2019-10-31 16:33:04', '905', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('148', '110', null, '2019-10-31 16:33:04', '936', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('149', '110', null, '2019-10-31 16:33:04', '1036', '20', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('150', '3', null, '2019-10-31 16:45:48', '555', 'B', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('151', '3', null, '2019-10-31 16:45:49', '604', 'D', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('152', '3', null, '2019-10-31 16:45:51', '826', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('153', '3', null, '2019-10-31 16:45:52', '871', '错', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('154', '3', null, '2019-10-31 16:45:52', '905', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('155', '3', null, '2019-10-31 16:45:53', '936', '错', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('156', '3', null, '2019-10-31 16:45:53', '1036', '20', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('157', '3', null, '2019-10-31 16:45:54', '555', 'B', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('158', '3', null, '2019-10-31 16:45:55', '604', 'D', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('159', '3', null, '2019-10-31 16:45:56', '826', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('160', '3', null, '2019-10-31 16:45:56', '871', '错', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('161', '3', null, '2019-10-31 16:45:57', '905', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('162', '3', null, '2019-10-31 16:45:58', '936', '错', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('163', '3', null, '2019-10-31 16:45:58', '1036', '20', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('164', '120', null, '2019-10-31 16:48:13', '555', 'B', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('165', '120', null, '2019-10-31 16:48:13', '604', 'C', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('166', '120', null, '2019-10-31 16:48:13', '826', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('167', '120', null, '2019-10-31 16:48:13', '871', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('168', '120', null, '2019-10-31 16:48:13', '905', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('169', '120', null, '2019-10-31 16:48:13', '936', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('170', '120', null, '2019-10-31 16:48:13', '1036', '20', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('171', '124', null, '2019-10-31 16:49:18', '555', 'B', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('172', '124', null, '2019-10-31 16:49:18', '604', 'A', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('173', '124', null, '2019-10-31 16:49:18', '826', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('174', '124', null, '2019-10-31 16:49:18', '871', '错', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('175', '124', null, '2019-10-31 16:49:18', '905', '对', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('176', '124', null, '2019-10-31 16:49:18', '936', '错', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('177', '124', null, '2019-10-31 16:49:18', '1036', '20', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('178', '110', null, '2019-11-01 20:49:52', '143', 'B', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('179', '110', null, '2019-11-01 20:49:52', '160', 'C', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('180', '110', null, '2019-11-01 20:49:52', '169', '未作答', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('181', '110', null, '2019-11-01 20:49:52', '184', 'C', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('182', '110', null, '2019-11-01 20:49:52', '193', 'C', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('183', '110', null, '2019-11-01 20:49:52', '202', 'C', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('184', '110', null, '2019-11-01 20:49:52', '218', 'B', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('185', '110', null, '2019-11-04 15:45:55', '2', 'B', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('186', '110', null, '2019-11-04 15:45:55', '3', 'C', null, null, null, null, null, null, null);
INSERT INTO `question_daily_answer` VALUES ('187', '110', null, '2019-11-04 15:45:55', '4', 'C', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `question_daily_practice`
-- ----------------------------
DROP TABLE IF EXISTS `question_daily_practice`;
CREATE TABLE `question_daily_practice` (
  `Id` int(8) NOT NULL AUTO_INCREMENT,
  `Practice_date` date DEFAULT NULL,
  `Question_id` int(8) DEFAULT NULL,
  `Create_by` varchar(20) DEFAULT NULL,
  `Create_time` datetime DEFAULT NULL,
  `Modify_by` varchar(20) DEFAULT NULL,
  `Modify_time` datetime DEFAULT NULL,
  `Corp_id` int(20) DEFAULT NULL,
  `Version` int(4) DEFAULT NULL,
  `Status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question_daily_practice
-- ----------------------------
INSERT INTO `question_daily_practice` VALUES ('1', '2019-10-23', '100', 'lxs', '2019-10-18 16:58:04', 'lxs', '2019-10-28 15:43:11', '188888', '1', '');
INSERT INTO `question_daily_practice` VALUES ('2', '2019-10-23', '101', 'lxs', '2019-10-21 19:07:32', 'lxs', '2019-10-21 19:08:46', '188888', '1', '');
INSERT INTO `question_daily_practice` VALUES ('4', '2019-10-23', '103', 'lxs', '2019-10-21 19:09:13', null, null, '188888', '1', '');
INSERT INTO `question_daily_practice` VALUES ('5', '2019-10-23', '105', 'lxs', '2019-10-21 21:17:01', null, null, '188888', '1', '');
INSERT INTO `question_daily_practice` VALUES ('6', '2019-10-23', '106', 'lxs', '2019-10-21 21:17:27', null, null, '188888', '1', '');
INSERT INTO `question_daily_practice` VALUES ('7', '2019-10-23', '107', 'lxs', '2019-10-21 21:17:50', null, null, '188888', '1', '');
INSERT INTO `question_daily_practice` VALUES ('8', '2019-10-23', '108', 'lxs', '2019-10-21 21:18:15', null, null, '188888', '1', '');
INSERT INTO `question_daily_practice` VALUES ('9', '2019-10-23', '109', 'lxs', '2019-10-21 21:19:22', null, null, '188888', '1', '');
INSERT INTO `question_daily_practice` VALUES ('10', '2019-10-23', '1', 'lxs', '2019-10-23 21:42:37', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('11', '2019-10-23', '3', 'lxs', '2019-10-23 21:42:37', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('12', '2019-10-23', '4', 'lxs', '2019-10-23 21:42:37', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('13', '2019-10-23', '5', 'lxs', '2019-10-23 21:42:37', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('14', '2019-10-23', '9', 'lxs', '2019-10-23 21:42:37', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('15', '2019-10-23', '10', 'lxs', '2019-10-23 21:42:37', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('16', '2019-10-23', '104', 'lxs', '2019-10-23 21:42:37', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('17', '2019-10-23', '106', 'lxs', '2019-10-23 21:42:38', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('18', '2019-10-23', '113', 'lxs', '2019-10-23 21:42:38', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('19', '2019-10-23', '115', 'lxs', '2019-10-23 21:42:38', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('20', '2019-10-25', '298', 'lxs', '2019-10-25 16:50:15', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('21', '2019-10-25', '404', 'lxs', '2019-10-25 16:50:15', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('22', '2019-10-25', '564', 'lxs', '2019-10-25 16:50:15', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('23', '2019-10-25', '650', 'lxs', '2019-10-25 16:50:15', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('24', '2019-10-25', '708', 'lxs', '2019-10-25 16:50:15', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('25', '2019-10-25', '766', 'lxs', '2019-10-25 16:50:15', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('26', '2019-10-25', '859', 'lxs', '2019-10-25 16:50:15', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('27', '2019-10-25', '999', 'lxs', '2019-10-25 16:50:15', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('28', '2019-10-25', '3', '李哥', '2019-10-25 17:08:43', null, null, '10001', '1', '');
INSERT INTO `question_daily_practice` VALUES ('29', '2019-10-26', '146', '李哥', '2019-10-25 17:18:11', null, null, '10001', '1', '');
INSERT INTO `question_daily_practice` VALUES ('30', '2019-10-26', '150', '李哥', '2019-10-25 17:18:11', null, null, '10001', '1', '');
INSERT INTO `question_daily_practice` VALUES ('31', '2019-10-26', '152', '李哥', '2019-10-25 17:18:11', null, null, '10001', '1', '');
INSERT INTO `question_daily_practice` VALUES ('32', '2019-10-26', '156', '李哥', '2019-10-25 17:18:11', null, null, '10001', '1', '');
INSERT INTO `question_daily_practice` VALUES ('33', '2019-10-27', '7', 'lxs', '2019-10-25 21:20:28', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('34', '2019-10-27', '118', 'lxs', '2019-10-25 21:20:28', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('35', '2019-10-27', '138', 'lxs', '2019-10-25 21:20:28', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('36', '2019-10-27', '210', 'lxs', '2019-10-25 21:20:28', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('37', '2019-10-27', '997', 'lxs', '2019-10-25 21:20:28', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('38', '2019-10-25', '9', 'lxs', '2019-10-25 21:26:44', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('39', '2019-10-28', '127', 'lxs', '2019-10-25 21:30:30', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('40', '2019-10-28', '1', 'lxs', '2019-10-28 15:43:13', null, null, '188888', '1', '');
INSERT INTO `question_daily_practice` VALUES ('41', '2019-10-29', '10', 'lxs', '2019-10-29 16:21:20', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('42', '2019-10-29', '102', 'lxs', '2019-10-29 16:21:20', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('43', '2019-10-29', '125', 'lxs', '2019-10-29 16:21:20', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('44', '2019-10-29', '141', 'lxs', '2019-10-29 16:21:20', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('45', '2019-10-29', '157', 'lxs', '2019-10-29 16:21:20', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('46', '2019-10-29', '176', 'lxs', '2019-10-29 16:21:20', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('47', '2019-10-29', '195', 'lxs', '2019-10-29 16:21:20', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('48', '2019-10-29', '214', 'lxs', '2019-10-29 16:21:20', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('49', '2019-10-29', '233', 'lxs', '2019-10-29 16:21:20', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('50', '2019-10-29', '255', 'lxs', '2019-10-29 16:21:20', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('51', '2019-10-29', '273', 'lxs', '2019-10-29 16:21:20', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('52', '2019-10-29', '292', 'lxs', '2019-10-29 16:21:20', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('53', '2019-10-29', '308', 'lxs', '2019-10-29 16:21:20', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('54', '2019-10-29', '326', 'lxs', '2019-10-29 16:21:20', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('55', '2019-10-29', '408', 'lxs', '2019-10-29 16:21:20', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('56', '2019-10-30', '297', 'lxs', '2019-10-30 15:16:31', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('57', '2019-10-30', '365', 'lxs', '2019-10-30 15:16:31', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('58', '2019-10-30', '437', 'lxs', '2019-10-30 15:16:31', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('60', '2019-10-30', '671', 'lxs', '2019-10-30 15:16:31', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('61', '2019-10-30', '706', 'lxs', '2019-10-30 15:16:31', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('62', '2019-10-30', '803', 'lxs', '2019-10-30 15:16:31', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('63', '2019-10-30', '852', 'lxs', '2019-10-30 15:16:31', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('64', '2019-10-31', '555', 'lxs', '2019-10-31 08:51:51', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('65', '2019-10-31', '604', 'lxs', '2019-10-31 08:51:51', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('66', '2019-10-31', '826', 'lxs', '2019-10-31 08:51:51', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('67', '2019-10-31', '871', 'lxs', '2019-10-31 08:51:51', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('68', '2019-10-31', '905', 'lxs', '2019-10-31 08:51:51', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('69', '2019-10-31', '936', 'lxs', '2019-10-31 08:51:51', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('70', '2019-11-01', '143', 'lxs', '2019-11-01 20:48:41', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('71', '2019-11-01', '160', 'lxs', '2019-11-01 20:48:41', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('72', '2019-11-01', '169', 'lxs', '2019-11-01 20:48:41', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('73', '2019-11-01', '184', 'lxs', '2019-11-01 20:48:41', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('74', '2019-11-01', '193', 'lxs', '2019-11-01 20:48:41', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('75', '2019-11-01', '202', 'lxs', '2019-11-01 20:48:41', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('76', '2019-11-01', '218', 'lxs', '2019-11-01 20:48:41', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('77', '2019-11-01', '3', 'lxs', '2019-11-01 20:57:22', null, null, '12580', '1', '');
INSERT INTO `question_daily_practice` VALUES ('78', '2019-11-04', '2', '李金印', '2019-11-04 15:44:00', null, null, '1', '1', '');
INSERT INTO `question_daily_practice` VALUES ('79', '2019-11-04', '3', '李金印', '2019-11-04 15:44:01', null, null, '1', '1', '');
INSERT INTO `question_daily_practice` VALUES ('80', '2019-11-04', '4', '李金印', '2019-11-04 15:44:01', null, null, '1', '1', '');

-- ----------------------------
-- Table structure for `question_error_question`
-- ----------------------------
DROP TABLE IF EXISTS `question_error_question`;
CREATE TABLE `question_error_question` (
  `Id` int(8) NOT NULL AUTO_INCREMENT,
  `Stu_id` int(11) DEFAULT NULL,
  `Question_id` int(11) DEFAULT NULL,
  `Answer_type` varchar(128) DEFAULT NULL,
  `Create_by` varchar(20) DEFAULT NULL,
  `Create_time` datetime DEFAULT NULL,
  `Modify_by` varchar(20) DEFAULT NULL,
  `Modify_time` datetime DEFAULT NULL,
  `Status` bit(1) DEFAULT NULL,
  `Version` int(4) DEFAULT NULL,
  `Corp_id` int(4) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=482 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question_error_question
-- ----------------------------
INSERT INTO `question_error_question` VALUES ('451', '110', '1', '试卷', 'zl', '2019-11-04 15:33:49', null, null, null, null, null);
INSERT INTO `question_error_question` VALUES ('452', '110', '2', '试卷', 'zl', '2019-11-04 15:33:49', null, null, null, null, null);
INSERT INTO `question_error_question` VALUES ('453', '110', '3', '试卷', 'zl', '2019-11-04 15:33:49', null, null, null, null, null);
INSERT INTO `question_error_question` VALUES ('454', '110', '4', '试卷', 'zl', '2019-11-04 15:33:49', null, null, null, null, null);
INSERT INTO `question_error_question` VALUES ('455', '110', '5', '试卷', 'zl', '2019-11-04 15:33:49', null, null, null, null, null);
INSERT INTO `question_error_question` VALUES ('456', '110', '8', '试卷', 'zl', '2019-11-04 15:33:49', null, null, null, null, null);
INSERT INTO `question_error_question` VALUES ('457', '110', '10', '试卷', 'zl', '2019-11-04 15:33:49', null, null, null, null, null);
INSERT INTO `question_error_question` VALUES ('458', '110', '118', '试卷', 'zl', '2019-11-04 15:33:49', null, null, null, null, null);
INSERT INTO `question_error_question` VALUES ('459', '110', '1007', '试卷', 'zl', '2019-11-04 15:33:49', null, null, null, null, null);
INSERT INTO `question_error_question` VALUES ('460', '110', '1008', '试卷', 'zl', '2019-11-04 15:33:49', null, null, null, null, null);
INSERT INTO `question_error_question` VALUES ('461', '110', '1009', '试卷', 'zl', '2019-11-04 15:33:49', null, null, null, null, null);
INSERT INTO `question_error_question` VALUES ('462', '110', '1010', '试卷', 'zl', '2019-11-04 15:33:49', null, null, null, null, null);
INSERT INTO `question_error_question` VALUES ('463', '110', '1011', '试卷', 'zl', '2019-11-04 15:33:49', null, null, null, null, null);
INSERT INTO `question_error_question` VALUES ('464', '110', '1012', '试卷', 'zl', '2019-11-04 15:33:49', null, null, null, null, null);
INSERT INTO `question_error_question` VALUES ('465', '110', '1013', '试卷', 'zl', '2019-11-04 15:33:49', null, null, null, null, null);
INSERT INTO `question_error_question` VALUES ('466', '110', '123', '试卷', 'zl', '2019-11-04 15:46:56', null, null, null, null, null);
INSERT INTO `question_error_question` VALUES ('467', '110', '124', '试卷', 'zl', '2019-11-04 15:46:56', null, null, null, null, null);
INSERT INTO `question_error_question` VALUES ('468', '110', '125', '试卷', 'zl', '2019-11-04 15:46:56', null, null, null, null, null);
INSERT INTO `question_error_question` VALUES ('469', '110', '1003', '试卷', 'zl', '2019-11-04 15:46:56', null, null, null, null, null);
INSERT INTO `question_error_question` VALUES ('470', '110', '1004', '试卷', 'zl', '2019-11-04 15:46:56', null, null, null, null, null);
INSERT INTO `question_error_question` VALUES ('471', '110', '1005', '试卷', 'zl', '2019-11-04 15:46:56', null, null, null, null, null);
INSERT INTO `question_error_question` VALUES ('472', '110', '1036', '试卷', 'zl', '2019-11-04 15:46:56', null, null, null, null, null);
INSERT INTO `question_error_question` VALUES ('473', '110', '1037', '试卷', 'zl', '2019-11-04 15:46:56', null, null, null, null, null);
INSERT INTO `question_error_question` VALUES ('474', '120', '123', '试卷', 'zl', '2019-11-04 15:47:41', null, null, null, null, null);
INSERT INTO `question_error_question` VALUES ('475', '120', '124', '试卷', 'zl', '2019-11-04 15:47:41', null, null, null, null, null);
INSERT INTO `question_error_question` VALUES ('476', '120', '126', '试卷', 'zl', '2019-11-04 15:47:41', null, null, null, null, null);
INSERT INTO `question_error_question` VALUES ('477', '120', '1005', '试卷', 'zl', '2019-11-04 15:47:41', null, null, null, null, null);
INSERT INTO `question_error_question` VALUES ('478', '120', '1036', '试卷', 'zl', '2019-11-04 15:47:41', null, null, null, null, null);
INSERT INTO `question_error_question` VALUES ('479', '120', '1037', '试卷', 'zl', '2019-11-04 15:47:41', null, null, null, null, null);
INSERT INTO `question_error_question` VALUES ('480', '110', '126', '试卷', 'zl', '2019-11-04 16:26:56', null, null, null, null, null);
INSERT INTO `question_error_question` VALUES ('481', '110', '127', '试卷', 'zl', '2019-11-04 16:26:56', null, null, null, null, null);

-- ----------------------------
-- Table structure for `question_question`
-- ----------------------------
DROP TABLE IF EXISTS `question_question`;
CREATE TABLE `question_question` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `Couser_id` int(8) DEFAULT NULL,
  `Question_content` varchar(2000) DEFAULT NULL,
  `Picture_url` varchar(128) DEFAULT NULL,
  `Option_a` varchar(1000) DEFAULT NULL,
  `Option_b` varchar(1000) DEFAULT NULL,
  `Option_c` varchar(1000) DEFAULT NULL,
  `Option_d` varchar(1000) DEFAULT NULL,
  `Answer` varchar(1000) DEFAULT NULL,
  `Score` double(8,0) DEFAULT NULL,
  `Corp_id` int(20) DEFAULT NULL,
  `Create_by` varchar(20) DEFAULT NULL,
  `Create_time` datetime DEFAULT NULL,
  `Modify_by` varchar(20) DEFAULT NULL,
  `Modify_time` datetime DEFAULT NULL,
  `Status` bit(1) DEFAULT NULL,
  `Version` int(4) DEFAULT NULL,
  `Question_type_id` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1049 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question_question
-- ----------------------------
INSERT INTO `question_question` VALUES ('1', '10', '在面向对象方法中，实现信息隐蔽是依靠：', '', '对象的继承,对象的多态,对象的封装,对象的分类', '对象的多态 ', '对象的封装', '对象的分类', 'C', '10', '10001', null, null, null, null, null, '1', '1');
INSERT INTO `question_question` VALUES ('2', '10', '对成员的访问控制保护最强的是', null, 'public', '缺省', 'private', 'protected', 'C', '10', '10001', null, null, null, null, null, '1', '1');
INSERT INTO `question_question` VALUES ('3', '10', '可用作Java标识符的是', null, '#123# ', '@yahoo.com ', '_date ', '10years', 'A', '10', '10001', null, null, null, null, null, '1', '1');
INSERT INTO `question_question` VALUES ('4', '10', '属于Java输入输出流的、且处理的是char类型的类是', null, 'Reader类 ', 'InputStream类', 'OutputStream类 ', 'File类', 'A', '10', '10001', null, null, null, null, null, '1', '1');
INSERT INTO `question_question` VALUES ('5', '10', '用于存放创建后则不变的字符串常量是', '', 'String类', 'StringBuffer类', 'Character类 ', '以上都不对', 'A', '10', '10001', null, null, null, null, null, '1', '1');
INSERT INTO `question_question` VALUES ('6', '10', '在Java的方法中定义一个常量要用const关键字。', null, null, null, null, null, '错', '15', '10001', null, null, null, null, null, '1', '2');
INSERT INTO `question_question` VALUES ('7', '10', '抽象方法必须在抽象类中，所以抽象类中的方法都必须是抽象方法。', null, null, null, null, null, '错', '15', '10001', null, null, null, null, null, '1', '2');
INSERT INTO `question_question` VALUES ('8', '10', '在面向对象方法中，_______描述的是具有相似属性与操作的一组对象。', null, null, null, null, null, '类', '10', '10001', null, null, null, null, null, null, '3');
INSERT INTO `question_question` VALUES ('9', '10', '关键字_______是用来定义接口的。', null, null, null, null, null, 'interface', '10', '10001', null, null, null, null, null, null, '3');
INSERT INTO `question_question` VALUES ('10', '10', '使用关键字_______来定义某个类实现了接口。', null, null, null, null, null, 'implements', '10', '10001', null, null, null, null, null, null, '3');
INSERT INTO `question_question` VALUES ('100', '2', '在面向对象方法中，实现信息隐蔽是依靠：', null, '对象的继承', '对象的多态 ', '对象的封装', '对象的分类', 'C', '20', '10001', null, null, null, null, null, null, '1');
INSERT INTO `question_question` VALUES ('101', '2', '对成员的访问控制保护最强的是', null, 'public', '缺省', 'private', 'protected', 'C', '20', '10001', null, null, null, null, null, null, '1');
INSERT INTO `question_question` VALUES ('102', '2', '可用作Java标识符的是', null, '#123# ', '@yahoo.com ', '_date ', '10years', 'A', '20', '10001', null, null, null, null, null, null, '1');
INSERT INTO `question_question` VALUES ('103', '2', '属于Java输入输出流的、且处理的是char类型的类是', null, 'Reader类 ', 'InputStream类', 'OutputStream类 ', 'File类', 'A', '20', '10001', null, null, null, null, null, null, '1');
INSERT INTO `question_question` VALUES ('104', '2', ' 用于存放创建后则不变的字符串常量是', null, 'String类  ', 'StringBuffer类', 'Character类 ', '以上都不对', 'A', '20', '10001', null, null, null, null, null, null, '1');
INSERT INTO `question_question` VALUES ('105', '2', '在Java的方法中定义一个常量要用const关键字。', null, null, null, null, null, '错', '15', '10001', null, null, null, null, null, null, '2');
INSERT INTO `question_question` VALUES ('106', '2', '抽象方法必须在抽象类中，所以抽象类中的方法都必须是抽象方法。', null, null, null, null, null, 'false', '15', '10001', null, null, null, null, null, null, '2');
INSERT INTO `question_question` VALUES ('107', '2', '在面向对象方法中，_______描述的是具有相似属性与操作的一组对象。', null, null, null, null, null, '错', '10', '10001', null, null, null, null, null, null, '3');
INSERT INTO `question_question` VALUES ('108', '2', '关键字_______是用来定义接口的。', null, null, null, null, null, 'interface', '10', '10001', null, null, null, null, null, null, '3');
INSERT INTO `question_question` VALUES ('109', '2', '使用关键字_______来定义某个类实现了接口。', null, null, null, null, null, 'implements', '10', '10001', null, null, null, null, null, null, '3');
INSERT INTO `question_question` VALUES ('110', '2', 'html5是编程语言', '', ',,,,,,', null, null, null, '错', '15', '10001', null, null, null, null, null, null, '2');
INSERT INTO `question_question` VALUES ('113', '2', 'HTML 4.01 与 HTML5 之间有差异', '', ',,,', null, null, null, '错', '15', '10001', null, null, null, null, null, null, '2');
INSERT INTO `question_question` VALUES ('115', '11', 'Java ME 又称为J2ME（Java Platform，Micro Edition），是为机顶盒、移动电话和PDA之类嵌入式消费电子设备提供的Java语言平台，包括虚拟机和一系列标准化的Java API。', '', ',,,,,,', '', '', '', '对', '15', '10001', null, null, null, null, null, null, '2');
INSERT INTO `question_question` VALUES ('117', '9', '下面关于css样式和html样式的不同之处说法正确的是', '', 'html样式只影响应用它的文本和使用所选html样式创建的文本', 'css样式只可以设置文字字体样式', 'html样式可以设置背景样式', 'html样式和css样式相同，没有区别', 'D', '20', '1', null, null, null, null, null, null, '1');
INSERT INTO `question_question` VALUES ('118', '10', '请问下列那个不是java关键字', null, 'public', 'super', 'private', 'targe', 'D', '20', '10001', '张三', '2019-10-23 16:47:03', '张三', '2019-10-23 16:47:03', '', '1', '1');
INSERT INTO `question_question` VALUES ('119', '8', '哪项是构成C语言程序的基本单位。', null, '函数', '过程', '子程序', '子例程', 'A', '20', '1', null, null, null, null, null, null, '1');
INSERT INTO `question_question` VALUES ('120', '8', 'c语言程序从（）开始执行。', null, '程序中第一条可执行语句', '程序中第一个函数', '程序中第一个函数', '程序中第一个函数', 'C', '20', '1', null, null, null, null, null, null, '1');
INSERT INTO `question_question` VALUES ('122', '8', '如果int a=3,b=4；则条件表达式\"a<b? a:b\"的值是________.', null, null, null, null, null, '3', '10', null, null, null, null, null, null, null, '3');
INSERT INTO `question_question` VALUES ('123', '888', '中小微企业和新兴互联网客户（聚焦科技园区、产业园区、创新园区等），提供标准化云服务，主推以下哪项业务？', null, '公有云', '私有云 ', '混合云', '桌面云', 'A', '20', '10001', '李金印', '2019-10-24 10:21:43', '李金印', '2019-10-24 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('124', '888', '政务云主要面向各级政府定制，提供以（ ）为主的云计算服务。', null, 'PAAS', 'SAAS', 'IAAS', 'IDC', 'C', '20', '10001', '李金印', '2019-10-25 10:21:43', '李金印', '2019-10-25 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('125', '888', '（  ）不属于运营商在运营的云。', null, '天翼云     ', '沃云', '政务云', '阿里云', 'D', '20', '10001', '李金印', '2019-10-26 10:21:43', '李金印', '2019-10-26 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('126', '888', '在政务云市场中，（   ）不是运营商的优势。', null, '网络带宽资源', '机房资源', '互联网大数据运营经验', '运营维护经验', 'C', '20', '10001', '李金印', '2019-10-27 10:21:43', '李金印', '2019-10-27 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('127', '888', '失踪人口和区域紧急信息发布的平台名称？', null, '小区广播', '找你找我', '警讯通 ', '爱归来', 'D', '20', '10001', '李金印', '2019-10-28 10:21:43', '李金印', '2019-10-28 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('128', '888', '下列哪个产品是大数据中还未上线的产品？', null, '旅游动态人口', 'App比对助手', '选址助手 ', '戒毒监管', 'D', '20', '10001', '李金印', '2019-10-29 10:21:43', '李金印', '2019-10-29 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('129', '888', '以下哪个能力不是能力开放平台的能力？', null, '企业名片（彩印）能力', '拨打验证能力', '小号能力 ', '话费充值能力', 'D', '20', '10001', '李金印', '2019-10-30 10:21:43', '李金印', '2019-10-30 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('130', '888', '从能力开放平台角度，下列哪个产品对物流、商圈、金融单位都适用？', null, '一呼百应', '模板短信', '位置校验', '身份验证', 'B', '20', '10001', '李金印', '2019-10-31 10:21:43', '李金印', '2019-10-31 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('131', '888', '云计算应用在金融行业推广遇到的最主要是安全问题，需要有足够的理由让客户放心把系统部署在云端。另外，金融行业和各行业间联系紧密，需要为各行各业提供各种各样的金融服务，所以我们为金融行业提供的云服务首选？', null, '公有云', '私有云 ', '混合云', '政务云', 'C', '20', '10001', '李金印', '2019-11-01 10:21:43', '李金印', '2019-11-01 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('132', '888', '电子商务行业是在信息技术的高速发展促使商业活动逐渐和网络技术结合下形成的经济形式，移动云产品（   ）可为客户构建大规模分布式系统，满足客户要求的计算能力。', null, '弹性公网IP', '云主机', '带宽出租', '云防火墙', 'B', '20', '10001', '李金印', '2019-11-02 10:21:43', '李金印', '2019-11-02 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('133', '888', '一家在本地扩张迅速的连锁超市，可重点向它推荐哪个大数据业务？', null, 'APP助手', '金融辅助', '选址助手', '云端外呼', 'C', '20', '10001', '李金印', '2019-11-03 10:21:43', '李金印', '2019-11-03 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('134', '888', '以下哪个业务不是物联网应用的业务？', null, '车辆运营数据监测', '大棚土壤温度监测', '人员位置定位', '设备远程信息传输', 'C', '20', '10001', '李金印', '2019-11-04 10:21:43', '李金印', '2019-11-04 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('135', '888', '为了保障某大型活动的人流情况，监测重点人群的去向，可向活动组织方或者公安机关推荐我公司的（）平台。', null, '彩印', '位置服务', '短信', '身份验证', 'B', '20', '10001', '李金印', '2019-11-05 10:21:43', '李金印', '2019-11-05 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('136', '888', '基于手机信令的客流量监测平台，实时统计的颗粒度最小可以为？', null, '5分钟', '10分钟', '20分钟', '30分钟', 'A', '20', '10001', '李金印', '2019-11-06 10:21:43', '李金印', '2019-11-06 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('137', '888', '某政府行业集团客户有使用移动办公需求，但是因安全问题要求OA服务器放置在集团内网中，作为项目经理，可以推荐以下哪种移动业务实现？', null, 'MPLS VPN专线', 'VPDN专线', 'APN专线', '数字电路', 'C', '20', '10001', '李金印', '2019-11-07 10:21:43', '李金印', '2019-11-07 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('138', '888', '客户购买了一款200万像素的高清网络摄像机，如果需要看清30m处的人脸，最好建议选配（ ）mm焦距的镜头。', null, '20', '12', '8', '4', 'A', '20', '10001', '李金印', '2019-11-08 10:21:43', '李金印', '2019-11-08 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('139', '888', '信息化解决方案的设计和演示服务属于集团客户分层服务标准中( )服务。', null, '售前', '售中', '售后', '营销', 'A', '20', '10001', '李金印', '2019-11-09 10:21:43', '李金印', '2019-11-09 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('140', '888', '重点行业的聚焦必须紧跟政府转型,并符合我公司综合影响力、市场潜力、核心能力培养。未来两到三年我们聚焦的重点行业为不包含？', null, '健康医疗', '旅游', '交通物流', '航空航天', 'D', '20', '10001', '李金印', '2019-11-10 10:21:43', '李金印', '2019-11-10 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('141', '888', '和路通的功能不包括以下哪项？', null, '语音导航', '电子狗', '蓝牙电话 ', '限速巡航', 'D', '20', '10001', '李金印', '2019-11-11 10:21:43', '李金印', '2019-11-11 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('142', '888', '对于政务行业，可以重点推进的业务是？', null, 'DDOS流量清洗', '大数据管理平台', 'IDC', '视频监控', 'B', '20', '10001', '李金印', '2019-11-12 10:21:43', '李金印', '2019-11-12 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('143', '888', '光纤出租业务成本主要涉及管道、光缆的建设投资。根据省公司要求，出租业务时最低折扣不低于？', null, '1折', '2折', '3折', '4折', 'B', '20', '10001', '李金印', '2019-11-13 10:21:43', '李金印', '2019-11-13 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('144', '888', '中国移动将以“和交通”统领交通行业解决方案，分别面向前装、后装细分市场提供专业产品，满足行业个性化需求，其中前装市场的产品是？\n', null, '和路通', '和车连', '和信通', '车行天下', 'B', '20', '10001', '李金印', '2019-11-14 10:21:43', '李金印', '2019-11-14 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('145', '888', '中国移动将以“和交通”统领交通行业解决方案，分别面向前装、后装细分市场提供专业产品，满足行业个性化需求，其中后装市场的产品是？', null, '和路通', '和车连', '和信通', '车行天下', 'A', '20', '10001', '李金印', '2019-11-15 10:21:43', '李金印', '2019-11-15 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('146', '888', '在医疗行业解决方案中，以下属于远程医疗的有？', null, '居家养老', '云康复', '医疗影像云', '健康服务平台', 'C', '20', '10001', '李金印', '2019-11-16 10:21:43', '李金印', '2019-11-16 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('147', '888', '根据金融银行的特点，我们在推进业务中首先应重点推荐突破的是（ ）业务。', null, '大数据', 'WLAN', 'IDC', '专线', 'D', '20', '10001', '李金印', '2019-11-17 10:21:43', '李金印', '2019-11-17 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('148', '888', '与金融行业银行的合作中，（ ）是我公司独有的资源优势，其他运营商不具备。', null, '专线', '大数据', 'IDC', '无线网络', 'B', '20', '10001', '李金印', '2019-11-18 10:21:43', '李金印', '2019-11-18 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('149', '888', '客户有意向采购我公司“云视讯”，要求保密性强，而且覆盖范围较小，该客户适合（ ）合作模式。', null, '云视讯会议模式', '客户自建模式', '客户租用模式', '混合租用模式', 'B', '20', '10001', '李金印', '2019-11-19 10:21:43', '李金印', '2019-11-19 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('150', '888', '在向客户推广云视讯时，应重点介绍云视讯的业务卖点，以下不是云视讯卖点的有？', null, '全IP技术', '集中部署', '主打高清', '费用低廉', 'D', '20', '10001', '李金印', '2019-11-20 10:21:43', '李金印', '2019-11-20 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('151', '888', '企业在发送短信中往往由于黑名单、关键词等原因被拦截，发送成功率低，为了避免被拦截系统“误杀”，可建议企业使用（）业务。', null, '彩印', '模板短信', '信息机', '移动E管家', 'B', '20', '10001', '李金印', '2019-11-21 10:21:43', '李金印', '2019-11-21 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('152', '888', '在电话振铃过程中，手机将会弹屏显示预先设定的提示信息，可用于骚扰提醒、个性化信息、企业宣传等场景，这是我公司的（ ）业务。', null, '拨打验证', '彩印', '一呼百应', '群呼群聊', 'B', '20', '10001', '李金印', '2019-11-22 10:21:43', '李金印', '2019-11-22 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('153', '888', '房产中介员工在开展业务时，用自己的手机号码和客户联系，把客户资源变成个人资源，当其辞职后，将带走客户资源，为了防止这个弊端，可推荐用户使用（ ）业务。', null, '彩印', '小号', '一机双号', '拨打验证', 'B', '20', '10001', '李金印', '2019-11-23 10:21:43', '李金印', '2019-11-23 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('154', '888', '在滴滴出行软件中，用户可以通过APP直接拨打电话，对方手机显示来电是一个手机号码，这个功能是中国移动的（ ）业务。', null, '彩印', '小号', '一机双号', 'PBX', 'B', '20', '10001', '李金印', '2019-11-24 10:21:43', '李金印', '2019-11-24 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('155', '888', '基于移动位置大数据，结合用户特征信息，可为零售、餐饮、娱乐服务等商家在商业拓客和位置营销方面提供高效的信息获取、全面的信息汇聚和深度的客户洞察等数据应用服务的移动大数据产品是？', null, '商业智慧选址', '商业智慧营销', 'APP助手', '动态人口流量分析', 'B', '20', '10001', '李金印', '2019-11-25 10:21:43', '李金印', '2019-11-25 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('156', '888', '某商场实行会员制，从线下触点界面中可以获取该批会员的居住地分布情况，结合人口基础标签、消费能力标签和偏好标签，可列出最具消费实力的TOP10区域，这些位置就是商场线下营销资源投放的主要战场。提供类似分析解决方案是移动（）产品。', null, 'APP助手', '动态人口流量分析', '商业智慧营销', '商业智慧选址', 'C', '20', '10001', '李金印', '2019-11-26 10:21:43', '李金印', '2019-11-26 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('157', '888', '以下不属于大数据应用中金融行业标签体系的有？', null, '消费能力', '稳定程度', '上网流量', '信用情况', 'C', '20', '10001', '李金印', '2019-11-27 10:21:43', '李金印', '2019-11-27 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('158', '888', 'APP智慧洞察平台主要是基于浙江移动用户的（  ）信息，识别手机用户使用APP，提供活跃用户、新增用户、新增留存用户、流失用户4大排行信息。', null, '通话记录', '上网行为', 'IMEI', '手机号码', 'B', '20', '10001', '李金印', '2019-11-28 10:21:43', '李金印', '2019-11-28 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('159', '888', '目前世界上蜂窝物联网通用的计费方式除了流量计费外，还有？', null, '号卡计费', '连接计费', '设备计费', '协议计费', 'B', '20', '10001', '李金印', '2019-11-29 10:21:43', '李金印', '2019-11-29 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('160', '888', '以下哪些客户不是移动云的目标群体？', null, '有建设网站需求的', '有自建系统需求的', '刚买服务器的', '有大量资料存储需求的', 'C', '20', '10001', '李金印', '2019-11-30 10:21:43', '李金印', '2019-11-30 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('161', '888', '和对讲的适用场景中不包括？', null, '移动执法', '生产调度', '日常通话', '应急处置', 'C', '20', '10001', '李金印', '2019-12-01 10:21:43', '李金印', '2019-12-01 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('162', '888', '以下有关和对讲的描述，不正确的是？', null, '“和对讲”除标准产品外，还以对讲以及多媒体能力作为基础，针对大型行业提供定制化的增值业务。', '“和对讲”4G下的语音对讲接续时延和稳定性指标优秀，从原手机对讲产品2秒呼叫平均应答时延及语音时延缩短至200到300毫秒，提高了竞争优势。\n', '支持4G智能机便于行业定制及扩展，同时手机客户端支持大部分安卓手机，可丰富多种行业应用。\n', '集中自建平台，业务功能与调度台统一，有利用数据存储及业务的稳定和安全性。\n', 'B', '20', '10001', '李金印', '2019-12-02 10:21:43', '李金印', '2019-12-02 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('163', '888', '以下政企云中，属于安全云服务范畴的是？', null, '桌面云服务', '程序认证服务', 'RDS服务', '弹性负载均衡', 'B', '20', '10001', '李金印', '2019-12-03 10:21:43', '李金印', '2019-12-03 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('164', '888', '移动彩云为了解决客户联系电话统一管理，做到人走号留，公司资源有效留存，推出（ ）特色服务。', null, '优办', '企业名片', '工作小号', '集团总机', 'C', '20', '10001', '李金印', '2019-12-04 10:21:43', '李金印', '2019-12-04 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('165', '888', '移动彩云推出一站式行业聚合解决方案，并面向开发者开放的即时通讯服务，该服务为？', null, '彩云接入', '混合云接入', 'OpenIM', 'CDN', 'C', '20', '10001', '李金印', '2019-12-05 10:21:43', '李金印', '2019-12-05 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('166', '888', '销售公司的业务员经常在外跑业务，为了解决员工管理和考勤等问题，可以建议该公司使用（ ）产品。', null, '移动OA', '移动彩云', '和对讲', '微信门户', 'B', '20', '10001', '李金印', '2019-12-06 10:21:43', '李金印', '2019-12-06 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('167', '888', '施工规范要求，地感线圈绕制一般多少圈？', null, '3', '5', '7', '9', 'B', '20', '10001', '李金印', '2019-12-07 10:21:43', '李金印', '2019-12-07 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('168', '888', '在交警电子警察系统中，闯红灯三要素不包含下面哪个选项？', null, '信号灯', '停止线', '导向箭头', '完整的车身', 'C', '20', '10001', '李金印', '2019-12-08 10:21:43', '李金印', '2019-12-08 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('169', '888', '在公安卡口系统中，抓拍单元不包括下面哪个选项设备？', null, '抓拍机', '电源', '网络防雷器', '信号防雷器', 'D', '20', '10001', '李金印', '2019-12-09 10:21:43', '李金印', '2019-12-09 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('170', '888', '在视频监控系统中，摄像机的分辨率用（      ）来表示，分辨力用（      ）来表示。', null, '像素，清晰度', '线数，像素', '清晰度，线数', '像素，线数', 'D', '20', '10001', '李金印', '2019-12-10 10:21:43', '李金印', '2019-12-10 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('171', '888', '在PAL制式下，4CIF的水平分辨率是（      ），垂直分辨率是（      ）。', null, '704576', '576704', '704480', '480704', 'A', '20', '10001', '李金印', '2019-12-11 10:21:43', '李金印', '2019-12-11 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('172', '888', '以下关于摄像机防护等级IP66的说法正确的是？', null, '第一个6代表：防止大于1.0mm的固体物体侵入', '第一个6代表：虽不能完全防止灰尘进入，但是侵入的灰尘不会影响工作', '第二个6代表：防止大浪的倾入', '第二个6代表：防止浸水时水的侵入', 'C', '20', '10001', '李金印', '2019-12-12 10:21:43', '李金印', '2019-12-12 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('173', '888', '目前网络球机的最大分辨率可达？', null, '300万', '400万', '800万', '1200万', 'C', '20', '10001', '李金印', '2019-12-13 10:21:43', '李金印', '2019-12-13 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('174', '888', 'NVR支持接入的视频信号源是？', null, '网络信号', '模拟信号', 'SDI信号', 'TVI信号', 'A', '20', '10001', '李金印', '2019-12-14 10:21:43', '李金印', '2019-12-14 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('175', '888', '以下不是存储计算容量中的必要数据？', null, '监控前端数量  ', '码流 ', '存储时间', '显示带宽', 'D', '20', '10001', '李金印', '2019-12-15 10:21:43', '李金印', '2019-12-15 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('176', '888', '以下不是视频监控前端配置的重要组成部分？', null, '监控前端 ', '补光灯 ', '杆材', '门禁系统', 'D', '20', '10001', '李金印', '2019-12-16 10:21:43', '李金印', '2019-12-16 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('177', '888', '某视频监控项目需要接入千里眼平台，在专线产品受理是应发起下列哪个专线产品？', null, '互联网专线 ', '裸纤    ', '视频监控专线套餐', 'MPLS-VPN', 'D', '20', '10001', '李金印', '2019-12-17 10:21:43', '李金印', '2019-12-17 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('178', '888', '客户购买了一款200万像素的高清网络摄像机，如果需要看清30m处的人脸，最好建议选配（  ）mm的镜头。', null, '20', '12', '8', '4', 'A', '20', '10001', '李金印', '2019-12-18 10:21:43', '李金印', '2019-12-18 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('179', '888', '以下哪种类型摄像机适用于有吊顶的室内场所的监控，如机房，办公区域，走廊等。', null, '枪机', '筒型', '半球', '球机', 'C', '20', '10001', '李金印', '2019-12-19 10:21:43', '李金印', '2019-12-19 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('180', '888', '（）实现系统各种功能的应用，负责对摄像机及其辅助部件的控制，并对图像、声音信号的进行记录。', null, '监控前端', '传输网络', '控制中心', '显示大屏', 'C', '20', '10001', '李金印', '2019-12-20 10:21:43', '李金印', '2019-12-20 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('181', '888', '（）是整个系统的“眼睛”，包括红外半球、红外枪机、红外球机、特种摄像机。', null, '监控前端', '传输网络', '控制中心', '显示大屏', 'A', '20', '10001', '李金印', '2019-12-21 10:21:43', '李金印', '2019-12-21 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('182', '888', '安防行业最常用的阵列类型是？', null, 'RAID0', 'RAID1', 'RAID5', 'RAID6', 'C', '20', '10001', '李金印', '2019-12-22 10:21:43', '李金印', '2019-12-22 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('183', '888', '抓拍机触发抓拍信号来自以下哪款设备？', null, '车检器', 'LED显示屏', '出入口控制机', '道闸', 'A', '20', '10001', '李金印', '2019-12-23 10:21:43', '李金印', '2019-12-23 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('184', '888', '下面哪个选项不属于卡口抓拍需求？', null, '抓拍闯红灯违法', '清晰识别车内人脸', '识别车身颜色', '识别车牌信息', 'A', '20', '10001', '李金印', '2019-12-24 10:21:43', '李金印', '2019-12-24 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('185', '888', '卡口主要分类不包括下面哪个选项？', null, '线圈卡口', '485卡口', '视频卡口', '雷达卡口', 'B', '20', '10001', '李金印', '2019-12-25 10:21:43', '李金印', '2019-12-25 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('186', '888', '网络视频监控的出现主要围绕着哪款产品开发？', null, 'DVR', '视频分配器', '画面分割器', '模拟矩阵', 'A', '20', '10001', '李金印', '2019-12-26 10:21:43', '李金印', '2019-12-26 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('187', '888', '4K像素相当于多少个200万像素像素？', null, '8', '6', '4', '2', 'C', '20', '10001', '李金印', '2019-12-27 10:21:43', '李金印', '2019-12-27 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('188', '888', '某编码器编码参数中，I帧间隔设置为100帧，则表示在25fps帧率条件下，I帧出现的时间间隔是（      ）秒。', null, '5', '4', '6', '2', 'B', '20', '10001', '李金印', '2019-12-28 10:21:43', '李金印', '2019-12-28 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('189', '888', '逐行扫描相对于隔行扫描的优势是什么？', null, '清晰度更好', '色彩更好', '图像码流更小', '不会出现木梳状失真', 'D', '20', '10001', '李金印', '2019-12-29 10:21:43', '李金印', '2019-12-29 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('190', '888', '如下不属于前端产品业务部的产品是？', null, '网络摄像机', '智能交通摄像机', '球机', '一体机', 'B', '20', '10001', '李金印', '2019-12-30 10:21:43', '李金印', '2019-12-30 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('191', '888', '后端硬盘录像机如何实现对前端的模拟球机进行控制？', null, '485通讯', '232通讯', 'RJ45通讯', '机芯通讯', 'A', '20', '10001', '李金印', '2019-12-31 10:21:43', '李金印', '2019-12-31 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('192', '888', '以下哪个是球机的特有功能？', null, '宽动态', '白平衡', '3D定位', '3D降噪', 'C', '20', '10001', '李金印', '2020-01-01 10:21:43', '李金印', '2020-01-01 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('193', '888', '以下图像参数说法错误的是？', null, '对比度会影响图像通透性', '亮度为图像平均亮度基准值', '锐度越高越好', '饱和度越高图像颜色越艳丽', 'C', '20', '10001', '李金印', '2020-01-02 10:21:43', '李金印', '2020-01-02 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('194', '888', 'XVR支持一根视频线就实现图像传输及云台控制，该功能叫做？', null, '3D定位', '一键控制', '同轴视控', '智能控制', 'C', '20', '10001', '李金印', '2020-01-03 10:21:43', '李金印', '2020-01-03 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('195', '888', '支持模拟信号的设备有DVR、H-DVR和？', null, 'NVR', 'XVR', 'CVR', '微中心', 'B', '20', '10001', '李金印', '2020-01-04 10:21:43', '李金印', '2020-01-04 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('196', '888', '视频监控系统模板中，系统建议的备品备件的数量是？         ', null, '0.03', '0.04', '0.05', '0.1', 'A', '20', '10001', '李金印', '2020-01-05 10:21:43', '李金印', '2020-01-05 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('197', '888', '以下哪些材料的数量一般情况下不等同于设备箱的数量', null, '防雷器   ', '立杆', '稳压电源', '施工辅材', 'D', '20', '10001', '李金印', '2020-01-06 10:21:43', '李金印', '2020-01-06 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('198', '888', '爆闪灯卡口抓拍需求不包括下面哪个选项？', null, '车牌清晰', '车窗人脸清晰', '车身颜色轮廓清晰', '抓拍图片叠加车速', 'D', '20', '10001', '李金印', '2020-01-07 10:21:43', '李金印', '2020-01-07 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('199', '888', '早上日出顺光时，车牌过爆严重，应该调节下面哪个参数？', null, '快门', '车牌补偿灵敏度', '车牌增强', '对比度', 'B', '20', '10001', '李金印', '2020-01-08 10:21:43', '李金印', '2020-01-08 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('200', '888', '关于帧率的说法，下列错误的是？', null, '帧率越高，流畅性越好', '帧率不足，画面出现跳跃', '帧率提高，增加网络带宽压力', '监控帧率一般建议选择18帧或以上', 'D', '20', '10001', '李金印', '2020-01-09 10:21:43', '李金印', '2020-01-09 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('201', '888', '室外安装监控较佳视角，建议选择高度为多少？', null, '3-6米', '5-9米', '4-8米', '8-10米', 'C', '20', '10001', '李金印', '2020-01-10 10:21:43', '李金印', '2020-01-10 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('202', '888', '视频压缩的基本原理是去除视频中的？', null, '色彩信息', '图像细节', '冗余信息', '灰白信息', 'C', '20', '10001', '李金印', '2020-01-11 10:21:43', '李金印', '2020-01-11 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('203', '888', '想要很容易的实现在指定的时间段内响应指定的动作，可以使用网络高清球机的（  ）功能。', null, '空闲运行', '掉电记忆', '定时任务', '花样扫描', 'C', '20', '10001', '李金印', '2020-01-12 10:21:43', '李金印', '2020-01-12 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('204', '888', '监控人员经常操控摇杆控制球机跟踪移动目标时，如希望一段时间后没有操作的话球机自动转到某个预置位或者自动运行巡航扫描，该启用什么功能？', null, '定时任务', '守望', '自动扫描', '掉电记忆', 'B', '20', '10001', '李金印', '2020-01-13 10:21:43', '李金印', '2020-01-13 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('205', '888', '以下和摄像机图像聚焦不清的原因无关的是？', null, '球机最小聚焦距离太大', 'C镜头没有加装转接环', 'CS镜头没有增加转接环', '摄像机镜头较脏', 'C', '20', '10001', '李金印', '2020-01-14 10:21:43', '李金印', '2020-01-14 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('206', '888', '针对园区出入口环境，为了看清进出车辆的车牌信息，推荐安装的摄像机是？', null, '背光补偿摄像机', '低照度摄像机', '红外摄像机', '强光抑制摄像机', 'D', '20', '10001', '李金印', '2020-01-15 10:21:43', '李金印', '2020-01-15 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('207', '888', '针对大厅出入口环境，推荐安装的摄像机是？', null, '宽动态摄像机', '针孔摄像机', '红外摄像机', '强光抑制摄像机', 'A', '20', '10001', '李金印', '2020-01-16 10:21:43', '李金印', '2020-01-16 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('208', '888', '1/4英寸摄像机如果使用1/3英寸镜头会出现下面哪些问题？', null, '视频错误', '图像丢失色彩信息', '画面正常', '图像四周出现黑边', 'C', '20', '10001', '李金印', '2020-01-17 10:21:43', '李金印', '2020-01-17 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('209', '888', '某室外场景颜色很复杂，若安装摄像机，需设置以下哪种白平衡模式？', null, '自动跟踪白平衡1', '自动跟踪白平衡2', '自动控制白平衡', '手动白平衡', 'B', '20', '10001', '李金印', '2020-01-18 10:21:43', '李金印', '2020-01-18 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('210', '888', '以下关于镜头接口的说法错误的是？', null, '枪机常见镜头接口有CS接口', 'CS接口枪机可通过转接头使用C接口镜头', 'C接口枪机可通过转接头使用CS接口镜头', '枪机常见镜头接口有C接口', 'C', '20', '10001', '李金印', '2020-01-19 10:21:43', '李金印', '2020-01-19 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('211', '888', '以下关于光圈与景深的关系说法正确的是？', null, '光圈越大，景深越大', '焦距越大，景深越大', '焦距和景深无关', '光圈越大，景深越小', 'D', '20', '10001', '李金印', '2020-01-20 10:21:43', '李金印', '2020-01-20 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('212', '888', '浓雾环境下以下哪种透雾摄像机效果最好？', null, '普通摄像机', '算法透雾摄像机', '光学透雾摄像机', '超级透雾摄像机', 'D', '20', '10001', '李金印', '2020-01-21 10:21:43', '李金印', '2020-01-21 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('213', '888', '路由器是在（）实现网络互连的设备', null, '网络层', '数据链路层', '物理层', '传输层', 'A', '20', '10001', '李金印', '2020-01-22 10:21:43', '李金印', '2020-01-22 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('214', '888', '存储设备推荐使用哪种类型的硬盘？', null, '桌面级', '监控级', '企业级', '任意硬盘', 'C', '20', '10001', '李金印', '2020-01-23 10:21:43', '李金印', '2020-01-23 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('215', '888', '以下哪一个是LCD相对于DLP的缺点？', null, '可视角度', '维护', '拼缝', '图像清晰度', 'C', '20', '10001', '李金印', '2020-01-24 10:21:43', '李金印', '2020-01-24 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('216', '888', '液晶拼接大屏指的是下列哪个类型？', null, 'DLP', 'LED', 'PDP', 'LCD', 'D', '20', '10001', '李金印', '2020-01-25 10:21:43', '李金印', '2020-01-25 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('217', '888', '以下对于三种光源的DLP产品描述正确的是？', null, 'UHP光源使用寿命可达30000小时', 'LED光源采用3*6点阵式光源，提高产品的稳定性', '三种光源的光机并不是都具备六轴调整功能', '激光光源的光机箱体承重不足，无法做3层以上的拼接墙', 'B', '20', '10001', '李金印', '2020-01-26 10:21:43', '李金印', '2020-01-26 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('218', '888', 'LCD液晶拼接屏，支架配置中下面说法正确的是？', null, 'LCD拼接屏支架有模块化支架、一体化支架、前维护支架、通天地支架等', 'LCD拼接屏的通天地支架按支架重量收费', 'LCD拼接屏的模块化支架目前是所有支架中需求最少的', '一体化支架整体性不好，且屏幕边沿没有包边', 'C', '20', '10001', '李金印', '2020-01-27 10:21:43', '李金印', '2020-01-27 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('219', '888', '主流的超窄边液晶拼接屏尺寸范围有？', null, '40寸，46寸，50寸，60寸', '46寸，50寸，55寸，60寸', '46寸，47寸，55寸，60寸', '46寸，50寸，55寸，70寸', 'C', '20', '10001', '李金印', '2020-01-28 10:21:43', '李金印', '2020-01-28 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('220', '888', '以下对于监视器产品描述不正确的是？', null, '监视器产品具备4K分辨率的产品', '4K分辨率的监视器最大98寸', '铁壳监视器型号均以L结尾', '塑料壳监视器最大尺寸是98寸', 'D', '20', '10001', '李金印', '2020-01-29 10:21:43', '李金印', '2020-01-29 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('221', '888', '以下对于主流触控一体机描述不正确的是？', null, '触控一体机尺寸为47寸~98寸', '触控一体机提供6点同时触摸方式', '触控一体机支持支架和壁挂安装两种方式', '触控一体机支架不能定制', 'D', '20', '10001', '李金印', '2020-01-30 10:21:43', '李金印', '2020-01-30 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('222', '888', '以下对室内全彩LED屏幕的描述错误的是？', null, '全彩LED屏幕根据显示图像的不同，整体功率也不同', '全彩屏幕根据现场尺寸进行配置，显示分辨率各有不同', '不同点距的全彩屏幕，单个箱体的分辨率均为252*252', '全彩屏幕产品配置简单，只需要选择点距、屏幕长、宽、控制器型号，即可得出屏幕面积、支架面积、控制器个数，并以此报价即可', 'C', '20', '10001', '李金印', '2020-01-31 10:21:43', '李金印', '2020-01-31 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('223', '888', '以下对LED光源的DLP产品描述正确的是？', null, 'LED光源使用寿命长，免维护', 'LED光源的产品具备双灯热耦合技术，增加屏幕的稳定性', 'LED光源的产品色域小，显示效果不佳', 'LED光源的产品，光机不具备双电源冗余功能', 'A', '20', '10001', '李金印', '2020-02-01 10:21:43', '李金印', '2020-02-01 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('224', '888', '在关闭服务器系统时，应先关闭（ ）电源。', null, '主机', '外设', '机柜', 'UPS', 'A', '20', '10001', '李金印', '2020-02-02 10:21:43', '李金印', '2020-02-02 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('225', '888', '一般情况下，计算机工作环境的相对湿度应保持在（）。', null, '20%-60%', '30%-70%', '30%-80%', '20%-80%', 'C', '20', '10001', '李金印', '2020-02-03 10:21:43', '李金印', '2020-02-03 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('226', '888', '服务器开机后，系统将完成开机检测，首先检测的是？', null, '中央处理器', '高速缓存', '内存', 'I/O设备', 'B', '20', '10001', '李金印', '2020-02-04 10:21:43', '李金印', '2020-02-04 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('227', '888', '下列阵列类型中哪个没有冗余机制？', null, 'RAID0', 'RAID1', 'RAID5', 'RAID6', 'A', '20', '10001', '李金印', '2020-02-05 10:21:43', '李金印', '2020-02-05 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('228', '888', '以下操作系统不属于Unix系统的是？', null, 'BSD', 'SUN OS', 'NOVELL', 'UBUNTU ', 'D', '20', '10001', '李金印', '2020-02-06 10:21:43', '李金印', '2020-02-06 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('229', '888', '以下操作系统属于Linux系统的是？', null, 'BSD', 'NOVELL', 'REDHAT', 'AIX', 'C', '20', '10001', '李金印', '2020-02-07 10:21:43', '李金印', '2020-02-07 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('230', '888', 'DNS服务器解析请求使用的端口号是？', null, '22', '23', '53', '110', 'C', '20', '10001', '李金印', '2020-02-08 10:21:43', '李金印', '2020-02-08 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('231', '888', '使用Linux系统搭建FTP服务器比使用Windows serv-u搭建ftp服务器的好处是？', null, '免费', '安全', '方便', '高效', 'A', '20', '10001', '李金印', '2020-02-09 10:21:43', '李金印', '2020-02-09 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('232', '888', '导致DNS服务器缓存中毒的主要原因是？', null, '缓存时间太短', '非权威解析的递归请求', '用户域名解析', '暴露BIND版本', 'B', '20', '10001', '李金印', '2020-02-10 10:21:43', '李金印', '2020-02-10 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('233', '888', '在Windows系统中，使用serv-u搭建ftp服务器时，（ ）操作可能给服务器带来严重威胁。', null, '锁定用户主目录', '限制访问的IP地址', '限制连接速度', '不控制用户上传和下载权限 ', 'D', '20', '10001', '李金印', '2020-02-11 10:21:43', '李金印', '2020-02-11 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('234', '888', 'Windows口令安全中，一般要求帐号口令的生存期不大于（ ）天。', null, '60', '70', '80', '90', 'D', '20', '10001', '李金印', '2020-02-12 10:21:43', '李金印', '2020-02-12 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('235', '888', '云计算三部曲除了虚拟化，标准化还有（）？', null, '网络化', '信息化', '自动化', '结构化', 'C', '20', '10001', '李金印', '2020-02-13 10:21:43', '李金印', '2020-02-13 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('236', '888', '构建电子商务平台是当前一种重要的商业模式，任何希望从事电子商务的公司或个人可以通过注册商铺的形式在该平台上从事电子商务活动。从技术角度来看，该平台属于（） 服务模式。', null, 'IaaS（Infrastructure-as-a-Service)基础设施即服务', 'DaaS', 'SaaS（Software-as-a-Service)软件即服务）', 'PaaS（Platform-as-a-Service)平台即服务', 'C', '20', '10001', '李金印', '2020-02-14 10:21:43', '李金印', '2020-02-14 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('237', '888', '从云服务类型上来说，我们经常使用的GMAIL，网络相册等属于（）服务。', null, 'IaaS', 'DaaS', 'SaaS', 'PaaS', 'C', '20', '10001', '李金印', '2020-02-15 10:21:43', '李金印', '2020-02-15 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('238', '888', '下面（  ）协议用于文件传送。', null, 'TCP', 'Telnet', 'FTP', 'SMTP', 'C', '20', '10001', '李金印', '2020-02-16 10:21:43', '李金印', '2020-02-16 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('239', '888', '以下对“LOS”告警描述正确的是？', null, 'CRC校验错误 ', 'E1收信号帧失步告警', '以太网口检测到冲突 ', '表示以太网口为全双工工作模式', 'B', '20', '10001', '李金印', '2020-02-17 10:21:43', '李金印', '2020-02-17 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('240', '888', 'IMS基于什么交换方式？', null, 'IP软交换技术', '电路交换', '分组交换', '存储转发', 'A', '20', '10001', '李金印', '2020-02-18 10:21:43', '李金印', '2020-02-18 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('241', '888', 'HTTP使用TCP端口号为？', null, '80', '82', '8080', '8082', 'A', '20', '10001', '李金印', '2020-02-19 10:21:43', '李金印', '2020-02-19 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('242', '888', 'GPON上行数据流采用（  ）技术。', null, 'FDMA', 'TDMA', 'CDMA', 'WDM', 'B', '20', '10001', '李金印', '2020-02-20 10:21:43', '李金印', '2020-02-20 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('243', '888', '（    ）是基站系统BSS的控制部分。', null, 'BSC', 'BTS', 'MSC', 'OMC', 'A', '20', '10001', '李金印', '2020-02-21 10:21:43', '李金印', '2020-02-21 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('244', '888', 'WDM组网需要考虑色散受限距离，这里的距离应该是？\n', null, '相邻站点距离', '整个组网的总距离', '电再生段距离', '', 'C', '20', '10001', '李金印', '2020-02-22 10:21:43', '李金印', '2020-02-22 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('245', '888', '以下选项中，（    ）是基于TCP协议的应用程序。', null, 'PING ', 'TFTP', 'TELNET FTP  SMTP  HTTP ', 'ospf', 'C', '20', '10001', '李金印', '2020-02-23 10:21:43', '李金印', '2020-02-23 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('246', '888', '以下关于胖AP和瘦AP的说法不正确的有？', null, '与胖AP相比，瘦AP无需作初始化配置，可以实现零配置', '瘦AP必须和无线控制器配合才能使用', '瘦AP和无线控制器之间只能通过二层连接', '胖AP只支持二层漫游，但是瘦 AP和无线控制器配合，可以支持二/三层漫游', 'C', '20', '10001', '李金印', '2020-02-24 10:21:43', '李金印', '2020-02-24 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('247', '888', 'IP地址为10.10.65.1，子网掩码为255.255.240.0，则该IP地址中，网络地址占前（  ）位。', null, '18', '19', '20', '21', 'C', '20', '10001', '李金印', '2020-02-25 10:21:43', '李金印', '2020-02-25 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('248', '888', '使用traceroute命令测试网络可以？', null, '检验链路协议是否运行正常', '检验目标网络是否在路由表中', '检验应用程序是否正常', '显示分组到达目标经过的各个路由器', 'D', '20', '10001', '李金印', '2020-02-26 10:21:43', '李金印', '2020-02-26 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('249', '888', '基站通信设备所需的直流基础电源设备不包括？', null, '交流屏', '整流器', '蓄电池组', 'UPS', 'D', '20', '10001', '李金印', '2020-02-27 10:21:43', '李金印', '2020-02-27 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('250', '888', 'Windows系统中，如何系统查看PC机的MAC地址与IP地址的映射？', null, 'show mac', 'show arp', 'arp –c ', 'arp –a', 'D', '20', '10001', '李金印', '2020-02-28 10:21:43', '李金印', '2020-02-28 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('251', '888', 'GSM900下行频段为？', null, '890M―915M', '935M―960M', '875M―900M', '900M―925M', 'B', '20', '10001', '李金印', '2020-02-29 10:21:43', '李金印', '2020-02-29 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('252', '888', '防火墙通过下面哪一个表项来标识一个完整的连接的？', null, '路由表', 'ARP 表', 'Session 表', '邻居表', 'C', '20', '10001', '李金印', '2020-03-01 10:21:43', '李金印', '2020-03-01 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('253', '888', '以太网交换机端口A配置成10/100M自协商工作状态，与10/100M自协商网卡连接，自协商过程结束后端口A的工作状态是？ ', null, '10M半双工', '10M全双工', '100M半双工', '100M全双工', 'D', '20', '10001', '李金印', '2020-03-02 10:21:43', '李金印', '2020-03-02 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('254', '888', '一个交换机收到数据包后首先进行的操作是？', null, '进行源MAC地址学习', '上送CPU查找路由表获得下一跳地址', '根据数据报文中的目的MAC地址查找MAC地址表', '用自己的MAC地址替换数据报文的目的MAC地址', 'A', '20', '10001', '李金印', '2020-03-03 10:21:43', '李金印', '2020-03-03 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('255', '888', '终端可通过以下哪种方式获得IP 地址？', null, '手工静态配置', 'PPP（Point-to-Point Protocol）协议协商', 'DHCP 协议自动配置', '以上都是', 'D', '20', '10001', '李金印', '2020-03-04 10:21:43', '李金印', '2020-03-04 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('256', '888', '划分VLAN 后，不同VLAN 的计算机之间不能实现二层通信。如果在VLAN 间通信，需要建立？', null, 'IP 路由', 'PPP连接', 'TCP连接', '邻居关系', 'A', '20', '10001', '李金印', '2020-03-05 10:21:43', '李金印', '2020-03-05 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('257', '888', ' FTP 默认使用的控制协议端口是？', null, '20', '21', '22', '25', 'B', '20', '10001', '李金印', '2020-03-06 10:21:43', '李金印', '2020-03-06 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('258', '888', '在SDH段开销中，以下字节属于RSOH的是？', null, 'K1', 'B2', 'S1', 'E1', 'D', '20', '10001', '李金印', '2020-03-07 10:21:43', '李金印', '2020-03-07 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('259', '888', '局域网具有结构简单灵活、成本低、扩充性强、性能好以及可靠性高等特点,目前局域网广泛采用的网络结构是？', null, '星型结构 ', '总线型', '环型结构', '以上都不是', 'A', '20', '10001', '李金印', '2020-03-08 10:21:43', '李金印', '2020-03-08 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('260', '888', '基站覆盖范围与以下哪些因素无关？', null, '天线高度', '天线类型', '基站发射功率', '用户', 'D', '20', '10001', '李金印', '2020-03-09 10:21:43', '李金印', '2020-03-09 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('261', '888', '如果ARP表没有目的地址的MAC地址表项，源站如何找到目的MAC地址？', null, '查找路由表', '向全网发送一个广播请求', '向整个子网发送一个广播请求', '以上说法都不对', 'C', '20', '10001', '李金印', '2020-03-10 10:21:43', '李金印', '2020-03-10 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('262', '888', '下列哪种措施可较大发挥电池容量？', null, '过充电', '增大放电电流', '过放电', '减小放电电流', 'D', '20', '10001', '李金印', '2020-03-11 10:21:43', '李金印', '2020-03-11 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('263', '888', 'CMNET的网络服务质量要求为：网内任意两点包丢失率小于等于？', null, '0.01', '0.02', '0.04', '0.05', 'A', '20', '10001', '李金印', '2020-03-12 10:21:43', '李金印', '2020-03-12 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('264', '888', '油机排气管冒黑烟的原因可能是？', null, '低压油路有空气', '油路堵塞', '气门间隙过大', '', 'C', '20', '10001', '李金印', '2020-03-13 10:21:43', '李金印', '2020-03-13 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('265', '888', '使用路由器将一个交换网络分成两个的结果是？', null, '增加了冲突域的数量\n   ', '降低了广播域的数量\n  ', '连接了网段1和网段2的广播\n   ', '隔断了网段1和网段2之间的广播\n', 'D', '20', '10001', '李金印', '2020-03-14 10:21:43', '李金印', '2020-03-14 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('266', '888', 'TCP协议通过（）来区分不同的连接。', null, 'IP地址', '端口号', 'IP地址+端口号', 'MAC地址', 'C', '20', '10001', '李金印', '2020-03-15 10:21:43', '李金印', '2020-03-15 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('267', '888', '有一个IP地址为17.44.173.100的主机，子网掩码为255..255.192.0，该主机所处的网段允许（  ）台主机。', null, '8190', '8192', '16380', '16384', 'C', '20', '10001', '李金印', '2020-03-16 10:21:43', '李金印', '2020-03-16 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('268', '888', 'GSM数字系统频段宽度为（  ）MHZ，划分为（  ）个波道。', null, '20；100', '20；125', '25；100', '25；125', 'D', '20', '10001', '李金印', '2020-03-17 10:21:43', '李金印', '2020-03-17 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('269', '888', '以下不是光纤的组成部分的是（    ）', null, '纤芯', '包层', '保护层', '涂覆层', 'C', '20', '10001', '李金印', '2020-03-18 10:21:43', '李金印', '2020-03-18 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('270', '888', '以下哪种情况一定会导致光监控信号无法从上游站点向下游站点传递？', null, '光放大盘失效', '两业务站点间跨距太大', '光缆中断', '', 'C', '20', '10001', '李金印', '2020-03-19 10:21:43', '李金印', '2020-03-19 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('271', '888', '波分系统中在发端收端都使用了OTU的应用形式，我们称之为开放式应用 ；有些SDH设备（或路由器等）输出光口提供G.692信号，这个时候没有必要再加上OTU，这种应用形式我们称之为？\n', null, '开放式应用', '集成式应用', '半开放式应用', '透明式应用', 'B', '20', '10001', '李金印', '2020-03-20 10:21:43', '李金印', '2020-03-20 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('272', '888', '现有一个B类网络地址160.18.0.0，如要划分子网，需要至少划分40个子网，则划分时容纳最多主机时，其子网掩码为？', null, '255.255.192.0', '255.255.224.0', '255.255.240.0', '255.255.252.0', 'D', '20', '10001', '李金印', '2020-03-21 10:21:43', '李金印', '2020-03-21 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('273', '888', '下列（  ）协议提供TCP/IP网络的远程登录功能。', null, 'TCP', 'Telnet', 'FTP', 'SMTP', 'B', '20', '10001', '李金印', '2020-03-22 10:21:43', '李金印', '2020-03-22 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('274', '888', '以下不属于有线传输介质的是？', null, '光缆', '同轴电缆', '双绞线', '微波', 'D', '20', '10001', '李金印', '2020-03-23 10:21:43', '李金印', '2020-03-23 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('275', '888', '无源光纤分路器的功能是？', null, '实现核心网与用户间不同业务的传递', '区分交换和非交换业务', '管理来自ONU的信令和监控信息', '分发下行数据和集中上行数据', 'D', '20', '10001', '李金印', '2020-03-24 10:21:43', '李金印', '2020-03-24 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('276', '888', '以下哪几个光功率值会使ONU无法在OLT上自动发现？', null, ' -9dbm ', ' -19dbm ', ' -27dbm ', ' -29dbm ', 'D', '20', '10001', '李金印', '2020-03-25 10:21:43', '李金印', '2020-03-25 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('277', '888', 'GPRS专线维护中，客户的无线网卡上网设置中，APN应设为？', null, 'cmwap', 'cmnet', 'wlan  ', '本专线专用APN', 'D', '20', '10001', '李金印', '2020-03-26 10:21:43', '李金印', '2020-03-26 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('278', '888', 'DNS的作用是？', null, '为客户机分配IP地址', ' 访问HTTP的应用程序', ' 将域名翻译为IP地址 ', ' 将MAC地址翻译为IP地址 ', 'C', '20', '10001', '李金印', '2020-03-27 10:21:43', '李金印', '2020-03-27 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('279', '888', 'GPON技术中，OLT下行采用（  ）技术进行数据下发？', null, '广播 ', '单播', '链路复用', 'TDMA', 'A', '20', '10001', '李金印', '2020-03-28 10:21:43', '李金印', '2020-03-28 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('280', '888', 'GPON传输上下行光信号的波长分别是？', null, '850nm，1310nm', '1310nm，1490nm', '1490nm，1550nm', '1310nm，1550nm', 'B', '20', '10001', '李金印', '2020-03-29 10:21:43', '李金印', '2020-03-29 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('281', '888', '测试网络时，经常会用到ping命令，我们现在想从PC上持续观察ping对端网络的结果，也就是我们平时所说的“长ping”，请问要用到ping命令中的哪个参数？', null, '–a    ', '-r  ', '—d', '-t', 'D', '20', '10001', '李金印', '2020-03-30 10:21:43', '李金印', '2020-03-30 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('282', '888', '查看本机IP地址信息的命令是？', null, 'PING', 'TELNET', 'TRACERT', 'IPCONFIG', 'D', '20', '10001', '李金印', '2020-03-31 10:21:43', '李金印', '2020-03-31 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('283', '888', '二层以太网交换机通过（    ）来转发数据包工作方式。', null, 'IP地址', 'LLC地址', 'MAC地址', '端口地址', 'C', '20', '10001', '李金印', '2020-04-01 10:21:43', '李金印', '2020-04-01 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('284', '888', '1310nm窗口的光信号在G.652光纤中的衰耗大约每公里为？\n', null, '0.25db', ' 0.4db', ' 0.5db', '0.1db', 'B', '20', '10001', '李金印', '2020-04-02 10:21:43', '李金印', '2020-04-02 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('285', '888', 'ARP协议的作用是？', null, '将端口号映射到IP地址\n', '连接IP层和TCP层\n', '广播IP地址\n', '将IP地址映射到第二层地址\n\n', 'D', '20', '10001', '李金印', '2020-04-03 10:21:43', '李金印', '2020-04-03 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('286', '888', '以下哪一项不属于编码器的功能？', null, '图象编码压缩', '图象采集', '图象的网络传输', '图象的前端储存', 'C', '20', '10001', '李金印', '2020-04-04 10:21:43', '李金印', '2020-04-04 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('287', '888', '为了防御网络监听，最常用的方法是？', null, '采用物理传输（非网络）', '信息加密', '无线网', '使用专线传输', 'B', '20', '10001', '李金印', '2020-04-05 10:21:43', '李金印', '2020-04-05 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('288', '888', '空调机房环境中正常温度、湿度范围是？', null, '15℃～25℃  　30％～70％', '15℃-30℃   　30％-70％', '15℃-25℃     35％-75％', '25℃-35℃     30％-70％', 'A', '20', '10001', '李金印', '2020-04-06 10:21:43', '李金印', '2020-04-06 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('289', '888', '光进铜退体现了发展的科学技术在现在社会中的应用，以下非光进铜退原因的是？', null, '成本降低', '兼容性高', '电力供应保障性高', '带宽提升', 'C', '20', '10001', '李金印', '2020-04-07 10:21:43', '李金印', '2020-04-07 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('290', '888', 'VLAN的划分不包括以下哪种方法？', null, '基于端口', '基于MAC地址', '基于物理位置', '基于协议', 'C', '20', '10001', '李金印', '2020-04-08 10:21:43', '李金印', '2020-04-08 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('291', '888', 'GPON网络中，接入层的覆盖半径为（    ）公里。', null, '5', '10', '15', '20', 'D', '20', '10001', '李金印', '2020-04-09 10:21:43', '李金印', '2020-04-09 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('292', '888', '与多模光纤相比，单模光纤的特点包括？', null, '较高的传输率、较长的传输距离、较高的成本', '较低的传输率、较短的传输距离、较高的成本', '较高的传输率、较短的传输距离、较低的成本', '较低的传输率、较长的传输距离、较低的成本', 'A', '20', '10001', '李金印', '2020-04-10 10:21:43', '李金印', '2020-04-10 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('293', '888', '为应对业务向全IP化转型的需求，基于SDH的移动传送网逐渐向（ ）演进。', null, 'MSTP', 'GPON', 'PTN', 'WLAN', 'C', '20', '10001', '李金印', '2020-04-11 10:21:43', '李金印', '2020-04-11 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('294', '888', '采用GPON组建的校区宽带，拨号出现“错误691”的原因是？', null, '远程连接中断', 'ONU故障', 'OLT故障', ' 用户名密码错误', 'D', '20', '10001', '李金印', '2020-04-12 10:21:43', '李金印', '2020-04-12 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('295', '888', '传输故障的处理原则是？', null, '进行抢修 ', '进行抢通', '先抢通再抢修', '先抢修再抢通', 'C', '20', '10001', '李金印', '2020-04-13 10:21:43', '李金印', '2020-04-13 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('296', '888', 'G.652光纤在（  ）处其衰耗最小，但色散较大。', null, '1550nm', '1310nm', '850nm', '1480nm', 'A', '20', '10001', '李金印', '2020-04-14 10:21:43', '李金印', '2020-04-14 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('297', '888', '不间断电源保护功能不包括？', null, '输出短路', '输出过载', '机内过温', '输入短路', 'D', '20', '10001', '李金印', '2020-04-15 10:21:43', '李金印', '2020-04-15 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('298', '888', '以不同频率区分上行和下行指的是？', null, 'FDD', 'TDD', 'WDM', '', 'A', '20', '10001', '李金印', '2020-04-16 10:21:43', '李金印', '2020-04-16 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('299', '888', '互联网OSI/RM参考模型第四层叫做？', null, '数据链路层', '网络层', '传输层', '', 'C', '20', '10001', '李金印', '2020-04-17 10:21:43', '李金印', '2020-04-17 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('300', '888', '我们所说的光网络单元通常简称为？', null, 'OLT', 'ODN', 'ONU', '', 'C', '20', '10001', '李金印', '2020-04-18 10:21:43', '李金印', '2020-04-18 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('301', '888', '在构建LAN 或WAN 时，都必须选择网络的拓扑结构。（ ）结构网络具有最小的网络时延，最高的可靠性，但管理复杂。', null, '星型', '树型', '链状', '网状', 'D', '20', '10001', '李金印', '2020-04-19 10:21:43', '李金印', '2020-04-19 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('302', '888', '以下选项中不是数字光纤通信系统的基本组成是？', null, '光发送机', '光纤', '光接收机', '分光器', 'D', '20', '10001', '李金印', '2020-04-20 10:21:43', '李金印', '2020-04-20 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('303', '888', '在路由器中，决定最佳路由的因素是？', null, '最小的路由跳数 ', '最小的时延', '最小的metirc值', '最大的带宽', 'C', '20', '10001', '李金印', '2020-04-21 10:21:43', '李金印', '2020-04-21 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('304', '888', '采购审计的主要目的是？', null, '确认合同项下收取的成本有效、正确 ', '简要地审核项目', '确定可供其他采购任务借鉴的成功之处', '确认基本竣工', 'C', '20', '10001', '李金印', '2020-04-22 10:21:43', '李金印', '2020-04-22 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('305', '888', '项目采购计划的编制需要有适宜的方法，以规避项目风险，实现项目目标，（    ）不属于项目采购计划编制采用的技术。', null, '专家判断', '合同类型', '自制/采购分析', '工作说明书', 'D', '20', '10001', '李金印', '2020-04-23 10:21:43', '李金印', '2020-04-23 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('306', '888', '采购是项目管理工作的重要组成部分，以下关于采购的叙述中不正确的是？', null, '采购管理计划是评估卖方的衡量指标', '采购工作说明书不是来自于项目范围基准', '采购工作说明书描述采购产品的细节', '采购管理计划确定采用的合同类型', 'B', '20', '10001', '李金印', '2020-04-24 10:21:43', '李金印', '2020-04-24 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('307', '888', '某公司承担了一项系统集成项目，正在开发项目适用的软件系统，但是需要从其他公司购买一些硬件设备，该公司的转包合同负责人应当首先提供下列哪份文件？', null, '项目章程', '项目范围说明书', '工作说明书', '外包合同', 'C', '20', '10001', '李金印', '2020-04-25 10:21:43', '李金印', '2020-04-25 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('308', '888', '以下对政府项目单一来源采购描述错误的是？', null, '只能从唯一供应商处采购的', '发生了不可预见的紧急情况下不能从其他供应商处采购', '采用公开招标或邀请招标所需时间不能满足用户紧急需要', '必须保证原有采购项目一致性或者服务配套的要求，需要继续从原供应商处添购', 'C', '20', '10001', '李金印', '2020-04-26 10:21:43', '李金印', '2020-04-26 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('309', '888', '以下不属于投标文件互审的工作内容的是？', null, '招标文件解读分析', '工程量清单、配置参数、偏离表前后一致性', '投标文件字体格式、排版是否正确', '投标书签字盖章是否遗漏情况', 'A', '20', '10001', '李金印', '2020-04-27 10:21:43', '李金印', '2020-04-27 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('310', '888', '一般ICT项目中涉及的系统建议的备品备件的占比是？', null, '0.03', '0.04', '0.05', '0.1', 'A', '20', '10001', '李金印', '2020-04-28 10:21:43', '李金印', '2020-04-28 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('311', '888', '由于与客户合同中约定由我公司提供项目相关非移动通信设备，由于我公司目前没有设备销售的资质，因此无法开具设备发票给用户，因此建议与客户在合同中约定采用代理采购方式，设备销售发票由(     )直接开具给客户。', null, '第三方', '移动公司', '税务机关', '以上答案均不对', 'A', '20', '10001', '李金印', '2020-04-29 10:21:43', '李金印', '2020-04-29 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('312', '888', '控制实际垫资总额，将业主付款进度与施工进度合理挂钩，明确各阶段性付款的时间节点，原则上不建议按（    ）模式分期付款。', null, 'AT', 'BT', 'TB', 'TA', 'B', '20', '10001', '李金印', '2020-04-30 10:21:43', '李金印', '2020-04-30 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('313', '888', '对于(      )万（含）以上融创公司承建的效益类项目、50万（含）以上非融创公司承建的效益类项目、战略类项目，立项单位应以正式文件的请示形式上报省公司进行审批。', null, '100', '1000', '500', '5000', 'B', '20', '10001', '李金印', '2020-05-01 10:21:43', '李金印', '2020-05-01 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('314', '888', '机电产品国际招标项目采用综合评价法评标，投标人综合得分相同的推荐中标候选人的做法正确的是？\n', null, '按投标报价由低到高的顺序排列  ', '按技术指标优劣顺序排列', '按价格得分高者排名优选        ', '按技术得分高者排名优选', 'C', '20', '10001', '李金印', '2020-05-02 10:21:43', '李金印', '2020-05-02 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('315', '888', '采购物流部是公司采购工作的归口管理单位，以下不属于该部门负责内容的是？', null, '物流工作管理', '统一组织采购', '监督指导采购', '供应商管理', 'D', '20', '10001', '李金印', '2020-05-03 10:21:43', '李金印', '2020-05-03 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('316', '888', '某个ICT项目客户委托融创承接，项目收入350万，支出185万，其中投资类支出60万，项目效益中IT部分净现值为5万，CT部分专线折扣为1折，根据最新的管理办法要求，该项目可采用以下哪种决策方式？', null, '专题会议决策', '签报决策', '地市总经理办公会议决策', '省公司决策', 'D', '20', '10001', '李金印', '2020-05-04 10:21:43', '李金印', '2020-05-04 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('317', '888', '某项目中一个总价500元的摄像头，其中包含的税为（     ）元？', null, '30', '8.3', '85', '72.6', 'D', '20', '10001', '李金印', '2020-05-05 10:21:43', '李金印', '2020-05-05 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('318', '888', '《政府采购法》所称采购，是指以合同方式有偿取得的行为，包括购买、租赁、委托、雇佣等。以下不属于政府采购范围的是？', null, '货物 ', '劳务 ', '工程', '服务', 'B', '20', '10001', '李金印', '2020-05-06 10:21:43', '李金印', '2020-05-06 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('319', '888', '《政府采购信息公告管理办法》规定，采购信息更正公告不包括以下哪项？', null, '采购人、采购代理机构名称、地址和联系方式', '专家选择情况', '更正事项、内容及日期', '采购项目联系人和电话', 'B', '20', '10001', '李金印', '2020-05-07 10:21:43', '李金印', '2020-05-07 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('320', '888', '政府采购应主要采用以下哪种方式？\n', null, '公开招标', '竞争性谈判 ', '单一来源采购  ', '询价', 'A', '20', '10001', '李金印', '2020-05-08 10:21:43', '李金印', '2020-05-08 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('321', '888', '采购目录实施（     ），未在采购目录中包含的产品，由省公司采购物流部维护更新。', null, '标准化管理', '集成化管理', '动态管理', '静态管理', 'C', '20', '10001', '李金印', '2020-05-09 10:21:43', '李金印', '2020-05-09 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('322', '888', '采购人需对采购合法合规性进行监督评估，以下不属于常规监督方式的是？', null, '在线监督', '采购结果审核', '定期检查', '集中审计', 'D', '20', '10001', '李金印', '2020-05-10 10:21:43', '李金印', '2020-05-10 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('323', '888', '询价，是指采购人以公告或邀请书的方式，向（     ）家及以上不特定或特定的潜在供应商就采购的货物或服务询问价格，从中选择成交供应商的采购方式。', null, '2', '3', '4', '5', 'B', '20', '10001', '李金印', '2020-05-11 10:21:43', '李金印', '2020-05-11 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('324', '888', '以下不属于采购产品集采级别的是？', null, '一级集采产品', '二级集采产品', '三级集采产品', '非集采产品', 'C', '20', '10001', '李金印', '2020-05-12 10:21:43', '李金印', '2020-05-12 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('325', '888', '以下不属于采购管理的监督部门的是？', null, '纪检监察部门', '法律部门', '财务部门', '综合部门', 'D', '20', '10001', '李金印', '2020-05-13 10:21:43', '李金印', '2020-05-13 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('326', '888', '供应商认为存在低于成本价投标情形的，可以在开标现场提出异议，并在评标完成前向采购人提交书面材料，采购人应当及时将书面材料转交给谁？', null, '评标委员会', '公司审计', '公司综合部', '公司法律部', 'A', '20', '10001', '李金印', '2020-05-14 10:21:43', '李金印', '2020-05-14 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('327', '888', '集成费税率是多少？', null, '0.06', '0.11', '0.13', '0.17', 'A', '20', '10001', '李金印', '2020-05-15 10:21:43', '李金印', '2020-05-15 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('328', '888', '对于采购，以下不属于法律部门负责内容的是？', null, '采购文件的法律论证', '采购合同的合法性、有效性进行审查', '供应商资质审核', '提供审查意见', 'C', '20', '10001', '李金印', '2020-05-16 10:21:43', '李金印', '2020-05-16 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('329', '888', '按照《中华人民共和国招标投标法》规定，下列说法错误的是？', null, '在招标文件要求提交投标文件的截止时间后送达的投标文件，只要文件密封完好，招标人可以结束该投标文件。', '投标人少于三个的，招标人应当依照本法重新招标。', '投标人根据招标文件载明的项目实际情况，拟在中标后将中标项目的部分非主体、非关键项性工作进行分包的，应当在投标文件中载明。', '中标通知书发出后，招标人改变中标结果的，或者中标人放弃中标项目的，应当依法承担法律责任。', 'A', '20', '10001', '李金印', '2020-05-17 10:21:43', '李金印', '2020-05-17 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('330', '888', '按照《中华人民共和国合同法》规定，有关技术合同价款、报酬或者使用费的支付说法错误的是？', null, '由当事人约定，可以采取一次总算、一次总付或者一次总算、分期支付的方式。', '由当事人约定，可以采取提成支付或者提成支付附加预付入门费的方式。', '约定提成支付的，当事人应该在合同中明确写明提成金额，不能在合同中约定查阅会计账目的方法。', '约定提成支付的，提成支付的比例可以采取固定比例、逐年递增或者逐年递减的比例。', 'C', '20', '10001', '李金印', '2020-05-18 10:21:43', '李金印', '2020-05-18 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('331', '888', '在政府采购项目中，招标文件要求提交投标文件的截止时间后送达的投标文件，招标人应当？', null, '开标后退还 ', '提请监督机构决定', '拒收', '签收保存 ', 'C', '20', '10001', '李金印', '2020-05-19 10:21:43', '李金印', '2020-05-19 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('332', '888', '以下工作不符合投标文件密封要求的是？', null, '按招标文件要求将正本、副本、报价文件单独密封文件进行单独封装，在文件袋封面和“于***时之前不得启封处”等加盖公章', '价格标贴好双面胶及盖好骑缝章后预留封口，由投标代表选定一份最终报价密封', '提交含价格的电子文档，和副本技术标文件一起封装', '单独密封，制作投标专用箱将所有文件装在一起', 'C', '20', '10001', '李金印', '2020-05-20 10:21:43', '李金印', '2020-05-20 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('333', '888', '投标过程中以下行为正确的是？', null, '设备厂商提供了多轮书面报价，由于时间紧迫，我方以厂家最后一次口头报价做成本测算', '成本超预算，向公司管理层汇报，申请政策倾斜', '在图文制作门店公用电脑上进行投标价格修订', '开标现场，与竞争对手交流，分享投标工作准备过程', 'B', '20', '10001', '李金印', '2020-05-21 10:21:43', '李金印', '2020-05-21 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('334', '888', '以下不属于投标文件互审的工作内容是', null, '招标文件解读分析', '工程量清单、配置参数、偏离表前后一致性', '投标文件字体格式、排版是否正确', '投标书签字盖章是否遗漏情况', 'A', '20', '10001', '李金印', '2020-05-22 10:21:43', '李金印', '2020-05-22 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('335', '888', '依据2009年2月通过的《中华人民共和国刑法修正案（七）》规定，以下哪些行为属违法行为？', null, '任何将本单位在履行职责或者提供服务过程中获得的公民个人信息出售或者非法提供给他人', '窃取或者以其他方法非法获取个人信息', '违反国家规定侵入计算机信息系统获取信息或实施非法控制的行为', '以上均是', 'D', '20', '10001', '李金印', '2020-05-23 10:21:43', '李金印', '2020-05-23 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('336', '888', '某银行与某信息系统运维公司签订了机房的运维服务合同，其中规定一年中服务器的宕机时间不能超过5小时。该条款属于（）中的内容。', null, '付款条件', '服务级别协议', '合同备忘录', '服务管理规范', 'B', '20', '10001', '李金印', '2020-05-24 10:21:43', '李金印', '2020-05-24 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('337', '888', '根据《招标投标法》，关于投标人的资格与条件，下列说法正确的是？', null, '投标人只能是法人和其他组织 ', '法人购买招标文件后即成为投标人', '国家对不同行业及不同主题的投标人资格条件的规定相同', '投标人除符合国家规定的资格条件外，还应符合具体项目的特别要求', 'D', '20', '10001', '李金印', '2020-05-25 10:21:43', '李金印', '2020-05-25 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('338', '888', '关于退还投标保证金，下列说法正确的是？', null, '招标人终止招标的，招标人可以不退还投标的投标保证金', '投标人在投标截止时间撤回投标文件的，投标保证金不予退还', '中标通知书发出后，招标人应立即退换中标人的投标保证金', '投标截止后投标人撤销投标文件的，招标人可以不退还投标保证金', 'D', '20', '10001', '李金印', '2020-05-26 10:21:43', '李金印', '2020-05-26 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('339', '888', '机电产品国际招标目中采用综合评价法进行评价的，关于价格权重，下列说法正确的是？', null, '价格权重不得低于10%，技术权重不得高于80%', '价格权重不得低于20%，技术权重不得高于70%', '价格权重不得低于30%，技术权重不得高于60%', '价格权重不得低于40%，技术权重不得高于50%', 'C', '20', '10001', '李金印', '2020-05-27 10:21:43', '李金印', '2020-05-27 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('340', '888', '机电产品国际招标项目采用综合评价法评标，投标人综合得分相同的，推荐中标候选人的做法是？', null, '按投标报价由低到高的顺序排列', '按技术指标优劣顺序排列', '按价格得分高者排名优选  ', '按技术得分高者排名优选', 'C', '20', '10001', '李金印', '2020-05-28 10:21:43', '李金印', '2020-05-28 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('341', '888', '《政府采购法》所称采购，是指以合同方式有偿取得的行为，包括购买、租赁、委托、雇佣等。以下不属于政府采购范围的是？', null, '货物 ', '劳务', '工程', '服务', 'B', '20', '10001', '李金印', '2020-05-29 10:21:43', '李金印', '2020-05-29 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('342', '888', '《政府采购信息公告管理办法》规定，采购信息更正公告不包括以下哪项？', null, '采购人、采购代理机构名称、地址和联系方式', '专家选择情况', '更正事项、内容及日期', '采购项目联系人和电话', 'B', '20', '10001', '李金印', '2020-05-30 10:21:43', '李金印', '2020-05-30 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('343', '888', '招标人应当确定投标人编制投标文件所需要的合理时间；但是，依法必须进行招标的项目，自招标文件开始发出之日起至投标人提交投标文件截止之日止，最短不得少于（）日。', null, '20', '15', '5', '10', 'A', '20', '10001', '李金印', '2020-05-31 10:21:43', '李金印', '2020-05-31 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('344', '888', '甲、乙两家为同一专业的工程承包公司，其资质等级依次为一级、二级。两家组成联合体，共同投标一项工程，该联合体资质等级应为？', null, '以甲公司的资质为准', '以乙公司的资质为准', '由主管部门重新评定资质 ', '以联合体协议确定的为准', 'B', '20', '10001', '李金印', '2020-06-01 10:21:43', '李金印', '2020-06-01 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('345', '888', '评标委员会由招标人或其委托的招标代理机构熟悉相关业务的代表，以及有关技术、经济等方面的专家组成，成员人数为五人以上单数，其中技术、经济等方面的专家不得少于成员总数的？', null, '五分之二', '三分之二', '三分之一', '二分之一', 'B', '20', '10001', '李金印', '2020-06-02 10:21:43', '李金印', '2020-06-02 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('346', '888', '开发合同中索赔的性质属于？', null, '经济补偿', '经济惩罚', '经济制裁', '经济补偿和经济制裁', 'A', '20', '10001', '李金印', '2020-06-03 10:21:43', '李金印', '2020-06-03 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('347', '888', '索赔是合同管理中经常会碰到的问题，以下关于索赔管理的描述中，正确的是？', null, '一方或双方存在违约行为和事实是合同索赔的前提', '凡是遇到客观原因造成的损失，承包商都可以申请费用补偿', '索赔是对对方违约行为的一种惩罚', '承建方应该将索赔通知书直接递交建设方，监理方不参与索赔管理', 'A', '20', '10001', '李金印', '2020-06-04 10:21:43', '李金印', '2020-06-04 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('348', '888', '关于投标有效期，下列说法正确的是？', null, '投标有效期只能延长一次', '投标保证金有效期可以不投标有效期略短', '投标有效期从招标文件的规定的投标截止日起算', '投标截止时间后，招标认可以投标人自行商定有效期', 'C', '20', '10001', '李金印', '2020-06-05 10:21:43', '李金印', '2020-06-05 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('349', '888', '在约定垫资合同或者垫资条款的时候，垫资款的偿付时限不要超过竣工以后的( )个月，并且要明确约定利息及对应比率。', null, '1', '3', '6', '12', 'C', '20', '10001', '李金印', '2020-06-06 10:21:43', '李金印', '2020-06-06 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('350', '888', '关于投标保证金必须在打款后十个工作日内提供公司财务部认可的收款凭证（公司盖章的纸质收款收据、收条），并在符合招标方退款条件后( )个月内将投标保证金退回公司基本户。', null, '1', '2', '3', '4', 'A', '20', '10001', '李金印', '2020-06-07 10:21:43', '李金印', '2020-06-07 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('351', '888', '以下投标文件制作将导致废标风险的是？', null, '目录未更新、页码错误', '投标文件有手写涂改，授权代表签字但未盖章', '完全响应招标文件，并提出了很多合理化建议', '增加了招标文件要求外的材料', 'B', '20', '10001', '李金印', '2020-06-08 10:21:43', '李金印', '2020-06-08 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('352', '888', '投标技术标文件组成一般不包含？', null, '产品配置清单', '技术规格偏离表', '商务偏离表', '产品彩页', 'C', '20', '10001', '李金印', '2020-06-09 10:21:43', '李金印', '2020-06-09 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('353', '888', '商业秘密通常不包括企业的？', null, '客户名录', '研发信息', '报价单', '宣传资料', 'D', '20', '10001', '李金印', '2020-06-10 10:21:43', '李金印', '2020-06-10 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('354', '888', '根据《新消法》相关规定，以下哪个描述是错误的？', null, '经营者向消费者提供商品或者服务，应当恪守社会公德，诚信经营，保障消费者的合法权益；不得设定不公平、不合理的交易条件，不得强制交易。', '经营者对消费者就其提供的商品或者服务的质量和使用方法等问题提出的询问，应当作出真实、明确的答复。', '经营者应当保证其提供的商品或者服务符合保障人身、财产安全的要求。对可能危及人身、财产安全的商品和服务，应当向消费者作出真实的说明和明确的警示，并说明和标明正确使用商品或者接受服务的方法以及防止危害发生的方法。', '经营者提供的商品或者服务不符合质量要求的，消费者可以依照国家规定、当事人约定退货，或者要求经营者履行更换、修理等义务。没有国家规定和当事人约定的，消费者可以自购买商品之日起七日内退货；七日后符合法定解除合同条件的，消费者可以及时退货，不符合法定解除合同条件的，可以要求经营者履行更换、修理等义务。', 'D', '20', '10001', '李金印', '2020-06-11 10:21:43', '李金印', '2020-06-11 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('355', '888', '消费者向有关行政部门投诉的，该部门应当自收到投诉之日起（     ）内，予以处理并告知消费者。', null, '7日', '10日', '7个工作日', '10个工作日', 'C', '20', '10001', '李金印', '2020-06-12 10:21:43', '李金印', '2020-06-12 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('356', '888', '电信业务经营者停止经营某种业务时，应提前（    ）日通知所涉及用户，并妥善做好用户善后工作。', null, '15', '30', '20', '60', 'B', '20', '10001', '李金印', '2020-06-13 10:21:43', '李金印', '2020-06-13 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('357', '888', '电信用户申告电信服务障碍的，电信业务经营者应当自接到申告之日起，城镇（   ）小时、农村（   ）小时内修复或者调通。', null, '24；48', '12；24', '48；72', '24；36', 'C', '20', '10001', '李金印', '2020-06-14 10:21:43', '李金印', '2020-06-14 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('358', '888', '经营者未经消费者同意或者请求，或者消费者明确表示拒绝的，不得向其发送？', null, '商业性信息', '服务类信息', '公益类信息', '关怀类信息', 'A', '20', '10001', '李金印', '2020-06-15 10:21:43', '李金印', '2020-06-15 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('359', '888', '电信业务经营者明码标价，应当公布价格举报电话（     ），方便群众进行监督。', null, '12345', '12358', '12580', '12300', 'B', '20', '10001', '李金印', '2020-06-16 10:21:43', '李金印', '2020-06-16 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('360', '888', '客户经理为具备一般纳税人资质的客户申请开票时，应该在哪个系统中提出申请？', null, 'ESOP系统', 'CRM系统', '综合服务平台', '综合管理平台', 'A', '20', '10001', '李金印', '2020-06-17 10:21:43', '李金印', '2020-06-17 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('361', '888', '《互联网服务接入规范》明确：有线接入速率的平均值应能达到签约速率多少比例？（有线接入速率指从用户终端到接入服务器（BRAS）之间的接入速率）', null, '0.8', '1', '0.9', '0.98', 'C', '20', '10001', '李金印', '2020-06-18 10:21:43', '李金印', '2020-06-18 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('362', '888', '《通信短信息服务管理规定》中要求对用户订阅和退订情况做记录，记录应当保存至短信息服务提供者与用户服务关系终止后（    ）个月。', null, '1', '3', '5', '6', 'C', '20', '10001', '李金印', '2020-06-19 10:21:43', '李金印', '2020-06-19 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('363', '888', '各公司对外签订的平等主体之间设立、变更、终止民事权利义务关系的协议是指？', null, '项目', '合同', '商谈', '会议', 'B', '20', '10001', '李金印', '2020-06-20 10:21:43', '李金印', '2020-06-20 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('364', '888', '除公司另有规定的情形外，公司对外签订合同应当采用什么形式？', null, '书面', '口头', '会议', '录音', 'A', '20', '10001', '李金印', '2020-06-21 10:21:43', '李金印', '2020-06-21 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('365', '888', '合同归口管理部门是指？', null, '财务部', '法律事务管理部门', '政企客户部', '综合部', 'B', '20', '10001', '李金印', '2020-06-22 10:21:43', '李金印', '2020-06-22 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('366', '888', '支出类合同的归口承办部门是指？', null, '财务部', '采购部', '政企客户部', '综合部', 'B', '20', '10001', '李金印', '2020-06-23 10:21:43', '李金印', '2020-06-23 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('367', '888', '合同在申请加盖合同专用章前，应通过哪个系统打印应通过合同管理系统打印《合同审批表》或《合同变更审批表》作为盖章审核材料作为盖章审核材料？', null, '合同管理系统', 'ICT管理平台', '任务管理系统', '供应链系统', 'A', '20', '10001', '李金印', '2020-06-24 10:21:43', '李金印', '2020-06-24 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('368', '888', '同一交易对象会计年度内交易金额累计__万元以下并且单次交易不超过__万元的，可以不签订合同?', null, '10;1', '5;1', '10;5', '5;2', 'C', '20', '10001', '李金印', '2020-06-25 10:21:43', '李金印', '2020-06-25 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('369', '888', '投标人少于（）个的，招标人应当依法重新招标。', null, '5', '2', '3', '4', 'C', '20', '10001', '李金印', '2020-06-26 10:21:43', '李金印', '2020-06-26 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('370', '888', '评标委员会成员一般应于什么阶段确定？', null, '开标过程中', '开标后', '招标前', '开标前', 'D', '20', '10001', '李金印', '2020-06-27 10:21:43', '李金印', '2020-06-27 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('371', '888', '必须公开招标的项目招标人可根据项目特点决定是否？', null, '编制标底', '编制招标文件', '发招标公告', '公开标底', 'A', '20', '10001', '李金印', '2020-06-28 10:21:43', '李金印', '2020-06-28 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('372', '888', '招标人发出的招标文件或者资格预审文件应当？', null, '标注编号', '加盖公章', '不加日期', '以上都不对', 'B', '20', '10001', '李金印', '2020-06-29 10:21:43', '李金印', '2020-06-29 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('373', '888', '资格预审文件一般包括以下哪些？', null, '申请人资格', '资格要求', '资格预审邀请书', '招标文件', 'B', '20', '10001', '李金印', '2020-06-30 10:21:43', '李金印', '2020-06-30 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('374', '888', '依法必须进行招标的项目，招标人应当自确定中标人之日起（）日内，向有关行政监督部门提交招标投标情况的书面报告。', null, '20', '15', '25', '30', 'B', '20', '10001', '李金印', '2020-07-01 10:21:43', '李金印', '2020-07-01 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('375', '888', '涉及重大紧急事项合同，可以适用（）审批流程，采用纸介方式进行审批，纸介审批完成后仍应当提交合同管理系统。', null, '合同管理审批', '分管领导决策审批', '紧急合同审批', '总经办决策审批', 'C', '20', '10001', '李金印', '2020-07-02 10:21:43', '李金印', '2020-07-02 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('376', '888', '一般合同审批时，合同专业审查部门、法律部门应当自收到送审合同之日起（）个工作日内提出审查意见。', null, '1', '3', '5', '7', 'B', '20', '10001', '李金印', '2020-07-03 10:21:43', '李金印', '2020-07-03 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('377', '888', '对紧急合同审批时，合同专业审查部门、法律部门应当自收到送审合同之日起（）个工作日内提出审查意见。', null, '1', '3', '5', '7', 'A', '20', '10001', '李金印', '2020-07-04 10:21:43', '李金印', '2020-07-04 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('378', '888', '如前期合同中未明确分项收费，而采取对客户一揽子收费的，应由业务部门提交收入分拆测算表时，优先确认以下哪项费用？', null, '设备收入', '业务集成费', '项目收入', '各电信业明细收入', 'A', '20', '10001', '李金印', '2020-07-05 10:21:43', '李金印', '2020-07-05 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('379', '888', '集成费税率为？', null, '0.06', '0.11', '0.17', '0.03', 'A', '20', '10001', '李金印', '2020-07-06 10:21:43', '李金印', '2020-07-06 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('380', '888', '由于与客户合同中约定由我公司提供项目相关非移动通信设备，由于我公司目前没有设备销售的资质，因此无法开具设备发票给用户，因此建议与客户在合同中约定采用代理采购方式，设备销售发票由()直接开具给客户。', null, '第三方', '移动公司', '税务机关', '以上答案均不对', 'A', '20', '10001', '李金印', '2020-07-07 10:21:43', '李金印', '2020-07-07 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('381', '888', '对ICT项目进行效益评估，以下哪项不属于评估输出结果？', null, '项目净现值', '集团客户保有率', '动态回收期', '投资利润率', 'B', '20', '10001', '李金印', '2020-07-08 10:21:43', '李金印', '2020-07-08 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('382', '888', '某项目成本明细如下：设备费1.5万元，差旅费0.5万元，设备租赁费0.8万元，管理分摊费用0.3万元。下列说法中不正确的是？', null, '设备费1.5万元属于直接成本', '差旅费0.5万元属于直接成本', '设备租赁费0.8万元属于间接成本', '管理分摊费用0.3万元属于间接成本', 'C', '20', '10001', '李金印', '2020-07-09 10:21:43', '李金印', '2020-07-09 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('383', '888', '在合同报账过程中，当发现系统自动带出的会计科目错误时，应通过工单形式在哪个系统中进行修改合同行信息？', null, '供应链系统', '任务管理系统', '合同系统', '财务分析平台', 'C', '20', '10001', '李金印', '2020-07-10 10:21:43', '李金印', '2020-07-10 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('384', '888', '对供应商提供全额增值税专票但部分付款的，该专票剩余款项支付时，应发起什么类型的报账单？', null, '已报账支付申请', '未报账', '未报帐支付申请', '未提出支付申请', 'A', '20', '10001', '李金印', '2020-07-11 10:21:43', '李金印', '2020-07-11 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('385', '888', '供应商款项预付后，要求报账人在多少个工作日内取得报销发票或收据？', null, '3', '10', '5', '7', 'D', '20', '10001', '李金印', '2020-07-12 10:21:43', '李金印', '2020-07-12 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('386', '888', '在报账系统发起已付款标准发票核销报账，对于招投标保证金的预付款项，必要时可以延长到多少时间内发起报账核销?', null, '半个月', '10天', '一个月', '20天', 'C', '20', '10001', '李金印', '2020-07-13 10:21:43', '李金印', '2020-07-13 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('387', '888', '在购买商品、接受服务以及从事其他经营活动支付款项时，应当按照相关税法规定从供应商处取得合法票据。下列说法错误的是？', null, '公司接受行政事业单位或武警、军队按照自愿有偿原则提供的经营服务，取得的行政事业单位的票据不可以作为报销依据', '向各级政府、国家机关、事业单位、代行政府职能的社会团体及其他组织支付其依法利用政府权力、政府信誉、国家资源、国有资产或提供特定公共服务、准公共服务收取的财政资金，取得的非税收入一般缴款书，可以作为报销凭证', '取得与企业生产经营有关的港澳台及国外的发票、收据、自制的单据或凭证，相关单据真实、合法、有效，可以作为报销凭证', '支付行政事业性收费和政府性基金时，取得的行政事业单位收费票据或政府性基金票据，可以作为报销凭证', 'A', '20', '10001', '李金印', '2020-07-14 10:21:43', '李金印', '2020-07-14 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('388', '888', '以下关于给供应商付款的规范说法错误的是？', null, '报账单收款人必须与合同签约方保持一致', '合同约定首付款为合同价款的20%，但供应商近期资金紧张，经业务部门领导同意后，可以提前预付80%合同款', '应通过银行转账方式支付合同款项', '累计付款金额不能超过合同总金额', 'B', '20', '10001', '李金印', '2020-07-15 10:21:43', '李金印', '2020-07-15 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('389', '888', '如果客户发票余额为120元，当月产生月账单金额300元，请问月结发票可以打印多少？', null, '300元', '120元', '180元', '100元', 'B', '20', '10001', '李金印', '2020-07-16 10:21:43', '李金印', '2020-07-16 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('390', '888', '小规模纳税人的适用税率统一为？', null, '0.03', '0.11', '0.17', '0.06', 'A', '20', '10001', '李金印', '2020-07-17 10:21:43', '李金印', '2020-07-17 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('391', '888', '以下关于资产负债表的表述中，正确的是？', null, '资产负债表是反映企业在某一特定日期经营成果及其分配情况的报表', '资产负债表跟进“资产=负债+所有者权益”的关系式进行编制', '资产负债表反映建设项目特定日期的资产、负债、所有者权益的余额及其分布情况', '资产负债表有报告式和账户式两个格式，我国采用报告式', 'B', '20', '10001', '李金印', '2020-07-18 10:21:43', '李金印', '2020-07-18 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('392', '888', '内部收益率是指资金流入现值总额与资金流出现值总额相等、净现值等于（）的折现率。', null, '1', '1.5', '0', '0.5', 'C', '20', '10001', '李金印', '2020-07-19 10:21:43', '李金印', '2020-07-19 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('393', '888', 'ICT项目收入录入时，系统集成费收入计为以下哪个科目？', null, '移动网业务收入-ICT业务-系统集成费', '移动网业务收入-ICT业务-维保费', '其他业务收入-出售通信设备收入-ICT设备', '其他业务收入-出售通信商品收入-出售终端收入-ICT终端', 'A', '20', '10001', '李金印', '2020-07-20 10:21:43', '李金印', '2020-07-20 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('394', '888', '公司与客户签订设备与终端买卖协议，直接向厂商采购设备与终端并将其销售给客户开展ICT业务，这种模式称为？', null, '受托代销模式', '经营租赁模式', '融资租赁模式', '购销模式', 'D', '20', '10001', '李金印', '2020-07-21 10:21:43', '李金印', '2020-07-21 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('395', '888', '客户采用分期付款方式购买设备与终端，应按照以下哪种模式进行处理？', null, '受托代销模式', '经营租赁模式', '融资租赁模式', '购销模式', 'D', '20', '10001', '李金印', '2020-07-22 10:21:43', '李金印', '2020-07-22 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('396', '888', 'ICT业务中涉及设备及终端，以下哪类为经营租赁模式？', null, '公司与客户签订代理采购协议，代客户向厂商采购设备与终端开展ICT业务，公司不垫付设备与终端资金', '公司投资建设ICT项目，资产归公司所有，客户为获取ICT业务服务分若干年分期支付设备使用费，按照经营租赁进行会计处理', '公司与客户签订设备与终端买卖协议，直接向厂商采购设备与终端并将其销售给客户开展ICT业务', '公司与供应商签订受托代销协议，供应商提供设备与终端，公司代供应商向客户销售设备与终端开展ICT业务', 'B', '20', '10001', '李金印', '2020-07-23 10:21:43', '李金印', '2020-07-23 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('397', '888', '施工费税率为？', null, '0.06', '0.11', '0.17', '0.03', 'B', '20', '10001', '李金印', '2020-07-24 10:21:43', '李金印', '2020-07-24 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('398', '888', '设备销售费税率为？', null, '0.06', '0.11', '0.17', '0.03', 'C', '20', '10001', '李金印', '2020-07-25 10:21:43', '李金印', '2020-07-25 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('399', '888', '涉及到成品软件销售费的税率为？', null, '0.06', '0.11', '0.17', '0.03', 'C', '20', '10001', '李金印', '2020-07-26 10:21:43', '李金印', '2020-07-26 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('400', '888', '剩余净现值率为？', null, '净现值/累计现金流出现值', '净现值/累计现金流入现值', '净现值*累计现金流入现值', '净现值*累计现金流出现值', 'A', '20', '10001', '李金印', '2020-07-27 10:21:43', '李金印', '2020-07-27 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('401', '888', '剩余净现值率（NPVR）指考虑了项目资金成本后可获得的收益率，体现项目收益与项目投入间的什么关系？\n', null, '累加', '比例', '乘积', '函数', 'B', '20', '10001', '李金印', '2020-07-28 10:21:43', '李金印', '2020-07-28 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('402', '888', '项目的回收期是指？', null, '项目的合同约定期', '项目每年付款的日期', '项目成本支出的年限', '收益抵偿成本所需的时间', 'D', '20', '10001', '李金印', '2020-07-29 10:21:43', '李金印', '2020-07-29 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('403', '888', '项目的内部收益率是指计算期内哪一项为0时的折现率？', null, '净现值', '现金流出值', '现金流入值', '回收期', 'A', '20', '10001', '李金印', '2020-07-30 10:21:43', '李金印', '2020-07-30 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('404', '888', '凡符合国家有关法规制度所属报损条件的，且逾期（）年无法收回的应收未收款项，核算中心或各分公司填写应收账款报损情况表。', null, '1', '2', '3', '5', 'B', '20', '10001', '李金印', '2020-07-31 10:21:43', '李金印', '2020-07-31 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('405', '888', '根据ICT业务财务核算规范，ICT项目建成后客户使用ICT业务而产生的语音、短彩信、无线上网、专线等费用属于以下哪一类？', null, '维保费', '通信服务费', '设备费', '集成费', 'B', '20', '10001', '李金印', '2020-08-01 10:21:43', '李金印', '2020-08-01 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('406', '888', '公司在提供ICT项目集成方案实施服务外，还需提供立杆、地下管道布放等其他通信工程服务，这类服务应向客户收取的费用类别为？', null, '维保费', '设备费', '通信服务费', '工程施工费', 'D', '20', '10001', '李金印', '2020-08-02 10:21:43', '李金印', '2020-08-02 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('407', '888', '在租赁期开始日，应收融资租赁款与其现值的哪类关系为融资租赁模式下的未实现融资收益？', null, '相加', '差额', '乘积', '比例', 'B', '20', '10001', '李金印', '2020-08-03 10:21:43', '李金印', '2020-08-03 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('408', '888', '项目X初期投资100万，第一年营业收入90万，成本20万；第二年营业收入为110万，成本60万，二年后资产余值为10万，如果基准收益率为10%，项目净现值为多少万？', null, '11.2', '13.2', '12.2', '14.2', 'B', '20', '10001', '李金印', '2020-08-04 10:21:43', '李金印', '2020-08-04 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('409', '888', '以下哪个属于合同专业审查部门？', null, '财务部', '采购部', '政企客户部', '综合部', 'A', '20', '10001', '李金印', '2020-08-05 10:21:43', '李金印', '2020-08-05 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('410', '888', '在项目的各种成本中，税金属于？', null, '可变成本', '固定成本', '直接成本', '间接成本', 'C', '20', '10001', '李金印', '2020-08-06 10:21:43', '李金印', '2020-08-06 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('411', '888', 'ICT项目台账应包含项目基本情况、预立项项目效益评估内容、（）、合同、入账情况。', null, '正式立项项目评估内容', '项目联系人方式', '项目规章制度', '合作单位地址信息', 'A', '20', '10001', '李金印', '2020-08-07 10:21:43', '李金印', '2020-08-07 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('412', '888', 'ICT项目预立项各部门评估审核中，财务部对项目带来的新增个人用户支付的收入一般会被确认为不确定性收入，一般需要出具。', null, '项目审批单', '独立评审意见', '意见书', '工作联系单', 'B', '20', '10001', '李金印', '2020-08-08 10:21:43', '李金印', '2020-08-08 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('413', '888', '固定资产投资项目，按照资产的形成过程可以分为（）投资项目和工程类投资项目。', null, '软件类', '设备类', '零星类', '集中类', 'C', '20', '10001', '李金印', '2020-08-09 10:21:43', '李金印', '2020-08-09 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('414', '888', '项目投资计划分为新建项目和（）项目投资计划。', null, 'ICT', '续建', '工程类', '资本开支类', 'B', '20', '10001', '李金印', '2020-08-10 10:21:43', '李金印', '2020-08-10 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('415', '888', '按照集团公司要求，省公司于2016年9月起在全省范围内推广增值税电子普通发票，本次推广的电子普通发票不包括哪类发票？', null, '增值税普通发票', '通用机打发票', '增值税专用发票', '普通发票', 'C', '20', '10001', '李金印', '2020-08-11 10:21:43', '李金印', '2020-08-11 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('416', '888', '在构建资金认领入账和资金使用管理流程，下列哪个系统可以实现对集团客户资金流的安全管控？', null, 'CRM', 'ESOP', '供应链管理系统', '资金管理系统', 'B', '20', '10001', '李金印', '2020-08-12 10:21:43', '李金印', '2020-08-12 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('417', '888', '某软件开发项目进度紧迫，在设计方案还未完成前，项目经理改变计划，停止项目设计工作，要求立刻转入代码编写，关于项目经理的行为，下列描述正确的是？', null, '项目经理的行为不妥，需等CCB审批后方可改变计划', '项目经理有权改变项目流程，不需要审批', '这种行为属于赶工行为，项目经理可以直接安排实施', '这种行为属于快速跟进，项目经理有权决定', 'A', '20', '10001', '李金印', '2020-08-13 10:21:43', '李金印', '2020-08-13 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('418', '888', '在进行项目活动历时估算时，（）属于参数估算。', null, '从以前类似计划活动的实际持续时间为依据来估算', '用需要完成工作的数量乘以完成单位工作所需时间为估算活动时间的依据', '利用有可能的历时估算，最乐观的历时估算和最悲观的历时估算\n来计算', '利用以历时信息为依据的专家判断估算', 'B', '20', '10001', '李金印', '2020-08-14 10:21:43', '李金印', '2020-08-14 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('419', '888', '对于因施工质量、产品质量引起欠费两次的供应商，应对该供应商作何处理？', null, '全省通报', '终止结算', '缴纳罚款', '取消其全省ICT项目的合作资格', 'D', '20', '10001', '李金印', '2020-08-15 10:21:43', '李金印', '2020-08-15 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('420', '888', '依法必须进行招标的项目，其评标委员会需由招标人的代表和有关技术、经济等方面的专家组成，成员人数为五人以上单数，且其中专家不得少于成员总数的多少？', null, '2/3', '1/2', '1/3', '3/4', 'A', '20', '10001', '李金印', '2020-08-16 10:21:43', '李金印', '2020-08-16 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('421', '888', '现某分公司有一ICT项目，项目预算260万，经效益评估表测算，该项目IT部分的净现值为3万元，动态回收期3.5年，CT部分折扣3折，请问，该项目需由以下哪个决策组织进行决策？', null, '分公司总经理办公会 ', '分公司领导专题办公会', '分公司政企决策小组', '省公司领导专题办公会', 'A', '20', '10001', '李金印', '2020-08-17 10:21:43', '李金印', '2020-08-17 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('422', '888', '项目合同评审是项目管理中一项重要工作，其中不包括？', null, '确认合同的需求', '进行初步的项目任务分解', '\n对合同条款进行分析', '对自身的资源和能力进行确认', 'B', '20', '10001', '李金印', '2020-08-18 10:21:43', '李金印', '2020-08-18 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('423', '888', '项目承建方在投标前一般也需要进行项目论证，主要是从技术可行性、人力及其他资源可行性、财务可行性、（  ），以及对其他参与竞争投标方情况分析等方面进行论证。', null, '项目的国民经济分析', '项目的社会影响分析', '项目的风险分析', '项目的运行环境分析', 'C', '20', '10001', '李金印', '2020-08-19 10:21:43', '李金印', '2020-08-19 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('424', '888', '立项管理是项目管理中的一项重要内容。从项目管理的角度看，立项管理主要是解决项目的（）问题。', null, '技术可行性   ', '组织战略符合性', '高层偏好', '需求收集和确认', 'B', '20', '10001', '李金印', '2020-08-20 10:21:43', '李金印', '2020-08-20 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('425', '888', '因时间紧、任务急、经过评估，某智能监控软件涉及的图像传输速度与精度指标难以满足客户需求，故项目团队欲将该软件开发分包给技术实力很强的企业完成。这种风险应对措施被称为风险的什么？', null, '接受', '规避', '减轻', '转移', 'D', '20', '10001', '李金印', '2020-08-21 10:21:43', '李金印', '2020-08-21 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('426', '888', '工程项目总控的核心是？', null, '质量控制', '费用控制', '进度控制', '合同控制', 'D', '20', '10001', '李金印', '2020-08-22 10:21:43', '李金印', '2020-08-22 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('427', '888', '您正在准备一份关于甲项目的标书。标书中一般不包括？', null, '投标书、投标报价一览表、分项一览表', '公司的营业执照副本复印件加盖公章及其他相关证件', '甲项目相关的技术资料', '甲项目需求合理性分析', 'D', '20', '10001', '李金印', '2020-08-23 10:21:43', '李金印', '2020-08-23 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('428', '888', '供应链系统中，一个成本费用类需求单可以包括几个项目的需求？', null, '1', '2', '3', '多个', 'A', '20', '10001', '李金印', '2020-08-24 10:21:43', '李金印', '2020-08-24 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('429', '888', '项目合同签订后，应该什么时候在ESOP系统内进行项目一次性录入？', null, '项目验收后', '合同签订后', '项目收入到账后', '项目竣工后', 'B', '20', '10001', '李金印', '2020-08-25 10:21:43', '李金印', '2020-08-25 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('430', '888', '制定项目计划时，首先应该关注的是？', null, '范围说明书', '工作分解结构', '风险管理计划', '质量计划', 'A', '20', '10001', '李金印', '2020-08-26 10:21:43', '李金印', '2020-08-26 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('431', '888', '项目管理计划确定了项目执行，监控和结束项目的方式和方法，其中不包括什么？', null, '项目需要执行的过程', '项目生命周期', '里程碑的阶段的划分', '项目过程改进', 'D', '20', '10001', '李金印', '2020-08-27 10:21:43', '李金印', '2020-08-27 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('432', '888', '管理一个项目不包括下列哪些内容？', null, '识别要求', '确定清楚而又能实现的目标', '权衡质量、范围、时间和费用的要求', '制定符合项目经理期望的计划和说明书', 'D', '20', '10001', '李金印', '2020-08-28 10:21:43', '李金印', '2020-08-28 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('433', '888', '风险评估与改进是哪个阶段的活动？', null, '应急响应', '应急准备', '应急处置', '应急总结改进', 'D', '20', '10001', '李金印', '2020-08-29 10:21:43', '李金印', '2020-08-29 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('434', '888', '以下关于预案启动说法正确的是？', null, '具有自动启动模式', '遵从预案启动的策略和程序', '经需方管理层决策', '经相关方协调', 'B', '20', '10001', '李金印', '2020-08-30 10:21:43', '李金印', '2020-08-30 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('435', '888', '当发生下列哪些情况时，合同可能认定为无效？', null, '合同甲乙双方损害了社会共同利益', '合同标的规格约定不清', '合同中缺少违约条款', '合同中包括对人身伤害的免责条款', 'A', '20', '10001', '李金印', '2020-08-31 10:21:43', '李金印', '2020-08-31 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('436', '888', '项目商务运作当中，里程碑事件中属于90%获得概率的事件是？', null, '方案得到初步认可', '用户内部决定购买我司产品服务', '客户或者合作伙伴下单', '中标', 'D', '20', '10001', '李金印', '2020-09-01 10:21:43', '李金印', '2020-09-01 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('437', '888', '项目商务运作方式中，下列哪个不属于“确认项目的真实性”里程碑必须具备的条件之一？', null, '资金已经落实', '项目已经立项', '找到用户的导师', '客户有意向', 'D', '20', '10001', '李金印', '2020-09-02 10:21:43', '李金印', '2020-09-02 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('438', '888', '项目收尾主要包括项目验收、项目总结和项目评估审计。其中项目评估中无需评估的内容是？', null, '盈利要求', '客户满意度要求', '后续项目指标要求', '系统是否实现既定要求', 'D', '20', '10001', '李金印', '2020-09-03 10:21:43', '李金印', '2020-09-03 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('439', '888', '项目管理知识体系包括了管理项目所需的管理知识。以下关于项目管理知识体系的叙述中，不正确的是？', null, '项目管理的 9 大知识域是通用的，是跨行业的', '除了要掌握项目管理基本知识域的内容，项目团队还应该了解行业的基本流程和业务需求', '项目经理除了要掌握项目管理基本知识体系外，还应该学习通用管理域的技能以及人际关系管理技能', '项目经理应该具有项目所需要的所有知识和技能', 'D', '20', '10001', '李金印', '2020-09-04 10:21:43', '李金印', '2020-09-04 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('440', '888', '项目的可行性研究一般包括的内容有：投资必要性、技术可行性、财务可行性、经济可行性、组织可行性、社会可行性、风险因素及对策。以下关于项目可行性研究的叙述中不正确的是？', null, '投资必要性主要是根据市场调查，预测，有关产业政策等因素来论证投资建设的必要性', '技术可行性是从技术角度，合理设计技术方案，并对有关内容进行比较，选择和评价', '财务可行性是指从项目及投资者的角度，设计合理的财务方案，并进行评价，做出投资决策', '经济可行性是分析项目对社会的影响，包括政治体制，方针政策，社会稳定性等', 'D', '20', '10001', '李金印', '2020-09-05 10:21:43', '李金印', '2020-09-05 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('441', '888', '项目可行性研究的目的是对拟建设的项目从技术、经济、工程等会方面进行调查研究和分析比较，提出是否投资和如何建设的相关意见，形成《可行性研究报告》。为项目决策提供依据。较完整的项目可行性研究的步骤依次是？', null, '立项申请、初步可行性研究、详细可行性研究、项目论证、项目评估。', '立项申请、项目论证、项目评估、初步可行性研究、详细可行性研究。', '项目建议书的编制、项目论证、项目评估、可行性研究', '项目建议书的编制、项目论证、项目评估、可行性研究报告的编制、提交及审批', 'A', '20', '10001', '李金印', '2020-09-06 10:21:43', '李金印', '2020-09-06 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('442', '888', '中国移动客户服务五条禁令的内容不包括？', null, '严禁泄露或交易客户信息；', '严禁发送违法信息，或未经客户同意发送商业广告信息；', '严禁未经客户确认擅自为客户开通或变更业务； ', '严禁在客户凭借有效证件的情况下，协助其查询、获取客户信息。 ', 'D', '20', '10001', '李金印', '2020-09-07 10:21:43', '李金印', '2020-09-07 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('443', '888', '高效沟通的三个原则不包括？', null, '谈论行为不谈论个性', '谦虚谨慎', '要明确沟通', '积极聆听', 'B', '20', '10001', '李金印', '2020-09-08 10:21:43', '李金印', '2020-09-08 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('444', '888', '沟通中的反馈指的是？', null, '关于他人之言行的正面或负面意见', '关于他人之言行的解释', '在别人做得不足的地方，给他一个建议', '对将来的建议或指示', 'A', '20', '10001', '李金印', '2020-09-09 10:21:43', '李金印', '2020-09-09 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('445', '888', '在沟通中既不果断地下决定，也不主动去合作的态度属于有效沟通的哪一种态度？', null, '折衷性态度', '回避性态度', '迁就性态度', '强迫性态度', 'A', '20', '10001', '李金印', '2020-09-10 10:21:43', '李金印', '2020-09-10 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('446', '888', '积极聆听是指？', null, '一边听一边与自己的观点进行比较进行评论', '设身处地聆听', '边听边想自己的事情', '选择性地聆听', 'A', '20', '10001', '李金印', '2020-09-11 10:21:43', '李金印', '2020-09-11 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('447', '888', '以下哪一个问题不利于收集信息？', null, '难道你不认为这样是不对的吗', '能谈谈你对这件事情的看法', '你可以再解释的清楚一点吗', '你能不能说的再详细一点', 'A', '20', '10001', '李金印', '2020-09-12 10:21:43', '李金印', '2020-09-12 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('448', '888', '上下级之间的沟通要建立以下何种态度？', null, '强迫性', '回避性', '折衷性', '合作性', 'D', '20', '10001', '李金印', '2020-09-13 10:21:43', '李金印', '2020-09-13 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('449', '888', '一个完整的沟通过程包括？', null, '信息发送、接收', '信息发送、反馈', '信息发送、接收、反馈', '信息接受、反馈', 'C', '20', '10001', '李金印', '2020-09-14 10:21:43', '李金印', '2020-09-14 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('450', '888', '属于实事求是型领导的性格特征的是？', null, '要求下属立即服从', '凡事喜欢参与', '想象力丰富缺乏理性思考', '是方法论的最佳实践者', 'D', '20', '10001', '李金印', '2020-09-15 10:21:43', '李金印', '2020-09-15 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('451', '888', '以下选项中更容易沟通的是？', null, '思想', '信息', '情感', '以上都不是', 'C', '20', '10001', '李金印', '2020-09-16 10:21:43', '李金印', '2020-09-16 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('452', '888', '向领导提建议的较好时间是？', null, '刚上班时', '快下班时', '上午10点左右', '午休前', 'C', '20', '10001', '李金印', '2020-09-17 10:21:43', '李金印', '2020-09-17 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('453', '888', '信任度低的人的沟通视窗的特点是？', null, '公开区信息量最大', '盲区信息量最小', '未知区信息量最小', '隐藏区信息量最大', 'D', '20', '10001', '李金印', '2020-09-18 10:21:43', '李金印', '2020-09-18 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('454', '888', '与分析型人际风格的人沟通时要？', null, '用准确的专业术语', '多用眼神交流', '少做计划少用图表', '不要太快切入主题', 'A', '20', '10001', '李金印', '2020-09-19 10:21:43', '李金印', '2020-09-19 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('455', '888', '下列关于人际沟通、工作沟通、商务沟通三者关系的说法，正确的是？', null, '人际沟通的范围一定包含工作沟通、商务沟通', '工作沟通的范围一定包含人际沟通、商务沟通', '工作沟通的范围一定包含人际沟通、商务沟通', '三者无包含关系', 'C', '20', '10001', '李金印', '2020-09-20 10:21:43', '李金印', '2020-09-20 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('456', '888', '工作沟通的核心不包括？', null, '准确', '关系', '简单', '高效', 'B', '20', '10001', '李金印', '2020-09-21 10:21:43', '李金印', '2020-09-21 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('457', '888', '良好人际沟通关系的核心不包括？', null, '关系', '态度', '感受', '语言', 'D', '20', '10001', '李金印', '2020-09-22 10:21:43', '李金印', '2020-09-22 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('458', '888', '下列选项中，不易引起沟通障碍的行为表现是？', null, '讲话模糊', '学术表现', '言简意赅', '信息不对称', 'C', '20', '10001', '李金印', '2020-09-23 10:21:43', '李金印', '2020-09-23 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('459', '888', '下列关于信息沟通的行为口号，说法错误的是？', null, '扩大开放区', '隐藏盲点区', '缩小隐藏区', '由专业人士探索未知区', 'B', '20', '10001', '李金印', '2020-09-24 10:21:43', '李金印', '2020-09-24 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('460', '888', '中国人反馈行为存在的三大问题不包括？', null, '不全面', '不主动', '不习惯', '不要求', 'A', '20', '10001', '李金印', '2020-09-25 10:21:43', '李金印', '2020-09-25 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('461', '888', '下列关于沟通的四大媒介的说法，不正确的是？', null, '有声音的语言——口头语言 ', '没有声音的语言——书面语言', '没有声音的非语言——体态语言', '有声音的语言——内语言', 'D', '20', '10001', '李金印', '2020-09-26 10:21:43', '李金印', '2020-09-26 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('462', '888', '沟通的四个步骤依次是？', null, '引起对方的注意、对方理解信息内容、对方接收信息、按照信息内容行动 ', '对方接收信息、引起对方的注意、对方理解信息内容、按照信息内容行动 ', '对方接收信息、对方理解信息内容、引起对方的注意、按照信息内容行动', '引起对方的注意、对方接收信息、对方理解信息内容、按照信息内容行动', 'D', '20', '10001', '李金印', '2020-09-27 10:21:43', '李金印', '2020-09-27 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('463', '888', '沟通的三大基本原则不包括？', null, '准确完整', '迅速高效', '词藻华丽', '简单易懂', 'C', '20', '10001', '李金印', '2020-09-28 10:21:43', '李金印', '2020-09-28 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('464', '888', '影响沟通效果的最关键因素是？', null, '沟通内容', '体态呈现', '对方的语气', '语言条理', 'B', '20', '10001', '李金印', '2020-09-29 10:21:43', '李金印', '2020-09-29 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('465', '888', '与有效沟通连在一起的是？', null, '组织的关系', '组织的智能', '组织的构成', '组织的规模 ', 'B', '20', '10001', '李金印', '2020-09-30 10:21:43', '李金印', '2020-09-30 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('466', '888', '组织管理活动中最重要的组成部分是？', null, '下级服从上级', '团结协作', '有效沟通', '人员培训', 'C', '20', '10001', '李金印', '2020-10-01 10:21:43', '李金印', '2020-10-01 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('467', '888', '沟通中语音语调所占的比例是？', null, '0.88', '0.38', '0.28', '0.18', 'C', '20', '10001', '李金印', '2020-10-02 10:21:43', '李金印', '2020-10-02 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('468', '888', '沟通过程中最后的步骤，也是至关重要的一个步骤是？', null, '接收', '发送', '反馈', '消化', 'C', '20', '10001', '李金印', '2020-10-03 10:21:43', '李金印', '2020-10-03 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('469', '888', '人格特质在很深层次上影响着？', null, '人们的价值观念', '人们的认识方式', '人们的行为方式', '人们的思想信念', 'C', '20', '10001', '李金印', '2020-10-04 10:21:43', '李金印', '2020-10-04 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('470', '888', '沟通的四个层次依次是？', null, '第一个叫说，第二个叫问，第三个叫空，第四个叫镇 ', '第一个叫问，第二个叫说，第三个叫空，第四个叫镇 ', '第一个叫说，第二个叫空，第三个叫问，第四个叫镇', '第一个叫说，第二个叫问，第三个叫镇，第四个叫空', 'A', '20', '10001', '李金印', '2020-10-05 10:21:43', '李金印', '2020-10-05 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('471', '888', '听众错位的问题主要表现在？', null, '应该与上司沟通的，却与下属进行沟通', '应该与下属沟通的，却与同事进行沟通', '应该与同事沟通的，却与上司进行沟通', '应该与上司沟通的，却与同事进行沟通', 'D', '20', '10001', '李金印', '2020-10-06 10:21:43', '李金印', '2020-10-06 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('472', '888', '沟通组织很差的一个表现是？', null, '慢', '等', '快', '强', 'B', '20', '10001', '李金印', '2020-10-07 10:21:43', '李金印', '2020-10-07 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('473', '888', '销售的核心是？', null, '沟通', '技术', '能力', '耐心', 'A', '20', '10001', '李金印', '2020-10-08 10:21:43', '李金印', '2020-10-08 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('474', '888', '活泼型的人格特质是？', null, '记仇', '稳定', '安静', '感染力', 'D', '20', '10001', '李金印', '2020-10-09 10:21:43', '李金印', '2020-10-09 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('475', '888', '以下沟通方式不正确的是？', null, '与完美型沟通，情绪要中肯，别太饱满', '与活泼型的人沟通时，情绪要饱满一点', '与完美型沟通，情绪要中肯，要饱满', '与活泼型的人沟通时，讲话的声音语调要上扬', 'C', '20', '10001', '李金印', '2020-10-10 10:21:43', '李金印', '2020-10-10 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('476', '888', '如果碰到对方心门关闭的情况下，应该用的沟通方式是？', null, '说', '问', '空', '镇', 'B', '20', '10001', '李金印', '2020-10-11 10:21:43', '李金印', '2020-10-11 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('477', '888', '沟通中的“洗脑”是指？', null, '是一个典型的将想法实现的过程', '是一个典型的将想法转移的过程', '是一个典型的将想法暴露的过程', '是一个典型的将想法倾诉的过程', 'B', '20', '10001', '李金印', '2020-10-12 10:21:43', '李金印', '2020-10-12 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('478', '888', '（）是一个人在工作中表现出来的习惯行为。', null, '态度', '技巧', '知识', '情感', 'B', '20', '10001', '李金印', '2020-10-13 10:21:43', '李金印', '2020-10-13 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('479', '888', '一个职业人士所需要的三个最基本的职业技能依次是:()、时间管理技巧、团队合作技巧。', null, '沟通技巧', '写作技巧', '演讲技巧', '表达技巧', 'A', '20', '10001', '李金印', '2020-10-14 10:21:43', '李金印', '2020-10-14 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('480', '888', '沟通结束以后一定要做的一个动作是？', null, '双方感觉十分愉快', '一方说服另一方', '形成一个共同的协议', '约定下次沟通的时间', 'C', '20', '10001', '李金印', '2020-10-15 10:21:43', '李金印', '2020-10-15 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('481', '888', '沟通的模式分为()和肢体语言沟通两种。', null, '口头语言沟通', '书面语言沟通', '图片或者图形', '语言沟通', 'D', '20', '10001', '李金印', '2020-10-16 10:21:43', '李金印', '2020-10-16 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('482', '888', '语言沟通更擅长传递的是？', null, '思想', '情感', '思路', '信息', 'D', '20', '10001', '李金印', '2020-10-17 10:21:43', '李金印', '2020-10-17 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('483', '888', '()是最好的沟通方式。', null, '电子邮件', '电话', '面谈', ' 会议简报', 'C', '20', '10001', '李金印', '2020-10-18 10:21:43', '李金印', '2020-10-18 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('484', '888', '聆听的步骤第一个步骤是？', null, '寒喧问候', '提出问题', '准备聆听', '身体前倾', 'C', '20', '10001', '李金印', '2020-10-19 10:21:43', '李金印', '2020-10-19 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('485', '888', '（）是聆听的最好的层次。', null, '选择性聆听', '设身处地地聆听', '专注地聆听', '建议性聆听', 'B', '20', '10001', '李金印', '2020-10-20 10:21:43', '李金印', '2020-10-20 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('486', '888', '反馈分为正面反馈和（）两种。', null, '负面反馈', '建设性的反馈', '全面反馈', '侧面反馈', 'B', '20', '10001', '李金印', '2020-10-21 10:21:43', '李金印', '2020-10-21 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('487', '888', '以下哪个不是沟通中的反馈？', null, '聆听', '微笑', '身体前倾', '对于将来的建议', 'D', '20', '10001', '李金印', '2020-10-22 10:21:43', '李金印', '2020-10-22 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('488', '888', '没有( )就没有形成一次完整的沟通。', null, '面谈', '反馈 ', '评价', '批评', 'B', '20', '10001', '李金印', '2020-10-23 10:21:43', '李金印', '2020-10-23 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('489', '888', '沟通一定是( )的。', null, '单向的', '多向的', '双向的', '反复的', 'C', '20', '10001', '李金印', '2020-10-24 10:21:43', '李金印', '2020-10-24 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('490', '888', '语言沟通更擅长传递的是？', null, '思想', '情感', '信息', '思路', 'C', '20', '10001', '李金印', '2020-10-25 10:21:43', '李金印', '2020-10-25 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('491', '888', '双向沟通必须包含：说的行为、( )和问的行为。', null, '复述的行为', '转达的行为', '听的行为', '答的行为', 'C', '20', '10001', '李金印', '2020-10-26 10:21:43', '李金印', '2020-10-26 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('492', '888', '( )是最好的聆听。', null, '听而不闻', '设身处地地聆听', '注地聆听', '选择性聆听', 'B', '20', '10001', '李金印', '2020-10-27 10:21:43', '李金印', '2020-10-27 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('493', '888', '聆听的目的是？', null, '理解表面信息', '理解大部分信息', '理解对方的全部信息', '理解深层次信息', 'C', '20', '10001', '李金印', '2020-10-28 10:21:43', '李金印', '2020-10-28 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('494', '888', '()是聆听的消极极行为。', null, '点头', '身体前倾', '微笑', '频繁看表', 'D', '20', '10001', '李金印', '2020-10-29 10:21:43', '李金印', '2020-10-29 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('495', '888', '在招投标活动中的所谓公平原则是指？', null, '对不同的投标者可采用不同的标准', '对本系统与本系统以外的法人或者其他组织应采用不同的标准', '对本地区与非本地法人或者其他组织应采用不同的标准', '要求招标人严格按照规定的条件和程序办事，同等地对待每一个投标竞争者', 'D', '20', '10001', '李金印', '2020-10-30 10:21:43', '李金印', '2020-10-30 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('496', '888', '下列关于招投标活动中公开原则的叙述中，叙述错误的是？', null, '首先要求进行招标活动的信息公开', '开标的程序、评标的标准和程序、中标的结果等都应公开', '开标的程序、中标的结果都应公开，但评标的标准和程序不能公开', '招标公告必须通过国家指定的报刊、信息网络或者其他公共媒介发布', 'C', '20', '10001', '李金印', '2020-10-31 10:21:43', '李金印', '2020-10-31 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('497', '888', '《建设工程勘察设计管理条例)规定，可以直接发包的工程建设勘察、设计项目有许多种，但是不能直接发包的是？', null, '采用特定的专利或专有技术的', '建筑艺术造型有特定要求的', '需要进行危险作业的', '国务院规定的其他工程建设的勘察设计', 'C', '20', '10001', '李金印', '2020-11-01 10:21:43', '李金印', '2020-11-01 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('498', '888', '抢险救灾紧急工程应采用(   )方式选择实施单位。', null, '公开招标', '邀请招标', '议标', '直接委托', 'D', '20', '10001', '李金印', '2020-11-02 10:21:43', '李金印', '2020-11-02 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('499', '888', '按照招投标公开程度的不同，工程施工招标分为？', null, '指定招标和公开招标', '全部招标和部分招标', '公开招标、邀请招标和议标', '公开招标和邀请招标', 'D', '20', '10001', '李金印', '2020-11-03 10:21:43', '李金印', '2020-11-03 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('500', '888', '在依法必须进行招标的工程范围内，对于重要设备、材料等货物的采购，其单项合同估算价在(  )万元人民币以上的，必须进行招标。', null, '50', '100', '150', '200', 'B', '20', '10001', '李金印', '2020-11-04 10:21:43', '李金印', '2020-11-04 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('501', '888', '下列建设项目中，可以不招标的是？', null, '使用财政预算资金的体育项目中合同估算价为80万元的材料采购合同', '上市公司投资的商品房项目中合同估算价为500万元的材料采购合同', '个人捐资的教育项目中合同估算价为80万元的监理合同', '外商投资的供水项目中合同估算价为1000万元的施工合同', 'A', '20', '10001', '李金印', '2020-11-05 10:21:43', '李金印', '2020-11-05 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('502', '888', '公开招标和邀请招标在招标程序上的差异为？', null, '是否进行资格预审', '是否组织现场考察', '是否解答投标单位的质疑', '是否公开开标', 'A', '20', '10001', '李金印', '2020-11-06 10:21:43', '李金印', '2020-11-06 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('503', '888', '开标应在招标文件确定的(  )公开进行。', null, '提交投标文件截止时间之后1日内', '提交投标文件截止时间之后2日内', '提交投标文件截止时间的同一时间', '提交投标文件截止时间之后3日内', 'C', '20', '10001', '李金印', '2020-11-07 10:21:43', '李金印', '2020-11-07 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('504', '888', '开标地点应当为？', null, '招投标双方确认的地点', '建设行政主管部门指定的场所', '招标文件中预先确定的地点', '投标人共同认可的地点', 'C', '20', '10001', '李金印', '2020-11-08 10:21:43', '李金印', '2020-11-08 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('505', '888', '下列关于开标程序的说法中不正确的有？', null, '开标应当在招标文件确定的提交投标文件截止时间的同一时间公开进行', '开标由政府主管部门主持', '开标时由投标人或者其推选的代表检查投标文件的密封情况，也可由招标人委托的公正机构检查并公正', '开标过程应当记录，并存档备查', 'B', '20', '10001', '李金印', '2020-11-09 10:21:43', '李金印', '2020-11-09 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('506', '888', '投标人应当具备(    )的能力。', null, '编制标底', '组织评标', '承担招标项目', '融资', 'C', '20', '10001', '李金印', '2020-11-10 10:21:43', '李金印', '2020-11-10 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('507', '888', '某投标人在提交投标文件时，挟带了一封修改投标报价的函件，但开标时该函件没有当众拆封宣读，只宣读了修改前的报价单上填报的投标价格，该投标人当时没有异议。这份修改投标报价的函件应视为？', null, '有效', '无效', '经澄清说明后有效', '在招标人同意接受的情况下有效', 'B', '20', '10001', '李金印', '2020-11-11 10:21:43', '李金印', '2020-11-11 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('508', '888', '同一专业的两个以上不同资质等级的单位实行联合承包的，应当按照(   )单位的业务许可范围承揽工程。', null, '资质等级较高的', '承担主要任务的', '资质等级较低的', '联合体牵头', 'C', '20', '10001', '李金印', '2020-11-12 10:21:43', '李金印', '2020-11-12 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('509', '888', '两个以上法人或者其他组织组成联合体投标时，国家有关规定或者招标文件对投标人资格条件有规定的，联合体的资质应符合什么要求？', null, '各方的加总条件符合规定的资质条件即可', '有一方具备规定的相应资质条件即可', '各方均应具备规定的资质条件', '主要一方具备相应的资质条件即可', 'C', '20', '10001', '李金印', '2020-11-13 10:21:43', '李金印', '2020-11-13 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('510', '888', '关于联合体投标的说法，不正确的有？', null, '多个施工单位可以组成一个联合体，以一个投标人的身份共同投标', '中标的联合体各方应当就中标项目向招标人承担连带责任', '联合体各方的共同投标协议属于合同关系', '由不同专业的单位组成的联合体，按照资质等级较低的单位确定业务许可范围', 'D', '20', '10001', '李金印', '2020-11-14 10:21:43', '李金印', '2020-11-14 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('511', '888', '以下关于联合体投标的说法中，不正确的有？', null, '联合体各方均应当具备承担招标项目的相应能力', '由同一专业组成的联合体，按照资质等级较高的单位确定资质等级', '联合体各方均应该具备招标文件规定的投标人资格条件', '联合体各方应当签订共同投标协议', 'B', '20', '10001', '李金印', '2020-11-15 10:21:43', '李金印', '2020-11-15 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('512', '888', '下列关于联合体就中标项目对外向招标人承担连带责任的叙述中，正确的是？', null, '联合体在接到中标通知书未与招标人签订合同前，除不可抗力外，联合体放弃中标项目的，不承担任何责任', '联合体在接到中标通知书未与招标人签订合同前，除不可抗力外，联合体放弃中标项目的，其已提交的投标保证金不予退还，给招标人造成损失超过投标保证金数额的，还应当对超过部分承担连带赔偿责任', '中标的联合体除不可抗力外，不履行与招标人签订合同的，履约保证金应予退还', '中标的联合体除不可抗力外，不履行与招标人签订合同，给招标人造成的，损失超过履约保证金数额的，对超过部分可以不承担连带赔偿责任', 'B', '20', '10001', '李金印', '2020-11-16 10:21:43', '李金印', '2020-11-16 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('513', '888', '甲、乙、丙、丁四家施工单位签订共同投标协议组成联合体，以一个投标人的身份投标。关于此联合体说法正确的是？', null, '联合体内部的共同投标协议与招标人无关，不必交予招标人', '联合体各方就中标项目向招标人承担连带责任', '联合体任何成员均有权以对债务分担比例有约定为由拒绝履行全部债务', '联合体成员之一清偿全部债务后，联合体不能免除履行义务', 'B', '20', '10001', '李金印', '2020-11-17 10:21:43', '李金印', '2020-11-17 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('514', '888', '某工程施工联合体参加资格预审并获通过后，投标文件中其组成成员发生变化，虽未经招标人同意，但新联合体仍然符合资格预审条件要求，则招标人应如何处理？', null, '征得其他所有投标人同意后可以认定投标文件有效', '可以认定投标文件有效', '征得评标委员会同意后可以认定投标文件有效', '应当认定投标文件无效', 'B', '20', '10001', '李金印', '2020-11-18 10:21:43', '李金印', '2020-11-18 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('515', '888', '某工程项目的招标投标活动中，发现投标人甲以低于成本的报价竞标，这里的成本是指？', null, '整个建筑行业的平均成本', '所有投标人的平均成本', '投标人甲的成本', '项目所在地的平均成本', 'C', '20', '10001', '李金印', '2020-11-19 10:21:43', '李金印', '2020-11-19 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('516', '888', '提交投标文件的投标人少于(  )个的，招标人应当依法重新招标。', null, '2', '3', '4', '5', 'B', '20', '10001', '李金印', '2020-11-20 10:21:43', '李金印', '2020-11-20 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('517', '888', '根据我国《招标投标法》规定，招标人需要对发出的招标文件进行澄清或修改时，应当在招标文件要求提交投标文件的截止时间至少( )天前，以书面形式通知所有招标文件收受人。', null, '10', '15', '20', '30', 'B', '20', '10001', '李金印', '2020-11-21 10:21:43', '李金印', '2020-11-21 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('518', '888', '某工程建设项目施工招标中，甲施工单位投标报价为2000万元，则其投标保证金最高应为()万元。', null, '10', '20', '4', '40', 'D', '20', '10001', '李金印', '2020-11-22 10:21:43', '李金印', '2020-11-22 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('519', '888', '施工项目进行公开招标，投标保证金有效期应当超过( )30天。', null, '招标文件发出日', '投标文件截止日', '中标日期', '中标日期', 'D', '20', '10001', '李金印', '2020-11-23 10:21:43', '李金印', '2020-11-23 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('520', '888', '根据《工程建设项目施工招标投标办法》，关于投标保证金的说法，正确的是？', null, '中标人拒绝签订施工合同时，招标人有权没收其投标保证金', '投标保证金不得采用银行保函方式', '招标人发出中标通知书，投标保证金的有效期自动终止', '投标保证金最高不得超过50万元', 'A', '20', '10001', '李金印', '2020-11-24 10:21:43', '李金印', '2020-11-24 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('521', '888', '根据《招标投标法》的规定，依法必须进行招标的项目，自招标文件开始发出之日起至投标人提交投标文件截止之日止，最短不得少于( )日。', null, '15', '20', '25', '30', 'B', '20', '10001', '李金印', '2020-11-25 10:21:43', '李金印', '2020-11-25 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('522', '888', '依据《招标投标法》某建设单位就一个办公楼群项目的项目招标，则该项目的评标工作由( )来完成。', null, '该建设单位的领导', '该建设单位的上级主管部门', '当地的政府部门', '该建设单位依法组建的评标委员会', 'D', '20', '10001', '李金印', '2020-11-26 10:21:43', '李金印', '2020-11-26 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('523', '888', '评标委员会为()人以上的单数。', null, '5', '7', '9', '3', 'A', '20', '10001', '李金印', '2020-11-27 10:21:43', '李金印', '2020-11-27 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('524', '888', '评标委员会中技术、经济等方面的专家不得少于成员总数的？', null, '0.33333333333', '0.6', '0.66666666667', '0.4', 'C', '20', '10001', '李金印', '2020-11-28 10:21:43', '李金印', '2020-11-28 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('525', '888', '某建设工程发包人经过招标确定了中标人，双方依法签订了施工合同，则该施工合同成立的时间为( )之日。', null, '评标委员会提交评标报告', '合同备案', '中标通知书发出', '发包人确定中标人', 'C', '20', '10001', '李金印', '2020-11-29 10:21:43', '李金印', '2020-11-29 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('526', '888', '招标人在某次招标投标活动中确定了某施工单位为中标人，则下列表述中正确的是？', null, '不必将中标结果通知未中标人，但须退还未中标人的投标保证金', '同时将中标结果通知未中标人，但无须退还未中标人的投标保证金', '不必将中标结果通知未中标人，且无须退还未中标人的投标保证金', '同时将中标结果通知未中标人，且须退还未中标人的投标保证金', 'D', '20', '10001', '李金印', '2020-11-30 10:21:43', '李金印', '2020-11-30 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('527', '888', '某招标人2012年4月1日向中标人发出了中标通知书。根据相关法律规定，招标人和投标人应在( )前按照招标文件和中标人的投标文件订立书面合同。', null, '41014', '41030', '41044', '41061', 'B', '20', '10001', '李金印', '2020-12-01 10:21:43', '李金印', '2020-12-01 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('528', '888', '根据招标投标相关法律法规，下列招标投标行为中，不构成招标人与投标人串通投标的是？', null, '招标人从几名中标候选人中确定中标人', '招标人在开标前将投标情况告知其他投标人', '招标人预先内定中标人', '招标人与投标人事先商定压低标价，中标后再给中标人让利', 'A', '20', '10001', '李金印', '2020-12-02 10:21:43', '李金印', '2020-12-02 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('529', '888', '根据《关于禁止串通招标投标行为的暂行规定》的规定，下列不属于投标人之间串通投标的行为的是？', null, '投标者之间内部竞价，内定中标人，然后再参加投标', '投标者与招标者商定，在招投标时压低或抬高标价，中标后再给投标者或者招标者额外补偿', '投标者相互约定，在招标项目中一致抬高或者压低投标价', '投标者相互约定，在招标项目中轮流以高价位或低价位中标', 'B', '20', '10001', '李金印', '2020-12-03 10:21:43', '李金印', '2020-12-03 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('530', '888', '关于招标代理机构的说法，不正确的有？', null, '工程招标代理机构不得与招标工程的投标人有利益关系', '工程招标代理机构可以参与同一招标工程的投标', '招标代理机构是社会中介组织', '未经招标人同意，招标代理机构不得向他人转让代理业务', 'B', '20', '10001', '李金印', '2020-12-04 10:21:43', '李金印', '2020-12-04 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('531', '888', '下列项目中，可以不进行招标的是？', null, '某使用专有技术生产的通信设备采购项目', '某具有房屋建筑施工总承包特级资质的开发商拟建的商品住宅小区项目', '施工收尾阶段发包人需要向原承包人增加的相邻标段遗留的200万元工程项目', '已通过招标方式选定的城市供水工程项目的投资人不具备相应建设能力的项目', 'B', '20', '10001', '李金印', '2020-12-05 10:21:43', '李金印', '2020-12-05 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('532', '888', '《招标投标法》对必须招标项目的范围从（ ）方面进行了规范。', null, '项目特点和实际需要', '项目性质和资金来源', '招标项目的可行性', '项目所属行业领域', 'B', '20', '10001', '李金印', '2020-12-06 10:21:43', '李金印', '2020-12-06 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('533', '888', '根据招标投标相关法律和司法解释，下列施工合同中，不属于无效合同的是？', null, '未经发包人同意，承包人将部分非主体工程分包给具有相应资质的施工单位的合同', '建设单位直接与专业施工单位签订的合同', '承包人将其承包的工程全部分包给其他有资质的承包人的合同', '投标人串通投标中标后与招标人签订的合同', 'B', '20', '10001', '李金印', '2020-12-07 10:21:43', '李金印', '2020-12-07 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('534', '888', '对于依法必须招标的项目，下列行为不属于限制和排斥潜在投标人的是？', null, '在本集团公司和中国招标采购网同时发布了招标公告', '招标公告要求投标人必须具备项目所在地的相关业绩', '招标公告要求只有缴纳投标保证金才能购买招标文件', '招标公告要求投标人必须具备某协会颁布的资格条件', 'A', '20', '10001', '李金印', '2020-12-08 10:21:43', '李金印', '2020-12-08 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('535', '888', '对于依法必须进行招标的项目，以暂估价形式包括在总承包范围内的工程、货物、服务，其金额达到国家规定的规模标准时，应当依法进行招标。该规定主要体现了（）思想。', null, '坚持公平竞争的', '坚持公开原则的', '保护招标人合法利益的', '保护中标人合法利益的', 'A', '20', '10001', '李金印', '2020-12-09 10:21:43', '李金印', '2020-12-09 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('536', '888', '招标项目招标文件中公布了评标办法，开标时公布评标细则，下列对该行为的评价中正确的是？', null, '容易导致招标人与投标人之间的串标', '符合招标投标的公开原则', '适合于技术复杂项目的招标', '可以避免投标人对应评标细则编制投标文件，应当推广', 'A', '20', '10001', '李金印', '2020-12-10 10:21:43', '李金印', '2020-12-10 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('537', '888', '某省重点建设项目进行施工招标，招标师小张负责组织开标、评标活动。下列做法中正确的是？', null, '允许省电视台对开标、评标现场进行现场报道', '向评标委员会介绍设置评审因素及其权重的主要原因', '当场记录投标人在开标现场提出的异议，并提交评标委员会答复', '邀请评标专家对开标现场进行监督', 'B', '20', '10001', '李金印', '2020-12-11 10:21:43', '李金印', '2020-12-11 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('538', '888', '省重点建设项目进行施工招标，招标师小张负责组织开标、评标活动。下列做法中正确的是？', null, '允许省电视台对开标、评标现场进行现场报道', '向评标委员会介绍设置评审因素及其权重的主要原因', '当场记录投标人在开标现场提出的异议，并提交评标委员会答复', '邀请评标专家对开标现场进行监督', 'B', '20', '10001', '李金印', '2020-12-12 10:21:43', '李金印', '2020-12-12 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('539', '888', '依法必须进行招标的项目的招标公告，应当在（ ）指定的媒介发布。', null, '国家发改委', '省发改委', '省住建部门', '各设区市住建局', 'A', '20', '10001', '李金印', '2020-12-13 10:21:43', '李金印', '2020-12-13 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('540', '888', '根据《招标投标法实施条例》，施工项目招标中，下列投标有效的是？', null, '甲乙两公司的法定代表人为同一个人，参加某同一标段投标', '丙公司是为该施工项目前期准备提供过咨询服务的设计单位', '公司持有戊公司60%的股份，两公司参加同一标段招标', '己公司为庚公司的全资子公司，两公司参加同一项目不同标段的投标', 'D', '20', '10001', '李金印', '2020-12-14 10:21:43', '李金印', '2020-12-14 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('541', '888', '根据条例的规定，采用资格预审方式的（ ），招标人应当组建资格审查委员会审查资格预审申请文件。', null, '自愿招标项目', '民营投资强制招标项目', '国资强制招标项目', '所有项目', 'C', '20', '10001', '李金印', '2020-12-15 10:21:43', '李金印', '2020-12-15 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('542', '888', '关于招标项目踏勘现场，下列说法正确的是？', null, '组织踏勘现场仅适用于工程建设项目施工招标', '组织现场踏勘时，可以公开点名签到，以确定潜在投标人是否全部到齐', '招标人可以组织单个或部分潜在投标人踏勘现场', '招标人不得分批次组织潜在投标人踏勘现场', 'D', '20', '10001', '李金印', '2020-12-16 10:21:43', '李金印', '2020-12-16 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('543', '888', '下列项目中可以不进行招标的是？', null, '政府投资工程，总投资额为3500万人民币，费用约为30万元人民币的工程监理项目', '民营企业投资兴建一幼儿园，总投资为500万元人民币', '某中央国家机关采购一批集中采购目录以外的，总金额约为150万元人民币的货物', '进口机电设备生产配套用的零部件，采购金额约为80万人民币', 'D', '20', '10001', '李金印', '2020-12-17 10:21:43', '李金印', '2020-12-17 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('544', '888', '（  ） 是一种详细描述项目目标、项目范围及其实施计划的文件，有些项目教科书中也把它称作项目建议书。', null, '项目目标文件', '项目目标', '项目进度计划', '项目计划', 'A', '20', '10001', '李金印', '2020-12-18 10:21:43', '李金印', '2020-12-18 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('545', '888', 'WBS是指？', null, '工作分解结构图', '线性责任图', '项目行动计划表', '网络计划', 'A', '20', '10001', '李金印', '2020-12-19 10:21:43', '李金印', '2020-12-19 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('546', '888', '（   ）是进度计划最常用的一种工具，最早由Herry L. Gantt于1917年提出。', null, '关键日期法', '甘特图', '关键线路法', '计划评审技术', 'B', '20', '10001', '李金印', '2020-12-20 10:21:43', '李金印', '2020-12-20 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('547', '888', '一位项目成员在执行任务时，对现存的做法有一些改进的意见，当他与你沟通时，作为项目经理，你应该如何处理？', null, '汇报部门经理', '认真倾听该组员的意见，并思考这样改进是否恰当', '从其他组员那里获得反馈', '为该组员重新分配更适合的任务', 'B', '20', '10001', '李金印', '2020-12-21 10:21:43', '李金印', '2020-12-21 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('548', '888', '在项目规划的前期，你发现你的一位优秀的项目工程师向你和客户提交了一份项目管理说明书，这份说明书对他的项目管理培训经历进行了一定程度的夸大。作为项目经理，你应该怎么做？', null, '立刻解雇这位工程师', '让该工程师注意这个问题，然后将正确的信息更换上去，交给客户', '不做反应，因为他确实表现优秀，而且是为了取得客户的信任', '要求这位工程师完成与说明书中相对应的实际培训，并推迟通知客户', 'B', '20', '10001', '李金印', '2020-12-22 10:21:43', '李金印', '2020-12-22 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('549', '888', '你所管理的是一个跨国团队，其中包括来自4个不同国家的成员。在一次团队会议之后，你发现来自某个国家的3个成员在一起议论，嘲笑其他某个国家的成员所说的英语很不标准，简直让人听不懂。处理这种情况的最好办法是？', null, '在下次会议上公开批评这3个成员', '处罚这三个成员，并向其他团队成员通报情况', '请被嘲笑的成员在业余时间补习英语，尽量说得标准一些', '私下批评这3个成员，并为项目团队提供适当的沟通培训', 'B', '20', '10001', '李金印', '2020-12-23 10:21:43', '李金印', '2020-12-23 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('550', '888', '在项目执行进入到中期时，你被指派为项目经理，你审查过项目后，发现项目可能要费的时间将是前任项目经理的估算的两倍，但是你的上司已获知项目将会按时完成，当前任经理是你的好朋友时，你会采取什么最佳的行动？', null, '向你的上司汇报你的评估', '召开团队会议寻找可行方案，以满足项目进度要求', '会见前任项目经理，扭转项目进度', '按前任经理的计划执行项目，当项目不能完成里程碑时及时向上司汇报', 'A', '20', '10001', '李金印', '2020-12-24 10:21:43', '李金印', '2020-12-24 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('551', '888', '郑小姐是A公司的项目经理，她的工作绩效一直很优良。朋友给她提供了一个下班后和周末兼职为一个小公司B管理项目的机会。B公司不是A公司的竞争对手，A公司不知道她在为另一家公司工作。为安全起见。她应该怎么做？', null, '只给她的直接上司讲，让他告诉她该怎么做', '和她的管理层谈话，保证没有任何违背利益政策的冲突', '什么也不用做，因为她利用周末时间，而且A公司和B公司不是竞争对手', '让B公司保证不把她兼职的事情告诉A公司', 'B', '20', '10001', '李金印', '2020-12-25 10:21:43', '李金印', '2020-12-25 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('552', '888', '你负责建设一个垃圾处理厂，常规测试显示空气中有污染物，但造成人体得病的可能性甚小。作为项目经理，正确的做法是？', null, '告知公众，进行细致的化验来确定问题的严重程度', '教育公众有关垃圾处理的先进技术、引进的作用和安全记录', '告诉公众没有问题，除了年弱体病者需要戴口罩出门', '不采取任何行动，因为除了对年弱体病者有危害之外，致病可能很低', 'A', '20', '10001', '李金印', '2020-12-26 10:21:43', '李金印', '2020-12-26 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('553', '888', '一个项目小组成员投诉说客户那里的工作条件不安全，项目经理处理这个投诉时，采用的最佳方法是？', null, '既然只有一个员工投诉，置之不理', '让客户方安全经理查看现场，把潜在的危险通知公司安全部门，然后跟踪投诉的员工', '召开员工会议，讨论这个问题，目的是让他们感觉更舒服', '把问题提给客户让他们自己解决', 'B', '20', '10001', '李金印', '2020-12-27 10:21:43', '李金印', '2020-12-27 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('554', '888', '项目管理是指在一定的约束条件下，为达到目标对项目所实施的（   ）过程。', null, '计划和控制', '约束和控制', '计划和组织', '计划、组织、指挥、协调和控制', 'D', '20', '10001', '李金印', '2020-12-28 10:21:43', '李金印', '2020-12-28 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('555', '888', '建设项目管理是指在（   ）内，用系统工程的理论、观点和方法进行有效的管理活动。', null, '施工单位', '设计单位', '项目运行阶段', '建设项目的生命周期', 'D', '20', '10001', '李金印', '2020-12-29 10:21:43', '李金印', '2020-12-29 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('556', '888', '如果项目管理组织中每个成员都接受项目经理和职能部门的双重领导，这种组织形式称为？', null, '直线制组织', '寄生式组织', '矩阵式组织', '事业部制组织', 'C', '20', '10001', '李金印', '2020-12-30 10:21:43', '李金印', '2020-12-30 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('557', '888', '项目管理重要以项目经理为核心，其项目经理是指？', null, '建设单位的法定代表', '建设单位的法定代表人在项目上的全权委托代理人', '由委托代理人组建的项目管理班子', '建设单位组建的项目管理班子', 'B', '20', '10001', '李金印', '2020-12-31 10:21:43', '李金印', '2020-12-31 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('558', '888', '当政府对公共基础设施建设项目的投资不足时，该项目的建设方式可采用？', null, 'BOT方式', '总承包方式', '总承包管理方式', '其他方式', 'A', '20', '10001', '李金印', '2021-01-01 10:21:43', '李金印', '2021-01-01 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('559', '888', '用来分析影响产品质量因素的有效方法是？', null, '直方图', '控制图', '网络图', '因果分析图', 'D', '20', '10001', '李金印', '2021-01-02 10:21:43', '李金印', '2021-01-02 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('560', '888', '可行性研究属于我国建设项目程序中的（   ）阶段的工作。', null, '构思决策', '设计', '施工实施', '运行维护', 'A', '20', '10001', '李金印', '2021-01-03 10:21:43', '李金印', '2021-01-03 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('561', '888', '编制项目总概算属于（   ）阶段的工作。', null, '建设前期准备', '编制设计文件', '编制建设计划', '建设实施', 'B', '20', '10001', '李金印', '2021-01-04 10:21:43', '李金印', '2021-01-04 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('562', '888', '工程建设监理是指监理单位受（   ）委托，对工程建设实施的监督管理。', null, '项目法人或业主', '设计单位', '施工单', '政府部门', 'A', '20', '10001', '李金印', '2021-01-05 10:21:43', '李金印', '2021-01-05 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('563', '888', '建设单位将整个工程项目的全部工作委托给工程项目管理公司去做，这是建设项目管理方式中的什么方式？', null, '项目总承包', '项目总承包管理', '平行发包', '设计建造总发包', 'B', '20', '10001', '李金印', '2021-01-06 10:21:43', '李金印', '2021-01-06 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('564', '888', '对整个工程项目总体投资的影响程度最重要的是？', null, '前期策划', '设计阶段', '施工实施阶段', '运行维护阶段', 'A', '20', '10001', '李金印', '2021-01-07 10:21:43', '李金印', '2021-01-07 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('565', '888', '在施工图设计阶段，编制施工图预算时采用的是？', null, '预算定额', '概算定额', '概算指标', '企业定额', 'A', '20', '10001', '李金印', '2021-01-08 10:21:43', '李金印', '2021-01-08 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('566', '888', '企业定额水平与国家、行业或地区定额的关系是（  ）国家、行业、或地区定额，才能适应投标报价，增强市场竞争能力的要求。', null, '低于', '等于', '高于', '无关于', 'C', '20', '10001', '李金印', '2021-01-09 10:21:43', '李金印', '2021-01-09 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('567', '888', '由地震、洪水等原因造成了工程质量问题，应由（   ）承担经济责任。', null, '建设单位', '设计单位', '施工单位', '监理单', 'A', '20', '10001', '李金印', '2021-01-10 10:21:43', '李金印', '2021-01-10 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('568', '888', '实行总分包的工程，分包单位应按照分包合同约定，对其分包工程的质量向总包单位负责，总包单位对分包工程的质量承担什么责任？', null, '连带责任', '违约责任', '违法责任', '赔偿责任', 'A', '20', '10001', '李金印', '2021-01-11 10:21:43', '李金印', '2021-01-11 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('569', '888', '工程项目建成后，不可能像某些工业产品那样，可以拆卸或解体来检查内在的质量，所以工程质量应重视（   ）的管理。', null, '施工前期', '施工工艺和施工方法', '施工准备和施工过程', '投入品质量', 'C', '20', '10001', '李金印', '2021-01-12 10:21:43', '李金印', '2021-01-12 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('570', '888', '施工图设计过程的最后一道工序是（   ），这是保证设计成品质量的又一重要质量活动。', null, '设计评审', '会签', '设计验证', '校审', 'B', '20', '10001', '李金印', '2021-01-13 10:21:43', '李金印', '2021-01-13 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('571', '888', '在施工前准备阶段，为了使施工单位了解设计意图，（ ）要组织由设计单位和施工单位参加的设计交底和设计会审会议。', null, '风险管理经理', '项目经理', '设计经理', '监理工程师', 'D', '20', '10001', '李金印', '2021-01-14 10:21:43', '李金印', '2021-01-14 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('572', '888', '工程项目风险管理发生在什么阶段？', null, '项目决策阶段', '项目施工阶段', '项目竣工阶段', '整个项目寿命期', 'D', '20', '10001', '李金印', '2021-01-15 10:21:43', '李金印', '2021-01-15 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('573', '888', '项目管理职能主要是由（     ）执行的，他是项目管理的灵魂。', null, '项目经理', '公司总经理', '财务管理人员', '公司高层', 'A', '20', '10001', '李金印', '2021-01-16 10:21:43', '李金印', '2021-01-16 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('574', '888', '（   ） 是一种详细描述项目目标、项目范围及其实施计划的文件，有些项目教科书中也把它称作项目建议书。', null, '项目目标文件', '项目目标', '项目进度计', '项目计划', 'A', '20', '10001', '李金印', '2021-01-17 10:21:43', '李金印', '2021-01-17 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('575', '888', '施工图设计过程的最后一道工序是（   ），这是保证设计成品质量的又一重要质量活动。', null, '设计评审', '会签', '设计验证', '校审', 'B', '20', '10001', '李金印', '2021-01-18 10:21:43', '李金印', '2021-01-18 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('576', '888', '项目管理职能主要是由（   ）执行的，他是项目管理的灵魂。', null, '项目经理', '公司总经理', '财务管理人员', '公司高层', 'A', '20', '10001', '李金印', '2021-01-19 10:21:43', '李金印', '2021-01-19 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('577', '888', '（  ）是一种详细描述项目目标、项目范围及其实施计划的文件，有些项目教科书中也把它称作项目建议书。', null, '项目目标文件', '项目目标', '项目进度计划', '项目计', 'A', '20', '10001', '李金印', '2021-01-20 10:21:43', '李金印', '2021-01-20 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('578', '888', '在项目执行进入到中期时，你被指派为项目经理，你审查过项目后，发现项目可能要费的时间将是前任项目经理的估算的两倍，但是你的上司已获知项目将会按时完成，当前任经理是你的好朋友时，你会采取什么最佳的行动？', null, '向你的上司汇报你的评估', '召开团队会议寻找可行方案，以满足项目进度要求', '会见前任项目经理，扭转项目进度', '按前任经理的计划执行项目，当项目不能完成里程碑时及时向上司汇报', 'A', '20', '10001', '李金印', '2021-01-21 10:21:43', '李金印', '2021-01-21 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('579', '888', '鱼骨图可以帮助？', null, '了解过去的结果', '组织思维、激发思考', '确定过程是否失去控制', '对问题进行优先排序', 'B', '20', '10001', '李金印', '2021-01-22 10:21:43', '李金印', '2021-01-22 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('580', '888', '要求谈判技巧最多的三种项目情况是？', null, '和职能经理合作保证资源支持项目的可获取性；向项目团队成员提供绩效评估；制定WBS', '制定WBS；确定主进度计划；管理项目变更', '使用分包商；编制项目范围说明；项目开始后管理变更', '确保高层管理提供项目支持；同职能经理合作；建设项目团队', 'C', '20', '10001', '李金印', '2021-01-23 10:21:43', '李金印', '2021-01-23 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('581', '888', '某项目在建设期第一年初由银行贷款100万元，年利率为12%，每年复利一次，则第三年末的终值为（）万元。', null, '140.49', '150.49', '160.49', '170.49', 'A', '20', '10001', '李金印', '2021-01-24 10:21:43', '李金印', '2021-01-24 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('582', '888', '某软件开发企业在软件交付给用户使用后，定期指派工程师小张去用户单位进行维护，以保持本企业软件产品能在变化后或变化中的环境中可以继续使用。小张以上的维护过程属于（ ）', null, '适应性维护', '更正性维护', '预防性维护', '完善性维护', 'A', '20', '10001', '李金印', '2021-01-25 10:21:43', '李金印', '2021-01-25 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('583', '888', '将路由器、交换机、网关、集线器、终端接入设备、有关系统软件等实施集成服务称为？', null, '网络集成实施服务', '主机集成实施服', '智能建筑系统集成服务', '应用系统集成服务', 'A', '20', '10001', '李金印', '2021-01-26 10:21:43', '李金印', '2021-01-26 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('584', '888', '项目经理在需求调研的过程中，应尽可能的多了解客户的需求进行分析，并对需求进行分析，其做需求分析的目的一般不包括？ ', null, '检测和解决需求之间的冲突', '定义潜在的风险', '发现软件的边界，以及软件与其环境如何交互', '翻描述需求分析，以导出软件需求', 'B', '20', '10001', '李金印', '2021-01-27 10:21:43', '李金印', '2021-01-27 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('585', '888', '公司刚承接了一个系统集成及运行维护的项目，在做集成验收活动的资源估算时，需要综合考虑完成活动的工程师的经验及技能，各种大小或类型的机器，各种测试工具（手工操作或自动化工具），以及所需资源的自制或购买决策等，此种资源估算法为？', null, '自上而下估算', '多方案分析', '专家判断', '项目管理软', 'B', '20', '10001', '李金印', '2021-01-28 10:21:43', '李金印', '2021-01-28 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('586', '888', '某单位外购如下货物，按照增值税的有关规定，可以作为进项税额从销项税额中抵扣的是？', null, '外购的低值易耗品', '外购的职工食堂餐具', '外购的货物用于基建工程', '外购的货物分给职工', 'C', '20', '10001', '李金印', '2021-01-29 10:21:43', '李金印', '2021-01-29 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('587', '888', '项目预算在下列那个阶段投入最大？', null, '项目计划制定阶段', '项目计划执行阶段', '总体变更控制阶段', '项目启动阶段', 'B', '20', '10001', '李金印', '2021-01-30 10:21:43', '李金印', '2021-01-30 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('588', '888', '项目计划应下发给哪些人员？', null, '项目机构中的所有项目干系人', '所有项目干系人', '项目团队成员和项目赞助人', '沟通管理计划中所确定的人员', 'D', '20', '10001', '李金印', '2021-01-31 10:21:43', '李金印', '2021-01-31 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('589', '888', '领导和管理对项目来说都非常重要。关于管理的一种定义认为管理主要是实现项目干系人的主要目标，而领导则是？', null, '确定管理方向，组织和激励他人努力工作', '通过他人的工作实现工作目标', '运用领导权力鼓励他人提高工作效率', '运用所有适当的权利作为激励手段', 'A', '20', '10001', '李金印', '2021-02-01 10:21:43', '李金印', '2021-02-01 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('590', '888', '问题解决是项目中的一项重要工作，它由什么组成？', null, '对组织实现影响力来达到目的', '确定问题并作出决策', '同他人协商取得一致意见', '产生项目干系人所期望的主要结果', 'B', '20', '10001', '李金印', '2021-02-02 10:21:43', '李金印', '2021-02-02 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('591', '888', '对项目来说“临时”的意思是？', null, '项目的工期短', '每个项目都有确定的开始和结束点', ' 项目未来完成时间未定', ' 项目随时可以取消', 'B', '20', '10001', '李金印', '2021-02-03 10:21:43', '李金印', '2021-02-03 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('592', '888', '下列各项中属于项目计划约束条件的是？', null, '过去业绩的纪录', '类似项目的财务报', '事先确定的预算', '以前项目的经验', 'C', '20', '10001', '李金印', '2021-02-04 10:21:43', '李金印', '2021-02-04 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('593', '888', '目标管理不涉及下列哪些内容？', null, '确定明确和现实的目标', '定期评估项目目标是否完成', '促进合作、团队建设和对项目的投入', '为项目成员建立具体的职业途径', 'D', '20', '10001', '李金印', '2021-02-05 10:21:43', '李金印', '2021-02-05 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('594', '888', '注明项目目标、工作内容、交付时间以及最终产品的文件是下列哪一项？', null, '项目章程', '产品说明书', '范围说明书', 'WBS', 'C', '20', '10001', '李金印', '2021-02-06 10:21:43', '李金印', '2021-02-06 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('595', '888', '工作结果是？', null, '为完成项目所进行的各项工作活动的结果', '满足项目成功的标准', '客户正式验收了项目', '完成合同的正式验收', 'A', '20', '10001', '李金印', '2021-02-07 10:21:43', '李金印', '2021-02-07 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('596', '888', '一个公司在确定项目选择模式时，最重要的标准是？', null, '功能', '实用', '使用简便', '费用', 'B', '20', '10001', '李金印', '2021-02-08 10:21:43', '李金印', '2021-02-08 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('597', '888', '项目经理所在的公司在高科技领域从事经营工作，公司需要对一些功能特性进行集成与共享。项目经理正在考虑一个新项目合适的组织结构，其可能的选择是：', null, '矩阵', '强矩阵', '功能化', '项目化', 'A', '20', '10001', '李金印', '2021-02-09 10:21:43', '李金印', '2021-02-09 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('598', '888', '产生变更需要的原因可能是？', null, '对项目章程的审查', '对实施公司战略计划的审查', '项目团队解决问题能力的提高', '项目范围界定中的错误与遗漏', 'D', '20', '10001', '李金印', '2021-02-10 10:21:43', '李金印', '2021-02-10 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('599', '888', '在一个项目阶段结束时，审查可交付成果与项目完成情况的目的在于？', null, '根据项目基线确定完成项目所需的资源数量', '根据已完成的工作量调整时间安排与成本基线', '接受客户对所交付项目的验收', '决定项目是否应进入下一阶段', 'D', '20', '10001', '李金印', '2021-02-11 10:21:43', '李金印', '2021-02-11 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('600', '888', '选派项目经理的理想时间是？', null, '在项目的启动阶段', '在项目的计划阶段', '在项目生命周期中的概念阶段结束后', '在项目生命周期中的开始阶段开始之前', 'A', '20', '10001', '李金印', '2021-02-12 10:21:43', '李金印', '2021-02-12 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('601', '888', '下列各项不是项目选择办法的是？', null, '逻辑框架分析', '解析层次过程', '专家判断', '决策树', 'C', '20', '10001', '李金印', '2021-02-13 10:21:43', '李金印', '2021-02-13 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('602', '888', '以下关于范围报告书的描述正确的是？', null, '并不包括项目目标，如项目成本，进度计划和质量监测等内容', '包括对项目的假设和约束条件的说明', '可为准备PERT/CPM网络提供文件基础', '可说明WBS的构成情况', 'B', '20', '10001', '李金印', '2021-02-14 10:21:43', '李金印', '2021-02-14 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('603', '888', '引起项目发生变更的三个主要原因是？', null, '项目经理或项目团队中关键人物的更替，高级管理层改变工作优先顺序，合同难以完成', '时间、资源和成本上的相对重要性发生的变化，对可交付成果的新认识，技术的不确定性', '对项目目标完成方式的最初评估发生错误，对可交付成果的新认识，新指令', '职能经理许诺的资源未到位，成本超支，客户需求发生变化', 'C', '20', '10001', '李金印', '2021-02-15 10:21:43', '李金印', '2021-02-15 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('604', '888', '在下列那个项目生命周期阶段会发生最严重的不确定性？', null, '构思阶段', '规划阶段', '执行阶段', ' 收尾阶段', 'A', '20', '10001', '李金印', '2021-02-16 10:21:43', '李金印', '2021-02-16 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('605', '888', '书面的变更指令应在以下哪些项目中使用？', null, '所有项目，不论大小', '大型项目', ' 具有正式的配置管理系统的项目', '变更控制系统费用适宜的项目', 'A', '20', '10001', '李金印', '2021-02-17 10:21:43', '李金印', '2021-02-17 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('606', '888', '一般项目失败的主要原因是？', null, '缺乏项目型或强矩阵型的结构，项目范围界定不当，以及缺少项目计划', '缺少最高管理层的支持，项目人员缺乏合作，以及项目经理领导不得力', '客户需求认识不足或不当，项目人员分布分散，项目进行期间与客户沟通不足', '组织方面的不利因素，客户需求认识不足或不当，项目需求识别不当，规划和控制不足或不当', 'D', '20', '10001', '李金印', '2021-02-18 10:21:43', '李金印', '2021-02-18 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('607', '888', '如果一个项目雇佣两名雇员，每个人工作40小时，每个小时支付工资30美元（包括管理费），同期，该项目还雇佣第三名雇员，但该雇员只工作30小时，每小时支付工资50美元，那么这一周的BCWS是？', null, '2400美元', ' 3600美元', '3660美元', ' 3900美元', 'D', '20', '10001', '李金印', '2021-02-19 10:21:43', '李金印', '2021-02-19 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('608', '888', '工作A需要3天完成，于4号星期一上午开始，后续工作B与工作A存在着结束与开始的关系。这两项工作之间有3天的间隔时间，工作B完成需要4天的时间，周日为休息日，从这些信息中可以得出的结论是？', null, '两项工作完成总共需要8天完成', '工作A开始到工作B结束需要的日程时间为11天', '工作B完成的日期是13号星期三', '工作A开始至工作B结束需要的日程时间为14天', 'B', '20', '10001', '李金印', '2021-02-20 10:21:43', '李金印', '2021-02-20 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('609', '888', '进行项目工作周期估算时，下列那些将不应考虑？', null, '资源能力', '分配到一项任务上的资源总数', '历史资料（如有的话）', '管理费用', 'D', '20', '10001', '李金印', '2021-02-21 10:21:43', '李金印', '2021-02-21 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('610', '888', '在评估一个项目是否赶工时，项目经理应如何计算？', null, '可以加速完成的每项关键工作投入的成本和时间的斜率', '项目关键路径新增资源的成本', '当关键路径的工作速度加快时，项目整体进度可以节约的时间', '每个关键路径PERT三个可能的时间估算', 'A', '20', '10001', '李金印', '2021-02-22 10:21:43', '李金印', '2021-02-22 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('611', '888', '一项工作最早开始日期为10号，最晚开始日期为19号，该项工作周期为4天，这其中没有休息日。从以上给出的信息，关于该项工作可以得到什么结论？', null, '该项工作总时差为9天', '该项工作最早完成日期为14号当天结束时', '该项工作最迟完成的日期为25号', '如果将投入该项工作的资源数量增加一倍的话，该项工作可以在两天内完成', 'A', '20', '10001', '李金印', '2021-02-23 10:21:43', '李金印', '2021-02-23 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('612', '888', '在项目的时间管理中，项目赶工的意思是？', null, '重新界定逻辑关系，以缩短项目周期', '缩短用于项目进度风险模型分析的计算机网络维修时间', '给所有的项目工作都增加新的资源', '根据优先顺序给重要路径上的活动增加资源', 'A', '20', '10001', '李金印', '2021-02-24 10:21:43', '李金印', '2021-02-24 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('613', '888', '下列哪项不是虚设工作所具有的特点？', null, '只用在箭线网络图中', '工作时间为零', '需要资源投入', '表明一种优先顺序', 'C', '20', '10001', '李金印', '2021-02-25 10:21:43', '李金印', '2021-02-25 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('614', '888', '根据学习理论曲线，当许多项目重复出现时会？', null, '对操作者训练要求较少的生产设备降低单位成本', ' 随着生产效率提高单位成本降低', '随着生产产品数量的增加，单位产品成本以一定方式下降', '自动化程度越高，培训成本也越高', 'C', '20', '10001', '李金印', '2021-02-26 10:21:43', '李金印', '2021-02-26 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('615', '888', '趋势分析被用来监控那些方面的数据？', null, '错误原因', '质量管理计划', '客户满意度', '技术、成本和进度执行情况', 'D', '20', '10001', '李金印', '2021-02-27 10:21:43', '李金印', '2021-02-27 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('616', '888', '以下哪种项目组织中项目经理将可能对项目资源进行最严格的控制？', null, '强矩阵型', ' 项目化型', '项目协调者', '弱矩阵型', 'B', '20', '10001', '李金印', '2021-02-28 10:21:43', '李金印', '2021-02-28 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('617', '888', '以下那些是项目团队建设的基本原则？', null, ' 进行经常性的执行情况评估', '确保项目团队每位成员除了向项目经理汇报之外同时向职能经理汇报', '尽早进行项目团队建设', '解决成员间的政治分歧', 'C', '20', '10001', '李金印', '2021-03-01 10:21:43', '李金印', '2021-03-01 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('618', '888', '项目A按矩阵组织形式进行管理，该项目经理向高级副总裁汇报工作，后者为项目提供直接的支持。在这种情况下，以下那一种描述最好的说明了项目经理的相对权力？', null, '项目经理很可能不会被项目干系人质疑', '在强矩阵型结构中，权力向职能经理倾斜', '在弱矩阵型结构中，权力向项目经理倾斜', '在强矩阵型结构中，权力向项目经理倾斜', 'D', '20', '10001', '李金印', '2021-03-02 10:21:43', '李金印', '2021-03-02 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('619', '888', '以下那一个因素对于项目成员之间的沟通意义最为重大？', null, '来自于外部的意见反馈', '执行情况评估', '项目经理解决项目小组成员之间的矛盾与冲突', '集中办公', 'D', '20', '10001', '李金印', '2021-03-03 10:21:43', '李金印', '2021-03-03 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('620', '888', '项目团队成员如果工作地点不一致，他们倾向于不将自己看作团队的一员。为了改变这种情况，项目经理应该？', null, '保证小组各个成员用电子邮件作为通讯方式', '明确要求小组成员遵循组织的任务安排', '创造符号或结构，加强地点分散的团队成员的团结', '向团队成员提供最先进的通讯方式，并指定其使用方法', 'C', '20', '10001', '李金印', '2021-03-04 10:21:43', '李金印', '2021-03-04 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('621', '888', '当组织的功能结构需要用来支持多个项目时，主要的困难将会出现，其原因是？', null, '项目经理的权限造成的', '不同的项目优先顺序发生矛盾，从而对有限的资源进行竞争', '项目组成员对他们的专长的关注超过了对项目本身的关注', '项目经理运用人际技巧来非正式地解决成员之间的冲突', 'B', '20', '10001', '李金印', '2021-03-05 10:21:43', '李金印', '2021-03-05 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('622', '888', '在收尾阶段，许多项目经理都倾向于推迟人员安排，其原因是？', null, '他们不想面对在这过程中可能产生的人际关系矛盾', '他们认为谁都不想离开这个项目', '职能经理不想队伍成员回去', '团队成员不想转移到新的任务中去', 'A', '20', '10001', '李金印', '2021-03-06 10:21:43', '李金印', '2021-03-06 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('623', '888', '一个人估计在最常见的情况下往返家里需要1小时。在被进一步询问后，他估计最少的时候需要45分钟，最多的时候需要1小时45分钟，该估计的标准差是多少？', null, '10分钟', '15分钟', '50分钟', '60分钟', 'A', '20', '10001', '李金印', '2021-03-07 10:21:43', '李金印', '2021-03-07 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('624', '888', '在谈判中最常出现的沟通问题是？', null, '谈判的一方误解另一方的表述', '谈判的一方放弃谈判', '谈判的一方企图使另一方面迷惑', '谈判的一方忙于思考接着该说什么，结果没有在听另一方的陈述', 'A', '20', '10001', '李金印', '2021-03-08 10:21:43', '李金印', '2021-03-08 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('625', '888', '绩效测量的基线是？', null, '计划工作预算成本', '已完成工作预算成本', '已完成工作实际成本', '计划工作实际成本', 'A', '20', '10001', '李金印', '2021-03-09 10:21:43', '李金印', '2021-03-09 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('626', '888', '以下哪项是项目经理最重要的素质？', null, '监管经验', '谈判技巧', '技术教育背景', '与人协作的能力', 'D', '20', '10001', '李金印', '2021-03-10 10:21:43', '李金印', '2021-03-10 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('627', '888', '要创造易于接受的沟通环境，项目经理应该如何做？', null, '确保所有的沟通都是清晰并易于理解的', '以他（她）喜欢的表达方式', '让整个项目团队准备项目沟通计划', '确保队伍成员获得他们工作所需要的信息', 'B', '20', '10001', '李金印', '2021-03-11 10:21:43', '李金印', '2021-03-11 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('628', '888', '一般说来，在处理项目干系人之间的争议时，应该偏向于以下哪一方？', null, '项目发起者', '高级经理', '执行组织', '顾客', 'D', '20', '10001', '李金印', '2021-03-12 10:21:43', '李金印', '2021-03-12 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('629', '888', '在项目的收尾阶段，最多的矛盾来自于以下哪方面？', null, '进度问题', '费用超支', '技术问题', '工作界面', 'A', '20', '10001', '李金印', '2021-03-13 10:21:43', '李金印', '2021-03-13 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('630', '888', '以下选项中，那些不是项目沟通的障碍？', null, '由于低报酬产生的敌对态度', '由技术语言导致的困难', '固定总价合同中的确定损失额', '缺乏清晰的沟通渠道', 'C', '20', '10001', '李金印', '2021-03-14 10:21:43', '李金印', '2021-03-14 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('631', '888', '以下选项中哪项不是开工会议的目标？', null, '建立工作关系和沟通渠道', ' 审查项目计划', '建立个人和团队的责任', '讨论有关合同的具体法律问题', 'D', '20', '10001', '李金印', '2021-03-15 10:21:43', '李金印', '2021-03-15 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('632', '888', '项目经理使成员工作地点相隔较远的团队发挥最佳工作效率的重要方式是？', null, '建立信任', '建立奖励和业绩认可制度', '争取获得其它工作地点的职能经理的支持', '项目经理运用权力控制项目的所有方面', 'A', '20', '10001', '李金印', '2021-03-16 10:21:43', '李金印', '2021-03-16 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('633', '888', '两个术语——强矩阵和弱矩阵用于描述项目组织结构时，指的是？', null, '组织实现其目标的能力', '项目团队成员彼此之间以及与项目经理之间的有形距离', '项目经理对项目团队资源的控制权力的大小', '团队成员之间的关系紧密程度', 'C', '20', '10001', '李金印', '2021-03-17 10:21:43', '李金印', '2021-03-17 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('634', '888', '在组织一个项目的过程中，项目经理必须解决矛盾冲突。以下关于项目中矛盾冲突的陈述中正确的是？', null, '矩阵型组织会造成职能界定不明，并导致职能经理和项目经理之间管理权限的不明确', '冲突的原因包括各项目的优先顺序，PERT/CPM进度表，合同管理程序以及合同类型', '只要可能就应该避免', '强矩阵型项目经理很少遇到人力资源冲突，因为他们能够直接向职能经理下达人员需求方面的指令', 'A', '20', '10001', '李金印', '2021-03-18 10:21:43', '李金印', '2021-03-18 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('635', '888', '责任分配矩阵不被用来说明下列那一项？', null, '谁负责那方面的工作', '工作单元间哪些关键界面需要管理上的特别协调', '实现项目目标需要哪些工作因素', '谁向谁汇报', 'C', '20', '10001', '李金印', '2021-03-19 10:21:43', '李金印', '2021-03-19 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('636', '888', '当团队成员既要对项目经理又要对职能经理负责的时候，团队建设经常会变得复杂起来。有效的管理这种双重汇报关系通常是（）的责任。', null, '有关的团队', '项目经理', '项目业主或赞助人', '职能经理', 'B', '20', '10001', '李金印', '2021-03-20 10:21:43', '李金印', '2021-03-20 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('637', '888', '最常被项目经理拿来解决冲突的方法是？', null, '妥协的方式', '面对', '缓和', '谈判', 'B', '20', '10001', '李金印', '2021-03-21 10:21:43', '李金印', '2021-03-21 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('638', '888', '在强和弱矩阵组织结构中，导致冲突的主要原因是？', null, '沟通障碍', '相互冲突的利益', '需要统一意见', '管辖模糊', 'D', '20', '10001', '李金印', '2021-03-22 10:21:43', '李金印', '2021-03-22 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('639', '888', '下列不是不良的团队工作情况的是？', null, '低落的工作氛围', '过多的会议', '对项目经理缺乏信任', '会议效率低下', 'B', '20', '10001', '李金印', '2021-03-23 10:21:43', '李金印', '2021-03-23 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('640', '888', '减少项目中冲突的主要方法是？', null, '举行定期的小组会议', '使用小组协调人员', '进行谨慎仔细的项目规划', '规定严格的讨论制度', 'C', '20', '10001', '李金印', '2021-03-24 10:21:43', '李金印', '2021-03-24 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('641', '888', '有效的团队建设导致的主要结果是？', null, '项目情况得到改善', '一个高效率、运作正常的团队', '团队成员充分理解项目经理对项目的执行负最终责任', '项目干系人作为个人和项目组成员发生的作用得以加强', 'A', '20', '10001', '李金印', '2021-03-25 10:21:43', '李金印', '2021-03-25 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('642', '888', '以下因素对团队建设影响最小的是？', null, '对项目的错误认识', '不提供支持的高层管理层', '发生困难的项目', '对项目组成员的补偿', 'D', '20', '10001', '李金印', '2021-03-26 10:21:43', '李金印', '2021-03-26 10:21:43', null, '1', '1');
INSERT INTO `question_question` VALUES ('643', '888', '当前中国移动ONE-NET能力开放平台提供的大数据服务能力应用包括视频会议。', null, null, null, null, null, '错', '15', '10001', '李金印', '2019-10-24 10:21:00', '李金印', '2019-10-24 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('644', '888', '公司政企业务数字化转型的平台是云计算、大数据。', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-10-25 10:21:00', '李金印', '2019-10-25 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('645', '888', '“企业上云”的三大子工程包括基础上云、管理上云、流程上云。', null, null, null, null, null, '错', '15', '10001', '李金印', '2019-10-26 10:21:00', '李金印', '2019-10-26 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('646', '888', '移动大数据在涉及用户个人信息资料验真时，不需要取得用户的主动授权。', null, null, null, null, null, '错', '15', '10001', '李金印', '2019-10-27 10:21:00', '李金印', '2019-10-27 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('647', '888', '企业在移动彩云中申请企业认证后，可以使用更多功能，企业成员不做限制，并且每人每月赠送300分钟免费语音时长，可订购语音包。', null, null, null, null, null, '错', '15', '10001', '李金印', '2019-10-28 10:21:00', '李金印', '2019-10-28 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('648', '888', '移动彩云用户可在集团彩云客户端或者网页版注册并创建团队。\n', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-10-29 10:21:00', '李金印', '2019-10-29 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('649', '888', 'ESOP未认证的企业可在移动彩云客户端或者彩云企业管理后台提交认证资料在线申请成为认证企业。\n', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-10-30 10:21:00', '李金印', '2019-10-30 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('650', '888', '桌面云是基于云计算技术提供的统一桌面服务，终端本地保存个人数据，保障信息安全性。', null, null, null, null, null, '错', '15', '10001', '李金印', '2019-10-31 10:21:00', '李金印', '2019-10-31 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('651', '888', '大数据合作原则之一是数据不出门，就是原始数据、可被二次加工的数据不输出，也不能输出图形化标签。', null, null, null, null, null, '错', '15', '10001', '李金印', '2019-11-01 10:21:00', '李金印', '2019-11-01 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('652', '888', '能力开放平台就是超市，陈列的是标准API接口。\n', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-11-02 10:21:00', '李金印', '2019-11-02 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('653', '888', 'true于水表行业有自己开发实力的企业来说，物联网业务其实就是流量卡的销售业务。', null, null, null, null, null, '错', '15', '10001', '李金印', '2019-11-03 10:21:00', '李金印', '2019-11-03 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('654', '888', '省住建厅为了监测区域的房屋入住率和人口流动情况，可通过我公司开发客流平台，查看监控区域内的实时客流、热力视图。', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-11-04 10:21:00', '李金印', '2019-11-04 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('655', '888', '基于移动公司的上网等大数据获取用户偏好特征，可为广告公司提供用户偏好标签，合力为广告主提供定向投放服务。', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-11-05 10:21:00', '李金印', '2019-11-05 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('656', '888', '景区客流量动态监测平台只能获取3G和4G的客流数量。', null, null, null, null, null, '错', '15', '10001', '李金印', '2019-11-06 10:21:00', '李金印', '2019-11-06 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('657', '888', '景区客流量动态监测平台分析游客来源地情况，国内可以区分到省级市级游客来源,国外不能区分到具体国别。', null, null, null, null, null, '错', '15', '10001', '李金印', '2019-11-07 10:21:00', '李金印', '2019-11-07 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('658', '888', '景区客流量动态监测平台分析游客在景区游玩的时间量，从而判断该景区true游客的吸引力。', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-11-08 10:21:00', '李金印', '2019-11-08 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('659', '888', '景区客流量动态监测平台实现景区流量全监控，及时掌握人流动态流量，实现人流峰值短信预警。', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-11-09 10:21:00', '李金印', '2019-11-09 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('660', '888', '集团WLAN业务的使用方式有四种类型，分别为动态账号方式、固定账号方式、CMCC付费方式、免认证方式。', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-11-10 10:21:00', '李金印', '2019-11-10 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('661', '888', '在众多云厂家中，Vmware商用化成熟，国内市场占有率80%以上,价廉物美。', null, null, null, null, null, '错', '15', '10001', '李金印', '2019-11-11 10:21:00', '李金印', '2019-11-11 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('662', '888', '和路通只能监视车外的状况，不能录制车内视频。', null, null, null, null, null, '错', '15', '10001', '李金印', '2019-11-12 10:21:00', '李金印', '2019-11-12 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('663', '888', 'GPON主要面向可靠性和QoS要求较高的业务接入，是集团客户的主流接入技术。', null, null, null, null, null, '错', '15', '10001', '李金印', '2019-11-13 10:21:00', '李金印', '2019-11-13 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('664', '888', '根据集团公司文件《中国移动城域传送网建设指导意见（2016版）》要求，“原则上不向客户提供光纤出租”，因此不主动出租光纤，仅限效益类的ICT项目。', null, null, null, null, null, '错', '15', '10001', '李金印', '2019-11-14 10:21:00', '李金印', '2019-11-14 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('665', '888', '浙江移动承建的浙江省政府政务视联网具备扩建多个功能平台的技术特征，并不局限于单一视频会议通信功能，平台可同时提供视频监控、视频点播、多媒体信息发布、应急指挥、电视直播等功能。', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-11-15 10:21:00', '李金印', '2019-11-15 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('666', '888', '中国移动可为行业用户构建一个行业流量营销体系，包含：自有产品定向流量、礼品库流量、行业流量应用、员工福利流量红包四大合作领域，为客户搭建自助充值平台，用户可按需自行完成流量充值。', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-11-16 10:21:00', '李金印', '2019-11-16 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('667', '888', '“云视讯”产品是基于移动互联网的纯软件视频会议产品，集团客户只需通过PC、手机、PAD等终端既能轻松实现“面true面”的在线交流，但不能开展各类数据会议。', null, null, null, null, null, '错', '15', '10001', '李金印', '2019-11-17 10:21:00', '李金印', '2019-11-17 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('668', '888', '彩印业务需要用户联网，消耗流量。', null, null, null, null, null, '错', '15', '10001', '李金印', '2019-11-18 10:21:00', '李金印', '2019-11-18 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('669', '888', '浙江移动商业智慧选址能力调用了浙江移动大量客户标签信息，为商圈的定位、分析提供支持，包括人口基本标签、消费能力及偏好标签。', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-11-19 10:21:00', '李金印', '2019-11-19 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('670', '888', '为了保护用户的隐私权，目前金融辅助产品大数据提供的信息服务方式只能通过前台查询方式。', null, null, null, null, null, '错', '15', '10001', '李金印', '2019-11-20 10:21:00', '李金印', '2019-11-20 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('671', '888', '金融辅助产品大数据可以向中间商提供服务，以便更好地完善数据模型。', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-11-21 10:21:00', '李金印', '2019-11-21 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('672', '888', 'APP智慧洞察平台的优势之一是互联网信息识别率高，目前已经构建面向APP的DPI信息库、URL等信息。', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-11-22 10:21:00', '李金印', '2019-11-22 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('673', '888', 'APP智慧洞察平台的优势之一是信息实时，毫秒级延时，直接从网络设备获取，适合需要获取实时APP使用行为数据。', null, null, null, null, null, '错', '15', '10001', '李金印', '2019-11-23 10:21:00', '李金印', '2019-11-23 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('674', '888', '和true讲参照各应用场景的需求，创新性地设计研发了以多媒体消息、现场图文上报、实时视频上报为核心的多媒体功能体系，作为产品推广的核心卖点。', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-11-24 10:21:00', '李金印', '2019-11-24 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('675', '888', '浙江的特点是企业多、云服务的意识强，政务云、行业云是占据未来云服务大部分市场。\n', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-11-25 10:21:00', '李金印', '2019-11-25 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('676', '888', '移动彩云可自动生成部门群，群成员入职离职需人工管理。\n', null, null, null, null, null, '错', '15', '10001', '李金印', '2019-11-26 10:21:00', '李金印', '2019-11-26 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('677', '888', '“云MAS”是部署在移动侧的消息类业务平台，客户只能通过数据专线接入云MAS平台，实现短信、彩信和网信等应用服务。', null, null, null, null, null, '错', '15', '10001', '李金印', '2019-11-27 10:21:00', '李金印', '2019-11-27 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('678', '888', '在视频监控中，中国采用的视频制式是PLA。', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-11-28 10:21:00', '李金印', '2019-11-28 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('679', '888', '分辨率大于等于1080P称为高清。', null, null, null, null, null, '错', '15', '10001', '李金印', '2019-11-29 10:21:00', '李金印', '2019-11-29 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('680', '888', '视频监控系统中一般小于80米采用网线直接传输，大于80米需要光纤收发器+光缆进行数据传输。', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-11-30 10:21:00', '李金印', '2019-11-30 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('681', '888', '视频监控行业中200万像素网络摄像机的主流分辨率为1080p，其画面比例为16:9。', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-12-01 10:21:00', '李金印', '2019-12-01 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('682', '888', 'A和B两个编码通道接入同一视频源，A采用CIF分辨率，B采用4CIF分辨率；A和B均采取相同的码率录像，相同时间后它们所生成的录像文件大小为相同。', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-12-02 10:21:00', '李金印', '2019-12-02 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('683', '888', '如下关于分辨率的大小排序正确的是4K＞WD1＞1080p＞720p。', null, null, null, null, null, '错', '15', '10001', '李金印', '2019-12-03 10:21:00', '李金印', '2019-12-03 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('684', '888', '目前网络摄像机采用的图像传感器主要有CCD和CMOS。', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-12-04 10:21:00', '李金印', '2019-12-04 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('685', '888', '视频监控系统中，在1080P的25帧情况下，通常采用的码流大小为3-4M。', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-12-05 10:21:00', '李金印', '2019-12-05 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('686', '888', '普通人眼true25帧/秒的视频即可认为是动作连贯的实时视频。', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-12-06 10:21:00', '李金印', '2019-12-06 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('687', '888', '热成像摄像机具备观测、粗略测温、精确测温、缺陷分析功能。', null, null, null, null, null, '错', '15', '10001', '李金印', '2019-12-07 10:21:00', '李金印', '2019-12-07 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('688', '888', '常见的设备安装方式有吊装、壁装、吸顶装等。', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-12-08 10:21:00', '李金印', '2019-12-08 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('689', '888', '摄像机的照度参数单位是W。', null, null, null, null, null, '错', '15', '10001', '李金印', '2019-12-09 10:21:00', '李金印', '2019-12-09 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('690', '888', 'CCD传感器的的扫描方式是隔行扫描。', null, null, null, null, null, '错', '15', '10001', '李金印', '2019-12-10 10:21:00', '李金印', '2019-12-10 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('691', '888', '视频直存的最大优势是采用专用流媒体协议，直接连接编解码器或IPC，省略存储服务器。', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-12-11 10:21:00', '李金印', '2019-12-11 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('692', '888', '混合型网络硬盘录像机HDVR是一种能够同时输入模拟视频和网络视频的硬盘录像机。', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-12-12 10:21:00', '李金印', '2019-12-12 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('693', '888', 'DSP不是模拟摄像机的系统结构。', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-12-13 10:21:00', '李金印', '2019-12-13 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('694', '888', '业内常见的编码格式有H.264、H.265等几种', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-12-14 10:21:00', '李金印', '2019-12-14 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('695', '888', '用来衡量摄像机在黑暗的环境下能看得清楚图像清晰度的指标是最低照度。', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-12-15 10:21:00', '李金印', '2019-12-15 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('696', '888', '通常我们所讲的实时视频帧数是20帧/s。', null, null, null, null, null, '错', '15', '10001', '李金印', '2019-12-16 10:21:00', '李金印', '2019-12-16 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('697', '888', 'XVR支持一根视频线就实现图像传输及云台控制，该功能叫做同轴视控。', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-12-17 10:21:00', '李金印', '2019-12-17 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('698', '888', '视频监控系统是各行业重点部门或重要场所进行实时监控的物理基础，管理部门可通过它获得有效数据、图像,true突发性异常事件的过程进行及时的监视和记忆，用以提供高效、及时地指挥和高度、布置警力、处理案件等。', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-12-18 10:21:00', '李金印', '2019-12-18 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('699', '888', '以下功能属于NVR/DVR基本功能的有录像、回放/备份、结构化分析、网络访问。', null, null, null, null, null, '错', '15', '10001', '李金印', '2019-12-19 10:21:00', '李金印', '2019-12-19 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('700', '888', '同轴高清技术的优势有实时性好、远距离传输、同轴视控、改造监控系统简单等。', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-12-20 10:21:00', '李金印', '2019-12-20 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('701', '888', '关于图像偏色,可能需要调节白平衡。', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-12-21 10:21:00', '李金印', '2019-12-21 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('702', '888', '调节色彩的浓郁程度、画面通透性、物体边缘细节的分别是饱和度、true比度、锐度。', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-12-22 10:21:00', '李金印', '2019-12-22 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('703', '888', '某室外场景颜色很复杂，若安装摄像机，需设置以下哪种白平衡模式自动跟踪白平衡2。', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-12-23 10:21:00', '李金印', '2019-12-23 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('704', '888', '云计算是一种计算方法/计算模式， 它将按需提供的自助管理虚拟基础架构汇集成资源池，以服务的形式提供计算和存储等能力。', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-12-24 10:21:00', '李金印', '2019-12-24 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('705', '888', '在众多云厂家中，Vmware商用化成熟，国内市场占有率80%以上,价格高。', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-12-25 10:21:00', '李金印', '2019-12-25 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('706', '888', '云计算按照使用用户的类别可分为公有云和私有云。', null, null, null, null, null, '错', '15', '10001', '李金印', '2019-12-26 10:21:00', '李金印', '2019-12-26 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('707', '888', '云计算按照服务类型可分为IaaS、PaaS、SaaS层。', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-12-27 10:21:00', '李金印', '2019-12-27 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('708', '888', '大数据（或big data)_指无法在一定时间范围内用常规软件工具迚行捕捉、管理和处理的数据集合，是需要新处理模式才能具有更强的决策力、洞察収现力和流程优化能力的海量、高增长率和多样化的信息资产。', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-12-28 10:21:00', '李金印', '2019-12-28 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('709', '888', '基于移动用户手机的基站信令数据，运用大数据处理技术，true人群流量进行实时监控。', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-12-29 10:21:00', '李金印', '2019-12-29 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('710', '888', '智慧选址包括商圈定位、商圈分析和备选商圈等三方面。', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-12-30 10:21:00', '李金印', '2019-12-30 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('711', '888', '景区客流量动态监测平台是基于移动信令来进行获取和分析相关事件数据进行后期的策划引导。', null, null, null, null, null, '对', '15', '10001', '李金印', '2019-12-31 10:21:00', '李金印', '2019-12-31 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('712', '888', '无线通信系统主要由发射机、接收机和天线三大部分组成。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-01-01 10:21:00', '李金印', '2020-01-01 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('713', '888', 'FTTH的接入方式是指光纤到大楼。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-01-02 10:21:00', '李金印', '2020-01-02 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('714', '888', '目前政企业务专线的接入方式主要为PON方式和传输专线方式。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-01-03 10:21:00', '李金印', '2020-01-03 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('715', '888', '按传播模式分，光纤可分为单模光纤和多模光纤。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-01-04 10:21:00', '李金印', '2020-01-04 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('716', '888', 'GPON传输上下行速率分别为2.5G/1.25G。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-01-05 10:21:00', '李金印', '2020-01-05 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('717', '888', '网络自愈是指当业务信道损坏，导致业务中断时网络会自动将业务切换到备用业务信道，使业务能在较短的时间内得以恢复正常传输。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-01-06 10:21:00', '李金印', '2020-01-06 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('718', '888', '在TCP/IP网络中，属于同一个子网络的主机的网络号相同。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-01-07 10:21:00', '李金印', '2020-01-07 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('719', '888', '裸光纤出租是将移动公司铺放好的光缆（纤芯）直接租给客户使用，两侧直接连接客户设备。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-01-08 10:21:00', '李金印', '2020-01-08 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('720', '888', 'IMS电话主要使用的协议是IPX/SPX。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-01-09 10:21:00', '李金印', '2020-01-09 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('721', '888', '二层以太网交换机通过IP地址来转发数据包工作方式。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-01-10 10:21:00', '李金印', '2020-01-10 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('722', '888', '数据传输中的“噪声”指的是信号在传输过程中受到的干扰。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-01-11 10:21:00', '李金印', '2020-01-11 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('723', '888', 'true于CDMA系统来说，多个信道通过分配不同的伪随机序列共用一个波道。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-01-12 10:21:00', '李金印', '2020-01-12 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('724', '888', 'AP类型根据组网方式分，一般可分为胖AP和瘦AP两种。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-01-13 10:21:00', '李金印', '2020-01-13 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('725', '888', '100BASE-TX 的标准物理介质是细同轴电缆。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-01-14 10:21:00', '李金印', '2020-01-14 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('726', '888', 'MAC地址由48个比特构成。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-01-15 10:21:00', '李金印', '2020-01-15 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('727', '888', '互联网OSI/RM参考模型第四层叫做传输层。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-01-16 10:21:00', '李金印', '2020-01-16 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('728', '888', '路由可以分为两类，一类是静态路由，另一类是动态路由。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-01-17 10:21:00', '李金印', '2020-01-17 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('729', '888', 'SDH的中文解释是同步数字系列。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-01-18 10:21:00', '李金印', '2020-01-18 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('730', '888', 'GPON技术中，OLT下行采用单播技术进行数据下发。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-01-19 10:21:00', '李金印', '2020-01-19 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('731', '888', 'LTE非载波聚合情况下，峰值下载速率为200Mbps。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-01-20 10:21:00', '李金印', '2020-01-20 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('732', '888', '将端口设置为全双工属性，可以使交换机的端口在发送数据包的同时接收数据包。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-01-21 10:21:00', '李金印', '2020-01-21 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('733', '888', '带电的静电敏感器件和绝缘材料接触是安全的。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-01-22 10:21:00', '李金印', '2020-01-22 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('734', '888', 'TDMA是把时间分割成周期性的帧，每一帧再分割成若干个时隙（帧和时隙都互不重叠），供不同用户使用。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-01-23 10:21:00', '李金印', '2020-01-23 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('735', '888', '在运行windows系统的计算机中配置网关，类似于在路由器中配置直接路由。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-01-24 10:21:00', '李金印', '2020-01-24 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('736', '888', '调制技术分为模拟调制和数字调制两大类。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-01-25 10:21:00', '李金印', '2020-01-25 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('737', '888', 'PON使用波分复用技术，同时处理双向信号传输，上、下行信号分别用不同的波长，但在同一根光纤中传送。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-01-26 10:21:00', '李金印', '2020-01-26 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('738', '888', 'DHCP协议可以在网络中动态地获得IP地址。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-01-27 10:21:00', '李金印', '2020-01-27 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('739', '888', '防火墙通过ARP表来标识一个完整的连接。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-01-28 10:21:00', '李金印', '2020-01-28 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('740', '888', 'UDP协议是面向无连接的。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-01-29 10:21:00', '李金印', '2020-01-29 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('741', '888', 'SMTP协议用于传送E-mail消息。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-01-30 10:21:00', '李金印', '2020-01-30 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('742', '888', '成本类项目采购需求材料需包括：预算签报、决策依据、采购内容清单和客户合同主要条款。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-01-31 10:21:00', '李金印', '2020-01-31 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('743', '888', '各采购人应严格落实主体责任，以嵌入式廉洁风险防控机制建设为重要抓手，积极查找风险，建立制度执行责任体系，加强true采购方案的决策把关，强化监督和问责，true采购合规性负责。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-02-01 10:21:00', '李金印', '2020-02-01 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('744', '888', '政企客户信息化项目必须按项目单独核算，信息化项目经费必须专款专用，任何部门不得截留和挪用批复的信息化项目经费。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-02-02 10:21:00', '李金印', '2020-02-02 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('745', '888', '公司true部分产品品类采用电商采购模式，true于纳入电商平台采购范围的产品，各采购人应按照电商采购相关管理要求，在公司指定的电商平台上，履行审批流程后进行采购。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-02-03 10:21:00', '李金印', '2020-02-03 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('746', '888', '根据政府采购要求，非招标采购方式，主要是指竞争性谈判、单一来源采购和询价采购方式。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-02-04 10:21:00', '李金印', '2020-02-04 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('747', '888', '销售模式下设备产权归属于客户，相关设备销售收入应列入其他业务收入-ICT设备收入，相关设备采购支出应列入其他业务收入-ICT设备支出。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-02-05 10:21:00', '李金印', '2020-02-05 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('748', '888', 'true于预算（预估）金额为10万元人民币以下（含）不属于依法必须招标的小额采购和不签订书面合同方式的简易采购，参照小额采购操作规范要求执行。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-02-06 10:21:00', '李金印', '2020-02-06 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('749', '888', '根据公司资产管理办法规定，单价1000元以上物料可以生成资产并申请投资类项目支出。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-02-07 10:21:00', '李金印', '2020-02-07 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('750', '888', '规范采购需遵守实施在先、规则在后的原则。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-02-08 10:21:00', '李金印', '2020-02-08 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('751', '888', '根据政府采购要求，招标采购方式主要是指单一来源采购和邀请招标。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-02-09 10:21:00', '李金印', '2020-02-09 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('752', '888', '一般来说，视频监控类项目中包含杆件、交换机、光端机等辅材在内的建设内容true应的增值税率为17%。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-02-10 10:21:00', '李金印', '2020-02-10 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('753', '888', '根据公司资产管理办法规定，单价2000元以上物料可以生成资产并申请投资类项目支出？', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-02-11 10:21:00', '李金印', '2020-02-11 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('754', '888', '为防范税务风险，在合同签署时需确保明确开票内容与合同内容的一致性。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-02-12 10:21:00', '李金印', '2020-02-12 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('755', '888', '根据《计算机信息系统国际联网保密管理规定》，涉及国家秘密的计算机信息系统，不得直接或间接地与国际互联网或其他公共信息网络相连，必须实行软件隔离。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-02-13 10:21:00', '李金印', '2020-02-13 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('756', '888', '根据政府采购要求，非招标采购方式，主要是指竞争性谈判、单一来源采购和询价采购方式', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-02-14 10:21:00', '李金印', '2020-02-14 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('757', '888', '根据政府采购要求，招标采购方式，主要是指竞争性谈判和邀请招标。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-02-15 10:21:00', '李金印', '2020-02-15 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('758', '888', '根据招投标法，招投标的方式包括委托招标和自行招标两种方式。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-02-16 10:21:00', '李金印', '2020-02-16 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('759', '888', '“五条禁令”是从保障客户基本权益出发，基于有关法律法规、行业政策以及公司现行有关规范制度制定的，旨在确保建立公司最基本的客户服务准则，是“底线”。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-02-17 10:21:00', '李金印', '2020-02-17 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('760', '888', '账号的权限分配应当遵循“权限明确、职责分离、最小特权”的原则。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-02-18 10:21:00', '李金印', '2020-02-18 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('761', '888', '一个帐号拥有的权限是由其被赋于的岗位权利所决定的。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-02-19 10:21:00', '李金印', '2020-02-19 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('762', '888', 'true于外部人员需使用BOSS等涉敏感信息系统帐号的情况，应和第三方厂商签订相关的安全保密协议，以保证第三方厂商能够遵守中国移动信息安全管理要求。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-02-20 10:21:00', '李金印', '2020-02-20 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('763', '888', '《新消法》大大扩展了true欺诈行为的定义范畴，强迫消费属于欺诈行为。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-02-21 10:21:00', '李金印', '2020-02-21 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('764', '888', '各公司应当true合同的谈判、起草、审查、签订、履行等各环节进行全过程管理，有效防范合同风险。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-02-22 10:21:00', '李金印', '2020-02-22 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('765', '888', '各公司签订合同应当符合法律法规及公司内部管理规定的要求。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-02-23 10:21:00', '李金印', '2020-02-23 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('766', '888', '申请用章部门应通过合同管理系统打印合同正文及附件，不需要加盖骑缝章确认。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-02-24 10:21:00', '李金印', '2020-02-24 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('767', '888', '合同应由合同承办人或部门合同管理员送交合同专用章管理部门进行盖章。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-02-25 10:21:00', '李金印', '2020-02-25 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('768', '888', '各部门不可以指派非公司员工送交合同进行盖章，但经部门负责人签字授权候可以进行盖章。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-02-26 10:21:00', '李金印', '2020-02-26 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('769', '888', '合同主办部门在合同文本中载明的履行日期及合同签署生效日期原则上不应早于公司领导审批日期。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-02-27 10:21:00', '李金印', '2020-02-27 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('770', '888', '未经供应商系统认证的合同true方，申请用章部门不需要提供合同true方资质材料也可盖章。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-02-28 10:21:00', '李金印', '2020-02-28 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('771', '888', '采取招标投标采购方式的，合同承办部门应当按照招标文件和中标人的投标文件订立书面合同，不得订立背离合同实质性内容的其他协议。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-02-29 10:21:00', '李金印', '2020-02-29 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('772', '888', '订单从属于框架合同，是为明确具体采购而签订的合同性文件。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-03-01 10:21:00', '李金印', '2020-03-01 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('773', '888', '合同的法律审查率应当达到90%', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-03-02 10:21:00', '李金印', '2020-03-02 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('774', '888', '公司法律管理部门是合同监督检查部门，承担true合同管理的监督职责。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-03-03 10:21:00', '李金印', '2020-03-03 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('775', '888', '合同需要进行实质性修改的，应签订补充合同。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-03-04 10:21:00', '李金印', '2020-03-04 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('776', '888', '框架合同适用于通用性强、发生频次高、需求量较大的标准化产品或服务。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-03-05 10:21:00', '李金印', '2020-03-05 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('777', '888', '合同顺延仅适用于履行中的合同，且需原合同审批单有顺延申请并经审批同意。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-03-06 10:21:00', '李金印', '2020-03-06 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('778', '888', '一般来说，ICT项目中设备true应的增值税率为17%。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-03-07 10:21:00', '李金印', '2020-03-07 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('779', '888', '一般来说，ICT项目中通信设备出租业务true应的增值税率为17%。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-03-08 10:21:00', '李金印', '2020-03-08 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('780', '888', 'ICT项目中净现值是指投资方案所产生的现金净流量以资金成本为贴现率折现之后与原始投资额现值的差额。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-03-09 10:21:00', '李金印', '2020-03-09 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('781', '888', 'ICT项目预立项各部门评估审核中，财务部true项目带来的新增个人用户支付的收入一般会被确认为不确定性收入，一般需要出具独立评估意见。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-03-10 10:21:00', '李金印', '2020-03-10 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('782', '888', '取得符合税务部门规定的合规发票，发票类型与合同约定一致，发票内容与实际发生的经济活动、合同约定以及开票方经营范围相符，原则上发票不得人为拆分（比如发票连号），发票抬头、金额、经办人签字、发票章等发票信息应完整。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-03-11 10:21:00', '李金印', '2020-03-11 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('783', '888', '2017年7月1日后开具的增值税专用发票的认证日期为360天。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-03-12 10:21:00', '李金印', '2020-03-12 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('784', '888', '预付款支付后，后续进行核销，供应商可以不一致。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-03-13 10:21:00', '李金印', '2020-03-13 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('785', '888', '做了SCM订单后费用不需要计提。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-03-14 10:21:00', '李金印', '2020-03-14 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('786', '888', '各区、县公司可以各区县分公司名义开具专票。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-03-15 10:21:00', '李金印', '2020-03-15 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('787', '888', 'true个人客户和企业客户，只要客户要求，都可以开具增值税专用发票。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-03-16 10:21:00', '李金印', '2020-03-16 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('788', '888', '托收客户反映未收到寄送发票后要求补开,在出具未收到发票证明后，可以申请补开。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-03-17 10:21:00', '李金印', '2020-03-17 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('789', '888', '针true集团单位客户的付款方名称与客户名称不一致的情况（如总分机构），在协议中注明后，可以按照协议中约定的付款方名称开具专用发票。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-03-18 10:21:00', '李金印', '2020-03-18 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('790', '888', '信息技术服务，是指利用计算机、通信网络等技术true信息进行生产、收集、处理、加工、存储、运输、检索和利用，并提供信息服务的业务活动。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-03-19 10:21:00', '李金印', '2020-03-19 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('791', '888', '项目中系统集成、软件维护类的税率为6%。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-03-20 10:21:00', '李金印', '2020-03-20 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('792', '888', '小规模纳税人可以开出税率17%的增值税发票。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-03-21 10:21:00', '李金印', '2020-03-21 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('793', '888', '增值税管理的全流程均以发票为基础，发票亦是税务机关检查的重点。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-03-22 10:21:00', '李金印', '2020-03-22 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('794', '888', '增值税专用发票发票必须按交易实质开具，不得重复开具。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-03-23 10:21:00', '李金印', '2020-03-23 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('795', '888', '内部收益率是一项投资渴望达到的报酬率，是能使投资项目净现值等于零时的折现率。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-03-24 10:21:00', '李金印', '2020-03-24 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('796', '888', '一般内部收益率指标会参考行业基准投资收益率，按IT行业的投资收益率一般为10%。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-03-25 10:21:00', '李金印', '2020-03-25 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('797', '888', '施工费主要是指立杆、地下管道布放等通信工程类收入，为一次性费用，此部分为税率为3%的营业税收入。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-03-26 10:21:00', '李金印', '2020-03-26 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('798', '888', '合作建设模式、销售模式、投资建设模式这三种模式下建成的ICT项目的资产产权归属于客户。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-03-27 10:21:00', '李金印', '2020-03-27 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('799', '888', '设备费主要是指与项目相关的通信设备和维修备件销售收入，此部分为税率为17%的增值税收入。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-03-28 10:21:00', '李金印', '2020-03-28 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('800', '888', '税法是指税收法律制度，是国家权力机关和行政机关制定的用以调整国家与纳税人之间在征纳税方面的权利与义务关系的法律规范的总称，是国家法律的重要组成部分。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-03-29 10:21:00', '李金印', '2020-03-29 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('801', '888', '《中华人民共和国发票管理办法》规定，销售方开具发票时，应如实开具与实际经营业务相符的发票。购买方取得发票时，不得要求变更品名和金额。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-03-30 10:21:00', '李金印', '2020-03-30 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('802', '888', '零星类投资项目在设备或产品采购后可直接用于生产经营，形成固定资产。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-03-31 10:21:00', '李金印', '2020-03-31 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('803', '888', '项目投资实际完成额不得突破最终批复的项目立项金额。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-04-01 10:21:00', '李金印', '2020-04-01 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('804', '888', '电子发票的开票方和收票方需用纸质发票，可以自行打印电子发票的板式文件。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-04-02 10:21:00', '李金印', '2020-04-02 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('805', '888', '“认领入账”的概念是给集团客户建立了一个真实的资金账户，该账户可以将银行到账资金通过认领入账转入该账户。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-04-03 10:21:00', '李金印', '2020-04-03 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('806', '888', 'ICT项目决策中，大于50万的项目需要上报省公司进行决策。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-04-04 10:21:00', '李金印', '2020-04-04 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('807', '888', '项目验收包括公司与政企客户之间的交付验收，以及公司与合作伙伴之间的内部验收。交付验收由立项单位和政企客户协商完成。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-04-05 10:21:00', '李金印', '2020-04-05 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('808', '888', '售后阶段主要是项目收尾阶段，重点做好项目验收、资产转移、把整个项目三个阶段所设计的资料整理齐全。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-04-06 10:21:00', '李金印', '2020-04-06 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('809', '888', 'true于常规项目及1000万以下融创公司承建的效益类项目，立项单位按照本办法规定的评估办法自行评估和立项决策，立项通过后，以正式文件的报告形式（含项目建议书）报省公司政企客户部备案，抄送省公司规划技术部，同时在ICT项目管理平台进行录入报备。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-04-07 10:21:00', '李金印', '2020-04-07 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('810', '888', 'ICT项目预立项各部门评估审核中，财务部true项目带来的新增个人用户支付的收入一般会被确认为不确定性收入，一般需要出具联合评估意见。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-04-08 10:21:00', '李金印', '2020-04-08 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('811', '888', '内部验收应以项目立项的内容为基本依据，true项目的投资使用、应用效果、经济效益、知识产权情况及项目实施的组织管理等进行评估。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-04-09 10:21:00', '李金印', '2020-04-09 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('812', '888', 'ICT项目常规项目的决策流程中，签报决策适用项目金额小于10万的常规项目，10-30万常规项目由政企部决策小组决策，30-50万常规项目由市分公司领导专题会决策。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-04-10 10:21:00', '李金印', '2020-04-10 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('813', '888', '项目收尾的具体内容主要是项目验收、项目总结和系统维护、项目后评价。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-04-11 10:21:00', '李金印', '2020-04-11 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('814', '888', '项目变更控制程序包括：明确项目变更的目标、true所有提出的变更要求进行审查、分析项目变更true项目绩效所造成的影响、明确产出相同的各替代方案的变化。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-04-12 10:21:00', '李金印', '2020-04-12 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('815', '888', '客户信息管理的主体责任明确原则是“谁主管谁负责、谁维护谁负责、谁使用谁负责、谁接入谁负责”。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-04-13 10:21:00', '李金印', '2020-04-13 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('816', '888', '若要true客户信息进行增、删、改、批量导入、导出、为客户批量开通、取消业务等操作，需经过严格的审批流程后方可实现。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-04-14 10:21:00', '李金印', '2020-04-14 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('817', '888', '我公司trueICT项目中出租光纤的维护标准：不提供主动监控、不承诺维护质量，故障发生后以尽力而为方式进行抢修。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-04-15 10:21:00', '李金印', '2020-04-15 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('818', '888', '根据集团公司文件《中国移动城域传送网建设指导意见（2016版）》要求，“原则上不向客户提供光纤出租”，因此不主动出租光纤，仅限ICT项目。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-04-16 10:21:00', '李金印', '2020-04-16 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('819', '888', '项目外部终验通过后，立项单位应组织true项目进行项目后评估，并将项目后评估报告通过ICT项目管理平台上报省公司政企客户部、财务部和规划技术部。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-04-17 10:21:00', '李金印', '2020-04-17 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('820', '888', '现行ICT项目管理办法中只trueIT部分进行效益评估，CT部分按现行产品折扣管理执行。效益类要求CT部分标准资费最低折扣符合相关要求，IT部分净现值大于0，即包含税收、资金成本（采用2015年浙江公司银行存款收益率3.8%计算）后不亏损。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-04-18 10:21:00', '李金印', '2020-04-18 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('821', '888', '范围说明书形成了项目经理与项目客户之间的协议基础，这是因为它确定了项目金额和可交付成果。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-04-19 10:21:00', '李金印', '2020-04-19 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('822', '888', '售后阶段主要是项目收尾阶段，重点做好项目验收、项目评估、把整个项目三个阶段所设计的资料整理齐全。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-04-20 10:21:00', '李金印', '2020-04-20 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('823', '888', '项目整体计划执行时所需要的依据为：各种计划性文件、项目组织的政策和规定、纠偏行动信息。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-04-21 10:21:00', '李金印', '2020-04-21 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('824', '888', '省公司建有合作单位黑名单制度，true于因施工质量、产品质量引起欠费三次的供应商，取消其全省ICT项目的合作资格。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-04-22 10:21:00', '李金印', '2020-04-22 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('825', '888', 'ICT项目CT和IT以标准化CT产品末端网络设备（如ONU、协转、光端机等）端口为界。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-04-23 10:21:00', '李金印', '2020-04-23 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('826', '888', '信息化项目必须按成本计划单独核算，信息化项目经费必须专款专用，任何部门不得截留和挪用批复的信息化项目经费。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-04-24 10:21:00', '李金印', '2020-04-24 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('827', '888', '通过省级媒体曝光或上级主管部门通报的中国移动浙江公司业务相关网络信息安全事件属于重大网络信息安全事件（二级）。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-04-25 10:21:00', '李金印', '2020-04-25 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('828', '888', '当true外网站、信息群发系统等true外信息发布系统出现扰乱公共秩序、造谣蛊惑、破坏安定团结以及反动、淫秽、色情内容的信息安全事件时，在保障领导小组下发指令后，应在10分钟内撤掉相应内容直至关闭系统。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-04-26 10:21:00', '李金印', '2020-04-26 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('829', '888', '项目经理负责标书制作及投标现场应标工作；客户经理负责获取中标通知书、签订协议（合同）及取回投标保证金。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-04-27 10:21:00', '李金印', '2020-04-27 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('830', '888', '市政企客户部项目经理负责根据预立项批复文件和合同签订情况，准备市级项目的正式立项材料发送至省ICT项目管理员，材料包括正式立项申请、预立项申请及批复文件、效益评估表及技术方案等。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-04-28 10:21:00', '李金印', '2020-04-28 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('831', '888', '地市正式立项申请投资专项金额大于300万元（不含增值税的项目投资额）的投资项目应在申请材料中提交可研报告和可研会审纪要。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-04-29 10:21:00', '李金印', '2020-04-29 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('832', '888', '规划投资立项批复之后，市级项目由市政企客户部项目经理牵头组织市网络部、市互客中心等相关部门；进行项目设计、设计审核、实施方案会审、设计批复等环节操作。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-04-30 10:21:00', '李金印', '2020-04-30 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('833', '888', '市政企客户部项目经理负责市级项目的外部验收工作，协同客户经理召开项目验收会议，汇报项目实施情况和试运行情况，必要时请专家现场验证，输出《项目验收报告》，由客户经理签订《项目验收单》。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-05-01 10:21:00', '李金印', '2020-05-01 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('834', '888', '市政企客户部项目经理负责市级项目的外部验收工作；客户经理负责客户验收会议的协调工作，包括验收会会务情况、出席人员确定、专家费用申请。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-05-02 10:21:00', '李金印', '2020-05-02 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('835', '888', 'ICT项目分为省管项目和市管项目两类，省管项目由省公司承建；市管项目由市分公司承建。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-05-03 10:21:00', '李金印', '2020-05-03 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('836', '888', '后向合同付款条款应与前向合同合理衔接。后向合同付款进度应当适当晚于前向合同付款进度，后向合同各阶段的付款金额应当低于前向合同true应的付款金额。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-05-04 10:21:00', '李金印', '2020-05-04 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('837', '888', 'ICT项目中大网型产品、平台型的标准化产品形成的资产，由网络部负责项目资产转资接收和端到端的维护，其余项目资产管理由政企客户部负责。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-05-05 10:21:00', '李金印', '2020-05-05 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('838', '888', '项目是为了完成某一独特的产品、服务或任务所做的一次性努力。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-05-06 10:21:00', '李金印', '2020-05-06 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('839', '888', '日常工作总是在很短的时间内完成，而项目则要跨越数年或更长时间。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-05-07 10:21:00', '李金印', '2020-05-07 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('840', '888', '项目进行中每个阶段结束须以某种可交付成果为标志。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-05-08 10:21:00', '李金印', '2020-05-08 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('841', '888', '里程碑通常是指项目进程中的阶段可交付成果。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-05-09 10:21:00', '李金印', '2020-05-09 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('842', '888', '项目在开始时的风险和不确定性最高。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-05-10 10:21:00', '李金印', '2020-05-10 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('843', '888', '项目变更所需的花费将随着生命期的推进而增加。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-05-11 10:21:00', '李金印', '2020-05-11 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('844', '888', '在项目启动和收尾两阶段中，人力资源的投入一般都比较少。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-05-12 10:21:00', '李金印', '2020-05-12 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('845', '888', '项目管理的客体是项目管理者。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-05-13 10:21:00', '李金印', '2020-05-13 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('846', '888', '项目管理的主体是项目的全部任务。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-05-14 10:21:00', '李金印', '2020-05-14 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('847', '888', '项目管理是一项复杂的工作，具有较强的不确定性。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-05-15 10:21:00', '李金印', '2020-05-15 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('848', '888', '项目管理的五要素包括质量、时间、成本、范围和客户满意度。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-05-16 10:21:00', '李金印', '2020-05-16 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('849', '888', '系统论是把true象作为系统来认识和处理的理论。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-05-17 10:21:00', '李金印', '2020-05-17 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('850', '888', '项目组织机构设置中的一项重要原则是以事设岗，以岗定人。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-05-18 10:21:00', '李金印', '2020-05-18 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('851', '888', '职能型组织中有专门为项目工作的人员。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-05-19 10:21:00', '李金印', '2020-05-19 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('852', '888', '在矩阵型组织中，弱矩阵形式的项目经理的权利比强矩阵形式的项目经理的权利大。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-05-20 10:21:00', '李金印', '2020-05-20 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('853', '888', '在职能型项目组织中，团队成员往往优先考虑项目的利益。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-05-21 10:21:00', '李金印', '2020-05-21 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('854', '888', '项目型与职能型的组织结构类似，其可实现资源共享。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-05-22 10:21:00', '李金印', '2020-05-22 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('855', '888', '一般来说，职能型组织结构适用于所用技术标准化的小项目，而不适用于环境变化较大的项目。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-05-23 10:21:00', '李金印', '2020-05-23 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('856', '888', '在项目型组织结构的公司中，其部门是按项目进行设置的。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-05-24 10:21:00', '李金印', '2020-05-24 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('857', '888', '项目发起人既是项目整体管理责任者，也是项目的综合协调者。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-05-25 10:21:00', '李金印', '2020-05-25 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('858', '888', '项目整体管理的6个阶段是彼此独立的。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-05-26 10:21:00', '李金印', '2020-05-26 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('859', '888', '项目整体管理工作既可以专人负责，也可以组成专门的团队进行共同管理。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-05-27 10:21:00', '李金印', '2020-05-27 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('860', '888', '项目通常始于组织的某种需求。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-05-28 10:21:00', '李金印', '2020-05-28 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('861', '888', '项目章程是用来回答谁将谁做什么这个问题的。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-05-29 10:21:00', '李金印', '2020-05-29 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('862', '888', 'true于内部项目而言，项目工作说明书是由项目经理提出的。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-05-30 10:21:00', '李金印', '2020-05-30 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('863', '888', '专家判断法用于true项目整体管理各过程的结果的评价。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-05-31 10:21:00', '李金印', '2020-05-31 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('864', '888', '在进行头脑风暴会议时，可以true其他人的意见提出质疑。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-06-01 10:21:00', '李金印', '2020-06-01 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('865', '888', '项目范围是指为了成功地实现项目目标所必须完成的最少的工作。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-06-02 10:21:00', '李金印', '2020-06-02 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('866', '888', '收集需求是项目启动的首要工作，它处于项目生命期的最初阶段。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-06-03 10:21:00', '李金印', '2020-06-03 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('867', '888', '项目范围的变化一般不会影响项目的成本、进度、质量或其他项目目标。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-06-04 10:21:00', '李金印', '2020-06-04 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('868', '888', '项目范围确认可以针true一个项目整体的范围进行确认，也可以针true某一个项目阶段的范围进行确认。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-06-05 10:21:00', '李金印', '2020-06-05 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('869', '888', '项目范围说明书是项目范围定义的工作结果。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-06-06 10:21:00', '李金印', '2020-06-06 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('870', '888', '工作分解结构建立的层次越多越好。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-06-07 10:21:00', '李金印', '2020-06-07 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('871', '888', '在进行工作结构分解编码时，应保证编码的码的唯一性。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-06-08 10:21:00', '李金印', '2020-06-08 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('872', '888', 'true工作分解结构的各个节点进行编码并不能简化工作分解结构的信息交流。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-06-09 10:21:00', '李金印', '2020-06-09 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('873', '888', '活动持续时间估算仅考虑活动所消耗的实际工作时间。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-06-10 10:21:00', '李金印', '2020-06-10 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('874', '888', '讲划评审技术的活动工期不是固定的，而用期望值表示的。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-06-11 10:21:00', '李金印', '2020-06-11 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('875', '888', '计划评审技术的活动工期估算比关键路径法更符合实际。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-06-12 10:21:00', '李金印', '2020-06-12 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('876', '888', '图形评审法是随机型的，不是肯定型的。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-06-13 10:21:00', '李金印', '2020-06-13 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('877', '888', 'CPM和PERT在时间的估计和分析上是相同的。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-06-14 10:21:00', '李金印', '2020-06-14 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('878', '888', '一般情况下，成本估算和成本预算可以采用同样的方法。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-06-15 10:21:00', '李金印', '2020-06-15 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('879', '888', '可以无限使用的资源true项目成本的影响不是很大，所以true这类资源不用进行严格的跟踪管理。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-06-16 10:21:00', '李金印', '2020-06-16 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('880', '888', '在项目成本决策时，既要考虑制定更加精细计划所增加的成本，也要考虑这样会减少以后的实施成本。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-06-17 10:21:00', '李金印', '2020-06-17 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('881', '888', '应急储备金不可以充当成本预算的底线。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-06-18 10:21:00', '李金印', '2020-06-18 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('882', '888', '成本估算是成本预算的基础。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-06-19 10:21:00', '李金印', '2020-06-19 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('883', '888', '在由下至上进行成本估算时，相关具体人员考虑到个人或本部门的利益，他们往往会降低估计量。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-06-20 10:21:00', '李金印', '2020-06-20 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('884', '888', '当一个项目按合同进行时，成本估算和报价的意思是一样的。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-06-21 10:21:00', '李金印', '2020-06-21 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('885', '888', '项目的质量方针是不可以调整的。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-06-22 10:21:00', '李金印', '2020-06-22 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('886', '888', '项目质量政策应该由每个项目的顾客制定。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-06-23 10:21:00', '李金印', '2020-06-23 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('887', '888', '质量管理规划描述了质量政策是如何贯彻的。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-06-24 10:21:00', '李金印', '2020-06-24 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('888', '888', '内部故障费用属于质量纠正费用。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-06-25 10:21:00', '李金印', '2020-06-25 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('889', '888', '项目质量保证的结果包括更新后的项目管理计划等。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-06-26 10:21:00', '李金印', '2020-06-26 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('890', '888', '因果分析图能描述由不同的原因相互作用所产生的潜在问题。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-06-27 10:21:00', '李金印', '2020-06-27 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('891', '888', '实施项目质量控制的依据不包括质量管理计划。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-06-28 10:21:00', '李金印', '2020-06-28 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('892', '888', '质量审计所使用的工具之一就是质量核true表。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-06-29 10:21:00', '李金印', '2020-06-29 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('893', '888', '项目经理是项目管理的核心人物。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-06-30 10:21:00', '李金印', '2020-06-30 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('894', '888', '选择项目经理时，不能仅仅考虑项目经理候选人的素质和能力。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-07-01 10:21:00', '李金印', '2020-07-01 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('895', '888', '项目人力资源不具有消耗性。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-07-02 10:21:00', '李金印', '2020-07-02 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('896', '888', '项目人力资源管理的特点主要是由项目的特点来决定的。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-07-03 10:21:00', '李金印', '2020-07-03 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('897', '888', '项目人力资源管理要随着生命期的不同而进行相应的调整。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-07-04 10:21:00', '李金印', '2020-07-04 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('898', '888', '层级结构是由自上而下划分为若干层次的等级链构成，可以用手描述权利和职位间的关系。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-07-05 10:21:00', '李金印', '2020-07-05 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('899', '888', '如果项目团队成员配备合理，就会减少项目的成本。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-07-06 10:21:00', '李金印', '2020-07-06 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('900', '888', '项目的人员是不能预先指定的。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-07-07 10:21:00', '李金印', '2020-07-07 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('901', '888', '相true正式沟通而言，非正式沟通的沟通效果好。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-07-08 10:21:00', '李金印', '2020-07-08 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('902', '888', '在双向沟通中，沟通主体和沟通客体两者的角色不断交换。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-07-09 10:21:00', '李金印', '2020-07-09 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('903', '888', '项目执行过程中信息的沟通与交流是否充分，将会影响到项目实施的效果，也是项目能否达到时预期目标的关键。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-07-10 10:21:00', '李金印', '2020-07-10 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('904', '888', '确定项目干系人的信息需求和传递信息的方式是项目成功的关键。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-07-11 10:21:00', '李金印', '2020-07-11 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('905', '888', '任何一个沟通过程都存在干扰，因此消除干扰也是保证有效沟通的环节。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-07-12 10:21:00', '李金印', '2020-07-12 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('906', '888', '项目风险管理是true项目的风险进行识别和分析，并true项目风险进行分析的系统过程。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-07-13 10:21:00', '李金印', '2020-07-13 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('907', '888', '风险转移可以降低风险的发生概率。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-07-14 10:21:00', '李金印', '2020-07-14 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('908', '888', '减轻风险所需要的成本与没有减轻风险所导致的损失相比较而言少一些。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-07-15 10:21:00', '李金印', '2020-07-15 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('909', '888', '应急应true是指为某一特定的风险制订应急计划。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-07-16 10:21:00', '李金印', '2020-07-16 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('910', '888', '德尔菲法可以避免由于个人因素true项目风险识别的结果产生不当的影响程度。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-07-17 10:21:00', '李金印', '2020-07-17 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('911', '888', '风险转移从长期来看总是有益的。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-07-18 10:21:00', '李金印', '2020-07-18 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('912', '888', '选择供应商时，成本是唯一的决定因素。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-07-19 10:21:00', '李金印', '2020-07-19 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('913', '888', '只有合同双方都履行完各自的义务时，合同才能终止。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-07-20 10:21:00', '李金印', '2020-07-20 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('914', '888', '奖励合同可以激励供应商想方设法地降低成本。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-07-21 10:21:00', '李金印', '2020-07-21 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('915', '888', '经济订货量是使订货成本和储存成本之和最小时的订货量。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-07-22 10:21:00', '李金印', '2020-07-22 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('916', '888', '一般来说，公开招标采购比邀请招标采购能找到更多的投标人。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-07-23 10:21:00', '李金印', '2020-07-23 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('917', '888', 'true所有供应商的认证数量应该都是相同的。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-07-24 10:21:00', '李金印', '2020-07-24 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('918', '888', '只要上级能让下级与自己保持一致，就说明沟通良好。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-07-25 10:21:00', '李金印', '2020-07-25 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('919', '888', '在项目中只要沟通得好，什么问题都能解决。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-07-26 10:21:00', '李金印', '2020-07-26 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('920', '888', '由于相同背景，相同资历的人易于沟通，因此，一个单位只要全招聘相同背景、资历的人，就能提高工作效率。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-07-27 10:21:00', '李金印', '2020-07-27 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('921', '888', '在正式组织中，沟通困难通常是组织管理系统出现了问题，而不是产生问题的原因。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-07-28 10:21:00', '李金印', '2020-07-28 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('922', '888', '善于倾听就是要同意true方的意见。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-07-29 10:21:00', '李金印', '2020-07-29 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('923', '888', '在商务谈判中，应当尽量让true方了解自己，以促进沟通。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-07-30 10:21:00', '李金印', '2020-07-30 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('924', '888', '在企业中，当人们偏好非正式沟通时，说明正式沟通出现了问题。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-07-31 10:21:00', '李金印', '2020-07-31 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('925', '888', '我没有张口说话就说明我没有进行沟通。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-08-01 10:21:00', '李金印', '2020-08-01 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('926', '888', '管理沟通是围绕企业经营而进行的信息传递过程，与外界公众的交往不属于管理沟通。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-08-02 10:21:00', '李金印', '2020-08-02 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('927', '888', '内部沟通是组织内上下级之间、部门之间、员工之间的沟通。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-08-03 10:21:00', '李金印', '2020-08-03 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('928', '888', '身体语言沟通是通过动态的目光、表情、手势或静态的身体姿势、衣着打扮和空间距离等形式来实现的沟通。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-08-04 10:21:00', '李金印', '2020-08-04 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('929', '888', '空间距离也能传递信息。亲密空间的距离是0到50公分，表示一般朋友、同事之间的融洽关系。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-08-05 10:21:00', '李金印', '2020-08-05 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('930', '888', '口头语言或书面语言容易掩饰人的内心，而身体语言却往往会流露出真实的信息。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-08-06 10:21:00', '李金印', '2020-08-06 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('931', '888', '倾听不仅获得信息,而且更加了解我们自己及我们的思维的途径。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-08-07 10:21:00', '李金印', '2020-08-07 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('932', '888', '倾听就应该集中精力，默默地听。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-08-08 10:21:00', '李金印', '2020-08-08 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('933', '888', '书面沟通的优点是长期保存、有形展示、受法律保护，而且语言严密、清晰；缺点是传递速度较慢，难以即使反馈。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-08-09 10:21:00', '李金印', '2020-08-09 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('934', '888', '倾听就是耳朵听，不用注意true方的表情、动作。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-08-10 10:21:00', '李金印', '2020-08-10 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('935', '888', '有效书面沟通的基本要求包括了树立良好信誉和建立友善关系。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-08-11 10:21:00', '李金印', '2020-08-11 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('936', '888', '组织的纵向沟通中，时常会产生信息漏斗状况，最好的解决办法就是强化反馈机制。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-08-12 10:21:00', '李金印', '2020-08-12 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('937', '888', '作为管理层，要尽可能限制非正式的上行沟通。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-08-13 10:21:00', '李金印', '2020-08-13 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('938', '888', '按沟通的方向分类，沟通可分为上行沟通、下行沟通、平行沟通和非组织沟通。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-08-14 10:21:00', '李金印', '2020-08-14 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('939', '888', '非正式沟通的优点是传递速度快；缺点是难于控制，信息容易失真。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-08-15 10:21:00', '李金印', '2020-08-15 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('940', '888', '当下级的成熟度处于不成熟阶段（无能力无意愿）时，领导要true下属的工作作出明确的规定，甚至规定了什么时候做和怎么做，即强调true下属明确而具体的指导,即命令型的沟通方式最有效。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-08-16 10:21:00', '李金印', '2020-08-16 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('941', '888', '当下级进入比较成熟阶段（有能力无意愿）时，领导者应与下属共同参与决策，给下属提供便利条件，激励下属积极工作,即参与型的沟通方式最有效。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-08-17 10:21:00', '李金印', '2020-08-17 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('942', '888', '与互动型的领导沟通时，可以省掉话家常的时间，直接谈他们感兴趣而且实质性的东西。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-08-18 10:21:00', '李金印', '2020-08-18 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('943', '888', '首因效应，就是说人们根据最初获得的信息所形成的印象不易改变，甚至会左右true后来获得的新信息的解释。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-08-19 10:21:00', '李金印', '2020-08-19 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('944', '888', '在商务谈判中有时候卖方报低价会有利于促成交易，并为己方争取到利益。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-08-20 10:21:00', '李金印', '2020-08-20 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('945', '888', '《中华人民共和国招标投标法》自2001年1月1日起施行。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-08-21 10:21:00', '李金印', '2020-08-21 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('946', '888', '任何单位和个人不得将依法必须进行招标的项目化整为零或者以其他任何方式规避招标。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-08-22 10:21:00', '李金印', '2020-08-22 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('947', '888', '依法必须进行招标的项目，其招标投标活动不受地区或部门的限制。任何单位和个人不得违法限制或者排斥本地区、本系统以外的法人或其他组织参加投标，不得以任何方式干涉招标投标活动。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-08-23 10:21:00', '李金印', '2020-08-23 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('948', '888', '某招标人在招标文件中规定了true本省的投标人在同等条件下将优先于外省的投标人中标，根据《招标投标法》，这个规定违反了公开原则。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-08-24 10:21:00', '李金印', '2020-08-24 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('949', '888', '招标人在招标前应向建设行政主管部门办理招标备案。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-08-25 10:21:00', '李金印', '2020-08-25 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('950', '888', '招标人有权自行选择招标代理机构，委托其办理招标事宜。但是依法必须进行招标的项目，招标人必须委托招标代理机构，不得自行办理招标事宜。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-08-26 10:21:00', '李金印', '2020-08-26 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('951', '888', '依法必须进行招标的项目，招标人自行办理招标事宜的，应当向其上级监督管理部门审批。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-08-27 10:21:00', '李金印', '2020-08-27 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('952', '888', '从事工程建设项目招标代理业务的招标代理机构，其资格由国务院建设行政主管部门认定。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-08-28 10:21:00', '李金印', '2020-08-28 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('953', '888', '招标代理机构应当在招标人委托的范围内办理招标事宜，并遵守《招标投标法》关于招标代理事项的规定。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-08-29 10:21:00', '李金印', '2020-08-29 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('954', '888', '公开招标和邀请招标都应该在国家或者地方指定媒介上发布招标信息。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-08-30 10:21:00', '李金印', '2020-08-30 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('955', '888', '依法必须进行招标的项目，其招标投标活动不受地区或者部门的限制。任何单位和个人不得违法限制或者排斥本地区、本系统以外的法人或者其他组织参加投标。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-08-31 10:21:00', '李金印', '2020-08-31 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('956', '888', '招标人不得以不合理的条件限制或者排斥潜在投标人，true潜在投标人实行歧视待遇，强制要求投标人组成联合体共同投标，或者限制投标人之间的竞争。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-09-01 10:21:00', '李金印', '2020-09-01 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('957', '888', '招标文件应当包括招标项目的技术要求、true投标人资格审查的标准、投标报价要求、标底和评标标准等所有实质性要求和条件以及拟签订合同的主要条款。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-09-02 10:21:00', '李金印', '2020-09-02 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('958', '888', '招标人设有标底的，标底应当保密，并在评标时作为参考。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-09-03 10:21:00', '李金印', '2020-09-03 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('959', '888', '招标人true已发出的招标文件进行必要的澄清或者修改的，应当在招标文件要求提交投标文件截止时间至少20日前，以书面形式通知所有招标文件收受人。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-09-04 10:21:00', '李金印', '2020-09-04 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('960', '888', '招标项目属于建设施工的，投标文件的内容应当包括拟派出的项目负责人与主要技术人员的简历、业绩和拟用于完成招标项目的机械设备等。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-09-05 10:21:00', '李金印', '2020-09-05 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('961', '888', '投标人应当在招标文件要求提交投标文件的截止时间前，将投标文件送达投标地点。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-09-06 10:21:00', '李金印', '2020-09-06 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('962', '888', '投标人应当按照招标文件的要求编制投标文件。投标文件应当true招标文件提出的所有要求和条件作出响应。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-09-07 10:21:00', '李金印', '2020-09-07 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('963', '888', '招标人收到投标文件后，应当立即当场查验。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-09-08 10:21:00', '李金印', '2020-09-08 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('964', '888', '投标人少于三个的，招标人应当依照《招标投标法》重新招标。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-09-09 10:21:00', '李金印', '2020-09-09 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('965', '888', '投标人在招标文件要求提交投标文件的截止时间前，可以补充、修改或者撤回已提交的投标文件，并口头通知招标人。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-09-10 10:21:00', '李金印', '2020-09-10 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('966', '888', '两个以上法人或者其他组织可以组成一个联合体，以一个投标人的身份共同投标。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-09-11 10:21:00', '李金印', '2020-09-11 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('967', '888', '联合体投标各方均应具备承担招标项目的能力，同一专业组成的联合体，资质等级按照就高不就低的原则确定。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-09-12 10:21:00', '李金印', '2020-09-12 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('968', '888', '联合体中标的，联合体各方应当分别与招标人签定合同，就中标项目向招标人承担连带责任。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-09-13 10:21:00', '李金印', '2020-09-13 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('969', '888', '由同一专业的单位组成的联合体，按照资质等级较低的单位确定资质等级。联合体中标的，联合体应当指定一方与招标人签订合同。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-09-14 10:21:00', '李金印', '2020-09-14 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('970', '888', '开标应在招标文件确定的提交投标文件截止时间之后公开尽快进行。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-09-15 10:21:00', '李金印', '2020-09-15 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('971', '888', '开标地点应当为建设行政主管部门指定的场所', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-09-16 10:21:00', '李金印', '2020-09-16 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('972', '888', '开标由评标委员会组长主持。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-09-17 10:21:00', '李金印', '2020-09-17 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('973', '888', '招标人和中标人应当自中标人接到中标通知书之日起30日内，按照招标文件和中标人的投标文件订立书面合同。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-09-18 10:21:00', '李金印', '2020-09-18 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('974', '888', '开标时，由投标人或者其推选的代表检查投标文件的密封情况，并由招标人委托的公证机构检查并公证。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-09-19 10:21:00', '李金印', '2020-09-19 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('975', '888', '为加强工程项目管理，项目主管部门人员可以担当评标委员会成员。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-09-20 10:21:00', '李金印', '2020-09-20 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('976', '888', '依法必须进行招标的项目，其评标委员会由招标人的代表和有关技术、经济等方面的专家组成，成员人数为五人以上单数，其中技术、经济等方面的专家不得少于成员总数的三分之一。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-09-21 10:21:00', '李金印', '2020-09-21 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('977', '888', '与投标人有利害关系的人不得成为评标委员会成员。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-09-22 10:21:00', '李金印', '2020-09-22 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('978', '888', '依据《招标投标法》，某建设单位就一个办公楼群项目的项目招标，该项目的评标工作由该建设单位依法组建的评标委员会来完成。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-09-23 10:21:00', '李金印', '2020-09-23 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('979', '888', '参加评标的专家应当从事相关领域工作满十年并具有高级职称或者具有同等专业水平，由招标人从国务院有关部门或者省、自治区、直辖市人民政府有关部门提供的专家名册或者招标代理机构的专家库内的相关专业的专家名单中确定。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-09-24 10:21:00', '李金印', '2020-09-24 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('980', '888', '为了有助于true投标文件进行审查、评估和比较，招标方有权向投标方质疑，请投标方澄清其投标内容。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-09-25 10:21:00', '李金印', '2020-09-25 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('981', '888', '评标委员会可以要求投标人true投标文件中含义不明确的内容作必要的澄清或者说明，但是澄清或者说明不得超出投标文件的范围或者改变投标文件的实质性内容。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-09-26 10:21:00', '李金印', '2020-09-26 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('982', '888', '招标人根据评标委员会提出的书面评标报告和推荐的中标候选人确定中标人，但招标人不得授权评标委员会直接确定中标人。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-09-27 10:21:00', '李金印', '2020-09-27 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('983', '888', '评标委员会完成评标后，应当向招标人提出书面评标报告，并确定合格的中标候选人。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-09-28 10:21:00', '李金印', '2020-09-28 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('984', '888', '投标人的投标如果能够满足招标文件的实质性要求，并且投标的价格最低，就可以中标。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-09-29 10:21:00', '李金印', '2020-09-29 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('985', '888', '依法必须进行招标的项目，在开标、评标过程中中标人有违反招标法规定的，中标无效，剩余投标方满足法定竞标要求的，仍须依法重新进行招标。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-09-30 10:21:00', '李金印', '2020-09-30 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('986', '888', '评标委员会经评审，认为所有投标都不符合招标文件要求的，可以否决所有投标。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-10-01 10:21:00', '李金印', '2020-10-01 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('987', '888', '有关投标文件的审查、澄清、评估和比较以及有关授予合同的意向的一切情况都不得透露给任一投标方或与上述评标工作无关的人员。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-10-02 10:21:00', '李金印', '2020-10-02 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('988', '888', '评标委员会成员应当客观、公正地履行职务，遵守职业道德，true所提出的评审意见承担个人责任。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-10-03 10:21:00', '李金印', '2020-10-03 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('989', '888', '评标委员会成员应当客观、公正地履行职务，遵守职业道德，true所提出的评审意见承担集体责任。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-10-04 10:21:00', '李金印', '2020-10-04 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('990', '888', '评标委员会成员不得私下接触投标人，不得收受投标人的财物或者其他好处。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-10-05 10:21:00', '李金印', '2020-10-05 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('991', '888', '中标通知书发出后，招标人改变中标结果的，或者中标人放弃中标项目的，应当依法承担法律责任。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-10-06 10:21:00', '李金印', '2020-10-06 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('992', '888', '依法必须进行招标的项目，招标人应当自确定中标人之日起十五日内，向有关行政监督部门提交招标投标情况的书面报告。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-10-07 10:21:00', '李金印', '2020-10-07 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('993', '888', '中标人按照合同约定或者经招标人同意，可以将中标项目的部分主体、关键性工作分包给他人完成。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-10-08 10:21:00', '李金印', '2020-10-08 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('994', '888', '接受分包的人应当具备相应的资格条件，并不得再次分包。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-10-09 10:21:00', '李金印', '2020-10-09 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('995', '888', '中标人应当就分包项目向招标人负责，接受分包的人就分包项目承担连带责任。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-10-10 10:21:00', '李金印', '2020-10-10 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('996', '888', '中标人不得向他人转让中标项目，也不得将中标项目肢解后分别向他人转让。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-10-11 10:21:00', '李金印', '2020-10-11 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('997', '888', '招标代理机构泄露应当保密的与招标投标活动有关的情况和资料的，或招标人向中他人透露已获取招标文件的潜在投标人的名称、数量等情况，影响中标结果的，中标无效。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-10-12 10:21:00', '李金印', '2020-10-12 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('998', '888', '招标人以不合理的条件限制或者排斥潜在投标人的，true潜在投标人实行歧视待遇的，强制要求投标人组成联合体共同投标的，或者限制投标人之间竞争的，责令改正，可以处一万元以上五万元以下的罚款。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-10-13 10:21:00', '李金印', '2020-10-13 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('999', '888', '投标人以他人名义投标或以其他方式弄虚作假，骗取中标的，中标无效，给招标人造成损失的，依法承担赔偿责任。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-10-14 10:21:00', '李金印', '2020-10-14 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('1000', '888', '《招标投标法》规定的行政处罚，由国务院规定的有关行政监督部门决定。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-10-15 10:21:00', '李金印', '2020-10-15 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('1001', '888', 'true招标投标活动依法负有行政监督职责的国家机关工作人员徇私舞弊、滥用职权或者玩忽职守，构成犯罪的，依法追究刑事责任；不构成犯罪的，依法给予行政处分。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-10-16 10:21:00', '李金印', '2020-10-16 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('1002', '888', '投标人和其他利害关系人认为招标投标活动不符合本法有关规定的，有权向招标人提出异议或者依法向有关行政监督部门投诉。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-10-17 10:21:00', '李金印', '2020-10-17 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('1003', '888', '涉及国家安全、国家秘密、抢险救灾或者属于利用扶贫资金实行以工代赈、需要使用农民工等特殊情况，不适宜进行招标的项目，按照国家有关规定可以不进行招标。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-10-18 10:21:00', '李金印', '2020-10-18 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('1004', '888', '使用国际组织或者外国政府贷款、援助资金的项目进行招标，贷款方、资金提供方true招标投标的具体条件和程序有不同规定的，可以适用其规定，但违背中华人民共和国的社会公共利益的除外。', null, null, null, null, null, '对', '15', '10001', '李金印', '2020-10-19 10:21:00', '李金印', '2020-10-19 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('1005', '888', '依法必须进行招标的项目违反本法规定，中标无效的，应当依照本法规定的中标条件从其余投标人中重新确定中标人。', null, null, null, null, null, '错', '15', '10001', '李金印', '2020-10-20 10:21:00', '李金印', '2020-10-20 10:21:00', null, '1', '2');
INSERT INTO `question_question` VALUES ('1006', '10', '现需要将一个C段的IP地址分配给8个营业厅使用，每个营业厅具有32个IP地址，问划分后的子网掩码的数目是多少位？', '', '23,24,25,26', '24', '25', '26', 'A', '10', '10001', '皮卫军', '2019-10-28 21:48:43', '皮卫军', '2019-10-28 21:48:55', '', '1', '1');
INSERT INTO `question_question` VALUES ('1007', '10', '属于传输层协议的是', null, 'IP', 'ARP', 'TCP', 'RARP', 'C', '10', '10001', '皮卫军', '2019-10-28 21:51:20', '皮卫军', '2019-10-28 21:51:32', '', '1', '2');
INSERT INTO `question_question` VALUES ('1008', '10', '以下属于物理层的设备是', null, '中继器', '以太网交换机', '桥', '网关', 'A', '10', '10001', '皮卫军', '2019-10-29 10:33:54', '皮卫军', '2019-10-29 10:34:04', '', '1', '1');
INSERT INTO `question_question` VALUES ('1009', '10', '在以太网中，是根据___地址来区分不同的设备的', null, 'LLC地址', 'MAC地址', 'IP地址', 'IPX地址', 'B', '10', '10001', '皮卫军', '2019-10-29 10:37:13', '皮卫军', '2019-10-29 10:37:22', '', '1', '1');
INSERT INTO `question_question` VALUES ('1010', '10', 'IEEE802.u标准是指', null, '以太网', '快速以太网', '定牌环网', 'FDDI网', 'B', '10', '10001', '皮卫军', '2019-10-29 10:39:10', '皮卫军', '2019-10-29 10:39:21', '', '1', '1');
INSERT INTO `question_question` VALUES ('1011', '10', 'FDDI使用的是___局域网技术。', null, '以太网', '快速以太网', '令牌环网', '令牌总线', 'C', '10', '10001', '皮卫军', '2019-10-29 10:41:27', '皮卫军', '2019-10-29 10:41:36', '', '1', '1');
INSERT INTO `question_question` VALUES ('1012', '10', 'TCP和UDP协议相似之处是', null, '面向连接的协议', '面向非连接的协议', '传输层协议', '以上均不对', 'C', '10', '10001', '皮卫军', '2019-10-29 10:44:15', '皮卫军', '2019-10-29 10:44:19', '', '1', '1');
INSERT INTO `question_question` VALUES ('1013', '10', 'ARP协议的作用是__', null, '将端口号映射到IP地址', '连接IP层和TCP层', '广播IP地址', '将IP地址映射到第二层地址', 'D', '10', '10001', '皮卫军', '2019-10-29 10:47:05', '皮卫军', '2019-10-29 10:47:08', '', '1', '1');
INSERT INTO `question_question` VALUES ('1014', '25', '1+1=', 'Desert.jpg', '1', '2', '3', '4', 'A', '1', '1', null, null, null, null, null, null, '1');
INSERT INTO `question_question` VALUES ('1015', '25', 'sdfdsfsadfds', null, '1', '1', '1', '1', '1', '1', '1', null, null, null, null, null, null, '1');
INSERT INTO `question_question` VALUES ('1020', '26', '54', null, '', '', '', '', '2', '2', '1', null, null, null, null, null, null, null);
INSERT INTO `question_question` VALUES ('1025', '26', '1', null, '3', '3', '44', '5', '2', '10', '1', null, null, null, null, null, null, '1');
INSERT INTO `question_question` VALUES ('1026', null, '67', null, '', '', '', '', '89', '9', '1', null, null, null, null, null, null, '1');
INSERT INTO `question_question` VALUES ('1029', '25', '134', null, '2', '234', '243', '234', 'A', '1', '1', null, null, null, null, null, null, '1');
INSERT INTO `question_question` VALUES ('1030', '25', '23', null, '2345', '345', '345', '345', '345', '345', '1', null, null, null, null, null, null, '1');
INSERT INTO `question_question` VALUES ('1031', '25', '112313', null, '沙发', '说法', '是否', '撒发送到', 'A', '10', '1', null, null, null, null, null, null, '1');
INSERT INTO `question_question` VALUES ('1032', '26', '12sss', null, '试试', '孙菲菲', '胜多负少的方式', 'sdf', 'A', '1', '1', null, null, null, null, null, null, '1');
INSERT INTO `question_question` VALUES ('1033', '26', '张诚忠是sb', 'D:\\workspace2\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\education\\upload', '', '', '', '', '对', '1', '1', 'zl', '2019-10-30 10:33:22', null, null, null, null, '2');
INSERT INTO `question_question` VALUES ('1036', '888', 'IP地址为10.10.65.1，子网掩码为255.255.240.0，则该IP地址中，网络地址占前________位。', '', '', '', '', '', '20', '10', '10001', '李金印', '2009-01-01 04:00:53', '李金印', '2009-01-01 04:01:03', '', '1', '3');
INSERT INTO `question_question` VALUES ('1037', '888', 'ARP协议的作用是__________ 。', null, null, null, null, null, '将IP地址映射到第二层地址', '10', '10001', '李金印', '2009-01-01 04:03:53', '李金印', '2009-01-01 04:04:06', null, '1', '3');
INSERT INTO `question_question` VALUES ('1038', '2', '下列传输介质中抗干扰性最强的是', null, '微波', '同轴电缆', '同轴电缆', '双绞线', 'B', '10', null, '皮卫军', '2019-11-01 16:20:07', '皮卫军', '2019-11-01 16:20:07', '', '1', '1');
INSERT INTO `question_question` VALUES ('1039', '2', '对学校办公室的各个电脑进行联网，这个网络属于', null, '广域网', '对等网', '对等网', '城域网', 'B', '10', null, '皮卫军', '2019-11-01 16:28:41', '皮卫军', '2019-11-01 16:28:41', '', '1', '1');
INSERT INTO `question_question` VALUES ('1040', '2', 'ARP协议的作用是', null, '将端口号映射到IP地址', '广播IP地址', '广播IP地址', '将IP地址映射到第二层地址', 'D', '10', null, '皮卫军', '2019-11-01 21:32:01', '皮卫军', '2019-11-01 21:32:01', '', '1', '1');
INSERT INTO `question_question` VALUES ('1041', '2', '路由选择协议位于', null, '物理层', '网络层', '网络层', '应用层', 'C', '10', null, '皮卫军', '2019-11-01 21:44:07', '皮卫军', '2019-11-01 21:44:07', '', '1', '1');
INSERT INTO `question_question` VALUES ('1042', '2', '在局域网中，MAC指的是', null, '逻辑链路控制子层', '物理层', '物理层', '数据链路层', 'B', '10', null, '皮卫军', '2019-11-01 21:48:48', '皮卫军', '2019-11-01 21:48:48', '', '1', '1');
INSERT INTO `question_question` VALUES ('1043', '2', '传输层可以通过（）标识不同应用', null, '物理地址', 'IP地址', 'IP地址', '逻辑地址', 'B', '10', null, '皮卫军', '2019-11-01 21:50:13', '皮卫军', '2019-11-01 21:50:13', '', '1', '1');
INSERT INTO `question_question` VALUES ('1044', '2', '第二代计算机网络的主要特点是', null, '计算机-计算机网络', '国际网络体系结构标准化', '国际网络体系结构标准化', '各计算机制造网络结构标准化', 'A', '10', null, '皮卫军', '2019-11-01 21:52:56', '皮卫军', '2019-11-01 21:52:56', '', '1', '1');
INSERT INTO `question_question` VALUES ('1045', '2', '在Internet上浏览时，浏览器和www服务器之间传输网页使用的协议是', null, 'IP', 'FTP', 'FTP', 'Telnet', 'B', '10', null, '皮卫军', '2019-11-01 21:55:11', '皮卫军', '2019-11-01 21:55:11', '', '1', '1');
INSERT INTO `question_question` VALUES ('1046', '2', '浏览器与Web服务器之间使用的协议是', null, 'DNS', 'HTTP', 'HTTP', 'SMTP', 'C', '10', null, '皮卫军', '2019-11-01 21:56:24', '皮卫军', '2019-11-01 21:56:24', '', '1', '1');
INSERT INTO `question_question` VALUES ('1047', '2', 'DNS服务器和客户机设置完毕后，有三个命令可以测试其设置是否正确，下面不是其中之一的是。', null, 'PING', 'IPCONFIG', 'IPCONFIG', 'NSLOOKUP', 'B', '10', null, '皮卫军', '2019-11-01 21:58:11', '皮卫军', '2019-11-01 21:58:11', '', '1', '1');
INSERT INTO `question_question` VALUES ('1048', '2', '能从数据信号波形中提取同步信号的典型编码是', null, '归零码', '定比码', '定比码', '曼特诗编码', 'D', '10', null, '皮卫军', '2019-11-01 21:59:56', '皮卫军', '2019-11-01 21:59:56', '', '1', '1');

-- ----------------------------
-- Table structure for `question_question_type`
-- ----------------------------
DROP TABLE IF EXISTS `question_question_type`;
CREATE TABLE `question_question_type` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `Question_type` varchar(20) DEFAULT NULL,
  `Corp_id` int(8) DEFAULT NULL,
  `Create_by` varchar(20) DEFAULT NULL,
  `Create_time` datetime DEFAULT NULL,
  `Modify_by` varchar(20) DEFAULT NULL,
  `Modify_time` datetime DEFAULT NULL,
  `Status` bit(4) DEFAULT NULL,
  `Version` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question_question_type
-- ----------------------------
INSERT INTO `question_question_type` VALUES ('1', '选择题', null, null, null, null, null, null, null);
INSERT INTO `question_question_type` VALUES ('2', '判断题', '1', '张三', '2019-10-22 17:13:57', '张三', '2019-10-22 17:14:08', '', '1');
INSERT INTO `question_question_type` VALUES ('3', '填空题', '1', '张三', '2019-10-24 10:52:06', '张三', '2019-10-24 10:52:14', '', '1');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `Stu_name` varchar(20) DEFAULT NULL,
  `Stu_pasword` varchar(20) DEFAULT NULL,
  `Corp_id` int(20) DEFAULT NULL,
  `Create_by` varchar(20) DEFAULT NULL,
  `Create_time` datetime DEFAULT NULL,
  `Modify_by` varchar(20) DEFAULT NULL,
  `Modify_time` datetime DEFAULT NULL,
  `Status` bit(1) DEFAULT NULL,
  `Version` int(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', 'zl', '123', '1', '', null, '', null, null, null);
INSERT INTO `student` VALUES ('3', '朱林', '123', '10000', '张诚忠', '2019-10-10 00:00:00', 'zcz', '2019-10-21 00:00:00', '', '1');
INSERT INTO `student` VALUES ('5', 'sdfq', '54549898', '168498', '', null, '老朱', null, null, null);
INSERT INTO `student` VALUES ('6', '老朱', '123456', '1554', 'zcz', null, '', null, null, null);
INSERT INTO `student` VALUES ('7', '老张', '123456', null, null, null, null, null, null, null);
INSERT INTO `student` VALUES ('110', '李金印', '123456', '10001', 'zz', '2019-10-23 09:30:58', null, null, null, null);
INSERT INTO `student` VALUES ('111', '168207145', '123456', '100', 'zcz', '2019-10-23 00:00:00', 'czx', '2019-10-25 00:00:00', '', '2');
INSERT INTO `student` VALUES ('113', '2313', '321', '213', '3213', null, null, null, null, null);
INSERT INTO `student` VALUES ('120', '李云龙', '123456', null, null, null, null, null, null, null);
INSERT INTO `student` VALUES ('122', 'zcz', '123456', '10086', '老朱', '2019-10-10 00:00:00', '老朱', '2019-10-21 00:00:00', '', '1');
INSERT INTO `student` VALUES ('123', '李白不喝酒', '123456', '10001', '李金印', '2019-10-25 21:15:52', '李金印', '2019-10-25 21:15:58', '', '1');
INSERT INTO `student` VALUES ('124', '张三', '123456', null, 'zcz', '2019-10-28 15:43:20', null, null, null, null);
INSERT INTO `student` VALUES ('125', '大宝', '123456', '12580', '', null, '', null, '', '1');

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `Teacher_name` varchar(20) DEFAULT NULL,
  `Teacher_password` varchar(20) DEFAULT NULL,
  `Corp_id` int(20) DEFAULT NULL,
  `Create_by` varchar(20) DEFAULT NULL,
  `Create_time` datetime DEFAULT NULL,
  `Modify_by` varchar(20) DEFAULT NULL,
  `Modify_time` datetime DEFAULT NULL,
  `Status` bit(1) DEFAULT NULL,
  `Version` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '张小保', '123456', '10001', null, null, null, null, null, null);
INSERT INTO `teacher` VALUES ('2', '168207145', '123456', '10086', null, null, null, null, null, null);
INSERT INTO `teacher` VALUES ('3', '李哥', '123456', '10001', null, null, null, null, null, null);
INSERT INTO `teacher` VALUES ('4', 'lxs', '123456', '12580', null, null, null, null, null, null);
INSERT INTO `teacher` VALUES ('5', 'zl', '123', '10086', null, null, null, null, null, null);
INSERT INTO `teacher` VALUES ('6', 'zll', '789', '1', null, null, null, null, null, null);
INSERT INTO `teacher` VALUES ('7', '李金印', '123456', '1', null, null, null, null, null, null);
INSERT INTO `teacher` VALUES ('8', '皮卫军', '123456', '10001', null, null, null, null, null, null);
