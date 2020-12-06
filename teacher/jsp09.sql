생성해라 뭐를? 이름은?(
명칭 데이터타입 옵션들,
명칭 데이터타입,
명칭 데이터타입,
)


CREATE TABLE korea(
	NAME VARCHAR(10), 
	AGE INT(5) NOT NULL
)


구조화되었다.
명령 뭐를? 이름
DROP TABLE korea;









CREATE TABLE member(
	user_id VARCHAR(20)
	, USER_PASS VARCHAR(20)
	, USER_NAME VARCHAR(30)
	, USER_AGE INT(3)
)


-- 데이터 입력
-- : 변화하지 않는 부분(SQL에서 제공되는 부분은 대문자)
-- : 변화하는 부분(개발자가 지정하는 곳은 소문자)
INSERT INTO member(user_id, user_pass, user_name, user_age) 
            VALUES('korea', '12345678', 'test',     100)


INSERT INTO member(user_pass, user_name, user_id)  
            VALUES('12345678', 'test', 'korea')


INSERT INTO member(user_id, user_pass, user_name, user_age) 
            VALUES('korea', '12345678', '테스트',     100)


-- 실습하기. 데이터를 10개정도 member 테이블에 입력해주세요.
INSERT INTO member (USER_ID, USER_PASS, USER_NAME, USER_AGE) VALUES ('korea1', '1234', '코리아', '20');
INSERT INTO member (USER_ID, USER_PASS, USER_NAME, USER_AGE) VALUES ('korea2', '1234', 'JSP', '30');
INSERT INTO member (USER_ID, USER_PASS, USER_NAME, USER_AGE) VALUES ('korea3', '1234', '코리아', '40');
INSERT INTO member (USER_ID, USER_PASS, USER_NAME, USER_AGE) VALUES ('korea4', '12345678', 'JSP', '30');
INSERT INTO member (USER_ID, USER_PASS, USER_NAME, USER_AGE) VALUES ('korea5', '12345678', 'JSP', '20');
INSERT INTO member (USER_ID, USER_PASS, USER_NAME, USER_AGE) VALUES ('korea6', '12345678', '코리아', '40');
INSERT INTO member (USER_ID, USER_PASS, USER_NAME, USER_AGE) VALUES ('korea7', '12345678', '코리아', '20');




-- 조회하기
-- 멤버테이블의 USER_ID 컬럼을 보여주세요.
-- SELECT [컬럼명] FROM [테이블]

SELECT user_id FROM member

--컬럼명 부분에 *를 사용하면 전체가 됩니다.
SELECT * FROM member

-- 실습하기. 멤버 테이블에서 이름, 나이, 아이디 순으로
--           데이터를 조회해주세요.
SELECT user_name, user_age, user_id FROM member

-- 실습하기. 멤버 테이블에서 이름, 이름1, 이름2를 조회해주세요.
SELECT user_name AS 'nm1', user_name AS 'nm2', user_name AS 'nm3' 
FROM member


-- 멤버에서 유저의 id가 korea6인것만 조회해주세요.
SELECT * FROM member
WHERE user_id = 'korea6'


-- 멤버에서 유저의 id가 korea인것만 조회해주세요.
SELECT * FROM member
WHERE user_id = 'korea'

-- 실습하기. 멤버에서 pass가 12345678이 아닌 것을
-- 조회해주세요.
SELECT * FROM member
WHERE user_pass != '12345678'



-- 실습하기. 멤버에서 pass가 12345678이 아니면서 id가 korea1 인 것만
-- 조회해주세요. AND, OR
SELECT * FROM member
WHERE user_pass != '12345678' AND user_id = 'korea1'


-- 실습하기. 멤버에서 age가 50 미만인 데이터만
-- 조회해주세요.
SELECT * FROM member
WHERE user_age < 50


-- 실습하기. 멤버에서 age가 null이 아닌 것만
-- 조회해주세요.
SELECT * FROM member
WHERE user_age IS NOT NULL

-- 실습하기. 멤버에서 age가 null인 것만
-- 조회해주세요.
SELECT * FROM member
WHERE user_age IS NULL


-- user_id에 k가 포함된 것만 조회해주세요.
-- %는 모든 것을 대체하는 문자키워드

SELECT * FROM member
WHERE user_id LIKE 'k%'  #k로 시작되는 모든 것


SELECT * FROM member
WHERE user_id LIKE '%k'  #k로 끝나는 모든 것


SELECT * FROM member
WHERE user_id LIKE '%k%'  #k가 포함된 모든 것



# 정렬
SELECT * FROM member
ORDER BY user_age

SELECT * FROM member
ORDER BY user_age DESC



# 업데이트문
UPDATE member 
SET user_name = 'korea'



# 멤버 테이블의 user_id가 korea인 데이터의
# user_id를 ALLkorea 로 수정해주세요.

UPDATE member 
SET user_id = 'ALLkorea'
WHERE user_id = 'korea'
 
 
 
# 실습하기. user_age가 null인 데이터의 값을
#           user_name은 수정함으로 변경
#           user_age는 -1로 변경해주세요.
UPDATE member
SET user_name = '수정함'
	, user_age = -1
WHERE USER_age IS NULL
 
 
 

 
# 데이터 삭제하기
# 실습하기.  user_id가 ALLkorea인 데이터만 삭제해주세요
DELETE FROM member
WHERE user_id = 'ALLkorea'

# 실습하기. user_age가 50 미만인 데이터만 삭제해주세요
DELETE FROM member
WHERE user_age < 50





SELECT * FROM member



 
 
 
 
 
 
 