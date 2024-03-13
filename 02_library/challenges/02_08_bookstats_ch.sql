-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.

SELECT Published AS Year, Count(DISTINCT Title) AS 'No of books'
FROM Books
GROUP BY Published
ORDER BY Count(DISTINCT Title) DESC;

SELECT Books.Title AS 'Most popular books'
FROM Loans
JOIN Books ON Loans.BookID = Books.BookID
GROUP BY (Books.Title)
ORDER BY Count(Books.BookID) DESC
LIMIT 5;
