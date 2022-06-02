create table book(
	num number not null,
	title varchar2(50) not null,
	author varchar2(30) not null,
	company varchar2(50) not null,
	isbn varchar2(30) not null,
	count number not null,
	primary key(num));
create sequence book_num;

insert into book
values(book_num.nextval,'자바','박메일','영진',1111111,20);
insert into book
values(book_num.nextval,'파이썬','김홍석','미키',222222,10);
insert into book
values(book_num.nextval,'머신러닝','임승환','영진',33333333,30);
insert into book
values(book_num.nextval,'시험은싫다','시험이여','영진',4444444,15);

select * from book;
