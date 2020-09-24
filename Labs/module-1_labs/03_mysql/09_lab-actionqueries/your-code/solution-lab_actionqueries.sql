-- 1
CREATE TABLE publications.total_royalties
select a.au_id as Author_ID, au_lname as LastName, au_fname as FirstName, COUNT(ta.title_id) as TitleCount, SUM(ta.royaltyper) as SumRoyalty
from authors a
left join titleauthor ta on a.au_id=ta.au_id
group by a.au_id;

SELECT * from publications.total_royalties;

-- 2
DELETE FROM publications.total_royalties
WHERE SumRoyalty < 100;

-- 3
ALTER TABLE publications.total_royalties
ADD AvgRoyalty float;

-- 4
UPDATE publications.total_royalties
SET AvgRoyalty = SumRoyalty / TitleCount;

-- 5
DELETE from publications.total_royalties;

-- 6
INSERT INTO publications.total_royalties
SELECT Author_ID, LastName, FirstName, TitleCount, SumRoyalty, SumRoyalty / TitleCount as AvgRoyalty
FROM (
select a.au_id as Author_ID, au_lname as LastName, au_fname as FirstName, COUNT(ta.title_id) as TitleCount, SUM(ta.royaltyper) as SumRoyalty
from authors a
left join titleauthor ta on a.au_id=ta.au_id
group by a.au_id) royalties WHERE SumRoyalty >= 100;


-- 7
DROP TABLE publications.total_royalties;


