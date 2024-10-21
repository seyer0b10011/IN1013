-- Update 1

INSERT INTO petEvent VALUES ('Fluffy', '2020-10-15', 'vet', 'antibiotics');

-- Update 2

INSERT INTO petPet VALUES ('Hammy', 'Diane', 'Hamster', 'M', '2010-10-30', NULL);

INSERT INTO petEvent VALUES ('Hammy', '2020-10-15', 'vet', 'antibiotics');

-- Update 3

UPDATE petEvent SET remark = "5 kittens, 3 female, 2 male" WHERE (petname, eventdate) = ("Fluffy", "1995-05-15");

-- Update 4

UPDATE petEvent SET petname = "Claws" WHERE (petname, eventdate) = ("Slim", "1997-08-03");

-- Update 5

UPDATE petPet SET death = "2020-09-01" WHERE petname = "Puffball";

-- Update 6

DELETE FROM petEvent WHERE petname = "Buffy";
DELETE FROM petPet WHERE petname = "Buffy";

SELECT * FROM petPet;