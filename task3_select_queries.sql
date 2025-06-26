-- 1. Select all columns from Authors
SELECT * FROM Authors;

-- 2. Select specific columns from Books
SELECT title, year, isbn FROM Books;

-- 3. Select books published after 2000
SELECT * FROM Books
WHERE year > 2000;

-- 4. Select members with non-null emails
SELECT name, email FROM Members
WHERE email IS NOT NULL;

-- 5. Find books with 'Harry' in the title
SELECT * FROM Books
WHERE title LIKE '%Harry%';

-- 6. Find members who joined between Jan and March 2023
SELECT * FROM Members
WHERE membership_date BETWEEN '2023-01-01' AND '2023-03-31';

-- 7. Sort books by year descending
SELECT * FROM Books
ORDER BY year DESC;

-- 8. Limit output to first 2 records from Publishers
SELECT * FROM Publishers
LIMIT 2;

-- 9. Join Books with Authors to show book titles and author names
SELECT B.title, A.name AS author
FROM Books B
JOIN Authors A ON B.author_id = A.author_id;

-- 10. Show list of loans where return_date is still NULL
SELECT L.loan_id, M.name AS member, B.title AS book
FROM Loans L
JOIN Members M ON L.member_id = M.member_id
JOIN Books B ON L.book_id = B.book_id
WHERE L.return_date IS NULL;
