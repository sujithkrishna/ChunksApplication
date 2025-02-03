create table finance (current_finance_amount float(53), finance_amount float(53), finance_creation_date date not null, id bigint generated by default as identity, finance_name varchar(255) not null, finance_owner_name varchar(255) not null, finance_type varchar(255) not null, primary key (id))

insert into finance (current_finance_amount,finance_amount,finance_creation_date,finance_name,finance_owner_name,finance_type,id) values (?,?,?,?,?,?,default)
