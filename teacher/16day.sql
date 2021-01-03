CREATE TABLE join_user(
	seq BIGINT AUTO_INCREMENT,
	user_id VARCHAR(30) NOT NULL,
	user_pw VARCHAR(30) NOT NULL,
	PRIMARY KEY(seq)s
)

# join_user 테이블에 데이터를 입력하는 sql을 1개 만들어주세요.
INSERT INTO join_user(user_id, user_pw) VALUES('korea', '1234')






