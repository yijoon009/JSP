CREATE TABLE users(
id INT(11) NOT NULL AUTO_INCREMENT
, user_id VARCHAR(20) NOT NULL
, PASSWORD VARCHAR(20) NOT NULL
, user_name VARCHAR(45) NOT NULL
, PRIMARY KEY(id)
, UNIQUE KEY(user_id)
)

#데이터입력
INSERT INTO users(user_id, PASSWORD, user_name) VALUES (?,?,?)

#데이터조회
SELECT * FROM users WHERE user_id = ?