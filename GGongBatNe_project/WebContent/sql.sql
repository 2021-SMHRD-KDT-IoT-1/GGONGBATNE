----------   사원 테이블  -------------
CREATE TABLE MEMBERS (
   MEM_ID   varchar2(30)      NOT NULL,
   MEM_PW   varchar2(30)  NOT NULL,
   MEM_NAME   varchar2(30)   NOT   NULL,
   MEM_PHONE   varchar2(30)   NOT   NULL,
   MEM_AREA  varchar2(20)      
);
select * from MEMBERS;

----------   기기 명 테이블   -------------
CREATE TABLE GIGI_NAMES (
   GIGI_NAME_NUM   NUMBER(20)      NOT NULL,
   GIGI_NAME   varchar2(30)      NOT NULL,
   GIGI_LOCATION_A   varchar2(30)   ,
   GIGI_LOCATION_B   varchar2(30)   ,
   GIGI_AREA   varchar2(20)   not   NULL,
   GIGI_COUNT   number(20)   not   NULL,
   GIGI_CHECK   DATE   not   NULL
);
select * from GIGI_NAMES;

insert into GIGI_NAMES values(301-1 ,103,103,0,sysdate );
delete from COMPLAINTS where com_title='a1';

----------   센서 데이터 수집 테이블   -------------
CREATE TABLE GIGI_SENSORS (
   GIGI_NUM   NUMBER(20)      NOT NULL,
   GIGI_NAME   varchar2(30)      NOT NULL,
   GIGI_VOL   varchar2(30)      NOT   NULL,
   GIGI_TEMP   varchar2(30)      NOT   NULL,
   GIGI_HUM   varchar2(30)      NOT   NULL,
   GIGI_AREA   varchar2(20)      NOT   NULL,
   GIGI_DATE   DATE      NOT NULL
);
select * from GIGI_SENSORS;

----------   게시판 테이블   -------------
CREATE TABLE COMPLAINTS (
   COM_NUM   NUMBER(20)      NOT NULL,
   GIGI_NAME   varchar2(30)      ,
   COM_TITLE   varchar2(30)   NOT   NULL,
   COM_CONTENTS   varchar2(300)   not   NULL,
   COM_CONTACT  varchar2(30),
   COM_DATE   DATE   not   NULL
);
select * from COMPLAINTS;



----------  제약조건   -------------

ALTER TABLE MEMBERS ADD CONSTRAINT PK_MEMBERS PRIMARY KEY (
   MEM_NUM
);

ALTER TABLE GIGI_SENSORS ADD CONSTRAINT PK_GIGI_SENSORS PRIMARY KEY (
   GIGI_NUM
);

ALTER TABLE COMPLAINTS ADD CONSTRAINT PK_COMPLAINTS PRIMARY KEY (
   COM_NUM
);


ALTER TABLE GIGI_NAMES ADD CONSTRAINT PK_GIGI_NAMES PRIMARY KEY (
   GIGI_NAME
);

ALTER TABLE GIGI_SENSORS ADD CONSTRAINT GIGI_SENSORS_1 FOREIGN KEY (
   GIGI_NAME
)
REFERENCES GIGI_NAMES (
   GIGI_NAME
);


ALTER TABLE COMPLAINTS ADD CONSTRAINT COMPLAINTS_1 FOREIGN KEY (
   GIGI_NAME
)
REFERENCES GIGI_NAMES (
   GIGI_NAME
);


----------   민원 게시판 목록 시퀀스   -------------
create sequence sq_com_num
increment by 1 
start with 1 
minvalue 1 
nocycle;

----------   기기 센서 시퀀스   ------------------
create sequence sq_gigisen_num
increment by 1 
start with 1 
minvalue 1 
nocycle;

----------   기기 네임 정보 시퀀스   ---------------
create sequence sq_giginame_num
increment by 1 
start with 1 
minvalue 1 
nocycle;



select * from MEMBERS;
select * from GIGI_NAMES;
select * from GIGI_SENSORS;
select * from COMPLAINTS;



drop table MEMBERS
drop table GIGI_SENSORS
drop table COMPLAINTS
drop table GIGI_NAMES

----------   시퀀스 지우기   ---------------
drop sequence sq_com_num;
drop sequence sq_gigisen_num;
drop sequence sq_giginame_num;