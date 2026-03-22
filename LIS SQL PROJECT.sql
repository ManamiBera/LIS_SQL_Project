-- BASIC ANALYSIS --

-- 1.What is the total number of books in the library?
SELECT COUNT(*) AS total_books
FROM book_catalogue;

-- 2.What is the total inventory of book copies?
SELECT COUNT(*) AS total_copies
FROM book_copies;

-- 3.What is the total number of books issued?
SELECT COUNT(*) AS total_books_issued
FROM book_issue;


-- USER ACTIVITY ANALYSIS --
-- 1.Which library members are the most frequent borrowers?
SELECT member_no, COUNT(*) AS total_books
FROM book_issue
GROUP BY member_no
ORDER BY total_books DESC;

-- 2.Who are the top five most frequent borrowers from the library?
SELECT member_no, COUNT(*) AS total_books
FROM book_issue
GROUP BY member_no
ORDER BY total_books DESC
LIMIT 5;

-- 3.Which library members have never borrowed books?
SELECT member_no
FROM members 
WHERE member_no NOT IN(
	SELECT member_no FROM book_issue
);


-- BOOK DEMAND ANALYSIS --

-- 1.Which are the most borrowed books?
SELECT accession_no, COUNT(*) AS total_issues
FROM book_issue
GROUP BY accession_no
ORDER BY total_issues DESC;

-- 2.Which authors are most popular?
SELECT ba.author_fname, COUNT(*) AS total_issues
FROM book_issue bi
JOIN book_copies bc ON bi.accession_no = bc.accession_no
JOIN book_authors ba ON bc.isbn_no = ba.isbn_no
GROUP BY ba.author_fname
ORDER BY total_issues DESC;

-- 3.Which books have high demand but limited copies?
SELECT bc.title,
COUNT(DISTINCT bcp.accession_no) AS total_copies,
COUNT(bi.accession_no) AS total_issues
FROM book_catalogue bc
JOIN book_copies bcp ON bc.isbn_no = bcp.isbn_no
LEFT JOIN book_issue bi ON bcp.accession_no = bi.accession_no
GROUP BY bc.title
ORDER BY total_issues DESC;


-- DEPARTMENT ANALYSIS --

-- 1.Which department uses the library the most?
SELECT s.department_code,COUNT(*) AS total_usage
FROM book_issue bi
JOIN members m ON bi.member_no = m.member_no
JOIN students s ON m.roll_no = s.roll_no
GROUP BY s.department_code
ORDER BY total_usage DESC;

-- 2.Who uses the library more students or faculty?
SELECT member_class, COUNT(*) AS total_usage
FROM members m
JOIN book_issue bi ON m.member_no = bi.member_no
GROUP BY member_class;


-- INVENTORY & EFFICIENECY ANALYSIS --

-- 1.Which books are never borrowed?
SELECT accession_no
FROM book_copies 
WHERE accession_no NOT IN(
	SELECT accession_no FROM book_issue
);

-- 2.What are the titles of the books that are never issued?
SELECT bc.title
FROM book_catalogue bc
WHERE bc.isbn_no NOT IN(
	SELECT bcp.isbn_no
	FROM book_copies bcp
	JOIN book_issue bi ON bcp.accession_no = bi.accession_no
)

-- 3.Which books are issued more than once?
SELECT accession_no, COUNT(*) AS issue_count
FROM book_issue
GROUP BY accession_no
HAVING COUNT(*) > 1;


-- TIME-BASED ANALYSIS --
-- 1.How does book borrowing vary by date?
SELECT doi, COUNT(*) AS total_issues
FROM book_issue
GROUP BY doi
ORDER BY doi;

-- 2.Which are the days when the books are borrowed the most?
SELECT doi, COUNT(*) AS total_issues
FROM book_issue
GROUP BY doi
ORDER BY total_issues DESC;
