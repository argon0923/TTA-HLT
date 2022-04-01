CREATE DATABASE movies;

USE movies;

CREATE TABLE top_movies_2021(
Title VARCHAR(100) PRIMARY KEY, 
Studio VARCHAR(100),
Genre VARCHAR(100),
Budget decimal(6,2), 
Box_office decimal(6,2)	
);

EXPLAIN top_movies_2021;

INSERT INTO top_movies_2021 (Top_5_movies_2021, Studio, Genre, Budget, Box_office)
VALUES
("Spiderman", "Sony", "Action", 200, 1876),
("F9", "Universal", "Action", 200, 726),
("Venom", "Sony", "Action", 110, 502),
("Shangchi", "Walt Disney", "Action", 175, 418),
("Blackwidow", "Walt Disney", "Action", 200, 380)
;

SELECT * FROM top_movies_2021;


-- Create second table	

CREATE TABLE Bottom_movies_2021(
Title VARCHAR(100) PRIMARY KEY, 
Studio VARCHAR(100),
Genre VARCHAR(100),
Budget decimal(6,2), 
Box_office decimal(6,2)	
);

EXPLAIN Bottom_movies_2021;

INSERT INTO Bottom_movies_2021 (Bottom_5_movies_2021, Studio, Genre, Budget, Box_office)
VALUES
("Kaamelott", "Paramount", "Fantasy", 17, 22),
("Earwij", "GKIDS", "Fantasy", 10, 0.84),
("The Resort", "Vertical", "Horror", 1.17, 0.21),
("Groundhog Day", "Sony", "Comedy", 15, 0.2),
("My Country", "CMC", "Drama", 1.45, 0.17)
;

SELECT * FROM Bottom_movies_2021;


-- Update a record
UPDATE Bottom_movies_2021
SET Budget = 3.55
WHERE Bottom_5_movies_2021 = "My Country";

SELECT * FROM Bottom_movies_2021;

-- Joining tables

SELECT top_movies_2021.Box_office , Bottom_movies_2021.Box_office
FROM top_movies_2021
INNER JOIN Bottom_movies_2021
ON top_movies_2021.Box_office = Bottom_movies_2021.Box_office;

-- selecting data 
SELECT *
FROM top_movies_2021
INNER JOIN Bottom_movies_2021
WHERE top_movies_2021.Box_office = Bottom_movies_2021.Box_office AND Bottom_movies_2021 = "Action";

-- select using comparison operators
SELECT * FROM Bottom_movies_2021
WHERE Box_office between 0 and 5;
