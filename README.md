# CodeIgniter Skeleton Application for Composer

This repository is a wrapper to use CodeIgniter 3.* (currently develop) as vendor package with Composer.
Also, a few enhancements were made for better Git support (e.g. environment as separate file)
The document root has been moved to the `pubic/` directory, so that `vendor` and `application` data is not accessible via URL.

## How to install:
* Create a new project with `php composer.phar create-project trinet/codeigniter-skeleton [path]`
* copy `environment.php.dist` to `environment.php`
* copy `application/config/config.php.dist` to `application/config/config.php`
* copy `application/config/database.php.dist` to `application/config/database.php`

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