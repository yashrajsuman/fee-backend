const Performance = require('../models/performance');

exports.getStudentPerformance = async (req, res) => {
    const { usn } = req.params;

    try {
        const performance = await Performance.findOne({ where: { usn } });

        if (!performance) {
            return res.status(404).json({ message: 'Student performance not found' });
        }

        return res.json({
            semesterData: [
                { semester: 'Sem 1', sgpa: performance.sem1_sgpa },
                { semester: 'Sem 2', sgpa: performance.sem2_sgpa },
                { semester: 'Sem 3', sgpa: performance.sem3_sgpa },
                { semester: 'Sem 4', sgpa: performance.sem4_sgpa },
                { semester: 'Sem 5', sgpa: performance.sem5_sgpa },
                { semester: 'Sem 6', sgpa: performance.sem6_sgpa },
            ],
            cgpa: performance.cgpa
        });
    } catch (error) {
        return res.status(500).json({ message: 'Server error', error: error.message });
    }
};
