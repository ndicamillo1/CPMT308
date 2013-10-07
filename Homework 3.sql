-- Nick DiCamillo
-- SQL Homework 3

-- 1 

Select city
From Agents
Where aid in(
			 Select aid  
			 From Orders
			 Where cid = 'c002'
			 );

-- 2

Select city
From Agents as a join Orders as o on a.aid = o.aid
Where cid = 'c002';

-- 3

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

-- 4 

Select distinct o1.pid
From Orders o,
     Orders o1,
     Customers c
Where c.city = 'Kyoto'
  and o.cid = c.cid 
  and o.aid = o1.aid

-- 5 

Select name
From Customers
Where cid not in(
   				 Select cid
				 From Orders
				 );

-- 6

Select c.name
From Customers as c left outer join Orders as o on c.cid = o.cid
Where o.cid is null

-- 7 

Select distinct c.name, a.name
From Customers as c join Orders as o on c.cid = o.cid 
	 join Agents as a on a.aid = o.aid
Where c.city = a.city

-- 8 

Select c.name, a.name, c.city
From Customers as c join Agents as a on c.city = a.city

-- 9

Select c.name, c.city
From Customers as c
Where c.city in(
	            Select p.city
	            From Products as p
	            Group by p.city
	            Order by COUNT(p.city) asc
	            Limit 1
	            );

-- 10

Select c.name, c.city
From Customers as c
Where c.city in(
		        Select p.city
			    From Products as p
				Group by p.city
				Order By COUNT(p.city) desc
				Limit 1
				);

-- 11

Select c.name, c.city
From Customers as c
Where c.city in(
		        Select p.city
		        From Products as p
		        Group By p.city
		        Having COUNT(p.city) in(
										Select COUNT(p.city)
										From Products as p
										Group By p.city
										Order By COUNT(p.city)desc
										Limit 1
										)
				);

-- 12

Select name
From Products
Where priceUSD > (Select AVG(priceUSD)
                  From Products 
                 );

-- 13

Select c.name, o.pid, o.dollars
From Customers as c join Orders as o on c.cid = o.cid
Order by o.dollars

-- 14

-- 15

-- 16

-- 17






