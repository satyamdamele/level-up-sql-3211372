-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT  Customers.FirstName, Customers.LastName, Customers.Email, COUNT(Orders.OrderID) AS OrderCount
FROM Customers JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.Email
ORDER BY OrderCount DESC;