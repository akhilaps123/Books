CREATE TABLE `students` (student_id INT NOT NULL ,
                        name VARCHAR(30) NOT NULL,
                        email VARCHAR(30) NOT NULL,
                        UNIQUE(student_id,email)
                   );
CREATE TABLE `courses` (course_id INT NOT NULL ,
                        course_name VARCHAR(40) NOT NULL,
                        UNIQUE(course_id));
CREATE TABLE `enrollments` (enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
                            student_id INT NOT NULL,
                            course_id INT NOT NULL,
						    FOREIGN KEY(student_id)REFERENCES `students`(student_id),
                            FOREIGN KEY(course_id)REFERENCES `courses`(course_id));