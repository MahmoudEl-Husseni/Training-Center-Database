CREATE TABLE `Company_Employee` (
	`E_ID` INT NOT NULL ,
	`Fname` VARCHAR(50),
	`Lname` VARCHAR(50),
	`BDate` DATE,
	`Address` VARCHAR(255),
	`Gender` BINARY,
	`Salary` FLOAT,
	`Start_Date` DATE,
	`Dept_ID` INT,
	`MGR_ID` INT,
	PRIMARY KEY (`E_ID`)
);

CREATE TABLE `Department` (
	`Dept_ID` INT NOT NULL ,
	`Dept_name` VARCHAR(255),
	`MGR_Start_Date` DATE,
	`Building` varchar(10),
	`MGR_ID` INT,
	`B_ID` INT,
	PRIMARY KEY (`Dept_ID`)
);

CREATE TABLE `Dependent` (
	`E_ID` INT NOT NULL ,
	`Dependent_name` VARCHAR(255) NOT NULL ,
	`Gender` BINARY NOT NULL,
	`BDate` DATE NOT NULL ,
	PRIMARY KEY (`E_ID`,`Dependent_name`)
);

CREATE TABLE `Customer` (
	`C_ID` INT NOT NULL ,
	`C_name` VARCHAR(255),
	`C_start_Date` DATE,
	`NO.Previous_Projects` INT,
	`rate` FLOAT,
	`IS_Current` BINARY,
	`B_ID` INT,
	PRIMARY KEY (`C_ID`)
);

CREATE TABLE `Project` (
	`P_ID` INT NOT NULL ,
	`P_start_Date` DATE,
	`Period(in days)` FLOAT,
	`C_satisification` FLOAT,
	`C_ID` INT NOT NULL,
	`Dept_ID` INT,
	PRIMARY KEY (`P_ID`)
);

CREATE TABLE `Remuneration` (
	`Date` DATE NOT NULL ,
	`First_EID` INT NOT NULL ,
	`Second_EID` INT NOT NULL ,
	`Third_EID` INT NOT NULL ,
	PRIMARY KEY (`Date`)
);

CREATE TABLE `Branch` (
	`B_ID` INT NOT NULL ,
	`Location` VARCHAR(255),
	`Budget` FLOAT,
	`Area` FLOAT,
	`Income` FLOAT,
	`Build_Date` DATE,
	PRIMARY KEY (`B_ID`)
);

CREATE TABLE `Program` (
	`Prog_ID` INT NOT NULL ,
	`Prog_name` VARCHAR(255),
	`Start_date` DATE,
	`No.Students` INT,
	`Period` FLOAT,
	`Min_score` FLOAT,
	`B_ID` FLOAT,
	PRIMARY KEY (`Prog_ID`)
);

CREATE TABLE `Training_Employee` (
	`E_ID` INT NOT NULL,
	`Fname` VARCHAR(255),
	`Lname` VARCHAR(255),
	`B_date` DATE,
	`Gender` BINARY,
	`Salary` FLOAT,
	`Department` FLOAT,
	`MGR_ID` FLOAT,
	PRIMARY KEY (`E_ID`)
);

CREATE TABLE `Student` (
	`S_ID` INT NOT NULL ,
	`Fname` VARCHAR(255) NOT NULL,
	`Lname` VARCHAR(255),
	`B_date` DATE,
	`Address` VARCHAR(255),
	`Year_Faculty` VARCHAR(255),
	`Faculty` VARCHAR(255),
	`GPA` FLOAT,
	`Score` FLOAT,
	`Addmission_date` DATE,
	`Prog_ID` INT,
	PRIMARY KEY (`S_ID`)
);

CREATE TABLE `Course` (
	`Course_code` INT NOT NULL ,
	`Course_modules` INT,
	`Type` VARCHAR(255),
	`rank` FLOAT,
	PRIMARY KEY (`Course_code`)
);

CREATE TABLE `Prerequisite` (
	`Prog_ID` INT NOT NULL ,
	`Course_Code` INT NOT NULL ,
	PRIMARY KEY (`Prog_ID`,`Course_Code`)
);

CREATE TABLE `Program_Branch` (
	`B_ID` INT NOT NULL ,
	`Prog_ID` INT NOT NULL ,
	PRIMARY KEY (`B_ID`,`Prog_ID`)
);

CREATE TABLE `Emp_Branch_works_in` (
	`E_ID` INT NOT NULL ,
	`B_ID` INT NOT NULL ,
	`Start_date` DATE,
	PRIMARY KEY (`E_ID`,`B_ID`)
);

CREATE TABLE `Customer_Branch` (
	`C_ID` INT NOT NULL ,
	`B_ID` INT NOT NULL ,
	PRIMARY KEY (`C_ID`)
);

CREATE TABLE `Emp_Proj` (
	`E_ID` INT NOT NULL ,
	`Proj_ID` INT NOT NULL ,
	`Hours` FLOAT,
	PRIMARY KEY (`E_ID`,`Proj_ID`)
);

CREATE TABLE `Teaches` (
	`E_ID` INT NOT NULL ,
	`Prog_ID` INT NOT NULL ,
	`Course_Code` INT NOT NULL,
	PRIMARY KEY (`E_ID`,`Prog_ID`,`Course_Code`)
);

CREATE TABLE `learn` (
	`Prog_ID` INT NOT NULL ,
	`S_ID` INT NOT NULL ,
	PRIMARY KEY (`Prog_ID`,`S_ID`)
);

ALTER TABLE `Company_Employee` ADD CONSTRAINT `Company_Employee_fk0` FOREIGN KEY (`Dept_ID`) REFERENCES `Department`(`Dept_ID`);

ALTER TABLE `Department` ADD CONSTRAINT `Department_fk0` FOREIGN KEY (`MGR_ID`) REFERENCES `Company_Employee`(`E_ID`);

ALTER TABLE `Department` ADD CONSTRAINT `Department_fk1` FOREIGN KEY (`B_ID`) REFERENCES `Branch`(`B_ID`);

ALTER TABLE `Dependent` ADD CONSTRAINT `Dependent_fk0` FOREIGN KEY (`E_ID`) REFERENCES `Company_Employee`(`E_ID`);

ALTER TABLE `Customer` ADD CONSTRAINT `Customer_fk0` FOREIGN KEY (`B_ID`) REFERENCES `Branch`(`B_ID`);

ALTER TABLE `Project` ADD CONSTRAINT `Project_fk0` FOREIGN KEY (`C_ID`) REFERENCES `Customer`(`C_ID`);

ALTER TABLE `Project` ADD CONSTRAINT `Project_fk1` FOREIGN KEY (`Dept_ID`) REFERENCES `Department`(`Dept_ID`);

ALTER TABLE `Remuneration` ADD CONSTRAINT `Remuneration_fk0` FOREIGN KEY (`First_EID`) REFERENCES `Company_Employee`(`E_ID`);

ALTER TABLE `Remuneration` ADD CONSTRAINT `Remuneration_fk1` FOREIGN KEY (`Second_EID`) REFERENCES `Company_Employee`(`E_ID`);

ALTER TABLE `Remuneration` ADD CONSTRAINT `Remuneration_fk2` FOREIGN KEY (`Third_EID`) REFERENCES `Company_Employee`(`E_ID`);

ALTER TABLE `Student` ADD CONSTRAINT `Student_fk0` FOREIGN KEY (`Prog_ID`) REFERENCES `Program`(`Prog_ID`);

ALTER TABLE `Prerequisite` ADD CONSTRAINT `Prerequisite_fk0` FOREIGN KEY (`Prog_ID`) REFERENCES `Program`(`Prog_ID`);

ALTER TABLE `Prerequisite` ADD CONSTRAINT `Prerequisite_fk1` FOREIGN KEY (`Course_Code`) REFERENCES `Course`(`Course_code`);

ALTER TABLE `Program_Branch` ADD CONSTRAINT `Program_Branch_fk0` FOREIGN KEY (`B_ID`) REFERENCES `Branch`(`B_ID`);

ALTER TABLE `Program_Branch` ADD CONSTRAINT `Program_Branch_fk1` FOREIGN KEY (`Prog_ID`) REFERENCES `Program`(`Prog_ID`);

ALTER TABLE `Emp_Branch_works_in` ADD CONSTRAINT `Emp_Branch_works_in_fk0` FOREIGN KEY (`E_ID`) REFERENCES `Company_Employee`(`E_ID`);

ALTER TABLE `Emp_Branch_works_in` ADD CONSTRAINT `Emp_Branch_works_in_fk1` FOREIGN KEY (`B_ID`) REFERENCES `Branch`(`B_ID`);

ALTER TABLE `Customer_Branch` ADD CONSTRAINT `Customer_Branch_fk0` FOREIGN KEY (`C_ID`) REFERENCES `Customer`(`C_ID`);

ALTER TABLE `Customer_Branch` ADD CONSTRAINT `Customer_Branch_fk1` FOREIGN KEY (`B_ID`) REFERENCES `Branch`(`B_ID`);

ALTER TABLE `Emp_Proj` ADD CONSTRAINT `Emp_Proj_fk0` FOREIGN KEY (`E_ID`) REFERENCES `Company_Employee`(`E_ID`);

ALTER TABLE `Emp_Proj` ADD CONSTRAINT `Emp_Proj_fk1` FOREIGN KEY (`Proj_ID`) REFERENCES `Project`(`P_ID`);

ALTER TABLE `Teaches` ADD CONSTRAINT `Teaches_fk0` FOREIGN KEY (`E_ID`) REFERENCES `Training_Employee`(`E_ID`);

ALTER TABLE `Teaches` ADD CONSTRAINT `Teaches_fk1` FOREIGN KEY (`Prog_ID`) REFERENCES `Program`(`Prog_ID`);

ALTER TABLE `Teaches` ADD CONSTRAINT `Teaches_fk2` FOREIGN KEY (`Course_Code`) REFERENCES `Course`(`Course_code`);

ALTER TABLE `learn` ADD CONSTRAINT `learn_fk0` FOREIGN KEY (`Prog_ID`) REFERENCES `Program`(`Prog_ID`);

ALTER TABLE `learn` ADD CONSTRAINT `learn_fk1` FOREIGN KEY (`S_ID`) REFERENCES `Student`(`S_ID`);
