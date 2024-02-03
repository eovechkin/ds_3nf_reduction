-- Вспомогательные таблицы

insert into "Genders" (id, gender)
values (1, 'Female'), (2, 'Male');

insert into  "WealthSegments" (id, segment)
values (1, 'Mass Customer'), (2, 'Affluent Customer'), (3, 'High Net Worth');

-- Jobs

insert into "Jobs" (id, title, industry_category)
values 
	(1, 'Executive Secretary', 'Health'), 
	(2, 'Administrative Officer', 'Financial Services'), 
	(3, 'Recruiting Manager', 'Property'),
	(4, null, 'IT'),
	(5, 'Senior Editor', 'n/a'),
	(6, null, 'Retail'),
	(7, null, 'Financial Services'),
	(8, 'Media Manager I', 'n/a'),
	(9, 'Business Systems Development Analyst', 'Argiculture'),
	(10, 'Senior Quality Engineer', 'Financial Services'),
	(11, null, 'Property'),
	(12, 'Nuclear Power Engineer', 'Manufacturing');


-- Addresses

insert into "Addresses" (id, building_number, street, postcode, state, country)
values
	(1, '060', 'Morning Avenue', 2016, 'New South Wales', 'Australia'),
	(2, '6', 'Meadow Vale Court', 2153,	'New South Wales', 'Australia'),
	(3, '0', 'Holy Cross Court',	4211,	'QLD', 'Australia'),
	(4, '17979', 'Del Mar Point', 2448, 'New South Wales', 'Australia'),
	(5, '9', 'Oakridge Court', 3216, 'VIC', 'Australia'),
	(6, '4', 'Delaware Trail', 2210, 'New South Wales', 'Australia'),
	(7, '49', 'Londonderry Lane', 2650, 'New South Wales', 'Australia'),
	(8, '97736', '7th Trail', 2023, 'New South Wales', 'Australia'),
	(9, '93405', 'Ludington Park', 3044, 'VIC', 'Australia'),
	(10, '44339', 'Golden Leaf Alley', 4557, 'QLD', 'Australia'),
	(11, '2', 'Sutherland Street', 3799, 'VIC', 'Australia'),
	(12, '9', 'Mcbride Trail', 2760, 'New South Wales', 'Australia');

-- Customers

insert into "Customers" (id, first_name, last_name, gender_id, "DOB", job_id, address_id, wealth_segment_id, deceased_indicator, owns_car, property_valuation)
values
	(1, 'Laraine', 'Medendorp', 1, '1953-10-12', 1, 1, 1, false, true, 10),
	(2, 'Eli', 'Bockman', 2, '1980-12-16', 2, 2, 1, false, true, 10),
	(3, 'Arlin', 'Dearle', 2 ,'1954-01-20', 3, 3, 1, false, true, 9),
	(4, 'Talbot', null, 2, '1961-10-03', 4, 4, 1, false, false, 4),
	(5, 'Sheila-kathryn', 'Calton', 1, '1977-05-13', 5, 5, 2, false, true, 9),
	(6, 'Curr', 'Duckhouse', 2, '1966-09-16', 6, 6, 3, false, true, 9),
	(7, 'Fina', 'Merali', 1, '1976-02-23', 7, 7, 2, false, true, 4),
	(8, 'Rod', 'Inder', 2, '1962-03-30', 8, 8, 1, false, false, 12),
	(9, 'Mala', 'Lind', 1, '1973-03-10', 9, 9, 2, false, true, 8),
	(10, 'Fiorenze', 'Birdall', 1, '1988-10-11', 10, 10, 1, false, true, 4),
	(11, 'Uriah', 'Bisatt', 2, '1954-04-30', 11, 11, 1, false, false, 6),
	(12, 'Sawyere', 'Flattman', 2, '1994-07-21', 12, 12, 1, false, false, 8);

-- Products

insert into "ProductClasses"  (id, class)
values (1, 'high'), (2, 'medium'), (3, 'low');

insert into "ProductLines" (id, line)
values (1, 'Standard'), (2, 'Road'), (3, 'Mountain'), (4, 'Touring');

insert into "ProductSizes" (id, size)
values (1, 'large'), (2, 'medium'), (3, 'small');

insert into "Brands" (id, brand)
values (1, 'Solex'), (2, 'Trek Bicycles'), (3, 'OHM Cycles'), (4, 'Norco Bicycles'), (5, 'Giant Bicycles'), (6, 'WeareA2B');

insert into "Products" (id, product_id, brand_id, product_line_id, product_class_id, product_size_id, list_price, standart_cost) 
values
	(1, 86, 3, 1, 2, 2, 235.63, 125.07),
	(2, 0,	2, 1, 1, 2, 358.39, 215.03),
	(3, 34,	4, 2, 1, 1, 774.53, 464.72),
	(4, 1,	5, 1, 2, 2, 1403.5, 954.82),
	(5, 23,	4, 3, 3, 3, 688.63, 612.88),
	(6, 59,	1, 1, 2, 1, 1061.56, 733.58),
	(7, 84,	2, 2, 2, 2, 290.62, 215.14),
	(8, 85, 6, 1, 2, 2, 752.64, 205.36),
	(9, 15, 4, 1, 3, 2, 958.74, 748.90),
	(10, 38, 1, 1, 2, 2, 1577.53, 826.51);

-- Transactions

insert into "OrderStatuses"  (id, status)
values (1, 'Approved'), (2, 'Cancelled');

insert into "Transactions" (id, product_id, customer_id, transaction_date, online_order, order_status_id)
values 
	(1, 1, 1, '2017-12-23', false, 1),
	(2, 2, 6, '2017-05-21', false, 1),
	(3, 3, 5, '2017-08-16', false, 1),
	(4, 4, 2, '2017-05-04', true, 1),
	(5, 5, 5, '2017-03-03', true, 1),
	(6, 6, 9, '2017-05-10', false, 1),
	(7, 7, 5, '2017-05-03', false, 1),
	(8, 8, 9, '2017-03-06', false, 1),
	(9, 9, 8, '2017-09-22', true, 1),
	(10, 10, 1, '2017-04-06', true, 1);

