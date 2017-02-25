select * from manage;
select * from users;
select * from askInfo;
select * from ask_Answer;
select * from tagInfo;
select * from tagRel;
drop table askInfo;
drop table users;
drop table ask_Answer;


--����Ա��
create table manage(
       manage_Id int primary key,--���
       manage_Name varchar(20),--����Ա�ʺ�
       manage_PassWord varchar(50),--����Ա����
       manage_Rank varchar(20)--����
)

--�û���
create table users(
       user_Id int primary key,--�û����
       userName varchar(20),--�û���
       userPassword varchar2(50),--��Ա����
       user_TrueName varchar2(20),--����(�о�����ʡ��)                                                           
       user_Sex varchar2(2),--�Ա�
       user_BirthDay date,--��������
       user_Pic blob,--ͷ��
       user_Email varchar2(20),--����
       user_Adress varchar2(200),--��ַ
       user_Phone varchar2(20),--�绰
       user_ConFig int --���״̬  ��ʼ��0
)

create sequence seq_userId start with 1

insert into users values(1001,'easylife','a','����','��',sysdate,null,'123@qq.com','����','123456789',0);
insert into users values(1002,'echo','a','����','��',sysdate,null,'123@qq.com','����','123456789',0);
insert into users values(1003,'as','a','����','��',sysdate,null,'123@qq.com','����','123456789',0);
insert into users values(1004,'aas','a','����','��',sysdate,null,'123@qq.com','����','123456789',0);
insert into users values(1005,'zxsc','a','����','��',sysdate,null,'123@qq.com','����','123456789',0);
insert into users values(1006,'xzcsa','a','����','��',sysdate,null,'123@qq.com','����','123456789',0);
insert into users values(1007,'sdzxc','a','�Ǻ�','��',sysdate,null,'123@qq.com','����','123456789',0);
insert into users values(1008,'xcwa','a','����','��',sysdate,null,'123@qq.com','����','123456789',0);
insert into users values(1009,'asdw','a','����','��',sysdate,null,'123@qq.com','����','123456789',0);



--������Ϣ��
create table askInfo(
	ask_Id int primary key,--������
	user_Id int ,--�����߱��
	ask_Content varchar2(100),--��������
	ask_Click int default 0,--�����
	ask_Status int,--״̬[�ѽ����δ]
	ask_Time date --����ʱ��
);

create sequence seq_ask_Id start with 1

insert into askInfo values(seq_ask_Id.nextval,1001,'������ôȥ...',default,1,sysdate);
insert into askInfo values(seq_ask_Id.nextval,1002,'ɽ��ʡ�Ƽ�������Ŀ���ܲ�ѯ...',default,1,sysdate);
insert into askInfo values(seq_ask_Id.nextval,1002,'�Ƕ���ʱ������...',default,0,sysdate);
insert into askInfo values(seq_ask_Id.nextval,1003,'�ǵķ����ϵ�...',default,1,sysdate);
insert into askInfo values(seq_ask_Id.nextval,1004,'ʿ������ֳ�v...',default,0,sysdate);
insert into askInfo values(seq_ask_Id.nextval,1005,'ʿ����ʦ��ʿ����´�...',default,0,sysdate);
insert into askInfo values(seq_ask_Id.nextval,1006,'ʿ����ܵ����...',default,1,sysdate);
insert into askInfo values(seq_ask_Id.nextval,1007,'��̫���ֵ�...',default,1,sysdate);
insert into askInfo values(seq_ask_Id.nextval,1008,'�ӳ������...',default,0,sysdate);
insert into askInfo values(seq_ask_Id.nextval,1009,'���������ϵ�...',default,1,sysdate);

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


--��ǩ��Ϣ��
create table tagInfo(
	tag_Id int,--��ǩ���
	tagName varchar2(10)--��ǩ��
);

create sequence seq_tagId start with 1

insert into tagInfo values(seq_tagId.nextval,'����');
insert into tagInfo values(seq_tagId.nextval,'����');
insert into tagInfo values(seq_tagId.nextval,'����');
insert into tagInfo values(seq_tagId.nextval,'����');
insert into tagInfo values(seq_tagId.nextval,'�յ�');
insert into tagInfo values(seq_tagId.nextval,'��');
insert into tagInfo values(seq_tagId.nextval,'ˮˮ');
insert into tagInfo values(seq_tagId.nextval,'�ε�');
insert into tagInfo values(seq_tagId.nextval,'����');
insert into tagInfo values(seq_tagId.nextval,'�ո�');
insert into tagInfo values(seq_tagId.nextval,'����');
insert into tagInfo values(seq_tagId.nextval,'���');

select * from TAGINFO

--�����ǩ��ϵ��
create table tagRel(
	id int primary key,
	tag_Id int,--��ǩ���
	ask_Id int --�����ǩ
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

--�ظ����ݱ�
create table ask_Answer(
	answer_Id int primary key,--�ظ����
	user_Id int,--�ظ��߱��
	ask_Id int,--������
	likeCount int,--��������
	answer_Content varchar(500),--�ظ�����
	answer_Time date --�ظ�ʱ��	
);

select * from USERS
inner join ASK_ANSWER aa
on aa.user_Id=users.user_Id
where aa.ask_Id=22;

create sequence seq_answer_id start with 1;

insert into ask_Answer values(seq_answer_id.nextval,1002,1,0,'��֪��',sysdate);
insert into ask_Answer values(seq_answer_id.nextval,1003,22,0,'��֪��',sysdate);
insert into ask_Answer values(seq_answer_id.nextval,1005,27,0,'��֪��',sysdate);
insert into ask_Answer values(seq_answer_id.nextval,1007,22,0,'��֪��',sysdate);
insert into ask_Answer values(seq_answer_id.nextval,1008,24,0,'��֪��',sysdate);
insert into ask_Answer values(seq_answer_id.nextval,1001,24,0,'��֪��',sysdate);
insert into ask_Answer values(seq_answer_id.nextval,1001,28,0,'��֪��',sysdate);
insert into ask_Answer values(seq_answer_id.nextval,1002,27,0,'��֪��',sysdate);
insert into ask_Answer values(seq_answer_id.nextval,1005,28,0,'��֪��',sysdate);
insert into ask_Answer values(seq_answer_id.nextval,1006,22,0,'��֪��',sysdate);

select * from ASK_ANSWER

select * from ASK_ANSWER where ask_id=1
select * from ask_Answer


--������Ϣ��
--create table commentInfo(
--	comment_Id int primary key,--���۱��
--	user_Id int,--�����߱��
--	comment_Conent varchar(100),--��������
--	comment_Time date --����ʱ��
--);

--�������ͱ�
--create table askClass(
--	ask_ClassId int primary key,--�������ͱ��
--	askClass_Name varchar(50),--�����������
--	askClass_SubTxt	varchar(20)	--��Ҫ˵��
--);

-----------------------------------------------------------------------------------------------

--���Է����
create table strategy(
	strategy_Id int primary key,--������
	strategy_Name varchar(50),--����
	strategy_SubTxt	varchar(200)--��Ҫ˵��
);

--������Ϣ��
create table strategyInfo(
	strategyInfo_Id int primary key,--���Ա��
	strategy_Id int,--������
	strategyInfo_Title varchar(50),--����
	strategyInfo_Content varchar(1000),--��������
	strategyInfo_Picture blob,--ͼƬ
	user_Id int,--�����߱��
	status int ,--���״̬
	strategyInfo_Click	int,--�����
	strategyInfo_AddTime date	--����ʱ��
);

--����������Ϣ��
create table strategyAnswer(
	strategyAnswer_Id int primary key ,--���۱��
	strategyInfo_Id int ,--���Ա��
	strategyAnswer_Content varchar(1000),--��������
	user_Id int,--�����߱��	
	strategyAnswer_AddTime	date,--����ʱ��
	status int --���״̬
);
	
--������
create table region(
       region_Id int primary key,--(����)�������
       region_Name varchar(50),--����
       region_SubTxt varchar(4000)--��Ҫ˵��
)

--�����
create table scenic(
	scenic_Id int primary key,--������
	scenic_Name varchar(50),--����
	scenic_SubTxt varchar(4000),--��Ҫ˵��
	region_Id int --�������
);

--��·��
create table route(
	 route_Id int primary key,--·�߱��
	 region_Name varchar(50),--��������
	 category_Id int --��·�����
);

--��·����
create table category(
	category_Id int primary key,--��·�����
	category_Name varchar(50),--��·�������
	categoryList_Id int --��·��ϸ���
);

--��·��ϸ��
create table categoryList(
	categoryList_Id int primary key,--��·��ϸ���
	categoryList_SubTxt varchar(4000)--��·��ϸ˵��
);













