-- Create Database (just owners and DBA's can create database) in POSTGRESQL

CREATE DATABASE "dev_ventas"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8';

CREATE DATABASE "qa_ventas"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8';

CREATE DATABASE "prod_ventas"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8';

-- Create schemas (just owners and DBA's can create database), en every enviroment

CREATE SCHEMA brz_sales_mx;
CREATE SCHEMA slv_sales_mx;
CREATE SCHEMA gld_sales_mx;

-- Structure defined by Data Governance

-- TABLE SALES PERSON

CREATE TABLE brz_sales_mx.dim_salesperson (
	EMPLOYEEID SMALLINT NOT NULL,
	EMPLOYEEKEY INT NOT NULL,
	NAMEMAIN VARCHAR(100) NOT NULL,
    LASTNAME VARCHAR(100) NOT NULL,
    POSITION VARCHAR(100) NOT NULL,
    MAIL VARCHAR(100) NOT NULL,
    USR_LOAD VARCHAR(10) NOT NULL,
    DT_CREATION DATE
);

CREATE TABLE slv_sales_mx.dim_salesperson (
	EMPLOYEE_ID SMALLINT NOT NULL,
	EMPLOYEE_KEY INT NOT NULL,
	FULL_NAME VARCHAR(100) NOT NULL,
    POSITION VARCHAR(100) NOT NULL,
    MAIL VARCHAR(100) NOT NULL,
    USR_LOAD VARCHAR(10) NOT NULL,
    DT_CREATION DATE
);


-- TABLE REGION

CREATE TABLE brz_sales_mx.dim_region (
	TERRITORYKEY SMALLINT NOT NULL,
	NOTE VARCHAR(100) NOT NULL,
	RATE FLOAT NOT NULL,
    USR_LOAD VARCHAR(10) NOT NULL,
    DT_CREATION DATE
);

CREATE TABLE slv_sales_mx.dim_region (
	TERRITORY_ID SMALLINT NOT NULL,
	REGION VARCHAR(60) NOT NULL,
	COUNTRY VARCHAR(60) NOT NULL,
	CONTINENT_GROUP VARCHAR(60) NOT NULL,
	RATE DECIMAL(19,2) NOT NULL,
    USR_LOAD VARCHAR(10) NOT NULL,
    DT_CREATION DATE
);


-- TABLE PRODUCTS

CREATE TABLE brz_sales_mx.dim_products (
    PRODUCTNAME VARCHAR(100) NOT NULL,
	STANDARCOST FLOAT NOT NULL,
	CATEGORY VARCHAR(100) NOT NULL,
    SUBCATEGORY VARCHAR(100) NOT NULL,
    COLOR VARCHAR(100) NOT NULL,
    SIZESTR VARCHAR(100) NOT NULL,
    INDEXSTR SMALLINT NOT NULL,
    KEYPRODUCT VARCHAR(100) NOT NULL,
    USR_LOAD VARCHAR(10) NOT NULL,
    DT_CREATION DATE
);

CREATE TABLE slv_sales_mx.dim_products (
    PRODUCT_ID VARCHAR(60) NOT NULL,
    PRODUCT_NAME VARCHAR(100) NOT NULL,
	STANDAR_COST DECIMAL(19,2) NOT NULL,
	CATEGORY VARCHAR(60) NOT NULL,
    SUBCATEGORY VARCHAR(60) NOT NULL,
    COLOR_PRODUCT VARCHAR(50) NOT NULL,
    SIZE_PRODUCT VARCHAR(50) NOT NULL,
    USR_LOAD VARCHAR(10) NOT NULL,
    DT_CREATION DATE
);

-- TABLE DIM_CALENDAR
CREATE TABLE brz_sales_mx.dim_calendar (
	DATE_DT DATE NOT NULL,
	YEAR_DT INT NOT NULL,
	MONTH_DT INT NOT NULL,
	DAY_DT INT NOT NULL,
	WEEKDAY_DT INT NOT NULL,
    USR_LOAD VARCHAR(10) NOT NULL,
    DT_CREATION DATE NOT NULL
);

CREATE TABLE slv_sales_mx.dim_calendar (
	DATE_YMD DATE NOT NULL,
	YR SMALLINT NOT NULL,
	MNTH SMALLINT NOT NULL,
	DY SMALLINT NOT NULL,
	WK_DY SMALLINT NOT NULL,
    USR_LOAD VARCHAR(10) NOT NULL,
    DT_CREATION DATE NOT NULL
);


-- TABLE FACT_SALES
CREATE TABLE brz_sales_mx.fact_sales (
	ORDERDATE DATE NOT NULL,
	KEYPRODUCT VARCHAR(100) NOT NULL,
	TERRITORYKEY INT NOT NULL,
	EMPLOYEEKEY INT NOT NULL,
	QUANTITY INT NOT NULL,
    USR_LOAD VARCHAR(10) NOT NULL,
    DT_CREATION DATE NOT NULL
);

CREATE TABLE slv_sales_mx.fact_sales (
	ORDER_DATE DATE NOT NULL,
	PRODUCT_ID VARCHAR(100) NOT NULL,
	TERRITORY_ID INT NOT NULL,
	EMPLOYEE_ID INT NOT NULL,
	QUANTITY INT NOT NULL,
    USR_LOAD VARCHAR(10) NOT NULL,
    DT_CREATION DATE NOT NULL
);