SQL Commands to Retrieve Requested Data

1. SELECT * FROM states;

2. SELECT * FROM regions;

3. SELECT state_name, population FROM states;

4. SELECT state_name, population FROM states ORDER BY population DESC;

5. SELECT state_name FROM states WHERE region_id = 7;

6. SELECT state_name, population_density FROM states WHERE population_density > 50 ORDER BY population_density ASC;

7. SELECT state_name FROM states WHERE population BETWEEN 1000000 AND 1500000;

8. SELECT state_name, region_id FROM states ORDER BY region_id ASC;

9. SELECT region_name FROM regions WHERE region_name LIKE '%Central';

10. SELECT states.state_name, regions.region_name FROM states JOIN regions ON states.region_id = regions.id ORDER BY region_id ASC;

![Database Outline]
(schemaDesign.png)


=========== Reflection ============

What are databases for?

Databases are more convenient way of storing data for a program. Most programs will not store large amounts of data in hashes or arrays because that would take up too much space and cause the program to run slowly. Instaed, databases hold raw information that can be accessed using SQL and other database managers.

What is a one-to-many relationship?

A one-to-many relationship is a way to select unique values in a table and avoiding repeating information. For example, we might have a database that keeps track of albums. In this database, we might keep track of different genres of music. Let's take the album Jailbreak by Thin Lizzy. There is only one instance of Jailbreak, but it belongs to the rock genre, which has many different albums. This is an example of a one-to-many relationship. There are many rock albums, but there is only one Jailbreak.

What is a primary key? What is a foreign key? How can you determine which is which?

Primary and foreign keys are a way of keeping track of IDs between various tables. You will often link two different tables using the unique key value given to each row in an individual table. For example, in our Clueless outfit example for this exercise, we created a separate person_id under the outfits table. This person_id served as the foreign key for the primary key ID field under the persons table. Thus, the two tables were linked.

How can you select information out of a SQL database? What are some general guidelines for that?

There are many different commands for selecting information out of a SQL database. You are able to select different rows and columns for whatever you are looking for. You can even order this information or use filters to only return information that falls under certain guidelines. Also, every command must end with a semi-colon so that Terminal knows when the statement has come to an end.