INSERT INTO gs_an_table(name,email,naiyou,indate)
VALUES('井出和広','test@test.jp','ジーズアカデミー5',sysdate());

INSERT INTO gs_an_table(name,email,naiyou,indate)
VALUES('徳川家康','test@test2.jp','ジーズアカデミー3',sysdate());

INSERT INTO gs_an_table(name,email,naiyou,indate)
VALUES('徳川家康','test@test2.jp','ジーズアカデミー4',sysdate());

SELECT * FROM gs_an_table WHERE
 name = '井出和広' and
 indate >'20180922'

SELECT * FROM gs_an_table WHERE name LIKE '%徳%'
SELECT * FROM gs_an_table ORDER BY indate DESC LIMIT 3

