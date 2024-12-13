const { Sequelize } = require('sequelize');
const dotenv = require('dotenv');

// Load environment variables
dotenv.config();

const sequelize = new Sequelize(
    process.env.DB_DATABASE, // Database name
    process.env.DB_USER,     // Database username
    process.env.DB_PASSWORD, // Database password
    {
        host: process.env.DB_HOST,   // Database host
        dialect: 'mysql',            // Database dialect
        port: process.env.DB_PORT || 3306, // Default MySQL port
        dialectOptions: {
            ssl: {
                require: true,             // Ensure SSL is required
                rejectUnauthorized: false // For self-signed certificates (can be true for proper SSL setups)
            }
        },
        pool: {
            max: 5, // Maximum number of connections
            min: 0, // Minimum number of connections
            acquire: 30000, // Maximum time to wait for a connection (ms)
            idle: 10000     // Maximum time a connection can be idle (ms)
        },
        logging: false // Disable logging (optional, can help with cleaner output)
    }
);

// Test database connection
sequelize.authenticate()
    .then(() => console.log('Database connected...'))
    .catch(err => console.log('Error: ' + err));

// Export sequelize instance for use in other modules
module.exports = sequelize;
