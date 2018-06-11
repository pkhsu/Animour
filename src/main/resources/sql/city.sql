DROP TABLE IF EXISTS city CASCADE;

create table city(
	id integer PRIMARY KEY,
    name varchar(50),
    animal_count bigint
);

INSERT INTO CITY (id, name) VALUES 
(1, '宜蘭縣'),(2, '基隆市'),(3, '台北市'),(4, '新北市'),(5, '桃園市'),(6, '新竹市'),
(7, '新竹縣'),(8, '苗栗縣'),(9, '台中市'),(10, '彰化縣'),(11, '南投縣'),(12, '雲林縣'),
(13, '嘉義市'),(14, '嘉義縣'),(15, '台南市'),(16, '高雄市'),(17, '屏東縣'),(18, '台東縣'),
(19, '花蓮縣'),(20, '澎湖縣'),(21, '金門縣'),(22, '連江縣')

select * from city