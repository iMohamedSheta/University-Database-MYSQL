CREATE TABLE if not exists Students (
	StudentID int unsigned auto_increment not null primary key unique,
    StudentName varchar(255),
    StudentAge tinyint,
    StudentGender enum('Male','Female'),
    StudentAddress varchar(255),
    YearAndSemesterID int unsigned,
    FOREIGN KEY (`YearAndSemesterID`) REFERENCES academic_year_and_semester (`YearAndSemesterID`),
    ClassroomID int unsigned,
    FOREIGN KEY (`ClassroomID`) references classrooms (`ClassroomID`)
) 