SET search_path TO gaming_library;

TRUNCATE TABLE platforms;

DROP TABLE IF EXISTS achievements;
DROP TABLE IF EXISTS games;
DROP TABLE IF EXISTS developers;
DROP TABLE IF EXISTS platforms;

DROP TYPE IF EXISTS esrb_rating;
DROP SCHEMA IF EXISTS gaming_library CASCADE;