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
  id INT NOT NULL AUTO_INCREMENT  PRIMARY KEY  ,
  name VARCHAR(100) NOT NULL ,
  address VARCHAR(100) NOT NULL ,
  country VARCHAR(100) NOT NULL ,
  city  VARCHAR(100) NOT NULL ,
  join_date date,

  INDEX (name)
)
ENGINE InnoDB;

CREATE TABLE IF NOT EXISTS skills(
  developer_id INT,
  JAVA VARCHAR (1),
  CPlusPlus VARCHAR (1),
  CSharp VARCHAR (1),
  JavaScript VARCHAR(1),
  PHP VARCHAR(1),
  PYTHON VARCHAR(1),
  RUBY VARCHAR(1),
  SCALA VARCHAR(1)
)
ENGINE InnoDB;

CREATE TABLE IF NOT EXISTS Dev_Skills(
  developer_id INT NOT NULL,
  skills_id    INT NOT NULL,

  FOREIGN KEY (developer_id) REFERENCES developers(id),
  FOREIGN KEY (skills_id) REFERENCES skills(developer_id),

  UNIQUE (developer_id, skills_id)
)
ENGINE InnoBD;



