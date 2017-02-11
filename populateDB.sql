INSERT into developers (name, age, country, city, join_date)
VALUES ('Tim', 23 , 'Russia', 'Moscov', '2013-11-01');
INSERT into developers (name, age, country, city, join_date)
VALUES ('Kuk', 31 , 'Ukraine', 'Kiev', '2015-1-11');
INSERT into developers (name, age, country, city, join_date)
VALUES ('Andru', 20 , 'Ukraine', 'Lviv', '2017-12-02');
INSERT into developers (name, age, country, city, join_date)
VALUES ('Oma', 25 , 'USA', 'Texas', '2015-11-01');
INSERT into developers (name, age, country, city, join_date)
VALUES ('Liza', 28 , 'USA', 'Texas', '2012-10-21');
INSERT into developers (name, age, country, city, join_date)
VALUES ('Mike', 31 , 'France', 'Paris', '2014-03-11');

INSERT into skills (JAVA,CPlusPlus,CSharp,JavaScript,PHP,PYTHON,RUBY,SCALA)
values(1,0,0,1,1,0,0,0);
INSERT into skills (JAVA,CPlusPlus,CSharp,JavaScript,PHP,PYTHON,RUBY,SCALA)
values(1,0,0,1,1,0,0,0);
INSERT into skills (JAVA,CPlusPlus,CSharp,JavaScript,PHP,PYTHON,RUBY,SCALA)
values(0,1,1,0,0,0,0,0);
INSERT into skills (JAVA,CPlusPlus,CSharp,JavaScript,PHP,PYTHON,RUBY,SCALA)
values(1,1,1,0,0,0,1,1);

INSERT INTO dev_skills (developer_id, skills_id)
VALUES (1,1);
INSERT INTO dev_skills (developer_id, skills_id)
VALUES (2,1);
INSERT INTO dev_skills (developer_id, skills_id)
VALUES (3,2);
INSERT INTO dev_skills (developer_id, skills_id)
VALUES (4,3);
INSERT INTO dev_skills (developer_id, skills_id)
VALUES (5,3);
INSERT INTO dev_skills (developer_id, skills_id)
VALUES (6,4);