#! /bin/bash


function install_php()
{
 apt install $php_packages && install_composer
 

}

function install_composer()
{

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
}

function install_laravel()
{
	read project_name
	if [ $project_name -z]
	then
		composer create-project laravel/laravel $(echo "example-app")
	fi
	composer create-project laravel/laravel $(echo $project_name)

}
function install_rdbms()
{
	apt install $(echo $rdbms)
	systemctl start mariadb.service
	mysql_secure_installation
	apt install mysql-workbench-community
}

function ezhelp()
{
	echo "option	describtion"
	echo "-i|--install	install php packages and composer"
	echo "-c|--composer	install composer"
	echo "-d|--database	install in default mode mariadb"	
	echo "-h|--help	show help about ezphp"

}

