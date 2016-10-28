#############################################################
CHAPTER 3 Selecting Data from Tables

3.0. Introduction


CREATE TABLE mail
(
t DATETIME, # when message was sent
srcuser VARCHAR(8), # sender (source user and host)
srchost VARCHAR(20),
dstuser VARCHAR(8), # recipient (destination user and host)
dsthost VARCHAR(20),
size BIGINT, # message size in bytes
INDEX (t)
);


mysql> SELECT * FROM mail;

% mysql cookbook < mail.sql


#############################################################
3.1. Specifying Which Columns and Rows to Select


SELECT srcuser, srchost, t, size FROM mail;


SELECT t, srcuser, srchost FROM mail WHERE srchost = 'venus';

SELECT t, srcuser, srchost FROM mail WHERE srchost LIKE 's%';

SELECT * FROM mail WHERE srcuser = 'barb' AND dstuser = 'tricia';

SELECT t, CONCAT(srcuser,'@',srchost), size FROM mail;
 
 
 


#############################################################
3.2. Naming Query Result Columns（命名查询结果列）


mysql> SELECT
	-> DATE_FORMAT(t,'%M %e, %Y'), CONCAT(srcuser,'@',srchost), size
	-> FROM mail;

mysql> SELECT
	-> DATE_FORMAT(t,'%M %e, %Y') AS date_sent,
	-> CONCAT(srcuser,'@',srchost) AS sender,
	-> size FROM mail;

#The aliases make the column names more concise, easier to read, and more meaningful.
mysql> SELECT
	-> DATE_FORMAT(t,'%M %e, %Y') AS 'Date of message',
	-> CONCAT(srcuser,'@',srchost) AS 'Message sender',
	-> size AS 'Number of bytes' FROM mail;

# 如果是保留字，让其合法。 	
SELECT 1 AS 'INTEGER';






#############################################################
3.3. Sorting Query Results

# 默认是升序
mysql> SELECT * FROM mail WHERE dstuser = 'tricia'
-> ORDER BY srchost, srcuser;

# 降序
mysql> SELECT * FROM mail WHERE size > 50000 ORDER BY size DESC;




#############################################################
3.4. Removing Duplicate Rows（排重）

mysql> SELECT DISTINCT srcuser FROM mail;

mysql> SELECT COUNT(DISTINCT srcuser) FROM mail;


#多个列输出
mysql> SELECT DISTINCT YEAR(t), MONTH(t), DAYOFMONTH(t) FROM mail;
+---------+----------+---------------+
| YEAR(t) | MONTH(t) | DAYOFMONTH(t) |
+---------+----------+---------------+
| 2014 | 5 | 11 |
| 2014 | 5 | 12 |
| 2014 | 5 | 14 |
| 2014 | 5 | 15 |
| 2014 | 5 | 16 |
| 2014 | 5 | 19 |
+---------+----------+---------------+



#############################################################
3.5. Working with NULL Values









#############################################################







#############################################################



#############################################################







#############################################################










#############################################################







#############################################################







