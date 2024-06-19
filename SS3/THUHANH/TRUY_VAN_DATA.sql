
use quanlysinhvien;

select * from student;

select * from student where Status = true;

select * from subject where CrediWt < 10;

select s.StudentID, s.StudentName, c.ClassName
from student s
join class c on s.ClassID = c.ClassID;

select s.StudentID, s.StudentName, c.ClassName
from student s
join class c on s.ClassID = c.ClassID where c.ClassName = 'A1';

select s.StudentID, s.StudentName, Sub.SubName, m.Mark
from student s
join mark m on s.StudentID = m.StudentID
join subject Sub on m.SubID = Sub.SubID
where Sub.SubName = 'CF';