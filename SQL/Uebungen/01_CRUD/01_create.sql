DROP SCHEMA IF EXISTS gaming_library CASCADE;
CREATE SCHEMA gaming_library;

SET search_path TO gaming_library;

CREATE TYPE esrb_rating AS ENUM ('Everyone', 'Teen', 'Mature');

CREATE TABLE developers (
    developer_id SERIAL PRIMARY KEY,
    studio_name VARCHAR(100) NOT NULL UNIQUE,
    headquarters TEXT,
    founded_year INTEGER CHECK (founded_year > 1950)
);

CREATE TABLE games (
    game_id SERIAL PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    release_date DATE DEFAULT CURRENT_DATE,
    genre VARCHAR(50),
    rating esrb_rating,
    developer_id INTEGER REFERENCES developers(developer_id) ON DELETE CASCADE,
    price NUMERIC(6, 2) CHECK (price >= 0)
);

CREATE TABLE platforms (
    platform_id SERIAL PRIMARY KEY,
    platform_name VARCHAR(50) NOT NULL,
    manufacturer VARCHAR(50)
);

CREATE TABLE achievements (
    achievement_id SERIAL PRIMARY KEY,
    game_id INTEGER NOT NULL REFERENCES games(game_id) ON DELETE CASCADE,
    achievement_name VARCHAR(150) NOT NULL UNIQUE,
    reward_points INTEGER CHECK (reward_points > 0)
);
