생성해라 뭐를? 이름은?(
명칭 데이터타입 옵션들,
명칭 데이터타입,
명칭 데이터타입,
)

CREATE TABLE prac(
NAME VARCHAR(10)
, AGE INT(4) NOT NULL
)


CREATE TABLE korea(
NAME VARCHAR(10),
AGE INT(5) NOT NULL
)

구조화되어있다.
명령 뭐를? 이름

--파일 전체삭제. (xlsx 파일을 삭제)
DROP TABLE korea;




변경하겠다!
ALTER TABLE korea;

korea 테이블을 조회해주세요.
조회하겠다!

korea 테이블에 값을 입력하겠다.
입력하겠다. 테이블 korea

korea 테이블에 값을 삭제하겠다.
삭제하겠다. 


DATABASE
표준
SQL

ORacle, Mssql, mysql, mariadb, db2, tibero

CREATE TABLE MEMBER(
	USER_ID VARCHAR(20)
	, USER_PASS VARCHAR(20)
	, USER_NAME VARCHAR(30)
	, USER_AGE INT(3)
)


--데이터 입력
--: 변화하지 않는 부분(SQL에서 제공되는 부분은 대문자)
--: 변화하는 부분(개발자가 지정하는 곳은 소문자)

INSERT INTO member(user_id, user_pass, user_name, user_age)
VALUES('korea', '12345678', 'test', 100)

넣는 순서 상관 없어. 벨류랑 인자 순서만 맞으면 돼
INSERT INTO member( user_pass,user_id, user_name)
VALUES( '12345678' , 'korea', 'test' )

INSERT INTO member(user_id, user_pass, user_name, user_age)
VALUES('korea', '12345678', '테스트', 100)

INSERT INTO prac (NAME, AGE)
VALUES ('KIM', 14)

--실습하기, 데이터를 10개정도 member 테이블에 입력해주세요.

	INSERT INTO member(user_id, user_pass, user_name, user_age)
	VALUES('korea', 12345678, 'sil',30)

INSERT INTO member (USER_ID, USER_PASS, USER_NAME, USER_AGE) VALUES ('korea1', '1234', '코리아', '20');
INSERT INTO member (USER_ID, USER_PASS, USER_NAME, USER_AGE) VALUES ('korea2', '1234', 'JSP', '30');
INSERT INTO member (USER_ID, USER_PASS, USER_NAME, USER_AGE) VALUES ('korea3', '1234', '코리아', '40');
INSERT INTO member (USER_ID, USER_PASS, USER_NAME, USER_AGE) VALUES ('korea4', '12345678', 'JSP', '30');
INSERT INTO member (USER_ID, USER_PASS, USER_NAME, USER_AGE) VALUES ('korea5', '12345678', 'JSP', '20');
INSERT INTO member (USER_ID, USER_PASS, USER_NAME, USER_AGE) VALUES ('korea6', '12345678', '코리아', '40');
INSERT INTO member (USER_ID, USER_PASS, USER_NAME, USER_AGE) VALUES ('korea7', '12345678', '코리아', '20');

--조회하기mysqlmysqlkoreausers
--멤버테이블의 user_id 컬럼을 보여주세요.
--SELECT [컬럼명] FORM [테이블]
 
SELECT USER_ID FROM MEMBER

--컬럼명 부분에 *를 사용하면 전체가 됩니다.
SELECT * FROM MEMBER

--실습하기. 멤버 테이블에서 이름, 나이, 아이디 순으로 
--				데이터를 조회해주세요.

SELECT USER_NAME, USER_AGE, USER_ID FROM MEMBER

--실습하기, 멤버 테이블에서 이름, 이름1, 이름2를 조회해주세요.
--COLUMN 명 변경 가능
SELECT USER_NAME AS 'NM1', USER_NAME AS 'NM2', USER_NAME AS 'NM3' FROM MEMBER

--멤버에서 유저의 ID가 korea6인것만 조회해주세요.

SELECT * FROM MEMBER
WHERE USER_ID = 'korea6'

--멤버에서 유저의 ID가 korea인것만 조회해주세요.
SELECT * FROM MEMBER
WHERE USER_ID = 'korea'

--실습하기. 멤버에서 pass가 12345678이 아닌것을 조회해주세요.
SELECT * FROM MEMBER
WHERE USER_PASS != '12345678'


--실습하기. 멤버에서 pass가 12345678이 아니면서, id가 korea1인것만 조회해주세요

SELECT * FROM MEMBER
WHERE USER_PASS != '12345678' AND USER_ID = 'korea1'

--실습하기. 멤버에서 age가 50미만인것만 조회해주세요.
SELECT * FROM MEMBER
WHERE user_age < 50

--실습하기. 멤버에서 age가 null이 아닌것만 조회해주세요.
SELECT * FROM MEMBER
WHERE user_age IS NULL

--실습하기. 멤버에서 age가 null인것만 조회해주세요.
SELECT * FROM MEMBER
WHERE user_age IS not null

--user_id에 k가 포함된것만 조회해주세요
-- %는 sql like에서 모든것을 대체하는 문자 키워드.

SELECT * FROM MEMBER
WHERE user_id LIKE '%a'	#k로 시작되는 모든것
WHERE user_id LIKE 'k%' #k로 끝나는 모든것
WHERE user_id LIKE '%k%' #k가 포함된 모든것

#정렬(오름차순)
SELECT * FROM member
ORDER BY user_age

#정렬(내림차순)
SELECT * FROM member
ORDER BY user_age DESC


#업데이트문
UPDATE member 
SET user_name = 'korea'

#멤버테이블의 user_id가 korea인 데이터의 user_id를 ALLkorea로 수정해주세요.

UPDATE member 
SET user_id = 'ALLkorea'
WHERE user_id = 'korea' 

#실습하기. user_age가 null인 데이터의 값을
#				user_name은 수정함으로 변경
#				user_age는 -1로 변경.
UPDATE member
SET user_name = '수정함'
,user_age = -1
WHERE user_age IS NULL 


#데이터 삭제하기
# -- user_id가 AllKorea인 데이터만 삭제

DELETE FROM member
WHERE user_id = 'Allkorea'


#실습하기. user_age가 50 미만인 데이터만 삭제

DELETE FROM member
WHERE user_age < 50

SELECT * FROM member

UPDATE member
SET USER_PASS = 'TEST'

INSERT INTO member(USER_ID)
VALUES('KOREA')


--=========================





