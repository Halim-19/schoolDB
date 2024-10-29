const express = require('express');
const router = express.Router();
const studentController = require('../controllers/studentController');

// Route to handle insertion of student data
router.post('/students', studentController.insertStudents);

module.exports = router;
