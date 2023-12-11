-- print_project_prices.sql

-- Вивести вартість кожного проєкту
SELECT
    p.NAME AS PROJECT_NAME,
    SUM(w.SALARY * DATEDIFF(pr.FINISH_DATE, pr.START_DATE)) AS PRICE
FROM
    project p
JOIN project_worker pw ON p.ID = pw.PROJECT_ID
JOIN worker w ON pw.WORKER_ID = w.ID
JOIN project pr ON pw.PROJECT_ID = pr.ID
GROUP BY
    p.NAME
ORDER BY
    PRICE DESC;
