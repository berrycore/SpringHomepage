CREATE TABLE user_item(
	code varchar2(10),
	name varchar2(20),
	price varchar2(8),
	info varchar2(50),
	origin varchar2(20)
);

INSERT INTO user_item (
	code,
	name,
	price,
	info,
	origin
) 
values (
	'A101',
	'아메리카노',
	'1000',
	'쓴맛이 나는 커피',
	'콜롬비아'
);