USE dbms;

DROP TABLE IF EXISTS projects;
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    manager VARCHAR(50) NOT NULL
);

INSERT INTO projects (project_id, project_name, manager) VALUES
(1, 'Website Redesign', 'Alice'),
(2, 'App Development', 'Bob'),
(3, 'Marketing Campaign', 'Charlie');

SELECT * FROM projects;

ALTER TABLE projects RENAME TO project_list;

SHOW TABLES;

SELECT * FROM project_list;