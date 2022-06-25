#! /bin/bash


source ./config/config.sh
source ./func/function.sh


case $1 in 
	-h|--help)
		ezhelp
		;;
	-i|--install)
		install_php
		;;
	-l|--laravel)
		shift
		install_laravel
		;;
	-c|--compser)
		install_composer
		;;
	-d|--database)
		insatall_rdbs
		;;
		

esac


