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
	
select * from member;
SELECT * FROM user_seq;
DROP table exercise;
-- 회원번호시퀀스
create sequence user_seq
 start with 1
 increment by 1
 maxvalue 999999
 nocycle 
 nocache

 create table diary(
id varchar2(100),
time date,
list varchar2(100) not null,
strong number(10),
weight number(10),
height number(10),
danger number(10),
max number(10),
mean number(10),
constraint diary_id_fk foreign key(id) references member(id)
);
select * from member;
select * from exercise;

select * from exercise
create table exercise(
e_name varchar2(100),
e_kind number(1) not null,
e_number number(38) not null,
e_sequence number(38) not null,
constraint exer_ename primary key(e_name)
);

-- 등운동 시퀀스
create sequence back_seq
 start with 1
 increment by 1
 maxvalue 999999
 nocycle 
 nocache
-- 어깨운동 시퀀스
create sequence shoulder_seq
 start with 1
 increment by 1
 maxvalue 999999
 nocycle 
 nocache
 -- 가슴운동 시퀀스
create sequence chest_seq
 start with 1
 increment by 1
 maxvalue 999999
 nocycle 
 nocache
-- 하체 앞 시퀀스
create sequence lowerb_seq
 start with 1
 increment by 1
 maxvalue 999999
 nocycle 
 nocache
-- 하체 시퀀스
create sequence lowerf_seq
 start with 1
 increment by 1
 maxvalue 999999
 nocycle 
 nocache
 -- 코어 운동 시퀀스
create sequence core_seq
 start with 1
 increment by 1
 maxvalue 999999
 nocycle 
 nocache

-- 등운동 인서트
insert into exercise values('렛풀다운',1,1,back_seq.nextval);
insert into exercise values('롱풀머신',1,1,back_seq.nextval);
insert into exercise values('타바로우',1,1,back_seq.nextval);
insert into exercise values('바벨로우',1,1,back_seq.nextval);
insert into exercise values('풀업',1,1,back_seq.nextval);
insert into exercise values('시티드 로우',1,1,back_seq.nextval);
insert into exercise values('벤트 오버 로잉',1,1,back_seq.nextval);
insert into exercise values('굿모닝 엑서사이즈',1,1,back_seq.nextval);
insert into exercise values('케이블 스윙',1,1,back_seq.nextval);
insert into exercise values('플레이트 머신 로우',1,1,back_seq.nextval);
insert into exercise values('덤벨 벤트오버 로우',1,1,back_seq.nextval);
 -- 어깨 운동 인서트
 insert into exercise values('숄더 프레스',1,2,shoulder_seq.nextval);
insert into exercise values('밀리터리 프레스',1,2,shoulder_seq.nextval);
insert into exercise values('오버헤드 프레스',1,2,shoulder_seq.nextval);
insert into exercise values('덤벨 숄더 프레스',1,2,shoulder_seq.nextval);
insert into exercise values('사이드 레터럴 레이즈',1,2,shoulder_seq.nextval);
insert into exercise values('스텐딩 덤벨 프레스',1,2,shoulder_seq.nextval);
insert into exercise values('케이블 사이드',1,2,shoulder_seq.nextval);
insert into exercise values('덤벨 벤트오버 레이즈',1,2,shoulder_seq.nextval);
insert into exercise values('프론트 덤벨 레이즈',1,2,shoulder_seq.nextval);
insert into exercise values('시티드 덤벨 프레스',1,2,shoulder_seq.nextval);
 -- 가슴운동 인서트
insert into exercise values('체스트 프레스',1,3,chest_seq.nextval);
insert into exercise values('벤치 프레스',1,3,chest_seq.nextval);
insert into exercise values('덤벨 프레스',1,3,chest_seq.nextval);
insert into exercise values('버터 플라이',1,3,chest_seq.nextval);
insert into exercise values('푸시업',1,3,chest_seq.nextval);
insert into exercise values('딥스',1,3,chest_seq.nextval);
insert into exercise values('인클라인 덤벨 프레스',1,3,chest_seq.nextval);
insert into exercise values('펙 덱 플라이 머신',1,3,chest_seq.nextval);

--하체 앞 인서트
insert into exercise values('레그 프레스',2,1,lowerb_seq.nextval);
insert into exercise values('레그 익스텐션',2,1,lowerb_seq.nextval);
insert into exercise values('와이드 스쿼트',2,1,lowerb_seq.nextval);
insert into exercise values('내로우 스쿼트',2,1,lowerb_seq.nextval);
insert into exercise values('스쿼트',2,1,lowerb_seq.nextval);
insert into exercise values('힙 어덕션',2,1,lowerb_seq.nextval);
insert into exercise values('카프레이즈',2,1,lowerb_seq.nextval);
insert into exercise values('사이드 스쿼트',2,1,lowerb_seq.nextval);
 -- 하체 뒤 인서트
insert into exercise values('레그 컬',2,2,lowerf_seq.nextval);
insert into exercise values('런지',2,2,lowerf_seq.nextval);
insert into exercise values('백 런지',2,2,lowerf_seq.nextval);
insert into exercise values('라잉 레그 컬',2,2,lowerf_seq.nextval);
insert into exercise values('데드리프트',2,2,lowerf_seq.nextval);
insert into exercise values('스티프 데드리프트',2,2,lowerf_seq.nextval);
insert into exercise values('트위스트 런지',2,2,lowerf_seq.nextval);
insert into exercise values('사이드 런지',2,2,lowerf_seq.nextval);
insert into exercise values('힙 쓰러스트',2,2,lowerf_seq.nextval);
insert into exercise values('힙 익스텐션',2,2,lowerf_seq.nextval);
-- 전신 인서트
insert into exercise values('암워킹',3,1,allbody_seq.nextval); 
insert into exercise values('버피 테스트',3,1,allbody_seq.nextval) ;
insert into exercise values('맨몸 점프 스쿼트',3,1,allbody_seq.nextval) ;
insert into exercise values('스쿼트 버피',3,1,allbody_seq.nextval) ;
insert into exercise values('마운틴 클라이머',3,1,allbody_seq.nextval) ;
insert into exercise values('크로스 마운틴 클라이머',3,1,allbody_seq.nextval) ;
insert into exercise values('니 푸쉬업 플로우',3,1,allbody_seq.nextval) ;
insert into exercise values('스위머',3,1,allbody_seq.nextval) ;
insert into exercise values('크로스 킥 힙 쓰러스트',3,1,allbody_seq.nextval) ;
insert into exercise values('슬램 스쿼트',3,1,allbody_seq.nextval) ;
insert into exercise values('크로스 레그레이즈',3,1,allbody_seq.nextval);
insert into exercise values('프론트 킥',3,1,allbody_seq.nextval) ;
insert into exercise values('숄더 탭스',3,1,allbody_seq.nextval) ;
insert into exercise values('점핑 잭',3,1,allbody_seq.nextval) ;
 -- 코어 인서트
insert into exercise values('플랭크',3,2,core_seq.nextval) ;
insert into exercise values('크런치',3,2,core_seq.nextval) ;
insert into exercise values('레그레이즈',3,2,core_seq.nextval); 
insert into exercise values('드래곤 플래그',3,2,core_seq.nextval); 
insert into exercise values('싯 업',3,2,core_seq.nextval);
insert into exercise values('시티드 니업',3,2,core_seq.nextval);
insert into exercise values('벌드 독',3,2,core_seq.nextval);
insert into exercise values('대드버그',3,2,core_seq.nextval);
insert into exercise values('러시안 트위스트',3,2,core_seq.nextval);
insert into exercise values('슈퍼맨 플랭크',3,2,core_seq.nextval);
insert into exercise values('엘보우 플랭크',3,2,core_seq.nextval);
insert into exercise values('사이드 플랭크',3,2,core_seq.nextval);

