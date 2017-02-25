select * from manage;
select * from users;
select * from askInfo;
select * from ask_Answer;
select * from tagInfo;
select * from tagRel;
drop table askInfo;
drop table users;
drop table ask_Answer;


--管理员表
create table manage(
       manage_Id int primary key,--编号
       manage_Name varchar(20),--管理员帐号
       manage_PassWord varchar(50),--管理员密码
       manage_Rank varchar(20)--级别
)

--用户表
create table users(
       user_Id int primary key,--用户编号
       userName varchar(20),--用户名
       userPassword varchar2(50),--会员密码
       user_TrueName varchar2(20),--姓名(感觉可以省略)                                                           
       user_Sex varchar2(2),--性别
       user_BirthDay date,--出生日期
       user_Pic blob,--头像
       user_Email varchar2(20),--邮箱
       user_Adress varchar2(200),--地址
       user_Phone varchar2(20),--电话
       user_ConFig int --审核状态  初始化0
)

create sequence seq_userId start with 1

insert into users values(1001,'easylife','a','张三','男',sysdate,null,'123@qq.com','北京','123456789',0);
insert into users values(1002,'echo','a','李四','男',sysdate,null,'123@qq.com','北京','123456789',0);
insert into users values(1003,'as','a','王五','男',sysdate,null,'123@qq.com','北京','123456789',0);
insert into users values(1004,'aas','a','赵六','男',sysdate,null,'123@qq.com','北京','123456789',0);
insert into users values(1005,'zxsc','a','田七','男',sysdate,null,'123@qq.com','北京','123456789',0);
insert into users values(1006,'xzcsa','a','哈哈','男',sysdate,null,'123@qq.com','北京','123456789',0);
insert into users values(1007,'sdzxc','a','呵呵','男',sysdate,null,'123@qq.com','北京','123456789',0);
insert into users values(1008,'xcwa','a','恩恩','男',sysdate,null,'123@qq.com','北京','123456789',0);
insert into users values(1009,'asdw','a','呜呜','男',sysdate,null,'123@qq.com','北京','123456789',0);



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

insert into askInfo values(seq_ask_Id.nextval,1001,'教堂怎么去...',default,1,sysdate);
insert into askInfo values(seq_ask_Id.nextval,1002,'山东省科技孵化项目性能查询...',default,1,sysdate);
insert into askInfo values(seq_ask_Id.nextval,1002,'是东方时代徐徐...',default,0,sysdate);
insert into askInfo values(seq_ask_Id.nextval,1003,'是的废墟上的...',default,1,sysdate);
insert into askInfo values(seq_ask_Id.nextval,1004,'士大夫但是现场v...',default,0,sysdate);
insert into askInfo values(seq_ask_Id.nextval,1005,'士大夫大师傅士大夫下次...',default,0,sysdate);
insert into askInfo values(seq_ask_Id.nextval,1006,'士大夫受到许多...',default,1,sysdate);
insert into askInfo values(seq_ask_Id.nextval,1007,'热太过分的...',default,1,sysdate);
insert into askInfo values(seq_ask_Id.nextval,1008,'从持续大幅...',default,0,sysdate);
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

-----------------------------------------------------------------------------------------------

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
	strategyInfo_Picture blob,--图片
	user_Id int,--发布者编号
	status int ,--审核状态
	strategyInfo_Click	int,--点击率
	strategyInfo_AddTime date	--发布时间
);

--攻略评论信息表
create table strategyAnswer(
	strategyAnswer_Id int primary key ,--评论编号
	strategyInfo_Id int ,--攻略编号
	strategyAnswer_Content varchar(1000),--评论内容
	user_Id int,--评论者编号	
	strategyAnswer_AddTime	date,--评论时间
	status int --审核状态
);
	
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













