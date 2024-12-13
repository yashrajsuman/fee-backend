const express = require("express");
const FeeDetails = require("../models/feeDetail"); // Your Sequelize model
const nodemailer = require("nodemailer");
const router = express.Router();

// Update Fee Details and Send Email
router.post("/updateAmount", async (req, res) => {
  const { usn, amountPaid, email } = req.body;

  try {
    // Fetch the user's fee details
    const feeDetails = await FeeDetails.findOne({ where: { usn } });

    if (!feeDetails) {
      return res.status(404).json({ message: "Fee details not found." });
    }

    // Update the amount paid
    const updatedAmountPaid = parseFloat(feeDetails.amount_paid) + parseFloat(amountPaid);
    if (updatedAmountPaid > feeDetails.total_fee) {
      return res.status(400).json({ message: "Amount exceeds total fee." });
    }

    await FeeDetails.update(
      { amount_paid: updatedAmountPaid, last_payment_date: new Date() },
      { where: { usn } }
    );

    // Send receipt email
    const transporter = nodemailer.createTransport({
      service: "gmail", // Use your email provider
      auth: {
        user: "rajy9234@gmail.com", // Replace with your email
        pass: "wbxg egzw sgej hfig", // Replace with your email password or app password
      },
    });

    const receiptHTML = `
      <h3>Payment Receipt</h3>
      <p>Dear Student,</p>
      <p>Thank you for your payment.</p>
      <p><strong>USN:</strong> ${usn}</p>
      <p><strong>Amount Paid:</strong> ₹${amountPaid}</p>
      <p><strong>Total Paid:</strong> ₹${updatedAmountPaid}</p>
      <p><strong>Remaining Balance:</strong> ₹${feeDetails.total_fee - updatedAmountPaid}</p>
      <p>Regards,<br>Atria Institute of Technology</p>
    `;

    const mailOptions = {
      from: "your-email@gmail.com",
      to: email,
      subject: "Fee Payment Receipt",
      html: receiptHTML,
    };

    await transporter.sendMail(mailOptions);

    res.json({ message: "Amount updated and email sent successfully." });
  } catch (error) {
    console.error("Error updating fee or sending email:", error);
    res.status(500).json({ message: "Internal Server Error" });
  }
});

module.exports = router;
