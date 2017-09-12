FROM centos/mysql-57-centos7:latest
COPY post-init.sh /usr/share/container-scripts/mysql/post-init.sh
COPY admin.sql /usr/share/container-scripts/mysql/admin.sql
