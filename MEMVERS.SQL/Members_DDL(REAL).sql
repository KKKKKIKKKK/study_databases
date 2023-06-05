-- GENDER_CODE
INSERT INTO gender_code
(GENDER, GENDER_CODE)
VALUES 
('남', 'G-01'); 

 INSERT INTO gender_code
(GENDER, GENDER_CODE)
VALUES 
('여', 'G-04'); 

-- address_code
 INSERT INTO address_code
 (ADDRESS, ADDRESS_CODE_ID)
 VALUES 
 ('서울시', 'A-01'),
 ('부산시', 'A-02'),
 ('경기도', 'A-03'),
 ('대전시', 'A-04'),
 ('인천시', 'A-05');

-- members
INSERT INTO members
(Name,  Age, Phone_Number, MEMBERS_ID, GENDER_CODE, Address_CODE_ID)
VALUES
('John Doe', 30,'010-1234-5678',  'M-01', 'G-01','A-01'),
('Emily Smith' ,25, '010-9876-5432', 'M-02', 'G-04','A-02'),
('David Lee', 35,'010-5678-1234',  'M-03', 'G-01','A-03'),
('Sarah Kim', 28, '010-4321-8765', 'M-04', 'G-04','A-04'),
('홍길동',33, '010-1111-2222',  'M-05', 'G-01','A-05');

-- HOBBY_CODE_ID
INSERT INTO hobby_code
(HOBBY , HOBBY_CODE_ID)
VALUES 
('요리', 'H-01'),
('등산', 'H-02'),
('음악감상', 'H-03'),
('독서', 'H-04'),
('요가', 'H-08'),
('여행', 'H-05'),
('사진촬영','H-06'),
('수영', 'H-07');


INSERT INTO members_login
(E_MAIL, MEMBERS_ID ,  MEMBERS_LOGIN_ID) 
VALUES
('hong@gmail.com', 'M-01', 'L-01'),
('park.younghee@naver.com', 'M-02', 'L-02'),
('kimchulsu@gmail.com', 'M-03', 'L-03'),
('leeyoungmi@naver.com', 'M-04', 'L-04'),
('jmh123@gmail.com', 'M-05', 'L-05');


INSERT INTO members_hobby
(HOBBY_CODE_ID, MEMBERS_ID)
VALUES 
('H-01', 'M-01'),
('H-02', 'M-02'),
('H-03', 'M-03'),
('H-04', 'M-04'),
('H-05', 'M-05'),
('H-06', 'M-01'),
('H-07','M-03'),
('H-08', 'M-05');
