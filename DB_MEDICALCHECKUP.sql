
CREATE TABLE  MEMBERS_ Sign Up
(
  Name                    VARCHAR(50) NOT NULL COMMENT '이름',
  Age                     VARCHAR(50) NOT NULL COMMENT '나이',
   Stature                VARCHAR(50) NOT NULL COMMENT '키',
  MEMBERS_ID              VARCHAR(50) NOT NULL COMMENT 'UNIQUE_ID',
  GENDER_CODE             VARCHAR(50) NOT NULL COMMENT '성별_코드',
  Maintenance plan_CODE   VARCHAR(50) NOT NULL COMMENT '유지방안코드',
  Examination result_CODE VARCHAR(50) NOT NULL COMMENT '혈압 및 검진결과코드',
  PRIMARY KEY (MEMBERS_ID)
) COMMENT '회원정보';

CREATE TABLE Examination result
(
  Examination result_CODE   VARCHAR(50) NOT NULL COMMENT '혈압 및 검진결과코드',
  Examination result        VARCHAR(50) NOT NULL COMMENT '검진결과 ',
  MEMBERS_ID                VARCHAR(50) NOT NULL COMMENT 'UNIQUE_ID',
  Re-examination items_CODE VARCHAR(50) NOT NULL COMMENT '재검진항목 CODE',
  PRIMARY KEY (Examination result_CODE)
) COMMENT '혈압 및 검진결과코드 ';

CREATE TABLE GENDER_CODE
(
  GENDER_CODE VARCHAR(50) NOT NULL COMMENT '성별_코드',
  GENDER      VARCHAR(50) NOT NULL COMMENT '성별',
                          NOT NULL,
  PRIMARY KEY (GENDER_CODE)
) COMMENT '성별코드';

CREATE TABLE Maintenance plan
(
  Maintenance plan_CODE VARCHAR(50) NOT NULL COMMENT '유지방안코드',
  Maintenance plan      VARCHAR(50) NOT NULL COMMENT '유지방안',
  PRIMARY KEY (Maintenance plan_CODE)
) COMMENT '유지방안';

CREATE TABLE Re-examination items
(
  Re-examination items_CODE VARCHAR(50) NOT NULL COMMENT '재검진항목 CODE',
  Re-examination items      VARCHAR(50) NOT NULL COMMENT '재검진힝목',
  PRIMARY KEY (Re-examination items_CODE)
) COMMENT '재검진항목';

ALTER TABLE  MEMBERS_ Sign Up
  ADD CONSTRAINT FK_GENDER_CODE_TO_ MEMBERS_ Sign Up
    FOREIGN KEY (GENDER_CODE)
    REFERENCES GENDER_CODE (GENDER_CODE);

ALTER TABLE  MEMBERS_ Sign Up
  ADD CONSTRAINT FK_Maintenance plan_TO_ MEMBERS_ Sign Up
    FOREIGN KEY (Maintenance plan_CODE)
    REFERENCES Maintenance plan (Maintenance plan_CODE);

ALTER TABLE Examination result
  ADD CONSTRAINT FK_ MEMBERS_ Sign Up_TO_Examination result
    FOREIGN KEY (MEMBERS_ID)
    REFERENCES  MEMBERS_ Sign Up (MEMBERS_ID);

ALTER TABLE Examination result
  ADD CONSTRAINT FK_Re-examination items_TO_Examination result
    FOREIGN KEY (Re-examination items_CODE)
    REFERENCES Re-examination items (Re-examination items_CODE);
