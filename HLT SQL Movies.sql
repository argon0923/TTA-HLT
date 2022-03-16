show databases;
create database movies;
use movies;
create table top_movies2021(
Top_5_movies_2021 varchar(100) not null,
Studio varchar(25) not null,
Genre varchar(25) not null,
Budget int not null,
Box_office int not null,
primary key (Top_5_movies_2021),
unique (Top_5_movies_2021)
);
