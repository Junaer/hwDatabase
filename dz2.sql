create table if not exists ����������� (
id serial primary key,
��������� varchar(40) not null unique,
������ varchar(40) not null
);

create table if not exists ������ (
id serial primary key,
����� varchar (100) not null,
���_������� integer not null,
�������� varchar (50) not null
);

create table if not exists ���� (
id serial primary key,
�������� varchar (50) not null,
������������ integer not null,
�������������_������� integer references ������(id)
);

create table if not exists ����� ( 
id serial primary key,
��������_����� varchar (40) not null,
�������������_����������� integer references �����������(id)
)

alter table ����������� add column �������������_����� integer references �����(id);

create table if not exists �����_������������ ( 
id serial primary key,
�������������_����� integer references �����(id),
�������������_����������� integer unique references �����������(id)
)

create table if not exists �������_������������ (
id serial primary  key,
�������������_������� integer references ������(id),
�������������_����������� integer references �����������(id)
)

create table if not exists ������� (
id serial primary key,
�������� varchar (40) not null,
���_������� integer not null
)

create table if not exists �������_������ (
id serial primary key,
�������������_�������� integer references �������(id),
�������������_����� integer references ����(id)
)


