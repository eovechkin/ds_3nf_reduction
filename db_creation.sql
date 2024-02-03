CREATE TABLE "Customers" (
  "id" integer PRIMARY KEY,
  "first_name" varchar NOT NULL,
  "last_name" varchar,
  "gender_id" integer NOT NULL,
  "DOB" date,
  "job_id" integer NOT NULL,
  "address_id" integer NOT NULL,
  "wealth_segment_id" integer NOT NULL,
  "deceased_indicator" bool NOT NULL,
  "owns_car" bool NOT NULL,
  "property_valuation" integer NOT NULL
);

CREATE TABLE "Jobs" (
  "id" integer PRIMARY KEY,
  "title" varchar,
  "industry_category" varchar NOT NULL
);

CREATE TABLE "Addresses" (
  "id" integer PRIMARY KEY,
  "street" varchar NOT NULL,
  "building_number" varchar,
  "postcode" char(4) NOT NULL,
  "state" varchar NOT NULL,
  "country" varchar NOT NULL
);

CREATE TABLE "Genders" (
  "id" integer PRIMARY KEY,
  "gender" varchar NOT NULL
);

CREATE TABLE "WealthSegments" (
  "id" integer PRIMARY KEY,
  "segment" varchar NOT NULL
);

CREATE TABLE "Transactions" (
  "id" integer PRIMARY KEY,
  "product_id" integer NOT NULL,
  "customer_id" integer NOT NULL,
  "transaction_date" date NOT NULL,
  "online_order" bool,
  "order_status_id" integer NOT NULL
);

CREATE TABLE "OrderStatuses" (
  "id" integer PRIMARY KEY,
  "status" varchar NOT NULL
);

CREATE TABLE "Products" (
  "id" integer PRIMARY KEY,
  "product_id" integer,
  "brand_id" integer,
  "product_line_id" integer,
  "product_class_id" integer,
  "product_size_id" integer,
  "list_price" decimal NOT NULL,
  "standart_cost" decimal
);

CREATE TABLE "Brands" (
  "id" integer PRIMARY KEY,
  "brand" varchar NOT NULL
);

CREATE TABLE "ProductLines" (
  "id" integer PRIMARY KEY,
  "line" varchar NOT NULL
);

CREATE TABLE "ProductClasses" (
  "id" integer PRIMARY KEY,
  "class" varchar NOT NULL
);

CREATE TABLE "ProductSizes" (
  "id" integer PRIMARY KEY,
  "size" varchar NOT NULL
);

ALTER TABLE "Customers" ADD FOREIGN KEY ("job_id") REFERENCES "Jobs" ("id");

ALTER TABLE "Customers" ADD FOREIGN KEY ("address_id") REFERENCES "Addresses" ("id");

ALTER TABLE "Customers" ADD FOREIGN KEY ("gender_id") REFERENCES "Genders" ("id");

ALTER TABLE "Customers" ADD FOREIGN KEY ("wealth_segment_id") REFERENCES "WealthSegments" ("id");

ALTER TABLE "Transactions" ADD FOREIGN KEY ("customer_id") REFERENCES "Customers" ("id");

ALTER TABLE "Transactions" ADD FOREIGN KEY ("product_id") REFERENCES "Products" ("id");

ALTER TABLE "Transactions" ADD FOREIGN KEY ("order_status_id") REFERENCES "OrderStatuses" ("id");

ALTER TABLE "Products" ADD FOREIGN KEY ("brand_id") REFERENCES "Brands" ("id");

ALTER TABLE "Products" ADD FOREIGN KEY ("product_line_id") REFERENCES "ProductLines" ("id");

ALTER TABLE "Products" ADD FOREIGN KEY ("product_class_id") REFERENCES "ProductClasses" ("id");

ALTER TABLE "Products" ADD FOREIGN KEY ("product_size_id") REFERENCES "ProductSizes" ("id");