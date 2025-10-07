USE dbms;

DROP TABLE IF EXISTS sports_players;
CREATE TABLE sports_players (
    player_id INT PRIMARY KEY,
    player_name VARCHAR(50) NOT NULL,
    sport VARCHAR(50) NOT NULL,
    score INT NOT NULL
);

INSERT INTO sports_players (player_id, player_name, sport, score) VALUES
(1, 'Virat Kohli', 'Cricket', 85),
(2, 'Cristiano Ronaldo', 'Football', 90);

INSERT INTO sports_players (player_id, player_name, sport, score)
VALUES (2, 'Cristiano Ronaldo', 'Football', 95)
ON DUPLICATE KEY UPDATE score = 95;

INSERT INTO sports_players (player_id, player_name, sport, score)
VALUES (3, 'Roger Federer', 'Tennis', 80)
ON DUPLICATE KEY UPDATE score = 80;

SELECT * FROM sports_players;