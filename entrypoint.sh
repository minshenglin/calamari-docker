#!/bin/bash

service postgresql start
su -l postgres -c "createdb calamari"
calamari-ctl initialize --admin-username ${username:='admin'} \
 			--admin-password ${password:='admin'} \
			--admin-email ${email:='admin@example.com'}

echo "ServerName ${servername:='localhost'}" >> /etc/apache2/apache2.conf
service apache2 restart
service supervisor start

chmod 777 /var/log/calamari/cthulhu.log
chmod 777 /var/log/calamari/calamari.log

tail -f /var/log/calamari/calamari.log 
