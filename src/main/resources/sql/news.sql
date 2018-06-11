DROP TABLE IF EXISTS news CASCADE;
create table news(
subject_Id bigserial primary key,
subject varchar(200),
event_Date DATE,
address text,
content text,
event_Time Timestamp,
publish_Date DATE,
publish_Expire DATE,
create_User varchar(50),
create_Time Timestamp,
update_User varchar(50),
update_Time Timestamp,
ticket_Price INTEGER,
ticket_Quantity INTEGER,
image text,
isDel char(5),
isOn char(5)
);


INSERT INTO news (
subject,
event_Date,
address,
content,
event_Time,
publish_Date,
publish_Expire,
create_User,
create_Time,
ticket_Price,
ticket_Quantity) values
 (
'台北寵物用品博覽會',
'2018/8/31',
'台北世貿三館(110台北市信義區松壽路6號)',
'匯集全台各大寵物用品廠商，提供最新寵物用品、飼料零食、保健營養品、服飾配件、美容清潔、住宿醫療等週邊服務。本展歡迎所有寵物愛好者攜帶寵物一同入場參觀！除了提供年度最優惠的商品促銷外，更規畫一系列與愛寵同歡的趣味活動，讓飼主與寵物能玩得開心、滿載而歸。除了讓各類參展商展示產品外，也是與業界合作交流、開發商機的管道。歡迎寵物相關業者預約洽談、換證入場。',
'2018-09-03 08:00:00',
'2018-01-01',
'2018-09-03',
'Admin',
'2018-01-01 08:00:00',
'200',
'300'
);

INSERT INTO news (
subject,
event_Date,
address,
content,
event_Time,
publish_Date,
publish_Expire,
create_User,
create_Time,
ticket_Price,
ticket_Quantity) values
 (
'《狗狗的餐桌日常》新書分享會',
'2018/9/3',
'台北市士林區忠誠路二段55號4樓​ (紀伊國屋書店 台北天母店 (大葉高島屋4F)​)',
'你也想親手幫狗狗做出美味的鮮食料理嗎？跑市場寵物店、Paw Kitchen寵物鮮食的負責人-- 陳彥姍，將投注於寵物鮮食料理上的熱情與經驗，集結成《狗狗的餐桌日常》與大家分享，讓主人可以從每天的飲食輕鬆把關狗的健康與營養，想為心愛的毛小孩準備健康食物，那就千萬不要錯過分享會啦！
',
'2018-09-03 08:00:00',
'2018-01-01',
'2018-09-03',
'Admin',
'2018-01-01 08:00:00',
'0',
'200'
);

INSERT INTO news (
subject,
event_Date,
address,
content,
event_Time,
publish_Date,
publish_Expire,
create_User,
create_Time,
ticket_Price,
ticket_Quantity) values
(
'「集盒」2018城市貓貓 插畫展',
'2018/1/28',
'高雄市前鎮區復興三路五號 (IKEA對面)',
'"貓奴們「集盒」! 城市貓貓插畫展

《2018城市貓貓 插畫展》1月28日起在高雄「集盒•Kubic」開展，靈動的貓貓插畫系列，每每展出皆獲得觀者共鳴！

創作者李允榕將「心情日常」轉為創作靈感，透過插畫抒發心情與記錄城市生活。她將貓擬人化為都市人，現場展出的七十幅貓貓作品細膩靈動，反應出人生體悟，加上些許天馬行空的想像，令觀者會心一笑。創作者並以紙板搭建一座「貓樂園」象徵城市空間，並融入亞洲新灣區意象，讓貓咪成為一隻隻漫遊於高雄的城市觀察者，從貓的角度觀察一座城市的轉變，以插畫探索環境、城市及空間的關係。

展期從1月28日起至3月25日，免費參觀，歡迎貓迷們一起來探索。"',
'2018-09-03 08:00:00',
'2018-01-01',
'2018-09-03',
'Admin',
'2018-01-01 08:00:00',
'200',
'600'
);

INSERT INTO news (
subject,
event_Date,
address,
content,
event_Time,
publish_Date,
publish_Expire,
create_User,
create_Time,
ticket_Price,
ticket_Quantity) values
(
'高齡犬居家照護講座',
'2018/11/19',
'台北市大同區迪化街一段14巷2號 (元氣樂活坊 / 捷運北門站3號出口，沿塔城街步行5~6分鐘)',
'當您的狗兒年紀超過7歲，便已經踏入我們所稱的高齡犬階段。 或許您可能會覺得他們變得與年輕時期不同的個性又與我們生活緊密相連，但其實他們的活動力、生理機能、飲食內容、遊戲方式、醫療追蹤、生活互動等在不同年齡階段的需求各不相同，我們如何可以從細小的地方觀察狗兒的變化及增加心智刺激來調整照護他們高齡生活的方式呢 原本他尿尿都在固定的地點，但怎麼突然開始亂上廁所? 為什麼突然不想讓我摸他? 分離焦慮症變得愈來愈嚴重....... 這些高齡犬可能會遇到的行為問題， 我們應該了解如何去平衡之前可以而現在卻不行的狀況，並同時幫助狗兒老年生活開心。 講座中Molly老師將與毛爸媽們分享該如何調整心情來面對狗兒老化的種種憂心狀況，以及除了陪伴之外平時該如何照護高齡犬? 運用居家照護按摩及運動遊戲來豐富高齡犬的生活!',
'2018-09-03 08:00:00',
'2018-01-01',
'2018-09-03',
'Admin',
'2018-01-01 08:00:00',
'100',
'300'
);

INSERT INTO news (
subject,
event_Date,
address,
content,
event_Time,
publish_Date,
publish_Expire,
create_User,
create_Time,
ticket_Price,
ticket_Quantity) values
(
'高雄寵物用品博覽會',
'2018/6/1',
'高雄國際會議中心(803高雄市鹽埕區中正四路274號)',
'匯集全台各大寵物用品廠商，提供最新寵物用品、飼料零食、保健營養品、服飾配件、美容清潔、住宿醫療等週邊服務。本展歡迎所有寵物愛好者攜帶寵物一同入場參觀！除了提供年度最優惠的商品促銷外，更規畫一系列與愛寵同歡的趣味活動，讓飼主與寵物能玩得開心、滿載而歸。除了讓各類參展商展示產品外，也是與業界合作交流、開發商機的管道。歡迎寵物相關業者預約洽談、換證入場。',
'2018-09-03 08:00:00',
'2018-01-01',
'2018-09-03',
'Admin',
'2018-01-01 08:00:00',
'160',
'400'
);



INSERT INTO news (
subject,
event_Date,
address,
content,
event_Time,
publish_Date,
publish_Expire,
create_User,
create_Time,
ticket_Price,
ticket_Quantity) values
(
'2018 展昭台北寵物用品展',
'2018/7/6',
'台北南港展覽館(11568台北市南港區經貿二路1號)',
'全台最大寵物展策展團隊！超過20年寵物展主辦經驗，擁有專屬設計、資訊之整合行銷團隊。一次掌握北中南市場趨勢！首創北中南巡迴展出，整合全台資源，為您規劃年度行銷策略，直指台灣寵物產業核心。20萬毛家長口碑推薦！業界最具口碑之寵物用品展，全台唯一指標性寵物展。邀您一起，與超過500個國內外指標品牌比肩作戰，共享百億「毛」商機！',
'2018-09-03 08:00:00',
'2018-01-01',
'2018-09-03',
'Admin',
'2018-01-01 08:00:00',
'200',
'300'
);

INSERT INTO news (
subject,
event_Date,
address,
content,
event_Time,
publish_Date,
publish_Expire,
create_User,
create_Time,
ticket_Price,
ticket_Quantity) values
(
'高雄巨蛋寵物用品展',
'2018/7/20',
'高雄巨蛋（高雄市左營區博愛二路757號）',
'7月20日（五）至 7月23日（一）即將在【高雄巨蛋】盛大登場！優質寵物商品超值大促銷，飼料、玩具、保健用品、服飾、美容、清潔用品一應俱全！廠商新品全都幫毛小孩準備好囉，廠商銅板商品更挑戰市場最低價，好康優惠絕對讓你搶不完！還有好玩的寵物嘉年華，專屬寵物寶貝的大操場，讓毛小孩有得逛、有得吃、更有得玩，快揪親朋好友一起來嗨翻高雄寵物展吧！',
'2018-09-03 08:00:00',
'2018-01-01',
'2018-09-03',
'Admin',
'2018-01-01 08:00:00',
'120',
'600'
);

INSERT INTO news (
subject,
event_Date,
address,
content,
event_Time,
publish_Date,
publish_Expire,
create_User,
create_Time,
ticket_Price,
ticket_Quantity) values
(
'台中寵物用品展',
'2018/5/18',
'大台中國際會展中心（台中市烏日區高鐵五路161號）',
'匯集全台各大寵物用品廠商，提供最新寵物用品、飼料零食、保健營養品、服飾配件、美容清潔、住宿醫療等週邊服務。本展歡迎所有寵物愛好者攜帶寵物一同入場參觀！除了提供年度最優惠的商品促銷外，更規畫一系列與愛寵同歡的趣味活動，讓飼主與寵物能玩得開心、滿載而歸。除了讓各類參展商展示產品外，也是與業界合作交流、開發商機的管道。歡迎寵物相關業者預約洽談、換證入場。',
'2018-09-03 08:00:00',
'2018-01-01',
'2018-09-03',
'Admin',
'2018-01-01 08:00:00',
'100',
'700'
);

INSERT INTO news (
subject,
event_Date,
address,
content,
event_Time,
publish_Date,
publish_Expire,
create_User,
create_Time,
ticket_Price,
ticket_Quantity) values
(
'寵物家族大集合',
'2018/7/7',
'台北南港展覽館(11568台北市南港區經貿二路1號)',
'寵物家族特別活動：2018台北寵物用品展，特別針對寵物家族舉辦好康展場活動！凡寵物家族至寵物展現場舉辦家聚，即有機會獲得貓狗漢方養生禮盒20盒！快跟著寵小汪與寵小喵瞧瞧活動內容吧！',
'2018-09-03 08:00:00',
'2018-01-01',
'2018-09-03',
'Admin',
'2018-01-01 08:00:00',
'200',
'1500'
);

INSERT INTO news (
subject,
event_Date,
address,
content,
event_Time,
publish_Date,
publish_Expire,
create_User,
create_Time,
ticket_Price,
ticket_Quantity) values (
'夏季寵物盛會',
'2018/7/8',
'台北南港展覽館(11568台北市南港區經貿二路1號)',
'炎炎夏日，快帶家中寶貝來展場吹冷氣囉！不僅省電費還能搶超值優惠寵物商品，還有最萌寵物家族日、專屬毛寶貝的障礙趣味競賽，夏季唯一寵物嘉年華盛會',
'2018-09-03 08:00:00',
'2018-01-01',
'2018-09-03',
'Admin',
'2018-01-01 08:00:00',
'200',
'1500'
);