------------------UC1_create contact---------------------------
mysql> CREATE DATABASE addressbook_service;
Query OK, 1 row affected (0.05 sec)

mysql> USE addressbook_service;
Database changed
------------------UC2_create table----------------------------
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

-----------------------UC3_INSERT data-------------------------

    mysql> INSERT INTO addressbook
    -> VALUES
    -> ('madhukar','tatiraju','random_address','vizag','AP','530013','9346860516','madhukar@gmail.com'),
    -> ('saran','yallanki','random_address','vizag','AP','530032','9617726229','saran@gmail.com'),
    -> ('mahesh','kumar','random_address','vizag','AP','530040','6303186275','mahesh@gmail.com');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

--------------------------UC4_EditExistingContactByName.sql---------------------

    mysql> SELECT * FROM addressbook WHERE firstName = 'madhukar'  AND lastName = 'tatiraju';
+-----------+----------+----------------+-------+-------+--------+------------+--------------------+
| firstName | lastName | address        | city  | state | zip    | phoneNO    | email              |
+-----------+----------+----------------+-------+-------+--------+------------+--------------------+
| madhukar  | tatiraju | random_address | vizag | AP    | 530013 | 9346860516 | madhukar@gmail.com |
+-----------+----------+----------------+-------+-------+--------+------------+--------------------+
1 row in set (0.00 sec)

mysql> UPDATE addressbook SET city = 'bangalore' WHERE firstName = 'madhukar' AND lastName = 'tatiraju';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

------------------------UC5_DeleteExistingContactByName.sql----------------------------------------------
    mysql> DELETE FROM addressbook WHERE firstName = 'mahesh' AND lastName ='tippanu';
Query OK, 0 rows affected (0.01 sec)

-----------------------UC6_RetrievePersonBasedOnCityState.sql----------------------------------------------

    mysql> SELECT firstName, lastName FROM addressbook WHERE city = 'vizag';
+-----------+----------+
| firstName | lastName |
+-----------+----------+
| saran     | yallanki |
| mahesh    | kumar    |
+-----------+----------+
2 rows in set (0.00 sec)

mysql> SELECT firstName, lastName FROM addressbook WHERE state = 'AP';
+-----------+----------+
| firstName | lastName |
+-----------+----------+
| madhukar  | tatiraju |
| saran     | yallanki |
| mahesh    | kumar    |
+-----------+----------+
3 rows in set (0.00 sec)

