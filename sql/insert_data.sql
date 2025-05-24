COPY students (student_id, full_name, math_score, english_score, science_score, attendance_rate, term, gpa, risk_score, engagement_level) 
FROM stdin WITH CSV HEADER DELIMITER ',';


COPY at_risk_students (student_id, full_name, risk_score, engagement_level)
FROM stdin WITH CSV HEADER DELIMITER ',';

COPY top_students (student_id, full_name, gpa, gender)
FROM stdin WITH CSV HEADER DELIMITER ',';