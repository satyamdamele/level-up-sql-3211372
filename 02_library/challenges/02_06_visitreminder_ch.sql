-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT Patrons.FirstName, Patrons.LastName, Patrons.Email, Count(Loans.LoanID) AS 'Loan Count'
FROM Loans
JOIN Patrons on Loans.PatronID = Patrons.PatronID
GROUP BY Patrons.PatronID
ORDER BY Count(Loans.LoanID) 
LIMIT 15;