CREATE TABLE Customer_Loan (
customer_id INT,
loan_id INT,
apply_date DATE,
PRIMARY KEY (customer_id, loan_id),
FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
FOREIGN KEY (loan_id) REFERENCES Loan(loan_id)
);
