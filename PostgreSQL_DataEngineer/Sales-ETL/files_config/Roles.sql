-- ADMINISTRANDO ROLES Y USUARIOS

CREATE ROLE ADMIN_SALES;

GRANT USAGE ON SCHEMA brz_sales_mx,slv_sales_mx,gld_sales_mx to ADMIN_SALES;


GRANT SELECT,INSERT,UPDATE,TRUNCATE
ON 
brz_sales_mx.dim_salesperson,
brz_sales_mx.dim_region,
brz_sales_mx.dim_products,
brz_sales_mx.dim_calendar,
brz_sales_mx.fact_sales,
slv_sales_mx.dim_salesperson,
slv_sales_mx.dim_region,
slv_sales_mx.dim_products,
slv_sales_mx.dim_calendar,
slv_sales_mx.fact_sales
TO ADMIN_SALES WITH GRANT OPTION;


CREATE USER USR_PG_SALES_PY WITH PASSWORD 'P05TGR3SQL_2023#' CONNECTION LIMIT 1 IN ROLE ADMIN_SALES;


-- VERIFIQUEMOS EL USUARIO
SELECT * FROM pg_user;