--------------genre-----------------
INSERT INTO genre (name)
VALUES('rock');

INSERT INTO genre (name)
VALUES('pop');

INSERT INTO genre (name)
VALUES('rap');

INSERT INTO genre (name)
VALUES('country');

INSERT INTO genre (name)
VALUES('jazz');

--------------singer-----------------
INSERT INTO singer (name)
VALUES('Beatles');

INSERT INTO singer (name)
VALUES('Doors');

INSERT INTO singer (name)
VALUES('Michael Jackson');

INSERT INTO singer (name)
VALUES('Britney Spears');

INSERT INTO singer (name)
VALUES('Eminem');

INSERT INTO singer (name)
VALUES('Johnny Cash');

INSERT INTO singer (name)
VALUES('Frank Sinatra');

INSERT INTO singer (name)
VALUES('Glenn Miller');

--------------singerGenre-----------------
INSERT INTO singergenre (singer_id, genre_id)
VALUES(1, 1);

INSERT INTO singergenre (singer_id, genre_id)
VALUES(2, 1);

INSERT INTO singergenre (singer_id, genre_id)
VALUES(3, 2);

INSERT INTO singergenre (singer_id, genre_id)
VALUES(3, 3);

INSERT INTO singergenre (singer_id, genre_id)
VALUES(4, 2);

INSERT INTO singergenre (singer_id, genre_id)
VALUES(5, 3);

INSERT INTO singergenre (singer_id, genre_id)
VALUES(6, 4);

INSERT INTO singergenre (singer_id, genre_id)
VALUES(6, 5);

INSERT INTO singergenre (singer_id, genre_id)
VALUES(7, 5);

INSERT INTO singergenre (singer_id, genre_id)
VALUES(8, 5);

------------------------------------
--------------album-----------------
INSERT INTO album (title, release_year)
VALUES('Please Please me', 1963);

INSERT INTO album (title, release_year)
VALUES('Strange Days', 1967);

INSERT INTO album (title, release_year)
VALUES('Thriller', 1982);

INSERT INTO album (title, release_year)
VALUES('Bad', 1987);

INSERT INTO album (title, release_year)
VALUES('Glory', 2019);

INSERT INTO album (title, release_year)
VALUES('Music to Be Murdered By ', 2020);

INSERT INTO album (title, release_year)
VALUES('Blood, Sweat, and Tears', 1963);

INSERT INTO album (title, release_year)
VALUES('My Way', 1968);

INSERT INTO album (title, release_year)
VALUES('Glenn Miller''s Parade', 1940);

--------------singerAlbum-----------------
INSERT INTO singerAlbum (singer_id, album_id)
VALUES(1, 1);

INSERT INTO singerAlbum (singer_id, album_id)
VALUES(2, 2);

INSERT INTO singerAlbum (singer_id, album_id)
VALUES(3, 3);

INSERT INTO singerAlbum (singer_id, album_id)
VALUES(3, 4);

INSERT INTO singerAlbum (singer_id, album_id)
VALUES(4, 5);

INSERT INTO singerAlbum (singer_id, album_id)
VALUES(5, 6);

INSERT INTO singerAlbum (singer_id, album_id)
VALUES(6, 7);

INSERT INTO singerAlbum (singer_id, album_id)
VALUES(6, 9);

INSERT INTO singerAlbum (singer_id, album_id)
VALUES(7, 8);

INSERT INTO singerAlbum (singer_id, album_id)
VALUES(8, 9);

------------------------------------
--------------track-----------------
INSERT INTO track (title, duration, album_id)
VALUES('Help!', 140, 1);

INSERT INTO track (title, duration, album_id)
VALUES('Yellow Submarine', 215, 1);

INSERT INTO track (title, duration, album_id)
VALUES('People are Strange', 156, 2);

INSERT INTO track (title, duration, album_id)
VALUES('Strange Days', 176, 2);

INSERT INTO track (title, duration, album_id)
VALUES('Riders on the Storm', 415, 2);

INSERT INTO track (title, duration, album_id)
VALUES('Smooth Criminal', 257, 3);

INSERT INTO track (title, duration, album_id)
VALUES('Billy Jean', 278, 3);

INSERT INTO track (title, duration, album_id)
VALUES('Jam', 217, 4);

INSERT INTO track (title, duration, album_id)
VALUES('Toxic', 189, 5);

INSERT INTO track (title, duration, album_id)
VALUES('Till the World ends', 228, 5);

INSERT INTO track (title, duration, album_id)
VALUES('Godzilla', 268, 6);

INSERT INTO track (title, duration, album_id)
VALUES('Alfred', 298, 6);

INSERT INTO track (title, duration, album_id)
VALUES('Ring of Fire', 143, 7);

INSERT INTO track (title, duration, album_id)
VALUES('My way', 198, 8);

INSERT INTO track (title, duration, album_id)
VALUES('Pennsylvania 6-5000', 156, 9);

------------------------------------
--------------mixtape-----------------
INSERT INTO mixtape (title, release_year)
VALUES ('Greatest rock hits', 1986);

INSERT INTO mixtape (title, release_year)
VALUES ('Pioneers of rock', 2020);

INSERT INTO mixtape (title, release_year)
VALUES ('Best pop music ever', 2009);

INSERT INTO mixtape (title, release_year)
VALUES ('Pop of 2000', 2015);

INSERT INTO mixtape (title, release_year)
VALUES ('Rap kings mixtape', 2007);

INSERT INTO mixtape (title, release_year)
VALUES ('Best of American hip-hop', 2019);

INSERT INTO mixtape (title, release_year)
VALUES ('Legends of country', 1978);

INSERT INTO mixtape (title, release_year)
VALUES ('Jazz forever and always', 1998);

--------------trackMixtape-----------------
INSERT INTO trackmixtape (track_id, mixtape_id)
VALUES (1, 1);

INSERT INTO trackmixtape (track_id, mixtape_id)
VALUES (3, 1);

INSERT INTO trackmixtape (track_id, mixtape_id)
VALUES (5, 1);

INSERT INTO trackmixtape (track_id, mixtape_id)
VALUES (2, 2);

INSERT INTO trackmixtape (track_id, mixtape_id)
VALUES (4, 2);

INSERT INTO trackmixtape (track_id, mixtape_id)
VALUES (6, 3);

INSERT INTO trackmixtape (track_id, mixtape_id)
VALUES (8, 3);

INSERT INTO trackmixtape (track_id, mixtape_id)
VALUES (10, 3);

INSERT INTO trackmixtape (track_id, mixtape_id)
VALUES (7, 4);

INSERT INTO trackmixtape (track_id, mixtape_id)
VALUES (9, 4);

INSERT INTO trackmixtape (track_id, mixtape_id)
VALUES (11, 5);

INSERT INTO trackmixtape (track_id, mixtape_id)
VALUES (12, 6);

INSERT INTO trackmixtape (track_id, mixtape_id)
VALUES (13, 7);

INSERT INTO trackmixtape (track_id, mixtape_id)
VALUES (14, 8);

INSERT INTO trackmixtape (track_id, mixtape_id)
VALUES (15, 8);


