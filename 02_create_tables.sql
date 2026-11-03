USE Digital_Warranty_Tracker;

CREATE TABLE IF NOT EXISTS Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE
);

CREATE TABLE IF NOT EXISTS Categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    brand VARCHAR(100),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

CREATE TABLE IF NOT EXISTS Purchases (
    purchase_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    product_id INT NOT NULL,
    purchase_date DATE NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    CHECK (price >= 0)
);

CREATE TABLE IF NOT EXISTS Warranty (
    warranty_id INT AUTO_INCREMENT PRIMARY KEY,
    purchase_id INT NOT NULL UNIQUE,
    duration_months INT NOT NULL,
    expiry_date DATE NOT NULL,
    FOREIGN KEY (purchase_id) REFERENCES Purchases(purchase_id),
    CHECK (duration_months > 0)
);

CREATE TABLE IF NOT EXISTS Service_Records (
    service_id INT AUTO_INCREMENT PRIMARY KEY,
    purchase_id INT NOT NULL,
    service_date DATE NOT NULL,
    description VARCHAR(255),
    cost DECIMAL(10,2) DEFAULT 0,
    FOREIGN KEY (purchase_id) REFERENCES Purchases(purchase_id),
    CHECK (cost >= 0)
);
