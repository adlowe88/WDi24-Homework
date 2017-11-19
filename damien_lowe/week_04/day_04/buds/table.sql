CREATE TABLE buds  (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  type TEXT,
  image TEXT --URL for photo
);

--seed data
INSERT INTO butterflies (name, type) VALUES ("Shiva Skunk", "Indica Hybrid");
