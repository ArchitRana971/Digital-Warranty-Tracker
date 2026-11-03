USE Digital_Warranty_Tracker;

-- 1. Display purchases with user and product names
SELECT
    pu.purchase_id,
    u.name AS customer,
    p.product_name,
    p.brand,
    pu.purchase_date,
    pu.price
FROM Purchases pu
JOIN Users u ON pu.user_id = u.user_id
JOIN Products p ON pu.product_id = p.product_id;

-- 2. Display product, category and warranty expiry
SELECT
    p.product_name,
    c.category_name,
    w.duration_months,
    w.expiry_date
FROM Purchases pu
JOIN Products p ON pu.product_id = p.product_id
JOIN Categories c ON p.category_id = c.category_id
JOIN Warranty w ON pu.purchase_id = w.purchase_id;

-- 3. Display service history with product details
SELECT
    p.product_name,
    s.service_date,
    s.description,
    s.cost
FROM Service_Records s
JOIN Purchases pu ON s.purchase_id = pu.purchase_id
JOIN Products p ON pu.product_id = p.product_id;
