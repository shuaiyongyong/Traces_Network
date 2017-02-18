SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `location`
-- ----------------------------
DROP TABLE IF EXISTS `location`;
CREATE TABLE `location` (
  `l_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '位置表',
  `l_longitude` double NOT NULL COMMENT '经度',
  `l_latitude` double NOT NULL COMMENT '纬度',
  `l_address` varchar(64) DEFAULT NULL COMMENT '位置',
  `l_time` datetime DEFAULT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of location 
-- ----------------------------
INSERT INTO `location` VALUES ('1', '112.6915820000', '26.8878180000', '位置1', '2014-03-05 14:00:00', '1');
INSERT INTO `location` VALUES ('2', '112.6235590000', '26.9168710000', '位置2', '2014-03-06 08:00:00', '1');
INSERT INTO `location` VALUES ('3', '112.6135410000', '26.9127470000', '位置3', '2014-03-06 12:30:00', '1');
INSERT INTO `location` VALUES ('4', '112.6169170000', '26.8947530000', '位置4', '2014-03-06 16:00:00', '1');
INSERT INTO `location` VALUES ('5', '112.5895420000', '26.8581840000', '位置5', '2014-03-06 17:00:00', '1');
INSERT INTO `location` VALUES ('6', '112.6004210000', '26.9024450000', '位置6', '2014-03-06 18:00:00', '1');


select * from location where userid=1