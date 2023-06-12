CREATE TABLE Books(
	BookID int PRIMARY KEY,
	Title varchar(50),
	Author varchar(50),
	PublicationYear int,
	Status varchar(20)
);
CREATE TABLE Members(
	MemberID int PRIMARY KEY,
	Name varchar(20),
	Address varchar(20),
	ContactNumber varchar(20)
);
CREATE TABLE Loans(
	LoansID int PRIMARY KEY,
	BookID int FOREIGN KEY REFERENCES Books(BookID),
	MemberID int FOREIGN KEY REFERENCES Members(MemberID),
	LoanDate Date,
	ReturnDate Date
);