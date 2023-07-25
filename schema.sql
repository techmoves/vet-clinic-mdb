/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id int PRIMARY KEY NOT NULL,
    name varchar(255),
    date_of_birth: DATE
    escape_attempts: int, N 

    

 Add Index  Add Column 
    neutered: boolean, N 

    

 Add Index  Add Column 
    weight_kg: decimal(10,2),
);
ALTER TABLE animals
ADD COLUMN species VARCHAR(50);


CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    full_name varchar(255),
    age int
);


CREATE TABLE species (
    id SERIAL PRIMARY KEY,
    name varchar(255)
);    



CREATE TABLE vets (
    id SERIAL PRIMARY KEY,
    name varchar(255),
    age int,
    date_of_graduation date
);

CREATE TABLE specializations (
   vet_id INT REFERENCES vets(id),
    species_id INT REFERENCES species(id),
    PRIMARY KEY(vet_id, species_id)
);

CREATE TABLE visits (
    animal_id INT REFERENCES animals(id),
    vet_id INT  REFERENCES vets(id),
    date_of_visit DATE
);



-- Modify animals table: 
ALTER TABLE animals ADD COLUMN id SERIAL PRIMARY KEY;

UPDATE animals SET new_id = id;

ALTER TABLE animals DROP COLUMN id;

ALTER TABLE animals DROP COLUMN id;


-- Remove column species
ALTER TABLE animals DROP COLUMN species;

-- Add column species_id which is a foreign key referencing species table
ALTER TABLE animals  ADD COLUMN species_id INTEGER REFERENCES species(id);

-- Add column owner_id which is a foreign key referencing the owners table

ALTER TABLE animals ADD COLUMN owner_id INTEGER REFERENCES owners(id);

ALTER TABLE owners ADD COLUMN species_id INTEGER REFERENCES species(id);