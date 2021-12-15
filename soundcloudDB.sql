CREATE DATABASE soundcloudDB;
use soundcloudDB;
 CREATE TABLE artists(
    id int NOT NULL AUTO_INCREMENT,
    name varchar(40) NOT NULL,
    PRIMARY KEY(id),
    Unique Key(name)
     );
    
CREATE TABLE albums(
     id int NOT NULL AUTO_INCREMENT,
     name varchar(40) NOT NULL,
     artist int NOT NULL,
     PRIMARY KEY(id),
     FOREIGN KEY(artist) REFERENCES artists(id)
     ON DELETE CASCADE
     );
     
CREATE TABLE songs (
    id int NOT NULL AUTO_INCREMENT,
    name varchar(40) NOT NULL,
    album int NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (album) REFERENCES albums(id)
    ON DELETE CASCADE
    );
    
INSERT INTO artists(name) VALUES ('Bones');

INSERT INTO artists(name) VALUES ('King Von');

INSERT INTO artists(name) VALUES('Xavier Wulf');

SELECT * FROM artists;
INSERT INTO albums (name, artist) VALUES('Unrendered', 1);

INSERT INTO albums (name, artist) VALUES('Welcome To O Block', 2);

INSERT INTO albums (name, artist) VALUES('Project X', 3);

INSERT INTO songs(name, album) VALUES ('Demon', 2);


INSERT INTO songs(name, album) VALUES ('The Code', 2);


INSERT INTO songs(name, album) VALUES ('Back Again', 2);


INSERT INTO songs(name, album) VALUES ('All These N*****', 2);


INSERT INTO songs(name, album) VALUES ('Mad At You', 2);

INSERT INTO songs(name, album) VALUES('How it Go', 2);

INSERT INTO songs(name, album) VALUES('GTA', 2);


INSERT INTO songs(name, album) VALUES('Mine Too', 2);


INSERT INTO songs(name, album) VALUES('Why He Told', 2);


INSERT INTO songs(name, album) VALUES('Gleesh Place', 2);


INSERT INTO songs(name, album) VALUES('Ride', 2);

INSERT INTO songs(name, album) VALUES('Waynes Story', 2);

INSERT INTO songs(name, album) VALUES('Akina Speed Star', 3);

INSERT INTO songs(name, album) VALUES('Wulf Takahashi', 3);


INSERT INTO songs(name, album) VALUES('1st Summer Night', 3);


INSERT INTO songs(name, album) VALUES('Wulf of Akina', 3);


INSERT INTO songs(name, album) VALUES('The Cost', 3);


INSERT INTO songs(name, album) VALUES('Pedal to the Metal', 3);

SELECT * FROM SONGS;

INSERT INTO songs(name, album) VALUES('Date Night', 3);



INSERT INTO artists(name) VALUES('Lil Peep');


INSERT INTO artists(name) VALUES('Maxo Kream');

INSERT INTO artists(name) VALUES('Su6urban');

INSERT INTO artists(name) VALUES('Juice Wrld');

INSERT INTO artists(name) VALUES('XXXTentacion');

ALTER TABLE artists ADD age CHAR (2);

ALTER TABLE artists
	ADD social_media VARCHAR(15),
	ADD label VARCHAR(20);

UPDATE artists SET age =17, social_media = "@TeamSESH", label = "SESH" WHERE id = 1;

UPDATE artists SET age = 26, social_media = "@KingVonFrmdaWic" , label = "EMPIRE/OTF" WHERE id = 2;

UPDATE artists SET social_media ="@XavierWulf" , age = 29, label = "HOLLOWSQUAD" WHERE id = 3;

UPDATE artists SET social_media ="@Lilpeep" , age = 21, label = "GBC/FAE" WHERE id = 4;

UPDATE artists SET social_media ="@MAXOKREAM" , age = 31, label = "Roc Nation" WHERE id = 5;

UPDATE artists SET social_media ="@su6urban" , age = 25, label = "None" WHERE id = 6;

UPDATE artists SET social_media ="@JuiceWorlddd" , age = 25, label = "Interscope" WHERE id = 7;

UPDATE artists SET social_media ="none" , age = 19, label = "EMPIRE" WHERE id = 8;

  ALTER TABLE songs
  ADD genre VARCHAR(25);
  
  
  ALTER TABLE songs
  ADD genre VARCHAR(25);
  
   ALTER TABLE songs
  ADD album_title VARCHAR(25);
  
  ALTER TABLE albums ADD artist_name VARCHAR(11);
  
  ALTER TABLE albums ADD Genre VARCHAR(25);
  
  ALTER TABLE albums ADD length VARCHAR(5);

  ALTER TABLE albums ADD Release_Date VARCHAR(11);
  

UPDATE albums SET artist_name =  "Bones", length ="40:02", Release_Date = "04/21/17" WHERE id = 1;
 
UPDATE albums SET artist_name =  "King Von", length ="36:59", Release_Date = "10/30/20" WHERE id = 2;

UPDATE albums SET artist_name =  "Xavier_Wulf", length ="19:10", Release_Date = "6/2/15" WHERE id = 3;

INSERT INTO albums(name, artist, artist_name, length, Release_Date, Genre)
VALUES ( "Cry Baby",4, "Lil Peep", "31:31","6/10/2016", "Emo Rap");


  
INSERT INTO albums(name, artist, artist_name, length, Release_Date, Genre)
VALUES ( "Maxo 187",5, "Maxo 187", "52:25","3/5/15", "Trap");

INSERT INTO albums(name, artist, artist_name, length, Release_Date, Genre)
VALUES ( "Roseboy",6, "Su6urban", "7:58","2/2/18", "Cloud Rap");

INSERT INTO albums(name, artist, artist_name, length, Release_Date, Genre)
VALUES ( "GoodBye & Good Riddance",7, "Juice WRLD", "40:13","5/23/18", "Emo Rap");

INSERT INTO albums(name, artist, artist_name, length, Release_Date, Genre)
VALUES ( "?",8, "XXXTentacion", "37:27","3/16/18", "Emo Rap");



UPDATE songs SET artist =  "King Von",  album_title="Welcome to O Block", genre = "Trap" WHERE album = 2;

UPDATE songs SET artist =  "Xavier Wulf",  album_title="Project X", genre = "Cloud Rap" WHERE album = 3;

INSERT INTO songs(name, album, genre, artist, album_title) VALUES('Importing', 1, "Cloud Rap", "Bones","Unrendered");


INSERT INTO songs(name, album,genre,artist,album_title) VALUES('SystemPreferences', 1, "Cloud Rap", "Bones","Unrendered");


INSERT INTO songs(name, album, genre, artist, album_title) VALUES('SunnyDay', 1,"Cloud Rap", "Bones","Unrendered");


INSERT INTO songs(name, album, genre, artist, album_title) VALUES('LifeRuiner', 1, "Cloud Rap", "Bones","Unrendered");


INSERT INTO songs(name, album, genre, artist, album_title) VALUES('MyNephewHasAWhitePickUpTruck', 1, "Cloud Rap", "Bones","Unrendered");


INSERT INTO songs(name, album, genre, artist, album_title) VALUES('WhateverHelpsYouSleep', 1, "Cloud Rap", "Bones","Unrendered");


INSERT INTO songs (name,album, genre, artist, album_tile) VALUES ("YouKnowIWantYou", 1, "Cloud Rap","Bones", "Unrendered");


INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("MinorSetback", 1, "Cloud Rap","Bones", "Unrendered");


INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("ContinueWithoutSaving?", 1, "Cloud Rap","Bones", "Unrendered");

INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("CtrlAltDelete", 1, "Cloud Rap","Bones", "Unrendered");

INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("MissingProjectFiles", 1, "Cloud Rap","Bones", "Unrendered");


INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("TakingOutTheTrash", 1, "Cloud Rap","Bones", "Unrendered");


INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("CaseSensitive", 1, "Cloud Rap","Bones", "Unrendered");

INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("BoyOhBoy", 1, "Cloud Rap","Bones", "Unrendered");

INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("TheGrandestNothing", 1, "Cloud Rap","Bones", "Unrendered");

INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Exporting", 1, "Cloud Rap","Bones", "Unrendered");




use soundcloudDB;

INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Crybaby", 4, "Emo Rap","Lil Peep", "Crybaby");



INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Lil Jeep", 4, "Emo Rap","Lil Peep", "Crybaby");



INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Yesterday", 4, "Emo Rap","Lil Peep", "Crybaby");



INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Absolute in Doubt", 4, "Emo Rap","Lil Peep", "Crybaby");



INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Ghost Girl", 4, "Emo Rap","Lil Peep", "Crybaby");



INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Big City Blues", 4, "Emo Rap","Lil Peep", "Crybaby");



INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Skyscrapers", 4, "Emo Rap","Lil Peep", "Crybaby");



INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Falling 4 Me", 4, "Emo Rap","Lil Peep", "Crybaby");



INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Nineteen", 4, "Emo Rap","Lil Peep", "Crybaby");



INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("White Tee", 4, "Emo Rap","Lil Peep", "Crybaby");



INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Driveway", 4, "Emo Rap","Lil Peep", "Crybaby");


INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Thirteen", 5, "Trap","Maxo Kream", "Maxo 187");

INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Paranoia", 5, "Trap","Maxo Kream", "Maxo 187");

INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Clientele", 5, "Trap","Maxo Kream", "Maxo 187");

INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("1998 Interlude", 5, "Trap","Maxo Kream", "Maxo 187");

INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Astrodome", 5, "Trap","Maxo Kream", "Maxo 187");

INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Trap Mami/Flippin", 5, "Trap","Maxo Kream", "Maxo 187");

INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Sold Out", 5, "Trap","Maxo Kream", "Maxo 187");

INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("FTL Interlude", 5, "Trap","Maxo Kream", "Maxo 187");

INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Murder", 5, "Trap","Maxo Kream", "Maxo 187");

INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("KKK", 5, "Trap","Maxo Kream", "Maxo 187");

INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Cell Boomin", 5, "Trap","Maxo Kream", "Maxo 187");

INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("End Zone", 5, "Trap","Maxo Kream", "Maxo 187");

INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Trigga Maxo", 5, "Trap","Maxo Kream", "Maxo 187");

INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Issues", 5, "Trap","Maxo Kream", "Maxo 187");

INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Aquafina", 6, "Cloud Rap","Su6urban", "Roseboy");

INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Forbes", 6, "Cloud Rap","Su6urban", "Roseboy");

INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Face Lift", 6, "Cloud Rap","Su6urban", "Roseboy");

INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Thouxan w/ koi", 6, "Cloud Rap","Su6urban", "Roseboy");

INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Aquafina", 6, "Cloud Rap","Su6urban", "Roseboy");


INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Intro", 7, "Emo Rap","Juice WRLD", "Goodbye & Good Riddance");


INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("All Girls Are the Same", 7, "Emo Rap","Juice WRLD", "Goodbye & Good Riddance");


INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Lucid Dreams", 7, "Emo Rap","Juice WRLD", "Goodbye & Good Riddance");


INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Lean Wit Me", 7, "Emo Rap","Juice WRLD", "Goodbye & Good Riddance");


INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("I'm Still", 7, "Emo Rap","Juice WRLD", "Goodbye & Good Riddance");


INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Betrayal", 7, "Emo Rap","Juice WRLD", "Goodbye & Good Riddance");


INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Candles", 7, "Emo Rap","Juice WRLD", "Goodbye & Good Riddance");


INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Scared of Love", 7, "Emo Rap","Juice WRLD", "Goodbye & Good Riddance");


INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Used To", 7, "Emo Rap","Juice WRLD", "Goodbye & Good Riddance");


INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Karma", 7, "Emo Rap","Juice WRLD", "Goodbye & Good Riddance");


INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Hurt Me", 7, "Emo Rap","Juice WRLD", "Goodbye & Good Riddance");


INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Black & White", 7, "Emo Rap","Juice WRLD", "Goodbye & Good Riddance");


INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Long Gone", 7, "Emo Rap","Juice WRLD", "Goodbye & Good Riddance");


INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("End of The Road", 7, "Emo Rap","Juice WRLD", "Goodbye & Good Riddance");


INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("I'll Be Fine", 7, "Emo Rap","Juice WRLD", "Goodbye & Good Riddance");

INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Introduction", 8, "Emo Rap","XXXTentacion", "?");

INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Introduction", 8, "Emo Rap","XXXTentacion", "?");

INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Introduction", 8, "Emo Rap","XXXTentacion", "?");

INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Introduction", 8, "Emo Rap","XXXTentacion", "?");

INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Introduction", 8, "Emo Rap","XXXTentacion", "?");

INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Introduction", 8, "Emo Rap","XXXTentacion", "?");

INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Introduction", 8, "Emo Rap","XXXTentacion", "?");

UPDATE songs SET name = "ALONE, PART 3" WHERE id = 95;
UPDATE songs SET name = "Moonlight" WHERE id = 96;
UPDATE songs SET name = "SAD!" WHERE id = 97;
UPDATE songs SET name = "the remedy for a broken heart" WHERE id = 98;
UPDATE songs SET name = "Floor 555" WHERE id = 99;
UPDATE songs SET name = "NUMB" WHERE id = 100;


INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("infinity(888)", 8, "Emo Rap","XXXTentacion", "?");


INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("going down!", 8, "Emo Rap","XXXTentacion", "?");


INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Pain=BESTFRIEND", 8, "Emo Rap","XXXTentacion", "?");


INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("love yourself (interlude)", 8, "Emo Rap","XXXTentacion", "?");


INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("SMASH!", 8, "Emo Rap","XXXTentacion", "?");


INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("I don't even speak spanish lol", 8, "Emo Rap","XXXTentacion", "?");


INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("changes", 8, "Emo Rap","XXXTentacion", "?");


INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("Hope", 8, "Emo Rap","XXXTentacion", "?");


INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("schizophrenia", 8, "Emo Rap","XXXTentacion", "?");


INSERT INTO songs(name, album, genre, artist, album_title)
VALUES ("before I close my eyes", 8, "Emo Rap","XXXTentacion", "?");

CREATE USER 'playlist_user1' @'localhost' identified by 'playlistpass1';

GRANT ALL PRIVILEGES ON soundcloudDB. * TO 'playlist_user1' @'localhost';

UPDATE albums SET genre = "Cloud Rap" WHERE id = 1;


UPDATE albums SET genre = "Cloud Rap" WHERE id = 3;


UPDATE albums SET artist_name = "Xavier Wulf" WHERE id = 3;

UPDATE albums SET genre = "Trap" WHERE id = 2;

UPDATE artists SET age ="27" WHERE id = 1;

CREATE INDEX album_artist
ON albums (artist_name,name);

CREATE INDEX album_song
ON songs (album_title,name);

CREATE INDEX artist_label
ON artist (name,label);

CREATE INDEX artist_soc
ON artist (name,social_media);

CREATE INDEX song_genre
ON songs (name, genre);

CREATE INDEX album_genre
ON albums (name, Genre);

CREATE INDEX album_relase
ON albums (name, Release_Date);









