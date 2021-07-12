CREATE TABLE titles(
	title_id VARCHAR not null,
	title VARCHAR not null,
	PRIMARY KEY (title_id)
	);

select * from titles;

CREATE TABLE employees(
	emp_no INTEGER not null,
	emp_title_id VARCHAR not null,
	birth_date DATE not null,
	first_name VARCHAR not null,
	last_name VARCHAR not null,
	sex VARCHAR,
	hire_date DATE not null,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	PRIMARY KEY (emp_no)
); 

SELECT * FROM employees;

CREATE TABLE departments(
	dept_no VARCHAR not null,
	dept_name VARCHAR not null,
	PRIMARY KEY (dept_no)
);

SELECT * FROM departments;

-- Creating an association table between employees and depts tables.
CREATE TABLE dept_emp(
	emp_no INTEGER not null,
	dept_no VARCHAR not null,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

SELECT * FROM dept_emp;


CREATE TABLE dept_manager(
	dept_no VARCHAR not null,
	emp_no INTEGER not null,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

SELECT * FROM dept_manager;

CREATE TABLE salaries(
	emp_no INTEGER not null,
	salary INTEGER not null,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (emp_no)
);

SELECT * FROM salaries;