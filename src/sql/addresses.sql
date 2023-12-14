drop table if exists addresses;

create table addresses (
    address_id bigint not null auto_increment,
    contact_id bigint not null,
    address varchar(255),
    address2 varchar(255),
    city varchar(255),
    state char(2),
    zip char(10),
    is_default char(1),
    primary key(address_id),
    foreign key(contact_id) references contacts(contact_id)
);