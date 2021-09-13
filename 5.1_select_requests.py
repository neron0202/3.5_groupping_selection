import sqlalchemy
import psycopg2

db = 'postgresql://postgres:1968@localhost/music_site'
engine = sqlalchemy.create_engine(db)
con = engine.connect()

print("1. КОЛИЧЕСТВО ИСПОЛНИТЕЛЕЙ В КАЖДОМ ЖАНРЕ")
print(con.execute("""
SELECT COUNT(singer_id) FROM singergenre
GROUP BY genre_id;
""").fetchall())
print()

print("2. КОЛИЧЕСТВО ТРЕКОВ, ВОШЕДШИХ В АЛЬБОМЫ 2019-2020 ГОДОВ")
print(con.execute("""
SELECT COUNT(id) FROM track
WHERE album_id IN (
   SELECT id FROM album
   WHERE release_year BETWEEN 2019 AND 2020)
""").fetchall())
print()

print("3. СРЕДНЯЯ ПРОДОЛЖИТЕЛЬНОСТЬ ТРЕКОВ ПО КАЖДОМУ АЛЬБОМУ")
print(con.execute("""
SELECT album_id,AVG(duration) FROM track
GROUP BY album_id
ORDER BY album_id;
""").fetchall())
print()

print("4. ВСЕ ИСПОЛНИТЕЛИ, КОТОРЫЕ НЕ ВЫПУСТИЛИ АЛЬБОМЫ В 2020 ГОДУ")
print(con.execute("""
SELECT name FROM singer
WHERE id IN (
    SELECT singer_id FROM singeralbum
    WHERE album_id IN (
         SELECT id FROM album
         WHERE release_year != 2020));  
""").fetchall())
print()

print("!!!5. НАЗВАНИЕ СБОРНИКОВ, В КОТОРЫХ ПРИСУТСТВУЕТ ОПРЕДЕЛЕННЫЙ ИСПОЛНИТЕЛЬ")
print(con.execute("""
SELECT mixtape.title FROM mixtape 
    LEFT JOIN trackmixtape ON mixtape.id = trackmixtape.mixtape_id
    LEFT JOIN track ON trackmixtape.mixtape_id = track.id
    LEFT JOIN album ON track.album_id = album.id
    LEFT JOIN singeralbum ON album.id = singeralbum.album_id
    LEFT JOIN singer ON singeralbum.singer_id = singer.id 
WHERE singer.name LIKE '%%doors%%';
""").fetchall())



print("!!!6. НАЗВАНИЕ АЛЬБОМОВ В КОТОРЫХ ПРИСУТСТВУЮТ ИСПОЛНИТЕЛИ БОЛЕЕ 1 ЖАНРА")
print(con.execute("""
SELECT album.title FROM album
LEFT JOIN singeralbum ON album.id = singeralbum.singer_id
LEFT JOIN singer ON singeralbum.singer_id = singer.id
LEFT JOIN singergenre ON singer.id = singergenre.singer_id
LEFT JOIN genre ON singergenre.genre_id = genre.id
GROUP BY album.title
HAVING COUNT (genre.name) > 1;
""").fetchall())
print()

print("7. НАИМЕНОВАНИЯ ТРЕКОВ, КОТОРЫЕ НЕ ВХОДЯТ В СБОРНИКИ")
# print(con.execute("""
# SELECT title FROM track
# WHERE id IN (
#     SELECT track_id FROM trackmixtape
#     WHERE mixtape_id NOT IN (
#         SELECT
#
# """)
print()

print("7. ИСПОЛНИТЕЛЬ, НАПИСАВШИЙ САМЫЙ КОРОТКИЙ ТРЕК")
print(con.execute("""
SELECT singer.name FROM singer
LEFT JOIN singeralbum ON singer.id = singeralbum.singer_id
LEFT JOIN album ON singeralbum.album_id = album.id
LEFT JOIN track ON album.id = track.album_id
GROUP BY singer.name
HAVING MIN (track.duration);
""").fetchall())
print()

print("9. НАЗВАНИЯ АЛЬБОМОВ, СОДЕРЖАЩИХ НАИМЕНЬШЕЕ КОЛИЧЕСТВО ТРЕКОВ")
#print(con.execute("""
#SELECT title FROM album
#LEFT JOIN 


#""").fetchall())







