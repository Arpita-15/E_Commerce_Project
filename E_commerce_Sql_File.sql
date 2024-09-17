Create database Esales;

#Total orders in Ahmebadad
select count(*) from orderlist where City="Ahmedabad";

#Total order in different cities
select City, count(*) as total_order from orderlist group by City; 

#Total order in different states
select State, count(*) as total_order from orderlist group by State; 

#Total revenue according to category
select Category, sum(Amount * Quantity) as Total_Revenue from orderdetails group by Category;

#Category which have amount more than Rs 4000
select Category from orderdetails where Amount>4000 group by Category;

#Order from Jaipur and Pune
select * from orderlist where City = "Jaipur" or City = "Pune";

#Total Revenue Of Karnataka
select sum(Amount*Quantity) as Total_Revenue from orderdetails inner join orderlist 
on orderdetails.OrderID=orderlist.OrderID where orderlist.State= "Karnataka";

#Total Revenue of different States
select sum(Amount*Quantity) , State as Total_Revenue from orderdetails inner join orderlist 
on orderdetails.OrderID=orderlist.OrderID group by State;

#Total Revenue of different sub category
select Orderdetails.Sub-Category, sum(Amount*Quantity) as Total_Revenue from orderdetails group by Sub-Category;






