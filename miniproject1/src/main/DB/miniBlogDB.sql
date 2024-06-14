-- 회원 테이블
create table member{
	m_idx	int not null,							-- 회원번호
	m_name	varchar2(50) not null unique,	-- 회원명
	m_id	varchar2(50) not null,			-- 아이디
	m_pw	varchar2(50) not null,			-- 비밀번호
	m_email	varchar2(50) not null unique,	-- 이메일
	m_intro	varchar2(100) default 안녕하세요,	-- 자기소개
	m_rdate	date default sysdate,			-- 등록일자
	m_mdate	date default sysdate,			-- 수정일자
	m_type	int default 1					-- 구분(일반:1, 관리자:2)
};

-- Primary Key
alter table member add constraint pk_member_m_idx primary key(m_idx);

-- Sequence 지정
create sequence seq_member_m_idx;

-- 더미데이터 혹은 관리자 계정 설정
insert into member values (seq_member_m_idx,name,id,pw,email,intro,rdate,mdate,2);


-- 게시글 테이블
create table post{
	p_idx		int not null,					-- 게시번호
	p_cate		varchar2(50) not null,	-- 카테고리
	p_title		varchar2(100) not null, -- 게시글제목
	p_content 	CLOB not null,			-- 내용
	p_rdate		date default sysdate,	-- 등록일자
	p_mdate 	date default sysdate,	-- 수정일자
	p_type 		int default 1,			-- 구분(일반:1, 관리자:2)
	p_hit 		int default 1,			-- 조회수
	m_idx 		int not null			-- 회원번호
};

-- Primary Key
alter table post add constraint pk_member_p_idx primary key(p_idx);

-- Foreign Key
alter table post add constraint fk_post_m_idx foreign key (m_idx) references member(m_idx) on delete cascade;

-- Sequence 지정
create sequence seq_post_p_idx;

-- 더미데이터 혹은 공지사항 설정
insert into post values (seq_post_p_idx,cate,title,content,edate,mdate,2,hit,m_idx);


-- 게시글 좋아요/스크랩 테이블
create table post_like{
	l_idx 	int not null,					-- 번호
	l_rdate date default sysdate,	-- 생성일
	l_mdate date default sysdate,	-- 수정일
	l_type 	int not null,			-- 구분(좋아요:1, 스크랩:2)
	m_idx 	int not null,			-- 회원번호
	p_idx 	int	not null			-- 게시글 번호
}

-- Primary Key
alter table post_like add constraint pk_post_like_p_idx primary key(p_idx);

-- Foreign Key
alter table post_like add constraint fk_post_like_m_idx foreign key (m_dix) references member(m_dix) on delete cascade;
alter table post_like add constraint fk_post_like_p_idx foreign key (p_dix) references post(m_dix) on delete cascade;

-- 좋아요 중복 방지
alter table post_like add constraint unique_post_like unique (p_dix, m_dix);

-- Sequence 지정
create sequence seq_post_like_l_idx;

-- 더미데이터 혹은 공지사항 설정
insert into post_like values (seq_post_like_l_idx,rdate,mdate,type,m_idx,p_idx);


-- 댓글 테이블
create table comment{
	c_idx		int not null,					-- 댓글번호
	c_content	varchar2(100) not null,	-- 내용
	c_rdate		date default sysdate,	-- 등록일자
	c_mdate		date default sysdate,	-- 수정일자
	p_idx		int not null,			-- 게시판번호
	m_idx		int not null			-- 회원번호
}

-- Primary Key
alter table comment add constraint pk_comment_c_idx primary key(c_idx);

-- Foreign Key
alter table comment add constraint fk_comment_m_idx foreign key (m_dix) references member(m_dix) on delete cascade;
alter table comment add constraint fk_comment_p_idx foreign key (p_dix) references post(m_dix) on delete cascade;

-- Sequence 지정
create sequence seq_comment_c_idx;

-- 더미데이터 혹은 공지사항 설정
insert into post_like values (seq_comment_c_idx,content,rdate,mdate,p_idx,m_idx);

;;;;;;;;;