#!/bin/bash

PS3="Select appropriate distributive of opencart: "

select version in opencart23 opencart3 quit; do

  case $version in
    opencart23)
      cd app
      rm -rf opencart
      wget "https://github.com/myopencart/ocStore/archive/ocStore2.zip"
      unzip ocStore2.zip
      mv ocStore-ocStore2/upload ./opencart && cd opencart && mv config-dist.php config.php && mv admin/config-dist.php admin/config.php
      cd .. && rm -rf oc[Ss]* && cd ..
      break
      ;;
    opencart3)
      cd app
      rm -rf opencart
      wget "https://github.com/ocStore/ocStore/archive/ocstore-3-0-2-0.zip"
      unzip ocstore-3-0-2-0.zip 
      mv ocStore-ocstore-3-0-2-0/upload ./opencart && cd opencart && mv config-dist.php config.php && mv admin/config-dist.php admin/config.php
      cd .. && rm -rf oc[Ss]* && cd ..
      break
      ;;
    quit)
      break
      ;;
    *)
      echo "Invalid option $REPLY"
      ;;
  esac
done
