show tables;

create table notice (
	idx int  not null auto_increment,  /* 게시글의 고유번호 */
	mid varchar(20) not null, 
	name varchar(20) not null,     /* 게시글의 게시자 닉네임 */
	title		 varchar(100) not null,    /* 게시글의 글 제목 */
	content  text not null,						 /* 글 내용 */	
	noticeDate		 datetime default now(),	 /* 글 올린 날짜 */
	readNum	 int default 0,						 /* 글 조회수 */
	good		 int default 0,						 /* 좋아요 클릭 횟수 누적하기 */
	primary key(idx)
);