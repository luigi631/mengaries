mysql> SHOW DATABASES;

mysql> USE test
Database changed

mysql> SHOW TABLES;

Tables in mengaerie

pet

mysql> CREATE TABLE pet {name VARCHAR(20), owner VARCHAR(20),
		species VARCHAR(20), sex CHAR(1), birth DATE, death DATE);
        
mysql> SHOW TABLES,
tABLES IN MENAGERIES
pet

mysql> DESCRIBE pet;

Field   Type    		Null    Key     Default     Extra

name    Varchar(20)     YES        		NULL
owner	varchar(20)		YES				NULL
species varchar(20)		YES				NULL
sex     char(1)			YES 			NULL
birth	date			YES				NULL
death	date			YES				NULL

mysql> LOAD DATA LOCAL INFILE '/path/pet.txt' INTO TABLE pet;

mysql> LOAD DATA LOCAL INFILE '/path/pet.txt' INTO TABLE pet
LINES TERMINATED BY '\r\n';

mysql> INSERT INTO pet
		VALUEs ('Puffball','Diane','hammer','f','1999-03-30',NULL);

SELECT what_to_select
FROM which_table
WHERE conditions_to_satisfy;

mysql> DELETE FROM pet;
mysql> LOAD DATA LOCAL INFILE '/path/pet.txt' INTO TABLE pet;

mysql> UPDATE pet SET birth = '1989-08-31' WHERE name = 'Bowser';

mysql> SELECT * FROM pet WHERE name = 'Bowser';
name 		owner		species      sex 		birth		death
Bowser      Diane 		dog			m			1989-08-31	1995-07-29

mysql> SELECT * FROM pet WHERE birth >= '1998-1-1'
name 		owner		species			sex		birth		death
Chirpy		Gwen		bird			f		1998-09-11	NULL
Puffball	Diane 		hamster			f		1998-03-30	NULL

mysql> SELECT * FROM pet WHERE species = 'dog' AND sex = 'f';
name 			owner     	species 	sex 		birth		death
Buffy			Harold		dog			f			1989-05-13	NULL

mysql> SELECT * FROM pet WHERE species = 'snake' OR species = 'bird';
name 		owner		species		sex		birth		death
Chirpy       Gwen		bird		f		1989-09-11	NULL
Whistler     Gwen		bird		NULL	1997-12-09	NULL
Slim		 Benny		snake		m		1996-04-29	NULL

mysql> SELECT * FROM pet WHERE (species = 'cat' AND sex = 'm')
		or (species = 'dog' AND sex = 'f');
        
name    owner     species		sex			birth		death
claws	Gwen		cat			m			1994-03-17	NULL
Buffy	Harold		dog			f			1989-05-13	NULL

name		birth
Fluffy		1993-02-04
Claws		1994-03-17
Buffy		1989-05-13
Fang		1990-08-27
Bowser		1989-08-31
Chirpy		1998-09-11
Whistler	1997-12-09
Slim		1996-04-29
Puffball	1999-03-30

mysql> SELECT owner FROM pet;

owner
Harold
Gwen 
Harold
Benny
Diane
Gwen
Gwen
Benny
Diane

mysql> SELECT DISTINCT owner FROM pet;
owner
Benny
Diane
Gwen
Harold

mysql> SELECT name, species, birth FROM pet
		WHERE species = 'dog'OR species = 'cat';
        
name 		species			birth
Fluffy		cat				1993-02-04
Claws		cat				1994-03-17
Buffy		dog				1989-05-13
Fang		dog				1990-08-27
Bowser		dog				1989-08-31

mysql> SELECT name, birth FROM pet ORDER BY birth;
name 		birth
Buffy		1989-05-13
Bowser		1989-08-31
Fang		1990-08-27
Fluffy		1993-02-04
Claws		1994-03-17
Slim		1996-04-29
Whistler	1997-12-09
Chirpy		1998-09-11
Puffball 	1999-03-30
