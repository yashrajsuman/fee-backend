const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');

const FeeDetails = sequelize.define('FeeDetails', {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },
  usn: {
    type: DataTypes.STRING(15),
    allowNull: false,
  },
  total_fee: {
    type: DataTypes.DECIMAL(10, 2),
    allowNull: false,
  },
  amount_paid: {
    type: DataTypes.DECIMAL(10, 2),
    defaultValue: 0.00,
  },
  remaining_balance: {
    type: DataTypes.VIRTUAL,
    get() {
      return this.total_fee - this.amount_paid;
    },
  },
  last_payment_date: {
    type: DataTypes.DATE,
    allowNull: true,
  },
}, {
  timestamps: false,
  tableName: 'fee_details'
});

module.exports = FeeDetails;
