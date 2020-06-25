--Choose Database
USE intern

--Create Furniture
CREATE TABLE Furniture 
(
	id int identity,
	productName varchar(200),
	price varchar(200),
	dimension varchar(200),
	colours varchar(200),
	material varchar(200),
	picture varchar(500),
	
	CONSTRAINT PK_Furniture PRIMARY KEY (id)
)

--Insert Data
INSERT INTO Furniture VALUES ('Sofa 2 dudukan Vienna', '3899000', '162 x 95 x 86', 'custard vienna, graphite vienna, ruby vienna', 'solid wood', 'https://fabelio.com/media/catalog/product/w/i/wina_2_seater_sofa__custard__1_1.jpg');
INSERT INTO Furniture VALUES ('Sofa Tempat Tidur Mochi', '3500000', '160 x 95 x 90', 'custard vienna, graphite vienna, ruby vienna', 'solid wood', 'https://fabelio.com/media/catalog/product/r/2/r2710.jpg');
INSERT INTO Furniture VALUES ('Sofa 2 dudukan Zelado', '4299000', '162 x 95 x 86', 'graphite vienna, teal vienna', 'hollow steel', 'https://fabelio.com/media/catalog/product/z/e/zelado-2-seater-sofa---custard-01.jpg');
INSERT INTO Furniture VALUES ('Sofa 2 dudukan Toril', '2899000', '160 x 95 x 90', 'blue jay, ruby vienna', 'solid wood', 'https://fabelio.com/media/catalog/product/t/o/Toril_2_Seater_Sofa_(Paradise)_1.jpg');
INSERT INTO Furniture VALUES ('Sofa Tempat Tidur Deacon', '3299000', '150 x 90 x 80', 'custard vienna, graphite vienna', 'hollow steel', 'https://fabelio.com/media/catalog/product/d/e/deacon_white_1_1_1.jpg');
INSERT INTO Furniture VALUES ('Sofa Java', '3869100', '142 x 90 x 80', 'custard vienna, graphite vienna', 'solid wood', 'https://fabelio.com/media/catalog/product/t/a/Taby_Java_2_Seater_Living_Set_(Sugar)_1.jpg');
INSERT INTO Furniture VALUES ('Sofa 1 dudukan Hughes', '2500000', '90 x 82 x 58', 'custard vienna, graphite vienna, ruby vienna', 'solid wood', 'https://fabelio.com/media/catalog/product/h/u/Hughes_Armchair_(Wood)_0.jpg');
INSERT INTO Furniture VALUES ('Sofa 1 dudukan Taby', '2399000', '90 x 82 x 58', 'brown vienna, ruby vienna', 'solid wood', 'https://fabelio.com/media/catalog/product/t/a/Taby_Armchair_(Jezebel)_1.jpg');
INSERT INTO Furniture VALUES ('Sofa 1 dudukan Zoey', '2399000', '90 x 82 x 58', 'brown vienna, ruby vienna', 'hollow steel', 'https://fabelio.com/media/catalog/product/k/u/Kursi_Zoey_Armchair_(Brown)_0.jpg');
INSERT INTO Furniture VALUES ('Sofa 1 dudukan Vienna', '2199000', '90 x 82 x 58', 'custard vienna, graphite vienna, ruby vienna', 'solid wood', 'https://fabelio.com/media/catalog/product/w/i/wina_armchair__graphite__1_1.jpg');

--Update Table
ALTER TABLE Furniture
add available int;

--Update Data
UPDATE Furniture
SET available = 1

UPDATE Furniture
SET available = 0
where productName = 'Sofa 2 dudukan Vienna'
