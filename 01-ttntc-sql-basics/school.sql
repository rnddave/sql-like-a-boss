create table Schools( regNo int(6), name char(20), marks int(4))

INSERT into Schools values(000027, 'Peter', 089),
 (000028, 'Paul', 075),
 (000029, 'Piper', 094),
 (000030, 'Prince', 057),
 (000031, 'Princess', 090),
 (000054, 'Pointer', 040),
 (000055, 'Pinky', 064)

select * FROM Schools

select name,marks*100/150 As Percentage from Schools

-- we want to view only the students with a score greater than 80%

SELECT name from schools WHERE marks*100/150>80

-- we want to view only the students with a score greater than 60% (we didn't have any students higher)

SELECT name from schools WHERE marks*100/150>60

-- now we want to try changing data in an existing table. 

UPDATE schools set name = 'James' WHERE name is 'Paul' and regNo is 000028

-- now we want to change the marks for a student

UPDATE schools set marks = 104 WHERE regNo is 28

-- add a column

alter table schools add address char(40)

-- add data to the new column

update table schools set address = 'London' where regNo is 28 

-- drop a column

alter table schools drop address