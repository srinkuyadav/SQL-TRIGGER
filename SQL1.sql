create DATABASE SQL1;
USE SQL1;

-- PARENT TABLE (DEPARTMENT)

create TABLE DEPARTMENT(
DEP_ID INT AUTO_INCREMENT PRIMARY KEY,
DEP_NAME varchar(50),
DEP_LOCATION VARCHAR(50)
);

-- CHILD TABLE (EMPLOYEE)
create table EMPLOYEE(
EMP_ID INT auto_increment primary KEY,
EMP_DEP_ID INT,
EMP_NAME varchar(50),
EMP_SALARY BIGINT,
EMP_PHONE bigint unique,
EMP_POSITION varchar (100),
EMP_JOIN_DATE timestamp default current_timestamp,
FOREIGN KEY(EMP_DEP_ID) REFERENCES DEPARTMENT(DEP_ID) ON DELETE CASCADE
);

DROP TABLE EMPLOYEE;

EMP_JOIN_DATE timestamp default current_timestamp,
FOREIGN KEY(EMP_DEP_ID) REFERENCES DEPARTMENT(DEP_ID) ON DELETE CASCADE
);

DROP TABLE EMPLOYEE;

-- PARENT TABEL insert DATA
insert INTO DEPARTMENT(DEP_NAME,DEP_LOCATION)
VALUES

('SALES','NOIDA'),
('ACCOUNT','DELHI'),
('FINANCE','GURGAON'),
('MARKETING','FARIDABAD'),
('SERVICE','BIHAR'),
('GOVT','LUCKNOW'),
('FILM','MUMBAI'),
('AGRICULTURE','GORAKHPUR');
 -- CHILD TABLE insert DATA
 insert INTO EMPLOYEE(EMP_DEP_ID,EMP_NAME,EMP_SALARY,EMP_PHONE,EMP_POSITION)
 values
(1,'AMAAN',40000,9868673020,'SALES'),
(2,'RMAAN',50000,9868673022,'ACCOUNT'),
(3,'SUMAAN',60000,9868673021,'FINANCE'),
(4,'VIMAAN',70000,9868673029,'MARKETING'),
(5,'ANSUMAAN',80000,9868673031,'GOVT'),
(6,'AMAN',90000,9868673032,'FILM');

select *FROM DEPARTMENT;
select * from EMPLOYEE;
DROP TABLE EMPLOYEE;