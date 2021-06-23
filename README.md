# Bookmark manager

### To set up the database

Connect to `psql` and create the `bookmark_manager` database:

```
CREATE DATABASE bookmark_manager;
```

To set up the appropriate table, connect to the database in `psql` and run the first SQL script in the `db/migrations` folder.

Now create the `bookmark_manager_test` database:

```
CREATE DATABASE bookmark_manager_test;
```
To set up the appropriate table, connect to the database in `psql` and run the second SQL script in the `db/migrations` folder.

### User Story 1

```
As an internet freak
So that I can find my favourite websites
I would like to see a list of my bookmarks
```

![mermaid-diagram-20210622151035](https://user-images.githubusercontent.com/62373855/122940201-2c69ec00-d36c-11eb-8e21-99655d256755.png)

