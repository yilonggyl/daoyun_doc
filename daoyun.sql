create table role(
id int auto_increment primary key not null,
role_name varchar(8) not null
)

create table daoyunuser(
id int auto_increment primary key not null,
user_name varchar(16),
password varchar(32) not null,
mobile_number varchar(16) not null,
nickname varchar(32) not null,
birth_year varchar(16),
sex varchar(8),
college_institute varchar(64),
roll_name varchar(8),
student_id varchar(32)
)

create table daoyuncourse(
id int auto_increment primary key not null,
course_name varchar(32) not null,
teacher_name varchar(32) not null,
course_class varchar(64) not null,
type varchar(32) not null
)

create table signin(
id int auto_increment primary key not null,
user_id int not null,
course_id int not null,
time datetime not null,
foreign key(user_id) references daoyunuser(id),
foreign key(course_id) references daoyuncourse(id) 
)

create table attend_courses_list(
id int auto_increment primary key not null,
user_id int not null,
course_id int not null,
foreign key(user_id) references daoyunuser(id),
foreign key(course_id) references daoyuncourse(id)
)
