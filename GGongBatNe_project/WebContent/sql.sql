CREATE TABLE MEMBERS (
   MEM_NUM   varchar2(30)      NOT NULL,
   MEM_PW   varchar2(30)  NOT NULL,
   MEM_NAME   varchar2(30)   NOT   NULL,
   MEM_PHONE   varchar2(30)   NOT   NULL,
   MEM_AREA  varchar2(20)      
);
select * from MEMBERS;


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


CREATE TABLE COMPLAINTS (
   COM_NUM   NUMBER(20)      NOT NULL,
   GIGI_NAME   varchar2(30)      NOT NULL,
   COM_TITLE   varchar2(30)   NOT   NULL,
   COM_CONTENTS   varchar2(300)   not   NULL,
   COM_CONTACT  varchar2(30),
   COM_DATE   DATE   not   NULL
);
select * from COMPLAINTS;


CREATE TABLE GIGI_NAMES (
   GIGI_NAME_NUM   NUMBER(20)      NOT NULL,
   GIGI_NAME   varchar2(30)      NOT NULL,
   GIGI_LOCATION   varchar2(30)   not   NULL,
   GIGI_AREA   varchar2(20)   not   NULL,
   GIGI_COUNT   number(20)   not   NULL,
   GIGI_CHECK   DATE   not   NULL
);
select * from GIGI_NAMES;


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


----------   민원 게시판 목록 시퀀스   ------------------
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

----------   기기 네임 정보 시퀀스   ------------------
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