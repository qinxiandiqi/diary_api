create database if not exists diary;

use diary;

create table if not exists diary (diary_id int primary key auto_increment,
diary_book_id int not null, diary_create_time date, diary_creator_id varchar(32),
diary_weather varchar(16), diary_temperature varchar(16), diary_content text,
diary_status int not null) engine InnoDB;

create table if not exists diary_book(diary_book_id int primary key auto_increment,
diary_book_name varchar(32), diary_book_owner_id varchar(32), diary_book_remark text)
engine InnoDB;

create table if not exists diary_permission(diary_id int not null, user_id int not null,
permission int not null);

create table if not exists diary_log(diary_id int not null, user_id int not null,
log_time date, log_type int) engine InnoDB;

create table if not exists diary_tag(diary_id int not null, tag_id int not null)
engine InnoDB;

create table if not exists tag(tag_id int primary key auto_increment,
tag_name varchar(32), tag_create_time date, tag_creator_id int not null)
engine InnoDB;

create table if not exists user(user_id varchar(32) primary key, user_register_time date,
user_nick_name varchar(32), user_sex int, user_birthday date) engine InnoDB;

create table if not exists user_relationship(user_id varchar(32), other_user_id varchar(32),
relationship_type int) engine InnoDB;

