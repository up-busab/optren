#!/bin/bash

until [ -f "${START_FLAG}" ]
do
  echo "Waiting for ${START_FLAG}"
  sleep 5s
done

python render.py

#echo -e "\033[1;91mImport\033[0m"
#/mitsuba/mitsuba/wrapper/mtsimport -v /var/data/sssdragon/sssdragon.xml /var/data/sssdragon/sssdragon_imported.xml

#echo -e "\033[1;91mRender\033[0m"
#mitsuba /var/data/sssdragon/sssdragon_imported.xml

