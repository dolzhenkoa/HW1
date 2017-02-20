SELECT
  developers.name,
  avg(salary)
FROM developers
  INNER JOIN dev_projects on developers.id = dev_projects.developer_id
  INNER JOIN projects ON dev_projects.project_id = projects.id
WHERE cost=(SELECT id
  FROM projects
  HAVING min(cost))