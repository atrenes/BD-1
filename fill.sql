INSERT INTO human (name, surname, age)
VALUES ('Mari', 'Makinami', 14),
       ('Hideaki', 'Anno', 62),
       ('Hidetaka', 'Miyazaki', 48),
       ('Hideo', 'Kojima', 50);
       
INSERT INTO sound_source (name)
VALUES ('Dinosaur'),
       ('Cicada'),
       ('Railway');
       
INSERT INTO fear (human_id, name)
VALUES (1, 'dinosaur'),
       (2, 'explosion'),
       (2, 'dinosaur'),
       (3, 'height');
       
INSERT INTO human_action (human_id, name)
VALUES (1, 'Dancing'),
       (2, 'Crowling'),
       (2, 'Breathing'),
       (3, 'Sitting');
       
INSERT INTO sound (sound_source_id, type, loudness)
VALUES (2, 'buzz', 60),
       (3, 'noise', 75),
       (2, 'buzz', 65),
       (1, 'roar', 80),
       (1, 'stomping', 70);
       
INSERT INTO effect (human_id, sound_id, type)
VALUES (1, 1, 'Relaxation'),
       (2, 2, 'Headache'),
       (3, 2, 'Depression'),
       (2, 3, 'Relaxation'),
       (3, 4, 'Panic'),
       (4, 4, 'Irritation'),
       (1, 5, 'Panic');