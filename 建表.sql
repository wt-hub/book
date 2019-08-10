--�����û���
create table T_Users(
user_id number(24) not null primary key,
vip_name varchar2(24) not null unique,--��Ա��
email varchar2(24) default null unique,--��¼����
phone  number(11) not null unique,--���ֻ�
user_img varchar2(24) default null,--ͷ��
user_name varchar2(24) default null,--�ǳ�
real_name varchar2(24) default null,--��ʵ����
sex varchar2(24) default null,--�Ա�
birthday varchar2(24) default null,--����
constellation varchar2(24) default null,--����
habitation varchar2(24) default null,--��ס��
hometown varchar2(24) default null--����
)

COMMENT ON TABLE T_Users IS '�û���';
--ע���ֶ�
comment on column T_Users.user_id is '�û�ID������';
comment on column T_Users.vip_name is '��Ա��';
comment on column T_Users.email is '��¼����';
comment on column T_Users.phone is '���ֻ�';
comment on column T_Users.user_img is 'ͷ��';
comment on column T_Users.user_name is '�ǳ�';
comment on column T_Users.real_name is '��ʵ����';
comment on column T_Users.sex is '�Ա�';
comment on column T_Users.birthday is '����';
comment on column T_Users.constellation is '����';
comment on column T_Users.habitation is '��ס��';
comment on column T_Users.hometown is '����';

--����ID
--����
  create sequence SEQ_Users_Identity     

       increment by 1 --ÿ�����Ӽ���

       start with 1   --��1��ʼ����

       nomaxvalue      --���������ֵ

       nocycle         --һֱ�ۼӣ���ѭ��

       nocache;        --����������
--������
--drop trigger TG_Users_Identity;
create trigger TG_Users_Identity before

insert on T_Users for each row when(new.user_id is null)

begin

select SEQ_Users_Identity.nextval into :new.user_id from dual;

end; 

--����ֶ�
alter table T_Users add ( last_update  varchar2(24) default to_char(sysdate, 'yyyy-MM-dd HH24:mi:ss' ) );
--alter table T_Users drop (last_update);









