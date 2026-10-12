CREATE TABLE Loan (
loan_id INT PRIMARY KEY,
loan_type VARCHAR(30),
loan_amount DECIMAL(12,2),
interest_rate DECIMAL(5,2),
branch_id INT,
FOREIGN KEY (branch_id) REFERENCES Branch(branch_id)
);
