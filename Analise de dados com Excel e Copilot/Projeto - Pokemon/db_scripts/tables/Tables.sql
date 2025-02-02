-- Create the database with UTF-8 encoding
CREATE DATABASE db_tcgpokemon_cards
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

-- Select the database to use
USE db_tcgpokemon_cards;

-- Table for Types
CREATE TABLE types (
    id SERIAL PRIMARY KEY,
    type_name VARCHAR(255)
);

-- Table for Stages
CREATE TABLE stages (
    id SERIAL PRIMARY KEY,
    stage_name VARCHAR(255)
);

-- Second table: Collection Sets
CREATE TABLE collection_sets (
    id SERIAL PRIMARY KEY,
    collection_set_name VARCHAR(255),
    release_date DATE,
    total_cards_in_collection INTEGER
);

-- First table: Pokemon TCG Cards
CREATE TABLE pokemon_cards (
    id SERIAL PRIMARY KEY,
    hp INTEGER,
    name VARCHAR(255),
    type_id BIGINT UNSIGNED,
    stage_id BIGINT UNSIGNED,
    info TEXT,
    attack VARCHAR(255),
    damage INTEGER,
    weak VARCHAR(255),
    resist VARCHAR(255),
    retreat INTEGER,
    card_number_in_collection INTEGER,
    collection_set_id BIGINT UNSIGNED,
    CONSTRAINT fk_collection_set
      FOREIGN KEY(collection_set_id) 
      REFERENCES collection_sets(id),
    CONSTRAINT fk_type
      FOREIGN KEY(type_id)
      REFERENCES types(id),
    CONSTRAINT fk_stage
      FOREIGN KEY(stage_id)
      REFERENCES stages(id)
);