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

-------------------------------------------------------
select * from strategy
select * from strategyInfo
select * from users
select * from 
--管理员表
create table manage(
       manage_Id int primary key,--编号
       manage_Name varchar(20) not null,--管理员帐号
       manage_PassWord varchar(50) not null,--管理员密码
       manage_Phone  varchar(20) not null,--管理员电话
       manage_Email varchar(20) not null,--管理员邮箱
       manage_Rank varchar(20)--级别(1.超级管理员   2.普通管理员)
)

create sequence seq_manage_Id increment by 1 start with 1;
insert into manage values(seq_manage_Id.nextval,'admin','a','18473438047','1532313944@qq.com',1);
insert into manage values(seq_manage_Id.nextval,'yhm','a','18473438047','1532313944@qq.com',2);
insert into manage values(seq_manage_Id.nextval,'py','a','18473438047','1532313944@qq.com',2);
insert into manage values(seq_manage_Id.nextval,'lhd','a','18473438047','1532313944@qq.com',2);



--攻略分类表
create table strategy(
	strategy_Id int primary key,--分类编号
	strategy_Name varchar(50) not null unique--名称
);

insert into strategy values(1, '全部');
insert into strategy values(2, '登山');
insert into strategy values(3, '攀岩');
insert into strategy values(4, '攀冰');
insert into strategy values(5, '滑雪');
insert into strategy values(6, '钓鱼');
insert into strategy values(7, '水上');
insert into strategy values(8, '探洞');
insert into strategy values(9, '骑行');
insert into strategy values(10, '自驾');
insert into strategy values(11, '徒步');
insert into strategy values(12, '旅行');
insert into strategy values(13, '国外');
insert into strategy values(14, '摄影');
insert into strategy values(15, '装备');
insert into strategy values(16, '美食');
insert into strategy values(17, '其他');


--攻略信息表
create table strategyInfo(
	strategyInfo_Id int primary key,--攻略编号
	strategy_Id references strategy(strategy_Id),--分类编号
	strategyInfo_Title varchar(50),--标题
	strategyInfo_Content varchar(1000),--攻略内容
	strategyInfo_Picture varchar(1000),--图片
	User_Id references users(User_Id),--发布者编号
	status int ,--审核状态(1.待审核 2.通过 3.未通过)
	reason varchar(100),--审核信息(比如未通过: 理由)
	strategyInfo_Click	int,--点击率
	strategyInfo_AddTime date	--发布时间
);
drop table strategyInfo
create sequence seq_strid start with 1;
drop sequence seq_strid 
delete strategyInfo where strategy_Id = 12
update table strategyInfo set  strategyInfo_Picture = 'images/090434fr2hajss2xzsrrws.jpg' where strategyInfo_Picture = '090434fr2hajss2xzsrrws.jpg'
insert into strategyInfo values(seq_strid.nextval,12,'山峦人间','','images/090434fr2hajss2xzsrrws.jpg',2,1,'',100,sysdate);
insert into strategyInfo values(seq_strid.nextval,11,'铿锵玫瑰','','images/090434fr2hajss2xzsrrws.jpg',3,1,'',90,sysdate);
insert into strategyInfo values(seq_strid.nextval,10,'往北走','','images/090434fr2hajss2xzsrrws.jpg',4,1,'',80,sysdate);
insert into strategyInfo values(seq_strid.nextval,9,'雪山旗手','','images/090434fr2hajss2xzsrrws.jpg',2,1,'',70,sysdate);
insert into strategyInfo values(seq_strid.nextval,8,'我在云端等你','','images/090434fr2hajss2xzsrrws.jpg',3,1,'',60,sysdate);
insert into strategyInfo values(seq_strid.nextval,7,'英国湖区，30小时急游','','images/090434fr2hajss2xzsrrws.jpg',4,1,'',50,sysdate);
insert into strategyInfo values(seq_strid.nextval,6,'16金秋北疆行','','images/090434fr2hajss2xzsrrws.jpg',4,1,'',40,sysdate);
insert into strategyInfo values(seq_strid.nextval,1,'冬熬，我们来了','','images/090434fr2hajss2xzsrrws.jpg',4,1,'',30,sysdate);
insert into strategyInfo values(seq_strid.nextval,2,'2016，在路上','','images/090434fr2hajss2xzsrrws.jpg',3,1,'',20,sysdate);
insert into strategyInfo values(seq_strid.nextval,3,'骑行环海南岛','','images/090434fr2hajss2xzsrrws.jpg',3,1,'',10,sysdate);
insert into strategyInfo values(seq_strid.nextval,4,'美女摄影师','','images/090434fr2hajss2xzsrrws.jpg',2,1,'',110,sysdate);
insert into strategyInfo values(seq_strid.nextval,5,'踏沙留痕','','images/090434fr2hajss2xzsrrws.jpg',2,1,'',120,sysdate);



--攻略评论信息表
create table strategyAnswer(
	strategyAnswer_Id int primary key ,--评论编号
	strategyInfo_Id int ,--攻略编号
	strategyAnswer_Content varchar(1000),--评论内容(包括图片)
	user_Id int,--评论者编号	
	strategyAnswer_AddTime	date,--评论时间
	status int --审核状态(1.待审核 2.通过 3.未通过)
);

select * from strategyAnswer

create sequence seq_s_id increment by 1 start with 1;

insert into strategyAnswer values(seq_s_id.nextval,3,'你好，你的旅游经历很棒',2,sysdate,0);
insert into strategyAnswer values(seq_s_id.nextval,4,'你好，你的旅游经历很棒',3,sysdate,0);
insert into strategyAnswer values(seq_s_id.nextval,5,'你好，你的旅游经历很棒',4,sysdate,0);

--用户表
create table users(
       User_Id int primary key,--用户编号
       User_UserName varchar(20) not null,--用户帐号
       User_UserPassword varchar(50) not null,--会员密码
       User_Sex varchar(2),--性别
       User_Date date,--用户注册时间
       User_Pic varchar(50),--头像
       User_Email varchar(20),--邮箱
       User_Adress varchar(200),--地址
       User_Phone varchar(20) not null--电话
)
update table users 
	
create sequence seq_User_Id increment by 1 start with 1;

insert into users values(seq_User_Id.nextval, '张三', '123456','男',sysdate, '', '1451932421@qq.com', '湖南','18473438047');
insert into users values(seq_User_Id.nextval, '李四', '123456','女',sysdate,'','1532313944@qq.com', '北京','15673566281');
insert into users values(seq_User_Id.nextval, '王五', '123456','女',sysdate, '','1231351315@qq.com', '四川','13274959070');

update  users set User_Pic = 'images/28_avatar_middle_002.jpg'
commit


select * from users


------------------------------------------------------------------------
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

