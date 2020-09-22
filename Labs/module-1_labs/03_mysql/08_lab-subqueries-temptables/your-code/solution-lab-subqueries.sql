-- using a subquery
SELECT Author_ID, LastName, FirstName, SumRoyalty / TitleCount as AvgRoyalty
FROM (
select a.au_id as Author_ID, au_lname as LastName, au_fname as FirstName, COUNT(ta.title_id) as TitleCount, SUM(ta.royaltyper) as SumRoyalty
from authors a
left join titleauthor ta on a.au_id=ta.au_id
group by a.au_id) royalties;


-- using a temporary table
CREATE TEMPORARY TABLE publications.total_royalty
select a.au_id as Author_ID, au_lname as LastName, au_fname as FirstName, COUNT(ta.title_id) as TitleCount, SUM(ta.royaltyper) as SumRoyalty
from authors a
left join titleauthor ta on a.au_id=ta.au_id
group by a.au_id;
SELECT Author_ID, LastName, FirstName, SumRoyalty / TitleCount as AvgRoyalty
FROM total_royalty;
