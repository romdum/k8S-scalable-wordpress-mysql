FROM mysql:5.7

RUN sed -i '/\[mysqld\]/a server-id=1\nlog-bin' /etc/mysql/mysql.conf.d/mysqld.cnf

COPY replication.sql /docker-entrypoint-initdb.d/replication.sql

COPY docker-entrypoint-override.sh /docker-entrypoint-override.sh
RUN cat /docker-entrypoint-override.sh > /tmp/docker-entrypoint.sh
RUN cat /usr/local/bin/docker-entrypoint.sh >> /tmp/docker-entrypoint.sh
RUN cat /tmp/docker-entrypoint.sh > /usr/local/bin/docker-entrypoint.sh
