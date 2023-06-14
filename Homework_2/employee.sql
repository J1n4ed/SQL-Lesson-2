-- таблицы для реализации хранения данных о сотрудниках
-- Задание 2*

-- Таблица отделов
create table if not exists Departments
(
	DepId integer primary key,
	DepName varchar(20) not null
);

-- Таблица сотрудников
create table if not exists Emps
(
	EmpId integer primary key,
	EmpName varchar(40) not null,
	DepId integer references Departments(DepId) unique
);

-- изменить таблцу, добавить поле
alter table Emps add LeadId integer references Emps(EmpId)