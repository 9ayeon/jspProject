show tables;

create table member (
	idx int not null auto_increment, /* 회원 고유번호 */ /* 프라이머리키 직접주지않은이유 : 회원등급,회원아이디 중복처리 아이디가 다른곳에서 외래키로 사용할수있음 (해당테이블의 프라이머리키,문제가있으면 유니키로해도됨) id가 중복되서는안됨(다른곳에서외래키로사용해야해서)오토로되어있으면무조건 프라이머리키임 최소2개이상나옴 프라이머리키를 따로 빼서 한번에 선언함*/
	mid varchar(20) not null,        /* 회원 아이디(중복불허) */
	name varchar(20) not null,       /* 회원 성명 */
	pwd varchar(100) not null,       /* 비밀번호(SHA암호화 처리) */
	gender varchar(5) default '남자', /* 성별 */
	email varchar(50) not null,      /* 이메일(아이디/비밀번호 분실시 사용) - 형식체크필수 */
	birthday datetime default now(), /* 생일 */
	tel varchar(15),                 /* 전화번호(010-1234-5678) */
	address varchar(100),            /* 회원주소(상품 배달시 기본주소로 사용) */
	job varchar(20),                 /* 회원 직업 */
	userDel char(2) default 'NO',    /* 회원 탈퇴 신청 여부(OK:탈퇴신청한 회원, NO:현재가입중인회원) */
 	level int default 2,             /* 회원등급(1:관리자, 2:특별회원 3:일반회원) */
	primary key(idx, mid)						 /* 주키: idx(고유번호), mid(아이디) */
);

insert into member values (default,'admin','관리자','1234','여자','admin@admin.com',default,'010-0000-0000','충북 청주시 흥덕구 복대동 1000',default,0);


select * from member;

desc member;
delete from member where mid = 'aaaa';

drop table member;