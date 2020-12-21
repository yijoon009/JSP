#we can do it!

CREATE TABLE member(
	id BIGINT NOT NULL AUTO_INCREMENT
	, user_id VARCHAR(50) NOT NULL
	, user_pass VARCHAR(50) NOT NULL
	, user_email VARCHAR(100) NOT NULL
	,user_auth_check CHAR(1) NOT NULL
	,PRIMARY KEY(id)
	,UNIQUE KEY(user_id)
	,UNIQUE KEY(user_email)

)

#데이터 입력
INSERT INTO member(user_id,user_pass,user_email,user_auth_check)
VALUES('test','1234','test@email.com',FALSE)


CREATE TABLE board(
id BIGINT NOT NULL AUTO_INCREMENT,
title VARCHAR(200) NOT NULL,
content VARCHAR(4000) NOT NULL,
board_pass VARCHAR(20) NOT NULL,
hit INT(10) UNSIGNED NOT NULL DEFAULT '0',
create_id VARCHAR(50) NOT NULL,
create_date DATETIME DEFAULT NOW(),
board_type CHAR(1) NOT NULL,
PRIMARY KEY(id)
)

INSERT INTO board(title, content, boardPass, createId,)

SELECT id, title, hit, create_id, create_date FROM board
