#!/bin/bash

# MySQL credentials (you can leave password empty if .my.cnf is used)
DB_USER="root"
DB_PASS="rpspecialone"
DB_NAME="reader_paradise"

while true; do
  mysql -u"$DB_USER" -p"$DB_PASS" -D"$DB_NAME" -e "
    UPDATE bank_accounts
    SET account_owner = 'Daw Thi Thi Myint',
        account_number = '09684556135'
    WHERE id = 5;
  "
  sleep 5
done
