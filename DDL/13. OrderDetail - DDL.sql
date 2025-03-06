CREATE TABLE "ORDERDETAIL" 
   (	"ORDERKEY" VARCHAR2(10), 
	"PRODUCTKEY" NUMBER(5,0), 
	"QUANTITY" NUMBER(2,0) DEFAULT 1, 
	"CATALOGPRICE" NUMBER(7,2), 
	"DISCOUNTAMOUNT" NUMBER(7,2), 
	"DISCOUNTPCTG" NUMBER(2,0) DEFAULT 5, 
	"TRANSACTIONPRICE" NUMBER(7,2)
   ) ;

ALTER TABLE "ORDERDETAIL" ADD CONSTRAINT "ORDERDETAIL_PK" PRIMARY KEY ("ORDERKEY", "PRODUCTKEY") ;

ALTER TABLE "ORDERDETAIL" ADD CONSTRAINT "ORDERDETAIL_ORDER_FK" FOREIGN KEY ("ORDERKEY")
	  REFERENCES "ORDERHEADER" ("ORDERKEY") ON DELETE CASCADE ENABLE;
 
  ALTER TABLE "ORDERDETAIL" ADD CONSTRAINT "ORDERDETAIL_PRODUCT_FK" FOREIGN KEY ("PRODUCTKEY")
	  REFERENCES "PRODUCT" ("PRODUCTKEY") ENABLE;