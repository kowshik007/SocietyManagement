drop table if exists id_user cascade;
create table id_user(id serial primary key,email varchar(320),password varchar(72),status smallint,active boolean,phone varchar(16),createdTimestamp timestamp with time zone,updatedTimestamp timestamp with time zone);
drop table if exists user_security;
create table user_security(id serial primary key,userId int references id_user(id),question varchar(255),answer varchar(255),createdTimestamp timestamp with time zone,updatedTimestamp timestamp with time zone);
drop table if exists role cascade;
create table role(id serial primary key,name varchar(255),createdTimestamp timestamp with time zone,updatedTimestamp timestamp with time zone);
drop table if exists user_role cascade;
create table user_role(id serial primary key,userId int references id_user(id),roleId int references role(id),createdTimestamp timestamp with time zone,updatedTimestamp timestamp with time zone);
drop table if exists society cascade;
create table society(id serial primary key,name varchar(255),status smallint,createdTimestamp timestamp with time zone,updatedTimestamp timestamp with time zone);
drop table if exists society_user;
create table society_user(id serial primary key,userId int references id_user(id),societyId int references society(id),createdTimestamp timestamp with time zone,updatedTimestamp timestamp with time zone);
drop table if exists article cascade;
create table article(id serial primary key,name varchar(255),description text,createdTimestamp timestamp with time zone,updatedTimestamp timestamp with time zone);
drop table if exists society_article;
create table society_article(id serial primary key,articleId int references article(id),societyId int references society(id),createdTimestamp timestamp with time zone,updatedTimestamp timestamp with time zone);
drop table if exists suggestion cascade;
create table suggestion(id serial primary key,articleId int references article(id),suggestion varchar(255),createdTimestamp timestamp with time zone,updatedTimestamp timestamp with time zone);
drop table if exists category cascade;
create table category(id serial primary key,name varchar(255),createdTimestamp timestamp with time zone,updatedTimestamp timestamp with time zone);
drop table if exists society_category;
create table society_category(id serial primary key,societyId int references society(id),categoryId int references category(id),createdTimestamp timestamp with time zone,updatedTimestamp timestamp with time zone);
drop table if exists group_of_apartments cascade;
create table group_of_apartments(id serial primary key,name varchar(255),createdTimestamp timestamp with time zone,updatedTimestamp timestamp with time zone);
drop table if exists apartment cascade;
create table apartment(id serial primary key,categoryId int references category(id),name varchar(255),createdTimestamp timestamp with time zone,updatedTimestamp timestamp with time zone);
drop table if exists groupApartments;
create table groupApartments(id serial primary key,apartmentId int references apartment(id),group_of_apartments_id int references group_of_apartments(id),createdTimestamp timestamp with time zone,updatedTimestamp timestamp with time zone);
drop table if exists floor cascade;
create table floor(id serial primary key,apartmentId int references apartment(id),floorNumber int,firstName varchar(50),lastName varchar(50),contactNumber varchar(16),createdTimestamp timestamp with time zone,updatedTimestamp timestamp with time zone);
drop table if exists home cascade;
create table home(id serial primary key,floorId int references floor(id),flatNumber int,createdTimestamp timestamp with time zone,updatedTimestamp timestamp with time zone);
drop table if exists member cascade;
create table member(id serial primary key,homeId int references home(id),userId int references id_user(id),firstName varchar(50),lastName varchar(50),createdTimestamp timestamp with time zone,updatedTimestamp timestamp with time zone);
drop table if exists poll_result;
create table poll_result(id serial primary key,memberId int references member(id),suggestionId int references suggestion(id),createdTimestamp timestamp with time zone,updatedTimestamp timestamp with time zone);
drop table if exists delivery;
create table delivery(id serial primary key,homeId int references home(id),name varchar(50),status smallint,description varchar(500),approvedBy varchar(50),approvedAt timestamp with time zone,timelimit integer,createdTimestamp timestamp with time zone,updatedTimestamp timestamp with time zone);
drop table if exists gated_community cascade;
create table gated_community(id serial primary key,categoryId int references category(id),name varchar(255),createdTimestamp timestamp with time zone,updatedTimestamp timestamp with time zone);
drop table if exists home_villa cascade;
create table home_villa(id serial primary key,gatedCommunityId int references gated_community(id),villaName varchar(25),villaDescription varchar(255),createdTimestamp timestamp with time zone,updatedTimestamp timestamp with time zone);
drop table if exists villa_member cascade;
create table villa_member(id serial primary key,villaId int references home_villa(id),userId int references id_user(id),firstName varchar(50),lastName varchar(50),createdTimestamp timestamp with time zone,updatedTimestamp timestamp with time zone);
drop table if exists villa_delivery;
create table villa_delivery(id serial primary key,villaId int references home_villa(id),name varchar(50),status smallint,description varchar(500),approvedBy varchar(50),approvedAt timestamp with time zone,timelimit integer,createdTimestamp timestamp with time zone,updatedTimestamp timestamp with time zone);