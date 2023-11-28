DROP DATABASE IF EXISTS cosmos_db_dev;
CREATE DATABASE cosmos_db_dev;

\c cosmos_db_dev;

-- schema.sql

CREATE TABLE planets (
  id INTEGER PRIMARY KEY,
  planetname TEXT NOT NULL,
  description TEXT,
  discovery_order INTEGER,
  date_of_discovery DATE,
  is_current_planet BOOLEAN DEFAULT 1,
  diameter_km REAL,
  mass_kg REAL,
  avg_temperature_celsius REAL,
  planet_picture TEXT, 
  CONSTRAINT unique_name UNIQUE (planetname),
  CONSTRAINT positive_discovery_order CHECK (discovery_order >= 0)
);