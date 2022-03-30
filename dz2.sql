create table if not exists Исполнители (
id serial primary key,
Псевдоним varchar(40) not null unique,
Альбом varchar(40) not null
);

create table if not exists Альбом (
id serial primary key,
Треки varchar (100) not null,
Год_выпуска integer not null,
Название varchar (50) not null
);

create table if not exists Трек (
id serial primary key,
Название varchar (50) not null,
Длительность integer not null,
Идентификатор_альбома integer references Альбом(id)
);

create table if not exists Жанры ( 
id serial primary key,
Название_жанра varchar (40) not null,
Идентификатор_исполнителя integer references Исполнители(id)
)

alter table Исполнители add column Идентификатор_жанра integer references Жанры(id);

create table if not exists Жанры_исполнителей ( 
id serial primary key,
Индетификатор_жанра integer references Жанры(id),
Индетификатор_исполнителя integer unique references Исполнители(id)
)

create table if not exists Альбомы_исполнителей (
id serial primary  key,
Индетификатор_альбома integer references Альбом(id),
Индетификатор_исполнителя integer references Исполнители(id)
)

create table if not exists Сборник (
id serial primary key,
Название varchar (40) not null,
Год_выпуска integer not null
)

create table if not exists Сборник_треков (
id serial primary key,
Индетификатор_сборника integer references Сборник(id),
Индетификатор_трека integer references Трек(id)
)

