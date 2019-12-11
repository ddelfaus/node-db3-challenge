-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
    select p.ProductName
        , c.CategoryName
    from [Product] as p
    join Category as c
        on p.CategoryId = c.Id;
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
    select o.Id
        , s.CompanyName
    From [order] as o
    join Shipper as s
        on o.ShipVia = s.Id
    where o.OrderDate < '2012-08-09' ;
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

select [Product].ProductName
    , [OrderDetail].*
from [OrderDetail]
 join [Product] on [OrderDetail].ProductId = [Product].Id
where [OrderDetail].OrderId = '10251';

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select [Order].Id, [Customer].CompanyName, [Employee].LastName
from [Order]
join Customer on [Order].CustomerId = Customer.Id
join Employee on [Order].EmployeeId = Employee.Id



findby ssteps


select schemes.scheme_name
    ,steps.step_number
    ,steps.instructions

from Schemes
join steps on schemes.id = steps.step_number