
When we have many to many relations between tables we build junction table.

![Many-to-Many Relationships](https://pp.userapi.com/c853520/v853520763/5974c/IYOEYDkT_eQ.jpg)

```SQL
CREATE TABLE User (
	id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	name TEXT,
	email TEXT
)

CREATE TABLE Course (
	id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	title TEXT
)

CREATE TABLE Member (
	user_id INTEGER,
	course_id INTEGER,
      role INTEGER,
  PRIMARY KEY (user_id, course_id)
)

INSERT INTO User (name, email) VALUES ('Jane', 'jane@gmail.com');
INSERT INTO User (name, email) VALUES ('Bill', 'Bill@gmail.com');
INSERT INTO User (name, email) VALUES ('Jim', 'jim@gmail.com');

INSERT INTO Course (title) VALUES ('Python');
INSERT INTO Course (title) VALUES ('SQL');
INSERT INTO Course (title) VALUES ('PHP')

INSERT INTO Member (user_id, course_id, role) VALUES (1,1,1);
INSERT INTO Member (user_id, course_id, role) VALUES (2,1,0);
INSERT INTO Member (user_id, course_id, role) VALUES (3,1,0);

INSERT INTO Member (user_id, course_id, role) VALUES (1,2,0);
INSERT INTO Member (user_id, course_id, role) VALUES (2,2,1);

INSERT INTO Member (user_id, course_id, role) VALUES (2,3,1);
INSERT INTO Member (user_id, course_id, role) VALUES (3,3,0)

SELECT User.name, Member.role, Course.title
FROM User JOIN Member JOIN Course
ON Member.user_id = User.id AND Member.course_id = Course.id
ORDER BY Course.title, Member.role DESC, USER.name
```
