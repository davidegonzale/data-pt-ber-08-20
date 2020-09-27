CREATE TABLE publications.total_royalties2
SELECT a.au_id as Author_ID, au_lname as LastName, au_fname as FirstName, COUNT(ta.title_id) as TitleCount, SUM(ta.royaltyper) as SumRoyalty
FROM authors a
LEFT JOIN titleauthor ta on a.au_id=ta.au_id
GROUP BY a.au_id;

SELECT * from publications.total_royalties2;

DELETE FROM publications.total_royalties2
WHERE SumRoyalty < 100;

ALTER TABLE publications.total_royalties2
ADD AvgRoyalty float;

UPDATE publications.total_royalties2
SET AvgRoyalty = SumRoyalty / TitleCount;

DELETE from publications.total_royalties2;

INSERT INTO publications.total_royalties2
SELECT Author_ID, LastName, FirstName, TitleCount, SumRoyalty, SumRoyalty / TitleCount as AvgRoyalty
FROM (
SELECT a.au_id as Author_ID, au_lname as LastName, au_fname as FirstName, COUNT(ta.title_id) as TitleCount, SUM(ta.royaltyper) as SumRoyalty
FROM authors a
LEFT JOIN titleauthor ta on a.au_id=ta.au_id
group by a.au_id) royalties WHERE SumRoyalty >= 100;

SELECT * FROM publications.total_royalties2;

DROP TABLE publications.total_royalties2;


