 #lempServer
LEMP Server Project On Darey.io
This is my second project on Darey.io
LEMP: 
      L = Linux
      E = NGINX
      M = MySQL
      P = PHP 

# The aim of this project is to setup a LEMP server just like the first project (LAMP Server) easily on any Debian / Ubuntu Linux System.
This project is broken down into various .sh files (modules)
File 1  - update.sh updates the Linux system
File 2 - nginx.sh install and sets up the NGINX Server
File 3 - mysql.sh installs and setups up the mysql server. 
File 4 - php.sh installs and configures PHP.
File 5 - main.sh is the main execution script that calls all the script above to setup the LEMP server.

The php.sh script will change in order to accomodate the NGINX server.
# The beauty of breaking down a project into modules is that you can easily debug the modules if issues appear or
you can  easily reuse any of the modules in subseqent projects if need arises. In this case, most of the modules will remain 
the same apart from the apache.sh file which we will rename to nginx.sh and execute all commands as directed on the Darey.io portal.
This means this project should be completed faster than Project 1 - LAMP Server; that is all things being equal. Some changes were also made to the mysql.php
script.

# Once the LEMP server is up and running, the NGINX default page is shown. 

