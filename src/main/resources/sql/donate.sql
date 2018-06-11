drop table donate;

create table donate(
	id 		bigint primary key not null,
	name	character varying(50) not null,
	price	integer not null,
	email	character varying(50) not null
);


insert into donate (id, name, price, email)
values (1, 'Serena van der Woodsen', 30000, 'serena1203@gmail.com');

insert into donate (id, name, price, email)
values (2, 'Blair Waldorf', 10000, 'bw1104@gmail.com');

insert into donate (id, name, price, email)
values (3, 'Daniel Humphrey', 100, 'danielh0517@gmail.com');

insert into donate (id, name, price, email)
values (4, 'Nate Archibald', 20000, 'nathaniel0304@gmail.com');

insert into donate (id, name, price, email)
values (5, 'Chuck Bass', 10000, 'chuckbass1108@gmail.com');

insert into donate (id, name, price, email)
values (6, 'Jennifer Humphrey', 2000, 'jenny5438@gmail.com');

insert into donate (id, name, price, email)
values (7, 'Lilian Vander Woodsen', 50000, 'lilvw@gmail.com');

insert into donate (id, name, price, email)
values (8, 'Rufus Humphrey', 3000, 'rufusrock@gmail.com');

insert into donate (id, name, price, email)
values (9, 'Vanessa Abrams', 50, 'vanessa1220@gmail.com');

insert into donate (id, name, price, email)
values (10, 'Georgina Sparks', 5000, 'georgina1027@gmail.com');

SELECT id, name, price FROM donate order by id desc fetch first 6 rows only
