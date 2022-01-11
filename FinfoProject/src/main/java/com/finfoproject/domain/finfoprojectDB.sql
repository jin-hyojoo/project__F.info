-- 계정 : FESTIVAL/FESTIVAL
-- *테이블 삭제할 때는 리뷰-페스티벌-장르-유저  테이불 순으로 삭제하기 (?)
--------------------------------------------------------- : 유저 DB 
drop table USERS;
drop table USERS_AUTH;
drop sequence users_seq


-- 1. 유저 DB생성
create table users(
	U_NO      NUMBER(5)         PRIMARY KEY,
	U_EMAIL   VARCHAR2(100)     UNIQUE,
	U_PW      VARCHAR2(100)     not null,
	U_NAME    VARCHAR2(100),
	U_LIKE1   VARCHAR2(20),
	U_LIKE2   VARCHAR2(20),
	U_CK      NUMBER(1)         DEFAULT  0
);

-- 2. 유저 시퀀스 생성문
create sequence users_seq
start
with 1 increment by 1
nocache
nocycle;

-- 3. 생성한 테이블 조회
select * from USERS;
select * from USERS_AUTH;

create table USERS_AUTH(
	U_ID varchar2(50) not null,
	AUTH	varchar2(50) not null references USERS (U_EMAIL)
);


---------------------------------------------------------  : 장르 DB 
drop table GENRE;

-- 생성
create table GENRE (                   -- 장르 종류 지정
    G_NO    NUMBER(5)    PRIMARY KEY,  -- 테이블별, 계정별 정보에 장르를 숫자로
    G_NAME  VARCHAR(20)   
);

-- 조회
select * from GENRE;


--------------------------------------------------------- : 페스티벌 DB 
drop table FESTIVAL;
drop sequence festival_seq


create table FESTIVAL(
    F_NO           NUMBER(5)          PRIMARY KEY,  -- 번호
    F_SUBJECT      VARCHAR2(100)      not null,     -- 제목
    F_START        DATE,                            -- 시작일
    F_END          DATE,                            -- 마감일
    F_PLACE        VARCHAR2(50),                    -- 장소
    F_TAG1         VARCHAR(100),                     -- 태그1
    F_TAG2         VARCHAR(100),	                    -- 태그2
    G_NO           NUMBER(5)          references GENRE (G_NO),  -- 장르
    F_THUMBNAIL    VARCHAR2(100),                   -- 썸네일
    F_DESC         VARCHAR2(1000),                  -- 주최측 정보(멜론티켓에서는 기획사정보)
    F_IMGURL       VARCHAR2(100),                   -- 이미지 상세정보
    F_URL          VARCHAR2(100),                    -- URL
    F_SHOWLOWPRICE VARCHAR2(20),                    -- 가격 정보
    F_STATE        NUMBER(5)          not null      -- 상태 (0시작 전, 1진행 중, 2마감)
);

-- 시퀀스 생성
create sequence festival_seq
start
with 1 increment by 1
nocache
nocycle;

select * from FESTIVAL;


--------------------------------------------------------- : 후기 DB 
drop table REVIEW;
drop sequence review_seq

-- 테이블 생성
create table REVIEW (
    R_NO        NUMBER(5)       PRIMARY KEY,
    F_NO        NUMBER(5)       references FESTIVAL (F_NO),
    U_EMAIL     VARCHAR2(20)    references USERS (U_EMAIL),
    R_CONTENT   VARCHAR2(1000),
    R_REGDATE   DATE DEFAULT SYSDATE	
);

-- 시퀀스 생성
create sequence review_seq
start
with 1 increment by 1
nocache
nocycle;


-- 조회
select * from review;



/* 사용안함
create table LIKES (
    U_NO     NUMBER(5)     not null,
    G_NO     NUMBER(5)     references GENRE(G_NO),
    L_SEQ    NUMBER(5),
    PRIMARY KEY(U_NO, G_NO)
);
