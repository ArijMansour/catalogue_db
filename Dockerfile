FROM mysql:5.7

 ENV MYSQL_PASSWORD default_password
 ENV MYSQL_USER catalogue_user
# ENV MYSQL_ALLOW_EMPTY_PASSWORD=true
 ENV MYSQL_DATABASE=socksdb

COPY ./data/dump.sql /docker-entrypoint-initdb.d/

