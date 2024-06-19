use quanlysinhvien;

-- C1 --
select address, count(StudentID) as 'Số lượng học sinh'
from student
group by address;

-- C2 --
select s.StudentID, s.StudentName, avg(mark) as score
from student s
join mark m on s.StudentID = m.StudentID
group by s.StudentID, s.StudentName;

-- C3 -- 
select s.StudentID, s.StudentName, avg(mark) as score
from student s
join mark m on s.StudentID = m.StudentID
group by s.StudentID, s.StudentName
having avg(mark) > 15;

-- C4 --
select s.StudentID, s.StudentName, avg(mark) as score
from student s
join mark m on s.StudentID = m.StudentID
group by s.StudentID, s.StudentName
having avg(mark) >= all (select avg(mark) from mark group by mark.studentID);