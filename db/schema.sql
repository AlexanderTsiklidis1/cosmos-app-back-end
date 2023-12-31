DROP DATABASE IF EXISTS cosmos_db_dev;
CREATE DATABASE cosmos_db_dev;

\c cosmos_db_dev;



CREATE TABLE planets (
  id SERIAL PRIMARY KEY,
  planetname TEXT NOT NULL,
  description TEXT,
  is_current_planet BOOLEAN DEFAULT TRUE,
  diameter_km REAL,
  mass_kg REAL,
  avg_temperature_celsius REAL,
  planet_picture TEXT,
  CONSTRAINT unique_name UNIQUE (planetname),
  CONSTRAINT is_current_planet CHECK (is_current_planet = TRUE)
);