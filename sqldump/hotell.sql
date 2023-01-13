CREATE TABLE hotell(
hotell_id INT PRIMARY KEY KEY AUTO_INCREMENT,
image VARCHAR(2500) DEFAULT "https://img.freepik.com/premium-vector/flat-hotel-building-background_23-2148146118.jpg?w=2000",
description VARCHAR(2500) NOT NULL,
address VARCHAR(2500) NOT NULL);

CREATE TABLE rooms(
	room_id INT PRIMARY KEY AUTO_INCREMENT,
	hotell_id INT NOT NULL,
	FOREIGN KEY (hotell_id) REFERENCES hotell(hotell_id),
	type VARCHAR(255),
	amenities SET('wifi','sauna','tv')
);

CREATE TABLE reservations(
    reserve_id INT PRIMARY KEY AUTO_INCREMENT,
    room_id INT NOT NULL,
    FOREIGN KEY (room_id) REFERENCES rooms(room_id),
    begindate DATETIME NOT NULL,
    enddate DATETIME NOT NULL,
    comments VARCHAR(2500)
);

CREATE TABLE hotelli_andmed(
    andmete_id INT(6) PRIMARY KEY,
    hotelli_id_fk int(6),
    FOREIGN KEY (hotelli_id_fk) REFERENCES hotell(hotell_id),
    stars int(1) NOT NULL,
    address VARCHAR(255),
    pictures VARCHAR(2500) DEFAULT "https://img.freepik.com/premium-vector/flat-hotel-building-background_23-2148146118.jpg?w=2000",
    teenused SET('Massage', 'Breakfast', 'Pool', 'Beach', 'Dinner'));

insert into hotelli_andmed (andmete_id, hotelli_id_fk, stars, address, teenused) values (1, 1, 2, '13th Floor', 'Massage');
insert into hotelli_andmed (andmete_id, hotelli_id_fk, stars, address, teenused) values (2, 2, 1, '12th Floor', 'Massage');
insert into hotelli_andmed (andmete_id, hotelli_id_fk, stars, address, teenused) values (3, 3, 5, '19th Floor', 'Massage');
insert into hotelli_andmed (andmete_id, hotelli_id_fk, stars, address, teenused) values (4, 4, 3, '10th Floor', 'Massage');
insert into hotelli_andmed (andmete_id, hotelli_id_fk, stars, address, teenused) values (5, 5, 5, 'Room 1519', 'Massage');
insert into hotelli_andmed (andmete_id, hotelli_id_fk, stars, address, teenused) values (6, 6, 1, 'Suite 28', 'Massage');
insert into hotelli_andmed (andmete_id, hotelli_id_fk, stars, address, teenused) values (7, 7, 5, 'PO Box 90999', 'Massage');
insert into hotelli_andmed (andmete_id, hotelli_id_fk, stars, address, teenused) values (8, 8, 4, 'Apt 674', 'Massage');
insert into hotelli_andmed (andmete_id, hotelli_id_fk, stars, address, teenused) values (9, 9, 5, '4th Floor', 'Massage');
insert into hotelli_andmed (andmete_id, hotelli_id_fk, stars, address, teenused) values (10, 10, 1, 'PO Box 95614', 'Massage');