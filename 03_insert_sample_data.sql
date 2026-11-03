USE Digital_Warranty_Tracker;

INSERT INTO Users (name, email) VALUES
('Aarav Sharma', 'aarav@example.com'),
('Meera Verma', 'meera@example.com');

INSERT INTO Categories (category_name) VALUES
('Laptops'),
('Mobile Phones'),
('Audio Devices'),
('Home Appliances');

INSERT INTO Products (product_name, brand, category_id) VALUES
('IdeaPad Slim 5', 'Lenovo', 1),
('Galaxy A55', 'Samsung', 2),
('Tune 770NC', 'JBL', 3),
('Mixer Grinder', 'Philips', 4),
('iPhone 15', 'Apple', 2);

INSERT INTO Purchases (user_id, product_id, purchase_date, price) VALUES
(1, 1, '2026-02-10', 68999.00),
(1, 3, '2026-04-15', 5999.00),
(2, 2, '2025-12-20', 39999.00),
(2, 4, '2026-01-05', 3499.00),
(1, 5, '2024-08-12', 69900.00);

INSERT INTO Warranty (purchase_id, duration_months, expiry_date) VALUES
(1, 12, '2027-02-10'),
(2, 12, '2027-04-15'),
(3, 24, '2027-12-20'),
(4, 24, '2028-01-05'),
(5, 12, '2025-08-12');

INSERT INTO Service_Records (purchase_id, service_date, description, cost) VALUES
(1, '2026-06-12', 'Keyboard inspection', 0.00),
(3, '2026-03-08', 'Screen replacement', 2500.00),
(4, '2026-05-21', 'Mixer jar replacement', 450.00);
