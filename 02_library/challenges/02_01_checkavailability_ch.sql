-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT COUNT(*) FROM Books
WHERE Title = 'Dracula'; 
-- Total copies of Dracula = 3

-- SELECT BookID, Title FROM Books
-- WHERE Title = 'Dracula'; 
-- -- BookIDs of Dracula: 12, 60, 73

SELECT COUNT(*) 
FROM Loans JOIN Books on Loans.BookID = Books.BookID
WHERE Books.Title = 'Dracula' AND Loans.ReturnedDate IS NULL; 
-- Count of Unreturned Books titled 'Dracula' = 1


-- Hence, count of available 'Dracula' books to lend 
--         = Total copies - Unreturned
--         = 3 - 1
--         = 2