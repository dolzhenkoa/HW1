SELECT
  customers.custName,
  companies.name,
  projects.cost
FROM customers
INNER JOIN cust_project on customers.id = cust_project.customer_id
INNER JOIN projects ON cust_project.project_id = projects.id
INNER JOIN project_company ON projects.id = project_company.project_id
INNER JOIN companies ON project_company.company_id = companies.id
WHERE cost=(SELECT id
  FROM projects
  HAVING min(cost))
GROUP BY companies.name;








