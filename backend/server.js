const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const studentRoutes = require('./routes/studentRoutes');
const { errorHandler } = require('./middlewares/errorHandler');

const app = express();
const PORT = 5000;

// Middleware
app.use(cors());
app.use(bodyParser.json());

// Routes
app.use('/api', studentRoutes);

// Error Handling Middleware
app.use(errorHandler);

// Start Server
app.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT}`);
});
