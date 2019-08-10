--创建用户表
create table T_Users(
user_id number(24) not null primary key,
vip_name varchar2(24) not null unique,--会员名
email varchar2(24) default null unique,--登录邮箱
phone  number(11) not null unique,--绑定手机
user_img varchar2(24) default null,--头像
user_name varchar2(24) default null,--昵称
real_name varchar2(24) default null,--真实姓名
sex varchar2(24) default null,--性别
birthday varchar2(24) default null,--生日
constellation varchar2(24) default null,--星座
habitation varchar2(24) default null,--居住地
hometown varchar2(24) default null--家乡
)

COMMENT ON TABLE T_Users IS '用户表';
--注释字段
comment on column T_Users.user_id is '用户ID，自增';
comment on column T_Users.vip_name is '会员名';
comment on column T_Users.email is '登录邮箱';
comment on column T_Users.phone is '绑定手机';
comment on column T_Users.user_img is '头像';
comment on column T_Users.user_name is '昵称';
comment on column T_Users.real_name is '真实姓名';
comment on column T_Users.sex is '性别';
comment on column T_Users.birthday is '生日';
comment on column T_Users.constellation is '星座';
comment on column T_Users.habitation is '居住地';
comment on column T_Users.hometown is '家乡';

--自增ID
--序列
  create sequence SEQ_Users_Identity     

       increment by 1 --每次增加几个

       start with 1   --从1开始计数

       nomaxvalue      --不设置最大值

       nocycle         --一直累加，不循环

       nocache;        --不建缓冲区
--触发器
--drop trigger TG_Users_Identity;
create trigger TG_Users_Identity before

insert on T_Users for each row when(new.user_id is null)

begin

select SEQ_Users_Identity.nextval into :new.user_id from dual;

end; 

--添加字段
alter table T_Users add ( last_update  varchar2(24) default to_char(sysdate, 'yyyy-MM-dd HH24:mi:ss' ) );
--alter table T_Users drop (last_update);









