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
	available int
	
	CONSTRAINT PK_Furniture PRIMARY KEY (id)
)

--Insert Data
INSERT INTO Furniture VALUES ('Sofa 2 Dudukan Vienna', '3.899.000', '162 x 95 x 86', 'Custard vienna, graphite vienna, ruby vienna', 'Solid wood', 'https://fabelio.com/media/catalog/product/w/i/wina_2_seater_sofa__custard__1_1.jpg', 0);
INSERT INTO Furniture VALUES ('Sofa Tempat Tidur Mochi', '3.500.000', '160 x 95 x 90', 'Custard vienna, graphite vienna, ruby vienna', 'Solid wood', 'https://fabelio.com/media/catalog/product/r/2/r2710.jpg', 1);
INSERT INTO Furniture VALUES ('Sofa 2 Dudukan Zelado', '4.299.000', '162 x 95 x 86', 'Graphite vienna, teal vienna', 'Hollow steel', 'https://fabelio.com/media/catalog/product/z/e/zelado-2-seater-sofa---custard-01.jpg', 1);
INSERT INTO Furniture VALUES ('Sofa 2 Dudukan Toril', '2.899.000', '160 x 95 x 90', 'Blue jay, ruby vienna', 'Solid wood', 'https://fabelio.com/media/catalog/product/t/o/Toril_2_Seater_Sofa_(Paradise)_1.jpg', 1);
INSERT INTO Furniture VALUES ('Sofa Tempat Tidur Deacon', '3.299.000', '150 x 90 x 80', 'Custard vienna, graphite vienna', 'Hollow steel', 'https://fabelio.com/media/catalog/product/d/e/deacon_white_1_1_1.jpg', 1);
INSERT INTO Furniture VALUES ('Sofa Java', '3.869.100', '142 x 90 x 80', 'Custard vienna, graphite vienna', 'Solid wood', 'https://fabelio.com/media/catalog/product/t/a/Taby_Java_2_Seater_Living_Set_(Sugar)_1.jpg', 1);
INSERT INTO Furniture VALUES ('Sofa 1 Dudukan Hughes', '2.500.000', '90 x 82 x 58', 'Custard vienna, graphite vienna, ruby vienna', 'Solid wood', 'https://fabelio.com/media/catalog/product/h/u/Hughes_Armchair_(Wood)_0.jpg', 1);
INSERT INTO Furniture VALUES ('Sofa 1 Dudukan Taby', '2.399.000', '90 x 82 x 58', 'Brown vienna, ruby vienna', 'Solid wood', 'https://fabelio.com/media/catalog/product/t/a/Taby_Armchair_(Jezebel)_1.jpg', 1);
INSERT INTO Furniture VALUES ('Sofa 1 Dudukan Zoey', '2.399.000', '90 x 82 x 58', 'Brown vienna, ruby vienna', 'Hollow steel', 'https://fabelio.com/media/catalog/product/k/u/Kursi_Zoey_Armchair_(Brown)_0.jpg', 1);
INSERT INTO Furniture VALUES ('Sofa 1 Dudukan Vienna', '2.199.000', '90 x 82 x 58', 'Custard vienna, graphite vienna, ruby vienna', 'Solid wood', 'https://fabelio.com/media/catalog/product/w/i/wina_armchair__graphite__1_1.jpg', 1);


