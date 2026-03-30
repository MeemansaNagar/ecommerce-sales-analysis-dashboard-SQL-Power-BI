create database ecommerce;
use ecommerce;

-- total sales
select sum(sales) as `Total Sales`from sales;
-- The overall sales performance shows steady business activity, indicating consistent demand across the dataset.

-- total profit
select sum(round(profit)) as`Total Profit` from sales;
-- The business generated total sales of 10.6 million with a profit of 1.84 million, indicating strong revenue generation and a healthy level of profitability.

-- category wise sales
select category, sum(sales) as `Total Sales` from sales group by category order by `Total Sales`desc;

-- category wise profit 
select category , sum(profit) as `Total Profit` from sales group by category order by `Total Profit` desc;

/*Category-wise analysis reveals that certain categories generate higher sales while others contribute more to profit,
 highlighting differences in revenue and profitability across product segments.*/

-- region wise sales
select region , sum(sales) as tp from sales group by region order by tp desc; 
-- The West region recorded the highest sales, highlighting it as a key market for business growth.

-- top 5 products
select `Product Name` , sum(sales) as tp from sales group by `Product Name` order by tp desc limit 5;
-- Products like Camera, Monitor, and Printer are among the top contributors, indicating strong customer demand.

-- monthly sales trend
select month(`Order Date`) as month, sum(sales) as tp from sales group by month order by month;
-- Monthly sales analysis shows fluctuations in performance, indicating seasonal trends in customer demand.

-- average order value
select avg(sales) as `Average order value` from sales;
-- The average order value reflects the average spending per transaction, providing insights into customer purchasing behavior and overall revenue efficiency.

-- Overall Data analysis suggests that focusing on high-performing categories and regions can significantly improve overall revenue.


