CREATE TABLE Items
(
  id INT PRIMARY KEY,
  publish_date DATE
  archived BOOLEAN
  genre_id INT
  author_id INT
  label_id INT
  FOREIGN KEY (genre_id) REFERENCES Genre(id)
  FOREIGN KEY (author_id) REFERENCES Author(id)
  FOREIGN KEY (label_id) REFERENCES Label(id)
);

CREATE TABLE Genre
(
  id SERIAL PRIMARY KEY
  name VARCHAR(100)
);

CREATE TABLE Author
(
  id SERIAL PRIMARY KEY
  first_name VARCHAR(100)
  last_name VARCHAR(100)
);

CREATE TABLE Label
(
  id SERIAL PRIMARY KEY
  title VARCHAR(100)
  color VARCHAR(100)
);

CREATE TABLE Book
(
  id SERIAL PRIMARY KEY
  publisher VARCHAR(100)
  cover_state VARCHAR(100)
  FOREIGN KEY (id) REFERENCES Items(id)
);

CREATE TABLE MusicAlbum
(
  id SERIAL PRIMARY KEY
  on_spotify BOOLEAN
  FOREIGN KEY (id) REFERENCES Items(id)
);

CREATE TABLE Game 
(
  id SERIAL PRIMARY KEY
  mutiplayer VARCHAR(100),
  last_played_at DATE,
  FOREIGN KEY (id) REFERENCES Items (id)
);
