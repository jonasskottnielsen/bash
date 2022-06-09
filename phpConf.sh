#!/bin/bash
filename="www.conf"
search="pm.max_children = 5"
replace="pm.max_children = 20"

cd /etc/php/7.4/fpm/pool.d

sed -i "s/$search/$replace/" $filename

cd /etc/php/7.4/fpm/

sed -i "s/upload_max_filesize = 2M/upload_max_filesize = 20M/" php.ini