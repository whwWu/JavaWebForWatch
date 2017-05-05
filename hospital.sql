
SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for t_cure
-- ----------------------------
CREATE TABLE `t_cure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(50) NOT NULL,
  `cases` varchar(50) DEFAULT NULL,
  `drug` varchar(50) DEFAULT NULL,
  `drugmoney` double DEFAULT NULL,
  `item` varchar(50) DEFAULT NULL,
  `itemmoney` double(50,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_dict
-- ----------------------------
CREATE TABLE `t_dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  `item` varchar(50) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
CREATE TABLE `t_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_user_info
-- ----------------------------
CREATE TABLE `t_user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(50) NOT NULL,
  `pswd` varchar(50) NOT NULL,
  `root` varchar(50) NOT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `birthday` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `money` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `t_cure` VALUES ('2', '20140323130558', '感冒', '板蓝根', '12', '全身', '100');
INSERT INTO `t_cure` VALUES ('3', '20140323145441', '慢性肠炎', '板蓝根', '20', 'B超', '50');
INSERT INTO `t_dict` VALUES ('2', '科室', '儿科', '');
INSERT INTO `t_dict` VALUES ('3', '科室', '口腔科', '');
INSERT INTO `t_dict` VALUES ('4', '科室', '皮肤性病科', '');
INSERT INTO `t_dict` VALUES ('5', '挂号类型', '专科', '');
INSERT INTO `t_dict` VALUES ('6', '挂号类型', '主治医师', '');
INSERT INTO `t_dict` VALUES ('8', '科室', '肛肠科', '');
INSERT INTO `t_dict` VALUES ('9', '挂号类型', '急诊', '');
INSERT INTO `t_order` VALUES ('2', '20140323130558', '王冰', '14', '口腔科', '主治医师');
INSERT INTO `t_order` VALUES ('3', '20140323131422', 'user', '312', '急诊科', '专科');
INSERT INTO `t_order` VALUES ('4', '20140323145441', '李四', '26', '皮肤性病科', '专科');
INSERT INTO `t_user_info` VALUES ('1', 'admin', '123', '1', null, null, null, null, null);
INSERT INTO `t_user_info` VALUES ('2', 'user', '123', '2', '男', '1985-06-04', '江苏南京', '13093049173', '4541');
INSERT INTO `t_user_info` VALUES ('3', '王冰', '123', '2', '男', '1998-05-07', '上海虹桥', '12345678902', '2889');
INSERT INTO `t_user_info` VALUES ('6', '李四', '123', '2', '男', '1988-02-04', '江苏南京宣武区1号', '13093049173', '2929');
INSERT INTO `t_user_info` VALUES ('7', '李四他哥', '123', '2', '男', '2009-05-13', '江苏苏州观前街', '13093049173', '0');
