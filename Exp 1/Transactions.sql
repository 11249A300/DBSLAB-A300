CREATE TABLE Transactions (
txn_id INT PRIMARY KEY,
txn_date DATE,
txn_type ENUM("Deposit","Withdrawal"),
amount DECIMAL(10,2),
account_no INT,
FOREIGN KEY (account_no) REFERENCES Account(account_no)
);
