Create database ThucHanh;
Use ThucHanh;
Create table Student(
	student_id varchar(10) primary key,
	student_name varchar(50) not null,
	email varchar(50) not null,
	phone int not null
);

Create table Course(
	course_id varchar(10) primary key,
    course_name varchar(50) not null,
    credit int check(credit>0)
);
Create table Enrollment (
	student_id varchar(10),
    course_id varchar(10),
    Greadle decimal(4,2) default 0,
	primary key(student_id,course_id),
    foreign key (student_id) references Student(student_id),
    foreign key (course_id) references Course(course_id)
);
insert into Student values
	('SV001','Vu','Vu@gmail.com',0912345678),
    ('SV002','Duc','Duc@gmail.com',0977777777),
    ('SV003','Huy','Huy@gmail.com',0988888888),
    ('SV004','Hoang','Hoang@gmail.com',0933333333),
    ('SV005','Anh','Anh@gmail.com',0944444444);
insert into Course values 
	('MH001','Lap Trinh Huong Doi Tuong',3),
    ('MH002','Lap Trinh C',4),
    ('MH003','Lap Trinh C++',2),
    ('MH004','Mang may tinh',5),
    ('MH005','Lap trinh Mang',3);
insert into Enrollment values
	('SV001','MH001',8.2),
    ('Sv002','MH001',9),
    ('Sv002','MH003',7),
    ('Sv003','MH001',6.8),
    ('Sv004','MH004',9.6);
    
Update Enrollment 
set greadle =9
where course_id='MH002' and course_id='MH003';

select name,email,phone from Student;
 -- Hệ thống không cho xóa vì Course đã liên kết khóa ngoại với Enrollment và đã thêm dữ liệu MH001 vào rồi 
delete  From Course where course_id='MH001'; 
