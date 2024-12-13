const express = require('express');
//const { Login } = require('../models/login'); 
const Login = require("../models/login");// Assuming your Login model is in models folder
const router = express.Router();

// Get name by USN
router.get('/getNameByUsn/:usn', async (req, res) => {
  const { usn } = req.params;

  try {
    // Find user by USN
    const user = await Login.findOne({ where: { usn } });

    if (!user) {
      return res.status(404).json({ message: 'User not found' });
    }

    return res.json({ name: user.name });
  } catch (err) {
    console.error(err);
    res.status(500).json({ message: 'Internal Server Error' });
  }
});

module.exports = router;
