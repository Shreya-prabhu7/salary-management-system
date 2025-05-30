-- Create admin table
CREATE TABLE admin (
  id INT PRIMARY KEY,
  username VARCHAR(45) NOT NULL,
  password VARCHAR(45) NOT NULL
);

-- Insert into admin
INSERT INTO admin VALUES (100, 'Arjun', 'abc123');

-- Create department table
CREATE TABLE department (
  Depart_id INT PRIMARY KEY,
  Depart_name VARCHAR(45) UNIQUE
);

-- Insert into department
INSERT INTO department VALUES (101, 'IT');
INSERT INTO department VALUES (102, 'Electronics');
INSERT INTO department VALUES (103, 'Customer Care');
INSERT INTO department VALUES (104, 'Marketing');
INSERT INTO department VALUES (105, 'Development');
INSERT INTO department VALUES (106, 'Finance');

-- Select all departments
SELECT * FROM department;

-- Create job table
CREATE TABLE job (
  Job_Title VARCHAR(20),
  basic_salary INT,
  PRIMARY KEY (Job_Title)
);

-- Insert into job
INSERT INTO job (Job_Title, basic_salary) VALUES ('manager', 40000);
INSERT INTO job (Job_Title, basic_salary) VALUES ('executive', 45000);
INSERT INTO job (Job_Title, basic_salary) VALUES ('director', 50000);
INSERT INTO job (Job_Title, basic_salary) VALUES ('chief', 60000);
INSERT INTO job (Job_Title, basic_salary) VALUES ('accountant', 35000);

-- Create employee table
CREATE TABLE employee (
  Employee_id INT NOT NULL,
  Name VARCHAR(200) NOT NULL,
  Address VARCHAR(200) NOT NULL,
  Phone_no VARCHAR(15) UNIQUE,
  Email VARCHAR(50) UNIQUE,
  Start_date DATE NOT NULL,
  dob DATE NOT NULL,
  gender VARCHAR(15) NOT NULL,
  loan FLOAT NOT NULL,
  p_fund INT NOT NULL,
  jobtitle VARCHAR(50) NOT NULL,
  Depart_id INT NOT NULL,
  managesDepart_id INT,
  bank_accno INT UNIQUE,
  PRIMARY KEY (Employee_id),
  FOREIGN KEY (Depart_id) REFERENCES department(Depart_id),
  FOREIGN KEY (managesDepart_id) REFERENCES department(Depart_id),
  FOREIGN KEY (jobtitle) REFERENCES job(Job_Title)
);

-- Insert into employee
INSERT INTO employee (Employee_id, Name, Address, Phone_no, Email, Start_date, dob, gender, loan, p_fund, jobtitle, Depart_id, managesDepart_id, bank_accno) VALUES
(1604023, 'Arun', 'Hyderabad', '9988776655', 'arun@gmail.com', '2018-10-10', '1996-02-29', 'male', 0, 2000, 'manager', 106, 106, 236954128),
(1604025, 'Bhuvan', 'Chennai', '9977661230', 'bhuvan@gmail.com', '2018-12-18', '2000-01-01', 'male', 3610, 1500, 'executive', 104, NULL, 123654784),
(1604026, 'Charan', 'Mumbai', '8809765432', 'charan026@gmail.com', '2018-08-14', '1996-07-11', 'male', 0, 1250, 'manager', 102, 102, 365488911),
(1604027, 'David', 'Delhi', '6303453211', 'david4@gmail.com', '2018-11-01', '1998-09-11', 'male', 4000, 750, 'executive', 103, NULL, 313515669),
(1604045, 'Sohail', 'Rajasthan', '7654321231', 'sohail@gmail.com', '2019-01-18', '1997-10-25', 'male', 4512.5, 750, 'executive', 101, NULL, 125432874),
(1604060, 'Prakhar', 'Pune', '8193264912', 'prakhar16@gmail.com', '2019-01-03', '1997-06-04', 'male', 0, 1250, 'manager', 101, 101, 154297830),
(1604073, 'Naveen', 'Vellore', '9869803351', 'naveen007@gmail.com', '2018-09-11', '1997-01-25', 'male', 0, 1500, 'accountant', 105, NULL, 147483647),
(1604078, 'Vinay', 'Madhya Pradesh', '9152140632', 'viany877@gmail.com', '2019-01-18', '1998-03-02', 'male', 0, 1750, 'chief', 101, NULL, 247483647),
(1604083, 'Bishal', 'Delhi', '7474244680', 'bishal@gmail.com', '2014-06-02', '1997-11-14', 'male', 0, 750, 'executive', 105, NULL, 321569874),
(1604110, 'Riya', 'Delhi', '7637100931', 'riya143@gmail.com', '2018-10-22', '1999-08-28', 'female', 0, 1250, 'director', 104, NULL, 497483647);

-- Create payment table
CREATE TABLE payment (
  pay_no INT UNIQUE,
  emp_id INT NOT NULL,
  year INT NOT NULL,
  month VARCHAR(50) NOT NULL,
  absence INT NOT NULL,
  loan_cut FLOAT NOT NULL,
  pfund_cut FLOAT NOT NULL,
  overtime FLOAT NOT NULL,
  season_bonus FLOAT NOT NULL,
  other_bonus FLOAT NOT NULL,
  medi_allow FLOAT NOT NULL,
  house_allow FLOAT NOT NULL,
  total_pay FLOAT NOT NULL,
  PRIMARY KEY (emp_id, year, month),
  FOREIGN KEY (emp_id) REFERENCES employee(Employee_id)
);

-- Insert into payment
INSERT INTO payment VALUES (1234, 1604023, 2018, 'december', 2, 0, 1000, 6, 2000, 0, 1200, 3200, 45800);
INSERT INTO payment VALUES (1235, 1604026, 2018, 'november', 2, 0, 1000, 6, 2000, 0, 1200, 3200, 45800);
INSERT INTO payment VALUES (1238, 1604027, 2018, 'october', 1, 200, 1125, 3, 2000, 0, 1350, 3600, 51325);
INSERT INTO payment VALUES (1239, 1604073, 2018, 'november', 3, 0, 1500, 5, 2000, 0, 1800, 4800, 68000);
INSERT INTO payment VALUES (1240, 1604110, 2018, 'december', 5, 0, 1250, 4, 2000, 0, 1500, 4000, 56450);
