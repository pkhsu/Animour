DROP TABLE PRODUCT

create table PRODUCT
(
  ID        bigSerial PRIMARY KEY,
  NAME        VARCHAR(50) not null,
  PRICE       integer not null,
  QUANTITY    bigint not null,
  MAKE_DATE         Timestamp without time zone not null,
  EXPIRE       integer,
  SHELVES_DATE    date;
  DESCRIPTION     VARCHAR(2000),
  PHOTO       bytea
) ;

insert into product (NAME, PRICE, QUANTITY, MAKE_DATE, EXPIRE, SHELVES_DATE, DESCRIPTION, classify_id)
values ('0% 零穀 5 種魚–全齡犬 晶亮護毛配方 2.5 磅', 391, 100, '2018-3-15 12:00:00', 365, '2018-4-8', 'bbbbbbbbbbbbbbbbbbbbbbbbb', 1);
insert into product (NAME, PRICE, QUANTITY, MAKE_DATE, EXPIRE, SHELVES_DATE, DESCRIPTION, classify_id)
values ('法國皇家XJ31 超小型幼犬 1.5 公斤', 429, 88, '2018-3-15 12:00:00',180, '2018-3-5', 'ccccccccccccccccccc', 1);
insert into product (NAME, PRICE, QUANTITY, MAKE_DATE, EXPIRE, SHELVES_DATE, DESCRIPTION, classify_id)
values ('法國皇家PRIJ27 小型室內幼犬 1.5 公斤', 462, 76, '2018-3-15 12:00:00',365, '2018-3-3', 'dddddddddddddddddddd', 1);
insert into product (NAME, PRICE, QUANTITY, MAKE_DATE, EXPIRE, SHELVES_DATE, DESCRIPTION, classify_id)
values ('法國皇家PRIA21 小型室內成犬 1.5 公斤', 462, 75, '2018-3-15 12:00:00',150, '2018-3-9', 'eeeeeeeeeeeeeeeee', 1);
insert into product (NAME, PRICE, QUANTITY, MAKE_DATE, EXPIRE, SHELVES_DATE, DESCRIPTION, classify_id)
values ('烘焙客全犬無穀類雞肉 (小顆粒) 1 公斤', 553, 36, '2018-3-15 12:00:00',365, '2018-2-10', 'fffffffffffffffff', 1);
insert into product (NAME, PRICE, QUANTITY, MAKE_DATE, EXPIRE, SHELVES_DATE, DESCRIPTION, classify_id)
values ('法國皇家PRP30 貴賓成犬 1.5 公斤', 481, 62, '2018-3-15 12:00:00',100, '2018-2-15', 'gggggggggggggggg', 1);
insert into product (NAME, PRICE, QUANTITY, MAKE_DATE, EXPIRE, SHELVES_DATE, DESCRIPTION, classify_id)
values ('柏萊富特調全齡犬配方(羊肉+糙米+雞肉) 5 磅', 672, 67, '2018-3-15 12:00:00',90, '2018-3-22', 'hhhhhhhhhhhhhh', 1);
insert into product (NAME, PRICE, QUANTITY, MAKE_DATE, EXPIRE, SHELVES_DATE, DESCRIPTION, classify_id)
values ('愛肯拿農場享宴-挑嘴無穀犬 放養雞肉火雞肉 1.2 公斤', 675, 53, '2018-3-15 12:00:00',180, '2018-4-2', 'iiiiiiiiiiiiii', 1);
insert into product (NAME, PRICE, QUANTITY, MAKE_DATE, EXPIRE, SHELVES_DATE, DESCRIPTION, classify_id)
values ('Natural Balance低敏無穀地瓜鹿肉全犬 4.5 磅', 833, 92, '2018-3-15 12:00:00',150, '2018-2-14', 'jjjjjjjjjj', 1);
insert into product (NAME, PRICE, QUANTITY, MAKE_DATE, EXPIRE, SHELVES_DATE, DESCRIPTION, classify_id)
values ('優格0% 零穀 羊肉＋鮭魚–全齡犬 敏感配方 15 磅', 1488, 83, '2018-3-15 12:00:00',360, '2018-2-25', 'kkkkkkkkkkkk', 1);

select * from product

insert into classify (name) values('寵物伺料')
insert into classify (name) values('寵物用品')
insert into classify (name) values('寵物玩具')
insert into classify (name) values('其它')

select * from classify

select * from orders

select * from product_orders

SELECT id, name, price, quantity, make, expire FROM product order by id desc fetch first 6 rows only
