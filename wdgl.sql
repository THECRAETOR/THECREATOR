/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : wdgl

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2021-03-22 21:53:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '文件名称',
  `user` varchar(255) DEFAULT NULL COMMENT '用户信息',
  `url` varchar(255) DEFAULT NULL COMMENT '存储地址',
  `level` varchar(255) DEFAULT NULL COMMENT '加密级别',
  `gmtTime` datetime DEFAULT NULL COMMENT '上传时间',
  `hash` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL COMMENT '作者',
  `wdrq` datetime DEFAULT NULL COMMENT '文档日期',
  `title` varchar(255) DEFAULT NULL COMMENT '文档标题',
  `subject` varchar(255) DEFAULT NULL COMMENT '文档主题',
  `key` varchar(255) DEFAULT NULL COMMENT '主关键词',
  `keys` varchar(255) DEFAULT NULL COMMENT '文档关键词（三个）',
  `dw` varchar(255) DEFAULT NULL COMMENT '作者所在单位',
  `type` varchar(255) DEFAULT NULL COMMENT '文档类型',
  `end` datetime DEFAULT NULL,
  `begin` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COMMENT='文件信息';

-- ----------------------------
-- Records of file
-- ----------------------------
INSERT INTO `file` VALUES ('4', '2017年12月医生结算清单.xlsx', '11', '/cdn//cdn/7d034b7b-9ab6-42b1-bafa-bea873741334.xlsx', '私密', '2021-03-22 14:48:44', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `file` VALUES ('5', '2018年01月轻文献分成明细.xls', '11', '/cdn//cdn/66c52c3c-906e-4aa5-a295-f51c0d86a246.xls', '私密', '2021-03-22 14:48:44', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `file` VALUES ('6', '2018年01月医生结算清单.xlsx', '11', '/cdn//cdn/69fe0429-de14-44c6-bef5-7731d1bf3234.xlsx', '普通', '2021-03-22 14:48:44', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `file` VALUES ('7', '2018年02月订单明细表.xls', '11', '/cdn//cdn/cc3b42f5-a315-42b6-8ba2-42d138d69d06.xls', '普通', '2021-03-22 14:48:44', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `file` VALUES ('8', '2018年02月医生结算清单.xlsx', '11', '/cdn//cdn/16fe1210-a7a4-4b6f-bd28-414e62d13382.xlsx', '普通', '2021-03-22 14:48:44', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `file` VALUES ('9', 'aaaaa.docx', '11', '/cdn//cdn/653f872b-4ba3-42ae-91c6-7e8328dd25fc.docx', '普通', '2021-03-22 14:48:44', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `file` VALUES ('10', 'Baocms.zip', '11', '/cdn//cdn/99281b61-d6f6-4f32-8988-86c3c42aabdb.zip', '普通', '2021-03-22 14:48:44', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `file` VALUES ('11', 'gaofang-MilletMall.zip', '11', '/cdn//cdn/5ec16bc5-aec9-4977-b13d-a104f76605b7.zip', '普通', '2021-03-22 14:48:44', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `file` VALUES ('12', 'IOS壳支付宝.zip', '11', '/cdn//cdn/5b8c6d05-07ca-4cbd-be4d-6ced664d9328.zip', '普通', '2021-03-22 14:48:44', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `file` VALUES ('13', '溯源生物小程序报价.xlsx', '11', '/cdn//cdn/69782e66-09f8-4139-b8fe-43788b5dfe6d.xlsx', '私密', '2021-03-22 14:48:44', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `file` VALUES ('14', '图片处理小程序软件开发服务合同.doc', '11', '/cdn//cdn/6a186708-19a4-4e9a-92d5-31cd7d62ff0c.doc', '私密', '2021-03-22 14:48:44', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `file` VALUES ('15', '新东方兰州小程序说明.xlsx', '11', '/cdn//cdn/21d95648-0e19-4abf-8fab-17edf9ccd622.xlsx', '私密', '2021-03-22 14:48:44', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `file` VALUES ('17', 'aaaaa.docx', '11', '/cdn//cdn/c4ed2556-8bfa-4e18-ba51-2a5bd8925945.docx', '私密', '2021-03-22 14:48:44', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `file` VALUES ('18', '2018年02月订单明细表.xls', '11', '/cdn//cdn/216469ff-5c5c-498e-9881-fb611c898881.xls', '私密', '2021-03-22 14:48:44', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `file` VALUES ('19', '2018年02月订单明细表.xls', '9', '/cdn//cdn/3b27c1b5-be3d-450e-b299-716c29fabcae.xls', '普通', '2021-03-22 14:48:44', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `file` VALUES ('20', '微信图片_20171213101727.png', '-1', '/cdn//cdn/7befcd83-21f1-458d-8709-cb2e5dbb1d94.png', '私密', '2021-03-22 14:48:44', '4a236ad24569dc4ec24931adfbb961aa', '321', '2018-05-08 00:00:00', '321', '321', '321,', '321,321，', '321', '报告', null, null);
INSERT INTO `file` VALUES ('21', '课程活动页.png', '-1', '/cdn//cdn/a911373d-407f-4a28-83db-cffc9d4e11fa.png', '私密', '2021-03-22 14:48:44', '42d0dd890efae90e2d41eb09683a1229', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `file` VALUES ('22', '课程活动页.png', '-1', '/cdn//cdn/d0d04b25-937f-4fbb-b5a5-12e4c9b2cbd6.png', '普通', '2021-03-22 14:48:44', '42d0dd890efae90e2d41eb09683a1229', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `file` VALUES ('23', null, '-1', '/cdn//cdn/ae12f907-c0e4-4d7f-b619-f73a4a87af7c.jpg', '普通', '2021-03-22 14:48:44', null, '321', '2018-04-30 00:00:00', '321', '321', '321', '321，,31,321，', '321', '报告', null, null);
INSERT INTO `file` VALUES ('24', null, '-1', '/cdn//cdn/7af98b17-e9e4-4f58-bec4-95422964bbe3.png', '普通', '2021-03-22 14:48:44', null, '1', '2018-05-04 00:00:00', '1', '1', '1', '1', '1', '报告', null, null);
INSERT INTO `file` VALUES ('25', '海报.png', '-1', '/cdn//cdn/9985559c-9608-49a3-beb2-da872f42f990.png', '普通', '2021-03-22 14:48:44', null, '1', '1970-01-01 08:00:00', '1', '1', '1', '1', '1', '报告', null, null);
INSERT INTO `file` VALUES ('26', '828.jpg', '-1', '/cdn//cdn/889a9d55-50e7-4cfb-8666-29a5db8fa2ae.jpg', '普通', '2021-03-22 14:48:44', '69abc60f4538cbe6f2fc1be169474938', '2', '1970-01-01 08:00:00', '2121', '21', '1', '21', '12', '硬件', null, null);
INSERT INTO `file` VALUES ('27', '高中培训机构信息管理系统.doc', '14', '/cdn//cdn/1a87eda7-0440-4f9d-8fb5-022274857d7d.doc', '普通', '2021-03-22 14:48:44', 'a7204b2c66f61fd1cf4be7e6a3aa37fc', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `file` VALUES ('28', '张明.png', '14', '/cdn//cdn/d8f88869-4131-47bd-8ed4-87e88afe5019.png', '普通', '2021-03-22 14:48:44', 'b64fa3bed2c9f5fdaa781d2d854f5ccd', '李成', '2021-03-02 00:00:00', '美女图', '美女', '美女', '咖啡店三，范德萨，范德萨', '无', '报告', null, null);
INSERT INTO `file` VALUES ('29', 'img012.jpg', '15', '/cdn//cdn/cfb86260-cb66-44d8-8fa9-fe3be5a2bdc1.jpg', '私密', '2021-03-22 21:50:02', '1012c6bf75d1409e2e6d5d6ee1f86a32', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `file` VALUES ('30', 'img013.jpg', '15', '/cdn//cdn/7687d921-14a3-46ac-89fc-a9ac89757fde.jpg', '私密', '2021-03-22 21:50:02', 'e0c5e8e695bf7ef4fd085f0f3b99bee9', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `file` VALUES ('31', 'img014.jpg', '15', '/cdn//cdn/7ce8cf65-79ea-49a1-aef9-63129d23385b.jpg', '私密', '2021-03-22 21:50:02', '2339dd69466c9e23bd6004058600b67b', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `file` VALUES ('32', 'img015.jpg', '15', '/cdn//cdn/9b8ee56f-b57d-471b-9995-c5654fed106c.jpg', '私密', '2021-03-22 21:50:02', 'e3ccf50cf8b58a909c5c0c94a90909bd', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `file` VALUES ('33', 'img016.jpg', '15', '/cdn//cdn/18230afb-eca0-438f-9956-a9c06c932579.jpg', '私密', '2021-03-22 21:50:02', '86b75e644b2cd5fa4e6f892ec4c2d3d2', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `file` VALUES ('34', 'img017.jpg', '15', '/cdn//cdn/17bba061-fb0a-4a60-a76a-4215fb27ee95.jpg', '私密', '2021-03-22 21:50:02', '4ee176e5748b14217742823ce91a57fb', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `file` VALUES ('35', 'img019.jpg', '15', '/cdn//cdn/e28255a6-5f2b-41a3-b0d8-c465c2618321.jpg', '私密', '2021-03-22 21:50:02', '9a5565e3c59254f59082396d135cb513', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `file` VALUES ('36', 'img020.jpg', '15', '/cdn//cdn/9039bcea-92fb-4469-a50b-917739f92eab.jpg', '私密', '2021-03-22 21:50:02', '184b985b869b3a1b643b31e1e1f778ce', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `file` VALUES ('37', 'img021.jpg', '15', '/cdn//cdn/67df300e-0c65-4eb3-8c71-205f2d808e02.jpg', '私密', '2021-03-22 21:50:02', '4b9a17138b5c697c9ea7beb3a49f2319', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `file` VALUES ('38', 'img022.jpg', '15', '/cdn//cdn/b4eca072-98b3-423c-8d47-22956d55237d.jpg', '私密', '2021-03-22 21:50:02', '43f0ba72004f33f93370869f83be206a', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `file` VALUES ('39', 'img023.jpg', '15', '/cdn//cdn/24fc5e9a-4423-4c2b-aee6-09ccb7b872a0.jpg', '私密', '2021-03-22 21:50:02', 'a8a9965b1819fe4f538cb7135af86ae3', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `file` VALUES ('40', 'img024.jpg', '15', '/cdn//cdn/dcdcf46b-f2e4-4fbc-8a94-325028fe1151.jpg', '私密', '2021-03-22 21:50:02', '0d48f333b3d48f498795b6919f6b1a7d', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `file` VALUES ('41', 'img025.jpg', '15', '/cdn//cdn/dec50609-1702-471a-b8ea-3a89d0630331.jpg', '私密', '2021-03-22 21:50:02', '335fa206a9cde04d5376045d47d28348', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `file` VALUES ('42', 'img026.jpg', '15', '/cdn//cdn/1adb3094-1293-4688-95e1-b503df3b3e85.jpg', '私密', '2021-03-22 21:50:02', 'd58629fe3d1899d64713b6c3895b42a4', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `file` VALUES ('43', '高中培训机构信息管理系统.doc', '15', '/cdn//cdn/daf3ec2f-5827-4764-8365-8acfe8c554cf.doc', '普通', '2021-03-22 21:50:22', 'a7204b2c66f61fd1cf4be7e6a3aa37fc', '本人', '2021-03-16 00:00:00', '高中培训机构信息管理系统', '高中培训机构信息管理系统', '培训', '培训', '无', '报告', null, null);
INSERT INTO `file` VALUES ('44', '工资.xlsx', '15', '/cdn//cdn/b0d3a563-9f32-4ecd-b682-776327162c4b.xlsx', '普通', '2021-03-22 21:50:22', '002cea1719227ef5668ccc489f06bcb0', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `file` VALUES ('45', '李成.png', '15', '/cdn//cdn/29bd9f94-184e-4319-ae9a-0853ac9ec999.png', '普通', '2021-03-22 21:50:22', 'b64fa3bed2c9f5fdaa781d2d854f5ccd', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `file` VALUES ('46', '上位机.rar', '15', '/cdn//cdn/f8176c31-a43e-4e59-b8d8-ab734a721581.rar', '普通', '2021-03-22 21:50:22', '4fd229dd894ca46942a6357708376e00', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `file` VALUES ('47', '串口助手.exe', '-1', '/cdn//cdn/36a9d428-d86a-408e-8d00-dbedb1f1e663.exe', '普通', '2021-03-22 21:52:13', '049efc5c0dce5e91628ff1c7d3b746e4', '1', '2021-03-10 00:00:00', '1', '1', '2', '2', '1', '报告', '2021-04-03 21:52:05', '2021-03-08 21:52:01');

-- ----------------------------
-- Table structure for msg
-- ----------------------------
DROP TABLE IF EXISTS `msg`;
CREATE TABLE `msg` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text COMMENT '留言内容',
  `user` bigint(20) DEFAULT NULL COMMENT '留言人',
  `user1` bigint(20) DEFAULT NULL COMMENT '接收人',
  `reply` varchar(255) DEFAULT NULL COMMENT '回复',
  `gmtTime` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='互动交流';

-- ----------------------------
-- Records of msg
-- ----------------------------
INSERT INTO `msg` VALUES ('1', '111', '1', '11', '11', '2021-03-22 14:48:44');
INSERT INTO `msg` VALUES ('2', '321321', '1', '1', '321321', '2021-03-22 14:48:44');
INSERT INTO `msg` VALUES ('4', '范德萨，你好啊，大叔', '11', '14', '范德萨发', '2021-03-22 14:48:44');
INSERT INTO `msg` VALUES ('5', 'hi，谢谢你', '15', '15', '1', '2021-03-22 21:51:00');

-- ----------------------------
-- Table structure for sys_menu
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COMMENT='菜单管理';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '0', '系统管理', null, null, '0', 'fa fa-cog', '0');
INSERT INTO `sys_menu` VALUES ('2', '0', '用户管理', 'sys/user.html', null, '1', 'fa fa-user', '1');
INSERT INTO `sys_menu` VALUES ('3', '1', '角色管理', 'sys/role.html', null, '1', 'fa fa-user-secret', '2');
INSERT INTO `sys_menu` VALUES ('4', '1', '菜单管理', 'sys/menu.html', null, '1', 'fa fa-th-list', '3');
INSERT INTO `sys_menu` VALUES ('5', '1', 'SQL监控', 'druid/sql.html', null, '1', 'fa fa-bug', '4');
INSERT INTO `sys_menu` VALUES ('6', '1', '定时任务', 'sys/schedule.html', null, '1', 'fa fa-tasks', '5');
INSERT INTO `sys_menu` VALUES ('7', '6', '查看', null, 'sys:schedule:list,sys:schedule:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('8', '6', '新增', null, 'sys:schedule:save', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('9', '6', '修改', null, 'sys:schedule:update', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('10', '6', '删除', null, 'sys:schedule:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('11', '6', '暂停', null, 'sys:schedule:pause', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('12', '6', '恢复', null, 'sys:schedule:resume', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('13', '6', '立即执行', null, 'sys:schedule:run', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('14', '6', '日志列表', null, 'sys:schedule:log', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('15', '2', '查看', null, 'sys:user:list,sys:user:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('16', '2', '新增', null, 'sys:user:save,sys:role:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('17', '2', '修改', null, 'sys:user:update,sys:role:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('18', '2', '删除', null, 'sys:user:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('19', '3', '查看', null, 'sys:role:list,sys:role:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('20', '3', '新增', null, 'sys:role:save,sys:menu:perms', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('21', '3', '修改', null, 'sys:role:update,sys:menu:perms', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('22', '3', '删除', null, 'sys:role:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('23', '4', '查看', null, 'sys:menu:list,sys:menu:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('24', '4', '新增', null, 'sys:menu:save,sys:menu:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('25', '4', '修改', null, 'sys:menu:update,sys:menu:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('26', '4', '删除', null, 'sys:menu:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('27', '1', '参数管理', 'sys/config.html', 'sys:config:list,sys:config:info,sys:config:save,sys:config:update,sys:config:delete', '1', 'fa fa-sun-o', '6');
INSERT INTO `sys_menu` VALUES ('28', '1', '代码生成器', 'sys/generator.html', 'sys:generator:list,sys:generator:code', '1', 'fa fa-rocket', '8');
INSERT INTO `sys_menu` VALUES ('29', '1', '系统日志', 'sys/log.html', 'sys:log:list', '1', 'fa fa-file-text-o', '7');
INSERT INTO `sys_menu` VALUES ('30', '1', '文件上传', 'sys/oss.html', 'sys:oss:all', '1', 'fa fa-file-image-o', '6');
INSERT INTO `sys_menu` VALUES ('65', '0', '我的文件', 'admin/file.html', null, '1', null, '6');
INSERT INTO `sys_menu` VALUES ('66', '65', '查看', null, 'file:list,file:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('67', '65', '新增', null, 'file:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('68', '65', '修改', null, 'file:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('69', '65', '删除', null, 'file:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('71', '0', '文件上传', 'admin/upload.html', null, '1', null, '6');
INSERT INTO `sys_menu` VALUES ('72', '0', '文件搜索', 'admin/search.html', null, '1', null, '6');
INSERT INTO `sys_menu` VALUES ('73', '0', '我发的留言', 'admin/msg.html', null, '1', null, '6');
INSERT INTO `sys_menu` VALUES ('74', '73', '查看', null, 'msg:list,msg:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('75', '73', '新增', null, 'msg:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('76', '73', '修改', null, 'msg:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('77', '73', '删除', null, 'msg:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('78', '0', '我收到的留言', 'admin/msg1.html', null, '1', null, '6');
INSERT INTO `sys_menu` VALUES ('79', '78', '查看', null, 'msg:list,msg:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('80', '78', '新增', null, 'msg:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('81', '78', '修改', null, 'msg:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('82', '78', '删除', null, 'msg:delete', '2', null, '6');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '普通', null, '1', '2018-04-17 10:26:34');
INSERT INTO `sys_role` VALUES ('2', '系统管理员', null, '-1', '2018-04-17 15:24:04');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('116', '2', '2');
INSERT INTO `sys_role_menu` VALUES ('117', '2', '15');
INSERT INTO `sys_role_menu` VALUES ('118', '2', '16');
INSERT INTO `sys_role_menu` VALUES ('119', '2', '17');
INSERT INTO `sys_role_menu` VALUES ('120', '2', '18');
INSERT INTO `sys_role_menu` VALUES ('122', '2', '65');
INSERT INTO `sys_role_menu` VALUES ('123', '2', '66');
INSERT INTO `sys_role_menu` VALUES ('124', '2', '67');
INSERT INTO `sys_role_menu` VALUES ('125', '2', '68');
INSERT INTO `sys_role_menu` VALUES ('126', '2', '69');
INSERT INTO `sys_role_menu` VALUES ('127', '2', '71');
INSERT INTO `sys_role_menu` VALUES ('128', '2', '72');
INSERT INTO `sys_role_menu` VALUES ('129', '1', '65');
INSERT INTO `sys_role_menu` VALUES ('130', '1', '66');
INSERT INTO `sys_role_menu` VALUES ('131', '1', '67');
INSERT INTO `sys_role_menu` VALUES ('132', '1', '68');
INSERT INTO `sys_role_menu` VALUES ('133', '1', '69');
INSERT INTO `sys_role_menu` VALUES ('134', '1', '71');
INSERT INTO `sys_role_menu` VALUES ('135', '1', '72');
INSERT INTO `sys_role_menu` VALUES ('136', '1', '73');
INSERT INTO `sys_role_menu` VALUES ('137', '1', '74');
INSERT INTO `sys_role_menu` VALUES ('138', '1', '75');
INSERT INTO `sys_role_menu` VALUES ('139', '1', '76');
INSERT INTO `sys_role_menu` VALUES ('140', '1', '77');
INSERT INTO `sys_role_menu` VALUES ('141', '1', '78');
INSERT INTO `sys_role_menu` VALUES ('142', '1', '79');
INSERT INTO `sys_role_menu` VALUES ('143', '1', '80');
INSERT INTO `sys_role_menu` VALUES ('144', '1', '81');
INSERT INTO `sys_role_menu` VALUES ('145', '1', '82');

-- ----------------------------
-- Table structure for sys_user
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
  `pri` varchar(2000) DEFAULT NULL,
  `pub` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='系统用户';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('-1', 'admin', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', 'root@renren.io', '321321', '1', null, '2021-03-22 14:48:44', null, null);
INSERT INTO `sys_user` VALUES ('1', 'admin1', 'fe14edf5e188bd6c9c0e4dfa7816ab8350f75126619c4e07994c29f2e0997786', 'admin@admin.com', '13612345678', '1', null, '2021-03-22 14:48:44', null, null);
INSERT INTO `sys_user` VALUES ('8', '123123', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', null, null, '1', null, '2021-03-22 14:48:44', null, null);
INSERT INTO `sys_user` VALUES ('9', '李晓明', 'fe14edf5e188bd6c9c0e4dfa7816ab8350f75126619c4e07994c29f2e0997786', null, null, '1', null, '2021-03-22 14:48:44', null, null);
INSERT INTO `sys_user` VALUES ('11', '张晓明', 'fe14edf5e188bd6c9c0e4dfa7816ab8350f75126619c4e07994c29f2e0997786', null, null, '1', null, '2021-03-22 14:48:44', null, null);
INSERT INTO `sys_user` VALUES ('12', '黎明', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', 'null', '1322323232', '1', null, '2021-03-22 14:48:44', null, null);
INSERT INTO `sys_user` VALUES ('13', '李成', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', 'null', '13223232323', '1', null, '2021-03-22 14:48:44', null, null);
INSERT INTO `sys_user` VALUES ('14', '李大叔', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', 'null', '132232323', '1', null, '2021-03-22 14:48:44', null, null);
INSERT INTO `sys_user` VALUES ('15', '李明', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', null, null, '1', null, '2021-03-22 21:49:48', null, null);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='用户与角色对应关系';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('6', '8', '1');
INSERT INTO `sys_user_role` VALUES ('7', '-1', '2');
INSERT INTO `sys_user_role` VALUES ('8', '9', '1');
INSERT INTO `sys_user_role` VALUES ('9', '11', '1');
INSERT INTO `sys_user_role` VALUES ('10', '12', '1');
INSERT INTO `sys_user_role` VALUES ('11', '13', '1');
INSERT INTO `sys_user_role` VALUES ('12', '14', '1');
INSERT INTO `sys_user_role` VALUES ('13', '15', '1');
