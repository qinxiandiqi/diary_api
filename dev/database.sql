create database if not exists diary;

create table if not exists diary (diary_id int primary key auto_increment,
diary_book_id int not null, diary_create_time date, diary_creator_id varchar(32),
diary_weather varchar(16), diary_temperature varchar(16), diary_content text,
diary_status int not null) engine InnoDB;