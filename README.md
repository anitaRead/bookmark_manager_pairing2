# Bookmark manager

### To set up the database

1. Connect to `psql`
2. Create the database using the `psql` command `CREATE DATABASE bookmark_manager;`
3. Connect to the database using the `pqsl` command `\c bookmark_manager;`
4. Run the query we have saved in the file `01_create_bookmarks_table.sql`
5. Disconnect from the database
6. Create the database using the `psql` command `CREATE DATABASE bookmark_manager_test;`
7. Connect to the database using the `pqsl` command `\c bookmark_manager_test;`
8. Run the query we have saved in the file `01_create_bookmarks_table.sql`

### User Story 1

```
As an internet freak
So that I can find my favourite websites
I would like to see a list of my bookmarks
```

![mermaid-diagram-20210622151035](https://user-images.githubusercontent.com/62373855/122940201-2c69ec00-d36c-11eb-8e21-99655d256755.png)

### User Story 2

```
As an internet freak
So that I can save my favourite websites
I would like to add a bookmark to my bookmark manager
```