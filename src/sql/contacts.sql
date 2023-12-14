create table contacts (
    contact_id bigint not null auto_increment,
    first_name varchar(50),
    last_name varchar(50),
    company varchar(255),
    primary key(contact_id)
);