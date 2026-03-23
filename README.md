# Library Data Analysis using SQL

## Problem Statement

The goal of this project is to read the **"Library Information System(LIS)"** data, analyze it, understand user behaviours, book demands, and optimise the efficiency of the inventory. 

## SQL Techniques Used:

-**JOIN** operations to combine multiple tables.

-**Aggregation** functions like **COUNT()**.

-**GROUP BY** for summarisation.

-Filtering using **WHERE** and **HAVING**.

## Analysis & Key Insights

### Basic Analysis

#### Questions
1. What is the total number of books in the library?

2. What is the total inventory of book copies?

3. What is the total number of books issued?

#### Key Insights:

1. The library contains **20 books** .

2. The library has a total of **60 copies**.

3. A total of **21 books** have been issued.

### User Activity Analysis

#### Questions:

1. Which library members are the most frequent borrowers?

2. Who are the top five most frequent borrowers from the library?

3. Which library members have never borrowed books?

#### Key Insights

1. There are **20 members** who borrowed the most books which includes **M0045** at the top with **2** books.

2. Top **5** most frequent borrowers are **0045**,**M0048**, **M0001**, **M0020** and **M0010**.

3. There are **48** library members who have never borrowed any books which include **M0015**, **M0017** and many more.

### Book Demand Analysis

#### Questions

1. Which are the most borrowed books?

2. Which authors are most popular?

3. Which books have high demand but limited copies?

#### Key Insights

1. There are **21 books** that are borrowed the most.

2. There are **15 authors** which standout with **Mike** and **Kamthane** at the top.

3. There are **20 books** which have high demand but limited copies and **"Programming in C"** tops the list.


### Department Analysis

#### Questions

1. Which department uses the library the most?

2. Who uses the library more students or faculty?

#### Key Insights

1. **CS Department** uses the library the most.

2. Student uses the library more than faculty as **20 students** use the library whereas only **1 faculty** member uses the library.

### Inventory & Efficiency Analysis

#### Questions

1. Which books are never borrowed?

2. What are the titles of the books that are never issued?

3. Which books are issued more than once?

#### Key Insights

1. There are **39 books** that are never borrowed.

2. There are **7 books** that are never borrowed which includes **"Database Management System Oracle SQL"**,**"Computer Science Textbook for Class 11"** and many more.

3. There are no books that are issued more than once.

### Timed Based Analysis

#### Questions

1. How does book borrowing vary by date?

2. Which are the days when the books are borrowed the most?

#### Key Insights

1. On **1st August** there were **6** book issues and on **11th August** there were **3** book issues. Other than these two dates there were only **1** issues or no issues.

2. **1st August** and **11th August** are the two days on which the books are borrowed the most.

## Recommendations

**1. Increase the Stock of High Demand Books.**

      - Increase the number of copies of the books that are frequently issued.
      
      - Introducing a queue system where the user needs to wait in order to get high demand books.
      
**2. Create a environment where using Library becomes a norm.**

      - Identify inactive members and send them reminders or notifications via an app or email.
      
      - Introducing reading challenges or **streak** system to increase participation.
      
**3. Optimise Inventory Management.**

      - Remove the books that are never used/issued or stack it somewhere else so that the available place can be filled with popular demand books.

      - Reallocate budget to focus on highly demanded categories.
      
**4. Give Personalized Book Recommendations.**
      
      - Suggest books to users based on their borrowing history.

      -Recommend popular books within the same department or by analysing a trend.
      
**5. Peak Time Management.**

      - Increase staff or extend hours during high-usage days specially during exams.

      - Ensure that the stock of high demand books are enough during peak periods.
      
**6. Increasing Book Rotation.**
      
      -Rotate underused or unused books with highly used books thereby increasing profitability.

      - Highlight underused books under a "Recommended Reads" section.
      
**7. Tracking borrowing trends.**

      - Continously track borrowing trends.

      - Update the inventory based on the number of issues and the demand .

**8. Real Time Tracking System.**
      
      - Implementing a digital dashboard for real-time tracking of the data.

      - Enabling search for availability for tracking users.
