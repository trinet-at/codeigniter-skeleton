#!/bin/bash

pwd

cp ./environment.php.dist ./environment.php
#cp ./application/config/config.php.dist ./application/config/config.php
#cp ./application/config/database.php.dist ./application/config/database.php

cp -a ./vendor/codeigniter/framework/application .