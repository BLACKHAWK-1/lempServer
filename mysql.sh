#!/bin/sh

# Install MySQL server
sudo apt-get install mysql-server 

# Start MySQL service
sudo systemctl start mysql

# Enable MySQL service on startup
sudo systemctl enable mysql

clear

echo "Altering Root User and setting default password as 'PassWord.1'"
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'PassWord.1';"


echo
echo "Running mySQL Secure Installation. Use the default password of 'PassWord.1', also disable anonymous users when prompted"
mysql_secure_installation



echo "Creating a database called 'example_database'"
mysql -u root -p -e 'CREATE DATABASE 'example_database'';
echo "Database successfully created....."


echo
echo
echo "Creating a new user called 'example_user' with default passowrd 'Password2$'"
mysql -u root -p -e "CREATE USER 'example_user'@'%' IDENTIFIED WITH mysql_native_password BY 'Password2$';"
echo "User Successfully created...."

echo 
echo
echo "Granting example_user full access to example_database"
mysql -u root -p -e "GRANT ALL ON example_database.* TO 'example_user'@'%';"
echo "Full priviledges granted to example_user..."


echo "logging into mySQL with example_user"
mysql -u example_user -p


echo "Creating todo_list in example database..."
mysql -u root -p -e 'CREATE TABLE example_database.todo_list(item_id INT AUTO_INCREMENT,content VARCHAR(255),PRIMARY KEY(item_id));'


echo "Inserting items into the table..."
mysql -u root -p -e 'INSERT INTO example_database.todo_list (content) VALUES ("My first important item");'
mysql -u root -p -e 'INSERT INTO example_database.todo_list (content) VALUES ("My second important item");'
mysql -u root -p -e 'INSERT INTO example_database.todo_list (content) VALUES ("My third important item");'
mysql -u root -p -e 'INSERT INTO example_database.todo_list (content) VALUES ("and this one more thing");'
  

cp todo_list.php /var/www/projectLEMP/todo_list.php