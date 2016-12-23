drop database if exists video;

create database video;

use video;

create table config(
  id int unsigned primary key,
	user varchar(20) not null,
	password varchar(100) not null,
	notice varchar(300),
	videoDir varchar(20),
	imageDir varchar(20)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

insert into config (user, password)values('123',md5('123'));

create table typeClass(
	id int unsigned primary key auto_increment,
	name varchar(25)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

insert into typeClass(name) values('电影'),('综艺'),('综艺'),('动漫');

create table concreteClass(
	id int unsigned primary key auto_increment,
	name varchar(25),
	pid int unsigned
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

insert into concreteClass(name) values  ('地区'),
					('年代'),
					('语言'),
					('分类');
update concreteClass set pid=id;

insert into concreteClass(name) values ('美国'),
					('大陆'),
					('香港'),
					('日本'),
					('韩国'),
					('欧美'),
					('泰国'),
					('其他');
                    

#declare @tmp int unsigned;

set @tmp = (select id from concreteClass where name='地区' order by id desc limit 1);
update concreteClass set pid=@tmp where pid is NULL;

insert into concreteClass(name) values  ('2016'),('2015'),('2014'),('2013'),('2012'),('2011'),('2010'),('2009'),('2008'),('2007'),('2006'),('2005'),('更早');
					
set @tmp = (select id from concreteClass where name='年代' order by id desc limit 1);
update concreteClass set pid=@tmp where pid is null;

insert into concreteClass(name) values  ('国语'),
					('粤语'),
					('英语'),
					('日语'),
					('汉语'),
					('泰语'),
					('法语'),
					('其他');
                 
set @tmp = (select id from concreteClass where name='语言' order by id desc limit 1);
update concreteClass set pid=@tmp where pid is null;

insert into concreteClass(name) values  ('动作片'),
					('喜剧片'),
					('爱情片'),
					('科幻片'),
					('剧情片'),
					('恐怖片'),
					('战争片'),
					('其他');

set @tmp = (select id from concreteClass where name='分类' order by id desc limit 1);
update concreteClass set pid=@tmp where pid is null;


create table videoInfo(
	id int unsigned primary key auto_increment,
	name varchar(100) not null,
	summary varchar(500) not null,
	typeClass int unsigned not null,
	area int unsigned not null,
	time int unsigned not null,
	language int unsigned,
	property varchar(15) not null;
	click int unsigned default 0,
	addtime datetime not null,
	image varchar(300) not null,
	video varchar(300)not null,
	daoyan varchar(10),
	actors varchar(20),
	zimu varchar(300),
  	curnum int unsigned,
  	allnum int unsigned
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
