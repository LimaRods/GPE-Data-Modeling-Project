/*CREATING A DATABASE*/
create database GPE_DATABASE;

/*TABLE TEAM*/
-- Team table is the parent table, which will be the table that a foreign key references
-- team_ids is the parent key because is the columm  in the parent table which the FK references
CREATE TABLE GPE_DATABASE.Team (
    team_ids INTEGER PRIMARY KEY,
    team_name VARCHAR(30) UNIQUE
);

/*VOLUNTEERS TABLE*/
-- Volunteers is the child table, which the FK constraint apply
-- the team_id  is called the child key, generalythe child key references to the primary key in the parent table
CREATE TABLE GPE_DATABASE.Volunteers (
    volunteer_ids INTEGER NOT NULL,
    name VARCHAR(60) NOT NULL,
    degree VARCHAR(60),
    team_id INTEGER,
    start_date DATE,
    end_date DATE,
    PRIMARY KEY (volunteer_ids , team_id),
    FOREIGN KEY (team_id)
        REFERENCES Team (team_ids)
        ON UPDATE CASCADE ON DELETE CASCADE
);

/*TABLE APPLICANTS*/
CREATE TABLE GPE_DATABASE.Applicants (
    student_code CHAR(6) PRIMARY KEY,
    email VARCHAR(60) UNIQUE,
    student_id INTEGER UNIQUE,
    neighborhood VARCHAR(60) NOT NULL,
    city VARCHAR(60) NOT NULL,
    phone_number VARCHAR(60) UNIQUE,
    current_status VARCHAR(100) NOT NULL,
    internet_access VARCHAR(100) NOT NULL,
    highschool VARCHAR(100) NOT NULL,
    secoundary_school VARCHAR(100) NOT NULL,
    race VARCHAR(100) NOT NULL,
    people_living_with_you VARCHAR(100) NOT NULL,
    father_education VARCHAR(100) NOT NULL,
    mother_education VARCHAR(100) NOT NULL,
    tutelary_ecucation VARCHAR(100) NOT NULL,
    avg_income VARCHAR(100) NOT NULL,
    avg_income_percapita VARCHAR(100) NOT NULL,
    father_occuparion VARCHAR(100) NOT NULL,
    mother_occupation VARCHAR(100) NOT NULL,
    personal_occupation VARCHAR(100) NOT NULL,
    matao_residence VARCHAR(100) NOT NULL,
    who_living_with_you VARCHAR(100) NOT NULL,
    age VARCHAR(15) NOT NULL,
    vehicle VARCHAR(60) NOT NULL,
    marital_status VARCHAR(60) NOT NULL,
    books VARCHAR(60) NOT NULL,
    books_type VARCHAR(500) NOT NULL,
    movie_theather VARCHAR(60) NOT NULL,
    museum VARCHAR(60) NOT NULL,
    additional_courses VARCHAR(60) NOT NULL,
    career VARCHAR(100) NOT NULL,
    study_room BOOL NOT NULL,
    computers VARCHAR(30) NOT NULL,
    smartphones VARCHAR(30) NOT NULL,
    parents_conversation VARCHAR(500) NOT NULL
);
    
/* ENTRANCE EXAM TABLE*/
CREATE TABLE GPE_DATABASE.Exam_Entrance (
    student_code CHAR(6) PRIMARY KEY,
    chemistry DECIMAL(5 , 4 ) NOT NULL,
    history DECIMAL(5 , 4 ) NOT NULL,
    math DECIMAL(5 , 4 ) NOT NULL,
    physics DECIMAL(5 , 4 ) NOT NULL,
    portuguese DECIMAL(5 , 4 ) NOT NULL,
    literature DECIMAL(5 , 4 ) NOT NULL,
    english DECIMAL(5 , 4 ) NOT NULL,
    interdisplinary DECIMAL(5 , 4 ) NOT NULL,
    FOREIGN KEY (student_code)
        REFERENCES Applicants (student_code)
        ON DELETE CASCADE ON UPDATE CASCADE
);
    
/* STUDENT TABLES */
CREATE TABLE GPE_DATABASE.Students (
    student_code CHAR(6) PRIMARY KEY,
    NSE DECIMAL(5 , 4 ) NOT NULL,
    start_date DATE,
    end_date DATE,
    volunteer_id INTEGER,
    FOREIGN KEY (student_code)
        REFERENCES Applicants (student_code)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (volunteer_id)
        REFERENCES Volunteers (volunteer_ids)
        ON UPDATE CASCADE ON DELETE CASCADE
);

/* EXAMS TABLE */
CREATE TABLE GPE_DATABASE.Exams (
    student_code CHAR(6),
    exame_number INTEGER,
    chemistry DECIMAL(5 , 4 ) NOT NULL,
    history DECIMAL(5 , 4 ) NOT NULL,
    math DECIMAL(5 , 4 ) NOT NULL,
    physics DECIMAL(5 , 4 ) NOT NULL,
    portuguese DECIMAL(5 , 4 ) NOT NULL,
    literature DECIMAL(5 , 4 ) NOT NULL,
    english DECIMAL(5 , 4 ) NOT NULL,
    interdisplinary DECIMAL(5 , 4 ) NOT NULL,
    PRIMARY KEY (student_code , exame_number),
    FOREIGN KEY (student_code)
        REFERENCES Students (student_code)
        ON DELETE CASCADE ON UPDATE CASCADE
);


/*DROP TABLES*/
drop table GPE_DATABASE.S;

/*TEST QUERIES*/
select * from GPE_DATABASE.Applicants;