#####0A
SELECT authors.au_id as ID, authors.au_fname as Name, authors.au_lname as LastName, COUNT(titleauthor.title_id) as Titles
FROM publications.authors
LEFT JOIN publications.titleauthor
ON publications.authors.au_id = publications.titleauthor.au_id
GROUP BY authors.au_id;

####0B
SELECT jobs.job_id as ID, jobs.job_desc as Description, employee.hire_date as HireDate
FROM publications.jobs
LEFT JOIN publications.employee
ON publications.jobs.job_id = publications.employee.job_id
ORDER BY employee.hire_date DESC;

###1 
SELECT authors.au_id, authors.au_fname, authors.au_lname, titles.title, publishers.pub_name
FROM publications.authors
LEFT JOIN publications.titleauthor
ON authors.au_id = titleauthor.au_id
LEFT JOIN publications.titles
ON titleauthor.title_id = titles.title_id
LEFT JOIN publications.publishers
ON titles.pub_id = publishers.pub_id
WHERE title IS NOT NULL
ORDER BY authors.au_fname;

###2
SELECT authors.au_id, authors.au_fname, authors.au_lname, publishers.pub_name, COUNT(titles.title)
FROM publications.authors
LEFT JOIN publications.titleauthor
ON authors.au_id = titleauthor.au_id
LEFT JOIN publications.titles
ON titleauthor.title_id = titles.title_id
LEFT JOIN publications.publishers
ON titles.pub_id = publishers.pub_id
GROUP BY authors.au_id, publishers.pub_name
ORDER BY COUNT(titles.title) DESC;


###3
SELECT authors.au_id, authors.au_fname, authors.au_lname, SUM(sales.qty)
FROM publications.authors
LEFT JOIN publications.titleauthor ON authors.au_id = titleauthor.au_id
LEFT JOIN publications.sales ON titleauthor.title_id = sales.title_id
GROUP BY au_id
ORDER BY SUM(sales.qty) DESC 
LIMIT 3;

###4
SELECT authors.au_id, authors.au_fname, authors.au_lname, SUM(sales.qty)
FROM publications.authors
LEFT JOIN publications.titleauthor ON authors.au_id = titleauthor.au_id
LEFT JOIN publications.sales ON titleauthor.title_id = sales.title_id
GROUP BY au_id
ORDER BY SUM(sales.qty) DESC;