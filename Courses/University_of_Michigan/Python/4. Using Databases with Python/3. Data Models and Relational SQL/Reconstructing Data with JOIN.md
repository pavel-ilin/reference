## Relational power

By removing the replicated data and replacing it with references to a single copy of each bit of data we build a 'web' if information that the relational database can read through very quickly - even for very large amounts of data

Often when you want some data it comes from a number of tables linked by these foreign keys

## JOIN Operation

Links across several tables as part of a select operation

You must tell the JOIN how to use the keys that make the connection between the table using an ON clause

```SQL
select Album.title, Artist.name from Album join Artist on Album.artist_id = Artist.id

select Track.title, Genre.name from Track join Genre on Track.genre_id = Genre.id

select Track.title, Artist.name, Album.title, Genre.name from Track join Genre join Album join Artist on Track.genre_id = Genre.id and Track.album_id = Album.id and Album.artist_id = Artist.id

```
## Worked Example: Tracks.py (Chapter 15)
```SQL
SELECT Track.title, Album.title, Artist.name FROM Track JOIN Album JOIN Artist ON Track.album_id = Album.id AND Album.artist_id = Artist.id
```
