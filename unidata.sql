-- create database unilag
-- @ created by emmanuella kenneth 2024
-- @ liable to copy
-- students
-- [student_id,first_name,last_name, age,gender,admission_date,email,phone_number,department_id(fk)]
-- lecturers
-- [lecturer_id,first_name,last_name, age,gender,employment_date,email,phone_number,department_id(fk)]
-- faculty
-- [faculty_id,faculty_name]
-- departments
-- [department_id, department_name,faculty_id(FK)]
-- courses
-- [ course_id, course_name, course_unit,,department_id(fk)]
-- enrollment
-- [enrollment_id, enrollment_date, course_id(FK),student_id(FK)]

CREATE TABLE factulty(
				faculty_id INT auto_increment PRIMARY KEY,
                faculty_name VARCHAR(100));

                
CREATE TABLE departments(
				department_id INT auto_increment PRIMARY KEY,
                department_name VARCHAR(100),
                faculty_id INT,
                FOREIGN KEY( faculty_id) references faculty(faculty_id));

CREATE TABLE students(
				student_id INT auto_increment PRIMARY KEY ,
                first_name VARCHAR(100),
                last_name VARCHAR(100), 
                age INT,
                gender VARCHAR(10),
                admission_date DATE,
                email VARCHAR(200),
                phone_number VARCHAR(15),
                department_id int,
                foreign key (DEPARTMENT_ID) references  department(department_id));
                
CREATE TABLE lecturers(
				lecturer_id INT auto_increment PRIMARY KEY ,
                first_name VARCHAR(100),
                last_name VARCHAR(100), 
                age INT,
                gender VARCHAR(10),
                employment_date DATE,
                email VARCHAR(200),
                phone_number VARCHAR(15),
                department_id int,
                foreign key (DEPARTMENT_ID) references  department(department_id));
                
                
CREATE TABLE courses(
				course_id INT auto_increment primary key,
                course_name VARCHAR(100),
                course_unit INT,
                department_id INT,
                FOREIGN KEY (department_id) references department(department_id));
                
CREATE TABLE enrollment(
				enrollment_id INT auto_increment PRIMARY KEY,
                enrollment_date DATE,
                course_id INT,
                student_id INT,
                FOREIGN KEY(course_id) references courses(course_id),
				FOREIGN KEY(student_id) references students(student_id));



