-- 1. Create "mkyong" user with password: "password"
-- 2. Execute the script below:


--------------------------------------------------------
--  DDL for Table STOCK
--------------------------------------------------------

  CREATE TABLE "MKYONG"."STOCK" 
   ("STOCK_ID" NUMBER, 
	"STOCK_CODE" VARCHAR2(10 BYTE), 
	"STOCK_NAME" VARCHAR2(20 BYTE)
   );
--------------------------------------------------------
--  DDL for Index STOCK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MKYONG"."STOCK_PK" ON "MKYONG"."STOCK" ("STOCK_ID");
--------------------------------------------------------
--  DDL for Index UNI_STOCK_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "MKYONG"."UNI_STOCK_ID" ON "MKYONG"."STOCK" ("STOCK_CODE");
--------------------------------------------------------
--  DDL for Index UNI_STOCK_NAME
--------------------------------------------------------

  CREATE UNIQUE INDEX "MKYONG"."UNI_STOCK_NAME" ON "MKYONG"."STOCK" ("STOCK_NAME");
--------------------------------------------------------
--  Constraints for Table STOCK
--------------------------------------------------------

  ALTER TABLE "MKYONG"."STOCK" ADD CONSTRAINT "UNI_STOCK_NAME" UNIQUE ("STOCK_NAME");
  ALTER TABLE "MKYONG"."STOCK" ADD CONSTRAINT "UNI_STOCK_CODE" UNIQUE ("STOCK_CODE");
  ALTER TABLE "MKYONG"."STOCK" ADD CONSTRAINT "STOCK_PK" PRIMARY KEY ("STOCK_ID");
  ALTER TABLE "MKYONG"."STOCK" MODIFY ("STOCK_CODE" NOT NULL ENABLE);
  ALTER TABLE "MKYONG"."STOCK" MODIFY ("STOCK_ID" NOT NULL ENABLE);
  ALTER TABLE "MKYONG"."STOCK" MODIFY ("STOCK_NAME" NOT NULL ENABLE);
  
  
  
  --------------------------------------------------------
--  DDL for Sequence STOCK_SEQ
--------------------------------------------------------

  CREATE SEQUENCE "MKYONG"."STOCK_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 ORDER  CYCLE ;

   
--------------------------------------------------------
--  DDL for Table CATEGORY
--------------------------------------------------------

  CREATE TABLE "MKYONG"."CATEGORY" 
   (	"CATEGORY_ID" NUMBER, 
	"NAME" VARCHAR2(10 BYTE), 
	"DESCRIPTION" VARCHAR2(255 BYTE)
   );
--------------------------------------------------------
--  DDL for Index CATEGORY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MKYONG"."CATEGORY_PK" ON "MKYONG"."CATEGORY" ("CATEGORY_ID");
--------------------------------------------------------
--  Constraints for Table CATEGORY
--------------------------------------------------------

  ALTER TABLE "MKYONG"."CATEGORY" ADD CONSTRAINT "CATEGORY_PK" PRIMARY KEY ("CATEGORY_ID");
  ALTER TABLE "MKYONG"."CATEGORY" MODIFY ("DESCRIPTION" NOT NULL ENABLE);
  ALTER TABLE "MKYONG"."CATEGORY" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "MKYONG"."CATEGORY" MODIFY ("CATEGORY_ID" NOT NULL ENABLE);
  
   --------------------------------------------------------
--  DDL for Sequence CATEGORY_SEQ
--------------------------------------------------------

  CREATE SEQUENCE "MKYONG"."CATEGORY_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 ORDER  CYCLE ;
 
  
  --------------------------------------------------------
--  DDL for Table STOCK_CATEGORY
--------------------------------------------------------

  CREATE TABLE "MKYONG"."STOCK_CATEGORY" 
   (	"STOCK_ID" NUMBER, 
	"CATEGORY_ID" NUMBER, 
	"CREATED_DATE" DATE, 
	"CREATED_BY" VARCHAR2(10 BYTE)
   );
--------------------------------------------------------
--  DDL for Index STOCK_CATEGORY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MKYONG"."STOCK_CATEGORY_PK" ON "MKYONG"."STOCK_CATEGORY" ("STOCK_ID");
--------------------------------------------------------
--  Constraints for Table STOCK_CATEGORY
--------------------------------------------------------

  ALTER TABLE "MKYONG"."STOCK_CATEGORY" ADD CONSTRAINT "STOCK_CATEGORY_PK" PRIMARY KEY ("STOCK_ID");
  ALTER TABLE "MKYONG"."STOCK_CATEGORY" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "MKYONG"."STOCK_CATEGORY" MODIFY ("CREATED_DATE" NOT NULL ENABLE);
  ALTER TABLE "MKYONG"."STOCK_CATEGORY" MODIFY ("CATEGORY_ID" NOT NULL ENABLE);
  ALTER TABLE "MKYONG"."STOCK_CATEGORY" MODIFY ("STOCK_ID" NOT NULL ENABLE);

