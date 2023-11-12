create table users (
    id bigint not null auto_increment,
    firstName varchar(50) not null,
    lastName varchar(50) not null,
    userid varchar(50) not null,
    email varchar(50) not null,
    password varchar(50) not null,
    primary key(id)
);

alter table users add constraint uniqueUserId unique (userid);