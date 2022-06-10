CREATE TABLE lists (
  id serial PRIMARY KEY,
  name text NOT NULL UNIQUE CHECK(length(name) > 0)
);

CREATE TABLE todos(
  id serial PRIMARY KEY,
  name text NOT NULL CHECK(length(name) > 0),
  completed boolean NOT NULL DEFAULT false,
  list_id int NOT NULL REFERENCES lists(id) ON DELETE CASCADE
)