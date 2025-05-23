SELECT Project.project_id, ROUND(AVG(experience_years), 2) AS average_years
FROM Project LEFT JOIN Employee ON Project.employee_id = Employee.employee_id
GROUP BY project_id;
