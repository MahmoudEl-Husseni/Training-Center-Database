CREATE TABLE Company_Employee (
	E_ID integer NOT NULL,
	Fname varchar(50),
	Lname varchar(50),
	BDate date,
	Address varchar(50),
	Gender binary,
	Salary float,
	Start_Date date,
	Dept_ID integer,
	MGR_ID integer,
  CONSTRAINT [PK_COMPANY_EMPLOYEE] PRIMARY KEY CLUSTERED
  (
  [E_ID] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

);

CREATE TABLE [Department] (
	Dept_ID integer NOT NULL,
	Dept_name varchar(50),
	MGR_Start_Date date,
	Building varchar(10),
	MGR_ID integer,
	B_ID integer,
  CONSTRAINT [PK_DEPARTMENT] PRIMARY KEY CLUSTERED
  (
  [Dept_ID] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

);

CREATE TABLE [Dependent] (
	E_ID integer NOT NULL,
	Dependent_name varchar(20) NOT NULL,
	Gender binary NOT NULL,
	BDate date NOT NULL,

);

CREATE TABLE [Customer] (
	C_ID integer NOT NULL,
	C_name varchar(40),
	C_start_Date date,
	NOPrevious_Projects integer,
	rate float,
	IS_Current binary,
	B_ID integer,
  CONSTRAINT [PK_CUSTOMER] PRIMARY KEY CLUSTERED
  (
  [C_ID] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

);
CREATE TABLE [Project] (
	P_ID integer NOT NULL,
	P_start_Date date,
	Period_in_days float,
	C_satisification float,
	C_ID integer NOT NULL,
	Dept_ID integer,
  CONSTRAINT [PK_PROJECT] PRIMARY KEY CLUSTERED
  (
  [P_ID] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

);
CREATE TABLE [Remuneration] (
	Date date NOT NULL,
	First_EID integer NOT NULL,
	Second_EID integer NOT NULL,
	Third_EID integer NOT NULL,
  CONSTRAINT [PK_REMUNERATION] PRIMARY KEY CLUSTERED
  (
  [Date] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

);
CREATE TABLE [Branch] (
	B_ID integer NOT NULL,
	Location varchar(40),
	Budget float,
	Area float,
	Income float,
	Build_Date date,
  CONSTRAINT [PK_BRANCH] PRIMARY KEY CLUSTERED
  (
  [B_ID] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

);
CREATE TABLE [Program] (
	Prog_ID integer NOT NULL,
	Prog_name varchar(40),
	Start_date date,
	NoStudents integer,
	Period float,
	Min_score float,
	B_ID integer,
  CONSTRAINT [PK_PROGRAM] PRIMARY KEY CLUSTERED
  (
  [Prog_ID] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

);
CREATE TABLE [Training_Employee] (
	E_ID integer NOT NULL,
	Fname varchar(40),
	Lname varchar(40),
	B_date date,
	Gender binary,
	Salary float,
	Department float,
	MGR_ID float,
  CONSTRAINT [PK_TRAINING_EMPLOYEE] PRIMARY KEY CLUSTERED
  (
  [E_ID] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

);
CREATE TABLE [Student] (
	S_ID integer NOT NULL,
	Fname varchar(10),
	Lname varchar(10),
	B_date date,
	Address varchar(40),
	Year_Faculty varchar(20),
	Faculty varchar(20),
	GPA float,
	Score float,
	Addmission_date date,
	Prog_ID integer,
  CONSTRAINT [PK_STUDENT] PRIMARY KEY CLUSTERED
  (
  [S_ID] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

);
CREATE TABLE [Course] (
	Course_code integer,
	Course_modules integer,
	Type varchar(20),
	rank float,
	CONSTRAINT [PK_COURSE] PRIMARY KEY CLUSTERED
	(
		[Course_code] ASC
	) WITH (IGNORE_DUP_KEY = OFF)

);
CREATE TABLE [Prerequisite] (
	Prog_ID integer NOT NULL,
	Course_Code integer NOT NULL,
  
);
CREATE TABLE [Program_Branch] (
	B_ID integer NOT NULL,
	Prog_ID integer NOT NULL,
  

);
CREATE TABLE [Emp_Branch_works_in] (
	E_ID integer NOT NULL,
	B_ID integer NOT NULL,
	Start_date date,
  CONSTRAINT [PK_EMP_BRANCH_WORKS_IN] PRIMARY KEY CLUSTERED
  (
  [E_ID] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

);
CREATE TABLE [Customer_Branch] (
	C_ID integer NOT NULL,
	B_ID integer NOT NULL,
  CONSTRAINT [PK_CUSTOMER_BRANCH] PRIMARY KEY CLUSTERED
  (
  [C_ID] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

);
CREATE TABLE [Emp_Proj] (
	E_ID integer NOT NULL,
	Proj_ID integer NOT NULL,
	Hours float,

);
CREATE TABLE [Teaches] (
	E_ID integer NOT NULL,
	Prog_ID integer NOT NULL,
	Course_Code integer NOT NULL,
  CONSTRAINT [PK_TEACHES] PRIMARY KEY CLUSTERED
  (
  [E_ID] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

);
CREATE TABLE [learn] (
	Prog_ID integer NOT NULL,
	S_ID integer NOT NULL,

);
ALTER TABLE [Company_Employee] WITH CHECK ADD CONSTRAINT [Company_Employee_fk0] FOREIGN KEY ([Dept_ID]) REFERENCES [Department]([Dept_ID])
ON UPDATE CASCADE;
ALTER TABLE [Company_Employee] CHECK CONSTRAINT [Company_Employee_fk0];

ALTER TABLE [Department] WITH CHECK ADD CONSTRAINT [Department_fk0] FOREIGN KEY ([MGR_ID]) REFERENCES [Company_Employee]([E_ID])
ON DELETE NO ACTION	;
ALTER TABLE [Department] CHECK CONSTRAINT [Department_fk0];
ALTER TABLE [Department] WITH CHECK ADD CONSTRAINT [Department_fk1] FOREIGN KEY ([B_ID]) REFERENCES [Branch]([B_ID])
ON DELETE SET NULL;
ALTER TABLE [Department] CHECK CONSTRAINT [Department_fk1];

ALTER TABLE [Dependent] WITH CHECK ADD CONSTRAINT [Dependent_fk0] FOREIGN KEY ([E_ID]) REFERENCES [Company_Employee]([E_ID])
ON UPDATE CASCADE;
ALTER TABLE [Dependent] CHECK CONSTRAINT [Dependent_fk0];

ALTER TABLE [Customer] WITH CHECK ADD CONSTRAINT [Customer_fk0] FOREIGN KEY ([B_ID]) REFERENCES [Branch]([B_ID])
ON DELETE CASCADE;
ALTER TABLE [Customer] CHECK CONSTRAINT [Customer_fk0];

ALTER TABLE [Project] WITH CHECK ADD CONSTRAINT [Project_fk0] FOREIGN KEY ([C_ID]) REFERENCES [Customer]([C_ID])
ON UPDATE CASCADE;
ALTER TABLE [Project] CHECK CONSTRAINT [Project_fk0];
ALTER TABLE [Project] WITH CHECK ADD CONSTRAINT [Project_fk1] FOREIGN KEY ([Dept_ID]) REFERENCES [Department]([Dept_ID])
ON UPDATE NO ACTION;
ALTER TABLE [Project] CHECK CONSTRAINT [Project_fk1];

ALTER TABLE [Remuneration] WITH CHECK ADD CONSTRAINT [Remuneration_fk0] FOREIGN KEY ([First_EID]) REFERENCES [Company_Employee]([E_ID])
ON UPDATE CASCADE;
ALTER TABLE [Remuneration] CHECK CONSTRAINT [Remuneration_fk0];
ALTER TABLE [Remuneration] WITH CHECK ADD CONSTRAINT [Remuneration_fk1] FOREIGN KEY ([Second_EID]) REFERENCES [Company_Employee]([E_ID])
ON UPDATE NO ACTION;
ALTER TABLE [Remuneration] CHECK CONSTRAINT [Remuneration_fk1];
ALTER TABLE [Remuneration] WITH CHECK ADD CONSTRAINT [Remuneration_fk2] FOREIGN KEY ([Third_EID]) REFERENCES [Company_Employee]([E_ID])
ON UPDATE NO ACTION;
ALTER TABLE [Remuneration] CHECK CONSTRAINT [Remuneration_fk2];



ALTER TABLE [Training_Employee] WITH CHECK ADD CONSTRAINT [Training_Employee_fk0] FOREIGN KEY ([E_ID]) REFERENCES [Company_Employee]([E_ID])
ON UPDATE CASCADE;
ALTER TABLE [Training_Employee] CHECK CONSTRAINT [Training_Employee_fk0];

ALTER TABLE [Student] WITH CHECK ADD CONSTRAINT [Student_fk0] FOREIGN KEY ([Prog_ID]) REFERENCES [Program]([Prog_ID])
ON UPDATE CASCADE;
ALTER TABLE [Student] CHECK CONSTRAINT [Student_fk0];


ALTER TABLE [Prerequisite] WITH CHECK ADD CONSTRAINT [Prerequisite_fk0] FOREIGN KEY ([Prog_ID]) REFERENCES [Program]([Prog_ID])
ON UPDATE CASCADE;
ALTER TABLE [Prerequisite] CHECK CONSTRAINT [Prerequisite_fk0];
ALTER TABLE [Prerequisite] WITH CHECK ADD CONSTRAINT [Prerequisite_fk1] FOREIGN KEY ([Course_Code]) REFERENCES [Course]([Course_code])
ON UPDATE CASCADE;
ALTER TABLE [Prerequisite] CHECK CONSTRAINT [Prerequisite_fk1];

ALTER TABLE [Program_Branch] WITH CHECK ADD CONSTRAINT [Program_Branch_fk0] FOREIGN KEY ([B_ID]) REFERENCES [Branch]([B_ID])
ON UPDATE CASCADE;
ALTER TABLE [Program_Branch] CHECK CONSTRAINT [Program_Branch_fk0];
ALTER TABLE [Program_Branch] WITH CHECK ADD CONSTRAINT [Program_Branch_fk1] FOREIGN KEY ([Prog_ID]) REFERENCES [Program]([Prog_ID])
ON UPDATE CASCADE;
ALTER TABLE [Program_Branch] CHECK CONSTRAINT [Program_Branch_fk1];

ALTER TABLE [Emp_Branch_works_in] WITH CHECK ADD CONSTRAINT [Emp_Branch_works_in_fk0] FOREIGN KEY ([E_ID]) REFERENCES [Company_Employee]([E_ID])
ON UPDATE CASCADE;
ALTER TABLE [Emp_Branch_works_in] CHECK CONSTRAINT [Emp_Branch_works_in_fk0];
ALTER TABLE [Emp_Branch_works_in]
ADD FOREIGN KEY ([B_ID]) REFERENCES [Branch]([B_ID]);



ALTER TABLE [Customer_Branch] WITH CHECK ADD CONSTRAINT [Customer_Branch_fk0] FOREIGN KEY ([C_ID]) REFERENCES [Customer]([C_ID])
ON DELETE CASCADE;
ALTER TABLE [Customer_Branch] CHECK CONSTRAINT [Customer_Branch_fk0];
ALTER TABLE [Customer_Branch] WITH CHECK ADD CONSTRAINT [Customer_Branch_fk1] FOREIGN KEY ([B_ID]) REFERENCES [Branch]([B_ID]);
ALTER TABLE [Customer_Branch] CHECK CONSTRAINT [Customer_Branch_fk1];

ALTER TABLE [Emp_Proj] WITH CHECK ADD CONSTRAINT [Emp_Proj_fk0] FOREIGN KEY ([E_ID]) REFERENCES [Company_Employee]([E_ID])
ON UPDATE CASCADE;
ALTER TABLE [Emp_Proj] CHECK CONSTRAINT [Emp_Proj_fk0];
ALTER TABLE [Emp_Proj] ADD FOREIGN KEY ([Proj_ID]) REFERENCES [Project]([P_ID]);



ALTER TABLE [Teaches] WITH CHECK ADD CONSTRAINT [Teaches_fk0] FOREIGN KEY ([E_ID]) REFERENCES [Training_Employee]([E_ID])
ON UPDATE CASCADE;
ALTER TABLE [Teaches] CHECK CONSTRAINT [Teaches_fk0];
ALTER TABLE [Teaches] WITH CHECK ADD CONSTRAINT [Teaches_fk1] FOREIGN KEY ([Prog_ID]) REFERENCES [Program]([Prog_ID])
ON UPDATE CASCADE;
ALTER TABLE [Teaches] CHECK CONSTRAINT [Teaches_fk1];
ALTER TABLE [Teaches] WITH CHECK ADD CONSTRAINT [Teaches_fk2] FOREIGN KEY ([Course_Code]) REFERENCES [Course]([Course_code])
ON UPDATE CASCADE;
ALTER TABLE [Teaches] CHECK CONSTRAINT [Teaches_fk2];
ALTER TABLE [learn] WITH CHECK ADD CONSTRAINT [learn_fk0] FOREIGN KEY ([Prog_ID]) REFERENCES [Program]([Prog_ID])
ON UPDATE CASCADE;
ALTER TABLE [learn] CHECK CONSTRAINT [learn_fk0];
ALTER TABLE [learn] ADD FOREIGN KEY ([S_ID]) REFERENCES [Student]([S_ID]);
