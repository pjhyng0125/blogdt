/* ALTER TABLE board MODIFY img varchar(50); */

show databases;

drop table member;

create table member(
	id		varchar(30)	not null	primary key,
	pw		varchar(255) not null,
	name	varchar(10) not null,
	birth	datetime	not null,
	major	varchar(30) not null,
	position	varchar(10) not null,
	jyear varchar(4) default "1900",
	dept varchar(20) default "없음",
	flag	char(1) default '0'
);

insert into member values ("pjhyng0125","1234","박진형","1994/01/25","컴퓨터소프트웨어학","사원","2019","금융개발",'1');
insert into member values ("subin","1234","이수빈","1995/01/01","정보통신공학","사원","2019","항공관리",'1');
insert into member values ("seungchan","1234","이승찬","1993/01/01","정보통신학","사원","2019","데이터센터",'1');
insert into member values ("namwoo","1234","최남우","1991/01/01","컴퓨터소프트웨어학","사원","2019","항공영업",'1');
insert into member values ("lion","1234","라이언","1992/01/01","컴퓨터소프트웨어학","사원","2019","항공영업",'1');
insert into member values ("apeach","1234","어피치","1992/01/01","컴퓨터소프트웨어학","사원","2019","항공영업",'1');
insert into member values ("tube","1234","튜 브","1992/01/01","컴퓨터소프트웨어학","사원","2019","데이터센터",'1');

select jyear,btype,title,dept,name,position,img,content,m.id from member as m,board as b where num=1 and m.id=b.id;

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
insert into board values (1,"pjhyng0125","안녕하세염 박진형입니다!","신입사원 소개","parkjh.jpg","이건 내용쓰ㅎㅎ");
insert into board values (2,"subin","안녕하세요 이수빈입니다!","신입사원 소개","parkjh.jpg","이건 내용쓰ㅎㅎ");
insert into board values (3,"seungchan","안녕하세요 박진형입니다!","신입사원 소개","parkjh.jpg","이건 내용쓰ㅎㅎ");
insert into board values (4,"namwoo","안녕하세요 박진형입니다!","신입사원 소개","parkjh.jpg","이건 내용쓰ㅎㅎ");
insert into board values (5,"lion","안녕하세요 라이언입니다!","신입사원 소개","lion.jpg","이건 내용쓰ㅎㅎ");
insert into board values (6,"apeach","안녕하세요 어피치입니다!","연수원","apeach.jpg","이건 내용쓰ㅎㅎ내에에에엥용");
insert into board values (7,"tube","안녕하세요 튜 브입니다!","연수원","tube.jpg","이건 내용쓰ㅎㅎ내에에에엥용");
insert into board values (8,"subin","안녕하세요 무 지입니다!","연수원","muji.jpg","이건 내용쓰ㅎㅎ내에에에엥용");
insert into board values (9,"subin","안녕하세요 박형진입니다!","연수원","daejun.jpg","이건 내용쓰ㅎㅎ내에에에엥용");

select num,id,title,btype from board where id='pjhyng0125';

select * from board;
delete from board where num="5";
delete from board where num="7";
delete from board where num="8";

update board set img="parkjh.jpg" where img="parkjh.JPG";
update board set btype="선배님들 조언" where btype="선배님 조언";
update board set img="lion.JPG" where img="lion.jpg";
update board set img="apeach.JPG" where img="apeach.jpg";
update board set img="tube.JPG" where img="tube.jpg";
update board set img="muji.JPG" where img="muji.jpg";
update board set content="정말 환영합니다!" where id="test00";

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

alter table member modify pw varchar(300);
