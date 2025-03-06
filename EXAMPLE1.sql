create table Product(
ProductKey NUMBER(5) CONSTRAINT Product_PK PRIMARY KEY,
ProductCode VARCHAR2(12) CONSTRAINT productcode_nn NOT NULL,
ProductName VARCHAR2(40) CONSTRAINT productname_nn NOT NULL, 
CONSTRAINT Product_Code_UQ UNIQUE (ProductCode),
CONSTRAINT Product_NAME_UQ UNIQUE (ProductName)
);