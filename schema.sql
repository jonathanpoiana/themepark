CREATE table staff (
    id serial primary key, -- this is a primary key 
    name varchar (255) --a string 
); 
CREATE table building (
    id serial primary key, 
    name varchar (255)
); 
CREATE table parkinglot (
    id serial primary key, 
    name varchar (255),
    capacity int, --this is a int(number)
    utilization int
); 
CREATE table buildingmaintenance (
    id serial primary key, 
    message varchar (255),
    building int references building(id), -- foreign key reference 
    staff int references staff(id)
); 