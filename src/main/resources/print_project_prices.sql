SELECT
    project.NAME AS project_name,
    SUM(worker.SALARY * DATEDIFF(project.FINISH_DATE, project.START_DATE)) AS project_price
FROM
    project
JOIN project_worker ON project.id = project_worker.project_id
JOIN worker ON project_worker.worker_id = worker.id
GROUP BY
    project.NAME
ORDER BY
    project_price DESC;
