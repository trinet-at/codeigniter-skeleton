#!/bin/bash

# copy the application directory
cp -a ./vendor/codeigniter/framework/application .

# create environment file
cp ./environment.php.dist ./environment.php

# create versioned dist-copies of configuration
cp ./application/config/config.php ./application/config/config.php.dist
cp ./application/config/database.php ./application/config/database.php.dist

rm -rf ./skel
