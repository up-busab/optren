#!/bin/bash
#/usr/local/mitsuba/dist/mitsuba /var/data/sssdragon/sssdragon.xml

python optimize.py

if [[ "${OPT_FINISHED}" ]]; then
  echo "Writing ${OPT_FINISHED}"
  touch ${OPT_FINISHED}
fi

