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
(60, 'Charmander', 1, 1, 'Lizard PokÃ©mon. It has a preference for hot things.', 'Ember', 30, 'Water', 'None', 1, 4, 1),
(70, 'Squirtle', 2, 1, 'Tiny Turtle PokÃ©mon. It shelters itself in its shell, then strikes back with spouts of water at every opportunity.', 'Bubble', 20, 'Electric', 'None', 1, 7, 1),
(50, 'Bulbasaur', 3, 1, 'Seed PokÃ©mon. A strange seed was planted on its back at birth.', 'Vine Whip', 20, 'Fire', 'None', 1, 1, 1),
(80, 'Pikachu', 4, 1, 'Mouse PokÃ©mon. It keeps its tail raised to monitor its surroundings.', 'Thunder Shock', 30, 'Fighting', 'Metal', 1, 58, 2);
GO
INSERT INTO pokemon_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resist, retreat, card_number_in_collection, collection_set_id) VALUES 
(60, 'Charmander', 1, 1, 'Lizard PokÃ©mon. It has a preference for hot things.', 'Ember', 30, 'Water', 'None', 1, 4, 1),
(70, 'Squirtle', 2, 1, 'Tiny Turtle PokÃ©mon. It shelters itself in its shell, then strikes back with spouts of water at every opportunity.', 'Bubble', 20, 'Electric', 'None', 1, 7, 1),
(50, 'Bulbasaur', 3, 1, 'Seed PokÃ©mon. A strange seed was planted on its back at birth.', 'Vine Whip', 20, 'Fire', 'None', 1, 1, 1),
(80, 'Pikachu', 4, 1, 'Mouse PokÃ©mon. It keeps its tail raised to monitor its surroundings.', 'Thunder Shock', 30, 'Fighting', 'Metal', 1, 58, 2),
(80, 'Gyarados', 2, 3, 'Atrocious PokÃ©mon. Rarely seen in the wild. Huge and vicious, it is capable of destroying entire cities in a rage.', 'Dragon Rage', 50, 'Electric', 'None', 3, 6, 3),
(100, 'Dragonite', 4, 3, 'Dragon PokÃ©mon. An extremely rare, intelligent, and powerful PokÃ©mon.', 'Hyper Beam', 90, 'Ice', 'None', 3, 19, 3),
(70, 'Magmar', 1, 2, 'Spitfire PokÃ©mon. It dislikes cold places, so it blows scorching flames to make the environment suitable.', 'Fire Punch', 40, 'Water', 'None', 2, 36, 1),
(90, 'Onix', 6, 1, 'Rock Snake PokÃ©mon. As it grows, the stone portions of its body harden to become similar to a diamond, but colored black.', 'Rock Throw', 30, 'Grass', 'None', 4, 56, 1),
(80, 'Alakazam', 5, 3, 'Psi PokÃ©mon. Its brain can outperform a supercomputer. Its intelligence quotient is said to be 5,000.', 'Psychic', 50, 'Darkness', 'None', 3, 65, 4),
(60, 'Machop', 6, 1, 'Superpower PokÃ©mon. It trains by lifting boulders.', 'Karate Chop', 20, 'Psychic', 'None', 2, 52, 4),
(90, 'Gengar', 5, 3, 'Shadow PokÃ©mon. Under a full moon, this PokÃ©mon likes to mimic the shadows of people and laugh at their fright.', 'Shadow Punch', 60, 'Darkness', 'None', 3, 94, 3),
(100, 'Snorlax', 6, 1, 'Sleeping PokÃ©mon. Very lazy. Just eats and sleeps. As its rotund bulk builds, it becomes steadily more slothful.', 'Body Slam', 80, 'Fighting', 'None', 4, 20, 3),
(70, 'Electabuzz', 4, 2, 'Electric PokÃ©mon. Normally found near power plants, they can wander away and cause major blackouts in cities.', 'Thunder Punch', 50, 'Ground', 'None', 3, 44, 2),
(80, 'Hitmonlee', 6, 1, 'Kicking PokÃ©mon. This amazing PokÃ©mon has an awesome sense of balance. It can kick in succession from any position.', 'High Jump Kick', 60, 'Psychic', 'None', 2, 28, 2),
(50, 'Koffing', 6, 1, 'Poison Gas PokÃ©mon. Because it stores several kinds of toxic gases in its body, it is prone to exploding without warning.', 'Tackle', 20, 'Psychic', 'None', 1, 42, 1),
(60, 'Jigglypuff', 9, 1, 'Balloon PokÃ©mon. When it sings, it never pauses to breathe. It appears to be crying because its tears add to its character.', 'Double Slap', 20, 'Steel', 'None', 1, 39, 4),
(50, 'Pidgey', 6, 1, 'Tiny Bird PokÃ©mon. A common sight in forests and woods. It flaps its wings at ground level to kick up blinding sand.', 'Gust', 20, 'Electric', 'None', 1, 34, 1),
(80, 'Rhyhorn', 6, 1, 'Spikes PokÃ©mon. Strong, but not too bright, this PokÃ©mon can shatter even a skyscraper with its charging Tackles.', 'Horn Attack', 40, 'Grass', 'None', 4, 48, 3),
(90, 'Lapras', 2, 1, 'Transport PokÃ©mon. A gentle soul that can ferry people across the sea on its back. It loves singing, though it is seldom heard.', 'Water Gun', 50, 'Electric', 'None', 4, 35, 4),
(100, 'Charizard', 1, 3, 'Flame PokÃ©mon. Spits fire that is hot enough to melt boulders. Known to cause forest fires unintentionally.', 'Flamethrower', 70, 'Water', 'None', 3, 6, 1);
GO
INSERT INTO pokemon_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resist, retreat, card_number_in_collection, collection_set_id) VALUES 
(70, 'Oddish', 3, 1, 'Weed PokÃ©mon. Its scientific name is Oddium Wanderus.', 'Absorb', 20, 'Fire', 'Water', 1, 43, 2),
(90, 'Cloyster', 2, 2, 'Bivalve PokÃ©mon. When attacked, it launches its horns in quick volleys.', 'Spike Cannon', 30, 'Electric', 'None', 2, 16, 2),
(60, 'Exeggcute', 3, 1, 'Egg PokÃ©mon. Often mistaken for eggs, they gather to form clusters.', 'Leech Seed', 20, 'Fire', 'Water', 1, 22, 3),
(100, 'Kangaskhan', 6, 1, 'Parent PokÃ©mon. Raises its young in its belly pouch. Wonâ€™t run from any fight to keep its young protected.', 'Comet Punch', 60, 'Fighting', 'None', 3, 44, 4),
(80, 'Scyther', 3, 1, 'Mantis PokÃ©mon. Leaps out of tall grass and slices its prey with its scythes.', 'Slash', 40, 'Fire', 'None', 1, 45, 2),
(90, 'Golem', 6, 2, 'Megaton PokÃ©mon. Its boulder-like body is extremely hard. It can easily withstand dynamite blasts without damage.', 'Rock Throw', 50, 'Water', 'None', 4, 41, 2),
(50, 'Grimer', 6, 1, 'Sludge PokÃ©mon. Appears in filthy areas. Thrives by sucking up polluted sludge.', 'Pound', 20, 'Psychic', 'None', 2, 54, 3),
(100, 'Muk', 6, 2, 'Sludge PokÃ©mon. Thickly covered with a filthy, vile sludge. It is so toxic, even its footprints contain poison.', 'Sludge', 60, 'Psychic', 'None', 3, 62, 2),
(80, 'Kabuto', 6, 1, 'Shellfish PokÃ©mon. A PokÃ©mon that was regenerated from a fossil found in what was once the ocean floor eons ago.', 'Scratch', 30, 'Electric', 'None', 2, 41, 1),
(50, 'Gastly', 5, 1, 'Gas PokÃ©mon. Almost invisible, this gaseous PokÃ©mon cloaks the target and puts it to sleep without notice.', 'Lick', 10, 'Darkness', 'None', 1, 36, 4),
(100, 'Gyarados', 2, 3, 'Atrocious PokÃ©mon. Rarely seen in the wild. Huge and vicious, it is capable of destroying entire cities in a rage.', 'Dragon Rage', 50, 'Electric', 'None', 3, 15, 3),
(90, 'Golduck', 2, 2, 'Duck PokÃ©mon. Often seen swimming elegantly by lakeshores. It is often mistaken for the Japanese monster, Kappa.', 'Hydro Pump', 60, 'Electric', 'None', 2, 48, 2),
(60, 'Staryu', 2, 1, 'Star Shape PokÃ©mon. As long as the center section is unharmed, it can grow back fully even if it is chopped to bits.', 'Water Gun', 20, 'Electric', 'None', 1, 39, 3),
(80, 'Starmie', 2, 2, 'Mysterious PokÃ©mon. At the center of its body is a red core, which sends mysterious radio signals into the night sky.', 'Bubblebeam', 30, 'Electric', 'None', 2, 40, 3),
(100, 'Mew', 5, 1, 'New Species PokÃ©mon. So rare that it is still said to be a mirage by many experts. Only a few people have seen it worldwide.', 'Psychic', 60, 'Darkness', 'None', 1, 151, 1),
(90, 'Vaporeon', 2, 2, 'Bubble Jet PokÃ©mon. Lives close to water. Its long tail is ridged with a fin which is often mistaken for a mermaidâ€™s.', 'Water Gun', 30, 'Electric', 'None', 2, 134, 4),
(70, 'Jolteon', 4, 2, 'Lightning PokÃ©mon. It accumulates negative ions in the atmosphere to blast out 10,000-volt lightning bolts.', 'Thunder Shock', 40, 'Ground', 'None', 2, 135, 4),
(80, 'Flareon', 1, 2, 'Flame PokÃ©mon. When storing thermal energy in its body, its temperature could soar to over 1600 degrees.', 'Flamethrower', 50, 'Water', 'None', 2, 136, 4),
(60, 'Porygon', 6, 1, 'Virtual PokÃ©mon. A man-made PokÃ©mon that came about as a result of research. It is programmed with only basic motions.', 'Conversion', 0, 'Fighting', 'None', 1, 137, 3),
(50, 'Omanyte', 2, 1, 'Spiral PokÃ©mon. A PokÃ©mon that was resurrected from a fossil. It lived in the sea for millions of years.', 'Water Gun', 20, 'Electric', 'None', 1, 138, 3),
(100, 'Omastar', 2, 2, 'Spiral PokÃ©mon. A PokÃ©mon that was resurrected from a fossil using modern science. It swam by cleverly twisting its 10 tentacles about.', 'Hydro Pump', 40, 'Electric', 'None', 3, 139, 3),
(70, 'Kabuto', 6, 1, 'Shellfish PokÃ©mon. A PokÃ©mon that was regenerated from a fossil found in what was once the ocean floor eons ago.', 'Scratch', 30, 'Electric', 'None', 2, 140, 1),
(90, 'Kabutops', 6, 2, 'Shellfish PokÃ©mon. In battle, it uses its thick legs to clamber out of the water and execute powerful physical moves.', 'Hydro Pump', 40, 'Electric', 'None', 3, 141, 3),
(80, 'Aerodactyl', 6, 1, 'Fossil PokÃ©mon. A ferocious, prehistoric PokÃ©mon that goes for the enemyâ€™s throat with its serrated, saw-like fangs.', 'Wing Attack', 30, 'Electric', 'None', 2, 142, 4),
(50, 'Snorlax', 6, 1, 'Sleeping PokÃ©mon. Very lazy. Just eats and sleeps. As its rotund bulk builds, it becomes steadily more slothful.', 'Body Slam', 80, 'Fighting', 'None', 4, 143, 1),
(100, 'Articuno', 2, 3, 'Freeze PokÃ©mon. A legendary bird PokÃ©mon. It is said to appear to doomed people who are lost in icy mountains.', 'Ice Beam', 50, 'Steel', 'None', 3, 144, 3),
(80, 'Zapdos', 4, 3, 'Electric PokÃ©mon. A legendary bird PokÃ©mon that is said to appear from clouds while dropping enormous lightning bolts.', 'Thunder', 60, 'Rock', 'None', 4, 145, 1),
(90, 'Moltres', 1, 3, 'Flame PokÃ©mon. A legendary bird PokÃ©mon. As it flaps its flaming wings, even the night sky will turn red.', 'Fire Spin', 70, 'Electric', 'None', 4, 146, 3),
(60, 'Dratini', 6, 1, 'Dragon PokÃ©mon. Long considered a mythical PokÃ©mon until recently, when a small colony was found living underwater.', 'Wrap', 20, 'Dragon', 'None', 1, 147, 1),
(100, 'Dragonair', 6, 2, 'Dragon PokÃ©mon. A mystical PokÃ©mon that exudes a gentle aura. It can manipulate the elements as it wishes.', 'Dragon Rage', 40, 'Dragon', 'None', 3, 148, 1);
GO
INSERT INTO pokemon_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resist, retreat, card_number_in_collection, collection_set_id) VALUES 
(70, 'Blastoise', 2, 3, 'Shellfish PokÃ©mon. It crushes its foe under its heavy body to cause fainting. In a pinch, it will withdraw inside its shell.', 'Hydro Pump', 50, 'Electric', 'None', 3, 2, 1),
(60, 'Butterfree', 3, 3, 'Butterfly PokÃ©mon. In battle, it flaps its wings at high speed to release highly toxic dust into the air.', 'Whirlwind', 30, 'Electric', 'None', 2, 33, 2),
(70, 'Beedrill', 3, 3, 'Poison Bee PokÃ©mon. Flies at high speed and attacks using its large venomous stingers on its forelegs and tail.', 'Twineedle', 40, 'Fire', 'None', 1, 17, 2),
(60, 'Psyduck', 2, 1, 'Duck PokÃ©mon. Always tormented by headaches. It uses psychic powers, but whether it intends to do so is not known.', 'Confusion', 20, 'Electric', 'None', 1, 53, 1),
(70, 'Growlithe', 1, 1, 'Puppy PokÃ©mon. Very protective of its territory. It will bark and bite to repel intruders from its space.', 'Flame Wheel', 30, 'Water', 'None', 2, 54, 1),
(80, 'Arcanine', 1, 2, 'Legendary PokÃ©mon. A PokÃ©mon that has been admired since the past for its beauty. It runs agilely as if on wings.', 'Fire Blast', 50, 'Water', 'None', 3, 59, 1),
(50, 'Poliwag', 2, 1, 'Tadpole PokÃ©mon. The swirl on its belly is its internal organs seen through its thin skin. It is better at swimming than walking.', 'Bubble', 20, 'Electric', 'None', 1, 25, 2),
(60, 'Abra', 5, 1, 'Psi PokÃ©mon. Using its ability to read minds, it will identify impending danger and teleport to safety.', 'Teleport', 0, 'Darkness', 'None', 1, 32, 1),
(90, 'Rhydon', 6, 2, 'Drill PokÃ©mon. Walks on its hind legs. Shows signs of intelligence. Its armor-like hide even repels molten lava.', 'Horn Drill', 60, 'Grass', 'None', 4, 56, 2),
(60, 'Farfetchâ€™d', 6, 1, 'Wild Duck PokÃ©mon. The plant stalk it holds is its weapon. The stalk is used like a sword to cut all sorts of things.', 'Slash', 30, 'Electric', 'None', 2, 45, 2),
(100, 'Mewtwo', 5, 3, 'Genetic PokÃ©mon. A PokÃ©mon created by recombining Mewâ€™s genes. Itâ€™s said to have the most savage heart among PokÃ©mon.', 'Psychic', 70, 'Darkness', 'None', 3, 10, 1),
(80, 'Kabutops', 6, 2, 'Shellfish PokÃ©mon. Its sleek shape is perfect for swimming. It slashes prey with its claws and drains the body fluids.', 'Hydro Pump', 50, 'Electric', 'None', 3, 46, 3),
(50, 'Eevee', 9, 1, 'Evolution PokÃ©mon. Its genetic code is irregular. It may mutate if it is exposed to radiation from elemental stones.', 'Tackle', 20, 'Fighting', 'None', 1, 51, 2),
(70, 'Ninetales', 1, 2, 'Fox PokÃ©mon. It is said to live for 1,000 years. Its fur is said to be imbued with a mystical power.', 'Fire Spin', 40, 'Water', 'None', 2, 58, 1),
(60, 'Vulpix', 1, 1, 'Fox PokÃ©mon. At the time of birth, it has just one tail. The tail splits from its tip as it grows older.', 'Ember', 20, 'Water', 'None', 1, 37, 2),
(90, 'Lapras', 2, 1, 'Transport PokÃ©mon. A gentle soul that can ferry people across the sea on its back. It loves singing, though it is seldom heard.', 'Water Gun', 50, 'Electric', 'None', 4, 35, 4),
(70, 'Hitmonchan', 6, 1, 'Punching PokÃ©mon. While apparently doing nothing, it fires punches in lightning fast volleys that are impossible to see.', 'Mega Punch', 40, 'Psychic', 'None', 2, 47, 2),
(100, 'Articuno', 2, 3, 'Freeze PokÃ©mon. A legendary bird PokÃ©mon that is said to appear to doomed people who are lost in icy mountains.', 'Blizzard', 60, 'Steel', 'None', 4, 24, 3),
(60, 'Paras', 3, 1, 'Mushroom PokÃ©mon. Burrows to suck tree roots. The mushrooms on its back grow by drawing nutrients from the bug host.', 'Scratch', 20, 'Fire', 'None', 1, 25, 1),
(80, 'Venomoth', 3, 2, 'Poison Moth PokÃ©mon. The dust-like scales covering its wings are color-coded to indicate the kinds of poison it has.', 'Psychic', 40, 'Fire', 'None', 2, 22, 1),
(50, 'Meowth', 6, 1, 'Scratch Cat PokÃ©mon. Adores circular objects. Wanders the streets on a nightly basis to look for dropped loose change.', 'Bite', 20, 'Fighting', 'None', 1, 52, 2),
(70, 'Seel', 2, 1, 'Sea Lion PokÃ©mon. The protruding horn on its head is very hard. It is used for bashing through thick ice.', 'Aurora Beam', 30, 'Electric', 'None', 3, 28, 4),
(100, 'Zapdos', 4, 3, 'Electric PokÃ©mon. A legendary bird PokÃ©mon that is said to appear from clouds while dropping enormous lightning bolts.', 'Thunder', 70, 'Rock', 'None', 4, 40, 1),
(90, 'Machamp', 6, 2, 'Superpower PokÃ©mon. Using its heavy muscles, it throws powerful punches that can send the victim clear over the horizon.', 'Cross Chop', 60, 'Psychic', 'None', 3, 15, 1),
(60, 'Pinsir', 6, 1, 'Stag Beetle PokÃ©mon. If it fails to crush the victim in its pincers, it will swing it around and toss it hard.', 'Vice Grip', 30, 'Fire', 'None', 2, 49, 3),
(70, 'Tentacruel', 2, 2, 'Jellyfish PokÃ©mon. Its 80 tentacles can stretch and contract freely. They wrap around prey and weaken it with poison.', 'Hydro Pump', 40, 'Electric', 'None', 3, 37, 2),
(80, 'Magneton', 4, 2, 'Magnet PokÃ©mon. Formed by several Magnemites linked together. They frequently appear when sunspots flare up.', 'Thunder Wave', 50, 'Ground', 'None', 2, 42, 1),
(100, 'Moltres', 1, 3, 'Flame PokÃ©mon. A legendary bird PokÃ©mon. As it flaps its flaming wings, even the night sky will turn red.', 'Fire Spin', 70, 'Electric', 'None', 4, 30, 3),
(50, 'Ditto', 9, 1, 'Transform PokÃ©mon. Capable of copying an opponentâ€™s genetic code to instantly transform itself into a duplicate of the enemy.', 'Transform', 0, 'None', 'None', 1, 53, 2),
(70, 'Jynx', 5, 1, 'Human Shape PokÃ©mon. Appears to move to a rhythm of its own, as if it were dancing. It wiggles its hips as it walks.', 'Ice Punch', 40, 'Steel', 'None', 3, 22, 1);
GO
