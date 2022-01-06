const { Pool } = require("pg");
const args = process.argv.slice(2);

const pool = new Pool({
  user: "vagrant",
  password: "123",
  host: "localhost",
  database: "bootcampx",
  port: "5432",
});

pool
  .connect()
  .then(() => {
    console.log("We have connected with database successfully");
  })
  .catch((e) => {
    console.log(e);
  });

const command = `SELECT DISTINCT(teachers.name) as name, cohorts.name as cohort
FROM students
JOIN cohorts ON cohorts.id = students.cohort_id
JOIN assistance_requests ar ON ar.student_id = students.id
JOIN teachers ON teachers.id = ar.teacher_id
WHERE cohorts.name = $1
ORDER BY name;`;

const values = [args[0]];
pool
  .query(command, values)
  .then((res) => {
    res.rows.forEach((user) => {
      console.log(`${user.cohort}: ${user.name}`);
    });
  })
  .catch((err) => console.log("query error", err.stack));
