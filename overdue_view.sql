CREATE VIEW displayOverdue
AS 
	SELECT Books.Title,Members.Name,dbo.OverdueDayss(Loans.LoansID) AS overdueDays
	FROM Loans 
	JOIN Books
	ON Loans.BookID=Books.BookID
	JOIN Members 
	ON Loans.MemberID=Members.MemberID
	WHERE Loans.ReturnDate < GETDATE();

--Test
SELECT * FROM displayOverdue