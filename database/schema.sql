---database schema
CREATE DATABASE catalog_of_my_things;

CREATE TABLE Books (
  id GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  genre_id INTEGER,
  author_id INTEGER,
  label_id INTEGER,
  published_date DATETIME NOT NULL,
  archived BOOLEAN NOT NULL DEFAULT FALSE,
  publisher VARCHAR(30) NOT NULL,
  cover_state VARCHAR(30) NOT NULL,
  FOREIGN KEY (genre_id) REFERENCES Genres(id),
  FOREIGN KEY (author_id) REFERENCES Authors(id),
  FOREIGN KEY (label_id) REFERENCES Labels(id)
)

CREATE TABLE Labels (
  id GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  title VARCHAR(30) NOT NULL,
  color VARCHAR(20)
)
-- Create Author Table
CREATE TABLE
  authors (
    id INT GENERATED ALWAYS AS IDENTITY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    PRIMARY KEY (id)
  );


-- Create Game Table
CREATE TABLE
  games (
    id INT GENERATED ALWAYS AS IDENTITY,
    archived BOOLEAN,
    multiplayer BOOLEAN,
    last_played_at DATE,
    PRIMARY KEY (id),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(id)
  );