-- HOMEWORK 1
-- Nick DiCamillo

-- 1
	Select *
	From Customers
	
-- 2
	Select name, city
	From Agents 
	Where name = 'Smith';
	
-- 3 
	Select pid, name, quantity 
	From Products
	Where priceUSD > 1.25;
	
-- 4 
	Select ordno, aid 
	From Orders
	
-- 5
	Select name, city
	From Customers
	Where city <> 'Dallas';
	
-- 6
	Select name
	From Agents 
	Where city = 'New York' or city = 'Newark';
	
-- 7
	Select *
	From Products 
	Where city <> 'Newark' and priceUSD <= 1.00;
	
-- 8
	Select *
	From Orders
	Where mon = 'jan' or mon = 'mar';
	
-- 9 
	Select *
	From Orders 
	Where mon = 'feb' and dollars < 100.00;

-- 10
	Select *
	From Orders 
	Where cid = 'c005';
