CREATE TABLE customerrs (
	C_id INT IDENTITY (1, 1) PRIMARY KEY,
	C_name VARCHAR (255) NOT NULL,
	C_phone numeric,
);

insert into customerrs values('RAZAN','0774844684');
insert into customerrs values('REEM' ,'0774844894');
select * from customerrs

CREATE TABLE orderrs (
	O_id INT IDENTITY (1, 1) PRIMARY KEY,
	C_id INT,
	O_date DATE,
	FOREIGN KEY (C_id) REFERENCES customerrs
);

insert into orderrs values(1,'12-13-2022');
insert into orderrs values(2,'12-14-2022');
select * from orderrs

CREATE TABLE productts (
	P_id INT IDENTITY (1, 1) PRIMARY KEY,
	O_id INT,
	price FLOAT not null,
	nameOfProduct char(255),
	FOREIGN KEY (O_id) REFERENCES orderrs
);

insert into productts values(1,23.5,'x-product');
insert into productts values(2,53.5,'y-product');
select * from productts

select customerrs.C_name,orderrs.O_date,productts.nameOfProduct,productts.price from customerrs join orderrs on customerrs.C_id= orderrs.C_id 
join productts on orderrs.O_id=productts.O_id 