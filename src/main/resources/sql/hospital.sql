drop table Hospital;

create table 
Hospital 
(Id bigserial  primary key,   
 ENGLISHNAME varchar(10), 
 Name varchar(20), 
 Tel varchar(12), 
 Address varchar(50)
 postcode varchar(5)
 ); 


insert into Hospital  ( Englishname, Name , Tel , Address, POSTCODE  ) 
values ('aaaHospital', '測試醫院中文', '09-10100100', 'tepei','10000' );

insert into Hospital  ( Englishname, Name , Tel , Address, POSTCODE  ) 
values ('aaaHospital2', '第二家醫院', '09-10100100', 'tepei','10000' );

insert into Hospital  ( Englishname, Name , Tel , Address, POSTCODE  ) 
values ('aaaHospital3', '第三家醫院', '09-10100100', 'tepei','10000' );

insert into Hospital  ( Englishname, Name , Tel , Address, POSTCODE  ) 
values ('aaaHospital4', '第四家醫院', '09-10100100', 'tepei','10000' );

insert into Hospital  ( Englishname, Name , Tel , Address, POSTCODE  ) 
values ('aaaHospital5', '第五家醫院', '09-10100100', 'tepei','10000' );

insert into Hospital  ( Englishname, Name , Tel , Address, POSTCODE  ) 
values ('aaaHospital6', '第六家醫院', '09-10100100', 'tepei','10000' );

insert into Hospital  ( Englishname, Name , Tel , Address, POSTCODE  ) 
values ('aaaHospital7', '第七家醫院', '09-10100100', 'tepei','10000' );

insert into Hospital  ( Englishname, Name , Tel , Address, POSTCODE  ) 
values ('aaaHospital8', '第八家醫院', '09-10100100', 'tepei','10000' );

insert into Hospital  ( Englishname, Name , Tel , Address, POSTCODE  ) 
values ('aaaHospital9', '第九家醫院', '09-10100100', 'tepei','10000' );

insert into Hospital  ( Englishname, Name , Tel , Address, POSTCODE  ) 
values ('aaaHospital10', '第十家醫院', '09-10100100', 'tepei','10000' );

/*insert into Hospital ( Englishname, Name , Tel , Address, POSTCODE  ) values ('aurora_animal',  'aurora-animal',  '02-27848211',  'Daan','10000' );  
insert into Hospital ( Englishname, Name , Tel , Address, POSTCODE  ) values ('drpet',  'drpet',  '02-27070877',  'Daan','10000' );  
insert into Hospital ( Englishname, Name , Tel , Address, POSTCODE  ) values ('chengyi',  'chengyi',  '02-27334341',  'Daan','10000' );  
*/

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





select * from Hospital;