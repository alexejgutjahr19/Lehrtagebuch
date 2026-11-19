SET search_path TO gaming_library;

INSERT INTO developers (studio_name, headquarters, founded_year)
VALUES ('FromSoftware', 'Tokyo, Japan', 1986);

INSERT INTO platforms (platform_name, manufacturer)
VALUES ('PlayStation 5', 'Sony'),
       ('PC', 'Microsoft'),
       ('Switch', 'Nintendo');

INSERT INTO games (title, genre, rating, developer_id, price)
VALUES
    ('Dark Souls', 'Action RPG', 'Mature', 1, 39.99),
    ('Sekiro', 'Action', 'Mature', 1, 59.99),
    ('Bloodborne', 'Action RPG', 'Mature', 1, 19.99);


CREATE TEMP TABLE legacy_data (game_title TEXT, dev_id INT);
INSERT INTO legacy_data VALUES ('Elden Ring', 1);

INSERT INTO games (title, developer_id)
SELECT game_title, dev_id
FROM legacy_data;


WITH new_studio AS (
    INSERT INTO developers (studio_name, headquarters, founded_year)
    VALUES ('Supergiant Games', 'San Francisco, USA', 2009)
    RETURNING developer_id
)
INSERT INTO games (title, genre, rating, developer_id, price)
SELECT 'Hades II', 'Roguelike', 'Teen', developer_id, 29.99
FROM new_studio;

INSERT INTO developers (studio_name, headquarters, founded_year)
VALUES 
    ('Valve Corporation', 'Bellevue, USA', 1996),
    ('CD Projekt Red', 'Warsaw, Poland', 1994),
    ('BioWare', 'Edmonton, Canada', 1995)
RETURNING developer_id, studio_name;

INSERT INTO achievements (game_id, achievement_name, reward_points)
VALUES 
    (1, 'First Flame Kindled', 50),
    (1, 'Lord of Cinder', 100),
    (2, 'Shadow of the Dead', 75);

INSERT INTO games (title, genre, rating, developer_id, price)
VALUES 
    ('The Witcher 3: Wild Hunt', 'Action RPG', 'Mature', 5, 39.99),
    ('Cyberpunk 2077', 'Action RPG', 'Mature', 5, 49.99),
    ('Thronebreaker: The Witcher Tales', 'Role-Playing', 'Teen', 5, 19.99),
    ('The Witcher 2: Assassins of Kings', 'Action RPG', 'Mature', 5, 19.99),
    ('The Witcher: Enhanced Edition', 'Action RPG', 'Mature', 5, 9.99),
    ('Portal 2', 'Puzzle', 'Everyone 10+', 4, 19.99),
    ('Portal', 'Puzzle', 'Teen', 4, 9.99),
    ('Half-Life 2', 'First-Person Shooter', 'Mature', 4, 9.99),
    ('Half-Life: Alyx', 'First-Person Shooter', 'Mature', 4, 59.99),
    ('Counter-Strike 2', 'Tactical Shooter', 'Mature', 4, 0.00),
    ('Dota 2', 'MOBA', 'Teen', 4, 0.00),
    ('Team Fortress 2', 'First-Person Shooter', 'Mature', 4, 0.00),
    ('Left 4 Dead 2', 'First-Person Shooter', 'Mature', 4, 9.99),
    ('Left 4 Dead', 'First-Person Shooter', 'Mature', 4, 9.99),
    ('Dota Underlords', 'Auto Battler', 'Teen', 4, 0.00),
    ('Mass Effect Legendary Edition', 'Action RPG', 'Mature', 6, 59.99),
    ('Mass Effect 2', 'Action RPG', 'Mature', 6, 19.99),
    ('Mass Effect 3', 'Action RPG', 'Mature', 6, 19.99),
    ('Dragon Age: Origins', 'RPG', 'Mature', 6, 19.99),
    ('Dragon Age: Inquisition', 'Action RPG', 'Mature', 6, 39.99),
    ('Star Wars: Knights of the Old Republic', 'RPG', 'Teen', 6, 9.99),
    ('Jade Empire', 'Action RPG', 'Mature', 6, 14.99),
    ('Baldur''s Gate', 'RPG', 'Teen', 6, 19.99),
    ('Neverwinter Nights', 'RPG', 'Teen', 6, 19.99),
    ('Mass Effect: Andromeda', 'Action RPG', 'Mature', 6, 29.99),
    ('Hades', 'Roguelike', 'Teen', 2, 24.99),
    ('Transistor', 'Action RPG', 'Teen', 2, 19.99),
    ('Bastion', 'Action RPG', 'Everyone 10+', 2, 14.99),
    ('Pyre', 'Sports / RPG', 'Teen', 2, 19.99),
    ('Armored Core VI: Fires of Rubicon', 'Mecha Action', 'Teen', 1, 59.99),
    ('Dark Souls III', 'Action RPG', 'Mature', 1, 39.99),
    ('Dark Souls II: Scholar of the First Sin', 'Action RPG', 'Teen', 1, 39.99),
    ('Demon''s Souls', 'Action RPG', 'Mature', 1, 69.99),
    ('Bloodborne: The Old Hunters', 'Action RPG', 'Mature', 1, 19.99),
    ('Indie Platformer Alpha', 'Platformer', 'Everyone', 2, 14.99),
    ('Tactical Strategy Beta', 'Strategy', 'Teen', 4, 29.99),
    ('Space Simulation Gamma', 'Simulation', 'Everyone 10+', 5, 49.99),
    ('Dungeon Crawler Delta', 'RPG', 'Mature', 6, 39.99),
    ('Cyberpunk Runner Epsilon', 'Action', 'Mature', 5, 29.99),
    ('Mecha Arena Zeta', 'Action', 'Teen', 1, 49.99),
    ('Puzzle Mechanics Eta', 'Puzzle', 'Everyone', 4, 9.99),
    ('Roguelike Theta', 'Roguelike', 'Teen', 2, 19.99),
    ('Strategy Iota', 'Strategy', 'Everyone 10+', 4, 24.99),
    ('Survival Kappa', 'Survival', 'Mature', 5, 34.99),
    ('Narrative Lambda', 'Adventure', 'Teen', 6, 19.99),
    ('Rhythm Mu', 'Rhythm', 'Everyone', 2, 14.99),
    ('Horror Nu', 'Horror', 'Mature', 1, 29.99),
    ('Racing Xi', 'Racing', 'Everyone', 4, 39.99),
    ('Fighting Omicron', 'Fighting', 'Teen', 1, 49.99),
    ('Sandbox Pi', 'Sandbox', 'Everyone', 4, 19.99);