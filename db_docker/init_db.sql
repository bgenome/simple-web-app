CREATE DATABASE IF NOT EXISTS testapp1;

GRANT ALL PRIVILEGES on testapp1.*
TO 'dbuser1'@'%' IDENTIFIED BY 'dbpass1'
WITH GRANT OPTION;