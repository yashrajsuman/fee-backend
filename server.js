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

//const app = express();
const port = process.env.PORT || 3000;

app.listen(port, () => {
    console.log(`App running at http://localhost:${port}`);
});


app.get('/', (req, res) => {
    res.send('Hello, the database is connected!');
});


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

// Export the app for Vercel
module.exports = app;
