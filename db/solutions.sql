-- create a new PostgreSQL database named fullstack_employees
CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    birth_date DATE NOT NULL,
    salary INTEGER(10, 2) CHECK (salary >= 0),
    
);