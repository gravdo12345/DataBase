-- find_longest_project.sql

-- Знайти проєкт з найбільшою тривалістю
SELECT NAME AS PROJECT_NAME, DATEDIFF(FINISH_DATE, START_DATE) AS MONTH_COUNT
FROM project
ORDER BY MONTH_COUNT DESC
LIMIT 1;
