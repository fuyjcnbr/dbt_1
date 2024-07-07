
chown -R postgres:postgres /var/lib/postgresql
chown -R postgres:postgres /var/log/postgresql
chown -R postgres:postgres /var/run/postgresql
chown -R postgres:postgres /etc/postgresql
gpasswd -a postgres ssl-cert
chown postgres:ssl-cert /etc/ssl/private
chown postgres:postgres /etc/ssl/private/ssl-cert-snakeoil.key
chmod 600 /etc/ssl/private/ssl-cert-snakeoil.key

service postgresql start
#sleep 5
psql -U postgres -d postgres -c "create user user1 with password 'user1';"
psql -U postgres -d postgres -c "create database test_db owner user1;"
echo "PGPASSWORD=user1" >> /root/.bashrc
echo "" >> /root/.bashrc

psql -U user1 -d test_db -a -f /current_db.sql

sleep infinity
