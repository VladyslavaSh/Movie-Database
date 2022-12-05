DROP DATABASE ics0012_vshekula_Movie;
CREATE DATABASE IF NOT EXISTS ics0012_vshekula_Movie;

USE ics0012_vshekula_Movie;

CREATE TABLE IF NOT EXISTS MOVIE
(
  Title VARCHAR(50) NOT NULL,
  Year_of_release DATE NOT NULL,
  Length_in_minutes FLOAT NOT NULL,
  Plot_outline VARCHAR(400) NOT NULL,
  Movie_ID CHAR(5) NOT NULL,
  PRIMARY KEY (Movie_ID)
);

CREATE TABLE IF NOT EXISTS GENRES
(
  Movie_Genre VARCHAR(20) NOT NULL,
  Movie_ID CHAR(5) NOT NULL,
  FOREIGN KEY (Movie_ID) REFERENCES MOVIE(Movie_ID)
);

CREATE TABLE IF NOT EXISTS PRODUCTION_COMPANY
(
  PC_Name VARCHAR(30) NOT NULL,
  Address VARCHAR(60) NOT NULL,
  PC_ID CHAR(5) NOT NULL,
  PRIMARY KEY (PC_ID)
);

CREATE TABLE IF NOT EXISTS PC_MOVIE
(
  Movie_ID CHAR(5) NOT NULL,
  PC_ID CHAR(5) NOT NULL,
  FOREIGN KEY (Movie_ID) REFERENCES MOVIE(Movie_ID),
  FOREIGN KEY (PC_ID) REFERENCES PRODUCTION_COMPANY(PC_ID)
);

CREATE TABLE IF NOT EXISTS ACTOR
(
  Actor_Name VARCHAR(30) NOT NULL,
  Date_of_Birth DATE NOT NULL,
  Actor_ID CHAR(5) NOT NULL,
  PRIMARY KEY (Actor_ID)
);

CREATE TABLE IF NOT EXISTS ACTOR_MOVIE
(
  Role VARCHAR(20) NOT NULL,
  Movie_ID CHAR(5) NOT NULL,
  Actor_ID CHAR(5) NOT NULL,
  FOREIGN KEY (Movie_ID) REFERENCES MOVIE(Movie_ID),
  FOREIGN KEY (Actor_ID) REFERENCES ACTOR(Actor_ID)
);

CREATE TABLE IF NOT EXISTS DIRECTOR
(
  Director_Name VARCHAR(30) NOT NULL,
  Date_of_Birth DATE NOT NULL,
  Director_ID CHAR(5) NOT NULL,
  PRIMARY KEY (Director_ID)
);

CREATE TABLE IF NOT EXISTS DIRECTOR_MOVIE
(
  Role VARCHAR(20),
  Movie_ID CHAR(5) NOT NULL,
  Director_ID CHAR(5) NOT NULL,
  FOREIGN KEY (Movie_ID) REFERENCES MOVIE(Movie_ID),
  FOREIGN KEY (Director_ID) REFERENCES DIRECTOR(Director_ID)
);

CREATE TABLE IF NOT EXISTS QUOTABLE_QUOTES
(
  Quotes VARCHAR(1000) NOT NULL,
  Actor_ID CHAR(5) NOT NULL,
  Movie_ID CHAR(5) NOT NULL,
  FOREIGN KEY (Actor_ID) REFERENCES ACTOR(Actor_ID),
  FOREIGN KEY (Movie_ID) REFERENCES MOVIE(Movie_ID)
);

# SHOW TABLES;

# Insert movies
INSERT INTO MOVIE (Title, Year_of_release, Length_in_minutes, Plot_outline, Movie_ID)
VALUES ('IT', '2017-09-08', '135', 'A group of bullied kids band together to destroy a shape-shifting clown monster.', 'SO9T1');
INSERT INTO MOVIE (Title, Year_of_release, Length_in_minutes, Plot_outline, Movie_ID)
VALUES ('Harry Potter and the Philosophers Stone', '2001-11-04', '152', 'Harry Potter learns on his 11th birthday that he possesses unique magical powers of his own.', 'EW78B');
INSERT INTO MOVIE (Title, Year_of_release, Length_in_minutes, Plot_outline, Movie_ID)
VALUES ('Harry Potter and the Chamber of Secrets', '2002-11-03', '161', 'The second instalment of boy wizard Harry Potter adventures at Hogwarts School.', 'Q8G40');
INSERT INTO MOVIE (Title, Year_of_release, Length_in_minutes, Plot_outline, Movie_ID)
VALUES ('Harry Potter and the Prisoner of Azkaban', '2004-05-23', '142', 'Harry Potter 3rd year at Hogwarts starts off badly when he learns killer has escaped from Azkaban.', 'A02J6');
INSERT INTO MOVIE (Title, Year_of_release, Length_in_minutes, Plot_outline, Movie_ID)
VALUES ('Harry Potter and the Goblet of Fire', '2005-11-06', '157', 'Upcoming tournament between schools of magic, with participants selected by the Goblet of Fire.', 'Z8B54');
INSERT INTO MOVIE (Title, Year_of_release, Length_in_minutes, Plot_outline, Movie_ID)
VALUES ('Harry Potter and the Order of the Phoenix', '2007-06-28', '138', 'Harry learns that many wizards do not know the truth of his encounter with Voldemort.', '6P3FG');
INSERT INTO MOVIE (Title, Year_of_release, Length_in_minutes, Plot_outline, Movie_ID)
VALUES ('Harry Potter and the Half-Blood Prince', '2009-07-07', '153', 'As Death Eaters wreak havoc in Muggle and Wizard worlds, Hogwarts is no longer a safe for students.', 'F5V1P');
INSERT INTO MOVIE (Title, Year_of_release, Length_in_minutes, Plot_outline, Movie_ID)
VALUES ('Harry Potter and the Deathly Hallows – Part 1', '2010-11-11', '146', 'Without guidance of professors, Harry, Ron and Hermione begin to destroy the Horcruxes.', 'S74SC');
INSERT INTO MOVIE (Title, Year_of_release, Length_in_minutes, Plot_outline, Movie_ID)
VALUES ('Harry Potter and the Deathly Hallows – Part 2', '2011-07-07', '130', 'A clash between good and evil awaits as Harry prepare for a final battle against Voldemort.', 'P90X6');
INSERT INTO MOVIE (Title, Year_of_release, Length_in_minutes, Plot_outline, Movie_ID)
VALUES ('Fantastic Beasts and Where to Find Them', '2016-11-10', '133', 'Newt Scamander has just completed a global excursion to find an extraordinary magical creatures.', 'BE6C2');
INSERT INTO MOVIE (Title, Year_of_release, Length_in_minutes, Plot_outline, Movie_ID)
VALUES ('Charlie and the Chocolate Factory', '2005-06-10', '115', 'Charlie Bucket get to tour the magical and mysterious factory of eccentric candy maker Willy Wonka.', 'D5CC7');

# SELECT * FROM MOVIE;

# Insert actors
INSERT INTO ACTOR (Actor_Name, Date_of_Birth, Actor_ID) VALUES ('Bill Skarsgård', '1990-08-09', 'S309M');
INSERT INTO ACTOR (Actor_Name, Date_of_Birth, Actor_ID) VALUES ('Johnny Depp', '1963-06-09', 'J0DP5');
INSERT INTO ACTOR (Actor_Name, Date_of_Birth, Actor_ID) VALUES ('Daniel Radcliffe', '1989-07-23', 'HR23P');
INSERT INTO ACTOR (Actor_Name, Date_of_Birth, Actor_ID) VALUES ('Emma Watson', '1990-05-15', 'X7V4D');
INSERT INTO ACTOR (Actor_Name, Date_of_Birth, Actor_ID) VALUES ('Rupert Grint', '1988-08-24', 'ER7R3');
INSERT INTO ACTOR (Actor_Name, Date_of_Birth, Actor_ID) VALUES ('Helena Bonham Carter', '1966-05-26', 'H9BC3');

# SELECT * FROM ACTOR;

# Insert directors
INSERT INTO DIRECTOR (Director_Name, Date_of_Birth, Director_ID) VALUES ('Steve Kloves', '1960-04-18', 'L8B54');
INSERT INTO DIRECTOR (Director_Name, Date_of_Birth, Director_ID) VALUES ('Brad Grey', '1957-12-29', 'X6VB9');
INSERT INTO DIRECTOR (Director_Name, Date_of_Birth, Director_ID) VALUES ('David Heyman', '1961-07-26', 'M80VA');
INSERT INTO DIRECTOR (Director_Name, Date_of_Birth, Director_ID) VALUES ('Johnny Depp', '1963-06-09', 'Z2TY8');
INSERT INTO DIRECTOR (Director_Name, Date_of_Birth, Director_ID) VALUES ('Bill Skarsgård', '1990-08-09', 'N6F34');

# SELECT * FROM DIRECTOR;

# Add actor and movie relationship
INSERT INTO ACTOR_MOVIE (Role, Movie_ID, Actor_ID) VALUES ('Lead', 'EW78B', 'HR23P');
INSERT INTO ACTOR_MOVIE (Role, Movie_ID, Actor_ID) VALUES ('Lead', '6P3FG', 'HR23P');
INSERT INTO ACTOR_MOVIE (Role, Movie_ID, Actor_ID) VALUES ('Lead', 'F5V1P', 'HR23P');
INSERT INTO ACTOR_MOVIE (Role, Movie_ID, Actor_ID) VALUES ('Lead', 'Z8B54', 'HR23P');
INSERT INTO ACTOR_MOVIE (Role, Movie_ID, Actor_ID) VALUES ('Lead', 'S74SC', 'HR23P');
INSERT INTO ACTOR_MOVIE (Role, Movie_ID, Actor_ID) VALUES ('Supporting', 'EW78B', 'X7V4D');
INSERT INTO ACTOR_MOVIE (Role, Movie_ID, Actor_ID) VALUES ('Lead', 'Z8B54', 'X7V4D');
INSERT INTO ACTOR_MOVIE (Role, Movie_ID, Actor_ID) VALUES ('Lead', 'S74SC', 'X7V4D');
INSERT INTO ACTOR_MOVIE (Role, Movie_ID, Actor_ID) VALUES ('Lead', 'Z8B54', 'ER7R3');
INSERT INTO ACTOR_MOVIE (Role, Movie_ID, Actor_ID) VALUES ('Lead', 'S74SC', 'ER7R3');
INSERT INTO ACTOR_MOVIE (Role, Movie_ID, Actor_ID) VALUES ('Lead', 'D5CC7', 'J0DP5'); # JD director + actor
INSERT INTO ACTOR_MOVIE (Role, Movie_ID, Actor_ID) VALUES ('Lead', 'BE6C2', 'J0DP5'); # JD director + actor
INSERT INTO ACTOR_MOVIE (Role, Movie_ID, Actor_ID) VALUES ('Lead', 'SO9T1', 'S309M');
INSERT INTO ACTOR_MOVIE (Role, Movie_ID, Actor_ID) VALUES ('Background', 'BE6C2', 'S309M');
INSERT INTO ACTOR_MOVIE (Role, Movie_ID, Actor_ID) VALUES ('Supporting', 'S74SC', 'H9BC3');
INSERT INTO ACTOR_MOVIE (Role, Movie_ID, Actor_ID) VALUES ('Supporting', 'P90X6', 'H9BC3');
INSERT INTO ACTOR_MOVIE (Role, Movie_ID, Actor_ID) VALUES ('Featured Extra', 'D5CC7', 'H9BC3');

# SELECT * FROM ACTOR_MOVIE;

# Add director and movie relationship
INSERT INTO DIRECTOR_MOVIE (Role, Movie_ID, Director_ID) VALUES (NULL, 'EW78B', 'M80VA');
INSERT INTO DIRECTOR_MOVIE (Role, Movie_ID, Director_ID) VALUES (NULL, 'Q8G40', 'M80VA');
INSERT INTO DIRECTOR_MOVIE (Role, Movie_ID, Director_ID) VALUES (NULL, 'A02J6', 'M80VA');
INSERT INTO DIRECTOR_MOVIE (Role, Movie_ID, Director_ID) VALUES (NULL, 'Z8B54', 'M80VA');
INSERT INTO DIRECTOR_MOVIE (Role, Movie_ID, Director_ID) VALUES (NULL, '6P3FG', 'M80VA');
INSERT INTO DIRECTOR_MOVIE (Role, Movie_ID, Director_ID) VALUES (NULL, 'D5CC7', 'X6VB9');
INSERT INTO DIRECTOR_MOVIE (Role, Movie_ID, Director_ID) VALUES ('Supporting', 'BE6C2', 'X6VB9');
INSERT INTO DIRECTOR_MOVIE (Role, Movie_ID, Director_ID) VALUES ('Background', 'D5CC7', 'L8B54');
INSERT INTO DIRECTOR_MOVIE (Role, Movie_ID, Director_ID) VALUES (NULL, 'S74SC', 'L8B54');
INSERT INTO DIRECTOR_MOVIE (Role, Movie_ID, Director_ID) VALUES ('Lead', 'D5CC7', 'Z2TY8'); # JD director + actor
INSERT INTO DIRECTOR_MOVIE (Role, Movie_ID, Director_ID) VALUES ('Lead', 'BE6C2', 'Z2TY8'); # JD director + actor
INSERT INTO DIRECTOR_MOVIE (Role, Movie_ID, Director_ID) VALUES ('Lead', 'SO9T1', 'N6F34');
INSERT INTO DIRECTOR_MOVIE (Role, Movie_ID, Director_ID) VALUES (NULL, 'BE6C2', 'N6F34');

# SELECT * FROM DIRECTOR_MOVIE;

# Add data about quotes
INSERT INTO QUOTABLE_QUOTES (Quotes, Actor_ID, Movie_ID) VALUES ('Now If You Two Don’t Mind, I’m Going To Bed Before Either Of You Come Up With Another Clever Idea To Get Us Killed - Or Worse, Expelled.', 'X7V4D', 'EW78B');
INSERT INTO QUOTABLE_QUOTES (Quotes, Actor_ID, Movie_ID) VALUES ('Honestly, Don’t You Two Read?', 'X7V4D', 'Q8G40');
INSERT INTO QUOTABLE_QUOTES (Quotes, Actor_ID, Movie_ID) VALUES ('Magic blooms... only in rare souls. Still, we must skulk in shadows. But the old ways serve us no longer.', 'J0DP5', 'BE6C2');
INSERT INTO QUOTABLE_QUOTES (Quotes, Actor_ID, Movie_ID) VALUES ('There are no strange creatures, only blinkered people.', 'J0DP5', 'BE6C2');
INSERT INTO QUOTABLE_QUOTES (Quotes, Actor_ID, Movie_ID) VALUES ('Everything in this room is eatable, even I am eatable! But that is called "cannibalism", my dear children, and is in fact frowned upon in most societies.', 'J0DP5', 'D5CC7');
INSERT INTO QUOTABLE_QUOTES (Quotes, Actor_ID, Movie_ID) VALUES ('The best kind of prize is a surprise!', 'J0DP5', 'D5CC7');
INSERT INTO QUOTABLE_QUOTES (Quotes, Actor_ID, Movie_ID) VALUES ('Well, that is no excuse. I was never as short as you.', 'J0DP5', 'D5CC7');
INSERT INTO QUOTABLE_QUOTES (Quotes, Actor_ID, Movie_ID) VALUES ('Well, well, well, look what we have here. It is Harry Potter. He is all bright, and shiny, and new again, just in time for the Dark Lord.', 'H9BC3', 'F5V1P');
INSERT INTO QUOTABLE_QUOTES (Quotes, Actor_ID, Movie_ID) VALUES ('Boys, no business at the dinner table.', 'H9BC3', 'D5CC7');

# SELECT * FROM QUOTABLE_QUOTES;


# Select movie titles, years of release and number of actors where a year of release is in range
SELECT MOVIE.Title AS Movie_Title, MOVIE.Year_of_release, COUNT(ACTOR_MOVIE.Movie_ID) AS Number_of_Actors
FROM ACTOR_MOVIE INNER JOIN MOVIE ON ACTOR_MOVIE.Movie_ID = MOVIE.Movie_ID 
WHERE MOVIE.Year_of_release BETWEEN '2005-04-20' AND '2010-12-09'
GROUP BY MOVIE.Movie_ID
ORDER BY MOVIE.Year_of_release ASC;


# Select Harry Potter and the Deathly Hallows – Part 1 movie's actors and directors
SELECT ACTOR.Actor_Name as Actors_Directors 
FROM ACTOR INNER JOIN ACTOR_MOVIE ON ACTOR.Actor_ID = ACTOR_MOVIE.Actor_ID 
WHERE ACTOR_MOVIE.Movie_ID = 'S74SC' 
UNION SELECT DIRECTOR.Director_Name 
FROM DIRECTOR INNER JOIN DIRECTOR_MOVIE ON DIRECTOR.Director_ID = DIRECTOR_MOVIE.Director_ID 
WHERE DIRECTOR_MOVIE.Movie_ID = 'S74SC';


# Select Johnny Depp's quotes listing the quote, the movie and a year of release
SELECT QUOTABLE_QUOTES.Quotes, MOVIE.Title AS Movie_Title, MOVIE.Year_of_release 
FROM QUOTABLE_QUOTES LEFT OUTER JOIN MOVIE ON QUOTABLE_QUOTES.Movie_ID = MOVIE.Movie_ID 
WHERE Actor_ID = 'J0DP5';
