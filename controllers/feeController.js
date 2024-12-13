const FeeDetails = require('../models/feeDetails');

async function getFeeDetails(req, res) {
  try {
    const { usn } = req.params;

    // Fetch fee details from the 'fee_details' table
    const feeDetails = await FeeDetails.findOne({
      where: { usn },
      attributes: ['total_fee', 'amount_paid', 'remaining_balance'],
    });

    if (!feeDetails) {
      return res.status(404).json({ message: 'Fee details not found' });
    }

    res.json({
      total_fee: feeDetails.total_fee,
      paid_fee: feeDetails.amount_paid,
      remaining_fee: feeDetails.remaining_balance,
    });
  } catch (err) {
    console.error(err);
    res.status(500).json({ message: 'Internal Server Error' });
  }
}

module.exports = { getFeeDetails };
