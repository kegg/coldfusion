drop table if exists notes;

create table notes (
    note_id bigint not null auto_increment,
    contact_id bigint not null,
    note_subject int default 0,
    note_txt text,
    note_ts timestamp default CURRENT_TIMESTAMP,
    primary key(note_id),
    foreign key(contact_id) references contacts(contact_id)
);