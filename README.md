# CodeIgniter Skeleton Application for Composer

This repository is a wrapper to use [CodeIgniter](http://www.codeigniter.com/) 3.* (currently [develop](https://github.com/bcit-ci/CodeIgniter)) as vendor package with [Composer](https://getcomposer.org/).
Also, a few enhancements were made for better [Git](http://git-scm.com/) support (e.g. environment as separate file)
The document root has been moved to the `pubic/` directory, so that `vendor` and `application` data is not accessible via URL.

## How to install:
* [Download/install Composer](https://getcomposer.org/download/)
* Create a new project with `php composer.phar create-project -s dev trinet/codeigniter-skeleton [path]`

Composer gets the current CodeIgniter version and then copies the `application/` directory to the project root.
You can then `git init` your project.

## Webserver configuration
The document root has to point to the `public/` directory of the project.
For example, if you use Apache, your vhost configuration can look like:

```
<VirtualHost *:80>
    ServerAdmin admin@example.com
    
    ServerName codeigniter.example.com
    DocumentRoot /var/www/my-codeigniter-project/public
    
    <Directory "/var/www/my-codeigniter-project/">
            Deny from all
    </Directory>
    
    <Directory "/var/www/my-codeigniter-project/public/">
            Allow from all
            Options -Indexes +FollowSymLinks -MultiViews
            AllowOverride all
    </Directory>
</VirtualHost>
```
