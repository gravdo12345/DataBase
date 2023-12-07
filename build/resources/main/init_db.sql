-- init_db.sql
CREATE TABLE IF NOT EXISTS worker (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    birthday DATE,
    level VARCHAR(20) NOT NULL,
    salary INT
);

INSERT INTO worker (name, birthday, level, salary) VALUES
    ('John Doe', '2000-01-07', 'Senior', 5000),
    ('Sara Conor', '1995-05-15', 'Junior', 3000),
    ('Bob Johnson', '1995-08-10', 'Junior', 3000),