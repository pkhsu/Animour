Use testdb;

create table 
Member  
(Id bigserial  primary key,  
 ACCOUNT varchar(20),
 PASSWORD varchar(15),
 Name varchar(20), 
 Nickname varchar(12),
 Cell varchar(12), 
 EMAIL varchar(30) 
 ); 
 
 
 INSERT INTO MEMBER(ACCOUNT,PASSWORD,NAME,Nickname,CELL,EMAIL,Address) 
 VALUES ('ViewSonic','123','Alex Wu','Alex','0900-000000','alex@gmail.com','台北市大安區');
 INSERT INTO MEMBER(ACCOUNT,PASSWORD,NAME,Nickname,CELL,EMAIL,Address) 
 VALUES ('BenQ','123','Annie Wu','Annie','0900-000000','annie@gmail.com','台北市中正區');
 INSERT INTO MEMBER(ACCOUNT,PASSWORD,NAME,Nickname,CELL,EMAIL,Address) 
 VALUES ('Sony','123','Sony Su','Apple','0900-000000','apple@gmail.com','台北市萬華區');
 INSERT INTO MEMBER(ACCOUNT,PASSWORD,NAME) 
 VALUES ('Apple','123','Apple Wu','Apple','0900-000000','apple@gmail.com','台北市內湖區');
 INSERT INTO MEMBER(ACCOUNT,PASSWORD,NAME) 
 VALUES ('Admin','123','管理員');