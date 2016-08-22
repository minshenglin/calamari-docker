#!/bin/bash

service postgresql start
su -l postgres -c "createdb calamari"
calamari-ctl initialize --admin-username admin --admin-password admin --admin-email admin@ceph.example.com

service diamond restart 
service apache2 restart
service supervisor restart

chmod 777 /var/log/calamari/cthulhu.log
chmod 777 /var/log/calamari/calamari.log

less +F /var/log/calamari/calamari.log 
