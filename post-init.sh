echo $mysql_flags
for sql_file in /usr/share/container-scripts/mysql/*.sql; do
    echo $sql_file
    mysql $mysql_flags < $sql_file
done
