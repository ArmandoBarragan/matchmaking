CREATE DATABASE matchmaking;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(50),
    email_verified BOOLEAN,
    password VARCHAR(50),
    level INTEGER,
    divison VARCHAR(20),
    mmr INTEGER
);

CREATE TABLE friendship (
    user_1 INTEGER,
    user_2 INTEGER,

    CONSTRAINT user_1_fk FOREIGN KEY (user_1)
                        REFERENCES users(id) ON DELETE CASCADE,
    CONSTRAINT user_2_fk FOREIGN KEY (user_2)
                        REFERENCES users(id) ON DELETE CASCADE
);
