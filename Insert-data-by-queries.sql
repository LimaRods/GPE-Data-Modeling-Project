SELECT 
    *
FROM
    GPE_DATABASE.Team;
    
 /*-----------INSERT VALUES INTO TEAM TABLE-----------*/
 /*TEAM TABLE*/
insert into GPE_DATABASE.Team (team_name) 
values	('Portuguese'),
		('Mathematics'),
        ('Physics'),
        ('Chemistry'),
        ('Biology'),
        ('History'),
        ('Geography'),
        ('Board'),
        ('Markting'),
        ('Assistance'),
        ('IT'),
        ('Pedagogy')
;

/*ROLE*/
insert into GPE_DATABASE.Roles (role_name)
	values ('Principal'),
			('Vice Principal'),
            ('Teacher'),
            ('Coordinator'),
            ('Support')

;
/*-----------UPDATE VALUES INTO TEAM TABLE-----------*/
UPDATE GPE_DATABASE.Team 
SET 
    team_ids = 20
WHERE
    team_name = 'IT'

;          
/*-----------TEST Queries-----------*/
SELECT 
    *
FROM
    GPE_DATABASE.Roles
ORDER BY role_ids;

SELECT 
    *
FROM
    Team
ORDER BY team_ids;
;  