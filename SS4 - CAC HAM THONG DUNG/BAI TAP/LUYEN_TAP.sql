use quanlysinhvien;

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
SELECT s.subid, s.subname, s.credit, s.status
FROM subject s
WHERE s.credit = (
    SELECT MAX(sub.credit) 
    FROM subject sub
);
SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.

 select s.subid, s.subname, s.credit, s.status, m.mark
 from mark m
 join subject s on m.SubID = s.SubID
 where m.Mark = (
		select max(mark.mark)
        from mark
 );
 
 -- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
 
 
select s.*, avg(mark) as average_mark
from mark m
join student s on m.studentid = s.studentid
group by s.studentid;