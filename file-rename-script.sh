#!/bin/bash

PREFIX='AWS_'
TXT_TO_REMOVE='AWS_Certified_Security_Study_Guide_Specialty_(SCS-..._----_('
EXT='pdf'


find . -type f -name "${PREFIX}*.${EXT}" | while read FILE ; do
    NEWFILE=$(echo ${FILE} | sed -e "s/${TXT_TO_REMOVE}//");
    echo ${NEWFILE};
    mv "${FILE}" "${NEWFILE}";
done 

find . -type f -name "*).${EXT}" | while read FILE ; do
  echo "Old file name ${FILE}"
  NEWFILE="${FILE%).${EXT}}"
  echo " New file name is ${NEWFILE}"
  mv "${FILE}" "${NEWFILE}".${EXT}
done