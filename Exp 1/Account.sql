CREATE TABLE Account (
account_no INT PRIMARY KEY,
account_type ENUM("Savings","Current") NOT NULL,
balance DECIMAL(12,2) DEFAULT 0.00,
open_date DATE,
customer_id INT,
branch_id INT,
FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
FOREIGN KEY (branch_id) REFERENCES Branch(branch_id)
);
