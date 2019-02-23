show databases;

drop table member;

create table member(
	id		varchar(30)	not null	primary key,
	pw		varchar(16) not null,
	name	varchar(10) not null,
	birth	datetime	not null,
	mno	int not null,
	position	varchar(10) not null,
	jyear varchar(4) default "1900",
	dno int default 0,
	flag	char(1) default '0'
);

insert into member values ("pjhyng0125","1234","박진형","1994/01/25",1,"사원","2019",1,'1');
desc member;
alter table member add jyear varchar(4) default "1900";
select * from member;

create table board(
	num int not null primary key auto_increment,
	id varchar(10) not null,
	title varchar(40) not null,
	btno int not null,
	img varchar(20) not null,
	content text not null
);

create table dept(
	do int default 0,
	dname varchar(12) not null
);

create table major(
	mno int default 0,
	mname varchar(12) not null
);

create table boardtype(
	btno int default 0,
	btname varchar(20) not null
);


desc member;




