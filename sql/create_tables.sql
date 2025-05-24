CREATE TABLE IF NOT EXISTS students (
    student_id VARCHAR(32) PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    gender VARCHAR(10),
    math_score FLOAT,
    english_score FLOAT,
    science_score FLOAT,
    attendance_rate FLOAT,
    term VARCHAR(10),
    gpa FLOAT,
    risk_score FLOAT,
    engagement_level VARCHAR(20), 
);

CREATE TABLE at_risk_students (
    student_id VARCHAR(32) PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    risk_score FLOAT NOT NULL,
    engagement_level VARCHAR(20),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

CREATE TABLE IF NOT EXISTS top_students (
    student_id VARCHAR(32) PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    gpa FLOAT NOT NULL,
    gender VARCHAR(10),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);