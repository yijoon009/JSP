CREATE TABLE board(
	id INT NOT NULL AUTO_INCREMENT,
	title VARCHAR(200) NOT NULL,
	content VARCHAR(4000) NOT NULL,
	board_pass VARCHAR(20) NOT NULL,
	hit INT(10) UNSIGNED NOT NULL DEFAULT '0',
	create_id VARCHAR(50) NOT NULL,
	create_date DATETIME DEFAULT NOW(),
	board_type CHAR(1) NOT NULL,
	PRIMARY KEY(id)
	
)