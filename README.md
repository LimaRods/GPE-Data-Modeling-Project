# GPE Data Modeling Project
 
This project is part of a digital transformation headed by me in a non-profit organization whose goal is to make education more democratic. The organization’s name is Grupo Pró-Estudar (GPE), and it offers preparatory courses for entrance exams in  Brazilian universities for low-income individuals.

The main purpose here is to create a database to centralize the data we received from our processes. We receive data from candidates who fill the socio-economic forms, as well as their performance in our entrance exam. Once the candidate is eligible to become our student, we track their personal information and results in tests we applied over the year. We also would like to store information about our volunteers.


The project for modeling a database can be divided into 3 phases: **Conceptual** data model, **Logical** data model, and **Physical** data model.

**1.** A conceptual design is a simple schema that shows only entities of the database and their relationships. See “GPE Conceptual Design.pdf “

**2.** In the Logical data model stage, we are interested in listing the entities and attributes in the project (tables and columns name in the future), foreign keys, unique keys, and primary keys. We go deeply into details about the relationship between the entities and classify them by drawing technical symbols like one-to_many/many-to-many concepts. An example of logical data models is illustrated in “GPE Database ER Diagram.pdf”.

**3.** In the last phase, the physical data model is built from the previous two models and consists in converting entities into tables, relationships into foreign keys, and attributes into columns. We also set the table names, column names, and data type of columns and do some changes based on project requirements and constraints. In a nutshell, we set the technical requirements necessary to start coding in the physical model phase. You can take a look at the SQL script in “GPE Physical Data Model.sql” and in additional documentation in “GPD Data Dictionary (metadata).xlsx”.
