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
