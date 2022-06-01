#docker run --name zy-mysql -e MYSQL_ROOT_PASSWORD=123456 -p 3306:3306 -d mysql

CREATE DATABASE sfg_dev;
CREATE DATABASE sfg_prod;

CREATE USER 'sfg_dev_user'@'%' IDENTIFIED BY '123456';
CREATE USER 'sfg_prod_user'@'%' IDENTIFIED BY '123456';

GRANT SELECT ON sfg_dev.* to 'sfg_dev_user'@'%';
GRANT INSERT ON sfg_dev.* to 'sfg_dev_user'@'%';
GRANT UPDATE ON sfg_dev.* to 'sfg_dev_user'@'%';
GRANT DELETE ON sfg_dev.* to 'sfg_dev_user'@'%';
GRANT SELECT ON sfg_prod.* to 'sfg_prod_user'@'%';
GRANT INSERT ON sfg_prod.* to 'sfg_prod_user'@'%';
GRANT UPDATE ON sfg_prod.* to 'sfg_prod_user'@'%';
GRANT DELETE ON sfg_prod.* to 'sfg_prod_user'@'%';
