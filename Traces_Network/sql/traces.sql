

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
update USERS set User_UserPassword = '6f9b0a55df8ac28564cb9f63a10be8af6ab3f7c2';

select * from USERS;


select * from users where User_UserName='a' and User_UserPassword='6f9b0a55df8ac28564cb9f63a10be8af6ab3f7c2';


create sequence seq_User_Id increment by 1 start with 1;

insert into users values(seq_User_Id.nextval, '张三', '123456','男',sysdate, '', '1451932421@qq.com', '湖南','18473438047');
insert into users values(seq_User_Id.nextval, '李四', '123456','女',sysdate,'','1532313944@qq.com', '北京','15673566281');
insert into users values(seq_User_Id.nextval, '王五', '123456','女',sysdate, '','1231351315@qq.com', '四川','13274959070');
insert into users values(seq_User_Id.nextval, 'a', '6f9b0a55df8ac28564cb9f63a10be8af6ab3f7c2','女',sysdate, '','1231351315@qq.com', '四川','13274959070');

insert into users values(1001, 'a1', '6f9b0a55df8ac28564cb9f63a10be8af6ab3f7c2','女',sysdate, '','1231351315@qq.com', '四川','13274959070');
insert into users values(1002, 'a2', '6f9b0a55df8ac28564cb9f63a10be8af6ab3f7c2','女',sysdate, '','1231351315@qq.com', '四川','13274959070');
insert into users values(1003, 'a3', '6f9b0a55df8ac28564cb9f63a10be8af6ab3f7c2','女',sysdate, '','1231351315@qq.com', '四川','13274959070');
insert into users values(1004, 'a4', '6f9b0a55df8ac28564cb9f63a10be8af6ab3f7c2','女',sysdate, '','1231351315@qq.com', '四川','13274959070');
insert into users values(1005, 'a5', '6f9b0a55df8ac28564cb9f63a10be8af6ab3f7c2','女',sysdate, '','1231351315@qq.com', '四川','13274959070');
insert into users values(1006, 'a6', '6f9b0a55df8ac28564cb9f63a10be8af6ab3f7c2','女',sysdate, '','1231351315@qq.com', '四川','13274959070');
insert into users values(1007, 'a7', '6f9b0a55df8ac28564cb9f63a10be8af6ab3f7c2','女',sysdate, '','1231351315@qq.com', '四川','13274959070');
insert into users values(1008, 'a8', '6f9b0a55df8ac28564cb9f63a10be8af6ab3f7c2','女',sysdate, '','1231351315@qq.com', '四川','13274959070');

drop table scenic;
drop table city;
drop table region;
--地区表
create table region(
       region_Id int primary key,--(主键)地区编号
       region_Name varchar2(50)--名称
)
create sequence seq_regionId start with 1;
insert into region values(seq_regionId.nextval,'湖南');
select * from region;
--城市表
create table city(
      city_Id int primary key,--(主键)城市编号
      city_Name varchar2(50),--名称
      region_Id references region(region_Id)--地区编号
)
create sequence seq_cityId start with 1;
insert into city values(seq_cityId.nextval,'长沙市',1);
insert into city values(seq_cityId.nextval,'株洲市',1);
insert into city values(seq_cityId.nextval,'湘潭市',1);
insert into city values(seq_cityId.nextval,'衡阳市',1);
insert into city values(seq_cityId.nextval,'邵阳市',1);
insert into city values(seq_cityId.nextval,'岳阳市',1);
insert into city values(seq_cityId.nextval,'张家界市',1);
insert into city values(seq_cityId.nextval,'益阳市',1);
insert into city values(seq_cityId.nextval,'常德市',1);
insert into city values(seq_cityId.nextval,'娄底市',1);
insert into city values(seq_cityId.nextval,'郴州市',1);
insert into city values(seq_cityId.nextval,'永州市',1);
insert into city values(seq_cityId.nextval,'怀化市',1);
insert into city values(seq_cityId.nextval,'湘西自治州',1);
select * from city;
drop table tag;
--景点类型
create table tag
(
	tag_Id number primary key,--类型id
	tag_Pic varchar2(100) not null,--类型图片
	tag_Name varchar2(20) not null--类型名称
);
insert into tag values(1,'/upload/fengguang.png','风光');
insert into tag values(2,'/upload/gouwu.png','购物');
insert into tag values(3,'/upload/lishi.png','历史');
insert into tag values(4,'/upload/meishi.png','美食');
insert into tag values(5,'/upload/yiji.png','遗迹');
insert into tag values(6,'/upload/zongjiao.png','宗教');

drop table tag;
--景点表
create table scenic(
	scenic_Id int primary key,--景点编号
	scenic_Name varchar2(50),--景点名称
	scenic_Type varchar2(50),--景点类型
	scenic_Level int NOT NULL ,--景点级别
	scenic_Latitude number(9,6) NOT NULL ,--景点纬度
	scenic_Longitude number(9,6) NOT NULL ,--景点经度
	city_Id references  city(city_Id)--地区编号
)
select * from (select * from scenic where city_Id=4 and scenic_Level>1 and scenic_Type like '%风光%' order by scenic_Id asc) where rownum <=6


create sequence seq_scenicId start with 1;
insert into scenic values(seq_scenicId.nextval,'南岳衡山','宗教,历史,风光',4,27.257672,112.726471,4);
insert into scenic values(seq_scenicId.nextval,'石鼓书院','遗址,历史,风光',4,26.916871,112.623559,4);
insert into scenic values(seq_scenicId.nextval,'岣嵝峰','风光',4,27.126511,112.641588,4);
insert into scenic values(seq_scenicId.nextval,'蔡伦竹海','遗址,历史,风光',4,26.233519,112.991089,4);
insert into scenic values(seq_scenicId.nextval,'回雁峰','历史,风光',4,26.893098,112.621046,4);
insert into scenic values(seq_scenicId.nextval,'九龙峡漂流','风光',1,27.125376,112.669897,4);
insert into scenic values(seq_scenicId.nextval,'锡岩仙洞','风光',2,27.072551,113.138921,4);
insert into scenic values(seq_scenicId.nextval,'凤凰山','风光',4,27.254605,113.155209,4);
insert into scenic values(seq_scenicId.nextval,'罗荣桓故居','风光',4,27.078361,113.161538,4);
insert into scenic values(seq_scenicId.nextval,'湖湘文化馆','历史',4,26.912751,112.613751,4);
insert into scenic values(seq_scenicId.nextval,'衡阳保卫战纪念馆','遗址,历史',4,26.891968,112.553781,4);
insert into scenic values(seq_scenicId.nextval,'岳屏公园','遗址,风光',4,26.894753,112.616917,4);
insert into scenic values(seq_scenicId.nextval,'朱陵洞','遗址,风光',4,27.253801,112.846017,4);
insert into scenic values(seq_scenicId.nextval,'帝龙时代广场','美食,购物',4,26.969318,112.387381,4);
insert into scenic values(seq_scenicId.nextval,'解放路','美食,购物',4,26.901552,112.613019,4);
insert into scenic values(seq_scenicId.nextval,'晶珠广场','美食,购物',4,26.909951,112.60568,4);
insert into scenic values(seq_scenicId.nextval,'爱民路','美食',4,26.898663,112.617424,4);
select * from SCENIC;

--问题信息表
create table askInfo(
	ask_Id int primary key,--问题编号
	user_Id int ,--提问者编号
	ask_Content varchar2(100),--问题内容
	ask_Click int default 0,--点击率
	ask_Status int,--状态[已解决，未]
	ask_Time date --发布时间
);

create sequence seq_ask_Id start with 1
delete from askInfo where ask_Id>1 and ask_Id<9
insert into askInfo values(seq_ask_Id.nextval,1001,'教堂怎么去...',default,1,sysdate);
insert into askInfo values(22,1002,'山东省科技孵化项目性能查询...',default,1,sysdate);
insert into askInfo values(23,1002,'是东方时代徐徐...',default,0,sysdate);
insert into askInfo values(24,1003,'是的废墟上的...',default,1,sysdate);
insert into askInfo values(25,1004,'士大夫但是现场v...',default,0,sysdate);
insert into askInfo values(26,1005,'士大夫大师傅士大夫下次...',default,0,sysdate);
insert into askInfo values(27,1006,'士大夫受到许多...',default,1,sysdate);
insert into askInfo values(28,1007,'热太过分的...',default,1,sysdate);
insert into askInfo values(29,1008,'从持续大幅...',default,0,sysdate);
insert into askInfo values(seq_ask_Id.nextval,1009,'是撒犯得上的...',default,1,sysdate);

select username,ask_Content,ask_Time from USERS 
inner join askInfo ai
on ai.user_Id=users.user_Id
order by ai.ask_Click desc;

select ai.ask_Id,ai.user_Id,username,ask_Content,ask_Time from USERS 
inner join askInfo ai 
on ai.user_Id=users.user_Id 
where ai.ask_status=1

select sysdate-ask_Time from ASKINFO
select * from ASKINFO
update askInfo set  ask_Id=1 where user_Id=1001

select * from USERS
inner join ASKINFO ai
on ai.user_Id=users.user_Id
where ask_Id=1


--标签信息表
create table tagInfo(
	tag_Id int,--标签编号
	tagName varchar2(10)--标签名
);

create sequence seq_tagId start with 1

insert into tagInfo values(seq_tagId.nextval,'教堂');
insert into tagInfo values(seq_tagId.nextval,'巴拉');
insert into tagInfo values(seq_tagId.nextval,'北京');
insert into tagInfo values(seq_tagId.nextval,'游玩');
insert into tagInfo values(seq_tagId.nextval,'收到');
insert into tagInfo values(seq_tagId.nextval,'飒飒');
insert into tagInfo values(seq_tagId.nextval,'水水');
insert into tagInfo values(seq_tagId.nextval,'滴滴');
insert into tagInfo values(seq_tagId.nextval,'方法');
insert into tagInfo values(seq_tagId.nextval,'刚刚');
insert into tagInfo values(seq_tagId.nextval,'哈哈');
insert into tagInfo values(seq_tagId.nextval,'解决');

select * from TAGINFO

--问题标签联系表
create table tagRel(
	id int primary key,
	tag_Id int,--标签编号
	ask_Id int --问题标签
);

create sequence seq_id start with 1
drop sequence seq_id
delete from TAGREL
select * from TAGREL
insert into tagRel values(seq_id.nextval,1,21);
insert into tagRel values(seq_id.nextval,2,21);
insert into tagRel values(seq_id.nextval,3,21);
insert into tagRel values(seq_id.nextval,4,21);
insert into tagRel values(seq_id.nextval,21,22);
insert into tagRel values(seq_id.nextval,22,22);
insert into tagRel values(seq_id.nextval,23,23);
insert into tagRel values(seq_id.nextval,24,23);
insert into tagRel values(seq_id.nextval,25,24);
insert into tagRel values(seq_id.nextval,26,25);
insert into tagRel values(seq_id.nextval,27,26);
insert into tagRel values(seq_id.nextval,28,27);
insert into tagRel values(seq_id.nextval,28,30);
insert into tagRel values(seq_id.nextval,28,29);


select tagName,ask_Id from tagInfo ti
inner join tagRel tr
on ti.tag_Id=tr.tag_Id
where ask_Id=30

select ai.user_Id,username,ask_Content,ask_Time from USERS join askInfo ai on ai.user_Id=users.user_Id order by ai.ask_Time desc;

--回复内容表
create table ask_Answer(
	answer_Id int primary key,--回复编号
	user_Id int,--回复者编号
	ask_Id int,--问题编号
	likeCount int,--点赞数量
	answer_Content varchar(500),--回复内容
	answer_Time date --回复时间	
);

select * from USERS
inner join ASK_ANSWER aa
on aa.user_Id=users.user_Id
where aa.ask_Id=22;

create sequence seq_answer_id start with 1;

insert into ask_Answer values(seq_answer_id.nextval,1002,1,0,'不知道',sysdate);
insert into ask_Answer values(seq_answer_id.nextval,1003,22,0,'不知道',sysdate);
insert into ask_Answer values(seq_answer_id.nextval,1005,27,0,'不知道',sysdate);
insert into ask_Answer values(seq_answer_id.nextval,1007,22,0,'不知道',sysdate);
insert into ask_Answer values(seq_answer_id.nextval,1008,24,0,'不知道',sysdate);
insert into ask_Answer values(seq_answer_id.nextval,1001,24,0,'不知道',sysdate);
insert into ask_Answer values(seq_answer_id.nextval,1001,28,0,'不知道',sysdate);
insert into ask_Answer values(seq_answer_id.nextval,1002,27,0,'不知道',sysdate);
insert into ask_Answer values(seq_answer_id.nextval,1005,28,0,'不知道',sysdate);
insert into ask_Answer values(seq_answer_id.nextval,1006,22,0,'不知道',sysdate);

select * from ASK_ANSWER

select * from ASK_ANSWER where ask_id=1
select * from ask_Answer


--评论信息表
--create table commentInfo(
--	comment_Id int primary key,--评论编号
--	user_Id int,--评论者编号
--	comment_Conent varchar(100),--评论内容
--	comment_Time date --评论时间
--);

--问题类型表
--create table askClass(
--	ask_ClassId int primary key,--问题类型编号
--	askClass_Name varchar(50),--问题类别名称
--	askClass_SubTxt	varchar(20)	--简要说明
--);

select ai.ask_Id,ai.user_Id,User_UserName,ask_Content,ask_Time from USERS join askInfo ai on ai.user_Id=users.User_Id  order by ai.ask_Time desc