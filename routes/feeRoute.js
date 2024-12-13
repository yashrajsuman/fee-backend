const express = require('express');
const FeeDetails = require('../models/feeDetail'); // Ensure this path is correct
const router = express.Router();

// Get total_fee and remaining_balance by USN
router.get('/getFeesByUsn/:usn', async (req, res) => {
  const { usn } = req.params;

  try {
    // Find the FeeDetails by USN
    const feeDetails = await FeeDetails.findOne({
      where: { usn }
    });

    if (!feeDetails) {
      return res.status(404).json({ message: 'Fee details not found for the provided USN' });
    }

    // Send total_fee and remaining_balance in the response
    return res.json({
      total_fee: feeDetails.total_fee,
      remaining_balance: feeDetails.get('remaining_balance') // Access virtual field
    });
  } catch (err) {
    console.error(err);
    res.status(500).json({ message: 'Internal Server Error' });
  }
});

module.exports = router;
