USE Digital_Warranty_Tracker;

-- 1. Display all registered users
SELECT * FROM Users;

-- 2. Display all products
SELECT * FROM Products;

-- 3. Display all purchases with price and purchase date
SELECT * FROM Purchases;

-- 4. Find products belonging to the Mobile Phones category
SELECT product_name, brand
FROM Products
WHERE category_id = (
    SELECT category_id
    FROM Categories
    WHERE category_name = 'Mobile Phones'
);

-- 5. Find purchases costing more than Rs. 10,000
SELECT * FROM Purchases
WHERE price > 10000;

-- 6. Show total amount spent
SELECT SUM(price) AS total_purchase_amount
FROM Purchases;

-- 7. Show average purchase price
SELECT AVG(price) AS average_purchase_price
FROM Purchases;

-- 8. Count registered purchases
SELECT COUNT(*) AS total_purchases
FROM Purchases;

-- 9. Show warranties that have expired
SELECT * FROM Warranty
WHERE expiry_date < CURDATE();

-- 10. Show warranties expiring in the next 30 days
SELECT * FROM Warranty
WHERE expiry_date BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 30 DAY);
