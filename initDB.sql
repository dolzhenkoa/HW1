CREATE TABLE IF NOT EXISTS companies (
  id INT AUTO_INCREMENT NOT NULL  PRIMARY KEY ,
  name VARCHAR(100) NOT NULL ,
  address VARCHAR(100) NOT NULL ,
  country VARCHAR(100) NOT NULL ,
  city  VARCHAR(100) NOT NULL ,


  INDEX (name)

)
ENGINE InnoDB;

CREATE TABLE IF NOT EXISTS developers (
  id INT AUTO_INCREMENT NOT NULL  PRIMARY KEY ,
  name VARCHAR(100) NOT NULL ,
  address VARCHAR(100) NOT NULL ,
  country VARCHAR(100) NOT NULL ,
  city  VARCHAR(100) NOT NULL ,
  join_date date,
  skills_id INT,
  FOREIGN KEY (skills_id) REFERENCES skills(developer_id)
)
ENGINE InnoDB;

CREATE TABLE IF NOT EXISTS skills(
  developer_id INT,
  JAVA VARCHAR (1),
  "C++" VARCHAR (1),
  C# VARCHAR (1),
  JavaScript VARCHAR(1),
  PHP VARCHAR(1),
  PYTHON VARCHAR(1),
  RUBY VARCHAR(1),
  SCALA VARCHAR(1),
  FOREIGN KEY (developer_id) REFERENCES developers(skills_id)
)
ENGINE InnoDB;


