#!/bin/bash

PS3="Which version would you like to install in addition to current opencart version?: "

select version in opencart2.3 opencart3 both quit; do

  case $version in
    opencart2.3)
      cd app
      rm -rf opencart23 && rm -rf opencart3
      wget "https://github.com/myopencart/ocStore/archive/ocStore2.zip"
      unzip ocStore2.zip
      mv ocStore-ocStore2/upload ./opencart23 && cd opencart23 && mv config-dist.php config.php && mv admin/config-dist.php admin/config.php
      cd .. && rm -rf oc[Ss]* && cd ..
      cp config/nginx/templates/locations/locations_23.conf config/nginx/nginx_conf/locations.conf
      cp config/nginx/templates/server/server.conf config/nginx/nginx_conf/server.conf
      echo "Installation of the Opencart 2.3 is done"
      break
      ;;
    opencart3)
      cd app
      rm -rf app/opencart23 && rm -rf app/opencart3
      wget "https://github.com/ocStore/ocStore/archive/ocstore-3-0-2-0.zip"
      unzip ocstore-3-0-2-0.zip 
      mv ocStore-ocstore-3-0-2-0/upload ./opencart3 && cd opencart3 && mv config-dist.php config.php && mv admin/config-dist.php admin/config.php
      cd .. && rm -rf oc[Ss]* && cd ..
      cp config/nginx/templates/locations/locations_3.conf config/nginx/nginx_conf/locations.conf
      cp config/nginx/templates/server/server.conf config/nginx/nginx_conf/server.conf
      "Installation of the Opencart 3 is done"
      break
      ;;
    both)
      rm -rf app/opencart23 && rm -rf app/opencart3
      cd app
      wget "https://github.com/myopencart/ocStore/archive/ocStore2.zip" && wget "https://github.com/ocStore/ocStore/archive/ocstore-3-0-2-0.zip"
      unzip ocStore2.zip && unzip ocstore-3-0-2-0.zip
      mv ocStore-ocStore2/upload ./opencart23 && mv opencart23/config-dist.php opencart23/config.php && mv opencart23/admin/config-dist.php opencart23/admin/config.php
      mv ocStore-ocstore-3-0-2-0/upload ./opencart3 && mv opencart3/config-dist.php opencart3/config.php && mv opencart3/admin/config-dist.php opencart3/admin/config.php
      rm -rf oc[Ss]*
      cd ..
      cp config/nginx/templates/locations/locations_both.conf config/nginx/nginx_conf/locations.conf
      cp config/nginx/templates/server/server.conf config/nginx/nginx_conf/server.conf
      echo "Installation of the both versions of the Opencart is done"
      ;;
    quit)
      break
      ;;
    *)
      echo "Invalid option $REPLY"
      ;;
  esac
done
