
---q The finance team requires a running total of sales for each product month-wise.
--Table: Sales(ProductId, SaleMonth, Amount)
create table products(
	ProductID INT PRIMARY KEY,
	ProductName VARCHAR(100),
	Category VARCHAR(50),
	Price DECIMAL(10,2)
);
create table sales(
	ProductID INT,
	SaleMonth INT,
	Amount DECIMAL(12,2),
	FOREIGN KEY (ProductID) REFERENCES products(ProductID)
);

select p.productid, s.salemonth,sum(Amount) from sales s left join products p on s.productid=p.productid group by 
 s.SaleMonth, p.productid