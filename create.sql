CREATE TABLE human
(
    id serial PRIMARY KEY,
    name varchar(30) NOT NULL,
    surname varchar(30) NOT NULL,
    hearing_threshold INTEGER DEFAULT 20 NOT NULL,
    age integer NOT NULL CHECK ( age > 0 )
);

CREATE TABLE sound_source
(
    id serial PRIMARY KEY,
    name varchar(30) NOT NULL
);

CREATE TABLE fear
(
    id serial PRIMARY KEY,
    name varchar(30),
    human_id INTEGER REFERENCES human(id) ON DELETE CASCADE NOT NULL
);

CREATE TABLE human_action
(
    id serial PRIMARY KEY,
    name varchar(30),
    human_id INTEGER REFERENCES human(id) ON DELETE CASCADE NOT NULL
);

CREATE TABLE sound
(
    id serial PRIMARY KEY,
    sound_source_id INTEGER REFERENCES sound_source(id) ON DELETE CASCADE NOT NULL,
    type varchar(30) NOT NULL,
    loudness integer CHECK ( loudness > 0 )
);

CREATE TABLE effect
(
    human_id INTEGER REFERENCES human(id) ON DELETE CASCADE,
    sound_id INTEGER REFERENCES sound(id) ON DELETE CASCADE,
    PRIMARY KEY (human_id, sound_id),
    type varchar(30)
)