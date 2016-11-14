CREATE DATABASE ajaxNotes;
USE ajaxNotes;

CREATE TABLE notes
(
	id int  not null auto_increment,
    title varchar(255) not null,
    description text,
    created_at datetime not null,
    updated_at datetime not null,
    primary key(id)
);

drop table notes;

insert into notes(title,description,created_at,updated_at) values('Django','Hskjadb feifbndkrbj gkbvmb sjadbur efvjsdbvk jergvdjv sjsd.',NOW(),NOW());

select * from notes;