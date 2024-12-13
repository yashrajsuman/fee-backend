const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');

const Performance = sequelize.define('Performance', {
    usn: {
        type: DataTypes.STRING(15),
        allowNull: false,
        unique: true,
    },
    sem1_sgpa: {
        type: DataTypes.DECIMAL(4, 2),
        allowNull: false,
    },
    sem2_sgpa: {
        type: DataTypes.DECIMAL(4, 2),
        allowNull: false,
    },
    sem3_sgpa: {
        type: DataTypes.DECIMAL(4, 2),
        allowNull: false,
    },
    sem4_sgpa: {
        type: DataTypes.DECIMAL(4, 2),
        allowNull: false,
    },
    sem5_sgpa: {
        type: DataTypes.DECIMAL(4, 2),
        allowNull: false,
    },
    sem6_sgpa: {
        type: DataTypes.DECIMAL(4, 2),
        allowNull: false,
    },
    cgpa: {
        type: DataTypes.DECIMAL(4, 2),
        allowNull: false,
    }
}, {
    timestamps: true,
    createdAt: 'created_at',
    updatedAt: 'updated_at',
    tableName: 'student_performance',
});

module.exports = Performance;
