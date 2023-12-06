--Part 1 list the columns & their data types in the table as a SQL comment

-- id INT,
-- employer VARCHAR(255),
-- name VARCHAR (255),
-- skills VARCHAR(255)

--Part 2 write a query to list the names of the employers in STl.

SELECT name
FROM employer
WHERE location = "St. Louis City";

--Part 3 SQL statement to remove the job table

DROP TABLE job;

--Part 4 write a query to return the names of all skills that are attached to jobs in alphabetical order. If a skill does not have a job listed, it should not be included in the results of this query.

SELECT * FROM skill INNER JOIN job_skills ON skill.id = job_skills.skills_id WHERE job_skills.jobs_id IS NOT NULL ORDER BY name ASC;
