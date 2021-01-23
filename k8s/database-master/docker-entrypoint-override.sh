#!/bin/bash

sed -i "s/\$MYSQL_REPLICA_USER/$MYSQL_REPLICA_USER/g" /docker-entrypoint-initdb.d/replication.sql
sed -i "s/\$MYSQL_REPLICA_PASS/$MYSQL_REPLICA_PASS/g" /docker-entrypoint-initdb.d/replication.sql
