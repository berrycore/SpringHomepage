CREATE TABLE USER_NOTICE(
                            NOTICE_SEQNO NUMBER(10),
                            NOTICE_TITLE VARCHAR2(200) not null,
                            NOTICE_CONTENT VARCHAR2(500) not null,
                            NOTICE_WRITER VARCHAR2(50),
                            NOTICE_REGIST_DATE VARCHAR2(50)
);