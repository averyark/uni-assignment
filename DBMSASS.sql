CREATE DATABASE BookStoreDatabase

CREATE TABLE Member(
    MemberID INT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    ContactNumber NVARCHAR(50) NOT NULL,
    EmailAddress NVARCHAR(50) NOT NULL UNIQUE,
    MailingAddress NVARCHAR(50) NOT NULL
)

Insert Into Member
    (FirstName, LastName, ContactNumber, EmailAddress, MailingAddress)
Values
    ('Andre', 'Lau', '018-911 4137', 'andrelau123@gmail.com', 'Taman Equine'),
    ('Alwin', 'Ting', '014-728 2932', 'tingalwin05@gmail.com', 'Sungai Besi Indah'),
    ('Evelyn', 'Yap', '018-293 2342', 'evelynyap1010@gmail.com', 'Balakong'),
    ('Darren', 'Thong', '012-393 3948', 'darrenthong05@gmail.com', 'Sri Raya'),
    ('Adam', 'Fariss', '019-323 4242', 'farissadam0921@gmail.com', 'Bukit Jalil'),
    ('Alan', 'Beth', '012-428 1568', 'alanbeth0521@gmail.com', 'Puchong'),
    ('Beth', 'Charlie', '017-826 7428', 'bethcharlie06@gmail.com', 'Putrajaya'),
    ('Desmond', 'Lim', '013-742 6527', 'desmondlim06@gmail.com', 'Putrajaya'),
    ('Patrick', 'Goh', '017-656 8827', 'patrickgoh0510@gmail.com', 'Puncak Jalil'),
    ('Crystal', 'Tong', '018-415 7528', 'tongcrystal0301@gmail.com', 'Taman Equine')

CREATE TABLE Publisher(
    PublisherID INT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
    Name NVARCHAR(50),
    ContactNumber NVARCHAR(50)
)

INSERT INTO Publisher 
    (Name, ContactNumber)
VALUES
    ('J.B. Lippincott & Co.', '(123) 456-7890'),
    ('George Allen & Unwin', '(234) 567-8901'),
    ('Little, Brown and Company', '(345) 678-9012'),
    ('Chatto & Windus', '(456) 789-0123'),
    ('Charles Scribner''s Sons', '(567) 890-1234'),
    ('Sterling Books', '(678) 901-2345'),
    ('HarperCollins', '(212) 207-7000'),
    ('Penguin Random House', '(212) 782-9000'),
    ('Simon & Schuster', '(212) 698-7000'),
    ('Hachette Book Group', '(800) 759-0190'),
    ('Johann Rudolph Wyss', '(789) 012-3456'),
    ('Epigram Books', '(890) 123-4567'),
    ('Grove Press', '(901) 234-5678'),
    ('Mammoth', '(012) 345-6789'),
    ('Secker & Warburg', '(345) 678-9012'),
    ('T. Egerton', '(456) 789-0123'),
    ('Harper & Brothers', '(567) 890-1234'),
    ('Smith, Elder & Co.', '(678) 901-2345')

CREATE TABLE Book(
    BookID INT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
    Name NVARCHAR(50),
    Genre NVARCHAR(50),
    Description NVARCHAR(255),
    Price DECIMAL(10,2),
    QuantityInStock INT,
    PublisherID INT FOREIGN KEY REFERENCES Publisher(PublisherID),
)

INSERT INTO Book 
    (Name, Genre, Description, Price, QuantityInStock, PublisherID)
VALUES
    ('To Kill a Mockingbird', 'Thriller', 'A novel by Harper Lee published in 1960.', 80.20, 8, 1),
    ('The Lord of the Rings', 'Fictional', 'An epic high-fantasy novel by J.R.R. Tolkien.', 100.30, 7, 2),
    ('The Catcher in the Rye', 'Literary realism', 'A novel by J.D. Salinger, partially published in serial form in 1945–1946.', 120.40, 4, 3),
    ('Brave New World', 'Science Fiction', 'A dystopian social science fiction novel by Aldous Huxley.', 65.20, 5, 4),
    ('The Great Gatsby', 'Historical Fiction', 'A 1925 novel written by American author F. Scott Fitzgerald.', 88.00, 6, 5),
    ('Echoes of Eternity', 'Fantasy', 'A fantasy novel by Sarah Johnson, Michael Lee, and Emily Chen.', 105.40, 10, 6),
    ('Whispers in the Dark', 'Mystery', 'A mystery novel by David Miller, Rebecca Martinez, and Jennifer Wong.', 127.70, 11, 7),
    ('Shadows of Destiny', 'Science Fiction', 'A science fiction novel by James Anderson, Jessica Ramirez, and Ryan Smith.', 78.40, 12, 8),
    ('Lost in Time', 'Historical Fiction', 'A historical fiction novel by Emily Thompson, Matthew Davis, and Olivia White.', 108.40, 8, 9),
    ('Forgotten Dreams', 'Romance', 'A romance novel by Samantha Brown, Daniel Wilson, and Emma Taylor.', 75.40, 7, 10),
    ('Swiss Robinson', 'Fantasy', 'A fantasy novel by Johann David Wyss.', 86.20, 5, 11),
    ('Mr Mystery', 'Mystery', 'A mystery novel by Jim Aitchison.', 85.50, 6, 12),
    ('The Elephant Man', 'Non-Fiction', 'A non-fiction book by Bernard Pomerance.', 102.40, 6, 13),
    ('Fair''s Fair', 'Literacy Fiction', 'A literacy fiction book by Narinder Dhami.', 78.80, 8, 14),
    ('The Hobbit', 'Fantasy', 'A fantasy novel by J.R.R. Tolkien.', 90.60, 10, 2),
    ('1984', 'Dystopian Fiction', 'A dystopian social science fiction novel and cautionary tale by George Orwell.', 110.20, 7, 15),
    ('Animal Farm', 'Political Satire', 'A satirical allegorical novella by George Orwell.', 80.50, 8, 15),
    ('Pride and Prejudice', 'Romance', 'A romantic novel of manners written by Jane Austen.', 87.50, 8, 16),
    ('Moby-Dick', 'Adventure Fiction', 'An 1851 novel by Herman Melville.', 60.50, 10, 17),
    ('Jane Eyre', 'Gothic Fiction', 'A novel by English writer Charlotte Brontë.', 70.80, 7, 18)

CREATE TABLE AuthorDetails(
    AuthorID INT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
    Name NVARCHAR(50)
)

Insert Into AuthorDetails
    (Name)
Values
    ('Harper Lee'),
    ('J.R.R. Tolkien'),
    ('J.D. Salinger'),
    ('Aldous Huxley'),
    ('F. Scott Fitzgerald'),
    ('Sarah Johnson'),
    ('Michael Lee'),
    ('Emily Chen'),
    ('David Miller'),
    ('Rebecca Martinez'),
    ('Jennifer Wong'),
    ('James Anderson'),
    ('Jessica Ramirez'),
    ('Ryan Smith'),
    ('Emily Thompson'),
    ('Matthew Davis'),
    ('Olivia White'),
    ('Samantha Brown'),
    ('Daniel Wilson'),
    ('Emma Taylor'),
    ('Johann David Wyss'),
    ('Jim Aitchison'),
    ('Bernard Pomerance'),
    ('Narinder Dhami'),
    ('George Orwell'),
    ('Jane Austen'),
    ('Herman Melville'),
    ('Charlotte Brontë')

CREATE TABLE BookAuthor(
    BookID INT NOT NULL FOREIGN KEY REFERENCES Book(BookID),
    AuthorID INT NOT NULL FOREIGN KEY REFERENCES AuthorDetails(AuthorID),
    PRIMARY KEY (BookID, AuthorID)
)

Insert Into BookAuthor
    (BookID, AuthorID)
Values
    (1,1),
    (2,2),
    (3,3),
    (4,4),
    (5,5),
    (6,6),
    (6,7),
    (6,8),
    (7,9),
    (7,10),
    (7,11),
    (8,12),
    (8,13),
    (8,14),
    (9, 15),
    (9, 16),
    (9, 17),
    (10, 18),
    (10, 19),
    (10, 20),
    (11, 21),
    (12, 22),
    (13, 23),
    (14, 24),
    (15, 2),
    (16, 25),
    (17, 25),
    (18, 26),
    (19, 27),
    (20, 28)

CREATE TABLE ShoppingCart(
    ItemID INT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
    MemberID INT FOREIGN KEY REFERENCES Member(MemberID) NOT NULL,
    BookID INT FOREIGN KEY REFERENCES Book(BookID) NOT NULL,
)

Insert Into ShoppingCart
(MemberID, BookID)
Values
    (6, 1),
    (3, 2),
    (4, 3),
    (1, 4),
    (8, 5),
    (5, 6),
    (7, 7),
    (1,8),
    (6, 9),
    (3, 10),
    (5, 11),
    (8, 12),
    (9, 13),
    (10, 14),
    (3, 15),
    (4, 16),
    (1, 16),
    (7, 17),
    (3, 18),
    (1, 18),
    (6, 19),
    (10, 20)

CREATE TABLE Sales(
    SaleID INT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
    MemberID INT FOREIGN KEY REFERENCES Member(MemberID) NOT NULL,
    OrderStatus NVARCHAR(50) NOT NULL CHECK (OrderStatus IN ('To Ship', 'Shipped', 'Delivered', 'Received')),
    PaymentDetail NVARCHAR(50) NOT NULL CHECK (PaymentDetail IN ('E-Wallet', 'Credit Card', 'Debit Card', 'Cash')),
    PaymentDate DATE NOT NULL,
    ShippingDate DATE,
    DeliveryDate DATE
)

Insert Into Sales
(MemberID, OrderStatus, PaymentDetail, PaymentDate, ShippingDate, DeliveryDate)
Values
    (1, 'Shipped', 'Debit Card', '2024-06-28', '2024-06-30', Null),
    (2, 'Received', 'E-Wallet', '2023-09-10', '2023-09-11', '2023-09-14'),
    (2, 'Delivered', 'Credit Card', '2024-06-30', '2024-07-05', '2024-07-10'),
    (3, 'Received', 'Debit Card', '2024-05-11', '2024-05-12', '2024-05-16'), 
    (3, 'Received', 'Debit Card', '2024-05-11', '2024-05-13', '2024-05-15'),
    (4, 'To Ship', 'Cash', '2024-07-17', Null, Null),
    (5, 'Delivered', 'Debit Card', '2024-07-01', '2024-07-03', '2024-07-10'),
    (6, 'Received', 'Debit Card', '2023-10-08', '2023-10-10', '2023-10-14'),
    (7, 'Shipped', 'E-Wallet', '2024-07-10', '2024-07-13', Null),
    (7, 'Shipped', 'E-Wallet', '2024-07-11', '2024-07-13', Null),
    (8, 'Received', 'E-Wallet', '2024-05-22', '2024-05-23', '2024-05-25'),
    (9, 'To Ship', 'Credit Card', '2024-07-19', Null, Null),
    (10, 'Received', 'Cash', '2024-01-29', '2024-02-02', '2024-02-11'),
    (10, 'Received', 'E-Wallet', '2024-02-04', '2024-02-08', '2024-02-13')

CREATE TABLE SalesBook(
    SalesBookID INT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
    SaleID INT NOT NULL FOREIGN KEY REFERENCES Sales(SaleID),
    BookID INT FOREIGN KEY REFERENCES Book(BookID) NOT NULL,
    Quantity INT NOT NULL DEFAULT 1,
	Rating INT,
	Feedback nvarchar(200)
)

INSERT INTO SalesBook
    (SaleID, BookID, Quantity, Rating, Feedback)
VALUES
    (1, 5, 1, null, null),
    (1, 9, 1, null, null),
    (1, 17, 1, null, null),
    (2, 4, 1, 4, 'Could be better, ending was not what I hoped for.'),
    (3, 8, 1, null, null),
    (4, 3, 1, 5, 'I loved it!'),
    (4, 11, 1, 5, 'This book was very enjoyable too.'),
    (5, 16, 1, 4, 'Really enjoyed it. But the ending felt like it was rushed.'),
    (5, 19, 1, 5, 'It had a really deep meaning. I enjoyed it.'),
    (6, 4, 1, null, null),
    (6, 17, 1, null, null),
    (7, 7, 1, null, null),
    (8, 2, 1, 3, 'It really was not what I expected.'),
    (8, 10, 1, 1, 'Title is misleading! I did not want this. Might ask for a refund.'),
    (8, 20, 1, 4, 'This one was okay. Could have been even better'),
    (9, 8, 2, null, null),
    (10, 18, 2, null, null),
    (11, 6, 1, 5, 'Good book'),
    (11, 13, 1, 5, 'Nice'),
    (12, 14, 1, null, null),
    (13, 15, 2, 5, 'Bought one for me and my father, we both really enjoyed it!'),
    (14, 19, 1, 5, 'This was also a good book. I really enjoyed reading it.')


CREATE TABLE EmployeeList(
	EmployeeID INT NOT NULL IDENTITY (1,1) PRIMARY KEY,
	FirstName NVARCHAR(50),
	LastName NVARCHAR(50),
	Rank NVARCHAR(50)
)

Insert Into EmployeeList
    (FirstName, LastName, Rank)
Values
    ('Mario', 'Mario', 'Store Owner'),
    ('Luigi', 'Mario', 'Finance Manager'),
    ('Jackson', 'Wang', 'Store Manager'),
    ('Joker', 'Xue', 'Employee'),
    ('Jay', 'Chou', 'Employee')


CREATE TABLE BookOrder(
    OrderID INT NOT NULL IDENTITY (1,1) PRIMARY KEY,
    BookID INT FOREIGN KEY REFERENCES Book(BookID) NOT NULL,
	EmployeeID INT FOREIGN KEY REFERENCES EmployeeList(EmployeeID),
    Quantity INT NOT NULL DEFAULT 1,
    Date DATE NOT NULL
)

Insert Into BookOrder
    (BookID, EmployeeID, Quantity, Date)
Values
    (3, 1, 3, '2023-07-21'),
    (4, 1, 2, '2023-08-28'),
    (3, 5, 1, '2023-09-11'),
    (11, 3, 2, '2023-09-21'),
    (12, 4, 1, '2024-01-21'),
    (13, 3, 1, '2024-02-22')

-- i. Test Fail - BETWEEN DATE is inclusive, so this statement would range up to 2025 - 21:19 20-07-2024 Alwin
SELECT M.FirstName, M.LastName, COUNT(*) AS TotalOrdersIn2024 FROM Member M JOIN Sales S ON M.MemberID = S.MemberID
    WHERE S.PaymentDate BETWEEN '2024-01-01' AND '2025-01-01'
    GROUP BY M.FirstName, M.LastName
-- i. Test Pass - 21:23 20-07-2024 Alwin
SELECT M.FirstName, M.LastName, COUNT(*) AS TotalOrdersIn2024 FROM Member M JOIN Sales S ON M.MemberID = S.MemberID
    WHERE S.PaymentDate BETWEEN '2024-01-01' AND '2024-12-31'
    GROUP BY M.FirstName, M.LastName


-- ii. Test Pass - 21:19 20-07-2024 Alwin
SELECT Member.FirstName, Member.LastName, Member.ContactNumber, Member.EmailAddress, COUNT(*) AS UndeliveredOrder
    FROM Member JOIN Sales ON Member.MemberID = Sales.MemberID WHERE Sales.OrderStatus != 'Delivered' AND Sales.OrderStatus != 'Received' 
    GROUP BY FirstName, LastName, ContactNumber, EmailAddress

-- iii.
SELECT Name, COUNT(*) AS QuantitySold, AVG(CAST(Rating AS DECIMAL(10,2))) AS AverageRating, COUNT(Feedback) AS FeedbackCount
    FROM Book JOIN Sales ON Book.BookID = Sales.BookID 
    WHERE Sales.PaymentDetail IS NOT NULL AND Sales.PaymentDate IS NOT NULL
    GROUP BY Name

--iv. Find the book(s) that written by more than 2 authors. Display the name of the book and name of the authors.

SELECT b.BookID, b.Name,
    STUFF((SELECT ', ' + a.Name
    FROM BookAuthor ba
    JOIN AuthorDetails a ON ba.AuthorID = a.AuthorID
    WHERE ba.BookID = b.BookID
    FOR XML PATH(''), TYPE).value('.', 'NVARCHAR(MAX)'), 1, 2, '') AS Authors
    FROM Book b
    JOIN BookAuthor ba ON b.BookID = ba.BookID
    GROUP BY b.BookID, b.Name
    HAVING COUNT(ba.AuthorID) > 2;

-- v.
SELECT Member.MemberID, Member.FirstName, Member.LastName, (SELECT Name FROM Book WHERE Book.BookID = Sales.BookID) AS BookName
    FROM Member JOIN Sales ON Member.MemberID = Sales.MemberID
    WHERE Sales.OrderStatus = 'Shopping Cart'
    ORDER BY MemberID ASC
    --GROUP BY Member.MemberID

-- vi.
SELECT MONTH(S.PaymentDate) AS month, SUM(I.Quantity) AS total_sales
    FROM SaleItem I
    JOIN Sales S ON I.SaleID = S.SaleID
    WHERE YEAR(S.PaymentDate) = 2023
    GROUP BY MONTH(S.PaymentDate)
    ORDER BY month

--vii Find the bestselling book(s) per genre. Display the name and description of the book(s). 
SELECT B.Genre, B.Name, B.Description FROM Book B
    JOIN Sales S ON B.BookID = S.BookID
    GROUP BY B.Genre, B.Name, B.Description
    HAVING COUNT(S.OrderID) = (
        SELECT MAX(BookSales) 
        FROM (
            SELECT COUNT(S1.OrderID) AS BookSales FROM Book B1
            JOIN Sales S1 ON B1.BookID = S1.BookID
            WHERE B1.Genre = B.Genre
            GROUP BY B1.BookID
        ) AS GenreSales
    )

-- viii.
Select * From Book
    SELECT B.Name, B.Description FROM Book B
    JOIN SaleItem I ON B.BookID = I.BookID
    JOIN (SELECT BookID, MIN(Rating) AS min_rating FROM SaleItem GROUP BY BookID)
    min_ratings ON I.BookID = min_ratings.BookID AND I.Rating = min_ratings.min_rating
    JOIN (SELECT B.Genre, MIN(I.Rating) AS GenreMinRating
    FROM Book B JOIN SaleItem I ON B.BookID = I.BookID GROUP BY B.Genre)
    genre_min ON B.genre = genre_min.genre AND I.Rating = genre_min.GenreMinRating


--ix Find the total number of books ordered by store manager from each publisher.  
SELECT SUM(Amount) AS TotalNumberOfBooks, PublisherID AS PublisherID FROM Orders
GROUP BY PublisherID

--x. Find the number(s) of books per genre published by each publisher.

SELECT p.Name AS PublisherName, b.Genre,
    COUNT(b.BookID) AS NumberOfBooks FROM Publisher p
    JOIN Book b ON p.PublisherID = b.PublisherID
    GROUP BY p.Name, b.Genre
