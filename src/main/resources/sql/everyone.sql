/*1 Member*/
 INSERT INTO MEMBER(ACCOUNT,PASSWORD,NAME,Nickname,CELL,EMAIL,Address) 
 VALUES ('ViewSonic','123','Alex Wu','Alex','0900-000000','alex@gmail.com','台北市大安區');
 INSERT INTO MEMBER(ACCOUNT,PASSWORD,NAME,Nickname,CELL,EMAIL,Address) 
 VALUES ('BenQ','123','Annie Wu','Annie','0900-000000','annie@gmail.com','台北市中正區');
 INSERT INTO MEMBER(ACCOUNT,PASSWORD,NAME,Nickname,CELL,EMAIL,Address) 
 VALUES ('Sony','123','Sony Su','Apple','0900-000000','apple@gmail.com','台北市萬華區');
 INSERT INTO MEMBERa(ACCOUNT,PASSWORD,NAME) 
  VALUES ('Apple','123','Apple Wu','Apple','0900-000000','apple@gmail.com','台北市內湖區');
 INSERT INTO MEMBER(ACCOUNT,PASSWORD,NAME) 
 VALUES ('Admin','123','管理員');

 
 
/*2 Hospital*/
insert into Hospital ( Englishname, Name , Tel , Address, POSTCODE  ) values ('AAAAAAAA',  'A8',  '01-000',  '路上','10000' );  
insert into Hospital ( Englishname, Name , Tel , Address, POSTCODE  ) values ('aurora_animal',  '極光動物醫院',  '02-27848211',  '台北市大安區建國南路二段31號','10000' );  
insert into Hospital ( Englishname, Name , Tel , Address, POSTCODE  ) values ('drpet',  '敦品動物醫院',  '02-27070877',  '台北市大安區大安路一段205-1號','10000' );  
insert into Hospital ( Englishname, Name , Tel , Address, POSTCODE  ) values ('chengyi',  '澄毅動物醫院',  '02-27334341',  '台北市大安區安和路二段171巷13號','10000' );  
insert into Hospital ( Englishname, Name , Tel , Address, POSTCODE  ) values ('BisousAH',  '磨鼻子動物醫院',  '03-4535740',  '桃園市中壢區延平路20號','10000' );  
insert into Hospital ( Englishname, Name , Tel , Address, POSTCODE  ) values ('ChampionSAL',  '呈品動物醫院',  '03-2806070',  '桃園市中壢區中豐路359號','10000' );  
insert into Hospital ( Englishname, Name , Tel , Address, POSTCODE  ) values ('petfamily007',  '圓霖動物醫院-中山',  '03-4653377',  ' 桃園縣中壢市中山東路二段16號','10000' );  
insert into Hospital ( Englishname, Name , Tel , Address, POSTCODE  ) values ('noahvet',  '諾亞動物醫院',  '03-4264015',  ' 桃園縣中壢市中山路36號','10000' );  
insert into Hospital ( Englishname, Name , Tel , Address, POSTCODE  ) values ('topvet',  '中壢太樸動物醫院',  '03-4569911',  ' 桃園縣中壢市中北路51號','10000' );  
insert into Hospital ( Englishname, Name , Tel , Address, POSTCODE  ) values ('long-life-vet',  '恆生動物醫院',  '03-4251893',  ' 桃園縣中壢市中美路一段13號','10000' );  
insert into Hospital ( Englishname, Name , Tel , Address, POSTCODE  ) values ('WellvetAnimalHospitalital',  '台大良一動物醫院',  '02-24263021',  '基隆市信義區義九路2號','10000' );  

/*3 Animal */
INSERT INTO CITY (id, name) VALUES 
(1, '宜蘭縣'),(2, '基隆市'),(3, '台北市'),(4, '新北市'),(5, '桃園市'),(6, '新竹市'),
(7, '新竹縣'),(8, '苗栗縣'),(9, '台中市'),(10, '彰化縣'),(11, '南投縣'),(12, '雲林縣'),
(13, '嘉義市'),(14, '嘉義縣'),(15, '台南市'),(16, '高雄市'),(17, '屏東縣'),(18, '台東縣'),
(19, '花蓮縣'),(20, '澎湖縣'),(21, '金門縣'),(22, '連江縣');
insert into animal(status, name, specie, color, found, upload, city_id, district, member_id) values  ('開放認養', 'BlackDog', '狗', 'BLACK', '2017-01-01', '2018-03-10 12:00:00', '1', '北投區', 1);
insert into animal(status, name, specie, color, found, upload, city_id, district, member_id) values  ('開放認養', 'YellowDog', '狗', 'YELLOW', '2017-02-01', '2018-03-10 13:00:00', '1', '左營區', 1);
insert into animal(status, name, specie, color, found, upload, city_id, district, member_id) values  ('開放認養', 'WhiteDog', '狗', 'WHITE', '2017-03-01', '2018-03-10 14:00:00', '1', '大安區', 1);
insert into animal(status, name, specie, color, found, upload, city_id, district, member_id) values  ('開放認養', 'BrownDog', '狗', 'BROWN', '2018-04-01', '2018-03-10 15:00:00', '3', '東區', 1);
insert into animal(status, name, specie, color, found, upload, city_id, district, member_id) values  ('開放認養', 'BlackCat', '貓', 'BLACK', '2017-05-01', '2018-03-10 16:00:00', '8', '左營區', 1);
insert into animal(status, name, specie, color, found, upload, city_id, district, member_id) values  ('開放認養', 'BlueCat', '貓', 'BLUE', '2017-06-01', '2018-03-10 17:00:00', '8', '北投區',2 );
insert into animal(status, name, specie, color, found, upload, city_id, district, member_id) values  ('開放認養', 'OrangeCat', '貓', 'ORANGE', '2017-07-01', '2018-03-10 18:00:00', '1', '左營區',2);
insert into animal(status, name, specie, color, found, upload, city_id, district, member_id) values  ('開放認養', 'WhiteRabbit', '兔', 'BLACK', '2017-08-01', '2018-03-10 19:00:00', '15', '北投區',2);
insert into animal(status, name, specie, color, found, upload, city_id, district, member_id) values  ('開放認養', 'GreyRabbit', '兔', 'BLACK', '2017-09-01', '2018-03-10 20:00:00', '1', '西區',2);
insert into animal(status, name, specie, color, found, upload, city_id, district, member_id) values  ('開放認養', 'YellowBird', '鳥', 'BLACK', '2017-10-01', '2018-03-10 21:00:00', '3', '西區',2);

/*4 article */
INSERT INTO CATEGORY(NAME) 
VALUES ('PET');
 
INSERT INTO CATEGORY(NAME) 
VALUES ('SHARE');
 
insert into article (subject,content,post_Time,UPDATE_TIME,MEMBER_ID,CLICK,CATEGORY_ID) values ('Tips for Living with a Cat in a Apartment','Cats Can be Good Roommates
Having a cat living inside the home is known to produce a number of positive health benefits for people. Pets – especially cats - are increasingly being allowed in many rental units. Even dogs - especially small ones – are finding their way into apartments in both urban and suburban settings. Indoor living also has quite a few advantages for the cats: they are at much less risk of being hit by cars, getting into fights, getting lost, becoming pregnant or impregnating other cats, catching contagious diseases and becoming infested with external and internal parasites. Cats are among the best-suited of all companion animals to living their lives entirely inside of an apartment or other small dwelling. However, before bringing a cat into a home, rented or otherwise, prospective owners should consider whether or not this arrangement is going to be right for them, and for their cats, over the long haul.','1999-01-08 04:05:06','1999-01-08 04:05:06',1,0,1);

insert into article (subject,content,post_Time,UPDATE_TIME,MEMBER_ID,CLICK,CATEGORY_ID) values ('Living with Cats in Apartments: How to Make It Work in a Tiny Space','I’m almost living the dream. Well, my dream. My tiny dream. While some people dream about mansions or penthouses, I dream of wee little homes on wheels with snug lofts and crannies. I don’t quite have my wheeled house of dreams yet, but in moving to Japan I got pretty darn close. My apartment is the smallest I’ve ever inhabited, and I LOVE IT. But living with cats in apartments does have its challenges:','2015-01-07 00:00:00','2015-01-07 00:00:00',1,0,1);


insert into comment (content,update_Time,Article_Id,Member_Id) values ('nice!','2018-04-01 00:00:00',1,1);
/*5 donate */
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


/*6 hotel*/
INSERT INTO hotel ( owner, type, checkIn, total,specie,dog_Name) VALUES 
('lun', 'small', '2018-03-03', 2,'poodle','lili'),
('lun2', 'small', '2020-07-03', 3,'poodle','cucu'),
('lun3', 'small', '2020-07-03', 2,'poodle','阿狗'),
('lun4', 'big', '2020-07-03', 4,'poodle','阿狗'),
('lun5', 'big', '2021-07-03', 5,'poodle','阿狗'),
('lun6', 'big', '2021-07-03', 5,'poodle','小會');


/*UPDATE hotel SET  owner='lunlun', type='small', checkIn='1991-10-03', total=4,species='poodel2',dog_Name='hichu' WHERE Id = 1*/

/*7 news*/
INSERT INTO news (subject, content, publish_Time, publish_Time_End, create_User, create_Time )
 values ('活動標題1', '活動內文1',  '2018-01-01', '2018-06-01', 'admin', '2018-01-01 08:00:00');

INSERT INTO news (subject, content, publish_Time, publish_Time_End, create_User, create_Time )
 values ('活動標題2', '活動內文2',  '2018-01-01', '2018-06-01', 'admin', '2018-01-01 08:00:00');


INSERT INTO news (subject, content, publish_Time, publish_Time_End, create_User, create_Time )
 values ('活動標題3', '活動內文3',  '2018-01-01', '2018-06-01', 'admin', '2018-01-01 08:00:00');


INSERT INTO news (subject, content, publish_Time, publish_Time_End, create_User, create_Time )
 values ('活動標題4', '活動內文4',  '2018-01-01', '2018-06-01', 'admin', '2018-01-01 08:00:00');


INSERT INTO news (subject, content, publish_Time, publish_Time_End, create_User, create_Time )
 values ('活動標題5', '活動內文5',  '2018-01-01', '2018-06-01', 'admin', '2018-01-01 08:00:00');


INSERT INTO news (subject, content, publish_Time, publish_Time_End, create_User, create_Time )
 values ('活動標題6', '活動內文6',  '2018-01-01', '2018-06-01', 'admin', '2018-01-01 08:00:00');


INSERT INTO news (subject, content, publish_Time, publish_Time_End, create_User, create_Time )
 values ('活動標題7', '活動內文7',  '2018-01-01', '2018-06-01', 'admin', '2018-01-01 08:00:00');


INSERT INTO news (subject, content, publish_Time, publish_Time_End, create_User, create_Time )
 values ('活動標題8', '活動內文8',  '2018-01-01', '2018-06-01', 'admin', '2018-01-01 08:00:00');


INSERT INTO news (subject, content, publish_Time, publish_Time_End, create_User, create_Time )
 values ('活動標題9', '活動內文9',  '2018-01-01', '2018-06-01', 'admin', '2018-01-01 08:00:00');


INSERT INTO news (subject, content, publish_Time, publish_Time_End, create_User, create_Time )
 values ('活動標題10', '活動內文10',  '2018-01-01', '2018-06-01', 'admin', '2018-01-01 08:00:00');
 
 
/*8 product*/
insert into classify (name) values('寵物伺料');
insert into classify (name) values('寵物用品');
insert into classify (name) values('寵物玩具');
insert into classify (name) values('其它');

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

