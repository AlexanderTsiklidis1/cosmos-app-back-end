DROP DATABASE IF EXISTS cosmos_db_dev;
CREATE DATABASE cosmos_db_dev;

\c cosmos_db_dev;

CREATE TABLE planets (
  id INTEGER PRIMARY KEY,
  planetname TEXT NOT NULL,
  description TEXT,
  discovery_order INTEGER,
  is_current_planet BOOLEAN DEFAULT 1,
  CONSTRAINT unique_name UNIQUE (name),
  CONSTRAINT positive_discovery_order CHECK (discovery_order >= 0)
);