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