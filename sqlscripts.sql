sers table

INSERT INTO users (name, email, country_id, remember_token , created_at ,updated_at)
VALUES
('Tom Cruise', 'tomcruise@gmail.com',178 , 'hfkfsdfdsfdsfsiee' , CURRENT_TIMESTAMP , CURRENT_TIMESTAMP),
('Tom Cruise', 'tom@gmail.com',45  ,'fjkhjadshkjashd' , CURRENT_TIMESTAMP , CURRENT_TIMESTAMP ),
('Tom Cruise', 'cruise@gmail.com',67  ,'iropeiopriweopeior' , CURRENT_TIMESTAMP , CURRENT_TIMESTAMP)

SELECT * FROM users WHERE name='Tom Cruise' AND email='tom@gmail.com' AND verified=1 AND country_id=45;

update users set verified=1 where email in ('tomcruise@gmail.com' , 'tom@gmail.com' , 'cruise@gmail.com');

delete from users where id in (4 , 5 ,6);

rojects

INSERT INTO projects (name , user_id , created_at , updated_at)
VALUES
('New 1 project' , 7  , CURRENT_TIMESTAMP , CURRENT_TIMESTAMP),
('New 2 project' , 8 , CURRENT_TIMESTAMP , CURRENT_TIMESTAMP),
('New 3 project' , 9  , CURRENT_TIMESTAMP , CURRENT_TIMESTAMP);

INSERT INTO project_user ( project_id , user_id)
VALUES
(7,10),
(7,11),
(7,12);


SELECT projects.id , projects.name , projects.user_id ,
       u.id , u.name , u.email ,
       l.id , l.name , l.user_id ,
       c2.id , c2.continent_code
FROM projects
         INNER JOIN users u on projects.user_id = u.id
         INNER JOIN countries c on u.country_id = c.id
         INNER JOIN continents c2 on c.continent_id = c2.id
         INNER JOIN label_project lp on projects.id = lp.project_id
         INNER JOIN labels l on lp.label_id = l.id
where u.email='jodie57@example.com' AND c2.id=3 AND l.id in (218 , 119 , 224)
;

DELETE FROM projects where id in (1 , 2 , 3);

abels

INSERT INTO labels (name, user_id, created_at, updated_at)
VALUES
       ('New 1 label', 7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('New 2 label', 8, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('New 3 label', 9, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO label_project (label_id , project_id)
VALUES
        (34 , 45),
        (45 , 45),
        (44 , 67);

SELECT * FROM labels
INNER JOIN users u on labels.user_id = u.id
INNER JOIN label_project lp on labels.id = lp.label_id
WHERE email='ovandervort@example.com' AND project_id in (160 , 95 ,210);

DELETE FROM labels WHERE id in (2 ,3 ,4);
