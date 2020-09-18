SELECT * FROM olist.closed_deals;
SELECT mql_id, won_date, business_segment from olist.closed_deals;

SELECT business_segment FROM olist.closed_deals;
SELECT DISTINCT business_segment FROM olist.closed_deals;

SELECT * FROM olist.closed_deals WHERE business_segment="toys";

SELECT * FROM olist.closed_deals ORDER BY lead_type DESC;

SELECT DISTINCT lead_type FROM olist.closed_deals ORDER BY lead_type;

SELECT * FROM olist.closed_deals ORDER BY won_date DESC;

SELECT * FROM olist.closed_deals ORDER BY won_date DESC LIMIT 23;

SELECT * FROM olist.closed_deals ORDER BY won_date DESC LIMIT 23;

SELECT MAX(won_date) FROM olist.closed_deals;
SELECT MIN(won_date) FROM olist.closed_deals;

SELECT MIN(won_date) AS earliest_date, business_segment FROM olist.closed_deals GROUP BY business_segment ORDER BY earliest_date LIMIT 10;





