CourseHub SQL Project

Welcome to the my CourseHub database project! 
This repository contains SQL code to design a structured learning management system using MySQL.
It includes tables for trainers, courses, and learners, as well as eight reusable views designed for analytics, abstraction, and reporting.


trainer
Stores trainer information including name, area of expertise, rating, and years of experience.

course
Defines courses with name, fee details, and mode of learning (`Online` or `Offline`).

learner
Captures learner records including name, email, score, and links to their enrolled course and assigned trainer.


 TrainerCourseSummary
Purpose:Summarizes each trainer's expertise along with the total number of courses they’re associated with.
Key Insight:Shows how actively each trainer contributes to CourseHub.
Query:SELECT * FROM TrainerCourseSummary;

LearnerDetailsView
Purpose: Displays full learner details including name, score, email, course name, and trainer name.
Key Insight: Great for academic reporting and overview dashboards.
Query:SELECT * FROM LearnerDetailsView;

HighScoringLearners
Purpose: Filters out top-performing learners with scores above 85.
Key Insight: Helps in identifying talent for scholarships or advanced programs.
Query:SELECT * FROM HighScoringLearners;

TrainerPerformanceView
Purpose: Calculates average learner score per trainer to evaluate teaching effectiveness.
Key Insight: Useful for internal trainer performance reviews.
Query:SELECT * FROM TrainerPerformanceView;

CourseFeeInsight
Purpose: Categorizes courses into fee slabs: Affordable, Mid-Range, and Premium.
Key Insight: Helps marketing teams design pricing strategies.
SELECT * FROM CourseFeeInsight;

TrainerWorkloadView
Purpose: Displays how many learners each trainer is responsible for.
Key Insight: Useful for balancing workloads and managing trainer capacity.
Query:SELECT * FROM TrainerWorkloadView;

CoursePopularityView
Purpose: Measures course popularity based on learner enrollment.
Key Insight: Helps curriculum designers see what topics are trending.
Query:SELECT * FROM CoursePopularityView;

ContactDirectoryView
Purpose: Abstracted directory showing learner email and their trainer details.
Key Insight: Useful for admin or communications teams, without exposing sensitive data.
Query:SELECT * FROM ContactDirectoryView;
