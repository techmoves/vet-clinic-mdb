/* Populate database with sample data. */

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg, species) 
VALUES 
(1, 'Agumon', '2020-02-03', 0, true, 10.23),
(2, 'Gabumon', '2018-11-15', 2, true, 8),
(3, 'Pikachu', '2021-01-07', 1, false, 15.04), 
(4, 'Devimon', '2017-05-12', 5, true, 11);


INSERT INTO animals (id, name, neutered, escape_attempts, weight_kg, date_of_birth, species)
VALUES (5,'Charmander', false, 0, 11, '2020-02-08', 'digimon');

INSERT INTO animals (id, name, neutered, escape_attempts, weight_kg, date_of_birth, species)
VALUES (6,'Plantmon', true, 2, -5.7, '2021-11-15', 'digimon');

INSERT INTO animals (id, name, neutered, escape_attempts, weight_kg, date_of_birth, species)
VALUES (7,'Squirtle', false, 3, -12.13, '1993-04-02', 'digimon');

INSERT INTO animals (id, name, neutered, escape_attempts, weight_kg, date_of_birth, species)
VALUES (8, 'Angemon', false, 1, -45, '2005-06-12', 'digimon');

INSERT INTO animals (id, name, neutered, escape_attempts, weight_kg, date_of_birth, species)
VALUES (9, 'Boarmon', true, 7, 20.4, '2005-06-07', 'digimon');

INSERT INTO animals (id, name, neutered, escape_attempts, weight_kg, date_of_birth, species)
VALUES (10, 'Blossom', true, 3, 17, '1998-10-13', 'digimon');

INSERT INTO animals (id, name, neutered, escape_attempts, weight_kg, date_of_birth, species)
VALUES (11, 'Ditto', true, 4, 22, '2022-04-14', 'digimon');



--   Insert the following data into the owners table:

INSERT INTO owners (full_name, age)
VALUES ('sam Smith',34);

INSERT INTO owners (full_name, age)
VALUES ('Jennifer Orwell',19);

INSERT INTO owners (full_name, age)
VALUES ('Bob',45);

INSERT INTO owners (full_name, age)
VALUES ('Melody Pond ',77);

INSERT INTO owners (full_name, age)
VALUES ('Dean Winchester',14);

INSERT INTO owners (full_name, age)
VALUES ('Jodie Whittaker',38);



-- under species table
INSERT INTO species (name) VALUES ('Pokemon');
INSERT INTO species (name) VALUES ('Digimon');


UPDATE animals SET species_id = (SELECT id FROM species WHERE name = 'Digimon') WHERE name LIKE '%mon';

-- Update species_id for animals not ending with "mon" (Pokemon)
UPDATE animals
SET owner_id = (SELECT id FROM species WHERE name = 'Pokemon')
WHERE name NOT LIKE '%mon';


-- Modify your inserted animals to include owner information (owner_id): 

UPDATE animals
SET owner_id = (SELECT id FROM owners WHERE full_name = 'sam Smith')
WHERE name = 'Agumon';

UPDATE animals
SET owner_id = (SELECT id FROM owners WHERE full_name = 'Jennifer Orwell')
WHERE name IN ('Gabumon', 'Pikachu');

UPDATE animals
SET owner_id = (SELECT id FROM owners WHERE full_name = 'Bob')
WHERE name IN ('evimon','Plantmon');

UPDATE animals
SET owner_id = (SELECT id FROM owners WHERE full_name = 'Melody Pond')
WHERE name IN ('Charmander','Squirtle','Blossom');

UPDATE animals
SET owner_id = (SELECT id FROM owners WHERE full_name = 'Dean Winchester')
WHERE name IN ('Angemon', 'Boarmon');

