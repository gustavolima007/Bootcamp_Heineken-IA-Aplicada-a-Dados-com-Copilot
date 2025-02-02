-- Seed data for Types
INSERT INTO types (type_name) VALUES 
('Fire'),
('Water'),
('Grass'),
('Electric'),
('Psychic'),
('Fighting'),
('Darkness'),
('Metal'),
('Fairy'),
('Dragon');

-- Seed data for Stages
INSERT INTO stages (stage_name) VALUES 
('Basic'),
('Stage 1'),
('Stage 2'),
('Mega'),
('GX'),
('EX'),
('VMAX');

-- Seed data for Collection Sets
INSERT INTO collection_sets (collection_set_name, release_date, total_cards_in_collection) VALUES 
('Base Set', '1999-01-09', 102),
('Jungle', '1999-06-16', 64),
('Fossil', '1999-10-10', 62),
('Team Rocket', '2000-04-24', 83);

-- Seed data for Pokemon TCG Cards
INSERT INTO pokemon_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resist, retreat, card_number_in_collection, collection_set_id) VALUES 
(60, 'Charmander', 1, 1, 'Lizard Pokémon. It has a preference for hot things.', 'Ember', 30, 'Water', 'None', 1, 4, 1),
(70, 'Squirtle', 2, 1, 'Tiny Turtle Pokémon. It shelters itself in its shell, then strikes back with spouts of water at every opportunity.', 'Bubble', 20, 'Electric', 'None', 1, 7, 1),
(50, 'Bulbasaur', 3, 1, 'Seed Pokémon. A strange seed was planted on its back at birth.', 'Vine Whip', 20, 'Fire', 'None', 1, 1, 1),
(80, 'Pikachu', 4, 1, 'Mouse Pokémon. It keeps its tail raised to monitor its surroundings.', 'Thunder Shock', 30, 'Fighting', 'Metal', 1, 58, 2);
