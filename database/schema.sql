---database schema
CREATE DATABASE catalogthings;


CREATE TABLE
  labels (
    id GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    color VARCHAR(20)
  );


-- Create Author Table
CREATE TABLE
  authors (
    id INT GENERATED ALWAYS AS IDENTITY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    PRIMARY KEY (id)
  );


-- Create Genre Table\
CREATE TABLE
  genre (
    id int GENERATED BY DEFAULT AS IDENTITY,
    name varchar(50),
    CONSTRAINT genre_pk PRIMARY KEY (id)
  );


CREATE TABLE
  musicalbum (
    id int GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    publish_date date,
    archived boolean,
    on_spotify boolean,
    genre_id int CONSTRAINT genre_fkey FOREIGN KEY (genre_id) REFERENCES genre(id),
  );


--create Book Table
CREATE TABLE
  books (
    id GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    genre_id INTEGER,
    author_id INTEGER,
    label_id INTEGER,
    publish_date DATETIME NOT NULL,
    archived BOOLEAN NOT NULL DEFAULT FALSE,
    publisher VARCHAR(30) NOT NULL,
    cover_state VARCHAR(30) NOT NULL,
    FOREIGN KEY (genre_id) REFERENCES genres(id),
    FOREIGN KEY (author_id) REFERENCES authors(id),
    FOREIGN KEY (label_id) REFERENCES labels(id)
  );


-- Create Game Table
CREATE TABLE
  games (
    id INT GENERATED ALWAYS AS IDENTITY,
    archived BOOLEAN,
    multiplayer BOOLEAN,
    last_played_at DATE,
    author_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (author_id) REFERENCES authors(id)
  );