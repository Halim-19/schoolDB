const db = require('../config/database');

// Function to insert student data into the database
exports.insertStudents = (req, res) => {
  const students = req.body; // Array of student objects from the frontend

  const query = 'INSERT INTO students (Matricule, Nom, Prenom) VALUES ?';
  const values = students.map((student) => [
    student.Matricule,
    student.Nom,
    student.Prenom,
  ]);

  db.query(query, [values], (err, result) => {
    if (err) {
      console.error('Error inserting data:', err);
      res.status(500).send('Error inserting data');
    } else {
      res.status(200).send('Data inserted successfully');
    }
  });
};
