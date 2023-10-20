
-- 01 ȸ��

-- 02 ����

-- 03 ����

-- 04 �޴�

-- 05 �ɼ�

-- 06 ��ٱ���

-- 07 �ֹ�
CREATE SEQUENCE orderNumber_seq START WITH 10000;
create table order_tbl(
orderNumber varchar2(20) PRIMARY KEY,
userCode varchar2(20),
storeCode varchar2(20),
orderDate date,
payType NUMBER(1, 0),
orderType NUMBER(1, 0), 
reqToSeller varchar(300),
reqToRider varchar(300),
orderStatus varchar(20),
CONSTRAINT fk_userCode FOREIGN KEY (userCode) REFERENCES user_tbl(userCode),
CONSTRAINT fk_storeCode FOREIGN KEY (storeCode) REFERENCES store_tbl(storeCode)
);

-- 08 ��
CREATE TABLE zzim_tbl (
    userCode VARCHAR2(20),
    storeCode VARCHAR2(20),
    CONSTRAINT fk_userCode FOREIGN KEY (userCode) REFERENCES user_tbl(userCode),
    CONSTRAINT fk_storeCode FOREIGN KEY (storeCode) REFERENCES store_tbl(storeCode)
);
-- 09 ����
create table review_tbl(
reviewCode  varchar2(5) primary key ,--�����ڵ� 
menuCode  varchar2(20)   ,--�޴��ڵ� 
userCode  varchar2(10) ,--ȸ���ڵ� 
storeCode  varchar2(13) ,--�����ڵ� 
reviewDate date not null ,--���䳯¥ 
reviewRating number(2) not null ,--�������� 
reviewContent varchar2(300) not null,--���䳻�� 
 CONSTRAINT fk_menuCode FOREIGN KEY (menuCode) REFERENCES menu_tbl(menuCode),
  CONSTRAINT fk_userCode FOREIGN KEY (userCode) REFERENCES user_tbl(userCode),
  CONSTRAINT fk_storeCode FOREIGN KEY (storeCode) REFERENCES store_tbl(storeCode)
);
create sequence reviewCode_seq start with 10000;
-- 10 ������
create table answer_tbl(
  answerCode  varchar2(20) not null primary key, --�亯�ڵ�
  reviewCode   varchar2(20) , --�����ڵ�
  answerDate  date not null , --�亯��¥
  answerContent varchar2(300) not null, --�亯����
   CONSTRAINT fk_reviewCode FOREIGN KEY (reviewCode) REFERENCES review_tbl(reviewCode)
);
create sequence answerCode_seq start with 10000;

