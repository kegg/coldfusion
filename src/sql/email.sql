drop table if exists emails;

create table emails (
    email_id bigint not null auto_increment,
    contact_id bigint not null,
    email_address varchar(255),
    is_default char(1),
    primary key(email_id),
    foreign key(contact_id) references contacts(contact_id)
);