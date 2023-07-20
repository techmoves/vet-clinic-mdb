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

  