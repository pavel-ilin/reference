CREATE TABLE projects(
  id INTEGER PRIMARY KEY,
  title  TEXT,
  category TEXT,
  funding_goal INTEGER,
  start_date INTEGER,
  end_date INTEGER
);


CREATE TABLE users(
  id  INTEGER PRIMARY KEY,
  name TEXT,
  age INTEGER
);

CREATE TABLE pledges(
  id INTEGER PRIMARY KEY,
  amount INTEGER,
  user_id INTEGER,
  project_id INTEGER
);


