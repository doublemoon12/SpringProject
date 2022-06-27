Create table USERS (
    ID varchar2(8) Primary Key, 
    PASSWORD varchar2 (8), 
    NAME varchar2(20), 
    ROLE varchar2 (5)
);

INSERT INTO USERS VALUES ( 'admin', '1234', '관리자', 'Admin') ; 
INSERT INTO USERS VALUES ( 'user', '1234', '홍길동', 'User') ; 

Create Table BOARD (
    SEQ number(5) Primary Key, 
    TITLE varchar2 (200), 
    WRITER varchar2(20),
    CONTENT varchar2(2000), 
    REGDATE date Default sysdate, 
   CNT number(5) Default 0
   ); 

INSERT INTO BOARD ( SEQ, TITLE, WRITER, CONTENT, REGDATE, CNT) 
VALUES (1, '가입인사' , '관리자', '안녕하세요. 반갑습니다. .... ', sysdate, default ); 

commit;

CREATE TABLE TBL_BOARD(  
    	BGNO NUMBER(11,0), -- 게시판 그룹번호
    	BRDNO NUMBER(11,0), -- 글번호
    	BRDTITLE VARCHAR2(255 BYTE), -- 글제목
    	BRDWRITER VARCHAR2(20 BYTE), -- 작성자
    	BRDMEMO VARCHAR2(4000 BYTE), -- 글내용
    	BRDDATE DATE, -- 작성일자
    	BRDHIT NUMBER, -- 조회수
    	BRDDELETEFLAG CHAR(1 BYTE), -- 삭제여부 
        CONSTRAINT BRDNO_PK PRIMARY KEY (BRDNO)
    );
    CREATE SEQUENCE BRDNO_SEQ;

CREATE TABLE TBL_BOARDFILE( 
      	FILENO NUMBER(11,0), -- 파일번호
    	BRDNO NUMBER(11,0), -- 글번호
    	FILENAME VARCHAR2(100 BYTE), -- 파일명
    	REALNAME VARCHAR2(30 BYTE), -- 실제파일명
    	FILESIZE NUMBER, -- 파일크기
    	CONSTRAINT FILENO_PK PRIMARY KEY (FILENO)
    );
    CREATE SEQUENCE FILENO_SEQ;

CREATE TABLE TBL_BOARDREPLY ( 
    	BRDNO NUMBER(11,0) NOT NULL, -- 게시물 번호
    	RENO NUMBER(11,0), -- 댓글번호
    	REWRITER VARCHAR2(10 BYTE) NOT NULL, -- 작성자
    	REMEMO VARCHAR2(500 BYTE), -- 댓글내용
    	REDATE DATE, -- 작성일자
    	REDELETEFLAG VARCHAR2(1 BYTE) NOT NULL, -- 삭제여부
    	REPARENT NUMBER(11,0), -- 부모댓글
    	REDEPTH NUMBER, -- 깊이
    	REORDER NUMBER, -- 순서
    	CONSTRAINT RENO_PK PRIMARY KEY (RENO)
    );

CREATE TABLE TBL_BOARDGROUP (
    	BGNO NUMBER(11,0), -- 게시판 그룹번호
    	BGNAME VARCHAR2(50 BYTE), -- 게시판 그룹명
    	BGPARENT NUMBER(11,0), -- 게시판 그룹부모
    	BGDELETEFLAG CHAR(1 BYTE), -- 삭제여부
    	BGUSED CHAR(1 BYTE), -- 사용여부
    	BGREPLY CHAR(1 BYTE), --댓글 사용여부
    	BGREADONLY CHAR(1 BYTE), -- 글쓰기 가능여부
    	BGDATE DATE, -- 생성일자
    	CONSTRAINT BGNO_PK PRIMARY KEY (BGNO)
    );
    CREATE SEQUENCE BGNO_SEQ;







