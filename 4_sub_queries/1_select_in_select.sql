-- SELECT cohorts.name AS name, COUNT(students) AS total_students
-- FROM students
-- JOIN cohorts ON cohorts.id = students.cohort_id
-- GROUP BY cohorts.name;

SELECT avg(total_students) as average_students
FROM(
  SELECT count(students) as total_students
  FROM students
  JOIN cohorts on cohorts.id = cohort_id
  GROUP BY cohorts
)as totals_table;