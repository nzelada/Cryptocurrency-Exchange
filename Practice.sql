SELECT *
FROM transactions;

SELECT SUM(money_in)
FROM transactions;

SELECT SUM(money_out)
FROM transactions;

SELECT COUNT(money_in)
FROM transactions
WHERE money_in IS NOT NULL;

SELECT COUNT(money_in)
FROM transactions
WHERE currency = 'BIT';


SELECT MAX(money_in),MAX(money_out)
FROM transactions;


SELECT AVG(money_in)
FROM transactions
WHERE currency = 'ETH';

SELECT date, AVG(money_in), AVG(money_out)
FROM transactions
GROUP BY 1;

SELECT date, ROUND(AVG(money_in),2) AS 'Average Buy', ROUND(AVG(money_out),2) AS 'Average Sell'
FROM transactions
GROUP BY 1;
