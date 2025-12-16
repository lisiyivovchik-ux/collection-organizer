PRAGMA foreign_keys = ON;

CREATE TABLE Users (
  user_id   INTEGER PRIMARY KEY AUTOINCREMENT,
  username  TEXT NOT NULL UNIQUE,
  email     TEXT
);

CREATE TABLE ItemTypes (
  type_id INTEGER PRIMARY KEY AUTOINCREMENT,
  name    TEXT NOT NULL UNIQUE
);

CREATE TABLE Items (
  item_id    INTEGER PRIMARY KEY AUTOINCREMENT,
  title      TEXT NOT NULL,
  author     TEXT,
  year       INTEGER,
  notes      TEXT,
  created_at TEXT DEFAULT (datetime('now')),
  type_id    INTEGER NOT NULL,
  user_id    INTEGER NOT NULL,
  FOREIGN KEY (type_id) REFERENCES ItemTypes(type_id),
  FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Tags (
  tag_id INTEGER PRIMARY KEY AUTOINCREMENT,
  name   TEXT NOT NULL UNIQUE
);

CREATE TABLE ItemTags (
  item_id INTEGER NOT NULL,
  tag_id  INTEGER NOT NULL,
  PRIMARY KEY (item_id, tag_id),
  FOREIGN KEY (item_id) REFERENCES Items(item_id) ON DELETE CASCADE,
  FOREIGN KEY (tag_id)  REFERENCES Tags(tag_id)  ON DELETE CASCADE
);

CREATE INDEX idx_items_type_id ON Items(type_id);
CREATE INDEX idx_items_user_id ON Items(user_id);
CREATE INDEX idx_itemtags_item_id ON ItemTags(item_id);
CREATE INDEX idx_itemtags_tag_id ON ItemTags(tag_id);
