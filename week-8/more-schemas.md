![One-to-One Relationship]
(imgs/one_to_one.png)

The above represents a one-to-one relationship because each passport must be linked to only one individual, and each individual can only have one passport. Although it would make sense to put information like passport number on the same table as an individual, the passport contains enough information to warrent a separate table to hold information. However, you could also put "null" for the passport ID on each person since not everyone has a passport.

![One-to-Many Relationship]
(imgs/one_to_many.png)

What is a one-to-one database?

A one-to-one database connects two tables that are both unique. In this case, you would want to connect two items for which there can only be one of. For example, we might want to connect an individual to a car title. Each car title is unique, and it can only contain one individual. Thus, we would have two tables (drivers and titles) that are connected via a one-to-one relationship.

When would you use a one-to-one database? (Think generally, not in terms of the example you created).

You would use this if you have two items that are unique that must be connected to one another. A social security card can only have one owner, a country can only have one president, etc.

What is a many-to-many database?

A many-to-many database connects two items which can have many instances of the other table. For example, we might have two tables titled "musicians" and "albums." The question we must ask is: "can musicians have many different albums, and can albums have many different musicians?" Since the answer to both of these is yes, we have a many-to-many relationship.

When would you use a many-to-many database? (Think generally, not in terms of the example you created).

You would use a many-to-many relationship if you have a table that has many different items that cannot be uniquely linked to another table. If one item can have many instances of the other table, and vice-versa, that is a many-to-many relationship.

What is confusing about database schemas? What makes sense?

It's often difficult to determnine what kind of relationship you have between two items, and you have to consider the relationship between two tables rather than the items included on each table. For example, even though there are many different foods on a "food" table, their relationship to "grocery_lists" would be many-to-many since a grocery list can have many foods and vice versa.