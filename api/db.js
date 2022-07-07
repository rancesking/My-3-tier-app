const Pool = require("pg").Pool;
const { db, user, password } = require("./config");

const pool = new Pool({
  user: user,
  password: password,
  host: "dev-mydb.c1q8ra0ipe54.us-east-1.rds.amazonaws.com",
  port: 5432,
  database: db,
});

module.exports = pool;
