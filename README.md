# ezphp
a simple shell script for install php with all packages and rdbms like mariadb on ubuntu.
download it and change execute permissions with this command :
+ chmod +x ezphp


+ for using you have 2 ways :
  - first one use it with bash.
  - second one use like a command.

commands :
     
     bash ezphp -i 
     //or
     ./ezhphp -i
     //or
     mv ezphp /usr/local/bin
     ezphp -i


| Option | Description |
| :------ | :-----------|
| -i\|--install   | install php packages and composer. |
| -c\|--composer | just install compoesr.  |
| -d\|--database  | install in default mode mariadb |
| -l\|--laravel    | install laravel - use example-app as default |
| -h\|--help    | show help about ezphp |