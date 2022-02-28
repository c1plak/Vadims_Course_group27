--1)Создать таблицу employees
--- id. serial,  primary key,
-- employee_name. Varchar(50), not null
create table employees(
id serial primary key,
employee_name varchar(50) not null
);

--Вывести employees
select * from employees;

--2)Заполить таблицу
insert into employees(employee_name)
values('Harry'),
('Oliver'),
('Jack'),
('Charlie'),
('Thomas'),
('Jacob'),
('Alfie'),
('Riley'),
('William'),
('James'),
('Amelia'),
('Olivia'),
('Jessica'),
('Emily'),
('Lily'),
('Ava'),
('Heather'),
('Sophie'),
('Mia'),
('Isabella'),
('Jack'),
('James'),
('Daniel'),
('Harry'),
('Charlie'),
('Ethan'),
('Matthew'),
('Ryen'),
('Riley'),
('Noah'),
('Sophie'),
('Emily'),
('Grace'),
('Ameila'),
('Jessica'),
('Lucy'),
('Sophia'),
('Katie'),
('Eva'),
('Aoife'),
('Jacob'),
('Oliver'),
('Riley'),
('Jack'),
('Alfie'),
('Harry'),
('Charlie'),
('Dylan'),
('William'),
('Mason'),
('Amelia'),
('Ava'),
('Mia'),
('Lily'),
('Olivia'),
('Ruby'),
('Seren'),
('Evie'),
('Ella'),
('Emily'),
('Jack'),
('Lewis'),
('Riley'),
('James'),
('Logan'),
('Daniel'),
('Ethan'),
('Harry'),
('Alexander'),
('Oliver');

--3)Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null
create table salary(
id serial primary key,
monthly_salary int not null
);

--Вывести таблицу salary
select * from salary;

--4)Наполнить таблицу salary
insert into salary(monthly_salary)
values(1000),
	  (1100),
	  (1200),
	  (1300),
	  (1400),
	  (1500),
	  (1600),
	  (1700),
	  (1800),
	  (1900),
	  (2000),
	  (2100),
	  (2200),
	  (2300),
	  (2400);

--5)Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null
create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

--Вывести таблицу employee_salary
select * from employee_salary;

--6)Наполнить таблицу employee_salary 
insert into employee_salary(employee_id, salary_id)
values (40,15),
	   (39,14),
	   (38,13),
	   (37,12),
	   (36,11),
	   (35,10),
	   (34,9),
	   (33,8),
	   (32,7),
	   (31,6),
	   (30,5),
	   (29,4),
	   (28,3),
	   (27,2),
	   (26,1),
	   (25,2),
	   (24,3),
	   (23,4),
	   (22,5),
	   (21,6),
	   (20,7),
	   (19,8),
	   (18,9),
	   (17,10),
	   (16,11),
	   (15,12),
	   (14,13),
	   (13,14),
	   (12,15),
	   (11,14),
	   (10,101),
	   (9,102),
	   (8,103),
	   (7,104),
	   (6,105),
	   (5,106),
	   (4,107),
	   (3,108),
	   (2,109),
	   (1,110);
	   
--7)Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique
create table roles(
id serial primary key,
role_name int not null unique
);

--Показать таблицу
select * from roles;

--8)Поменять тип столба role_name с int на varchar(30)
alter table roles
alter column role_name type varchar(30) using role_name::varchar(30);

--9)Наполнить таблицу roles;
insert into roles(role_name)
values('Junior Python developer'),
	  ('Middle Python developer'),
	  ('Senior Python developer'),
	  ('Junior Java developer'),
	  ('Middle Java developer'),
	  ('Senior Java developer'),
	  ('Junior JavaScript developer'),
	  ('Middle JavaScript developer'),
	  ('Senior JavaScript developer'),
	  ('Junior Manual QA engineer'),
	  ('Middle Manual QA engineer'),
	  ('Senior Manual QA engineer'),
	  ('Project Manager'),
	  ('Designer'),
	  ('HR'),
	  ('CEO'),
	  ('Sales manager'),
	  ('Junior Automation QA engineer'),
	  ('Middle Automation QA engineer'),
	  ('Senior Automation QA engineer');
	 
--10)Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
create table roles_employee(
id serial primary key,
employee_id int not null unique,
foreign key(employee_id)
references employees(id),
role_id int not null,
foreign key(role_id)
references roles(id)
);

--Вывести таблицу roles_employee
select * from roles_employee;

--Наполнить таблицу roles_employee 40 строками
insert into roles_employee(employee_id, role_id)
values(1,20),
	  (2,19),
	  (3,18),
	  (4,17),
	  (5,16),
	  (6,15),
	  (7,14),
	  (8,13),
	  (9,12),
	  (10,11),
	  (11,10),
	  (12,9),
	  (13,8),
	  (14,7),
	  (15,6),
	  (16,5),
	  (17,4),
	  (18,3),
	  (19,2),
	  (20,1),
	  (21,2),
	  (22,3),
	  (23,4),
	  (24,5),
	  (25,6),
	  (26,7),
	  (27,8),
	  (28,9),
	  (29,10),
	  (30,11),
	  (31,12),
	  (32,13),
	  (33,14),
	  (34,15),
	  (35,16),
	  (36,17),
	  (37,18),
	  (38,19),
	  (39,20),
	  (40,19);
