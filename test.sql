CREATE TABLE
A_TEST_T1
(
ID VARCHAR2(50),
NO VARCHAR2(50),
T_NAME VARCHAR2(50),
S_NAME VARCHAR2(50),
SCORE VARCHAR2(50)
);

insert into A_TEST_T1 VALUES(1, 1, 'Peter', '张三', 60);
insert into A_TEST_T1 VALUES(2, 2, 'Mary', '李四', 99);
insert into A_TEST_T1 VALUES(3, 3, 'Tom', '王五', 76);
insert into A_TEST_T1 VALUES(4, 1, 'Peter', '小A', 59);
insert into A_TEST_T1 VALUES(5, 2, 'Mary', '小B', 60);
insert into A_TEST_T1 VALUES(6, 3, 'Tom', '小C', 99);
insert into A_TEST_T1 VALUES(7, 1, 'Peter', 'Zhang', 70);
insert into A_TEST_T1 VALUES(8, 2, 'Mary', 'Wang', 88);
insert into A_TEST_T1 VALUES(9, 3, 'Tom', 'Li', 90);


commit;
select * from A_TEST_T1;
