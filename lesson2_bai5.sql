create database lesson2_bai5;

use lesson2_bai5;

create table customers (
    cID int not null auto_increment primary key,
    cName varchar(50),
    cAge int
);

create table orders (
    oID int auto_increment primary key ,
    oDate datetime,
    oTotalprice int,
    cID int,
    foreign key (cID) references customers (cID)
);

create table products (
    pID int not null auto_increment primary key ,
    pName varchar(50),
    pPrice int
);

create table orderdetails (
    oID int not null ,
    pID int not null ,
    odQuantity int,
    primary key (oID, pID),
    foreign key (oID) references orders (oID),
    foreign key (pID) references products (pID)
);