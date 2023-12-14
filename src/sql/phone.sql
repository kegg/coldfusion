drop table if exists phone;

create table phone (
    phone_id bigint not null auto_increment,
    contact_id bigint not null,
    phone_nbr varchar(25),
    phone_type char(1),
    is_default char(1),
    primary key(phone_id),
    foreign key(contact_id) references contacts(contact_id)
);