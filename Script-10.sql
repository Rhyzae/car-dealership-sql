create or replace function add_dealership(_dealership_id INTEGER, _dealership_name VARCHAR, _address VARCHAR, _car_brand VARCHAR)
returns void
as $MAIN$
begin
	insert into dealership(dealership_id, dealership_name, address, car_brand)
	values (_dealership_id, _dealership_name, _address, _car_brand);
end;
$MAIN$
language plpgsql;

select add_dealership(1, 'Grover Nissan', '123 Maple St, Palm Beach, FL 33333', 'Nissan')

select add_dealership(2, 'Brand New Honda', '555 Olive Cr, New York, NY 55555', 'Honda')

insert into customer(customer_id, first_name, last_name) values (1, 'Jacob', 'Hallows')
insert into customer(customer_id, first_name, last_name) values (2, 'Grant', 'Foreman');
insert into customer(customer_id, first_name, last_name) values (3, 'Frank', 'Durshowitz');
insert into customer(customer_id, first_name, last_name) values (4, 'Remy', 'Buxaplenty');

insert into salesperson(salesperson_id, first_name, last_name, dealership_id) values (1, 'Josh', 'Valor', 1);
insert into salesperson(salesperson_id, first_name, last_name, dealership_id) values (2, 'Corbin', 'Milford', 1);
insert into salesperson(salesperson_id, first_name, last_name, dealership_id) values (3, 'Jesus', 'Grenada', 2);
insert into salesperson(salesperson_id, first_name, last_name, dealership_id) values (4, 'Xander', 'Winters', 2);

insert into available_car(car_id, make, model, manufacture_year, listed_price, dealership_id)
values (1, 'Nissan', 'Sentra', 2018, 18500, 1);
insert into available_car(car_id, make, model, manufacture_year, listed_price, dealership_id)
values (2, 'Nissan', 'Rogue', 2020, 27300, 1);
insert into available_car(car_id, make, model, manufacture_year, listed_price, dealership_id)
values (3, 'Honda', 'Civic', 2015, 19700, 2);
insert into available_car(car_id, make, model, manufacture_year, listed_price, dealership_id)
values (4, 'Honda', 'Accord', 2023, 31000, 2);

insert into purchase(purchase_id, purchase_price, dealership_id, salesperson_id, customer_id, car_id)
values(1, 25600, 1, 2, 2, 2);
insert into purchase(purchase_id, purchase_price, dealership_id, salesperson_id, customer_id, car_id)
values(2, 33000, 2, 3, 4, 4);

select * from dealership
select * from salesperson
select * from customer
select * from purchase