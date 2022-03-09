CREATE table staff (
    id serial primary key, -- this is a primary key 
    first_name varchar (255), --a string 255 long
    last_name varchar (255),
    age int,
    phone varchar (255),
    email varchar (255) UNIQUE,
    department varchar (255),
    rolename varchar (255),
    pay int
); 
CREATE table building (
    id serial primary key, 
    name varchar (255) UNIQUE
); 
CREATE table parkinglot (
    id serial primary key, 
    name varchar (255) UNIQUE,
    capacity int, -- this is a int(number)
    utilization int
); 
CREATE table buildingmaintenance (
    id serial primary key, 
    message varchar (255),
    building int references building(id), -- foreign key reference 
    staff int references staff(id)
); 
CREATE table admission (
    id serial primary key, -- this is a primary key 
    amount int -- this is a int(number) 
); 
CREATE table ride (
    id serial primary key, 
    name varchar (255) UNIQUE,
    staff int references staff(id)
); 
CREATE table ridemaintenance (
    id serial primary key, 
    ride int references ride(id),
    staff int references staff(id),
    message varchar (255)
); 
CREATE table ticket (
    id serial primary key,
    admission int references admission(id),
    ride int references ride(id)
);
CREATE table fooditem (
    id serial primary key,
    name varchar (255) UNIQUE,
    amount int
);
CREATE table foodsale (
    id serial primary key,
    item int references fooditem(id),
    quantity int
);
CREATE table merchitem (
    id serial primary key,
    name varchar (255) UNIQUE,
    amount int
);
CREATE table merchsale (
    id serial primary key,
    item int references merchitem(id),
    quantity int
);