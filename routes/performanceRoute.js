const express = require('express');
const router = express.Router();
const performanceController = require('../controllers/performanceController');

// Route to get performance data by USN
router.get('/:usn', performanceController.getStudentPerformance);

module.exports = router;
