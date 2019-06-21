/*
Navicat MySQL Data Transfer

Source Server         : hxw
Source Server Version : 50726
Source Host           : 114.115.155.218:3306
Source Database       : boot_backend

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2019-06-19 08:26:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for authroutes
-- ----------------------------
DROP TABLE IF EXISTS `authroutes`;
CREATE TABLE `authroutes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `path` varchar(128) DEFAULT NULL,
  `AUTHORS` varchar(64) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of authroutes
-- ----------------------------
INSERT INTO `authroutes` VALUES ('1', 'Dashboard', '/dashboard', '[\"admin\",\"user\"]', '0');
INSERT INTO `authroutes` VALUES ('2', '分析页', '/dashboard/analysis', '[\"admin\",\"user\"]', '1');
INSERT INTO `authroutes` VALUES ('3', '监控页', '/dashboard/monitor', '[\"admin\",\"user\"]', '1');
INSERT INTO `authroutes` VALUES ('4', '工作台', '/dashboard/workplace', '[\"admin\",\"user\"]', '1');

-- ----------------------------
-- Table structure for daoyuncourse
-- ----------------------------
DROP TABLE IF EXISTS `daoyuncourse`;
CREATE TABLE `daoyuncourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coursename` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `teachername` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `time` varchar(128) DEFAULT NULL,
  `intro` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `info` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of daoyuncourse
-- ----------------------------
INSERT INTO `daoyuncourse` VALUES ('4', '高等数学', '张三', '2019-03-16 14:00', '本课程是高等数学', '...');
INSERT INTO `daoyuncourse` VALUES ('5', '高等数学', '张三', '2019-03-16 14:00', '本课程是高等数学', '...');
INSERT INTO `daoyuncourse` VALUES ('16', '1', '1', null, '1', null);

-- ----------------------------
-- Table structure for daoyunrole
-- ----------------------------
DROP TABLE IF EXISTS `daoyunrole`;
CREATE TABLE `daoyunrole` (
  `note` varchar(255) DEFAULT NULL,
  `uniqeKey` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of daoyunrole
-- ----------------------------
INSERT INTO `daoyunrole` VALUES ('拥有所有权限', 'admin', '0', '管理员', '0');
INSERT INTO `daoyunrole` VALUES ('拥有教师相关权限', 'teacher', '1', '老师', '0');
INSERT INTO `daoyunrole` VALUES ('拥有学生相关权限', 'student', '2', '学生', '0');

-- ----------------------------
-- Table structure for daoyunuser
-- ----------------------------
DROP TABLE IF EXISTS `daoyunuser`;
CREATE TABLE `daoyunuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `avatar` varchar(128) DEFAULT NULL,
  `userid` varchar(64) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `signature` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `group` varchar(64) DEFAULT NULL,
  `notifyCount` int(11) DEFAULT NULL,
  `unreadCount` int(11) DEFAULT NULL,
  `country` varchar(32) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  `role_id` int(11) NOT NULL,
  `status` varchar(16) NOT NULL,
  `geographic` varchar(300) DEFAULT NULL,
  `tags` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `daoyunuser_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `daoyunrole` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of daoyunuser
-- ----------------------------
INSERT INTO `daoyunuser` VALUES ('1', 'admin', 'https://gw.alipayobjects.com/zos/antfincdn/XAosXuNZyF/BiazfanxmamNRoxxVxka.png', '00000001', 'antdesign@alipay.com', '海纳百川，有容乃大', '交互专家', '蚂蚁金服－某某某事业群－某某平台部－某某技术部－UED', '12', '11', 'USA', '西湖区工专路 77 号', '15900000001', '123456', '0', '0', '', '');
INSERT INTO `daoyunuser` VALUES ('2', 'teacher', 'https://gw.alipayobjects.com/zos/antfincdn/XAosXuNZyF/BiazfanxmamNRoxxVxka.png', '00000002', 'gaobo@qq.com', '海纳百川，有容乃大', '交互专家', '蚂蚁金服－某某某事业群－某某平台部－某某技术部－UED', '12', '11', 'China', '不详', '15900000002', '123456', '1', '0', null, null);
INSERT INTO `daoyunuser` VALUES ('3', 'student', 'https://gw.alipayobjects.com/zos/antfincdn/XAosXuNZyF/BiazfanxmamNRoxxVxka.png', '00000003', 'hjf@qq.com', '海纳百川，有容乃大', '交互专家', '蚂蚁金服－某某某事业群－某某平台部－某某技术部－UED', '12', '11', 'Canada', '不详', '15900000003', '123456', '2', '0', null, null);

-- ----------------------------
-- Table structure for dict
-- ----------------------------
DROP TABLE IF EXISTS `dict`;
CREATE TABLE `dict` (
  `dictId` varchar(32) NOT NULL,
  `key` varchar(16) NOT NULL,
  `value` varchar(64) NOT NULL,
  `dictName` varchar(64) NOT NULL,
  PRIMARY KEY (`dictId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict
-- ----------------------------
INSERT INTO `dict` VALUES ('1', '1', '男', '性别');
INSERT INTO `dict` VALUES ('2', '2', '女', '性别');
INSERT INTO `dict` VALUES ('3', '1', '清华大学', '学校');
INSERT INTO `dict` VALUES ('4', '2', '北京大学', '学校');
INSERT INTO `dict` VALUES ('5', '3', '福州大学', '学校');

-- ----------------------------
-- Table structure for file_info
-- ----------------------------
DROP TABLE IF EXISTS `file_info`;
CREATE TABLE `file_info` (
  `id` varchar(32) NOT NULL COMMENT '文件md5',
  `contentType` varchar(128) NOT NULL,
  `size` int(11) NOT NULL,
  `path` varchar(255) NOT NULL COMMENT '物理路径',
  `url` varchar(1024) NOT NULL,
  `type` int(1) NOT NULL,
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of file_info
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `CALENDAR_NAME` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `CRON_EXPRESSION` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TIME_ZONE_ID` varchar(80) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `ENTRY_ID` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `INSTANCE_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) COLLATE utf8mb4_bin NOT NULL,
  `JOB_NAME` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `JOB_GROUP` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `JOB_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `JOB_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `DESCRIPTION` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `IS_DURABLE` varchar(1) COLLATE utf8mb4_bin NOT NULL,
  `IS_NONCONCURRENT` varchar(1) COLLATE utf8mb4_bin NOT NULL,
  `IS_UPDATE_DATA` varchar(1) COLLATE utf8mb4_bin NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) COLLATE utf8mb4_bin NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `LOCK_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('adminQuartzScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('adminQuartzScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `INSTANCE_NAME` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('adminQuartzScheduler', 'hxw1560250785545', '1560251477202', '15000');

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `STR_PROP_1` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  `STR_PROP_2` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  `STR_PROP_3` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `JOB_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `JOB_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `DESCRIPTION` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_TYPE` varchar(8) COLLATE utf8mb4_bin NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logs
-- ----------------------------
DROP TABLE IF EXISTS `sys_logs`;
CREATE TABLE `sys_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `module` varchar(50) DEFAULT NULL COMMENT '模块名',
  `flag` tinyint(4) NOT NULL DEFAULT '1' COMMENT '成功失败',
  `remark` text COMMENT '备注',
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `createTime` (`createTime`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_logs
-- ----------------------------
INSERT INTO `sys_logs` VALUES ('1', '1', 'web端登陆', '1', null, '2019-03-26 09:41:30');
INSERT INTO `sys_logs` VALUES ('2', '1', 'web端登陆', '1', null, '2019-03-26 10:03:06');
INSERT INTO `sys_logs` VALUES ('3', '1', '生成代码', '1', null, '2019-03-26 10:04:22');
INSERT INTO `sys_logs` VALUES ('4', '1', 'web端登陆', '1', null, '2019-03-26 10:11:06');
INSERT INTO `sys_logs` VALUES ('5', '1', '修改菜单', '1', null, '2019-03-26 10:15:41');
INSERT INTO `sys_logs` VALUES ('6', '1', '退出', '1', null, '2019-03-26 10:16:07');
INSERT INTO `sys_logs` VALUES ('7', '1', 'web端登陆', '1', null, '2019-03-26 10:16:08');
INSERT INTO `sys_logs` VALUES ('8', '1', 'web端登陆', '1', null, '2019-03-26 10:20:10');
INSERT INTO `sys_logs` VALUES ('9', '1', '修改菜单', '1', null, '2019-03-26 10:24:08');
INSERT INTO `sys_logs` VALUES ('10', '1', '保存菜单', '1', null, '2019-03-26 10:25:38');
INSERT INTO `sys_logs` VALUES ('11', '1', '退出', '1', null, '2019-03-26 10:25:57');
INSERT INTO `sys_logs` VALUES ('12', '1', 'web端登陆', '1', null, '2019-03-26 10:25:58');
INSERT INTO `sys_logs` VALUES ('13', '1', 'web端登陆', '1', null, '2019-03-26 10:26:57');
INSERT INTO `sys_logs` VALUES ('14', '1', '修改菜单', '1', null, '2019-03-26 10:27:36');
INSERT INTO `sys_logs` VALUES ('15', '1', '退出', '1', null, '2019-03-26 10:27:45');
INSERT INTO `sys_logs` VALUES ('16', '1', 'web端登陆', '1', null, '2019-03-26 10:27:47');
INSERT INTO `sys_logs` VALUES ('17', '1', '修改菜单', '1', null, '2019-03-26 10:28:55');
INSERT INTO `sys_logs` VALUES ('18', '1', '修改菜单', '1', null, '2019-03-26 10:32:04');
INSERT INTO `sys_logs` VALUES ('19', '1', '修改菜单', '1', null, '2019-03-26 10:34:34');
INSERT INTO `sys_logs` VALUES ('20', '1', '退出', '1', null, '2019-03-26 10:34:57');
INSERT INTO `sys_logs` VALUES ('21', '1', 'web端登陆', '1', null, '2019-03-26 10:34:58');
INSERT INTO `sys_logs` VALUES ('22', '1', '修改菜单', '1', null, '2019-03-26 10:35:21');
INSERT INTO `sys_logs` VALUES ('23', '1', '修改菜单', '1', null, '2019-03-26 10:36:23');
INSERT INTO `sys_logs` VALUES ('24', '1', '删除菜单', '1', null, '2019-03-26 10:40:21');
INSERT INTO `sys_logs` VALUES ('25', '1', '生成代码', '1', null, '2019-03-26 10:41:52');
INSERT INTO `sys_logs` VALUES ('26', '1', 'web端登陆', '1', null, '2019-03-26 10:45:28');
INSERT INTO `sys_logs` VALUES ('27', '1', '保存菜单', '1', null, '2019-03-26 10:46:49');
INSERT INTO `sys_logs` VALUES ('28', '1', '保存菜单', '1', null, '2019-03-26 10:47:38');
INSERT INTO `sys_logs` VALUES ('29', '1', '退出', '1', null, '2019-03-26 10:47:44');
INSERT INTO `sys_logs` VALUES ('30', '1', 'web端登陆', '1', null, '2019-03-26 10:47:45');
INSERT INTO `sys_logs` VALUES ('31', '1', '修改菜单', '1', null, '2019-03-26 10:48:29');
INSERT INTO `sys_logs` VALUES ('32', '1', '退出', '1', null, '2019-03-26 10:48:35');
INSERT INTO `sys_logs` VALUES ('33', '1', 'web端登陆', '1', null, '2019-03-26 10:48:36');
INSERT INTO `sys_logs` VALUES ('34', '1', 'web端登陆', '1', null, '2019-03-26 10:52:25');
INSERT INTO `sys_logs` VALUES ('35', '1', '修改菜单', '1', null, '2019-03-26 11:01:28');
INSERT INTO `sys_logs` VALUES ('36', '1', '修改菜单', '1', null, '2019-03-26 11:02:11');
INSERT INTO `sys_logs` VALUES ('37', '1', '修改菜单', '1', null, '2019-03-26 11:02:26');
INSERT INTO `sys_logs` VALUES ('38', '1', '退出', '1', null, '2019-03-26 11:03:26');
INSERT INTO `sys_logs` VALUES ('39', '1', 'web端登陆', '1', null, '2019-03-26 11:03:29');
INSERT INTO `sys_logs` VALUES ('40', '1', 'web端登陆', '1', null, '2019-03-26 15:35:40');
INSERT INTO `sys_logs` VALUES ('41', '1', '保存角色', '1', null, '2019-03-26 15:41:03');
INSERT INTO `sys_logs` VALUES ('42', '1', '退出', '1', null, '2019-03-26 15:41:08');
INSERT INTO `sys_logs` VALUES ('43', '1', 'web端登陆', '1', null, '2019-03-26 15:41:10');
INSERT INTO `sys_logs` VALUES ('44', '1', '保存角色', '1', null, '2019-03-26 15:42:15');
INSERT INTO `sys_logs` VALUES ('45', '1', '退出', '1', null, '2019-03-26 15:42:18');
INSERT INTO `sys_logs` VALUES ('46', '1', 'web端登陆', '1', null, '2019-03-26 15:42:18');
INSERT INTO `sys_logs` VALUES ('47', '1', '保存角色', '1', null, '2019-03-26 15:42:37');
INSERT INTO `sys_logs` VALUES ('48', '1', '退出', '1', null, '2019-03-26 15:42:41');
INSERT INTO `sys_logs` VALUES ('49', '1', 'web端登陆', '1', null, '2019-03-26 15:42:42');
INSERT INTO `sys_logs` VALUES ('50', '1', 'web端登陆', '1', null, '2019-03-28 18:01:36');
INSERT INTO `sys_logs` VALUES ('51', '1', '生成代码', '1', null, '2019-03-28 18:23:11');
INSERT INTO `sys_logs` VALUES ('52', '1', '生成代码', '1', null, '2019-03-28 18:23:34');
INSERT INTO `sys_logs` VALUES ('53', '1', '生成代码', '1', null, '2019-03-28 18:23:59');
INSERT INTO `sys_logs` VALUES ('54', '1', '生成代码', '1', null, '2019-03-28 18:24:14');
INSERT INTO `sys_logs` VALUES ('55', '1', '生成代码', '1', null, '2019-03-28 18:30:35');
INSERT INTO `sys_logs` VALUES ('56', '1', '生成代码', '1', null, '2019-03-28 18:38:08');
INSERT INTO `sys_logs` VALUES ('57', '1', 'web端登陆', '1', null, '2019-03-28 18:42:50');
INSERT INTO `sys_logs` VALUES ('58', '1', '删除菜单', '1', null, '2019-03-28 18:43:00');
INSERT INTO `sys_logs` VALUES ('59', '1', '保存菜单', '1', null, '2019-03-28 18:46:28');
INSERT INTO `sys_logs` VALUES ('60', '1', '保存菜单', '1', null, '2019-03-28 18:47:55');
INSERT INTO `sys_logs` VALUES ('61', '1', '保存菜单', '1', null, '2019-03-28 18:48:43');
INSERT INTO `sys_logs` VALUES ('62', '1', '保存角色', '1', null, '2019-03-28 18:48:56');
INSERT INTO `sys_logs` VALUES ('63', '1', '退出', '1', null, '2019-03-28 18:49:12');
INSERT INTO `sys_logs` VALUES ('64', '1', 'web端登陆', '1', null, '2019-03-28 18:49:13');
INSERT INTO `sys_logs` VALUES ('65', '1', '修改菜单', '1', null, '2019-03-28 18:50:13');
INSERT INTO `sys_logs` VALUES ('66', '1', '退出', '1', null, '2019-03-28 18:50:57');
INSERT INTO `sys_logs` VALUES ('67', '1', 'web端登陆', '1', null, '2019-03-28 18:51:08');
INSERT INTO `sys_logs` VALUES ('68', '1', '修改菜单', '1', null, '2019-03-28 18:52:25');
INSERT INTO `sys_logs` VALUES ('69', '1', '修改菜单', '1', null, '2019-03-28 18:52:45');
INSERT INTO `sys_logs` VALUES ('70', '1', '退出', '1', null, '2019-03-28 18:53:00');
INSERT INTO `sys_logs` VALUES ('71', '1', 'web端登陆', '1', null, '2019-03-28 18:53:01');
INSERT INTO `sys_logs` VALUES ('72', '1', '保存角色', '1', null, '2019-03-28 18:54:53');
INSERT INTO `sys_logs` VALUES ('73', '1', 'web端登陆', '1', null, '2019-03-28 18:58:49');
INSERT INTO `sys_logs` VALUES ('74', '1', '修改菜单', '1', null, '2019-03-28 18:59:51');
INSERT INTO `sys_logs` VALUES ('75', '1', '保存菜单', '1', null, '2019-03-28 19:00:12');
INSERT INTO `sys_logs` VALUES ('76', '1', '修改菜单', '1', null, '2019-03-28 19:00:33');
INSERT INTO `sys_logs` VALUES ('77', '1', '保存角色', '1', null, '2019-03-28 19:00:47');
INSERT INTO `sys_logs` VALUES ('78', '1', '退出', '1', null, '2019-03-28 19:00:50');
INSERT INTO `sys_logs` VALUES ('79', '1', 'web端登陆', '1', null, '2019-03-28 19:00:51');
INSERT INTO `sys_logs` VALUES ('80', '1', '修改菜单', '1', null, '2019-03-28 19:01:18');
INSERT INTO `sys_logs` VALUES ('81', '1', '修改菜单', '1', null, '2019-03-28 19:02:04');
INSERT INTO `sys_logs` VALUES ('82', '1', '保存角色', '1', null, '2019-03-28 19:02:18');
INSERT INTO `sys_logs` VALUES ('83', '1', '退出', '1', null, '2019-03-28 19:02:21');
INSERT INTO `sys_logs` VALUES ('84', '1', 'web端登陆', '1', null, '2019-03-28 19:02:22');
INSERT INTO `sys_logs` VALUES ('85', '1', '保存角色', '1', null, '2019-03-28 19:02:33');
INSERT INTO `sys_logs` VALUES ('86', '1', '退出', '1', null, '2019-03-28 19:02:36');
INSERT INTO `sys_logs` VALUES ('87', '1', 'web端登陆', '1', null, '2019-03-28 19:02:37');
INSERT INTO `sys_logs` VALUES ('88', '1', '修改菜单', '1', null, '2019-03-28 19:03:37');
INSERT INTO `sys_logs` VALUES ('89', '1', '修改菜单', '1', null, '2019-03-28 19:03:44');
INSERT INTO `sys_logs` VALUES ('90', '1', '修改菜单', '1', null, '2019-03-28 19:03:54');
INSERT INTO `sys_logs` VALUES ('91', '1', '退出', '1', null, '2019-03-28 19:03:58');
INSERT INTO `sys_logs` VALUES ('92', '1', 'web端登陆', '1', null, '2019-03-28 19:03:59');
INSERT INTO `sys_logs` VALUES ('93', '1', '删除菜单', '1', null, '2019-03-28 19:06:04');
INSERT INTO `sys_logs` VALUES ('94', '1', '删除菜单', '1', null, '2019-03-28 19:06:25');
INSERT INTO `sys_logs` VALUES ('95', '1', '删除菜单', '1', null, '2019-03-28 19:06:53');
INSERT INTO `sys_logs` VALUES ('96', '1', '修改菜单', '1', null, '2019-03-28 19:07:08');
INSERT INTO `sys_logs` VALUES ('97', '1', '退出', '1', null, '2019-03-28 19:07:16');
INSERT INTO `sys_logs` VALUES ('98', '1', 'web端登陆', '1', null, '2019-03-28 19:07:17');
INSERT INTO `sys_logs` VALUES ('99', '1', '保存角色', '1', null, '2019-03-28 19:08:06');
INSERT INTO `sys_logs` VALUES ('100', '1', '退出', '1', null, '2019-03-28 19:08:10');
INSERT INTO `sys_logs` VALUES ('101', '1', 'web端登陆', '1', null, '2019-03-28 19:08:11');
INSERT INTO `sys_logs` VALUES ('102', '1', '修改菜单', '1', null, '2019-03-28 19:09:23');
INSERT INTO `sys_logs` VALUES ('103', '1', '退出', '1', null, '2019-03-28 19:09:27');
INSERT INTO `sys_logs` VALUES ('104', '1', 'web端登陆', '1', null, '2019-03-28 19:09:28');
INSERT INTO `sys_logs` VALUES ('105', '1', '修改菜单', '1', null, '2019-03-28 19:10:16');
INSERT INTO `sys_logs` VALUES ('106', '1', '保存角色', '1', null, '2019-03-28 19:10:26');
INSERT INTO `sys_logs` VALUES ('107', '1', '退出', '1', null, '2019-03-28 19:10:29');
INSERT INTO `sys_logs` VALUES ('108', '1', 'web端登陆', '1', null, '2019-03-28 19:10:40');
INSERT INTO `sys_logs` VALUES ('109', '1', 'web端登陆', '1', null, '2019-03-28 19:14:26');
INSERT INTO `sys_logs` VALUES ('110', '1', '修改菜单', '1', null, '2019-03-28 19:14:37');
INSERT INTO `sys_logs` VALUES ('111', '1', '退出', '1', null, '2019-03-28 19:14:44');
INSERT INTO `sys_logs` VALUES ('112', '1', 'web端登陆', '1', null, '2019-03-28 19:14:45');
INSERT INTO `sys_logs` VALUES ('113', '1', 'web端登陆', '1', null, '2019-03-31 16:14:22');
INSERT INTO `sys_logs` VALUES ('114', '1', '保存菜单', '1', null, '2019-03-31 16:15:32');
INSERT INTO `sys_logs` VALUES ('115', '1', '保存角色', '1', null, '2019-03-31 16:15:46');
INSERT INTO `sys_logs` VALUES ('116', '1', '退出', '1', null, '2019-03-31 16:15:49');
INSERT INTO `sys_logs` VALUES ('117', '1', 'web端登陆', '1', null, '2019-03-31 16:15:50');
INSERT INTO `sys_logs` VALUES ('118', '1', '退出', '1', null, '2019-03-31 16:15:57');
INSERT INTO `sys_logs` VALUES ('119', '1', 'web端登陆', '1', null, '2019-03-31 16:15:59');
INSERT INTO `sys_logs` VALUES ('120', '1', '修改菜单', '1', null, '2019-03-31 16:16:17');
INSERT INTO `sys_logs` VALUES ('121', '1', '退出', '1', null, '2019-03-31 16:16:22');
INSERT INTO `sys_logs` VALUES ('122', '1', 'web端登陆', '1', null, '2019-03-31 16:16:23');
INSERT INTO `sys_logs` VALUES ('123', '1', '退出', '1', null, '2019-03-31 16:16:48');
INSERT INTO `sys_logs` VALUES ('124', '1', 'web端登陆', '1', null, '2019-03-31 16:16:49');
INSERT INTO `sys_logs` VALUES ('125', '1', 'web端登陆', '1', null, '2019-03-31 16:20:09');
INSERT INTO `sys_logs` VALUES ('126', '1', 'web端登陆', '1', null, '2019-03-31 16:34:17');
INSERT INTO `sys_logs` VALUES ('127', '1', '删除菜单', '1', null, '2019-03-31 16:34:41');
INSERT INTO `sys_logs` VALUES ('128', '1', '删除菜单', '1', null, '2019-03-31 16:34:46');
INSERT INTO `sys_logs` VALUES ('129', '1', '生成代码', '1', null, '2019-03-31 16:41:29');
INSERT INTO `sys_logs` VALUES ('130', '1', '生成代码', '1', null, '2019-03-31 16:42:10');
INSERT INTO `sys_logs` VALUES ('131', '1', '生成代码', '1', null, '2019-03-31 16:45:45');
INSERT INTO `sys_logs` VALUES ('132', '1', '保存菜单', '1', null, '2019-03-31 16:48:09');
INSERT INTO `sys_logs` VALUES ('133', '1', '保存角色', '1', null, '2019-03-31 16:48:20');
INSERT INTO `sys_logs` VALUES ('134', '1', '退出', '1', null, '2019-03-31 16:48:22');
INSERT INTO `sys_logs` VALUES ('135', '1', 'web端登陆', '1', null, '2019-03-31 16:48:24');
INSERT INTO `sys_logs` VALUES ('136', '1', '修改菜单', '1', null, '2019-03-31 16:49:43');
INSERT INTO `sys_logs` VALUES ('137', '1', 'web端登陆', '1', null, '2019-03-31 16:50:30');
INSERT INTO `sys_logs` VALUES ('138', '1', '保存菜单', '1', null, '2019-03-31 16:53:07');
INSERT INTO `sys_logs` VALUES ('139', '1', '保存角色', '1', null, '2019-03-31 16:53:15');
INSERT INTO `sys_logs` VALUES ('140', '1', '退出', '1', null, '2019-03-31 16:53:18');
INSERT INTO `sys_logs` VALUES ('141', '1', 'web端登陆', '1', null, '2019-03-31 16:53:19');
INSERT INTO `sys_logs` VALUES ('142', '1', 'web端登陆', '1', null, '2019-03-31 17:06:05');
INSERT INTO `sys_logs` VALUES ('143', '1', 'web端登陆', '1', null, '2019-03-31 17:10:26');
INSERT INTO `sys_logs` VALUES ('144', '1', '删除菜单', '1', null, '2019-03-31 17:11:45');
INSERT INTO `sys_logs` VALUES ('145', '1', '退出', '1', null, '2019-03-31 17:11:50');
INSERT INTO `sys_logs` VALUES ('146', '1', 'web端登陆', '1', null, '2019-03-31 17:11:51');
INSERT INTO `sys_logs` VALUES ('147', '1', 'web端登陆', '1', null, '2019-04-01 07:57:11');
INSERT INTO `sys_logs` VALUES ('148', '1', 'web端登陆', '1', null, '2019-04-01 08:20:34');
INSERT INTO `sys_logs` VALUES ('149', '1', 'web端登陆', '1', null, '2019-04-01 08:23:41');
INSERT INTO `sys_logs` VALUES ('150', '1', 'web端登陆', '1', null, '2019-04-01 08:24:42');
INSERT INTO `sys_logs` VALUES ('151', '1', '退出', '1', null, '2019-04-01 08:48:20');
INSERT INTO `sys_logs` VALUES ('152', '1', '退出', '1', null, '2019-04-01 08:55:28');
INSERT INTO `sys_logs` VALUES ('153', '1', 'web端登陆', '1', null, '2019-04-01 08:55:40');
INSERT INTO `sys_logs` VALUES ('154', '1', '退出', '1', null, '2019-04-01 08:57:18');
INSERT INTO `sys_logs` VALUES ('155', '1', 'web端登陆', '1', null, '2019-04-01 08:57:30');
INSERT INTO `sys_logs` VALUES ('156', '1', 'Restful方式登陆,前后端分离时登录接口', '0', '用户名不存在', '2019-04-01 09:12:01');
INSERT INTO `sys_logs` VALUES ('157', '1', 'Restful方式登陆,前后端分离时登录接口', '1', null, '2019-04-01 09:30:07');
INSERT INTO `sys_logs` VALUES ('158', '1', 'Restful方式登陆,前后端分离时登录接口', '1', null, '2019-04-01 09:35:18');
INSERT INTO `sys_logs` VALUES ('159', '1', 'web端登陆', '1', null, '2019-04-01 09:48:05');
INSERT INTO `sys_logs` VALUES ('160', '1', '退出', '1', null, '2019-04-01 09:48:18');
INSERT INTO `sys_logs` VALUES ('161', '1', 'web端登陆', '1', null, '2019-04-01 09:50:19');
INSERT INTO `sys_logs` VALUES ('162', '1', '退出', '1', null, '2019-04-01 09:50:42');
INSERT INTO `sys_logs` VALUES ('163', '1', 'web端登陆', '1', null, '2019-04-01 09:50:44');
INSERT INTO `sys_logs` VALUES ('164', '1', 'Restful方式登陆,前后端分离时登录接口', '1', null, '2019-04-01 10:07:53');
INSERT INTO `sys_logs` VALUES ('165', '1', '保存菜单', '1', null, '2019-04-01 10:21:34');
INSERT INTO `sys_logs` VALUES ('166', '1', 'web端登陆', '1', null, '2019-04-01 10:36:02');
INSERT INTO `sys_logs` VALUES ('167', '1', 'web端登陆', '1', null, '2019-04-01 10:38:48');
INSERT INTO `sys_logs` VALUES ('168', '1', 'web端登陆', '1', null, '2019-04-01 10:42:56');
INSERT INTO `sys_logs` VALUES ('169', '1', 'Restful方式登陆,前后端分离时登录接口', '1', null, '2019-04-01 14:24:57');
INSERT INTO `sys_logs` VALUES ('170', '1', 'web端登陆', '1', null, '2019-04-01 14:35:39');
INSERT INTO `sys_logs` VALUES ('171', '1', '生成代码', '1', null, '2019-04-01 14:45:36');
INSERT INTO `sys_logs` VALUES ('172', '1', '生成代码', '1', null, '2019-04-01 14:47:57');
INSERT INTO `sys_logs` VALUES ('173', '1', '删除菜单', '1', null, '2019-04-01 14:55:06');
INSERT INTO `sys_logs` VALUES ('174', '1', '修改菜单', '1', null, '2019-04-01 14:55:43');
INSERT INTO `sys_logs` VALUES ('175', '1', '保存菜单', '1', null, '2019-04-01 14:58:23');
INSERT INTO `sys_logs` VALUES ('176', '1', '保存角色', '1', null, '2019-04-01 14:58:37');
INSERT INTO `sys_logs` VALUES ('177', '1', '退出', '1', null, '2019-04-01 14:58:57');
INSERT INTO `sys_logs` VALUES ('178', '1', 'web端登陆', '1', null, '2019-04-01 14:58:58');
INSERT INTO `sys_logs` VALUES ('179', '1', 'web端登陆', '1', null, '2019-04-01 15:20:43');
INSERT INTO `sys_logs` VALUES ('180', '1', 'web端登陆', '1', null, '2019-04-01 16:03:46');
INSERT INTO `sys_logs` VALUES ('181', '1', 'web端登陆', '1', null, '2019-04-09 15:15:32');
INSERT INTO `sys_logs` VALUES ('182', '1', '保存菜单', '1', null, '2019-04-09 15:17:03');
INSERT INTO `sys_logs` VALUES ('183', '1', '保存角色', '1', null, '2019-04-09 15:17:13');
INSERT INTO `sys_logs` VALUES ('184', '1', '退出', '1', null, '2019-04-09 15:17:16');
INSERT INTO `sys_logs` VALUES ('185', '1', 'web端登陆', '1', null, '2019-04-09 15:17:26');
INSERT INTO `sys_logs` VALUES ('186', '1', 'web端登陆', '1', null, '2019-04-09 15:20:13');
INSERT INTO `sys_logs` VALUES ('187', '1', '修改菜单', '1', null, '2019-04-09 15:20:26');
INSERT INTO `sys_logs` VALUES ('188', '1', '退出', '1', null, '2019-04-09 15:20:29');
INSERT INTO `sys_logs` VALUES ('189', '1', 'web端登陆', '1', null, '2019-04-09 15:20:38');
INSERT INTO `sys_logs` VALUES ('190', '1', '修改菜单', '1', null, '2019-04-09 15:21:23');
INSERT INTO `sys_logs` VALUES ('191', '1', '退出', '1', null, '2019-04-09 15:21:25');
INSERT INTO `sys_logs` VALUES ('192', '1', 'web端登陆', '1', null, '2019-04-09 15:21:30');
INSERT INTO `sys_logs` VALUES ('193', '1', 'Restful方式登陆,前后端分离时登录接口', '1', null, '2019-04-09 17:15:09');
INSERT INTO `sys_logs` VALUES ('194', '1', 'Restful方式登陆,前后端分离时登录接口', '1', null, '2019-04-09 18:24:31');
INSERT INTO `sys_logs` VALUES ('195', '1', 'Restful方式登陆,前后端分离时登录接口', '1', null, '2019-04-09 18:24:31');
INSERT INTO `sys_logs` VALUES ('196', '1', 'web端登陆', '1', null, '2019-04-18 09:39:39');
INSERT INTO `sys_logs` VALUES ('197', '1', '生成代码', '1', null, '2019-04-18 09:40:00');
INSERT INTO `sys_logs` VALUES ('198', '1', '生成代码', '1', null, '2019-04-18 09:40:21');
INSERT INTO `sys_logs` VALUES ('199', '1', 'web端登陆', '1', null, '2019-04-18 10:31:35');
INSERT INTO `sys_logs` VALUES ('200', '1', '生成代码', '1', null, '2019-04-18 10:31:57');
INSERT INTO `sys_logs` VALUES ('201', '1', '生成代码', '1', null, '2019-04-18 10:32:22');
INSERT INTO `sys_logs` VALUES ('202', '1', 'Restful方式登陆,前后端分离时登录接口', '1', null, '2019-04-18 17:55:17');
INSERT INTO `sys_logs` VALUES ('203', '1', 'Restful方式登陆,前后端分离时登录接口', '1', null, '2019-04-19 08:15:08');
INSERT INTO `sys_logs` VALUES ('204', '1', 'Restful方式登陆,前后端分离时登录接口', '1', null, '2019-04-19 08:20:26');
INSERT INTO `sys_logs` VALUES ('205', '1', 'web端登陆', '1', null, '2019-04-20 14:19:03');
INSERT INTO `sys_logs` VALUES ('206', '1', '生成代码', '1', null, '2019-04-20 14:21:51');
INSERT INTO `sys_logs` VALUES ('207', '1', '生成代码', '1', null, '2019-04-20 14:22:13');
INSERT INTO `sys_logs` VALUES ('208', '1', 'Restful方式登陆,前后端分离时登录接口', '1', null, '2019-04-20 15:00:32');
INSERT INTO `sys_logs` VALUES ('209', '1', 'Restful方式登陆,前后端分离时登录接口', '1', null, '2019-04-20 15:11:52');
INSERT INTO `sys_logs` VALUES ('210', '1', 'Restful方式登陆,前后端分离时登录接口', '1', null, '2019-04-20 15:14:06');
INSERT INTO `sys_logs` VALUES ('211', '1', 'Restful方式登陆,前后端分离时登录接口', '1', null, '2019-04-20 15:15:37');
INSERT INTO `sys_logs` VALUES ('212', '1', 'Restful方式登陆,前后端分离时登录接口', '1', null, '2019-04-20 15:18:17');
INSERT INTO `sys_logs` VALUES ('213', '1', 'Restful方式登陆,前后端分离时登录接口', '1', null, '2019-04-20 16:07:12');
INSERT INTO `sys_logs` VALUES ('214', '1', 'Restful方式登陆,前后端分离时登录接口', '1', null, '2019-04-20 16:31:53');
INSERT INTO `sys_logs` VALUES ('215', '1', 'Restful方式登陆,前后端分离时登录接口', '1', null, '2019-04-20 16:39:45');
INSERT INTO `sys_logs` VALUES ('216', '1', 'Restful方式登陆,前后端分离时登录接口', '1', null, '2019-04-22 07:40:19');
INSERT INTO `sys_logs` VALUES ('217', '1', 'Restful方式登陆,前后端分离时登录接口', '1', null, '2019-04-22 07:46:01');
INSERT INTO `sys_logs` VALUES ('218', '1', 'Restful方式登陆,前后端分离时登录接口', '1', null, '2019-04-22 07:49:08');
INSERT INTO `sys_logs` VALUES ('219', '1', 'Restful方式登陆,前后端分离时登录接口', '1', null, '2019-04-22 10:31:50');
INSERT INTO `sys_logs` VALUES ('220', '1', 'Restful方式登陆,前后端分离时登录接口', '1', null, '2019-04-22 10:42:26');
INSERT INTO `sys_logs` VALUES ('221', '1', 'Restful方式登陆,前后端分离时登录接口', '1', null, '2019-04-22 15:37:37');
INSERT INTO `sys_logs` VALUES ('222', '1', 'Restful方式登陆,前后端分离时登录接口', '1', null, '2019-04-22 15:50:07');
INSERT INTO `sys_logs` VALUES ('223', '1', 'web端登陆', '1', null, '2019-06-11 18:43:27');

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `css` varchar(30) DEFAULT NULL,
  `href` varchar(1000) DEFAULT NULL,
  `type` tinyint(1) NOT NULL,
  `permission` varchar(50) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('1', '0', '用户管理', 'fa-users', 'pages/user/userList.html', '1', '', '1');
INSERT INTO `sys_permission` VALUES ('2', '1', '用户查询', 'fa-user', 'pages/user/userList.html', '1', '', '2');
INSERT INTO `sys_permission` VALUES ('3', '2', '查询', '', '', '2', 'sys:user:query', '100');
INSERT INTO `sys_permission` VALUES ('4', '2', '新增', '', '', '2', 'sys:user:add', '100');
INSERT INTO `sys_permission` VALUES ('6', '0', '修改密码', 'fa-pencil-square-o', 'pages/user/changePassword.html', '1', 'sys:user:password', '4');
INSERT INTO `sys_permission` VALUES ('7', '0', '系统设置', 'fa-gears', '', '1', '', '5');
INSERT INTO `sys_permission` VALUES ('8', '7', '菜单', 'fa-cog', 'pages/menu/menuList.html', '1', '', '6');
INSERT INTO `sys_permission` VALUES ('9', '8', '查询', '', '', '2', 'sys:menu:query', '100');
INSERT INTO `sys_permission` VALUES ('10', '8', '新增', '', '', '2', 'sys:menu:add', '100');
INSERT INTO `sys_permission` VALUES ('11', '8', '删除', '', '', '2', 'sys:menu:del', '100');
INSERT INTO `sys_permission` VALUES ('12', '7', '角色', 'fa-user-secret', 'pages/role/roleList.html', '1', '', '7');
INSERT INTO `sys_permission` VALUES ('13', '12', '查询', '', '', '2', 'sys:role:query', '100');
INSERT INTO `sys_permission` VALUES ('14', '12', '新增', '', '', '2', 'sys:role:add', '100');
INSERT INTO `sys_permission` VALUES ('15', '12', '删除', '', '', '2', 'sys:role:del', '100');
INSERT INTO `sys_permission` VALUES ('16', '0', '文件管理', 'fa-folder-open', 'pages/file/fileList.html', '1', '', '8');
INSERT INTO `sys_permission` VALUES ('17', '16', '查询', '', '', '2', 'sys:file:query', '100');
INSERT INTO `sys_permission` VALUES ('18', '16', '删除', '', '', '2', 'sys:file:del', '100');
INSERT INTO `sys_permission` VALUES ('19', '0', '数据源监控', 'fa-eye', 'druid/index.html', '1', '', '9');
INSERT INTO `sys_permission` VALUES ('20', '0', '接口swagger', 'fa-file-pdf-o', 'swagger-ui.html', '1', '', '10');
INSERT INTO `sys_permission` VALUES ('21', '0', '代码生成', 'fa-wrench', 'pages/generate/edit.html', '1', 'generate:edit', '11');
INSERT INTO `sys_permission` VALUES ('22', '0', '公告管理', 'fa-book', 'pages/notice/noticeList.html', '1', '', '12');
INSERT INTO `sys_permission` VALUES ('23', '22', '查询', '', '', '2', 'notice:query', '100');
INSERT INTO `sys_permission` VALUES ('24', '22', '添加', '', '', '2', 'notice:add', '100');
INSERT INTO `sys_permission` VALUES ('25', '22', '删除', '', '', '2', 'notice:del', '100');
INSERT INTO `sys_permission` VALUES ('26', '0', '日志查询', 'fa-reorder', 'pages/log/logList.html', '1', 'sys:log:query', '13');
INSERT INTO `sys_permission` VALUES ('27', '0', '邮件管理', 'fa-envelope', 'pages/mail/mailList.html', '1', '', '14');
INSERT INTO `sys_permission` VALUES ('28', '27', '发送邮件', '', '', '2', 'mail:send', '100');
INSERT INTO `sys_permission` VALUES ('29', '27', '查询', '', '', '2', 'mail:all:query', '100');
INSERT INTO `sys_permission` VALUES ('30', '0', '定时任务管理', 'fa-tasks', 'pages/job/jobList.html', '1', '', '15');
INSERT INTO `sys_permission` VALUES ('31', '30', '查询', '', '', '2', 'job:query', '100');
INSERT INTO `sys_permission` VALUES ('32', '30', '新增', '', '', '2', 'job:add', '100');
INSERT INTO `sys_permission` VALUES ('33', '30', '删除', '', '', '2', 'job:del', '100');
INSERT INTO `sys_permission` VALUES ('34', '0', 'excel导出', 'fa-arrow-circle-down', 'pages/excel/sql.html', '1', '', '16');
INSERT INTO `sys_permission` VALUES ('35', '34', '导出', '', '', '2', 'excel:down', '100');
INSERT INTO `sys_permission` VALUES ('36', '34', '页面显示数据', '', '', '2', 'excel:show:datas', '100');
INSERT INTO `sys_permission` VALUES ('37', '0', '字典管理', 'fa-reddit', 'pages/dict/dictList.html', '1', '', '17');
INSERT INTO `sys_permission` VALUES ('38', '37', '查询', '', '', '2', 'dict:query', '100');
INSERT INTO `sys_permission` VALUES ('39', '37', '新增', '', '', '2', 'dict:add', '100');
INSERT INTO `sys_permission` VALUES ('40', '37', '删除', '', '', '2', 'dict:del', '100');
INSERT INTO `sys_permission` VALUES ('46', '0', '用户信息管理', '', 'pages/daoyunuser/daoyunuserList.html', '1', '', '100');
INSERT INTO `sys_permission` VALUES ('49', '0', '课程管理', '', 'pages/daoyuncourse/daoyuncourseList.html', '1', '', '100');
INSERT INTO `sys_permission` VALUES ('50', '0', '123', '', 'pages/dist/index.html', '1', '', '100');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', 'ADMIN', '管理员', '2017-05-01 13:25:39', '2019-04-09 15:17:13');
INSERT INTO `sys_role` VALUES ('2', 'USER', '', '2017-08-01 21:47:31', '2017-10-05 21:59:26');

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission` (
  `roleId` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  PRIMARY KEY (`roleId`,`permissionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES ('1', '1');
INSERT INTO `sys_role_permission` VALUES ('1', '2');
INSERT INTO `sys_role_permission` VALUES ('1', '3');
INSERT INTO `sys_role_permission` VALUES ('1', '4');
INSERT INTO `sys_role_permission` VALUES ('1', '6');
INSERT INTO `sys_role_permission` VALUES ('1', '7');
INSERT INTO `sys_role_permission` VALUES ('1', '8');
INSERT INTO `sys_role_permission` VALUES ('1', '9');
INSERT INTO `sys_role_permission` VALUES ('1', '10');
INSERT INTO `sys_role_permission` VALUES ('1', '11');
INSERT INTO `sys_role_permission` VALUES ('1', '12');
INSERT INTO `sys_role_permission` VALUES ('1', '13');
INSERT INTO `sys_role_permission` VALUES ('1', '14');
INSERT INTO `sys_role_permission` VALUES ('1', '15');
INSERT INTO `sys_role_permission` VALUES ('1', '16');
INSERT INTO `sys_role_permission` VALUES ('1', '17');
INSERT INTO `sys_role_permission` VALUES ('1', '18');
INSERT INTO `sys_role_permission` VALUES ('1', '19');
INSERT INTO `sys_role_permission` VALUES ('1', '20');
INSERT INTO `sys_role_permission` VALUES ('1', '21');
INSERT INTO `sys_role_permission` VALUES ('1', '22');
INSERT INTO `sys_role_permission` VALUES ('1', '23');
INSERT INTO `sys_role_permission` VALUES ('1', '24');
INSERT INTO `sys_role_permission` VALUES ('1', '25');
INSERT INTO `sys_role_permission` VALUES ('1', '26');
INSERT INTO `sys_role_permission` VALUES ('1', '27');
INSERT INTO `sys_role_permission` VALUES ('1', '28');
INSERT INTO `sys_role_permission` VALUES ('1', '29');
INSERT INTO `sys_role_permission` VALUES ('1', '30');
INSERT INTO `sys_role_permission` VALUES ('1', '31');
INSERT INTO `sys_role_permission` VALUES ('1', '32');
INSERT INTO `sys_role_permission` VALUES ('1', '33');
INSERT INTO `sys_role_permission` VALUES ('1', '34');
INSERT INTO `sys_role_permission` VALUES ('1', '35');
INSERT INTO `sys_role_permission` VALUES ('1', '36');
INSERT INTO `sys_role_permission` VALUES ('1', '37');
INSERT INTO `sys_role_permission` VALUES ('1', '38');
INSERT INTO `sys_role_permission` VALUES ('1', '39');
INSERT INTO `sys_role_permission` VALUES ('1', '40');
INSERT INTO `sys_role_permission` VALUES ('1', '46');
INSERT INTO `sys_role_permission` VALUES ('1', '49');
INSERT INTO `sys_role_permission` VALUES ('1', '50');
INSERT INTO `sys_role_permission` VALUES ('2', '1');
INSERT INTO `sys_role_permission` VALUES ('2', '2');
INSERT INTO `sys_role_permission` VALUES ('2', '3');
INSERT INTO `sys_role_permission` VALUES ('2', '4');
INSERT INTO `sys_role_permission` VALUES ('2', '6');
INSERT INTO `sys_role_permission` VALUES ('2', '7');
INSERT INTO `sys_role_permission` VALUES ('2', '8');
INSERT INTO `sys_role_permission` VALUES ('2', '9');
INSERT INTO `sys_role_permission` VALUES ('2', '10');
INSERT INTO `sys_role_permission` VALUES ('2', '11');
INSERT INTO `sys_role_permission` VALUES ('2', '12');
INSERT INTO `sys_role_permission` VALUES ('2', '13');
INSERT INTO `sys_role_permission` VALUES ('2', '14');
INSERT INTO `sys_role_permission` VALUES ('2', '15');
INSERT INTO `sys_role_permission` VALUES ('2', '16');
INSERT INTO `sys_role_permission` VALUES ('2', '17');
INSERT INTO `sys_role_permission` VALUES ('2', '18');
INSERT INTO `sys_role_permission` VALUES ('2', '19');
INSERT INTO `sys_role_permission` VALUES ('2', '20');
INSERT INTO `sys_role_permission` VALUES ('2', '21');
INSERT INTO `sys_role_permission` VALUES ('2', '22');
INSERT INTO `sys_role_permission` VALUES ('2', '23');
INSERT INTO `sys_role_permission` VALUES ('2', '24');
INSERT INTO `sys_role_permission` VALUES ('2', '25');
INSERT INTO `sys_role_permission` VALUES ('2', '30');
INSERT INTO `sys_role_permission` VALUES ('2', '31');
INSERT INTO `sys_role_permission` VALUES ('2', '34');
INSERT INTO `sys_role_permission` VALUES ('2', '36');

-- ----------------------------
-- Table structure for sys_role_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_user`;
CREATE TABLE `sys_role_user` (
  `userId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  PRIMARY KEY (`userId`,`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_role_user
-- ----------------------------
INSERT INTO `sys_role_user` VALUES ('1', '1');
INSERT INTO `sys_role_user` VALUES ('2', '2');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `salt` varchar(32) NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `headImgUrl` varchar(255) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `telephone` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `sex` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '1015ed3b5f1345911198c995f9ad097e', '87e03afa1f0122531f729c9a7453f475', '管理员', null, '', '', '', '1998-07-01', '0', '1', '2017-04-10 15:21:38', '2017-07-06 09:20:19');
INSERT INTO `sys_user` VALUES ('2', 'user', '72c2e62dba72e5f178542313803f33d1', '143292269df8c63e2da1a9ba2aeff43c', '用户', null, '', '', '', null, '1', '1', '2017-08-01 21:47:18', '2017-08-01 21:47:18');

-- ----------------------------
-- Table structure for t_dict
-- ----------------------------
DROP TABLE IF EXISTS `t_dict`;
CREATE TABLE `t_dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(16) NOT NULL,
  `k` varchar(16) NOT NULL,
  `val` varchar(64) NOT NULL,
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`k`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_dict
-- ----------------------------
INSERT INTO `t_dict` VALUES ('1', 'sex', '0', '女', '2017-11-17 09:58:24', '2017-11-18 14:21:05');
INSERT INTO `t_dict` VALUES ('2', 'sex', '1', '男', '2017-11-17 10:03:46', '2017-11-17 10:03:46');
INSERT INTO `t_dict` VALUES ('3', 'userStatus', '0', '无效', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
INSERT INTO `t_dict` VALUES ('4', 'userStatus', '1', '正常', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
INSERT INTO `t_dict` VALUES ('5', 'userStatus', '2', '锁定', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
INSERT INTO `t_dict` VALUES ('6', 'noticeStatus', '0', '草稿', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
INSERT INTO `t_dict` VALUES ('7', 'noticeStatus', '1', '发布', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
INSERT INTO `t_dict` VALUES ('8', 'isRead', '0', '未读', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
INSERT INTO `t_dict` VALUES ('9', 'isRead', '1', '已读', '2017-11-17 16:26:06', '2017-11-17 16:26:09');

-- ----------------------------
-- Table structure for t_job
-- ----------------------------
DROP TABLE IF EXISTS `t_job`;
CREATE TABLE `t_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jobName` varchar(64) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `cron` varchar(64) NOT NULL,
  `springBeanName` varchar(64) NOT NULL COMMENT 'springBean名',
  `methodName` varchar(64) NOT NULL COMMENT '方法名',
  `isSysJob` tinyint(1) NOT NULL COMMENT '是否是系统job',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jobName` (`jobName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_job
-- ----------------------------

-- ----------------------------
-- Table structure for t_mail
-- ----------------------------
DROP TABLE IF EXISTS `t_mail`;
CREATE TABLE `t_mail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL COMMENT '发送人',
  `subject` varchar(255) NOT NULL COMMENT '标题',
  `content` longtext NOT NULL COMMENT '正文',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_mail
-- ----------------------------

-- ----------------------------
-- Table structure for t_mail_to
-- ----------------------------
DROP TABLE IF EXISTS `t_mail_to`;
CREATE TABLE `t_mail_to` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mailId` int(11) NOT NULL,
  `toUser` varchar(128) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1成功，0失败',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_mail_to
-- ----------------------------

-- ----------------------------
-- Table structure for t_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_notice
-- ----------------------------

-- ----------------------------
-- Table structure for t_notice_read
-- ----------------------------
DROP TABLE IF EXISTS `t_notice_read`;
CREATE TABLE `t_notice_read` (
  `noticeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`noticeId`,`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_notice_read
-- ----------------------------
