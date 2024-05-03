DROP DATABASE IF EXISTS project;

CREATE DATABASE project;

USE project;

CREATE TABLE admin ( password BLOB NOT NULL )ENGINE = InnoDB;

INSERT INTO admin VALUES ( SHA1('R@fi4143'));

CREATE TABLE enroll_for (id INT PRIMARY KEY AUTO_INCREMENT,degree varchar(5) NOT NULL, course varchar(30) NOT NULL) ENGINE = InnoDB;

INSERT INTO enroll_for (degree, course) values ('B.Sc', 'Computer Application');
INSERT INTO enroll_for (degree, course) values ('B.Sc', 'Computer Science');
INSERT INTO enroll_for (degree, course) values ('B.Sc', 'Data Science');
INSERT INTO enroll_for (degree, course) values ('M.Sc', 'Computer Science');
INSERT INTO enroll_for (degree, course) values ('M.Sc', 'Computer Application');
INSERT INTO enroll_for (degree, course) values ('B.A.', 'English');
INSERT INTO enroll_for (degree, course) values ('B.A.', 'Psychology');
INSERT INTO enroll_for (degree, course) values ('M.A.', 'English');
INSERT INTO enroll_for (degree, course) values ('M.A.', 'Psychology');

CREATE TABLE student (reg_no BIGINT PRIMARY KEY AUTO_INCREMENT, name varchar(50) NOT NULL,username varchar(20) NOT NULL UNIQUE , password BLOB NOT NULL, email_id varchar(255) NOT NULL UNIQUE, degree varchar(5) NOT NULL, course varchar(30) NOT NULL, year integer NOT NULL, is_approved INT DEFAULT 0,  CONSTRAINT CHK_year CHECK (year BETWEEN 1 AND 3)) ENGINE = InnoDB;

CREATE TABLE faculty (college_uid BIGINT PRIMARY KEY AUTO_INCREMENT,name varchar(50) NOT NULL, username varchar(20) NOT NULL UNIQUE, password BLOB NOT NULL, email_id varchar(255) NOT NULL UNIQUE, degree varchar(5) NOT NULL, course varchar(30) NOT NULL, year integer NOT NULL, subject varchar(50), is_approved INT DEFAULT 0, CONSTRAINT CHK_faculty_year CHECK (year BETWEEN 1 AND 3)) ENGINE = InnoDB;