CREATE TABLE tbl_file(
	id BIGINT NOT NULL AUTO_INCREMENT,
	name VARCHAR(30),
	file_path VARCHAR(255),
	file_orig_name VARCHAR(50),
	PRIMARY KEY(id)
)