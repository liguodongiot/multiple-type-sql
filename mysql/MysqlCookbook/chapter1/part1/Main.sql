
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




