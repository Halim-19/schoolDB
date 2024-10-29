const mysql = require('mysql');

const db = mysql.createConnection({
  host: 'localhost',
  user: 'root', // Replace with your MySQL username
  password: '', // Replace with your MySQL password
  database: 'schoolDB', // Replace with your database name
});

db.connect((err) => {
  if (err) {
    console.error('Database connection error:', err);
    throw err;
  }
  console.log('Connected to MySQL Database');
});

module.exports = db;
