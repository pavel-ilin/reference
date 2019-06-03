Create table

```SQL
CREATE TABLE Users (
	name VARCHAR(128),
	email VARCHAR(128)
)
```

Insert into

```SQL
INSERT INTO Users(name,email) VALUES ('Kristin', 'kf@umich.edu')
```

Delete a row in a table based on a selection criteria

```SQL
DELETE FROM Users WHERE email='Name@gmail.com'
```

Update

```SQL
UPDATE Users SET name='Charles' WHERE email='name3@gmail.com'
```

Retrieving Records: Select

```SQL
SELECT * FROM Users WHERE email='pashuntiy@gmail.com'
SELECT * FROM Users ORDER BY name
```
