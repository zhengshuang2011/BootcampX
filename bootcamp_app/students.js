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

const command = `SELECT students.id as id, students.name as name, cohorts.name as cohort
FROM students
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name LIKE '%${args[0]}%'
LIMIT ${args[1]};`;

pool
  .query(command)
  .then((res) => {
    res.rows.forEach((user) => {
      console.log(
        `${user.name} has an id of ${user.id} and was in the ${user.cohort} cohort.`
      );
    });
  })
  .catch((err) => console.log("query error", err.stack));
