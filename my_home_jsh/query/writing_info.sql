CREATE TABLE writing_info(
	writing_id	number(5) PRIMARY KEY NOT NULL,
	group_id	number(5),
	order_no	number(5),
	parent_id	number(5),
	register_date	varchar2(25),
	writer_name		varchar2(30),
	email			varchar2(100),
	image_name		varchar2(100),
	password		varchar2(20),
	title			varchar2(50),
	content			varchar2(200)
);
