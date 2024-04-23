SELECT e.employee_id,e.last_name,e.department_id,d.location_id
FROM employees e, departments d
WHERE e.department_id = d.department_id
ORDER BY e.department_id;


SELECT e.employee_id,j.job_title,d.department_name, l.city,l.state_province,l.country_id
FROM employees e,jobs j, departments d, locations l
WHERE e.department_id = d.department_id AND
e.job_id = j.job_id AND
d.location_id = l.location_id;


SELECT e.first_name,e.employee_id,j.job_title,d.department_name,e.salary, l.city,l.state_province,l.country_id
FROM employees e,jobs j, departments d, locations l
WHERE e.department_id = d.department_id AND
e.job_id = j.job_id AND
d.location_id = l.location_id AND
e.salary >= 1000
ORDER BY e.salary;


SELECT e.employee_id,e.salary,j.grade_level,j.lowest_sal,j.highest_sal
FROM employees e, job_grades j
WHERE NVL(e.salary,0) BETWEEN j.lowest_sal AND highest_sal
ORDER BY e.salary;


SELECT e.first_name,e.last_name,d.department_id,d.department_name
FROM employees e,departments d
WHERE e.department_id = d.department_id(+)
ORDER BY e.department_id;


SELECT e.first_name,e.last_name,d.department_id,d.department_name
FROM employees e,departments d
WHERE e.department_id(+) = d.department_id
ORDER BY e.department_id;

SELECT empregado.employee_id "ID empregado",empregado.last_name "Sobrenome empregado",gerente.employee_id "Id gerente",gerente.last_name "Sobrenome gerente"
FROM employees empregado , employees gerente
WHERE empregado.manager_id = gerente.employee_id(+)
ORDER BY gerente.employee_id;


SELECT e.employee_id,e.first_name,e.last_name,j.job_id,j.job_title
FROM employees e, jobs j;