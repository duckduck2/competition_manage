/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50716
 Source Host           : localhost
 Source Database       : renren-security

 Target Server Type    : MySQL
 Target Server Version : 50716
 File Encoding         : utf-8

 Date: 05/24/2017 21:37:15 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `cm_application`
-- ----------------------------
DROP TABLE IF EXISTS `cm_application`;
CREATE TABLE `cm_application` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '竞赛申请id',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `name` varchar(20) DEFAULT '' COMMENT '竞赛申请名称',
  `reviewer` varchar(20) DEFAULT '' COMMENT '审核人',
  `organizer` varchar(20) DEFAULT '' COMMENT '主办方',
  `situation` varchar(64) DEFAULT '' COMMENT '审核情况',
  `state` varchar(4) DEFAULT '' COMMENT '审核状态 10 待审核 20 审核通过 30 审核不通过',
  `apply_time` date DEFAULT NULL COMMENT '申请时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='竞赛项目申请';

-- ----------------------------
--  Table structure for `cm_expert_info`
-- ----------------------------
DROP TABLE IF EXISTS `cm_expert_info`;
CREATE TABLE `cm_expert_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '专家id',
  `
name` varchar(16) DEFAULT '' COMMENT '专家姓名',
  `job_title` varchar(16) DEFAULT '' COMMENT '职称',
  `department` varchar(16) DEFAULT '' COMMENT '部门',
  `education` varchar(16) DEFAULT '' COMMENT '学位',
  `introduction` varchar(255) DEFAULT '' COMMENT '简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专家信息表';

-- ----------------------------
--  Table structure for `cm_expert_review_info`
-- ----------------------------
DROP TABLE IF EXISTS `cm_expert_review_info`;
CREATE TABLE `cm_expert_review_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '专家id',
  `
sign_up_id` bigint(20) DEFAULT NULL COMMENT '竞赛报名id',
  `expert_id` bigint(20) DEFAULT NULL COMMENT '专家id',
  `review_time` date DEFAULT NULL COMMENT '审核时间',
  `review_address` varchar(32) DEFAULT '' COMMENT '审核地点',
  `reply_score` int(4) DEFAULT NULL COMMENT '答辩成绩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专家审核信息表';

-- ----------------------------
--  Table structure for `cm_project_info`
-- ----------------------------
DROP TABLE IF EXISTS `cm_project_info`;
CREATE TABLE `cm_project_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '竞赛项目id',
  `application_id` bigint(20) DEFAULT NULL COMMENT '竞赛申请id',
  `type` varchar(20) DEFAULT '' COMMENT '竞赛类型',
  `start_time` date DEFAULT NULL COMMENT '报名开始时间',
  `end_time` date DEFAULT NULL COMMENT '报名结束时间',
  `state` varchar(4) DEFAULT '' COMMENT '发布状态 10 已发布 20 未发布',
  `release_time` date DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='竞赛项目信息';

-- ----------------------------
--  Table structure for `cm_rank_info`
-- ----------------------------
DROP TABLE IF EXISTS `cm_rank_info`;
CREATE TABLE `cm_rank_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '排名id',
  `
sign_up_id` bigint(20) DEFAULT NULL COMMENT '竞赛报名id',
  `expert_review_id` bigint(20) DEFAULT NULL COMMENT '专家审核id',
  `rank` int(4) DEFAULT NULL COMMENT '排名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='作品排名信息表';

-- ----------------------------
--  Table structure for `cm_reply_info`
-- ----------------------------
DROP TABLE IF EXISTS `cm_reply_info`;
CREATE TABLE `cm_reply_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '答辩id',
  `
application_id` bigint(20) DEFAULT NULL COMMENT '竞赛申请id',
  `reply_time` date DEFAULT NULL COMMENT '答辩时间',
  `reply_address` varchar(64) DEFAULT '' COMMENT '答辩地点',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='答辩信息表';

-- ----------------------------
--  Table structure for `cm_reward_info`
-- ----------------------------
DROP TABLE IF EXISTS `cm_reward_info`;
CREATE TABLE `cm_reward_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '竞赛奖励信息id',
  `
sign_up_id` bigint(20) DEFAULT NULL COMMENT '竞赛报名id',
  `rank_id` bigint(20) DEFAULT NULL COMMENT '作品排名id',
  `rank` int(4) DEFAULT NULL COMMENT '排名',
  `won_time` date DEFAULT NULL COMMENT '获奖时间',
  `situation` varchar(16) DEFAULT '' COMMENT '奖励情况',
  `prize` double(4,2) DEFAULT NULL COMMENT '奖金',
  `state` int(2) DEFAULT NULL COMMENT '发放情况',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='竞赛奖励信息表';

-- ----------------------------
--  Table structure for `cm_sign_up_info`
-- ----------------------------
DROP TABLE IF EXISTS `cm_sign_up_info`;
CREATE TABLE `cm_sign_up_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '竞赛报名id',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `project_id` bigint(20) DEFAULT NULL COMMENT '项目id',
  `apply_time` date DEFAULT NULL,
  `result` varchar(255) DEFAULT '' COMMENT '审核情况',
  `state` int(4) DEFAULT NULL COMMENT '审核状态',
  `reviewer` varchar(32) DEFAULT '' COMMENT '审核人',
  `review_time` date DEFAULT NULL COMMENT '审核时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='竞赛报名信息表';

-- ----------------------------
--  Table structure for `cm_student_info`
-- ----------------------------
DROP TABLE IF EXISTS `cm_student_info`;
CREATE TABLE `cm_student_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '学生信息id',
  `name` varchar(16) DEFAULT '' COMMENT '姓名',
  `sex` varchar(4) DEFAULT '' COMMENT '性别',
  `academy` varchar(32) DEFAULT '' COMMENT '学院',
  `profession` varchar(16) DEFAULT '' COMMENT '专业',
  `
classes` varchar(32) DEFAULT '' COMMENT '班级',
  `
student_status` int(4) DEFAULT NULL COMMENT '学籍状态',
  `school_status` int(4) DEFAULT NULL COMMENT '在校状态',
  `phone` varchar(16) DEFAULT '' COMMENT '手机号码',
  `email` varchar(32) DEFAULT '' COMMENT '邮箱',
  `id_card_no` int(16) DEFAULT NULL COMMENT '身份证号码',
  `
candidate_no` int(16) DEFAULT NULL COMMENT '考生号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生信息表';

-- ----------------------------
--  Table structure for `cm_student_reply_info`
-- ----------------------------
DROP TABLE IF EXISTS `cm_student_reply_info`;
CREATE TABLE `cm_student_reply_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '答辩信息id',
  `
sign_up_id` bigint(20) DEFAULT NULL COMMENT '竞赛报名id',
  `reply_id` bigint(20) DEFAULT NULL COMMENT '答辩id',
  `student_id` bigint(20) DEFAULT NULL COMMENT '学生id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='答辩信息表';

-- ----------------------------
--  Table structure for `cm_works_info`
-- ----------------------------
DROP TABLE IF EXISTS `cm_works_info`;
CREATE TABLE `cm_works_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '作品id',
  `apply_id` bigint(20) DEFAULT NULL COMMENT '报名id',
  `works` varchar(255) DEFAULT '' COMMENT '参数作品',
  `submit_time` date DEFAULT NULL COMMENT '提交时间',
  `submit_person` varchar(16) DEFAULT '' COMMENT '提交人',
  `modify_time` int(2) DEFAULT NULL COMMENT '修改次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='竞赛作品信息表';

-- ----------------------------
--  Table structure for `sys_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) DEFAULT NULL COMMENT '请求参数',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='系统日志';

-- ----------------------------
--  Records of `sys_log`
-- ----------------------------
BEGIN;
INSERT INTO `sys_log` VALUES ('2', 'admin', '保存用户', 'io.renren.controller.SysUserController.save()', '{\"email\":\"123456@qq.com\",\"mobile\":\"13345678767\",\"roleIdList\":[],\"status\":1,\"username\":\"College\"}', '0:0:0:0:0:0:0:1', '2017-05-23 00:26:04'), ('3', 'admin', '修改菜单', 'io.renren.controller.SysMenuController.update()', '{\"icon\":\"fa fa-file-code-o\",\"menuId\":31,\"name\":\"竞赛发布\",\"orderNum\":6,\"parentId\":0,\"parentName\":\"一级菜单\",\"type\":1,\"url\":\"generator/application.html\"}', '0:0:0:0:0:0:0:1', '2017-05-23 23:58:37'), ('4', 'admin', '保存菜单', 'io.renren.controller.SysMenuController.save()', '{\"icon\":\"fa fa-file-code-o\",\"name\":\"竞赛发布\",\"orderNum\":0,\"parentId\":0,\"parentName\":\"一级菜单\",\"type\":0}', '0:0:0:0:0:0:0:1', '2017-05-24 00:00:08'), ('5', 'admin', '修改菜单', 'io.renren.controller.SysMenuController.update()', '{\"icon\":\"fa fa-file-code-o\",\"menuId\":36,\"name\":\"竞赛发布。\",\"orderNum\":0,\"parentId\":0,\"parentName\":\"一级菜单\",\"type\":0}', '0:0:0:0:0:0:0:1', '2017-05-24 00:01:41'), ('6', 'admin', '修改菜单', 'io.renren.controller.SysMenuController.update()', '{\"icon\":\"fa fa-file-code-o\",\"menuId\":31,\"name\":\"竞赛发布\",\"orderNum\":6,\"parentId\":36,\"parentName\":\"竞赛发布。\",\"type\":1,\"url\":\"generator/application.html\"}', '0:0:0:0:0:0:0:1', '2017-05-24 00:02:05'), ('7', 'admin', '修改菜单', 'io.renren.controller.SysMenuController.update()', '{\"icon\":\"fa fa-file-code-o\",\"menuId\":36,\"name\":\"竞赛发布\",\"orderNum\":0,\"parentId\":0,\"parentName\":\"一级菜单\",\"type\":0}', '0:0:0:0:0:0:0:1', '2017-05-24 00:02:20'), ('8', 'admin', '修改菜单', 'io.renren.controller.SysMenuController.update()', '{\"icon\":\"fa fa-file-code-o\",\"menuId\":31,\"name\":\"竞赛申请\",\"orderNum\":6,\"parentId\":36,\"parentName\":\"竞赛发布\",\"type\":1,\"url\":\"generator/application.html\"}', '0:0:0:0:0:0:0:1', '2017-05-24 00:03:57');
COMMIT;

-- ----------------------------
--  Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='菜单管理';

-- ----------------------------
--  Records of `sys_menu`
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` VALUES ('1', '0', '系统管理', null, null, '0', 'fa fa-cog', '0'), ('2', '1', '管理员列表', 'sys/user.html', null, '1', 'fa fa-user', '1'), ('3', '1', '角色管理', 'sys/role.html', null, '1', 'fa fa-user-secret', '2'), ('4', '1', '菜单管理', 'sys/menu.html', null, '1', 'fa fa-th-list', '3'), ('15', '2', '查看', null, 'sys:user:list,sys:user:info', '2', null, '0'), ('16', '2', '新增', null, 'sys:user:save,sys:role:select', '2', null, '0'), ('17', '2', '修改', null, 'sys:user:update,sys:role:select', '2', null, '0'), ('18', '2', '删除', null, 'sys:user:delete', '2', null, '0'), ('19', '3', '查看', null, 'sys:role:list,sys:role:info', '2', null, '0'), ('20', '3', '新增', null, 'sys:role:save,sys:menu:perms', '2', null, '0'), ('21', '3', '修改', null, 'sys:role:update,sys:menu:perms', '2', null, '0'), ('22', '3', '删除', null, 'sys:role:delete', '2', null, '0'), ('23', '4', '查看', null, 'sys:menu:list,sys:menu:info', '2', null, '0'), ('24', '4', '新增', null, 'sys:menu:save,sys:menu:select', '2', null, '0'), ('25', '4', '修改', null, 'sys:menu:update,sys:menu:select', '2', null, '0'), ('26', '4', '删除', null, 'sys:menu:delete', '2', null, '0'), ('28', '1', '代码生成器', 'sys/generator.html', 'sys:generator:list,sys:generator:code', '1', 'fa fa-rocket', '8'), ('29', '1', '系统日志', 'sys/log.html', 'sys:log:list', '1', 'fa fa-file-text-o', '7'), ('31', '36', '竞赛申请', 'generator/application.html', null, '1', 'fa fa-file-code-o', '6'), ('32', '31', '查看', null, 'application:list,application:info', '2', null, '6'), ('33', '31', '新增', null, 'application:save', '2', null, '6'), ('34', '31', '修改', null, 'application:update', '2', null, '6'), ('35', '31', '删除', null, 'application:delete', '2', null, '6'), ('36', '0', '竞赛发布', null, null, '0', 'fa fa-file-code-o', '0');
COMMIT;

-- ----------------------------
--  Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
--  Table structure for `sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';

-- ----------------------------
--  Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态  0：禁用   1：正常',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='系统用户';

-- ----------------------------
--  Records of `sys_user`
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES ('1', 'admin', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 'root@renren.io', '13612345678', '1', null, '2016-11-11 11:11:11'), ('2', 'College', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '123456@qq.com', '13345678767', '1', '1', '2017-05-23 00:26:05');
COMMIT;

-- ----------------------------
--  Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与角色对应关系';

SET FOREIGN_KEY_CHECKS = 1;
