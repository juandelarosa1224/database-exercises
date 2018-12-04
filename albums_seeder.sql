USE codeup_test_db;

   INSERT INTO albums(artist) VALUES ('Michael Jackson');
   INSERT INTO albums(name) VALUES ('Thriller');
   INSERT INTO albums(sales) VALUES (42.3);
   INSERT INTO albums (artist, name, genre, sales, release_date)
   VALUES
   ('Michael Jackson', 'Thriller', 'pop,rock,r&b', 47.3,1982),
   ('Eagles', 'Their Greatest Hits', 'soft rock', 41.2,1976),
   ('AC/DC', 'BACK IN BLACK', 'hard rock', 26.1,1980),
   ('PINK FLOYD', 'THE DARK SIDE OF THE MOON', 'progressive rock', 24.2,1973),
   ('MEAT LOAF', 'BAT OUT OF HELL', 'hard rock', 21.5,1977),
   ('WHITNEY HOUSTON', 'THE BODYGUARD','r&b, soul, pop', 28.4,1992),
   ('EAGLES', 'HOTEL CALIFORNIA', 'soft rock', 31.5,1976),
   ('BEE GEES', 'SATURDAY NIGHT FEVER', 'disco', 21.6,1977),
   ('FLEETWOOD MAC', 'RUMOURS', 'soft rock', 27.9,1977),
   ('GREASE', 'THE ORIGINAL SOUNDTRACK', 'rock and roll', 14.4,1978),
   ('LED ZEPPELIN', 'LED ZEPPELIN IV', 'hard rock, folk rock, heavy metal', 29,1971),
   ('MICHAEL JACKSON', 'BAD', 'pop,funk,rock', 19.3,1987),
   ('ALANIS MORISSETTE', 'JAGGED LITTLE PILL', 'alternative rock,', 24.4,1995),
   ('SHANIA TWAIN', 'COME ON OVER', 'country, pop', 29.6,1997),
   ('CELINE DION', 'FALLING INTO YOU', 'pop,soft rock', 20.2,1996),
   ('THE BEATLES', 'SGT. PEPPERS LONELY HEARTS CLUB BAND', 'rock', 18.2,1967),
   ('DIRTY DANCING', 'ORIGINAL SOUNDTRACK', 'pop,rock,r&b', 17.9,1987),
   ('Michael Jackson','Dangerous', 'rock,funk,pop', 17.3, 1991),
   ('Adele', '21', 'pop,soul', 25.3, 2011),
   ('Celine Dion','Lets talk about love','pop, soft rock', 19.3, 1997),
   ('The Beatles', '1', 'rock', 23.4, 2000),
   ('ABBA', 'GOLD: GREATEST HITS', 'pop,disco', 22.7,1992),
   ('MADONNA', 'THE IMMACULATE COLLECTION', 'pop,dance', 19.4, 1990),
   ('THE BEATLES', 'ABBEY ROAD', 'rock', 14.4,1969),
   ('BRUCE SPRINGSTEEN', 'BORN IN THE U.S.A.', 'heartland rock', 19.6,1984),
   ('DIRE STRAITS', 'BROTHERS IN ARMS', 'rock', 17.7,1985),
   ('JAMES HORNER', 'TITANIC', 'filmscore', 18.1,1997),
   ('METALLICA', 'METALLICA', 'heavy metal', 21.2,1991),
   ('NIRVANA', 'NEVERMIND', 'grunge,alternative rock', 16.7,1991),
   ('PINK FLOYD', 'THE WALL', 'progressive rock', 18.6,1979),
   ('SANTANA', 'SUPERNATURAL', 'latin rock', 20.5,1999),
   ('GUNS N ROSES', 'APPETITE FOR DESTRUCTION', 'hard rock', 21.6,1987)