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

-- First table: Pokemon TCG Cards
CREATE TABLE pokemon_cards (
    hp INTEGER,
    name VARCHAR(255),
    type_id INTEGER,
    stage_id INTEGER,
    info TEXT,
    attack VARCHAR(255),
    damage INTEGER,
    weak VARCHAR(255),
    resist VARCHAR(255),
    retreat INTEGER,
    card_number_in_collection INTEGER,
    collection_set_id INTEGER,
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

-- Second table: Collection Set
CREATE TABLE collection_sets (
    id SERIAL PRIMARY KEY,
    collection_set_name VARCHAR(255),
    release_date DATE,
    total_cards_in_collection INTEGER
);
