CREATE TABLE buds  (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  type TEXT,
  image TEXT --URL for photo
);

--seed data
INSERT INTO buds (name, type) VALUES ("Shiva Skunk", "Indica Hybrid");
