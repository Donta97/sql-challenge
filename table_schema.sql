CREATE TABLE employees (
    emp_no INT   NOT NULL,
    birth_date date   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    gender VARCHAR   NOT NULL,
    hire_date date   NOT NULL,
	PRIMARY KEY (emp_no)
);

SELECT * from employees;

CREATE TABLE departments (
    dept_no VARCHAR   NOT NULL,
    dept_name VARCHAR   NOT NULL,
	PRIMARY KEY (dept_no)
);

SELECT * from departments;

CREATE TABLE dept_emp (
    emp_no INT   NOT NULL,
	dept_no VARCHAR   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * from dept_emp;

CREATE TABLE dept_manager (
    dept_no VARCHAR   NOT NULL,
    emp_no int   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * from dept_manager;


CREATE TABLE salaries (
    emp_no int   NOT NULL,
	salary INTEGER   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL,    
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * from salaries;


CREATE TABLE titles (
	emp_no int   NOT NULL,
    title VARCHAR   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * from titles;