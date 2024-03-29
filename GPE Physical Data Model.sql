/*CREATING A DATABASE*/
create database GPE_DATABASE;

/*TABLE TEAM*/
-- Team table is the parent table, which will be the table that a foreign key references
-- team_ids is the parent key because is the columm  in the parent table which the FK references
-- The AUTO_INCREMENT attribute can be used to generate a unique identity for new rows automatically.
-- ...You don't need to assign values into id columns (or their alias) when creating new rows.

DROP TABLE IF EXISTS GPE_DATABASE.Team;
CREATE TABLE GPE_DATABASE.Team (
    team_ids INTEGER PRIMARY KEY AUTO_INCREMENT,
    team_name VARCHAR(30) NOT NULL UNIQUE
);

/*ROLES TABLE*/
-- Role Table is also a parent table of Volunteers table
DROP TABLE IF EXISTS GPE_DATABASE.Roles;
CREATE TABLE GPE_DATABASE.Roles (
    role_ids INT PRIMARY KEY AUTO_INCREMENT,
    role_name VARCHAR(30) NOT NULL UNIQUE,
    role_description TEXT
);
    
/*VOLUNTEERS TABLE*/
-- Volunteers is the child table, which the FK constraint apply
-- the team_id  is called the child key, generalythe child key references to the primary key in the parent table
DROP TABLE IF EXISTS GPE_DATABASE.Volunteers;
CREATE TABLE IF NOT EXISTS GPE_DATABASE.Volunteers (
    volunteer_ids INTEGER NOT NULL,
    name VARCHAR(60) NOT NULL,
    email VARCHAR(60),
    phone_number VARCHAR(60),
    degree VARCHAR(60) DEFAULT NULL,
    university VARCHAR(50) DEFAULT NULL,
    team_id INTEGER NOT NULL,
    role_id INTEGER NOT NULL,
    start_date DATE DEFAULT NULL,
    end_date DATE DEFAULT NULL,
    PRIMARY KEY (volunteer_ids , team_id , role_id),
    FOREIGN KEY (team_id)
        REFERENCES Team (team_ids)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (role_id)
        REFERENCES Roles (role_ids)
        ON UPDATE CASCADE ON DELETE CASCADE
);

/*TABLE APPLICANTS*/
DROP TABLE IF EXISTS GPE_DATABASE.Applicants;
CREATE TABLE IF NOT EXISTS GPE_DATABASE.Applicants (
    student_code CHAR(6) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    student_id VARCHAR(15) NOT NULL UNIQUE,
	address VARCHAR(200) NOT NULL,
    neighborhood VARCHAR(200) NOT NULL,
    city VARCHAR(60) NOT NULL,
    phone_number VARCHAR(60) NOT NULL UNIQUE,
    current_status VARCHAR(100),
    internet_access VARCHAR(100),
    highschool VARCHAR(100),
    secoundary_school VARCHAR(100),
    race VARCHAR(100),
    father_education VARCHAR(100),
    mother_education VARCHAR(100),
    tutelary_ecucation VARCHAR(100),
    avg_income_percapita VARCHAR(100),
    father_occuparion VARCHAR(100),
    mother_occupation VARCHAR(100),
    personal_occupation VARCHAR(100),
    matao_residence VARCHAR(100),
    who_living_with_you VARCHAR(100),
    age VARCHAR(15),
    vehicle VARCHAR(60),
    marital_status VARCHAR(60),
    books VARCHAR(60),
    books_type VARCHAR(500),
    movie_theather VARCHAR(60),
    museum VARCHAR(60),
    additional_courses VARCHAR(600),
    career VARCHAR(100),
    study_room BOOL,
    computers VARCHAR(30),
    smartphones VARCHAR(30),
    parents_conversation VARCHAR(600)
);
    
/* ENTRANCE EXAM TABLE*/
DROP TABLE IF EXISTS GPE_DATABASE.Entrance_Exame;
CREATE TABLE IF NOT EXISTS GPE_DATABASE.Entrance_Exame (
    student_code CHAR(6) PRIMARY KEY,
    geography DECIMAL(5 , 4 ) NOT NULL,
    biology DECIMAL(5 , 4 ) NOT NULL,
    chemistry DECIMAL(5 , 4 ) NOT NULL,
    history DECIMAL(5 , 4 ) NOT NULL,
    math DECIMAL(5 , 4 ) NOT NULL,
    physics DECIMAL(5 , 4 ) NOT NULL,
    portuguese DECIMAL(5 , 4 ) NOT NULL,
    literature DECIMAL(5 , 4 ) NOT NULL,
    english DECIMAL(5 , 4 ),
    interdisciplinary DECIMAL(5 , 4 ),
    FOREIGN KEY (student_code)
        REFERENCES Applicants (student_code)
        ON DELETE CASCADE ON UPDATE CASCADE
);
    
/* STUDENT TABLES */
DROP TABLE IF EXISTS GPE_DATABASE.Students;
CREATE TABLE GPE_DATABASE.Students (
    student_code CHAR(6) PRIMARY KEY,
    NSE DECIMAL(5 , 4 ) NOT NULL,
    start_date DATE DEFAULT NULL,
    end_date DATE DEFAULT NULL,
    volunteer_id INTEGER DEFAULT NULL,
    FOREIGN KEY (student_code)
        REFERENCES Applicants (student_code)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (volunteer_id)
        REFERENCES Volunteers (volunteer_ids)
        ON UPDATE CASCADE ON DELETE CASCADE
);

/* EXAMS TABLE */
DROP TABLE IF EXISTS GPE_DATABASE.Exams ;
CREATE TABLE GPE_DATABASE.Exams (
    student_code CHAR(6) NOT NULL,
    exame_number INTEGER NOT NULL,
    geography DECIMAL(5 , 4 ) NOT NULL,
    biology DECIMAL(5 , 4 ) NOT NULL,
    chemistry DECIMAL(5 , 4 ) NOT NULL,
    history DECIMAL(5 , 4 ) NOT NULL,
    math DECIMAL(5 , 4 ) NOT NULL,
    physics DECIMAL(5 , 4 ) NOT NULL,
    portuguese DECIMAL(5 , 4 ) NOT NULL,
    literature DECIMAL(5 , 4 ) NOT NULL,
    english DECIMAL(5 , 4 ),
    interdisciplinary DECIMAL(5 , 4 ),
    PRIMARY KEY (student_code , exame_number),
    FOREIGN KEY (student_code)
        REFERENCES Applicants (student_code)
        ON DELETE CASCADE ON UPDATE CASCADE
);


/*-----------------------DROP TABLES AND DATABASE-----------------------*/
drop table GPE_DATABASE.Applicants
;
-- CAUTION !!!
drop database GPE_DATABASE;

/*-----------------------TEST QUERIES-----------------------*/
select * from GPE_DATABASE.Team;

/*-----------------------TEST TO INSERT VALUES INTO TABLE-----------------------*/
insert into GPE_DATABASE.Team (team_name) values
							('Matematica'),
                            ('Portuga'),
                            ('Japones')
                            ;