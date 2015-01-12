#!/bin/bash

cp ./environment.php.dist ./environment.php
cp -a ./vendor/codeigniter/framework/application .
rm -rf ./skel
