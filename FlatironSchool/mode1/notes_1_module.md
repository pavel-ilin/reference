#Methods

Methods to remember:
- size
- keys
- flatten
- method
- class

Enumerable's methods:
- map (change data structure)
- select (condition)
- find
- each

#Classes:

- initialize

- Modify
  - attr_writer :attribute1, :attribute2
  - attr_accessor :attribute1, :attribute2

- Read
  - attr_reader :attribute1, :attribute2

- self - instance calling the method


# Many to many relationship

# Rake

- Create new table

```
rake db:create_migration NAME=create_developers
db/migrate/20191001001635_create_developers.rb
```

- Add column to existing table

```
rake db:create_migration NAME=add_developer_id_to_ais

rake db/migrate/20191001003257_add_developer_id_to_ais.rb
```