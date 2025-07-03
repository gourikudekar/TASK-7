use coursehub;

CREATE VIEW TrainerCourseSummary AS
SELECT 
    t.t_name AS TrainerName,
    t.expertise,
    COUNT(DISTINCT c.course_id) AS TotalCourses
FROM trainer t
JOIN learner l ON t.trainer_id = l.trainer_id
JOIN course c ON l.course_id = c.course_id
GROUP BY t.trainer_id, t.t_name, t.expertise;

SELECT * FROM TrainerCourseSummary;


CREATE VIEW LearnerDetailsView AS
SELECT 
    l.l_name AS LearnerName,
    l.email,
    l.score,
    c.c_name AS CourseName,
    c.mode_of_learning,
    t.t_name AS TrainerName
FROM learner l
JOIN course c ON l.course_id = c.course_id
JOIN trainer t ON l.trainer_id = t.trainer_id;

SELECT * FROM LearnerDetailsView;


CREATE VIEW HighScoringLearners AS
SELECT 
    l_name, email, score
FROM learner
WHERE score > 85;

SELECT * FROM HighScoringLearners;


CREATE VIEW TrainerPerformanceView AS
SELECT 
    t.t_name AS TrainerName,
    t.expertise,
    ROUND(AVG(l.score), 2) AS AverageLearnerScore
FROM trainer t
JOIN learner l ON t.trainer_id = l.trainer_id
GROUP BY t.trainer_id, t.t_name, t.expertise;

SELECT * FROM TrainerPerformanceView;


CREATE VIEW CourseFeeInsight AS
SELECT 
    c.c_name AS CourseName,
    c.fees,
    CASE 
        WHEN fees < 60000 THEN 'Affordable'
        WHEN fees BETWEEN 60000 AND 80000 THEN 'Mid-Range'
        ELSE 'Premium'
    END AS FeeCategory,
    c.mode_of_learning
FROM course c;

SELECT * FROM CourseFeeInsight;


CREATE VIEW TrainerWorkloadView AS
SELECT 
    t.t_name AS TrainerName,
    COUNT(l.learner_id) AS TotalLearners
FROM trainer t
LEFT JOIN learner l ON t.trainer_id = l.trainer_id
GROUP BY t.trainer_id, t.t_name;

SELECT * FROM TrainerWorkloadView;


CREATE VIEW CoursePopularityView AS
SELECT 
    c.c_name AS CourseName,
    COUNT(l.learner_id) AS EnrolledLearners
FROM course c
LEFT JOIN learner l ON c.course_id = l.course_id
GROUP BY c.course_id, c.c_name;

SELECT * FROM CoursePopularityView;


CREATE VIEW ContactDirectoryView AS
SELECT 
    l.l_name AS LearnerName,
    l.email,
    t.t_name AS TrainerName,
    t.expertise
FROM learner l
JOIN trainer t ON l.trainer_id = t.trainer_id;

SELECT * FROM ContactDirectoryView;




