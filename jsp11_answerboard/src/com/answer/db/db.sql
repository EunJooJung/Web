DROP SEQUENCE BOARDNOSEQ;
DROP SEQUENCE GROUPNOSEQ;
DROP TABLE ANSWERBOARD;

CREATE SEQUENCE BOARDNOSEQ;   --글번호
CREATE SEQUENCE GROUPNOSEQ;	  --그룹 번호

CREATE TABLE ANSWEROARD(
	BOARDNO NUMBER PRIMARY KEY,
	GROUPNO NUMBER NOT NULL,
	GROUPSEQ NUMBER NOT NULL,
	TITLETAB NUMBER NOT NULL,
	TITLE VARCHAR2(500) NOT NULL,
	CONTENT VARCHAR2(4000) NOT NULL,
	WRITER VARCHAR2(100) NOT NULL,
	REGDATE DATE NOT NULL,
	DELFLAG VARCHAR2(2) NOT NULL,
	
	CONSTRAINT DEL_CHK CHECK (DELFLAG IN('Y','N'))
);