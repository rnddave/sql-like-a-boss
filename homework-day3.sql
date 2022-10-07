-- we need to find the names of people that came 1st, 2nd, 3rd position

--select max(marks) from schools

--select max(marks) from schools where marks <(select max(marks) from schools where marks < (select max(marks) from schools))

-- we know this involves subqueries, but what they are? 

-- lets create a new table
create table studentRecords(studentID int(4), name char(20), totalMarks int(4))

-- populate with some records 
insert into studentRecords values(1024, 'Bobby Orange', 320),
(1024, 'The Green Giant', 364),
(2048, 'Banana Man', 380),
(4096, 'Danger Mouse', 380),
(512, 'Inspector Gadget', 325),
(256, 'Thundercats', 319),
(128, 'The Tango Man', 319),
(64, 'Mr Delmonte', 396),
(32, 'Mr Blobby', 379)

-- now we want to award a medal for each of the 3 best scores

select max(marks) from schools where marks <(select max(marks) from schools where marks < (select max(marks) from schools))
