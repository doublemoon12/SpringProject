Create table USERS (
    ID varchar2(8) Primary Key, 
    PASSWORD varchar2 (8), 
    NAME varchar2(20), 
    ROLE varchar2 (5)
);

INSERT INTO USERS VALUES ( 'admin', '1234', '������', 'Admin') ; 
INSERT INTO USERS VALUES ( 'user', '1234', 'ȫ�浿', 'User') ; 

Create Table BOARD (
    SEQ number(5) Primary Key, 
    TITLE varchar2 (200), 
    WRITER varchar2(20),
    CONTENT varchar2(2000), 
    REGDATE date Default sysdate, 
   CNT number(5) Default 0
   ); 

INSERT INTO BOARD ( SEQ, TITLE, WRITER, CONTENT, REGDATE, CNT) 
VALUES (1, '�����λ�' , '������', '�ȳ��ϼ���. �ݰ����ϴ�. .... ', sysdate, default ); 

commit;

CREATE TABLE TBL_BOARD(  
    	BGNO NUMBER(11,0), -- �Խ��� �׷��ȣ
    	BRDNO NUMBER(11,0), -- �۹�ȣ
    	BRDTITLE VARCHAR2(255 BYTE), -- ������
    	BRDWRITER VARCHAR2(20 BYTE), -- �ۼ���
    	BRDMEMO VARCHAR2(4000 BYTE), -- �۳���
    	BRDDATE DATE, -- �ۼ�����
    	BRDHIT NUMBER, -- ��ȸ��
    	BRDDELETEFLAG CHAR(1 BYTE), -- �������� 
        CONSTRAINT BRDNO_PK PRIMARY KEY (BRDNO)
    );
    CREATE SEQUENCE BRDNO_SEQ;

CREATE TABLE TBL_BOARDFILE( 
      	FILENO NUMBER(11,0), -- ���Ϲ�ȣ
    	BRDNO NUMBER(11,0), -- �۹�ȣ
    	FILENAME VARCHAR2(100 BYTE), -- ���ϸ�
    	REALNAME VARCHAR2(30 BYTE), -- �������ϸ�
    	FILESIZE NUMBER, -- ����ũ��
    	CONSTRAINT FILENO_PK PRIMARY KEY (FILENO)
    );
    CREATE SEQUENCE FILENO_SEQ;

CREATE TABLE TBL_BOARDREPLY ( 
    	BRDNO NUMBER(11,0) NOT NULL, -- �Խù� ��ȣ
    	RENO NUMBER(11,0), -- ��۹�ȣ
    	REWRITER VARCHAR2(10 BYTE) NOT NULL, -- �ۼ���
    	REMEMO VARCHAR2(500 BYTE), -- ��۳���
    	REDATE DATE, -- �ۼ�����
    	REDELETEFLAG VARCHAR2(1 BYTE) NOT NULL, -- ��������
    	REPARENT NUMBER(11,0), -- �θ���
    	REDEPTH NUMBER, -- ����
    	REORDER NUMBER, -- ����
    	CONSTRAINT RENO_PK PRIMARY KEY (RENO)
    );

CREATE TABLE TBL_BOARDGROUP (
    	BGNO NUMBER(11,0), -- �Խ��� �׷��ȣ
    	BGNAME VARCHAR2(50 BYTE), -- �Խ��� �׷��
    	BGPARENT NUMBER(11,0), -- �Խ��� �׷�θ�
    	BGDELETEFLAG CHAR(1 BYTE), -- ��������
    	BGUSED CHAR(1 BYTE), -- ��뿩��
    	BGREPLY CHAR(1 BYTE), --��� ��뿩��
    	BGREADONLY CHAR(1 BYTE), -- �۾��� ���ɿ���
    	BGDATE DATE, -- ��������
    	CONSTRAINT BGNO_PK PRIMARY KEY (BGNO)
    );
    CREATE SEQUENCE BGNO_SEQ;







