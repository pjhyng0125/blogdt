show databases;

drop table member;

create table member(
	id		varchar(30)	not null	primary key,
	pw		varchar(16) not null,
	name	varchar(10) not null,
	birth	datetime	not null,
	major	varchar(30) not null,
	position	varchar(10) not null,
	jyear varchar(4) default "1900",
	dept varchar(20) default "없음",
	flag	char(1) default '0'
);

insert into member values ("pjhyng0125","1234","박진형","1994/01/25","컴퓨터소프트웨어학","사원","2019","금융개발",'1');
insert into member values ("subin","1234","이수빈","1995/01/01","정보통신학","사원","2019","항공영업",'1');
insert into member values ("seungchan","1234","이승찬","1993/01/01","정보통신학","사원","2019","데이터센터",'1');
insert into member values ("namwoo","1234","최남우","1991/01/01","컴퓨터소프트웨어학","사원","2019","항공영업",'1');
insert into member values ("hyeongjin","1234","박형진","1992/01/01","컴퓨터소프트웨어학","사원","2019","항공영업",'1');
insert into member values ("phjhj","1234","박형진","1992/01/01","컴퓨터소프트웨어학","사원","2019","항공영업",'1');
insert into member values ("daejun","1234","박형진","1992/01/01","컴퓨터소프트웨어학","사원","2019","데이터센터",'1');

desc member;
alter table member add jyear varchar(4) default "1900";
select * from member;

drop table board;

create table board(
	num int not null primary key auto_increment,
	id varchar(10) not null,
	title varchar(50) not null,
	btype varchar(30) not null,
	img varchar(20) not null,
	content text not null
);

desc board;
insert into board values (1,"pjhyng0125","안녕하세염 박진형입니다!","신입사원 소개","parkjh.JPG","이건 내용쓰ㅎㅎ");
insert into board values (2,"pjhyng0125","안녕하세염 박진형입니다!","신입사원 소개","parkjh.JPG","이건 내용쓰ㅎㅎ");
insert into board values (3,"pjhyng0125","안녕하세염 박진형입니다!","신입사원 소개","parkjh.JPG","이건 내용쓰ㅎㅎ");
insert into board values (4,"pjhyng0125","안녕하세염 박진형입니다!","신입사원 소개","parkjh.JPG","이건 내용쓰ㅎㅎ");
insert into board values (5,"pjhyng0125","안녕하세염 박진형입니다!","신입사원 소개","parkjh.JPG","이건 내용쓰ㅎㅎ");
insert into board values (6,"phjhj","안녕하세염 박형진입니다!","연수원","parkhj.jpg","이건 내용쓰ㅎㅎ내에에에엥용");
insert into board values (7,"phjhj","안녕하세염 박형진입니다!","연수원","parkhj.jpg","이건 내용쓰ㅎㅎ내에에에엥용");
insert into board values (8,"daejun","안녕하세염 박형진입니다!","연수원","daejun.jpg","이건 내용쓰ㅎㅎ내에에에엥용");

select * from board;

update board set img="parkjh.jpg" where img="parkjh.JPG";

<!--option2-->
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
select name,dept,btype,img from member as m,board as b where m.id=b.id;

select name,dept,btype,img from member as m,board as b where m.id=b.id

