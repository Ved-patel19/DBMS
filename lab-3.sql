--Retrieve all data from table STUDENT.

select * from student


--Display Student Name and City from STUDENT.

select sname,city from student

--Display student details of all students who belongs to COMPUTER branch.

select * from student
where branch = 'computer'

--Display names of students whose ID is less than 105 from STUDENT table.

select * from student
where stdid <105

--Give Student Name, City and SPI of student whose SPI is greater than 6.50.

select sname,city,spi from student
where spi >6.50


--Give name of Student whose branch is COMPUTER and SPI is greater than 8.00.


select sname from student
where spi >8.00 and branch = 'computer'

--Give names of students whose ID is greater than 103 and belongs to Rajkot city

select sname from student
where stdid>103 and city = 'rajkot'

--Display names of students who belong to either ‘RAJKOT’ or ‘SURAT’ city (USE OR & IN)

select sname from student
where  city = 'rajkot' or city = 'surat'
--where city in ('rajkot','surat')


--Display names of students with branch whose SPI is greater than 8.0 and ID is less than 105.

select sname,branch from student
where  spi >8.00 and stdid<105

-- Find all students whose SPI is greater than or equal to 7.0 and less than or equal to 9.0 (USE AND &
BETWEEN).

select * from student
--where spi >=7.0 and spi <=9.0
where spi between 7 and 9



-- Find all students who do not belong to ‘COMPUTER’ branch.

select * from student
where  branch != 'computer'

-- Display Student ID, Name & SPI of students who belong to ‘COMPUTER’, ‘CIVIL’ or ‘CHEMICAL’ branch
and ID is less than 104.



select stdid,sname,spi from student
WHERE Branch IN ('COMPUTER', 'CIVIL', 'CHEMICAL') 
  AND stdid < 104




--Display all student IDs and names who do not belong to ‘COMPUTER’ or ‘CIVIL’ branch (USE NOT IN)

select stdid,sname from student
where branch not in ('COMPUTER','CIVIL')

--Display all student names other than ‘DEEP’ from STUDENT table (USE NOT, <>, !=).

select sname from student
WHERE NOT (sname = 'DEEP')
--WHERE NAME <> 'DEEP'
--WHERE NAME <> 'DEEP'


-- Display student names whose branch is not available (NULL) in STUDENT table.

select stdid,sname,spi from student
WHERE Branch is null

-- Retrieve all unique branches name from STUDENT table.

SELECT DISTINCT branch FROM STUDENT


-- Retrieve first 50% records from STUDENT table.

SELECT TOP 50 PERCENT * FROM STUDENT


--Retrieve first five student IDs from STUDENT table.

SELECT TOP 5  stdid FROM STUDENT