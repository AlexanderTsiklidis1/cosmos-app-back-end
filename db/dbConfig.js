const pgp = require("pg-promise")();

require('dotenv').config();

const cn = {
    databaseURL: process.env.DATABASE_URL,
    database: process.env.PG_DATABASE,
    hostname: process.env.PG_HOSTNAME, 
    password: process.env.PG_PASSWORD,
    port: process.env.PG_PORT,
    user: process.env.PG_USER
};

const db = pgp(cn);

module.exports = db;