-- insert query
insert into id_user(email,password,phone,status,active,createdtimestamp,updatedtimestamp) values('kowshikkondapaneni@gmail.com','test','987654321',0,true,now(),now());
-- select query user
select * from id_user;
--insert query user_security
insert into user_security(userid,question,answer,createdtimestamp,updatedtimestamp) values(1,'What is your mothers maiden name?','chava',now(),now());
insert into user_security(userid,question,answer,createdtimestamp,updatedtimestamp) values(1,'What is your birth place?','kanchikacherla',now(),now());
-- select query userSecurity
select * from user_security;
-- insert query for role
insert into role(name,createdtimestamp,updatedtimestamp) values('admin',now(),now());
-- select query for role
select * from role;
-- insert user_role
insert into user_role(userid,roleid,createdtimestamp,updatedtimestamp) values(1,1,now(),now());
-- select query user_role
select * from user_role;
-- insert society
insert into society(name,status,createdtimestamp,updatedtimestamp) values('Tirumala Cyber Residency',0,now(),now());
insert into society(name,status,createdtimestamp,updatedtimestamp) values('Padmavathi Gardens Phase 3',0,now(),now());
-- select query for society
select * from society;
-- insert sciety_user
insert into society_user(userid,societyid,createdtimestamp,updatedtimestamp) values(1,1,now(),now());
-- select socirty_user
select * from society_user;
-- delete from society_user;
-- insert article
insert into article(name,description,createdtimestamp,updatedtimestamp) values('Test','society article',now(),now());
-- select query
select * from article;
-- insert society_article
insert into society_article(societyid,articleid,createdtimestamp,updatedtimestamp) values(1,1,now(),now());
-- select society_article
select * from society_article;
-- insert category
insert into category(name,createdtimestamp,updatedtimestamp) values('Villa',now(),now());
insert into category(name,createdtimestamp,updatedtimestamp) values('Apartment',now(),now());
-- select category
select * from category;
-- insert gated_community
insert into gated_community(categoryid,name,createdtimestamp,updatedtimestamp) values(1,'VasanthCity',now(),now());
-- select gated_community
select * from gated_community;
-- insert home_villa
insert into home_villa(gatedcommunityid,villaname,villadescription,createdtimestamp,updatedtimestamp) values(1,'Plot No: 160','Near Forum mall',now(),now());
-- select home_villa
select * from home_villa;
-- insert villa_delivery
insert into villa_delivery(villaid,name,status,description,approvedby,approvedat,timelimit,createdtimestamp,updatedtimestamp) values(2,'Swiggy',0,'Food delivery approved','kowshik',now(),1,now(),now());
-- select villa_delivery
select * from villa_delivery;
-- insert apartment
insert into apartment(categoryid,name,createdtimestamp,updatedtimestamp) values(2,'Tirumala Cyber Residency',now(),now());
-- select apartment
select * from apartment;
-- insert floor
insert into floor(apartmentid,floornumber,firstname,lastname,contactnumber,createdtimestamp,updatedtimestamp) values(1,1,'Kowshik','Kondapaneni','8919892300',now(),now());
-- select floor
select * from floor;
-- insert home
insert into home(floorid,flatnumber,createdtimestamp,updatedtimestamp) values(1,209,now(),now());
-- select home
select * from home;
-- insert suggestion
insert into suggestion(articleid,suggestion,createdtimestamp,updatedtimestamp) values(1,'Lets do this',now(),now());
-- select suggestion
select * from suggestion;
-- insert member
insert into member(homeid,userid,firstname,lastname,createdtimestamp,updatedtimestamp) values(1,1,'Kowshik','Kondapaneni',now(),now());
-- select member
select * from member;
-- insert poll_result
insert into poll_result(memberid,suggestionid,createdtimestamp,updatedtimestamp) values(1,1,now(),now());
-- select poll_result
select * from poll_result;
