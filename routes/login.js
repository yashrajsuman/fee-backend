const express = require("express");
const router = express.Router();
const { loginUser } = require("../controllers/loginController");

// Route for login
router.post("/login", loginUser);

module.exports = router;
