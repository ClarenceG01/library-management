-- Insert data into the Books table
INSERT INTO Books (BookID, Title, Author, PublicationYear, Status)
VALUES
    (1, 'Book1', 'Author1', 2021, 'Available'),
    (2, 'Book2', 'Author2', 2019, 'Unavailable'),
    (3, 'Book3', 'Author3', 2020, 'Unavailable'),
    (4, 'Book4', 'Author4', 2018, 'Unavailable'),
    (5, 'Book5', 'Author5', 2017, 'Unavailable');

	-- Insert data into the Members table
INSERT INTO Members (MemberID, Name, Address, ContactNumber)
VALUES
    (1, 'Member1', 'Address1', '1234567890'),
    (2, 'Member2', 'Address2', '9876543210'),
    (3, 'Member3', 'Address3', '5678901234'),
    (4, 'Member4', 'Address4', '4321098765'),
    (5, 'Member5', 'Address5', '9876543210');

-- Insert data into the Loans table
INSERT INTO Loans (LoansID, BookID, MemberID, LoanDate, ReturnDate)
VALUES
    (1, 1, 1, '2023-05-01', '2023-06-01'),
    (2, 2, 2, '2023-06-02', '2023-07-16'),
    (3, 3, 3, '2023-06-03', '2023-07-17'),
    (4, 4, 4, '2023-06-04', '2023-07-18'),
    (5, 5, 5, '2023-06-05', '2023-07-19');
