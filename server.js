const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const dotenv = require('dotenv');
const loginRoutes = require('./routes/login');
const sequelize = require('./config/database');
const performanceRoutes = require('./routes/performanceRoute');
const Name = require('./routes/name');
const feeRoutes = require('./routes/feeRoute');
const feeRoute = require('./routes/fee');

dotenv.config();
const app = express();

// Middleware
app.use(bodyParser.json());
app.use(cors());

// Routes
app.use('/api', loginRoutes);
app.use('/api/performance', performanceRoutes);
app.use('/api', Name);
app.use('/api/fees', feeRoutes);
app.use('/api/fee', feeRoute);

// Test connection and sync database
sequelize.sync()
    .then(() => console.log('Database synced...'))
    .catch(err => console.log('Error: ' + err));

// Start server
const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
    console.log(`Server running on http://localhost:${PORT}`);
});
