INSERT INTO Users (username, email) VALUES
  ('demo', 'demo@example.com');

INSERT INTO ItemTypes (name) VALUES
  ('Книга'),
  ('Винил'),
  ('Фильм'),
  ('Игра');

INSERT INTO Tags (name) VALUES
  ('любимое'),
  ('классика'),
  ('в процессе'),
  ('завершено');

INSERT INTO Items (title, author, year, notes, type_id, user_id) VALUES
  ('Властелин колец', 'Дж. Р. Р. Толкин', 1954, 'Коллекционное издание', 1, 1),
  ('Dark Side of the Moon', 'Pink Floyd', 1973, 'Винил, состояние отличное', 2, 1),
  ('Матрица', 'Вачовски', 1999, 'Blu-ray', 3, 1),
  ('The Witcher 3', 'CD Projekt', 2015, 'PC', 4, 1);

INSERT INTO ItemTags (item_id, tag_id) VALUES
  (1, 2),
  (1, 1),
  (2, 1),
  (3, 3),
  (4, 4);
