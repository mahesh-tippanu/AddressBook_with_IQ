mysql> CREATE DATABASE addressbook_service;
Query OK, 1 row affected (0.05 sec)

mysql> USE addressbook_service;
Database changed

mysql> CREATE TABLE addressbook (
    -> firstName varchar(50) NOT NULL,
    -> lastName varchar(50) NOT NULL,
    -> address varchar(100),
    -> city varchar(20),
    -> state varchar(30),
    -> zip varchar(10),
    -> phoneNO varchar(20),
    -> email varchar(50)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> DESC addressbook;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| firstName | varchar(50)  | NO   |     | NULL    |       |
| lastName  | varchar(50)  | NO   |     | NULL    |       |
| address   | varchar(100) | YES  |     | NULL    |       |
| city      | varchar(20)  | YES  |     | NULL    |       |
| state     | varchar(30)  | YES  |     | NULL    |       |
| zip       | varchar(10)  | YES  |     | NULL    |       |
| phoneNO   | varchar(20)  | YES  |     | NULL    |       |
| email     | varchar(50)  | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
8 rows in set (0.00 sec)