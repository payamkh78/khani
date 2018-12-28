select * from Student;
select * from Teacher;
select * from Course;
select * from Register;
select * from RegisterCourse;
select * from Major;
update Teacher set firstname = 'علی' where id = 3; 
 

select Teacher.id,Teacher.firstname,Teacher.lastname,Teacher.TeacherCode, Student.StudentCode from Teacher  right join Student on Student.StudentCode = StudentCode;
 
select * from Student  join Major on Student.id = Major.id;

select * from Student right  join Major on Student.id = Major.id;

select * from Student left join Major on Student.id = Major.id;

select COUNT(*) from Student;

select COUNT(*) from Teacher;

select COUNT(*) from Course;

select COUNT(*) from Register;

select COUNT(*) from RegisterCourse;

select COUNT(*) from Major;

select COUNT(*) from Student where firstname = N'مهدی';

select * from Teacher order by firstname asc , lastname asc ;

select * from Teacher order by firstname desc , lastname desc ;

select distinct lastname from Student order by lastname;

select distinct firstname from Student order by firstname;

select distinct Student.MajorCode from Student order by MajorCode;

select top 3 * from Student order by firstname asc ;

select Student.id , Student.firstname , Student.lastname , Student.StudentCode from Teacher join Student on Student.id = Teacher.id;

