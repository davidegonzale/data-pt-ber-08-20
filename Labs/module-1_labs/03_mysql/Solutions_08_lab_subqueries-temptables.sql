### Nummber 1 TempTable 
CREATE TEMPORARY TABLE publications.authors_titlesales_summary
SELECT authors.au_id as ID, authors.au_lname as LastName, authors.au_fname as Name, COUNT(titleauthor.title_id) as Titles, SUM(titleauthor.royaltyper) as Royalties
FROM publications.authors 
LEFT JOIN publications.titleauthor ON authors.au_id = titleauthor.au_id
GROUP BY authors.au_id;

SELECT * FROM publications.authors_titlesales_summary;

### Number 2 TempTable 
SELECT ID, LastName, Name, Royalties/Titles as AvgRoyal
FROM publications.authors_titlesales_summary;

### Number 1 & Number 2 Subquery
SELECT ID, LastName, Name, Royalties/Titles as AvgRoyal
FROM
(SELECT authors.au_id as ID, authors.au_lname as LastName, authors.au_fname as Name, COUNT(titleauthor.title_id) as Titles, SUM(titleauthor.royaltyper) as Royalties
FROM publications.authors 
LEFT JOIN publications.titleauthor ON authors.au_id = titleauthor.au_id
GROUP BY authors.au_id) as 2summary;
