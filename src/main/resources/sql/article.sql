INSERT INTO MEMBER(ACCOUNT,PASSWORD,NAME,NICK,CELL,EMAIL) 
 VALUES ('ViewSonic','123','Alex Wu','Alex','0900-000000','alex@gmail.com');
 
 INSERT INTO CATEGORY(NAME) 
 VALUES ('PET');
 
 INSERT INTO CATEGORY(NAME) 
 VALUES ('SHARE');
 
insert into article (subject,content,post_Time,UPDATE_TIME,MEMBER_ID,CLICK,CATEGORY_ID) values ('aaaaa','aaaaaaaaaaaaaa','1999-01-08 04:05:06','1999-01-08 04:05:06',1,0,1);

insert into comment (content,update_Time,Article_Id,Member_Id) values ('aaa','2018-04-01 00:00:00',1,1);

select * from member;
select * from article;

select article0_.id as id1_3_, article0_.category_id as category7_3_, article0_.click as click2_3_, article0_.content as content3_3_, article0_.member_id as member_i8_3_, article0_.post_time as post_tim4_3_, article0_.subject as subject5_3_, article0_.update_time as update_t6_3_ from article article0_ where article0_.subject like '%a%'