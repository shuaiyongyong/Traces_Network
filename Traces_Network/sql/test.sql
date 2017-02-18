<<<<<<< HEAD
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


<<<<<<< HEAD
select * from location where userid=1

-------------------------------------------------------
--管理员表
create table manage(
       manage_Id int primary key,--编号
       manage_Name varchar(20),--管理员帐号
       manage_PassWord varchar(50),--管理员密码
       manage_Rank varchar(20)--级别
)

--用户表
create table users(
       User_Id int primary key,--用户编号
       User_UserName varchar(20),--会员帐号
       User_UserPassword varchar(50),--会员密码
       User_TrueName varchar(20),--姓名(感觉可以省略)
       User_Sex varchar(2),--性别
       User_BirthDay date,--出生日期
       User_Pic varchar(50),--头像
       User_Email varchar(20),--邮箱
       User_Adress varchar(200),--地址
       User_Phone varchar(20),--电话
       User_ConFig int--审核状态  初始化0
)

--地区表
create table region(
       region_Id int primary key,--(主键)地区编号
       region_Name varchar(50),--名称
       region_SubTxt varchar(4000)--简要说明
)

--景点表
create table scenic(
	scenic_Id int primary key,--景点编号
	scenic_Name varchar(50),--名称
	scenic_SubTxt varchar(4000),--简要说明
	region_Id int --地区编号
);

--线路表
create table route(
	 route_Id int primary key,--路线编号
	 region_Name varchar(50),--地区名称
	 category_Id int --线路类别编号
);

--线路类别表
create table category(
	category_Id int primary key,--线路类别编号
	category_Name varchar(50),--线路类别描述
	categoryList_Id int --线路明细编号
);

--线路明细表
create table categoryList(
	categoryList_Id int primary key,--线路明细编号
	categoryList_SubTxt varchar(4000)--线路明细说明
);

--问题信息表
create table ask(
	ask_Id int primary key,--问题编号
	user_Id int ,--提问者编号
	ask_ClassId int ,--问题类型编号
	ask_Title varchar(50),--问题标题
	ask_Content varchar(100),--问题内容
	ask_Status int,--状态[已解决，未]
	ask_Time date --发布时间
);

--回复内容表
create table ask_Answer(
	answer_Id int primary key,--回复编号
	user_Id int,--回复者编号
	ask_Id int,--问题编号
	answer_Content varchar(100),--回复内容
	answer_Time date --回复时间
);

--问题类型表
create table askClass(
	ask_ClassId int primary key,--问题类型编号
	askClass_Name varchar(50),--问题类别名称
	askClass_SubTxt	varchar(20)	--简要说明
);

--攻略分类表
create table strategy(
	strategy_Id int primary key,--分类编号
	strategy_Name varchar(50),--名称
	strategy_SubTxt	varchar(200)--简要说明
);

--攻略信息表
create table strategyInfo(
	strategyInfo_Id int primary key,--攻略编号
	strategy_Id int,--分类编号
	strategyInfo_Title varchar(50),--标题
	strategyInfo_Content varchar(1000),--攻略内容
	strategyInfo_Picture varchar(50),--图片
	user_Id int,--发布者编号
	status int ,--审核状态
	strategyInfo_Click	int,--点击率
	strategyInfo_AddTime date	--发布时间
);

create sequence seq_strid start with 1;

insert into strategyInfo values(seq_strid.nextval,)

drop table strategyInfo;

--攻略评论信息表
create table strategyAnswer(
	strategyAnswer_Id int primary key ,--评论编号
	strategyInfo_Id int ,--攻略编号
	strategyAnswer_Content varchar(1000),--评论内容
	user_Id int,--评论者编号	
	strategyAnswer_AddTime	date,--评论时间
	status int --审核状态
);
	














=======
select * from location where userid=1
>>>>>>> branch 'master' of git@github.com:shuaiyongyong/Traces_Network
=======
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
>>>>>>> e3a68c0b8eb64352c58f1f7c4181734cce96194c
