--1.	�������� � ��� ������ ��������, �������� � 2018 ����;
SELECT name, releaseyear FROM album
WHERE releaseyear BETWEEN '2018-01-01' AND '2018-12-31';

--2.	�������� � ����������������� ������ ����������� �����, �� ��������, ���� duration ���������
SELECT name, duration FROM song
ORDER BY  duration DESC
LIMIT 2;
--2.	�������� � ����������������� ������ ����������� �����, ������ ����������,�� ������ �������� ���������
SELECT MAX(duration),name FROM song
GROUP BY name;

--2 ���� ���������� ��������� (���� ����� ����� ��� ���������, ���� �� �����)
SELECT name, duration FROM song
WHERE duration = (SELECT MAX(duration) FROM song);

--3.	�������� ������, ����������������� ������� �� ����� 3,5 ������
SELECT name FROM song
WHERE duration >= 210;

--4.	�������� ���������, �������� � ������ � 2018 �� 2020 ��� ������������
SELECT name FROM collection
WHERE releaseyear BETWEEN '2018-01-01' AND '2020-12-31';

--5.	�����������, ��� ��� ������� �� 1 �����
SELECT name FROM song
WHERE name NOT LIKE '% %';

--6.	�������� ������, ������� �������� ����� "���"/"my".
SELECT name FROM song
WHERE name LIKE '%My%';