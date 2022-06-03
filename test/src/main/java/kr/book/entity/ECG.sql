-- 회원정보 테이블
create table member(
seq number(10),
id varchar2(100),
pw varchar2(100) not null,
nick varchar2(100) not null,
height number(10) not null,
weight number(10) not null,
strong number(10) not null,
constraint user_seq primary key(seq),
constraint id unique(id),
constraint nick unique(nick));
	
SELECT * FROM user_seq;
DROP SEQUENCE user_seq;
-- 회원번호시퀀스
create sequence user_seq
 start with 1
 increment by 1
 maxvalue 999999
 nocycle 
 nocache
 



-- 운동정보 테이블
create table exercise(
e_name varchar2(100),
e_number number(38) not null,
e_sequence number(38) not null,
constraint exercise_ename primary key(e_name)
);

-- 등운동시퀀스
create sequence back_seq
 start with 1
 increment by 1
 maxvalue 999999
 nocycle 
 nocache
-- 어깨운동시퀀스
create sequence shoulder_seq
 start with 1
 increment by 1
 maxvalue 999999
 nocycle 
 nocache
-- 가슴운동시퀀스
create sequence chest_seq
 start with 1
 increment by 1
 maxvalue 999999
 nocycle 
 nocache
-- 하체뒤운동시퀀스
create sequence lowerb_seq
 start with 1
 increment by 1
 maxvalue 999999
 nocycle 
 nocache
-- 하체 앞 운동시퀀스
create sequence lowerf_seq
 start with 1
 increment by 1
 maxvalue 999999
 nocycle 
 nocache
-- 전신운동 시퀀스
create sequence allbody_seq
 start with 1
 increment by 1
 maxvalue 999999
 nocycle 
 nocache