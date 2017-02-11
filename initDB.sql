CREATE TABLE IF NOT EXISTS companies (
  id      INT NOT NULL AUTO_INCREMENT  PRIMARY KEY ,
  name    VARCHAR(100) NOT NULL ,
  address VARCHAR(100) NOT NULL ,
  country VARCHAR(100) NOT NULL ,
  city    VARCHAR(100) NOT NULL ,

  INDEX (name)
)
ENGINE InnoDB;

CREATE TABLE IF NOT EXISTS developers (
  id        INT NOT NULL AUTO_INCREMENT  PRIMARY KEY,
  name      VARCHAR(100) NOT NULL ,
  age       INT NOT NULL ,
  country   VARCHAR(100) NOT NULL ,
  city      VARCHAR(100) NOT NULL ,
  join_date date,
  dev_skills INT,

  INDEX (name)
)
ENGINE InnoDB;

CREATE TABLE IF NOT EXISTS skills(
  developer_id INT PRIMARY KEY NOT NULL ,
  JAVA        INT,
  CPlusPlus   int,
  CSharp      int,
  JavaScript  int,
  PHP         int,
  PYTHON      int,
  RUBY        int,
  SCALA       int
)
ENGINE InnoDB;

CREATE TABLE IF NOT EXISTS Dev_Skills(
  developer_id INT NOT NULL,
  skills_id    INT NOT NULL,

  FOREIGN KEY (developer_id) REFERENCES developers(id),
  FOREIGN KEY (skills_id)  REFERENCES skills(developer_id),
  UNIQUE (developer_id, skills_id)
)
ENGINE InnoDB;



