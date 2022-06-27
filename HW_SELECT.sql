--1.	название и год выхода альбомов, вышедших в 2018 году;
SELECT name, releaseyear FROM album
WHERE releaseyear BETWEEN '2018-01-01' AND '2018-12-31';

--2.	название и продолжительность самого длительного трека, не подходит, если duration совпадают
SELECT name, duration FROM song
ORDER BY  duration DESC
LIMIT 2;
--2.	название и продолжительность самого длительного трека, просто сортировка,НЕ выдает исключит максимумы
SELECT MAX(duration),name FROM song
GROUP BY name;

--2 если максимумов несколько (если нужно взять ВСЕ максимумы, если их много)
SELECT name, duration FROM song
WHERE duration = (SELECT MAX(duration) FROM song);

--3.	название треков, продолжительность которых не менее 3,5 минуты
SELECT name FROM song
WHERE duration >= 210;

--4.	названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT name FROM collection
WHERE releaseyear BETWEEN '2018-01-01' AND '2020-12-31';

--5.	исполнители, чье имя состоит из 1 слова
SELECT name FROM song
WHERE name NOT LIKE '% %';

--6.	название треков, которые содержат слово "мой"/"my".
SELECT name FROM song
WHERE name LIKE '%My%';