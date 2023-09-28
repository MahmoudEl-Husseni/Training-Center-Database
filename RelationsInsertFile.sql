delete from Dependent;
delete from Prerequisite;
delete from Teaches;
delete from Course;
delete from Emp_Proj;
delete from Project;
delete from Customer;
delete from Customer_Branch;
delete from Program_Branch;
delete from Emp_Branch_works_in;
delete from Branch;
delete from Training_Employee;
update Department set MGR_ID = NULL;
delete from Remuneration;
delete from Company_Employee;
delete from Department;
delete from learn;
delete from Student;
delete from Program;


insert into Branch values(100,'Port Said el gomhorea st',450000.00,500.00,10000.00,'2002-12-08');
insert into Branch values(101,'Port Said moahmed ali st',500000.00,600.00,20000.00,'2004-12-08');
insert into Branch values(102,'Port fouad elgomhorea st',200000.00,250.00,15000.00,'2002-12-08');

insert into Department(Dept_ID,Dept_name,MGR_Start_Date,Building,B_ID) values(1000,'IT','2010-09-10','F10',100);
insert into Department(Dept_ID,Dept_name,MGR_Start_Date,Building,B_ID) values(1010,'HR','2015-09-10','A12',100);
insert into Department(Dept_ID,Dept_name,MGR_Start_Date,Building,B_ID) values(1020,'Security','2011-09-10','B15',101);
insert into Department(Dept_ID,Dept_name,MGR_Start_Date,Building,B_ID) values(1030,'Software','2014-09-10','A16',101);
insert into Department(Dept_ID,Dept_name,MGR_Start_Date,Building,B_ID) values(1040,'Sales','2013-09-10','C05',102);

insert into Company_Employee values(1,'Ahmed','Mohamed','1990-09-10','Port Said ,EL gomhorea st 7',1,3000.00,'2021-12-01',1000,11);
insert into Company_Employee values(2,'Samir','Ahmed','1995-11-20','Port Said ,EL gomhorea st 7',1,3500.00,'2020-12-01',1000,11);
insert into Company_Employee values(3,'Ibrahem','Khaled','1989-12-05','Port Said ,EL gomhorea st 7',1,3500.00,'2019-12-01',1010,12);
insert into Company_Employee values(4,'Mahmoud','Saad','1992-01-12','Port Said ,EL gomhorea st 7',1,4000.00,'2018-12-01',1010,12);
insert into Company_Employee values(5,'Amal','Mohamed','1997-09-18','Port Said ,EL gomhorea st 7',0,4000.00,'2017-12-01',1020,13);
insert into Company_Employee values(6,'Eman','Ibrahem','1996-03-21','Port Said ,EL gomhorea st 7',0,2500.00,'2016-12-01',1020,13);
insert into Company_Employee values(7,'Aya','Ayman','1999-06-06','Port Said ,EL gomhorea st 7',0,3500.00,'2015-12-01',1030,14);
insert into Company_Employee values(8,'Amin','Sleem','1994-02-11','Port Said ,EL gomhorea st 7',1,2750.00,'2014-12-01',1030,14);
insert into Company_Employee values(9,'Sameh','Mohamed','1990-11-05','Port Said ,EL gomhorea st 7',1,3000.00,'2013-12-01',1040,15);
insert into Company_Employee values(10,'Mazen','Ahmed','1986-10-07','Port Said ,EL gomhorea st 7',1,3000.00,'2012-12-01',1040,15);

insert into Company_Employee(E_ID,Fname,Lname,BDate,Address,Gender,Salary,Start_Date,Dept_ID) values(11,'Mahmoud','Mohamed','1985-09-10','Port Said ,EL gomhorea st 7',1,5000.00,'2021-12-01',1000);
insert into Company_Employee(E_ID,Fname,Lname,BDate,Address,Gender,Salary,Start_Date,Dept_ID) values(12,'Said','Ibrahem','1980-09-10','Port Said ,EL gomhorea st 7',1,7000.00,'2019-12-01',1010);
insert into Company_Employee(E_ID,Fname,Lname,BDate,Address,Gender,Salary,Start_Date,Dept_ID) values(13,'Abdo','Waleed','1982-09-10','Port Said ,EL gomhorea st 7',1,6000.00,'2020-12-01',1020);
insert into Company_Employee(E_ID,Fname,Lname,BDate,Address,Gender,Salary,Start_Date,Dept_ID) values(14,'Saber','Hassan','1982-09-10','Port Said ,EL gomhorea st 7',1,5500.00,'2020-12-01',1030);
insert into Company_Employee(E_ID,Fname,Lname,BDate,Address,Gender,Salary,Start_Date,Dept_ID) values(15,'Mohamed','Ashraf','1986-09-10','Port Said ,EL gomhorea st 7',1,5750.00,'2021-12-01',1040);

update Department set MGR_ID = 11 where Dept_ID=1000;
update Department set MGR_ID = 12 where Dept_ID=1010;
update Department set MGR_ID = 13 where Dept_ID=1020;
update Department set MGR_ID = 14 where Dept_ID=1030;
update Department set MGR_ID = 15 where Dept_ID=1040;

insert into Program values(2000,'Cyber Security','2020-02-15',10,120.00,2.00,101);
insert into Program values(2100,'Network Specialist','2021-02-15',20,120.00,1.50,101);
insert into Program values(2200,'Artificial Intelligence','2022-02-15',25,120.00,1.50,100);
insert into Program values(2300,'Pentesting','2021-03-15',20,120.00,1.50,100);
insert into Program values(2400,'Software Engineering','2020-04-25',30,120.00,2.50,101);

insert into Course values(1500,4,'Basics',7.5);
insert into Course values(1600,5,'Basics',7.3);
insert into Course values(1700,6,'Basics',7.7);
insert into Course values(1800,7,'Basics',7.6);
insert into Course values(1900,8,'Basics',7.2);

insert into Course values(2000,4,'Technical',8.5);
insert into Course values(2100,5,'Technical',8.6);
insert into Course values(2200,6,'Technical',8.7);
insert into Course values(2300,7,'Technical',8.2);
insert into Course values(2400,8,'Technical',8.4);

insert into Course values(2500,4,'Soft Skills',9.5);
insert into Course values(2600,5,'Soft Skills',9.7);
insert into Course values(2700,6,'Soft Skills',9.4);
insert into Course values(2800,7,'Soft Skills',9.2);
insert into Course values(2900,8,'Soft Skills',9.6);

insert into Prerequisite values(2000,1500);
insert into Prerequisite values(2000,2000);
insert into Prerequisite values(2000,2500);

insert into Prerequisite values(2100,1600);
insert into Prerequisite values(2100,2100);
insert into Prerequisite values(2100,2600);

insert into Prerequisite values(2200,1700);
insert into Prerequisite values(2200,2200);
insert into Prerequisite values(2200,2700);

insert into Prerequisite values(2300,1800);
insert into Prerequisite values(2300,2300);
insert into Prerequisite values(2300,2800);

insert into Prerequisite values(2400,1900);
insert into Prerequisite values(2400,2400);
insert into Prerequisite values(2400,2900);

insert into Customer values(5000,'RedLine','2012-05-22',12,8.7,1,100);
insert into Customer values(5001,'BlueLine','2014-05-22',10,7.8,1,100);
insert into Customer values(5002,'YellowLine','2015-05-22',8,6.6,0,101);
insert into Customer values(5003,'GreenLine','2016-05-22',6,5.9,0,102);
insert into Customer values(5004,'BlackLine','2012-05-25',13,4.9,1,102);

insert into Customer_Branch values(5000,100);
insert into Customer_Branch values(5001,100);
insert into Customer_Branch values(5002,101);
insert into Customer_Branch values(5003,102);
insert into Customer_Branch values(5004,102);

insert into Program_Branch values(101,2000);
insert into Program_Branch values(101,2100);
insert into Program_Branch values(100,2200);
insert into Program_Branch values(100,2300);
insert into Program_Branch values(101,2400);

insert into Dependent values(1,'Ali',1,'2015-08-25');
insert into Dependent values(1,'Alia',0,'2016-08-25');
insert into Dependent values(2,'Samir',1,'2014-08-25');
insert into Dependent values(3,'Saleh',1,'2018-08-25');

insert into Emp_Branch_works_in values(1,100,'2021-12-01');
insert into Emp_Branch_works_in values(2,100,'2020-12-01');
insert into Emp_Branch_works_in values(3,100,'2019-01-10');
insert into Emp_Branch_works_in values(4,100,'2018-01-10');
insert into Emp_Branch_works_in values(5,101,'2017-01-10');
insert into Emp_Branch_works_in values(6,101,'2016-01-10');
insert into Emp_Branch_works_in values(7,101,'2015-01-10');
insert into Emp_Branch_works_in values(8,101,'2014-01-10');
insert into Emp_Branch_works_in values(9,102,'2013-01-10');
insert into Emp_Branch_works_in values(10,102,'2012-01-10');
insert into Emp_Branch_works_in values(11,100,'2011-01-10');
insert into Emp_Branch_works_in values(12,100,'2010-01-10');
insert into Emp_Branch_works_in values(13,101,'2009-01-10');
insert into Emp_Branch_works_in values(14,101,'2008-01-10');
insert into Emp_Branch_works_in values(15,102,'2007-01-10');

insert into Project values(50,'2020-01-22',120.00,90,5000,1000);
insert into Project values(51,'2020-02-23',120.00,90,5001,1000);
insert into Project values(52,'2020-03-24',120.00,90,5002,1010);
insert into Project values(53,'2020-04-25',120.00,90,5003,1010);
insert into Project values(54,'2020-05-26',120.00,90,5004,1020);
insert into Project values(55,'2020-06-27',120.00,90,5000,1020);
insert into Project values(56,'2020-07-28',120.00,90,5001,1030);
insert into Project values(57,'2020-08-29',120.00,90,5002,1030);
insert into Project values(58,'2020-09-30',120.00,90,5003,1040);
insert into Project values(59,'2020-10-19',120.00,90,5004,1040);

insert into Emp_Proj values(1,50,80);
insert into Emp_Proj values(1,51,80);
insert into Emp_Proj values(2,52,80);
insert into Emp_Proj values(3,53,80);
insert into Emp_Proj values(4,54,80);
insert into Emp_Proj values(5,55,80);
insert into Emp_Proj values(6,56,80);
insert into Emp_Proj values(7,57,80);
insert into Emp_Proj values(8,58,80);
insert into Emp_Proj values(9,59,80);

insert into Student values(500,'Khaled','Ibrahem','2002-02-22','Port Said EL gomhorea st 22','Second Year','Engineering',1.50,2.50,'2022-05-29',2000);
insert into Student values(501,'Mohamed','Ibrahem','2002-03-25','Port Said EL gomhorea st 21','Second Year','Engineering',1.75,2.50,'2022-05-29',2000);
insert into Student values(502,'Khaled','Saleh','2002-04-19','Port Said EL gomhorea st 20','Second Year','Engineering',1.25,2.50,'2022-05-29',2100);
insert into Student values(503,'Ashraf','Ahmed','2002-05-28','Port Said EL gomhorea st 23','Second Year','Engineering',1.00,2.50,'2022-05-29',2100);
insert into Student values(504,'Yara','Ibrahem','2002-05-01','Port Said EL gomhorea st 24','Second Year','Engineering',2.50,2.50,'2022-05-29',2200);
insert into Student values(505,'Aya','Hassan','2002-03-30','Port Said EL gomhorea st 25','Second Year','Engineering',2.50,2.50,'2022-05-29',2200);
insert into Student values(506,'Ahmed','Saleh','2002-09-22','Port Said EL gomhorea st 26','Second Year','Engineering',2.75,2.50,'2022-05-29',2300);
insert into Student values(507,'Waleed','Saad','2002-06-17','Port Said EL gomhorea st 27','Second Year','Engineering',2.25,2.50,'2022-05-29',2300);
insert into Student values(508,'Hassan','Mahmoud','2002-07-15','Port Said EL gomhorea st 28','Second Year','Engineering',1.25,2.50,'2022-05-29',2400);
insert into Student values(509,'eman','Ibrahem','2002-09-19','Port Said EL gomhorea st 29','Second Year','Engineering',1.00,2.50,'2022-05-29',2400);

insert into learn values(2000,500);
insert into learn values(2000,501);
insert into learn values(2100,502);
insert into learn values(2100,503);
insert into learn values(2200,504);
insert into learn values(2200,505);
insert into learn values(2300,506);
insert into learn values(2300,507);
insert into learn values(2400,508);
insert into learn values(2400,509);

insert into Remuneration values('2022-05-01',5,7,12);
insert into Remuneration values('2021-11-01',12,7,1);
insert into Remuneration values('2021-05-01',14,5,11);
insert into Remuneration values('2020-11-01',12,9,10);
insert into Remuneration values('2020-05-01',4,3,1);

insert into Training_Employee values(16,'Mahmoud','Ahmed','1990-09-10',1,1500.00,1000,Null);
insert into Training_Employee values(17,'Mohsen','Mohamed','1988-12-10',1,2000.00,1000,11);
insert into Training_Employee values(3,'Ibrahem','Khaled','1989-12-05',1,3000.00,1010,12);
insert into Training_Employee values(4,'Mahmoud','Saad','1992-01-12',1,3000.00,1010,12);
insert into Training_Employee values(5,'Amal','Mohamed','1997-09-18',0,3000.00,1020,13);
insert into Training_Employee values(6,'Eman','Ibrahem','1996-03-21',0,3000.00,1020,13);
insert into Training_Employee values(20,'Nouran','Magdy','2000-06-06',0,1500.00,1030,16);
insert into Training_Employee values(19,'Sleem','Amin','1992-03-1',1,3500.00,1030,Null);
insert into Training_Employee values(21,'Mohamed','Sameh','1976-11-05',1,4000.00,1040,NULL);
insert into Training_Employee values(22,'Ahmed','Mazen','1986-10-07',1,4200.00,1040,NULL);

insert into Training_Employee(E_ID,Fname,Lname,B_date,Gender,Salary,Department) values(11,'Mahmoud','Mohamed','1985-09-10',1,6000.00,1000);
insert into Training_Employee(E_ID,Fname,Lname,B_date,Gender,Salary,Department) values(12,'Said','Ibrahem','1980-09-10',1,6000.00,1010);
insert into Training_Employee(E_ID,Fname,Lname,B_date,Gender,Salary,Department) values(13,'Abdo','Waleed','1982-09-10',1,6000.00,1020);
insert into Training_Employee(E_ID,Fname,Lname,B_date,Gender,Salary,Department) values(14,'Saber','Hassan','1982-09-10',1,6000.00,1030);
insert into Training_Employee(E_ID,Fname,Lname,B_date,Gender,Salary,Department) values(15,'Mohamed','Ashraf','1986-09-10',1,6000.00,1040);

insert into Teaches values(16,2000,1500);
insert into Teaches values(17,2000,2500);
insert into Teaches values(3,2100,1600);
insert into Teaches values(4,2100,2600);
insert into Teaches values(5,2200,1700);
insert into Teaches values(6,2200,2700);
insert into Teaches values(20,2300,1800);
insert into Teaches values(19,2300,2800);
insert into Teaches values(21,2400,1900);
insert into Teaches values(22,2400,2900);

insert into Teaches values(11,2000,2000);
insert into Teaches values(12,2100,2100);
insert into Teaches values(13,2200,2200);
insert into Teaches values(14,2300,2300);
insert into Teaches values(15,2400,2400);
