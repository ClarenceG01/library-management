With cte_frequent_borrowers (MemberID,TotalBorrowed)
AS 
	(
	SELECT MemberID, COUNT(*) AS TotalBorrowed
    FROM dbo.Loans
    GROUP BY MemberID
	HAVING COUNT(*) >=3
	)
	SELECT  Members.Name
	FROM Members
	JOIN  cte_frequent_borrowers
	ON Members.MemberID=cte_frequent_borrowers.MemberID;

	---SELECT * FROM Loans;