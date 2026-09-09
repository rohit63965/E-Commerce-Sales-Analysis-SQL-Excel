CREATE DATABASE Sales_data;
USE Sales_data;
CREATE TABLE E_Commerce_sales_data(
Order_ID varchar(20),
Order_Date date not null,
Product_Name varchar(20),
Category varchar(15),
Region varchar(10),
Customer_ID varchar(15),
Quantity int,
Unit_Price DECIMAL(10,2),
Status varchar(10),
Sales_Representative varchar(10),
Total_Revenue DECIMAL(10,2),
Order_Type varchar(15)
);
SELECT * FROM sales_data;
SELECT SUM(Total_Revenue) Cancelled_Revenue FROM E_Commerce_sales_data WHERE Status="Cancelled";
SELECT COUNT(Order_ID)  High_Value FROM E_Commerce_sales_data WHERE Order_Type="High Value";
SELECT status, COUNT(Order_ID) Product_Performance_by_OrderStatus FROM E_Commerce_sales_data GROUP BY status;
SELECT category, SUM(total_revenue) AS revenue FROM E_Commerce_sales_data WHERE category IN ('Electronics', 'Accessories', 'Peripherals', 'Gaming')
GROUP BY category ORDER BY revenue DESC;