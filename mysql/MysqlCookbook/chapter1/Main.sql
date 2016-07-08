#############################################################
# 1.1. Setting Up a MySQL User Account

#登录
#if the MySQL root user has no password, just press the Enter (or Return)key at the password prompt. 
% mysql -h localhost -u root -p
Enter password: ******

#新建普通用户
#用户名部分为cbuser，主机名默认为%（即对所有主机开放权限）
#如果指定用户登录不需要密码，则可以省略identified BY部分
mysql> CREATE USER 'cbuser'@'localhost' IDENTIFIED BY 'cbpass';

#授权
mysql> GRANT ALL ON cookbook.* TO 'cbuser'@'localhost';
Query OK, 0 rows affected (0.09 sec)

#退出
mysql> quit
Bye

# if you’ll connect to the server from a host named myhost.example.com
mysql> CREATE USER 'cbuser'@'myhost.example.com' IDENTIFIED BY 'cbpass';
mysql> GRANT ALL ON cookbook.* TO 'cbuser'@'myhost.example.com';

# verify that you can use it to connect to the MySQL server.
% mysql -h localhost -u cbuser -p
Enter password: cbpass

#############################################################
# 1.2. Creating a Database and a Sample Table

# create the database
mysql> CREATE DATABASE cookbook;

# select cookbook as the default database
mysql> USE cookbook;

# create a simple table
mysql> CREATE TABLE limbs (thing VARCHAR(20), legs INT, arms INT);

# 插入数据
ysql> INSERT INTO limbs (thing,legs,arms) VALUES('human',2,2);
mysql> INSERT INTO limbs (thing,legs,arms) VALUES('insect',6,0);
mysql> INSERT INTO limbs (thing,legs,arms) VALUES('squid',0,10);
mysql> INSERT INTO limbs (thing,legs,arms) VALUES('fish',0,0);
mysql> INSERT INTO limbs (thing,legs,arms) VALUES('centipede',100,0);
mysql> INSERT INTO limbs (thing,legs,arms) VALUES('table',4,0);
mysql> INSERT INTO limbs (thing,legs,arms) VALUES('armchair',4,2);
mysql> INSERT INTO limbs (thing,legs,arms) VALUES('phonograph',0,1);
mysql> INSERT INTO limbs (thing,legs,arms) VALUES('tripod',3,0);
mysql> INSERT INTO limbs (thing,legs,arms) VALUES('Peg Leg Pete',1,2);
mysql> INSERT INTO limbs (thing,legs,arms) VALUES('space alien',NULL,NULL);


# Verify that the rows were added to the limbs table
mysql> SELECT * FROM limbs;
+--------------+------+------+
| thing 		| legs 	| arms 	|
+--------------+------+------+
| human 		| 2		| 2		|
| insect 		| 6 	| 0 	|
| squid 		| 0 	| 10 	|
...
+--------------+------+------+


#############################################################
# 1.4. Specifying mysql Command Options

% mysql -h localhost -u cbuser -p
Enter password: cbpass

% mysql --host=localhost --user=cbuser --password
Enter password: cbpass

# see all options that mysql supports
% mysql --help

# generate a dump file named cookbook.sql that 
# contains a backup of the tables in the cookbook database
% mysqldump -h localhost -u cbuser -p cookbook > cookbook.sql
Enter password: cbpass

# stop the server
% mysqladmin -h localhost -u root -p shutdown
Enter password: ← enter MySQL root account password here


# Because the default host is localhost,
# the same value we’ve been specifying explicitly,
# you can omit(省略) the -h (or --host) option
% mysql -u cbuser -p

# 查看mysql程序从选项文件中读取了那些选项
% mysql --print-defaults

# 使用my_print_defaults 工具，它接收要读取的选项文件组名称作为参数。
# 例如要在[client]和[mysql]组中查找选项
% my_print_defaults client mysqldump

# To explicitly specify “no password” when there is a nonempty password 
# in the option file, use --skip-password on the command line
% mysql --skip-password


# 保护文件不被他人使用
% chmod 600 .my.cnf
% chmod go-rwx .my.cnf

#############################################################


#############################################################


#############################################################

