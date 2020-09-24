-- syntax for temp table
CREATE TABLE publications.store_sales_summary
SELECT stores.stor_name AS Store, COUNT(DISTINCT(ord_num)) AS Orders, COUNT(sales.title_id) AS Items, SUM(qty) AS Qty
	FROM publications.sales 
    INNER JOIN publications.stores  
    ON stores.stor_id = sales.stor_id
    GROUP BY Store;

SELECT * FROM publications.store_sales_summary;

-- drop rows by condition

DELETE FROM publications.store_sales_summary
WHERE Qty < 100;

-- Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.


-- delete all rows unconditionally
DELETE FROM publications.store_sales_summary;


-- deleting the whole table
DROP TABLE publications.store_sales_summary;


-- deleting only specific columns
ALTER TABLE publications.store_sales_summary
DROP COLUMN Qty;

SELECT * FROM publications.store_sales_summary;


-- repopulating it

INSERT INTO publications.store_sales_summary
SELECT stores.stor_name AS Store, COUNT(DISTINCT(ord_num)) AS Orders, COUNT(sales.title_id) AS Items, SUM(qty) AS Qty
	FROM publications.sales 
    INNER JOIN publications.stores  
    ON stores.stor_id = sales.stor_id
    GROUP BY Store;


-- updating data in the table
UPDATE publications.store_sales_summary
SET Qty = Qty*2;

SELECT * FROM publications.store_sales_summary;

