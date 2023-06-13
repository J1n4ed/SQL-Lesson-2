-- таблицы для реализации хранения данных о сотрудниках
-- Задание 2*

-- Таблица отделов
create table if not exists Departments
(
	DepId integer primary key,
	DepName varchar(20) not null
);

-- Таблица начальников
create table if not exists Leads
(
	LeadId integer primary key
);

-- Таблица сотрудников
create table if not exists Emps
(
	EmpId integer primary key,
	EmpName varchar(40) not null,
	DepId integer references Departments(DepId) unique,
	LeadId integer references Leads(LeadId)
);

-- изменить таблцу начальников, добавить поле
alter table leads add EmpId integer references Emps(EmpId) unique