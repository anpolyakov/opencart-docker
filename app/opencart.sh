#!/bin/bash


rm -rf opencart 
wget https://github.com/opencart/opencart/releases/download/3.0.3.3/opencart-3.0.3.3.zip 
unzip opencart-3.0.3.3.zip
mv upload opencart
cd opencart
pwd
ls -l | head
mv config-dist.php config.php
mv ./admin/config-dist.php ./admin/config.php
cat config.php

