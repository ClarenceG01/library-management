CREATE PROCEDURE OverdueDay(@LoanID INT)
AS
BEGIN
    DECLARE @LoanDate DATE;
    DECLARE @ReturnDate DATE;
	DECLARE @OverdueDays INT

    SELECT @LoanDate = LoanDate, @ReturnDate = ReturnDate
    FROM Loans
    WHERE LoansID = @LoanID;

    SET @OverdueDays = DATEDIFF(DAY, @ReturnDate, GETDATE());

    IF @OverdueDays < 0
        SET @OverdueDays = 0;
	RETURN @Overduedays;
END;
--Tests
SELECT * FROM Loans;
DECLARE @LoanID INT = 1;
DECLARE @OverdueDays INT;
EXEC @OverdueDays = OverdueDay @LoanID;
SELECT @OverdueDays;



