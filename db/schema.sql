
-- -- This SQL script initializes the database schema for a fullstack application
-- -- It creates a table named fullstack_employees with the following columns:

DROP TABLE IF EXISTS employees;

CREATE TABLE employees(
    id SERIAL PRIMARY KEY,
    name TEXT UNIQUE NOT NULL,
    birthday DATE NOT NULL,
    salary INTEGER NOT NULL

);




    

-- Insert INTO fullstack_employees (first_name, last_name, birth_date, salary);
-- await client.query(SQL);
-- console.log('data seeded')
-- };
--     init();
