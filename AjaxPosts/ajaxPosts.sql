CREATE DATABASE ajaxPosts;
USE ajaxPosts;

CREATE TABLE posts
(
	id int not null auto_increment,
    description text not null,
    created_at datetime not null,
    updated_at datetime not null,
    primary key (id)
);

INSERT INTO posts (description,created_at,updated_at)
VALUES ('Some text for testing!',NOW(),NOW());

SELECT * FROM posts;