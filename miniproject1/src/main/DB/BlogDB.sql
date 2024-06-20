
-- 회원 테이블
create table member(
	m_idx	int not null,					-- 회원번호
	m_name	varchar2(50) not null unique,	-- 회원명
	m_id	varchar2(50) not null,			-- 아이디
	m_pw	varchar2(50) not null,			-- 비밀번호
	m_email	varchar2(50) not null unique,	-- 이메일
	m_intro	varchar2(100) default '안녕하세요',	-- 자기소개 -- '' 추가필요
	m_rdate	date default sysdate,			-- 등록일자
	m_mdate	date default sysdate,			-- 수정일자
	m_type	int default 1 					-- 구분(일반:1, 관리자:2)
);

SELECT * FROM member WHERE m_id = 'admin' AND m_pw = 'admin';

-- Primary Key
alter table member add constraint pk_member_m_idx primary key(m_idx);

-- check
alter table member add constraint ck_member_m_type check m_type in (1,2); 

-- Sequence 지정
create sequence seq_member_m_idx; 

-- 더미데이터 혹은 관리자 계정 설정 
insert into member(m_name, m_id, m_pw, m_email, m_type) values ('test', 'test', 'test', 'test@test.com', 1);

-- 테스트
select * from member
delete * from member where m_id = 'admin'


-- 제약조건까지 삭제
drop table member  CASCADE CONSTRAINTS

-- 시퀀스 삭제
drop sequence seq_member_m_idx;

-- ============================================================

-- 게시글 테이블
create table post(
	p_idx		int not null,			-- 게시번호
	p_cate		varchar2(50) not null,	-- 카테고리
	p_title		varchar2(100) not null, -- 게시글제목
	p_content 	varchar2(2000) not null,-- 내용
	p_rdate		date default sysdate,	-- 등록일자
	p_mdate 	date default sysdate,	-- 수정일자
	p_type 		int default 1,			-- 구분(일반:1, 관리자:2)
	p_hit 		int default 1,			-- 조회수
	m_idx 		int not null			-- 회원번호
);

-- Primary Key
alter table post add constraint pk_post_p_idx primary key(p_idx);

-- Foreign Key
alter table post add constraint fk_post_m_idx foreign key (m_idx) references member(m_idx) on delete cascade;

-- check
alter table post add constraint ck_post_p_type check (p_type in (1,2));

-- Sequence 지정
create sequence seq_post_p_idx;

-- 더미데이터 혹은 공지사항 설정
insert into post(p_idx, p_cate, p_title, p_content, p_type, m_idx) values (seq_post_p_idx.nextval, '테이블1', '글제목테스트', '글내용테스트', 2, 1);
insert into post(p_idx, p_cate, p_title, p_content, p_type, m_idx) values (seq_post_p_idx.nextval, '테이블1', '글제목테스트222', '글내용테스트222', 1, 1);

-- 테스트
select * from post

-- 제약조건까지 삭제
drop table post  CASCADE CONSTRAINTS

-- 시퀀스 삭제
drop sequence seq_post_p_idx;

-- ============================================================

-- 게시글 좋아요/스크랩 테이블
create table post_like(
	l_idx 	int not null,			-- 좋아요/스크랩 번호
	l_rdate date default sysdate,	-- 생성일
	l_mdate date default sysdate,	-- 수정일
	l_type 	int not null,			-- 구분(좋아요:1, 스크랩:2)
	m_idx 	int not null,			-- 회원번호
	p_idx 	int	not null			-- 게시글 번호
)

-- Primary Key
alter table post_like add constraint pk_post_like_p_idx primary key(p_idx);

-- Foreign Key
alter table post_like add constraint fk_post_like_m_idx foreign key (m_idx) references member(m_idx) on delete cascade;
alter table post_like add constraint fk_post_like_p_idx foreign key (p_idx) references post(p_idx) on delete cascade;

-- check 
alter table post_like add constraint ck_post_like_l_type check (l_type in (1,2));

-- 좋아요 중복 방지
alter table post_like add constraint unique_post_like unique (p_idx, m_idx);

-- Sequence 지정
create sequence seq_post_like_l_idx;

-- 더미데이터 혹은 공지사항 설정
insert into post_like values (seq_post_like_l_idx,rdate,mdate,type,m_idx,p_idx);
insert into post_like (l_idx, l_type, m_idx, p_idx) values (seq_post_like_l_idx.nextval, 1, 1, 3) ;


================================================================
-- 댓글 테이블
create table comments(
	c_idx		int not null,			-- 댓글번호
	c_content	varchar2(1000) not null,-- 내용
	c_rdate		date default sysdate,	-- 등록일자
	c_mdate		date default sysdate,	-- 수정일자
	p_idx		int not null,			-- 게시판번호
	m_idx		int not null			-- 회원번호
);
-- Primary Key
alter table comments add constraint pk_comments_c_idx primary key(c_idx);
-- Foreign Key
alter table comments add constraint fk_comments_m_idx foreign key (m_idx) references member(m_idx) on delete cascade;
alter table comments add constraint fk_comments_p_idx foreign key (p_idx) references post(p_idx) on delete cascade;
-- Sequence 지정
create sequence seq_comments_c_idx;

insert into comments(c_idx, c_content, p_idx, m_idx) values (seq_comments_c_idx.nextval,'아아아',1,99);

select * from comments