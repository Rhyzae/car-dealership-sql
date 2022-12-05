create table dealership(
	dealership_id SERIAL primary key,
	dealership_name VARCHAR(200),
	address VARCHAR(200),
	car_brand VARCHAR(50)
);

create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

create table salesperson(
	salesperson_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	dealership_id INTEGER,
	foreign key (dealership_id) references dealership(dealership_id)
);

create table available_car(
	car_id SERIAL primary key,
	make VARCHAR(50),
	model VARCHAR(50),
	manufacture_year numeric(4,0),
	listed_price INTEGER,
	dealership_id INTEGER,
	foreign key (dealership_id) references dealership(dealership_id)
);

create table purchase(
	purchase_id SERIAL primary key,
	purchase_price INTEGER,
	dealership_id INTEGER,
	salesperson_id INTEGER,
	customer_id INTEGER,
	car_id INTEGER,
	foreign key (dealership_id) references dealership(dealership_id),
	foreign key (salesperson_id) references salesperson(salesperson_id),
	foreign key (customer_id) references customer(customer_id),
	foreign key (car_id) references available_car(car_id)
);