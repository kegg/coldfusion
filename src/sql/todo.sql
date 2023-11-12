drop table if exists todo;

create table todo (
    id bigint not null auto_increment,
    item varchar(255) not null,
    done char(1) not null default 0,
    ts timestamp default CURRENT_TIMESTAMP,
    primary key(id)
);