-- populate_db.sql

-- Додавання працівників
INSERT INTO worker (NAME, BIRTHDAY, LEVEL, SALARY) VALUES
  ('John Doe', '1990-05-15', 'Senior', 5000),
  ('Sara Conor', '1988-12-20', 'Middle', 4000),
  ('Bob Johnson', '1995-08-10', 'Junior', 3000),
  -- Додайте ще працівників за аналогією

-- Додавання клієнтів
INSERT INTO client (NAME) VALUES
  ('Client A'),
  ('Client B'),
  ('Client C'),
  -- Додайте ще клієнтів за аналогією

-- Додавання проєктів
INSERT INTO project (CLIENT_ID, START_DATE, FINISH_DATE) VALUES
  (1, '2022-01-01', '2023-01-01'),
  (2, '2022-02-01', '2023-02-01'),
  (3, '2022-03-01', '2023-03-01'),
  -- Додайте ще проєкти за аналогією

-- Додавання працівників до проєктів
INSERT INTO project_worker (PROJECT_ID, WORKER_ID) VALUES
  (1, 1),
  (1, 2),
  (2, 2),
  (2, 3),
  -- Додайте ще зв'язки між працівниками та проєктами за аналогією
