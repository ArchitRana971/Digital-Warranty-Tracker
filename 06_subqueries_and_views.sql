USE Digital_Warranty_Tracker;

-- 1. Find purchases costing more than the average purchase price
SELECT *
FROM Purchases
WHERE price > (SELECT AVG(price) FROM Purchases);

-- 2. Find users who have made at least one purchase
SELECT name
FROM Users
WHERE user_id IN (SELECT user_id FROM Purchases);

-- 3. Create a view showing purchase and warranty information
CREATE OR REPLACE VIEW Purchase_Warranty_View AS
SELECT
    pu.purchase_id,
    u.name AS customer,
    p.product_name,
    p.brand,
    pu.purchase_date,
    pu.price,
    w.duration_months,
    w.expiry_date
FROM Purchases pu
JOIN Users u ON pu.user_id = u.user_id
JOIN Products p ON pu.product_id = p.product_id
LEFT JOIN Warranty w ON pu.purchase_id = w.purchase_id;

-- 4. Display the view
SELECT * FROM Purchase_Warranty_View;

-- 5. Count products in each category
SELECT
    c.category_name,
    COUNT(p.product_id) AS product_count
FROM Categories c
LEFT JOIN Products p ON c.category_id = p.category_id
GROUP BY c.category_id, c.category_name;
