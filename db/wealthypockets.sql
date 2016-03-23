DROP TABLE Merchants;
DROP TABLE Categories;
DROP TABLE Income;
DROP TABLE Transactions;

CREATE TABLE Merchants (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE Categories (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE Income (
  id SERIAL8 PRIMARY KEY,
  amount FLOAT8,
  type VARCHAR(255),
  income_date date
);

CREATE TABLE Transactions (
  id SERIAL8 PRIMARY KEY,
  amount FLOAT8,
  merchant_id INT8 REFERENCES merchants(id),
  category_id INT8 REFERENCES categories(id),
  transaction_date date
);