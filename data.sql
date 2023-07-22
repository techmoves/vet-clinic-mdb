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



-- Insert the following data for vets: 
INSERT INTO vets (name, age, date_of_graduation)
VALUES ('William Tatcher',45, '2000-04-23');

INSERT INTO vets (name, age, date_of_graduation)
VALUES ('Maisy Smith',26, '2019-01-17');

INSERT INTO vets (name, age, date_of_graduation)
VALUES ('Stephanie Mendez',64, '1981-04-04');

INSERT INTO vets (name, age, date_of_graduation)
VALUES ('William Tatcher',45, '2008-06-08');


-- -- Insert the following data for specializations:
INSERT INTO specializations (vet_id, species_id)
VALUES (1, 1),         
       (3, 2),         
       (3, 1),         
       (4, 2);        


-- -- Insert the following data for visits: 
-- INSERT INTO visits (species, name, visit_date)
-- VALUES ('Agumon', 'william Tatcher', '2020-05-24');

-- INSERT INTO visits (species, name, visit_date)
-- VALUES ('Agumon', 'Stephanie Mendez', '2020-07-22'); 

-- INSERT INTO visits (species, name, visit_date)
-- VALUES ('Gabumon', 'Jack Harkness', '2021-02-02');

-- INSERT INTO visits (species, name, visit_date)
-- VALUES ('Pikachu', 'Maisy Smith' , '2020-01-05');

-- INSERT INTO visits (species, name, visit_date)
-- VALUES ('Pikachu', 'Maisy Smith', '2020-03-08');

-- INSERT INTO visits (species, name, visit_date)
-- VALUES ('Pikachu', 'Maisy Smith', '2020-05-14');

-- INSERT INTO visits (species, name, visit_date)
-- VALUES ('Devimon' , 'Stephanie Mendez', '2021-05-04');

-- INSERT INTO visits (species, name, visit_date)
-- VALUES ('Charmander', 'Jack Harkness', '2021-02-24');

-- INSERT INTO visits (species, name, visit_date)
-- VALUES ('Plantmon', 'Maisy Smith' '2019-12-21');

-- INSERT INTO visits (species, name, visit_date)
-- VALUES ('Plantmon', 'william Tatcher', '2020-08-10');

-- INSERT INTO visits (species, name, visit_date)
-- VALUES ('Plantmon', 'Maisy Smith', '2021-04-07');

-- INSERT INTO visits (species, name, visit_date)
-- VALUES ('Squirtle', 'Stephanie Mendez', '2019-09-29');

-- INSERT INTO visits (species, name, visit_date)
-- VALUES ('Angemon', 'Jack Harkness', '2020-10-03');

-- INSERT INTO visits (species, name, visit_date)
-- VALUES ('Angemon', 'Jack Harkness','2020-11-04');

-- INSERT INTO visits (species, name, visit_date)
-- VALUES ('Boarmon', 'Maisy Smith', '2020-01-24');

-- INSERT INTO visits (species, name, visit_date)
-- VALUES ('Boarmon', 'Maisy Smith', '2019-05-15');

-- INSERT INTO visits (species, name, visit_date)
-- VALUES ('Boarmon', 'Maisy Smith', '2020-02-27');

-- INSERT INTO visits (species, name, visit_date)
-- VALUES ('Boarmon', 'Maisy Smith', '2020-08-03');

-- INSERT INTO visits (species, name, visit_date)
-- VALUES ('Blossom', 'Stephanie Mendez', '2020-05-24');

-- INSERT INTO visits (species, name, visit_date)
-- VALUES ('Blossom','William Tatcher', '2020-01-11');


INSERT INTO visits (animal_id, vet_id, date_of_visit)
VALUES
    (1, 1, '2020-05-24'), -- Agumon visited William Tatcher on May 24th, 2020.
    (1, 3, '2020-07-22'), -- Agumon visited Stephanie Mendez on Jul 22th, 2020.
    (3, 4, '2021-02-02'), -- Gabumon visited Jack Harkness on Feb 2nd, 2021.
    (2, 2, '2020-01-05'), -- Pikachu visited Maisy Smith on Jan 5th, 2020.
    (2, 2, '2020-03-08'), -- Pikachu visited Maisy Smith on Mar 8th, 2020.
    (2, 2, '2020-05-14'), -- Pikachu visited Maisy Smith on May 14th, 2020.
    (4, 3, '2021-05-04'), -- Devimon visited Stephanie Mendez on May 4th, 2021.
    (5, 4, '2021-02-24'), -- Charmander visited Jack Harkness on Feb 24th, 2021.
    (6, 2, '2019-12-21'), -- Plantmon visited Maisy Smith on Dec 21st, 2019.
    (6, 1, '2020-08-10'), -- Plantmon visited William Tatcher on Aug 10th, 2020.
    (6, 2, '2021-04-07'), -- Plantmon visited Maisy Smith on Apr 7th, 2021.
    (7, 3, '2019-09-29'), -- Squirtle visited Stephanie Mendez on Sep 29th, 2019.
    (8, 4, '2020-10-03'), -- Angemon visited Jack Harkness on Oct 3rd, 2020.
    (8, 4, '2020-11-04'), -- Angemon visited Jack Harkness on Nov 4th, 2020.
    (9, 2, '2019-01-24'), -- Boarmon visited Maisy Smith on Jan 24th, 2019.
    (9, 2, '2019-05-15'), -- Boarmon visited Maisy Smith on May 15th, 2019.
    (9, 2, '2020-02-27'), -- Boarmon visited Maisy Smith on Feb 27th, 2020.
    (9, 2, '2020-08-03'), -- Boarmon visited Maisy Smith on Aug 3rd, 2020.
    (10, 3, '2020-05-24'), -- Blossom visited Stephanie Mendez on May 24th, 2020.
    (10, 1, '2021-01-11'); -- Blossom visited William Tatcher on Jan 11th, 2021.


SELECT * FROM visits 