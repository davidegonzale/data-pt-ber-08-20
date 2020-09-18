![IronHack Logo](https://s3-eu-west-1.amazonaws.com/ih-materials/uploads/upload_d5c5793015fec3be28a63c4fa3dd4d55.png)

# Lab | Action Queries

## Introduction

 In this lab, we will practice action queries to create, update and delete new tables in a database.

Please submit your solutions in a text file `solutions.sql`.

### Challenge

In this challenge, we will go through several steps of creating a new table and then altering its content.

1. Please create a new table in the publications database called total_royalties which for each author contains their author ID, last name, first name, number of total titles and the sum of royalties they have received.

2. Delete every author which has received total royalties of less than 100.

3. Create a new column of type float called AvgRoyalty (this is an ALTER TABLE statement).

4. Update the new column AvgRoyalty to equal the average royalty per title for each author.

5. Empty all of the values in the table.

6. Repopulate the table to contain the same values as it did after step (4), in one single query (you have to use a subquery here)!

7. Delete the table total_royalties.


