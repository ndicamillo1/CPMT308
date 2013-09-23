-- Nick DiCamillo
-- Homework 2

-- 1 

Select city
From Agents
Where aid in(
			 Select aid  
			 From Orders
			 Where cid = 'c002'
			 );
				
-- 2

Select pid
From Orders
Where aid in(
			 Select aid
			 From Orders
			 Where cid in(
	     				  Select cid
	     				  From Customers
	     				  Where city = 'Kyoto'
	     				  )
	     	 );

-- 3

Select cid, name
From Customers
Where cid not in(
			 	 Select cid
			 	 From Orders
			 	 Where aid = 'a03'
			 	 );

-- 4 

Select cid, name
From Customers
Where cid in(
			 Select cid
			 From Orders
			 Where pid = 'p01'
			 )
INTERSECT 
Select cid, name
From Customers
Where cid in(
			 Select cid
			 From Orders
			 Where pid = 'p07'
			 );

-- 5 

Select pid
From Orders
Where cid in(
 	 	 	 Select cid
			 From Orders
			 Where aid = 'a03'
			 );

-- 6

Select name, discount
From Customers
Where cid in(
	         Select cid
	         From Orders
	         Where aid in(
			              Select aid
			              From Agents
			              Where city = 'Dallas' or city = 'Duluth'
			              )
			  );
			  
-- 7

Select cid, name
From Customers
Where discount in(
				  Select discount
				  From Customers
				  Where city = 'Dallas' or city = 'Kyoto'
				  )
INTERSECT 
Select cid, name 
From customers 
Where city not in(
				  Select city 
				  From customers 
				  Where city = 'Dallas' or city = 'Kyoto'
				  );